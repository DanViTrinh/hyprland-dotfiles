#!/bin/sh
vpnFileName="ntnu_vpn"
vpnServer="vpn.ntnu.no"
tmpDir="/tmp/vpn_pids"

# create vpn_pids directory to avoid sticky bit issue
mkdir -p -- $tmpDir

pidFile=$(ls -- $tmpDir | grep -m 1 -- "$vpnFileName.*")

# check if vpn pid file exists
if [ -z "$pidFile" ]; then
	echo "Starting new connection"
	vpnPidFile=$(mktemp --tmpdir="$tmpDir" -- "$vpnFileName.XXX")
	openconnect-sso --server vpn.ntnu.no -- -b --pid-file=$vpnPidFile
else
	echo "Killing previous connection"
	pidFileLocation="$tmpDir/$pidFile"
	pid=$(cat "$pidFileLocation")
	sudo kill -- "$pid"
	rm -- $pidFileLocation
	echo "Pid: $pid"
fi
