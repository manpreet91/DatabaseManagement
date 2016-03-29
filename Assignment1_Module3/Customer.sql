CREATE TABLE Customer (
Custno CHAR(8) NOT NULL,
Custname VARCHAR(50) NOT NULL,
Address VARCHAR(50) NOT NULL,
Internal CHAR(1) NOT NULL,
Contact VARCHAR(50) NOT NULL,
Phone VARCHAR(50) NOT NULL,
City VARCHAR(50) NOT NULL,
State CHAR(2) NOT NULL,
Zip VARCHAR(50) NOT NULL,
constraint PK_Customer primary key (Custno)
 );

select * from Customer;

Insert into CUSTOMER (CUSTNO,CUSTNAME,ADDRESS,INTERNAL,CONTACT,PHONE,CITY,STATE,ZIP) values ('C106','High School Bully','123 Dont care','N','Coach Crazy','0002222','Bihar','UP','42020');
Insert into CUSTOMER (CUSTNO,CUSTNAME,ADDRESS,INTERNAL,CONTACT,PHONE,CITY,STATE,ZIP) values ('C107','Unknown','Bla Dont care','N','Coach Maniac1','0000000','Tumbuktu','SS','00000');
