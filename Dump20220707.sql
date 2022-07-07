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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'anuradha_p','sgsits#1'),(2,'mamta_g','sgsits@1'),(3,'priyanka_b','sgsits#2'),(5,'vandan_t','sgsits#3'),(7,'surendra_g','sgsits#4'),(9,'sonika_s','sgsits#5'),(10,'urjita_t','sgsits@5'),(11,'teena_d','sgsits#6'),(12,'priyanka_k','sgsits@6'),(13,'neha_m','sgsits#7'),(14,'himani_m','sgsits@7'),(15,'da_mehta','sgsits#8'),(19,'rajesh_d','sgsits#10'),(31,'mohit','mohit'),(32,'g1','g1'),(33,'g2','g2'),(34,'g3','g3'),(35,'g4','h4'),(36,'g5','g5'),(37,'g6','g6'),(38,'g7','g7'),(39,'g8','g8'),(40,'g9','g9'),(41,'g10','g10'),(42,'g11','g11'),(43,'g12','g12'),(44,'g13','g13'),(45,'g14','g14'),(46,'g15','g15'),(47,'g16','g16'),(48,'g17','g17'),(49,'g18','g18'),(50,'g19','g19'),(51,'g20','g20'),(52,'g21','g21'),(53,'g22','g22'),(54,'g23','g23'),(56,'g25','g25'),(57,'g26','g26');
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
  KEY `role_id` (`role_id`),
  KEY `group_id` (`group_id`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON DELETE SET NULL,
  CONSTRAINT `student_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `student_group` (`group_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (44,'fdaf','fds',1,8),(45,'fs','fa',2,8),(46,'fw','fe',2,8),(47,'fq','ft',2,8),(48,'fd','fc',2,8),(49,'fsaf','fsf',1,9),(50,'fdsf','sf',2,9),(51,'fafa','fa',2,9),(52,'fsf','sfs',2,9),(53,'fsfs','fs',2,9),(54,'fsdf','dfsaf',1,10),(55,'af','af',2,10),(56,'faf','faaf',2,10),(57,'faf','fa',2,10),(58,'fafa','af',2,10),(59,'fefs','dfs',1,11),(60,'ffa','fa',2,11),(61,'fwe','wer',2,11),(62,'tdt','tr',2,11),(63,'twtw','tw',2,11),(64,'fesfd','faf',1,12),(65,'fse','wf',2,12),(66,'rewr','fw',2,12),(67,'fwfw','fefe',2,12),(68,'fefr','fwfw',2,12),(69,'fefes','dfw',1,13),(70,'fwf','fwewf',2,13),(71,'wfwfw','fwfw',2,13),(72,'fwfw','fwffw',2,13),(73,'efwf','fwfw',2,13),(74,'fdsee','fw',1,14),(75,'rwr','rw',2,14),(76,'rwer','rwr',2,14),(77,'rer','wrw',2,14),(78,'fef','sfd',2,14),(79,'dwad','fdff',1,15),(80,'trt','juj',2,15),(81,'juku','ki',2,15),(82,'k','ku',2,15),(83,'kuku','kuk',2,15),(84,'fewfe','trt',1,16),(85,'ryty','tuy',2,16),(86,'uyu','uij',2,16),(87,'jhgh','fh',2,16),(88,'hfhf','h',2,16),(89,'fef','dsfwfw',1,17),(90,'fwfw','fwf',2,17),(91,'wfwf','fwfw',2,17),(92,'fwwwf','fwf',2,17),(93,'fefe','fdf',2,17),(94,'fed','dwfs',1,18),(95,'cvsv','xcvxvx',2,18),(96,'vxv','xvd',2,18),(97,'zczcx','dasa',2,18),(98,'cac','ac',2,18),(99,'fed','cs',1,19),(100,'vcv','bvb',2,19),(101,'bv','ggge',2,19),(102,'grrge','df',2,19),(103,'sfdfw','fw',2,19),(104,'dfv','vsfs',1,20),(105,'fwef','wfwf',2,20),(106,'rere','tet',2,20),(107,'tt','ttd',2,20),(108,'fwf','dfw',2,20),(109,'fcs','efwfd',1,21),(110,'rewrw','ffw',2,21),(111,'rwr','rwrw',2,21),(112,'wrwr','wrw',2,21),(113,'rwrw','rw',2,21),(114,'fdfsew','fwrewr',1,22),(115,'rwr','rwf',2,22),(116,'wfsd','fwfw',2,22),(117,'rer','tet',2,22),(118,'fwf','wdf',2,22),(119,'dfdf','wfer',1,23),(120,'rwr','wrwr',2,23),(121,'fwf','dfwfw',2,23),(122,'fwf','gwg',2,23),(123,'gwge','eg',2,23),(124,'fwdf','c',1,24),(125,'ffg','rg',2,24),(126,'yty','uu',2,24),(127,'uyu','iyi',2,24),(128,'iujuj','h',2,24),(129,'dwfd','rdr',1,25),(130,'fwf','fdw',2,25),(131,'fwe','er',2,25),(132,'twet','tf',2,25),(133,'ffdsf','wer',2,25),(134,'fdfd','fwrtt',1,26),(135,'iui','ookj',2,26),(136,'j','jhgjj',2,26),(137,'jgjy','yjgh',2,26),(138,'hhr','hrg',2,26),(139,'fdfewf','dfr',1,27),(140,'dfsf','cxs',2,27),(141,'fef','rdw',2,27),(142,'fwfe','rdr',2,27),(143,'fwr','erd',2,27),(144,'drw','drwfw',1,28),(145,'fdw','fwdf',2,28),(146,'fd','wf',2,28),(147,'fwf','erer',2,28),(148,'','',2,28),(149,'dsadawds','dsad',1,29),(150,'DDSAD','DWDAD',2,29),(151,'dsad','dwads',2,29),(152,'fdsf','fsf',2,29),(153,'sfs','fs',2,29),(154,'fds','fds',1,30),(155,'fcs','xcvx',2,30),(156,'v','ewrd',2,30),(157,'fsf','esf',2,30),(158,'fs','ewf',2,30);
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
  `guide_alloted_2` int DEFAULT NULL,
  `guide_comment` varchar(450) DEFAULT NULL,
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
  KEY `guide_alloted_2` (`guide_alloted_2`),
  CONSTRAINT `student_group_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `login` (`login_id`) ON DELETE SET NULL,
  CONSTRAINT `student_group_ibfk_2` FOREIGN KEY (`area_pref_1`) REFERENCES `areas` (`area_id`) ON DELETE SET NULL,
  CONSTRAINT `student_group_ibfk_3` FOREIGN KEY (`area_pref_2`) REFERENCES `areas` (`area_id`) ON DELETE SET NULL,
  CONSTRAINT `student_group_ibfk_4` FOREIGN KEY (`area_pref_3`) REFERENCES `areas` (`area_id`) ON DELETE SET NULL,
  CONSTRAINT `student_group_ibfk_5` FOREIGN KEY (`guide_pref_1`) REFERENCES `teacher` (`teacher_id`) ON DELETE SET NULL,
  CONSTRAINT `student_group_ibfk_6` FOREIGN KEY (`guide_pref_2`) REFERENCES `teacher` (`teacher_id`) ON DELETE SET NULL,
  CONSTRAINT `student_group_ibfk_7` FOREIGN KEY (`guide_pref_3`) REFERENCES `teacher` (`teacher_id`) ON DELETE SET NULL,
  CONSTRAINT `student_group_ibfk_8` FOREIGN KEY (`guide_alloted`) REFERENCES `teacher` (`teacher_id`) ON DELETE SET NULL,
  CONSTRAINT `student_group_ibfk_9` FOREIGN KEY (`guide_alloted_2`) REFERENCES `teacher` (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_group`
--

LOCK TABLES `student_group` WRITE;
/*!40000 ALTER TABLE `student_group` DISABLE KEYS */;
INSERT INTO `student_group` VALUES (8,31,1,2,3,1,2,3,8.12,1,NULL,NULL),(9,32,5,6,9,1,2,3,8.26,1,NULL,NULL),(10,33,1,2,7,2,3,1,9.13,7,NULL,NULL),(11,34,5,1,2,2,3,1,7.69,13,NULL,NULL),(12,35,5,6,1,1,2,3,9.50,10,NULL,NULL),(13,36,5,6,2,1,3,2,7.89,11,NULL,NULL),(14,37,3,1,5,2,1,3,6.90,3,NULL,NULL),(15,38,1,5,2,1,3,2,9.18,10,NULL,NULL),(16,39,5,1,9,1,2,3,8.26,5,NULL,NULL),(17,40,5,3,1,1,2,3,6.78,3,NULL,NULL),(18,41,5,1,3,2,3,1,8.79,7,NULL,NULL),(19,42,1,2,7,1,2,3,8.36,5,NULL,NULL),(20,43,5,1,3,1,3,2,7.83,13,NULL,NULL),(21,44,1,3,5,1,2,3,7.39,14,NULL,NULL),(22,45,5,1,8,1,3,2,7.59,9,NULL,NULL),(23,46,5,1,2,2,1,3,7.46,9,NULL,NULL),(24,47,5,6,9,1,2,3,7.35,2,NULL,NULL),(25,48,5,1,6,1,3,2,7.29,14,NULL,NULL),(26,49,6,5,1,2,1,3,7.42,11,NULL,NULL),(27,50,5,6,1,1,2,3,7.12,2,NULL,NULL),(28,51,3,4,2,1,2,3,6.29,19,NULL,NULL),(29,52,4,3,2,1,2,3,8.75,15,NULL,NULL),(30,53,5,4,1,1,2,3,8.10,15,NULL,NULL);
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
  `group_id_1` int(10) unsigned zerofill DEFAULT NULL,
  `group_id_2` int(10) unsigned zerofill DEFAULT NULL,
  `group_id_3` int(10) unsigned zerofill DEFAULT NULL,
  `pref_id` int DEFAULT NULL,
  PRIMARY KEY (`teacher_id`),
  UNIQUE KEY `teacher_id_UNIQUE` (`teacher_id`),
  KEY `login_id` (`login_id`),
  KEY `group_id_1` (`group_id_1`),
  KEY `group_id_2` (`group_id_2`),
  KEY `group_id_3` (`group_id_3`),
  CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `login` (`login_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,'Anuradha Purohit',1,0000000009,0000000008,NULL,6),(2,'Mamta Gupta',2,0000000024,0000000027,NULL,12),(3,'Priyanka Bamne',3,0000000014,0000000017,NULL,7),(5,'Dr. Vandan Tewari',5,0000000019,0000000016,NULL,4),(7,'Surendra Gupta',7,0000000010,0000000018,NULL,3),(9,'SONIKA SHRIVASTAVA ',9,0000000022,0000000023,NULL,9),(10,'Urjita Thakar ',10,0000000012,0000000015,NULL,2),(11,'Teena Dubey ',11,0000000013,0000000026,NULL,11),(12,'Priyanka Kokate',12,NULL,NULL,NULL,13),(13,'Neha Mehra',13,0000000020,0000000011,NULL,8),(14,'Himani Mishra',14,0000000021,0000000025,NULL,10),(15,'D A Mehta',15,0000000029,0000000030,NULL,1),(19,'Rajesh Dhakad',19,0000000028,NULL,NULL,5);
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

-- Dump completed on 2022-07-07 16:49:11
