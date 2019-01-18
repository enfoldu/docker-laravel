ARG version_tag
FROM nginx:${version_tag}

ADD ./containers/nginx/config/nginx.conf /etc/nginx/
ADD ./containers/nginx/config/default.conf /etc/nginx/conf.d/