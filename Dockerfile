FROM postgres:10

WORKDIR /usr/workspace

ADD Row-Level-Security-Example-PostgreSQL-Database-Dump /usr/workspace/

# ADD text.sh /usr/workspace/

ADD restore.sh /docker-entrypoint-initdb.d

# RUN pg_restore -C -d postgres /usr/workspace/Row-Level-Security-Example-PostgreSQL-Database-Dump

# RUN psql dbname < Row-Level-Security-Example-PostgreSQL-Database-Dump


 
# docker run -e POSTGRES_PASSWORD=yourPassword <container_id>
# The files belonging to this database system will be owned by user "postgres".

# Success. You can now start the database server using:
# pg_ctl -D /var/lib/postgresql/data -l logfile start

# New Steps:
# 1. docker build .
# 2. docker tag <image_id> jcraycraft/rls-demo-3:latest
# 3. docker run -e POSTGRES_PASSWORD=yourPassword -d -p 5432:5432 jcraycraft/rls-demo-3:latest
# 4. connect via Tableau DT


# STEPS:

# 1) docker build . 
# builds docker image from Dockerfile

# 2) docker tag e78d1659ffde jcraycraft/rls-demo:latest
# 2) docker tag <image_id> jcraycraft/rls-demo:latest
# names docker image 

# 3a) docker run -e POSTGRES_PASSWORD=yourPassword jcraycraft/rls-demo:latest
# 3a) docker run -e POSTGRES_PASSWORD=yourPassword jcraycraft/rls-demo:latest
# runs processes in isolated container; the container is derived from image

# OR 

# 3a) docker run -e POSTGRES_PASSWORD=yourPassword e78d1659ffde  
# 3a) docker run -e POSTGRES_PASSWORD=yourPassword <image_id>
# runs processes in isolated container; the container is derived from image

# 3b) docker ps -a
# shows all containers and metadata (including <container_id>, <container_name>)

# 4) docker exec -it 75215e2451a7 bash
# 4) docker exec -it <container_id> bash
# runs a new command (bash) in a running container

# OR

# 4) docker exec -it flamboyant_elbakyan bash
# 4) docker exec -it <container_name> bash
# runs a new command (bash) in a running container

# 5a) su - postgres
# 5b) cd /usr/workspace/
# 5c) pg_restore -C -d postgres Row-Level-Security-Example-PostgreSQL-Database-Dump
# 5d) psql -h localhost -p 5432 -U postgres -W

# 6a) \l 
# psql command to list all databases (returns list of <db_name>)

# 6b) \c <db_name>
# psql command to connect to database using <db_name>

# 6c) \dt
# psql command to list all database tables (returns list <table_name>)

# 6d) select count(*) from <table_name>;
# psql command to list all databases



# (base) ➜  rls-demo git:(get-postgres-running-in-docker) ✗ docker run -e POSTGRES_PASSWORD=yourPassword jcraycraft/rls-demo:latest

# 2) docker run -e POSTGRES_PASSWORD=yourPassword e78d1659ffde  
# 2) docker run -e POSTGRES_PASSWORD=yourPassword <image_id>

# 3) docker exec -it 75215e2451a7 bash
# 3) docker exec -it <container_id> bash
# switch user to postgres
# su - postgres
# cd /usr/workspace/
# pg_restore -C -d postgres Row-Level-Security-Example-PostgreSQL-Database-Dump
# psql -h localhost -p 5432 -U postgres -W

# psql command to list all databases (returns list of <db_name>)
# \l 

# psql command to connect to database using <db_name>
# \c <db_name>

# psql command to list all database tables (returns list <table_name>)
# \dt

# psql command to list all databases
# select count(*) from <table_name>;



# docker ps -a
# (base) ➜  rls-demo git:(get-postgres-running-in-docker) docker exec -it 248b1d1edf2a bash
# root@248b1d1edf2a:/usr/workspace# ls
# Row-Level-Security-Example-PostgreSQL-Database-Dump
# root@248b1d1edf2a:/usr/workspace# psql -U testuser testdb < Row-Level-Security-Example-PostgreSQL-Database-Dump
# The input is a PostgreSQL custom-format dump.
# Use the pg_restore command-line client to restore this dump to a database.



# show all the running and exited containers (returns list of <container_id>)
# docker ps -a 

# connect to container via bash
# docker exec -it <container_id> bash

# switch user to postgres
# su - postgres

# change dir to working directory defined in Dockerfile
# cd /usr/workspace/

# restore db from dump (dump is named "Row-Level-Security-Example-PostgreSQL-Database-Dump")
# pg_restore -C -d postgres Row-Level-Security-Example-PostgreSQL-Database-Dump

# connect to PostgresSQL database using psql CLI (user=postgres, host=localhost, port=5432)
# psql -h localhost -p 5432 -U postgres -W

# psql command to list all databases (returns list of <db_name>)
# \l 

# psql command to connect to database using <db_name>
# \c <db_name>

# psql command to list all database tables (returns list <table_name>)
# \dt

# psql command to list all databases
# select count(*) from <table_name>;

# psql command to list all databases



# Important Notes: 

# Directory where postgres lives
# /var/lib/postgresql/data is the 

# Directory where postgres stuff lives
# https://stackoverflow.com/questions/31249112/allow-docker-container-to-connect-to-a-local-host-postgres-database

# installing vim/vi
# https://stackoverflow.com/questions/31515863/how-to-run-vi-on-docker-container


# docker run --name RiohRoweDB -e POSTGRES_PASSWORD=Charlie -d -p 5432:5432 postgres

# docker run --name entitlements -e POSTGRES_PASSWORD=yourPassword -d -p 5432:5432 postgres


# example docker run with command
# docker run --rm -t --shm-size="512m" jcraycraft/teds-monitor:latest python monitor.py