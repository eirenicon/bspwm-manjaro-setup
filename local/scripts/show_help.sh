#!/bin/bash

awk '/^[a-z]/ && last {print $0,"\t",last} {last=""} /^#/{last=$0}' ~/.config/sxhkd/sxhkdrc | column -t -s $'\t'  | rofi -dmenu -i -no-show-icons -width 1000 -location 4

#cat  ~/.config/sxhkd/sxhkdrc | awk '/^[a-z]/ && last {print $0,"\t",last} {last=""} /^#/{last=$0}' | column -t -s $'\t' | rofi -dmenu -i -no-show-icons -width 1000
