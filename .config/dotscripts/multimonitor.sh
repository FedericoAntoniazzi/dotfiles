#!/bin/bash

FILE="/tmp/monitor_extend_direction"

read_value () {
	cat $FILE
}

next_value () {
	let value=$(read_value)+1
	mod=$(($value % 2))
	echo $mod > $FILE
}

create_file_if_not_exists () {
	if [ ! -f "$FILE" ]; then
		echo 0 > $FILE
		echo "file created"
	fi
}

# Number of monitors
count=$(bspc query -M | wc -l)

# If there is 1 monitor
if [[ "$count" == 1 ]]; then

	bspc monitor -d 1 2 3 4 5 6 7 8 9 0

# If there are 2 monitors
elif [[ "$count" == 2 ]]; then

	create_file_if_not_exists
	next_value

	MONITOR_EXTEND_DIRECTION=$(read_value)
	MONITOR_EXTEND_DIRECTION=${MONITOR_EXTEND_DIRECTION:=0}

	# Reload screens
	# 0 means extend right
	# 1 means extend left
	if [[ $MONITOR_EXTEND_DIRECTION -eq 0 ]]; then

		bspc monitor $(bspc query -M --names | awk NR==1) -d 1 2 3 4 5 6 7
		bspc monitor $(bspc query -M --names | awk NR==2) -d 8 9 0
		$HOME/.config/dotscripts/xorg_extend-right.sh

	elif [[ $MONITOR_EXTEND_DIRECTION -eq 1 ]]; then

		bspc monitor $(bspc query -M --names | awk NR==2) -d 1 2 3 4 5 6 7
		bspc monitor $(bspc query -M --names | awk NR==1) -d 8 9 0
		$HOME/.config/dotscripts/xorg_extend-left.sh

	fi
fi

