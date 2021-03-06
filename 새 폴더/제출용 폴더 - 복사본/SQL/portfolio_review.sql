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
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `reviewNum` int NOT NULL AUTO_INCREMENT,
  `review_userId` varchar(16) NOT NULL,
  `review_orderListNum` int NOT NULL,
  `reviewTitle` varchar(255) NOT NULL,
  `reviewContent` longtext NOT NULL,
  `reviewDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reviewIsDel` char(1) NOT NULL DEFAULT 'N',
  `reviewDelDate` date DEFAULT NULL,
  PRIMARY KEY (`reviewNum`),
  KEY `review_userId_idx` (`review_userId`),
  KEY `review_orderListNum_idx` (`review_orderListNum`),
  CONSTRAINT `review_orderListNum` FOREIGN KEY (`review_orderListNum`) REFERENCES `orderlist` (`orderListNum`),
  CONSTRAINT `review_userId` FOREIGN KEY (`review_userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,'qwer1234',3,'qwer1234','&lt;p&gt;qwer1234&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=\"/portfolio/resources/image/review/2020/09/14/fca9be1f-2f77-4e8c-ac93-4a33a66217b0_귀걸이2.jpg\" style=\"width: 25%;\"&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=\"/portfolio/resources/image/review/2020/09/14/aa849b5b-be63-45ec-b331-2e5ff14b53a3_목걸이3.jpg\" style=\"width: 25%;\"&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;','2020-09-14 09:48:18','N',NULL);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
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
