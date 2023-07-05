FROM alpine:3.17
ARG PHP_VERSION=81
ARG DB_NAME
ARG DB_USER
ARG DB_PASS
RUN apk update && apk upgrade && apk add --no-cache \
    php${PHP_VERSION} \
    php${PHP_VERSION}-fpm \
    php${PHP_VERSION}-mysqli \
    php${PHP_VERSION}-json \
    php${PHP_VERSION}-curl \
    php${PHP_VERSION}-dom \
    php${PHP_VERSION}-exif \
    php${PHP_VERSION}-fileinfo \
    php${PHP_VERSION}-mbstring \
    php${PHP_VERSION}-openssl \
    php${PHP_VERSION}-xml \
    php${PHP_VERSION}-zip \
    php${PHP_VERSION}-redis \
    php-phar \
    wget \
    unzip && \
    sed -i "s|listen = 127.0.0.1:9000|listen = 9000|g" \
      /etc/php81/php-fpm.d/www.conf && \
    sed -i "s|;listen.owner = nobody|listen.owner = nobody|g" \
      /etc/php81/php-fpm.d/www.conf && \
    sed -i "s|;listen.group = nobody|listen.group = nobody|g" \
      /etc/php81/php-fpm.d/www.conf && \
    rm -f /var/cache/apk/*
WORKDIR /var/www/

#RUN wget https://wordpress.org/latest.zip && \
#    unzip latest.zip && \
#    cp -rf wordpress/* . && \
#    rm -rf wordpress latest.zip

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar

RUN mv -f wp-cli.phar /usr/local/bin/wp

RUN cd /var/www/
RUN wp core download --allow-root --path="/var/www/"

RUN wp config create --dbname=${DB_NAME} --dbuser=${DB_USER} --dbpass=${DB_PASS} --dbhost=mariadb --path=/var/www/ --skip-check --allow-root
#RUN wp core install --path=/var/www/ --url=msebbane.42.fr --title=inception --admin_user=msbbane --admin_password=inception --admin_email=mariesebbane@gmail.com --skip-email --allow-root
#RUN wp theme install teluro --path=/var/www/wordpress --activate --allow-root
#RUN wp user create leon leon@le.on --role=author --path=/var/www/wordpress --user_pass=marie --allow-root

COPY ./requirements/wordpress/conf/wp-config-create.sh /tmp/
RUN chmod +x /tmp/wp-config-create.sh

#RUN sh wp-config-create.sh && rm wp-config-create.createsh

#WORKDIR /var/www/wp-content

#RUN touch debug.log

#RUN chmod 666 debug.log

#WORKDIR /var/www


CMD ["sh", "/tmp/wp-config-create.sh"]

