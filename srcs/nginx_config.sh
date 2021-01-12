rm /etc/nginx/nginx.conf
mv ./nginx.conf /etc/nginx/nginx.conf
mkdir /var/www/dkenchur_server
chown -R $USER:$USER /var/www/dkenchur_server
mv ./dkenchur_server /etc/nginx/sites-available/
ln -s /etc/nginx/sites-available/dkenchur_server /etc/nginx/sites-enabled/
rm /etc/nginx/sites-available/default
mv ./index.html /var/www/dkenchur_server/
# delete this line 
mv ./ex.html /var/www/dkenchur_server/
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/certs/nginx_server.key -out /etc/ssl/certs/nginx_server.crt -subj "/C=RU/ST=Moscow/L=Moscow/O=21school/CN=dkenchur"