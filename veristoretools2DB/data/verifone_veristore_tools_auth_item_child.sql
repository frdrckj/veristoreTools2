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
-- Table structure for table `auth_item_child`
--

DROP TABLE IF EXISTS `auth_item_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `child` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_item_child`
--

LOCK TABLES `auth_item_child` WRITE;
/*!40000 ALTER TABLE `auth_item_child` DISABLE KEYS */;
INSERT INTO `auth_item_child` VALUES ('ADMIN','/activitylog/index'),('SUPER ADMIN','/activitylog/index'),('TMS ADMIN','/activitylog/index'),('TMS SUPERVISOR','/activitylog/index'),('SUPER ADMIN','/admin/*'),('SUPER ADMIN','/appactivation/index'),('SUPER ADMIN','/appcredential/create'),('SUPER ADMIN','/appcredential/index'),('SUPER ADMIN','/appcredential/update'),('SUPER ADMIN','/debug/*'),('ADMIN','/faq/index'),('OPERATOR','/faq/index'),('TMS ADMIN','/faq/index'),('TMS OPERATOR','/faq/index'),('TMS SUPERVISOR','/faq/index'),('ADMIN','/faq/userguidedownload'),('OPERATOR','/faq/userguidedownload'),('TMS ADMIN','/faq/userguidedownload'),('TMS OPERATOR','/faq/userguidedownload'),('TMS SUPERVISOR','/faq/userguidedownload'),('SUPER ADMIN','/gii/*'),('ADMIN','/scheduler/index'),('ADMIN','/site/about'),('OPERATOR','/site/about'),('TMS ADMIN','/site/about'),('TMS OPERATOR','/site/about'),('TMS SUPERVISOR','/site/about'),('ADMIN','/site/credit'),('OPERATOR','/site/credit'),('TMS ADMIN','/site/credit'),('TMS OPERATOR','/site/credit'),('TMS SUPERVISOR','/site/credit'),('OPERATOR','/site/index'),('TMS OPERATOR','/site/index'),('ADMIN','/syncterminal/download'),('OPERATOR','/syncterminal/download'),('ADMIN','/syncterminal/index'),('OPERATOR','/syncterminal/index'),('ADMIN','/syncterminal/reset'),('OPERATOR','/syncterminal/reset'),('ADMIN','/technician/create'),('ADMIN','/technician/index'),('ADMIN','/technician/update'),('ADMIN','/technician/view'),('ADMIN','/terminal/index'),('OPERATOR','/terminal/index'),('ADMIN','/terminal/view'),('OPERATOR','/terminal/view'),('SUPER ADMIN','/tmslogin/getoperator'),('SUPER ADMIN','/tmslogin/getverifycode'),('SUPER ADMIN','/tmslogin/index'),('ADMIN','/usermanagement/*'),('SUPER ADMIN','/usermanagement/*'),('TMS ADMIN','/usermanagement/*'),('ADMIN','/verification/gettechnician'),('OPERATOR','/verification/gettechnician'),('ADMIN','/verification/index'),('OPERATOR','/verification/index'),('ADMIN','/verificationreport/index'),('OPERATOR','/verificationreport/index'),('TMS ADMIN','/veristore/add'),('TMS OPERATOR','/veristore/add'),('TMS ADMIN','/veristore/addgroup'),('TMS OPERATOR','/veristore/addgroup'),('TMS ADMIN','/veristore/addgroupterminal'),('TMS OPERATOR','/veristore/addgroupterminal'),('TMS ADMIN','/veristore/addmerchant'),('TMS OPERATOR','/veristore/addmerchant'),('TMS ADMIN','/veristore/changemerchant'),('TMS OPERATOR','/veristore/changemerchant'),('TMS ADMIN','/veristore/check'),('TMS OPERATOR','/veristore/check'),('TMS SUPERVISOR','/veristore/check'),('TMS ADMIN','/veristore/checkdownload'),('TMS OPERATOR','/veristore/checkdownload'),('TMS SUPERVISOR','/veristore/checkdownload'),('TMS ADMIN','/veristore/copy'),('TMS OPERATOR','/veristore/copy'),('TMS ADMIN','/veristore/delete'),('TMS OPERATOR','/veristore/delete'),('TMS ADMIN','/veristore/deletegroup'),('TMS ADMIN','/veristore/deletemerchant'),('TMS ADMIN','/veristore/edit'),('TMS OPERATOR','/veristore/edit'),('TMS SUPERVISOR','/veristore/edit'),('TMS ADMIN','/veristore/editgroup'),('TMS OPERATOR','/veristore/editgroup'),('TMS ADMIN','/veristore/editmerchant'),('TMS OPERATOR','/veristore/editmerchant'),('TMS ADMIN','/veristore/export'),('TMS OPERATOR','/veristore/export'),('TMS SUPERVISOR','/veristore/export'),('TMS ADMIN','/veristore/exportreset'),('TMS OPERATOR','/veristore/exportreset'),('TMS SUPERVISOR','/veristore/exportreset'),('TMS ADMIN','/veristore/exportresult'),('TMS OPERATOR','/veristore/exportresult'),('TMS SUPERVISOR','/veristore/exportresult'),('TMS ADMIN','/veristore/getcity'),('TMS OPERATOR','/veristore/getcity'),('TMS ADMIN','/veristore/getdistrict'),('TMS OPERATOR','/veristore/getdistrict'),('TMS ADMIN','/veristore/getoperator'),('TMS OPERATOR','/veristore/getoperator'),('TMS ADMIN','/veristore/getstate'),('TMS OPERATOR','/veristore/getstate'),('TMS ADMIN','/veristore/getverifycode'),('TMS OPERATOR','/veristore/getverifycode'),('TMS SUPERVISOR','/veristore/getverifycode'),('TMS ADMIN','/veristore/group'),('TMS OPERATOR','/veristore/group'),('TMS SUPERVISOR','/veristore/group'),('TMS ADMIN','/veristore/import'),('TMS OPERATOR','/veristore/import'),('TMS ADMIN','/veristore/importformat'),('TMS OPERATOR','/veristore/importformat'),('TMS ADMIN','/veristore/importformatmerchant'),('TMS OPERATOR','/veristore/importformatmerchant'),('TMS ADMIN','/veristore/importmerchant'),('TMS OPERATOR','/veristore/importmerchant'),('TMS ADMIN','/veristore/importresult'),('TMS OPERATOR','/veristore/importresult'),('TMS ADMIN','/veristore/importresultmerchant'),('TMS OPERATOR','/veristore/importresultmerchant'),('TMS ADMIN','/veristore/merchant'),('TMS OPERATOR','/veristore/merchant'),('TMS SUPERVISOR','/veristore/merchant'),('TMS ADMIN','/veristore/report'),('TMS OPERATOR','/veristore/report'),('TMS ADMIN','/veristore/reset'),('TMS OPERATOR','/veristore/reset'),('TMS ADMIN','/veristore/resetmerchant'),('TMS OPERATOR','/veristore/resetmerchant'),('TMS ADMIN','/veristore/terminal'),('TMS OPERATOR','/veristore/terminal'),('TMS SUPERVISOR','/veristore/terminal');
/*!40000 ALTER TABLE `auth_item_child` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-26 17:56:54
