-- MySQL dump 10.13  Distrib 5.7.22, for osx10.11 (x86_64)
--
-- Host: localhost    Database: mma5
-- ------------------------------------------------------
-- Server version	5.7.22

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
-- Table structure for table `accounts_user`
--
DROP DATABASE IF EXISTS `mma5`;

CREATE DATABASE `mma5`;

DROP TABLE IF EXISTS `accounts_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `mobile_number` varchar(10) NOT NULL,
  `street_number` varchar(4) NOT NULL,
  `street_name` varchar(40) NOT NULL,
  `suburb` varchar(20) NOT NULL,
  `state` varchar(3) NOT NULL,
  `post_code` varchar(4) NOT NULL,
  `under_18` tinyint(1) NOT NULL,
  `guardian_first_name` varchar(40) NOT NULL,
  `guardian_last_name` varchar(40) NOT NULL,
  `guardian_mobile_number` varchar(10) NOT NULL,
  `guardian_email` varchar(254) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_user`
--

LOCK TABLES `accounts_user` WRITE;
/*!40000 ALTER TABLE `accounts_user` DISABLE KEYS */;
INSERT INTO `accounts_user` VALUES (1,'pbkdf2_sha256$100000$tx7uu8Y2gyVT$PkPfy+IzNxYWEAbEMPJL8lDiqAFHz6SOM4uyI1xVlbQ=','2018-05-22 19:02:58.197717',1,'admin','Mika','Williams','admin@mma.com.au',1,1,'2018-05-15 12:02:51.000000','','','','','QLD','',0,'','','',''),(6,'pbkdf2_sha256$100000$rcuMUtczxuuF$A7zoY4BR4lu73nFI/CszGhRjWvEX2YMmcHegO1n4O/g=','2018-05-22 18:49:00.967301',0,'jacobbullock','Jacob','Bullock','jacobbullock95@gmail.com',0,1,'2018-05-22 18:45:27.000000','0468918213','88','Doggett Street','NEWSTEAD','QLD','4006',0,'Mrs','Bullock','0123456789','nicolebullock@email.com'),(7,'pbkdf2_sha256$100000$w1csExTdT163$pLZ6mocAjzq9O4z9LzxBEdUhzNP/DpIABm+P9l3L6LI=',NULL,0,'nickpettigrew','Nick','Pettigrew','nickpettigrew@email.com',0,1,'2018-05-22 18:47:57.717788','0123456789','2','George Street','Brisbane','QLD','4000',0,'','','',''),(8,'pbkdf2_sha256$100000$tzuP4XxQUlmN$dgGFz3/QfXDSnKRbY13DonPSCrLFaxvEfulKmBcUxwM=',NULL,0,'kennethcheung','Kenneth','Cheung','kennethcheung@email.com',0,1,'2018-05-22 18:57:31.243195','0123456789','2','George Street','Brisbane','QLD','4000',0,'','','',''),(9,'pbkdf2_sha256$100000$JM68F6I7bljf$HCe7rSH4JyrKI9+m/Yh2ZYMwPWdinTF+hnZywkM1jAs=',NULL,0,'sebastianpeeler','Sebastian','Peeler','sebastianpeeler@email.com',0,1,'2018-05-22 18:58:08.124314','0123456789','2','George Street','Brisbane','QLD','4000',0,'','','',''),(10,'pbkdf2_sha256$100000$MWQKAKtE5TmP$kECZL+YTrq1vARokqsmhidH3qy5YGDJVMqxnzk0nh+Q=',NULL,0,'alexbutler','Alex','Butler','sebastianpeeler@email.com',0,1,'2018-05-22 18:58:34.763084','0123456789','2','George Street','Brisbane','QLD','4000',0,'','','',''),(11,'pbkdf2_sha256$100000$uavGpVQlzmPA$8wi/hW8NCGRpGIbmYhApZi/4mxPhy2mRG72WEU9CEuQ=','2018-05-22 19:00:12.000000',0,'hanszimmer','Hans','Zimmer','hz@email.com',0,1,'2018-05-22 18:59:49.000000','0123456789','1','Fake Street','Brisbane','QLD','4000',0,'','','','');
/*!40000 ALTER TABLE `accounts_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_user_groups`
--

DROP TABLE IF EXISTS `accounts_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `accounts_user_groups_user_id_group_id_59c0b32f_uniq` (`user_id`,`group_id`),
  KEY `accounts_user_groups_group_id_bd11a704_fk_auth_group_id` (`group_id`),
  CONSTRAINT `accounts_user_groups_group_id_bd11a704_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `accounts_user_groups_user_id_52b62117_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_user_groups`
--

LOCK TABLES `accounts_user_groups` WRITE;
/*!40000 ALTER TABLE `accounts_user_groups` DISABLE KEYS */;
INSERT INTO `accounts_user_groups` VALUES (5,6,3),(6,7,3),(7,8,3),(8,9,3),(9,10,3),(10,11,4);
/*!40000 ALTER TABLE `accounts_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_user_user_permissions`
--

DROP TABLE IF EXISTS `accounts_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `accounts_user_user_permi_user_id_permission_id_2ab516c2_uniq` (`user_id`,`permission_id`),
  KEY `accounts_user_user_p_permission_id_113bb443_fk_auth_perm` (`permission_id`),
  CONSTRAINT `accounts_user_user_p_permission_id_113bb443_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `accounts_user_user_p_user_id_e4f0a161_fk_accounts_` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_user_user_permissions`
--

LOCK TABLES `accounts_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `accounts_user_user_permissions` DISABLE KEYS */;
INSERT INTO `accounts_user_user_permissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,16),(17,1,17),(18,1,18),(19,1,19),(20,1,20),(21,1,21),(22,1,22),(23,1,23),(24,1,24);
/*!40000 ALTER TABLE `accounts_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (3,'Student'),(4,'Teacher');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add lesson',7,'add_lesson'),(20,'Can change lesson',7,'change_lesson'),(21,'Can delete lesson',7,'delete_lesson'),(22,'Can add user',8,'add_user'),(23,'Can change user',8,'change_user'),(24,'Can delete user',8,'delete_user');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$100000$UXWverx2GDK0$pRKCMMgatNTTHUkftMDnZKeCYRDLOk25KRLDwmmN5zg=','2018-05-15 12:21:06.764833',1,'admin','','','admin@mma.com.au',1,1,'2018-05-15 12:20:56.938116'),(2,'pbkdf2_sha256$100000$04HMi0sYn3p0$O+Miep3tXU0CGAWUJez/SqPhpFOtn3h5xw2debUUJUY=','2018-05-15 12:22:07.000000',0,'jacobbullock','Jacob','Bullock','jacobbullock95@gmail.com',0,1,'2018-05-15 12:21:29.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,2,3);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (3,'2018-05-15 12:21:29.818933','2','jacobbullock',1,'[{\"added\": {}}]',4,1),(4,'2018-05-15 12:21:44.290343','3','Student',1,'[{\"added\": {}}]',3,1),(5,'2018-05-15 12:21:50.883065','4','Teacher',1,'[{\"added\": {}}]',3,1),(6,'2018-05-15 12:22:09.313491','2','jacobbullock',2,'[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\", \"last_login\"]}}]',4,1),(7,'2018-05-15 12:32:31.902367','1','Lesson object (1)',1,'[{\"added\": {}}]',7,1),(8,'2018-05-15 12:41:37.538166','2','testuser',1,'[{\"added\": {}}]',8,1),(9,'2018-05-15 12:41:53.166101','2','testuser',2,'[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\", \"last_login\"]}}]',8,1),(10,'2018-05-15 12:57:32.880600','3','teststudent',1,'[{\"added\": {}}]',8,1),(11,'2018-05-15 12:58:03.871156','3','teststudent',2,'[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\", \"last_login\"]}}]',8,1),(12,'2018-05-15 12:58:10.356200','1','Lesson object (1)',2,'[{\"changed\": {\"fields\": [\"lesson_student\", \"lesson_teacher\"]}}]',7,1),(13,'2018-05-22 18:38:44.164086','1','admin',2,'[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"user_permissions\"]}}]',8,1),(14,'2018-05-22 18:38:58.294981','1','admin',2,'[]',8,1),(15,'2018-05-22 18:43:19.859134','4','johndoe',3,'',8,1),(16,'2018-05-22 18:43:19.862545','5','Nick',3,'',8,1),(17,'2018-05-22 18:43:19.865872','3','teststudent',3,'',8,1),(18,'2018-05-22 18:43:19.870056','2','testuser',3,'',8,1),(19,'2018-05-22 18:46:05.801970','6','jacobbullock',2,'[]',8,1),(20,'2018-05-22 18:59:50.027214','11','hanszimmer',1,'[{\"added\": {}}]',8,1),(21,'2018-05-22 19:00:13.541797','11','hanszimmer',2,'[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\", \"last_login\"]}}]',8,1),(22,'2018-05-22 19:03:13.384937','2','Lesson object (2)',1,'[{\"added\": {}}]',7,1),(23,'2018-05-22 19:03:30.183437','3','Lesson object (3)',1,'[{\"added\": {}}]',7,1),(24,'2018-05-22 19:03:51.677148','4','Lesson object (4)',1,'[{\"added\": {}}]',7,1),(25,'2018-05-22 19:04:05.831328','5','Lesson object (5)',1,'[{\"added\": {}}]',7,1),(26,'2018-05-22 19:04:20.147732','6','Lesson object (6)',1,'[{\"added\": {}}]',7,1),(27,'2018-05-22 19:04:36.835968','7','Lesson object (7)',1,'[{\"added\": {}}]',7,1),(28,'2018-05-22 19:04:50.231635','8','Lesson object (8)',1,'[{\"added\": {}}]',7,1),(29,'2018-05-22 19:05:04.355568','9','Lesson object (9)',1,'[{\"added\": {}}]',7,1),(30,'2018-05-22 19:05:18.901539','10','Lesson object (10)',1,'[{\"added\": {}}]',7,1),(31,'2018-05-22 19:05:31.172320','11','Lesson object (11)',1,'[{\"added\": {}}]',7,1),(32,'2018-05-22 19:05:43.543997','12','Lesson object (12)',1,'[{\"added\": {}}]',7,1),(33,'2018-05-22 19:05:55.353480','13','Lesson object (13)',1,'[{\"added\": {}}]',7,1),(34,'2018-05-22 19:06:10.105260','14','Lesson object (14)',1,'[{\"added\": {}}]',7,1),(35,'2018-05-22 19:06:21.157758','15','Lesson object (15)',1,'[{\"added\": {}}]',7,1),(36,'2018-05-22 19:06:34.914545','16','Lesson object (16)',1,'[{\"added\": {}}]',7,1),(37,'2018-05-22 19:06:58.033061','5','Lesson object (5)',2,'[{\"changed\": {\"fields\": [\"lesson_time\"]}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (8,'accounts','user'),(1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'schedule','lesson'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-05-15 11:49:26.763047'),(2,'auth','0001_initial','2018-05-15 11:49:27.395511'),(3,'admin','0001_initial','2018-05-15 11:49:27.525770'),(4,'admin','0002_logentry_remove_auto_add','2018-05-15 11:49:27.539409'),(5,'contenttypes','0002_remove_content_type_name','2018-05-15 11:49:27.652409'),(6,'auth','0002_alter_permission_name_max_length','2018-05-15 11:49:27.709349'),(7,'auth','0003_alter_user_email_max_length','2018-05-15 11:49:27.769987'),(8,'auth','0004_alter_user_username_opts','2018-05-15 11:49:27.782731'),(9,'auth','0005_alter_user_last_login_null','2018-05-15 11:49:27.835859'),(10,'auth','0006_require_contenttypes_0002','2018-05-15 11:49:27.840358'),(11,'auth','0007_alter_validators_add_error_messages','2018-05-15 11:49:27.852884'),(12,'auth','0008_alter_user_username_max_length','2018-05-15 11:49:27.975978'),(13,'auth','0009_alter_user_last_name_max_length','2018-05-15 11:49:28.037999'),(14,'sessions','0001_initial','2018-05-15 11:49:28.093124'),(15,'schedule','0001_initial','2018-05-15 11:53:39.879395'),(16,'accounts','0001_initial','2018-05-15 12:00:34.418871'),(17,'accounts','0002_auto_20180515_1215','2018-05-15 12:15:55.787911'),(18,'schedule','0002_auto_20180515_1254','2018-05-15 12:54:22.942385');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('ar9rn8zh7q1ko7e06gqp1sjgxmofvcif','ZTdhZmE5ZmZlNjU4M2ViYzIwYzQzNTM5ZTBjOGRmYjM5MTAyYjlmZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YWY2OTBkMTdlNmFmZWZmNDVjYzM3N2JjYWExNzA3YzE4MGExOTFjIn0=','2018-06-05 19:02:58.202014');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_lesson`
--

DROP TABLE IF EXISTS `schedule_lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule_lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lesson_time` datetime(6) NOT NULL,
  `lesson_duration` varchar(3) NOT NULL,
  `lesson_location` varchar(2) NOT NULL,
  `lesson_student_id` int(11) NOT NULL,
  `lesson_teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `schedule_lesson_lesson_student_id_12a61b1a_fk_accounts_user_id` (`lesson_student_id`),
  KEY `schedule_lesson_lesson_teacher_id_57eda47f_fk_accounts_user_id` (`lesson_teacher_id`),
  CONSTRAINT `schedule_lesson_lesson_student_id_12a61b1a_fk_accounts_user_id` FOREIGN KEY (`lesson_student_id`) REFERENCES `accounts_user` (`id`),
  CONSTRAINT `schedule_lesson_lesson_teacher_id_57eda47f_fk_accounts_user_id` FOREIGN KEY (`lesson_teacher_id`) REFERENCES `accounts_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_lesson`
--

LOCK TABLES `schedule_lesson` WRITE;
/*!40000 ALTER TABLE `schedule_lesson` DISABLE KEYS */;
INSERT INTO `schedule_lesson` VALUES (2,'2018-05-22 18:00:00.000000','60','A1',6,11),(3,'2018-05-30 06:00:00.000000','120','A3',6,11),(4,'2018-05-31 15:00:00.000000','120','A0',6,11),(5,'2018-05-21 18:00:00.000000','60','A0',7,11),(6,'2018-06-01 12:00:00.000000','120','A2',7,11),(7,'2018-07-25 18:00:00.000000','60','A4',7,11),(8,'2018-06-05 12:00:00.000000','60','A0',8,11),(9,'2018-05-29 19:05:02.000000','120','A2',8,11),(10,'2018-05-29 06:00:00.000000','90','A1',8,11),(11,'2018-08-10 06:00:00.000000','120','A1',10,11),(12,'2018-05-31 12:00:00.000000','90','A2',10,11),(13,'2018-07-30 06:00:00.000000','60','A0',10,11),(14,'2018-05-30 12:00:00.000000','120','A3',9,11),(15,'2018-05-28 12:00:00.000000','60','A0',9,11),(16,'2018-06-02 06:00:00.000000','60','A4',9,11);
/*!40000 ALTER TABLE `schedule_lesson` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-23  5:09:02
