FROM debian:bullseye

RUN apt update -y && apt upgrade -y && apt install -y mariadb-server
 

COPY tools/script.sh /

COPY tools/50-server.cnf /etc/mysql/mariadb.conf.d/

RUN chmod +x script.sh

RUN ./script.sh


CMD ["mysqld"]
