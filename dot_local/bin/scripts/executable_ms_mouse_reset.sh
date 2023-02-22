#!/usr/bin/bash

last_entry="$(dmesg -k | grep 'Manufacturer: Microsoft' | tail -n 1)"
mouse_field="$(echo "$last_entry" | awk '{print $3}' | sed 's/://g')"

# resets the passed in port
function reset_ports() {
	if [[ -n "$1" ]]; then
		sh -c "echo $1 > /sys/bus/usb/drivers/usb/unbind"
		sh -c "echo $1 > /sys/bus/usb/drivers/usb/bind"
		echo "reset ms_mouse successful"
	fi
}

# shows detailed information useful while debugging
function debug() {
	echo "Mouse Refresh Entry:"
	printf "%s\n" "$last_entry"
	printf "%s\n" "$mouse_field"
}

case $1 in 
	"debug")
		debug
		;;
	*)
		if [[ "$EUID" -ne 0 ]]; then
			echo "error: please run as root"
			exit 1
		fi
		reset_ports "$mouse_field"
		;;
esac

