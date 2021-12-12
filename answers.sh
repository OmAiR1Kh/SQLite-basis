#Basic Queries
1- SELECT * FROM students
2- SELECT * FROM students WHERE "Age" > 30
3- SELECT * FROM students WHERE Gender = "F" AND Age > 30
4- SELECT Points FROM students WHERE name = "Alex"
5- INSERT INTO students (Name,Age,Gender,Points) 
   VALUES ('Omair','21', 'M','20')
6-UPDATE students
  SET Points = 405 
  WHERE Name = "Basma"
7-UPDATE students
  SET Points = 100
  WHERE Name = "Alex";

  #creating Table
1- CREATE TABLE graduates (
    ID INTEGER NOT_NULL PRIMARY_key AUTO_INCREMENT,
    Name TEXT NOT_NULL UNIQUE,
    Age INTEGER,
	Gender TEXT,
	Points INTEGER,
	Graduation TEXT
 
)
2- INSERT INTO graduates (Name,Age,Gender,Points,Graduation) 
   VALUES ('Layal','18', 'F','350','08/09/2018'
3-DELETE FROM students WHERE Name = 'Layal'
#Joins
1- SELECT employees.Name,companies.Name, companies.Date
	FROM companies
	INNER JOIN employees
2-  SELECT employees.Name
	FROM companies
	INNER JOIN employees
	ON companies.Name = employees.Company
	WHERE companies.Date < 2000;
3-SELECT companies.Name
	FROM companies
	INNER JOIN employees
	ON companies.Name = employees.Company
	WHERE employees.Role = 'Graphic Designer';
#count and filter

1- SELECT Name FROM students WHERE  Points = (SELECT max(Points) FROM students)

2- SELECT AVG(Points) FROM students

3- SELECT COUNT(Points)
	FROM students
	WHERE Points = 500

4- SELECT Name
	FROM students
	WHERE Name like '%s%'

5- SELECT Name FROM students
	ORDER BY Points DESC