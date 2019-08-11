#!/bin/bash
dpkg -i --force-all /home/gabo/Downloads/google-chrome-stable_current_amd64.deb
cd /home/gabo/Downloads/
tar xvf Sierra-light.tar.xz -C /usr/share/themes/
tar xvf Tela-ubuntu.tar.xz -C /usr/share/icons/
tar xvf Yaru-dark.tar.xz -C /usr/share/themes/
tar xvf Yaru-light.tar.xz -C /usr/share/themes/
apt-get install plank -y
apt-get install gnome-sushi evince -y 

