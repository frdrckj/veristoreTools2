-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: veristoretools2
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `verification_report`
--

DROP TABLE IF EXISTS `verification_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `verification_report` (
  `vfi_rpt_id` int NOT NULL AUTO_INCREMENT,
  `vfi_rpt_term_device_id` text NOT NULL,
  `vfi_rpt_term_serial_num` text NOT NULL,
  `vfi_rpt_term_product_num` text NOT NULL,
  `vfi_rpt_term_model` text NOT NULL,
  `vfi_rpt_term_app_name` text NOT NULL,
  `vfi_rpt_term_app_version` text NOT NULL,
  `vfi_rpt_term_parameter` text NOT NULL,
  `vfi_rpt_term_tms_create_operator` text NOT NULL,
  `vfi_rpt_term_tms_create_dt_operator` datetime NOT NULL,
  `vfi_rpt_tech_name` varchar(150) NOT NULL,
  `vfi_rpt_tech_nip` varchar(50) NOT NULL,
  `vfi_rpt_tech_number` varchar(100) NOT NULL,
  `vfi_rpt_tech_address` text NOT NULL,
  `vfi_rpt_tech_company` varchar(100) NOT NULL,
  `vfi_rpt_tech_sercive_point` varchar(100) NOT NULL,
  `vfi_rpt_tech_phone` varchar(15) NOT NULL,
  `vfi_rpt_tech_gender` varchar(25) NOT NULL,
  `vfi_rpt_ticket_no` varchar(50) NOT NULL,
  `vfi_rpt_spk_no` varchar(50) NOT NULL,
  `vfi_rpt_work_order` varchar(50) NOT NULL,
  `vfi_rpt_remark` varchar(200) NOT NULL,
  `vfi_rpt_status` varchar(10) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_dt` datetime NOT NULL,
  PRIMARY KEY (`vfi_rpt_id`),
  UNIQUE KEY `vfi_rpt_id` (`vfi_rpt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24563 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-06 11:50:46
