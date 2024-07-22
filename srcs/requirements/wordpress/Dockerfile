FROM debian:bullseye

RUN apt update -y && apt upgrade -y && apt install php php-cli curl -y 

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp

RUN mkdir /var/www/html/wp-cli

WORKDIR /var/www/html/wp-cli

RUN wp --allow-root core download

CMD ["tail", "-f", "/dev/null"]