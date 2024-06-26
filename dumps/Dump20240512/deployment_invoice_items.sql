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
-- Table structure for table `invoice_items`
--

DROP TABLE IF EXISTS `invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice_items` (
  `InvoiceItemID` int unsigned NOT NULL AUTO_INCREMENT,
  `MainInvoiceID` int unsigned NOT NULL,
  `ProductName` varchar(45) NOT NULL,
  `Quantity` int NOT NULL,
  `UnitPrice` decimal(10,2) NOT NULL,
  `SubTotal` int DEFAULT NULL,
  PRIMARY KEY (`InvoiceItemID`),
  KEY `fk_invoice_items_main_invoices_idx` (`MainInvoiceID`),
  CONSTRAINT `fk_invoice_items_main_invoices` FOREIGN KEY (`MainInvoiceID`) REFERENCES `main_invoices` (`MainInvoiceID`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_items`
--

LOCK TABLES `invoice_items` WRITE;
/*!40000 ALTER TABLE `invoice_items` DISABLE KEYS */;
INSERT INTO `invoice_items` VALUES (22,1920228068,'Product 1',2,10.99,22),(23,1920228068,'Product 2',1,5.99,6),(24,1922048656,'Product1',2,10.50,21),(25,1922048656,'Product2',1,15.00,15),(26,1922049140,'Vishal',1,1000.00,NULL),(27,1922049140,'Mouse',1,1000.00,NULL),(28,1922049140,'Phone',1,1500.00,NULL),(29,1922049766,'Vishal',1,1000.00,NULL),(30,1922049766,'Mouse',1,1000.00,NULL),(31,1922049766,'Phone',1,1500.00,NULL),(32,1922055849,'Vishal',1,1000.00,NULL),(33,1922055849,'Mouse',1,1000.00,NULL),(34,1922055849,'Phone',1,1500.00,NULL),(35,1922055849,'Laptop',1,7500.00,NULL),(36,1922055849,'w',1,20.00,NULL),(37,1922055849,'Yash',1,100.00,NULL),(38,1922055849,'U',1,50.00,NULL),(39,1923190598,'Vishal',1,1000.00,NULL),(40,1923190598,'Yash',1,100.00,NULL),(41,1923191166,'Vishal',1,1000.00,NULL),(42,1923191166,'Mouse',1,1000.00,NULL),(43,1925249859,'Wheat',1,80.00,NULL),(44,1925249859,'Cashew',1,500.00,NULL),(45,1926270082,'Vishal',2,1000.00,NULL),(46,1926270082,'Mouse',1,1000.00,NULL),(47,1926270082,'Phone',3,1500.00,NULL),(48,2244236662,'Vishal',1,1000.00,NULL),(49,2244236662,'Dal',1,150.00,NULL),(50,2244236662,'Peanuts',1,500.00,NULL),(51,2429242102,'Rushi',1,100.00,NULL),(52,2443244983,'Mouse',1,1000.00,NULL),(53,2443255270,'Mouse',1,1000.00,NULL),(54,2443255270,'Vishal',1,1000.00,NULL),(55,2444122691,'Mouse',2,1000.00,NULL),(56,2525333188,'Vishal',3,1000.00,NULL),(57,2526124206,'Laptop',1,7500.00,NULL),(58,2526124206,'Phone',1,1500.00,NULL),(59,2526124206,'Mouse',1,1000.00,NULL),(60,2526124674,'Viraj',4,50.00,NULL),(61,2526125871,'Vishal',1,1000.00,NULL),(62,2526125871,'Dal',1,150.00,NULL),(63,2526125871,'Suger',1,50.00,NULL),(64,2527223274,'Mouse',1,1000.00,NULL),(65,2527223274,'Laptop',1,7500.00,NULL),(66,2527223274,'Rice',1,100.00,NULL),(67,2527223304,'Mouse',1,1000.00,NULL),(68,2527223304,'Laptop',1,7500.00,NULL),(69,2527223304,'Rice',1,100.00,NULL),(70,2527226394,'Mouse',1,1000.00,NULL),(71,2527226394,'Phone',3,1500.00,NULL);
/*!40000 ALTER TABLE `invoice_items` ENABLE KEYS */;
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
