---
author: root
title: Slitaz 从安装到汉化
excerpt:
layout: post
category:
  - Linux
tags: [ ]
post_format: [ ]
---
1.安装到硬盘

用分区工具,建立一个ext3分区（1G差不多了)  
参考命令：  
代码:  
mkfs.ext3 /dev/sdaX  
下载:

http://mirror.slitaz.org/iso/cooking/slitaz-cooking.iso

挂載iso  
代码:  
#mount -o loop /path/to/slitaz-cooking.iso /mnt/cdrom  
挂載需要安装的分区  
代码:  
#mount /dev/sdaX /mnt/slitaz  
进行安装  
代码:  
#mkdir /mnt/slitaz/boot #cp -a /mnt/cdrom/boot/vmlinuz-* /mnt/slitaz/boot //复制内核 #cp /mnt/cdrom/boot/rootfs.gz /mnt/slitaz #cd /mnt/slitaz #unlzma rootfs.gz -S .gz //解压rootfs.gz #cat rootfs | cpio -id #rm /mnt/slitaz/rootfs.gz  
然后就可以编辑你的grub menu.lst了 

我的menu.lst(可参考)  
代码:  
title SliTaz root(hd0,0) kernel /boot/vmlinuz-2.6.24.2-slitaz root=/dev/sda10  
如果启动后出现 kernel panic ，一般是root=/dev/sda部分不对！  
假设你顺利装上了，下面进入下一步!

2.安装flash支持！

PS:  
用户名：tux  
密码:root

启动系统后，配置网络！（位于下面lxpanel，喇叭右边的图标）  
时钟旁的是包管理系统，root密码:root

安装flashplugin  
打开终端 xterm  
代码:

$su 密码:root # tazpkg recharge #tazpkg upgrade //更新系统（可忽略） #get-flash-plugin

这样firefox就能显示flash了。(似乎cpu占有并不高）

3.安装中文字体  
设置环境变量  
~/.xinitrc前面加入  
代码:

export LANG=zh\_CN.UTF-8 export LC\_ALL=zh_CN.UTF-8

下载字体

http://internode.dl.sourceforge.net/…0.9.9-0.tar.gz

解压(slitaz自带了图形解压工具Xarchiver)  
将解压出的*.pcf放到 ~/.fonts下 （自定字体我比较喜欢放到/home下)

然后普通用户运行  
代码:  
fc-cache  
这样你打开firefox，在Edit-Preferences-Content就能设置中文字体了！  
BTW: firefox此时会有乱码！  
去除firefox标题乱码：  
编辑 ~/.gtkrc-2.0 给gtk程序指定字体  
gtk-font-name = “WenQuanYi Bitmap Sont 12″  
下面为我的文件  
代码:  
# ~/.gtkrc-2.0 – GTK+ theme, icon and font configuration. # # System files : /usr/share/{themes,icons,fonts} # Personal files : ~/.icons and ~/.fonts # gtk-theme-name = “Clearlooks-DeepSky” #gtk-theme-name = “Clearlooks-Quicksilver” #gtk-theme-name = “Clearlooks-Olive” gtk-icon-theme-name = “Tango” #gtk-font-name = “DejaVu Sans 11″ #下面的为关键 gtk-font-name = “WenQuanYi Bitmap Sont 12″

到此，中文显示就算搞定了！(假设你应为firefox的字体部分作了设置）

4.安装scim输入法  
修改 ~/.xinitrc  
［code]  
export LANG=zh_CN.UTF-8  
export LC\_ALL=zh\_CN.UTF-8  
#上面的已加入  
export XMODIFIERS=@im=SCIM  
export XIM=”scim”  
export XINPUT=”xim”  
export XIM_PROGRAM=”scim -d”  
export GTK\_IM\_MODULE=scim  
export QT\_IM\_MODULE=scim  
scim -d &  
[/code]  
使用包管理器，安装scim  
代码:  
#tazpkg get-install scim  
现在你可重登录，看一下scim能否启动了。（还没能输入中文）  
如果你的scim能正常启动，请进入下一步！

5.安装pkg-config (编译scim-pinyin必须） 因为这，我才写了这个帖子  
由于scim并没带有输入法，所以要自己安装一个，下面以安装scim-pinyin为例.

安装编译环境  
代码:  
#tazpkg get-install slitaz-toolchain  
下载pkg-config

http://pkgconfig.freedesktop.org/rel...ig-0.23.tar.gz

解压  
编译安装  
代码:

./configure --prefix=/usr make su #make install

6.编译scim-pinyin (scim-table类同）  
下载

http://prdownloads.sourceforge.net/s...ar.gz?download

解压  
进行编译  
代码:  
#下面这句是关键，请确认/usr/pkgconfig下存在scim.pc文件 export PKG\_CONFIG\_PATH=/usr/pkgconfig ./configure make su #make install  
到此，你的slitaz已安装完成，并能输入中文了！