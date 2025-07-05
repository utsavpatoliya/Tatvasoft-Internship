
CREATE DATABASE studentdb;

CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    department VARCHAR(50)
);

CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100),
    department VARCHAR(50)
);


CREATE TABLE enrollments (
    student_id INT REFERENCES students(student_id),
    course_id INT REFERENCES courses(course_id),
    enrollment_date DATE,
    PRIMARY KEY (student_id, course_id)
);

INSERT INTO students (name, age, department) VALUES
('Alice', 20, 'Computer Science'),
('Bob', 21, 'Mechanical'),
('Charlie', 19, 'Computer Science');


INSERT INTO courses (course_name, department) VALUES
('Data Structures', 'Computer Science'),
('Thermodynamics', 'Mechanical'),
('Web Development', 'Computer Science');


INSERT INTO enrollments (student_id, course_id, enrollment_date) VALUES
(1, 1, '2025-07-01'),
(1, 3, '2025-07-01'),
(2, 2, '2025-07-02'),
(3, 1, '2025-07-03');


SELECT * FROM students;


SELECT * FROM courses;

SELECT 
    s.name AS student_name,
    c.course_name,
    e.enrollment_date
FROM enrollments e
JOIN students s ON e.student_id = s.student_id
JOIN courses c ON e.course_id = c.course_id;


UPDATE students
SET department = 'Electrical'
WHERE name = 'Bob';


DELETE FROM courses
WHERE course_name = 'Thermodynamics';



