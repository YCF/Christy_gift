---
author: root
title: 'font.conf里的字体名称获得 '
excerpt:
layout: post
category:
  - Linux
tags: [ ]
post_format: [ ]
---
今天想配置下linux的字体，看到了font.conf  
还比较简单，不过里面的字体名称不好找哦，  
只知道有xlsfont和fc-list两个命令！  
看了下xlsfont的输出，不像。。。。  
fc-list用得少，也没什么印象。  
在irc里问了下，答案是fc-list  
在一看，原来fc-list的输出里有style=XX的，  
以前一晃眼，没看到。。。。 

最后就是，font.conf里的字体名称，可从fc-list命令输出中获得