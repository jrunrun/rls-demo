# PostgreSQL RLS Demo

## Overview

This repository contains a Docker setup for a PostgreSQL database demonstration, focusing on Row-Level Security (RLS). It uses PostgreSQL 10 and sets up a containerized environment for easy development and testing.

## Steps

1. **Prerequisites**
   - Ensure Docker Desktop is installed from [here](https://www.docker.com/products/docker-desktop/). This includes Docker Engine, Docker CLI and Docker Compose.
   - Download DBeaver Community Edition from [here](https://dbeaver.io/download/) to explore the database.
   - Download pgAdmin from [here](https://www.pgadmin.org/download/) to explore the database.
   - Download Tableau from [here](https://www.tableau.com/products/desktop/download) to view the dashboards.

2. **Setup**
   - Clone this repository to your local machine.
   - Navigate to the project directory.

3. **Configuration**
   - Review the `docker-compose.yml` file.
   - Modify the `POSTGRES_PASSWORD` in the environment section if needed.

4. **Start the Database**
   - Run the following command to start the PostgreSQL container:
     ```
     docker-compose up -d
     ```

5. **Access the Database**
   - The PostgreSQL server will be accessible on localhost:5432
   - Use the following credentials:
     - Username: postgres
     - Password: yourPassword (or the password you set)

6. **Database Initialization**
   - Any SQL files placed in the `./db-bkp` directory will be automatically executed when the container starts.

7. **Data Persistence**
   - PostgreSQL data is persisted in the `./postgres/data` directory.
   - Note: Running `docker-compose up --build` will recreate the container and may reset the database to its initial state if data is not properly persisted in a named volume. To preserve data across rebuilds, ensure you're using a named volume in your `docker-compose.yml` file. If you intentionally want to reset the database, use `docker-compose down -v` followed by `docker-compose up --build`.

8. **Stopping the Database**
   - To stop the container, run:
     ```
     docker-compose down
     ```

9. **View Dashboards**
   - Open the Tableau workbook in the `workbook` directory to view the dashboards filtered by RLS.

10. **Additional Documentation**
    - Read the RLS slide deck and whitepaper in the `docs` directory for more detailed information about the project.
