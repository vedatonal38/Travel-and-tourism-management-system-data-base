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
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles` (
  `id` int NOT NULL,
  `current_mileage` varchar(45) DEFAULT NULL,
  `date_mot_due` varchar(5) DEFAULT NULL,
  `engine_size` varchar(45) DEFAULT NULL,
  `models_id` int NOT NULL,
  `vehicle_type_id` int NOT NULL,
  `city_id` int NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `status_` tinyint DEFAULT '0',
  `car_img` text,
  PRIMARY KEY (`id`),
  KEY `fk_vehicles_models1_idx` (`models_id`),
  KEY `fk_vehicles_vehicle_type1_idx` (`vehicle_type_id`),
  KEY `fk_vehicles_city1_idx` (`city_id`),
  CONSTRAINT `fk_vehicles_city1` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  CONSTRAINT `fk_vehicles_models1` FOREIGN KEY (`models_id`) REFERENCES `models` (`id`),
  CONSTRAINT `fk_vehicles_vehicle_type1` FOREIGN KEY (`vehicle_type_id`) REFERENCES `vehicle_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES (1,'200.000','2015','1499',1,2,309,150.00,'Ford',0,'https://www.motorpoint.com/fotos/8/Ford_Kuga_2016_8e7ff-raw.jpg'),(2,'30.350','2018','1598',2,1,55,150.00,'Volkswagen',0,'https://www.ssmotors.com.tr/B2ELResim/AracResim2El/20864/cda478378e674117ac4f7743a6a0883e0207202018263331103_7.jpg'),(3,'285.000','2009','1598',3,1,259,150.00,'Fiat',0,'http://a.ccdn.es/cnet/2016/05/16/31740480/97977324_g.jpg/735x/'),(4,'150.000','2016','1461',4,2,284,150.00,'Renault',0,'https://www.otoshops.com/B2ELResim/AracResim2El/25033/364b83d0a8514ae79412c6e1a6dfa8ec1906201811173581996_9_Orta.jpg'),(5,'375.000','2005','1968',5,2,120,150.00,'Audi',0,'https://iris.carsalesportal.co.za/cdn/westvaal2/menlyn/cars-for-sale/2020-02/2015-audi-a4-sedan-170594-3b0dd.jpg'),(6,'950','2021','999',6,2,156,150.00,'Volkswagen',0,'https://www.gabriel.sk/wp-content/uploads/2020/12/golfv8_lf_grey-moonstone1.jpg'),(7,'178.000','2015','1461',7,2,214,150.00,'Renault',0,'https://www.rentrent.com.tr/uploads/araclar/2018/renault/clio/renault-clio-15-dci-90-hp-icon-edc-dizel-otomatik-28017-1.jpg'),(8,'71.000','2013','1390',8,2,21,150.00,'Volkswagen',0,'https://imgsvrcars-a.akamaihd.net/images/2018/3/VW%2520Polo%2520Vivo%2520comfortline%2520Review/x.jpg/DSC_3721.jpg'),(9,'132.000','2015','1598',9,1,186,150.00,'Opel',0,'https://www.rentpro.it/wp-content/uploads/2020/05/RentPro_OpelMokkaX_img.jpg');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-15 11:48:51
