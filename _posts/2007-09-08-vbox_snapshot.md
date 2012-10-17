---
author: root
title: >
  如何更好地利用vbox的snapshot功能实现多机共享一个虚拟硬盘
excerpt:
layout: post
category:
  - Linux
tags: [ ]
post_format: [ ]
---
1）安装好一台干净的虚拟机作为基础系统，这个系统称之为Machine-1，需要包含所有的公共软件，越优化越好。  
2）做一个Snapshot，可以称之为Machine-1 Basic Status。  
3）新键一个虚拟机Machine-2。注意：这个虚拟机不要安装硬盘。  
4）关键：在终端下执行VBoxManage modifyvm Machine-2 -hda Machine-1.vdi  
5）启动Machine-2，确认是否完全正常。  
6）为Machine-2建立一个基础SnapShot。