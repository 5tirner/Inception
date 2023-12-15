FROM    debian:latest
RUN     apt update -y
RUN     apt install php -y
RUN     apt install php-fpm -y
RUN     apt install php-mysql -y
RUN     apt install unzip -y
RUN     apt install curl -y
RUN     curl -o /tmp/myPack.zip https://wordpress.org/latest.zip
RUN     unzip /tmp/myPack.zip -d /var/www/html