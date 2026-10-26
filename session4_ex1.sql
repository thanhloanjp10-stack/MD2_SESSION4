USE sakila;
DROP TABLE IF EXISTS students;
CREATE TABLE IF NOT EXISTS students (
student_id INT NOT NULL PRIMARY KEY,
full_name VARCHAR(100) NOT NULL,
birth_date DATE,
gender VARCHAR(10),
email VARCHAR(100)
);

INSERT INTO students (student_id,full_name,birth_date,gender,email) values
(1,'Nguyen van A', '2000-01-10','nam','nva@gmail.com'),
(2,'Nguyen van B', '2001-01-11','nam','nvb@gmail.com'),
(3,'Pham thi C', '2010-08-03','nu','ntc@gmail.com'),
(4,'Tran anh D', '2009-09-09','nu','tad@gmail.com'),
(5,'Duong thi E', '2010-07-08','nu',NULL);

SELECT*FROM students;
SELECT student_id,full_name,email FROM students;
