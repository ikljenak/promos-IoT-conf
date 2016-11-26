!#/bin/sh

apt-get install hostapd
yes | cp -rf hostapd.conf /etc/hostapd/
yes | cp -rf hostapd /etc/default/

update-rc.d hostapd enable
service hostapd restart
