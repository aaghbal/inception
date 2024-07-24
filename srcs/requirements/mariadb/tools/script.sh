#!/bin/bash

service mariadb start

mysql -u root <<-DEL
        CREATE DATABASE IF NOT EXISTS $DATABASE_NAME;
        CREATE USER IF NOT EXISTS '$DATABASE_USER'@'%' IDENTIFIED BY '$DATABASE_PASS';
        GRANT ALL PRIVILEGES ON $DATABASE_NAME.* TO '$DATABASE_USER'@'%';
        FLUSH PRIVILEGES;
DEL
service mariadb stop
exec mysqld_safe --bind-address=0.0.0.0