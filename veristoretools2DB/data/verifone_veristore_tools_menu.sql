-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 149.129.245.158    Database: verifone_veristore_tools
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `parent` int DEFAULT NULL,
  `route` varchar(256) DEFAULT NULL,
  `order` int DEFAULT NULL,
  `data` blob,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'Pengguna',NULL,'/usermanagement/index',1,NULL),(2,'TMS Login',NULL,'/tmslogin/index',2,NULL),(3,'Aktifitas',NULL,'/activitylog/index',3,NULL),(4,'Sinkronisasi CSI',NULL,NULL,6,NULL),(5,'Data CSI',NULL,'/terminal/index',7,NULL),(6,'Teknisi',NULL,'/technician/index',8,NULL),(7,'Verifikasi',NULL,'/verification/index',9,NULL),(8,'Laporan Verifikasi',NULL,'/verificationreport/index',10,NULL),(9,'Penjadwalan',4,'/scheduler/index',1,NULL),(10,'Manual',4,'/syncterminal/index',2,NULL),(11,'About',NULL,NULL,11,NULL),(12,'Versi',11,'/site/about',1,NULL),(13,'Kredit',11,'/site/credit',2,NULL),(14,'Bantuan',11,'/faq/index',3,NULL),(15,'CSI',NULL,'/veristore/terminal',5,NULL),(17,'Merchant',NULL,NULL,4,NULL),(18,'Merchant Management',17,'/veristore/merchant',1,NULL),(19,'Group Management',17,'/veristore/group',2,NULL),(20,'Mobile App',NULL,NULL,12,NULL),(21,'Credential',20,'/appcredential/index',1,NULL),(22,'Activation',20,'/appactivation/index',2,NULL);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-26 17:56:53
