CREATE TABLE students(
student_id SERIAL PRIMARY KEY,
name VARCHAR(100),
age INT,
email VARCHAR(100),
date_enrolled DATE
);

INSERT INTO students (name, age, email, date_enrolled)
VALUES
    ('Cerin Rose', 23, 'cerin.rose@gmail.com', '2023-01-15'),
    ('Chrislin Rose', 20, 'chrislin.rose@gmail.com', '2023-05-01'),
    ('Prakash Maheshwaran', 23, 'prakashmaheshwaran@gmail.com', '2022-09-30'),
    ('Chelladurai Solomon', 54, 'chelladuraisolomon@gmail.com', '2024-02-20'),
    ('Ruth Abraham', 79, 'ruthabraham@gmail.com', '2023-08-12');



SELECT * FROM students;


SELECT * FROM students WHERE age BETWEEN 20 AND 25;

SELECT * FROM students WHERE date_enrolled > '2023-01-01';

SELECT * FROM students ORDER BY date_enrolled ASC;

SELECT * FROM students ORDER BY name ASC;

SELECT * FROM students LIMIT 3;

UPDATE students SET email = 'cerinrose7@yahoo.com' WHERE student_id = 1;

SELECT * FROM students WHERE student_id = 1;

DELETE FROM students WHERE student_id = 5;

SELECT * FROM students;

ALTER TABLE students ALTER COLUMN email SET NOT NULL;
 
SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'public';

SELECT table_name, table_schema
FROM information_schema.tables;

SELECT name, age FROM students;

UPDATE students SET age = 22 WHERE student_id = 1;

SELECT * FROM students WHERE student_id = 1;