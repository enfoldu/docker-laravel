ARG version
FROM php:${version}

ADD ./containers/php/config/php.ini /usr/local/etc/php
ADD ./containers/php/config/www.conf /usr/local/etc/php-fpm.d

ARG working_dir
ADD ./application ${working_dir}

ADD ./.env ${working_dir}

RUN apt-get update && apt-get install -y mysql-client \
 && docker-php-ext-install pdo_mysql