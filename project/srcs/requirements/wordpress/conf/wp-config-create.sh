#!/bin/sh

#wp core download --locale=fr_FR --allow-root
cd /var/www/

echo "Install admin user"
wp core install --path=/var/www/ --url=$DOMAIN_NAME --title=$WP_TITLE --admin_user=$DB_USER --admin_password=$DB_PASS --admin_email=$WP_EMAIL --skip-email --allow-root

echo "Install theme"
wp theme install twentytwentytwo --path=/var/www/ --activate --allow-root

echo "Create user"
wp user create $WP_NEW_USER newuser@inception.fr --role=author --path=/var/www/ --user_pass=$WP_NEW_PASS --allow-root

exec /usr/sbin/php-fpm81 -F

