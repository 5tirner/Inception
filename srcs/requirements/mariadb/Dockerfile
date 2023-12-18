FROM    debian:12
RUN     apt update -y
RUN     apt install mariadb-server -y
RUN     mkdir zasabri
COPY    ./tools/mysql.sh zasabri
RUN     chmod 777 /zasabri/mysql.sh
EXPOSE  3306
CMD     ["./zasabri/mysql.sh"]