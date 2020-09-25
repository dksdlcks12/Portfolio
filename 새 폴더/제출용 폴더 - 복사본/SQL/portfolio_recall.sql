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
-- Table structure for table `recall`
--

DROP TABLE IF EXISTS `recall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recall` (
  `recallNum` int NOT NULL AUTO_INCREMENT,
  `recallReason` varchar(8) NOT NULL,
  `recallContent` longtext NOT NULL,
  `recallIsChange` varchar(4) NOT NULL,
  `recallBankName` varchar(45) DEFAULT NULL,
  `recallAccount` varchar(50) DEFAULT NULL,
  `recallState` varchar(8) NOT NULL DEFAULT '미확인',
  `recallDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`recallNum`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recall`
--

LOCK TABLES `recall` WRITE;
/*!40000 ALTER TABLE `recall` DISABLE KEYS */;
INSERT INTO `recall` VALUES (1,'제품파손','&lt;p&gt;&lt;img src=\"/portfolio/resources/image/recallApply/2020/09/07/cf60dd49-92b0-4ba1-bb65-835e4620bc4b_귀걸이1.jpg\" style=\"width: 958px;\"&gt;&lt;img src=\"/portfolio/resources/image/recallApply/2020/09/07/821c44b2-f428-46e2-9114-cf4442620cbc_귀걸이2.jpg\" style=\"width: 958px;\"&gt;&lt;br&gt;&lt;/p&gt;','교환',NULL,NULL,'미확인','2020-09-07 14:36:12'),(2,'단순변심','&lt;p&gt;&lt;img src=\"/portfolio/resources/image/recallApply/2020/09/07/451f22aa-b8ec-44fd-a342-c320da1bc1e3_귀걸이1.jpg\" style=\"width: 958px;\"&gt;&lt;br&gt;&lt;/p&gt;','환불','aaaa','1111111111111111','미확인','2020-09-07 14:36:56'),(3,'제품파손','&lt;p&gt;fsdfff&lt;img src=\"/portfolio/resources/image/recallApply/2020/09/07/ebaf91de-c94b-47fa-8b7b-613665ee5866_귀찌1.jpg\" style=\"width: 958px;\"&gt;&lt;/p&gt;','교환',NULL,NULL,'미확인','2020-09-07 14:42:45'),(4,'제품파손','&lt;p&gt;&lt;img src=\"/portfolio/resources/image/recallApply/2020/09/07/c9c611c9-2252-40d1-99cc-46ed33db7782_귀걸이1.jpg\" style=\"width: 958px;\"&gt;&lt;img src=\"/portfolio/resources/image/recallApply/2020/09/07/fbafda6e-9e70-4374-83ed-12ec859d77ef_귀걸이2.jpg\" style=\"width: 958px;\"&gt;&lt;br&gt;&lt;/p&gt;','교환',NULL,NULL,'미확인','2020-09-07 16:34:58'),(5,'제품파손','&lt;p&gt;&lt;img src=\"/portfolio/resources/image/recallApply/2020/09/07/cec347bc-ea74-45d3-beae-01de67e3417f_목걸이2.jpg\" style=\"width: 958px;\"&gt;asdasd&lt;br&gt;&lt;/p&gt;','교환',NULL,NULL,'미확인','2020-09-07 16:43:14'),(6,'오배송','&lt;p&gt;&lt;img src=\"/portfolio/resources/image/recallApply/2020/09/07/8fd7b2c6-ad68-4c3c-9a95-834c220974cc_귀걸이1.jpg\" style=\"width: 958px;\"&gt;&lt;br&gt;&lt;/p&gt;','환불','aaaa','1324324123','미확인','2020-09-07 16:43:43'),(7,'오배송','&lt;p&gt;&lt;img src=\"/portfolio/resources/image/recallApply/2020/09/07/77e8a556-b864-4b4f-93be-afdf7e9fd2e9_목걸이1.jpg\" style=\"width: 958px;\"&gt;&lt;br&gt;&lt;/p&gt;','환불','aaaaa','342431123123122312','미확인','2020-09-07 16:46:15'),(8,'제품파손','&lt;p&gt;&lt;img src=\"/portfolio/resources/image/recallApply/2020/09/07/eabb40a0-a6a3-4a4b-b473-42bee3560a0d_귀걸이2.jpg\" style=\"width: 958px;\"&gt;&lt;br&gt;&lt;/p&gt;','교환',NULL,NULL,'미확인','2020-09-07 17:03:24'),(9,'단순변심','&lt;p&gt;&lt;img src=\"/portfolio/resources/image/recallApply/2020/09/08/3c8c45f4-0549-498e-b997-c9e9e0d48016_귀걸이1.jpg\" style=\"width: 50%;\"&gt;&lt;br&gt;&lt;/p&gt;','교환',NULL,NULL,'미확인','2020-09-08 10:39:20'),(10,'제품파손','&lt;p&gt;&lt;img src=\"/portfolio/resources/image/recallApply/2020/09/09/3cb26e2f-8776-49c7-9cbe-12ed710a7fcc_귀걸이1.jpg\" style=\"width: 878px;\"&gt;&lt;br&gt;&lt;/p&gt;','환불','dsadas','123123112321321321','미확인','2020-09-09 17:31:20'),(11,'단순변심','&lt;p&gt;asdf&lt;/p&gt;','환불','adsf124','423424','미확인','2020-09-15 17:28:40'),(12,'제품파손','&lt;p&gt;sffsd&lt;/p&gt;','교환',NULL,NULL,'미확인','2020-09-15 17:39:32'),(13,'단순변심','&lt;p&gt;sfsdfsd&lt;/p&gt;','환불','dfsdf','0042','미확인','2020-09-15 17:48:11');
/*!40000 ALTER TABLE `recall` ENABLE KEYS */;
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
