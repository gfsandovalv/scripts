#!/bin/bash

update sources list
> /etc/apt/sources.list
cat <<EOF>> /etc/apt/sources.list
deb http://deb.debian.org/debian stretch main contrib non-free
deb-src http://deb.debian.org/debian stretch main contrib non-free

deb http://deb.debian.org/debian-security/ stretch/updates main contrib non-free
deb-src http://deb.debian.org/debian-security/ stretch/updates main contrib non-free

deb http://deb.debian.org/debian stretch-updates main contrib non-free
deb-src http://deb.debian.org/debian stretch-updates main contrib non-free

##Back ports
deb http://deb.debian.org/debian stretch-backports main contrib non-free
deb-src http://deb.debian.org/debian stretch-backports main contrib non-free
EOF

apt-get update 
apt-get install sudo -y
adduser gabo sudo
sudo apt-get install firmware-linux -y
apt-get install firmware-brcm8021 -y
modprobe -r brcmsmac ; modprobe brcmsmac
apt-get update && sudo apt-get dist-upgrade -y
apt-get install ssh
apt-get install tar vim -y
apt install gksu synaptic apt-xapian-index policykit-1-gnome -y
apt install rsync mousepad git emacs25 -y
apt-get install ttf-freefont ttf-mscorefonts-installer -y

