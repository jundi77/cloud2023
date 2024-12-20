FROM nginx:1.15.12-alpine

COPY nginx-conf/nginx.conf /etc/nginx/conf.d/default.conf
ADD html/ /var/www/html/
ADD certs/ /certs
