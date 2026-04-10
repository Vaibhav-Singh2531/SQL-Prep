CREATE TABLE students (
    student_id VARCHAR(6) PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    age INT,
    department VARCHAR(50)
);

CREATE TABLE courses (
    course_id VARCHAR(6) PRIMARY KEY,
    course_name VARCHAR(50) NOT NULL,
    credits INT NOT NULL
);

CREATE TABLE enrollments (
    enrollment_id VARCHAR(6) PRIMARY KEY,
    student_id VARCHAR(6) NOT NULL,
    course_id VARCHAR(6) NOT NULL,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES courses(course_id) ON DELETE CASCADE
);

CREATE TABLE grades (
    grade_id VARCHAR(6) PRIMARY KEY,
    enrollment_id VARCHAR(6) NOT NULL,
    grade VARCHAR(2) CHECK (grade IN ('A', 'B', 'C', 'D', 'F')),
    FOREIGN KEY (enrollment_id) REFERENCES enrollments(enrollment_id) ON DELETE CASCADE
);