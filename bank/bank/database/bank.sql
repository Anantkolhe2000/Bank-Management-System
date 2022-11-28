-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: bank
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `acc_id` varchar(255) NOT NULL,
  `cust_id` varchar(255) NOT NULL,
  `acc_type` varchar(255) NOT NULL,
  `balance` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'A0001','CS001','Saving',5077),(2,'A0002','CS002','Saving',4900),(3,'A0003','CS004','Saving',1400),(4,'A0004','CS005','Saving',50600),(5,'A0005','CS006','Saving',3000),(6,'A0006','CS001','Saving',3000),(7,'A0007','CS007','Saving',8800),(8,'A0008','A0007','Saving',21),(9,'A0009','CS007','Current',100000),(10,'A0010','100','Saving',211212),(11,'A0011','CS008','Saving',10200),(12,'A0012','CS0012','Saving',50000);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_details`
--

DROP TABLE IF EXISTS `book_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_details` (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `book_name` varchar(45) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_details`
--

LOCK TABLES `book_details` WRITE;
/*!40000 ALTER TABLE `book_details` DISABLE KEYS */;
INSERT INTO `book_details` VALUES (1,'C','Dennis ritchie',70),(2,'C++','Bjarne Stroustrup',60);
/*!40000 ALTER TABLE `book_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch` (
  `id` int NOT NULL AUTO_INCREMENT,
  `branch` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES (1,'badulla'),(2,'colombo'),(3,'chennai');
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cust_id` varchar(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `branch` int NOT NULL,
  `phone` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (2,'CS002','sathis','thevaraj','colombo','colombo',2,24234234),(3,'CS003','dsfd','dsfsd','sdfsd','sdsad',1,344234),(4,'CS004','devakumar','vkumar','main road','chennai',2,775487240),(5,'CS005','niranjan','kamal','kamal veedu','colo',2,2334234),(6,'CS006','john','jk','main street','india',3,9884433),(11,'CS007','John','Peter','70b main street','Chennai',3,9421112);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deposit`
--

DROP TABLE IF EXISTS `deposit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deposit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `acc_id` varchar(255) NOT NULL,
  `cust_id` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `balance` int NOT NULL,
  `deposit` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposit`
--

LOCK TABLES `deposit` WRITE;
/*!40000 ALTER TABLE `deposit` DISABLE KEYS */;
INSERT INTO `deposit` VALUES (1,'A0001','CS001','2019/02/05',2977,1000),(2,'A0001','CS001','2019/02/05',-923,1000),(3,'A0001','CS001','2019/02/05',77,1000),(4,'A0001','CS001','2019/02/05',577,1000),(5,'A0003','CS004','2019/02/05',2000,4000),(6,'A0004','CS005','2019/02/06',3000,2000),(7,'A0005','CS006','2019/02/06',5000,3000),(8,'A0005','CS006','2019/07/02',3000,1000),(9,'A0001','CS001','2019/07/30',2077,1000),(10,'A0002','CS002','2020/06/17',12900,1000),(11,'A0007','CS007','2020/06/17',8000,3000),(12,'A0002','CS002','2022/11/10',-5100,10000),(13,'A0004','CS005','2022/11/11',600,50000),(14,'A0007','CS007','2022/11/16',9000,1000);
/*!40000 ALTER TABLE `deposit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_book_details`
--

DROP TABLE IF EXISTS `issue_book_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issue_book_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `book_id` int DEFAULT NULL,
  `book_name` varchar(45) DEFAULT NULL,
  `student_name` varchar(45) DEFAULT NULL,
  `student_id` int DEFAULT NULL,
  `issue_date` varchar(45) DEFAULT NULL,
  `due_date` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_book_details`
--

LOCK TABLES `issue_book_details` WRITE;
/*!40000 ALTER TABLE `issue_book_details` DISABLE KEYS */;
INSERT INTO `issue_book_details` VALUES (2,2,'Python','Adib',1,'2022-07-04','2022-07-04','returned'),(4,1,'Java','Imam',3,'2022-07-05','2022-07-05','returned'),(5,1,'C','Adib',1,'2022-07-06','2022-07-06','returned'),(6,2,'C+','Arif',2,'2022-07-17','2022-07-17','returned'),(7,1,'C','Adib',1,'2022-07-05','2022-07-05','returned'),(8,1,'C','Adib',1,'2022-07-05','2022-07-05','returned'),(9,1,'C','Arif',2,'2022-07-05','2022-07-05','returned');
/*!40000 ALTER TABLE `issue_book_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_details`
--

DROP TABLE IF EXISTS `student_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_details` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `course` varchar(10) DEFAULT NULL,
  `branch` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_details`
--

LOCK TABLES `student_details` WRITE;
/*!40000 ALTER TABLE `student_details` DISABLE KEYS */;
INSERT INTO `student_details` VALUES (1,'Adib','B.Sc','CSE'),(2,'Arif','B.Sc','CCE'),(3,'Imam Hossen','B.Sc','EEE'),(4,'Md Masud Shakil','B.Sc','CE');
/*!40000 ALTER TABLE `student_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfer`
--

DROP TABLE IF EXISTS `transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transfer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `f_account` varchar(255) NOT NULL,
  `to_account` varchar(255) NOT NULL,
  `amount` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfer`
--

LOCK TABLES `transfer` WRITE;
/*!40000 ALTER TABLE `transfer` DISABLE KEYS */;
INSERT INTO `transfer` VALUES (2,'A0001','A0002',500),(5,'A0001','A0002',500),(6,'A0001','A0002',400),(7,'A0001','A0002',1000),(8,'A0003','A0002',2000),(9,'A0004','A0003',400),(10,'A0005','A0004',1000),(11,'A0002','A0001',1000),(12,'A0002','A0001',1000),(13,'A0007','A0006',1000),(14,'A0003','A0002',1000),(15,'A0003','A0001',1000),(16,'A0007','A004',1200);
/*!40000 ALTER TABLE `transfer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'kobi','123'),(2,'ram','321'),(3,'John','John'),(4,'Anant','Pass123@'),(5,'vijay','vijay'),(6,'rohit','Pass123@');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (11,'admin','admin','example@gmail.com','0123456'),(13,'adibahbab','1357','adibalvi475@gmail.com','0122323233');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdraw`
--

DROP TABLE IF EXISTS `withdraw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `withdraw` (
  `id` int NOT NULL AUTO_INCREMENT,
  `acc_id` varchar(255) NOT NULL,
  `cust_id` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `balance` int NOT NULL,
  `withdraw` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdraw`
--

LOCK TABLES `withdraw` WRITE;
/*!40000 ALTER TABLE `withdraw` DISABLE KEYS */;
INSERT INTO `withdraw` VALUES (1,'A0001','CS001','2019/02/04',5000,4000),(2,'A0001','CS001','2019/02/04',5000,4000),(3,'A0001','CS001','2019/02/04',5000,4000),(4,'A0001','CS001','2019/02/04',5000,4000),(5,'A0001','CS001','2019/02/04',5000,233),(6,'A0001','CS001','2019/02/04',5000,4000),(7,'A0001','CS001','2019/02/04',1000,100),(8,'A0001','CS001','2019/02/04',1000,400),(9,'A0001','CS001','2019/02/04',1000,200),(10,'A0001','CS001','2019/02/04',1000,200),(11,'A0001','CS001','2019/02/04',1000,233),(12,'A0001','CS001','2019/02/04',1000,233),(13,'A0001','CS001','2019/02/04',1000,2),(14,'A0001','CS001','2019/02/04',1000,223),(15,'A0001','CS001','2019/02/04',977,233),(16,'A0001','CS001','2019/02/04',977,233),(17,'A0001','CS001','2019/02/04',977,1000),(18,'A0001','CS001','2019/02/04',1977,1000),(19,'A0002','CS002','2019/02/05',13900,1000),(20,'A0001','CS001','2019/02/05',1077,500),(21,'A0003','CS004','2019/02/05',5000,3000),(22,'A0004','CS005','2019/02/06',4000,1000),(23,'A0005','CS006','2019/02/06',8000,2000),(24,'A0001','CS001','2019/02/10',1577,500),(25,'A0005','CS006','2019/07/02',5000,2000),(26,'A0007','CS007','2020/06/17',10000,2000),(27,'A0002','CS002','2022/11/10',13900,10000),(28,'A0002','CS002','2022/11/10',3900,10000),(29,'A0004','CS005','2022/11/10',5600,5000),(30,'A0003','CS004','2022/11/11',3400,1000),(31,'A0005','CS006','2022/11/11',4000,1000),(32,'A0007','CS007','2022/11/16',10000,1000);
/*!40000 ALTER TABLE `withdraw` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-19 11:57:45
