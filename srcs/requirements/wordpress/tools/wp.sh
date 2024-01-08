#!/bin/bash
./wp-cli.phar core download --allow-root
sleep 1
./wp-cli.phar config create --dbname=mydb --dbuser=zasabri --dbpass=Zs1234.. --dbhost=mariadb --allow-root
sleep 1
./wp-cli.phar core install --url=zasabri.42.fr --title=Inception42 --admin_user=molchi --admin_password=Sz2001.. --admin_email=molchi123@gmail.com --allow-root
sleep 1
php-fpm7.4 -R -F
#while true; do sleep 1; done;