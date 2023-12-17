FROM    debian

RUN     apt update -y

#I will install services and dependencise for running wordpress app

#Installs the PHP programming language, which is required for running WordPress.
RUN     apt install php -y

#To run php scripts in the web.
RUN     apt install php-fpm -y


#Adds MySQL support for PHP, WordPress typically uses MySQL as its database.
RUN     apt install php-mysql -y

RUN     apt install mariadb-server -y

WORKDIR /var/www/html/

EXPOSE  9000

CMD     [""]