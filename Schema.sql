CREATE DATABASE IF NOT EXISTS Student_Management;
USE Student_Management;

CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    gender ENUM('M', 'F', 'O') NOT NULL,
    dob DATE NOT NULL,
    phone VARCHAR(15) UNIQUE,
    email VARCHAR(100) UNIQUE NOT NULL,
    city VARCHAR(50),
    joining_date DATE DEFAULT (CURRENT_DATE)
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(50) UNIQUE NOT NULL,
    duration_months INT NOT NULL,
    total_fees DECIMAL(10,2) NOT NULL
);

CREATE TABLE Faculty (
    faculty_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    specialization VARCHAR(50) NOT NULL,
    phone VARCHAR(15) UNIQUE,
    email VARCHAR(100) UNIQUE NOT NULL,
    joining_date DATE DEFAULT (CURRENT_DATE)
);

CREATE TABLE Batches (
    batch_id INT PRIMARY KEY AUTO_INCREMENT,
    course_id INT NOT NULL,
    faculty_id INT NOT NULL,
    batch_name VARCHAR(50) UNIQUE NOT NULL,
    start_date DATE NOT NULL,
    timing VARCHAR(30),
    status ENUM('Active', 'Completed', 'Upcoming')
    DEFAULT 'Upcoming',

    FOREIGN KEY (course_id)
    REFERENCES Courses(course_id),

    FOREIGN KEY (faculty_id)
    REFERENCES Faculty(faculty_id)
);

CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    batch_id INT NOT NULL,
    enrollment_date DATE DEFAULT (CURRENT_DATE),

    CONSTRAINT unique_enrollment
    UNIQUE (student_id, batch_id),

    FOREIGN KEY (student_id)
    REFERENCES Students(student_id),

    FOREIGN KEY (course_id)
    REFERENCES Courses(course_id),

    FOREIGN KEY (batch_id)
    REFERENCES Batches(batch_id)
);

CREATE TABLE Fees (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT NOT NULL,
    total_fees DECIMAL(10,2) NOT NULL,
    paid_amount DECIMAL(10,2) DEFAULT 0,
    remaining_amount DECIMAL(10,2),
    payment_date DATE DEFAULT (CURRENT_DATE),
    payment_status ENUM('Paid', 'Partial', 'Pending')
    DEFAULT 'Pending',

    FOREIGN KEY (student_id)
    REFERENCES Students(student_id)
);

CREATE TABLE Attendance (
    attendance_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT NOT NULL,
    batch_id INT NOT NULL,
    attendance_date DATE NOT NULL,
    status ENUM('Present', 'Absent') NOT NULL,

    CONSTRAINT unique_attendance
    UNIQUE (student_id, batch_id, attendance_date),

    FOREIGN KEY (student_id)
    REFERENCES Students(student_id),

    FOREIGN KEY (batch_id)
    REFERENCES Batches(batch_id)
);

CREATE TABLE Marks (
    mark_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT NOT NULL,
    subject VARCHAR(50) NOT NULL,
    exam_name VARCHAR(50) NOT NULL,
    marks DECIMAL(5,2) NOT NULL,
    exam_date DATE NOT NULL,

    CONSTRAINT unique_marks
    UNIQUE (student_id, subject, exam_name),

    FOREIGN KEY (student_id)
    REFERENCES Students(student_id)
);