#!/bin/bash
yad --title "Free Office Links" --form --width=325 --height=200 --text="<b>FreeOffice Application Launcher</b>" --image "calligraplan" --image-on-top \
--field="<b>Textmaker</b>":fbtn "/usr/bin/textmaker18free" \
--field="<b>Presentations</b>":fbtn "/usr/bin/presentations18free" \
--field="<b>Planmaker</b>":fbtn "/usr/bin/planmaker18free" \
--button=gtk-cancel:1
