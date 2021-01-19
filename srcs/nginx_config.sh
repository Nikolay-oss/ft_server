cd /tmp/myfiles
rm /etc/nginx/nginx.conf
mv ./nginx.conf /etc/nginx/nginx.conf
chown -R www-data:www-data /var/www/dkenchur_server
mv ./dkenchur_server /etc/nginx/sites-available/
ln -s /etc/nginx/sites-available/dkenchur_server /etc/nginx/sites-enabled/

# create cert
mkdir mkcert
mv ./mkcert-v1.4.3-linux-amd64 ./mkcert
mv ./mkcert/mkcert-v1.4.3-linux-amd64 ./mkcert/mkcert
cd ./mkcert
chmod +x mkcert
./mkcert -install
./mkcert dkenchur_server
mkdir -p /tmp/certs
mv dkenchur_server.pem /tmp/certs/
mv dkenchur_server-key.pem /tmp/certs/
