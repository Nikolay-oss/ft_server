echo "CREATE USER 'user_db'@'localhost' IDENTIFIED BY 'mypass';" | mysql -u root


# wordpress db
# echo "CREATE USER 'user_wp'@'dkenchur_server'"
# echo "CREATE DATABASE wordpress;" | mysql -u user_wp
# echo "GRANT ALL ON wordpress.* TO 'user_wp'@'dkenchur_server';" | mysql -u user_wp
# echo "FLUSH PRIVILEGES;" | mysql -u user_wp
# echo "update mysql.user set plugin = 'mysql_native_password' where user='root';" | mysql -u user_wp

# mysql -e "CREATE USER 'user_wp'@'dkenchur_server';"
echo "CREATE DATABASE wordpress CHARACTER SET utf8 COLLATE utf8_unicode_ci;" | mysql -u root
echo "GRANT ALL ON wordpress.* TO 'user_db'@'localhost';" | mysql -u root
# mysql -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'user_wp'@'localhost' IDENTIFIED BY 'mypass';"
echo "FLUSH PRIVILEGES;" | mysql -u root

# phpmyadmin db
# echo "GRANT ALL ON wordpress.* TO 'pma'@'localhost' IDENTIFIED BY 'mypass';" | mysql -u root
echo "GRANT ALL ON phpmyadmin.* TO 'user_db'@'localhost';" | mysql -u root
# mysql < /var/www/dkenchur_server/phpmyadmin/sql/create_tables.sql -u root
# mysql -e "CREATE DATABASE phpmyadmin CHARACTER SET utf8 COLLATE utf8_unicode_ci;"
# mysql -e "GRANT ALL PRIVILEGES ON phpmyadmin.* TO 'pma'@'localhost' IDENTIFIED BY 'mypass';"
# mysql -e "FLUSH PRIVILEGES;"
echo "FLUSH PRIVILEGES;" | mysql -u root
mysql -u root < /var/www/dkenchur_server/phpmyadmin/sql/create_tables.sql