#!/usr/bin/sh

sudo apt update
sudo apt -y upgrade 
sudo snap refresh
sudo apt update --fix-missing
sudo apt --fix-broken install
# sudo python3 -m pip install pip -U
sudo apt autoremove -y
echo
echo Updates Complete!
echo
read -p "Press any key to continue or CTRL-C to abort"
