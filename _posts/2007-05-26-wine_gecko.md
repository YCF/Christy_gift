---
author: root
title: wine gecko
excerpt:
layout: post
category:
  - Linux
tags: [ ]
post_format: [ ]
---
当Wine程序需要显示HTML网页时，Wine就会弹出Wine Gecko Installer窗口要求安装Gecko,而它又要连到网上下载Gecko,对于网络不好或教育网的用户通常是安装不了的。今天参考这篇文章：http://appdb.winehq.org/appview.php?iVersionId=6422，解决了离线安装Wine Gecko的问题。步骤如下：  
从http://source.winehq.org/winegecko.php下载 wine_gecko.cab  
使用wget下载，较快！  
终端输入wget http://source.winehq.org/winegecko.php  
$ cp wine\_gecko.cab ~/.wine/drive\_c/  
$ regedit  
修改 HKCU/Software/Wine/MSHTML 中的GeckoUrl为：C:\wine_gecko.cab,可参看附图1  
接着执行需要HTML支持的程序，当弹出Wine Gecko Instalerl窗口时，点安装就行了，这是你会发现它瞬间就安装完成了。  
删除wine\_gecko.cab，$ rm ~/.wine/drive\_c/wine_gecko.cab