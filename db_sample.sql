drop table if exists customer;

CREATE TABLE customer
(
	customer_id	int AUTO_INCREMENT NOT NULL PRIMARY KEY,
	title		char(4),
	fname		varchar(32),
	lname		varchar(32) NOT NULL,
	addressline	varchar(64),
	town		varchar(32),
	zipcode		char(10) NOT NULL,
	phone		varchar(16)
);

drop table if exists item;

CREATE TABLE item
(
	item_id		int AUTO_INCREMENT NOT NULL PRIMARY KEY,
	description	varchar(64) NOT NULL,
	cost_price	numeric(7,2),	
	sell_price	numeric(7,2)
);

drop table if exists orderinfo;


CREATE TABLE orderinfo
(
	orderinfo_id	int AUTO_INCREMENT NOT NULL PRIMARY KEY,
	customer_id	int	NOT NULL,
	date_placed	date	NOT NULL,
	date_shipped	date,
	shipping	numeric(7,2)
	
	
	
);

drop table if exists stock;

CREATE TABLE stock
(
	item_id		int NOT NULL AUTO_INCREMENT PRIMARY KEY,
	quantity	int NOT NULL
);

drop table if exists orderline;

CREATE TABLE orderline
(
	orderinfo_id	int	NOT NULL,
	item_id		int NOT NULL,
	quantity	int NOT NULL
	
);


drop table if exists barcode;
CREATE TABLE barcode
(
	barcode_ean	char(13)	NOT NULL PRIMARY KEY,
	item_id		int	NOT NULL
);

#CUSTOMER TABLE
insert into customers(title, fname, lname, addressline, town, zipcode, phone)
	values('Miss','jenny','stones','27 Rowan Avenue','hightown','NT21AQ','023 9876');
insert into customers(title, fname, lname, addressline, town, zipcode, phone)
	values('Mr','Andrew','stones','52 The willows','lowtown','LT57RA','876 3527');
insert into customers(title, fname, lname, addressline, town, zipcode, phone)
	values('Miss','Alex','Matthew','4 The Street','Nicetown','NT22TX','010 4567');
insert into customers(title, fname, lname, addressline, town, zipcode, phone)
	values('Mr','Adrian','MAtthew','The Barn','Yuleville','YV672WR','487 3871');
insert into customer(title, fname, lname, addressline, town, zipcode, phone)
	values('Mr','Simon','Cozens','7 Shady Lane','Oahenham','OA36Qw','514 5926');
insert into customer(title, fname, lname, addressline, town, zipcode, phone)
	values('Mr','Neil','Matther','5 Pasture Lane','Nicetown','NT37RT','267 1232');
insert into customer(title, fname, lname, addressline, town, zipcode, phone)
	values('Mr','Richard','stones','34 Holly Way','Bingham','BG42WE','342 5982');
insert into customer(title, fname, lname, addressline, town, zipcode, phone)
	values('Mrs','Ann','stones','34 Holly Way','Bingham','BG42WE','342 5982');
insert into customer(title, fname, lname, addressline, town, zipcode, phone)
	values('Mrs','Christine','Hickman','36 Queen Street','Histon','HT35EM','342 5432');
insert into customer(title, fname, lname, addressline, town, zipcode, phone)
	values('Mr','Mike','Howard','86 Dysart Street','Tibsville','TB37FG','505 5482');
insert into customer(title, fname, lname, addressline, town, zipcode, phone)
	values('Mr','Dave','Jones','54 Vale Rise','Bingham','BG38GD','342 8264');
insert into customer(title, fname, lname, addressline, town, zipcode, phone)
	values('Mr','Richard','Neil','42 Thached Way','Winersbay','WB36GQ','505 6482');
insert into customer(title, fname, lname, addressline, town, zipcode, phone)
	values('Mrs','Laura','Hendy','73 MArgaritta Way','Oxbridge','OX23HX','821 2335');
insert into customer(title, fname, lname, addressline, town, zipcode, phone)
	values('Mr','Bill','O\Neil','2 Beamer Street','Welltown','WT38GM','435 1234');
insert into customer(title, fname, lname, addressline, town, zipcode, phone)
	values('Mr','David','Hudson','4 The Square','Milltown','MT26RT','961 4526');


#ITEM TABLE

insert into item(description, cost_price, sell_price)
	values('Wood Puzzel', 15.23, 21.95);
insert into item(description, cost_price, sell_price)
	values('Rubik Cube', 7.45, 11.49);
insert into item(description, cost_price, sell_price)
	values('Linux CD', 1.99, 2.49);
insert into item(description, cost_price, sell_price)
	values('Tissues', 2.11, 3.99);
insert into item(description, cost_price, sell_price)
	values('PIcture Frame', 7.54, 9.95);
insert into item(description, cost_price, sell_price)
	values('Fan Small', 9.23, 15.75);
insert into item(description, cost_price, sell_price)
	values('Fan Large', 13.36, 19.95);
insert into item(description, cost_price, sell_price)
	values('ToothBrush', 0.75, 1.45);
insert into item(description, cost_price, sell_price)
	values('Roman Coin', 2.34, 2.45);
insert into item(description, cost_price, sell_price)
	values('Carrier Bag', 0.01 , 0.0);
insert into item(description, cost_price, sell_price)
	values('Speakers', 19.73, 25.32);

#BARCODE TABLE

insert into barcode(barcode_ean, item_id) values('6241527836173',1);
insert into barcode(barcode_ean, item_id) values('6241574635234',2);
insert into barcode(barcode_ean, item_id) values('6264537836173',3);
insert into barcode(barcode_ean, item_id) values('6241527746363',4);
insert into barcode(barcode_ean, item_id) values('3453458677628',5);
insert into barcode(barcode_ean, item_id) values('6434564564544',6);
insert into barcode(barcode_ean, item_id) values('8476736836876',7);
insert into barcode(barcode_ean, item_id) values('6241234586487',8);
insert into barcode(barcode_ean, item_id) values('9473625532534',8);
insert into barcode(barcode_ean, item_id) values('9473627464543',8);
insert into barcode(barcode_ean, item_id) values('4587263646878',9);
insert into barcode(barcode_ean, item_id) values('9879879837489',11);
insert into barcode(barcode_ean, item_id) values('2239872376872',11);

#ORDERINFO TABLE

insert into orderinfo(customer_id, date_placed, date_shipped, shipping)
	values(3, '2000-03-13', '2000-03-17', 2.99);
insert into orderinfo(customer_id, date_placed, date_shipped, shipping)
	values(8, '2000-06-23', '2000-06-23', 0.00);
insert into orderinfo(customer_id, date_placed, date_shipped, shipping)
	values(15, '2000-09-02', '2000-09-12', 3.99);
insert into orderinfo(customer_id, date_placed, date_shipped, shipping)
	values(13, '2000-09-03', '2000-09-10', 2.99);
insert into orderinfo(customer_id, date_placed, date_shipped, shipping)
	values(8, '2000-07-21', '2000-07-24', 0.00);

#ORDER LINE TABLE

insert into orderline(orderinfo_id, item_id, quantity) values(1, 4, 1);
insert into orderline(orderinfo_id, item_id, quantity) values(1, 7, 1);
insert into orderline(orderinfo_id, item_id, quantity) values(1, 9, 1);
insert into orderline(orderinfo_id, item_id, quantity) values(2, 1, 1);
insert into orderline(orderinfo_id, item_id, quantity) values(2, 10, 1);
insert into orderline(orderinfo_id, item_id, quantity) values(2, 7, 2);
insert into orderline(orderinfo_id, item_id, quantity) values(2, 4, 2);	
insert into orderline(orderinfo_id, item_id, quantity) values(3, 2, 1);
insert into orderline(orderinfo_id, item_id, quantity) values(3, 1, 1);
insert into orderline(orderinfo_id, item_id, quantity) values(4, 5, 2);
insert into orderline(orderinfo_id, item_id, quantity) values(5, 1, 1);
insert into orderline(orderinfo_id, item_id, quantity) values(5, 3, 1);	

#STOCK TABLE

insert into stock(item_id, quantity) values(1,12);
insert into stock(item_id, quantity) values(2,2);
insert into stock(item_id, quantity) values(4,8);
insert into stock(item_id, quantity) values(5,3);
insert into stock(item_id, quantity) values(7,8);
insert into stock(item_id, quantity) values(8,18);
insert into stock(item_id, quantity) values(10,1);
