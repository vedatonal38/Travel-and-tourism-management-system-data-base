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
-- Table structure for table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotels` (
  `id` int NOT NULL,
  `city_id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `addres` text,
  `price` decimal(10,2) DEFAULT NULL,
  `hotel_img` text,
  PRIMARY KEY (`id`),
  KEY `fk_hotels_city1_idx` (`city_id`),
  CONSTRAINT `fk_hotels_city1` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotels`
--

LOCK TABLES `hotels` WRITE;
/*!40000 ALTER TABLE `hotels` DISABLE KEYS */;
INSERT INTO `hotels` VALUES (1,14,'Shangri-La','null',86.00,'https://paratic.com/dosya/2015/01/Shangri-La.jpg'),(2,279,'J. W. Marriott','null',136.00,'https://paratic.com/dosya/2015/01/J.W.-Marriott.jpg'),(3,11,'The Four Seasons','null',136.00,'https://paratic.com/dosya/2015/01/The-Four-Seasons.jpg'),(4,311,'Ritz-Carlton','null',237.00,'https://paratic.com/dosya/2015/01/Ritz-Carlton.jpg'),(5,99,'Peninsula Hotels','null',75.00,'https://paratic.com/dosya/2015/01/Peninsula-Hotels.jpg'),(6,73,'Banyan Tree','null',103.00,'https://paratic.com/dosya/2015/01/Banyan-Tree.jpg'),(7,144,'Mandarin Oriental','null',222.00,'https://paratic.com/dosya/2015/01/Mandarin-Oriental.jpg'),(8,46,'St. Regis','null',192.00,'https://paratic.com/dosya/2015/01/St.-Regis.jpg'),(9,257,'Aman','null',75.00,'https://paratic.com/dosya/2015/01/Aman.jpg'),(10,249,'Rosewood','null',102.00,'https://paratic.com/dosya/2015/01/Rosewood.jpg'),(11,210,'Jumirah','null',246.00,'https://paratic.com/dosya/2015/01/Jumirah.jpg'),(12,56,'InterContinental','null',233.00,'https://paratic.com/dosya/2015/01/InterContinental.jpg');
/*!40000 ALTER TABLE `hotels` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-15 11:48:52
