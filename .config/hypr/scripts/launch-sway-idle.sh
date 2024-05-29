#!/bin/sh
sway-audio-idle-inhibit &

swayidle -w timeout 300 'swaylock' \
	timeout 360 'hyprctl dispatch dpms off' \
	resume 'hyprctl dispatch dpms on' \
	timeout 600 'systemctl suspend' &
