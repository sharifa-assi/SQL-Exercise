Basic Queries 
SELECT name FROM students;

SELECT * FROM students WHERE age > 30 ;
  
SELECT name FROM students WHERE Gender = 'F' and Age = 30 ;

SELECT Points FROM students WHERE name = 'Alex';

INSERT INTO students (name, Age , Gender , Points) VALUES ('Sharifa' , 19 , 'F' , 700);

UPDATE students SET Points =  Points + 50 WHERE name = 'Basma' ; 
 
 UPDATE students SET Points = Points - 50 WHERE name = 'Alex';


