FROM jonasal/nginx-certbot

COPY config/nginx/*.conf /etc/nginx/conf.d/
COPY config/nginx/dhparam.pem /etc/ssl/certs/dhparam.pem

COPY sites/casieandseangotohawaii/public /var/www/casieandseangotohawaii
COPY sites/conneythecorgi/public /var/www/conneythecorgi
COPY sites/cowboythecowdog/public /var/www/cowboythecowdog
