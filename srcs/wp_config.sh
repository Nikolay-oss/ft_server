cd /tmp/myfiles
curl -LO https://wordpress.org/latest.tar.gz
tar xzvf latest.tar.gz
# cp ./wordpress/wp-config-sample.php ./wordpress/wp-config.php
# cp -a ./wordpress/. /var/www/dkenchur_server
rm ./wordpress/wp-config-sample.php 
mv ./wp-config.php ./wordpress 
mv ./wordpress/wp-config-sample.php ./wordpress/wp-config.php
mv ./wordpress /var/www/dkenchur_server
# rm /var/www/dkenchur_server/wp-config.php
# mv ./wp-config.php /var/www/dkenchur_server
chown -R www-data:www-data /var/www/dkenchur_server
cd /