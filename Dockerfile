FROM debian:buster

RUN apt-get update
RUN apt-get install nginx -y
RUN apt-get install mariadb-server -y
RUN apt-get install php7.3-fpm php7.3-mysql php7.3-curl php7.3-gd php7.3-intl php7.3-mbstring php7.3-soap php7.3-xml php7.3-xmlrpc php7.3-zip -y
RUN apt-get install wget -y
RUN apt-get install curl -y
# RUN apt-get install openssl -y

RUN mkdir /tmp/myfiles
RUN mkdir /var/www/dkenchur_server

RUN cd /tmp/myfiles &&\
	wget https://github.com/FiloSottile/mkcert/releases/download/v1.4.3/mkcert-v1.4.3-linux-amd64 &&\
	cd /

RUN cd /tmp/myfiles &&\
	wget https://files.phpmyadmin.net/phpMyAdmin/4.9.7/phpMyAdmin-4.9.7-all-languages.tar.gz &&\
	cd /

COPY ./srcs/initial.sh /tmp/myfiles
# COPY ./srcs/index.html /tmp/myfiles
COPY ./srcs/nginx.conf /tmp/myfiles
COPY ./srcs/dkenchur_server /tmp/myfiles
COPY ./srcs/nginx_config.sh /tmp/myfiles
COPY ./srcs/info.php /tmp/myfiles
COPY ./srcs/wp_config.sh /tmp/myfiles
COPY ./srcs/db_config.sh /tmp/myfiles
COPY ./srcs/wp-config.php /tmp/myfiles
COPY ./srcs/config.inc.php /tmp/myfiles
COPY ./srcs/myadmin_config.sh /tmp/myfiles

# COPY ./srcs/v3.ext ./
# COPY ./srcs/server.csr.cnf ./
# COPY ./srcs/ssl_params.conf ./
# delete this line 
# COPY ./srcs/ex.html ./

COPY ./srcs/test_bd.php /var/www/dkenchur_server

CMD bash /tmp/myfiles/initial.sh

EXPOSE 80 443
