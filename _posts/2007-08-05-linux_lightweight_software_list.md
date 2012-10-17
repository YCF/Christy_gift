---
author: root
title: 'linux 下实用软件组合 -- 为你的 linux 减肥！'
excerpt:
layout: post
category:
  - Linux
tags: [ ]
post_format: [ ]
---
来自http://www.rdtaxi.cn/Q/320/CC\_4795\_1/  
都好旧的文啦，不过有D参考价值  
###############################  
KDE 和 Gnome 都是很好用的桌面系统。如果你的电脑配置高级，KDE 和 Gnome 会运行的象其它系统一样。但是 KDE 和 Gnome 却不是较低级电脑的最好选择。我的最高级的一台电脑是 奔腾350 384M，在KDE 下运行时总感觉慢半拍，更不要说我的 奔腾166 64M 了，况且我也不喜欢在那么华丽的环境下使用 linux,所以选用简单，易用，符合我的需要的 软件 和 窗口管理器(Window Manager,注意这里是window, 不是 windowS 就是一个迫切需要了。 经过一段时间的搜索(a lot on google 和尝试，以下我列出一些我正在使用，以及其他一些可能对你有用的工具。这些工具都是根据我自己的使用目的挑出来的， 即, 要小，稳定，使用简单，容易安装，不占很多的系统资源，最重要的是达到我使用的目的。这里面很多工具都是一个 linux 玩家必备的。  
注：这个列表只是根据我个人的喜好列出的，只包含软件名称 和/或 软件的主页。你必须自己去读软件的帮助文件去学习怎么适用。Happy Linux !  
###############################  
哪里获得这些软件？  
很多都已经在你的 linux 版本里了(用 which 程序名 来看看你有否此软件)。还有就是通过 rpmfind.net，另外我也尽可能的提供下载地址。  
###############################  
首先是 window manager  
我选用的是 oroborus (http://www.kensden.pwp.blueyonder.co.uk/Oroborus/), tarball 只有70kb。oroborus 建议与其他的软件一起使用来实现具有丰富功能的系统。具体请看文章末段。  
IceWm (http://www.icewm.org/) , Window Maker (http://www.windowmaker.org/), xfce (http://www.xfce.org/) 也都是很好用的 Window Manager。每个 Window Manager 都有丰富的 Theme 可供你使用。  
###############################  
文件管理器  
我个人没有使用，但是还是有一些好的工具供你查询。foXcommander (http://sourceforge.net/projects/foxdesktop) , rox (http://rox.sourceforge.net/)  
###############################  
文本编辑器  
大力推荐 Nedit (www.nedit.org), 它很小，速度也快，而且有很多好的功能，我最喜欢的是 语法的hightlight(就是将perl,java,C 里的关键字用不同的颜色表示出来，抱歉我的翻译水平很差 , 如果你用过 windows 下的 edit++,就和它差不多吧。vi 就不提了，虽然很多人都很在乎它(not me)，但是我觉得 Nedit 是难得的所见即所得的文本编辑器，值得一用。  
###############################  
网络浏览器  
Galeon (http://galeon.sourceforge.net/)是我的首选,他是从mozilla 上发展出来的。 netscape 据说在 32M 内存下比其它的好用，但我的最少也是 64M，galeon 在其上运行的很好。要提一下浏览器的字体，在缺省设置下，galeon，netscape 显示的字都很小，而且看起来不规整，在galeon 你需要选 setting->preferences, 然后将 “always use these fonts” 选中。galeon 里的字体选择可以作为 netscape 里的参照。  
###############################  
最简单的浏览器  
Dillo (http://dillo.sourceforge.net)不支持 frames,java or javascript,不过它最好用出是看纯文本文件，比如说帮助文件，速度很快。  
###############################  
网页编辑器  
我个人使用 screem (www.screem.org). 他支持自动填补 html 语言，hightlight，和即时察看已编写的网页(这是我感觉最酷的功能) 等。虽然不如 dreamweaver 好用，但也很接近所见即所得的了。  
###############################  
阅读email 和 新闻组  
很多人都推荐 Sylpheed (http://sylpheed.good-day.net/)作为 邮件阅读器，快捷，不错的界面。  
Pan (http://pan.rebelbase.com/) 也是很多人推荐的新闻组阅读器。  
###############################  
图片浏览  
我使用 gqview,它的界面不错，有一个功能我很喜欢: 它可以调整图片尺寸来填满当前 gqview 的窗口，这样我就不用挪动图片来看隐藏的部分了。 其它的图片浏览器有 xli (http://rpmfind.net/linux/RPM/cooker/cooker/i586/Mandrake/RPMS/xli-1.17.0-4mdk.i586.html), ee, xv(支持看图片的小截图 http://www.trilon.com/xv/xv.html）  
###############################  
终端  
推荐使用 rxvt 和 aterm (http://aterm.sourceforge.net/). rxvt 对中文支持很好。aterm 有一个cool 的功能就是可以将终端背景调成透明(与桌面背景融合到一起)，等你看到显示的结果，你会说….wow !! 这两个终端的速度都很快，比 xterm 好多了。  
###############################  
改变桌面背景  
chbg (http://chbg.sourceforge.net) 容易使用，可以设定几张图片循环时间，设定缺省图片。  
###############################  
一些常用的 dockapp  
docapp 就是你常常看到的一些显示系统资源，提示email 等等的实用小工具 一般都是一个小方块，紧贴在桌面边缘。目前我只选了两个在用 bubblemon (http://www.ne.jp/asahi/linux/timecop/) 和 gkrellm (www.gkrellm.net/). 前者是用来显示系统资源的，他看起来是一只小鸭子游在水上，随着系统使用的增加，水位相应提高。gkrellm 是用来显示系统的 uptime, 网络的连接，swap 的使用，很实用的一个工具。  
这是一个不错的dockapp 系列工具 BBtools http://bbtools.thelinuxcommunity.org/ 里面的可以显示当地天气状况的dockapp 看起来很实用  
###############################  
关于 oroborus window manager 的设置  
在 oroborus 的主页上有一些 补丁 和 连接。我挑选了下面几个配置了 oroborus 1.14.0  
1. fspanel (http://www.chatjunkies.org/fspanel/) — 功能和 windows 的工具栏一样。当窗口最小化时，窗口就留在了 fspanel 上。另外 fspanel 有一个补丁 fspanel-pager2.diff 有了它，你就可以在 4 各窗口里切换了。  
2. desktoplaunch 可以建立桌面图标，但击即可启动该程序。  
3. desktopmenu 用来实现单击鼠标右键，显示程序菜单。  
我附带了一个 .xsession 的例子告诉你怎么将 oroborus 和 这个系统启动文件结合在一起。  
另外还有一个 我的 oroborus 的截图。  
这些文件你可以从 http://www.easyya.com/files/oroborus.tar 下载。  
另外在 oroborus 我个人比较喜欢 defold 这个 theme  
###############################