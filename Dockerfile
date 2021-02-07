# Image
FROM    debian:buster

# creator name
LABEL   maintainer="maintainer <hanisha@student.21-school.ru>"

# Get and install extensions and utils
RUN     apt update && apt -y upgrade
RUN     apt-get -y install wget nano vim php-mysql php-mbstring

# Get Nginx
RUN     apt install -y nginx
#COPY    /srcs/nginx.conf .
#RUN     ln -s /var/www/locathost/nginx.conf /etc/nginx/sites-enabled/

# Get MySQL
RUN     apt install -y default-mysql-server

#WORKDIR /var/www/html
#COPY
CMD   bash

EXPOSE  80 443
