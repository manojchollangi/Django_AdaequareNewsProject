-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: newsdb
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add news details',9,'add_newsdetails'),(26,'Can change news details',9,'change_newsdetails'),(27,'Can delete news details',9,'delete_newsdetails'),(28,'Can view news details',9,'view_newsdetails'),(29,'Can add news type',10,'add_newstype'),(30,'Can change news type',10,'change_newstype'),(31,'Can delete news type',10,'delete_newstype'),(32,'Can view news type',10,'view_newstype');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$260000$RDiZwkdRwM0nkYWySM3RxJ$nsGIGcPn/F8idcvaZvmSh8oBlmYq3SYfCFNSmfOSAjU=','2022-04-04 11:50:44.596783',1,'mkchollangi','','','mkchollangi@adaequare.com',1,1,'2022-03-23 12:10:24.886290'),(2,'pbkdf2_sha256$260000$7BiynoB1aXwPNa8gyMxrSI$aJUBp1PTbI1ED5TPhjEtggc52SIrLyfMQBXH2h3/Kcc=',NULL,1,'nani','','','nani@gmail.com',1,1,'2022-03-24 07:08:06.291067');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-03-23 12:14:00.996490','7','NewsType object (7)',1,'[{\"added\": {}}]',7,1),(2,'2022-03-23 12:14:41.055453','8','NewsType object (8)',1,'[{\"added\": {}}]',7,1),(3,'2022-03-23 12:14:47.276430','8','NewsType object (8)',2,'[]',7,1),(4,'2022-03-23 13:03:26.395271','1','NewsDetails object (1)',1,'[{\"added\": {}}]',8,1),(5,'2022-03-23 13:27:58.625356','8','NewsType object (8)',3,'',7,1),(6,'2022-03-27 05:13:18.387585','9','NewsType object (9)',1,'[{\"added\": {}}]',7,1),(7,'2022-03-27 05:16:02.923066','9','NewsType object (9)',2,'[{\"changed\": {\"fields\": [\"News type\"]}}]',7,1),(8,'2022-04-01 10:31:30.959495','2','NewsDetails object (2)',1,'[{\"added\": {}}]',8,1),(9,'2022-04-01 10:38:25.026425','3','NewsDetails object (3)',1,'[{\"added\": {}}]',8,1),(10,'2022-04-01 10:42:11.646573','4','NewsDetails object (4)',1,'[{\"added\": {}}]',8,1),(11,'2022-04-01 10:44:51.716285','5','NewsDetails object (5)',1,'[{\"added\": {}}]',8,1),(12,'2022-04-01 10:58:53.593220','6','NewsDetails object (6)',1,'[{\"added\": {}}]',8,1),(13,'2022-04-01 11:01:01.908415','7','NewsDetails object (7)',1,'[{\"added\": {}}]',8,1),(14,'2022-04-04 11:53:35.062997','8','NewsDetails object (8)',1,'[{\"added\": {}}]',8,1),(15,'2022-04-04 12:24:19.481003','9','NewsDetails object (9)',1,'[{\"added\": {}}]',8,1),(16,'2022-04-05 09:53:51.035091','10','NewsDetails object (10)',1,'[{\"added\": {}}]',8,1),(17,'2022-04-05 10:12:04.815591','11','NewsDetails object (11)',1,'[{\"added\": {}}]',8,1),(18,'2022-04-05 10:17:51.915354','12','NewsDetails object (12)',1,'[{\"added\": {}}]',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(9,'newsapp','newsdetails'),(10,'newsapp','newstype'),(6,'sessions','session'),(8,'testapp','newsdetails'),(7,'testapp','newstype');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-03-23 12:09:26.985430'),(2,'auth','0001_initial','2022-03-23 12:09:27.985568'),(3,'admin','0001_initial','2022-03-23 12:09:28.230156'),(4,'admin','0002_logentry_remove_auto_add','2022-03-23 12:09:28.244898'),(5,'admin','0003_logentry_add_action_flag_choices','2022-03-23 12:09:28.261553'),(6,'contenttypes','0002_remove_content_type_name','2022-03-23 12:09:28.462844'),(7,'auth','0002_alter_permission_name_max_length','2022-03-23 12:09:28.555177'),(8,'auth','0003_alter_user_email_max_length','2022-03-23 12:09:28.584409'),(9,'auth','0004_alter_user_username_opts','2022-03-23 12:09:28.598915'),(10,'auth','0005_alter_user_last_login_null','2022-03-23 12:09:28.677239'),(11,'auth','0006_require_contenttypes_0002','2022-03-23 12:09:28.681380'),(12,'auth','0007_alter_validators_add_error_messages','2022-03-23 12:09:28.691487'),(13,'auth','0008_alter_user_username_max_length','2022-03-23 12:09:28.774747'),(14,'auth','0009_alter_user_last_name_max_length','2022-03-23 12:09:28.850459'),(15,'auth','0010_alter_group_name_max_length','2022-03-23 12:09:28.880632'),(16,'auth','0011_update_proxy_permissions','2022-03-23 12:09:28.893980'),(17,'auth','0012_alter_user_first_name_max_length','2022-03-23 12:09:28.990150'),(18,'sessions','0001_initial','2022-03-23 12:09:29.053367'),(19,'newsapp','0001_initial','2022-04-05 12:37:28.496864');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('02ae6e0qnhaqfn8smrlsvllim6l6xj6b','.eJxVjDsOwjAQRO_iGlle_01JnzNYXq-DA8iR4qRC3J1ESgHFNPPezJvFtK01br0scSJ2ZcAuvx2m_CztAPRI7T7zPLd1mZAfCj9p58NM5XU73b-Dmnrd18Ebkqi8R5XA-XE0ZC2IIAsGsFL7PSBAaZWTcag0GBDokAQpjdmxzxe0_jak:1nWzpf:bUH1KxW2wre_Pe5YHV7XovqN98zHa4neCXeiJHF12tM','2022-04-06 12:11:19.293961'),('hkcn0tvdn7nagvptvlb5896hfzgvqidi','.eJxVjDsOwjAQRO_iGlle_01JnzNYXq-DA8iR4qRC3J1ESgHFNPPezJvFtK01br0scSJ2ZcAuvx2m_CztAPRI7T7zPLd1mZAfCj9p58NM5XU73b-Dmnrd18Ebkqi8R5XA-XE0ZC2IIAsGsFL7PSBAaZWTcag0GBDokAQpjdmxzxe0_jak:1nbLEK:-YTrC-iV7RvALqcko0_GOueIb__nr2UfNqHLMDMpxF0','2022-04-18 11:50:44.601730');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_details`
--

DROP TABLE IF EXISTS `news_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news_details` (
  `slno` int NOT NULL AUTO_INCREMENT,
  `news_header` varchar(500) DEFAULT NULL,
  `news_data` text,
  `news_type` varchar(50) DEFAULT NULL,
  `news_images_urls` varchar(500) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `record_start_date` date DEFAULT NULL,
  `record_end_date` date DEFAULT NULL,
  PRIMARY KEY (`slno`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_details`
--

LOCK TABLES `news_details` WRITE;
/*!40000 ALTER TABLE `news_details` DISABLE KEYS */;
INSERT INTO `news_details` VALUES (1,'Pushkar Singh Dhami sworn in as Uttarakhand CM for second term','Pushkar Singh Dhami on Wednesday was sworn in as the Chief Minister of Uttarakhand for a second term. Governor Gurmit Singh administered the oath of office at a function at Parade Ground in Dehradun to Dhami.\r\n\r\nPrime Minister Narendra Modi, BJP chief J.P. Nadda, union ministers Amit Shah, Rajnath Singh, Nitin Gadkari, chief minister Yogi Adityanath and others were present at the swearing in ceremony.\r\n\r\nGovernor Singh also administered oaths to eight ministers of the Dhami governmen ..\r\n\r\nRead more at:\r\nhttps://economictimes.indiatimes.com/news/politics-and-nation/pushkar-singh-dhami-sworn-in-as-uttarakhand-cm-for-second-term/articleshow/90395763.cms?utm_source=contentofinterest&utm_medium=text&utm_campaign=cppst','POLITICAL','https://i0.wp.com/www.opindia.com/wp-content/uploads/2022/03/dhami.jpg?resize=696%2C398&ssl=1','2022-03-23','2022-03-20','2022-03-30'),(2,'గ్రూప్‌-1లో 110, గ్రూప్‌-2లో 182   రాష్ట్ర ప్రభుత్వం ఉత్తర్వులు జారీ   9 నెలల క్రితం 36 ఉద్యోగాలే  నిరుద్యోగుల్లో తీవ్ర వ్యతిరేకత  ఎట్టకేలకు పెంచుతూ అనుమతి','గ్రూప్‌-1లో 110 ఉద్యోగాలు,  గ్రూప్‌-2లో 182 ఉద్యోగాలు భర్తీ చేయడానికి ఏపీపీఎస్సీకి రాష్ట్ర ప్రభుత్వం అనుమతిచ్చింది. గురువారం ప్రభుత్వం ఈ మేరకు ఉత్తర్వులు జారీ చేసింది. వాస్తవానికి గత ఏడాది జూన్‌లో.. గ్రూప్‌-1, గ్రూప్‌-2 పోస్టుల భర్తీకి నోటిఫికేషన్‌ ప్రకటించింది. అందులో గ్రూప్‌-1 పోస్టులు 31, గ్రూప్‌-2 పోస్టులు 5 మాత్రమే ప్రకటించారు. దీనిపై నిరుద్యోగులు భగ్గుమన్నారు. దీంతో ఆ పోస్టులను కొంతమేర పెంచుతూ ప్రభుత్వం ఉత్తర్వులిచ్చింది. \r\nగ్రూప్‌-1లో ఉద్యోగాలు    \r\n\r\nడిప్యూటీ కలెక్టర్‌-10, వాణిజ్య పన్నుల అధికారి-12, జిల్లా రిజిస్ర్టార్‌, అసిస్టెంట్‌ ఇన్‌స్పెక్టర్‌ జనరల్‌ ఆఫ్‌ రిజిస్ర్టేషన్స్‌-6, డీఎస్పీ-13, డీఎస్పీ జైళ్లు (పురుషులు)-2, జిల్లా అగ్నిమాపక అధికారి-2, ఆర్టీవో-7, అసిస్టెంట్‌ కమిషనర్‌ ఆఫ్‌ లేబర్‌-3, మున్సిపల్‌ శాఖలో అసిస్టెంట్‌ కమిషనర్‌-1, మున్సిపల్‌ కమిషనర్‌ గ్రేడ్‌2-8, డిప్యూటీ రిజిస్ర్టార్‌ కో-ఆపరేటివ్‌ సొసైటీస్‌-2, వైద్యశాఖలో అడ్మినిస్ర్టేటివ్‌ అధికారి-15, ట్రెజరర్‌ గ్రేడ్‌2-5, ఆర్థికశాఖలో అసిస్టెంట్‌ ట్రెజరీ అధికారి-8, ఏఏవో-4, జిల్లా సోషల్‌ వెల్ఫేర్‌ అధికారి-1, జిల్లా బీసీ వెల్ఫేర్‌ అధికారి-3, జిలా ్లగిరిజన సంక్షేమఅధికారి-1, ఎంపీడీవో-7 పోస్టులున్నాయి. \r\n\r\n\r\n\r\nగ్రూప్‌-2లో ఉద్యోగాలు    \r\n\r\nడిప్యూటీ తహశీల్దార్‌-30, సబ్‌ రిజిస్ర్టార్‌ గ్రేడ్‌2-16, మున్సిపల్‌ కమిషనర్‌ గ్రేడ్‌2-5, అసిస్టెంట్‌ లేబర్‌ ఆఫీసర్‌-10, అసిస్టెంట్‌ రిజిస్ర్టార్‌ ఆఫ్‌ కో-ఆపరేటివ్‌ సొసైటీస్‌-15, జీఏడీ సచివాలయంలో ఏఎ్‌సవో-50, లా విభాగంలో ఏఎ్‌సవో-2, లెజిస్లేచర్‌ సెక్రటేరియట్‌లో అసిస్టెంట్‌ సెక్షన్‌ ఆఫీసర్‌-4, ఆర్థిక శాఖలో సీనియర్‌ అకౌంటెంట్‌-10, జూనియర్‌ అకౌంటెంట్‌-20 తదితర  పోస్టులు ఉన్నాయి.','JOBS','https://ajnews.andhrajyothy.com/appimg/galleries/1822040110432918/04012022104513n1.jpg','2022-04-01','2022-04-01','2022-04-01'),(3,'Russia Ukraine War News','Russian troops began leaving the Chernobyl nuclear plant after soldiers got “significant doses\" of radiation from digging trenches at the highly contaminated site, Ukraine’s state power company said Thursday as heavy fighting raged on the outskirts of Kyiv and other fronts.','INTERNATIONAL',NULL,'2022-04-01','2022-04-01','2022-04-01'),(4,'మోదీని హత్య చేస్తామంటూ ఎన్ఐఏకు ఈమెయిల్','న్యూఢిల్లీ: ప్రధానమంత్రి నరేంద్ర మోదీని హత్యచేస్తామని బెదిరిస్తూ జాతీయ దర్యాప్తు సంస్థ (ఎన్ఐఏ)కు ఒక అగంతకుడి నించి మెయిల్ వచ్చింది. దీంతో ఎన్ఐఏ అప్రమత్తమైంది. వేలాది మందిని హత్య చేసేందుకు తన వద్ద 20 కిలోల ఆర్‌డీఎక్స్ కూడా ఉన్నట్టు అగంతకుడు ఆ మెయిల్‌లో పేర్కొన్నాడు. ఈ పని నిర్వహించేందుకు, దేశంలో అత్యంత విషాద ఘటనను సృష్టించేందుకు సిద్ధంగా ఉన్న వ్యక్తులతో తాను టచ్‌లో ఉన్నానని, దేశవ్యాప్తంగా ఉన్న స్లీపర్ సెల్స్‌ను తాను ఫిబ్రవరి 28న యాక్టివేట్ చేసినట్టు అజ్ఞాత వ్యక్తి తెలిపాడు.\r\nప్రధానమంత్రి మోదీని చంపుతామని బెదరిస్తూ ఎన్ఐఏకు మెయిల్ రావడం ఇది మొదటిసారి కాదు. 2018లోనూ పుణె పోలీసులకు వచ్చిన ఒక లేఖలో రాజీవ్ గాంధీని హత్య చేసిన తరహాలోనే మోదీని హత్య చేసేందుకు కుట్ర పన్నామనే సమాచారం ఉంది. 1991 మే 21 శ్రీపెరంబుదూరులో శ్రీలంకకు చెందిన ఆత్మహుతి బాంబర్ జరిపిన దాడిలో రాజీవ్ గాంధీ  హత్యకు గురయ్యారు.','NATIONAL','https://th.bing.com/th/id/OIP.6RqDgR3iSkaAAfPx-O8HNwHaJg?pid=ImgDet&rs=1','2022-04-01','2022-04-01','2022-04-01'),(5,'అచ్ఛే దిన్‌ తెచ్చినందుకు థ్యాంక్యూ మోదీజీ!','హైదరాబాద్‌, మార్చి 31 (ఆంధ్రజ్యోతి): ఇంధన ధరలను కేంద్ర ప్రభుత్వం అదేపనిగా పెంచుతుండడంపై ఐటీ, మునిసిపల్‌ శాఖ మంత్రి కేటీఆర్‌ వ్యంగంగా స్పందించారు. పెట్రో ధరలు గత పది రోజుల్లో తొమ్మిదోసారి పెరిగాయని ఒక ఆంగ్ల మీడియా సంస్థ ప్రచురించిన కథనాన్ని ఆయన స్ర్కీన్‌షాట్‌ తీసి ట్విటర్‌లో షేర్‌ చేశారు. ‘అచ్ఛే దిన్‌ తెచ్చినందుకు థ్యాంక్యూ మోదీజీ’ అని వ్యాఖ్యానించారు. అలాగే యూపీఏ హయాంలో పెట్రో ధరలు పెరిగినప్పుడు నాడు గుజరాత్‌ ముఖ్యమంత్రిగా ఉన్న మోదీ.. కాంగ్రెస్‌ను విమర్శిస్తూ చేసిన వ్యాఖ్యలను కూడా కేటీఆర్‌ ఈ సందర్భంగా ప్రధానికి గుర్తు చేశారు. ‘‘మీ వ్యాఖ్యలే మీకు గుర్తుచేస్తున్నా? అప్పుడు యూపీఏ ప్రభుత్వం పెట్రో ధరలు పెంచితే, కేంద్ర ప్రభుత్వం విఫలమైందని, రాష్ర్టాల మీద భారం మోపుతోందని మీరు విమర్శించారు’’ అని కేటీఆర్‌ ట్వీట్‌ చేశారు.','TELANGANA','https://ajnews.andhrajyothy.com/appimg/galleries/1822040103122692/04012022053603n91.jpg','2022-04-01','2022-04-01','2022-04-01'),(6,'సీపీఎస్ రద్దుపై సీఎం జగన్ మరో కొత్త నాటకం..','సీపీఎస్ (కాంట్రిబ్యూటరీ పెన్షన్ స్కీమ్) రద్దుపై సీఎం జగన్ మరో కొత్త నాటకానికి తెరతీశారు. జాయింట్ స్టాఫ్ కౌన్సిల్ పేరుతో మరో మోసానికి తెగబడుతున్నారు. పీఆర్సీ విషయంలో అనుసరించిన వ్యూహాన్నే మళ్లీ అమలు చేస్తున్నారు. అధకారంలోకి వచ్చిన వారం రోజుల్లోనే సీపీఎస్‌ను రద్దు చేస్తామని ఊదరగొట్టారు. తీరా ఇప్పుడు కమిటీలతో కాలయాపన చేస్తున్నారు. దీంతో సీపీఎస్ ఉద్యోగులు ఏప్రిల్ 5న ఏలూరులో సమరశంఖారావానికి పిలుపు ఇచ్చారు. దీంతో అప్రమత్తమైన ప్రభుత్వం జాయింట్ స్టాప్ కౌన్సిల్‌ను చర్చలకు పిలిచింది. అయితే ఈ కౌన్సిల్‌లో సీపీఎస్ సాధన సమితులు లేకపోవడంతో సమావేశం ఎవరికోసమన్న ప్రశ్న వ్యక్తమవుతోంది. జాయింట్ స్టాఫ్ కౌన్సిల్ పేరుతో జగన్ సర్కార్ కొత్త నాటకానికి తెరతీసిందంటున్నారు.','ANDHRAPRADESH','https://ajnews.andhrajyothy.com/appimg/galleries/1822040112273123/04012022123059n46.jpg','2022-04-01','2022-04-01','2022-04-01'),(7,'ఆన్‌లైన్‌లో నిర్విరామంగా రేడియాలజీ క్లాసులు','ఐసీఆర్‌ఐ చైర్మన్‌ వేమూరి వరప్రసాద్‌ ప్రపంచ రికార్డు \r\n\r\nవరల్డ్‌ బుక్‌ ఆఫ్‌ రికార్డ్‌, ఇండియా బుక్‌ ఆఫ్‌ రికార్డ్స్‌లో స్థానం\r\n\r\n\r\n\r\nవిజయవాడ, మార్చి 31 (ఆంధ్రజ్యోతి): ఆన్‌లైన్‌లో నిరంతరాయంగా రేడియాలజీ తరగతులు నిర్వహించిన విజయవాడకు చెందిన ప్రముఖ రేడియాలజిస్టు డాక్టర్‌ వేమూరి వరప్రసాద్‌ ప్రపంచ రికార్డు నెలకొల్పుతూ వరల్డ్‌ బుక్‌ ఆఫ్‌ రికార్డ్స్‌, ఇండియా బుక్‌ రికార్డ్స్‌లో స్థానం సంపాదించారు. ఇండియన్‌ కాలేజ్‌ ఆఫ్‌ రేడియాలజీ అండ్‌ ఇమేజింగ్‌ (ఐసీఆర్‌ఐ) చైర్మన్‌ అయిన వరప్రసాద్‌ ఐసీఆర్‌ఐ అనుబంధ సంస్థ ఇండియన్‌ రేడియోలాజికల్‌ అండ్‌ ఇమేజింగ్‌ అసోసియేషన్‌ ఆధ్వర్యంలో రేడియాలజీ కన్సల్టెంట్లు, పోస్టు గ్రాడ్యుయేట్లకు గతేడాది ఫిబ్రవరి 1 నుంచి ఆన్‌లైన్‌లో బోధన కార్యక్రమాన్ని ప్రతిరోజూ నిరంతరాయంగా కొనసాగిస్తూ ప్రపంచ రికార్డు నెలకొల్పారు. ఆ కార్యక్రమం ఇప్పటికీ కొనసాగుతోంది. ప్రపంచంలోనే ఇదొక మహత్తరమైన కార్యక్రమంగా గుర్తించిన వరల్డ్‌ బుక్‌ ఆఫ్‌ రికార్డ్సు అధికారులు ఈ నెల 16న డాక్టర్‌ వరప్రసాద్‌కు ‘సర్టిఫికెట్‌ ఆఫ్‌ వరల్డ్‌ రికార్డు’ను ప్రదానం చేశారు. మార్చి 24 నుంచి 27 వరకు బెంగళూరులో నిర్వహించిన జాతీయ సదస్సులో కర్ణాటక ఉప ముఖ్యమంత్రి డాక్టర్‌ అశ్వత్థ నారాయణ ప్రపంచ రికార్డు సర్టిఫికెట్‌ను వరప్రసాద్‌కు అందజేశారు. ఈ నేపథ్యంలో గురువారం విజయవాడలో విలేకరులతో వరప్రసాద్‌ మాట్లాడుతూ.. ఈ కార్యక్రమాన్ని ప్రారంభించి ఇప్పటికి 425 రోజులు పూర్తయిందని, వచ్చే ఏడాది జనవరి 31 వరకు ఇలాగే కొనసాగించి రెండేళ్ల రికార్డును కూడా నెలకొల్పాలనే సంకల్పంతో ముందుకు వెళ్తున్నామని చెప్పారు.','EDUCATIONAL','https://ajnews.andhrajyothy.com/appimg/galleries/1','2022-04-01','2022-04-01','2022-04-01'),(8,'ఏపీలో కొత్త జిల్లాల ప్రారంభం రోజే ప్రజలపై ప్రభుత్వం బాదుడు','అమరావతి: ఏపీలో కొత్త జిల్లాల ప్రారంభం రోజే ప్రజలపై ప్రభుత్వం బాదుడు మొదలు పెట్టింది. జిల్లా కేంద్రాల్లో మార్కెట్‌ విలువను ప్రభుత్వం పెంచింది. మార్కెట్‌ విలువ పెంచేందుకు రిజిస్ట్రేషన్‌ శాఖకు అనుమతిచ్చింది. జిల్లా కేంద్రాల్లో మార్కెట్‌ విలువను పెంచుతూ స్పెషల్‌ చీఫ్‌ సెక్రటరీ రజత్‌ భార్గవ ఉత్తర్వులు జారీ చేశారు. కొత్తగా ఏర్పడిన 13 జిల్లాల కేంద్రాల్లో మార్కెట్‌ విలువ పెంచారు. ఆయా జిల్లా కేంద్రాల్లో ప్రస్తుత విలువ ఆధారంగా 20 నుంచి 50 శాతం వరకు పెంచుతూ ప్రభుత్వం ఉత్తర్వులిచ్చింది. జిల్లా కేంద్రం వచ్చిందని సంబరపడేలోపే ప్రజలపై ప్రభుత్వం బాదుడు మొదలు పెట్టింది.','ANDHRAPRADESH','https://ajnews.andhrajyothy.com/appimg/galleries/1822040404464223/04042022164834n23.jpg','2022-04-04','2022-04-04','2022-04-04'),(9,'కాసుల కోచింగ్‌!','విధులకు ప్రభుత్వ అధికారుల గైర్హాజరు\r\nశిక్షణ  కేంద్రాల్లో మకాం.. గంటల లెక్కన సంపాదన\r\nనల్లగొండ డిగ్రీ కాలేజీ అధ్యాపకుడికి ఏటా కోటి\r\nఅదే కేంద్రంలో గ్రూప్‌-2 అధికారికీ అంతే మొత్తం..\r\nపలు చోట్ల వ్యాయామ శిక్షణలో సీఐ, ఎస్సైలు\r\nడీఎస్సీ కోచింగ్‌ కేంద్రాలకు ఏపీ టీచర్ల క్యూ\r\nవేతనం, లాస్‌ ఆఫ్‌ పే ఇచ్చి మరీ నియామకం\r\nఅది హైదరాబాద్‌ అశోక్‌నగర్‌లో ప్రముఖ కోచింగ్‌ సెంటర్‌. ఐఏఎస్‌ అకాడమీగా ఉన్న ఆ కేంద్రం ఇటీవలే సరికొత్త భవనంలోకి మారింది. ఈ కోచింగ్‌ సెంటర్‌ నిర్వహణలో ఉస్మానియా యూనివర్సిటీ ప్రొఫెసర్‌ కీలకంగా ఉన్నారు. ఆయనకు వర్సిటీలో గతంలో ఉన్న పోటీ పరీక్షల కేంద్రం నిర్వహణలో అనుభవం ఉంది. ఆర్ట్స్‌ కాలేజీలో అత్యున్నత పదవిలో కొనసాగుతున్నారు. ఇలా ఎన్నో అంశాల్లో పనిమంతుడిగా పేరొందిన ఈ ప్రొఫెసర్‌ను అశోక్‌నగర్‌లోని ఓ కోచింగ్‌ సెంటర్‌ భాగస్వామిగా చేసుకున్నట్లు వినికిడి. కోచింగ్‌ సెంటర్‌ బ్రోచర్‌లో సబ్జెక్టు బోధించే వ్యక్తుల్లో ఆయన పేరు ఉంది.\r\n ఇదే శిక్షణ కేంద్రానికి సచివాలయంలో అసిస్టెంట్‌ సెక్షన్‌ ఆఫీసర్‌గా పనిచేసే ఉద్యోగి డైరెక్టర్‌గా కొనసాగుతున్నారు. అందులోనే ఓ సబ్జెక్టు బోధిస్తూ విధులకు డుమ్మా కొడుతున్నారు. ఉమ్మడి నల్లగొండ జిల్లాలోని ప్రభుత్వ డిగ్రీ కాలేజీలో రాజనీతి శాస్త్రం బోధించే అధ్యాపకుడు అశోక్‌నగర్‌లోని ప్రముఖ కోచింగ్‌ సెంటర్‌లోనూ అదే బోధన చేస్తారు. దోమలగూడలో తరగతులు నిర్వహించే ఈ కోచింగ్‌ సెంటర్‌ ఆయనకు ఏటా రూ.కోటికి పైగా చెల్లిస్తుందట. అక్కడ ఇతర ఫ్యాకల్టీకి గంట చొప్పున లెక్కలు గట్టి చెల్లింపులు చేస్తే.. ఈ అధ్యాపకుడిది రూ.కోటి ప్యాకేజీనని భోగట్టా..! సదరు అధ్యాపకుడు ఒక్కో బ్యాచ్‌కు 120 గంటలు బోధిస్తున్నట్లు తెలిసింది. మొన్నటి వరకు తెల్లవారుఝామున ఐదింటి నుంచి తరగతులు బోధించగా, తర్వాత ఆయన కాలేజీకి వెళ్లేవారు. ప్రస్తుతం బ్యాచ్‌లు పెరుగుతుండటంతో సర్దుబాటు చేసుకోవాలని సూచించగా, ఏకంగా ప్రభుత్వ ఉద్యోగానికే లీవ్‌ పెట్టారని తెలిసింది. ఇదే కోచింగ్‌ సెంటర్‌లో ఎకానమీ బోధించే గ్రూప్‌-2 అధికారి కూడా యేటా రూ.కోటి తీసుకుంటున్నట్లు సమాచారం. ప్రతి నెలా వేతనం వచ్చే ప్రభుత్వ విధులకు మాత్రం బహుదూరంగా ఉన్నట్లు తెలిసింది. యూనివర్సిటీల ప్రొఫెసర్లు.. ప్రభుత్వ డిగ్రీ, ఇంటర్‌ కాలేజీల అధ్యాపకులు.. ప్రభుత్వ పాఠశాలల టీచర్లకు ప్రస్తుతం ప్రైవేటు కోచింగ్‌ సెంటర్లు ఆదాయ వనరులుగా మారాయి. ప్రతి నెలా రూ.లక్షల్లో ప్రభుత్వ వేతనాలు పొందుతున్నా, ప్రైవేటు కోచింగ్‌ సెంటర్ల ద్వారా వచ్చే ఆదాయ సంతృప్తినే వేరని పలువురు భావిస్తున్నారు. జీతాలు చెల్లించే విద్యా సంస్థల కంటే.. ప్రైవేటు కోచింగ్‌ సెంటర్లలోనే అమితమైన ఆసక్తితో విద్యాబుద్ధులు నేర్పుతున్నారు. మొన్నటి వరకు కొంతమంది మాత్రమే ప్రభుత్వ విద్యా సంస్థల్లో వేతనాలు పొందుతూ ప్రైవేటు కోచింగ్‌ సెంటర్లలో బోధిస్తుండగా, ఇటీవల వీరి సంఖ్య మరింత పెరిగింది. కొందరు గ్రూపు-1, గ్రూపు-2 ఆఫీసర్లు, తహసీల్దార్లు, డిప్యుటీ తహసీల్దార్లు, సీనియర్‌, జూనియర్‌ అసిస్టెంట్లు, పంచాయతీ కార్యదర్శులు కూడా సబ్జెక్టు బోధన చేస్తున్నారు. మరికొందరు ఏకంగా హైదరాబాద్‌లో కోచింగ్‌ సెంటర్లు, పబ్లికేషన్లు, యూట్యూబ్‌ ఛానళ్లు, ప్రత్యేక యాప్‌లతో వ్యాపారాలు చేస్తున్నారు. వీరు మాత్రమే కాదు ఓ సీఐ, ఎస్‌ఐ ప్రైవేటు కోచింగ్‌ సెంటర్లలో వ్యాయామ శిక్షణ ఇస్తున్నారు. తెలంగాణలో డీఎస్సీ కోచింగ్‌ ఇచ్చేందుకు ఏపీకి చెందిన స్కూల్‌ అసిస్టెంట్లు, ఎస్జీటీలు బారులు కట్టారంటే కోచింగ్‌ సెంటర్ల ద్వారా వచ్చే ఆదాయం ఏ స్థాయిలో ఉందో అవగతమవుతోంది.','JOBS',NULL,'2022-04-04','2022-04-04','2022-04-04'),(10,'\'Tired of Waiting\': Son of Sonia\'s Top Lieutenant Ahmed Patel \'Opens His Options\' Before Gujarat Polls','Faisal Patel, son of late veteran Congress leader Ahmed Patel, had openly expressed his resentment against the grand-old party and added that he is keeping his options open as “he has been tired of waiting”.\r\n\r\nIn a cryptic tweet targeted at Congress, Patel said, “Tired of waiting around. No encouragement from the top brass. Keeping my options open.”','POLITICAL','https://images.news18.com/ibnlive/uploads/2022/04/1600-x-1600-69-16491460933x2.jpg?impolicy=website&width=510&height=356','2022-04-05','2022-04-05','2022-04-05'),(11,'UP CM Yogi Adityanath to Review 100-Day Action Plan by Ministers Today','In the first meeting of the council of ministers after the swearing-in on March 25, the ministers were asked by CM Yogi Adityanath to prepare a target of 100 days for their respective departments.Inn no mood to leave any room for laxity, Uttar Pradesh Chief Minister Yogi Adityanath has asked all the ministers in his cabinet to be ready with an action plan for next 100 days. CM Yogi Adityanath will also be taking a presentation on the 100-day plan from ministers on Tuesday in Lucknow.\r\n\r\nIn the first meeting of the council of ministers after the swearing-in on March 25, the ministers were asked by CM Yogi Adityanath to prepare a target of 100 days for their respective departments. For this, ministers were also asked to prepare the status of their respective departments and chalk out agenda for the coming 100 days.\r\n\r\nThe 100-day action plan will be presented by the ministers and reviewed by CM Yogi Adityanath on Tuesday at Lok Bhawan in Lucknow.\r\n\r\nThe ministers have also been asked to present the account of their department.','POLITICAL','https://images.news18.com/ibnlive/uploads/2022/03/yogi-adityanath-4-16476161773x2.jpg?impolicy=website&width=510&height=356','2022-04-05','2022-04-05','2022-04-05'),(12,'Ukraine crisis: Indian Banks’ Association to asses impact of outstanding student loans','₹121 crore owed by 1,319 students forced to return due to conflict\r\nUnion Finance Minister Nirmala Sitharaman on Monday told Parliament that the government has decided to ask the Indian Banks’ Association (IBA) to assess the impact of the conflict in Ukraine on outstanding education loans of the students who were forced to return from that country. The Association will initiate stakeholder consultations in this regard.\r\n\r\nAs many as 1,319 students had availed of education loans for study in Ukraine with an outstanding balance of ₹121.61 crore, the Minister said in a written reply to Lok Sabha. She was quoting information provided by the IBA from public sector banks and 21 private sector banks as on December 31, 2021.','NATIONAL','https://www.thehindu.com/incoming/nzmjbh/article65290288.ece/alternates/FREE_1200/IMG_Indian_students_retu_2_1_VE9J9GCP.jpg','2022-04-05','2022-04-05','2022-04-05');
/*!40000 ALTER TABLE `news_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_type`
--

DROP TABLE IF EXISTS `news_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news_type` (
  `slno` int NOT NULL AUTO_INCREMENT,
  `news_type` varchar(50) DEFAULT NULL,
  `new_type_display` varchar(100) DEFAULT NULL,
  `record_start_date` date DEFAULT NULL,
  `record_end_date` date DEFAULT NULL,
  PRIMARY KEY (`slno`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_type`
--

LOCK TABLES `news_type` WRITE;
/*!40000 ALTER TABLE `news_type` DISABLE KEYS */;
INSERT INTO `news_type` VALUES (1,'POLITICAL','Politics','2022-03-03','2022-03-03'),(2,'NATIONAL','National','2022-03-03','2022-03-03'),(3,'INTERNATIONAL','International','2022-03-03','2022-03-03'),(4,'TELANGANA','Telangana','2022-03-03','2022-03-03'),(5,'ANDHRAPRADESH','Andhrapradesh','2022-03-03','2022-03-03'),(6,'DISTRICT','District','2022-03-03','2022-03-03'),(7,'JOBS','Jobs','2022-03-11','2022-03-31'),(9,'EDUCATIONAL','Education','2022-03-27','2022-03-27');
/*!40000 ALTER TABLE `news_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-06 15:10:15
