# Image
FROM    debian:buster

# creator name
LABEL   maintainer="maintainer <hanisha@student.21-school.ru>"

# Get and install extensions and utils
RUN     apt update && apt -y upgrade
RUN     apt-get -y install wget nano vim
RUN     apt-get -y install php-mysql php-mbstring php7.3-fpm
RUN     apt-get -y install mariadb-server

# Get MySQL
RUN     apt install -y default-mysql-server

# Get Nginx
RUN     apt install -y nginx

#Make site folder
RUN mkdir /var/www/site_hanisha
#Get nginx configuration from srcs
COPY    ./srcs/nginx.conf ./etc/nginx/sites-available/
#Get WordPress-configuration from srcs
COPY ./srcs/wp-config.php ./tmp
#Get default site from srcs
COPY ./srcs/index.html ./tmp
#Get default config phpMyAdmin
COPY ./srcs/config.inc.php ./tmp

# Add scripts to system
COPY ./srcs/server_run.sh ./
COPY ./srcs/autoindex_on.sh ./
COPY ./srcs/autoindex_off.sh ./

CMD  bash server_run.sh

EXPOSE  80 443
