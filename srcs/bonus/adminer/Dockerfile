FROM debian:11

RUN apt update -y && apt install apache2 -y

RUN service apache2 start

RUN apt install adminer -y

RUN ln -s /etc/apache2/conf-available/adminer.conf /etc/apache2/conf-enabled/

RUN service apache2 restart