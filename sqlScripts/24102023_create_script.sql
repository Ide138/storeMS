create database storems;


create table category(
id int not null primary key AUTO_INCREMENT,
name varchar(20),
created timestamp,
is_active boolean
);

create table product(
id int not null primary key AUTO_INCREMENT,
name varchar(20),
description varchar(120),
unit_price double,
category_id int,
is_active boolean,
FOREIGN KEY(category_id) REFERENCES category(id)
ON UPDATE CASCADE ON DELETE RESTRICT
);

create table city(
id int not null primary key AUTO_INCREMENT,
name varchar(20)
);

create table store(
id int not null primary key AUTO_INCREMENT,
name varchar(20),
city_id int,
adress varchar(45),
FOREIGN KEY(city_id) REFERENCES city(id)
ON UPDATE CASCADE ON DELETE RESTRICT
);
create table sales(
id int not null primary key AUTO_INCREMENT,
store_id int,
product_id int,
sold_on timestamp,
amount int,
total_price double,
FOREIGN KEY(store_id) REFERENCES store(id)
ON UPDATE CASCADE ON DELETE RESTRICT,
FOREIGN KEY(product_id) REFERENCES product(id)
ON UPDATE CASCADE ON DELETE RESTRICT
)
INSERT INTO `category`(`name`, `created`, `is_active`) VALUES ('Milk','2023-10-24 15:20:55',1);
INSERT INTO `category`(`name`, `created`, `is_active`) VALUES ('Meat','2023-10-24 15:20:55',1);
INSERT INTO `category`(`name`, `created`, `is_active`) VALUES ('Vegetables','2023-10-24 15:20:55',1);
INSERT INTO `category`(`name`, `created`, `is_active`) VALUES ('Fruits','2023-10-24 15:20:55',0);

INSERT INTO `city`(`name`) VALUES ('Sofia');
INSERT INTO `city`(`name`) VALUES ('Varna');
INSERT INTO `city`(`name`) VALUES ('Plovdiv');
INSERT INTO `city`(`name`) VALUES ('Burgas');

INSERT INTO `store`( `name`, `city_id`, `adress`) VALUES ('Avanti','1','bul_bulgaria');
INSERT INTO `store`( `name`, `city_id`, `adress`) VALUES ('Fantastiko','1','bul');
INSERT INTO `store`( `name`, `city_id`, `adress`) VALUES ('Avanti','2','bul_Varna');
INSERT INTO `store`( `name`, `city_id`, `adress`) VALUES ('Fantastiko','2','bul_str23');
INSERT INTO `store`( `name`, `city_id`, `adress`) VALUES ('Avanti','3','bul_da');
INSERT INTO `store`( `name`, `city_id`, `adress`) VALUES ('Fantastiko','3','buldut');
INSERT INTO `store`( `name`, `city_id`, `adress`) VALUES ('Fantastiko','4','bul 77');

INSERT INTO `product`( `name`, `description`, `unit_price`, `category_id`, `is_active`) VALUES ('Vereya Cheese','Vereya',11,'1' ,1);
INSERT INTO `product`( `name`, `description`, `unit_price`, `category_id`, `is_active`) VALUES ('Svinsko','Kuftr',12,'2',1);
INSERT INTO `product`( `name`, `description`, `unit_price`, `category_id`, `is_active`) VALUES ('Domati','Rozovi domati',13,'3',1);
INSERT INTO `product`( `name`, `description`, `unit_price`, `category_id`, `is_active`) VALUES ('Qbulka','Chervena qbulka',134,'4',1);

INSERT INTO `sales`( `store_id`, `product_id`, `sold_on`, `amount`, `total_price`) VALUES (1,1,'2023-10-24 15:54:43',3,0);
2
INSERT INTO `sales`( `store_id`, `product_id`, `sold_on`, `amount`, `total_price`) VALUES (1,2,'2023-10-24 15:54:43',6,0);
3
INSERT INTO `sales`( `store_id`, `product_id`, `sold_on`, `amount`, `total_price`) VALUES (1,3,'2023-10-24 15:54:43',7,0);
4
INSERT INTO `sales`( `store_id`, `product_id`, `sold_on`, `amount`, `total_price`) VALUES (1,4,'2023-10-24 15:54:43',8,0);
5
INSERT INTO `sales`( `store_id`, `product_id`, `sold_on`, `amount`, `total_price`) VALUES (2,1,'2023-10-24 15:54:43',3,0);
6
INSERT INTO `sales`( `store_id`, `product_id`, `sold_on`, `amount`, `total_price`) VALUES (2,2,'2023-10-24 15:54:43',6,0);
7
INSERT INTO `sales`( `store_id`, `product_id`, `sold_on`, `amount`, `total_price`) VALUES (2,3,'2023-10-24 15:54:43',7,0);
8
INSERT INTO `sales`( `store_id`, `product_id`, `sold_on`, `amount`, `total_price`) VALUES (2,4,'2023-10-24 15:54:43',8,0);
9
INSERT INTO `sales`( `store_id`, `product_id`, `sold_on`, `amount`, `total_price`) VALUES (3,1,'2023-10-24 15:54:43',3,0);
10
INSERT INTO `sales`( `store_id`, `product_id`, `sold_on`, `amount`, `total_price`) VALUES (3,2,'2023-10-24 15:54:43',6,0);
11
INSERT INTO `sales`( `store_id`, `product_id`, `sold_on`, `amount`, `total_price`) VALUES (3,3,'2023-10-24 15:54:43',7,0);
12
INSERT INTO `sales`( `store_id`, `product_id`, `sold_on`, `amount`, `total_price`) VALUES (3,4,'2023-10-24 15:54:43',8,0);
13
INSERT INTO `sales`( `store_id`, `product_id`, `sold_on`, `amount`, `total_price`) VALUES (4,1,'2023-10-24 15:54:43',3,0);
14
INSERT INTO `sales`( `store_id`, `product_id`, `sold_on`, `amount`, `total_price`) VALUES (4,2,'2023-10-24 15:54:43',6,0);
15
INSERT INTO `sales`( `store_id`, `product_id`, `sold_on`, `amount`, `total_price`) VALUES (
16
                                                                                         4,3,'2023-10-24 15:54:43',7,0);