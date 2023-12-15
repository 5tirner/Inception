FROM    debian:latest
RUN     apt update -y
RUN     apt install php -y
RUN     apt install php-fpm -y
RUN     apt install php-mysql -y
RUN     apt install unzip -y
RUN     apt install curl -y
RUN     mkdir pkgs
RUN     curl -o /pkgs/myPack.zip https://wordpress.org/latest.zip
RUN     unzip /pkgs/myPack.zip -d /var/www/html
#For Web Server Permissions: For nginix or any other webserver
#->inside the Docker container needs appropriate permissions to read and serve the files of your web application.
#->Setting the ownership to the web server user and group (commonly www-data in many configurations)
#->ensures that the web server process can access the necessary files
#->I used this to change the ownership to www:data for the directory html
#->www:data is a conventional username used for web server processes, it's created when we install nginx
RUN     chown -R www-data:www-data /var/www/html
RUN     rm -rf pkgs
EXPOSE  9000
CMD     ["php-fpm", "-F"]