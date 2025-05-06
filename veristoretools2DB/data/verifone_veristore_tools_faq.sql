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
-- Table structure for table `faq`
--

DROP TABLE IF EXISTS `faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq` (
  `faq_id` int NOT NULL AUTO_INCREMENT,
  `faq_parent` int DEFAULT NULL,
  `faq_seq` int NOT NULL,
  `faq_privileges` varchar(60) NOT NULL,
  `faq_name` text NOT NULL,
  `faq_link` text,
  PRIMARY KEY (`faq_id`),
  UNIQUE KEY `faq_id` (`faq_id`),
  KEY `fk_faq_parent_id_idx` (`faq_parent`),
  CONSTRAINT `fk_faq_parent_id` FOREIGN KEY (`faq_parent`) REFERENCES `faq` (`faq_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq`
--

LOCK TABLES `faq` WRITE;
/*!40000 ALTER TABLE `faq` DISABLE KEYS */;
INSERT INTO `faq` VALUES (1,NULL,0,'ADMIN','Pengantar','1'),(2,NULL,1,'ADMIN','Login',NULL),(3,2,0,'ADMIN','Login Administrator','2-3'),(4,NULL,3,'ADMIN','Pengguna',NULL),(5,4,0,'ADMIN','Tambah Pengguna','4-5'),(6,4,1,'ADMIN','Edit Pengguna','4-6'),(7,NULL,4,'ADMIN','Aktifitas',NULL),(8,7,0,'ADMIN','Search Aktifitas','7-8'),(9,NULL,5,'ADMIN','Sinkronisasi CSI','9'),(10,9,0,'ADMIN','Penjadwalan','9-10'),(11,10,0,'ADMIN','Penjadwalan TIAP JAM','10-11'),(12,10,1,'ADMIN','Penjadwalan HARIAN','10-12'),(13,10,2,'ADMIN','Penjadwalan MINGGUAN','10-13'),(14,9,1,'ADMIN','Manual','9-14'),(15,14,0,'ADMIN','Search Sinkronisasi Data CSI','14-15'),(16,NULL,6,'ADMIN','Data CSI',NULL),(17,16,0,'ADMIN','Search Data CSI','16-17'),(18,NULL,7,'ADMIN','Teknisi',NULL),(19,18,0,'ADMIN','Tambah Teknisi','18-19'),(20,18,1,'ADMIN','Edit Teknisi','18-20'),(21,NULL,8,'ADMIN','Verifikasi','21'),(22,NULL,9,'ADMIN','Laporan Verifikasi','22'),(23,NULL,10,'ADMIN','About','23'),(24,NULL,0,'OPERATOR','Pengantar','1'),(25,NULL,1,'OPERATOR','Login',NULL),(26,25,0,'OPERATOR','Login Operator','25-26'),(27,NULL,3,'OPERATOR','Sinkronisasi CSI','9'),(28,27,0,'OPERATOR','Manual','9-14'),(29,28,0,'OPERATOR','Search Sinkronisasi Data CSI','14-15'),(30,NULL,4,'OPERATOR','Data CSI',NULL),(31,30,0,'OPERATOR','Search Data CSI','16-17'),(32,NULL,5,'OPERATOR','Verifikasi','21'),(33,NULL,6,'OPERATOR','About','23'),(34,NULL,2,'ADMIN','Veristore Dashboard','34'),(35,NULL,2,'OPERATOR','Veristore Dashboard','34'),(36,NULL,0,'TMS ADMIN','Pengantar','36'),(37,NULL,0,'','',NULL),(38,NULL,1,'TMS ADMIN','Login','37-38'),(39,NULL,2,'TMS ADMIN','Veristore Dashboard','39'),(40,NULL,3,'TMS ADMIN','Pengguna',NULL),(41,40,0,'TMS ADMIN','Tambah Pengguna','40-41'),(42,40,1,'TMS ADMIN','Edit Pengguna','40-42'),(43,NULL,0,'','',NULL),(44,NULL,4,'TMS ADMIN','Aktifitas','43-44'),(45,NULL,6,'TMS ADMIN','CSI','45'),(46,45,0,'TMS ADMIN','Login','45-46'),(47,45,1,'TMS ADMIN','Add','45-47'),(48,45,2,'TMS ADMIN','Import','45-48'),(49,45,3,'TMS ADMIN','Copy','45-49'),(50,45,4,'TMS ADMIN','Edit','45-50'),(51,45,5,'TMS ADMIN','Update','45-51'),(52,45,6,'TMS ADMIN','Search','45-52'),(53,45,7,'TMS ADMIN','Delete','45-53'),(54,NULL,7,'TMS ADMIN','About','54'),(55,NULL,0,'TMS OPERATOR','Pengantar','55'),(56,NULL,0,'','',NULL),(57,NULL,1,'TMS OPERATOR','Login','56-57'),(58,NULL,2,'TMS OPERATOR','Veristore Dashboard','58'),(59,NULL,4,'TMS OPERATOR','CSI','59'),(60,59,0,'TMS OPERATOR','Login CSI','59-60'),(61,59,1,'TMS OPERATOR','Add CSI','59-61'),(62,59,2,'TMS OPERATOR','Import CSI','59-62'),(63,59,3,'TMS OPERATOR','Copy CSI','59-63'),(64,59,4,'TMS OPERATOR','Edit CSI','59-64'),(65,59,5,'TMS OPERATOR','Update CSI','59-65'),(66,59,6,'TMS OPERATOR','Search CSI','59-66'),(67,NULL,5,'TMS OPERATOR','About','67'),(68,NULL,5,'TMS ADMIN','Merchant',NULL),(69,68,0,'TMS ADMIN','Merchant Management','69'),(70,69,0,'TMS ADMIN','Login Merchant Management','69-70'),(71,69,1,'TMS ADMIN','Add Merchant Management','69-71'),(72,69,2,'TMS ADMIN','Edit Merchant Management','69-72'),(73,69,3,'TMS ADMIN','Delete Merchant Management','69-73'),(74,69,4,'TMS ADMIN','Search Merchant Management','69-74'),(75,68,1,'TMS ADMIN','Group Management','75'),(76,75,0,'TMS ADMIN','Login Group Management','75-76'),(77,75,1,'TMS ADMIN','Add Group Management','75-77'),(78,75,2,'TMS ADMIN','Edit Group Management','75-78'),(79,75,3,'TMS ADMIN','Delete Group Management','75-79'),(80,75,4,'TMS ADMIN','Search Group Management','75-80'),(81,NULL,3,'TMS OPERATOR','Merchant',NULL),(82,81,0,'TMS OPERATOR','Merchant Management',''),(83,82,0,'TMS OPERATOR','Login',''),(84,82,1,'TMS OPERATOR','Add',''),(85,82,2,'TMS OPERATOR','Edit',''),(86,82,3,'TMS OPERATOR','Search',''),(87,81,1,'TMS OPERATOR','Group Management',''),(88,87,0,'TMS OPERATOR','Login',''),(89,87,1,'TMS OPERATOR','Add',''),(90,87,2,'TMS OPERATOR','Edit',''),(91,87,3,'TMS OPERATOR','Search',''),(92,NULL,0,'TMS SUPERVISOR','Pengantar',''),(93,NULL,1,'TMS SUPERVISOR','Login',NULL),(94,93,0,'TMS SUPERVISOR','Login TMS Supervisor',''),(95,NULL,2,'TMS SUPERVISOR','Veristore Dashboard',''),(96,NULL,3,'TMS SUPERVISOR','Aktifitas',NULL),(97,96,0,'TMS SUPERVISOR','Search Aktifitas',''),(98,NULL,4,'TMS SUPERVISOR','Merchant',NULL),(99,98,0,'TMS SUPERVISOR','Merchant Management',''),(100,99,0,'TMS SUPERVISOR','Login',''),(101,99,1,'TMS SUPERVISOR','Search',''),(102,98,1,'TMS SUPERVISOR','Group Management',''),(103,102,0,'TMS SUPERVISOR','Login',''),(104,102,1,'TMS SUPERVISOR','Search',''),(105,NULL,5,'TMS SUPERVISOR','CSI',''),(106,105,0,'TMS SUPERVISOR','Login',''),(107,105,1,'TMS SUPERVISOR','View',''),(108,105,2,'TMS SUPERVISOR','Search',''),(109,NULL,6,'TMS SUPERVISOR','About','');
/*!40000 ALTER TABLE `faq` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-26 17:56:59
