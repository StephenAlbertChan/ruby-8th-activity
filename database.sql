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