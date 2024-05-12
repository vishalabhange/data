-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: deployment
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
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendors` (
  `VendorID` int unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `ShopName` varchar(255) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `PinCode` varchar(10) DEFAULT NULL,
  `ContactNo` varchar(20) DEFAULT NULL,
  `GSTNo` varchar(20) DEFAULT NULL,
  `Password` varchar(255) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `resetTokenExpiration` datetime DEFAULT NULL,
  `resetToken` varchar(225) DEFAULT NULL,
  `ProfileImg` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `AdhaarNo` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`VendorID`),
  UNIQUE KEY `GSTNo_UNIQUE` (`GSTNo`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `AdhaarNo_UNIQUE` (`AdhaarNo`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors`
--

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
INSERT INTO `vendors` VALUES (8,'Vishal',NULL,'Shobha Sweets',NULL,NULL,'7499479968',NULL,'$2a$10$eEXwEQmHtdGGvJWAxb1BlOT4s7tNtuKSrWnv40Sfyjmwr7Lcg7Ut.','abhnagevishal2002@gmail.com','2023-12-16 19:58:00','2b72e7fc6a65101e2e4c6abb7e78fec3f0ab12ed',NULL,NULL),(9,'Vishal Abhange','Wagholi',NULL,NULL,'412207',NULL,NULL,'$2a$10$e3bPFzn9vWYcfmjp3/lnKOZGC9MPcHD4tKLBKU7emI8T9sJBo9DpK','bloggervishal00@gmail.com',NULL,NULL,NULL,'123456781234'),(10,'Vishal',NULL,NULL,NULL,NULL,NULL,NULL,'$2a$10$ZoI9sZOme8RV9VRRL5.3cueFTZRVcIY5cC3kw22aCcb4mtqONc8dy','abhnage@gmail.com',NULL,NULL,NULL,NULL),(11,'Rajmohan',NULL,NULL,NULL,NULL,NULL,NULL,'$2a$10$NutK8QOoXpWdnhsyVFuCXOxxTGbstmgJz8Auv7xnMdADbAbW6D.c2','support@ajeettechnologies.com',NULL,NULL,NULL,NULL),(12,'Rushikesh',NULL,NULL,NULL,NULL,NULL,NULL,'$2a$10$lRwZNRBmSnX7RFTv9ZfMV.FC4mfpW.MksEgSyYTbbqxI4PXi9SQky','rushi@gmail.com',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-12 22:25:32
