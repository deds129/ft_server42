#!/bin/bash

sed 's/autoindex off;/autoindex on;/' ./etc/nginx/sites-enabled/nginx.conf
service nginx restart
