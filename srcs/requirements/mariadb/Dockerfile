FROM    debian

RUN     apt update -y

RUN     apt install systemd -y

RUN     apt install mariadb-server -y

EXPOSE  3306

CMD     ["mysqld"]
