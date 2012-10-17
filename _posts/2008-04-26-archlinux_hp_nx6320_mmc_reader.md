---
author: root
title: |
  >
    在Archlinux中启用Hp
    nx6320的读卡器
excerpt:
layout: post
category:
  - Linux
tags: [ ]
post_format: [ ]
---
先摘抄一下，过阵子再编辑 

先加载模块  
#modprobe mmc_block  
#modprobe tifm_sd  
#modprobe tifm_7xx1  
#modprobe tifm_core 

下面的来自http://kw-gift.com/ 

第一步:系统是否认到读卡器  
bash-3.2$ dmesg |grep sdhci  
sdhci: Secure Digital Host Controller Interface driver, 0.12  
sdhci: Copyright(c) Pierre Ossman  
sdhci: SDHCI controller found at 0000:03:03.2 \[1217:7120\] (rev 0)  
sdhci:slot0: Unknown controller version (16). You may experience problems.  
sdhci:slot0: Controller reports > 25 MHz base clock, but no high speed support.  
bash-3.2$ dmesg |grep mmc  
sda:sr0: scsi3-mmc drive: 24x/24x writer cd/rw xa/form2 cdda tray  
mmc0: SDHCI at 0xb0204000 irq 16 PIO  
mmcblk0: mmc0:0001 000000 1003520KiB  
mmcblk0: unknown partition table  
从上面信息中看到，系统已认到读卡器，且存在一个硬件设配mmcblk0. 

第二步：查看是否已加载读卡器驱动  
bash-3.2$ lsmod |grep mmc  
mmc_block 6920 0  
mmc\_core 21380 2 mmc\_block,sdhci  
以上信息显示你的读卡器驱动已正确加载。 

第三步：建立一个加载点。  
sudo mkdir /mnt/mmc  
第四步：在/etc/fstab中写出加载信息，以便自动加载  
/dev/mmcblk0 /mnt/mmc vfat rw,user,auto,exec,sync,utf8 0 0  
第五步：重启后，插入mmc卡后，到/mnt/mmc目录下看看，都有些什么？