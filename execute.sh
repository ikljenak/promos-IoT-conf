#!/bin/bash

cd hostapd
sudo sh execute.sh
cd ../dhcp
sudo sh execute.sh
cd ../bind
sudo sh execute.sh
cd ../nginx
sudo sh execute.sh
cd ../iptables
sudo sh execute.sh

sudo iwconfig wlan0 txpower 1

sudo kill -9 $(pgrep node)

cd ../node
sudo sh execute.sh
sh run.sh