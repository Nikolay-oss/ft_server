bash /tmp/myfiles/nginx_config.sh

service nginx start
service php7.3-fpm start
service mysql start

bash /tmp/myfiles/db_config.sh
bash /tmp/myfiles/wp_config.sh

service mysql reload

bash