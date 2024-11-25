create database left_Join;
use left_join;
create table employee(
id int not null,
empName varchar(20),
primary key(id)
);
insert into employee(id,empName)
values(1,'Amit'),(2,'Porag'),(3,'Utal'),(4,'Shuvo'),
(5,'Habib'),(6,'Keya');

create table salary_info(
id int not null,
salary double,
primary key(id)
);
insert into salary_info(id,salary)
values(1,200000),(3,50000),(5,12000),(5,12450),
(7,6000);

