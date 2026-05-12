-- =====================================
-- Insert Data into Courses
-- =====================================

INSERT INTO Courses
(course_name, duration_months, total_fees)
VALUES
('Data Analytics', 6, 45000),

('Data Science', 8, 60000),

('Web Development', 5, 40000),

('Python Programming', 4, 30000),

('Power BI', 3, 25000);

-- =====================================
-- Insert Data into Faculty
-- =====================================

INSERT INTO Faculty
(first_name, last_name, specialization, phone, email)
VALUES

('Amit', 'Sharma', 'Data Analytics',
'9876543210', 'amit.sharma@example.com'),

('Neha', 'Patel', 'Data Science',
'9876543211', 'neha.patel@example.com'),

('Rahul', 'Verma', 'Web Development',
'9876543212', 'rahul.verma@example.com');

-- =====================================
-- Insert Data into Students
-- =====================================

INSERT INTO Students
(first_name, last_name, gender, dob, phone, email, city, joining_date)
VALUES

('Priya', 'Joshi', 'F', '2003-05-12', '9876500011', 'priya.joshi@example.com', 'Pune', '2024-01-21'), 
('Sunidhi', 'Ghosh', 'F', '2005-06-03', '9875684258', 'sunidhi.ghosh@example.com', 'Pune', '2024-01-15'),
('Arjun', 'Mehta', 'M', '2004-11-22', '9822012345', 'arjun.mehta@example.com', 'Mumbai', '2024-01-16'),
('Isha', 'Deshpande', 'F', '2005-02-14', '9764551234', 'isha.d@example.com', 'Pune', '2024-01-16'),
('Rohan', 'Kulkarni', 'M', '2004-09-30', '9158009876', 'rohan.k@example.com', 'Nagpur', '2024-01-17'),
('Ananya', 'Sharma', 'F', '2005-12-05', '9923445566', 'ananya.s@example.com', 'Nashik', '2024-01-18'),
('Kabir', 'Singh', 'M', '2003-07-20', '9850011223', 'kabir.singh@example.com', 'Pune', '2024-01-20'),
('Tanvi', 'Patil', 'F', '2005-04-12', '9422005588', 'tanvi.p@example.com', 'Aurangabad', '2024-01-21'),
('Aditya', 'Joshi', 'M', '2004-01-25', '9881122334', 'aditya.j@example.com', 'Mumbai', '2024-01-22'),
('Sana', 'Khan', 'F', '2005-08-18', '7709988776', 'sana.k@example.com', 'Pune', '2024-01-22'),
('Vikram', 'Rao', 'M', '2004-03-11', '8888123456', 'vikram.rao@example.com', 'Solapur', '2024-01-25');

-- =====================================
-- Insert Data into Batches
-- =====================================

INSERT INTO Batches
(course_id, faculty_id, batch_name,
start_date, timing, status)
VALUES

(1, 1, 'DA_Morning_A',
'2024-02-01',
'7:00 AM - 8:30 AM',
'Active'),

(2, 2, 'DS_Evening_B',
'2024-02-05',
'6:00 PM - 8:00 PM',
'Active'),

(3, 3, 'WEB_Weekend_A',
'2024-02-10',
'10:00 AM - 1:00 PM',
'Upcoming');

-- =====================================
-- Insert Data into Enrollments
-- =====================================

INSERT INTO Enrollments
(student_id, course_id, batch_id, enrollment_date)
VALUES

(1, 1, 1, '2024-02-01'),

(2, 1, 1, '2024-02-01'),

(3, 2, 2, '2024-02-05'),

(4, 1, 1, '2024-02-02'),

(5, 3, 3, '2024-02-10'),

(6, 2, 2, '2024-02-06'),

(7, 1, 1, '2024-02-03'),

(8, 3, 3, '2024-02-11'),

(9, 2, 2, '2024-02-07'),

(10, 1, 1, '2024-02-04');

-- =====================================
-- Insert Data into Fees
-- =====================================

INSERT INTO Fees
(student_id, total_fees, paid_amount,
remaining_amount, payment_status)
VALUES

(1, 45000, 45000, 0, 'Paid'),

(2, 45000, 20000, 25000, 'Partial'),

(3, 60000, 60000, 0, 'Paid'),

(4, 45000, 15000, 30000, 'Partial'),

(5, 40000, 0, 40000, 'Pending'),

(6, 60000, 30000, 30000, 'Partial'),

(7, 45000, 45000, 0, 'Paid'),

(8, 40000, 10000, 30000, 'Partial'),

(9, 60000, 0, 60000, 'Pending'),

(10, 45000, 25000, 20000, 'Partial');

-- =====================================
-- Insert Data into Attendance
-- =====================================

INSERT INTO Attendance
(student_id, batch_id, attendance_date, status)
VALUES

(1, 1, '2024-02-10', 'Present'),

(2, 1, '2024-02-10', 'Absent'),

(3, 2, '2024-02-10', 'Present'),

(4, 1, '2024-02-10', 'Present'),

(5, 3, '2024-02-10', 'Absent'),

(6, 2, '2024-02-10', 'Present'),

(7, 1, '2024-02-10', 'Present'),

(8, 3, '2024-02-10', 'Present'),

(9, 2, '2024-02-10', 'Absent'),

(10, 1, '2024-02-10', 'Present');

-- =====================================
-- Insert Data into Marks
-- =====================================

INSERT INTO Marks
(student_id, subject, exam_name,
marks, exam_date)
VALUES

(1, 'SQL', 'Midterm', 85, '2024-03-01'),

(2, 'SQL', 'Midterm', 72, '2024-03-01'),

(3, 'Python', 'Midterm', 91, '2024-03-01'),

(4, 'SQL', 'Midterm', 78, '2024-03-01'),

(5, 'Web Development', 'Midterm', 69, '2024-03-01'),

(6, 'Python', 'Midterm', 88, '2024-03-01'),

(7, 'SQL', 'Midterm', 95, '2024-03-01'),

(8, 'Web Development', 'Midterm', 80, '2024-03-01'),

(9, 'Python', 'Midterm', 74, '2024-03-01'),

(10, 'SQL', 'Midterm', 83, '2024-03-01'),

(11, 'SQL', 'Midterm', 83, '2024-03-01');