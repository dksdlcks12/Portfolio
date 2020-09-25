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
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `postNum` int NOT NULL AUTO_INCREMENT,
  `post_userId` varchar(16) NOT NULL,
  `post_goodsNum` int NOT NULL,
  `postDiscount` int NOT NULL DEFAULT '0',
  `postImg` varchar(255) NOT NULL,
  `postIsDel` char(1) NOT NULL DEFAULT 'N',
  `postDelDate` datetime DEFAULT NULL,
  PRIMARY KEY (`postNum`),
  UNIQUE KEY `post_goodsNum_UNIQUE` (`post_goodsNum`),
  KEY `post_userId_idx` (`post_userId`),
  KEY `post_goodsNum_idx` (`post_goodsNum`),
  CONSTRAINT `post_goodsNum` FOREIGN KEY (`post_goodsNum`) REFERENCES `goods` (`goodsNum`),
  CONSTRAINT `post_userId` FOREIGN KEY (`post_userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'root1234',1,0,'/2020/09/01/4dadaef7-8421-43c4-a916-4081be6543b4_목걸이1.jpg','N',NULL),(2,'root1234',2,0,'/2020/08/21/6017b99c-f0b0-40a2-b932-46d22ff533a5_목걸이2.jpg','N',NULL),(3,'root1234',3,0,'/2020/08/21/9c397b00-018f-431a-a3c9-034ed89e221f_목걸이3.jpg','N',NULL),(4,'root1234',4,0,'/2020/08/21/562aff51-3ded-45c7-ab70-68fd8abf6b75_목걸이4.jpg','N',NULL),(5,'root1234',5,0,'/2020/08/21/52d9ba34-cec8-48cb-bce4-c23e42e9e7e4_목걸이5.jpg','N',NULL),(6,'root1234',6,20,'/2020/08/21/7a9f6863-3a82-433a-afdc-0b90ef458b1b_목걸이7.png','N',NULL),(7,'root1234',7,15,'/2020/08/21/316e7b7a-e588-43c8-88fb-25164fec48ed_목걸이6.jpg','N',NULL),(8,'root1234',8,15,'/2020/08/21/20378d7c-7f1d-4ea7-9233-df3de05edb9e_목걸이8.jpg','N',NULL),(9,'root1234',9,10,'/2020/08/21/a64adb81-b2f3-4a86-83cc-09f37e5c3a47_목걸이9.jpg','N',NULL),(10,'root1234',10,20,'/2020/08/21/7864647b-c672-4050-87fa-eb2395f4aff9_목걸이10.jpg','N',NULL),(11,'root1234',11,10,'/2020/08/21/d0024a25-048d-44f6-8ee9-2166328ce869_목걸이11.jpg','N',NULL),(12,'root1234',12,10,'/2020/08/21/81ab67b4-982e-4fba-9099-3c06ead745ca_목걸이12.jpg','N',NULL),(13,'root1234',13,10,'/2020/08/21/49e86526-3dcd-4feb-9661-57ac642ad5ca_목걸이13.jpg','N',NULL),(14,'root1234',14,15,'/2020/08/21/ecfc88a3-b0be-480a-bf40-31d753cfdf81_목걸이14.jpg','N',NULL),(15,'root1234',15,10,'/2020/08/21/5fd74358-ee16-4803-8c6b-f7e0a73103af_반지1.png','N',NULL),(16,'root1234',16,10,'/2020/08/21/35b59035-23bf-4c92-a0eb-82499d1ffedf_반지2.jpg','N',NULL);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
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
