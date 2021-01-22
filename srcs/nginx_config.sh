cd /tmp/myfiles
rm /etc/nginx/nginx.conf
mv ./nginx.conf /etc/nginx/nginx.conf
chown -R www-data:www-data /var/www/dkenchur_server
mv ./dkenchur_server /etc/nginx/sites-available/
ln -s /etc/nginx/sites-available/dkenchur_server /etc/nginx/sites-enabled/
