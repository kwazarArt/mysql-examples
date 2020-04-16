create database task02;
use task02;

create table if not exists
Employee(
id int,
Salary int
);

insert into Employee
values
(1,100),
(2, 200),
(3, 300);

SELECT id, MAX(Salary)
FROM Employee
WHERE Salary <> (Select MAX(Salary) FROM Employee);