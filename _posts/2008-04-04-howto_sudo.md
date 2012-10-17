---
author: root
title: sudo用法及配置
excerpt:
layout: post
category:
  - Linux
tags: [ ]
post_format: [ ]
---
sudo  
使用 su 切換身份真的是很簡單啦～不過， su 卻有一個很嚴重的問題， 那就是…..我們必須要知道想要變成的那個人的登入密碼～ 舉例來說，如果我想要變成 root ，那麼就必須要知道 root 的密碼才行， 如果我想要變成 dmtsai 來工作，那麼除非我是 root ，否則就必須要知道 dmtsai 這個使用者的密碼才行～而眾所皆知的，如果多人管理一部主機的話， 大家都知道 root 的密碼，那……挺危險的，不是嗎？！ 

這個時候， sudo 就派的上用場囉～那麼 sudo 是怎樣工作的呢？  
當使用者執行 sudo 時，系統會主動的去尋找 /etc/sudoers 檔案，判斷該使用者是否有執行 sudo 的權限；  
若使用者具有可執行 sudo 的權限後，便讓使用者『輸入使用者自己的密碼』來確認；  
若密碼輸入成功，便開始進行 sudo 後續接的指令；  
不過， root 執行 sudo 時，不需要輸入密碼；  
若欲切換的身份與執行者身份相同，那也不需要輸入密碼。 要注意的是，使用者『輸入的是自己的密碼，而不是欲切換成為他的那個身份的密碼！』 舉例來說，假設 dmtsai 具有執行 sudo 的權限，那麼當他以 sudo 執行 root 的工作時， 他需要輸入的是 dmtsai 自己的密碼，而不是 root 的密碼！嘿嘿！很棒吧！ ^_^ 如此一來，大家可以使用自己的密碼執行 root 的工作，而不必知道 root 的密碼，安全多了。 此外，使用者能夠執行的指令是可以被限制的！ 所以，我們可以設定 dmtsai 僅能進行 shutdown 的工作，或者是其他一些簡單的指令， 嘿嘿！是否很棒啊！ 

不過，由上面的說明當中，您也會瞭解，是否具有 sudo 的執行權限是很重要的， 而 sudo 的執行權限與 /etc/sudoers 這的檔案有關。在預設的情況下，只有 root 才能夠使用 sudo 呢！至於編輯 /etc/sudoers 則需要 visudo 這個指令。好了， 底下我們就來看一看 sudo 的語法先。  
[root@linux ~]# sudo [-u [username|#uid]] command  
參數：  
-u ：後面可以接使用者帳號名稱，或者是 UID。例如 UID 是 500 的身份，可以：  
-u #500 來作為切換到 UID 為 500 的那位使用者。  
範例： 

範例一：一般身份使用者使用 sudo 在 /root 底下建立目錄：  
[dmtsai@linux ~]$ sudo mkdir /root/testing  
We trust you have received the usual lecture from the local System  
Administrator. It usually boils down to these three things: 

#1) Respect the privacy of others.  
#2) Think before you type.  
#3) With great power comes great responsibility. 

Password: <==這裡輸入 dmtsai 自己的密碼  
dmtsai is not in the sudoers file. This incident will be reported.  
# 瞧！因為 dmtsai 不在 /etc/sudoers ，所以他就無法執行 sudo 喔！ 

範例二：假設 dmtsai 已經具有 sudo 的執行權限，如何在 /root 底下建立目錄？  
[dmtsai@linux ~]$ sudo mkdir /root/testing  
Password: <==這裡輸入 dmtsai 自己的密碼 

範例三：如何將 sudo 與 su 搭配使用？  
[dmtsai@linux ~]$ sudo su – 

範例四：dmtsai 想要切換身份成為 vbird 來進行 touch 時？  
[dmtsai@linux ~]$ sudo -u vbird touch /home/vbird/test 

上面我進行了四個範例，不過，要注意的是，若我是以 dmtsai 來進行的， 那麼除了第一次執行 sudo 需要輸入密碼，未來的時間內(在這次登入的狀況中)就不需要再重複輸入密碼了！ 呼呼！真是很人性啊的設計啊～ ^_^ 

上面這四個範例我都是以 dmtsai 這個使用者來進行的，但是，在預設的情況中， 您的使用者應該是不能使用 sudo 的～這是因為我們上面提到的啊，還沒有去設定 /etc/sudoers 嘛！ 所以囉，如果您要測試上面的範例之前，是需要將 /etc/sudoers 動動手腳的。 不過，因為 /etc/sudoers 需要一些比較特別的語法，因此，如果你直接以 vi 去編輯他時， 如果輸入的字句錯誤，可能會造成無法啟用 sudo 的困擾，因此，建議您一定要使用 visudo 去編輯 /etc/sudoers 喔！(註： visudo 必須要使用 root 的身份來執行！)  
[root@linux ~]# visudo  
# sudoers file.  
# This file MUST be edited with the ‘visudo’ command as root.  
# See the sudoers man page for the details on how to write a sudoers file.  
#  
# Host alias specification  
# User alias specification  
# Cmnd alias specification  
# Defaults specification  
# Runas alias specification  
# User privilege specification  
root ALL=(ALL) ALL  
dmtsai ALL=(ALL) ALL <==這裡將 dmtsai 製作成完全可用！ 

# Uncomment to allow people in group wheel to run all commands  
# %wheel ALL=(ALL) ALL  
# Same thing without a password  
# %wheel ALL=(ALL) NOPASSWD: ALL  
# Samples  
# %users ALL=/sbin/mount /cdrom,/sbin/umount /cdrom  
# %users localhost=/sbin/shutdown -h now 

使用 visudo 之後，其實就會出現一個 vi 的畫面啦！他就是以 vi 來開啟 /etc/sudoers ， 不過，當我們儲存離開時， visudo 會額外去檢查 /etc/sudoers 內部的語法， 以避免使用者輸入錯誤的資訊了。我上面只有加入一行，就是讓那個 dmtsai 成為可以隨意使用 sudo 的身份而已。基本上， /etc/sudoers 的結構您可以使用 man sudoers 去查閱， 該說明內容說的很清楚，而且還有一些範例呢！鳥哥在這裡僅作一些簡單的說明就是了。 那一行『 dmtsai ALL=(ALL) ALL 』代表的意義是：  
使用者帳號 登入的主機 = (可以變換的身份) 可以下達的指令因此，我上面這一行的意義是：『 dmtsai 這個使用者，不論來自何方， 他可以變換成任何 Linux 本機上面有的所有帳號，並執行所有的指令』的意思啦！ 假如您的系統裡面，有個 Web 的軟體是以 www 這個使用者來進行編輯的， 您想要讓 vbird2 這個使用者可以用 www 這個帳號進行編輯，那麼就應該寫成：  
vbird2 ALL = (www) ALL如果錯寫成：  
vbird2 ALL = ALL亦即沒有加上身份宣告的話，那麼『預設是僅能進行 root 的身份切換』而已喔！ ^_^ 這可是很重要的一個觀念呢！另外，如果想要以使用者的群組來進行規範的話，那麼在 『使用者帳號』的欄位，前面加上『 % 』時，就代表是群組 (group) 的身份了。 舉例來說，我想要讓系統裡面所有屬於 wheel 這個群組的使用者都能夠進行 sudo 時，可以這樣寫：  
%wheel ALL = (ALL) ALL而如果你還想要讓這個群組內的使用者在使用 sudo 時，不需要輸入密碼， 那麼可以在『可以下達的指令』那個欄位內多加入一個參數，名為『NOPASSWD:』即可，亦即：  
%wheel ALL = (ALL) NOPASSWD: ALL另外，除了單一個人或單一群組之外，我們還可以額外指定一些『帳號別名、主機別名、指令別名』 等等的資料來相互套用喔！真是好棒啊！不過，關於別名的使用上，『必須要使用大寫字元』才行喔！ 好了，我們來做一些練習，讓您可以很清楚的知道如何進行 visudo 的設定吧！ 

例題：我想要建立一個可以幫忙系統管理員變更使用者密碼的群組，名稱為 ADMPW ( 注意，在 sudoers 內，這個別名的名稱一定要是大寫字元才行！)但是這個群組不能修改 root 的密碼喔！且他們執行 sudo 時，不需要密碼驗證。  
答：  
我以 root 的身份使用 visudo ，進入編輯畫面後，去設定成底下的模樣：  
User_Alias ADMPW = vbird, dmtsai, vbird1, vbird3  
ADMPW ALL = NOPASSWD: !/usr/bin/passwd, /usr/bin/passwd [A-Za-z]*, \  
!/usr/bin/passwd root 

上面的意思是說，我的系統上面有四個帳號，分別是 vbird, vbird1, vbird3 與 dmtsai 這四個帳號加入 sudo 內的 ADMPW 群組中，這四個帳號可以使用 sudo 進行『 /usr/bin/passwd * 』密碼的更改動作，但是不能 (在指令前面加入 ! 代表不可) 使用 /usr/bin/passwd 或 /usr/bin/passwd root ，如此一來，就讓該 ADMPW 可以更改使用者的密碼，但是不能變更 root 的密碼囉！ ^_^ 

在 /etc/sudoers 裡頭加入別名有很多的好處，舉例來說，以上面的例子來講， 假設未來我有其他的使用者要加入該密碼管理的群組時，直接將帳號加入 ADMPW 那個群組中就好了，很簡單的使用吧！ ^_^。再看看下一題： 

例題：我的系統中有 DNS 服務，他的啟動指令在 /etc/init.d/named ，如果我想要建立一個 DNSMASTER 的群組來管理他時？如何是好？  
答：  
我以 root 的身份使用 visudo ，進入編輯畫面後，去設定成底下的模樣：  
User_Alias DNSMASTER = vbird, dmtsai  
Cmnd_Alias DNSCMD = /etc/init.d/named, /usr/bin/vim /var/named/*  
DNSMASTER ALL = DNSCMD 

看的懂嗎？嘿嘿！因為 DNS 的設定檔大多在 /var/named 裡面，所以，我也允許相關帳號用 vi 去處理 DNS 的設定檔啦！很簡單對吧！ ^_^ 

好了，我們知道 sudo 可以搭配 su 來進行一堆系統的工作對吧！ 因為 sudo 僅能進行一次指令，很麻煩，如果我能夠將 sudo 與 su 搭配在一起，不就很棒了嗎？ 這個時候，我可以利用上面已經建立好的 ADMPW 群組來新增這一行：  
ADMPW ALL = /bin/su如此一來，在 ADMPW 內的使用者，就可以利用『 sudo su – 』來切換身份成為 root 囉～ 真是棒得不得了啊！ ^_^ 

FR:http://hi.baidu.com/hockbase