create database task03;
use task03;

create table if not exists Employee (
Id int,
Name varchar(255),
Salary int,
ManagerId int
);

INSERt INTO Employee
VALUES
(1, 'Joe', 70000, 3),
(2, 'Henry', 80000, 4),
(3, 'Sam', 60000, NULL),
(4, 'Max', 90000, NULL);

SELECT E.Name
FROM (SELECT * FROM Employee WHERE ManagerId IS NOT NULL) AS E,
(SELECT * FROM Employee WHERE ManagerId IS NULL) AS M
WHERE E.ManagerId = M.Id
AND E.Salary > M.Salary;