FROM    debian:12
RUN     apt update -y
RUN     apt install mariadb-server -y
COPY    ./tools/mysql.sh /bin
RUN     chmod 777 /bin/mysql.sh
CMD     ["mysql.sh"]