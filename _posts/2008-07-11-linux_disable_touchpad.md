---
author: root
title: Disabling touchpad on plugged in mouse
excerpt:
layout: post
category:
  - Linux
tags: [ ]
post_format: [ ]
---
disable the touchpad at startup if the mouse is already plugged in Add to ~/.xsession if lsusb –verbose 2>&1 | grep –quiet "Mouse"; then synclient TouchPadOff="1" fi