#!/bin/bash
cd
#以下、最新のWPのバージョンを指定する。
curl -L -O http://ja.wordpress.org/wordpress-4.2.1-ja.zip
unzip wordpress-*-ja.zip
sudo mv wordpress/* /var/www
sudo mv /var/www/index.html /var/www/index.html.bk
sudo chgrp -R www-data /var/www
sudo chmod -R g+w /var/www

