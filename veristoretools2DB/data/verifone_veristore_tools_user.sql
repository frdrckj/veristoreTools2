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
  `tms_session` varchar(64) DEFAULT NULL,
  `tms_password` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_code` (`user_name`),
  KEY `user_name` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','admin','983b57301134a770ced6493450feda01','SUPER ADMIN','2021-07-06 21:28:29','2019-07-27 06:13:19','admin','F0hnCJI95dXyE-YL4W3rIFSVwrkOUFxt','$2y$13$IWYQQgwwXOENLXJv945xcee13bzX1O9QRMjCcVU90r1vjToQ/ufaW',NULL,'',10,1615100097,1745650961,NULL,NULL),(2,'administrator','administrator','2cbf5d104f99c847924b61db20b79053','ADMIN',NULL,'2021-07-06 21:22:14','admin','X78fWQVcUurvGsldjZt-YnbtpPKVIqeV','$2y$13$FlileAX/QPoSL6jW0p2gd.iWppg/9MRJcOvLIgNsFGsUraISKOB1e',NULL,'',10,1625581334,1677237754,NULL,NULL),(3,'operator','operator','bec45bf267df69abf4a1787ba6369309','OPERATOR',NULL,'2021-07-06 21:22:53','admin','Ng9VMT-y09XtvMZCdCeDTvDZ18jct5G6','$2y$13$JlT2QL1wcOCMT5moLhFDo.777q3C61pBq6y6bUrJSeVo964HUKuMm',NULL,'',10,1625581373,1625581373,NULL,NULL),(4,'tms administrator','tms_administrator','4d415d71d74e461063696a291eaedffe23ddc52b6de3784e29d10031663388fc','TMS ADMIN',NULL,'2021-07-24 15:46:32','admin','2R3EvDvnJYqYfLYTdjyAncztIFyfWL3r','$2y$13$OADJlxd6yrORK.WLjlJumutnQAHmEkun0mJq0dmF1kzx5UqjGysIG',NULL,'',10,1627116392,1686540861,NULL,'d1hJRDVqYlBIMklZa2ZCaW5nVHArUT09'),(5,'tms operator','tms_operator','adec1b13b738fd61d0955531ffb6ad8b1d64d2242414d1a88a0a171c9ad5ad2a','TMS OPERATOR',NULL,'2021-07-24 15:46:53','admin','1MxpuS8kGsXvPFTrUqaBStAEHW7CX0Kl','$2y$13$QmBJOiFa1gBnJbytpuBXZuF4Quv3o/d3f1tXieF8zV5y9C6yem7n2',NULL,'',10,1627116413,1627116577,NULL,NULL),(6,'Nana Karmana','Nana.karmana@cimbniaga.co.id','85483c557a239b8d51d488ab05fddeffc79a8c98e3e2f237c7c24fcc4fb0e474','TMS OPERATOR',NULL,'2022-10-27 12:35:00','tms_administrator','BZflAk9b_fj525KA9FwOJYDtmyPDWLVP','$2y$13$6hSmsKpxeuzh2lNTZhDiXOhNe/ffotiuXxW0Eu5FNCLC/CXAMPBoe',NULL,'Nana.karmana@cimbniaga.co.id',0,1666848900,1709001463,NULL,'cHN0RDc4V2NsdjdBVGhid0psczZrZz09'),(7,'Nana Karmana','Nana','85483c557a239b8d51d488ab05fddeffc79a8c98e3e2f237c7c24fcc4fb0e474','OPERATOR',NULL,'2022-10-27 12:37:00','administrator','vEQqRrQl6cA45Fjk_FHY7GK1u7pydako','$2y$13$ZCf0glu2OVY7YoSx7cP29efYWoG/JwfkOYBAHRxt/f8f.I7e.DCYK',NULL,'Nana.karmana@cimbniaga.co.id',0,1666849020,1708933355,NULL,NULL),(8,'Krecia Sitompul','Krecia','85483c557a239b8d51d488ab05fddeffc79a8c98e3e2f237c7c24fcc4fb0e474','OPERATOR',NULL,'2022-10-27 12:38:37','administrator','lNX0DIaLquqzMoDrRzVovmFfyVjmZoTl','$2y$13$OLvWTRafEYJVzWnojxHPW..FCSrqESS7W6XpNRCljv1OxTrUWRpz.',NULL,'Krecia.Sitompul@cimbniaga.co.id',10,1666849117,1744783459,NULL,'cHN0RDc4V2NsdjdBVGhid0psczZrZz09'),(9,'Krecia Sitompul','Krecia.Sitompul@cimbniaga.co.id','a208fc1d87329cb0f8d127599cc1345996cd75b59bf8cf3b80f5fce6e59a8a74','TMS OPERATOR','2023-03-16 16:43:03','2022-10-27 12:40:16','tms_administrator','OKdR2xBYLzOcEU4xwYyS3Eekkat1ySQp','$2y$13$hfcC1sFsTncym4Fawx8nOux/RFmkIa9/rexe4xXhDa5ZuP4MaHY.6',NULL,'Krecia.Sitompul@cimbniaga.co.id',10,1666849216,1744789997,'4514ce10-d4f1-44be-9617-6144784e44da','YndvRVFJYzB4eWNBSEx6eEsrTjBXQT09'),(10,'Didik Setiadi','Didik','6ab6b312cd18cae1dcd2c309f6e3f790f7315681f8a7cca769e01ccd203a0f94','ADMIN','2025-03-19 13:36:28','2022-10-27 12:47:17','administrator','DvVSTJ3lCmTnWdp0fE2ArkI8a0cmFhYQ','$2y$13$ltapP3wPgQ6jC.RSM2jZuuJjgWy5cPcoepIRg4bDg9XUurYv2DIZm',NULL,'Didik.Setiadi@cimbniaga.co.id',10,1666849637,1742366207,NULL,'Tm1neHRCNzJXTmVkUGl6c0toaVhwUT09'),(11,'Didik Setiadi','Didik.Setiadi@cimbniaga.co.id','17301b38c08af3a508327dfef88a1868fb8aa8018c9e71716d9255f7d9a3aa3a','TMS SUPERVISOR','2023-06-19 19:46:30','2022-10-27 12:49:16','tms_administrator','IKbz7YljiFmjCOG4gYmn621UbjtIPmne','$2y$13$ha1AWX1U7.DogDrBi82rWOVae0tJ7C5XodYRX4w0Seu5XtR2eeUMO',NULL,'Didik.Setiadi@cimbniaga.co.id',10,1666849756,1718205964,NULL,'T1VYZVJYLzNhQ2tCdFFZSUhWdm96QT09'),(12,'Muhammad Adiyawar','Muhammad.Adiyawar@cimbniaga.co.id','e461a95bdacbcf99608b12e5fb39a2ce1dbdeb49179b23592c33758c3ae285d0','TMS OPERATOR','2024-06-26 11:24:18','2022-10-27 15:38:55','tms_administrator','LX6XlZtgOdzxyTPWArHRQ7Ojfzy5lZwa','$2y$13$xBc/egax6LRvS6x/Uk1nrOwlQqBoF9Yqpe2JIab6JBJ7L4wcipBnG',NULL,'Muhammad.Adiyawar@cimbniaga.co.id',10,1666859935,1745568118,'dbf86ae6-dd46-43bd-bebb-ba23318156ee','cHN0RDc4V2NsdjdBVGhid0psczZrZz09'),(13,'Arya Mustika','Arya.Mustika@cimbniaga.co.id','46a1c275f2df66dd738a056a6ce06f21a3e3d9bc23b10179bd7e92236ec8d8a6','TMS OPERATOR','2023-01-25 10:53:04','2022-10-27 15:40:17','tms_administrator','DUGh3l1oP_OaWP_pmeHVqdDHDyo_mtoh','$2y$13$ljgqj9jDAaBHTMhsRLOKU.99KhcVhuFuD9cVWqEqfeN.G4ZVYoCrG',NULL,'Arya.Mustika@cimbniaga.co.id',10,1666860017,1745389482,'1412252d-c465-4963-9619-ba0f6b173c92','cE5CL2ErU3VvZ3Zzazg0YUs4TkFCdz09'),(14,'Reza Setiawan','Reza.Setiawan@cimbniaga.co.id','85483c557a239b8d51d488ab05fddeffc79a8c98e3e2f237c7c24fcc4fb0e474','TMS OPERATOR',NULL,'2022-10-27 15:41:33','tms_administrator','uBMWqErMvKU5fMHxGnbkoM-gwlyqV30r','$2y$13$F9KB3.PjcLn/bKqRwAEAf.BhM/fniB36OZEEgaBPQVcr7XPdTNYI2',NULL,'Reza.Setiawan@cimbniaga.co.id',0,1666860093,1709001418,NULL,NULL),(15,'Ayu Octaviani','Ayu.Octaviani@cimbniaga.co.id','e461a95bdacbcf99608b12e5fb39a2ce1dbdeb49179b23592c33758c3ae285d0','TMS OPERATOR','2022-11-18 17:49:51','2022-10-27 15:42:34','tms_administrator','ezdFQI0Yu2jop-xgYm6-LGNY_eDMUFm8','$2y$13$WM79wp0ON7IoFv/nbEpa7u8sulhsfQFa5plrrQdvrZZWklFHLg4J.',NULL,'Ayu.Octaviani@cimbniaga.co.id',0,1666860154,1709001398,NULL,NULL),(16,'Linda Mayangsari','Linda.Mayangsari@cimbniaga.co.id','17301b38c08af3a508327dfef88a1868fb8aa8018c9e71716d9255f7d9a3aa3a','TMS OPERATOR','2022-12-13 13:43:20','2022-10-27 15:43:17','tms_administrator','2vHHrLCcBTSMRp-0ypFW5DdYZXpiQ-PF','$2y$13$FmYZn0v1jH3rJ9uekZVC4ubSMuBlsvvZ7zIStUOpV1bpxNqEDAzHK',NULL,'Linda.Mayangsari@cimbniaga.co.id',0,1666860197,1718205964,NULL,'djVnTjBpaERZVHk2cW04aEprQVlCZz09'),(17,'Zulfikar','Zulfikar@cimbniaga.co.id','8fb85683f367ee6c598269f006e59e19d52cf436b6c60a4e319e37475ed0b1c7','TMS ADMIN','2024-02-27 09:34:19','2022-10-27 15:43:56','tms_administrator','226UXPpgrrPEd3F_NgKore0IhZCyFFmh','$2y$13$gimxJvLXMTDh.6KObj4MXum26vhQLc.Rq6rFNh81wLo2Dz2tI7hJO',NULL,'Zulfikar@cimbniaga.co.id',10,1666860236,1742365571,NULL,NULL),(18,'Ayu Octaviani','Ayu','85483c557a239b8d51d488ab05fddeffc79a8c98e3e2f237c7c24fcc4fb0e474','OPERATOR',NULL,'2022-10-27 15:46:01','administrator','XLEQMTMwOd2yDFMpKg_oEz1dLTFFOWgJ','$2y$13$tJyP2U068eK43A7Vq7HpWe5Z0IdSJhkHzkWnCNdV0F.wkZ4pZlTwW',NULL,'Ayu.Octaviani@cimbniaga.co.id',0,1666860361,1708933341,NULL,'cHN0RDc4V2NsdjdBVGhid0psczZrZz09'),(19,'Arya Mustika','Arya','46a1c275f2df66dd738a056a6ce06f21a3e3d9bc23b10179bd7e92236ec8d8a6','OPERATOR','2023-01-25 10:51:45','2022-10-27 15:46:43','administrator','lbdMS41bYsrqRNWFMZCo9wIKi65uT1Iz','$2y$13$f9oNxHcP5SEG8M3//i1b8uLI2nY2OTqI3SPS.nd1tAzhD/HIbYWeq',NULL,'Arya.Mustika@cimbniaga.co.id',10,1666860403,1745389459,NULL,NULL),(20,'Linda Mayangsari','Linda','17301b38c08af3a508327dfef88a1868fb8aa8018c9e71716d9255f7d9a3aa3a','OPERATOR','2022-12-13 13:46:26','2022-10-27 15:47:08','administrator','VwNAf7ExGMPvI07j7NyZkAQ7r25eaJzy','$2y$13$TtRJOfDRsvGNUOh98Vac1uqHm8nkHEEizd/4YWSaAK7lIHBOsbrpu',NULL,'Linda.Mayangsari@cimbniaga.co.id',0,1666860428,1708933116,NULL,'djVnTjBpaERZVHk2cW04aEprQVlCZz09'),(21,'Reza Setiawan','Reza','85483c557a239b8d51d488ab05fddeffc79a8c98e3e2f237c7c24fcc4fb0e474','OPERATOR',NULL,'2022-10-27 15:47:41','administrator','v6GT9QYsIpmgF0_HmkjaagcoE6H1_hII','$2y$13$GVjS3ka5hnbdKVhyZjOzBOWpPT9tJtXgqkrKbcuewFV9z3jRbMrlq',NULL,'Reza.Setiawan@cimbniaga.co.id',0,1666860461,1708933099,NULL,'cHN0RDc4V2NsdjdBVGhid0psczZrZz09'),(22,'Zulfikar','Zulfikar','85483c557a239b8d51d488ab05fddeffc79a8c98e3e2f237c7c24fcc4fb0e474','ADMIN',NULL,'2022-10-27 15:48:12','administrator','kc2ag7EOuJffV-bWKg_6nAwnCFELA0XT','$2y$13$sJWy3ykCavl13D9Juny.4O1lWTg1rGBMfNxP5ADEUnmNKAtikap0u',NULL,'Zulfikar@cimbniaga.co.id',10,1666860492,1678963604,NULL,NULL),(23,'Muhammad Adiyawar','Adiyawar','e461a95bdacbcf99608b12e5fb39a2ce1dbdeb49179b23592c33758c3ae285d0','OPERATOR','2024-06-26 15:46:15','2022-10-27 15:48:58','administrator','kU2D1-eneO58MPkbGghoBpt1q4NLRM_H','$2y$13$GFF7sr2BNR.5ki5crBWuZ.KUB7l9KilreWD/BR0Ntkeb8XWb6HBSm',NULL,'Muhammad.Adiyawar@cimbniaga.co.id',10,1666860538,1745555738,NULL,NULL),(24,'Budi Yulianto','Budi.Yulianto@cimbniaga.co.id','85483c557a239b8d51d488ab05fddeffc79a8c98e3e2f237c7c24fcc4fb0e474','TMS OPERATOR',NULL,'2022-12-12 19:37:16','Zulfikar@cimbniaga.co.id','ug1GphM2cvYK6A66g5HU_gYu-PfPcCQ3','$2y$13$uqAfMXWxOOfWbdjrq45R0.G8YOEXYCTf9AH8hUfdihF3tVGJCHS/6',NULL,'Budi.Yulianto@cimbniaga.co.id',0,1670848636,1709001500,NULL,NULL),(25,'test tms','testVerifoneOpt','deb6ae570cf9338967175f892d4253c847c40d962b743a3673a1776603bbd9e0','OPERATOR',NULL,'2023-12-22 11:32:58','admin','k3PyHLEnBbyqcorGSAevDgpv4FB0KOC9','$2y$13$wLn/hXksSeVerEcnYNdDfeX8S9Dqgtir9ZxaNB5LF8dt0Oy5UsMsy',NULL,'',10,1703219578,1703219913,NULL,NULL),(26,'suwandhy','suwandhyp1@verifone.com','c28eb116ccf49f3c54a14d2a5921c90edf49d847171e2d272c67541df55bf48c','TMS OPERATOR','2023-12-22 15:50:55','2023-12-22 14:30:11','admin','jlzRfLvBMgy5xY-x-a14noI291rvmFxQ','$2y$13$C1tBXI6vAm4FsAqOKkzDz.oiIoHkb1cnMtA6.yuN.utqZCArO52s6',NULL,'suwandhyp1@verifone.com',10,1703230211,1722964180,NULL,'aS9YdGZJMmt2QWxyeTVPa3lUSjc5Zz09'),(27,'suwandhy','suwandhyVfiOpt','deb6ae570cf9338967175f892d4253c847c40d962b743a3673a1776603bbd9e0','OPERATOR',NULL,'2023-12-22 14:31:06','admin','AmRXoOwLI2PjBPfujIL88mkFFxME2IGV','$2y$13$wbUaUzUmOYtn1E7k1Mfn5OyqwC1h1iC.MP4uzk1.PFM3Nhu7KNTZ2',NULL,'suwandhyp1@verifone.com',0,1703230266,1709004617,NULL,NULL),(28,'JokoTriyono','Joko.Triyono@cimbniaga.co.id','cef4d1c1a40b286e948e8a2853b0d38787fd88a3c1e16b2023d45535f40c4783','TMS OPERATOR','2024-12-05 13:23:21','2024-01-01 21:24:21','admin','jLd3xfZmY9ZFugpCYGY4t3oHANA_7Vf5','$2y$13$FerIgQZwsqilsWCkcDnJqeLX3c3Z2OhXEV8HtpEUVc0cnfh5xmz0S',NULL,'Joko.Triyono@cimbniaga.co.id',10,1704119061,1745296254,'eebc9970-2341-4e1c-881a-ceccbe6efffe','dVRiK05IZW0rdXRUTktvamRhQWthZz09'),(29,'Joko Triyono','Joko','374455a273df49d5a33cf1b4dfa45fd759b4b400e3f608713d8c9f3c89217d26','OPERATOR','2024-12-05 12:15:20','2024-02-26 14:45:51','Didik','-zoNG3_FggcIM9Vqz47OMTFo_O55KutS','$2y$13$Lhh97J55lFbd1Z3fErYiV.w0sQLFSuI3RYnQKhSK7LQpaqRmbRgn6',NULL,'Joko.Triyono@Cimbniaga.co.id',10,1708933551,1744693390,NULL,'dURlbEdkNFlJZ295TnZiWThBaWZiQT09'),(30,'irma','irmapy','72706874d5f27898334a9685a74785499dffa76ac7f9bcc47e7a526b21330a98','ADMIN',NULL,'2025-04-26 13:58:15','admin','DDS2uJDzFb-iNLYk9fEtqag19Ryugh5Q','$2y$13$BO9T1bsfxzIVarSaKNGLDuEGzaAme7f.Sv25CQEoPm9uPx6EeZKkS',NULL,'irmap1@verifone.com',10,1745650695,1745650982,NULL,'SEN2aWwrRlA3aXNSZ0tCa1dHZjlpQT09');
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

-- Dump completed on 2025-04-26 17:57:01
