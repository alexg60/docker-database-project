# IT Ticketing System Database (Summit Ridge)
## IS 436 -- Team Beacon

## Project Overview
This project sets up a SQL database for the Summit Ridge Clothing Company IT ticketing system using Docker. When the container starts, it automatically creates the tables and inserts sample data.

## Database Tables
- **departments** - Company departments and their store or office location
- **users** - All system users including employees, IT technicians, managers, and admins
- **categories** - Ticket categories such as POS System, Hardware, Software, Network, and Other
- **tickets** - IT support tickets submitted by employees
- **ticket_status** - Full history of every status change made on a ticket
- **comments** - Comments added to tickets by employees or IT staff
- **assets** - Hardware asset inventory across all store locations
- **licenses** - Software license tracking with seat counts and expiry dates

### How to Start
```
docker compose up -d, 
docker start my_project_db
```                              

### How to Connect
```
docker exec -it my_project_db psql -U student -d projectdb
```

### Check Tables
```
\dt
```

### Example Queries
```
SELECT * FROM users;
SELECT * FROM tickets;
SELECT * FROM assets;
SELECT * FROM licenses;
```

### How to Stop
```
docker compose down -v
```

### If You Change the SQL Files, Reset With
```
docker compose down -v
docker compose up -d
```

## Team Members
- Aleesha Iqbal: Project Manager
- Alex Gilbert: Quality Assurance & Development
- Tran Hoang: UI/UX
- Ore Faluyi: Database Engineer
- Quan Tran: Business Analyst
