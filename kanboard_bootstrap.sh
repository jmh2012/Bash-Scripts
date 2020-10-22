#!/bin/bash

apt-get install apache2 php php7.4-sqlite3 php-gd php-mbstring php-dom
wget https://github.com/kanboard/kanboard/archive/v1.2.16.tar.gz
tar -xzf v1.2.16.tar.gz
mv kanboard-1.2.16 /var/www/html/kanboard
chown -R www-data:www-data /var/www/html/kanboard/
systemctl restart apache2
systemctl enable apache2
