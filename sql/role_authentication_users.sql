-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: role_authentication
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','customer','vendor') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'customer',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','admin@email.com',NULL,'$2y$12$/GiE8MmpomyNRw.NkHh3WeJhx8CyYY/fkKc/BDiw5uZn8jyRTfduu','admin','inactive',NULL,NULL,NULL),(2,'Vendor','vendor@email.com',NULL,'$2y$12$vbMuLgdukepNUFavUYtrLe7.tHTKRXm3PQQbQXciAv7dgnrkIzg5q','vendor','inactive',NULL,NULL,NULL),(3,'Customer','customer@email.com',NULL,'$2y$12$JKHBRpQxes83zP3tdivCBeZIsdw2Ixe8dT57HAgaWX7vDE9a2TkKa','customer','inactive',NULL,NULL,NULL),(4,'subhabrata','subhabrata@email.com','2023-12-08 05:23:33','$2y$12$bS39tYE8tijtgZx2M5.eouyhANVm747dQQ8iNbAtHXXPZfzK8hPm.','customer','inactive',NULL,'2023-12-08 05:22:38','2023-12-08 05:23:33'),(5,'Vendor1','vendor1@email.com','2023-12-08 06:59:22','$2y$12$V32yS.xNStP0dzVqcPr2HuagwgaKNboA/UIb9qzOFq3bHSK3CVeJy','vendor','inactive',NULL,'2023-12-08 06:59:05','2023-12-08 06:59:22'),(6,'Customer1','customer1@email.com','2023-12-08 07:00:57','$2y$12$CDerhMRMdqqSx8vW0FPGN.pEk5DgQIJ0MQkrwnbt01GAI63Hwvi8W','customer','inactive',NULL,'2023-12-08 07:00:41','2023-12-08 07:00:57'),(7,'vendor','vendor2@email.com','2023-12-08 07:15:41','$2y$12$WF3vDtKDDrZ..BehMxSjQeWs9LSDfSV6HeYDMB6S5ou9kwd9cdXma','vendor','inactive',NULL,'2023-12-08 07:15:27','2023-12-08 07:15:41'),(8,'vendor3','vendor3@email.com','2023-12-08 07:19:01','$2y$12$JM70gqnGyoBR6R5RLoueA.btQChzbZgCHkNYdvh9f4G5C/EBymRFu','vendor','inactive',NULL,'2023-12-08 07:18:40','2023-12-08 07:19:01'),(9,'customer3','customer3@email.com','2023-12-08 07:25:07','$2y$12$w/z58xLLILi45D9pV6We0OLOOD1fxsqKM3rHdppgZOLZ2bafFUj8K','customer','inactive',NULL,'2023-12-08 07:24:54','2023-12-08 07:25:07'),(10,'Vendor4','vendor4@email.com','2023-12-08 07:32:16','$2y$12$w9c6.PRDMChFe01Tv4bS5.jfNvMWimBsDDarRLkIa02oWGwDzhSgS','vendor','inactive',NULL,'2023-12-08 07:32:01','2023-12-08 07:32:16'),(11,'Customer','customer4@email.com','2023-12-08 07:56:08','$2y$12$vdbwMt43glfYxjJXdaMbf.0d1doBzqGnhAWgVcsuampJfwYzHdIv2','customer','inactive',NULL,'2023-12-08 07:55:37','2023-12-08 07:56:08'),(12,'Customer5','customer5@email.com','2023-12-08 07:57:38','$2y$12$n0j0EreG54mKs9fwdojD7.2Q1SZDdDSrObt9ZtjEuJReo5dUsbOTe','customer','inactive',NULL,'2023-12-08 07:57:07','2023-12-08 07:57:38'),(13,'Vendor5','vendor5@email.com','2023-12-08 07:59:13','$2y$12$/GiE8MmpomyNRw.NkHh3WeJhx8CyYY/fkKc/BDiw5uZn8jyRTfduu','vendor','active',NULL,'2023-12-08 07:59:00','2023-12-08 07:59:13');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-08 19:26:39
