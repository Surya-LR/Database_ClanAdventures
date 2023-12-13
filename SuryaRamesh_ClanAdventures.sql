-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: clan_adventures
-- ------------------------------------------------------
-- Server version	8.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activities` (
  `activity_id` int NOT NULL AUTO_INCREMENT,
  `trip_id` int DEFAULT NULL,
  `activity_type` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities`
--

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
INSERT INTO `activities` VALUES (1,1,'Hiking','Explore the scenic trails'),(2,2,'Sightseeing','Visit historical landmarks'),(3,3,'Beach Day','Relax on the sandy shores'),(4,4,'Camping','Experience the great outdoors'),(5,5,'City Tour','Discover urban attractions'),(6,6,'Scuba Diving','Explore the underwater world'),(7,7,'Mountain Biking','Ride through challenging trails'),(8,8,'Cultural Workshop','Engage in local traditions'),(9,9,'Wildlife Safari','Observe exotic animals'),(10,10,'Wine Tasting','Sample local wines');
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `destinations`
--

DROP TABLE IF EXISTS `destinations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `destinations` (
  `destination_id` int NOT NULL AUTO_INCREMENT,
  `location_name` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `description` text,
  `activity_id` int DEFAULT NULL,
  PRIMARY KEY (`destination_id`),
  KEY `activity_id` (`activity_id`),
  CONSTRAINT `destinations_ibfk_1` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destinations`
--

LOCK TABLES `destinations` WRITE;
/*!40000 ALTER TABLE `destinations` DISABLE KEYS */;
INSERT INTO `destinations` VALUES (1,'Mountain Valley','USA','Enjoy the tranquility of nature',1),(2,'Cityscape Paradise','France','Immerse in the rich culture',2),(3,'Tropical Retreat','Maldives','Bask in the sun and clear waters',3),(4,'Forest Campsite','Canada','Camp under the stars',4),(5,'Metropolitan City','Japan','Experience the urban lifestyle',5),(6,'Coral Reef','Australia','Dive into vibrant coral reefs',6),(7,'Mountain Range','Switzerland','Breathtaking views for biking',7),(8,'Historical Town','Italy','Learn about local history',8),(9,'Safari Park','Kenya','Encounter wildlife in their habitat',9),(10,'Vineyard Countryside','Argentina','Taste exquisite wines',10),(11,'Alpine Wonderland','Switzerland','Snow-capped mountains and skiing',7),(12,'Mediterranean Coast','Greece','Explore the beautiful seaside',2),(13,'Historic Streets of Rome','Italy','Discover ancient landmarks',8),(14,'Disney Magic Kingdom','USA','Experience the enchantment of Disney',5),(15,'Goa Beach Paradise','India','Relax on the sandy beaches of Goa',3),(16,'Eiffel Tower Views','France','Iconic views in the heart of Paris',2),(17,'Amsterdam Canals','Netherlands','Boat tour through scenic canals',5),(18,'Bavarian Countryside','Germany','Traditional villages and landscapes',10),(19,'Spanish Flamenco Nights','Spain','Enjoy the vibrant Spanish culture',8),(20,'Scottish Highlands','United Kingdom','Explore the rugged beauty',7);
/*!40000 ALTER TABLE `destinations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expenses` (
  `expense_id` int NOT NULL AUTO_INCREMENT,
  `trip_id` int DEFAULT NULL,
  `total_expenses` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`expense_id`),
  KEY `trip_id` (`trip_id`),
  CONSTRAINT `expenses_ibfk_1` FOREIGN KEY (`trip_id`) REFERENCES `trips` (`trip_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

LOCK TABLES `expenses` WRITE;
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
INSERT INTO `expenses` VALUES (1,101,1500.00),(2,102,2000.50),(3,103,1200.75),(4,104,1800.00),(5,105,2500.25),(6,106,1300.50),(7,107,1750.75),(8,108,900.25),(9,109,2100.00),(10,110,1800.50),(11,111,1600.75),(12,112,2200.25),(13,113,1900.00),(14,114,1200.50),(15,115,1500.75),(16,116,2000.25),(17,117,1750.00),(18,118,1300.50);
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `families`
--

DROP TABLE IF EXISTS `families`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `families` (
  `family_id` int NOT NULL AUTO_INCREMENT,
  `family_name` varchar(255) DEFAULT NULL,
  `num_members` int DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `average_spending` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`family_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `families`
--

LOCK TABLES `families` WRITE;
/*!40000 ALTER TABLE `families` DISABLE KEYS */;
INSERT INTO `families` VALUES (1,'AdventureClan',4,'AdventureClan@email.com',0.00),(2,'WanderTribe',4,'WanderTribe@email.com',0.00),(3,'DiscoveryCrew',5,'DiscoveryCrew@email.com',0.00),(4,'ExplorationTeam',6,'ExplorationTeam@email.com',0.00),(5,'JourneySquad',4,'JourneySquad@email.com',0.00),(6,'OutdoorExplorers',5,'OutdoorExplorers@email.com',0.00),(7,'WanderlustFamily',3,'WanderlustFamily@email.com',0.00),(8,'NatureAdventurers',5,'NatureAdventurers@email.com',1166.92),(9,'TravelEnthusiasts',5,'TravelEnthusiasts@email.com',0.00),(10,'VoyageClan',6,'VoyageClan@email.com',0.00);
/*!40000 ALTER TABLE `families` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `trip_details_view`
--

DROP TABLE IF EXISTS `trip_details_view`;
/*!50001 DROP VIEW IF EXISTS `trip_details_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `trip_details_view` AS SELECT 
 1 AS `trip_id`,
 1 AS `trip_name`,
 1 AS `start_date`,
 1 AS `end_date`,
 1 AS `family_id`,
 1 AS `family_name`,
 1 AS `num_members`,
 1 AS `destination_id`,
 1 AS `location_name`,
 1 AS `country`,
 1 AS `total_expenses`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `trips`
--

DROP TABLE IF EXISTS `trips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trips` (
  `trip_id` int NOT NULL AUTO_INCREMENT,
  `trip_name` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `destination_id` int DEFAULT NULL,
  `family_id` int DEFAULT NULL,
  PRIMARY KEY (`trip_id`),
  KEY `destination_id` (`destination_id`),
  KEY `family_id` (`family_id`),
  CONSTRAINT `trips_ibfk_1` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`destination_id`),
  CONSTRAINT `trips_ibfk_2` FOREIGN KEY (`family_id`) REFERENCES `families` (`family_id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trips`
--

LOCK TABLES `trips` WRITE;
/*!40000 ALTER TABLE `trips` DISABLE KEYS */;
INSERT INTO `trips` VALUES (100,'Adventure','2014-05-15','2014-05-20',1,1),(101,'Explore','2014-07-10','2014-07-20',2,2),(102,'Discovery','2014-09-01','2014-09-07',3,3),(103,'Wilderness','2015-06-15','2015-06-20',4,4),(104,'City Lights','2015-08-10','2015-08-20',5,5),(105,'Underwater Expedition','2015-10-01','2015-10-07',6,1),(106,'Biking Adventure','2016-05-15','2016-05-20',7,7),(107,'Cultural Experience','2016-07-10','2016-07-20',8,8),(108,'Safari Journey','2016-09-01','2016-09-07',9,9),(109,'Wine Country Escape','2017-06-15','2017-06-20',10,10),(110,'Mountain Retreat','2017-08-10','2017-08-20',11,1),(111,'Historical Voyage','2017-10-01','2017-10-07',12,2),(112,'Beach Getaway','2018-05-15','2018-05-20',13,3),(113,'Camping Expedition','2018-07-10','2018-07-20',14,4),(114,'Urban Adventure','2018-09-01','2018-09-07',15,5),(115,'Scenic Tour','2019-06-15','2019-06-20',16,1),(116,'Nature Walk','2019-08-10','2019-08-20',17,7),(117,'Enchanting Escape','2020-10-01','2020-10-07',18,8),(118,'European Delight','2021-04-15','2021-04-20',2,2),(119,'Amsterdam Adventure','2023-04-15','2023-04-20',17,7),(121,'Summer Vacation','2023-07-01','2023-07-10',6,2),(122,'Adventure','2023-08-15','2023-08-22',1,8);
/*!40000 ALTER TABLE `trips` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `check_and_update_average_spend` AFTER INSERT ON `trips` FOR EACH ROW BEGIN
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
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'clan_adventures'
--

--
-- Dumping routines for database 'clan_adventures'
--
/*!50003 DROP FUNCTION IF EXISTS `CalculateAverageExpenses` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `CalculateAverageExpenses`(familyId INT) RETURNS decimal(10,2)
    DETERMINISTIC
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `trip_details_view`
--

/*!50001 DROP VIEW IF EXISTS `trip_details_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `trip_details_view` AS select `t`.`trip_id` AS `trip_id`,`t`.`trip_name` AS `trip_name`,`t`.`start_date` AS `start_date`,`t`.`end_date` AS `end_date`,`f`.`family_id` AS `family_id`,`f`.`family_name` AS `family_name`,`f`.`num_members` AS `num_members`,`d`.`destination_id` AS `destination_id`,`d`.`location_name` AS `location_name`,`d`.`country` AS `country`,`e`.`total_expenses` AS `total_expenses` from (((`trips` `t` join `families` `f` on((`t`.`family_id` = `f`.`family_id`))) join `destinations` `d` on((`t`.`destination_id` = `d`.`destination_id`))) left join `expenses` `e` on((`t`.`trip_id` = `e`.`trip_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-02 14:21:27
