# docker-laravel
Docker for laravel/lumen

# Configure

### Install

Clone the repo `got clone git@github.com:enfoldu/docker-laravel.git`

`cd` into the folder and add your laravel project into the `application` folder.

### Configure

In the root `docker-laravel` folder copy `.env.example` to `.env`.

Open `.env` and edit the contents.

### Run

##### Local

Run `docker-compose -f docker-compose.yml -f docker-compose.local.yml up -d --build`.

##### Production

Run `docker-compose up -d --build`.

### Stop

##### Local

Run `docker-compose -f docker-compose.yml -f docker-compose.local.yml down`.

##### Production

Run `docker-compose down`.

# Commands

`docker ps` to see list of containers.

`docker exec -it <name_of_container> bash` to ssh into container.

# Logs

You can view logs with docker `docker logs -f <container_name>`.





