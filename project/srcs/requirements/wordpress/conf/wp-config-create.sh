#!/bin/sh

cd /var/www/

echo "hello"
wp core install --path=/var/www/ --url=msebbane.42.fr --title=inception --admin_user=msbbane --admin_password=inception --admin_email=mariesebbane@gmail.com --skip-email --allow-root

echo "check"
wp theme install teluro --path=/var/www/ --activate --allow-roo wp user create leon leon@le.on --role=author --path=/var/www/ --user_pass=marie --allow-root

exec /usr/sbin/php-fpm81 -F

