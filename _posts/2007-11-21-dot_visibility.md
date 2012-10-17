---
author: root
title: visibility
excerpt:
layout: post
category:
  - Linux
tags: [ ]
post_format: [ ]
---
# a sample config file for visibility.  
# this file goes in ~/.config/visibility/config  
# it can be used to set a theme and override specific options.  
# uncomment this option to use the theme ‘magicaltheme’  
# themes are stored in ~/.themes/theme_name/visibility/theme  
# theme syntax is identical to the syntax of this config file.  
# (yes, a theme could ‘inherit’ from another theme by specifying a theme!)  
#theme magicaltheme  
orientation top_right # set this to the corner of the desktop that you  
# would like visibility to be placed. valid options:  
# top\_left, top\_right, bottom\_left, bottom\_right  
gap_x 2 # the amount of space to leave between the pager and  
# the side of the desktop.  
gap_y 2 # the amount of space to leave between the pager and  
# the top or bottom of the desktop.  
image_size 16 # the pixel size of an icon; icons are square.  
spacing 5 # the amount of space to leave between icons as well  
# as between the edge of the window and the icons.  
border_width 1 # the width of the border around the window. can be  
# set to 0 if your window manager (like openbox!)  
# can provide its own borders for borderless  
# windows.  
desktop_separation 20 # the amount of space to leave between desktops.  
show\_desktop\_names true # whether or not to show desktop names. these names  
# are specified by your window manager. valid  
# options are ‘true’ and ‘false’.  
single\_desktop\_mode false # whether or not to show only windows from the  
# current desktop.  
#bg_colour 4c4c4c # the background colour  
bg_colour 000000  
border_colour FFFFFF # the border colour  
active\_text\_colour ffffff # the colour of the name of the active desktop.  
inactive\_text\_colour 888888 # the colour of the name an inactive desktop.  
font nu # the name of the font to use. this is an xft name,  
# so one could use ‘verdana:pixelsize=10′ or  
# ‘verdana-10′.  
inactive\_bg\_colour 000000 # the background colour of inactive desktops.  
active\_bg\_colour 000000 # the background colour of active desktops.  
# if you hate this setting, set it to the same as  
# bg\_colour and inactive\_bg_colour, and you will  
# probably be a happy camper.  
set\_partial\_strut false # whether or not to reserve space on the desktop  
# edge. this is useful if you do not want windows  
# to maximize over visibility.  
set\_window\_type true # if true, visibility sets itself to be of ‘dock’  
# type, which is meant for panels. this is useful if  
# you want it to be ‘always on top’, and other  
# panel-like things.  
tooltip_padding 3 # the amount of padding to have inside tooltips.  
tooltip_time 0.5 # the number of seconds before a tooltip shows up.  
tooltip\_bg\_colour 000000 # the tooltip background colour.  
tooltip\_border\_colour ffffff# the tooltip border colour.  
tooltip\_text\_colour ffffff # the colour of text in tooltips  
tooltip_font nu # the font to use in tooltips  
text_spacing 6 # the amount of spacing to leave between the  
# desktop name and first icon.  
active_tint 000000 # the colour to tint the active window with  
active\_tint\_amount 0 # the amount to tint the active window (0..1)  
inactive_tint ffffff # the colour to tint inactive windows with  
inactive\_tint\_amount 0.3 # the amount to tint active windows (0..1)  
iconified_tint 0 # the colour to tint iconified (and ‘hidden’)  
# windows with  
iconified\_tint\_amount 0.55 # the amount to tint iconified windows (0..1)