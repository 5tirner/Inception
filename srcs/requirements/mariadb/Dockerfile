FROM    debian:11
RUN     apt update -y
RUN     apt install mariadb-server -y
COPY    ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY    ./tools/mysql.sh /bin
RUN     chmod 777 /bin/mysql.sh
CMD     ["mysql.sh"]