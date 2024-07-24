FROM debian:bullseye

RUN apt-get update -y && apt-get upgrade -y && apt-get install php php-cli curl -y 

COPY /tools/script.sh /

RUN apt-get install php-mysqli

RUN chmod +x script.sh

CMD ./script.sh
