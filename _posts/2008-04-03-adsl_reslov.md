---
author: root
title: |
  >
    root用户可以上网，普通用户不可以
excerpt:
layout: post
category:
  - Linux
tags: [ ]
post_format: [ ]
---
在root用户时，可以ping通网站，而且可以正常上网！  
而普通用户不行！  
普通用户可以ping通ip地址，域名不行！ 

可查看/etc/resolv.conf文件的权限，确认普通用户有权限读取！ 

该现象在chmod 644 /etc/resolv.conf后解决！ 

有点佩服自己的思考能力