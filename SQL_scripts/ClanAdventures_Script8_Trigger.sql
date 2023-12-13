/* In your database, create a trigger and demonstrate how it runs */

-- Steps:
-- Alter families table to include a new column called average_spending
-- Call the earlier created stored function (CalculateAverageExpenses) when the the num of trips per family id exceeds two

-- Note: A trigger is invoked automatically when an SQL statement changes rows on a specified table

-- Alter families table 
ALTER TABLE families
ADD COLUMN average_spending DECIMAL(10, 2) DEFAULT 0.00;

--  create the trigger
DELIMITER //
CREATE TRIGGER check_and_update_average_spend
AFTER INSERT ON trips
FOR EACH ROW
BEGIN
    DECLARE family_id_check INT;
    DECLARE num_trips INT;
    DECLARE average_spending DECIMAL(10, 2);

    -- Get the family_id for the newly inserted trip
    SET family_id_check = NEW.family_id;

    -- Count the number of trips for the specified family
    SELECT COUNT(*) INTO num_trips
    FROM trips
    WHERE family_id = family_id_check;
    -- If the number of trips exceeds 2, call the stored function and update the families table
    IF num_trips > 2 THEN
        -- Call the stored function to calculate average expenses
        SET average_spending = CalculateAverageExpenses(family_id_check);

        -- Update the families table with the calculated average spend
        UPDATE families
        SET average_spending = average_spending
        WHERE family_id = family_id_check;
    END IF;
END;

//
DELIMITER ;

-- Add test for above 
INSERT INTO trips (trip_name, start_date, end_date, destination_id, family_id)
VALUES
    ('Adventure', '2023-08-15', '2023-08-22', 1, 8);

