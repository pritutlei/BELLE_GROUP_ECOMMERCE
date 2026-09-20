CREATE DATABASE IF NOT EXISTS merchant;
USE merchant;

CREATE TABLE merchants(
    merchant_id INT AUTO_INCREMENT PRIMARY KEY,
    merchant_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    status VARCHAR(50) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE merchant_products(
    merchant_product_id INT AUTO_INCREMENT PRIMARY KEY,
    merchant_id INT NOT NULL,
    product_id VARCHAR(10) NOT NULL,
    selling_price DECIMAL(10, 2) NOT NULL,

    FOREIGN KEY (merchant_id)
    REFERENCES merchants(merchant_id),
    FOREIGN KEY (product_id)
    REFERENCES product.Products(product_id)
) ENGINE = InnoDB;

CREATE TABLE payouts(
    payout_id INT AUTO_INCREMENT PRIMARY KEY,
    merchant_id INT NOT NULL,
    payout_amount DECIMAL(10, 2) NOT NULL,
    payout_date DATETIME NOT NULL,

    FOREIGN KEY (merchant_id)
    REFERENCES merchants(merchant_id)
) ENGINE = InnoDB;

INSERT INTO merchants VALUES
('M001','TechHub PH','techhub@example.com','Active'),
('M002','Fashion World','fashion@example.com','Active'),
('M003','Home Essentials','home@example.com','Active');
 
INSERT INTO merchant_products VALUES
('MP001','M001','P001',1999),
('MP002','M002','P002',2499),
('MP003','M003','P003',3999);
 
INSERT INTO payouts VALUES
('PO001','M001',18750,'2026-09-05'),
('PO002','M002',22500,'2026-09-06'),
('PO003','M003',15000,'2026-09-07');

select * from merchants;
select * from merchant_products;
select * from payouts;