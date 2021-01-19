echo "CREATE USER 'user_db'@'localhost' IDENTIFIED BY 'mypass';" | mysql -u root

# wordpress db
echo "CREATE DATABASE wordpress CHARACTER SET utf8 COLLATE utf8_unicode_ci;" | mysql -u root
echo "GRANT ALL ON wordpress.* TO 'user_db'@'localhost' WITH GRANT OPTION;" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root

# phpmyadmin db
echo "GRANT ALL ON phpmyadmin.* TO 'user_db'@'localhost' WITH GRANT OPTION;" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root
mysql -u root < /var/www/dkenchur_server/phpmyadmin/sql/create_tables.sql