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
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `id` int NOT NULL,
  `name_` varchar(45) DEFAULT NULL,
  `country_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name_`),
  KEY `fk_city_country1_idx` (`country_id`),
  CONSTRAINT `fk_city_country1` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Adana',1),(2,'Adıyaman',1),(3,'Afyonkarahisar',1),(4,'Ağrı',1),(5,'Aksaray',1),(6,'Amasya',1),(7,'Ankara',1),(8,'Antalya',1),(9,'Ardahan',1),(10,'Artvin',1),(11,'Aydın',1),(12,'Balıkesir',1),(13,'Bartın',1),(14,'Batman',1),(15,'Bayburt',1),(16,'Bilecik',1),(17,'Bingöl',1),(18,'Bitlis',1),(19,'Bolu',1),(20,'Burdur',1),(21,'Bursa',1),(22,'Çanakkale',1),(23,'Çankırı',1),(24,'Çorum',1),(25,'Denizli',1),(26,'Diyarbakır',1),(27,'Düzce',1),(28,'Edirne',1),(29,'Elâzığ',1),(30,'Erzincan',1),(31,'Erzurum',1),(32,'Eskişehir',1),(33,'Gaziantep',1),(34,'Giresun',1),(35,'Gümüşhane',1),(36,'Hakkâri',1),(37,'Hatay',1),(38,'Iğdır',1),(39,'Isparta',1),(40,'İstanbul',1),(41,'İzmir',1),(42,'Kahramanmaraş',1),(43,'Karabük',1),(44,'Karaman',1),(45,'Kars',1),(46,'Kastamonu',1),(47,'Kayseri',1),(48,'Kırıkkale',1),(49,'Kırklareli',1),(50,'Kırşehir',1),(51,'Kilis',1),(52,'Kocaeli',1),(53,'Konya',1),(54,'Kütahya',1),(55,'Malatya',1),(56,'Manisa',1),(57,'Mardin',1),(58,'Mersin',1),(59,'Muğla',1),(60,'Muş',1),(61,'Nevşehir',1),(62,'Niğde',1),(63,'Ordu',1),(64,'Osmaniye',1),(65,'Rize',1),(66,'Sakarya',1),(67,'Samsun',1),(68,'Siirt',1),(69,'Sinop',1),(70,'Sivas',1),(71,'Şanlıurfa',1),(72,'Şırnak',1),(73,'Tekirdağ',1),(74,'Tokat',1),(75,'Trabzon',1),(76,'Tunceli',1),(77,'Uşak',1),(78,'Van',1),(79,'Yalova',1),(80,'Yozgat',1),(81,'Zonguldak',1),(82,'Aarau',2),(83,'Aarberg',2),(84,'Aarburg',2),(85,'Adliswil',2),(86,'Affoltern am Albis',2),(87,'Agno',2),(88,'Aigle',2),(89,'Allschwil',2),(90,'Altdorf 1',2),(91,'Altstätten',2),(92,'Amriswil',2),(93,'Appenzell 1',2),(94,'Arbon',2),(95,'Ascona',2),(96,'Aubonne',2),(97,'Avenches',2),(98,'Baar',2),(99,'Baden',2),(100,'Basel',2),(101,'Bellinzona',2),(102,'Bern',2),(103,'Beromünster 1',2),(104,'Biasca 1',2),(105,'Biel/Bienne',2),(106,'Binningen',2),(107,'Birsfelden',2),(108,'Bischofszell',2),(109,'Boudry',2),(110,'Bourg-Saint-Pierre',2),(111,'Bremgarten',2),(112,'Brig 1',2),(113,'Brugg',2),(114,'Buchs',2),(115,'Bulle',2),(116,'Bülach',2),(117,'Burgdorf',2),(118,'Carouge',2),(119,'Cham',2),(120,'Châtel-Saint-Denis',2),(121,'Chur',2),(122,'Conthey',2),(123,'Coppet',2),(124,'Cossonay',2),(125,'Croglio',2),(126,'Cudrefin',2),(127,'Cully',2),(128,'Davos',2),(129,'Delémont',2),(130,'Diessenhofen',2),(131,'Dietikon',2),(132,'Dübendorf',2),(133,'Ebikon',2),(134,'Échallens',2),(135,'Eglisau',2),(136,'Einsiedeln',2),(137,'Elgg',2),(138,'Emmen',2),(139,'Erlach',2),(140,'Estavayer-le-Lac',2),(141,'Frauenfeld',2),(142,'Freienbach',2),(143,'Fribourg',2),(144,'Cenevre',2),(145,'Gland',2),(146,'Glarus 1',2),(147,'Gordola',2),(148,'Gossau',2),(149,'Grandcour',2),(150,'Grandson',2),(151,'Greifensee',2),(152,'Grenchen',2),(153,'Grüningen',2),(154,'Gruyères',2),(155,'Herisau',2),(156,'Hermance',2),(157,'Horgen',2),(158,'Horw',2),(159,'Huttwil',2),(160,'Ilanz',2),(161,'Illnau-Effretikon',2),(162,'Ittigen',2),(163,'Denpasar',3),(164,'Bandung',3),(165,'Batu',3),(166,'Bekasi',3),(167,'Blitar',3),(168,'Bogor',3),(169,'Cianjur',3),(170,'Cilegon',3),(171,'Cimahi',3),(172,'Cirebon',3),(173,'Depok',3),(174,'Cakarta',3),(175,'Madiun',3),(176,'Magelang',3),(177,'Malang',3),(178,'Mojokerto',3),(179,'Pasuruan',3),(180,'Pekalongan',3),(181,'Probolinggo',3),(182,'Salatiga',3),(183,'Semarang',3),(184,'South Tangerang',3),(185,'Sukabumi',3),(186,'Surabaya',3),(187,'Surakarta',3),(188,'Tasikmalaya',3),(189,'Tangerang',3),(190,'Tegal',3),(191,'Yogyakarta',3),(192,'Kediri',3),(193,'Serang',3),(194,'Purwokerto',3),(195,'Balikpapan',3),(196,'Banjarbaru',3),(197,'Banjarmasin',3),(198,'Bontang',3),(199,'Palangkaraya',3),(200,'Pontianak',3),(201,'Samarinda',3),(202,'Singkawang',3),(203,'Tarakan',3),(204,'Tenggarong',3),(205,'Ambon',3),(206,'Tual',3),(207,'Ternate',3),(208,'Tidore',3),(209,'Bima',3),(210,'Mataram',3),(211,'Kupang',3),(212,'Atambua',3),(213,'Jayapura',3),(214,'Merauke',3),(215,'Kota Sorong',3),(216,'Manokwari',3),(217,'Bau-Bau',3),(218,'Bitung',3),(219,'Gorontalo',3),(220,'Kendari',3),(221,'Makassar',3),(222,'Manado',3),(223,'Palu',3),(224,'Pare-Pare',3),(225,'Palopo',3),(226,'Tomohon',3),(227,'Banda Aceh',3),(228,'Bandar Lampung',3),(229,'Batam',3),(230,'Bengkulu',3),(231,'Blangkejeren',3),(232,'Binjai',3),(233,'Bireuen',3),(234,'Bukittinggi',3),(235,'Dumai',3),(236,'Jambi',3),(237,'Langsa',3),(238,'Lhokseumawe',3),(239,'Lubuklinggau',3),(240,'Meulaboh',3),(241,'Medan',3),(242,'Metro',3),(243,'Padang',3),(244,'Canberra',4),(245,'Sidney',4),(246,'Albury',4),(247,'Armidale',4),(248,'Bathurst',4),(249,'Broken Hill',4),(250,'Cessnock',4),(251,'Coffs Harbour',4),(252,'Dubbo',4),(253,'Gosford',4),(254,'Goulburn',4),(255,'Grafton',4),(256,'Griffith',4),(257,'Lake Macquarie',4),(258,'Lismore',4),(259,'Maitland',4),(260,'Newcastle',4),(261,'Nowra',4),(262,'Orange',4),(263,'Port Macquarie',4),(264,'Queanbeyan',4),(265,'Tamworth',4),(266,'Tweed Heads',4),(267,'Kanberra',4),(268,'Wagga Wagga',4),(269,'Wollongong',4),(270,'Wyong',4),(271,'Darwin',4),(272,'Alice Springs',4),(273,'Katherine',4),(274,'Palmerston',4),(275,'Brisbane',4),(276,'Bundaberg',4),(277,'Cairns',4),(278,'Charters Towers',4),(279,'Gladstone',4),(280,'Gold Coast',4),(281,'Gympie',4),(282,'Hervey Bay',4),(283,'Ipswich',4),(284,'Logan City',4),(285,'Mackay',4),(286,'Maryborough',4),(287,'Mount Isa',4),(288,'Nambour',4),(289,'Redcliffe',4),(290,'Rockhampton',4),(291,'Sunshine Coast (bölge)',4),(292,'Thuringowa',4),(293,'Toowoomba',4),(294,'Townsville',4),(295,'Adelaide (Başkent)',4),(296,'Mount Gambier',4),(297,'Murray Bridge',4),(298,'Port Augusta',4),(299,'Port Pirie',4),(300,'Port Lincoln',4),(301,'Victor Harbor',4),(302,'Whyalla',4),(303,'Hobart (Başkent)',4),(304,'Burnie',4),(305,'Clarence',4),(306,'Devonport',4),(307,'Glenorchy',4),(308,'Launceston',4),(309,'Melbourne (Başkent)',4),(310,'Benalla',4),(311,'Ballarat',4),(312,'Bendigo',4),(313,'Geelong',4),(314,'Latrobe City',4),(315,'Mildura',4),(316,'Shepparton',4),(317,'Swan Hill',4),(318,'Wangaratta',4),(319,'Warrnambool',4),(320,'Wodonga',4),(321,'Welshpool',4),(322,'Perth (Başkent)',4),(323,'Albany',4),(324,'Broome',4);
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
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
