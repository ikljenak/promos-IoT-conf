#!/bin/bash

apt-get install isc-dhcp-server
yes | cp -rf dhcpd.conf /etc/dhcp/
yes | cp -rf isc-dhcp-server /etc/default/
yes | cp -rf interfaces /etc/network/

ifconfig wlan0 down
ifconfig wlan0 192.168.42.1

service isc-dhcp-server restart
