-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: moneytracker
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `transId` int NOT NULL AUTO_INCREMENT,
  `placeOfTransaction` varchar(200) NOT NULL,
  `transactionAmount` int NOT NULL,
  `cardIdUsed` varchar(50) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `dateOfTransaction` timestamp NOT NULL,
  `id` int DEFAULT NULL,
  PRIMARY KEY (`transId`),
  KEY `id` (`id`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`id`) REFERENCES `userscredentials` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,'DMart',357,'1','Food','2023-03-22 18:30:00',1),(2,'Flipkart',890,'2','Lifestyle','2023-03-23 18:30:00',1),(3,'IRCTC',680,'1','Travel','2023-04-23 18:30:00',1),(4,'IRCTC',131,'2','Travel','2023-04-20 18:30:00',1),(5,'Book My Show',235,'1','Entertainment','2023-05-23 18:30:00',1),(6,'Offline POS',235,'1','Other','2023-05-24 18:30:00',1),(7,'Jio Mart',120,'3','Food','2023-03-11 18:30:00',2),(8,'Swiggy',203,'4','Food','2023-03-24 18:30:00',2),(9,'Book My Show',1478,'5','Entertainment','2023-02-28 18:30:00',3),(10,'Jio Mart',420,'6','Food','2023-03-01 18:30:00',4),(11,'Asian Paints',1478,'7','Other','2023-03-13 18:30:00',4),(12,'Jio Mart',608,'6','Food','2023-03-21 18:30:00',4),(13,'Big Basket',579,'8','Food','2023-03-24 18:30:00',4);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-15 20:24:07
