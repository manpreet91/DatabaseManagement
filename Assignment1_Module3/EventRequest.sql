CREATE TABLE EventRequest (
Eventno CHAR(8) NOT NULL,
Dateheld date NOT NULL,
Datereq date NOT NULL,
Facno char(8) NOT NULL,
Custno CHAR(8) NOT NULL,
Dateauth date,
status VARCHAR(50),
Estcost numeric(15,2) NOT NULL,
Estaudience Integer NOT NULL,
Budno VARCHAR(50),
constraint PK_EventRequest primary key (Eventno),
constraint FK_Facility foreign key (Facno) References Facility(Facno),
constraint FK_Customer foreign key (Custno) References Customer(Custno)
 );

select * from Eventrequest