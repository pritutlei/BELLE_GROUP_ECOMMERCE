CREATE DATABASE IF NOT EXISTS logistics;
USE logistics;

CREATE TABLE Shipments(
    shipment_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id VARCHAR(10) NOT NULL,
    courier VARCHAR(100) NOT NULL,
    tracking_number VARCHAR(100) NOT NULL,
    status VARCHAR(50) NOT NULL,

    FOREIGN KEY (order_id)
    REFERENCES orders.orders(order_id)
) ENGINE = InnoDB;

CREATE TABLE Delivery_Events(
    event_id INT AUTO_INCREMENT PRIMARY KEY,
    shipment_id INT NOT NULL,
    event VARCHAR(1000) NOT NULL,
    event_date DATETIME NOT NULL,

    FOREIGN KEY (shipment_id)
    REFERENCES Shipments(shipment_id)
) ENGINE = InnoDB;

INSERT INTO shipments VALUES
('SH001','O001','J&T Express','JT001234','Delivered'),
('SH002','O002','LBC','LBC002345','In Transit'),
('SH003','O003','Ninja Van','NV003456','Shipped');
 
INSERT INTO delivery_events VALUES
('DE001','SH001','Delivered','2026-09-04'),
('DE002','SH002','Arrived at Hub','2026-09-06'),
('DE003','SH003','Picked Up','2026-09-06');

select * from shipments;
select * from delivery_events;