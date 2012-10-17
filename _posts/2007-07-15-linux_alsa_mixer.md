---
author: root
title: linux 混音
excerpt:
layout: post
category:
  - Linux
tags: [ ]
post_format: [ ]
---
如何混音 （ubuntu转载）  
翻译:firehare  
大多数Linux初学者都遇到这样一个问题：“为什么我在同时打开两个应用程序时不能听到声音呢？”这是因为你的声卡需要“软混音”。值得庆幸的是，ALSA提供了这项功能，这使得解决这个问题并不是很难。  
首先需要安装libesd-alsa0，用Synaptic或sudo apt-get install等方式都可以进行安装，它就在Ubuntu官方软件库中。  
然后，用sudo gedit或您喜欢的文本编辑器创建文件/etc/asound.conf（请确定您使用了sudo，因为您需要root权限）:  
pcm.card0 {  
type hw  
card 0  
}  
pcm.!default {  
type plug  
slave.pcm “dmixer”  
}  
pcm.dmixer {  
type dmix  
ipc_key 1025  
slave {  
pcm “hw:0,0″  
period_time 0  
period_size 1024  
buffer_size 4096  
periods 128  
rate 44100  
}  
bindings {  
0 0  
1 1  
}  
}  
（上面的文件可以在大多数声卡上正常运行…尽管我成功地测试了三个不同的声卡，但我还是不能确保它可以使所有声卡都能正常运行）  
接下来，运行 sudo gedit /etc/esound/esd.conf ，将文件改成下面的内容:  
[esd]  
auto_spawn=1  
spawn_options=-terminate -nobeeps -as 2 -d default  
spawn\_wait\_ms=100  
# default options are used in spawned and non-spawned mode  
default_options=  
然后打开您的Gnome声音控制面板并启用声音服务器，接着到多媒体系统选择控制面板，将其设成ALSA或ESD，并重启计算机。  
接下来您就可以将应用程序设成使用ALSA或ESD，这样您就可以一次听到多个声音了。就算是玩着用ALSA发音的游戏并听到使用ESD的GNOME应用发出的声音也没有任何问题！