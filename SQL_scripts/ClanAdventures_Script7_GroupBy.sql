/* Prepare an example query with group by and having to demonstrate how to extract data from your DB for analysis */

-- Steps: 
-- Join the families, trips, and expenses tables.
-- Use GROUP BY group the results by family_id and family_name.
-- With the AVG function, calculate the average expenses for each family.
-- The HAVING clause filters the results to include only families whose average expenses exceed a certain threshold (set here as  2000).

-- Query to analyze average expenses per family for trips with total expenses exceeding a threshold
SELECT
    f.family_id,
    f.family_name,
    AVG(e.total_expenses) AS average_expenses
FROM families f
JOIN trips t ON f.family_id = t.family_id
JOIN expenses e ON t.trip_id = e.trip_id
GROUP BY f.family_id, f.family_name
HAVING AVG(e.total_expenses) > 2000; -- Adjust the threshold as needed
