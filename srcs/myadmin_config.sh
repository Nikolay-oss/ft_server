cd /tmp/myfiles
tar xvf phpMyAdmin-4.9.7-all-languages.tar.gz
mv phpMyAdmin-4.9.7-all-languages/ /var/www/dkenchur_server/phpmyadmin
mv config.inc.php /var/www/dkenchur_server/phpmyadmin
cd /
mkdir -p /var/lib/phpmyadmin/tmp
chown -R www-data:www-data /var/lib/phpmyadmin
