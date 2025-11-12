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
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `EMP_ID` int NOT NULL,
  `EMP_NAME` varchar(45) DEFAULT NULL,
  `EMP_ROLE` varchar(45) DEFAULT NULL,
  `BRANCH_ID` int DEFAULT NULL,
  PRIMARY KEY (`EMP_ID`),
  KEY `BRANCH_ID_idx` (`BRANCH_ID`),
  CONSTRAINT `BRANCH_ID` FOREIGN KEY (`BRANCH_ID`) REFERENCES `branches` (`BRANCH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (301,'Rohit Patil','Manager',201),(302,'Asha Pawar','Cashier',201),(303,'Suresh Jadhav','Clerk',202),(304,'Anjali More','Manager',202),(305,'Mahesh Kadam','Accountant',203),(306,'Meena Gokhale','Loan Officer',203),(307,'Deepak Chavan','Clerk',204),(308,'Kiran Kale','Manager',205),(309,'Pooja Deshmukh','Cashier',205),(310,'Ajay Salunke','Security',204),(311,'Ramesh Bhosale','IT Officer',201),(312,'Snehal Patil','Assistant Manager',202),(313,'Amol Bhise','Manager',207),(314,'Rina Dandekar','Cashier',207),(315,'Jayesh Patil','Clerk',208),(316,'Divya Kadam','Manager',208),(317,'Sneha More','Loan Officer',209),(318,'Ankita Joshi','Assistant Manager',209),(319,'Nilesh Deshmukh','Clerk',210),(320,'Sagar Pawar','Security',210);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
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
