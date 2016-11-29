#!/bin/bash

sudo sh hostapd/execute.sh
sudo sh dhcp/execute.sh
sudo sh bind/execute.sh
sudo sh nginx/execute.sh
sudo sh iptables/execute.sh

sudo iwconfig wlan0 txpower 1

sudo sh node/execute.sh
sh node/run.sh