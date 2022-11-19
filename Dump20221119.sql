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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area_description`
--

LOCK TABLES `area_description` WRITE;
/*!40000 ALTER TABLE `area_description` DISABLE KEYS */;
INSERT INTO `area_description` VALUES (1,8,'fdsafad','fdsaf','fadsf'),(2,9,'fdsaf','fefd','fsdw'),(3,10,'fdsaf','fdsafrdr','redfd');
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
  `who_id` int DEFAULT NULL,
  PRIMARY KEY (`login_id`),
  UNIQUE KEY `login_id_UNIQUE` (`login_id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'anuradha_p','sgsits#1',2),(2,'mamta_g','sgsits@1',2),(3,'priyanka_b','sgsits#2',2),(5,'vandan_t','sgsits#3',3),(7,'surendra_g','sgsits#4',2),(9,'sonika_s','sgsits#5',2),(10,'urjita_t','sgsits@5',2),(11,'teena_d','sgsits#6',2),(12,'priyanka_k','sgsits@6',2),(13,'neha_m','sgsits#7',2),(14,'himani_m','sgsits@7',2),(15,'da_mehta','sgsits#8',2),(19,'rajesh_d','sgsits#10',2),(31,'mohit','mohit',1),(32,'g1','g1',1),(33,'g2','g2',1),(34,'g3','g3',1),(35,'g4','h4',1),(36,'g5','g5',1),(37,'g6','g6',1),(38,'g7','g7',1),(39,'g8','g8',1),(40,'g9','g9',1),(41,'g10','g10',1),(42,'g11','g11',1),(43,'g12','g12',1),(44,'g13','g13',1),(45,'g14','g14',1),(46,'g15','g15',1),(47,'g16','g16',1),(48,'g17','g17',1),(49,'g18','g18',1),(50,'g19','g19',1),(51,'g20','g20',1),(52,'g21','g21',1),(53,'g22','g22',1),(54,'g23','g23',1),(56,'g25','g25',1),(57,'g26','g26',1),(59,'g30','g30',1);
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
  `phone_num` varchar(20) DEFAULT NULL,
  `email_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `student_id_UNIQUE` (`student_id`),
  KEY `role_id` (`role_id`),
  KEY `group_id` (`group_id`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON DELETE SET NULL,
  CONSTRAINT `student_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `student_group` (`group_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (44,'fdaf','fds',1,8,NULL,NULL),(45,'fs','fa',2,8,NULL,NULL),(46,'fw','fe',2,8,NULL,NULL),(47,'fq','ft',2,8,NULL,NULL),(48,'fd','fc',2,8,NULL,NULL),(49,'fsaf','fsf',1,9,NULL,NULL),(50,'fdsf','sf',2,9,NULL,NULL),(51,'fafa','fa',2,9,NULL,NULL),(52,'fsf','sfs',2,9,NULL,NULL),(53,'fsfs','fs',2,9,NULL,NULL),(54,'fsdf','dfsaf',1,10,NULL,NULL),(55,'af','af',2,10,NULL,NULL),(56,'faf','faaf',2,10,NULL,NULL),(57,'faf','fa',2,10,NULL,NULL),(58,'fafa','af',2,10,NULL,NULL),(59,'fefs','dfs',1,11,NULL,NULL),(60,'ffa','fa',2,11,NULL,NULL),(61,'fwe','wer',2,11,NULL,NULL),(62,'tdt','tr',2,11,NULL,NULL),(63,'twtw','tw',2,11,NULL,NULL),(64,'fesfd','faf',1,12,NULL,NULL),(65,'fse','wf',2,12,NULL,NULL),(66,'rewr','fw',2,12,NULL,NULL),(67,'fwfw','fefe',2,12,NULL,NULL),(68,'fefr','fwfw',2,12,NULL,NULL),(69,'fefes','dfw',1,13,NULL,NULL),(70,'fwf','fwewf',2,13,NULL,NULL),(71,'wfwfw','fwfw',2,13,NULL,NULL),(72,'fwfw','fwffw',2,13,NULL,NULL),(73,'efwf','fwfw',2,13,NULL,NULL),(74,'fdsee','fw',1,14,NULL,NULL),(75,'rwr','rw',2,14,NULL,NULL),(76,'rwer','rwr',2,14,NULL,NULL),(77,'rer','wrw',2,14,NULL,NULL),(78,'fef','sfd',2,14,NULL,NULL),(79,'dwad','fdff',1,15,NULL,NULL),(80,'trt','juj',2,15,NULL,NULL),(81,'juku','ki',2,15,NULL,NULL),(82,'k','ku',2,15,NULL,NULL),(83,'kuku','kuk',2,15,NULL,NULL),(84,'fewfe','trt',1,16,NULL,NULL),(85,'ryty','tuy',2,16,NULL,NULL),(86,'uyu','uij',2,16,NULL,NULL),(87,'jhgh','fh',2,16,NULL,NULL),(88,'hfhf','h',2,16,NULL,NULL),(89,'fef','dsfwfw',1,17,NULL,NULL),(90,'fwfw','fwf',2,17,NULL,NULL),(91,'wfwf','fwfw',2,17,NULL,NULL),(92,'fwwwf','fwf',2,17,NULL,NULL),(93,'fefe','fdf',2,17,NULL,NULL),(94,'fed','dwfs',1,18,NULL,NULL),(95,'cvsv','xcvxvx',2,18,NULL,NULL),(96,'vxv','xvd',2,18,NULL,NULL),(97,'zczcx','dasa',2,18,NULL,NULL),(98,'cac','ac',2,18,NULL,NULL),(99,'fed','cs',1,19,NULL,NULL),(100,'vcv','bvb',2,19,NULL,NULL),(101,'bv','ggge',2,19,NULL,NULL),(102,'grrge','df',2,19,NULL,NULL),(103,'sfdfw','fw',2,19,NULL,NULL),(104,'dfv','vsfs',1,20,NULL,NULL),(105,'fwef','wfwf',2,20,NULL,NULL),(106,'rere','tet',2,20,NULL,NULL),(107,'tt','ttd',2,20,NULL,NULL),(108,'fwf','dfw',2,20,NULL,NULL),(109,'fcs','efwfd',1,21,NULL,NULL),(110,'rewrw','ffw',2,21,NULL,NULL),(111,'rwr','rwrw',2,21,NULL,NULL),(112,'wrwr','wrw',2,21,NULL,NULL),(113,'rwrw','rw',2,21,NULL,NULL),(114,'fdfsew','fwrewr',1,22,NULL,NULL),(115,'rwr','rwf',2,22,NULL,NULL),(116,'wfsd','fwfw',2,22,NULL,NULL),(117,'rer','tet',2,22,NULL,NULL),(118,'fwf','wdf',2,22,NULL,NULL),(119,'dfdf','wfer',1,23,NULL,NULL),(120,'rwr','wrwr',2,23,NULL,NULL),(121,'fwf','dfwfw',2,23,NULL,NULL),(122,'fwf','gwg',2,23,NULL,NULL),(123,'gwge','eg',2,23,NULL,NULL),(124,'fwdf','c',1,24,NULL,NULL),(125,'ffg','rg',2,24,NULL,NULL),(126,'yty','uu',2,24,NULL,NULL),(127,'uyu','iyi',2,24,NULL,NULL),(128,'iujuj','h',2,24,NULL,NULL),(129,'dwfd','rdr',1,25,NULL,NULL),(130,'fwf','fdw',2,25,NULL,NULL),(131,'fwe','er',2,25,NULL,NULL),(132,'twet','tf',2,25,NULL,NULL),(133,'ffdsf','wer',2,25,NULL,NULL),(134,'fdfd','fwrtt',1,26,NULL,NULL),(135,'iui','ookj',2,26,NULL,NULL),(136,'j','jhgjj',2,26,NULL,NULL),(137,'jgjy','yjgh',2,26,NULL,NULL),(138,'hhr','hrg',2,26,NULL,NULL),(139,'fdfewf','dfr',1,27,NULL,NULL),(140,'dfsf','cxs',2,27,NULL,NULL),(141,'fef','rdw',2,27,NULL,NULL),(142,'fwfe','rdr',2,27,NULL,NULL),(143,'fwr','erd',2,27,NULL,NULL),(144,'drw','drwfw',1,28,NULL,NULL),(145,'fdw','fwdf',2,28,NULL,NULL),(146,'fd','wf',2,28,NULL,NULL),(147,'fwf','erer',2,28,NULL,NULL),(148,'','',2,28,NULL,NULL),(149,'dsadawds','dsad',1,29,NULL,NULL),(150,'DDSAD','DWDAD',2,29,NULL,NULL),(151,'dsad','dwads',2,29,NULL,NULL),(152,'fdsf','fsf',2,29,NULL,NULL),(153,'sfs','fs',2,29,NULL,NULL),(154,'fds','fds',1,30,NULL,NULL),(155,'fcs','xcvx',2,30,NULL,NULL),(156,'v','ewrd',2,30,NULL,NULL),(157,'fsf','esf',2,30,NULL,NULL),(158,'fs','ewf',2,30,NULL,NULL),(159,'fdwf','dfw',1,32,NULL,NULL),(160,'rd','fsd',2,32,NULL,NULL),(161,'fw','rdr',2,32,NULL,NULL),(162,'fw','dfwe',2,32,NULL,NULL),(163,'drw','drdw',2,32,NULL,NULL);
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
  `avg_cgpa` decimal(4,2) DEFAULT NULL,
  `guide_alloted` int DEFAULT NULL,
  `guide_alloted_2` int DEFAULT NULL,
  `group_num` int DEFAULT NULL,
  `project_title` varchar(100) DEFAULT NULL,
  `dis` int DEFAULT NULL,
  `year` int DEFAULT NULL,
  PRIMARY KEY (`group_id`),
  UNIQUE KEY `group_id_UNIQUE` (`group_id`),
  KEY `login_id` (`login_id`),
  KEY `area_pref_1` (`area_pref_1`),
  KEY `area_pref_2` (`area_pref_2`),
  KEY `area_pref_3` (`area_pref_3`),
  KEY `guide_alloted` (`guide_alloted`),
  KEY `guide_alloted_2` (`guide_alloted_2`),
  CONSTRAINT `student_group_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `login` (`login_id`) ON DELETE SET NULL,
  CONSTRAINT `student_group_ibfk_2` FOREIGN KEY (`area_pref_1`) REFERENCES `areas` (`area_id`) ON DELETE SET NULL,
  CONSTRAINT `student_group_ibfk_3` FOREIGN KEY (`area_pref_2`) REFERENCES `areas` (`area_id`) ON DELETE SET NULL,
  CONSTRAINT `student_group_ibfk_4` FOREIGN KEY (`area_pref_3`) REFERENCES `areas` (`area_id`) ON DELETE SET NULL,
  CONSTRAINT `student_group_ibfk_8` FOREIGN KEY (`guide_alloted`) REFERENCES `teacher` (`teacher_id`) ON DELETE SET NULL,
  CONSTRAINT `student_group_ibfk_9` FOREIGN KEY (`guide_alloted_2`) REFERENCES `teacher` (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_group`
--

LOCK TABLES `student_group` WRITE;
/*!40000 ALTER TABLE `student_group` DISABLE KEYS */;
INSERT INTO `student_group` VALUES (8,31,5,6,1,7.53,1,NULL,1,'title',0,2023),(9,32,1,2,7,7.22,5,NULL,2,NULL,0,2023),(10,33,5,1,2,7.95,7,NULL,3,NULL,0,2023),(11,34,1,5,2,8.21,10,NULL,4,NULL,0,2023),(12,35,5,6,2,6.72,11,3,5,NULL,0,2023),(13,36,1,5,2,6.74,13,10,6,NULL,0,2023),(14,37,5,6,1,8.04,10,NULL,7,NULL,0,2023),(15,38,9,6,1,6.51,15,NULL,8,NULL,0,2023),(16,39,5,1,3,6.11,13,NULL,9,NULL,0,2023),(17,40,1,2,5,5.84,13,NULL,10,NULL,0,2023),(18,41,9,5,1,5.27,15,NULL,11,NULL,0,2023),(19,42,3,1,5,7.05,3,NULL,12,NULL,0,2023),(20,43,5,1,8,7.15,5,NULL,13,NULL,0,2023),(21,44,6,5,1,7.17,1,7,14,NULL,0,2023),(22,45,5,1,6,7.37,5,NULL,15,'your title',0,2023),(23,46,3,6,1,5.70,3,NULL,16,NULL,0,2023),(24,47,7,3,5,7.58,14,1,17,NULL,0,2023),(25,48,8,3,2,7.00,12,10,18,NULL,0,2023),(26,49,5,3,1,6.75,3,NULL,19,NULL,0,2023),(27,50,5,1,3,7.92,7,NULL,20,NULL,0,2023),(28,51,6,5,9,6.68,11,7,21,NULL,0,2023),(29,52,5,1,6,6.86,1,3,22,NULL,0,2023),(30,53,5,4,7,7.98,10,5,23,NULL,1,2023),(32,59,5,4,7,7.94,7,19,24,NULL,1,2023);
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
  `group_id_1` int DEFAULT NULL,
  `group_id_2` int DEFAULT NULL,
  `group_id_3` int DEFAULT NULL,
  `group_id_4` int DEFAULT NULL,
  `pref_id` int DEFAULT NULL,
  `permanent_id` int DEFAULT NULL,
  `active_id` int DEFAULT NULL,
  PRIMARY KEY (`teacher_id`),
  UNIQUE KEY `teacher_id_UNIQUE` (`teacher_id`),
  KEY `login_id` (`login_id`),
  KEY `group_id_1` (`group_id_1`),
  KEY `group_id_2` (`group_id_2`),
  KEY `group_id_3` (`group_id_3`),
  KEY `group_id_4` (`group_id_4`),
  CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `login` (`login_id`) ON DELETE SET NULL,
  CONSTRAINT `teacher_ibfk_2` FOREIGN KEY (`group_id_4`) REFERENCES `student_group` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,'Anuradha Purohit',1,8,21,29,24,6,1,1),(2,'Mamta Gupta',2,NULL,NULL,NULL,NULL,102,0,1),(3,'Priyanka Bamne',3,19,26,23,12,7,1,1),(5,'Dr. Vandan Tewari',5,22,9,20,30,4,1,1),(7,'Surendra Gupta',7,32,10,27,28,3,1,1),(10,'Urjita Thakar ',10,30,11,14,25,2,1,1),(11,'Teena Dubey ',11,12,28,NULL,NULL,101,0,1),(12,'Priyanka Kokate',12,25,NULL,NULL,NULL,103,0,1),(13,'Neha Mehra',13,13,16,17,NULL,8,1,1),(14,'Himani Mishra',14,24,NULL,NULL,NULL,100,0,1),(15,'D A Mehta',15,15,18,NULL,NULL,1,1,1),(19,'Rajesh Dhakad',19,NULL,NULL,NULL,32,5,1,1);
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

-- Dump completed on 2022-11-19 17:02:23
