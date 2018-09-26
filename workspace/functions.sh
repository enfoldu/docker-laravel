#!/usr/bin/env bash

## Import database
mysql_import() {
pv /tmp/mysql/database.sql.gz | gunzip | mysql --host=$1 --user=$2 --password=$3 itovi_dev
}