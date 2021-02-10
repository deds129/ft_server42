#!/bin/bash
#sed -i -r 's/autoindex on;/autoindex off;/' test
sed -i -r 's/autoindex on;/autoindex off;/' ./etc/nginx/sites-enabled/nginx.conf
service nginx restart
