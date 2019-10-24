 drop table games;
 drop table customer;
 
 
 
CREATE TABLE CUSTOMER(
CustomerName            char(35)          NOT NULL,
CustomerLastName         char(30)          NOT NULL,
E_mail                  varchar(50)         NULL,
PhoneNumber             char(15)           NOT NULL,
LoyaltyPoint            Integer           NOT NULL,
StoreCredit             Integer           NOT NULL,
CONSTRAINT              CUSTOMER_PK       PRIMARY KEY(phoneNumber));

CREATE TABLE GAMES (
  OrderNumber          Integer        NOT NULL,
  storeNUmber          Integer        NULL,
  strorezip            Integer        NULL,
  OrderMonth           Integer        NOT NULL,
  OrderYear            Integer        NOT NULL,
  OrderTotal           Numeric(9,2)   NULL,
  PhoneNumber             char(15)           NOT NULL,
  CONSTRAINT           GAMES_PK       PRIMARY KEY (OrderNumber),
  CONSTRAINT			GAMES_FK		FOREIGN KEY (phoneNumber)
							REFERENCES	customer(phoneNumber));
  select *
  from customer;
  
  insert into customer value(
  'Samuel', 'Bako', 'bakosamuelb@gmail.com', 7063061961, 1001, 2000000);
   insert into customer value(
  'Hanah', 'James', 'am.z@gmail.com', 8123061961, 1002, 3000000);
   insert into customer value(
  'Hassan', 'Dan', 'dansamuel@gmail.com', 7023061961, 1003, 4000000);
   insert into customer value(
  'Matthew', 'Joshua', 'josh.oz5@ymail.com', 9063061922, 1004, 5000000);
   insert into customer value(
  'Emmanuel', 'Kelly', 'kelly.handsome@gmail.com', 8034061961, 1005, 6000000);
  
ALTER TABLE CUSTOMER
drop E_mail;

ALTER TABLE CUSTOMER
Add E_mail   varchar(50)         NULL;

drop table Artist;
 drop table Album;
 


select *
from Artist;

select *
from Album;

Select Artist.Artist_Name, Album.Track, Album.Year_Rate
From Artist
Inner join Album on Artist.Artist_ID = Album.Artist_ID;

Create table Artist(
Artist_ID		Integer 		Not Null,
Artist_name		Char(25) 		Not Null,
Rating			numeric(3,1) 	Not Null,
Phone_Number 	char(15)			Not Null,
CONSTRAINT      CUSTOMER_PK     PRIMARY KEY(Artist_ID));

Create table Album(
Album_Name		Char(30)	Not Null,
Artist_ID		Integer 	Not Null,
Track			Char(20) 	Not Null,
Genre			Char(15) 	Null,
Year_Rate		Integer		Not Null,
CONSTRAINT          Album_PK       PRIMARY KEY (Album_Name),
CONSTRAINT			Album_FK		FOREIGN KEY (Artist_ID)
							REFERENCES	Artist(Artist_ID));

Insert into Artist value('007', 'Falz', '5.0', 8103728671 );
Insert into Artist value('02', 'Tiwa Savage', '2.0', 706737286 ); 
Insert into Artist value('03', 'Dare', '3.0', 8153728671 ); 
Insert into Artist value('04', 'Mai Kalangu', '4.0', 8033728671 ); 
Insert into Artist value('05', 'Dan Zaki', '1.0', 7033726671 );   

Insert into Album value('Lion King','001', '7',  '03', 2019); 
Insert into Album value('Bring Down Glory','002', '2',  '04', 2009);
Insert into Album value('Python Dance','003', '1',  '07', 2010);
Insert into Album value('Love','004', '6',  '02', 2017);
Insert into Album value('Forgiveness','007', '2', '05', 2017); 
                                    
