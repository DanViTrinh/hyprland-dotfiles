#!/bin/bash

timeoutTimeSeconds=60

yad --center --title="Shutdown" --text="Are you sure you want to shut down?" \
	--button="Yes:0" --button="No:1" --timeout=$timeoutTimeSeconds \
	--timeout-indicator=bottom

exitCode=$?

okCode=0
timeoutCode=70

if [ $exitCode -eq $okCode ] || [ $exitCode -eq $timeoutCode ]; then
	notify-send "Powering off"
	systemctl poweroff
fi
