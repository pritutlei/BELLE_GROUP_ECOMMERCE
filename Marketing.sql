CREATE DATABASE IF NOT EXISTS marketing;
USE marketing;

CREATE TABLE Campaigns(
    campaign_id int auto_increment primary key,
    campaign_name varchar(100) not null,
    start_date date not null,
    end_date date not null,
    status VARCHAR(50) not null
);

CREATE TABLE Coupons(
    coupon_id INT auto_increment primary key,
    coupon_code varchar(100) not null,
    discount_percent int not null check (discount_percent BETWEEN 0 AND 100),
    expiry_date date not null
);

INSERT INTO campaigns VALUES
    ('C001','Back to School Sale','2026-06-01','2026-06-30','Active'),
    ('C002','Mid-Year Mega Sale','2026-07-01','2026-07-15','Active'),
    ('C003','Holiday Deals','2026-12-01','2026-12-31','Planned');

 INSERT INTO coupons VALUES
    ('CP001','BGE10',10,'2026-10-31'),
    ('CP002','SAVE20',20,'2026-11-30'),
    ('CP003','HOLIDAY30',30,'2026-12-31');

select * from campaigns;
select * from coupons;