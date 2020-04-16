create database task06;
use task06;

create table if not exists Courses(
student varchar(255),
class varchar(255)
);

insert into Courses
VALUES
('A', 'Math'),
('B', 'English'),
('C', 'Math'),
('D', 'Biology'),
('E', 'Math'),
('F', 'Computer'),
('G', 'Math'),
('H', 'Math'),
('I', 'Math');

SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(*) > 5;