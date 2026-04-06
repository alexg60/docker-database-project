CREATE TABLE departments (
   department_id SERIAL PRIMARY KEY,
   department_name VARCHAR(100) NOT NULL UNIQUE,
   location VARCHAR(100)
);

CREATE TABLE users (
   user_id SERIAL PRIMARY KEY,
   full_name VARCHAR(100) NOT NULL,
   email VARCHAR(100) NOT NULL UNIQUE,
   role VARCHAR(20) NOT NULL CHECK (role IN ('employee', 'it_technician', 'it_manager', 'admin')),
   department_id INT,
   is_active BOOLEAN DEFAULT TRUE,
   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE categories (
   category_id SERIAL PRIMARY KEY,
   category_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE tickets (
   ticket_id SERIAL PRIMARY KEY,
   title VARCHAR(200) NOT NULL,
   description TEXT NOT NULL,
   category_id INT NOT NULL,
   priority VARCHAR(20) NOT NULL CHECK (priority IN ('Low', 'Medium', 'High', 'Critical')),
   status VARCHAR(20) NOT NULL DEFAULT 'Open' CHECK (status IN ('Open', 'In Progress', 'Pending', 'Resolved', 'Closed')),
   submitted_by INT NOT NULL,
   assigned_to INT,
   store_location VARCHAR(100),
   device_type VARCHAR(100),
   device_id VARCHAR(100),
   resolution_note TEXT,
   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   closed_at TIMESTAMP,
   FOREIGN KEY (category_id) REFERENCES categories(category_id),
   FOREIGN KEY (submitted_by) REFERENCES users(user_id),
   FOREIGN KEY (assigned_to) REFERENCES users(user_id)
);

CREATE TABLE ticket_status (
   status_id SERIAL PRIMARY KEY,
   ticket_id INT NOT NULL,
   changed_by INT NOT NULL,
   old_status VARCHAR(20),
   new_status VARCHAR(20) NOT NULL,
   changed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   FOREIGN KEY (ticket_id) REFERENCES tickets(ticket_id),
   FOREIGN KEY (changed_by) REFERENCES users(user_id)
);

CREATE TABLE comments (
   comment_id SERIAL PRIMARY KEY,
   ticket_id INT NOT NULL,
   user_id INT NOT NULL,
   comment_text TEXT NOT NULL,
   is_internal BOOLEAN DEFAULT FALSE,
   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   FOREIGN KEY (ticket_id) REFERENCES tickets(ticket_id),
   FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE assets (
   asset_id SERIAL PRIMARY KEY,
   asset_name VARCHAR(100) NOT NULL UNIQUE,
   device_type VARCHAR(50) NOT NULL CHECK (device_type IN ('Laptop', 'POS Terminal', 'Tablet', 'Scanner', 'Printer', 'Other')),
   make_model VARCHAR(100),
   serial_number VARCHAR(100) UNIQUE,
   purchase_date DATE,
   warranty_expiry DATE,
   assigned_to INT,
   store_location VARCHAR(100),
   status VARCHAR(20) DEFAULT 'Active' CHECK (status IN ('Active', 'In Repair', 'Retired', 'Missing')),
   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   FOREIGN KEY (assigned_to) REFERENCES users(user_id)
);

CREATE TABLE licenses (
   license_id SERIAL PRIMARY KEY,
   software_name VARCHAR(150) NOT NULL,
   vendor VARCHAR(100),
   license_key VARCHAR(200),
   total_seats INT DEFAULT 1,
   seats_in_use INT DEFAULT 0,
   expiry_date DATE,
   purchased_date DATE,
   notes TEXT,
   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);