#!/bin/bash


clear 
echo "#####################################################################################"
echo " __________                          .___                                           "
echo " \______   \_______  _________     __| _/____  ____   _____                         "
echo "  |    |  _/\_  __ \/  _ \__  \   / __ |/ ___\/  _ \ /     \                        "
echo "  |    |   \ |  | \(  <_> ) __ \_/ /_/ \  \__(  <_> )  Y Y  \                       "
echo "  |______  / |__|   \____(____  /\____ |\___  >____/|__|_|  /                       "
echo "         \/                   \/      \/    \/            \/  Installer Version 2021"
echo "                                                                  		  "	
echo "#####################################################################################"
sleep 2

PS3='Please enter your choice: '
options=("Install Wifi Driver" "Show Commands" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Install Wifi Driver")
            echo "After Installing Your Machine is Going to REBOOT"
            apt-get update
apt-get install linux-image-$(uname -r|sed 's,[^-]*-[^-]*-,,') linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,') broadcom-sta-dkms
modprobe -r b44 b43 b43legacy ssb brcmsmac bcma
modprobe wl
reboot
            ;;
        "Show Commands")
            echo "apt-get update"
            echo "apt-get install linux-image-$(uname -r|sed 's,[^-]*-[^-]*-,,') linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,') broadcom-sta-dkms"
            echo "modprobe -r b44 b43 b43legacy ssb brcmsmac bcma"
            echo "modprobe -r b44 b43 b43legacy ssb brcmsmac bcma"
            echo "modprobe wl"
            ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done
