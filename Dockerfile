FROM debian:buster

RUN apt-get update
RUN apt-get install nginx -y
RUN apt-get install mariadb-server -y
RUN apt-get install php-fpm php-mysql -y
RUN apt-get install wget -y
# RUN apt-get install openssl -y
RUN wget https://github.com/FiloSottile/mkcert/releases/download/v1.4.3/mkcert-v1.4.3-linux-amd64

COPY ./srcs/initial.sh ./
COPY ./srcs/index.html ./
COPY ./srcs/nginx.conf ./
COPY ./srcs/dkenchur_server ./
COPY ./srcs/nginx_config.sh ./
COPY ./srcs/info.php ./
# COPY ./srcs/v3.ext ./
# COPY ./srcs/server.csr.cnf ./
# COPY ./srcs/ssl_params.conf ./
# delete this line 
# COPY ./srcs/ex.html ./

CMD bash initial.sh

EXPOSE 80 443
