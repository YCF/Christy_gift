---
author: root
title: Protel 99元件封装列表
excerpt:
layout: post
category:
  - Life
tags: [ ]
post_format: [ ]
---
Protel 99元件封装列表 

元件　　　　　　 代号　　　　　　　 封装　　　　　　　　　 备注  
电阻　　　　　　　 R　　　　　　　　AXIAL0.3  
电阻　　　　　　　 R　　　　　　　　AXIAL0.4  
电阻　　　　　　　 R　　　　　　　　AXIAL0.5  
电阻　　　　　　　 R　　　　　　　　AXIAL0.6  
电阻　　　　　　　 R　　　　　　　　AXIAL0.7  
电阻　　　　　　　 R　　　　　　　　AXIAL0.8  
电阻　　　　　　　 R　　　　　　　　AXIAL0.9  
电阻　　　　　　　 R　　　　　　　　AXIAL1.0  
电容　　　　　　　 C　　　　　　　　RAD0.1　　　　　　　 方型电容  
电容　　　　　　　 C　　　　　　　　RAD0.2　　　　　　　 方型电容  
电容　　　　　　　 C　　　　　　　　RAD0.3　　　　　　　 方型电容  
电容　　　　　　　 C　　　　　　　　RAD0.4　　　　　　　 方型电容  
电容　　　　　　　 C　　　　　　　　RB.2/.4　　　　　　　电解电容  
电容　　　　　　　 C　　　　　　　　RB.3/.6　　　　　　　电解电容  
电容　　　　　　　 C　　　　　　　　RB.4/.8　　　　　　　电解电容  
电容　　　　　　　 C　　　　　　　　RB.5/1.0　　　　　　 电解电容  
保险丝　　　　　　FUSE　　　　　　　 FUSE  
二极管　　　　　　D　　　　　　　　 DIODE0.4　　　　　　　IN4148  
二极管　　　　　　D　　　　　　　　 DIODE0.7　　　　　　　IN5408  
三极管　　　　　　 Q　　　　　　　　T0-126  
三极管　　　　　　Q　　　　　　　　　TO-3　　　　　　　　 3DD15  
三极管　　　　　　Q　　　　　　　　 T0-66　　　　　　　　 3DD6  
三极管　　　　　　　Q　　　　　　　 TO-220　　　　　　　　 TIP42  
电位器　　　　　　VR　　　　　　　　　　 VR1  
电位器 　　　VR 　　　　VR2  
电位器 　　　VR 　　　　VR3  
电位器 　　　VR 　　　　 VR4  
电位器 　　　VR 　　　　VR5  
元件 代号 封装 备注  
插座 CON2 SIP2 2脚  
插座 CON3 SIP3 3  
插座 CON4 SIP4 4  
插座 CON5 SIP5 5  
插座 CON6 SIP6 6  
插座 CON16 SIP16 16  
插座 CON20 SIP20 20  
整流桥堆D D-37R 1A直角封装  
整流桥堆D D-38 3A四脚封装  
整流桥堆D D-44 3A直线封装  
整流桥堆D D-46 10A四脚封装  
集成电路U DIP8(S) 贴片式封装  
集成电路U DIP16(S) 贴片式封装  
集成电路U DIP8(S) 贴片式封装  
集成电路U DIP20(D) 贴片式封装  
集成电路U DIP4 双列直插式  
集成电路U DIP6 双列直插式  
集成电路U DIP8 双列直插式  
集成电路U DIP16 双列直插式  
集成电路U DIP20 双列直插式  
集成电路U ZIP-15H TDA7294  
集成电路U ZIP-11H 

1. 标准电阻：RES1、RES2；封装：AXIAL-0.3到AXIAL-1.0 

两端口可变电阻：RES3、RES4；封装：AXIAL-0.3到AXIAL-1.0 

三端口可变电阻：RESISTOR TAPPED，POT1，POT2；封装：VR1-VR5 

2.电容：CAP（无极性电容）、ELECTRO1或ELECTRO2（极性电容）、可变电容CAPVAR 

封装：无极性电容为RAD-0.1到RAD-0.4，有极性电容为RB.2/.4到RB.5/1.0. 

3.二极管：DIODE（普通二极管）、DIODE SCHOTTKY（肖特基二极管）、DUIDE TUNNEL（隧道二 极管）DIODE VARCTOR（变容二极管）ZENER1~3（稳压二极管） 

封装：DIODE0.4和DIODE 0.7;（上面已经说了，注意做PCB时别忘了将封装DIODE的端口改为A、K） 

4.三极管：NPN，NPN1和PNP，PNP1；引脚封装：TO18、TO92A（普 通三极管）TO220H（大功率三极管）TO3（大功率达林顿管） 

以上的封装为三角形结构。T0-226为直线形，我们常用的9013、9014管脚排列是直线型的，所以一般三极管都采用TO-126啦！ 

5、效应管：JFETN（N沟道结型场效应管），JFETP（P沟道结型场效应管）MOSFETN（N沟道增强型管）MOSFETP（P沟道增强型管） 

引脚封装形式与三极管同。 

6、电感：INDUCTOR、INDUCTOR1、INDUCTOR2（普通电感），INDUCTOR VAR、INDUCTOR3、INDUCTOR4（可变电感） 

8.整流桥原理图中常用的名称为BRIDGE1和BRIDGE2，引脚封装形式为D系列，如D-44，D-37，D-46等。 

9.单排多针插座原理图中常用的名称为CON系列，从CON1到CON60，引脚封装形式为SIP系列，从SIP-2到SIP-20。 

10.双列直插元件原理图中常用的名称为根据功能的不同而不同，引脚封装形式DIP系列， 

不如40管脚的单片机封装为DIP40。 

11.串并口类原理图中常用的名称为DB系列，引脚封装形式为DB和MD系列。 

12、晶体振荡器：CRYSTAL；封装：XTAL1 

13、发光二极管：LED；封装可以才用电容的封装。（RAD0.1-0.4） 

14、发光数码管：DPY；至于封装嘛，建议自己做！ 

15、拨动开关：SW DIP；封装就需要自己量一下管脚距离来做！ 

16、按键开关：SW-PB：封装同上，也需要自己做。 

17、变压器：TRANS1——TRANS5； 

注：原理图常用元器件都在 

protel DOS schematic Libraries.ddb里 

此外还有protel DOS schematic 4000 CMOS (4000序列元件) 

protel DOS schematic Analog digital (A/D,D/A转换元件) 

protel DOS schematic Comparator （比较器，如LM139之类） 

protel DOS schematic intel (Intel 的处理器和接口芯片之类) 

protel DOS schematic Linear （一些线性器件如555等） 

protel DOS schematic TTL（74序列的元件） 

PCB元件常用库：  
Advpcb.ddb  
General IC.ddb  
Miscellaneous.ddb