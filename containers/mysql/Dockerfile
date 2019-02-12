ARG version
FROM mysql:${version}

# Variables
ARG db_database
ARG db_user
ARG db_password
ARG db_root_password
ARG db_port
ARG db_storage

# Set MySQL connection credentials.
ENV MYSQL_DATABASE=${db_database}
ENV MYSQL_USER=${db_user}
ENV MYSQL_PASSWORD=${db_password}
ENV MYSQL_ROOT_PASSWORD=${db_root_password}

COPY ./containers/mysql/config/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf

RUN sed -i "s|{DB_STORAGE}|${db_storage}|g" /etc/mysql/mysql.conf.d/mysqld.cnf

#RUN zcat /docker-entrypoint-initdb.d/database.sql.gz | mysql -u user -ppass itovi_dev

WORKDIR /etc/mysql

EXPOSE ${db_port}

CMD ["mysqld"]