FROM debian:buster

RUN apt-get update
RUN apt-get install nginx -y

COPY ./srcs/initial.sh ./
COPY ./srcs/index.nginx-debian.html ./
COPY ./srcs/nginx.conf ./

CMD bash initial.sh

EXPOSE 80 443
