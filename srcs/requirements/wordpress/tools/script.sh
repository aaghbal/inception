curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar

mv wp-cli.phar /usr/local/bin/wp

sleep 5
mkdir /var/www/wordpress

cd /var/www/wordpress
wp core download --allow-root



wp config create  --dbname=wp_database --dbuser=aaghbal --dbhost=mariadb --dbpass=1234 --allow-root
wp core install --allow-root --url=aaghbal.42.fr --title=my_inception --admin_user=wp_abdo   --admin_email=abdo@example.com 

tail -f /dev/null