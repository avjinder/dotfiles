#!/usr/bin/bash

NOTIFY_ID=9991

# sends a notification. Expects a string, either "up" or "down"
function send_notification() {
	volume="$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}' | sed 's/[^0-9]*//g')"
	dunstify -a "change_volume" -u low -r $NOTIFY_ID -h int:value:"$volume" -i "volume_$1" "Volume: ${volume}%" -t 2000
}

volume="$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}' | sed 's/[^0-9]*//g')"
mute="$(pactl get-sink-mute @DEFAULT_SINK@ | awk '{print $2}')"

case $1 in
	up)
		# if muted, toggle it, then increase volume
		if [[ "$mute" == "yes" ]]; then
			pactl set-sink-mute @DEFAULT_SINK@ toggle
		fi
		if [[ $volume -lt "100" ]]; then
			pactl set-sink-volume @DEFAULT_SINK@ +5%
			send_notification "$1"
		fi
		;;
	down)
		pactl set-sink-volume @DEFAULT_SINK@ -5%
		send_notification "$1"
		;;
	mute)
		pactl set-sink-mute @DEFAULT_SINK@ toggle
		mute="$(pactl get-sink-mute @DEFAULT_SINK@ | awk '{print $2}')"
		if [[ "$mute" == "yes" ]]; then
			dunstify -a "change_volume" -u low -r $NOTIFY_ID -i volume_mute -t 2000 "Muted"
		else
			send_notification "up"
		fi
		;;
	*)
		cat << EOM
Usage:
	up    increase volume
	down  decrease volume
	mute  toggle mute
EOM
		;;
esac

