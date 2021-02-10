#!/bin/bash

#Start MySQL
service mysql start
echo "CREATE DATABASE wordpress;" | mysql -u root --skip-password
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'root'@'localhost' WITH GRANT OPTION;" | mysql -u root --skip-password
echo "update mysql.user set plugin='mysql_native_password' where user='root';" | mysql -u root --skip-password
echo "FLUSH PRIVILEGES;" | mysql -u root --skip-password

#Make website path
mkdir /var/www/site_hanisha
mv /tmp/index.html /var/www/site_hanisha


#Endble Config access
chmod -R 755 /var/www/*

#SSL configurate
openssl req -x509 -nodes -days 365 \
        -out /etc/ssl/certs/nginx-ssl.crt \
        -keyout /etc/ssl/nginx-private.key \
        -subj "/C=RU/ST=Russia/L=Kazan/O=School21/OU=hanisha/CN=localhost"
ln      -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled/

#Wordpress configurate
cd tmp && wget -c http://wordpress.org/latest.tar.gz
tar -xvzf latest.tar.gz
rm -rf latest.tar.gz
cd .. && mv tmp/wordpress/ var/www/site_hanisha
mv /tmp/wp-config.php /var/www/site_hanisha/wordpress


#Start services
service start php-fpm start
service nginx start

#Deamon mode
bash