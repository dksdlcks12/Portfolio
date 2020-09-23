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
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods` (
  `goodsNum` int NOT NULL AUTO_INCREMENT,
  `goodsName` varchar(255) NOT NULL,
  `goodsPrice` int NOT NULL,
  `goodsPoint` int NOT NULL,
  `goodsType` varchar(6) NOT NULL,
  `goodsImg` varchar(255) NOT NULL,
  PRIMARY KEY (`goodsNum`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (1,'목걸이1',9000,90,'1','/2020/09/01/f03155ea-8a08-4442-86e6-cf0e33e10ce1_목걸이1.jpg'),(2,'목걸이2',11000,110,'1','/2020/08/21/1dcaac87-99af-4db7-a6cb-5c241379a5de_목걸이2.jpg'),(3,'목걸이3',13000,130,'1','/2020/08/21/89be18dc-bfc6-4c0c-b36b-e093a7894673_목걸이3.jpg'),(4,'목걸이4',14000,140,'1','/2020/08/21/36ce970c-8d0c-4ad8-bafa-eda25b6cf8d6_목걸이4.jpg'),(5,'목걸이5',15000,150,'1','/2020/08/21/96301dbe-0c47-44e4-995d-e6b7476900d6_목걸이5.jpg'),(6,'목걸이6',15000,150,'1','/2020/08/21/38309489-e543-457e-ba3a-ea6515c3467e_목걸이6.jpg'),(7,'목걸이7',16000,160,'1','/2020/08/21/3b856ab9-2f16-4d72-95a0-1b4d2f7c6222_목걸이7.png'),(8,'목걸이8',14000,140,'1','/2020/08/21/10e82968-2557-4e4e-91ed-7ca62b0635c1_목걸이8.jpg'),(9,'목걸이9',13000,130,'1','/2020/08/21/50cbe88b-add4-4457-9443-adafb80e4390_목걸이9.jpg'),(10,'목걸이10',10000,100,'1','/2020/08/21/18a58923-247f-41d9-89ac-1346ef947e4b_목걸이10.jpg'),(11,'목걸이11',11000,110,'1','/2020/08/21/12926edb-6459-4a2a-be8c-305fd50724ff_목걸이11.jpg'),(12,'목걸이12',14000,140,'1','/2020/08/21/e51395c9-54c9-42c5-9bd4-83b1fce77da2_목걸이12.jpg'),(13,'목걸이13',13000,130,'1','/2020/08/21/42c4a962-90a8-4a96-bbd1-792a61b747f0_목걸이13.jpg'),(14,'목걸이14',14000,140,'1','/2020/08/21/a6937c9a-da63-4c5b-a2db-424f1d63b4f5_목걸이14.jpg'),(15,'반지1',15000,150,'2','/2020/08/21/48fee32f-5560-4ff3-85a0-59a213b2558d_반지1.png'),(16,'반지2',10000,100,'2','/2020/08/21/038e150f-84ed-40d6-bf16-96ee7b117aea_반지2.jpg');
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
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
