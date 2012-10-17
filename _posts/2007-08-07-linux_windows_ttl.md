---
author: root
title: 修改ttl 欺骗黑客！呵呵！
excerpt:
layout: post
category:
  - Linux
tags: [ ]
post_format: [ ]
---
Linux系统的TTL值为64或255  
UNIX主机的TTL值为255  
Windows NT/2000/XP系统的TTL值为128  
Windows 98系统的TTL值为32  
我家里的电脑估计一直是被认为是98吧！呵呵！  
具体是什么，不告诉你！  
今天有linux的ttl修改方法才一起贴出来！  
linux修改TTL值  
方法1(重启后有效)：  
#sysctl -w net.ipv4.ip\_default\_ttl=N  
(N=0~255),若N>255,则ttl=0  
方法2(重启后无效)：  
#echo N(N为0～255) > /proc/sys/net/ipv4/ip\_default\_ttl  
windows修改方法  
regedit  
“HKEY\_LOCAL\_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters”，找到“DefaultTTL”，该值为十进制的  
重启后生效