CREATE DATABASE IF NOT EXISTS customer;
USE customer;

CREATE TABLE Customers(
    customer_id varchar(10) primary key,
    First_name varchar(100) not null,
    Last_name varchar(100) not null,
    Email varchar(50) not null
) ENGINE = InnoDB;

CREATE TABLE Addresses (
    address_id    varchar(10),
    customer_id   varchar(10),
    city          varchar(50),
    province      varchar(50),

    PRIMARY KEY (address_id, customer_id),
    FOREIGN KEY (customer_id) 
    REFERENCES Customers(customer_id)
    ON DELETE CASCADE
) ENGINE = InnoDB;

CREATE TABLE Loyalty_points (
    loyalty_id    varchar(10) primary key,
    customer_id   varchar(10) not null,
    points        int not null default 0,
    tier          varchar(20),

        FOREIGN KEY (customer_id) 
        REFERENCES Customers(customer_id)
        ON DELETE CASCADE
    ) ENGINE = InnoDB;

INSERT INTO customers VALUES
('CU001','Elena','Flores','elena@example.com'),
('CU002','Mark','Santos','mark@example.com'),
('CU003','Angela','Cruz','angela@example.com');
 
INSERT INTO addresses VALUES
('A001','CU001','Olongapo','Zambales'),
('A002','CU002','Angeles','Pampanga'),
('A003','CU003','Quezon City','Metro Manila');
 
INSERT INTO loyalty_points VALUES
('LP001','CU001',1250,'Gold'),
('LP002','CU002',650,'Silver'),
('LP003','CU003',2300,'Platinum');

select * from customers;
select * from addresses;
select * from loyalty_points;