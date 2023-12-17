#!/bin/bash

service mariadb start

mysql -e "create database if not exists wpdb;"

mysql -e "create user if not exists zasabri@'%' identified by 'Zs1234..';"
#@% To give the user the rights to connects from any host

mysql -e "grant all privileges on  wpdb.* to zasabri@'%';"

mysql -e "flush privileges;"

mysql -e "alter user root@localhost identified by 'Zs1234..' require none;"

mysqld