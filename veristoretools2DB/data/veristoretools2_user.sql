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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_fullname` varchar(100) NOT NULL,
  `user_name` varchar(60) NOT NULL,
  `password` varchar(256) NOT NULL,
  `user_privileges` varchar(60) NOT NULL,
  `user_lastchangepassword` datetime DEFAULT NULL,
  `createddtm` datetime NOT NULL,
  `createdby` varchar(60) NOT NULL,
  `auth_key` varchar(32) DEFAULT NULL,
  `password_hash` varchar(256) DEFAULT NULL,
  `password_reset_token` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  `tms_session` varchar(5120) DEFAULT NULL,
  `tms_password` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_code` (`user_name`),
  KEY `user_name` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','admin','983b57301134a770ced6493450feda01','SUPER ADMIN','2021-07-06 21:28:29','2019-07-27 06:13:19','admin','F0hnCJI95dXyE-YL4W3rIFSVwrkOUFxt','$2y$13$IWYQQgwwXOENLXJv945xcee13bzX1O9QRMjCcVU90r1vjToQ/ufaW',NULL,'',10,1615100097,1746508047,NULL,'cEZFSmJSSVNaQ2lnTFI3Z005T0pIdz09'),(2,'administrator','administrator','17ee081f50789de8c9f3f3ba6ffb714d99d49d4513563e9ae8f32e92d296dad8','ADMIN','2024-02-12 10:19:53','2021-07-06 21:22:14','admin','sknznOYvWaUcT-TfEhmCf6s6tBNaiPYx','$2y$13$18qkCvwJXNgJOT4Wu9txyO/E1VyU/elVcQ1odJ8sIqRS7LSEbqfHu',NULL,'',10,1625581334,1707711048,NULL,NULL),(3,'operator','operator','bec45bf267df69abf4a1787ba6369309','OPERATOR',NULL,'2021-07-06 21:22:53','admin','Ng9VMT-y09XtvMZCdCeDTvDZ18jct5G6','$2y$13$JlT2QL1wcOCMT5moLhFDo.777q3C61pBq6y6bUrJSeVo964HUKuMm',NULL,'',10,1625581373,1625581373,NULL,NULL),(4,'tms administrator','tms_administrator','4d415d71d74e461063696a291eaedffe23ddc52b6de3784e29d10031663388fc','TMS ADMIN',NULL,'2021-07-24 15:46:32','admin','2R3EvDvnJYqYfLYTdjyAncztIFyfWL3r','$2y$13$OADJlxd6yrORK.WLjlJumutnQAHmEkun0mJq0dmF1kzx5UqjGysIG',NULL,'',10,1627116392,1627116543,NULL,NULL),(5,'tms operator','tms_operator','adec1b13b738fd61d0955531ffb6ad8b1d64d2242414d1a88a0a171c9ad5ad2a','TMS OPERATOR',NULL,'2021-07-24 15:46:53','admin','1MxpuS8kGsXvPFTrUqaBStAEHW7CX0Kl','$2y$13$QmBJOiFa1gBnJbytpuBXZuF4Quv3o/d3f1tXieF8zV5y9C6yem7n2',NULL,'',10,1627116413,1627116577,NULL,NULL),(6,'Singgih','singgiha1@verifone.com','f004ca46b13a32130cc60bfb55fc2ff541002f55a23e6e6ae915f19a299dc2ca','TMS ADMIN',NULL,'2023-03-01 13:48:22','admin','7kpooV4DXMp-q4JuVG8-o91IwdlRDSdl','$2y$13$Xqo1SqXAH4.uZoSSmL1be.vSjd6oX/LTGH96/om04O0/9fFKnMngW',NULL,'',10,1677653302,1696863645,NULL,'UU10NURIZk5WL2VCWER0anBzbGlGZz09'),(7,'Ryan','yuliuse1@verifone.com','0e7120e8f22ecd26bb403b3ce1eb6466c71e8a1c927902a7cd32ddd02fa1bfa1','TMS ADMIN','2023-03-01 14:16:57','2023-03-01 13:49:19','admin','SQlI-yLc_PSc12w_K5n7Rm2FTEqvbOPJ','$2y$13$hfMI.04XumNz1Q6DxpMM4eIhwdv1ORf8bwhnYjUVqsVpJCT8XvtAG',NULL,'',10,1677653359,1692076100,NULL,NULL),(8,'Ryan','ryan','0e7120e8f22ecd26bb403b3ce1eb6466c71e8a1c927902a7cd32ddd02fa1bfa1','ADMIN','2023-03-01 14:15:50','2023-03-01 13:49:50','admin','CvqjXiE21-BF7xTZ8jDTS5EhgJkJshML','$2y$13$pB3..ti.06cR./mF8Ij1gOIpB.OVL4tmPrIbyIuLoqkUvPC07tjdC',NULL,'',10,1677653390,1693811640,NULL,'RXdSZnRreFBMM3p1bHZLQUJWc3VSUT09'),(9,'Alfian','alfian.singgih@verifone.com','648a8ae3e782bde79024b8303c18e9aa2b9937da9df894f9eb3e792648e252c4','TMS ADMIN',NULL,'2023-03-01 14:09:48','admin','qFO4X_eWHPJzZpVHWLKnExFYm49d-uX_','$2y$13$Iz.//FZfnTuTYuy5a7SiTedyKaA0Rg3u3uznR9ZkIqMPGcbo9c9/.',NULL,'',10,1677654588,1721156548,NULL,'TWlGRTFwWDlDTDByTzRqN0MwdVlndz09'),(10,'Alfian','alfian','648a8ae3e782bde79024b8303c18e9aa2b9937da9df894f9eb3e792648e252c4','ADMIN',NULL,'2023-03-01 14:10:36','admin','sf79umxQAqR7EPV_bfrSAkGVCy0LsMyH','$2y$13$gIAbJJMwwG/i2MQXMcdwTuvDZvH5x9PTAFgmWTkNqDEsU8sE8XBS6',NULL,'',10,1677654636,1708497692,NULL,'TWlGRTFwWDlDTDByTzRqN0MwdVlndz09'),(11,'Irma','irmap1@verifone.com','72706874d5f27898334a9685a74785499dffa76ac7f9bcc47e7a526b21330a98','TMS ADMIN','2024-01-24 15:54:16','2024-01-24 11:42:15','alfian.singgih@verifone.com','c1ntld1kjoqqX1LtvDz10wSgeIVzzy9v','$2y$13$wV2hX94eTcqf460ZubVrqeueUs6GUgnGtjRBLos4/jk8ni8XrP1Ca',NULL,'irmap1@verifone.com',10,1706071335,1746508033,NULL,NULL),(12,'Irma','Irma','72706874d5f27898334a9685a74785499dffa76ac7f9bcc47e7a526b21330a98','ADMIN','2024-02-06 13:41:22','2024-01-24 11:43:25','alfian','gj4eI0QjyvYHtnkf0hXOjwxH9GzwCIC6','$2y$13$DEElgsLI6lvKq4UOxGkxhOowniXDaWPAaCOt1ehD/2TOePrWkhh8.',NULL,'irmap1@verifone.com',10,1706071405,1746158569,NULL,NULL),(13,'Zulfikar','market@admin.com','0b2608142ccc88ebea7196c1b261a9e6b1d76c5582a3957cbe57547ca523d8d6','TMS ADMIN',NULL,'2025-03-21 22:56:04','admin','Y7l8wmyvFPuLofyLlrdY8IujSJ5q0DMc','$2y$13$7bjZi648STC809qiBZltGew/akttAjzawf0UCdfivjnDWHPX.SYqW',NULL,'market@admin.com',10,1742572564,1745550409,'kw eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ7XCJyZWZyZXNoVGltZVwiOjE3NDU1ODMwMzA4ODAsXCJyb2xlTGlzdFwiOltcIjMwMTBcIixcIjMwMTFcIixcIjMwOTBcIixcIjMwOTFcIixcIjMwMzBcIixcIjMwMzFcIixcIjMwNDBcIixcIjMwNDFcIixcIjMwNTBcIixcIjMwNTFcIixcIjMwNjBcIixcIjMwNjFcIixcIjMwNzBcIixcIjMwNzFcIixcIjMwODBcIixcIjMwODFcIl0sXCJ1c2VyXCI6XCJ7XFxcImF1dGhvcml0aWVzXFxcIjpbe1xcXCJhdXRob3JpdHlcXFwiOlxcXCIzMDEwXFxcIn0se1xcXCJhdXRob3JpdHlcXFwiOlxcXCIzMDExXFxcIn0se1xcXCJhdXRob3JpdHlcXFwiOlxcXCIzMDkwXFxcIn0se1xcXCJhdXRob3JpdHlcXFwiOlxcXCIzMDkxXFxcIn0se1xcXCJhdXRob3JpdHlcXFwiOlxcXCIzMDMwXFxcIn0se1xcXCJhdXRob3JpdHlcXFwiOlxcXCIzMDMxXFxcIn0se1xcXCJhdXRob3JpdHlcXFwiOlxcXCIzMDQwXFxcIn0se1xcXCJhdXRob3JpdHlcXFwiOlxcXCIzMDQxXFxcIn0se1xcXCJhdXRob3JpdHlcXFwiOlxcXCIzMDUwXFxcIn0se1xcXCJhdXRob3JpdHlcXFwiOlxcXCIzMDUxXFxcIn0se1xcXCJhdXRob3JpdHlcXFwiOlxcXCIzMDYwXFxcIn0se1xcXCJhdXRob3JpdHlcXFwiOlxcXCIzMDYxXFxcIn0se1xcXCJhdXRob3JpdHlcXFwiOlxcXCIzMDcwXFxcIn0se1xcXCJhdXRob3JpdHlcXFwiOlxcXCIzMDcxXFxcIn0se1xcXCJhdXRob3JpdHlcXFwiOlxcXCIzMDgwXFxcIn0se1xcXCJhdXRob3JpdHlcXFwiOlxcXCIzMDgxXFxcIn1dLFxcXCJpZFxcXCI6MTgzNzE4MTk4Mjk0MTkwODk5NCxcXFwibWFya2V0SWRcXFwiOjE4MzcxODI4NjYwNDQyMjc1ODYsXFxcInJlc2VsbGVySWRcXFwiOjEsXFxcInN1cHBvcnRUeXBlXFxcIjowLFxcXCJ1c2VybmFtZVxcXCI6XFxcIm1hcmtldEBhZG1pbi5jb21cXFwiLFxcXCJ1dWlkXFxcIjpcXFwiNzQ4OWQ5MjItYzNjNy00MGNlLWFhZDYtMThmNGE0YTBlNzc5XFxcIn1cIixcInVzZXJuYW1lXCI6XCJtYXJrZXRAYWRtaW4uY29tXCJ9IiwiaWF0IjoxNzQ1NTgwMzMwLCJleHAiOjE3NDU1ODU3MzB9.DovqmESBTAzjJlyvWF0oQpANcNrEq1Pjvhn7NGjNGjYPOW3lJ0p-ZoO5elbNVfUH4ihfrCqAc0wPnhEg1tjVsg','eFhLelhzbzExdTBkVlMzVkV3R3hOdz09'),(14,'Zulfikar','Zulfikar','0b2608142ccc88ebea7196c1b261a9e6b1d76c5582a3957cbe57547ca523d8d6','ADMIN',NULL,'2025-03-21 22:56:40','admin','j3lB2Xdevd3bsEAjNG34OIQps--ycyLA','$2y$13$WK8tpNQdSZ/VRCbqDnd/qec6.7F3puMO3U8kIx1P7DLzqPm/bHXRK',NULL,'market@admin.com',10,1742572600,1742572600,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-06 14:02:49
