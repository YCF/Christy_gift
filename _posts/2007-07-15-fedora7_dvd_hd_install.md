---
author: root
title: Fedora 7 DVD硬盘安装
excerpt:
layout: post
category:
  - Linux
tags: [ ]
post_format: [ ]
---
首先用winrar将DVD中/isolinux下的vmlinuz和initrd.img提取出来放在C:\  
1：下载一个工具:Grub For Dos  
解压到C:\  
2：修改boot.ini  
最后面添加这么一行  
C:\grldr=”GRUB”保存后退出  
3：修改C:\boot\grub\menu.lst  
添加这么几行  
title Install Fedora 7  
kernel (hd0,0)/isolinux/vmlinuz  
initrd (hd0,0)/isolinux/initrd.img  
注：C盘是hd0,0表示第一个ide硬盘第一个分区(即isolinux目录所在的分区)，大家可根据自己的需要修改硬盘参数  
重新启动系统，会看到GRUB菜单，选择后，在安装媒介选择硬盘安装，并选择Fedora 7的光盘镜像文件所在的分区。  
也可以DVD映像放到合适的硬盘（USB移动硬盘也可）目录下。其他的各种引导方式可以看一下光盘里images目录下的README，　可以选择软盘、USB棒、小CD等等方式引导。偶一般用PXE+NFS安装。  
===========================================================================  
发现蛮多朋友在问怎么硬盘安装f7，其实也并不复杂的。下面就简单的说下我的安装方法  
本人的电脑比较的老的 软驱，光驱都经不起时间的考验，双双殉职了……  
所以装xp也好2003也好linux系统也好都的从硬盘安装，装的多了也就习惯了 呵呵  
装fc基本上都是这个步骤的：  
1：把iso文件，grub&nbspfor&nbspdos，以及从iso文件里提取的initrd.img，vmlinuz(*\images\pxeboot目录下）放在fat盘的根目录下；  
2：重启利用vfloppy进入纯dos（纯dos哦）；  
3：用cd命令进入那个fat盘 运行grub 再在grub的命令行里用root命令找出这个fat盘所对应的在linux里符号（例如hd0，hd1…）；  
4：运行kernel （hd\*,\*）/vmlinuz ；  
5：运行initrd (hd\*,\*)/initrd.img ；  
最后再boot 就可以开始进入安装了，这个时候可以买罐饮料边喝边安装 哈哈