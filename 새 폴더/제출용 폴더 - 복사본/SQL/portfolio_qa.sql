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
-- Table structure for table `qa`
--

DROP TABLE IF EXISTS `qa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qa` (
  `qaNum` int NOT NULL AUTO_INCREMENT,
  `qaOriginNum` int NOT NULL DEFAULT '0',
  `qaTitle` varchar(255) NOT NULL,
  `qaWriter` varchar(30) NOT NULL,
  `qaIsOpen` char(1) NOT NULL DEFAULT 'Y',
  `qaPw` varchar(255) DEFAULT NULL,
  `qaContent` longtext NOT NULL,
  `qaDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `qaIsDel` char(1) NOT NULL DEFAULT 'N',
  `qaIsCheck` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`qaNum`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa`
--

LOCK TABLES `qa` WRITE;
/*!40000 ALTER TABLE `qa` DISABLE KEYS */;
INSERT INTO `qa` VALUES (1,1,'test1','test1','N','$2a$10$pw3H4w3V2SMyG/Jm8uLS2ehq8PoU/0xSj4YRuEfZbGagL9WQfmSam','&lt;p&gt;&lt;img src=\"/portfolio/resources/image/qa/2020/09/11/4fca4a4f-67d2-4490-83ec-1fcc69289ade_귀걸이1.jpg\" style=\"width: 25%;\"&gt;&lt;/p&gt;&lt;p&gt;test1&lt;/p&gt;','2020-09-11 15:21:52','N','Y'),(2,1,'답변 : test1','root1234','N','$2a$10$pw3H4w3V2SMyG/Jm8uLS2ehq8PoU/0xSj4YRuEfZbGagL9WQfmSam','&lt;p&gt;asdf&lt;/p&gt;','2020-09-22 11:51:06','Y','Y'),(3,1,'답변 : test1','root1234','N','$2a$10$pw3H4w3V2SMyG/Jm8uLS2ehq8PoU/0xSj4YRuEfZbGagL9WQfmSam','&lt;p&gt;qwer&lt;/p&gt;','2020-09-22 12:25:40','N','Y');
/*!40000 ALTER TABLE `qa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-23  9:40:07
