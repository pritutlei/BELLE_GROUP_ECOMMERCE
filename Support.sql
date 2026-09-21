CREATE DATABASE IF NOT EXISTS support;
USE support;

CREATE TABLE Tickets(
    ticket_id varchar(10) primary key,
    customer_id VARCHAR(10) NOT NULL,
    subject VARCHAR(255) NOT NULL,
    priority VARCHAR(50) NOT NULL,
    status VARCHAR(50) NOT NULL,

    FOREIGN KEY (customer_id)
    REFERENCES customer.Customers(customer_id)
) ENGINE = InnoDB;

CREATE TABLE Conversations(
    conversation_id varchar(10) primary key,
    ticket_id varchar(10) NOT NULL,
    message VARCHAR(1000) NOT NULL,
    sender VARCHAR(100) NOT NULL,

    FOREIGN KEY (ticket_id)
    REFERENCES Tickets(ticket_id)
) ENGINE = InnoDB;

CREATE TABLE Resolutions(
    resolution_id varchar(10) primary key,
    ticket_id varchar(10) NOT NULL,
    resolution VARCHAR(1000) NOT NULL,
    resolved_by VARCHAR(100) NOT NULL,

    FOREIGN KEY (ticket_id)
    REFERENCES Tickets(ticket_id)
) ENGINE = InnoDB;

INSERT INTO tickets VALUES
('T001','CU001','Missing Item','High','Open'),
('T002','CU002','Payment concern','Medium','Resolved'),
('T003','CU003','Delivery delay','High','In Progress');
 
INSERT INTO conversations VALUES
('CV001','T001','My order is incomplete','Customer'),
('CV002','T002','Payment was deducted twice','Customer'),
('CV003','T003','My package has not arrived','Customer');

INSERT INTO resolutions VALUES
('R001','T001','Missing item will be shipped','garcia.kevin'),
('R002','T002','Duplicate payment refunded','garcia.kevin'),
('R003','T003','Shipment escalated to courier','garcia.kevin');

select * from tickets;
select * from conversations;
select * from resolutions;