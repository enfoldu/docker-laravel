ARG version
FROM mysql:${version}

ADD ./containers/mysql/config/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
ADD ./containers/mysql/data /var/lib/mysql

#RUN zcat /docker-entrypoint-initdb.d/database.sql.gz | mysql -u user -ppass itovi_dev