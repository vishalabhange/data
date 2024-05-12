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
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `transaction_id` int NOT NULL AUTO_INCREMENT,
  `transaction_date` date NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `quantity` int NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `order_id` int DEFAULT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,'2023-09-25','sweets',6,10.99,65.94,1),(2,'2023-09-25','kachori',5,8.75,43.75,1),(3,'2023-09-25','samosa',1,12.50,12.50,1),(4,'2023-09-25','Ladu',12,6.99,83.88,2),(5,'2023-09-25','Gulab',3,9.99,29.97,2),(6,'2023-09-25','Pede',7,7.49,52.43,2),(7,'2023-09-25','Sugar',15,2.25,33.75,3),(8,'2023-09-25','kachori',5,8.75,43.75,3),(9,'2023-09-25','samosa',1,12.50,12.50,3),(10,'2023-09-25','Ladu',12,6.99,83.88,4),(11,'2023-09-25','Gulab',3,9.99,29.97,4),(12,'2023-09-25','Pede',7,7.49,52.43,4),(13,'2023-09-25','Sugar',15,2.25,33.75,5),(14,'2023-09-25','kachori',5,8.75,43.75,5),(15,'2023-09-25','samosa',1,12.50,12.50,5),(16,'2023-09-25','sweets',6,10.99,65.94,6),(17,'2023-09-25','Ladu',12,6.99,83.88,6),(18,'2023-09-25','Gulab',3,9.99,29.97,6),(19,'2023-09-26','kachori',5,8.75,43.75,1),(20,'2023-09-26','Pede',7,7.49,52.43,1),(21,'2023-09-26','Sugar',15,2.25,33.75,1),(22,'2023-09-26','sweets',6,10.99,65.94,2),(23,'2023-09-26','kachori',5,8.75,43.75,2),(24,'2023-09-26','Ladu',12,6.99,83.88,2),(25,'2023-09-26','samosa',1,12.50,12.50,3),(26,'2023-09-26','kachori',5,8.75,43.75,3),(27,'2023-09-26','sweets',6,10.99,65.94,3),(28,'2023-09-26','Gulab',3,9.99,29.97,4),(29,'2023-09-26','Sugar',15,2.25,33.75,4),(30,'2023-09-26','samosa',1,12.50,12.50,4),(31,'2023-09-26','samosa',1,12.50,12.50,5),(32,'2023-09-26','Pede',7,7.49,52.43,5),(33,'2023-09-26','kachori',5,8.75,43.75,5),(34,'2023-09-26','Ladu',12,6.99,83.88,6),(35,'2023-09-26','Gulab',3,9.99,29.97,6),(36,'2023-09-26','sweets',6,10.99,65.94,6),(37,'2023-09-27','kachori',5,8.75,43.75,1),(38,'2023-09-27','Ladu',12,6.99,83.88,1),(39,'2023-09-27','sweets',6,10.99,65.94,1),(40,'2023-09-27','samosa',1,12.50,12.50,2),(41,'2023-09-27','kachori',5,8.75,43.75,2),(42,'2023-09-27','Pede',7,7.49,52.43,2),(43,'2023-09-27','Gulab',3,9.99,29.97,3),(44,'2023-09-27','kachori',5,8.75,43.75,3),(45,'2023-09-27','samosa',1,12.50,12.50,3),(46,'2023-09-27','sweets',6,10.99,65.94,4),(47,'2023-09-27','kachori',5,8.75,43.75,4),(48,'2023-09-27','Ladu',12,6.99,83.88,4),(49,'2023-09-27','sweets',6,10.99,65.94,5),(50,'2023-09-27','Gulab',3,9.99,29.97,5),(51,'2023-09-27','Pede',7,7.49,52.43,5),(52,'2023-09-27','Sugar',15,2.25,33.75,6),(53,'2023-09-27','kachori',5,8.75,43.75,6),(54,'2023-09-27','samosa',1,12.50,12.50,6);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-12 22:25:31
