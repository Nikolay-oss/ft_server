FROM debian:buster

RUN apt-get update
RUN apt-get install nginx -y
# RUN apt-get install mariadb-server -y
RUN apt-get install php-fpm php-mysql -y
RUN apt-get install openssl -y

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
