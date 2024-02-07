USE bitscopy_classwork;

SHOW TABLES;

SELECT *
FROM tasks;

SELECT *
FROM client;

#creating a new table from an existing table
CREATE TABLE category_drm AS
SELECT *
FROM tasks
WHERE category = 'DRM';

SELECT *
FROM category_drm;

### Adding or dropping a column

ALTER TABLE category_drm
ADD COLUMN email VARCHAR(255);

SELECT *
FROM category_drm;

#To change a column's data type or constraints, 
#use ALTER TABLE with the MODIFY COLUMN or ALTER COLUMN

ALTER TABLE category_drm
MODIFY COLUMN email VARCHAR(320);

-- For SQL Server, the command is ALTER COLUMN
-- ALTER TABLE employees
-- ALFTER COLUMN email INVARCHAR(320);

### Drop column
ALTER TABLE category_drm
DROP COLUMN email;

# summarizing the data into a new table
CREATE TABLE tasks_number AS
SELECT taskid, COUNT(*) AS task_count
FROM tasks
GROUP BY taskid;

SELECT *
FROM tasks_number;

CREATE TABLE Average_Credit AS
SELECT state, AVG(CreditLimit) AS average
FROM client
GROUP BY state;

SELECT *
FROM Average_Credit;

# updating table
UPDATE category_drm
SET email = 'new.email@example.com'
WHERE TaskID = 'DAll';

DELETE FROM category_drm
WHERE TaskID = 'DA11';

#02/07

SHOW TABLES;

# ORDER BY USING MULTIPLE COLUMNS (sorting by row with these functions)
SELECT *
FROM client
ORDER BY balance DESC, creditlimit ASC;

SELECT *
FROM client
ORDER BY City DESC;

SELECT *
FROM client
ORDER BY balance DESC;

SELECT *
FROM client
ORDER BY balance DESC, city DESC;

SELECT street, city
FROM client
ORDER BY 1 DESC, 2 DESC;

#Math functions in SQL

SELECT ABS(balance) AS Abs_Balance, ClientName
FROM client;

SELECT LOG(creditlimit) AS Log_Credit, ZipCode
FROM client;

SELECT *
 FROM consultant;
 
 SELECT Rate*Hours AS Weekly_Salary
 FROM consultant;

SELECT POW(Rate, 2) AS Rate_Squared
FROM consultant;

SELECT SQRT(Rate) AS Square_Root_Rate
FROM consultant;

### String Functions

SELECT UPPER(street) AS Street_Upper
FROM consultant;

SELECT LOWER(street) AS Street_Upper
FROM consultant;

# If you do not rename the column it will show up as the function
SELECT LEFT (city, 3)
FROM client;

SELECT REVERSE (clientname) AS Reverse_Client
FROM client;

#Substring(String, start, length)\
SELECT SUBSTRING(city,2,3) AS Substring_Text
FROM client;

#CONCAT- Merge Columns
#CONCAT(string1, string2,...)
#Can use to create primary key and unique identifiers

SELECT CONCAT(city, street) AS City_Street
FROM client;

SELECT CONCAT(clientnum, zipcode) AS Longest_Street_Name
FROM client;

#CHAR_LENGTH(string)
SELECT CHAR_LENGTH (street) AS Longest_Street_Name
FROM client;

