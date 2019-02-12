ARG version_tag
FROM php:${version_tag}

ARG working_dir
ARG php_port
ARG max_file_size

# Update packages and install composer and PHP dependencies.
#RUN set -ex \
#    apk add --no-cache --virtual .build-deps \
#    libfreetype6-dev \
#    libjpeg62-turbo-dev \
#    libpng-dev \
#    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
#    && docker-php-ext-install -j$(nproc) gd \
#    && docker-php-ext-install pdo_mysql mbstring

RUN set -ex \
    && apk add --no-cache --virtual .build-deps \
#		libfreetype6-dev \
#		libjpeg62-turbo-dev \
#		libmcrypt-dev \
#		libpng12-dev \
		freetype-dev \
        libjpeg-turbo-dev \
        libpng-dev \
#	&& docker-php-ext-install -j$(nproc) iconv \
    && docker-php-ext-install pdo_mysql \
	&& docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
	&& docker-php-ext-install -j$(nproc) gd

#RUN set -ex \
#    && apk add --no-cache --virtual .build-deps \
#    freetype-dev \
#    libjpeg-turbo-dev \
#    libpng-dev \
#\
#    && docker-php-ext-configure gd \
#        --with-freetype-dir=/usr \
#        --with-png-dir=/usr \
#        --with-jpeg-dir=/usr \
#    && docker-php-ext-install pdo_mysql gd \
#    && docker-php-ext-enable gd \
#    && apk del .build-deps

COPY --chown=www-data ./application ${working_dir}
COPY --chown=www-data ./.env ${working_dir}/.env

# TODO:: This needs to be env specific.
RUN mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini" \
    && sed -i "s|upload_max_filesize = 2M|upload_max_filesize = ${max_file_size}|g" $PHP_INI_DIR/php.ini \
    && sed -i "s|post_max_size = 8M|post_max_size = ${max_file_size}|g" $PHP_INI_DIR/php.ini

# Set variables.
RUN sed -i "s|9000|${php_port}|g" /usr/local/etc/php-fpm.d/zz-docker.conf