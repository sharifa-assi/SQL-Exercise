Basic Queries 
SELECT name FROM students;

SELECT * FROM students WHERE age > 30 ;
  
SELECT name FROM students WHERE Gender = 'F' and Age = 30 ;

SELECT Points FROM students WHERE name = 'Alex';

INSERT INTO students (name, Age , Gender , Points) VALUES ('Sharifa' , 19 , 'F' , 700);

UPDATE students SET Points =  Points + 50 WHERE name = 'Basma' ; 
 
 UPDATE students SET Points = Points - 50 WHERE name = 'Alex';

Creating table 

CREATE TABLE "graduates" (
	'ID'	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	'Name'	TEXT NOT NULL UNIQUE,
	'Age'	INTEGER,
	'Gender'	TEXT,
	'Points'	INTEGER,
	'Graduation'	TEXT
);

INSERT INTO graduates ('name ' , Age , Gender , Points ) 
            SELECT name , Age , Gender , Points  FROM students WHERE Name = 'Layal';

UPDATE graduates SET Graduation = '8/9/2018' WHERE name= 'Layal';

 DELETE FROM students WHERE name = 'Layal';


Joins 

SELECT e.name , c.name , c.Date  FROM employees e LEFT JOIN companies c ON e.Company = c.name;

SELECT e.name FROM employees e LEFT JOIN companies c ON e.Company = c.name WHERE c.Date < 2000;

SELECT DISTINCT c.name FROM companies c INNER JOIN employees e ON e.Company = c.name WHERE e.Role = 'Graphic Designer';

