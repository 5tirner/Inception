#!/bin/bash
wp-cli.phar core download --allow-root
wp-cli.phar config create --dbname=$DBNAME --dbuser=$DBUSER --dbpass=$DBPASS --dbhost=mariadb --allow-root
wp-cli.phar core install --url=$URL --title=$TITLE --admin_user=$ADMIN --admin_password=$ADMINPASS --admin_email=$ADMINMAIL --allow-root
wp-cli.phar user create $USER $USER@gmail.com --role=subscriber --user_pass=$USERPASS --allow-root
php-fpm7.4 -F -R