!#/bin/sh

apt-get install nginx
yes | cp -rf default /etc/nginx/sites-available/
ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/

service nginx restart
