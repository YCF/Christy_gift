---
author: root
title: 'gfxboot '
excerpt:
layout: post
category:
  - Linux
tags: [ ]
post_format: [ ]
---
HOWTO: GfxBoot ( Grub like suse)

Install  
Gfxboot makes grub look nicer but with the same features. In this howto you will install gfxboot and a suse theme for it, soon I’ll make an ubuntu one. Ok, let’s start  
Download the grub-gfxboot.deb  
And message.suse  
First remove your old grub  
[我是一个图片]  
Code:  
sudo apt-get remove grub  
Then Install the gfxboot-grub  
[我是一个图片]  
Code:  
sudo dpkg -i grub-gfxboot\_0.97-5\_i386.deb  
then we’re going to move the message  
[我是一个图片]  
Code:  
sudo cp message.suse /boot/grub/  
Then edit your menu.lst  
[我是一个图片]  
Code:  
sudo gedit /boot/grub/menu.lst  
and make it use gfxboot  
[我是一个图片]  
File:/boot/grub/menu.lst  
gfxmenu /boot/grub/message.suse  
Then do:  
[我是一个图片]  
Code:  
sudo grub  
grub> find /boot/grub/stage1  
(hdx,y) # this will be the output  
grub> root (hdx,y)  
grub> setup (hdx)  
Reboot and enjoy  
Thanks to Quasar_freak and kno 

How to make your own theme  
[我是一个图片]  
Code:  
mkdir /home/name/whatever  
cpio -i < /boot/grub/message.suse # replace it by the name of you message  
edit the pictures  
sudo ls . |cpio -o > /boot/grub/message.new 

Changing the GFXBoot Theme  
If the default SuSE theme works and you wish to change the theme, extract the message.* file from the themes below, then move it to the /boot/grub directory. For instance, if we wished to change to the gobo theme:  
[我是一个图片]  
Code:  
sudo cp message.gobo /boot/grub  
You then need to edit menu.lst and change the top line:  
[我是一个图片]  
Code:  
sudo gedit /boot/grub/menu.lst  
From:  
[我是一个图片]  
Code:  
gfxmenu /boot/grub/message.suse  
To:  
[我是一个图片]  
Code:  
gfxmenu /boot/grub/message.gobo