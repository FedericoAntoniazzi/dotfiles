#!/bin/sh
# Thanks to github.com/BrodieRobertson

ID=$(pgrep "$1")

if [ -z "$ID" ]; then
	"$1" "$2"
else
	pkill "$1"
fi

