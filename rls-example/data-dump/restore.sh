#!/bin/bash

su - postgres

cd /usr/workspace/

# https://www.postgresql.org/docs/devel/app-pgrestore.html
# pg_restore -C -d <dbName> <dumpName>
# -C Create the database before restoring into it.

pg_restore -C -d postgres Row-Level-Security-Example-PostgreSQL-Database-Dump


