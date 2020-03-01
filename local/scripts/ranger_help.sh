#!/bin/bash

# rofi output
awk -F',' '{print $1 "\t" $2}'  ~/.config/ranger/ranger_help.csv | column -t -s $'\t' | rofi -dmenu -i -no-show-icons -width 700 -location 4

# terminal output (not working in yad)
#cat > urxvt | awk -F',' '{print $1 "\t" $2}'  ~/.config/ranger/ranger_help.csv | column -t -s $'\t' | less

#select one of the above, comment the other option 'out'
