create database task04;
use task04;

create table if not exists Person (
Id int,
Email varchar(255)
);

insert into Person 
Values
(1, 'a@b.com'),
(2, 'c@d.com'),
(3, 'a@b.com');

SELECT Email
FROM Person
GROUP BY Email
HAVING COUNT(*) > 1;