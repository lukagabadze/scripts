#!/bin/bash

# Current repeat status
current=$(razer-cli --dpi print)

if [ "$current" = "1600" ]; then
		razer-cli --dpi 6400
    notify-send "DPI set to 6400"
else
		razer-cli --dpi 1600
    notify-send "DPI set to 1600"
fi
