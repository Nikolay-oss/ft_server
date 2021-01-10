rm /etc/nginx/nginx.conf
mv nginx.conf /etc/nginx/nginx.conf
rm /var/www/html/index.nginx-debian.html
mv index.nginx-debian.html /var/www/html/index.nginx-debian.html

service nginx start

bash