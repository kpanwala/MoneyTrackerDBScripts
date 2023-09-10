use moneytracker;

INSERT INTO transactions VALUES (1,'DMart',357,'1','Food','2023-03-22 18:30:00',1),
(2,'Flipkart',890,'2','Lifestyle','2023-03-23 18:30:00',1);

select * from moneytracker.userscredentials;

select * from moneytracker.usersdetails;

select * from cards;

CREATE TABLE moneytracker.usersdetails (
  id INT AUTO_INCREMENT PRIMARY KEY,
  f_name VARCHAR(255),
  l_name VARCHAR(255)
);

CREATE TABLE moneytracker.cards (
  cardId INT AUTO_INCREMENT PRIMARY KEY,
  cardName varchar(100) NOT NULL,
  cardType varchar(20) DEFAULT NULL,
  uId int DEFAULT NULL,
  FOREIGN KEY (uId) REFERENCES moneytracker.usersdetails(id) ON DELETE CASCADE
);

use moneytracker;

INSERT INTO usersdetails VALUES (1,'Kalp','Panwala'),(2,'Aakash','Kotia'),(3,'Hemil','Garara'),(4,'Denis','Dhokia');

INSERT INTO cards VALUES (1,'HDFC Bank Millenia','Debit',1),(2,'IDFC Bank Select','Credit',1),(3,'Axis Bank Neo','Debit',2),(4,'Indus Bank Legend','Credit',2),(5,'Axis Bank Platinum','Credit',3),(6,'SBI elite','Debit',4),(7,'Axis Magnus','Credit',4),(8,'HSBC platinum','Debit',4);

delete from cards where uId is null;

select * from transactions;

select * from usersdetails;

select * from userscredentials;

insert into userscredentials values (5,'ram', '12345');

CREATE TABLE transactions (
  transId int NOT NULL AUTO_INCREMENT,
  placeOfTransaction varchar(200) NOT NULL,
  transactionAmount int NOT NULL,
  cardIdUsed int NOT NULL,
  category varchar(50) DEFAULT 'Other',
  dateOfTransaction varchar(40) NOT NULL,
  id int DEFAULT NULL,
  PRIMARY KEY (transId),
  FOREIGN KEY (id) REFERENCES usersdetails (id) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (cardIdUsed) REFERENCES cards (cardId) ON DELETE CASCADE ON UPDATE CASCADE
);


insert into transactions (placeOfTransaction, transactionAmount, cardIdUsed, category, dateOfTransaction, id) values ('Dheeraj Sons', 99, 6, 'Others', '2022-10-02 00:00:00',4);
insert into transactions (placeOfTransaction, transactionAmount, cardIdUsed, category, dateOfTransaction, id) values ("Flipkart",890,2,"Lifestyle","2023-03-24 00:00:00",1);
insert into transactions (placeOfTransaction, transactionAmount, cardIdUsed, category, dateOfTransaction, id) values ("IRCTC",680,1,"Travel","2023-04-24 00:00:00",1);
insert into transactions (placeOfTransaction, transactionAmount, cardIdUsed, category, dateOfTransaction, id) values ("IRCTC",131,2,"Travel","2022-06-12 00:00:00",1);
insert into transactions (placeOfTransaction, transactionAmount, cardIdUsed, category, dateOfTransaction, id) values ("Book My Show",235,1,"Entertainment","2022-05-04 00:00:00",1);
insert into transactions (placeOfTransaction, transactionAmount, cardIdUsed, category, dateOfTransaction, id) values ("Offline POS",235,1,"Others","2022-12-09 00:00:00",1);
insert into transactions (placeOfTransaction, transactionAmount, cardIdUsed, category, dateOfTransaction, id) values ("Jio Mart",120,3,"Food","2023-03-12 00:00:00",2);
insert into transactions (placeOfTransaction, transactionAmount, cardIdUsed, category, dateOfTransaction, id) values ("Swiggy",203,4,"Food","2023-03-25 00:00:00",2);
insert into transactions (placeOfTransaction, transactionAmount, cardIdUsed, category, dateOfTransaction, id) values ("Book My Show",1478,5,"Entertainment","2023-02-01 00:00:00",3);
insert into transactions (placeOfTransaction, transactionAmount, cardIdUsed, category, dateOfTransaction, id) values ("Jio Mart",420,6,"Food","2022-07-02 00:00:00",4);
insert into transactions (placeOfTransaction, transactionAmount, cardIdUsed, category, dateOfTransaction, id) values ("Asian Paints",1478,7,"Others","2023-03-14 00:00:00",4);
insert into transactions (placeOfTransaction, transactionAmount, cardIdUsed, category, dateOfTransaction, id) values ("Jio Mart",608,6,"Food","2023-03-22 00:00:00",4);
insert into transactions (placeOfTransaction, transactionAmount, cardIdUsed, category, dateOfTransaction, id) values ("Big Basket",579,8,"Food","2023-01-05 00:00:00",4);
insert into transactions (placeOfTransaction, transactionAmount, cardIdUsed, category, dateOfTransaction, id) values ("Ajio",3200,1,"Lifestyle","2022-03-22 18:30:00",2);
insert into transactions (placeOfTransaction, transactionAmount, cardIdUsed, category, dateOfTransaction, id) values ("DMart",357,1,"Food","2023-03-23 00:00:00",1);
insert into transactions (placeOfTransaction, transactionAmount, cardIdUsed, category, dateOfTransaction, id) values ("BB now",445,1,"Food","2023-07-10 00:00:00",1);
insert into transactions (placeOfTransaction, transactionAmount, cardIdUsed, category, dateOfTransaction, id) values ("PVR",100,1,"Entertainment","2023-07-15 00:00:00",1);
insert into transactions (placeOfTransaction, transactionAmount, cardIdUsed, category, dateOfTransaction, id) values ("IRCTC",220,1,"Travel","2023-07-10 00:00:00",1);
insert into transactions (placeOfTransaction, transactionAmount, cardIdUsed, category, dateOfTransaction, id) values ("Nyka",2300,1,"Lifestyle","2023-06-07 00:00:00",1);
insert into transactions (placeOfTransaction, transactionAmount, cardIdUsed, category, dateOfTransaction, id) values ("Flipkart",6500,2,"Food","2023-06-25 00:00:00",1);
insert into transactions (placeOfTransaction, transactionAmount, cardIdUsed, category, dateOfTransaction, id) values ("tata neu",3200,2,"Others","2023-08-07 00:00:00",1);
insert into transactions (placeOfTransaction, transactionAmount, cardIdUsed, category, dateOfTransaction, id) values ("Amazon",8500,1,"Travel","2023-08-25 00:00:00",1);
insert into transactions (placeOfTransaction, transactionAmount, cardIdUsed, category, dateOfTransaction, id) values ("Rikshaw",120,2,"Others","2023-15-07 00:00:00",1);
insert into transactions (placeOfTransaction, transactionAmount, cardIdUsed, category, dateOfTransaction, id) values ("Rikshaw",230,1,"Others","2023-02-09 00:00:00",1);
insert into transactions (placeOfTransaction, transactionAmount, cardIdUsed, category, dateOfTransaction, id) values ("DMart",30,2,"Others","2023-15-09 00:00:00",1);
truncate table transactions;
