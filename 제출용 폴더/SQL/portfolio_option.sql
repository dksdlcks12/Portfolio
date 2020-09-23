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
-- Table structure for table `option`
--

DROP TABLE IF EXISTS `option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `option` (
  `optionNum` int NOT NULL AUTO_INCREMENT,
  `option_goodsNum` int NOT NULL,
  `optionColor` varchar(255) NOT NULL,
  `optionStock` int NOT NULL,
  `optionIsDel` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`optionNum`),
  KEY `option_goodsNum_idx` (`option_goodsNum`),
  CONSTRAINT `option_goodsNum` FOREIGN KEY (`option_goodsNum`) REFERENCES `goods` (`goodsNum`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option`
--

LOCK TABLES `option` WRITE;
/*!40000 ALTER TABLE `option` DISABLE KEYS */;
INSERT INTO `option` VALUES (1,1,'silver',100,'N'),(2,1,'gold',100,'N'),(3,2,'gold',50,'N'),(4,2,'silver',50,'N'),(5,3,'gold',100,'N'),(6,3,'silver',100,'N'),(7,4,'silver',100,'N'),(8,4,'gold',100,'N'),(9,5,'silver',150,'N'),(10,5,'gold',150,'N'),(11,6,'gold',158,'N'),(12,6,'silver',58,'N'),(13,7,'silver',100,'N'),(14,7,'gold',100,'N'),(15,8,'gold',142,'N'),(16,8,'silver',142,'N'),(17,9,'gold',97,'N'),(18,9,'silver',66,'N'),(19,10,'red',148,'N'),(20,10,'blue',147,'N'),(21,11,'red',148,'N'),(22,11,'blue',145,'N'),(23,12,'gold',44,'N'),(24,12,'silver',46,'N'),(25,13,'gold',73,'N'),(26,13,'silver',74,'N'),(27,14,'gold',95,'N'),(28,14,'silver',97,'N'),(29,15,'silver',44,'N'),(30,15,'gold',54,'N'),(31,16,'silver',95,'N'),(32,16,'gold',95,'N'),(33,1,'ruby',100,'N');
/*!40000 ALTER TABLE `option` ENABLE KEYS */;
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
