!#/bin/sh

apt-get install iptables
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
iptables -A FORWARD -i eth0 -o wlan0 -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -A FORWARD -i wlan0 -o eth0 -j ACCEPT

sh -c "iptables-save > /etc/iptables.ipv4.nat"
sh -c "echo 1 > /proc/sys/net/ipv4/ip_forward"

yes | cp -rf sysclt.conf /etc/
sysctl -p
