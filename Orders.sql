CREATE DATABASE IF NOT EXISTS orders;
USE orders;

CREATE TABLE orders (
    order_id     VARCHAR(10) PRIMARY KEY,
    customer_id  VARCHAR(10) NOT NULL,  
    order_date   DATE NOT NULL,
    status       VARCHAR(20) NOT NULL,  
    total_amount DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer.Customers(customer_id)
) ENGINE = InnoDB;
 
CREATE TABLE order_items (
    order_item_id VARCHAR(10) PRIMARY KEY,
    order_id      VARCHAR(10) NOT NULL,
    product_id    VARCHAR(10) NOT NULL,  
    quantity      INT NOT NULL CHECK (quantity > 0),
    unit_price    DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES product.Products(product_id)
) ENGINE = InnoDB;

INSERT INTO orders VALUES
('O001','CU001','2026-09-01','Delivered',1999),
('O002','CU002','2026-09-03','Processing',2499),
('O003','CU003','2026-09-05','Shipped',3999);
 
INSERT INTO order_items VALUES
('OI001','O001','P001',1,1999),
('OI002','O002','P002',1,2499),
('OI003','O003','P003',1,3999);

select * from orders;
select * from order_items;