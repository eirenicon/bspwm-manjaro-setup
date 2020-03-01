#!/bin/bash

awk -F',' '{print $1 "\t" $2}'  ~/.config/kitty/kitty-help.csv | column -t -s $'\t' | rofi -dmenu -i -no-show-icons -width 480 -location 2
