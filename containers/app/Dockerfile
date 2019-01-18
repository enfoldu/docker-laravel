ARG version_tag
FROM php:${version_tag}

ADD ./containers/app/config/php.ini /usr/local/etc/php/php.ini
ADD ./containers/app/config/www.conf /usr/local/etc/php-fpm.d/www.conf

#ARG version_php

# Update packages and install composer and PHP dependencies.
RUN apt-get clean \
    && apt-get update \
    && apt-get install -y locales mysql-client \
    && docker-php-ext-install pdo_mysql \
    && pecl channel-update pecl.php.net \
    && pecl install apcu

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

ARG working_dir
ADD ./application ${working_dir}

COPY ./.env ${working_dir}/.env

#RUN touch storage/logs/laravel.log

# Add an alias for PHPUnit
RUN echo "alias phpunit='./vendor/bin/phpunit'" >> ~/.bashrc

RUN composer install -d ${working_dir}
#RUN php artisan cache:clear
#RUN php artisan view:clear
#RUN php artisan route:cache

RUN chmod -R 777 ${working_dir}/storage

#RUN touch /var/log/cron.log
#
#ADD deploy/cron/artisan-schedule-run /etc/cron.d/artisan-schedule-run
#RUN chmod 0644 /etc/cron.d/artisan-schedule-run
#RUN chmod +x /etc/cron.d/artisan-schedule-run
#RUN touch /var/log/cron.log