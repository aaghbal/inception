
DB_NAME="wp_database"
DB_USER="abdo"
DB_PASS="1234"

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar

chmod +x wp-cli.phar

mv wp-cli.phar /usr/local/bin/wp

mkdir /var/www/html/wp-cli

cd /var/www/html/wp-cli

wp core download --allow-root

wp config create --allow-root --dbname=${DB_NAME} --dbuser=${DB_USER} --dbpass=${DB_PASS} --dbhost=localhost



