#!/usr/bin/bash

mouse_ports="$(dmesg -k | grep 'Manufacturer: Microsoft' | tail -n 1 | awk '{print $4}' | sed 's/://g')"
if [[ -n "$mouse_ports" ]]; then
	sh -c "echo $mouse_ports > /sys/bus/usb/drivers/usb/unbind"
	sh -c "echo $mouse_ports > /sys/bus/usb/drivers/usb/bind"
	echo "reset ms_mouse"
fi
