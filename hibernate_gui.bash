#!/bin/bash
check=0
if zenity --question --text="Proceed with hibernation?" --timeout=30
then
    while [ $check -eq 0 ]
    do
	password=$(zenity --password)
	checker=$(echo $password | sudo -S echo ok) && check=1
    done
    if [ check]
    passd=$(echo $password | sudo -S pm-suspend)
fi
