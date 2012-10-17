---
author: root
title: 根据时段更换CSS
excerpt:
layout: post
category:
  - CSS
tags: [ ]
post_format: [ ]
---
网页的内容和外观是可分离的，多个CSS能给浏览者带来更多的惊喜！根据时段自动切换更加人性化。

要实现这个目的一般有两个途径：  
1.在网页的程序里写上。  
如php代码：

<u>PHP语言</u>: [代码发芽网][1]

 <link rel="stylesheet" type=”text/css” href=”<?php $hour = date("H"); if ($hour < 12) echo "am.css"; else echo "pm.css"; ?>" />

其他的网上都有不少，我觉得这些代码只能给有自己程序的用户使用，对于使用BSP的朋友，基本用不了！

所以我喜欢JS的实现方法。虽然有部分浏览器为能对js提供支持，不过这还是少数。

附上代码：（来源:["www.katgal.com":http://www.katgal.com/2007/03/time-sensitive-css-switcher-change.html])

<u>JavaScript语言</u>: [代码发芽网][1]

 <SCRIPT LANGUAGE="JavaScript">  
 <!– Begin  
 function getCSS()  
 {  
 datetoday = new Date();  
 timenow=datetoday.getTime();  
 datetoday.setTime(timenow);  
 thehour = datetoday.getHours();  
   
 if (thehour > 20)  
 display = "tree_twilight.css";  
 else if (thehour > 17)  
 display = "tree_sunset.css";  
 else if (thehour > 14)  
 display = "tree_afternoon.css";  
 else if (thehour > 11)  
 display = "tree_noon.css";  
 else if (thehour > 7)  
 display = "tree_morning.css";  
 else if (thehour > 4)  
 display = "tree_sunrise.css";  
 else if (thehour > 1)  
 display = "tree_twilight.css";  
 else  
 display = "tree_sunset.css";  
   
 var css = '<';  css+='link rel="stylesheet" href=' + display + ' \/';  css+='>';  
   
 document.write(css);  
 // End –>  
 }  
 </script>  
 <script language="javascript">getCSS();</script>

下面对为启用或不支持js的浏览器指定一个默认的css.

<u>JavaScript语言</u>: [临时自用代码@代码发芽网][1]

 <noscript>  
 <link rel="stylesheet" href="tree_sunset.css" type="text/css">  
 </noscript>

 [1]: http://www.fayaa.com/code/view//