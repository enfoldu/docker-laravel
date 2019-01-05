#!/usr/bin/env bash

# Run composer install.
/usr/local/bin/composer.phar install -d /var/www

# This keeps the container running.
/sbin/my_init