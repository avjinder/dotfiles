#!/usr/bin/bash

function get_brightness {
	xbacklight -get | cut -d "." -f 1
}


function send_notification() {
	brightness=$(get_brightness)
	dunstify -a "change_brightness" -u low -r "9912" -h int:value:"$brightness" -i "brightness" "$brightness%" -t 2000
}

case $1 in
	up)
		xbacklight -inc 5
		send_notification $1
		;;
	down)
		xbacklight -dec 5
		send_notification $1
		;;
	*)
		cat << EOM
Usage:
	up    increase brightness by 5%
	down  decrease brightness by 5%
EOM
		;;

esac
