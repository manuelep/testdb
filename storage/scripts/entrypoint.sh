#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "postgres" <<-EOSQL
    CREATE USER ${DBUSERNAME} WITH PASSWORD '${DBUSERPASSWORD}';
	CREATE DATABASE ${DBNAME};
EOSQL

psql -v ON_ERROR_STOP=1 --username "postgres" -d ${DBNAME} <<-EOSQL
    CREATE EXTENSION postgis;
EOSQL
