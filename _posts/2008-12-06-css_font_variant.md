---
author: root
title: CSS font-variant 属性
excerpt:
layout: post
category:
  - CSS
tags: [ ]
post_format: [ ]
---
今天闲逛了下Wordpress Theme,发现["Whitepress":http://wp-themes.com/whitepress/]主题的#footer的字体样式看起来很好看。  
本来以为是使用了CSS :first-letter 伪元素  
不过效果并不是那样。  
因为first-letter，如其名，就只是第一个字母，不过是段落的第一个字母。  
虽然first-letter这个伪元素,也是比较有用的，当看到别人blog文章开头的第一个字特别加大加粗或变色什么的，他们就是使用了这个first-letter伪元素了。  
这个不多说了，["这里是CSS :first-letter 伪元素的说明":http://www.w3school.com.cn/css/pr\_pseudo\_first-letter.asp]。

言归正传，我看到的效果是：  
所有的小写字母被转换为大写，但是原来使用大写的字母与原来是小写的文本相比，字体尺寸更大一些。在单词中应该使用小写而写出大写的样式，只在以前高中的一个外教那里见过，以前不怎么在意，当时就觉得有点意思而已。想不到CSS还专门有定义的，W3C太强大了，估计这种样式在国外比较普遍吧！  
下面看看效果吧:  
正常：

Textpattern is a flexible, elegant and easy-to-use content management system.Text, Textile and XHTML

效果：(请特别注意行首和红色部分)

Textpattern is a flexible, elegant and easy-to-use content management system.Text, Textile and XHTML

[\*font-variant\*]  
属性  
|值| 描述|  
|normal | 默认。浏览器会显示一个标准的字体。|  
|small-caps | 浏览器会显示小型大写字母的字体。|

["W3C的说明":http://www.w3school.com.cn/css/pr\_font\_font-variant.asp]