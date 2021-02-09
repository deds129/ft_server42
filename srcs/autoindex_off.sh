#!/bin/bash

sed 's/autoindex on;/autoindex off;/' ./etc/nginx/sites-enabled/nginx.conf
service nginx restart
