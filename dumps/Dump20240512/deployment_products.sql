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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `ProductID` int unsigned NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(255) NOT NULL,
  `ProductCode` varchar(50) DEFAULT NULL,
  `Quantity` int NOT NULL,
  `ImageURL` varchar(255) DEFAULT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Threshold` int DEFAULT NULL,
  `ExpiryDate` date DEFAULT NULL,
  `VendorID` int unsigned NOT NULL,
  PRIMARY KEY (`ProductID`,`VendorID`),
  KEY `fk_products_vendors_idx` (`VendorID`),
  CONSTRAINT `fk_products_vendors` FOREIGN KEY (`VendorID`) REFERENCES `vendors` (`VendorID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (13,'Vishal','',200,' ',1000.00,10,'0001-01-03',9),(14,'Mouse','',50,' ',1000.00,10,'0001-01-03',9),(15,'Phone','',50,' ',1500.00,10,'0001-01-03',9),(16,'Laptop','',20,' ',7500.00,10,'0001-01-03',9),(17,'w',NULL,50,NULL,20.00,NULL,NULL,9),(18,'Yash',NULL,10,NULL,100.00,NULL,NULL,9),(19,'U',NULL,5,NULL,50.00,NULL,NULL,9),(20,'Viraj',NULL,10,NULL,50.00,NULL,NULL,9),(21,'Suger',NULL,10,NULL,50.00,NULL,NULL,9),(22,'Rice',NULL,10,NULL,100.00,NULL,NULL,9),(23,'Wheat',NULL,5,NULL,80.00,NULL,NULL,9),(24,'Dal',NULL,2,NULL,150.00,NULL,NULL,9),(25,'Peanuts',NULL,5,NULL,500.00,NULL,NULL,9),(26,'Almonds',NULL,5,NULL,500.00,NULL,NULL,9),(27,'Cashew',NULL,5,NULL,500.00,NULL,NULL,9),(28,'chicken toaster',NULL,4,NULL,100.00,NULL,NULL,11),(29,'Rushi',NULL,10,NULL,100.00,NULL,NULL,12);
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
