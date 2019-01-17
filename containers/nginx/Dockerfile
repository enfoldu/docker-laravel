ARG version
FROM nginx:${version}

ADD ./containers/nginx/config/nginx.conf /etc/nginx/
ADD ./containers/nginx/config/default.conf /etc/nginx/conf.d/

ARG working_dir
ADD ./application ${working_dir}