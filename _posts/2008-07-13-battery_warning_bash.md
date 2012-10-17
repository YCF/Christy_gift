---
author: root
title: battery_warning.sh
excerpt:
layout: post
category:
  - Linux
tags: [ ]
post_format: [ ]
---
#!/bin/bash  
interval=120 #in seconds

while true  
do  
# battery_level=\`acpi -b | sed ‘s/.*[dg], //g;s/\%,.*//g’\`  
battery_max=\`cat /proc/acpi/battery/BAT1/info | head -3 | tail -1 | awk ‘{print $4}’\`  
battery_current=\`cat /proc/acpi/battery/BAT1/state | head -5 | tail -1 | awk ‘{print $3}’\`  
battery\_level=”\`echo “100 * $battery\_current / $battery_max” | bc\`”  
ac\_state=\`cat /proc/acpi/ac\_adapter/ADP1/state | grep -o off\`  
if [ $battery_level -lt 10 ]; then  
[ "$ac\_state" == "off" ] && notify-send -u critical -i /home/filip/.icons/CrashBit/48×48/devices/battery.png -t 15000 “Battery Level is low” “Only $battery\_level% of the charge remains.”  
fi  
sleep $interval  
done