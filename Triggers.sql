-- ==============================
-- Autocaluculate Remaining Fees
-- ==============================

DELIMITER //

CREATE TRIGGER calculate_remaining_fees

BEFORE INSERT ON Fees

FOR EACH ROW

BEGIN

    SET NEW.remaining_amount =
    NEW.total_fees - NEW.paid_amount;

END //

DELIMITER ;


-- ==============================
-- Auto Set payment Status
-- ==============================

DELIMITER //

CREATE TRIGGER update_payment_status

BEFORE INSERT ON Fees

FOR EACH ROW

BEGIN

    IF NEW.paid_amount = 0 THEN
        SET NEW.payment_status = 'Pending';

    ELSEIF NEW.paid_amount < NEW.total_fees THEN
        SET NEW.payment_status = 'Partial';

    ELSE
        SET NEW.payment_status = 'Paid';

    END IF;

END //

DELIMITER ;


-- ============================
-- Prevent Negetive Marks
-- ============================

DELIMITER //

CREATE TRIGGER prevent_negative_marks

BEFORE INSERT ON Marks

FOR EACH ROW

BEGIN

    IF NEW.marks < 0 THEN

        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Marks cannot be negative';

    END IF;

END //

DELIMITER ;