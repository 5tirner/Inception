#!/bin/bash
./wp-cli.phar config create --dbname=mydb \
                            --dbuser=zasabri \
                            --dbpass=Zs1234.. \
                            --dbhost=mariadb \
                            --allow-root
/.wp-cli.phar core install --url=zasabri.42.fr \
                            --title=Inception42 \
                            --admin_user=molchi \
                            --admin_password=9ob9aba9ib9ob9abhadinaghmatla97ab \
                            --admin_email=molchi123@gmail.com \
                            --allow-root
"php-fpm7.3 -R -F"