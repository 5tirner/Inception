#!/bin/bash
service mariadb start
mariadb -e "create database if not exists $DBNAME;"
mariadb -e "create user if not exists $DBUSER@'%' identified by '$DBPASS';"
#@% To give the user the rights to connects from any host
mariadb -e "grant all privileges on $DBNAME.* to $DBUSER@'%';"
mariadb -e "flush privileges;"
service mariadb stop
mariadbd