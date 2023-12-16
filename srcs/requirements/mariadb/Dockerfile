FROM    debian

RUN     apt update -y

RUN     apt install mariadb-server -y

RUN     apt install systemd -y

RUN     systemctl enable mysql

RUN     mysql -e "create database if not exist zsdb;"

RUN     mysql -e "create user if not exists zasabri@'%' identified by 'el9b9ba9ib9b9ab+had-n4mt-l9hab';"
#@% To give the user the rights to connects from any host
RUN     mysql -e "GRANT ALL PRIVILEGES ON zsdb.* TO zasabri@'%';"

RUN     mysql -e "FLUSH PRIVILEGES;"

EXPOSE  3306

CMD     ["mysqld"]
