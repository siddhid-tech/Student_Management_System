-- ==================
-- Show all Students
-- ==================

DELIMITER //

CREATE PROCEDURE get_all_students()

BEGIN

    SELECT * 
    FROM Students;

END //

DELIMITER ;


-- =======================
-- Students by City
-- =======================

DELIMITER //

CREATE PROCEDURE get_students_by_city(
    IN city_name VARCHAR(50)
)

BEGIN

    SELECT *
    FROM Students
    WHERE city = city_name;

END //

DELIMITER ;


-- ===========================
-- Students with Pending fees 
-- ===========================

DELIMITER //

CREATE PROCEDURE get_pending_fees_students()

BEGIN

    SELECT
        s.first_name,
        s.last_name,
        f.remaining_amount
    FROM Students s
    INNER JOIN Fees f
    ON s.student_id = f.student_id
    WHERE f.payment_status != 'Paid';

END //

DELIMITER ;


-- ==================
-- Add new Students
-- ==================

DELIMITER //

CREATE PROCEDURE add_student(
    IN p_first_name VARCHAR(30),
    IN p_last_name VARCHAR(30),
    IN p_gender ENUM('M', 'F', 'O'),
    IN p_dob DATE,
    IN p_phone VARCHAR(15),
    IN p_email VARCHAR(100),
    IN p_city VARCHAR(50)
)

BEGIN

    INSERT INTO Students(
        first_name,
        last_name,
        gender,
        dob,
        phone,
        email,
        city
    )

    VALUES(
        p_first_name,
        p_last_name,
        p_gender,
        p_dob,
        p_phone,
        p_email,
        p_city
    );

END //

DELIMITER ;


