#!/bin/bash

# Number of monitors
count=$(bspc query -M | wc -l)

# If there is 1 monitor
if [[ "$count" == 1 ]]; then
	bspc monitor -d 1 2 3 4 5 6 7 8 9 0
# If there are 2 monitors
elif [[ "$count" == 2 ]]; then
	bspc monitor $(bspc query -M --names | awk NR==2) -d 1 2 3 4 5 6 7
	bspc monitor $(bspc query -M --names | awk NR==1) -d 8 9 0
fi

