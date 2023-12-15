FROM    debian:latest
RUN     apt update -y
RUN     apt install nginx -y
RUN     apt install openssl -y
COPY    ./conf/nginx.conf /etc/nginx/nginx.conf
COPY    ./tools/zasabri.42.fr.crt /ect/nginx/ssl_certificates
COPY    ./tools/zasabri.42.fr.key /etc/nginx/ssl_certificates
CMD     ["nginx"]