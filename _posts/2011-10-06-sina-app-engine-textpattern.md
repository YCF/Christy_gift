---
author: root
title: 在Sina App Engine部署Textpattern
excerpt:
layout: post
category:
  - Site
tags: [ ]
post_format: [ ]
---
![Textpattern][1]

　　使用收费主机觉得对于自己来说没必要，使用免费主机就是意味着有一天突然失去所有。。。

　　现在云计算炒得火热，SAE在国内是属于走在前列的了，发布正常内容绝对不需要担心什么连接重置的局域网问题。云数据，安全放心，还有什么能和你的宝贵数据相提并论呢？

![Sina App Engine][2]

　　Textpattern不介绍了，你懂的。不明真相的群众请绕路。

　　Here we go!

1.下载最新版本的Txp.

2.修改 **/textpattern/setup/index.php** 以适应SAE的数据库。

　　在大约135行，找到以下内容：

>   
>   
> tr(  
>   
>   
> fLabelCell(gTxt(‘mysql_login’)).fInputCell(‘duser’,”,1).  
>   
>   
> fLabelCell(gTxt(‘mysql_password’)).fInputCell(‘dpass’,”,2)  
>   
>   
> ),  
>   
>   
> tr(  
>   
>   
> fLabelCell(gTxt(‘mysql_server’)).fInputCell(‘dhost’,'localhost’,3).  
>   
>   
> fLabelCell(gTxt(‘mysql_database’)).fInputCell(‘ddb’,”,4)  
>   
>   
> ),

　　替换为以下内容：

> tr(  
>   
>   
> fLabelCell(gTxt(‘mysql\_login’)).fInputCell(‘duser’,SAE\_MYSQL_USER,1).  
>   
>   
> fLabelCell(gTxt(‘mysql\_password’)).fInputCell(‘dpass’,SAE\_MYSQL_PASS,2)  
>   
>   
> ),  
>   
>   
> tr(  
>   
>   
> fLabelCell(gTxt(‘mysql\_server’)).fInputCell(‘dhost’,SAE\_MYSQL\_HOST\_M.’:’.SAE\_MYSQL\_PORT,3).  
>   
>   
> fLabelCell(gTxt(‘mysql\_database’)).fInputCell(‘ddb’,SAE\_MYSQL_DB,4)  
>   
>   
> ),

3.上传安装，在配置数据库一步，由于在第2步已经插入了SAE数据库的一些常量，所以会看到输入框里已给出的数据库连接信息，这是SAE提供的正确信息，无需修改，下一步即可。

4.安装接近尾声时，会给出config.php的内容，通过SAE页面的在线管理代码贴上即可，当然本地修改好后在svn提交一下也可以，随意！

5.Done，Enjoy!

BTW:我目前修改的是Textpattern 4.4.1

 [1]: http://upload.wikimedia.org/wikipedia/en/3/37/Textpattern.png
 [2]: http://sae.sina.com.cn/static/image/skin/logo.png