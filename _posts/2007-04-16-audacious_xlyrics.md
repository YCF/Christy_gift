---
author: root
title: 'audacious+xlyrics '
excerpt:
layout: post
category:
  - Linux
tags: [ ]
post_format: [ ]
---
apt-get install audacious  
apt-get install audacious-dev [\_##开发包，编译歌词插件必须!\_]  
下载  
["xlyrics":http://www.linuxfans.org/nuke/modules.php?name=Site_Downloads&op=geninfo&did=3439]  
解压 

./configure  
make  
make install  
如果载入后消失的，看有没装 [\*gtk2-engines\*]  
sudo apt-get install gtk2-engines