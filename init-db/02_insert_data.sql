INSERT INTO departments (department_name, location) VALUES
('IT', 'Corporate HQ'),
('Marketing', 'Corporate HQ'),
('Finance', 'Corporate HQ'),
('Retail Downtown', 'Downtown Store'),
('Retail Uptown', 'Uptown Store'),
('Retail Eastside', 'Eastside Store');

INSERT INTO users (full_name, email, role, department_id) VALUES
('Marcus Leo', 'marcus.leo@summitridge.com', 'admin', 1),
('Jordan Lee', 'jordan.lee@summitridge.com', 'it_technician', 1),
('Sarah Kim', 'sarah.kim@summitridge.com', 'it_technician', 1),
('Priya Sharma', 'priya.sharma@summitridge.com', 'it_manager', 1),
('David Nguyen', 'david.nguyen@summitridge.com', 'employee', 2),
('Emily Torres', 'emily.torres@summitridge.com', 'employee', 4),
('Carlos Brown', 'carlos.brown@summitridge.com', 'employee', 5),
('Lisa Chen', 'lisa.chen@summitridge.com', 'employee', 4),
('Brace Patel', 'brace.patel@summitridge.com', 'employee', 3),
('Nina Watson', 'nina.watson@summitridge.com', 'employee', 6);

INSERT INTO categories (category_name) VALUES
('POS System'),
('Hardware'),
('Software'),
('Network'),
('Other');

INSERT INTO tickets (title, description, category_id, priority, status, submitted_by, assigned_to, store_location, device_type, device_id, resolution_note) VALUES
('POS Terminal Down – Register 3','Register 3 at the downtown store is not turning on.',1,'Critical','Closed',6,2,'Downtown Store','POS Terminal','POS-DT-003','Power supply replaced.'),
('Laptop Cannot Connect to VPN','Cannot connect to VPN.',4,'High','Resolved',5,3,'Corporate HQ','Laptop','LT-HQ-021','VPN updated.'),
('Barcode Scanner Not Reading','Scanner not reading.',2,'High','In Progress',7,2,'Uptown Store','Scanner','SCAN-UP-002',NULL),
('Microsoft Office License Expired','Office expired.',3,'Medium','Open',9,NULL,'Corporate HQ','Laptop','LT-HQ-045',NULL),
('Printer Offline','Printer offline.',2,'Medium','Pending',10,3,'Eastside Store','Printer','PRT-ES-001',NULL),
('Password Reset','Locked out.',5,'Low','Closed',8,2,'Downtown Store',NULL,NULL,'Reset done.'),
('Network Outage','No internet.',4,'Critical','In Progress',7,3,'Uptown Store',NULL,NULL,NULL),
('New Hire Laptop Setup','Setup laptop.',3,'Medium','Open',5,NULL,'Corporate HQ','Laptop',NULL,NULL);

INSERT INTO ticket_status (ticket_id, changed_by, old_status, new_status) VALUES
(1,6,NULL,'Open'),
(1,2,'Open','In Progress'),
(1,2,'In Progress','Resolved'),
(1,4,'Resolved','Closed');

INSERT INTO comments (ticket_id, user_id, comment_text, is_internal) VALUES
(1,2,'Power issue confirmed.',TRUE),
(1,6,'Thanks!',FALSE),
(2,3,'VPN fixed.',TRUE);

INSERT INTO assets (asset_name, device_type, make_model, serial_number, purchase_date, warranty_expiry, assigned_to, store_location, status) VALUES
('POS-DT-001','POS Terminal','Epson','SN1','2021-01-01','2024-01-01',6,'Downtown Store','Active'),
('SCAN-UP-002','Scanner','Zebra','SN2','2022-01-01','2025-01-01',7,'Uptown Store','In Repair');

INSERT INTO licenses (software_name, vendor, license_key, total_seats, seats_in_use, expiry_date, purchased_date, notes) VALUES
('Microsoft 365','Microsoft','KEY1',50,47,'2024-08-31','2023-09-01','Renew soon'),
('Adobe CC','Adobe','KEY2',10,6,'2025-01-15','2024-01-15','Marketing use');