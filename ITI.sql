-- MySQL dump 10.13  Distrib 8.0.37, for Linux (x86_64)
--
-- Host: localhost    Database: ITI
-- ------------------------------------------------------
-- Server version	8.0.37-0ubuntu0.20.04.3

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
-- Table structure for table `backup_students`
--

DROP TABLE IF EXISTS `backup_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backup_students` (
  `firstname` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backup_students`
--

LOCK TABLES `backup_students` WRITE;
/*!40000 ALTER TABLE `backup_students` DISABLE KEYS */;
INSERT INTO `backup_students` VALUES ('doaa','Asyut','doaa@gmail.com','female','1995-01-05','makhlouf');
/*!40000 ALTER TABLE `backup_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deleted_students`
--

DROP TABLE IF EXISTS `deleted_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deleted_students` (
  `firstname` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deleted_students`
--

LOCK TABLES `deleted_students` WRITE;
/*!40000 ALTER TABLE `deleted_students` DISABLE KEYS */;
INSERT INTO `deleted_students` VALUES ('doaa','Asyut','doaa@gmail.com','female','1995-01-05','makhlouf');
/*!40000 ALTER TABLE `deleted_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `firstname` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('Ali','Asyut','ali@gmail.com','male','1996-02-05','mohamed'),('ali','Asyut','aliahmed@gmail.com','male','2002-12-30','ahmed'),('ali','Asyut','alihussein@gmail.com','male','2000-01-01','hussein'),('Aser','Asyut','aser@gmail.com','male','1998-03-08','yassin'),('Asmaa','Asyut','asmaa@gmail.com','female','1997-05-07','hamada'),('doaa','Asyut','doaa@gmail.com','female','1995-01-05','makhlouf'),('Maria','Asyut','maria@gmail.com','female','2001-06-04','hany'),('Mona','Asyut','mona@gmail.com','female','2000-02-28','abdelmohsen'),('Sandy','Asyut','sandy@gmail.com','female','2001-04-22','zakher');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_added_students` AFTER INSERT ON `student` FOR EACH ROW begin
 insert into backup_students(firstname, address, email, gender, birth_date, lastname)
 values (NEW.firstname, NEW.address, NEW.email, NEW.gender, NEW.birth_date, NEW.lastname);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_deleted_students` AFTER DELETE ON `student` FOR EACH ROW begin
 insert into deleted_students(firstname, address, email, gender, birth_date, lastname)
 values (OLD.firstname, OLD.address, OLD.email, OLD.gender, OLD.birth_date, OLD.lastname);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `student_phone`
--

DROP TABLE IF EXISTS `student_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_phone` (
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  PRIMARY KEY (`email`,`phone`),
  CONSTRAINT `email_FK` FOREIGN KEY (`email`) REFERENCES `student` (`email`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_phone`
--

LOCK TABLES `student_phone` WRITE;
/*!40000 ALTER TABLE `student_phone` DISABLE KEYS */;
INSERT INTO `student_phone` VALUES ('asmaa@gmail.com','789'),('maria@gmail.com','258'),('mona@gmail.com','147'),('sandy@gmail.com','456');
/*!40000 ALTER TABLE `student_phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_study_subject`
--

DROP TABLE IF EXISTS `student_study_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_study_subject` (
  `email` varchar(100) NOT NULL,
  `subjectname` varchar(100) NOT NULL,
  PRIMARY KEY (`email`,`subjectname`),
  KEY `sub_FK` (`subjectname`),
  CONSTRAINT `em_FK` FOREIGN KEY (`email`) REFERENCES `student` (`email`) ON DELETE CASCADE,
  CONSTRAINT `sub_FK` FOREIGN KEY (`subjectname`) REFERENCES `subjects` (`subjectname`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_study_subject`
--

LOCK TABLES `student_study_subject` WRITE;
/*!40000 ALTER TABLE `student_study_subject` DISABLE KEYS */;
INSERT INTO `student_study_subject` VALUES ('sandy@gmail.com','database'),('asmaa@gmail.com','javascript'),('sandy@gmail.com','javaScript'),('aser@gmail.com','Linux administration 1'),('mona@gmail.com','PHP'),('maria@gmail.com','Version Control');
/*!40000 ALTER TABLE `student_study_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_takeexam_subject`
--

DROP TABLE IF EXISTS `student_takeexam_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_takeexam_subject` (
  `email` varchar(100) NOT NULL,
  `subjectname` varchar(100) NOT NULL,
  `score` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`email`,`subjectname`),
  KEY `s_FK` (`subjectname`),
  CONSTRAINT `e_FK` FOREIGN KEY (`email`) REFERENCES `student` (`email`) ON DELETE CASCADE,
  CONSTRAINT `s_FK` FOREIGN KEY (`subjectname`) REFERENCES `subjects` (`subjectname`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_takeexam_subject`
--

LOCK TABLES `student_takeexam_subject` WRITE;
/*!40000 ALTER TABLE `student_takeexam_subject` DISABLE KEYS */;
INSERT INTO `student_takeexam_subject` VALUES ('ali@gmail.com','database','48','2024-06-01'),('aser@gmail.com','Linux administration 1','45','2024-07-23'),('asmaa@gmail.com','javascript','100','2024-07-01'),('maria@gmail.com','Version Control','97.5','2024-07-15'),('mona@gmail.com','PHP','150','2024-09-05'),('sandy@gmail.com','database','100','2024-06-01'),('sandy@gmail.com','javaScript','98','2024-07-01');
/*!40000 ALTER TABLE `student_takeexam_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `subjectname` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `maxscore` smallint DEFAULT NULL,
  PRIMARY KEY (`subjectname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES ('database','study RDBMS using mySQL',100),('javaScript','study frontend and its dynamic behaviour with user',100),('linux administration 1','study Linux commands and features using Ubntu destribution',50),('PHP','study backend principles and features using PHP language',150),('Version Control','study version control principles and usage using git and GitHub',50);
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `track`
--

DROP TABLE IF EXISTS `track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `track` (
  `trackname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`trackname`,`email`),
  KEY `stu_FK` (`email`),
  CONSTRAINT `stu_FK` FOREIGN KEY (`email`) REFERENCES `student` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `track`
--

LOCK TABLES `track` WRITE;
/*!40000 ALTER TABLE `track` DISABLE KEYS */;
INSERT INTO `track` VALUES ('php 3 month','asmaa@gmail.com'),('php 9 month','doaa@gmail.com');
/*!40000 ALTER TABLE `track` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `track_subjects`
--

DROP TABLE IF EXISTS `track_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `track_subjects` (
  `track_id` varchar(100) NOT NULL,
  `subjectname` varchar(100) NOT NULL,
  PRIMARY KEY (`track_id`,`subjectname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `track_subjects`
--

LOCK TABLES `track_subjects` WRITE;
/*!40000 ALTER TABLE `track_subjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `track_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vstudent`
--

DROP TABLE IF EXISTS `vstudent`;
