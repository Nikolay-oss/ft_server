FROM debian:buster

# install
RUN apt-get update
RUN apt-get install nginx -y
RUN apt-get install mariadb-server -y
RUN apt-get install php7.3-fpm php7.3-mysql php7.3-curl php7.3-gd php7.3-intl php7.3-mbstring php7.3-soap php7.3-xml php7.3-xmlrpc php7.3-zip -y
RUN apt-get install wget -y
RUN apt-get install curl -y

# create directories
RUN mkdir /tmp/myfiles
RUN mkdir /var/www/dkenchur_server

# mkcert SSL
RUN cd /tmp/myfiles &&\
	wget https://github.com/FiloSottile/mkcert/releases/download/v1.4.3/mkcert-v1.4.3-linux-amd64 &&\
	cd /

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

CMD bash /tmp/myfiles/initial.sh

EXPOSE 80 443
