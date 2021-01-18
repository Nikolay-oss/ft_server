FROM debian:buster

RUN apt-get update
RUN apt-get install nginx -y
RUN apt-get install mariadb-server -y
RUN apt-get install php7.3-fpm php7.3-mysql php7.3-curl php7.3-gd php7.3-intl php7.3-mbstring php7.3-soap php7.3-xml php7.3-xmlrpc php7.3-zip -y
# RUN apt-get install wget -y
RUN apt-get install curl -y
# RUN apt-get install openssl -y
# RUN wget https://github.com/FiloSottile/mkcert/releases/download/v1.4.3/mkcert-v1.4.3-linux-amd64

RUN mkdir /tmp/myfiles

COPY ./srcs/initial.sh /tmp/myfiles
# COPY ./srcs/index.html /tmp/myfiles
COPY ./srcs/nginx.conf /tmp/myfiles
COPY ./srcs/dkenchur_server /tmp/myfiles
COPY ./srcs/nginx_config.sh /tmp/myfiles
COPY ./srcs/info.php /tmp/myfiles
COPY ./srcs/wp_config.sh /tmp/myfiles
COPY ./srcs/db_config.sh /tmp/myfiles
COPY ./srcs/wp-config.php /tmp/myfiles

# COPY ./srcs/v3.ext ./
# COPY ./srcs/server.csr.cnf ./
# COPY ./srcs/ssl_params.conf ./
# delete this line 
# COPY ./srcs/ex.html ./

CMD bash /tmp/myfiles/initial.sh

EXPOSE 80 443
