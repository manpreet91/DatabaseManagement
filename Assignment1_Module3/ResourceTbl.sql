create table ResourceTbl (
Resno char(8) NOT NULL,
Resname VARCHAR(50) NOT NULL,
Rate numeric(4,2) NOT NULL,
constraint PK_ResourceTbl primary key(Resno)
);
Insert into RESOURCETBL (RESNO,RESNAME,RATE) values ('R100','attendant',10);
Insert into RESOURCETBL (RESNO,RESNAME,RATE) values ('R101','police',15);
Insert into RESOURCETBL (RESNO,RESNAME,RATE) values ('R102','usher',10);
Insert into RESOURCETBL (RESNO,RESNAME,RATE) values ('R103','nurse',20);
Insert into RESOURCETBL (RESNO,RESNAME,RATE) values ('R104','janitor',15);
Insert into RESOURCETBL (RESNO,RESNAME,RATE) values ('R105','food service',10);
Insert into RESOURCETBL (RESNO,RESNAME,RATE) values ('R106','test1',30);
Insert into RESOURCETBL (RESNO,RESNAME,RATE) values ('R107','test2',40);

select * from ResourceTbl