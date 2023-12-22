FROM    debian:11
WORKDIR /var/www/html
RUN     apt update -y
#I will install services and dependencise for running wordpress app
#Install the PHP programming language, which is required for running WordPress.
RUN     apt install php -y
#To run php scripts in the web.
RUN     apt install php-fpm -y
#Adds MySQL support for PHP, WordPress typically uses MySQL as its database.
RUN     apt install php-mysql -y
RUN     apt install mariadb-server -y
# I will install WordPress Command Line Interface.
# Command Line Interface is acommand-line tool for managing WordPress installations.
RUN     apt install wget -y
RUN     wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN     chmod 777 wp-cli.phar
RUN     rm -rf /etc/php/8.2/fpm/pool.d/www.conf
COPY    ./tools/wp.sh /bin
COPY    ./conf/www.conf /etc/php/8.2/fpm/pool.d/
RUN     chmod 777 /bin/wp.sh
CMD     ["wp.sh"]