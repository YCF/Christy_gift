---
author: root
title: linux下快速修改当前分辨率
excerpt:
layout: post
category:
  - Linux
tags: [ ]
post_format: [ ]
---
在使用Openbox,awesome,fvwm这些轻量化的wm修改当前分辨并不是那么容易！  
没有设置分辨率的图形工具，为了这个小事装一个，可不划算！

一般分辨率在设置好xorg.conf就好了，基本没人回去改来改去，不过有些时候还是需要手动修改分辨率的。  
特别是wine程序运行过OpenGL的程序之后，分辨率会变得不对！  
重启X? 如果不能这样做呢？

xorg自带行工具就有个快捷命令！

快速切换到1024×768@60hz  
<DIV style="FONT-FAMILY: '[object]','Lucida Console','Courier New','monospace'; BACKGROUND-COLOR: #3f3f3f" jQuery1223092686269="2"><SPAN class=lineno style="COLOR: #7f9f7f"></SPAN>$xrandr -s 1024×768 -r 60  
</DIV>  
参数没什么好说的，自己\[\*男人\*\](man)一下就好了.