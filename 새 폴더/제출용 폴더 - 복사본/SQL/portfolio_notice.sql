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
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `noticeNum` int NOT NULL AUTO_INCREMENT,
  `notice_userId` varchar(16) NOT NULL,
  `noticeTitle` varchar(255) NOT NULL,
  `noticeContent` longtext NOT NULL,
  `noticeDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `noticeIsDel` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`noticeNum`),
  KEY `notice_userId_idx` (`notice_userId`),
  CONSTRAINT `notice_userId` FOREIGN KEY (`notice_userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (1,'root1234','test1','&lt;p&gt;test1&lt;/p&gt;&lt;p&gt;&lt;img src=\"/portfolio/resources/image/notice/2020/09/10/24128711-42d4-40c3-bf02-d72df349c2f3_귀걸이1.jpg\" style=\"width: 25%;\"&gt;&lt;/p&gt;&lt;p&gt;test1&lt;/p&gt;&lt;p&gt;&lt;img src=\"/portfolio/resources/image/notice/2020/09/10/3c0fca1b-029b-436a-ad80-a08ee30986e0_목걸이3.jpg\" style=\"width: 25%;\"&gt;&lt;br&gt;&lt;/p&gt;','2020-09-10 09:34:00','N'),(2,'root1234','test2','&lt;p&gt;test2&lt;img src=\"/portfolio/resources/image/notice/2020/09/10/95b8f6e7-b514-472f-847f-842e79c4ad41_목걸이14.jpg\" style=\"width: 878px;\"&gt;&lt;/p&gt;','2020-09-10 09:49:46','N'),(3,'root1234','test3','&lt;p&gt;test3&lt;/p&gt;','2020-09-10 09:58:34','N'),(4,'root1234','test4','&lt;p&gt;test4&lt;/p&gt;&lt;p&gt;test4&lt;/p&gt;&lt;p&gt;test4&lt;/p&gt;','2020-09-10 09:58:48','N'),(5,'root1234','test11','&lt;p&gt;test11&lt;/p&gt;','2020-09-10 09:59:37','N'),(6,'root1234','test22','&lt;p&gt;test22&lt;/p&gt;','2020-09-10 09:59:45','N'),(7,'root1234','test','&lt;p&gt;23&lt;/p&gt;','2020-09-10 09:59:51','N'),(8,'root1234','tset8','&lt;p&gt;test8&lt;/p&gt;','2020-09-11 17:34:59','N');
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
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
