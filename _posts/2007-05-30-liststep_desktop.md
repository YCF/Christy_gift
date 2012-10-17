---
author: root
title: 'litestep desktop icons '
excerpt:
layout: post
category:
  - Life
tags: [ ]
post_format: [ ]
---
This works as an absolute bare minimum. This is for specific theme use. In the theme.rc (theme’s root folder) add in:  
Include “$ConfigDir$xdesktop.rc”  
Include “$ConfigDir$desktop.rc”  
*NetLoadModule xdesktop-1.7.6  
In the theme’s Config folder, create these two files:  
xdesktop.rc  
desktop.rc  
Open xdesktop.rc in a text editor, and add in:  
xDesktopAutoCreate  
xDesktopConfigFile “$ConfigDir$desktop.rc”  
Close/save it. Recycle Litestep.