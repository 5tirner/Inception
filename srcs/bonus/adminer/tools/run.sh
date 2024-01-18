#!/bin/bash
service apache2 start
service mariadb start
ln -s   /etc/apache2/conf-available/adminer.conf /etc/apache2/conf-enabled/
service apache2 restart
while true; do sleep 1; done;