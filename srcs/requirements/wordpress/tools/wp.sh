#!/bin/bash
service php7.4-fpm start
./wp-cli.phar core download --allow-root
./wp-cli.phar config create --dbname=$DBNAME --dbuser=$DBUSER --dbpass=$DBPASS --dbhost=$DBHOST --allow-root
./wp-cli.phar core install --url=$URL --title=$TITLE --admin_user=$ADMIN --admin_password=$ADMINPASS --admin_email=$ADMINMAIL --allow-root
php-fpm7.4 -R -F