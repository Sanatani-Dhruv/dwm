#!/usr/bin/env bash

# $(cat system.txt | dmenu)
if
	command rofi -v
then
	value=$(cat $HOME/.config/dwm_scripts/system.txt | rofi -dpi -1 -dmenu -i -p "Power Options" | awk '{ print $1 $2 }')
	sleep 0.5

	if [[ $value = "Logout" ]]; then
		pkill dwm
	elif [[ $value = "Shutdown" ]]; then
		# systemctl poweroff
		loginctl poweroff
	elif [[ $value = "Reboot" ]]; then
		# systemctl reboot
		loginctl reboot
	elif [[ $value = "Suspend" ]]; then
		# systemctl suspend
		loginctl suspend
	elif [[ $value = "Hibernate" ]]; then
		# systemctl hibernate
		loginctl hibernate
	elif [[ $value = "Hybrid-sleep" ]]; then
		# systemctl hybrid-sleep
		loginctl hybrid-sleep
	elif [[ $value = "Suspend-then-hibernate" ]]; then
		# systemctl suspend-then-hibernate
		loginctl suspend-then-hibernate
	fi
fi
