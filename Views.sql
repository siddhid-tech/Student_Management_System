-- ======================
-- Student course View
-- ======================

CREATE VIEW student_course_view AS

SELECT
    s.student_id,
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


-- ===================
-- Pending Fees View
-- ===================

CREATE VIEW pending_fees_view AS

SELECT
    s.student_id,
    s.first_name,
    s.last_name,
    f.remaining_amount
FROM Students s
INNER JOIN Fees f
ON s.student_id = f.student_id
WHERE f.payment_status != 'Paid';


-- =========================
-- Attendance Reprort View
-- =========================

CREATE VIEW attendance_report_view AS

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


-- ====================
-- Students Marks View
-- ====================

CREATE VIEW student_marks_view AS

SELECT
    s.first_name,
    s.last_name,
    m.subject,
    m.exam_name,
    m.marks
FROM Students s
INNER JOIN Marks m
ON s.student_id = m.student_id;