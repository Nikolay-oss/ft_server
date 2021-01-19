#!/bin/bash

cd /etc/nginx/sites-available

buf=$(grep "autoindex off;" dkenchur_server)

if [ "$buf" == "		autoindex off;" ]; then
    sed 's/autoindex off;/autoindex on;/' dkenchur_server > idx_on
	mv idx_on dkenchur_server
	echo "autoindex on"
else
    sed 's/autoindex on;/autoindex off;/' dkenchur_server > idx_off
	mv idx_off dkenchur_server
	echo "autoindex off"
fi

cd /

service nginx restart
