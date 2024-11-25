create database employe;
use employe;
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
salary double
-- primary key(empID)
);
insert into employeePosition(empID,empPos,DateOfJoining,salary)
values(1,'Manager','2022-05-01',500000),(2,'Executive','2022-05-02',75000),
(3,'Manager','2022-05-01',90000),(2,'Lead','2022-05-02',850000),
(1,'Executive','2022-05-01',300000);

SELECT DISTINCT salary
FROM employeePosition e1
WHERE (3 - 1) = (
    SELECT COUNT(DISTINCT salary)
    FROM employeePosition e2
    WHERE e2.salary > e1.salary
);
select * from employeeInfo
where MOD(empID,2)=0;

select * from employeeInfo
where MOD(empID,2)=1;

select * from employeeInfo
where empID=(select min(empID) from employeeInfo)
union
select * from employeeInfo
where empID=(select max(empID) from employeeInfo);


select empID, min(salary) from employeePosition
group by empID
order by salary desc
limit 2;



