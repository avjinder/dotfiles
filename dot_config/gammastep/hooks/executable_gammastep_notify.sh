#!/usr/bin/env bash


# $1 will be the period-changed event
# $2 will be the old period
# $3 will be the new period


case $1 in
	period-changed)
		dunstify -u low -t 3000 "Gammastep" "Period changed from \"$2\" to \"$3\""
		;;
esac


