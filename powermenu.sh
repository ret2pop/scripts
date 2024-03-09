#/usr/bin/env bash
# author: Andrei S
response=$(printf "Poweroff\nReboot\nSuspend" | wofi --show dmenu --prompt "Power Command")

if [ $response = "Poweroff" ]; then
    systemctl poweroff
elif [ $response = "Reboot" ]; then
    systemctl reboot
elif [ $response = "Suspend" ]; then
    systemctl suspend
fi
