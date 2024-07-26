curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar

mv wp-cli.phar /usr/local/bin/wp

sleep 5

mkdir /var/www/wordpress

cd /var/www/wordpress

wp core download --allow-root


wp config create  --dbname=$DATABASE_NAME --dbuser=$DATABASE_USER \
                    --dbhost=$DATABASE_HOST --dbpass=$DATABASE_PASS \
                        --allow-root

wp core install --url=$URL --title=$TITLE \
                --admin_user=$ADMIN_USER --admin_password=$ADMIN_PASS \
                --admin_email=$ADMIN_EMAIL --allow-root


wp user create $EDITOR_USER $EDITOR_EMAIL --role=editor --user_pass=$EDITOR_PASS --allow-root


service php7.4-fpm stop

exec php-fpm7.4 -F