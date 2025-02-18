-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: localhost    Database: quiz_app
-- ------------------------------------------------------
-- Server version	8.0.41-0ubuntu0.24.04.1

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
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `result_id` int NOT NULL,
  `option_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `answers_fk2` (`option_id`),
  KEY `result_id` (`result_id`),
  CONSTRAINT `answers_fk1` FOREIGN KEY (`result_id`) REFERENCES `results` (`id`),
  CONSTRAINT `answers_fk2` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`),
  CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`result_id`) REFERENCES `results` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `options` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question_id` int NOT NULL,
  `option_text` text NOT NULL,
  `is_correct` tinyint(1) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `options_fk1` (`question_id`),
  CONSTRAINT `options_fk1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `options`
--

LOCK TABLES `options` WRITE;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
INSERT INTO `options` VALUES (34,14,'dasturlash 1',0,'2025-01-18 22:12:57','2025-01-18 22:12:57'),(35,14,'dasturlash 2',0,'2025-01-18 22:12:57','2025-01-18 22:12:57'),(36,14,'dasturlash 3',1,'2025-01-18 22:12:57','2025-01-18 22:12:57'),(43,17,'sd',0,'2025-01-18 22:16:30','2025-01-18 22:16:30'),(44,17,'d',0,'2025-01-18 22:16:30','2025-01-18 22:16:30'),(45,17,'d',1,'2025-01-18 22:16:30','2025-01-18 22:16:30'),(46,18,'sd',0,'2025-01-18 22:16:30','2025-01-18 22:16:30'),(47,18,'d',0,'2025-01-18 22:16:30','2025-01-18 22:16:30'),(48,18,'d',1,'2025-01-18 22:16:30','2025-01-18 22:16:30'),(58,22,'option 1',1,'2025-01-22 14:10:27','2025-01-22 14:10:27'),(59,22,'option 2',0,'2025-01-22 14:10:27','2025-01-22 14:10:27'),(60,22,'option 3',0,'2025-01-22 14:10:27','2025-01-22 14:10:27'),(69,26,'option 1',0,'2025-01-22 17:31:13','2025-01-22 17:31:13'),(70,26,'option 2',0,'2025-01-22 17:31:13','2025-01-22 17:31:13'),(71,26,'option 3',1,'2025-01-22 17:31:13','2025-01-22 17:31:13'),(93,41,'hello',0,'2025-01-25 11:16:44','2025-01-25 11:16:44'),(94,41,'hi',0,'2025-01-25 11:16:44','2025-01-25 11:16:44'),(95,41,'salom',1,'2025-01-25 11:16:44','2025-01-25 11:16:44'),(96,42,'option 1',1,'2025-01-25 11:16:44','2025-01-25 11:16:44'),(97,42,'option 2',0,'2025-01-25 11:16:44','2025-01-25 11:16:44'),(122,51,'Option 1',0,'2025-01-26 11:22:55','2025-01-26 11:22:55'),(123,51,'Option 2',1,'2025-01-26 11:22:55','2025-01-26 11:22:55'),(124,51,'Option 3',0,'2025-01-26 11:22:55','2025-01-26 11:22:55'),(125,52,'Option 1',0,'2025-01-26 11:22:55','2025-01-26 11:22:55'),(126,52,'Option 2',1,'2025-01-26 11:22:55','2025-01-26 11:22:55'),(127,52,'Option 3',0,'2025-01-26 11:22:55','2025-01-26 11:22:55'),(134,55,'Option 1',0,'2025-01-26 11:24:41','2025-01-26 11:24:41'),(135,55,'Option 2',1,'2025-01-26 11:24:41','2025-01-26 11:24:41'),(136,55,'Option 3',0,'2025-01-26 11:24:41','2025-01-26 11:24:41'),(137,56,'Option 1',1,'2025-01-26 11:24:41','2025-01-26 11:24:41'),(138,56,'Option 2',0,'2025-01-26 11:24:41','2025-01-26 11:24:41'),(139,56,'Option 3',0,'2025-01-26 11:24:41','2025-01-26 11:24:41');
/*!40000 ALTER TABLE `options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quiz_id` int NOT NULL,
  `question_text` text NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `questions_fk1` (`quiz_id`),
  CONSTRAINT `questions_fk1` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (14,14,'Mantiqiy savollar','2025-01-18 22:12:57','2025-01-18 22:12:57'),(17,17,'sd','2025-01-18 22:16:30','2025-01-18 22:16:30'),(18,18,'sd','2025-01-18 22:16:30','2025-01-18 22:16:30'),(22,22,'Assalomu alaykum','2025-01-22 14:10:27','2025-01-22 14:10:27'),(26,26,'Qanday nima?','2025-01-22 17:31:13','2025-01-22 17:31:13'),(41,11,'Salom turlari','2025-01-25 11:16:44','2025-01-25 11:16:44'),(42,11,'salom qwe','2025-01-25 11:16:44','2025-01-25 11:16:44'),(51,37,'Question Text 1','2025-01-26 11:22:55','2025-01-26 11:22:55'),(52,38,'Question Text 1','2025-01-26 11:22:55','2025-01-26 11:22:55'),(55,32,'Question Text 1','2025-01-26 11:24:41','2025-01-26 11:24:41'),(56,32,'Quiz Text 2','2025-01-26 11:24:41','2025-01-26 11:24:41');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quizzes`
--

DROP TABLE IF EXISTS `quizzes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quizzes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `unique_value` varchar(255) NOT NULL,
  `user_id` int DEFAULT '0',
  `title` text NOT NULL,
  `description` text NOT NULL,
  `time_limit` int NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `unique_value` (`unique_value`),
  KEY `quizzes_fk1` (`user_id`),
  CONSTRAINT `quizzes_fk1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quizzes`
--

LOCK TABLES `quizzes` WRITE;
/*!40000 ALTER TABLE `quizzes` DISABLE KEYS */;
INSERT INTO `quizzes` VALUES (11,'jtuu76i86',42,'Quiz 1','test',12,'2025-01-25 11:16:44','2025-01-18 12:35:29'),(14,'qwe123sd',42,'Quiz test 1','dasturlash',25,'2025-01-18 22:12:57','2025-01-18 22:12:57'),(17,'asdf123df',42,'as','asd',13,'2025-01-18 22:16:30','2025-01-18 22:16:30'),(18,'assa32ds',42,'as','asd',13,'2025-01-18 22:16:30','2025-01-18 22:16:30'),(22,'wewew123',45,'Quiz tast 1','Salom turi',50,'2025-01-22 14:10:27','2025-01-22 14:10:27'),(26,'566gfgfs',98,'Quiz Asadbek ','Salom surash',123,'2025-01-22 17:31:13','2025-01-22 17:31:13'),(32,'6795d4bde1bcf',38,'Quiz title','Description',25,'2025-01-26 11:24:41','2025-01-26 11:22:53'),(37,'6795d4bf0cd33',38,'Quiz title','Description',14,'2025-01-26 11:22:55','2025-01-26 11:22:55'),(38,'6795d4bf3e1e1',38,'Quiz title','Description',14,'2025-01-26 11:22:55','2025-01-26 11:22:55');
/*!40000 ALTER TABLE `quizzes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `results`
--

DROP TABLE IF EXISTS `results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `results` (
  `id` int NOT NULL AUTO_INCREMENT,
  `started_at` datetime NOT NULL,
  `finished_at` datetime NOT NULL,
  `user_id` int NOT NULL,
  `quiz_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `results_fk1` (`user_id`),
  KEY `results_fk2` (`quiz_id`),
  CONSTRAINT `results_fk1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `results_fk2` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `results`
--

LOCK TABLES `results` WRITE;
/*!40000 ALTER TABLE `results` DISABLE KEYS */;
/*!40000 ALTER TABLE `results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_api_tokens`
--

DROP TABLE IF EXISTS `user_api_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_api_tokens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `token` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `expires_at` datetime NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_api_tokens_fk2` (`user_id`),
  CONSTRAINT `user_api_tokens_fk2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `user_api_tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_api_tokens`
--

LOCK TABLES `user_api_tokens` WRITE;
/*!40000 ALTER TABLE `user_api_tokens` DISABLE KEYS */;
INSERT INTO `user_api_tokens` VALUES (1,'5ed1346091644a9bc0ceebe3d8fbb7e2fa7c2cd992cb99f350c288ffab71d0a5a66a3120a505d4d5',14,'1970-01-01 00:00:00','2024-12-25 12:48:32'),(2,'c2a8ab9fb1adbebc3d96d762b27a5c583b9a2955c2601236d020a3fadc06ed6014a99e869080497d',17,'1970-01-01 00:00:00','2024-12-25 17:29:40'),(3,'2450aeb5b84af1dd35d33641637a84b8406a7b2e471d0426709da5cfb6fcf1a6d0957d60f82420b1',22,'1970-01-01 00:00:00','2024-12-26 15:30:05'),(4,'a2ff9d76cff83ffc70417257678779362a3785f4ef251c4fd73d693fd385fc90f93ac00e0535f5cf',23,'1970-01-01 00:00:00','2024-12-26 17:17:03'),(5,'659ae0f4dcf610ea8d0bad274df7d9020e20ff0b00d39d69f1634e5cdde1fbf59206d6b1cd532820',24,'1970-01-01 00:00:00','2024-12-26 17:27:14'),(6,'f50d68e633cefcb0561d15583c81ec0b77f4f6d16180af700deb881ce48af2f399340fa2a3d65a2f',25,'1970-01-01 00:00:00','2024-12-26 17:27:30'),(7,'062e43a13c79e873d375f07727a6d1318ca21ce339bcb92492ef6299a7cd7a42f1cf47a0368ae4d5',27,'1970-01-01 00:00:00','2024-12-27 10:07:13'),(8,'2690c761092dc107032da0d6d0f4a57f1aceefd0e5e2af47ee33b46f8488b7f5bba11fd0f9d30f8c',29,'1970-01-01 00:00:00','2024-12-27 10:11:55'),(9,'2a5658ab0749cfaad731b0ae8e2c3a6433b4a512c3e096c2ad14b290934bb0153062d09f158ec4ce',31,'1970-01-01 00:00:00','2024-12-27 10:48:39'),(10,'ae1bc5ea39a85532ecfe202b79e4be8eee5b6d7369f9c5d5a27732baf74493b265e2085b3e39d528',31,'1970-01-01 00:00:00','2024-12-27 12:01:02'),(11,'e5980e82877ea9b79dd06f4db16a7047507cd650faa7bdb65f8b66c8f13d82f3b0ed232a6e1b0667',31,'1970-01-01 00:00:00','2025-01-08 19:37:56'),(12,'47644fc03e70b8e5aee9cb1164681d9ff290c7779b134d7250b488fa274ffb1f1c7c227594bcc8a7',8,'1970-01-01 00:00:00','2025-01-09 09:12:14'),(13,'5a454b219d5174b31eb14e51cb0022818f7cee0d7963088b1dca27d2b9d0d47cee4bace2973200f8',34,'1970-01-01 00:00:00','2025-01-09 09:21:25'),(14,'d2848c044b0dbd660c23e8c8254a30afb68a82a2815b746599f561ec87cc63924516e191e87d0b1f',35,'1970-01-01 00:00:00','2025-01-09 09:28:55'),(15,'d6254c243018685436bbdfd8740165ed807ddb41198a80eb864ff3dfab1965d4ec90285ea8c48f55',34,'1970-01-01 00:00:00','2025-01-09 18:45:27'),(16,'e8f6038b7f893dc38da868fb875548cffa1c05308e9e39844bfe0f8bb4978fca01e94b05c18a36c8',34,'1970-01-01 00:00:00','2025-01-09 18:51:49'),(17,'e4fb338b788c87e057241c8371167e1978ddcd205ec49ade08af6ecbf6f51ed1b3241772e800e5d7',35,'1970-01-01 00:00:00','2025-01-10 10:48:32'),(18,'0b60ef403c138148abe6d169d0fa471de39a8469e9ffa35ec73a23466fe352d6f82143aebfb75e36',34,'1970-01-01 00:00:00','2025-01-10 10:50:48'),(19,'918928785709272928533ecb2d1ce7e6c1a4ee932cabf7acdfd4b0194352670c36c6195232e0fb7a',34,'1970-01-01 00:00:00','2025-01-10 10:51:15'),(20,'324e96b4656d3af8072f0be34f5368b796a49bc3771d6d15eb913a93ed6c9ceef6f87f3ef9d69d51',34,'1970-01-01 00:00:00','2025-01-10 10:51:36'),(21,'6e0bf11909b01825baee89e271993a6b8c20dc76f53b091a20384b0df4b386e7debbaa3490cad5cf',34,'1970-01-01 00:00:00','2025-01-10 11:15:30'),(22,'9893e90d69063da586e8c2826bf07be3ef08de6eb3de6d40e01d04b7d581876fa78a830834321e6f',34,'1970-01-01 00:00:00','2025-01-10 11:15:30'),(23,'4ebfef04b2eebc4451ff8df120e9f14d2b46898b64de85ba825de7c235b0ea0b2cbe0e659bb06c93',34,'1970-01-01 00:00:00','2025-01-10 11:17:16'),(24,'32651679d7331fcfb3e8c6f02a1c762addc9e94bfc3baf43b8fdf3ab138fa0844cc271fadf2ae26f',34,'1970-01-01 00:00:00','2025-01-10 11:17:16'),(25,'6e3a0af05cd972d0929fd6e0ef6409ca8ec1fab9eb18ab8326cf8f3be15b5231a727c2c970b1eef6',34,'1970-01-01 00:00:00','2025-01-10 11:20:11'),(26,'95d1830bb432bfc433e4158abce5596826125f7a64ffb1e09445e5b0ed27a95209b411fe65fc328b',34,'1970-01-01 00:00:00','2025-01-10 11:20:11'),(27,'baafc4ae8c8c266f3231aaa7cb0889bbceaf9a69a92e9375b2edb77da4c22ab0517b08337d47141a',34,'1970-01-01 00:00:00','2025-01-10 11:24:15'),(28,'5011b68c047061796782777c0927983036b4219cc283d4c6a3e36038c2a425d616cf9172819c4b95',36,'1970-01-01 00:00:00','2025-01-10 21:05:37'),(29,'4f4bd53a0589e9fe9c09bcca2811f999633eb79556597ae719def88dc464d49666a858d365e79788',37,'1970-01-01 00:00:00','2025-01-11 09:31:46'),(30,'b000d44816eed227a8fc5b0fd421d7b0568c2d6bda585044cbc1230ebfe408432eefd7531eee848c',38,'1970-01-01 00:00:00','2025-01-11 11:31:09'),(31,'dc07746785eefbad56862942a35e16f3fc80eabf11abfa3fb38e0763c31920785a43273a055e9726',38,'1970-01-01 00:00:00','2025-01-11 12:45:36'),(32,'cfb0d04882b75295501b687f53218c18e738601d443f91cb75ee1a4ad6649e9918a7f7a7f95eddb1',34,'1970-01-01 00:00:00','2025-01-12 18:15:02'),(33,'dddd3865f08d6dc9ff283420b144bc5f7f12fdc76adecf3e377fd13a01fd134be30e04cad3d4eab5',34,'1970-01-01 00:00:00','2025-01-12 18:15:33'),(34,'95c4a5e77ffefa74293cc55b9b0d5369b29f7bdcf2d5ae6bc30cb4c3896e2158ea18cedef4d729b7',34,'1970-01-01 00:00:00','2025-01-12 18:16:47'),(35,'926380a131526ae6927c1c0336f8412b9a9633b8cf49e3f514a1ab05ef413e01b4b0fe02a8233080',39,'1970-01-01 00:00:00','2025-01-12 18:20:27'),(36,'e88f7ef2ec4d25a8f2269a9d098c9aed0790ae9b974cce7aee930696ad499b2b3be7933821f80396',38,'1970-01-01 00:00:00','2025-01-13 11:38:42'),(37,'1e9408f3ba86c4470d6f50d9dc6636baa4b5c0cfa0fc91316dbf44959159e19265ae1b57a8b14e97',38,'1970-01-01 00:00:00','2025-01-13 17:29:16'),(38,'bb82cc3857adffaa27d627c823ae292e3317fe293fb04b0ba8136200af8a9c5f464aea0d17579c40',38,'1970-01-01 00:00:00','2025-01-13 18:15:48'),(39,'d76609721a124356d5c68510fffdb1111697682c43f0cbcc5e6e539ae1dc2d2bd8c2e137f2d6fd3e',38,'1970-01-01 00:00:00','2025-01-13 19:44:44'),(40,'743a11e73b420207d4eb190e33a0a61b89e92830c4132c3ce98a1147bcea26d8a3fa1acc79640252',40,'1970-01-01 00:00:00','2025-01-13 19:45:47'),(41,'e644a271ff09b76b013e4a4353101ad153b4b38b7b3919371990dac049988d959ec5e80dca771d0d',41,'2025-01-13 22:35:41','2025-01-14 10:35:41'),(42,'ce222b47394ffd6781483b644dd1f290a522be965eeb4a28fa4b034c3f861baa9eb20c23b2282bf1',42,'2025-01-21 05:40:29','2025-01-14 10:40:29'),(43,'68b59200c1112ab933d6770056c66de2c8a4688b9538d6138c1c54001f8bd29e322a9cf8c4963d4e',43,'2025-01-21 05:48:18','2025-01-14 10:48:18'),(44,'4dba416629abbc6e5eb828ac5c4ec63db2609276834efcfc638a0b1f08f6dcb5d7b3d2a10565c51d',38,'2025-01-21 06:19:45','2025-01-14 11:19:45'),(45,'616e1a54b4dde0576ea20149d988382fbd4026d569290237d6792ed442c1ef6d0edb15b62e5dafdf',43,'2025-01-21 06:22:52','2025-01-14 11:22:52'),(46,'3866a43d6911931f3f4ef891246c6095d7b7d71eeec4960bba01386d7d5e0ca8dd52ff938fa6a390',43,'2025-01-21 06:23:16','2025-01-14 11:23:16'),(47,'86583a5be04cf623923aad559f0c49ba0141818bf7a8c5c91a4a3bdf220dd93d0d7ba0d2ebec4cb0',43,'2025-01-21 06:24:04','2025-01-14 11:24:04'),(48,'32d818f62f39ac11667bdb91b6c677c79285406664dde59a4def67252c16e8924c600be7391bf27a',43,'2025-01-21 06:24:21','2025-01-14 11:24:21'),(49,'3011b1a177c3b5ca05ec7925cd9ea01f1d7ef8c274c699462b4bc78f8beff16c9ce2fc8139402e41',43,'2025-01-21 06:24:37','2025-01-14 11:24:37'),(50,'dfff7b0c80aa6bce646747385890cc59a31fc78c8f183f7aaeb0c25642fd5e9c56b21d53825b8625',43,'2025-01-21 06:31:17','2025-01-14 11:31:17'),(51,'3d31104010972f402a45ba567737f5998179ef279f552a202c3e8934afdaba66b4389dd0075c11e0',38,'2025-01-21 06:33:54','2025-01-14 11:33:54'),(52,'b31a06342f8479ff10c7405d500df221266c799a6d285b6e5463d0bf0f5cd8a315125567aa7c6d69',42,'2025-01-21 06:34:44','2025-01-14 11:34:44'),(53,'7f0b72c2db2f9a156ddb76100478e3fa0cebbe33106026c02685bd61d6160478ff91356e56fd9255',42,'2025-01-21 06:40:27','2025-01-14 11:40:27'),(54,'f809f38aa6301ca0afa7fb497e38b75b6d3f22bd52d117a2ba34cabbb78adc9e62cc2947dc7b5d9e',42,'2025-01-21 06:41:08','2025-01-14 11:41:08'),(55,'ab2e1e1eb161b5af202f7296b5c7d9302cd57bdc753802bebae0e579b67b5bf03beb7d5d9774ed49',38,'2025-01-21 06:41:22','2025-01-14 11:41:22'),(56,'428c44ac805f462a2e2afc4ed585cdddc4063b9fcde5447701d5ea7ede1bdab0c8ae132ff0f21b68',42,'2025-01-21 06:45:43','2025-01-14 11:45:43'),(57,'90badcf5eaef5c1987eb09af3ce9bacf5608455ad83e0925a9822c4a0acfbbefb40aa0f2c7524184',42,'2025-01-21 06:46:29','2025-01-14 11:46:29'),(58,'4f5ea27d6ead81f9f26c06cf43f5081a49a66440a6b87d586a22a00c6e4fa4888217c34acd45c76b',42,'2025-01-21 06:50:58','2025-01-14 11:50:58'),(59,'11e6bc8ff308b87eddf9fa9862126c63ead179843092df1f49b8dcf52b2bb14f66ad02533ea6180b',42,'2025-01-21 06:51:34','2025-01-14 11:51:34'),(60,'552c167db28c453275421f6504d1ed77271d9e37f9efa50d34dc04210863e7815b03db64475fc510',42,'2025-01-21 06:51:52','2025-01-14 11:51:52'),(61,'5091aa901e4b9c2de79cfd7fa23e6f6238e7a07d384d2d7e41e77e6ed38492bdac97f97e24eead39',42,'2025-01-21 06:52:31','2025-01-14 11:52:31'),(62,'0d8170cadd87c3d07ce589ad1ccbc752be70afac5ef8d493878b37c1e0d3e05b9638595789707783',42,'2025-01-21 06:54:54','2025-01-14 11:54:54'),(63,'fa97fc088fc4d82f653bce473ea5a10d646b03e56158d9731cbbd56b7adba90f630bf52dd1244102',42,'2025-01-21 07:08:34','2025-01-14 12:08:34'),(64,'0c6f563b07390574b501f42a260910328a6728d02bac55cc0a5e0d15afa97ddbaff0ca7d94c7c42b',42,'2025-01-21 07:28:48','2025-01-14 12:28:48'),(65,'300277614e98d873e89015f7a6b92d87d5e732a2cbf25ba682ac7f982e3c17989db5559510b67d2c',42,'2025-01-21 07:33:41','2025-01-14 12:33:41'),(66,'c3417df8700ccacb2981189f6a865fa7024b5b9706d9678473474017e58d6e45962ef1688dc82845',43,'2025-01-22 05:14:22','2025-01-15 10:14:22'),(67,'6c34c78edaa29029e0803371917ccdc6fd21ffe292a17667ec1fc83cbabf87ee313e0fa6eaf67fbb',38,'2025-01-22 07:27:46','2025-01-15 12:27:46'),(68,'84629cb01c9d640af7a3a5187a5dd164de4ecc5833722e83bdcafa1e8eb6221a146f946acf98500f',3,'2025-01-22 12:28:32','2025-01-15 17:28:32'),(69,'6046599a4af5342cbfd637fd55965a6a50a2ca8b06ec8f42607fe1b3a90ea7677a0fc6acf7c1f177',38,'2025-01-22 12:53:05','2025-01-15 17:53:05'),(70,'b01aa984389f9dbc3e5d8fd4ee1dfb60e6c30ec3cb9bf51c63c7033c12f4550007374bb9bd696172',42,'2025-01-23 03:48:08','2025-01-16 08:48:08'),(71,'1c6cc015e27ad61661d9650a367a0a3a1a5c34bbf0b27d76febcdc080f5894a7ae636c1a02d4b241',44,'2025-01-23 03:52:01','2025-01-16 08:52:01'),(72,'73dfc3e5ba4106b1f58d98a325513a5ad906355b8b412b54e4fd7333499e917e0fed0990902ddc6f',45,'2025-01-23 03:52:40','2025-01-16 08:52:40'),(73,'549cd83faf98a5864da8496ccf0df9d1ea5835c1c3debaa2282a3ba7beb3da5998f5b816b7dd61ac',53,'2025-01-23 03:54:01','2025-01-16 08:54:01'),(74,'fd92bd825c673985112bbc1da52e1fe970a5468d70801e8bafa00b418605441cd2df8a43f7bd87ae',45,'2025-01-23 03:54:51','2025-01-16 08:54:51'),(75,'6fa074bc5a4f3b4dceb5776518f203ed31d162f8bf768bcdab0c532a067d879a974331c612f6236c',54,'2025-01-23 03:56:47','2025-01-16 08:56:47'),(76,'2caa88373b93f4f4ff3a4049cd269741b68a416a359b4f6a5e80871df2c8f4f1d81fcfb8e2c79737',61,'2025-01-23 04:01:54','2025-01-16 09:01:54'),(77,'23f29dfb8ed4e5da6f34973e042100ba5025afcd897f070807e794f6d518abcf4d72063e3b0c0a7a',68,'2025-01-23 04:04:23','2025-01-16 09:04:23'),(78,'66431ead6f4a5d6d9ca8d42b96e5f913e4c4e85d3eb93496f4a80de535af62471d8f26c78c4eecd9',69,'2025-01-23 04:05:01','2025-01-16 09:05:01'),(79,'1328d0bf77bd3d0a7ef3838b8167dbf84bc09dea7ec9affe4161a67fa09f05370c937cb15afa4dd5',71,'2025-01-23 04:07:31','2025-01-16 09:07:31'),(80,'46c36c688082a6a44063614b44c59dd54cd4606507773c59005469772cac3e90d665048e5e740017',72,'2025-01-23 04:09:00','2025-01-16 09:09:00'),(81,'1f1ebac284d5e900988eac95b932f66a1a4d434cdd92b65d163581bd5f7c991ff863f8dc81a936fb',75,'2025-01-23 04:13:29','2025-01-16 09:13:29'),(82,'625ab9997741cdd352974ae09d339d96a68db20e1d754a6e00d9b1f13e3418d1213fb05a032a1dd3',77,'2025-01-23 04:38:54','2025-01-16 09:38:54'),(83,'f6235314f4860a6f463dcdeba8a334276da68ef2e72e6acfcfb59e522bdc2b3ed534a9d693fd9d29',96,'2025-01-23 04:54:51','2025-01-16 09:54:51'),(84,'24321a65866e24ac0f3af84a0e089b04dff9692295227f607ec84146ff66eada1f4b0739e58a37d7',42,'2025-01-23 07:21:53','2025-01-16 12:21:53'),(85,'d04a56cb27b4d0aed2de7a362fe62e97ed35e3a9b5557e411296daeb96befe0fba6b1f310f298f77',42,'2025-01-23 07:23:34','2025-01-16 12:23:34'),(86,'a3c331efc7851824bcc56895a4da9c31b4e56f57581ca0bdcee023ece86ea155b07f3a6bc09ef5ef',42,'2025-01-23 07:24:41','2025-01-16 12:24:41'),(87,'db44745e4d6a21439c66a1dc5b95d8a6a24e6bdeab07cb78720b43829dd504511997580cd20bd824',97,'2025-01-23 07:30:38','2025-01-16 12:30:38'),(88,'e4ccc6d7b90dbb4f2ce3582598dbdf5f7df98e689b0ad72d524901c93f16c06eb84c8ed239c225ed',42,'2025-01-23 09:37:59','2025-01-16 14:37:59'),(89,'1eba951c19f68af5133b71d61f3cad05de91b4a45e77341387ca1e019e3303e76914d8ad02608f85',42,'2025-01-23 10:04:38','2025-01-16 15:04:38'),(90,'a4245b31c9706d348374b766347739d49d814282a7f36d6b7c8c7924dd20cea9e6e3c7a30ef54118',38,'2025-01-23 10:11:31','2025-01-16 15:11:31'),(91,'a0c050d3eb9af0d11ed25e50647f7809d9a663731ba4b5f41724c1b9973a8dfeb3519c4d7f726950',42,'2025-01-23 10:46:47','2025-01-16 15:46:47'),(92,'de6296db2be2f17448afa8133ffdf575084f0d0ec1518fc2c0bc3d821e054d4103a10ddf3436f6f3',42,'2025-01-23 12:14:40','2025-01-16 17:14:40'),(93,'7dc08502d3f86d929023e93b837ba7b2b21f7ea0e2509d766a48b079fbca30f4d00550ab72a4e815',42,'2025-01-23 12:18:08','2025-01-16 17:18:08'),(94,'90166abc3e1bb0adb2209dca7c00d2f8d1c122683d1509d7786f72a07fda48e3b5bd317e93ebe852',42,'2025-01-25 06:24:26','2025-01-18 11:24:26'),(95,'b15c1e23891758bb5e543663ae7c2094d9419d1b4df33025161446862f7fbfb58a1637215b2a21ba',98,'2025-01-25 06:26:22','2025-01-18 11:26:22'),(96,'ce14fa3fc17861856833f82cf6ec36fa2ddb98f5e4f586011c194508e478bd00a5c04f9b8fb6911e',123,'2025-01-25 06:27:32','2025-01-18 11:27:32'),(97,'72b3629eb475bc92904e0259eeb3c92be78f2c549cf0d17af7a7efc4acfdc8a58936ccd6bf01280d',38,'2025-01-25 06:28:18','2025-01-18 11:28:18'),(98,'5347f837978ee1101a23c3e60869f5126f505fc0328ef1f36c98909cc112dc46e3392cf40a0477ba',42,'2025-01-25 07:20:42','2025-01-18 12:20:42'),(99,'6446dba1761dbd33202d21498241a78b848322b0606af062f4ea81ca03ae048264d808bc68a8028f',42,'2025-01-25 12:41:26','2025-01-18 17:41:26'),(100,'6faf1814e6f0eb62f1106c89ea13146333d23798ad56d28c439f4b8a2ae412613fb314a4cdf63e90',42,'2025-01-25 17:21:38','2025-01-18 22:21:38'),(101,'1fac81d99bb49726c949f36fce1323c397e7072f5c1d0236e877b4b2b06e7e9c6e0dc001824e4b84',42,'2025-01-25 19:38:02','2025-01-19 00:38:02'),(102,'901ad344ae651613981671fb7d7c20fe41335168f288f3c959f0487a0685be722372b18ddef36109',42,'2025-01-26 04:11:38','2025-01-19 09:11:38'),(103,'724e5728539c517032fbe2d6d96cc04521daded4c1374d9bd262ed637b2d6eecc6a2e45978a460f1',42,'2025-01-26 04:18:47','2025-01-19 09:18:47'),(104,'4591de64568758b1d6fd1f91ddcd8407ca4121dcaccc5216ce7ceed50fbe3e440a99ce529cccc496',42,'2025-01-27 12:18:01','2025-01-20 17:18:01'),(105,'1caebe4f46c772f4cf6057b24a692f7072505fb3ad9873c41e376b529dc3f24d511725e7ff5fa72f',42,'2025-01-28 19:05:37','2025-01-22 00:05:37'),(106,'e7b1d3423a16332cfd2e68b182b8229992fb30112937e045d0390286f20a54d4bfae4026b37ceb0a',42,'2025-01-28 19:05:55','2025-01-22 00:05:55'),(107,'28ccaf71a4eda211faaccde41507fd447efeeb65aa97b7b9ffe89b2e1817723b4bf94bbf830012e5',45,'2025-01-29 09:08:30','2025-01-22 14:08:30'),(108,'24e9022f76f28567f69cb40fe72481ca977ad60873568d89406edb53f09b9adaf86948ba46794738',98,'2025-01-29 12:28:20','2025-01-22 17:28:20'),(109,'7aa67f04f2cfc10d1790ac5d8d9a7bee0bdaf7affdda9f6f03921d629f6cc3bb5e1b3a9a113b9f45',98,'2025-01-29 13:37:30','2025-01-22 18:37:30'),(110,'46246fa02b2a4d8e2762fed3e72643ee9eb0006029ac0b3e342856fbece21531e490c97907bcf98d',42,'2025-01-29 13:40:08','2025-01-22 18:40:08'),(111,'f279f258e60c84699cc141e5490c7c905905f42bc2be88e077bf90bb47788ef166227b467cefecd6',53,'2025-01-30 04:18:36','2025-01-23 09:18:36'),(112,'b838d6fb5d3fc41d5595ade6bca084bf671e3e7e258c4ab30bbbdd6943e33527eb71a5ea2a614124',45,'2025-01-30 04:18:58','2025-01-23 09:18:58'),(113,'245f133dc5bd32b8d02a8c85d0b0383dc108cff737f71baf713614f4be455c8ab4bc150a2ff898fc',98,'2025-01-30 07:20:54','2025-01-23 12:20:54'),(114,'1d0bb891d04fc1b7a573ba491a7d1cfb61c04c95cebf528417936508c02fb341e0d096f9447cc9a7',42,'2025-01-31 07:54:54','2025-01-24 07:54:54'),(115,'b4ee7779a872f3f82acd5aa03db0f4f5dae7e57a160267a15f3ab432ebf64e61e5cd76734a096fde',42,'2025-01-31 07:57:14','2025-01-24 07:57:14'),(116,'211b04318c8de8eb99a952e998556e719b7ccc2abf6614716af434003487ddc3af89222e0ddf4170',42,'2025-01-31 07:57:30','2025-01-24 07:57:30'),(117,'71ca1ea84a2f256a60ad10a82965a3af24e5bbdb50ff0705df1ae4b3590178fec77dba6c0d07c0ea',42,'2025-01-31 07:58:59','2025-01-24 07:58:59'),(118,'6c90157e283830ea65b1119dd3595552b551941b4236c09274a35488262226a949818eda4bf8f954',42,'2025-02-01 11:15:59','2025-01-25 11:15:59'),(119,'26758f1dd63c2002c9e88606c85665dbf9099d38c9c8d0a4f378381c7e4682c87ae8120cd437d18f',38,'2025-02-02 10:25:42','2025-01-26 10:25:42'),(120,'55f453f16e119a2dda1dd889a1410243f07145a34148ada6701076ad986b7cb9478b657d0284f616',38,'2025-02-02 11:00:18','2025-01-26 11:00:18'),(121,'7943831970a7498bf3b82a6c1e66181f4e740a703ddefebf53ee92d1d29a4cc45869039a2ee80e26',123,'2025-02-03 22:02:50','2025-01-27 22:02:50'),(122,'1204ced07542a0c81494c543a05317e6539a0e79040b20093f3d72c9a3a65ebaef9a9e5031b00298',123,'2025-02-03 22:09:46','2025-01-27 22:09:46'),(123,'780ca5c4263210210a827417e6f357c9e60a64be300c1028fa5027d5a1ed7e2804a55c07e20cd731',98,'2025-02-08 14:19:36','2025-02-01 14:19:36');
/*!40000 ALTER TABLE `user_api_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Asad','asdasd@gmail.com','$2y$10$Htfy2GJ6THrWvU23czaM3.tXM3T1WoyRSvNE7GSXy.mNpZ3TcffG.','2024-12-25 11:05:20','2024-12-25 11:05:20'),(2,'Ulug\'bek','Ulug\'bek@gmail.com','$2y$10$sYssqYbsW1ZsO.fEWDFXtexQgkWknzvHt3GBkx7OOw8ro4CW0Emsi','2024-12-25 11:36:45','2024-12-25 11:36:45'),(3,'Shehroz','Shehroz@gmail.com','$2y$10$1xy8PVzeioaJQGJ4uLOi.u9zUsZWKC2im36wHTh.2yBiwJDsI75Cm','2024-12-25 12:37:38','2024-12-25 12:37:38'),(5,'Hasan','Daulet@gmail.com','$2y$10$ZMhve/rgt6dCAiCYZHtj/.jNEbrbZ6NJzE.UQWvPk9W0FTCGeS93G','2024-12-25 12:39:06','2024-12-25 12:39:06'),(6,'Hasanov','Dauletov@gmail.com','$2y$10$uVoloxWqrp8zZNfT1O84ZO2.y0iTTFcyfV.pGNWUhyAJ/bVwMZ8AW','2024-12-25 12:40:50','2024-12-25 12:40:50'),(8,'Hasanova','Dauletova@gmail.com','$2y$10$EriVpIJETNPNaKpsB1X82OMpvKKRdyKHOOrrnHM79cNrilYWNQwMG','2024-12-25 12:43:33','2024-12-25 12:43:33'),(10,'Hasanboy','hasan@gmail.com','$2y$10$Z/PhvkPZ1HVR4ZsBodDRfeE.hTRK3/FQn2zah2hFsbiMhXB6xhMDG','2024-12-25 12:44:26','2024-12-25 12:44:26'),(13,'Hasanboyev','hasanov@gmail.com','$2y$10$yP7dW1V22m4NIzX41vRFC.fIoZ7bxCEq1on6E4NHpx7A8tKclyTEm','2024-12-25 12:44:46','2024-12-25 12:44:46'),(14,'Hasanboyeva','hasanova@gmail.com','$2y$10$Nmw/RcCI5QSKuPKJX0D77uWZlqnngRM0YtKcDzUvt3mCRfJ6V1jZ6','2024-12-25 12:48:32','2024-12-25 12:48:32'),(17,'Hasanov','hasanboyeva@gmail.com','$2y$10$2ERUfaaXbKCoOIW.Q3/o9.owxjevB1JiMwwbDU2.WJLcWXMBpbmju','2024-12-25 17:29:40','2024-12-25 17:29:40'),(22,'Hasanov','hasanboyeva1@gmail.com1','$2y$10$4Qhuijbjzr48/3hVaG5wqeXrRdsQKut1D4WqDUY7ahUcwFyijvZZC','2024-12-26 15:30:05','2024-12-26 15:30:05'),(23,'Shehroz','Shehroz21@gmail.com','$2y$10$HBfgXIsF7MzMrB/SuECkr.A4e0U28jj6/HxBSgqkisWt9cHXG9zL6','2024-12-26 17:17:03','2024-12-26 17:17:03'),(24,'Shehroz','Shehroz212@gmail.com','$2y$10$qA588aur5I7zzc96s.wYm.Bh//qCRLmuy9Khe6x7xNSWoowBpQTlO','2024-12-26 17:27:14','2024-12-26 17:27:14'),(25,'Shehroz','Shehroz3@gmail.com','$2y$10$M0/8hrqaqtQwOGkQajicUeZhUuFBXORp.87I2b3SBDOBG.2DotP.u','2024-12-26 17:27:30','2024-12-26 17:27:30'),(27,'Shehroz','Shehroz4@gmail.com','$2y$10$r5l6xZKnEMBhHsS5H0e7C.yE55p41ce6q0VKH2IWDMJMF.Mci3Yc6','2024-12-27 10:07:13','2024-12-27 10:07:13'),(29,'Shehroz','Shehroz5@gmail.com','$2y$10$AuAcv72tUZWAoDlATqTBK.IZ5HnXNQwVTJEtqKUEUhBD/vch3PjZa','2024-12-27 10:11:55','2024-12-27 10:11:55'),(31,'Doniyor','Doniyor@gmail.com','$2y$10$0IPwFTvhmTy9So5aq9mvSeRLUFi.kahR6TWkC1WpEh.KU6BNTmBAq','2024-12-27 10:48:39','2024-12-27 10:48:39'),(34,'Doniyor','Doniyor123@gmail.com','$2y$10$CN5/GhJbT6BWS24bCQApQuqO7NXgZmh2/4jF0iMLFPLx1izEHwL4a','2025-01-09 09:21:25','2025-01-09 09:21:25'),(35,'Shehroz Yoqubov ','yokhubov1@gmail.com','$2y$10$B/0iDU197YbHyk00My4KmebJMVMOxxB1ZNwj2/Oh856kT0qlnEg2i','2025-01-09 09:28:55','2025-01-09 09:28:55'),(36,'Shehroz Yoqubov ','shehroz9@gmail.com','$2y$10$.co1sUc0Xy.3MJTOB.pNe.bUS6XHmWQfwzLnwMUm/TPR6NkFCv69S','2025-01-10 21:05:37','2025-01-10 21:05:37'),(37,'Shehroz Yoqubov ','student100245@tuit.uz','$2y$10$7m7WANIoF/eOqjIwepDGne9lhf8XyPiCIQn5q.xEcPZP5bntSF6UK','2025-01-11 09:31:46','2025-01-11 09:31:46'),(38,'dsadadadasd','student1002@tuit.uz','$2y$10$..4OwTO.vNLlSkBwB.HHrue7n0M2xUbfy5X0i.asOjqTyi/s.D3/u','2025-01-11 11:31:09','2025-01-11 11:31:09'),(39,'Shehroz Yoqubov ','salom00111@gmail.com','$2y$10$Z8pTUEXdm4xjGZaZalcDF.COLKWYARPscP5gvxKKI2galI.7bfmdi','2025-01-12 18:20:27','2025-01-12 18:20:27'),(40,'Shehroz Yoqubov ','student10012@tuit.uz','$2y$10$EDt9AQjkH76yZOPLzYgUHOwzIYgqAebiWeibdIuRV8AheeUBoHfIS','2025-01-13 19:45:47','2025-01-13 19:45:47'),(41,'Shehroz Yoqubov ','student100012@tuit.uz','$2y$10$N.SZTSfGzJixfZ.4NVfzaOMnGe20KR8Vk3ah2OwFYf1SeWBJUqTo6','2025-01-14 10:35:40','2025-01-14 10:35:40'),(42,'Shehroz Yoqubov ','xiyobidasturchi000111@gmail.com','$2y$10$w3SBvX.Dqm4.nYIX5Rq0jev/RKkBjqF8NI0praLFHiJGExY0N3EW.','2025-01-14 10:40:29','2025-01-14 10:40:29'),(43,'Shehroz Yoqubov ','student10021@tuit.uz','$2y$10$cRCZM3WJp.TumeNL3eGLj.c0ZmMFs9uJechKdwWIc/w4V9R99Ael6','2025-01-14 10:48:18','2025-01-14 10:48:18'),(44,'Zarina','zarina@gmail.com','$2y$10$ieGsI3Yb9O7IIuzpyNqki.t0gbAXX89gK6VTBtNTfjZYVvCkGpOre','2025-01-16 08:52:01','2025-01-16 08:52:01'),(45,'Mazrjona','marjona@gmail.com','$2y$10$pw67EUERTueTfTJNJ3MIRuP7ICDt1qLyuAyDNyOZyZJwRR7bUHYNe','2025-01-16 08:52:40','2025-01-16 08:52:40'),(53,'Mazrjona','marjona4@gmail.com','$2y$10$34hu4VFaXdnfCaQZJSXxoeq1N5bqRmP1cxdZYSpf97YD92YlpL6a.','2025-01-16 08:54:01','2025-01-16 08:54:01'),(54,'Shehroz Yoqubov ','student10022@tuit.uz','$2y$10$wytBH2ltth52g8AjdhYREuxlbihQjHhsbRkO8BbNsu8tIp8rdufue','2025-01-16 08:56:47','2025-01-16 08:56:47'),(61,'Shehroz Yoqubov ','student1000122@tuit.uz','$2y$10$yHQhJrTjTfrlp9ETRDFrh.5CbQExQfHmbqrfL8ne0HkIsmqCjLctW','2025-01-16 09:01:54','2025-01-16 09:01:54'),(68,'Shehroz Yoqubov ','student10024125@tuit.uz','$2y$10$6JcBff2QkTXhyfhqrsfHi.VRVVQy/Sf0nv4PP/XFyUTGfgIlKj0km','2025-01-16 09:04:23','2025-01-16 09:04:23'),(69,'Shehroz Yoqubov ','student10002@tuit.uz','$2y$10$hI/dAw0XpkTm.bD9n8A0j.HolbciJecJmBExCAOmbF9UEPpkfSQPG','2025-01-16 09:05:01','2025-01-16 09:05:01'),(71,'Shehroz Yoqubov ','student10042@tuit.uz','$2y$10$Hq.yeOqID8.i5TAmIzeqC.DRvc8owSzbQaSJ9auFHduiYY3iOjIku','2025-01-16 09:07:31','2025-01-16 09:07:31'),(72,'test1','student100232@tuit.uz','$2y$10$cJlZj80dEPw9EelwrbPOgOGyry6ijaQn1FVaWnvuiXnHJkZ7XhaAS','2025-01-16 09:09:00','2025-01-16 09:09:00'),(75,'Shehroz Yoqubov ','student100452@tuit.uz','$2y$10$z19oEMjgK.lG3p/mM9NuDO0OQyABSOIeNHPfldTJdmcIanbZO.ZD.','2025-01-16 09:13:29','2025-01-16 09:13:29'),(77,'Shehroz Yoqubov ','student100122@tuit.uz','$2y$10$yvFup2.8z.nJ3vpwhzk2H.zurWkaUbz4h9D5TODjGRg0RzcmNRwIK','2025-01-16 09:38:54','2025-01-16 09:38:54'),(96,'Shehroz Yoqubov ','student1001232@tuit.uz','$2y$10$5KfirnO7xMEp7aV5g3x8nOJ8Z3gn9mDjSSUd3GPXXVI9HjNl0/sy6','2025-01-16 09:54:51','2025-01-16 09:54:51'),(97,'Shehroz Yoqubov ','salom12@gmail.com','$2y$10$pR9ataz79I39QTmwxinNtu83f/62UiD2mdZzsnuEgRrGCozEuA1y6','2025-01-16 12:30:38','2025-01-16 12:30:38'),(98,'Asadbek','asabek@gmail.com','$2y$10$32.yGBlJQqOLnz2u7dBDxepCfIXesTv4PSMspVnzt.sivvPi5DRPi','2025-01-18 11:26:22','2025-01-18 11:26:22'),(123,'Asadbek','asabek1@gmail.com','$2y$10$/KG9JA2vqRdt.5QKOlNxCelkSgFbif1FN4.Pmq9pGoQ9FdMrmR8H.','2025-01-18 11:27:32','2025-01-18 11:27:32');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-06  0:24:14
