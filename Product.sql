CREATE DATABASE IF NOT EXISTS product;
USE product;

CREATE TABLE Categories (
    category_id    varchar(10) primary key,
    category_name  varchar(50) not null,
    description    varchar(255)
) ENGINE = InnoDB;
 
CREATE TABLE Brands (
    brand_id      varchar(10) primary key,
    brand_name    varchar(50) not null,
    country       varchar(50)
) ENGINE = InnoDB;
 
CREATE TABLE Products (
    product_id    varchar(10) primary key,
    product_name  varchar(100) not null,
    category_id   varchar(10),
    brand_name      varchar(10),
    price         decimal(10,2) not null check (price >= 0),
    
  FOREIGN KEY (category_id) 
  REFERENCES Categories(category_id),

  FOREIGN KEY (brand_name) 
    REFERENCES Brands(brand_name)
) ENGINE = InnoDB;

INSERT INTO categories VALUES
('CAT01','Electronics','Electronic devices'),
('CAT02','Fashion','Clothing and footwear'),
('CAT03','Gadgets','Smart devices');
 
INSERT INTO brands VALUES
('B001','SoundMax','Philippines'),
('B002','ActivePro','Philippines'),
('B003','TechTime','Japan');
 
INSERT INTO products VALUES
('P001','Wireless Headphones','CAT01','SoundMax',1999),
('P002','Running Shoes','CAT02','ActivePro',2499),
('P003','Smart Watch','CAT03','TechTime',3999);

select * from categories;
select * from brands;
select * from products;