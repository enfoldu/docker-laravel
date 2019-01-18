FROM phusion/baseimage:latest

ARG version_php

RUN apt-get clean && apt-get update && apt-get install -y locales

RUN DEBIAN_FRONTEND=noninteractive
RUN DEBCONF_NONINTERACTIVE_SEEN=true
RUN locale-gen en_US.UTF-8

ENV LANGUAGE=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8
ENV LC_CTYPE=UTF-8
ENV LANG=en_US.UTF-8
ENV TERM xterm

RUN echo "INSTALL: software-properties-common"

# Install "software-properties-common" (for the "add-apt-repository")
RUN apt-get install -y \
    software-properties-common

RUN echo "INSTALL: PHP ${version_php}"

# Add the "PHP 7" ppa
RUN add-apt-repository -y \
    ppa:ondrej/php

# Install PHP-CLI, some PHP extentions and some useful Tools with APT
RUN apt-get update && apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages  \
        php${version_php}-cli \
        php${version_php}-common \
        php${version_php}-curl \
        php${version_php}-json \
        php${version_php}-xml \
        php${version_php}-mbstring \
        php${version_php}-mysql \
        php${version_php}-zip \
        php-memcached \
        php-xdebug \
        git \
        curl \
        nano \
        iputils-ping \
        zip \
        unzip

RUN echo "INSTALL: Node & NPM"

# Install Node & NPM
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y build-essential
RUN apt-get install -y nodejs

RUN echo "INSTALL: MySQL"

# Install MySQL Company
RUN apt-get install -y \
    mysql-client

# Install PV for MySQL import
RUN apt-get install -y \
    pv

# Clean up, to free some space
RUN apt-get clean

#ADD ./containers/workspace/config/functions.sh /bin/mysql_import
#RUN echo '#! /bin/sh'                >> /bin/mycommand
#RUN echo 'echo "running mycommand!"' >> /bin/mycommand
#RUN chmod u+x /bin/mysql_import

# Functions script
#ADD ./containers/workspace/config/functions.sh /usr/local/sbin/functions.sh
#RUN echo "source /usr/local/sbin/functions.sh" >> ~/.bashrc

# Add an alias for PHPUnit
RUN echo "alias phpunit='./vendor/bin/phpunit'" >> ~/.bashrc

# Install Composer
RUN curl -s http://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/ \
    && echo "alias composer='/usr/local/bin/composer.phar'" >> ~/.bashrc

# Source the bash
RUN . ~/.bashrc

# Clean up
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV COMPOSER_ALLOW_SUPERUSER 1

# Init script
ADD ./containers/workspace/config/init.sh /sbin/init.sh
RUN chmod +x /sbin/init.sh

# Run init script
CMD ["/sbin/init.sh"]