FROM debian:bullseye

RUN apt update -y && apt upgrade -y && apt install -y nginx

COPY ./conf/nginx.conf /etc/nginx 

CMD ["nginx", "-c", "/etc/nginx/nginx.conf"]
