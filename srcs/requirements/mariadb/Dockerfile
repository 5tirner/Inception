FROM    debian

RUN     apt update -y

RUN     apt install mariadb-server -y

RUN     apt install systemd -y

RUN     systemctl enable mysql

RUN     mysql -e "create database if not exists wpdb;"

RUN     mysql -e "create user if not exists ${USER}@'%' identified by '${USER_PSWD}';"
#@% To give the user the rights to connects from any host

RUN     mysql -e "grant all privileges on  ${DATABASE}.* to ${USER}@'%';"

RUN     mysql -e "flush privileges;"

RUN     mysql -e "alter user root@localhost identified by 'Zs1234..' require none;"

EXPOSE  3306

CMD     ["mysqld"]
