CREATE DATABASE IF NOT EXISTS analytics;
USE analytics;

CREATE TABLE Daily_sales (
    sales_id     varchar(10) primary key,
    sales_date   date not null,
    total_orders int not null check (total_orders >= 0),
    total_sales  decimal(12,2) not null check (total_sales >= 0)
) ENGINE = InnoDB;
 
CREATE TABLE Product_performance (
    performance_id varchar(10) primary key,
    product_id     varchar(10) not null,
    units_sold     int not null check (units_sold >= 0),
    revenue        decimal(12,2) not null check (revenue >= 0),
        FOREIGN KEY (product_id) 
        REFERENCES product.Products(product_id)
) ENGINE = InnoDB;

INSERT INTO daily_sales VALUES 
('DS001', '2026-09-01', 125, 185500.00),
('DS002', '2026-09-02', 143, 210750.00),
('DS003', '2026-09-03', 167, 245300.00);
 
INSERT INTO product_performance VALUES 
('PP001', 'P001', 85, 169915.00),
('PP002', 'P002', 64, 159936.00),
('PP003', 'P003', 42, 167958.00);

select * from daily_sales;
select * from product_performance;