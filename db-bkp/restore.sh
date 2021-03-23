#!/bin/bash

# su - postgres

# https://www.postgresql.org/docs/devel/app-pgrestore.html
# pg_restore -C -d <dbName> <dumpName>
# -C Create the database before restoring into it.

pg_restore -C -d postgres /docker-entrypoint-initdb.d/Row-Level-Security-Example-PostgreSQL-Database-Dump


