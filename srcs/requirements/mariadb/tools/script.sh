
DB_NAME="dd"
DB_USER="abdo"
DB_PASS="1234"


service mariadb start

mysql -u root <<-delm
    CREATE DATABASE IF NOT EXISTS ${DB_NAME};
    CREATE USER IF NOT EXISTS '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASS}';
    GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%';
    FLUSH PRIVILEGES;
delm

service mariadb stop
