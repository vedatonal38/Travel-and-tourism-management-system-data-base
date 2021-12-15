-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: travel
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `vehicle_renals`
--

DROP TABLE IF EXISTS `vehicle_renals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_renals` (
  `id` int NOT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `Customer_id` int NOT NULL,
  `rental_status_id` int NOT NULL,
  `vehicles_id` int NOT NULL,
  `Admin_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_vehicle_renals_Customer_idx` (`Customer_id`),
  KEY `fk_vehicle_renals_rental_status1_idx` (`rental_status_id`),
  KEY `fk_vehicle_renals_vehicles1_idx` (`vehicles_id`),
  KEY `fk_vehicle_renals_Admin1_idx` (`Admin_id`),
  CONSTRAINT `fk_vehicle_renals_Admin1` FOREIGN KEY (`Admin_id`) REFERENCES `admin` (`id`),
  CONSTRAINT `fk_vehicle_renals_Customer` FOREIGN KEY (`Customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `fk_vehicle_renals_rental_status1` FOREIGN KEY (`rental_status_id`) REFERENCES `rental_status` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_renals`
--

LOCK TABLES `vehicle_renals` WRITE;
/*!40000 ALTER TABLE `vehicle_renals` DISABLE KEYS */;
INSERT INTO `vehicle_renals` VALUES (1,'2021-12-06 00:00:00','2021-12-06 00:00:00',11,1,1,1),(2,'2021-12-11 00:00:00','2021-12-14 00:00:00',11,2,1,1);
/*!40000 ALTER TABLE `vehicle_renals` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-15 11:48:50
