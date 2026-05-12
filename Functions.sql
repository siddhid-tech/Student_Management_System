-- ===========================
-- Calculate Remaining Fees
-- ===========================

DELIMITER //

CREATE FUNCTION calculate_remaining_fees(
    total DECIMAL(10,2),
    paid DECIMAL(10,2)
)

RETURNS DECIMAL(10,2)

DETERMINISTIC

BEGIN

    RETURN total - paid;

END //

DELIMITER ;


SELECT
    student_id,
    calculate_remaining_fees(
        total_fees,
        paid_amount
    ) AS remaining_fees
FROM Fees;


-- ====================
-- Student Full Name
-- ====================

DELIMITER //

CREATE FUNCTION get_full_name(
    fname VARCHAR(30),
    lname VARCHAR(30)
)

RETURNS VARCHAR(70)

DETERMINISTIC

BEGIN

    RETURN CONCAT(fname, ' ', lname);

END //

DELIMITER ;

SELECT
    get_full_name(
        first_name,
        last_name
    ) AS full_name
FROM Students;


-- ========================
-- Attendance Percentage
-- ========================

DELIMITER //

CREATE FUNCTION attendance_percentage(
    total_present INT,
    total_classes INT
)

RETURNS DECIMAL(5,2)

DETERMINISTIC

BEGIN

    RETURN (
        total_present / total_classes
    ) * 100;

END //

DELIMITER ;

SELECT attendance_percentage(18, 20);


-- =======================
-- Grade by Marks
-- =======================

DELIMITER //

CREATE FUNCTION get_grade(
    student_marks DECIMAL(5,2)
)

RETURNS VARCHAR(2)

DETERMINISTIC

BEGIN

    DECLARE grade VARCHAR(2);

    IF student_marks >= 90 THEN
        SET grade = 'A';

    ELSEIF student_marks >= 75 THEN
        SET grade = 'B';

    ELSEIF student_marks >= 60 THEN
        SET grade = 'C';

    ELSE
        SET grade = 'D';

    END IF;

    RETURN grade;

END //

DELIMITER ;

SELECT
    student_id,
    marks,
    get_grade(marks) AS grade
FROM Marks;