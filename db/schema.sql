DROP TABLE IF EXISTS grades;
DROP TABLE IF EXISTS students;

CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    company VARCHAR(255),
    skill VARCHAR(255),
    pic TEXT,
    city VARCHAR(255),
    email VARCHAR(255)
);

CREATE TABLE grades (
    id SERIAL PRIMARY KEY,
    student_id integer REFERENCES students(id) ON DELETE CASCADE,
    score integer DEFAULT 0
);

CREATE INDEX grades_student_id ON grades(student_id);