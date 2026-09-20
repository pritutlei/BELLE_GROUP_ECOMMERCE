CREATE DATABASE IF NOT EXISTS payment;
USE payment;

CREATE TABLE payments (
    payment_id   VARCHAR(10) PRIMARY KEY,
    order_id     VARCHAR(10) NOT NULL,   
    payment_date DATE NOT NULL,
    amount       DECIMAL(10,2) NOT NULL,
    status       VARCHAR(20) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders.orders(order_id)
) ENGINE = InnoDB;
 
CREATE TABLE refunds (
    refund_id     VARCHAR(10) PRIMARY KEY,
    payment_id    VARCHAR(10) NOT NULL,
    refund_amount DECIMAL(10,2) NOT NULL,
    reason        VARCHAR(100),
    FOREIGN KEY (payment_id) REFERENCES payments(payment_id)
) ENGINE = InnoDB;

INSERT INTO payments VALUES
('PAY001','O001','2026-09-01',1999,'Completed'),
('PAY002','O002','2026-09-03',2499,'Completed'),
('PAY003','O003','2026-09-05',3999,'Completed');
 
INSERT INTO refunds VALUES
('RF001','PAY001',500,'Partial refund'),
('RF002','PAY002',2499,'Customer cancellation'),
('RF003','PAY003',1000,'Damaged item');

select * from payments;
select * from refunds;