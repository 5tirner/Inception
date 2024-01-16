#!/bin/bash
wp-cli.phar core download --allow-root
wp-cli.phar config create --dbname=wpdb --dbuser=zasabri --dbpass=Zs1234.. --dbhost=mariadb --allow-root
wp-cli.phar core install --url=zasabri.42.fr --title=Inception42 --admin_user=molchi --admin_password=Sz2001.. --admin_email=molchi123@gmail.com --allow-root
php-fpm7.4