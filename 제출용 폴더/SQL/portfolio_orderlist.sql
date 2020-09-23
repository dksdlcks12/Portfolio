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
-- Table structure for table `orderlist`
--

DROP TABLE IF EXISTS `orderlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderlist` (
  `orderListNum` int NOT NULL AUTO_INCREMENT,
  `orderList_postNum` int NOT NULL,
  `orderList_orderNum` int NOT NULL,
  `orderList_optionNum` int NOT NULL,
  `orderListCount` int NOT NULL,
  `orderListPrice` int NOT NULL,
  `orderListUsePoint` int NOT NULL,
  `orderListPoint` int NOT NULL DEFAULT '0',
  `orderListIsRecall` char(1) NOT NULL DEFAULT 'N',
  `orderListIsReview` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`orderListNum`),
  KEY `orderList_postNum_idx` (`orderList_postNum`),
  KEY `orderList_orderNum_idx` (`orderList_orderNum`),
  KEY `orderList_optioNum_idx` (`orderList_optionNum`),
  CONSTRAINT `orderList_optioNum` FOREIGN KEY (`orderList_optionNum`) REFERENCES `option` (`optionNum`),
  CONSTRAINT `orderList_orderNum` FOREIGN KEY (`orderList_orderNum`) REFERENCES `order` (`orderNum`),
  CONSTRAINT `orderList_postNum` FOREIGN KEY (`orderList_postNum`) REFERENCES `post` (`postNum`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderlist`
--

LOCK TABLES `orderlist` WRITE;
/*!40000 ALTER TABLE `orderlist` DISABLE KEYS */;
INSERT INTO `orderlist` VALUES (1,11,1,21,1,9900,0,110,'N','N'),(2,11,1,22,1,9900,0,110,'N','N'),(3,14,1,27,1,11900,0,140,'N','Y'),(4,15,2,30,2,13500,2700,300,'Y','N'),(5,15,2,29,2,13500,2700,300,'N','N'),(6,16,3,32,3,9000,300,300,'N','N'),(7,16,3,31,3,9000,2700,300,'N','N'),(8,14,4,27,3,11900,400,420,'Y','N'),(9,14,4,28,3,11900,400,420,'Y','N'),(10,6,5,11,2,12000,0,300,'Y','N'),(11,6,5,12,2,12000,0,300,'N','N'),(12,9,6,17,3,11700,0,390,'Y','N'),(13,9,6,18,4,11700,0,520,'N','N'),(14,8,7,15,4,11900,0,560,'N','N'),(15,8,7,16,4,11900,0,560,'Y','N'),(16,10,8,19,2,8000,0,200,'Y','N'),(17,10,8,20,3,8000,0,300,'Y','N'),(18,13,9,25,4,11700,2220,520,'Y','N'),(19,12,9,23,5,12600,6300,700,'Y','N'),(20,13,9,26,4,11700,4680,520,'Y','N'),(21,12,9,24,4,12600,5040,560,'Y','N'),(22,8,10,15,3,11900,0,420,'Y','N'),(23,8,10,16,3,11900,0,420,'Y','N'),(24,15,11,30,3,13500,0,450,'N','N'),(25,15,11,29,3,13500,0,450,'N','N'),(26,15,12,29,1,13500,0,150,'N','N'),(27,15,12,30,1,13500,0,150,'N','N'),(28,11,13,22,1,9900,990,110,'Y','N'),(29,11,13,21,1,9900,990,110,'Y','N'),(30,14,14,27,1,11900,570,140,'Y','N'),(31,12,15,23,1,12600,500,140,'Y','N'),(32,16,16,32,1,9000,0,100,'N','N'),(33,16,16,31,1,9000,0,100,'N','N'),(34,13,17,26,1,11700,0,130,'N','N'),(35,13,17,25,1,11700,0,130,'N','N'),(36,8,18,15,1,11900,0,140,'N','N'),(37,8,18,16,1,11900,0,140,'N','N'),(38,13,19,26,1,11700,0,130,'N','N'),(39,13,19,25,1,11700,0,130,'N','N'),(40,16,19,32,1,9000,0,100,'N','N'),(41,16,19,31,1,9000,0,100,'N','N'),(42,13,20,25,1,11700,0,130,'N','N');
/*!40000 ALTER TABLE `orderlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-23  9:40:06
