#!/bin/sh
swayidle -w timeout 300 'swaylock' \
	timeout 600 'hyprctl dispatch dpms off' \
	resume 'hyprctl dispatch dpms on' \
	timeout 900 'systemctl suspend' \
	before-sleep 'swaylock' &

sway-audio-idle-inhibit &
