FROM    debian:latest
RUN     apt update -y
RUN     apt install nginx -y
RUN     apt install openssl -y
COPY    ./conf/nginx.conf /etc/nginx/nginx.conf

CMD     ["nginx"]