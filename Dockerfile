FROM debian:buster

RUN apt-get update
RUN apt-get install nginx -y
RUN apt-get install openssl -y

COPY ./srcs/initial.sh ./
COPY ./srcs/index.html ./
COPY ./srcs/nginx.conf ./
COPY ./srcs/dkenchur_server ./
COPY ./srcs/nginx_config.sh ./
# delete this line 
COPY ./srcs/ex.html ./

CMD bash initial.sh

EXPOSE 80 443
