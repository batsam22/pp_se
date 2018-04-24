-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: pp
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `2015CSE049`
--

DROP TABLE IF EXISTS `2015CSE049`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `2015CSE049` (
  `pref_num` int(3) NOT NULL AUTO_INCREMENT,
  `comp_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`pref_num`),
  KEY `comp_id` (`comp_id`),
  CONSTRAINT `2015CSE049_ibfk_1` FOREIGN KEY (`comp_id`) REFERENCES `company_details` (`comp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `2015CSE049`
--

LOCK TABLES `2015CSE049` WRITE;
/*!40000 ALTER TABLE `2015CSE049` DISABLE KEYS */;
INSERT INTO `2015CSE049` VALUES (1,'COM1'),(2,'COM2'),(3,'COM3');
/*!40000 ALTER TABLE `2015CSE049` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `2015CSE120`
--

DROP TABLE IF EXISTS `2015CSE120`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `2015CSE120` (
  `pref_num` int(3) NOT NULL AUTO_INCREMENT,
  `comp_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`pref_num`),
  KEY `comp_id` (`comp_id`),
  CONSTRAINT `2015CSE120_ibfk_1` FOREIGN KEY (`comp_id`) REFERENCES `company_details` (`comp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `2015CSE120`
--

LOCK TABLES `2015CSE120` WRITE;
/*!40000 ALTER TABLE `2015CSE120` DISABLE KEYS */;
INSERT INTO `2015CSE120` VALUES (1,'COM1'),(2,'COM2'),(3,'COM3');
/*!40000 ALTER TABLE `2015CSE120` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `2015CSE145`
--

DROP TABLE IF EXISTS `2015CSE145`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `2015CSE145` (
  `pref_num` int(3) NOT NULL AUTO_INCREMENT,
  `comp_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`pref_num`),
  KEY `comp_id` (`comp_id`),
  CONSTRAINT `2015CSE145_ibfk_1` FOREIGN KEY (`comp_id`) REFERENCES `company_details` (`comp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `2015CSE145`
--

LOCK TABLES `2015CSE145` WRITE;
/*!40000 ALTER TABLE `2015CSE145` DISABLE KEYS */;
INSERT INTO `2015CSE145` VALUES (3,'COM1'),(2,'COM2'),(1,'COM3');
/*!40000 ALTER TABLE `2015CSE145` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `2015CSE160`
--

DROP TABLE IF EXISTS `2015CSE160`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `2015CSE160` (
  `pref_num` int(3) NOT NULL AUTO_INCREMENT,
  `comp_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`pref_num`),
  KEY `comp_id` (`comp_id`),
  CONSTRAINT `2015CSE160_ibfk_1` FOREIGN KEY (`comp_id`) REFERENCES `company_details` (`comp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `2015CSE160`
--

LOCK TABLES `2015CSE160` WRITE;
/*!40000 ALTER TABLE `2015CSE160` DISABLE KEYS */;
INSERT INTO `2015CSE160` VALUES (2,'COM1'),(1,'COM2'),(3,'COM3');
/*!40000 ALTER TABLE `2015CSE160` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `allotment`
--

DROP TABLE IF EXISTS `allotment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `allotment` (
  `allot_num` int(11) NOT NULL AUTO_INCREMENT,
  `stud_id` varchar(12) DEFAULT NULL,
  `comp_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`allot_num`),
  KEY `stud_id` (`stud_id`),
  KEY `comp_id` (`comp_id`),
  CONSTRAINT `allotment_ibfk_1` FOREIGN KEY (`stud_id`) REFERENCES `eligibility_list` (`stud_id`),
  CONSTRAINT `allotment_ibfk_2` FOREIGN KEY (`comp_id`) REFERENCES `company_details` (`comp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allotment`
--

LOCK TABLES `allotment` WRITE;
/*!40000 ALTER TABLE `allotment` DISABLE KEYS */;
/*!40000 ALTER TABLE `allotment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `c_require`
--

DROP TABLE IF EXISTS `c_require`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `c_require` (
  `comp_id` varchar(10) DEFAULT NULL,
  `no_of_students` int(11) DEFAULT NULL,
  `branch` varchar(75) DEFAULT NULL,
  `gender` varchar(7) DEFAULT NULL,
  `cgpa` float DEFAULT NULL,
  KEY `comp_id` (`comp_id`),
  CONSTRAINT `c_require_ibfk_1` FOREIGN KEY (`comp_id`) REFERENCES `company_details` (`comp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `c_require`
--

LOCK TABLES `c_require` WRITE;
/*!40000 ALTER TABLE `c_require` DISABLE KEYS */;
INSERT INTO `c_require` VALUES ('COM1',3,NULL,'male',NULL),('COM2',1,NULL,NULL,NULL),('COM3',4,NULL,NULL,8);
/*!40000 ALTER TABLE `c_require` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_details`
--

DROP TABLE IF EXISTS `company_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_details` (
  `comp_id` varchar(10) NOT NULL,
  `comp_name` varchar(50) DEFAULT NULL,
  `comp_info` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`comp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_details`
--

LOCK TABLES `company_details` WRITE;
/*!40000 ALTER TABLE `company_details` DISABLE KEYS */;
INSERT INTO `company_details` VALUES ('COM1','company1','skdjghskdfjshdkfsldih'),('COM2','company2','skdjghskdfjshdkfsldih'),('COM3','company3','skdjghskdfjshdkfsldih');
/*!40000 ALTER TABLE `company_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eligibility_list`
--

DROP TABLE IF EXISTS `eligibility_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eligibility_list` (
  `stud_id` varchar(12) NOT NULL,
  `cgpa` float NOT NULL,
  `allot_num` int(11) DEFAULT NULL,
  `alloted` int(1) DEFAULT '0',
  PRIMARY KEY (`stud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eligibility_list`
--

LOCK TABLES `eligibility_list` WRITE;
/*!40000 ALTER TABLE `eligibility_list` DISABLE KEYS */;
INSERT INTO `eligibility_list` VALUES ('2015CSE049',8.2,NULL,0),('2015CSE120',7.55,NULL,0),('2015CSE145',8,NULL,0),('2015CSE160',9.1,NULL,0);
/*!40000 ALTER TABLE `eligibility_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_details`
--

DROP TABLE IF EXISTS `student_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_details` (
  `stud_id` varchar(12) DEFAULT NULL,
  `stud_address` varchar(100) DEFAULT NULL,
  `email_id` varchar(50) DEFAULT NULL,
  `mobile_num` varchar(12) DEFAULT NULL,
  `blood_group` varchar(3) DEFAULT NULL,
  `emergency_num` varchar(12) DEFAULT NULL,
  `emergency_person` varchar(50) DEFAULT NULL,
  `relation` varchar(20) DEFAULT NULL,
  `skills` varchar(300) DEFAULT NULL,
  `languages` varchar(300) DEFAULT NULL,
  `extra_details` varchar(100) DEFAULT NULL,
  `branch` varchar(75) DEFAULT NULL,
  `gender` varchar(7) DEFAULT NULL,
  UNIQUE KEY `stud_id` (`stud_id`),
  UNIQUE KEY `email_id` (`email_id`),
  CONSTRAINT `student_details_ibfk_1` FOREIGN KEY (`stud_id`) REFERENCES `eligibility_list` (`stud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_details`
--

LOCK TABLES `student_details` WRITE;
/*!40000 ALTER TABLE `student_details` DISABLE KEYS */;
INSERT INTO `student_details` VALUES ('2015CSE049','kjdsahkfdsfgkj','email1@sdkfl.com','1234567890','O+','1234567890','jgdfj','relation','coding, software engineering','hindi, english',NULL,'CSE','female'),('2015CSE120','kjdsahkfdsfgkj','email2@sdkfl.com','1234567890','O+','1234567890','jgdfj','relation','coding, software engineering','hindi, english',NULL,'CSE','male'),('2015CSE145','kjdsahkfdsfgkj','email3@sdkfl.com','1234567890','O+','1234567890','jgdfj','relation','coding, software engineering','hindi, english',NULL,'CSE','male'),('2015CSE160','kjdsahkfdsfgkj','email4@sdkfl.com','1234567890','O+','1234567890','jgdfj','relation','coding, software engineering','hindi, english',NULL,'CSE','female');
/*!40000 ALTER TABLE `student_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uni_require`
--

DROP TABLE IF EXISTS `uni_require`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uni_require` (
  `comp_id` varchar(10) DEFAULT NULL,
  `no_of_students` int(11) DEFAULT NULL,
  `branch` varchar(75) DEFAULT NULL,
  `gender` varchar(7) DEFAULT NULL,
  `cgpa` float DEFAULT NULL,
  KEY `comp_id` (`comp_id`),
  CONSTRAINT `uni_require_ibfk_1` FOREIGN KEY (`comp_id`) REFERENCES `company_details` (`comp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uni_require`
--

LOCK TABLES `uni_require` WRITE;
/*!40000 ALTER TABLE `uni_require` DISABLE KEYS */;
INSERT INTO `uni_require` VALUES ('COM1',3,NULL,'male',NULL),('COM2',1,NULL,NULL,NULL),('COM3',4,NULL,NULL,8);
/*!40000 ALTER TABLE `uni_require` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-24 23:20:28
