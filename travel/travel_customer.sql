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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password_` varchar(64) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'ozuluonyechukwueb22','farkindaol','ozuluonyechukwueb@zooants.com','Ozuluonye','Chukwuebuka'),(2,'chukwumogeiroawuc40','farkindaol','chukwumogeiroawuc@zooants.com','Chukwumoge','Iroawuchi'),(3,'ugochukwungozichu14','farkindaol','ugochukwungozichu@zooants.com','Ugochukwu','Ngozichukwuka'),(4,'nwannekachidi67','farkindaol','nwannekachidi@zooants.com','Nwanneka','Chidi'),(5,'odinakachindubuag57','farkindaol','odinakachindubuag@zooants.com','Odinakachi','Ndubuagha'),(6,'chinweubaibeabuch76','farkindaol','chinweubaibeabuch@zooants.com','Chinweuba','Ibeabuchi'),(7,'ijendunwagugheuzo36','farkindaol','ijendunwagugheuzo@zooants.com','Ijendu','Nwagugheuzo'),(8,'egoliemchizoba27','farkindaol','egoliemchizoba@zooants.com','Egoliem','Chizoba'),(9,'ugojiosinachi51','farkindaol','ugojiosinachi@zooants.com','Ugoji','Osinachi'),(10,'akwaugoonyekachuk66','farkindaol','akwaugoonyekachuk@zooants.com','Akwaugo','Onyekachukwu'),(11,'vedatonal38','vvv','vedatonal38@gmail.com','Vedat','Ãnal'),(12,'scu','Scu58scu','scu@scu.com','scu','scu');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
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
