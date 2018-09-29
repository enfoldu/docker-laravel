# docker-laravel
Docker for local development of a laravel project.

## Install

Cd into your project folder and run `git submodule add https://github.com/enfoldu/docker-laravel.git`.

## Setup

Cd into `docker-laravel` folder.

Copy `.env.example` to `.env` in the same directory.

Open up `.env` and edit.

## Run

Run `docker-compose up -d` to begin.

## Commands

`docker ps` to see list of containers.

`docker exec -it <name_of_container> bash` to ssh into container.

