---
author: root
title: >
  intel显卡
  无法切换虚拟终端的解决方法
excerpt:
layout: post
category:
  - Linux
tags: [ ]
post_format: [ ]
---
昨晚,在irc里聊了下intel的linux驱动,是intel还是i810好.  
有人说无法通过ctrl+alt+fn切换终端了,不过就他发生了,我没事.当时很庆幸.  
不过今天发生在我身上了,为啥?难道我人品出问题了?不,我修改了xorg.conf  
因为我原来的配置有几个地方有错误,虽然比影响使用,不过我还是把它给改了下!  
然后就发现,我的X启动后,也无法切换到到别的终端了!

是那个参数呢?  
有一个参数我查过:  
Option “XkbVariant” “nodeadkeys”

就是他,他属于输入设备的参数,原来我的是  
Option “XkbVariant” “”

根据xorg的日志,他说XkbVariant需要一个string的参数,我就搜索了一下,加入了[\*nodeadkeys\*]  
结果就会无法切换终端了,解决方法,还原嘛!

方法就是:  
将[*Option "XkbVariant" "nodeadkeys"\*]的[\*nodeadkeys*]清空.  
改为Option “XkbVariant” “”

如果是别的,也尝试下清空吧,祝好运.  
另:有知道这个参数什么意思的朋友,希望指教一下!