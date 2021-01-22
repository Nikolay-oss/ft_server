#!/bin/bash

print_error()
{
	echo "Usage: bash autoindex.sh [arg]"
	echo "Try 'bash autoindex.sh --help' for more information."
	exit 1
}

cd /etc/nginx/sites-available
help="--help"
if [ -n "$1" ]
then
	if [ $1 == $help ]
	then
		echo "Usage: bash autoindex.sh [arg]"
		echo "Example: bash autoindex.sh on"
		echo -e "Args:\n\ton\tenable autoindex\n\toff\t disable autoindex"
		exit 0
	fi
fi

if [ -n "$1" ]
then
	if [ $1 == "on" ]
	then
		buf=$(grep "autoindex off;" dkenchur_server)
		if [ $? == 0 ]
		then
			sed 's/autoindex off;/autoindex on;/' dkenchur_server > idx_on
			mv idx_on dkenchur_server
			echo "autoindex on"
			service nginx restart
		else
			echo "auto index is already enabled"
		fi
	elif [ $1 == "off" ]
	then
		buf=$(grep "autoindex on;" dkenchur_server)
		if [ $? == 0 ]
		then
			sed 's/autoindex on;/autoindex off;/' dkenchur_server > idx_off
			mv idx_off dkenchur_server
			echo "autoindex off"
			service nginx restart
		else
			echo "auto index is already disabled"
		fi
	else
		print_error
	fi
else
	print_error
fi
cd /
