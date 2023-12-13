/* Using any type of the joins create a view that combines multiple tables in a logical way*/

-- Question: Retrieve a list of families along with their total expenses, including families without any recorded expenses.
-- Steps: LEFT JOIN  families table with the trips table to include all families, even those without recorded trips.
-- Another LEFT JOIN with the expenses table to include total expenses for each family, even if they have no recorded expenses.
-- The COALESCE function is used to replace NULL values (families without expenses) with 0.
-- GROUP the results by family_name to get the total expenses for each family.

-- also modified the data to have one family with no expenses
USE clan_adventures;
SELECT families.family_name, COALESCE(SUM(expenses.total_expenses), 0) AS total_expenses
FROM families
LEFT JOIN trips ON families.family_id = trips.family_id
LEFT JOIN expenses ON trips.trip_id = expenses.trip_id
GROUP BY families.family_name;
