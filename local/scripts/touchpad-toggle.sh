#!/bin/bash
#Touchpad on/off toggle script with notification.
#by ManyRoads http://eirenicon.org

if synclient -l | egrep "TouchpadOff.*= *0" ; then 
    synclient TouchpadOff=1
    DISPLAY=:0 notify-send \
               --urgency=normal \
               --icon=/usr/share/icons/HighContrast/256x256/status/touchpad-disabled.png \
               "Disabled Touchpad"
else 
    synclient TouchpadOff=0
    DISPLAY=:0 notify-send \
               --urgency=normal \
               --icon=/usr/share/icons/HighContrast/256x256/devices/input-touchpad.png \
               "Enabled Touchpad";
fi
exit 0; 
