
-- Create the databases and users before applying grants.
MKTG_DB
grant select on marketing.* to 'garcia.kevin'@'localhost';
grant select on marketing.* to 'bautista.adrian'@'localhost';
grant select on marketing.* to 'flores.elena'@'localhost';

CUST_DB
grant select on customer.* to 'santos.ana'@'localhost';
grant select on customer.* to 'garcia.kevin'@'localhost';
grant select on customer.* to 'flores.elena'@'localhost';

PROD_DB
grant select on products.* to 'santos.ana'@'localhost';
grant select on products.* to 'garcia.kevin'@'localhost';
grant select on products.* to 'bautista.adrian'@'localhost';
grant select on products.* to 'flores.elena'@'localhost';
grant select on products.* to 'tan.joshua'@'localhost';
grant select on products.* to 'ramos.patricia'@'localhost';

INV_DB
grant select on inventory.* to 'cruz.daniel'@'localhost';
grant select on inventory.* to 'tan.joshua'@'localhost';
grant select on inventory.* to 'ramos.patricia'@'localhost';
grant select on inventory.* to 'bautista.adrian'@'localhost';
grant select on inventory.* to 'flores.elena'@'localhost';

ORD_DB
grant select on orders.* to 'santos.ana'@'localhost'; 
grant select on orders.* to 'navarro.sofia'@'localhost'; 
grant select on orders.* to 'garcia.kevin'@'localhost'; 
grant select on orders.* to 'lim.maria'@'localhost'; 
grant select on orders.* to 'ramos.patricia'@'localhost';
grant select on orders.* to 'bautista.adrian'@'localhost'; 
grant select on orders.* to 'flores.elena'@'localhost'; 

PAY_DB
grant select on payment.* to 'cruz.daniel'@'localhost';
grant select on payment.* to 'tan.joshua'@'localhost';
grant select on payment.* to 'ramos.patricia'@'localhost';
grant select on payment.* to 'bautista.adrian'@'localhost';
grant select on payment.* to 'flores.elena'@'localhost';

LOG_DB
grant select on logistics.* to 'garcia.kevin'@'localhost';
grant select on logistics.* to 'bautista.adrian'@'localhost';
grant select on logistics.* to 'flores.elena'@'localhost';


MER_DB
grant select on merchant.* to 'santos.ana'@'localhost';
grant select on merchant.* to 'cruz.daniel'@'localhost';
grant select on merchant.* to 'bautista.adrian'@'localhost';
grant select on merchant.* to 'flores.elena'@'localhost';

SUP_DB
grant select on support.* to 'santos.ana'@'localhost';
grant select on support.* to 'cruz.daniel'@'localhost';
grant select on support.* to 'bautista.adrian'@'localhost';
grant select on support.* to 'flores.elena'@'localhost';

ANL_DB
grant select on analytics.* to 'garcia.kevin'@'localhost';
grant select on analytics.* to 'bautista.adrian'@'localhost';

READ & WRITE ACCESS:

MKTG_DB
grant select, insert, update, delete on marketing.* to 'cruz.daniel'@'localhost';
grant select, insert, update, delete on marketing.* to 'navarro.sofia'@'localhost';
grant select, insert, update, delete on marketing.* to 'aquino.victor'@'localhost';

CUST_DB
grant select, insert, update, delete on customer.* to 'aquino.victor'@'localhost';

PROD_DB
grant select, insert, update, delete on product.* to 'cruz.daniel'@'localhost';
grant select, insert, update, delete on product.* to 'aquino.victor'@'localhost';

INV_DB
grant select, insert, update, delete on inventory.* to 'aquino.victor'@'localhost';
grant select, insert, update, delete on inventory.* to 'garcia.kevin'@'localhost';
grant select, insert, update, delete on inventory.* to 'lim.maria'@'localhost';

ORD_DB
grant select, insert, update, delete on `order`.* to 'aquino.victor'@'localhost';
grant select, insert, update, delete on `order`.* to 'cruz.daniel'@'localhost';
grant select, insert, update, delete on `order`.* to 'tan.joshua'@'localhost';

PAY_DB
grant select, insert, update, delete on payment.* to 'aquino.victor'@'localhost';

LOG_DB
grant select, insert, update, delete on logistics.* to 'ramos.patricia'@'localhost';
grant select, insert, update, delete on logistics.* to 'aquino.victor'@'localhost';

MER_DB
grant select, insert, update, delete on merchant.* to 'lim.maria'@'localhost';
grant select, insert, update, delete on merchant.* to 'aquino.victor'@'localhost';

SUP_DB
grant select, insert, update, delete on support.* to 'garcia.kevin'@'localhost';
grant select, insert, update, delete on support.* to 'bautista.adrian'@'localhost';
grant select, insert, update, delete on support.* to 'aquino.victor'@'localhost';

ANL_DB
grant select, insert, update, delete on analytics.* to 'navarro.sofia'@'localhost';
grant select, insert, update, delete on analytics.* to 'aquino.victor'@'localhost';

WRITE ACCESS ONLY:

MKTG_DB
grant insert, update, delete on marketing.* to 'santos.ana'@'localhost';


CREATE USERS:

CREATE USER IF NOT EXISTS 'santos.ana'@'localhost' IDENTIFIED BY 'pass';
CREATE USER IF NOT EXISTS 'cruz.daniel'@'localhost' IDENTIFIED BY 'pass';
CREATE USER IF NOT EXISTS 'navarro.sofia'@'localhost' IDENTIFIED BY 'pass';
CREATE USER IF NOT EXISTS 'garcia.kevin'@'localhost' IDENTIFIED BY 'pass';
CREATE USER IF NOT EXISTS 'lim.maria'@'localhost' IDENTIFIED BY 'pass';
CREATE USER IF NOT EXISTS 'tan.joshua'@'localhost' IDENTIFIED BY 'pass';
CREATE USER IF NOT EXISTS 'ramos.patricia'@'localhost' IDENTIFIED BY 'pass';
CREATE USER IF NOT EXISTS 'bautista.adrian'@'localhost' IDENTIFIED BY 'pass';
CREATE USER IF NOT EXISTS 'flores.elena'@'localhost' IDENTIFIED BY 'pass';
CREATE USER IF NOT EXISTS 'aquino.victor'@'localhost' IDENTIFIED BY 'pass';

CREATE DATABASES:

create database IF NOT EXISTS marketing;
create database IF NOT EXISTS customer;
create database IF NOT EXISTS products;
create database IF NOT EXISTS inventory;
create database IF NOT EXISTS order;
create database IF NOT EXISTS payment;
create database IF NOT EXISTS logistics;
create database IF NOT EXISTS merchant;
create database IF NOT EXISTS support;
create database IF NOT EXISTS analytics;



