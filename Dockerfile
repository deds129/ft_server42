# Image
FROM    debian:buster

# creator name
LABEL   maintainer="maintainer <hanisha@student.21-school.ru>"

# Get and install extensions and utils
RUN     apt update && apt -y upgrade
RUN     apt-get -y install wget nano vim
RUN     apt-get -y install php-mysql php-mbstring php-fpm
RUN     apt-get -y install mariadb-server

# Get MySQL
RUN     apt install -y default-mysql-server

# Get Nginx
RUN     apt install -y nginx
COPY    ./srcs/nginx.conf ./etc/nginx/sites-available/

#Get WordPress
COPY ./srcs/wp-config.php ./tmp

#Get default site
COPY ./srcs/index.html ./tmp

# Add scripts to system
COPY ./srcs/server_run.sh ./
COPY ./srcs/autoindex_on.sh ./
COPY ./srcs/autoindex_off.sh ./

CMD  bash server_run.sh

EXPOSE  80 443
