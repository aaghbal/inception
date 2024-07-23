curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar

mv wp-cli.phar /usr/local/bin/wp

mkdir /var/www/html/wp-cli

cd /var/www/html/wp-cli

wp core download --allow-root

cp wp-config-sample.php wp-config.php

wp config set DB_HOST mariadb --allow-root
wp config set DB_NAME dd --allow-root
wp config set DB_USER abdo --allow-root
wp config set DB_PASSWORD 1234 --allow-root

wp core install --allow-root --url=aaghbal.42.fr --title=my_inception --admin_user=wp_abdo   --admin_email=abdo@example.com 

