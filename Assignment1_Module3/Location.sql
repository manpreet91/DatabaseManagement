CREATE TABLE Location(
 Locno CHAR(8) NOT NULL,
 Facno CHAR(8) NOT NULL,
 Locname VARCHAR(50) NOT NULL,
 constraint PK_Location primary key(Locno),
 constraint FK_facno foreign key(Facno) references Facility (Facno) );
 
 select * from Location