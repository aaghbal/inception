FROM debian:bullseye

RUN apt update -y && apt upgrade -y && apt install php php-cli curl -y 

COPY /tools/script.sh /

RUN apt install php-mysqli

RUN chmod +x script.sh

RUN ./script.sh

CMD ["tail", "-f", "/dev/null"]