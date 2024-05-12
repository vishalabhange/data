-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: org
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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `ProductID` int NOT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `ProductCode` varchar(50) DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `ImageURL` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `Threshold` int DEFAULT NULL,
  `ExpiryDate` date DEFAULT NULL,
  PRIMARY KEY (`ProductID`),
  UNIQUE KEY `ProductCode` (`ProductCode`),
  UNIQUE KEY `ProductName_UNIQUE` (`ProductName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Tea','69',1,NULL,10.00,NULL,NULL),(2,'Cutting','44',1,NULL,7.00,NULL,NULL),(3,'Coffie','60',1,NULL,20.00,NULL,NULL),(4,'Green tea','11',1,NULL,15.00,NULL,NULL),(5,'Black tea','1',1,NULL,10.00,NULL,NULL),(6,'Black coffie','55',1,NULL,20.00,NULL,NULL),(7,'Bun','72',1,NULL,20.00,NULL,NULL),(8,'Cream roll','54',1,NULL,10.00,NULL,NULL),(9,'Cold coffie','65',1,NULL,40.00,NULL,NULL),(10,'Bisleri','30',1,NULL,10.00,NULL,NULL),(11,'Sandwich','17',1,NULL,30.00,NULL,NULL),(12,'Maggi','2',1,NULL,30.00,NULL,NULL),(13,'Colddrink','99',1,NULL,20.00,NULL,NULL),(14,'Fries','100',1,NULL,60.00,NULL,NULL),(15,'combo','105',1,NULL,50.00,NULL,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
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
