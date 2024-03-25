#!/bin/sh
swayidle -w timeout 300 'swaylock -f' \
	timeout 600 'hyprctl dispatch dpms off' \
	resume 'hyprctl dispatch dpms on' \
	timeout 1800 'systemctl suspend' \
	before-sleep 'swaylock -f' &

sway-audio-idle-inhibit &
