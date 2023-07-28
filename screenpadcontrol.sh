#!/bin/bash
step=51

current_brightness=$(cat '/sys/class/leds/asus::screenpad/brightness')

set_brightness() {
    echo "$1" > '/sys/class/leds/asus::screenpad/brightness'
}

if [ "$1" = "-" ]; then
    set_brightness $((current_brightness - $step))
else
    set_brightness $((current_brightness + $step))
    #set_brightness 255
fi



