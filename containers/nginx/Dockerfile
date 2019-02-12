ARG version_tag
FROM nginx:${version_tag}

COPY ./containers/nginx/config/nginx.conf /etc/nginx/nginx.conf
COPY ./containers/nginx/config/default.conf /etc/nginx/conf.d/default.conf

ARG nginx_port
ARG working_dir
ARG php_port
ARG php_container
ARG max_file_size

# Set variables in default.conf.
RUN sed -i "s|{NGINX_PORT}|${nginx_port}|g" /etc/nginx/conf.d/default.conf \
    && sed -i "s|{WORKING_DIRECTORY}|${working_dir}|g" /etc/nginx/conf.d/default.conf \
    && sed -i "s|{PHP_PORT}|${php_port}|g" /etc/nginx/conf.d/default.conf \
    && sed -i "s|{PHP_CONTAINER}|${php_container}|g" /etc/nginx/conf.d/default.conf \
    && sed -i "s|{MAX_FILE_SIZE}|${max_file_size}|g" /etc/nginx/conf.d/default.conf