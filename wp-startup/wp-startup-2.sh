#!/bin/bash
cd
#以下、最新のWPのバージョンを指定する。
curl -L -O http://ja.wordpress.org/wordpress-4.1.1-ja.zip
unzip wordpress-*-ja.zip
sudo mv wordpress/* /var/www/html
sudo mv /var/www/html/index.html /var/www/html/index.html.bk
sudo chgrp -R www-data /var/www/html
sudo chmod -R g+w /var/www/html

