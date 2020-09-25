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
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `orderNum` int NOT NULL AUTO_INCREMENT,
  `orderSender` varchar(30) NOT NULL,
  `orderPw` varchar(255) DEFAULT NULL,
  `orderSenderPostCode` char(5) NOT NULL,
  `orderSenderAddress` varchar(255) NOT NULL,
  `orderSenderDetailAddress` varchar(255) NOT NULL,
  `orderSenderExtraAddress` varchar(255) DEFAULT NULL,
  `orderSenderTel` varchar(12) NOT NULL,
  `orderReceiver` varchar(30) NOT NULL,
  `orderReceiverPostCode` char(5) NOT NULL,
  `orderReceiverAddress` varchar(255) NOT NULL,
  `orderReceiverDetailAddress` varchar(255) NOT NULL,
  `orderReceiverExtraAddress` varchar(255) DEFAULT NULL,
  `orderReceiverTel` varchar(12) NOT NULL,
  `orderTotalPrice` int NOT NULL,
  `orderDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `orderState` varchar(10) NOT NULL DEFAULT '미확인',
  `orderUserId` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`orderNum`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,'이막이',NULL,'06097','서울 강남구 봉은사로 403','서울1',' (삼성동)','01012345678','박준석','01019','서울 강북구 삼각산로 4-5','서울2',' (수유동)','01098765432',31700,'2020-08-28 16:56:32','배송준비중','qwer1234'),(2,'큰머리',NULL,'05242','서울 강동구 상암로 2-1','서울3',' (암사동)','01033334444','이춘향','01214','서울 강북구 삼양로 92','서울4',' (미아동)','01055556666',48600,'2020-08-28 17:26:00','배송준비중','qwer1234'),(3,'큰머리',NULL,'06307','서울 강남구 개포로 202','서울3',' (개포동)','01033333333','이춘향','06267','서울 강남구 남부순환로 2609','서울4',' (도곡동)','01044444444',51000,'2020-08-31 11:31:16','배송준비중','qwer1234'),(4,'김블루',NULL,'04080','서울 마포구 서강로 19','서울5',' (신정동)','01055555555','정강지','03907','서울 마포구 상암산로1길 24','서울6',' (상암동, 상암 월드컵파크 4단지)','01066666666',70600,'2020-08-31 11:33:48','배송준비중','qwer1234'),(5,'김따띠',NULL,'05262','서울 강동구 암사길 2','서울7',' (암사동)','01077777777','참참부린','01214','서울 강북구 숭인로 3-2','서울8',' (미아동)','01088888888',48000,'2020-08-31 14:23:27','미확인','qwer1234'),(6,'한예찬',NULL,'25511','강원 강릉시 가작로 6','강원1',' (교동)','01011111111','고요','25440','강원 강릉시 사천면 가둔지길 2-4','강원2','ㅇㅅㅇ','01022222222',81900,'2020-08-31 17:29:52','미확인','qwer1234'),(7,'연두',NULL,'28006','충북 괴산군 감물면 감물로 7','충북1','충북','01022222222','연두','28006','충북 괴산군 감물면 감물로 7','충북2','충북','01033333333',95200,'2020-08-31 17:31:17','미확인','qwer1234'),(8,'빅카이도',NULL,'05242','서울 강동구 상암로 2','서울11','','01011111212','수이수이','01704','서울 노원구 노원로 406','서울12','','01012121313',40000,'2020-08-31 17:36:13','미확인','qwer1234'),(9,'박준석',NULL,'06267','서울 강남구 강남대로 238','서울12',' (도곡동)','01013131313','요룰레히','06313','서울 강남구 논현로 4','서울13',' (개포동)','01014141414',188760,'2020-09-02 09:36:29','미확인','asdf1234'),(10,'김따띠',NULL,'06035','서울 강남구 가로수길 5','서울4234',' (신사동)','01065466767','44양','06350','서울 강남구 광평로 61','서울6252',' (일원동)','070713436765',71400,'2020-09-03 10:48:44','미확인','qwer1234'),(11,'qwer',NULL,'01019','서울 강북구 삼각산로 1','fsdf',' (수유동)','010133547686','rwerwer','01705','서울 노원구 노원로 398','dfsdf',' (상계동)','101035445343',81000,'2020-09-11 15:45:18','미확인','qwer1234'),(12,'trtre',NULL,'01062','서울 강북구 덕릉로 93','fsdf',' (번동)','134224241312','werwere','05242','서울 강동구 상암로 2','tret',' (암사동)','432345352133',27000,'2020-09-11 15:46:01','미확인','qwer1234'),(13,'adsf',NULL,'06097','서울 강남구 봉은사로 403','sad',' (삼성동)','540442044504','sdfa','01214','서울 강북구 삼양로 90','sad',' (미아동)','204044202402',17820,'2020-09-15 16:05:16','미확인','qwer1234'),(14,'safd',NULL,'06327','서울 강남구 삼성로 11','sdf',' (개포동, 디에이치 아너힐즈)','024024044024','sdf','01019','서울 강북구 삼각산로 1','fdsf',' (수유동)','542222247525',13830,'2020-09-15 17:39:20','미확인','qwer1234'),(15,'sdffs',NULL,'06327','서울 강남구 삼성로 11','sdf',' (개포동, 디에이치 아너힐즈)','202042040201','dsf','01214','서울 강북구 삼양로 90','fsf',' (미아동)','202040420240',14600,'2020-09-15 17:47:58','미확인','qwer1234'),(16,'비회원T1','$2a$10$9FNWIl..oabjGSor9yxV4.JPIXn/im5Mrj8hXuw/W4IraNhUpYQZW','06097','서울 강남구 봉은사로 403','wrw',' (삼성동)','123412341234','비회원T1T1','06097','서울 강남구 봉은사로 403','qwer',' (삼성동)','123412341234',18000,'2020-09-18 14:35:13','미확인',NULL),(17,'비회원T2','$2a$10$9FNWIl..oabjGSor9yxV4.JPIXn/im5Mrj8hXuw/W4IraNhUpYQZW','06097','서울 강남구 봉은사로 403','qwe',' (삼성동)','432143214321','비회원T2','06097','서울 강남구 봉은사로 403','qwer',' (삼성동)','432112341234',23400,'2020-09-18 15:01:26','미확인',NULL),(18,'비회원T3','$2a$10$9FNWIl..oabjGSor9yxV4.JPIXn/im5Mrj8hXuw/W4IraNhUpYQZW','06097','서울 강남구 봉은사로 403','tttt',' (삼성동)','333312341234','비회원T33','01019','서울 강북구 삼각산로 1','tttt',' (수유동)','333312341234',23800,'2020-09-18 15:11:44','미확인',NULL),(19,'qwer',NULL,'05242','서울 강동구 상암로 2','tt',' (암사동)','213423432342','wqer','05242','서울 강동구 상암로 2','t',' (암사동)','223423421234',41400,'2020-09-18 15:12:30','미확인','qwer1234'),(20,'비회원T4','$2a$10$lW6bNIBffNv39S90qommN.HDUNuqLHhJNr5vybCVTG.oWzmQiUA1W','06097','서울 강남구 봉은사로 403','tt',' (삼성동)','444412341234','비회원T44','06362','서울 강남구 밤고개로 76-2','qwer',' (수서동)','444412341234',14200,'2020-09-18 16:06:30','미확인',NULL);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
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
