
-- =====================================
-- Student and Course Details
-- =====================================

SELECT 
    s.student_id,
    s.first_name,
    s.last_name,
    c.course_name
FROM Students s
INNER JOIN Enrollments e
ON s.student_id = e.student_id
INNER JOIN Courses c
ON e.course_id = c.course_id;


-- =====================================
-- Student, Course and Batch
-- =====================================

SELECT
    s.first_name,
    s.last_name,
    c.course_name,
    b.batch_name
FROM Students s
INNER JOIN Enrollments e
ON s.student_id = e.student_id
INNER JOIN Courses c
ON e.course_id = c.course_id
INNER JOIN Batches b
ON e.batch_id = b.batch_id;

-- =====================================
-- Student and Faculty Name
-- =====================================

SELECT
    s.first_name,
    s.last_name,
    c.course_name,
    f.first_name AS faculty_first_name,
    f.last_name AS faculty_last_name
FROM Students s
INNER JOIN Enrollments e
ON s.student_id = e.student_id
INNER JOIN Courses c
ON e.course_id = c.course_id
INNER JOIN Batches b
ON e.batch_id = b.batch_id
INNER JOIN Faculty f
ON b.faculty_id = f.faculty_id;

-- =====================================
-- Student and Attendance Status
-- =====================================

SELECT
    s.first_name,
    b.batch_name,
    a.attendance_date,
    a.status
FROM Attendance a
INNER JOIN Students s
ON a.student_id = s.student_id
INNER JOIN Batches b
ON a.batch_id = b.batch_id;

-- =====================================
-- Student and Fees
-- =====================================

SELECT
    s.first_name,
    s.last_name,
    f.total_fees,
    f.paid_amount,	
    f.remaining_amount,
    f.payment_status
FROM Students s
INNER JOIN Fees f
ON s.student_id = f.student_id;