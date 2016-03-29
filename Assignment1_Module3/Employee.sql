create table Employee(
Empno CHAR(8) NOT NULL,
Empname VARCHAR(50) NOT NULL,
Department VARCHAR(50) NOT NULL,
Email VARCHAR(50) NOT NULL,
Phone VARCHAR(50) NOT NULL,
constraint PK_Employee primary key (Empno)
);

select * from employee