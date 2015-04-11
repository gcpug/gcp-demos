#!/bin/bash
#apacheとMySQLの初期設定

#おまじない
pwd
whoami
hostname;ifconfig;uname -a; df -k;cat /etc/debian_version
chkconfig --list | grep on

#タイムゾーンの変更
echo 'Asia/Tokyo' | sudo tee /etc/timezone“ > /dev/null
sudo cp -p /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

# 各種aApache,PHP(APC),Wordpressをインストール
sudo apt-get -y install apache2
sudo apt-get -y install php5 libapache2-mod-php5 php5-mysql php-pear php5-gd
sudo apt-get -y install unzip mysql-client

