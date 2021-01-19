cd /tmp/myfiles
tar xzvf latest.tar.gz
rm ./wordpress/wp-config-sample.php 
mv ./wp-config.php ./wordpress 
mv ./wordpress/wp-config-sample.php ./wordpress/wp-config.php
mv ./wordpress /var/www/dkenchur_server
chown -R www-data:www-data /var/www/dkenchur_server
cd /
