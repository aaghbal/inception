FROM debian:bullseye

RUN apt-get update -y && apt-get upgrade -y && apt-get install php php-cli curl -y 

COPY /tools/script.sh /

RUN apt-get install php7.4-mysqli -y

RUN apt-get install php7.4-fpm -y

RUN mkdir -p /run/php

RUN echo "listen = 9000" >> /etc/php/7.4/fpm/pool.d/www.conf

RUN chmod +x script.sh

CMD service php7.4-fpm start && ./script.sh
