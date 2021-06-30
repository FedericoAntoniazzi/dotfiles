#!/bin/sh
# https://github.com/polybar/polybar-scripts/tree/master/polybar-scripts/pulseaudio-microphone

status() {
    DEFAULT_SOURCE=$(pactl info | grep "Default Source" | cut -d ' ' -f3)
    MUTED=$(pactl list sources | grep "Name: $DEFAULT_SOURCE" -A 6 | grep Mute | cut -d ' ' -f2)

    if [ "$MUTED" = "yes" ]; then
        echo ""
    else
        echo ""
    fi
}

listen() {
    status

    LANG=EN; pactl subscribe | while read -r event; do
        if echo "$event" | grep -q "source" || echo "$event" | grep -q "server"; then
            status
        fi
    done
}

toggle() {
    DEFAULT_SOURCE=$(pactl info | grep "Default Source" | cut -d ' ' -f3)
    MUTED=$(pactl list sources | grep "Name: $DEFAULT_SOURCE" -A 6 | grep Mute | cut -d ' ' -f2)

    if [ "$MUTED" = "yes" ]; then
        pactl set-source-mute "$DEFAULT_SOURCE" 0
    else
        pactl set-source-mute "$DEFAULT_SOURCE" 1
    fi
}

case "$1" in
    --toggle)
        toggle
        ;;
    *)
        listen
        ;;
esac
