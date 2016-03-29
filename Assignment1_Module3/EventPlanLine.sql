 create table EventPlanLine (
 Planno Char(8) NOT NULL,
 Lineno Char(1) NOT NULL,
 Timestart datetime NOT NULL,
 TimeEnd datetime NOT NULL,
 NumberFld Char(1) NOT NULL,
 Locno Char(8) NOT NULL,
 Resno Char(8) NOT NULL, 
 constraint PK_EventPlanLine primary key(Planno, Lineno),
 constraint FK_EventPlan foreign key(Planno) references eventplan(Planno),
 constraint FK_Location foreign key(Locno) references Location(Locno),
 constraint FK_ResourceTbl foreign key(Resno) references resourcetbl(Resno)
 );
 
 select * from EventPlanLine