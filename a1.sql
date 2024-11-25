create database emplo;
use emplo;
create table employeeInfo(
empID int not null,
empFName varchar(20),
empLName varchar(20),
department varchar(20),
project varchar(10),
address varchar(20),
DOB date,
gender varchar(50),
primary key(empID)
);
insert into employeeInfo(empID,empFName,empLName,department,project,
address,DOB,gender)
values(1,'Sanjay','Mehra','HR','P1','Hyderabad(HYD)','1976-12-01','M'),
(2,'Ananya','Mishra','Admin','P2','Delhi(DEL)','1968-05-02','F'),
(3,'Rohan','Diwan','Accounting','P3','Mumbai(BOM)','1980-01-01','M'),
(4,'Sonia','Kulkarni','HR','P1','Hyderabad(HYD)','1992-05-02','F'),
(5,'Ankit','Kapoor','Admin','P2','Delhi(DEL)','1994-07-03','M');

create table employeePosition(
empID int not null,
empPos varchar(20),
DateOfJoining date,
salary double,
primary key(empID)
);
insert into employeePosition(empID,empPos,DateOfJoining,salary)
values(1,'Manager','2022-05-01',500000),(2,'Executive','2022-05-02',75000),
(3,'Manager','2022-05-01',90000),(2,'Lead','2022-05-02',850000),
(1,'Executive','2022-05-01',300000);
