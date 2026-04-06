INSERT INTO department (deptID, deptName, deptAccess) VALUES
(1, 'IT Support', 'Full Access'),
(2, 'Human Resources', 'Limited Access'),
(3, 'Sales', 'Basic Access'),
(4, 'Warehouse', 'Basic Access'),
(5, 'Management', 'Full Access'),
(6, 'Customer Service', 'Limited Access'),
(7, 'Finance', 'Restricted Access');

INSERT INTO users (userID, userName, uemail, upass, deptID, activeStatus, startDate) VALUES
(101, 'Alex Gilbert', 'alex@summitridge.com', 'pass123', 1, 'Y', '2026-01-15'),
(102, 'Mia Carter', 'mia@summitridge.com', 'pass234', 2, 'Y', '2026-02-01'),
(103, 'Jordan Blake', 'jordan@summitridge.com', 'pass345', 1, 'Y', '2026-02-10'),
(104, 'Liam Turner', 'liam@summitridge.com', 'pass456', 3, 'Y', '2026-03-05'),
(105, 'Olivia Hayes', 'olivia@summitridge.com', 'pass567', 4, 'Y', '2026-03-10'),
(106, 'Noah Bennett', 'noah@summitridge.com', 'pass678', 5, 'Y', '2026-03-15'),
(107, 'Emma Brooks', 'emma@summitridge.com', 'pass789', 6, 'N', '2025-11-20');

INSERT INTO tickets (tID, ticketTitle, ticketDescription, priorityLevel, startDate, uGenerator, uAssigned) VALUES
(1001, 'POS system offline', 'Sales register system not responding in store.', 'High', '2026-04-01', 104, 103),
(1002, 'Email login issue', 'User cannot access company email.', 'Medium', '2026-04-02', 102, 101),
(1003, 'Printer jam warehouse', 'Warehouse printer jammed during shipping labels.', 'Low', '2026-04-03', 105, 103),
(1004, 'Inventory scanner not syncing', 'Scanner not updating stock system.', 'High', '2026-04-03', 105, 101),
(1005, 'VPN access request', 'New manager needs VPN access setup.', 'Medium', '2026-04-04', 106, 103),
(1006, 'Software install request', 'Need Adobe installed for design team.', 'Low', '2026-04-04', 101, 103),
(1007, 'Website outage', 'Company website temporarily down.', 'Critical', '2026-04-05', 107, 101);

INSERT INTO ticket_status (statusID, tID, statusName, statusDate) VALUES
(1, 1001, 'Open', '2026-04-01'),
(2, 1002, 'In Progress', '2026-04-02'),
(3, 1003, 'Open', '2026-04-03'),
(4, 1004, 'In Progress', '2026-04-03'),
(5, 1005, 'Open', '2026-04-04'),
(6, 1006, 'Closed', '2026-04-04'),
(7, 1007, 'Open', '2026-04-05');

INSERT INTO comments (cID, tID, userID, comment, commentDate) VALUES
(1, 1001, 103, 'Restarted POS system, still offline.', '2026-04-01'),
(2, 1002, 101, 'Reset email password and cleared cache.', '2026-04-02'),
(3, 1003, 103, 'Removed paper jam and tested printer.', '2026-04-03'),
(4, 1004, 101, 'Reconnected scanner to network.', '2026-04-03'),
(5, 1005, 103, 'VPN credentials created and sent.', '2026-04-04'),
(6, 1006, 103, 'Adobe installed successfully.', '2026-04-04'),
(7, 1007, 101, 'Investigating server downtime.', '2026-04-05');

INSERT INTO assets (assetID, assetName, assetType, serialNumber, purchaseDate, assetStatus, assignedTo, deptID) VALUES
(201, 'Dell Latitude 5440', 'Laptop', 'SR-LT-001', '2025-10-15', 'Assigned', 101, 1),
(202, 'HP LaserJet Pro', 'Printer', 'SR-PR-002', '2025-09-20', 'In Use', NULL, 4),
(203, 'Zebra Scanner X1', 'Scanner', 'SR-SC-003', '2025-12-05', 'Assigned', 105, 4),
(204, 'MacBook Pro', 'Laptop', 'SR-LT-004', '2025-11-01', 'Assigned', 104, 3),
(205, 'Cisco Router', 'Network', 'SR-NW-005', '2025-08-18', 'In Use', NULL, 1),
(206, 'iPhone 14', 'Mobile', 'SR-MB-006', '2025-12-10', 'Assigned', 106, 5),
(207, 'Desktop Workstation', 'Desktop', 'SR-DT-007', '2025-07-25', 'Available', NULL, 7);

INSERT INTO software_licenses (licenseID, softwareName, licenseKey, totalSeats, usedSeats, expirationDate, assignedTo, deptID) VALUES
(301, 'Microsoft Office 365', 'SR-OFF-12345', 100, 80, '2027-01-01', 101, 1),
(302, 'Adobe Creative Cloud', 'SR-ADB-23456', 25, 20, '2026-12-31', 104, 3),
(303, 'Jira Software', 'SR-JRA-34567', 50, 30, '2027-06-30', NULL, 1),
(304, 'Zoom Business', 'SR-ZOM-45678', 40, 28, '2026-11-15', 102, 2),
(305, 'Slack Enterprise', 'SR-SLK-56789', 60, 45, '2027-03-20', NULL, 6),
(306, 'QuickBooks', 'SR-QBK-67890', 20, 15, '2026-09-10', 107, 7),
(307, 'AutoCAD', 'SR-AUT-78901', 15, 10, '2027-05-05', 103, 1);