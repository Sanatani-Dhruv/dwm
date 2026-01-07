#!/usr/bin/env bash

# $(cat system.txt | dmenu)
if
	command rofi -v
then
	value=$(cat $HOME/.config/dwm_scripts/power.txt | rofi -dpi -1 -dmenu -i -p "Power Options" | awk '{ print $1 $2 }')
	sleep 0.5

	if [[ $value = "Logout" ]]; then
		jwm -exit
	elif [[ $value = "Shutdown" ]]; then
		systemctl poweroff
	elif [[ $value = "Reboot" ]]; then
		systemctl reboot
	elif [[ $value = "Suspend" ]]; then
		systemctl suspend
	elif [[ $value = "Hibernate" ]]; then
		systemctl hibernate
	elif [[ $value = "Hybrid-sleep" ]]; then
		systemctl hibernate
	elif [[ $value = "Suspend-then-hibernate" ]]; then
		systemctl suspend-then-hibernate
	fi
fi
