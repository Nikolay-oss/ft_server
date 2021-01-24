#!/bin/bash

print_error()
{
	echo "Usage: autoindex.sh [arg]"
	echo "Try 'autoindex.sh --help' for more information."
	exit 1
}

change_idx()
{
	if grep -q "autoindex $1;" dkenchur_server
	then
		sed -i "s/autoindex $1;/autoindex $2;/" dkenchur_server
		echo "autoindex $2"
		service nginx restart
	else
		echo "autoindex is already $3"
	fi
}

cd /etc/nginx/sites-available
help="--help"
if [ -n "$1" ]
then
	if [ $1 == "on" ]
	then
		change_idx off on enabled
	elif [ $1 == "off" ]
	then
		change_idx on off disabled
	elif [ $1 == $help ]
	then
		echo "Usage: autoindex.sh [arg]"
		echo "Example: autoindex.sh on"
		echo -e "Args:\n\ton\tenable autoindex\n\toff\t disable autoindex"
		exit 0
	else
		print_error
	fi
else
	print_error
fi
