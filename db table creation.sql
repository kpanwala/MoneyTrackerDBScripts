CREATE DATABASE Moneytracker;
USE Moneytracker;

CREATE TABLE UsersCredentials (
  id int AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) unique,
  password VARCHAR(50) NOT NULL
);

CREATE TABLE UsersDetails (
  id int,
  fName VARCHAR(50) NOT NULL,
  lName VARCHAR(50) NOT NULL,
  cards VARCHAR(2000) NOT NULL,
  FOREIGN KEY (id) REFERENCES UsersCredentials(id)
);

CREATE TABLE Transactions (
  transId int AUTO_INCREMENT PRIMARY KEY,
  placeOfTransaction VARCHAR(200) NOT NULL,
  transactionAmount INT NOT NULL,
  cardIdUsed VARCHAR(50) NOT NULL,
  category  VARCHAR(50),
  dateOfTransaction timestamp NOT NULL,
  id int,
  FOREIGN KEY (id) REFERENCES UsersCredentials(id)
);

Insert into UsersCredentials(id,username,password) values (1,"kalp","12345");
Insert into UsersCredentials(id,username,password) values (2,"aakash","98765");
Insert into UsersCredentials(id,username,password) values (3,"hemil","12345");
Insert into UsersCredentials(id,username,password) values (4,"denis","98765");


Insert into UsersDetails(id,fName,lName,cards) values (1,"Kalp","Panwala","[{'cardId': '1','cardName': 'HDFC Bank Millenia','cardType':'Debit'},{'cardId': '2','cardName': 'IDFC Bank Select','cardType':'Credit'}]");
Insert into UsersDetails(id,fName,lName,cards) values (2,"Aakash","Kotia","[{'cardId': '1','cardName': 'Axis Bank Neo','cardType':'Credit'},{'cardId': '2','cardName': 'Indus Bank Legend','cardType':'Credit'}]");
Insert into UsersDetails(id,fName,lName,cards) values (3,"Hemil","Garara","[{'cardId': '1','cardName': 'Axis Bank Platinum','cardType':'Debit'}]");
Insert into UsersDetails(id,fName,lName,cards) values (4,"Denis","Dhokia","[{'cardId': '1','cardName': 'SBI elite','cardType':'Credit'},{'cardId': '2','cardName': 'Axis Magnus','cardType':'Debit'},{'cardId': '3','cardName': 'HSBC platinum','cardType':'Debit'}]");


