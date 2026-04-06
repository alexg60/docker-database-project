CREATE TABLE department (
    deptID INT PRIMARY KEY,
    deptName VARCHAR(40) NOT NULL,
    deptAccess VARCHAR(30)
);

CREATE TABLE users (
    userID INT PRIMARY KEY,
    userName VARCHAR(50) NOT NULL,
    uemail VARCHAR(100) NOT NULL UNIQUE,
    upass VARCHAR(100) NOT NULL,
    deptID INT,
    activeStatus CHAR(1) DEFAULT 'Y' CHECK (activeStatus IN ('Y','N')),
    startDate DATE,
    FOREIGN KEY (deptID) REFERENCES department(deptID)
);

CREATE TABLE tickets (
    tID INT PRIMARY KEY,
    ticketTitle VARCHAR(100) NOT NULL,
    ticketDescription TEXT,
    priorityLevel VARCHAR(20),
    startDate DATE,
    uGenerator INT,
    uAssigned INT,
    FOREIGN KEY (uGenerator) REFERENCES users(userID),
    FOREIGN KEY (uAssigned) REFERENCES users(userID)
);

CREATE TABLE ticket_status (
    statusID INT PRIMARY KEY,
    tID INT NOT NULL,
    statusName VARCHAR(20) NOT NULL,
    statusDate DATE,
    FOREIGN KEY (tID) REFERENCES tickets(tID)
);

CREATE TABLE comments (
    cID INT PRIMARY KEY,
    tID INT NOT NULL,
    userID INT NOT NULL,
    comment TEXT NOT NULL,
    commentDate DATE,
    FOREIGN KEY (tID) REFERENCES tickets(tID),
    FOREIGN KEY (userID) REFERENCES users(userID)
);

CREATE TABLE assets (
    assetID INT PRIMARY KEY,
    assetName VARCHAR(100) NOT NULL,
    assetType VARCHAR(50),
    serialNumber VARCHAR(100) UNIQUE,
    purchaseDate DATE,
    assetStatus VARCHAR(30),
    assignedTo INT,
    deptID INT,
    FOREIGN KEY (assignedTo) REFERENCES users(userID),
    FOREIGN KEY (deptID) REFERENCES department(deptID)
);

CREATE TABLE software_licenses (
    licenseID INT PRIMARY KEY,
    softwareName VARCHAR(100) NOT NULL,
    licenseKey VARCHAR(100) NOT NULL,
    totalSeats INT,
    usedSeats INT,
    expirationDate DATE,
    assignedTo INT,
    deptID INT,
    FOREIGN KEY (assignedTo) REFERENCES users(userID),
    FOREIGN KEY (deptID) REFERENCES department(deptID)
);