FROM    debian:11
RUN     apt update -y
RUN     apt install nginx -y
# For Security i will install openssl to generte a self-signed SSLcertificate.
# It used for securing the communication between the NGINX server and clients,
# over HTTPS (HTTP Secure).
# Start Generate a self-signed SSL certificate
# initiates a certificate request and signing process.
# -x509: Specifies that a self-signed certificate should be generated.
# -nodes: Indicates that the private key should not be encrypted with a passphrase.
# -days 365: Sets the validity period of the certificate to 365 days
# -subj: Defines the subject of the certificate, 
# -newkey: The New RSA key created with lenght of 4096
# -out:Path To Save The certificate
# -keyout: Path to save the key.
RUN apt install openssl \
    && openssl req -x509 -nodes \
    -days 365 \
    -subj "/C=MO/L=BG/O=1337FIL/CN=zasabri.42.fr" \
    -newkey rsa:4096 \
    -keyout /etc/ssl/private/nk.key \
    -out /etc/ssl/certs/nc.crt;
# /etc/ssl/private/ is a common directory on Unix-based systems to store private keys.
# etc/ssl/certs/ is another conventional directory for storing SSL/TLS certificates.
#RUN     rm -rf /etc/nginx/sites-enabled/default
#COPY    ./conf/default /etc/nginx/sites-enabled/
EXPOSE  443
CMD     ["nginx", "-g", "daemon off;"]