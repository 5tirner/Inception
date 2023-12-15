FROM    debian:latest

RUN     apt update -y

RUN     apt install nginx -y

# For Security i will install openssl to generte a self-signed SSLcertificate
# It used for securing the communication between the NGINX server and clients over HTTPS (HTTP Secure).
RUN     apt install openssl -y

# Generate a self-signed SSL certificate
# initiates a certificate request and signing process.
RUN     openssl req \
# Specifies that a self-signed certificate should be generated.
        -x509 \
# Indicates that the private key should not be encrypted with a passphrase.
        -nodes \
# Sets the validity period of the certificate to 365 days
        -days 365 \
# Defines the subject of the certificate, 
        -subj "/C=MOROCO/L=BENGUERIR/O=1337FIL/CN=zasabri.42.fr" \
# The New RSA key created with lenght of 4096
        -newkey rsa:4096 \
# Path to save the key.
        -keyout /etc/ssl/private/nc.key \
# /etc/ssl/private/ is a common directory on Unix-based systems to store private keys.
# Path To Save The certificate
        -out /etc/ssl/certs/nk.crt
# etc/ssl/certs/ is another conventional directory for storing SSL/TLS certificates.
COPY    conf/default /etc/nginx/sites-enabled/
EXPOSE  443
CMD     ["nginx", "-g", "daemon off;"]