---
author: root
title: 'deb常见包依赖问题及解决 '
excerpt:
layout: post
category:
  - Linux
tags: [ ]
post_format: [ ]
---
错误： C compiler cannot create executables 原因： 解决：sudo apt-get install gcc libc6-dev  
错误：checking for C compiler default output… configure: error: C compiler cannot create executables 原因： 解决：sudo apt-get install libc6-dev  
错误：configure: error: C++ preprocessor “/lib/cpp” fails sanity check 原因：gcc的组件没装全 解决：apt-get install build-essential  
错误： Can’t find X includes. Please check your installation and add the correct paths! 原因：没有X的包含文件 解决：安装xlibs-dev即可  
错误： Qt (>= Qt 3.0) (headers and libraries) not found. Please check your installation! 原因：查找提供qt的lib&&headers的软件包,并安装之 解决：apt-get install libqt3-headers libqt3-mt-dev  
错误：in the prefix, you’ve chosen, are no KDE headers installed. This will fail. So, check this please and use another prefix! 原因：install a KDE application in a Gnome environment。 解决：which basically means its going to want to install a lot of KDE specific packages to work. This ‘configure:error’ is due to it expecting you to be running KDE and again refers to some ‘headers’. sudo apt-get update sudo apt-get install kdelibs4-dev kdelibs4c2a  
错误：./admin/cvs.sh: 585: autoconf: not found 原因： 解决：apt-get install autoconf  
错误： \***| GTK >= 2.4.0 not installed! \***| 原因：没装GTK 解决：apt-get build-dep gedit  
错误：heching for gtk-config… no checking for GTK – version = 1.2.0… no \***| The gtk-config script installed by GTK could not be found \***| If GTK was installed in PREFIX, make sure PREFIX/bin is in \***| your path, or set the GTK_CONFIG enviroment variable to the \***| full path to gtk-config. configure: error: Cannot find GTK: Is gtk-config in path? 原因： 解决：sudo apt-get install libgtk1.2-dev  
问题：eclipse中encoding不支持中文 解决：编辑/var/lib/locales/supported.d/local，加一行zh_CN.GBK GBK，执行sudo locale-gen  
错误：gnome.h: No such file or directory  
错误： No package ‘libpanelapplet-2.0′ found 原因： 解决：sudo apt-get install gnome-panel  
问题：eva不弹出输入法 解决：sudo apt-get install scim-qtimm  
问题：No package ‘gtk+-2.0′ found No package ‘gtksourceview-1.0′ found No package ‘libgnomeui-2.0′ found No package ‘libglade-2.0′ found No package ‘libgnomeprintui-2.2′ found 解决：sudo apt-get install libgtk2.0-dev libgtksourceview-dev libgnomeui-dev libglade2-dev libgnomeprint2.2-dev  
问题：No package ‘libpanelapplet-2.0′ found 解决：sudo apt-get install libpanelappletmm-2.6-dev  
问题：The msgfmt command is required to build libpurple. If it is installed on your system, ensure that it is in your path. If it is not, install GNU gettext to continue. 解决：搜索，msgfmt，安装。