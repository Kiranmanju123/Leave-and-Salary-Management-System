-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: salary
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `branch` (
  `branch_name` varchar(40) DEFAULT NULL,
  `HOD NAME` varchar(45) DEFAULT NULL,
  `HOD_START_DATE` varchar(45) DEFAULT NULL,
  `BRANCH_ID` int(11) NOT NULL,
  PRIMARY KEY (`BRANCH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES ('INFORMATION SCIENCE','Yashodha ','2010-08-30',1),('COMPUTER SCIENCE','Kavitha','2010-08-17',2),('CIVIL','RAMAGOWDA','1998-09-17',3),('MECHANICAL','ABC','2018-09-17',4),('ELECTRONICS','XYZ','2000-09-17',5);
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employee` (
  `EMP_ID` int(11) NOT NULL,
  `EMP_FNAME` varchar(45) DEFAULT NULL,
  `EMP_LNAME` varchar(45) DEFAULT NULL,
  `BRANCH_NAME` varchar(45) DEFAULT NULL,
  `DESIGNATION` varchar(45) DEFAULT NULL,
  `BIRTH_DATE` date DEFAULT NULL,
  `GENDER` varchar(45) DEFAULT NULL,
  `SALARY` int(11) DEFAULT NULL,
  `EMP_START_DATE` date DEFAULT NULL,
  `EXPERIENCE` int(11) DEFAULT NULL,
  `BRANCH_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`EMP_ID`),
  KEY `BRANCH_ID` (`BRANCH_ID`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`BRANCH_ID`) REFERENCES `branch` (`branch_id`) ON DELETE SET NULL,
  CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`BRANCH_ID`) REFERENCES `branch` (`branch_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'SALAMATH','SALAMATH','IS','ASST','1998-08-30','M',60000,'1998-04-19',20,1),(2,'YASHPAL','YASHPAL','IS','ASST','1998-05-14','M',52000,'1987-04-14',20,1),(3,'NAGARAJU','NAGARAJU','CS','ASST','1998-05-14','M',52000,'1987-04-14',20,2),(4,'ABC','SDB','SDHD','SHDK','2017-09-17','F',3000,'2017-09-17',12,1);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hod`
--

DROP TABLE IF EXISTS `hod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hod` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hod`
--

LOCK TABLES `hod` WRITE;
/*!40000 ALTER TABLE `hod` DISABLE KEYS */;
INSERT INTO `hod` VALUES ('hod','bce123');
/*!40000 ALTER TABLE `hod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `login` (
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('bce','bce123');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_leave`
--

DROP TABLE IF EXISTS `staff_leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `staff_leave` (
  `Emp_id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `Designation` varchar(45) DEFAULT NULL,
  `Department` varchar(45) DEFAULT NULL,
  `type_of_leave` varchar(45) DEFAULT NULL,
  `no_of_days` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `reason` varchar(45) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `hod_status` varchar(45) DEFAULT NULL,
  `principal_status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Emp_id`),
  KEY `branch_id_idx` (`branch_id`),
  CONSTRAINT `branch_id` FOREIGN KEY (`branch_id`) REFERENCES `employee` (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_leave`
--

LOCK TABLES `staff_leave` WRITE;
/*!40000 ALTER TABLE `staff_leave` DISABLE KEYS */;
INSERT INTO `staff_leave` VALUES (1,'kiran','asst','cs','cl',3,'2018-07-04','2018-07-09','asc',1,'ACCEPT','DECLINE');
/*!40000 ALTER TABLE `staff_leave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_login`
--

DROP TABLE IF EXISTS `staff_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `staff_login` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_login`
--

LOCK TABLES `staff_login` WRITE;
/*!40000 ALTER TABLE `staff_login` DISABLE KEYS */;
INSERT INTO `staff_login` VALUES ('staff','bce123');
/*!40000 ALTER TABLE `staff_login` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-29 12:18:16
