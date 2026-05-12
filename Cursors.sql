-- =====================
-- Fee report Cursor 
-- =====================

DELIMITER //

CREATE PROCEDURE fee_report_cursor()

BEGIN

    DECLARE done INT DEFAULT FALSE;

    DECLARE student_name VARCHAR(30);

    DECLARE pending_amount DECIMAL(10,2);

    DECLARE fee_cursor CURSOR FOR

    SELECT
        s.first_name,
        f.remaining_amount
    FROM Students s
    INNER JOIN Fees f
    ON s.student_id = f.student_id;

    DECLARE CONTINUE HANDLER
    FOR NOT FOUND
    SET done = TRUE;

    OPEN fee_cursor;

    fee_loop: LOOP

        FETCH fee_cursor
        INTO student_name, pending_amount;

        IF done THEN
            LEAVE fee_loop;
        END IF;

        SELECT
            student_name AS Student,
            pending_amount AS Remaining_Fees;

    END LOOP;

    CLOSE fee_cursor;

END //

DELIMITER ;