mysql -e "CREATE DATABASE wordpress CHARACTER SET utf8 COLLATE utf8_unicode_ci;"
mysql -e "GRANT ALL ON wordpress.* TO 'user_wordpress'@'localhost' IDENTIFIED BY 'mypass';"
mysql -e "FLUSH PRIVILEGES;"