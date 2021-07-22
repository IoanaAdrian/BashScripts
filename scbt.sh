#!/bin/bash

#ScreenBrightnessTemperature

function help(){
        RED='\e[41m'
        echo -e "${RED}###### THIS IS HELP MODE ######"
        echo "Use -d to activate the day mode"
        echo "Use -n to activate the night mode"
        echo -e "\e[40m"
}
dateInterval=""
config=$(cat ./scbt.config)
for word in $config; do
    isInterval=false
    for (( i=0; i<${#word}; i++ )); do
        if [ ${word:$i:1} = "-" ]
        then
            isInterval=true
        fi
    done
    if [ $isInterval = true ]
    then
        dateInterval=$word
    fi
done

if [ $# -gt 0 ]
then 
    if [ $1 = -h ]
    then
        help
    fi
    if [ $1 = "-d" ]
    then
        xrandr --output HDMI-0 --brightness 1
        xrandr --output HDMI-1 --brightness 1
        sct 6500
    else if [ $1 = "-n" ]
        then 
            xrandr --output HDMI-0 --brightness 0.8
            xrandr --output HDMI-1 --brightness 0.8
            sct 4500
        fi
    fi
fi