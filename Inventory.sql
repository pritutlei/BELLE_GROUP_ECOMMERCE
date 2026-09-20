CREATE DATABASE IF NOT EXISTS inventory;
USE inventory;

CREATE TABLE warehouses (
    warehouse_id   VARCHAR(10) PRIMARY KEY,
    warehouse_name VARCHAR(100) NOT NULL,
    location       VARCHAR(100) NOT NULL
) ENGINE = InnoDB;
 
CREATE TABLE stock_levels (
    stock_id     VARCHAR(10) PRIMARY KEY,
    product_id   VARCHAR(10) NOT NULL,  
    warehouse_id VARCHAR(10) NOT NULL,
    quantity     INT NOT NULL DEFAULT 0 CHECK (quantity >= 0),
    FOREIGN KEY (warehouse_id) REFERENCES warehouses(warehouse_id),
    FOREIGN KEY (product_id) REFERENCES product.Products(product_id)
) ENGINE = InnoDB;
 
CREATE TABLE stock_movements (
    movement_id   VARCHAR(10) PRIMARY KEY,
    product_id    VARCHAR(10) NOT NULL, 
    movement_type ENUM('IN','OUT') NOT NULL,
    quantity      INT NOT NULL CHECK (quantity > 0),
    FOREIGN KEY (product_id) REFERENCES product.Products(product_id)
) ENGINE = InnoDB;

INSERT INTO warehouses VALUES
('WH001','BGE Central Warehouse','Olongapo'),
('WH002','BGE Manila Warehouse','Manila'),
('WH003','BGE Cebu Warehouse','Cebu');
 
INSERT INTO stock_levels VALUES
('ST001','P001','WH001',120),
('ST002','P002','WH002',85),
('ST003','P003','WH003',60);
 
INSERT INTO stock_movements VALUES
('SM001','P001','IN',50),
('SM002','P002','OUT',15),
('SM003','P003','IN',30);

select * from warehouses;
select * from stock_levels;
select * from stock_movements;