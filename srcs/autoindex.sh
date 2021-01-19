#!/bin/bash

buf=$(grep "autoindex off;" dkenchur_server)
echo "$buf"

if [ "$buf" == "		autoindex off;" ]; then
echo "1"
    # sed 's/autoindex off/autoindex on/g' dkenchur_server > dkenchur_server
else
echo "2"
    # sed 's/autoindex on/autoindex off/g' dkenchur_server > dkenchur_server
fi

echo "$buf" | cat -e
# echo $?
# if [grep "autoindex off" dkenchur_server]; then
# 	sed 's/autoindex off/autoindex on/g'
# fi
