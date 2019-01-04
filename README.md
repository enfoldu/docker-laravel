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

## Commands

`docker ps` to see list of containers.

`docker exec -it <name_of_container> bash` to ssh into container.

