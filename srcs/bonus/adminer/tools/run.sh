#!/bin/bash

service apache2 start

service apache2 reload

service mariadb start

a2enconf php*-fpm

a2enconf adminer

service apache2 reload

service apache2 restart