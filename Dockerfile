FROM debian:buster

# install
RUN apt-get update
RUN apt-get install nginx -y
RUN apt-get install mariadb-server -y
RUN apt-get install php7.3-fpm php7.3-mysql php7.3-curl php7.3-gd php7.3-intl php7.3-mbstring php7.3-soap php7.3-xml php7.3-xmlrpc php7.3-zip -y
RUN apt-get install wget -y
RUN apt-get install curl -y
RUN apt-get install openssl -y

# create directories
RUN mkdir /tmp/myfiles
RUN mkdir /var/www/dkenchur_server

# SSL
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/dkenchur_server.key -out /etc/ssl/certs/dkenchur_server.crt -subj "/C=RU/ST=Moscow/l=Moscow/O=21school/CN=dkenchur"

# phpmyadmin
RUN cd /tmp/myfiles &&\
	wget https://files.phpmyadmin.net/phpMyAdmin/4.9.7/phpMyAdmin-4.9.7-all-languages.tar.gz &&\
	cd /

# wordpress
RUN cd /tmp/myfiles &&\
	curl -LO https://wordpress.org/latest.tar.gz &&\
	cd /

# copy files
COPY ./srcs/initial.sh /tmp/myfiles
COPY ./srcs/nginx.conf /tmp/myfiles
COPY ./srcs/dkenchur_server /tmp/myfiles
COPY ./srcs/nginx_config.sh /tmp/myfiles
COPY ./srcs/wp_config.sh /tmp/myfiles
COPY ./srcs/db_config.sh /tmp/myfiles
COPY ./srcs/wp-config.php /tmp/myfiles
COPY ./srcs/config.inc.php /tmp/myfiles
COPY ./srcs/myadmin_config.sh /tmp/myfiles
COPY ./srcs/autoindex.sh /tmp/myfiles

# symbolic link for using the script in any directory
RUN ln -fs /tmp/myfiles/autoindex.sh /usr/local/bin/autoindex.sh &&\
	chmod +x /usr/local/bin/autoindex.sh

CMD bash /tmp/myfiles/initial.sh

EXPOSE 80 443
