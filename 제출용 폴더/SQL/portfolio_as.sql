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
-- Table structure for table `as`
--

DROP TABLE IF EXISTS `as`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `as` (
  `asNum` int NOT NULL AUTO_INCREMENT,
  `asTitle` varchar(24) NOT NULL,
  `asName` varchar(30) NOT NULL,
  `asTel` varchar(12) NOT NULL,
  `asContent` longtext NOT NULL,
  `asDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `asState` varchar(8) NOT NULL DEFAULT '미확인',
  `asUserId` varchar(16) NOT NULL,
  PRIMARY KEY (`asNum`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `as`
--

LOCK TABLES `as` WRITE;
/*!40000 ALTER TABLE `as` DISABLE KEYS */;
INSERT INTO `as` VALUES (1,'asdf','qwer1234','01012341234','&lt;p&gt;그림1&lt;/p&gt;&lt;p&gt;&lt;img src=\"/portfolio/resources/image/asApply/2020/09/09/9aae3681-9536-47c8-9e6c-3ca32730fad0_귀걸이1.jpg\" style=\"width: 25%;\"&gt;&lt;/p&gt;&lt;p&gt;그림2&lt;/p&gt;&lt;p&gt;&lt;img src=\"/portfolio/resources/image/asApply/2020/09/09/53ba1185-3606-4261-88de-e32ed3aef559_귀걸이2.jpg\" style=\"width: 25%;\"&gt;&lt;br&gt;&lt;/p&gt;','2020-09-09 13:05:47','미확인','qwer1234'),(2,'test2','asdf1234','01012365478','&lt;p&gt;&lt;img src=\"/portfolio/resources/image/asApply/2020/09/09/654df0c0-e154-43a8-813f-1f31e42cc0c7_귀걸이1.jpg\" style=\"width: 958px;\"&gt;&lt;br&gt;&lt;/p&gt;','2020-09-09 14:08:10','미확인','asdf1234'),(3,'qwer1234','qwer1234','010456782345','&lt;p&gt;1234&lt;img src=\"/portfolio/resources/image/asApply/2020/09/09/04e1b10d-3a0c-4b58-87cb-a8fe81bff7d3_귀걸이2.jpg\" style=\"width: 958px;\"&gt;&lt;/p&gt;','2020-09-09 14:08:39','미확인','qwer1234'),(4,'qwer1234','qwer1234','01023456578','&lt;p&gt;&lt;img src=\"/portfolio/resources/image/asApply/2020/09/09/98bbef0a-e193-476d-aac0-017164b8cc13_목걸이2.jpg\" style=\"width: 958px;\"&gt;&lt;br&gt;&lt;/p&gt;','2020-09-09 14:10:28','미확인','qwer1234'),(5,'tyui1234','qwer1234','010654789456','&lt;p&gt;&lt;img src=\"/portfolio/resources/image/asApply/2020/09/09/505c4af6-8049-4a3c-91ed-a0e04a8b562e_목걸이8.jpg\" style=\"width: 958px;\"&gt;&lt;br&gt;&lt;/p&gt;','2020-09-09 14:10:47','미확인','qwer1234'),(6,'zxcv1234','qwer1234','014562345467','&lt;p&gt;&lt;img src=\"/portfolio/resources/image/asApply/2020/09/09/69f3cc8e-12bd-42dc-844d-054227abc6b4_귀걸이1.jpg\" style=\"width: 958px;\"&gt;&lt;br&gt;&lt;/p&gt;','2020-09-09 14:11:10','미확인','qwer1234'),(7,'hkll1234','qwer1234','021537865488','&lt;p&gt;&lt;img src=\"/portfolio/resources/image/asApply/2020/09/09/658e2a93-6c36-4621-ace9-aa5ec41582b3_목걸이9.jpg\" style=\"width: 958px;\"&gt;&lt;br&gt;&lt;/p&gt;','2020-09-09 14:11:32','미확인','qwer1234'),(8,'poui1234','qwer1234','010245237537','&lt;p&gt;&lt;img src=\"/portfolio/resources/image/asApply/2020/09/09/a876b72e-fa12-4bec-a954-3c583999d3c6_귀찌3.jpg\" style=\"width: 958px;\"&gt;&lt;br&gt;&lt;/p&gt;','2020-09-09 14:12:09','미확인','qwer1234'),(9,'1234qwer','qwer1234','014240434534','&lt;p&gt;&lt;img src=\"/portfolio/resources/image/asApply/2020/09/09/19255def-39d9-4aaf-aa65-6b8cec392b61_귀걸이2.jpg\" style=\"width: 958px;\"&gt;&lt;br&gt;&lt;/p&gt;','2020-09-09 17:37:12','미확인','qwer1234');
/*!40000 ALTER TABLE `as` ENABLE KEYS */;
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
