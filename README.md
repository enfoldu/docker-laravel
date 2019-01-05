# docker-laravel
Docker for local development of a laravel project.

# Configure

### Setup

`cd` into your laravel project folder and run `git submodule add https://github.com/enfoldu/docker-laravel.git`.

`cd` into `docker-laravel` folder.

Copy `.env.example` to `.env` in the same directory.

Open up `.env` and edit.

### Install

Run `docker-compose up -d` to begin.

# Commands

`docker ps` to see list of containers.

`docker exec -it <name_of_container> bash` to ssh into container.

# Logs

By default logs are using stdout. You can view logs with docker `docker logs -f <container_name>`.

If you want logs writing to a file instead of using docker logs (these log files can be found in /logs folder):

### NGINX

Open `containers/nginx/config/nginx.conf` 

Point `error_log` to `/var/log/nginx/error.log` 

Point `access_log` to `/var/log/nginx/access.log`

### MySQL

Open `containers/nginx/config/mysqld.cnf`

Uncomment `log-error = /var/log/mysql/error.log`





