CREATE DATABASE  IF NOT EXISTS `portfolio` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `portfolio`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: portfolio
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `recalllist`
--

DROP TABLE IF EXISTS `recalllist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recalllist` (
  `recallListNum` int NOT NULL AUTO_INCREMENT,
  `recallList_orderListNum` int NOT NULL,
  `recallList_recallNum` int NOT NULL,
  PRIMARY KEY (`recallListNum`),
  KEY `recallList_orderListNum_idx` (`recallList_orderListNum`),
  KEY `recallList_recallNum_idx` (`recallList_recallNum`),
  CONSTRAINT `recallList_orderListNum` FOREIGN KEY (`recallList_orderListNum`) REFERENCES `orderlist` (`orderListNum`),
  CONSTRAINT `recallList_recallNum` FOREIGN KEY (`recallList_recallNum`) REFERENCES `recall` (`recallNum`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recalllist`
--

LOCK TABLES `recalllist` WRITE;
/*!40000 ALTER TABLE `recalllist` DISABLE KEYS */;
INSERT INTO `recalllist` VALUES (1,22,1),(2,23,1),(3,16,2),(4,12,3),(5,20,4),(6,21,4),(7,17,5),(8,15,6),(9,8,7),(10,9,7),(11,4,8),(12,10,9),(13,18,10),(14,19,10),(15,28,11),(16,29,11),(17,30,12),(18,31,13);
/*!40000 ALTER TABLE `recalllist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-23  9:40:08
