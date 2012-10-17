---
author: root
title: |
  >
    no final newline at the end of
    /etc/fstab
excerpt:
layout: post
category:
  - Linux
tags: [ ]
post_format: [ ]
---
显示过程中显示：no final newline at the end of /etc/fstab  
或在挂载东西时出现以上内容。 

原因是fstab文件差一个换行符,系统认为文件没有结束.不影响mount操作 

解决：在fstab文件后面，来个’回车’，给他加个换行就好了.