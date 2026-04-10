CREATE TABLE students (
student_id VARCHAR(6) NOT NULL,
name VARCHAR(20),
age INT,
department VARCHAR(50),
PRIMARY KEY (student_id)
)


CREATE TABLE courses (
course_id VARCHAR(6) UNIQUE NOT NULL,
course_name VARCHAR(20) UNIQUE NOT NULL,
credits INT NOT NULL,
PRIMARY KEY (course_id)
)

CREATE TABLE enrollments (
enrollment_id VARCHAR(6) UNIQUE NOT NULL,
student_id VARCHAR(6) NOT NULL,
course_id VARCHAR(6) NOT NULL,
enrollment_date DATE,
PRIMARY KEY (enrollment_id),
FOREIGN KEY (student_id) REFERENCES students(student_id),
FOREIGN KEY (course_id) REFERENCES courses(course_id)
)

CREATE TABLE grades (
grade_id VARCHAR(6) UNIQUE NOT NULL,
enrollment_id VARCHAR(6) NOT NULL,
grade VARCHAR(1) CHECK (grade IN ('A', 'B', 'C', 'D')),
PRIMARY KEY (grade_id),
FOREIGN KEY (enrollment_id) REFERENCES enrollments(enrollment_id)
)