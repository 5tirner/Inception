FROM    debian:latest

RUN     apt update -y

RUN     apt install mariadb-server -y

COPY    ./conf/my.conf /etc/mysql

CMD     ["mariadb"]