#!/bin/bash

val=`zenity --list \
--name=zenity-system \
--title="System" \
--text="" \
--width="150" \
--height="200" \
--column="System shutdown" \
"Shut Down" \
"Reboot"`

if [ "$val" = "Shut Down" ]; then
	dbus-send --system --print-reply --dest="org.freedesktop.ConsoleKit" /org/freedesktop/ConsoleKit/Manager org.freedesktop.ConsoleKit.Manager.Stop
elif [ "$val" = "Reboot" ]; then
	dbus-send --system --print-reply --dest="org.freedesktop.ConsoleKit" /org/freedesktop/ConsoleKit/Manager org.freedesktop.ConsoleKit.Manager.Restart
else
	exit
fi	
