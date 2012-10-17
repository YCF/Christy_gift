---
author: root
title: IRC扫盲
excerpt:
layout: post
category:
  - Linux
tags: [ ]
post_format: [ ]
---
在linux的世界还是使用IRC的好，因为太菜的就不会在IRC了！  
有利于自己的提高，向高手学习！  
引自:www.linuxsir.org  
IRC黑客世界最流行的交流工具，其强大而复杂的功能让许多人又爱又怕，花些精力和时间去学习和掌握它是绝对必要的。以下分五个部分介绍了IRC相关的知识：  
1.IRC 常用命令篇（普通用户聊天命令）  
2.基本语法篇（客户端脚本编写指南）  
3.昵称服务(NickServ)命令（管理者命令）  
4.频道服务(ChanServ)命令（管理者命令）  
5.留言服务(MemoServ)命令（管理者命令）  
本资料来源：沧海一声笑（他是[TheSea mIRC客户端软件]的作者，他的邮箱是diyoc@163.com）  
=====================  
● IRC 常用命令篇  
=====================  
/ADMIN 命令  
———————————————————–  
【语法】  
　　/admin  
【描述】  
　　用来查询当前IRC服务器上Admin(即Administrator，IRC里最高级别的管理员)的相关信息  
/ALIAS 命令  
———————————————————–  
【语法】  
　　/ALIAS [Alias文件名]  
【描述】  
　　用来为某一条命令提供一个简单的缩写方式，这将使你聊天时更为方便，尤其是与对方纸上谈兵时。 ;>  
　　你也可以为该命令缩写指定一个保存的文件名。  
【注意】  
　　使用/ALIAS命令只能为一条单行命令提供缩写。事实上大家使用得更多的还是按ALT+A直接调出mIRC的ALIAS编辑框，在这里可以直接对命令缩写进行编辑或者创建、删除等，而且在编辑框里还可以为多行命令设置一个缩写(ALIAS)，这是单单用/ALIAS命令所做不到的。  
【举例】  
　　在mIRC的命令行里输入：/alias /faint /me 晕倒…，这样就有了/faint这个命令缩写。以后你再打/faint就等于是输入了/me 晕倒…这一串命令。  
　　在mIRC的命令行里输入：/alias /bye /say $1 慢聊，我去了。注意这里的“$1”，它指代了/bye这个命令缩写的第一个参数。以后你打“/bye TigTag”，TigTag就等于成了/bye这个命令缩写的第一个参数的具体值。于是这个命令缩写的最终执行形式实际上就是/say TigTag 慢聊，我去了。  
/AME 命令  
———————————————————–  
【语法】  
　　/AME  
【描述】  
　　向你在的所有闲聊室发送你的动作。（注意，不是小窗口）  
/AMSG 命令  
———————————————————–  
【语法】  
　　/AMSG  
【描述】  
　　向你在的所有闲聊室发送话语。（注意，不是小窗口）  
/AUTO 命令  
———————————————————–  
【语法】  
　　/auto \[-r\] \[on|off|别名/地址\] \[#闲聊室1,#闲聊室2,..\] \[类型\]  
【描述】  
　　用来往mIRC的自动给帽子名单里添加或者删除名字。也就是说，假设TigTag在你的AUTO名单里，那么以后当你在某个闲聊室是主持人的时候，TigTag进来了，则mIRC会自动以你的名义给他加上帽子（即让他变成主持人）。  
【注意】  
　　关于地址类型请参照/IGNORE命令帮助。  
【举例】  
　　要查看当前是否允许mIRC自动给帽子，直接打“/auto”即可。  
　　要打开mIRC自动给帽子开关，用命令“/auto on”。  
　　要添加TigTag到自动给帽子名单，用命令“/auto TigTag”。  
　　要添加TigTag到自动给帽子名单，并限定只有他在#Chat时才自动给帽子，用命令“/auto TigTag #Chat”。  
　　要从自动给帽子名单移除TigTag，用命令“/auto -r TigTag”。  
　　要让从127.0.0.1来的所有人都自动给帽子，用命令“/auto \*!\*@127.0.0.1”。  
/AWAY 命令  
———————————————————–  
【语法】  
　　/away [暂时离开的原因]  
【描述】  
　　用来留下一条信息以说明你暂时要离开，你可以指定该信息。以后当某人再向你发送密聊话语或者对你做一个“/WHOIS”命令时，他/她就会看到你留下的信息并且得知你已经暂时离开了。  
　　如果敲不带任何参数的/AWAY命令则可以解除离开状态。  
/BAN 命令  
———————————————————–  
【语法】  
　　/ban \[-ruN\] \[#闲聊室\] [类型]  
【描述】  
　　禁止某人进入某个闲聊室（根据他的地址）。  
　　加参数-r是不再禁止某人；参数-uN是指只禁止某人N秒钟。  
【注意】  
　　这和/MODE命令的禁止稍有不同，/BAN在执行时首先要在当前的服务器上查找你要禁止的那个人，找到了才执行禁止这个动作；而/MODE则是任何时候都可以对指定的别名或地址进行禁止。  
　　关于地址类型请参照/IGNORE命令帮助。  
/CHANNEL 命令  
【语法】  
　　/channel  
【描述】  
　　弹出一个对话框，让你可以快速地对当前的闲聊室设置属性。  
【注意】  
　　你必须要在某个闲聊室中，并且你的当前窗口必须是该闲聊室才能执行这条命令。  
/CLEAR 命令  
———————————————————–  
【语法】  
　　/clear \[-sghlc\] \[窗口名称\]  
【描述】  
　　用来清除指定窗口的所有信息，如果不指定则清除当前窗口。  
　　参数“-s”是指清除mIRC的状态窗口的内容；“-g”是指清除mIRC的Finger窗口的内容；“-h”是指清除指定窗口的输入栏的缓冲；“-l”是指清除一个带有目录列表的自定义窗口的目录列表；“-c”是指清除一个自定义图形窗口的鼠标点击历史。  
/CLOSE 命令  
———————————————————–  
【语法】  
　　/close \[-icfgms@\] \[别名1\]…[别名N]  
【描述】  
　　用来关闭指定类型的所有窗口。其中，参数-i指未被激活的DCC窗口；-c指闲聊室；-f指文件服务窗口；-g指接收文件窗口；-m指聊天小窗口；-s指发送文件窗口；@指自定义窗口。  
/CLOSEMSG 命令  
———————————————————–  
【语法】  
　　/closemsg  
【描述】  
　　用来关闭指定的密聊小窗口。  
【提示】  
　　事实上，用CTRL+F4或者Alt+Z似乎更加快捷。  
/CTCP 命令  
———————————————————–  
【语法】  
　　/ctcp  
【描述】  
　　用来向某人发出特定的CTCP(Client To Client Protocol, 客户端到客户端协议)查询。  
　　* 标准的CTCP查询有：  
　　PING　　延迟时间  
　　TIME　　本地时间  
　　VERSION　　 　聊天软件版本  
　　FINGER　　指针信息  
【举例】  
　　要查询到TigTag的延迟时间，用命令：/ctcp TigTag ping  
　　要查询TigTag的本地时间，用命令：/ctcp TigTag time  
　　要查询TigTag的聊天软件版本，用命令：/ctcp TigTag version  
　　要查询TigTag的指针信息，用命令：/ctcp TigTag finger  
/DCC 命令(Direct Chat Connection, 直接对话连接)  
———————————————————–  
【语法】  
　　/dcc  
【描述】  
　　用来向某人发送文件或者进行密聊。  
【注意】  
　　“完整的文件名”在这里是指包含整个路径信息的文件名。  
　　用/DCC CHAT进行密聊和/QUERY的密聊有所不同，用/QUERY进行密聊，所有的消息都要经过IRC服务器转送；而用/DCC CHAT，只是在聊天的最初需要IRC服务器初始化一下，此后双方就等于是通过IP建立起了点对点的连接，所有的消息就直接转送而不是通过IRC服务器转送了，相对就更加安全和隐蔽一些，而且即使这时候IRC服务器DOWN了双方也可以继续聊。  
　　值得注意的是，在用/DCC命令的同时，你的IP地址会暴露给对方，如果是怀有恶意的人……所以，不要随便对陌生人使用/DCC。  
/DESCRIBE 命令  
———————————————————–  
【语法】  
　　/describe  
【描述】  
　　用来向某个闲聊室或者某个人做出动作，效果等同于/ME命令，主要用于mIRC的脚本编写。  
【举例】  
　　/describe #Chat 晕倒，#Chat里的人就会看到你晕倒了。  
　　/describe TigTag 晕倒，TigTag就会在小窗里看到你晕倒了。  
/DISCONNECT 命令  
———————————————————–  
【语法】  
　　/disconnect  
【描述】  
　　强制和IRC服务器断开连接。  
【注意】  
　　这和/QUIT不同，/QUIT是先向IRC服务器发出一个断开请求，然后由服务器切断连接；而/DISCONNECT则是在本地强制断开连接。  
/ECHO 命令  
———————————————————–  
【语法】  
　　/echo \[颜色码\] \[-dehiNtsaqlbf\] [窗口名称]  
【描述】  
　　用指定的颜色值(0～15)在指定窗口显示信息。其中，参数-a是指在当前窗口；-s是指在mIRC的状态窗口；-d是指在mIRC的Dedicated Query窗口。  
　　参数“-e”是指在信息的前后一行分别放置一个行分隔符；“-iN”是指在指定的第N个字符处将信息自动卷行；“-h”是强制使用硬回车进行卷行；“-t”是指在前缀一个时间戳(当然，时间戳必须设置为打开)；“-q”是指如果/echo命令用于一个Alias里，则当调用这条Alias并在命令前前缀一个“.”号时，不显示该信息；“-l”是指采用mIRC的高亮设置来显示信息；“-bf”则是指采用该窗口的Beep/Flash设置来显示信息。  
【注意】  
　　用/ECHO显示的信息只有你本人才看得到。  
/EXIT 命令  
———————————————————–  
【语法】  
　　/exit  
【描述】  
　　用来关闭mIRC这个应用程序（即相当于用鼠标点击了mIRC窗口最右上方的“×”）。  
/LINKS 命令  
———————————————————–  
【语法】  
　　/links  
【描述】  
　　用来解析当前的IRC有几个服务器，然后把解析到的结果放到一个单独的小窗口里。  
/LIST 命令  
———————————————————–  
【语法】  
　　/list \[#闲聊室\] \[-MIN #\] [-MAX #]  
【描述】  
　　用来列出服务器上的闲聊室名称(可以使用通配符)。如果不指定名称则列出当前服务器上的所有可用闲聊室；“-MIN #”和“-MAX #”用来限定列出包含指定人数的闲聊室。  
【举例】  
　　列出包含2～100个人的所有闲聊室：/list -min 2 -max 100  
/LUSERS 命令  
———————————————————–  
【语法】  
　　/lusers  
【描述】  
　　用来查询当前IRC服务器上的统计信息，例如当前的在线总人数、已经建立了多少个闲聊室等等。  
/IGNORE 命令  
———————————————————–  
【语法】  
　　/ignore \[-lrpcntikxu#\] \[on|off|别名/地址\] [类型]  
【描述】  
　　用来往mIRC的忽略名单里添加或者删除名字。在忽略名单里的别名或者地址，mIRC都将根据你所指定的方式对他们进行忽略。  
　　参数　　说明  
　　l 　　根据你所指定的忽略方式列出忽略名单  
　　r 　　从忽略名单中删除掉指定的别名或地址  
　　p 　　忽略指定别名或地址的私人信息  
　　c 　　忽略指定别名或地址的闲聊室信息  
　　n 　　忽略指定别名或地址的NOTICE信息  
　　t 　　忽略指定别名或地址的CTCP信息  
　　i 　　忽略指定别名或地址对你发出的邀请  
　　k 　　忽略指定别名或地址的颜色代码  
　　x 　　忽略除了指定别名或地址的其他人的信息  
　　u#　　在指定秒数内忽略指定的别名或地址  
【注意】  
　　这里的类型是指“别名!电子邮件别名@地址”格式的地址类型，你如果指定了某人的名字，同时也指定了类型，那么mIRC首先会在当前的服务器上查找你指定的那个人，得到他的地址后，以如下的类型形式反馈出来，并添加到mIRC的忽略名单中。  
　　假设此人叫TigTag，电子邮件是who@where.com，来自127.0.0.1，那么他的地址类型表现如下：  
　　地址类型　　表现形式  
　　0 　　*!who@127.0.0.1  
　　1 　　\*!\*who@127.0.0.1  
　　2 　　\*!\*@127.0.0.1  
　　3 　　\*!\*who@127.0.0.*  
　　4 　　\*!\*@127.0.0.*  
　　5 　　TigTag!who@127.0.0.1  
　　6 　　TigTag!*who@127.0.0.1  
　　7 　　TigTag!*@127.0.0.1  
　　8 　　TigTag!\*who@127.0.0.\*  
　　9 　　TigTag!\*@127.0.0.\*  
　　* 地址类型也可以是10～19，只是通配符的位置较上面又有些变化。  
　　* 这些地址类型也适合其它地方，比如/AUTO命令等。  
　　* 当你正在与人开小窗时，对方的小窗信息无法忽略，除非关掉它。  
【举例】  
　　要查看当前是否允许mIRC进行忽略，直接打“/ignore”即可。  
　　要允许mIRC进行忽略，用命令“/ignore on”。  
　　要忽略来自TigTag的所有信息，用命令“/ignore TigTag”。  
　　要忽略来自TigTag的地址，电子邮件别名也与他相同的所有别名的CTCP信息，用命令“/ignore -t TigTag 0”。  
　　只忽略TigTag60秒，用命令“/ignore -u60 TigTag”。  
　　要从忽略名单移除TigTag，用命令“/ignore -r TigTag”。  
　　要从忽略名单移除所有的别名和地址，用命令“/ignore -r”。  
/INFO 命令  
———————————————————–  
【语法】  
　　/info  
【描述】  
　　用来查询IRC服务器的信息，例如服务器的名称、版本号等等。  
/INVITE 命令  
———————————————————–  
【语法】  
　　/invite  
【描述】  
　　用来邀请某人到你指定的闲聊室。  
/ISON 命令  
———————————————————–  
【语法】  
　　/ison \[别名2\] \[别名3...\]  
【描述】  
　　用来向服务器查询指定的别名是否在线，你可以一次查询多个别名。事实上，很多IRC客户端软件的自动通告功能就是借助于/ISON命令实现的。  
/JOIN 命令  
———————————————————–  
【语法】  
　　/join [该闲聊室的密码]  
【描述】  
　　用来加入某个闲聊室。如果该闲聊室设置了密码，你可以指定它。  
/KICK 命令  
———————————————————–  
【语法】  
　　/kick [踢他的原因]  
【描述】  
　　用来把某人从你指定的闲聊室赶出去。你可以指定赶他的理由。  
【注意】  
　　要使用/KICK命令，你必须在该闲聊室拥有帽子（也就是是主持人），或者是这个聊天服务器的管理员才可以。  
/ME 命令  
———————————————————–  
【语法】  
　　/me  
【描述】  
　　用来在当前闲聊室或者密聊小窗口做出动作。  
【举例】  
　　假设你在#Chat，那么当你敲/me 晕倒，#Chat的其他所有人就会看到你“晕倒”了。  
/MODE 命令  
———————————————————–  
【语法】  
　　/mode [[+|-]参数]  
【描述】  
　　/MODE命令是一个强有力的命令，它使得一个闲聊室的主持人能够更改所属闲聊室以及该闲聊室成员的属性。  
　* 更改闲聊室的属性  
　　参数　　　　效果  
　　　b 　 　禁止某人加入该闲聊室  
　　　i　　　　 　把闲聊室设置成只有被邀请的人才能进入  
　　　l 　 　限定进入该闲聊室的最大人数  
　　　m　 　　　　旁听模式—只有主持人和被许可的人才能说话  
　　　n　　 　　　是否接受从闲聊室外传来的信息(+n为不接受)  
　　　o 　 　使指定的人也成为闲聊室的主持人，即给他/她@符号(帽子)  
　　　p　　　　 　把闲聊室设置成私人房间  
　　　s　　　 　　把闲聊室设置成隐藏  
　　　t　　　 　　锁定主题—只有主持人才能更改它  
　　　k 　 　为闲聊室设置密码—只有知道密码的人才能进来  
　* 更改用户的属性  
　　参数　　　　效果  
　　　i　　　 　　使你变得不可见—如果你不在任何闲聊室里，而别人又不知道你的别名的话，他/她就看不到你  
　　　o　　　 　　IRC管理员(IRC-OP)状态，/MODE命令只能取消该状态。要设置该状态必须用/OPER命令  
　　　s　　　 　　是否接受服务器的通告(+s为接受)  
　　　v　　　 　　允许某人在一个设置成旁听模式的闲聊室说话  
　　　w　　　 　　是否接收WALLOPS信息  
【注意】  
　　要在某个闲聊室使用/MODE命令，大多数情况下，你必须在该闲聊室拥有帽子（也就是是主持人）才可以。  
　　你只能更改某人在某个闲聊室的属性，而不能更改其在IRC服务器上的属性（自己除外）。  
【举例】  
　　使TigTag成为#Chat的主持人，用命令：/mode #Chat +o TigTag  
　　使TigTag不再是#Chat的主持人，用命令：/mode #Chat -o TigTag  
　　禁止TigTag进入#Chat，用命令：/mode #Chat +b TigTag  
　　不再禁止TigTag进入#Chat，用命令：/mode #Chat -b TigTag  
　　限定#Chat的最大人数是100，用命令：/mode #Chat +l 100  
　　使TigTag在服务器上隐藏起来，用命令：/mode TigTag +i  
　　……  
　* 如果要使多个人成为主持人，这里有个更快捷的方法：/mode #Chat +oooo nicka nickb nickc nickd  
/MOTD 命令  
———————————————————–  
【语法】  
　　/motd  
【描述】  
　　用来查询当前IRC服务器上的今日信息(Message Of The Day)。  
/MSG 命令  
———————————————————–  
【语法】  
　　/msg  
【描述】  
　　用来向某人发出密聊话语，或者对某个闲聊室的所有人说话。  
【举例】  
　　假设你敲/msg TigTag 你好，那么TigTag就会在他的小窗口里看到你在说“你好”，而且这句话只有你跟TigTag才会看到；  
　　假设你敲/msg #Chat 大家好，那么在#Chat中的全体成员都会看到你在说“大家好”。  
【注意】  
　　当用/MSG命令对某人发出密聊话语时，其作用与/QUERY相同。唯一的区别就是：使用/MSG命令时，自己这边不单独开个小窗口；而使用/QUERY命令时，双方都会各自开一个小窗口进行对侃。  
/NAMES 命令  
———————————————————–  
【语法】  
　　/names [#闲聊室]  
【描述】  
　　如果未指定闲聊室，则列出当前IRC服务器上的所有别名；否则只列出指定闲聊室的所有别名。  
【注意】  
　　如果某人利用/MODE命令对自己使用了“+i”（即设置为隐藏模式），则/NAMES将无法列出他的别名。  
/NICK 命令  
———————————————————–  
【语法】  
　　/nick  
【描述】  
　　用来更改自己的别名。在高版本的mIRC里你也可以用/ANICK命令来更改自己的备用别名，格式同/NICK。  
/NOTICE 命令  
———————————————————–  
【语法】  
　　/notice  
【描述】  
　　用来向某人发出通告信息。与/MSG和/QUERY不同，这种通告信息不会在双方开小窗。  
/NOTIFY 命令  
———————————————————–  
【语法】  
　　/notify \[-r\] \[on|off|别名\] [注释]  
【描述】  
　　用来往mIRC的通告名单里添加或删除名字，这样当通告名单里的人在线或离线时，mIRC都会自动通告你。  
　　参数-r是指从通告名单中将指定的名字移除。  
　* 如果在别名前面加上个“+”号，则表示在mIRC通告你的同时也自动对其做一个/WHOIS命令。【举例】  
　　允许mIRC根据通告名单进行通告，用命令：/notify on  
　　把TigTag加到mIRC的通告名单，用命令：/notify +TigTag Helisheep是也  
　　把TigTag从mIRC的通告名单移除，用命令：/notify -r TigTag  
/OMSG 命令  
———————————————————–  
【语法】  
　　/omsg [#闲聊室]  
【描述】  
　　用来给指定闲聊室的所有主持人发送密聊话语，前提是你必须也是主持人。如果未指定闲聊室，那么当前所处的闲聊室就是默认闲聊室。  
/ONOTICE 命令  
———————————————————–  
【语法】  
　　/onotice [#闲聊室]  
【描述】  
　　用来给指定闲聊室的所有主持人发送注意信息，前提是你必须也是主持人。如果未指定闲聊室，那么当前所处的闲聊室就是默认闲聊室。  
/PART 命令  
———————————————————–  
【语法】  
　　/part [退出的原因]  
【描述】  
　　用来退出某个闲聊室，在某些IRC服务器上，你还可以指定退出的原因。  
/PARTALL 命令  
———————————————————–  
【语法】  
　　/partall [退出的原因]  
【描述】  
　　用来退出所有闲聊室，在某些IRC服务器上，你还可以指定退出的原因。  
/PLAY 命令  
———————————————————–  
【语法】  
　　/play \[-escpb q# m# rl# t#\] \[#闲聊室/别名/stop\] [间隔时间]  
【描述】  
　　用来播放文本文件到指定的闲聊室或者密聊小窗口。  
　　参数“-e”是指将文本文件作为只有自己可以看到的显示信息播放出来；“-s”是指允许离线使用/play命令；“-c”是指要mIRC把文本文件的内容当成IRC命令强制执行。  
　　如果你连续使用了多个/play命令，则在前一个文本文件尚未播放完之前，后面的文本文件是处于等待状态的，意即在同一时刻mIRC只允许你播放一个文本文件(这样主要是为了防止你FLOOD服务器)。参数“-p”可以把文件的等待序列提前，即优先播放；“-q#”可以指定总共允许的最大等待序列(超出的PLAY请求将被忽略)；“-m#”则可以指定每个闲聊室或者别名可以接收的最大等待序列(超出的PLAY请求将被忽略)。注意“-q#”和“-m#”参数都必须是在Remote脚本里使用才有效。  
　　参数“-b”是指将剪贴板里的文本作为文本文件播放出来；参数“-r”是指从文本文件里随机播放一行；参数“-l#”则是指从文本文件里播放指定的行。  
　　参数“-t”是指播放指定标题下的所有内容(直到遇到下一个标题为止)。  
　　使用参数“stop”可以停止播放文本文件。  
　* 在使用/PLAY命令时，函数$pnick可以返回当前的接收对象。  
【注意】  
　　间隔时间的单位是毫秒，默认值是1000  
/POP 命令  
———————————————————–  
【语法】  
　　/pop \[延迟时间\] \[#闲聊室\]  
【描述】  
　　用来对某人进行一个延迟给帽子。这主要是为了防止大家同时对同一个人给帽子，从而造成系统信息提示的泛滥。  
【注意】  
　　间隔时间的单位是秒，如果为0则表明立刻给帽子。  
/PROTECT 命令  
———————————————————–  
【语法】  
　　/protect \[-r\] \[on|off|别名\] [#闲聊室1,#闲聊室2,..]  
【描述】  
　　用来往mIRC的保护名单里添加或者删除名字。也就是说，假设TigTag在你的保护名单里，那么以后当你在某个闲聊室是主持人的时候，TigTag被踢出去了或者帽子被摘了，mIRC就会自动以你的名义把踢TigTag/摘TigTag帽子的人踢出去/摘帽子。  
【举例】  
　　要查看当前是否允许mIRC自动保护，直接打“/protect”即可。  
　　要打开mIRC自动保护开关，用命令“/protect on”。  
　　要添加TigTag到保护名单，用命令“/protect TigTag”。  
　　要从保护名单移除TigTag，用命令“/protect -r TigTag”。  
/QUERY 命令  
———————————————————–  
【语法】  
　　/query [密聊话语]  
【描述】  
　　用来向某人发出密聊话语。  
【举例】  
　　假设你敲/query TigTag 你好，那么你和TigTag双方都会各自弹出一个小窗口，“你好”这句话会同时出现在你跟TigTag各自的小窗口里，而且这句话只有你跟TigTag才会看到。  
【注意】  
　　当用/MSG命令对某人发出密聊话语时，其作用与/QUERY相同。唯一的区别就是：使用/MSG命令时，自己这边不单独开个小窗口；而使用/QUERY命令时，双方都会各自开一个小窗口进行对侃。  
/QUIT 命令  
———————————————————–  
【语法】  
　　/quit [退出连接的理由]  
【描述】  
　　用来退出与当前服务器的连接，并可以给出退出的理由。  
【注意】  
　　退出的理由只有那些在你退出的时候，与你在同一闲聊室的人才能看见。  
/RAW 命令  
———————————————————–  
【语法】  
　　/raw [-q]  
【描述】  
　　用来往IRC服务器发送命令并要求其执行。在某些IRC服务器上，该命令等同于/QUOTE。  
　　参数“-q”可以使mIRC不显示你所发出去的命令。  
/SAY 命令  
———————————————————–  
【语法】  
　　/say  
【描述】  
　　用来向当前的闲聊室说话。其实就等于在命令输入栏里直接敲话。  
/SERVER 命令  
———————————————————–  
【语法】  
　　/server \[服务器地址\] \[端口\] [密码]  
【描述】  
　　用来连接某个IRC服务器，并可以指定端口(默认是6667)和密码。  
　　如果不带任何参数，则mIRC默认连接到上一次连接的IRC服务器。  
/SILENCE 命令  
———————————————————–  
【语法】  
　　/silence \[+|-\]\[地址\]  
【描述】  
　　用来通知IRC服务器为你建立一个忽略列表，凡是符合SILENCE列表里的人发给你的信息都将被服务器忽略，直至你从SILENCE列表里移除这些地址或者退出IRC服务器。  
　　关于地址的类型请参考/IGNORE命令。  
　* 这个命令其实与/IGNORE命令非常类似，只不过/SILENCE是利用IRC服务器来忽略，而/IGNORE是利用mIRC本身来忽略。  
【举例】  
　　忽略TigTag的任何信息，用命令：/silence +TigTag!\*@\*  
　　不再忽略来自192.168.*的任何信息，用命令：/silence -\*!\*@192.168.*  
　　查看服务器为你建立的SILENCE列表，用命令：/silence  
/SOUND 命令  
———————————————————–  
【语法】  
　　/sound \[on|off|别名/#闲聊室\] \[消息\]  
【描述】  
　　用来向某人或者某个闲聊室发出声音(可以是\*.wav文件或者\*.mid文件)，同时还可以夹带上一句话。  
【举例】  
　　打开mIRC的声音开关，用命令：/sound on  
　　对#Chat发出passport.mid，用命令：/sound #Chat passport.mid  
　　对TigTag发出tada.wav，并且说Hi，用命令：/sound TigTag tada.wav Hi  
/SPLAY 命令  
———————————————————–  
【语法】  
　　/splay [-qwm]  
【描述】  
　　用来对自己放出声音(可以是\*.wav文件或者\*.mid文件)，只有自己才听得到。  
　　也可以用来停止当前mIRC正在播放的声音，用命令：/play stop  
　　如果只想停止当前mIRC正在播放的*.wav文件，用命令：/play -w stop  
　　如果只想停止当前mIRC正在播放的*.mid文件，用命令：/play -m stop  
　　参数“-q”可以让你将要播放的声音文件自动排成一个序列，然后顺次播放。  
/TIMER 命令  
———————————————————–  
【语法】  
　/timer\[数字/名称\] \[-ceom\] [时间]  
【描述】  
　　用来重复执行某个命令。默认情况下mIRC使用的是在线TIMER，也就是说，一旦和IRC服务器断开连接，所有的TIMER自动被清除，而参数-o可以强制某个TIMER成为一个离线TIMER；mIRC默认的间隔时间是以秒为单位，而参数-m可以使之以毫秒为单位。  
　　如果重复次数为0，则该TIMER将一直重复下去，直到用/timer[数字/名称] off停止该任务。（用/timers可以查看所有的TIMER；用/timers off可以清除所有的TIMER；在清除TIMER时也允许使用通配符，例如：/timer3? off、/timerflood_* off）  
　　/TIMER命令也可以指定在某个时间才开始重复执行命令。  
　* 函数$ltimer可以返回你最后一次使用/TIMER命令时所起的计时器的序号或者名称。  
【举例】  
　　重复说10次“大家好”，间隔1秒，用命令：/timer 10 1 /say 大家好  
　　在23:00的时候报一次时，用命令：/timer 23:00 1 1 /say 现在的时间是晚上11点整！  
　　终止所有以1开头的TIMER，用命令：/timer1* off  
/TOPIC 命令  
———————————————————–  
【语法】  
　　/topic [新主题]  
【描述】  
　　用来更改指定闲聊室的聊天主题。  
　　如果不指定新主题，则系统会告诉你指定闲聊室的当前主题。  
/USERHOST 命令  
———————————————————–  
【语法】  
　　/userhost  
【描述】  
　　用于查找某人的IP。  
/WHO 命令  
———————————————————–  
【语法】  
　　/who [别名/地址|#闲聊室]  
【描述】  
　　用来获取某人的一些信息，如对方的IP；也可根据指定的IP找人；还可以列出指定闲聊室的人名。  
【举例】  
　　查找IP地址是127.0.0.1的人，用命令：/who 127.0.0.1  
　　查找IP地址以192.168打头的人，用命令：/who 192.168.*  
　　列出当前IRC服务器上的所有非隐藏的人，用命令：/who  
【注意】  
　　不是所有的IRC服务器都支持用/WHO命令找人  
/WHOIS 命令  
———————————————————–  
【语法】  
　　/whois  
【描述】  
　　用来获取某人的一些信息，如对方的真实名字，对方的IP，对方是何时登录IRC服务器的，等等。  
/WHOWAS 命令  
———————————————————–  
【语法】  
　　/whowas  
【描述】  
　　用来查询最近某人是否登录过当前的IRC服务器。如果有此人的记录，则通过/WHOWAS命令便可得知他/她末次登录的时间，以及末次登录时使用的地址等等信息  
================  
● 基本语法篇  
================  
变量(Variables)  
　　变量是用来暂时储存某个数据以便以后在mIRC脚本中使用的。它的基本构成是”%”+”变量名”，例如%a、%b、%test。在mIRC中对变量的限制很宽松，甚至连任何符号都可以用来作为变量，比如%a@b、%[names等都是合法的变量。当某个变量不存在或者未设置变量值时，该变量的值将被认为是$null(空值)。  
　　下面介绍如何对变量进行设置，以及如何对它们进行操作。  
　　在mIRC中专门有一个与Alias、Popup和Remote类似的变量编辑窗口(按Alt+R，再选择Variables选项卡)，你可以直接在这里写入变量名以及所对应的变量值。但是，建议你用如下的mIRC命令根据需要来设置变量，因为这样更便于在脚本中引用。  
/SET 命令  
\---|\---|\---|\---|\---|\---|\---|\---|\---|\---|\---|\---|\---|\---|\---|\---|\---|\---|\---|--  
【语法】  
　　/set \[-szuN\] \[变量值\]  
【描述】  
　　用来设置一个变量，并可以给它赋予初始值。参数-uN是指在设置变量N秒后，如果没有其它脚本引用该变量，则将其自动删除；-s是指在设置变量时让mIRC做出回显(下同)；-z是指递减该变量值，直至其为0的时候将其自动删除。  
　　利用/SET命令设置的变量都可以在变量(Variables)编辑窗口看到，并可以进行编辑。  
/UNSET 命令  
———————————————————–  
【语法】  
　　/unset [-s]  
【描述】  
　　用来从变量编辑窗口中删除掉指定的变量。可以使用通配符，例如：/unset %chan*，这将删除掉所有以%chan开头的变量。  
/UNSETALL 命令  
———————————————————–  
【语法】  
　　/unsetall  
【描述】  
　　这将删除掉变量编辑窗口中的所有变量。  
/INC 命令  
———————————————————–  
【语法】  
　　/inc \[-cszuN\] \[步长\]  
【描述】  
　　根据指定的步长来增加某个指定变量的值。参数-uN是指只增加该变量的值一次，然后在N秒后删除该变量；-c是指每秒增加该变量的值一次；-z指递减该变量的值，直至其为0的时候将其自动删除。  
/DEC 命令  
———————————————————–  
【语法】  
　　/dec \[-cszuN\] \[步长\]  
【描述】  
　　根据指定的步长来减少某个指定变量的值。参数-uN是指只减少该变量的值一次，然后在N秒后删除该变量；-c是指每秒递减该变量的值一次；-z指递减该变量的值，直至其为0的时候将其自动删除。  
　　你也可以在脚本中(注意，不是在命令输入栏)直接用英文等号(“=”来设置某个变量，如“%x = 88”；你也可以利用英文等号来对变量进行一个简单的运算，如“%x = 88 + 5”（注意，如果要进行更复杂的运算，则必须使用$calc()函数）  
　　你还可以利用/VAR命令来设置一个临时变量，它将只能在脚本中进行设置，并且当该脚本运行完毕时将被自动删除。例如：/var %x、 /var %x = hello、 /var %x = hello, %y, %z = $me …  
运算符  
———————————————————–  
　　在mIRC中也有很多运算符，基本的包括：+(加)、-(减)、*(乘)、/(除)、%(求余数)、^(乘方)，不过通常都要配合$calc()函数使用，以让mIRC识别这是一个运算式。例如：%count = $calc((%x + 1) * 4)  
　　在编写mIRC脚本时还经常会用到一个很有用的运算符，那就是“[”和“]”。当表达式或者函数被这两个符号包括起来时，则mIRC会优先执行这里面的运算(按从左到右的顺序)。需要注意的是在“[”和“]”的两旁必须留有一个英文空格，否则将不起作用。  
　　其它还有很多运算符，如关系运算符等，这将在判断语句中进行介绍。  
判断语句  
———————————————————–  
　　在mIRC中，判断语句(If-Then-Else)的基本句法是：  
　　if (v1 运算符 v2) { 命令 }  
　　elseif (v1 运算符 v2) { 命令 }  
　　else { 命令 }  
　　“()”括号里的内容是表明进行判断，如果为真，则执行“{}”括号里的命令(可以是任何命令)。  
　　这里的运算符包括：  
　　==　　　等于  
　　===　 　　等于(对大小写敏感)  
　　!=　　　不等于  
　　<　　 　小于  
　　>　 　　大于  
　　>=　　　不小于  
　　<=　　　不大于  
　　//　　　存在倍数关系  
　　\\　　　不存在倍数关系  
　　&　 　　存在位与关系  
　　isin　　字符串v1被包含在字符串v2里  
　　isincs　　字符串v1被包含在字符串v2里(对大小写敏感)  
　　iswm　　v2符合包含通配符的字符串v1  
　　isnum　 　数字v1在指定的v2范围内(v2可省略)；例如：(8 isnum 6-10)、(6 isnum)  
　　isletter　字母v1包含在v2列出的英文字母里(v2可省略)；例如：(t isletter fantasy)、(s isletter)  
　　isalnum　 v1为一个英文字母或者数字  
　　isalpha　 v1为一个英文字母  
　　ison　　别名v1在闲聊室v2里  
　　isop　　别名v1是闲聊室v2的主持人(有@帽子)  
　　isowner 　别名v1是闲聊室v2的拥有者(OWNER, 见于IRCX服务器)  
　　isvo　　别名v1在闲聊室v2里有发言权  
　　ishop　　 别名v1是闲聊室v2里的一个助理主持人(HalfOP，旧称Helper)  
　　isreg　 　v1是闲聊室v2里的一个普通别名  
　　ischan　　v1是你目前已经进入的闲聊室  
　　isban　　 v1是mIRC的内部BAN列表里被BAN掉的地址  
　　isauto　　v1是自动给帽子(Auto-Op)列表中的人(v2用来指明是在哪个闲聊室，可选)  
　　isignore　v1是忽略(Ignore)列表中的人  
　　isprotect v1是自动保护(Protect)列表中的人(v2用来指明是在哪个闲聊室，可选)  
　　isnotify　v1是你的通知(Notify)列表中的人  
　　  
　　要进行相反的判断，则在运算符前面加“!”号，例如：(55 !isletter)、(TigTag !ison #Chat) 等等。  
　　函数$ifmatch可以用来返回被IF判断语句捕获的第一个参数，例如：if (TigTag isin TigTagIsHelisheep) { ... }，由于“TigTag”被包含在了“TigTagIsHelisheep”这个字符串中，因此这里的$ifmatch就将返回TigTag。  
　　你也可以利用逻辑运算符&&(And)和||(Or)来组合更为复杂的判断，例如：if (($nick ison #Chat) && ($nick == TigTag)) { ... }  
循环语句  
\---|\---|\---|\---|\---|\---|\---|\---|\---|\---|\---|\---|\---|\---|\---|\---|\---|\---|\---|--  
　　在mIRC中目前只提供了一种循环语句，即While循环。它的基本句法如下：  
　　while (v1 运算符 v2) {  
　　　命令  
　　}  
　　(v1 运算符 v2)表示判断(参见判断语句)，如果为真则进行循环。你可以用/break跳出该循环，也可以用/continue跳到循环的最开始处。  
　　使用While语句的时候很容易造成一个死循环，用它只是可以让程序流程看起来更清晰明了罢了(个人观点)。你当然也可以利用IF语句+GOTO语句形成一个循环(尽管GOTO语句会让程序变得很晦涩，而且容易打乱程序的结构)。例如：  
　　...  
　　var %i = 0  
　　:nexti  
　　　inc %i 1  
　　　if (%i >= 10) { goto endi }  
　　　goto nexti  
　　:endi  
　　…  
　　PS: 在编写Remote脚本的时候，所有用到的IRC命令都可以省略掉前面的“/”号。  
============================  
● 昵称服务(NickServ)命令  
============================  
REGISTER 命令  
———————————————————–  
【语法】  
　　/msg nickserv register [E-Mail地址]  
【描述】  
　　用来注册当前你所使用的昵称，这样其他的用户就不能使用这个昵称了,除非你授予他/她权限在你的ACCESS列表。一但你的昵称被注册了，可以根据你的喜好使用SET命令或ACCESS命令来修改相应设置。请一定记住注册时的密码，这个密码在以后会经常用到。如果你忘记了密码，可以找系统管理员帮助你重新找回。  
　　* 在某些IRC服务器上在注册昵称时还要求你提供一个自己的E-Mail地址，以便在忘记密码时可以将密码邮到该信箱。  
【举例】  
　　假设我现在的昵称是TigTag，那么我输入/msg nickserv register HdeestP double.j@ynmail.com，这样就会以Hdeestp这个密码将昵称TigTag注册了。  
IDENTIFY 命令  
———————————————————–  
【语法】  
　　/msg nickserv identify  
【描述】  
　　用来验证当前你所使用的昵称，通常是在你登录IRC服务器或者改名后需要使用。如果在规定的时间内没有输入正确的验证命令和密码，则会被强制更名或者被杀出服务器。  
【举例】  
　　假设我现在的昵称是TigTag，输入/msg nickserv identify HdeestP，就会将TigTag这个昵称进行验证了。这里我的密码是Hdeestp，即我们在示例REGISTER命令时所使用的密码。  
ACCESS 命令  
———————————————————–  
【语法】  
　　/msg nickserv access [地址掩码]  
【描述】  
　　用于修改或者显示允许使用你当前这个昵称的地址列表。这里增加的网络地址掩码NickServ会自动识别，如果你在其他的网络地址中使用这个昵称，你仍然需要使用IDENTIFY命令让NickServ来识别您。  
　　地址掩码的格式是：userid@host.domain  
【举例】  
　　/msg nickserv access add who@*.moodnet.org，这将允许在moodnet.org这个域里userid为who的人使用当前的这个昵称。  
　　/msg nickserv access del who@*.moodnet.org，这将删除上面所添加的这个ACCESS地址掩码。  
　　/msg nickserv access list，将列出允许使用你当前昵称的所有地址掩码。  
LINK 命令  
———————————————————–  
【语法】  
　　/msg nickserv link  
【描述】  
　　用于链接当前昵称到你的主力昵称。一旦当你做了链接，如果使用ACCESS命令查看这个昵称的网络列表时，你会发现该昵称的访问列表将被删除，取而带之的是主力昵称的网络列表，而对于当前昵称的所有的留言信息都将被追加到主力昵称上(这将导致主力昵称的留言信息的最小限制被打破，所以需要你及时删除一些没用的留言)。  
　　一但这个链接被建立，你当前的这个昵称将同主力昵称一样被NickServ识别，除非你使用了NickServ的UNLINK或者DROP命令。  
　　例如：你可以使用其它的别名来读取自己的留言信息(别人发给您经过链接的其他昵称的信息，你都可以接收)。如果你现在的昵称经过验证了，那么其他昵称同样自动得到验证。如果你在某个频道里有权限，则也会同样得到识别。  
　　在使用这个命令前，你必须先使用IDENTIFY命令来认证当前的这个昵称。  
【举例】  
　　使用命令/msg nickserv link TigTag Hdeestp，将把当前的昵称链接到主力昵称TigTag。这里TigTag的密码是Hdeestp，即我们在示例REGISTER命令时所使用的密码。  
SET 命令  
———————————————————–  
【语法】  
　　/msg nickserv set  
【描述】  
　　用来对你的当前昵称进行一些设置。这些设置项目包括：  
　　Password　　用于改变当前昵称的密码  
　　Language　　用于选择使用何种语言(通过选择语言代码)让NickServ对该昵称发出信息  
　　URL　　 用于设置与当前昵称相关的主页地址，该地址可以在使用INFO命令时看到  
　　Email　　 用于设置与当前昵称相关的电子信箱，该信箱可以在使用INFO命令时看到  
　　Kill　　用于设置对假冒用户的处理，使用的参数是“ON”、“QUICK”、“IMMED”和“OFF”。当选择“ON”打开这个开关时，如果有人想使用你的昵称，他/她将会被提示有1分钟的改名时间，如果到时他/她仍然没有改名，将会被NickServ强制杀出服务器。如果你选择了“QUICK”，他/她将会被提示有20秒改名时间；如果你选择了“IMMED”，则该用户将不会得到任何改名警告而被杀出服务器(请不要使用这个选择，除非你有特别的需要)  
　　Secure　　用于打开或关闭NickServ的口令安全机制，使用的参数为“ON”或“OFF”。如果设置为“ON”，则无论当前昵称是否在ACCESS网络列表里，都需要通过输入密码来认证；如果当前昵称已经在ACCESS网络列表里，则即使设置了KILL选项，系统也不自动杀掉你  
　　Private　　 用于设置当别人使用/msg nickserv list命令时，是否隐藏你的注册信息。参数“ON”为是，“OFF”为否  
　　Hide　　用于设置当别人使用/msg nickserv info命令时，是否隐藏你的一部分信息。这些信息包括“Email”(电子邮件信息)、“UserMask”(网络地址信息)和“Quit”(最后退出时的信息)；使用参数“ON”为隐藏，参数“OFF”为不隐藏  
【举例】  
　　更改密码：假设我现在的名字是TigTag，且已经通过了IDENTIFY验证，则使用/msg nickserv set password Kssoaqx命令可以将昵称密码改为Kssoaqx  
　　更改语种：假设系统提供了语言代码“1”为“简体中文”；代码“2”为“繁体中文”；代码“3”为“English”…，则使用命令/msg nickserv set language 2可以让NickServ以后使用繁体中文对当前昵称提供信息  
　　更改主页相关：/msg nickserv set url irc.yeah.net/”这个主页…�以使用/msg” target=”_blank”>http://xirc.yeah.net/，这将把“…使用/msg nickserv info命令查看到了  
　　更改Email相关：/msg nickserv set email double.j@ynmail.com，这将把“double.j@ynmail.com”这个电子信箱与当前昵称建立关联，这样别人就可以使用/msg nickserv info命令查看到了  
　　限定假冒用户在60秒内更名：/msg nickserv set kill on  
　　打开NickServ的口令安全机制：/msg nickserv set secure on  
　　在LIST命令里隐藏注册信息：/msg nickserv set private on  
　　在INFO命令隐藏最网络地址信息：/msg nickserv set hide usermask on  
DROP 命令  
———————————————————–  
【语法】  
　　/msg nickserv drop  
【描述】  
　　用来注销当前你所使用的昵称，这样别人就可以使用这个昵称了。  
　　在使用该命令前，必须先通过IDENTIFY命令进行的验证。  
【举例】  
　　/msg nickserv drop，这就将注销掉当前你所使用的这个昵称。  
RECOVER 命令  
———————————————————–  
【语法】  
　　/msg nickserv recover  
【描述】  
　　用于杀掉一个占用你昵称的人，该做法跟NickServ的自动杀保护是一样的。  
　　当您使用这个命令时，NickServ将假装成一个跟这个昵称一样的用户昵称，这样就导致服务器杀掉这个用户(或强制更名)。这个假装的用户将持续在线1分钟，防止那个用户的再次连接；一分钟以后，你就把你的昵称改变为该昵称了，但在这之前最好使用先使用一下RELEASE命令(/msg NickServ HELP RELEASE)释放掉开头设置的昵称占用。  
　　* 在使用RECOVER命令时你当前的网络地址必须在你的昵称的ACCESS网络列表里存在，而且你必须提供正确的密码。  
RELEASE 命令  
———————————————————–  
【语法】  
　　/msg nickserv release  
【描述】  
　　用于通知NickServ去掉因为使用RECOVER命令而占用的昵称，通常这种占用持续1分钟。  
　　* 在使用RELEASE命令时你当前的网络地址必须在你的昵称的ACCESS网络列表里存在，而且你必须提供正确的密码。  
UNLINK 命令  
———————————————————–  
【语法】  
　　/msg nickserv link  
【描述】  
　　用于从你的链接列表里删除这个昵称。当这个昵称被删除后，主力昵称的一些标记和网络地址信息将被拷贝过来，这个昵称从此将独立存在。但留言信息不再拷贝过来，所有的留言信息将被存储在主力昵称那里。  
　　如果输入名字和口令参数，则删除跟你链接的其他名字。  
　　服务管理员可以不通过口令认证，取消一个用户的连接。  
GHOST 命令  
———————————————————–  
【语法】  
　　/msg nickserv ghost  
【描述】  
　　用于杀掉一个一直占用你昵称的“鬼魂”。当您的“鬼魂”还连接在IRC服务器上时，系统会认为这个“鬼魂”一直在线，从而导致你无法使用这个昵称。  
　　产生这种“鬼魂”的原因通常是因为你不正常掉线了，而当你再次连接上来时，就发生了。  
　　* 在使用GHOST命令时你当前的网络地址必须在该“鬼魂”的ACCESS网络列别里存在。  
【举例】  
　　杀掉“鬼魂”TigTag，使用命令/msg nickserv ghost TigTag HdeestP。这里TigTag的密码是Hdeestp，即我们在示例REGISTER命令时所使用的密码。  
INFO 命令  
———————————————————–  
【语法】  
　　/msg nickserv info [All]  
【描述】  
　　用于查看某个已注册昵称的信息，例如该昵称的主人、网络地址、电子信箱、最后一次退出的信息等。  
　　* 对于某些昵称，增加参数“All”可以获取更详细的信息。  
LIST 命令  
———————————————————–  
【语法】  
　　/msg nickserv list  
【描述】  
　　用于根据指定的地址掩码列出相应的已注册昵称。地址掩码是按照“nick!userid@host.domain”的方式。  
　　* 如果用户设置了Private选项，则在这里将不显示他/她的注册信息。  
【举例】  
　　/msg nickserv list \*!\*@61.128.\*，将列出所有从61.128.\*注册的昵称。  
　　/msg nickserv list \*!bot@\*，将列出所有userid是“bot”的昵称。  
　　/msg nickserv list \*bot\*!\*@\*，将列出所有包含“bot”字眼的昵称。  
STATUS 命令  
———————————————————–  
【语法】  
　　/msg nickserv status  
【描述】  
　　用于查询指定昵称是否已得到验证，返回的格式是：  
　　昵称 状态代码  
　　“状态代码”的意思如下：  
　　0　　该昵称当前不在线，或者根本没有注册  
　　1　　该昵称尚未通过验证的  
　　2　　该昵称在对应的ACCESS网络列表中，但是没有通过验证  
　　3　　该昵称已经得到验证  
　　* 最多一次可以查询16个名字，多余部分将被忽略。  
=============================  
● 频道服务(ChanServ)命令  
=============================  
REGISTER 命令  
———————————————————–  
【语法】  
　　/msg chanserv register  
【描述】  
　　用来注册一个指定的频道。使用这个命令之前你必须先进入这个频道，并成为频道管理员，也就是我们通常说的有帽子；“频道密码”是为了便于验明身份来改变频道的设置；“对该频道的描述”是必须有的，用以说明这个频道研讨的主题。  
　　当你注册了这个频道，你就成了这个频道的“创始者”(Founder)。创始者可以改变频道的所有设置，当创始者进入频道，ChanServ将会自动给予创始者频道管理员的权限。使用ChanServ的ACCESS命令可以为其他用户增加访问权限。  
　　* 在注册频道之前，你必须先注册你的昵称。具体请参照NickServ的REGISTER命令  
【举例】  
　　/msg chanserv register #Chat kksSed 随便聊吧，这样就将注册#Chat这个频道，密码是kksSed，相应的频道描述是随便聊吧。  
IDENTIFY 命令  
———————————————————–  
【语法】  
　　/msg chanserv identify  
【描述】  
　　用来验证你是指定的频道的创始者(Founder)，ChanServ的很多命令都需要你事先使用它。  
　　这里的“频道密码”是你在使用REGISTER命令注册频道时所使用的密码。  
【举例】  
　　/msg chanserv identify #Chat kksSed，这样就将把你验证成为频道#Chat的创始者。在这里我们所使用的密码是kksSed，即前面REGISTER命令示例时所提供的频道密码。  
SET 命令  
———————————————————–  
【语法】  
　　/msg chanserv set  
【描述】  
　　用来对指定频道进行一些设置(但在进行设置前必须使用ChanServ的IDENTIFY命令进行验证)。这些设置项目包括：  
　　Founder　　设置频道的创始者(必须是一个已注册的昵称)  
　　Successor　　设置频道的继承人。如果频道创始者的名字被取消或者失效，而频道还在使用，这样继承人就会变成频道的创始者。但是，如果这个继承人已经注册了太多的频道(>=20)，这个频道将被取消，就跟没有继承人设置是一样的。  
　　Password　　 设置创始者的密码(或者说是更改频道的密码)  
　　Desc　　 更改对该频道的描述  
　　URL　　设置与该频道相关的主页地址信息(可以使用/msg chanserv info命令查看到)  
　　Email　　设置与该频道相关的电子信箱信息(可以使用/msg chanserv info命令查看到)  
　　EntryMsg　　 设置当有用户进入该频道时，由频道对该用户发出的Notice信息。如果没有参数，将没有信息发给该用户。  
　　Topic　　设置该频道的主题  
　　KeepTopic　　设置当没有人在该频道时，是否记忆频道的主题，这样当下一次频道建立时会自动恢复成该主题。参数“ON”表示记忆，参数“OFF”表示不记忆。  
　　TopicLock　　是否锁定频道的主题。参数“ON”表示锁定，“OFF”表示不锁定。如果频道主题被锁定，则只有使用ChanServ的Set Topic命令才可以更改主题。  
　　mLock　　根据指定参数来锁定频道的模式，这些参数是以“+”号表示锁定，“-”表示不锁定，例如“+nt-iklms”；如果仅有一个“+”号而没有跟任何频道模式则表示不锁定频道的模式。(频道模式的含义请参照/MODE命令)  
　　Private　　设置是否从ChanServ的LIST命令里隐藏该频道(使用/msg chanserv list命令时，如果不知道该频道的完整名称则无法看到该频道)；参数“ON”为隐藏，“OFF”为不隐藏。  
　　Restricted　　 设置是否打开该频道的限制使用权。当Restricted被设置后，普通用户将被Kick和Ban出频道。这些普通用户包括级别是负数和不在访问权限列表中的用户。参数“ON”表示打开，“OFF”表示关闭。  
　　Secure　　 设置是否打开该频道的安全特性。当Secure被设置后，只有已注册、并且使用IDENTIFY命令的用户才可以访问这个频道。参数“ON”表示打开，“OFF”表示关闭。  
　　SecureOPs　　设置是否打开该频道的安全管理员特性。当SecureOPs被设置后，没有在频道用户列表中的用户将不会有频道管理员权限(即不会得到帽子)。参数“ON”表示打开，“OFF”表示关闭。  
　　LeaveOPs　　 设置是否打开该频道的保留管理员特性。当LeaveOPs被设置后，将不会自动DEOP用户，除非有DEOP命令被使用。参数“ON”表示打开，“OFF”表示关闭。  
　　OPNotice　　 设置是否打开该频道的OP/DEOP通告。当OPNotice被设置后，只要有人在该频道使用了ChanServ的OP或者DEOP命令，ChanServ都将在该频道发送Notice通告。参数“ON”表示打开，“OFF”表示关闭。  
【举例】  
　　更改频道创始者：/msg chanserv set #Chat founder 阿奔，这将把频道#Chat的创始者设置为阿奔  
　　设置频道继承人：/msg chanserv set #Chat successor FoOl\_BoT，这将把频道#Chat的继承人设置为FoOl\_BoT  
　　更改频道描述：/msg chanserv set #Chat desc Welcome to chat here，这将把频道#Chat的描述更改为Welcome to Chat Here  
　　更改主页相关：/msg chanserv set #Chat url http://xirc.yeah.net/” target=”_blank”>http://xirc.yeah.net/，这将把频….yeah.net/  
　　更改Email相关：/msg chanserv set #Chat email double.j@ynmail.com，这将把频道#Chat的Email信息更改为double.j@ynmail.com  
　　设定EntryMsg：/msg chanserv set #Chat entrymsg Hi，#Chat的世界，就是任你天南地北侃大山的世界，这样当任何人进入频道#Chat时，都将收到由ChanServ发出的“Hi，#Chat的世界，就是任你天南地北侃大山的世界”这条Notice信息  
　　更改频道主题：/msg chanserv set #Chat topic To chat or not to chat, this is a question..，这将把频道#Chat的房间主题设置为为To chat or not to chat, this is a question..  
　　设置保留频道#Chat主题：/msg chanserv set #Chat keeptopic on  
　　锁定频道#Chat的主题：/msg chanserv set #Chat topiclock on  
　　锁定频道#Chat的模式为+nt-ilkmps：/msg chanserv set #Chat mlock +nt-ilkmps  
　　不再锁定频道#Chat的模式：/msg chanserv set #Chat mlock +  
　　在LIST命令里隐藏频道#Chat：/msg chanserv set #Chat private on  
　　不再限制频道#Chat的使用权：/msg chanserv set #Chat restricted off  
　　关闭频道#Chat的安全特性：/msg chanserv set #Chat secure off  
　　关闭频道#Chat的安全管理员特性：/msg chanserv set #Chat secureops off  
　　打开频道#Chat的保留管理员特性：/msg chanserv set #Chat leaveops on  
　　打开频道#Chat的OP/DEOP通告：/msg chanserv set #Chat opnotice on  
ACCESS 命令  
———————————————————–  
【语法】  
　　/msg chanserv access add  
　　/msg chanserv access del  
　　/msg chanserv access list  
【描述】  
　　用来查看或者修改指定频道的访问权限列表。不同的级别有不同的权限，不在频道权限列表中的用户级别是0。按照ChanServ默认的设置，各种权限如下：  
　　10　　可以使用AKICK命令；并在加入频道时自动获得频道管理权(即SOP、Super Operator)  
　　 5　　在加入频道时自动获得频道管理权(即AOP、Auto Operator)  
　　 3　　在加入频道时自动获得频道发言权(即VOP、Auto Voicer)  
　　 0　　没有指定权限(即普通用户)；可以被其他人给予@，但要保证SecureOPs没有设置  
　　 < 0　　不允许有权限@  
　　这些默认的权限级别也可以更改，参见LEVELS命令。  
　　ACCESS ADD命令是增加指定级别的用户名到频道权限列表中，如果用户名已经在频道列表中，则改变用户的访问级别（改变用户的级别时，不能输入高于自己级别的数值）。  
　　ACCESS DEL命令是从频道权限列表里删除指定的用户(可以直接指定用户名或权限访问列表里的行号)。  
　　ACCESS LIST命令则是列出指定频道的权限列表(可以使用通配符来指示昵称，也可以使用权限访问列表里的行号；如果什么都没有指定则列出频道的所有权限)。  
【举例】  
　　/msg chanserv access #Chat add TigTag 10，这将把TigTag加入到频道#Chat的权限列表，并设置他的级别为10级(SOP)。  
　　/msg chanserv access #Chat del FoOl\_BoT，这将把FoOl\_BoT从频道#Chat的权限列表里删除。  
　　/msg chanserv access #Chat del 10-12，这将删除掉频道#Chat的权限列表里的第10-12项。  
　　/msg chanserv access #Chat list，这将列出频道#Chat的所有权限列表。  
　　/msg chanserv access #Chat list \*t\*，这将列出频道#Chat的权限列表里，包含字母“t”的昵称。  
LEVELS 命令  
———————————————————–  
【语法】  
　　/msg chanserv levels set  
　　/msg chanserv levels  
　　/msg chanserv levels list  
　　/msg chanserv levels reset  
【描述】  
　　LEVELS命令可以很好的通过数值来更改不同级别所对应的权限。使用这个命令，你可以重新定义ChanServ所提供的默认访问级别。  
　　可以通过LEVELS命令来更改的类别有：  
　　AutoOP　　自动频道管理员(AOP)  
　　AutoVoice　　 自动获取频道发言权(VOP)  
　　AutoDEOP　　自动去除频道管理员  
　　NoJoin　　自动禁止加入该频道  
　　Invite　　允许使用ChanServ的Invite命令  
　　Akick　　 允许使用ChanServ的Akick命令  
　　Set　　 允许使用ChanServ的Set命令  
　　Clear　　 允许使用ChanServ的Clear命令  
　　Unban　　 允许使用ChanServ的Unban命令  
　　OPDEOP　　允许使用ChanServ的OP/DEOP命令  
　　Acc-List　　允许查看该频道的权限访问列表  
　　Acc-Change　　允许修改该频道的权限访问列表  
　　Memo　　允许查看或者阅读该频道的留言  
　　LEVELS SET命令可以改变上述类别所对应的权限级别。  
　　LEVELS DIS命令则可以禁止非创始者使用类别所对应的功能。  
　　LEVELS LIST命令可以查看指定类别所对应的级别。  
　　LEVELS RESET命令则可以重置上述所有类别到默认设置。  
【举例】  
　　/msg chanserv levels #Chat dis acc-list，这将禁止非创始者查看频道#Chat的权限访问列表。  
　　/msg chanserv levels #Chat disable set，这将禁止非创始者在频道#Chat使用ChanServ的Set命令。  
　　/msg chanserv levels #Chat set autovoice 0，这将设置频道#Chat的VOP级别为0，即普通用户的级别，这样任何人进入该频道都将被自动+v了。  
　　/msg chanserv levels #Chat list，可以查看频道#Chat的各类别所对应的级别。  
　　/msg chanserv levels #Chat reset，重置频道#Chat的所有类别到默认设置。  
AKICK 命令  
———————————————————–  
【语法】  
　　/msg chanserv akick add [原因]  
　　/msg chanserv akick del  
　　/msg chanserv akick list [地址掩码]  
　　/msg chanserv akick view [地址掩码]  
　　/msg chanserv akick enforce  
　　/msg chanserv akick clear  
【描述】  
　　用于查看或修改指定频道的自动踢列表。一旦有符合自动踢列表的人加入该频道，都将被ChanServ自动Kick和Ban。  
　　AKICK ADD命令可以增加一个昵称或地址到自动踢列表里，并可以指定踢他/她的原因。  
　　AKICK DEL命令可以从自动踢列表删除指定的昵称或者地址掩码；但已经被BAN了的地址仍然需要被手工删除。  
　　AKICK LIST命令可以查看指定频道的自动踢列表，并可以指定地址掩码以查看对应的信息。  
　　AKICK VIEW命令是AKICK LIST更进一步的命令。  
　　AKICK ENFORCE命令则是通知ChanServ立即执行自动踢，将踢出指定频道里当前所有符合自动踢列表项的用户。  
　　AKICK CLEAR命令可以清空指定频道的自动踢列表。  
【举例】  
　　/msg chanserv akick #Chat add \*bot\*!\*@\* 禁止BOT入内，这将把“\*bot\*!\*@\*”这个地址加入频道#Chat的自动踢列表；这样当昵称中包含“bot”字样的人进入该频道时都将被自动踢出并+b，理由是“禁止BOT入内”  
　　/msg chanserv akick #Chat del \*bot\*!\*@\*，这将从频道#Chat的自动踢列表里删除掉“\*bot\*!\*@\*”这个自动踢列表项  
　　/msg chanserv akick #Chat list，这将列出频道#Chat的所有自动踢列表项  
　　/msg chanserv akick #Chat clear，这将清除掉频道#Chat的所有自动踢列表项  
CLEAR 命令  
———————————————————–  
【语法】  
　　/msg chanserv clear  
【描述】  
　　用于清除指定频道的设置，这些设置包括：  
　　Modes　　复位所有频道模式(例如：清除模式i、k、l、m、n、p、s、t)  
　　Bans　　 清除频道所有禁止(Ban)信息  
　　OPs　　摘掉频道里所有的帽子  
　　Voices　　 去掉频道里所有的发言权  
　　Users　　踢走频道里所有的人  
【举例】  
　　/msg chanserv clear #Chat modes，这将复位频道#Chat的模式。  
　　/msg chanserv clear #Chat bans，这将清除掉频道#Chat里所有被禁止了的地址。  
DROP 命令  
———————————————————–  
【语法】  
　　/msg chanserv drop  
【描述】  
　　用来注销指定的频道。  
　　只有频道的创始者可以使用该命令，而且在使用前还必须通过ChanServ的频道验证。  
【举例】  
　　/msg chanserv drop #Chat，这将注销掉频道#Chat  
INFO 命令  
———————————————————–  
【语法】  
　　/msg chanserv info  
【描述】  
　　用来查看指定频道的信息。包括频道创始者、注册时间、最后使用时间、频道描述和模式锁等。  
【举例】  
　　/msg chanserv info #Chat，将可以查看到频道#Chat的相关信息  
LIST 命令  
———————————————————–  
【语法】  
　　/msg chanserv list  
【描述】  
　　根据关键字列出相应的已注册定频道，关键字可以使用通配符。  
　　* 如果某个频道设置了Private选项，则在这里将看不到该频道。  
【举例】  
　　/msg chanserv list #C*，将列出所有以#C打头的频道  
INVITE 命令  
———————————————————–  
【语法】  
　　/msg chanserv invite  
【描述】  
　　用于让ChanServ邀请你到指定的频道。但默认情况下，只有在该频道权限大于0级别的用户才可以使用。  
【举例】  
　　/msg chanserv invite #Chat，这将让ChanServ邀请你到频道#Chat  
OP 命令  
———————————————————–  
【语法】  
　　/msg chanserv op  
【描述】  
　　用于在指定频道给指定用户频道管理权限(帽子)。默认情况下，只有在该频道权限大于5级别的用户才可以使用。  
【举例】  
　　/msg chanserv op #Chat TigTag，这将让ChanServ在频道#Chat给TigTag帽子  
DEOP 命令  
———————————————————–  
【语法】  
　　/msg chanserv deop  
【描述】  
　　用于在指定频道去掉指定用户的频道管理权限(帽子)。默认情况下，只有在该频道权限大于5级别的用户才可以使用。  
【举例】  
　　/msg chanserv deop #Chat TigTag，这将让ChanServ在频道#Chat摘掉TigTag的帽子  
UNBAN 命令  
———————————————————–  
【语法】  
　　/msg chanserv unban  
【描述】  
　　用于通知ChanServ取消所有因为Ban而阻止你进入该频道的设置。默认情况下，只有在该频道权限大于0级别的用户可以使用。  
【举例】  
　　/msg chanserv unban #Chat，这将让ChanServ在频道#Chat取消所有对你设置的BAN  
=============================  
● 留言服务(MemoServ)命令  
=============================  
LIST 命令  
———————————————————–  
【语法】  
　　/msg memoserv list \[#频道名\] \[留言序号 | 序号范围 | new\]  
【描述】  
　　用来列出当前你或者指定频道所收到的留言。  
　　参数“new”则表示列出所有未阅读过的留言。  
【举例】  
　　/msg memoserv list 1-2，将列出你当前的第1-2条留言  
　　/msg memoserv list new，将列出你当前尚未阅读过的所有留言  
　　/msg memoserv list #Chat 1，将列出频道#Chat的第一条留言  
SEND 命令  
———————————————————–  
【语法】  
　　/msg memoserv send  
【描述】  
　　用来给一个已注册昵称或者频道发送留言。  
【举例】  
　　/msg memoserv send TigTag Hello, 最近还好吧？，这样就给TigTag发送了个留言，内容是“Hello, 最近还好吧？”  
　　/msg memoserv send #Chat 这是谁的频道？，这样就给频道#Chat发送了个留言，内容是“这是谁的频道？”  
READ 命令  
———————————————————–  
【语法】  
　　/msg memoserv read [#频道名称]  
【描述】  
　　用来阅读当前你或者指定频道所收到的留言。  
　　参数“new”表示阅读最新的一条留言。  
　　参数“new”表示依次阅读所有未阅读过的留言。  
【举例】  
　　/msg memoserv read 2，表示阅读当前你的第二条留言  
　　/msg memoserv read #Chat 2-5，表示阅读频道#Chat的第2-5条留言  
　　/msg memoserv read last，表示阅读当前你收到的最后一条留言  
　　/msg memoserv read new，表示依次阅读当前你尚未阅读过的所有留言  
DEL 命令  
———————————————————–  
【语法】  
　　/msg memoserv del [#频道名称]  
【描述】  
　　用来删除掉当前昵称或者指定频道所接收到的留言。  
　　参数“All”则表示删除所有的留言。  
【举例】  
　　/msg memoserv del 5，可以删除掉你当前的第5条留言  
　　/msg memoserv del all，可以删除掉你已经接收到的所有留言  
　　/msg memoserv del #Chat 3-5，可以删除掉频道#Chat的第3-5条留言  
SET 命令  
———————————————————–  
【语法】  
　　/msg memoserv set  
【描述】  
　　用来设置各种留言选项，这些选项包括：  
　　Notify　　用于改变新留言到来时的通知类型(仅针对昵称的留言)。参数“ON”表示当你登录到你的名字时、当你取消AWAY状态时以及当新留言被发送时，MemoServ都将通知你；参数“LOGON”表示当你登录到你的名字时和当你取消AWAY状态时被通知；参数“NEW”表示当有新留言到来时被通知；参数“OFF”则表示不通知有留言信息。  
　　Limit　　 用于设置你或者是指定频道的最大留言条目数，如果设置成0，则别人将无法给你发送留言。最大留言条目数不能大于系统规定的20条。  
【举例】  
　　/msg memoserv set notify off，将关闭掉自己有新留言时的通告  
　　/msg memoserv set limit #Chat 5，限制频道#Chat所能接收的最大留言条目为5条  
　　P.S: 在很多IRC服务网络上，/msg nickserv、/msg chanserv和/msg memoserv命令都分别可以用/ns、/cs和/ms来代替。