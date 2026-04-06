# IT Ticketing System Database (Summit Ridge)

This project sets up a SQL database for an IT ticketing system using Docker. When the container starts, it automatically creates the tables and inserts sample data for Summit Ridge Clothing Company.

To run it:
docker compose up -d, 
docker start my_project_db                                

To connect:
docker exec -it my_project_db psql -U student -d projectdb

Check tables:
\dt

Example queries:
SELECT * FROM users;
SELECT * FROM tickets;
SELECT * FROM assets;
SELECT * FROM licenses;

To stop:
docker compose down -v

If you change SQL files, reset it:
docker compose down -v
docker compose up -d

Author: Alex Gilbert
