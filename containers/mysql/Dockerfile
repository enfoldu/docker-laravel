ARG version
FROM mysql:${version}

# Variables
ARG db_database
ARG db_user
ARG db_password
ARG db_root_password

# Set MySQL connection credentials.
ENV MYSQL_DATABASE=${db_database}
ENV MYSQL_USER=${db_user}
ENV MYSQL_PASSWORD=${db_password}
ENV MYSQL_ROOT_PASSWORD=${db_root_password}

ADD ./containers/mysql/config/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf

#RUN zcat /docker-entrypoint-initdb.d/database.sql.gz | mysql -u user -ppass itovi_dev

WORKDIR /etc/mysql

CMD ["mysqld"]