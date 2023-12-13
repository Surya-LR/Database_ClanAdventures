/* In your database, create a stored function that can be applied to a query in your DB */
-- Question: analyze the average expenses for families who have taken trips to a specific destination. 
-- Steps: 
-- use a subquery to first identify the families that have visited a particular destination and then calculate the average expenses for those families.
-- Subquery to get families that visited a specific destination
SELECT
    t.family_id,
    f.family_name,
    e.total_expenses
FROM
    trips t
JOIN
    families f ON t.family_id = f.family_id
JOIN
    expenses e ON t.trip_id = e.trip_id
WHERE
    t.destination_id = 3; -- Replace with the desired destination_id

-- Query to calculate the average expenses for families visiting the specified destination
SELECT
    AVG(subquery_avg_expenses.total_expenses) AS average_expenses_for_destination
FROM
    ( -- Subquery
        SELECT
            t.family_id,
            f.family_name,
            e.total_expenses
        FROM
            trips t
        JOIN
            families f ON t.family_id = f.family_id
        JOIN
            expenses e ON t.trip_id = e.trip_id
        WHERE
            t.destination_id = 3 -- Replace with the desired destination_id
    ) subquery_avg_expenses; -- name for subquery
