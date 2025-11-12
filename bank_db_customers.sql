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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `CUSTOMER_ID` int NOT NULL,
  `CUSTOMERS_NAMEl` varchar(45) DEFAULT NULL,
  `CUSTOMERS_ADDRESS` varchar(45) DEFAULT NULL,
  `CUSTOMER_PH_NO` varchar(15) DEFAULT NULL,
  `CUSTOMER_EMAIL` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Vishal Khade','Pune','9876543210','vishal@gmail.com'),(2,'Rohan Patil','Mumbai','9823456789','rohan.p@gmail.com'),(3,'Sneha Deshmukh','Nagpur','9898989898','sneha.d@gmail.com'),(4,'Amit Joshi','Nashik','9812345678','amit.j@gmail.com'),(5,'Priya Kulkarni','Aurangabad','9900112233','priya.k@gmail.com'),(6,'Neha Shinde','Pune','9845123674','neha.s@gmail.com'),(7,'Rahul Pawar','Mumbai','9797979797','rahul.p@gmail.com'),(8,'Komal Jagtap','Solapur','9811223344','komal.j@gmail.com'),(9,'Tejas Mane','Kolhapur','9723456123','tejas.m@gmail.com'),(10,'Saurabh Desai','Satara','9988776655','saurabh.d@gmail.com'),(11,'Kavita Naik','Pune','9812312312','kavita.n@gmail.com'),(12,'Manoj Patankar','Mumbai','9823456123','manoj.p@gmail.com'),(13,'Sheetal Gokhale','Nagpur','9874561230','sheetal.g@gmail.com'),(14,'Aniket Jadhav','Pune','9723123456','aniket.j@gmail.com'),(15,'Tanvi Pawar','Nashik','9911223344','tanvi.p@gmail.com'),(16,'Akshay Rane','Thane','9898123456','akshay.r@gmail.com'),(17,'Pooja Patil','Pune','9821987654','pooja.p@gmail.com'),(18,'Sanjay More','Mumbai','9811002233','sanjay.m@gmail.com'),(19,'Kiran Sawant','Nagpur','9877008899','kiran.s@gmail.com'),(20,'Swati Bhagat','Kolhapur','9723456780','swati.b@gmail.com'),(21,'Omkar Ghadge','Pune','9865123499','omkar.g@gmail.com'),(22,'Snehal Chavan','Mumbai','9821569870','snehal.c@gmail.com'),(23,'Ganesh Patil','Nashik','9876543109','ganesh.p@gmail.com'),(24,'Ashwini Jadhav','Aurangabad','9711223344','ashwini.j@gmail.com'),(25,'Nikhil Deshmukh','Solapur','9856453210','nikhil.d@gmail.com'),(26,'Sayali Pawar','Pune','9898007654','sayali.p@gmail.com'),(27,'Vikas Kulkarni','Mumbai','9811876543','vikas.k@gmail.com'),(28,'Rutuja Gaikwad','Nashik','9800111222','rutuja.g@gmail.com'),(29,'Yash Patankar','Nagpur','9876541122','yash.p@gmail.com'),(30,'Prachi Shinde','Kolhapur','9812345500','prachi.s@gmail.com');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
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
