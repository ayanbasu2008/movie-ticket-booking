CREATE DATABASE  IF NOT EXISTS `booking` ;
USE `booking`;


--
-- Table structure for table `auditorium`
--

DROP TABLE IF EXISTS `auditorium`;
CREATE TABLE `auditorium` (
  `auditorium_id` bigint(20) NOT NULL,
  `seat_count` int(11) DEFAULT NULL,
  `theatre_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`auditorium_id`),
  KEY `FK7utg9cwqt56kfn88dpr3puw9u` (`theatre_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


--
-- Dumping data for table `auditorium`
--

LOCK TABLES `auditorium` WRITE;
INSERT INTO `auditorium` VALUES (1,5,1),(2,5,1),(3,5,1),(4,5,2),(5,5,2),(6,5,2);
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
CREATE TABLE `booking` (
  `booking_id` bigint(20) NOT NULL,
  `booking_time` time DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `is_booked` bit(1) DEFAULT NULL,
  `screening_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `FK2foui1uun4fokjtf6pt2y1ykf` (`screening_id`),
  KEY `FKkgseyy7t56x7lkjgu3wah5s3t` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;

INSERT INTO `hibernate_sequence` VALUES (1),(1),(1),(1),(1),(1),(1),(1);
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie` (
  `movie_id` bigint(20) NOT NULL,
  `duration` int(11) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `poster` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
INSERT INTO `movie` VALUES (2,140,'Action',NULL,'Hobbs And Shaw', 'English'),(3,150,'Action',NULL,'Men In Black','English'),(4,135,'Drama',NULL,'Sacred Games', 'German'),(5,140,'Adventure',NULL,'Aladdin', 'English'),(6,150,'Drama',NULL,'Mission Mangal', 'Hindi');
UNLOCK TABLES;

--
-- Table structure for table `screening`
--

DROP TABLE IF EXISTS `screening`;
CREATE TABLE `screening` (
  `screening_id` bigint(20) NOT NULL,
  `date` date DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `auditorium_id` bigint(20) DEFAULT NULL,
  `movie_id` bigint(20) DEFAULT NULL,
  `is_full` bit(1) DEFAULT b'0',
   `price` int(20) DEFAULT NULL,
  PRIMARY KEY (`screening_id`),
  KEY `FKc5jmfksm86w9sooy5fdy6xa3c` (`auditorium_id`),
  KEY `FKfp7sh76xc9m508stllspchnp9` (`movie_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `screening`
--

LOCK TABLES `screening` WRITE;
INSERT INTO `screening` VALUES (5,'2019-08-16','12:00:00','10:00:00',2,2,_binary '\0', 120),(6,'2019-08-16','15:00:00','13:00:00',2,2,_binary '\0',150),(7,'2019-08-16','18:00:00','16:00:00',2,2,_binary '\0', 100),(8,'2019-08-16','21:00:00','19:00:00',2,2,_binary '\0', 300),(9,'2019-08-16','12:00:00','10:00:00',4,3,_binary '\0', 250),(10,'2019-08-16','15:00:00','13:00:00',4,3,_binary '\0', 250),(11,'2019-08-16','18:00:00','16:00:00',4,3,_binary '\0', 200),(12,'2019-08-17','21:00:00','19:00:00',4,3,_binary '\0', 200);
UNLOCK TABLES;

--
-- Table structure for table `seat`
--

DROP TABLE IF EXISTS `seat`;
CREATE TABLE `seat` (
  `seat_id` bigint(20) NOT NULL,
  `seat_number` int(11) DEFAULT NULL,
  `auditorium_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`seat_id`),
  KEY `FKotpis64jx0uqh3k507csp9ire` (`auditorium_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `seat`
--

LOCK TABLES `seat` WRITE;
INSERT INTO `seat` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,1,2),(7,2,2),(8,3,2),(9,4,2),(10,5,2),(11,1,3),(12,2,3),(13,3,3),(14,4,3),(15,5,3),(16,1,4),(17,2,4),(18,3,4),(19,4,4),(20,5,4),(21,1,5),(22,2,5),(23,3,5),(24,4,5),(25,5,5),(26,1,6),(27,2,6),(28,3,6),(29,4,6),(30,5,6);
UNLOCK TABLES;

--
-- Table structure for table `seat_booked`
--

DROP TABLE IF EXISTS `seat_booked`;
CREATE TABLE `seat_booked` (
  `seat_booked_id` bigint(20) NOT NULL,
  `booking_id` bigint(20) DEFAULT NULL,
  `screening_id` bigint(20) DEFAULT NULL,
  `seat_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`seat_booked_id`),
  KEY `FKd1jo0mwkfb6ge8u0muaw7kxgd` (`booking_id`),
  KEY `FK80iip0r5dy5yyejysqt2i2o5k` (`screening_id`),
  KEY `FKbdd2xyix7nfiayvsrel7k4ga` (`seat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `seat_booked`
--

LOCK TABLES `seat_booked` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `theatre`
--

DROP TABLE IF EXISTS `theatre`;
CREATE TABLE `theatre` (
  `theatre_id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`theatre_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


--
-- Dumping data for table `theatre`
--

LOCK TABLES `theatre` WRITE;
INSERT INTO `theatre` VALUES (1,'PVR', 'Kolkata'),(2,'INOX', 'Delhi');
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
INSERT INTO `user` VALUES (1,'ayan','ayan'),(2,'mome','mome');
UNLOCK TABLES;

-- Dump completed on 2019-08-19  0:50:01
