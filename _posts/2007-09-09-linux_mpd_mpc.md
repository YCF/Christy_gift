---
author: root
title: 'mpd+mpc '
excerpt:
layout: post
category:
  - Linux
tags: [ ]
post_format: [ ]
---
引用: http://forum.ubuntu.org.cn/about43152.html&postdays=0&postorder=asc&highlight=mpd&start=15  
个人感觉比mp3blaster ，mpg123之类的操作更为简便，mpd是作为一个服务运行在后台，它不具备播放功能，你可以把它理解成一个服务端，你还需要一个客户端MPC来执行播放的功能。ubuntu下默认的源里面已经有现成的deb包，具体安装如下：  
代码:  
sudo apt-get install mpd mpc  
这样就装好了mpd，以及命令行下的客户端mpc了，如果你不喜欢命令行下的操作，你还可以安装图形播放前端，参考帖子后半部分。  
装好之后，你还需要配置一下，不然mpd可找不到你的mp3文件。  
复制默认的配置文件到你的用户目录。  
代码:  
cp /etc/mpd.conf ~/.mpdconf  
直接修改/etc/mpd.conf应该也可以的，但我还是推荐复制到你的用户目录，这样做有个好处，下次你重装系统，只需要  
代码:  
sudo cp ~/.mpdconf /etc/mpd.conf  
就可以用了，无需重新编辑配置文件。  
然后开始编辑配置文件：  
代码:  
gedit ~/.mpdconf  
修改以下几处：  
#你的mp3文件存放目录  
代码:  
music_directory “/media/hda7/MP3″  
#播放列表目录  
代码:  
playlist_directory “/home/yohu/mpd/playlists”  
其它一些相关的文件位置：  
代码:  
db\_file “/home/yohu/mpd/tag\_cache”  
log_file “/home/yohu/mpd/mpd.log”  
error_file “/home/yohu/mpd/errors.log”  
pid_file “/home/yohu/mpd/pid”  
state_file “/home/yohu/mpd/state”  
因为我是用普通用户登录，后面几处如果不修改的话就会没有权限写入，当然如果你是root用户登录就没有这个问题。  
接着修改文件默认的字符集，因为我是zh_CN.utf8，所以修改默认字符集为“UTF8”。  
代码:  
filesystem_charset “UTF-8″  
音乐文件的标签编码，中文一般指定为GBK。  
代码:  
id3v1_encoding “GBK”  
最后还需要修改一下/etc/mpd.conf  
把里面的user改成你的用户名。  
现在停止mpd服务。  
代码:  
sudo /etc/init.d/mpd stop  
好了，设置完毕，现在开始建立音乐数据库。  
代码:  
mpd –create-db  
屏幕滚动完你的数据库就建立完成了，现在启动mpd服务：  
代码:  
mpd  
现在开始添加你的mp3到你当前的播放列表：  
代码:  
mpc listall | mpc add  
enoyforfun的机器(本blog)里会出现:  
MPD\_HOST and/or MPD\_PORT environment variables are not set  
error: problems getting a response from “localhost” on port 6600 : Connection refused  
MPD\_HOST and/or MPD\_PORT environment variables are not set  
error: problems getting a response from “localhost” on port 6600 : Connection refused  
需要把conf里的bind\_to\_address 注销掉!  
OK，现在开始享受你的音乐。  
代码:  
mpc play  
常用命令：  
查看当前播放状态：  
代码:  
mpc  
启用重复播放：  
代码:  
mpc repeat on  
启用随机播放：  
代码:  
mpc random on  
播放下一首：  
代码:  
mpc next  
播放前一首：  
代码:  
mpc prev  
音量调节：  
代码:  
mpc volume +20  
代码:  
mpc volume -20  
其它的mpc参数参考：  
代码:  
man mpc  
如果是用gmpc的话，打开gmpc以后，点击configure gmpc，在connection那边点击connect，接着就可以播放了，你可以选中autoconnect，这样以后你打开gmpc它就会自动连接到mpd。