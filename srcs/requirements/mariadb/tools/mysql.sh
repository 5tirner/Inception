#!/bin/bash

service mariadb start
echo $DBNAME
mysql -e "create database if not exists wordpressdb;"
mysql -e "create user if not exists zasabri@'%' identified by 'Zs1234..';"
#@% To give the user the rights to connects from any host
mysql -e "grant all privileges on  wordpressdb.* to zasabri@'%';"
mysql -e "flush privileges;"
mysql