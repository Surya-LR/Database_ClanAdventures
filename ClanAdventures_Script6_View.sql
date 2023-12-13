/*Create a view that uses at least 3-4 base tables; prepare and demonstrate a query that uses the view to produce a logically arranged result set for analysis.*/

-- create a view that combines information from the trips, families, destinations, and expenses tables. 
-- This view will display details about each trip, the associated family, destination, and total expenses.

-- Create a view combining information from multiple tables
CREATE VIEW trip_details_view AS
SELECT
    t.trip_id,
    t.trip_name,
    t.start_date,
    t.end_date,
    f.family_id,
    f.family_name,
    f.num_members,
    d.destination_id,
    d.location_name,
    d.country,
    e.total_expenses
FROM trips t
JOIN families f ON t.family_id = f.family_id
JOIN destinations d ON t.destination_id = d.destination_id
LEFT JOIN expenses e ON t.trip_id = e.trip_id;


-- Test query - Retrieve information using the created view
SELECT * FROM trip_details_view;

/* future - cross check Null values to confirm*/
