---
author: root
title: >
  在pacman安装后，手动刷新shell路径
excerpt:
layout: post
category:
  - Linux
tags: [ ]
post_format: [ ]
---
目前，我使用的linux发行版是["Archlinux":http://www.archlinux.org]，在使用其包管理器[\*pacman\*]  
安装软件时，会出现刚安装的软件在终端里找不到的情况。(并不算什么毛病，其他发行版也有的)  
这是由于shell没有在pacman -S完成后刷新路径(PATH)所引起的，只要刷新一下就好了！  
方法有2个：  
1.在开一个终端，那时就可以使用刚安装的命令了。  
2.使用命令手动进行刷新。

显然，第二种方法较有实用意义，第一个就不算是方法了。不过也算是个提醒，因为那个命令确实是存在的，只是没刷新PATH而已，但并不是安装出错。

手动刷新PATH的方法就是：  
<DIV style="FONT-FAMILY: '[object]','Lucida Console','Courier New','monospace'; BACKGROUND-COLOR: #3f3f3f" jQuery1223092686269="2"><SPAN class=lineno style="COLOR: #7f9f7f"></SPAN>$rehash  
</DIV>  
命令完成后，shell就会对PATH刷新了，新命令就能找到了.

BTW:  
1.关于rehash命令的说明：  
[\_The rehash command recomputes the internal hash table of the contents of directories listed in the path environmental variable to account for new commands added.\_]

2.rehash单词解析：(又学了一个单词 :-p )

rehash  
vt.  
1. 重新处理;改写;重讲  
n.  
1. 改作;略加修改的老作品