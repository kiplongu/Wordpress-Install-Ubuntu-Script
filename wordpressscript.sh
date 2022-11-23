#!/bin/bash
sudo apt-get update
sudo apt-get install apache2 apache2-utils -yq
sudo systemctl enable apache2
sudo systemctl start apache2
sudo apt-get install php libapache2-mod-php  php-mysql -yq 
sudo apt-get install php-curl php-gd php-mbstring php-xml php-xmlrpc -yq
sudo a2enmod rewrite
sudo systemctl restart apache2
cd /var/www
sudo curl -O https://wordpress.org/latest.tar.gz
sudo tar -xzf latest.tar.gz
sudo rm -rf html/*
sudo mv wordpress/* html/
sudo chown -R www-data:www-data html