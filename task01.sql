create database task01;
use task01;
create table Person(
    PersonId int,
    FirstName varchar(255),
    LastName varchar(255)
    );
	
create table Address(
    AddressId int,
    City varchar(255),
    State varchar(255),
    );
	
truncate table Person;
	
insert into Person
VALUES (1, 'Wang', 'Allen');

truncate table Address;

insert into Address 
Values (1, 2, 'New York City', 'New York');

SELECT P.FirstName, P.LastName, A.City, A.State
FROM Person AS P, Address AS A
WHERE P.PersonId = A.PersonId;

