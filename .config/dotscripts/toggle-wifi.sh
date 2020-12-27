#!/bin/bash

wifi_status=$(nmcli r wifi)

if [ $wifi_status == "disabled" ]; then 
	toggle=on
fi

nmcli radio wifi ${toggle:=off}
notify-send -a "Keyboard shortcut" "WiFi" "Current status = ${toggle:-'off'}"

