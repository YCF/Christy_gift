---
author: root
title: |
  >
    清理因Wine频繁安装Windows软件带来的垃圾
excerpt:
layout: post
category:
  - Linux
tags: [ ]
post_format: [ ]
---
转自http://www.imtx.cn/read.php/363.htm 

用Wine安装Windows软件装多了，有时在Ubuntu菜单里就会很混乱。明明这个软件已经被删除了，可以菜单里还占用着。有时“~/.wine/drive_c/windows”这个目录也会胀得很大。  
今天自己清理了一下Wine安装的软件，找到了一些清理的方法。就列举出来给大家参考下：  
1、“~/.wine/drive_c/windows/Downloaded Program Files”这个文件夹里，有时安装的软件安装包会被缓存在这里，我安装Macromedia的东西时，软件包就被完整的保存在这里了，删除掉释放了好多空间；  
2、“~/.wine/drive_c/windows/temp”这个文件夹不用多说了吧？  
3、“~/.wine/drive_c/windows/profiles/你的名字/Application Data”这里也会有较大的残存；  
4、“~/.config/menus/applications-merged”，关于集成在Ubuntu菜单里的垃圾，就在这里删除吧；  
5、“~/.local/share/desktop-directories”，在这里，把不要的也删除掉吧！注意wine-wine.directory、wine-..directory和wine-Programs.directory不能删除；  
其他的软件若找不到卸载程序，就直接在“~/.wine/drive_c/Program Files”这个目录里把对应的删除吧！  
经过整理以后，不仅清除了很多垃圾文件，菜单也清爽了！