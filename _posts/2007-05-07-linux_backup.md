---
author: root
title: linux备份
excerpt:
layout: post
category:
  - Linux
tags: [ ]
post_format: [ ]
---
sudo tar jpcvf backup.tar.bz2 –exclude /proc –exclude /sys –exclude /dev –exclude /lib/splash/cache –exclude /usr/portage –exclude /var/tmp –exclude /usr/src –exclude /mnt/ –exclude /var/run –exclude /var/spool –exclude /media /