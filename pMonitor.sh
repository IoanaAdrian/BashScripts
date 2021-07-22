#!/bin/bash

#This script is being run by lightdm
    #the lightdm config file (/etc/lightdm/lightdm-gtk-greeter.conf) 
    #add the "greeter-setup-script=/absolute/path/to/your/script.sh" in the [greeter] section 

#Other alternatives to run the script at startup
    #Create a sim-link in rc2.d
    #Add it to rc.local (you enable rc on certain distros)

xrandr --output DP-3 --off #disabling the 3'rd DisplayPort
