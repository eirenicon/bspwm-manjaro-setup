#!/bin/bash
yad --title "Desktop Help" --form --width=325 --height=400 --text="<b>Choose Desktop help to launch</b>" --image "dialog-question" --image-on-top \
--field="<b>bspwm</b> Keybindings":fbtn "./.config/sxhkd/show_help.sh" \
--field="<b>Kitty Terminal</b>  Keys":fbtn "./.config/sxhkd/kitty_help.sh" \
--field="<b>Ranger File Manager</b>  Keys":fbtn "./.config/sxhkd/ranger_help.sh" \
--field="<b>UZBL Browser</b>  Keys":fbtn "./.config/sxhkd/uzbl_help.sh" \
--field="<b>Zathura</b> pdf-viewer Keys":fbtn "./.config/sxhkd/zathura_help.sh" \
--field="<b>Internet-based Help Sites</b>":fbtn "./.config/sxhkd/web_open.sh" \
--button=gtk-cancel:1
