#!/bin/bash

# Current repeat status
current=$(gsettings get org.gnome.desktop.peripherals.keyboard delay)

if [ "$current" = "uint32 500" ]; then
    # Switch to preferred
    gsettings set org.gnome.desktop.peripherals.keyboard repeat true
    gsettings set org.gnome.desktop.peripherals.keyboard delay 189
    gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 13
    notify-send "Key Repeat Enabled" "Preferred: delay=189, interval=13"
else
    # Switch to defaults
    gsettings set org.gnome.desktop.peripherals.keyboard repeat true
    gsettings set org.gnome.desktop.peripherals.keyboard delay 500
    gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 30
    notify-send "Key Repeat Disabled" "Defaults applied: delay=500, interval=30"
fi
