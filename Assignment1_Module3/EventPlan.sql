 create table EventPlan(
 Planno char(8) NOT NULL,
 Eventno char(8) NOT NULL,
 Workdate date NOT NULL,
 Notes varchar(80),
 Activity varchar(50) Not null,
 Empno char(8), 
 constraint PK_EventPlan primary key (Planno),
 constraint FK_EventRequest foreign key (Eventno) references eventrequest(Eventno),
 constraint FK_Employee foreign key (Empno) references Employee(Empno)
 );
 
 select * from EventPlan