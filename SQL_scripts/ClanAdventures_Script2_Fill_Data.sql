-- Insert data into families table
INSERT INTO families (family_name, num_members, email)
VALUES
    ('AdventureClan', 4, 'AdventureClan@email.com'),
    ('WanderTribe', 3, 'WanderTribe@email.com'),
    ('DiscoveryCrew', 5, 'DiscoveryCrew@email.com'),
    ('ExplorationTeam', 6, 'ExplorationTeam@email.com'),
    ('JourneySquad', 4, 'JourneySquad@email.com'),
    ('OutdoorExplorers', 5, 'OutdoorExplorers@email.com'),
    ('WanderlustFamily', 3, 'WanderlustFamily@email.com'),
    ('NatureAdventurers', 4, 'NatureAdventurers@email.com'),
    ('TravelEnthusiasts', 5, 'TravelEnthusiasts@email.com'),
    ('VoyageClan', 6, 'VoyageClan@email.com');

-- Insert data into activities table
INSERT INTO activities (trip_id, activity_type, description)
VALUES
    (1, 'Hiking', 'Explore the scenic trails'),
    (2, 'Sightseeing', 'Visit historical landmarks'),
    (3, 'Beach Day', 'Relax on the sandy shores'),
    (4, 'Camping', 'Experience the great outdoors'),
    (5, 'City Tour', 'Discover urban attractions'),
    (6, 'Scuba Diving', 'Explore the underwater world'),
    (7, 'Mountain Biking', 'Ride through challenging trails'),
    (8, 'Cultural Workshop', 'Engage in local traditions'),
    (9, 'Wildlife Safari', 'Observe exotic animals'),
    (10, 'Wine Tasting', 'Sample local wines');

-- Insert data into destinations table
INSERT INTO destinations (location_name, country, description, activity_id)
VALUES
    ('Mountain Valley', 'USA', 'Enjoy the tranquility of nature', 1),
    ('Cityscape Paradise', 'France', 'Immerse in the rich culture', 2),
    ('Tropical Retreat', 'Maldives', 'Bask in the sun and clear waters', 3),
    ('Forest Campsite', 'Canada', 'Camp under the stars', 4),
    ('Metropolitan City', 'Japan', 'Experience the urban lifestyle', 5),
    ('Coral Reef', 'Australia', 'Dive into vibrant coral reefs', 6),
    ('Mountain Range', 'Switzerland', 'Breathtaking views for biking', 7),
    ('Historical Town', 'Italy', 'Learn about local history', 8),
    ('Safari Park', 'Kenya', 'Encounter wildlife in their habitat', 9),
    ('Vineyard Countryside', 'Argentina', 'Taste exquisite wines', 10),
    ('Alpine Wonderland', 'Switzerland', 'Snow-capped mountains and skiing', 7),
    ('Mediterranean Coast', 'Greece', 'Explore the beautiful seaside', 2),
    ('Historic Streets of Rome', 'Italy', 'Discover ancient landmarks', 8),
    ('Disney Magic Kingdom', 'USA', 'Experience the enchantment of Disney', 5),
    ('Goa Beach Paradise', 'India', 'Relax on the sandy beaches of Goa', 3),
    ('Eiffel Tower Views', 'France', 'Iconic views in the heart of Paris', 2),
    ('Amsterdam Canals', 'Netherlands', 'Boat tour through scenic canals', 5),
    ('Bavarian Countryside', 'Germany', 'Traditional villages and landscapes', 10),
    ('Spanish Flamenco Nights', 'Spain', 'Enjoy the vibrant Spanish culture', 8),
    ('Scottish Highlands', 'United Kingdom', 'Explore the rugged beauty', 7);

-- Insert data into trips table with at least 20 trips from 2014 to 2023
INSERT INTO trips (trip_name, start_date, end_date, destination_id, family_id)
VALUES
    ('Adventure', '2014-05-15', '2014-05-20', 1, 1),
    ('Explore', '2014-07-10', '2014-07-20', 2, 2),
    ('Discovery', '2014-09-01', '2014-09-07', 3, 3),
    ('Wilderness', '2015-06-15', '2015-06-20', 4, 4),
    ('City Lights', '2015-08-10', '2015-08-20', 5, 5),
    ('Underwater Expedition', '2015-10-01', '2015-10-07', 6, 1),
    ('Biking Adventure', '2016-05-15', '2016-05-20', 7, 7),
    ('Cultural Experience', '2016-07-10', '2016-07-20', 8, 8),
    ('Safari Journey', '2016-09-01', '2016-09-07', 9, 9),
    ('Wine Country Escape', '2017-06-15', '2017-06-20', 10, 10),
    ('Mountain Retreat', '2017-08-10', '2017-08-20', 11, 1),
    ('Historical Voyage', '2017-10-01', '2017-10-07', 12, 2),
    ('Beach Getaway', '2018-05-15', '2018-05-20', 13, 3),
    ('Camping Expedition', '2018-07-10', '2018-07-20', 14, 4),
    ('Urban Adventure', '2018-09-01', '2018-09-07', 15, 5),
    ('Scenic Tour', '2019-06-15', '2019-06-20', 16, 1),
    ('Nature Walk', '2019-08-10', '2019-08-20', 17, 7),
    ('Enchanting Escape', '2020-10-01', '2020-10-07', 18, 8),
    ('European Delight', '2021-04-15', '2021-04-20', 2, 2),
    ('Amsterdam Adventure', '2023-04-15', '2023-04-20', 17, 7);
    
    -- Insert data into expenses table
INSERT INTO expenses (trip_id, total_expenses)
VALUES
    (101, 1500.00),
    (102, 2000.50),
    (103, 1200.75),
    (104, 1800.00),
    (105, 2500.25),
    (106, 1300.50),
    (107, 1750.75),
    (108, 900.25),
    (109, 2100.00),
    (110, 1800.50),
    (111, 1600.75),
    (112, 2200.25),
    (113, 1900.00),
    (114, 1200.50),
    (115, 1500.75),
    (116, 2000.25),
    (117, 1750.00),
    (118, 1300.50);
   


