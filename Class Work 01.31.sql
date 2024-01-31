USE parkerleipzig;

SHOW TABLES;

CREATE TABLE students(age int, height float, city varchar (255));

DESCRIBE TABLE students;

INSERT INTO students ( age, height, city) VALUES ('20', '6.3', 'U.S');

SELECT *
FROM parkerleipzig.students;