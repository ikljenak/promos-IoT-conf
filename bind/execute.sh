#!/bin/bash

apt-get install bind9

yes | cp -rf named.conf.default-zones /etc/bind/
yes | cp -rf named.conf.options /etc/bind/
yes | cp -rf db.compra.me /etc/bind/

service bind9 restart
