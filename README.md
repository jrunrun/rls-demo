# rls-demo

7. **Data Persistence**
   - PostgreSQL data is persisted in the `./postgres/data` directory.
   - Note: Running `docker-compose up --build` will recreate the container and may reset the database to its initial state if data is not properly persisted in a named volume. To preserve data across rebuilds, ensure you're using a named volume in your `docker-compose.yml` file. If you intentionally want to reset the database, use `docker-compose down -v` followed by `docker-compose up --build`.

8. **Stopping the Database**
   - To stop the container, run:
     ```
     docker-compose down
     ```
