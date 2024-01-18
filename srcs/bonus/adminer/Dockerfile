FROM    debian

RUN     apt update -y

RUN     apt install php php-curl libapache2-mod-php php-cli php-mysql php-gd php-fpm -y

RUN     apt install mariadb-server -y

RUN     apt install adminer -y

COPY    ./tools/run.sh /bin

RUN     chmod 777 /bin/run.sh

CMD ["run.sh"]