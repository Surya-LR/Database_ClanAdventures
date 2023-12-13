/* In your database, create a stored function that can be applied to a query in your DB */

DELIMITER //  

/* Note: 
 1.DELIMITER // statement changes the delimiter to //, and the final DELIMITER ; statement restores it back to the default semicolon.
 This allows you to use semicolons within the body of the stored procedure. Done as defining stored procedures, functions, triggers, or other 
 block-oriented statements, you use semicolons within the body of these statements
 2.A deterministic function always returns the same result for the same input parameters whereas a non-deterministic function returns different results for the same input parameters.*/

-- The stored Function 
DELIMITER //

CREATE FUNCTION CalculateAverageExpenses(familyId INT) 
RETURNS DECIMAL(10, 2)
DETERMINISTIC -- need to specify here , else error
BEGIN
    DECLARE totalExpenses DECIMAL(10, 2);
    DECLARE numTrips INT;

    -- Calculate total expenses for the specified family
    SELECT SUM(expenses.total_expenses) INTO totalExpenses
    FROM trips
    JOIN expenses ON trips.trip_id = expenses.trip_id
    WHERE trips.family_id = familyId;

    -- Calculate the average expenses
    SELECT COUNT(*) INTO numTrips
    FROM trips
    WHERE trips.family_id = familyId;

    IF numTrips > 0 THEN
        RETURN totalExpenses / numTrips;
    ELSE
        RETURN 0.00; -- Return 0 if there are no trips for the family
    END IF;
END //
DELIMITER ;

-- Test the stored function
SELECT CalculateAverageExpenses(1) AS average_expenses_family_1;

/* for further improvement - check if you can return family name instead of id */