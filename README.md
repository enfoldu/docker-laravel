# docker-laravel

Docker for laravel/lumen.

# Using

### Install

Clone the repo `git clone git@github.com:enfoldu/docker-laravel.git`

`cd` into the folder and add your laravel project into the `application` folder.

### Configure

In the root `docker-laravel` folder copy `.env.example` to `.env`.

Open `.env` and edit the contents.

ENV Key | Description | Example
--- | --- | ---
`WORKING_DIR` | The directory on the server where your application will be stored. | `/var/www`
`NGINX_VERSION` | The NGINX version. | `1.15`
`NGINX_TAG` | The NGINX extra tag information. | `-alpine`
`NGINX_EXTERNAL_PORT` | The port the server can be accessed with. | `8080`
`PHP_VERSION` | The PHP version. | `7.3`
`PHP_TAG` | The PHP extra tag information. | 
`PHP_EXTERNAL_PORT` | The port the PHP in the `APP` container can be accessed through. | `9000`
`DB_DRIVER` | Select custom driver. | `mysql`
`DB_VERSION` | The `DATABASE` version. | `8.0`
`DB_EXTERNAL_PORT` | The external port to be accessed through. | `3306`
`DB_STORAGE_PATH` | The location where your custom DB_DRIVER stores the data. | `/var/lib/mysql`

### Running

Environment | Description 
--- | ---
`local` | For your local machine.
`stage` | Testing for public.

Build: `APP_ENV={ENVIRONMENT} docker-compose -f docker-compose.yml -f docker-compose.{ENVIRONMENT}.yml build`

Start: `docker-compose -f docker-compose.yml -f docker-compose.{ENVIRONMENT}.yml up -d`

Build & Start: `APP_ENV={ENVIRONMENT} docker-compose -f docker-compose.yml -f docker-compose.{ENVIRONMENT}.yml up -d --build`.

Stop: `docker-compose -f docker-compose.yml -f docker-compose.{ENVIRONMENT}.yml down`

# Containers
Envoronment | Description | Environments
--- | --- | ---
`SERVER` | Uses NGINX as a reverse proxy. | `local` `stage`
`APP` | Contains the Application along with PHP and basic tools. | `local` `stage`
`DATABASE` | Choose the database for your storage. | `local` `stage`
`WORKSPACE` | Holds extra tools for developing and working on the application within the `APP` container (Composer, Git, PHPUnit, etc). | `local`

# Commands

`docker ps` to see list of containers.

`docker exec -it <name_of_container> <bash> <sh>` to ssh into container.

`docker logs -f <container_name>` to view logs.