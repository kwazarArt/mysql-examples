create database task05;
use task05;

create table if not exists Customers(
Id int,
Name varchar(255)
);

create table if not exists Orders(
Id int,
CustomersId int
);

insert into Customers
VALUES
(1, 'Joe'),
(2, 'Henry'),
(3, 'Sam'),
(4, 'Max');

insert into Orders
Values 
(1,3),
(2,1);

Select Name AS Customers
FROM Customers
WHERE Id not in (Select CustomersId from Orders);