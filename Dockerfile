FROM postgres:10

WORKDIR /usr/workspace

ADD Row-Level-Security-Example-PostgreSQL-Database-Dump /usr/workspace/

# RUN psql dbname < Row-Level-Security-Example-PostgreSQL-Database-Dump


 
