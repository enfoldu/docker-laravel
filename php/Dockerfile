FROM php:7.2-fpm

#RUN apt-get update && apt-get install -y libmcrypt-dev

# lumen packages
#RUN apt-get install -y docker-php-ext-install mcrypt

#RUN pecl install mcrypt-1.0.1 \
#    && docker-php-ext-enable mcrypt

RUN apt-get update && apt-get install -y mysql-client \
 && docker-php-ext-install pdo_mysql