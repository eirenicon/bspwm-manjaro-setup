#!/usr/bin/env sh

# More info : https://github.com/jaagr/polybar/wiki

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

desktop=$(echo $DESKTOP_SESSION)
count=$(xrandr --query | grep " connected" | cut -d" " -f1 | wc -l)

case $desktop in

    bspwm)
        # left-side polybar
    if type "xrandr" > /dev/null; then
      for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
        MONITOR=$m polybar --reload leftbar-bspwm -c ~/.config/polybar/config &
      done
    else
    polybar --reload leftbar-bspwm -c ~/.config/polybar/config &
    fi
    
    # middle polybar    
    #    if type "xrandr" > /dev/null; then
    #  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    #    MONITOR=$m polybar --reload mainbar-bspwm -c ~/.config/polybar/config &
    #  done
    #else
    #polybar --reload mainbar-bspwm -c ~/.config/polybar/config &
    #fi
    
    # right-side polybar
     if type "xrandr" > /dev/null; then
       for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
         MONITOR=$m polybar --reload rightbar-bspwm -c ~/.config/polybar/config &
       done
     else
     polybar --reload rightbar-bspwm  -c ~/.config/polybar/config &
     fi
    
   # bottom polybar
   #  if type "xrandr" > /dev/null; then
   #    for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
   #      MONITOR=$m polybar --reload mainbar-bspwm-extra -c ~/.config/polybar/config &
   #    done
   #  else
   #  polybar --reload mainbar-bspwm-extra -c ~/.config/polybar/config &
   #  fi
    ;;

    herbstluftwm)
    if type "xrandr" > /dev/null; then
      for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
        MONITOR=$m polybar --reload mainbar-herbstluftwm -c ~/.config/polybar/config &
      done
    else
    polybar --reload mainbar-herbstluftwm -c ~/.config/polybar/config &
    fi
    # second polybar at bottom
    # if type "xrandr" > /dev/null; then
    #   for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    #     MONITOR=$m polybar --reload mainbar-herbstluftwm-extra -c ~/.config/polybar/config &
    #   done
    # else
    # polybar --reload mainbar-herbstluftwm-extra -c ~/.config/polybar/config &
    # fi
    ;;
    
     i3)
        # left-side polybar
    if type "xrandr" > /dev/null; then
      for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
        MONITOR=$m polybar --reload leftbar-i3 -c ~/.config/polybar/config &
      done
    else
    polybar --reload leftbar-i3 -c ~/.config/polybar/config &
    fi
    
    # middle polybar    
    #    if type "xrandr" > /dev/null; then
    #  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    #    MONITOR=$m polybar --reload mainbar-i3 -c ~/.config/polybar/config &
    #  done
    #else
    #polybar --reload mainbar-i3 -c ~/.config/polybar/config &
    #fi
    
    # right-side polybar
     if type "xrandr" > /dev/null; then
       for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
         MONITOR=$m polybar --reload rightbar-i3 -c ~/.config/polybar/config &
       done
     else
     polybar --reload rightbar-i3  -c ~/.config/polybar/config &
     fi
     ;; 
     
        openbox)
        # left-side polybar
    if type "xrandr" > /dev/null; then
      for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
        MONITOR=$m polybar --reload leftbar-openbox -c ~/.config/polybar/config &
      done
    else
    polybar --reload leftbar-openbox -c ~/.config/polybar/config &
    fi
    
    # middle polybar    
    #    if type "xrandr" > /dev/null; then
    #  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    #    MONITOR=$m polybar --reload mainbar-openbox -c ~/.config/polybar/config &
    #  done
    #else
    #polybar --reload mainbar-openbox -c ~/.config/polybar/config &
    #fi
    
    # right-side polybar
     if type "xrandr" > /dev/null; then
       for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
         MONITOR=$m polybar --reload rightbar-openbox -c ~/.config/polybar/config &
       done
     else
     polybar --reload rightbar-openbox  -c ~/.config/polybar/config &
     fi
     ;; 

esac
