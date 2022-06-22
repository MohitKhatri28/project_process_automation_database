-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: project_process_automation
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `area_description`
--

DROP TABLE IF EXISTS `area_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `area_description` (
  `desc_id` int NOT NULL AUTO_INCREMENT,
  `group_id` int DEFAULT NULL,
  `area_1_desc` varchar(1000) DEFAULT NULL,
  `area_2_desc` varchar(1000) DEFAULT NULL,
  `area_3_desc` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`desc_id`),
  UNIQUE KEY `desc_id_UNIQUE` (`desc_id`),
  KEY `group_id` (`group_id`),
  CONSTRAINT `area_description_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `student_group` (`group_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area_description`
--

LOCK TABLES `area_description` WRITE;
/*!40000 ALTER TABLE `area_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `area_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `areas`
--

DROP TABLE IF EXISTS `areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `areas` (
  `area_id` int NOT NULL AUTO_INCREMENT,
  `area` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`area_id`),
  UNIQUE KEY `area_id_UNIQUE` (`area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areas`
--

LOCK TABLES `areas` WRITE;
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
INSERT INTO `areas` VALUES (1,'AI/ML'),(2,'DATA'),(3,'Comp. Arch'),(4,'Comp. Networks'),(5,'Web & Appl. Design'),(6,'S/W Engg.'),(7,'Comp. Vision'),(8,'Security'),(9,'SYSTEMS');
/*!40000 ALTER TABLE `areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `login_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `pswd` varchar(20) NOT NULL,
  PRIMARY KEY (`login_id`),
  UNIQUE KEY `login_id_UNIQUE` (`login_id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'anuradha_p','sgsits#1'),(2,'mamta_g','sgsits@1'),(3,'priyanka_b','sgsits#2'),(4,'shweta_d','sgsits@2'),(5,'vandan_t','sgsits#3'),(6,'mayank_r','sgsits@3'),(7,'surendra_g','sgsits#4'),(8,'akash_n','sgsits@4'),(9,'sonika_s','sgsits#5'),(10,'urjita_t','sgsits@5'),(11,'teena_d','sgsits#6'),(12,'priyanka_k','sgsits@6'),(13,'neha_m','sgsits#7'),(14,'himani_m','sgsits@7'),(15,'da_mehta','sgsits#8'),(16,'soma_s','sgsits@8'),(17,'rakshita_p','sgsits#9'),(18,'jyoti_t','sgsits@9'),(19,'rajesh_d','sgsits#10');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_id_UNIQUE` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'leader'),(2,'member'),(3,'professor'),(4,'assistant professor'),(5,'associate professor');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specialization`
--

DROP TABLE IF EXISTS `specialization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specialization` (
  `spec_id` int NOT NULL,
  `specialization` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`spec_id`),
  UNIQUE KEY `spec_id_UNIQUE` (`spec_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialization`
--

LOCK TABLES `specialization` WRITE;
/*!40000 ALTER TABLE `specialization` DISABLE KEYS */;
INSERT INTO `specialization` VALUES (101,'AI/ML'),(102,'DATA'),(103,'Comp. Arch'),(104,'Comp. Networks'),(105,'Web & Appl. Design'),(106,'S/W Engg.'),(107,'Comp. Vision'),(108,'Security'),(109,'SYSTEMS');
/*!40000 ALTER TABLE `specialization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(20) NOT NULL,
  `enroll_num` varchar(15) NOT NULL,
  `role_id` int DEFAULT NULL,
  `group_id` int DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `student_id_UNIQUE` (`student_id`),
  UNIQUE KEY `enroll_num_UNIQUE` (`enroll_num`),
  KEY `role_id` (`role_id`),
  KEY `group_id` (`group_id`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON DELETE SET NULL,
  CONSTRAINT `student_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `student_group` (`group_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_group`
--

DROP TABLE IF EXISTS `student_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_group` (
  `group_id` int NOT NULL AUTO_INCREMENT,
  `login_id` int DEFAULT NULL,
  `area_pref_1` int DEFAULT NULL,
  `area_pref_2` int DEFAULT NULL,
  `area_pref_3` int DEFAULT NULL,
  `guide_pref_1` int DEFAULT NULL,
  `guide_pref_2` int DEFAULT NULL,
  `guide_pref_3` int DEFAULT NULL,
  `avg_cgpa` decimal(4,2) DEFAULT NULL,
  `guide_alloted` int DEFAULT NULL,
  `guide_comment` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`group_id`),
  UNIQUE KEY `group_id_UNIQUE` (`group_id`),
  KEY `login_id` (`login_id`),
  KEY `area_pref_1` (`area_pref_1`),
  KEY `area_pref_2` (`area_pref_2`),
  KEY `area_pref_3` (`area_pref_3`),
  KEY `guide_pref_1` (`guide_pref_1`),
  KEY `guide_pref_2` (`guide_pref_2`),
  KEY `guide_pref_3` (`guide_pref_3`),
  KEY `guide_alloted` (`guide_alloted`),
  CONSTRAINT `student_group_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `login` (`login_id`) ON DELETE SET NULL,
  CONSTRAINT `student_group_ibfk_2` FOREIGN KEY (`area_pref_1`) REFERENCES `areas` (`area_id`) ON DELETE SET NULL,
  CONSTRAINT `student_group_ibfk_3` FOREIGN KEY (`area_pref_2`) REFERENCES `areas` (`area_id`) ON DELETE SET NULL,
  CONSTRAINT `student_group_ibfk_4` FOREIGN KEY (`area_pref_3`) REFERENCES `areas` (`area_id`) ON DELETE SET NULL,
  CONSTRAINT `student_group_ibfk_5` FOREIGN KEY (`guide_pref_1`) REFERENCES `teacher` (`teacher_id`) ON DELETE SET NULL,
  CONSTRAINT `student_group_ibfk_6` FOREIGN KEY (`guide_pref_2`) REFERENCES `teacher` (`teacher_id`) ON DELETE SET NULL,
  CONSTRAINT `student_group_ibfk_7` FOREIGN KEY (`guide_pref_3`) REFERENCES `teacher` (`teacher_id`) ON DELETE SET NULL,
  CONSTRAINT `student_group_ibfk_8` FOREIGN KEY (`guide_alloted`) REFERENCES `teacher` (`teacher_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_group`
--

LOCK TABLES `student_group` WRITE;
/*!40000 ALTER TABLE `student_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `teacher_id` int NOT NULL,
  `full_name` varchar(20) DEFAULT NULL,
  `login_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `group_id_1` int DEFAULT NULL,
  `group_id_2` int DEFAULT NULL,
  `group_id_3` int DEFAULT NULL,
  PRIMARY KEY (`teacher_id`),
  UNIQUE KEY `teacher_id_UNIQUE` (`teacher_id`),
  KEY `login_id` (`login_id`),
  KEY `role_id` (`role_id`),
  KEY `group_id_1` (`group_id_1`),
  KEY `group_id_2` (`group_id_2`),
  KEY `group_id_3` (`group_id_3`),
  CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `login` (`login_id`) ON DELETE SET NULL,
  CONSTRAINT `teacher_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON DELETE SET NULL,
  CONSTRAINT `teacher_ibfk_3` FOREIGN KEY (`group_id_1`) REFERENCES `student_group` (`group_id`) ON DELETE SET NULL,
  CONSTRAINT `teacher_ibfk_4` FOREIGN KEY (`group_id_2`) REFERENCES `student_group` (`group_id`) ON DELETE SET NULL,
  CONSTRAINT `teacher_ibfk_5` FOREIGN KEY (`group_id_3`) REFERENCES `student_group` (`group_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,'Anuradha Purohit',1,5,NULL,NULL,NULL),(2,'Mamta Gupta',2,4,NULL,NULL,NULL),(3,'Priyanka Bamne',3,4,NULL,NULL,NULL),(4,'Shweta Dubey ',4,4,NULL,NULL,NULL),(5,'Dr. Vandan Tewari',5,5,NULL,NULL,NULL),(6,'Mayank Ramnani',6,4,NULL,NULL,NULL),(7,'Surendra Gupta',7,5,NULL,NULL,NULL),(8,'Akash nagwanshi',8,4,NULL,NULL,NULL),(9,'SONIKA SHRIVASTAVA ',9,4,NULL,NULL,NULL),(10,'Urjita Thakar ',10,3,NULL,NULL,NULL),(11,'Teena Dubey ',11,4,NULL,NULL,NULL),(12,'Priyanka Kokate',12,4,NULL,NULL,NULL),(13,'Neha Mehra',13,4,NULL,NULL,NULL),(14,'Himani Mishra',14,4,NULL,NULL,NULL),(15,'D A Mehta',15,3,NULL,NULL,NULL),(16,'Dr. Soma Saha',16,4,NULL,NULL,NULL),(17,'RAKSHITA PANDYA',17,4,NULL,NULL,NULL),(18,'Jyoti Tiwari',18,4,NULL,NULL,NULL),(19,'Rajesh Dhakad',19,5,NULL,NULL,NULL);
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_spec`
--

DROP TABLE IF EXISTS `teacher_spec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher_spec` (
  `teacher_id` int NOT NULL,
  `spec_id` int NOT NULL,
  PRIMARY KEY (`spec_id`,`teacher_id`),
  KEY `teacher_id` (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_spec`
--

LOCK TABLES `teacher_spec` WRITE;
/*!40000 ALTER TABLE `teacher_spec` DISABLE KEYS */;
INSERT INTO `teacher_spec` VALUES (1,101),(1,106),(2,106),(2,107),(2,109),(3,103),(3,104),(4,101),(4,104),(4,108),(5,101),(5,102),(6,101),(6,102),(6,106),(7,101),(7,105),(7,107),(8,101),(8,103),(8,109),(9,101),(9,103),(9,104),(9,108),(10,101),(10,103),(10,105),(10,108),(11,101),(11,106),(12,101),(12,104),(12,108),(13,101),(13,102),(14,101),(14,107),(15,104),(15,109),(16,101),(16,102),(16,108),(17,101),(17,104),(17,108),(18,101),(18,106),(19,104);
/*!40000 ALTER TABLE `teacher_spec` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-22 15:33:55
