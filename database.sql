CREATE TABLE students (id integer, first_name text, middle_name text, last_name text, age integer, location text);

INSERT INTO students (id, first_name, middle_name, last_name, age, location) 
	VALUES(1, 'Juan', 'Blank', 'Cruz', 18, 'Manila');
INSERT INTO students (id, first_name, middle_name, last_name, age, location) 
    VALUES(2, 'John', 'Blank', 'Young', 20, 'Manila');
INSERT INTO students (id, first_name, middle_name, last_name, age, location) 
    VALUES(3, 'Victor', 'Blank', 'Rivera', 18, 'Manila');
INSERT INTO students (id, first_name, middle_name, last_name, age, location)     
    VALUES(4, 'Adrian', 'Blank', 'Co', 18, 'Laguna');
INSERT INTO students (id, first_name, middle_name, last_name, age, location) 
    VALUES(5, 'Pau', 'Blank', 'Riosa', 18, 'Marikina');
INSERT INTO students (id, first_name, middle_name, last_name, age, location) 
    VALUES(6, 'Piolo', 'Blank', 'Pascual', 18, 'Manila');

UPDATE students
	SET first_name= 'Ana', middle_name= 'Cui', last_name= 'Cajocson', age= 25, location= 'Bulacan'
    WHERE id= 1

DELETE FROM students where id= 6

=========================================================================

SELECT COUNT(*)
FROM students;

SELECT *
FROM students
WHERE location= 'Manila'

SELECT AVG(age)
FROM students;

SELECT *
FROM students
ORDER BY age DESC;

=========================================================================

CREATE TABLE classrooms (id integer, student_id integer, section text);

INSERT INTO classrooms (id, student_id, section)
	VALUES(1,1,'A');
INSERT INTO classrooms (id, student_id, section)
	VALUES(2,2,'A');
INSERT INTO classrooms (id, student_id, section)
	VALUES(3,3,'B');
INSERT INTO classrooms (id, student_id, section)
	VALUES(4,4,'C');    
INSERT INTO classrooms (id, student_id, section)
	VALUES(5,5,'B');    
INSERT INTO classrooms (id, student_id, section)
	VALUES(6,6,'A');    
INSERT INTO classrooms (id, student_id, section)
	VALUES(7,7,'C');    
INSERT INTO classrooms (id, student_id, section)
	VALUES(8,8,'B');
INSERT INTO classrooms (id, student_id, section)
	VALUES(9,9,'B');
INSERT INTO classrooms (id, student_id, section)
	VALUES(10,10,'C');

SELECT *
FROM students
INNER JOIN classrooms
  ON students.id = classrooms.student_id;

SELECT *
FROM students
LEFT JOIN classrooms
  ON students.id = classrooms.student_id;

SELECT *
FROM students
RIGHT JOIN classrooms
  ON students.id = classrooms.student_id;

SELECT *
FROM students
FULL JOIN classrooms
  ON students.id = classrooms.student_id;