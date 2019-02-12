#!/usr/bin/env bash

#chown -R www-data:www-data /var/www

find /var/www -type f -exec chmod 644 {} \;
find /var/www -type d -exec chmod 755 {} \;

# Run composer install
/usr/local/bin/composer.phar install -d /var/www

# This keeps the container running.
/sbin/my_init