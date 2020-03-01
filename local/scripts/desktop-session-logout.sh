#!/bin/bash
#exit  antix bash backend
. /usr/local/lib/desktop-session/desktop-session-file-locations.sh

help() {
    echo "Usage:"
    echo "-l | --logout     Logout of the current session";
    echo "-L | --lock       Lock the current session";
    echo "-h | --hibernate  Set the machine into hibernate";
    echo "-s | --shutdown   Shutdown your machine";
    echo "-S | --suspend    Set the machine into suspend";
    echo "-r | --reboot     Reboot your machine";
    echo "-R | --restart    Restart the session";
    }

case $1 in
-l|--logout)
    $desktop_session_logout
    ;;
-L|--lock)
    xlock
    ;;
h|--help)
    help
    ;;
#-H|--hibernate)
#    sudo pm-hibernate
#    ;;
-s|--shutdown)
    if [ -e /etc/live/config/save-persist -o -e /live/config/persist-save.conf ] && which persist-config &> /dev/null; then
        sudo persist-config --shutdown --command poweroff
    else
        sync
        sudo chvt 1
        sudo poweroff
    fi
    ;;
-S|--suspend)
    sudo pm-suspend
    ;;
-r|--reboot)
    if [ -e /etc/live/config/save-persist -o -e /live/config/persist-save.conf ] && which persist-config &> /dev/null; then
        sudo persist-config --shutdown --command reboot
    else
        sync
        sudo chvt 1
        sudo reboot
    fi
    ;;
-R|--Restart)
    $desktop_session_restart
    ;;
*)
    if [ "$DISPLAY" ]; then
        $desktop_session_exit_gui &
        exit
    else
        echo "$1 Not an option"
        help;
    fi
    ;;
esac
