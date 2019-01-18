#!/usr/bin/env bash

# Run composer install AND artisan migrate
/usr/local/bin/composer.phar install -d /var/www && php artisan migrate:fresh --seed

# This keeps the container running.
/sbin/my_init