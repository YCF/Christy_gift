---
author: root
title: 关于Gnome的splash画面的修改
excerpt:
layout: post
category:
  - Linux
tags: [ ]
post_format: [ ]
---
打开篇配置编辑器，Gnome好多东西都要在这里编吧……  
在Gnome菜单目录的系统工具里面,是不是看到了一个类似Windows注册表的东东，  
呵呵就是它了  
键名：/apps/gnome-session/options/splash_image  
键所有者：gnome  
简短描述：登录启动画面的首选图像  
详细描述：这是以 $datadir/pixmaps/ 目录出发的相对路径值。子目录及图像名称都是有效的值。对此值的更改将会在下次登录时生效.  
当然，可以借助第三方工具.  
$ sudo apt-get install gtweakui  
$ gtweakui-session  
这样就ok了。方法很多吧，可以告别那不好看的splash了……自己换一个PP的……