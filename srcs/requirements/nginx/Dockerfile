FROM debian:bullseye


RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y nginx

COPY ./conf/nginx.conf /etc/nginx

COPY ./tools/portfolio /usr/share/nginx/html

RUN mkdir /etc/nginx/tls && apt-get install openssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/nginx/tls/server.key -out /etc/nginx/tls/server.crt \
    -subj "/CN=aaghbal.42.fr"

CMD ["nginx", "-c", "/etc/nginx/nginx.conf"]
