#!/bin/bash
service mariadb start
mariadb -e "create database if not exists wpdb;"
mariadb -e "create user if not exists zasabri@'%' identified by 'Zs1234..';"
#@% To give the user the rights to connects from any host
mariadb -e "grant all privileges on  wpdb.* to zasabri@'%';"
mariadb -e "flush privileges;"
#while true; do echo .; done;
mariadb