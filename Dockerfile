FROM postgres:10

# WORKDIR /usr/workspace
USER postgres
ADD ./rls-example/data-dump/Row-Level-Security-Example-PostgreSQL-Database-Dump /usr/workspace/Row-Level-Security-Example-PostgreSQL-Database-Dump
ADD ./rls-example/data-dump/restore.sh /docker-entrypoint-initdb.d/restore.sh
ENTRYPOINT ["docker-entrypoint.sh"]
EXPOSE 5432
# CMD ["postgres"]