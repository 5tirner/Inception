FROM    debian:latest

RUN     apt update -y

RUN     apt install mariadb-server -y

RUN     mkdir zasabri

COPY    ./tools/mysql.sh zasabri

RUN     chmod 777 /zasabri/mysql.sh
# RUN     systemctl enable mysql

# RUN     mysql -e "create database if not exists wpdb;"

# RUN     mysql -e "create user if not exists zasabri@'%' identified by 'Zs1234..';"
# #@% To give the user the rights to connects from any host

# RUN     mysql -e "grant all privileges on  wpdb.* to zasabri@'%';"

# RUN     mysql -e "flush privileges;"

# RUN     mysql -e "alter user root@localhost identified by 'Zs1234..' require none;"
EXPOSE  3306

CMD     ["./zasabri/mysql.sh"]