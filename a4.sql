create database solve;
use solve;
create table employee(
empID int not null,
empName varchar(20),
departmentID int not null,
primary key(empID),
foreign key(departmentID) references department(departmentID)
);
insert into employee(empID,empName,departmentID)
values(1,'John',101),(2,'Jane',102),(3,'Bob',103),(4,'Alice',104);

create table department(
departmentID int not null,
departmentName varchar(20),
primary key(departmentName)
);
insert into department(departmentID,departmentName)
values(101,'HR'),(102,'IT'),(103,'Finance'),(104,'Sales');