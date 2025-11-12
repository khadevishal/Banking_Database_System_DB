-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: bank_db
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `ACC_ID` int NOT NULL,
  `CUSTOMER_ID` int DEFAULT NULL,
  `ACC_TYPE` varchar(45) DEFAULT NULL,
  `BALANCE` decimal(50,0) DEFAULT NULL,
  PRIMARY KEY (`ACC_ID`),
  KEY `CUSTOMER_ID_idx` (`CUSTOMER_ID`),
  CONSTRAINT `CUSTOMER_ID` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `customers` (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1001,1,'Savings',35000),(1002,2,'Current',54000),(1003,3,'Savings',20000),(1004,4,'Fixed Deposit',150000),(1005,5,'Savings',42000),(1006,6,'Current',32000),(1007,7,'Savings',25000),(1008,8,'Savings',18000),(1009,9,'Current',75000),(1010,10,'Savings',61000),(1011,11,'Savings',45000),(1012,12,'Current',55000),(1013,13,'Savings',38000),(1014,14,'Fixed Deposit',150000),(1015,15,'Savings',27000),(1016,16,'Savings',48000),(1017,17,'Current',72000),(1018,18,'Savings',26000),(1019,19,'Savings',31000),(1020,20,'Current',81000),(1021,21,'Savings',29000),(1022,22,'Fixed Deposit',150000),(1023,23,'Savings',33000),(1024,24,'Current',92000),(1025,25,'Savings',27000),(1026,26,'Current',50000),(1027,27,'Savings',45000),(1028,28,'Fixed Deposit',130000),(1029,29,'Savings',34000),(1030,30,'Savings',25000);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-12 22:12:37
