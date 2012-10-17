---
author: root
title: iso挂载时出现loop错误
excerpt:
layout: post
category:
  - Linux
tags: [ ]
post_format: [ ]
---
linux下挂载iso方法：

<DIV style="FONT-FAMILY: '[object]','Lucida Console','Courier New','monospace'; BACKGROUND-COLOR: #3f3f3f" jQuery1223092686269="2"><SPAN class=lineno style="COLOR: #7f9f7f"></SPAN>$sudo mount -t iso9660 -o loop /path/to/your.iso /path/to/mountpoint  
</DIV>

如果出现以下错误：  
[*mount: could not find any device /dev/loop#*]  
是由于内核中的loop被编译成了模块，并未加载,加载该模块后问题解决！

相关命令：

<DIV style="FONT-FAMILY: '[object]','Lucida Console','Courier New','monospace'; BACKGROUND-COLOR: #3f3f3f" jQuery1223092686269="2"><SPAN class=lineno style="COLOR: #7f9f7f"></SPAN>$modprobe loop  
</DIV>

然后重试即可。

Tips:  
为方便以后挂载，可以设置alias  
加入 .bashrc 或 .zshrc 中

<DIV class=source style="FONT-FAMILY: '[object]','Lucida Console','Courier New','monospace'; BACKGROUND-COLOR: #3f3f3f" jQuery1223212899829="2"><SPAN class=lineno style="COLOR: #7f9f7f"></SPAN>#方便挂载iso,挂载iso需载入内核的loop模块(modprobe loop)  
<SPAN class=lineno style="COLOR: #7f9f7f"></SPAN>alias m_iso='sudo mount -t iso9660 -o loop'  
</DIV>

BTW:以上代码高亮均由["代码发芽网":http://www.fayaa.com/code/new/]提供支持。