-- =====================================
-- Student with Highest Marks
-- =====================================
SELECT
    first_name,
    last_name
FROM Students
WHERE student_id = (
    SELECT student_id
    FROM Marks
    WHERE marks = (
        SELECT MAX(marks)
        FROM Marks
    )
);

-- ============================
-- Students With Pending fees 
-- ============================
SELECT
    first_name,
    last_name
FROM Students
WHERE student_id IN (
    SELECT student_id
    FROM Fees
    WHERE payment_status = 'Pending'
);

-- ====================================
-- Students scoring more than Average
-- ====================================

SELECT
    student_id,
    subject,
    marks
FROM Marks
WHERE marks > (
    SELECT AVG(marks)
    FROM Marks
);

-- =====================================
-- Courses with more than two Students
-- =====================================

SELECT
    course_name
FROM Courses
WHERE course_id IN (
    SELECT course_id
    FROM Enrollments
    GROUP BY course_id
    HAVING COUNT(student_id) > 2
);

-- =====================================
-- Students not enrolled in any course 
-- =====================================

SELECT
    first_name,
    last_name
FROM Students
WHERE student_id NOT IN (
    SELECT student_id
    FROM Enrollments
);

-- ===========================
-- Students paying full fees
-- ===========================

SELECT
    first_name,
    last_name
FROM Students
WHERE student_id IN (
    SELECT student_id
    FROM Fees
    WHERE payment_status = 'Paid'
);