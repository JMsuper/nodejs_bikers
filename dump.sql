-- MySQL dump 10.13  Distrib 5.7.36, for Linux (x86_64)
--
-- Host: localhost    Database: bikers
-- ------------------------------------------------------
-- Server version	5.7.36-0ubuntu0.18.04.1

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (0,'125cc 미만'),(1,'125cc 이상'),(2,'안전장비'),(3,'튜닝용품'),(4,'헬멧'),(5,'블루투스'),(6,'마스크'),(7,'자켓'),(8,'글러브'),(9,'팬츠'),(10,'부츠'),(11,'블랙박스'),(12,'슈트'),(13,'기타용품');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_message`
--

DROP TABLE IF EXISTS `chat_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat_message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `room_id` int(11) NOT NULL,
  `writer_id` varchar(36) NOT NULL,
  `contents` varchar(200) NOT NULL,
  `isviewed` tinyint(4) DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`message_id`),
  KEY `room_id` (`room_id`),
  CONSTRAINT `chat_message_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `chat_room` (`room_id`)
) ENGINE=InnoDB AUTO_INCREMENT=326 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_message`
--

LOCK TABLES `chat_message` WRITE;
/*!40000 ALTER TABLE `chat_message` DISABLE KEYS */;
INSERT INTO `chat_message` VALUES (1,1,'jP1wRAE05gNnQc9edeoo4MGvMfo2','hello',0,'2021-10-12 12:15:30'),(2,2,'jP1wRAE05gNnQc9edeoo4MGvMfo2','hello',0,'2021-10-12 12:15:33'),(3,2,'UkgImo2tBZP1rsRowOwom6vNoO82','hello',0,'2021-10-12 12:15:53'),(4,1,'UkgImo2tBZP1rsRowOwom6vNoO82','hello',0,'2021-10-12 12:15:56'),(5,1,'UkgImo2tBZP1rsRowOwom6vNoO82','it is new',0,'2021-10-12 12:27:18'),(6,2,'UkgImo2tBZP1rsRowOwom6vNoO82','it is new 2',0,'2021-10-12 12:28:14'),(7,2,'UkgImo2tBZP1rsRowOwom6vNoO82','this is update test',0,'2021-10-26 04:05:46'),(8,2,'UkgImo2tBZP1rsRowOwom6vNoO82','this is update test',0,'2021-10-26 04:06:27'),(9,2,'UkgImo2tBZP1rsRowOwom6vNoO82','this is update test',0,'2021-10-26 04:06:41'),(11,1,'UkgImo2tBZP1rsRowOwom6vNoO82','this is update test new',0,'2021-10-26 04:07:23'),(12,1,'UkgImo2tBZP1rsRowOwom6vNoO82','it can\'t insert to tables because this is Hangul',0,'2021-10-26 05:04:27'),(13,1,'UkgImo2tBZP1rsRowOwom6vNoO82','it can\'t insert to tables because this is Hangul',0,'2021-10-26 05:06:03'),(14,1,'UkgImo2tBZP1rsRowOwom6vNoO82','it can\'t insert to tables because this is Hangul',0,'2021-10-26 05:08:08'),(15,1,'UkgImo2tBZP1rsRowOwom6vNoO82','it can\'t insert to tables because this is Hangul',0,'2021-10-26 05:09:21'),(16,1,'UkgImo2tBZP1rsRowOwom6vNoO82','it can\'t insert to tables because this is Hangul',0,'2021-10-26 05:09:29'),(18,1,'UkgImo2tBZP1rsRowOwom6vNoO82','it can\'t insert to tables because this is Hangul',0,'2021-10-26 05:10:57'),(19,1,'UkgImo2tBZP1rsRowOwom6vNoO82','it can\'t insert to tables because this is Hangul',0,'2021-10-26 05:12:43'),(20,1,'UkgImo2tBZP1rsRowOwom6vNoO82','it can\'t insert to tables because this is Hangul',0,'2021-10-29 07:51:13'),(21,10,'UXumXkZpqGSYeQ1zSe8YhFZxbVj1','it can\'t insert to tables because this is Hangul',0,'2021-10-30 05:24:59'),(36,23,'UXumXkZpqGSYeQ1zSe8YhFZxbVj1','jihu',0,'2021-10-30 06:47:37'),(37,23,'UXumXkZpqGSYeQ1zSe8YhFZxbVj1','is. it’s ok',0,'2021-10-30 06:48:50'),(38,24,'UkgImo2tBZP1rsRowOwom6vNoO82','hello',0,'2021-10-30 07:01:51'),(39,24,'UkgImo2tBZP1rsRowOwom6vNoO82','hirv',0,'2021-10-30 07:02:28'),(40,24,'UkgImo2tBZP1rsRowOwom6vNoO82','hirvyuke',0,'2021-10-30 07:02:41'),(41,24,'UkgImo2tBZP1rsRowOwom6vNoO82','gjtwmoxyf',0,'2021-10-30 07:07:47'),(42,24,'UkgImo2tBZP1rsRowOwom6vNoO82','hey',0,'2021-10-30 07:35:39'),(43,24,'UkgImo2tBZP1rsRowOwom6vNoO82','hey',0,'2021-10-30 07:46:39'),(44,24,'UXumXkZpqGSYeQ1zSe8YhFZxbVj1','why',0,'2021-10-30 07:46:46'),(45,1,'jP1wRAE05gNnQc9edeoo4MGvMfo2','hi',0,'2021-10-30 07:54:34'),(46,1,'UkgImo2tBZP1rsRowOwom6vNoO82','how are you',0,'2021-10-30 07:54:44'),(47,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','hiu',0,'2021-10-30 07:58:38'),(48,25,'UkgImo2tBZP1rsRowOwom6vNoO82','hldwa',0,'2021-10-30 07:58:58'),(49,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','kjiu',0,'2021-10-30 07:59:28'),(50,25,'UkgImo2tBZP1rsRowOwom6vNoO82','monday',0,'2021-10-30 07:59:40'),(51,2,'jP1wRAE05gNnQc9edeoo4MGvMfo2','jijbiu',0,'2021-10-30 08:01:22'),(52,25,'UkgImo2tBZP1rsRowOwom6vNoO82','Hey',0,'2021-10-30 08:59:46'),(53,25,'UkgImo2tBZP1rsRowOwom6vNoO82','Hey',0,'2021-10-30 08:59:51'),(54,25,'UkgImo2tBZP1rsRowOwom6vNoO82','Ye',0,'2021-10-30 09:02:12'),(55,25,'UkgImo2tBZP1rsRowOwom6vNoO82','Hey',0,'2021-10-30 09:02:47'),(56,25,'UkgImo2tBZP1rsRowOwom6vNoO82','You',0,'2021-10-30 09:02:57'),(57,25,'UkgImo2tBZP1rsRowOwom6vNoO82','So',0,'2021-10-30 09:03:04'),(58,25,'UkgImo2tBZP1rsRowOwom6vNoO82','Hkaiw',0,'2021-10-30 09:05:57'),(59,25,'UkgImo2tBZP1rsRowOwom6vNoO82','Obba',0,'2021-10-30 09:08:36'),(60,25,'UkgImo2tBZP1rsRowOwom6vNoO82','Gjeys',0,'2021-10-30 09:08:53'),(61,25,'UkgImo2tBZP1rsRowOwom6vNoO82','Uohes',0,'2021-10-30 09:09:29'),(62,25,'UkgImo2tBZP1rsRowOwom6vNoO82','Heid',0,'2021-10-30 09:09:43'),(63,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Hi',0,'2021-10-30 09:13:10'),(64,25,'UkgImo2tBZP1rsRowOwom6vNoO82','Hi',0,'2021-10-30 09:13:21'),(65,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Hijhu',0,'2021-10-30 09:13:44'),(66,25,'UkgImo2tBZP1rsRowOwom6vNoO82','Whats wrong',0,'2021-10-30 09:14:15'),(67,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Jnij',0,'2021-10-30 09:14:30'),(68,25,'UkgImo2tBZP1rsRowOwom6vNoO82','Hdid',0,'2021-10-30 09:14:52'),(69,25,'UkgImo2tBZP1rsRowOwom6vNoO82','Gwjdbf',0,'2021-10-30 09:14:54'),(70,25,'UkgImo2tBZP1rsRowOwom6vNoO82','Ehwid',0,'2021-10-30 09:14:55'),(71,25,'UkgImo2tBZP1rsRowOwom6vNoO82','Hciehe',0,'2021-10-30 09:14:57'),(72,25,'UkgImo2tBZP1rsRowOwom6vNoO82','Qjqhz',0,'2021-10-30 09:14:58'),(73,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Jkj',0,'2021-10-30 09:15:10'),(74,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Kjh',0,'2021-10-30 09:15:11'),(75,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Hh',0,'2021-10-30 09:15:12'),(76,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','He',0,'2021-10-30 09:15:12'),(77,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','He',0,'2021-10-30 09:15:12'),(78,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','H',0,'2021-10-30 09:15:12'),(79,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','H',0,'2021-10-30 09:15:13'),(80,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','H',0,'2021-10-30 09:15:13'),(81,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','H\nHh',0,'2021-10-30 09:15:14'),(82,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','H\nHhh',0,'2021-10-30 09:15:14'),(83,25,'UkgImo2tBZP1rsRowOwom6vNoO82','Rgh',0,'2021-10-30 09:29:54'),(84,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Jk',0,'2021-10-30 09:30:07'),(85,25,'UkgImo2tBZP1rsRowOwom6vNoO82','Grg',0,'2021-10-30 09:30:16'),(86,25,'UkgImo2tBZP1rsRowOwom6vNoO82','Eyrdji',0,'2021-10-30 09:30:23'),(87,25,'UkgImo2tBZP1rsRowOwom6vNoO82','Gwidhs',0,'2021-10-30 09:30:35'),(88,10,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Efwgegsgge',0,'2021-10-30 09:33:15'),(89,10,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Jj',0,'2021-10-30 09:33:44'),(90,25,'UkgImo2tBZP1rsRowOwom6vNoO82','Hey',0,'2021-10-30 09:36:09'),(91,25,'UkgImo2tBZP1rsRowOwom6vNoO82','Are you there?',0,'2021-10-30 09:36:17'),(92,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Yes',0,'2021-10-30 09:36:23'),(93,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','I’m here',0,'2021-10-30 09:36:28'),(94,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Heeey',0,'2021-10-30 09:39:58'),(95,25,'UkgImo2tBZP1rsRowOwom6vNoO82','Hey',0,'2021-10-30 09:50:51'),(96,25,'UkgImo2tBZP1rsRowOwom6vNoO82','Hey you',0,'2021-10-30 09:50:56'),(97,25,'UkgImo2tBZP1rsRowOwom6vNoO82','Gwid',0,'2021-10-30 09:54:34'),(98,25,'UkgImo2tBZP1rsRowOwom6vNoO82','Feushf',0,'2021-10-30 10:01:03'),(99,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Ljogegdf',0,'2021-10-30 10:01:35'),(100,25,'UkgImo2tBZP1rsRowOwom6vNoO82','Fsir',0,'2021-10-30 10:12:40'),(101,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Eff',0,'2021-10-30 11:01:31'),(102,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Efeeef',0,'2021-10-30 13:15:06'),(103,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Dfdf',0,'2021-10-30 13:16:21'),(104,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Kjl',0,'2021-10-30 13:28:28'),(105,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Kokjjj',0,'2021-10-30 13:59:31'),(106,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Jkjh',0,'2021-10-30 14:03:11'),(107,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Feff',0,'2021-10-30 14:03:40'),(108,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Dfdfdfd',0,'2021-10-30 14:10:52'),(109,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Eeeeeef',0,'2021-10-30 14:11:15'),(110,25,'UkgImo2tBZP1rsRowOwom6vNoO82','Fjiehwia',0,'2021-10-30 14:11:37'),(111,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Kkjh',0,'2021-10-30 14:11:52'),(112,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Jkjhkj',0,'2021-10-30 14:12:12'),(113,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Lj',0,'2021-10-30 14:13:43'),(114,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Ddfdf',0,'2021-10-30 14:14:25'),(115,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Ddfdfdf',0,'2021-10-30 14:14:36'),(116,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Jjhkj',0,'2021-10-30 14:17:30'),(117,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Ljkjhkjh',0,'2021-10-30 14:17:57'),(118,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Dfdfdddf',0,'2021-10-30 14:19:00'),(119,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Dfffdfdfdf',0,'2021-10-30 15:19:40'),(120,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Vxdge',0,'2021-10-30 15:20:06'),(121,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Wfffddf',0,'2021-10-30 15:20:06'),(122,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Ssdf',0,'2021-10-30 15:20:20'),(123,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Ddddfdf',0,'2021-10-30 15:20:25'),(124,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Lljrlsigd',0,'2021-10-30 15:20:29'),(125,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Khkj',0,'2021-10-30 15:22:01'),(126,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Kkjooon',0,'2021-10-30 15:22:43'),(127,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Lnok',0,'2021-10-30 15:22:51'),(128,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Ffgfg',0,'2021-10-30 15:23:44'),(129,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Ddfdf',0,'2021-10-30 15:24:53'),(130,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Kkjhjjj',0,'2021-10-30 15:25:12'),(131,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Lkjoj',0,'2021-10-30 15:25:14'),(132,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Fgfgfg',0,'2021-10-30 15:28:03'),(133,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Fgfgffg',0,'2021-10-30 15:28:05'),(134,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Egrd',0,'2021-10-30 15:28:07'),(135,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Fdddfdf',0,'2021-10-30 15:28:27'),(136,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Gwc',0,'2021-10-30 15:28:29'),(137,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Dge',0,'2021-10-30 15:28:34'),(138,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Cx',0,'2021-10-30 15:28:35'),(139,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Gwgwwwg',0,'2021-10-30 15:28:37'),(140,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Gsdef',0,'2021-10-30 15:28:58'),(141,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Sf',0,'2021-10-30 15:29:00'),(142,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Cccccc',0,'2021-10-30 15:29:01'),(143,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Gage',0,'2021-10-30 15:29:04'),(144,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Dgwgx',0,'2021-10-30 15:29:09'),(145,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Fdf',0,'2021-10-30 15:29:11'),(146,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Ljlkjowf',0,'2021-10-30 15:29:35'),(147,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Novc',0,'2021-10-30 15:29:38'),(148,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Skkkjf',0,'2021-10-30 15:29:39'),(149,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Jjkji',0,'2021-10-30 15:31:58'),(150,25,'UkgImo2tBZP1rsRowOwom6vNoO82','Tktkt',0,'2021-10-30 15:32:04'),(151,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Lljooojl',0,'2021-10-30 15:32:07'),(152,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Lkjlkj',0,'2021-10-30 15:32:44'),(153,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Lkjom',0,'2021-10-30 15:32:46'),(154,25,'UkgImo2tBZP1rsRowOwom6vNoO82','Fegwt',0,'2021-10-30 15:37:35'),(155,25,'UkgImo2tBZP1rsRowOwom6vNoO82','Yiwhsf',0,'2021-10-30 15:37:40'),(156,25,'UkgImo2tBZP1rsRowOwom6vNoO82','Gjrvb',0,'2021-10-30 15:38:00'),(157,10,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Kkjkjh',0,'2021-10-30 15:38:25'),(158,10,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Jhkhih',0,'2021-10-30 16:07:23'),(159,10,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Ibygku',0,'2021-10-30 16:07:34'),(160,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Jnin',0,'2021-10-30 16:07:56'),(161,25,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Jbip',0,'2021-10-30 16:07:59'),(162,25,'UkgImo2tBZP1rsRowOwom6vNoO82','Fiftr',0,'2021-10-30 16:48:33'),(163,2,'UkgImo2tBZP1rsRowOwom6vNoO82','Uurr',0,'2021-10-30 16:48:42'),(164,2,'UkgImo2tBZP1rsRowOwom6vNoO82','Ywiwhfka9',0,'2021-10-30 16:49:29'),(165,2,'UkgImo2tBZP1rsRowOwom6vNoO82','Daisf',0,'2021-10-30 16:49:38'),(166,2,'UkgImo2tBZP1rsRowOwom6vNoO82','Girg',0,'2021-11-01 13:44:52'),(167,2,'UkgImo2tBZP1rsRowOwom6vNoO82','Dwf',0,'2021-11-01 13:45:25'),(168,1,'UkgImo2tBZP1rsRowOwom6vNoO82','Gufdt',0,'2021-11-01 13:46:30'),(169,1,'UkgImo2tBZP1rsRowOwom6vNoO82','Ch',0,'2021-11-02 04:29:56'),(170,1,'UkgImo2tBZP1rsRowOwom6vNoO82','Gdidhe',0,'2021-11-02 04:34:14'),(171,1,'UkgImo2tBZP1rsRowOwom6vNoO82','Geidhd',0,'2021-11-02 04:34:22'),(172,1,'UkgImo2tBZP1rsRowOwom6vNoO82','Hevwif',0,'2021-11-02 04:34:25'),(173,1,'UkgImo2tBZP1rsRowOwom6vNoO82','Ffd',0,'2021-11-02 04:34:28'),(174,1,'UkgImo2tBZP1rsRowOwom6vNoO82','Gyh',0,'2021-11-02 04:36:44'),(175,1,'UkgImo2tBZP1rsRowOwom6vNoO82','Gdiehe',0,'2021-11-02 04:37:44'),(176,1,'UkgImo2tBZP1rsRowOwom6vNoO82','Beisbs',0,'2021-11-02 04:37:49'),(177,1,'UkgImo2tBZP1rsRowOwom6vNoO82','Fddff',0,'2021-11-02 04:37:54'),(178,1,'UkgImo2tBZP1rsRowOwom6vNoO82','Hjje',0,'2021-11-02 04:37:59'),(179,1,'UkgImo2tBZP1rsRowOwom6vNoO82','Furf',0,'2021-11-02 04:38:15'),(180,1,'UkgImo2tBZP1rsRowOwom6vNoO82','Gurgbu',0,'2021-11-02 04:38:18'),(181,1,'UkgImo2tBZP1rsRowOwom6vNoO82','Shdid',0,'2021-11-02 04:38:53'),(182,1,'UkgImo2tBZP1rsRowOwom6vNoO82','Gurlj',0,'2021-11-02 04:39:50'),(183,1,'UkgImo2tBZP1rsRowOwom6vNoO82','Hhfy',0,'2021-11-02 04:39:54'),(184,1,'UkgImo2tBZP1rsRowOwom6vNoO82','Jfhfhddh',0,'2021-11-02 04:44:07'),(185,1,'UkgImo2tBZP1rsRowOwom6vNoO82','Hyh',0,'2021-11-02 04:47:18'),(186,1,'UkgImo2tBZP1rsRowOwom6vNoO82','Furh',0,'2021-11-02 04:50:10'),(187,1,'UkgImo2tBZP1rsRowOwom6vNoO82','\'Gdhgf',0,'2021-11-02 04:54:01'),(188,1,'UkgImo2tBZP1rsRowOwom6vNoO82','Jfjrfgu',0,'2021-11-02 04:54:03'),(189,1,'UkgImo2tBZP1rsRowOwom6vNoO82','Gsishdjdgs',0,'2021-11-02 04:55:16'),(190,1,'UkgImo2tBZP1rsRowOwom6vNoO82','Fnwjxhf',0,'2021-11-02 04:55:20'),(191,1,'UkgImo2tBZP1rsRowOwom6vNoO82','Gdjdjs',0,'2021-11-02 04:55:50'),(192,1,'UkgImo2tBZP1rsRowOwom6vNoO82','Jdke',0,'2021-11-02 04:55:52'),(193,1,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Dhr',0,'2021-11-02 04:58:31'),(194,1,'UkgImo2tBZP1rsRowOwom6vNoO82','Iuhn',0,'2021-11-02 04:58:56'),(195,1,'UkgImo2tBZP1rsRowOwom6vNoO82','Vsjwgdf',0,'2021-11-02 04:58:58'),(196,1,'UkgImo2tBZP1rsRowOwom6vNoO82','Hdywgd',0,'2021-11-02 04:59:03'),(197,1,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Dlddtf',0,'2021-11-02 04:59:08'),(198,1,'UkgImo2tBZP1rsRowOwom6vNoO82','Gkrgvigg',0,'2021-11-02 04:59:12'),(199,1,'UkgImo2tBZP1rsRowOwom6vNoO82','Dhdkaydbcie',0,'2021-11-02 04:59:15'),(200,1,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Ok',0,'2021-11-02 04:59:19'),(201,1,'UkgImo2tBZP1rsRowOwom6vNoO82','Gsidhew',0,'2021-11-02 04:59:26'),(202,1,'UkgImo2tBZP1rsRowOwom6vNoO82','Geiwbdjs',0,'2021-11-02 04:59:39'),(203,1,'UkgImo2tBZP1rsRowOwom6vNoO82','Hdjdhd',0,'2021-11-02 04:59:41'),(204,1,'UkgImo2tBZP1rsRowOwom6vNoO82','Dkwosncur',0,'2021-11-02 04:59:44'),(205,26,'UXumXkZpqGSYeQ1zSe8YhFZxbVj1','Vch',0,'2021-11-02 09:20:03'),(206,24,'UkgImo2tBZP1rsRowOwom6vNoO82','Hdjf',0,'2021-11-02 09:23:44'),(207,24,'UXumXkZpqGSYeQ1zSe8YhFZxbVj1','Fjr',0,'2021-11-02 09:23:52'),(208,24,'UXumXkZpqGSYeQ1zSe8YhFZxbVj1','Gi',0,'2021-11-02 09:24:05'),(209,24,'UXumXkZpqGSYeQ1zSe8YhFZxbVj1','Tr',0,'2021-11-02 09:25:22'),(210,24,'UkgImo2tBZP1rsRowOwom6vNoO82','Furvh',0,'2021-11-02 09:25:29'),(211,24,'UXumXkZpqGSYeQ1zSe8YhFZxbVj1','Dh',0,'2021-11-02 09:25:42'),(212,24,'UXumXkZpqGSYeQ1zSe8YhFZxbVj1','Vh',0,'2021-11-02 09:26:30'),(213,24,'UXumXkZpqGSYeQ1zSe8YhFZxbVj1','Bk',0,'2021-11-02 09:26:39'),(214,24,'UXumXkZpqGSYeQ1zSe8YhFZxbVj1','Rh',0,'2021-11-02 09:26:43'),(215,24,'UXumXkZpqGSYeQ1zSe8YhFZxbVj1','Hj',0,'2021-11-02 09:26:50'),(216,24,'UXumXkZpqGSYeQ1zSe8YhFZxbVj1','Gh',0,'2021-11-02 09:42:29'),(217,24,'UkgImo2tBZP1rsRowOwom6vNoO82','Fhdj',0,'2021-11-02 09:44:29'),(218,24,'UkgImo2tBZP1rsRowOwom6vNoO82','Gjg',0,'2021-11-02 09:45:22'),(219,24,'UXumXkZpqGSYeQ1zSe8YhFZxbVj1','Vhg',0,'2021-11-02 09:47:44'),(220,24,'UXumXkZpqGSYeQ1zSe8YhFZxbVj1','Ghhh',0,'2021-11-02 09:48:50'),(221,24,'UXumXkZpqGSYeQ1zSe8YhFZxbVj1','Dtt',0,'2021-11-02 09:48:55'),(222,24,'UXumXkZpqGSYeQ1zSe8YhFZxbVj1','Gfu',0,'2021-11-02 09:49:06'),(223,24,'UXumXkZpqGSYeQ1zSe8YhFZxbVj1','Ydru',0,'2021-11-02 09:49:09'),(224,24,'UXumXkZpqGSYeQ1zSe8YhFZxbVj1','Bij',0,'2021-11-02 09:49:13'),(225,24,'UXumXkZpqGSYeQ1zSe8YhFZxbVj1','Fhdy',0,'2021-11-02 09:49:35'),(226,24,'UXumXkZpqGSYeQ1zSe8YhFZxbVj1','Fhre',0,'2021-11-02 09:49:39'),(227,24,'UXumXkZpqGSYeQ1zSe8YhFZxbVj1','Fhd',0,'2021-11-02 09:49:50'),(228,24,'UXumXkZpqGSYeQ1zSe8YhFZxbVj1','Chst',0,'2021-11-02 09:49:53'),(229,24,'UXumXkZpqGSYeQ1zSe8YhFZxbVj1','Bjrt',0,'2021-11-02 09:50:19'),(230,24,'UkgImo2tBZP1rsRowOwom6vNoO82','Gisgsud',0,'2021-11-02 09:50:27'),(231,24,'UkgImo2tBZP1rsRowOwom6vNoO82','Vwjdgsu',0,'2021-11-02 09:50:29'),(232,24,'UkgImo2tBZP1rsRowOwom6vNoO82','Vejdgisd',0,'2021-11-02 09:50:31'),(233,24,'UkgImo2tBZP1rsRowOwom6vNoO82','Gejxbsie',0,'2021-11-02 09:50:35'),(234,24,'UkgImo2tBZP1rsRowOwom6vNoO82','Dbecgs',0,'2021-11-02 09:51:33'),(235,24,'UkgImo2tBZP1rsRowOwom6vNoO82','Sgsid',0,'2021-11-02 09:53:36'),(236,24,'UkgImo2tBZP1rsRowOwom6vNoO82','Shxod',0,'2021-11-02 09:53:42'),(237,24,'UXumXkZpqGSYeQ1zSe8YhFZxbVj1','Vhfu',0,'2021-11-02 09:53:51'),(238,24,'UXumXkZpqGSYeQ1zSe8YhFZxbVj1','Tdh',0,'2021-11-02 09:53:56'),(239,24,'UXumXkZpqGSYeQ1zSe8YhFZxbVj1','Fxn',0,'2021-11-02 09:53:59'),(240,28,'UkgImo2tBZP1rsRowOwom6vNoO82','Cudd5',0,'2021-11-02 10:01:16'),(241,28,'UkgImo2tBZP1rsRowOwom6vNoO82','Cud',0,'2021-11-02 10:01:20'),(242,24,'UkgImo2tBZP1rsRowOwom6vNoO82','Geidhe',0,'2021-11-02 10:50:19'),(243,24,'UkgImo2tBZP1rsRowOwom6vNoO82','Difht',0,'2021-11-02 10:50:32'),(244,28,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Jjjj',0,'2021-11-06 04:19:30'),(245,28,'UkgImo2tBZP1rsRowOwom6vNoO82','Hskd',0,'2021-11-06 04:20:29'),(246,28,'UkgImo2tBZP1rsRowOwom6vNoO82','Sgqkd',0,'2021-11-06 04:20:59'),(247,28,'UkgImo2tBZP1rsRowOwom6vNoO82','Ehsif',0,'2021-11-06 04:21:02'),(248,28,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Jjj',0,'2021-11-06 04:21:51'),(249,28,'UkgImo2tBZP1rsRowOwom6vNoO82','Fry',0,'2021-11-06 04:22:33'),(250,28,'UkgImo2tBZP1rsRowOwom6vNoO82','Hrh6tj',0,'2021-11-06 04:22:59'),(251,28,'UkgImo2tBZP1rsRowOwom6vNoO82','Hrr',0,'2021-11-06 04:23:48'),(252,28,'UkgImo2tBZP1rsRowOwom6vNoO82','Hry',0,'2021-11-06 04:24:04'),(253,28,'UkgImo2tBZP1rsRowOwom6vNoO82','Getj',0,'2021-11-06 04:24:30'),(254,28,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Kkk',0,'2021-11-06 04:24:46'),(255,28,'UkgImo2tBZP1rsRowOwom6vNoO82','Gdgy',0,'2021-11-06 04:24:50'),(256,28,'UkgImo2tBZP1rsRowOwom6vNoO82','Ggju',0,'2021-11-06 04:24:54'),(257,28,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Lkkk',0,'2021-11-06 04:25:01'),(258,28,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Jjj',0,'2021-11-06 04:26:17'),(259,28,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Jjj',0,'2021-11-06 04:26:23'),(260,28,'UkgImo2tBZP1rsRowOwom6vNoO82','Gsjd',0,'2021-11-06 04:26:47'),(261,28,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Jjk',0,'2021-11-06 04:30:54'),(262,28,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Kklk',0,'2021-11-06 04:31:09'),(263,28,'UkgImo2tBZP1rsRowOwom6vNoO82','Gdu',0,'2021-11-06 04:57:57'),(264,28,'UkgImo2tBZP1rsRowOwom6vNoO82','Hdgj',0,'2021-11-06 04:58:40'),(265,28,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Kkk',0,'2021-11-06 04:58:47'),(266,28,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Jkj',0,'2021-11-06 04:59:02'),(267,28,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Llll',0,'2021-11-06 05:10:13'),(268,28,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Jjj',0,'2021-11-06 05:26:49'),(269,28,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Kkkk',0,'2021-11-06 05:27:11'),(270,28,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Kkk',0,'2021-11-06 05:27:40'),(271,28,'UkgImo2tBZP1rsRowOwom6vNoO82','Fheoh',0,'2021-11-06 06:43:44'),(272,28,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Jj',0,'2021-11-06 06:44:00'),(273,28,'UkgImo2tBZP1rsRowOwom6vNoO82','Hdggdg',0,'2021-11-06 06:44:29'),(274,28,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Dfffdfdf',0,'2021-11-06 06:45:07'),(275,28,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Efwdxvcv',0,'2021-11-06 06:45:12'),(276,28,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Efeefef',0,'2021-11-06 06:45:17'),(277,28,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Dfdfdddf',0,'2021-11-06 06:47:03'),(278,28,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Hhh',0,'2021-11-06 06:48:05'),(279,28,'UkgImo2tBZP1rsRowOwom6vNoO82','Sjshsf',0,'2021-11-06 06:48:20'),(280,28,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Jjj',0,'2021-11-06 06:48:23'),(281,28,'UkgImo2tBZP1rsRowOwom6vNoO82','Ffdd',0,'2021-11-06 06:48:32'),(282,2,'UkgImo2tBZP1rsRowOwom6vNoO82','Gdishd',0,'2021-11-06 06:56:55'),(283,2,'UkgImo2tBZP1rsRowOwom6vNoO82','Shwnd',0,'2021-11-06 06:56:58'),(284,24,'UkgImo2tBZP1rsRowOwom6vNoO82','Geie',1,'2021-11-06 06:57:04'),(285,28,'UkgImo2tBZP1rsRowOwom6vNoO82','Hey',0,'2021-11-06 06:57:17'),(286,28,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Jkkkj',0,'2021-11-06 06:57:21'),(287,28,'UkgImo2tBZP1rsRowOwom6vNoO82','Fff',0,'2021-11-06 06:57:26'),(288,28,'UkgImo2tBZP1rsRowOwom6vNoO82','Ggg',0,'2021-11-06 06:57:32'),(289,28,'UkgImo2tBZP1rsRowOwom6vNoO82','Hebskf',0,'2021-11-06 06:57:34'),(290,28,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Kkk',0,'2021-11-06 07:07:20'),(291,28,'UkgImo2tBZP1rsRowOwom6vNoO82','Ffff',0,'2021-11-06 07:07:30'),(292,28,'UkgImo2tBZP1rsRowOwom6vNoO82','Fffr',0,'2021-11-06 07:07:35'),(293,28,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Jjj',0,'2021-11-06 07:07:40'),(294,28,'UkgImo2tBZP1rsRowOwom6vNoO82','Fff',0,'2021-11-06 07:07:47'),(295,28,'UkgImo2tBZP1rsRowOwom6vNoO82','Ddfd',0,'2021-11-06 07:07:50'),(296,28,'UkgImo2tBZP1rsRowOwom6vNoO82','Jwox',0,'2021-11-06 07:07:52'),(297,28,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Ihi',0,'2021-11-06 07:29:13'),(298,28,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Jjjj',0,'2021-11-06 07:33:18'),(299,28,'UkgImo2tBZP1rsRowOwom6vNoO82','Gsidhd',0,'2021-11-06 07:33:53'),(300,28,'UkgImo2tBZP1rsRowOwom6vNoO82','Fydg',0,'2021-11-06 07:34:35'),(301,28,'UkgImo2tBZP1rsRowOwom6vNoO82','Fjftg',0,'2021-11-06 07:34:47'),(302,28,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Jdddjfdf',0,'2021-11-06 07:38:09'),(303,28,'UkgImo2tBZP1rsRowOwom6vNoO82','Hdiwjd',0,'2021-11-06 07:38:51'),(304,28,'UkgImo2tBZP1rsRowOwom6vNoO82','Gdur',0,'2021-11-06 07:39:06'),(305,28,'UkgImo2tBZP1rsRowOwom6vNoO82','Jdjekr',0,'2021-11-06 07:39:55'),(306,28,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Kkjoih',0,'2021-11-06 07:40:04'),(307,28,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Buuugy',0,'2021-11-06 07:40:13'),(308,28,'UkgImo2tBZP1rsRowOwom6vNoO82','Ficjs',0,'2021-11-06 07:40:37'),(309,28,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Sfffddfdddd',0,'2021-11-06 08:51:58'),(310,28,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Ddfff',0,'2021-11-06 09:12:26'),(311,28,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Ddfff',0,'2021-11-06 09:12:42'),(312,26,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Ffffdf',1,'2021-11-06 09:12:55'),(313,28,'UkgImo2tBZP1rsRowOwom6vNoO82','Bdiw',0,'2021-11-06 11:53:22'),(314,28,'UkgImo2tBZP1rsRowOwom6vNoO82','Dhsif',0,'2021-11-06 11:53:59'),(315,28,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Klllk',0,'2021-11-06 11:54:17'),(316,10,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Jkkj',1,'2021-11-06 11:54:42'),(317,28,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Kjhkj',0,'2021-11-06 11:55:02'),(318,28,'UkgImo2tBZP1rsRowOwom6vNoO82','Fhf',0,'2021-11-06 11:55:41'),(319,28,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Sdfsdf',0,'2021-11-09 13:52:48'),(320,28,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Efefef',0,'2021-11-09 13:52:51'),(321,28,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Vdvxxvsdfeg',0,'2021-11-09 13:52:54'),(322,28,'UkgImo2tBZP1rsRowOwom6vNoO82','Hdiwf',0,'2021-11-09 13:53:22'),(323,28,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Sdsdsd',0,'2021-11-09 13:53:29'),(324,28,'UkgImo2tBZP1rsRowOwom6vNoO82','Hsidjes',0,'2021-11-09 13:53:43'),(325,28,'jP1wRAE05gNnQc9edeoo4MGvMfo2','Hgjg',0,'2021-11-09 13:54:13');
/*!40000 ALTER TABLE `chat_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_room`
--

DROP TABLE IF EXISTS `chat_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat_room` (
  `room_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `seller_id` varchar(36) NOT NULL,
  `buyer_id` varchar(36) NOT NULL,
  `remain_member_count` tinyint(4) DEFAULT '2',
  PRIMARY KEY (`room_id`),
  KEY `goods_id` (`goods_id`),
  CONSTRAINT `chat_room_ibfk_1` FOREIGN KEY (`goods_id`) REFERENCES `goods_post` (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_room`
--

LOCK TABLES `chat_room` WRITE;
/*!40000 ALTER TABLE `chat_room` DISABLE KEYS */;
INSERT INTO `chat_room` VALUES (1,15,'jP1wRAE05gNnQc9edeoo4MGvMfo2','UkgImo2tBZP1rsRowOwom6vNoO82',2),(2,14,'UkgImo2tBZP1rsRowOwom6vNoO82','jP1wRAE05gNnQc9edeoo4MGvMfo2',2),(9,11,'jP1wRAE05gNnQc9edeoo4MGvMfo2','UkgImo2tBZP1rsRowOwom6vNoO82',2),(10,11,'jP1wRAE05gNnQc9edeoo4MGvMfo2','UXumXkZpqGSYeQ1zSe8YhFZxbVj1',2),(23,15,'jP1wRAE05gNnQc9edeoo4MGvMfo2','UXumXkZpqGSYeQ1zSe8YhFZxbVj1',2),(24,16,'UXumXkZpqGSYeQ1zSe8YhFZxbVj1','UkgImo2tBZP1rsRowOwom6vNoO82',2),(25,17,'UkgImo2tBZP1rsRowOwom6vNoO82','jP1wRAE05gNnQc9edeoo4MGvMfo2',2),(26,12,'jP1wRAE05gNnQc9edeoo4MGvMfo2','UXumXkZpqGSYeQ1zSe8YhFZxbVj1',2),(27,11,'jP1wRAE05gNnQc9edeoo4MGvMfo2','UkgImo2tBZP1rsRowOwom6vNoO82',2),(28,10,'jP1wRAE05gNnQc9edeoo4MGvMfo2','UkgImo2tBZP1rsRowOwom6vNoO82',2);
/*!40000 ALTER TABLE `chat_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feed`
--

DROP TABLE IF EXISTS `feed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `writer_id` varchar(36) NOT NULL,
  `contents` varchar(400) NOT NULL,
  `like_count` mediumint(9) DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `has_image` tinyint(4) NOT NULL,
  `comment_count` mediumint(9) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_users_TO_feed_1` (`writer_id`),
  CONSTRAINT `FK_users_TO_feed_1` FOREIGN KEY (`writer_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feed`
--

LOCK TABLES `feed` WRITE;
/*!40000 ALTER TABLE `feed` DISABLE KEYS */;
INSERT INTO `feed` VALUES (119,'mvjRBv04ZhOyNGgPRqcGONmDgls1','dfdfdfdfd',0,'2021-09-15 09:10:11',1,6),(120,'mvjRBv04ZhOyNGgPRqcGONmDgls1','fefefefeewfw',0,'2021-09-15 09:10:49',1,0),(121,'mvjRBv04ZhOyNGgPRqcGONmDgls1','ddgdgdgdgd',0,'2021-09-15 09:10:57',1,0),(122,'mvjRBv04ZhOyNGgPRqcGONmDgls1','dfdfdfdfefe',0,'2021-09-15 09:14:42',0,0),(123,'UXumXkZpqGSYeQ1zSe8YhFZxbVj1','ㄴㅇㄴㅇㄹㄴㅇㄹㄴㅇㄹㅇㄴ',0,'2021-09-17 07:45:17',0,0),(124,'UXumXkZpqGSYeQ1zSe8YhFZxbVj1','ㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㅇㄴㄹㄴㅇㄹㅇㄹㅇㄹㅇㄹㅇㅇㄹㅇㅇㄹㅇㄹㅇㄹㅇㄹㅇㄹㅇㄹㅇㄹㅇㄹㅇㄹㅇㅇㄹㅇㄹㅈㅇㄹㅈㅇㄹㅈㅇㄹㅈㅇㅈㅇㄹㅈㅇㄹㅈㅇㄹㅈㅇㄹㅈㅇㄹㅈㅇㄹㅈㅇㄹㅈㅇㅈㄹㅇ',0,'2021-09-17 07:46:05',0,0),(125,'UkgImo2tBZP1rsRowOwom6vNoO82','sdsdfsdfsssfsdfsdfsdsfsdfffsfsfsdfsdfs\n\n\n\n\n\ns\ndsdfsdfsdfsdfsdfsdfsssdfsdfsdf\nsdfsdf\nsdfsdfsdfsfsssfs',0,'2021-09-22 07:50:41',0,0),(126,'UkgImo2tBZP1rsRowOwom6vNoO82','ewefwefwwwfwefwefwefwefwefwefwefwfwefwefwefwefwefwefwefwefwefwefwefwefwefwefwefwwwefwwefwefwefwfwwwefwefwefwfwefwefwefwefwefwefwefwwwefwfwefwefwfwfwefwefwefwfwfwefwefwfwefwfwefwfwfwefwefwwwefwefwwwefwfwwwefwfwefwfwfwfwfwefwefwefwefwefwefwefwfwefwfwefwfwfwfwfwfwfwfwfwfwwfwefwefwefwwwefwfwfwefwfwfwfwfwwwfwefwfwefwfwfwfwefwfwfwfwefwfwfwfwefwefwfwwwefwfwffwfw',0,'2021-09-22 09:22:08',0,0),(127,'UkgImo2tBZP1rsRowOwom6vNoO82','ddfssssfsdfss\ns\nsfsdfsdf\ns\nas\nadd\nsdfsdfsdfsffs\nsdfsdfsdfsfffsfsf\nadds',0,'2021-09-22 09:24:13',0,0),(128,'UkgImo2tBZP1rsRowOwom6vNoO82','ㄴㅇㄹㄴㅇㄴㄴㄴㄴㄴㅇㄹㄴㅇㄹㄴㄴㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㄴㄴ\nㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄴㄹㄴㅇㄹㅁㄴㄹㅁㄴㅇㄹㅁㄴㅇㄹㄴㅇ레ㅏㅓㅘㅁ너ㅚㅏㅓㄴㄴ나맘ㄹㄴㄹㄴㄴㄴㅇㄹㅁㄴㅇㄹㅁ늍ㅊㅁ튠ㅊㅇ튶ㅊㄹㄴ윺ㅊㄹㅌ뮨ㅇㅊㄹ튶ㄴㅇㅊㄹ튶ㅁㄴㅇㅊㅊㅊ튬ㅍㄴㅇㅊㅍㅍㅍㅍㅍㅍㅍㅍㅇㅊㄹㅌ뮾ㅇㅊㄹ튬ㅍㄴㅇㅊ튶ㅁㄴㅇㅊㄹㅌㅊㅇㅊㅊㅊㅊㅇㅍㅍㄴㅊㅁㅍㅍㄴㅊㅇㅌ륲ㄴㅊㅁㅇㅌㅍㅁㄴㄴ륲ㅍㅍㄴㄴㅇㅊㅊㅊㄹ튶ㅇㅊ튶ㅇ튬ㅍㄴㅊㅇ튶ㅁㄴㅊㅇㅇㅇ튶ㅁㄴㅇㅊㅌㄴㄴㄴㄴㅍ튶ㅁㄴㅊㅇㅇㅇㄹㅌㅁㅍㅍㅇㅊㅊㅊㄹ튶ㅇㅊㄹ튶ㅍㅍㄴㅇㅊ튶ㅁㄴㅊㅊㄹㅌㅌ튶ㄴㅇㅊㅌㄴㅍㅍㄹㅌㅇㅊ튠ㅍㅇㅊㄹ튬ㄴㅇㅊ튠ㅍㅇㅇㅇㅊ튬ㅍㅍㅇㅊㅌ륲ㄴㅇ튶ㄴㅇㅊㄹㅌㅌ튶ㅁㅊ튬ㅍㅊㅇ튶ㅁㄴㅊㅇ튶ㅁㄴㅊ륲ㄴㅊㅇㄹ튠ㅇㅊㅊㅊㄹㄹ튬ㅍㄴㅇㅊㅊㅊㅊㄹ튶ㄴㅌㅌㅌㅌㅌㄴㅇㅊ',0,'2021-09-22 09:29:48',0,0),(129,'UkgImo2tBZP1rsRowOwom6vNoO82','assassins\nassassins\nAssad fed\nasdavxv\nxvxvxv',0,'2021-09-22 11:27:23',0,0),(130,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트입니다. 이미지 없는 경우',0,'2021-09-22 15:29:47',0,0),(131,'UXumXkZpqGSYeQ1zSe8YhFZxbVj1','ㅏㅏㅏㅏㅓㅗ’\n화하거나\nㅣㅜㅏ\n',0,'2021-09-23 11:39:12',1,2),(132,'jP1wRAE05gNnQc9edeoo4MGvMfo2','sdsdfsdfsfsssdfsdfsdsdfsd\n\nsdfsdsdfsdfsdfsdfsdfsdfsdfsdf\n\n\nsdfsdfssdsdfsdfsdfsdfsdfsdfsdfsdfffsdfsdfsdfdsfsdsdfsdfffffsdfssf',0,'2021-09-25 06:45:24',0,0),(133,'jP1wRAE05gNnQc9edeoo4MGvMfo2','dfddfddddd\ndfdfdfdf',0,'2021-09-25 10:44:50',0,12),(135,'jP1wRAE05gNnQc9edeoo4MGvMfo2','vlfhu',0,'2021-10-03 04:14:26',0,2),(136,'UkgImo2tBZP1rsRowOwom6vNoO82','테스트 입니다.',0,'2021-10-09 04:12:05',1,0);
/*!40000 ALTER TABLE `feed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feed_child_comment`
--

DROP TABLE IF EXISTS `feed_child_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feed_child_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `writer_id` varchar(36) NOT NULL,
  `feed_comment_id` int(11) NOT NULL,
  `contents` varchar(100) NOT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `like_count` mediumint(9) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `writer_id` (`writer_id`),
  KEY `feed_comment_id` (`feed_comment_id`),
  CONSTRAINT `feed_child_comment_ibfk_1` FOREIGN KEY (`writer_id`) REFERENCES `users` (`id`),
  CONSTRAINT `feed_child_comment_ibfk_2` FOREIGN KEY (`feed_comment_id`) REFERENCES `feed_comment` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feed_child_comment`
--

LOCK TABLES `feed_child_comment` WRITE;
/*!40000 ALTER TABLE `feed_child_comment` DISABLE KEYS */;
INSERT INTO `feed_child_comment` VALUES (1,'mvjRBv04ZhOyNGgPRqcGONmDgls1',24,'123123123','2021-10-02 04:18:23',0),(2,'jP1wRAE05gNnQc9edeoo4MGvMfo2',39,'tryfy','2021-10-02 07:28:06',1),(3,'jP1wRAE05gNnQc9edeoo4MGvMfo2',39,'tydkii','2021-10-02 07:28:31',0),(4,'jP1wRAE05gNnQc9edeoo4MGvMfo2',37,'tuguj','2021-10-02 07:30:16',0),(5,'jP1wRAE05gNnQc9edeoo4MGvMfo2',39,'fhf','2021-10-02 07:53:38',0),(6,'jP1wRAE05gNnQc9edeoo4MGvMfo2',39,'','2021-10-02 07:53:39',0),(7,'jP1wRAE05gNnQc9edeoo4MGvMfo2',39,'','2021-10-02 07:53:40',0),(8,'jP1wRAE05gNnQc9edeoo4MGvMfo2',39,'','2021-10-02 07:53:40',0),(9,'jP1wRAE05gNnQc9edeoo4MGvMfo2',39,'','2021-10-02 07:53:41',0),(10,'jP1wRAE05gNnQc9edeoo4MGvMfo2',39,'','2021-10-02 07:53:44',0),(11,'jP1wRAE05gNnQc9edeoo4MGvMfo2',39,'','2021-10-02 07:53:44',0),(12,'jP1wRAE05gNnQc9edeoo4MGvMfo2',39,'','2021-10-02 07:53:45',0),(13,'jP1wRAE05gNnQc9edeoo4MGvMfo2',42,'cjelff','2021-10-03 08:47:40',0);
/*!40000 ALTER TABLE `feed_child_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feed_comment`
--

DROP TABLE IF EXISTS `feed_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feed_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `writer_id` varchar(36) NOT NULL,
  `feed_id` int(11) NOT NULL,
  `contents` varchar(100) NOT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `like_count` mediumint(9) DEFAULT '0',
  `comment_count` mediumint(9) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `writer_id` (`writer_id`),
  KEY `feed_id` (`feed_id`),
  CONSTRAINT `feed_comment_ibfk_1` FOREIGN KEY (`writer_id`) REFERENCES `users` (`id`),
  CONSTRAINT `feed_comment_ibfk_2` FOREIGN KEY (`feed_id`) REFERENCES `feed` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feed_comment`
--

LOCK TABLES `feed_comment` WRITE;
/*!40000 ALTER TABLE `feed_comment` DISABLE KEYS */;
INSERT INTO `feed_comment` VALUES (24,'mvjRBv04ZhOyNGgPRqcGONmDgls1',119,'123123123','2021-10-02 04:11:54',1,1),(25,'jP1wRAE05gNnQc9edeoo4MGvMfo2',119,'123123','2021-10-02 04:48:58',0,0),(26,'jP1wRAE05gNnQc9edeoo4MGvMfo2',119,'kjhkjhkj','2021-10-02 04:49:03',0,0),(27,'jP1wRAE05gNnQc9edeoo4MGvMfo2',119,'','2021-10-02 04:49:45',0,0),(28,'jP1wRAE05gNnQc9edeoo4MGvMfo2',119,'jhkjhkj','2021-10-02 04:49:51',0,0),(29,'jP1wRAE05gNnQc9edeoo4MGvMfo2',133,'dfdddfdf','2021-10-02 04:57:06',0,0),(30,'jP1wRAE05gNnQc9edeoo4MGvMfo2',133,'defeeeggges','2021-10-02 05:39:23',0,0),(31,'jP1wRAE05gNnQc9edeoo4MGvMfo2',133,'dfffdfffdddfdfdfdfdfdfdfdddddfdfdfd','2021-10-02 05:52:59',0,0),(32,'jP1wRAE05gNnQc9edeoo4MGvMfo2',133,'ggghhhghghghhhghghhhghghghghghhhghghghghghghhghghgghghghghghhhghgh','2021-10-02 05:53:12',1,0),(33,'jP1wRAE05gNnQc9edeoo4MGvMfo2',133,'','2021-10-02 06:39:59',0,0),(34,'jP1wRAE05gNnQc9edeoo4MGvMfo2',133,'','2021-10-02 06:40:00',0,0),(35,'jP1wRAE05gNnQc9edeoo4MGvMfo2',133,'','2021-10-02 06:40:01',0,0),(36,'jP1wRAE05gNnQc9edeoo4MGvMfo2',133,'','2021-10-02 06:40:01',1,0),(37,'jP1wRAE05gNnQc9edeoo4MGvMfo2',133,'','2021-10-02 06:40:02',0,1),(38,'jP1wRAE05gNnQc9edeoo4MGvMfo2',133,'','2021-10-02 06:40:05',0,0),(39,'jP1wRAE05gNnQc9edeoo4MGvMfo2',133,'fjfstu','2021-10-02 06:51:58',0,10),(40,'jP1wRAE05gNnQc9edeoo4MGvMfo2',133,'jhkvcd','2021-10-03 03:14:16',0,0),(41,'jP1wRAE05gNnQc9edeoo4MGvMfo2',135,'rjcjdflj','2021-10-03 07:56:18',0,0),(42,'jP1wRAE05gNnQc9edeoo4MGvMfo2',135,'cjftjgii','2021-10-03 07:56:29',0,1),(43,'jP1wRAE05gNnQc9edeoo4MGvMfo2',131,'fogfryfsskk','2021-10-03 08:48:19',0,0),(44,'UkgImo2tBZP1rsRowOwom6vNoO82',131,'ㄱㄷㄱㄴ븨','2021-10-09 07:08:07',0,0),(45,'jP1wRAE05gNnQc9edeoo4MGvMfo2',119,'dfdfdfdf','2021-11-09 15:39:16',0,0);
/*!40000 ALTER TABLE `feed_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feed_image`
--

DROP TABLE IF EXISTS `feed_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feed_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feed_id` int(11) NOT NULL,
  `image_url` varchar(300) NOT NULL,
  `sequence` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `feed_id` (`feed_id`),
  CONSTRAINT `feed_image_ibfk_1` FOREIGN KEY (`feed_id`) REFERENCES `feed` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feed_image`
--

LOCK TABLES `feed_image` WRITE;
/*!40000 ALTER TABLE `feed_image` DISABLE KEYS */;
INSERT INTO `feed_image` VALUES (103,119,'https://firebasestorage.googleapis.com:443/v0/b/bikersdb-71613.appspot.com/o/feed_images%2F2021-09-15%2018:10:06.24454153b97cdaca226e2c5b7a6df8e9f7476f_exif.jpg?alt=media&token=b8263ee7-300e-4360-b270-df1e28be4e85',0),(104,119,'https://firebasestorage.googleapis.com:443/v0/b/bikersdb-71613.appspot.com/o/feed_images%2F2021-09-15%2018:10:08.1693408cfdc198b692be3685771c0eb3ad5beb_exif.jpg?alt=media&token=cba03a0a-1469-47af-8792-3f2f07840ac0',1),(105,119,'https://firebasestorage.googleapis.com:443/v0/b/bikersdb-71613.appspot.com/o/feed_images%2F2021-09-15%2018:10:09.74205958bdd973d382adb5a0741b607848397d_exif.jpg?alt=media&token=c643f7b4-4a81-4d69-b492-87a7c704aa91',2),(106,120,'https://firebasestorage.googleapis.com:443/v0/b/bikersdb-71613.appspot.com/o/feed_images%2F2021-09-15%2018:10:47.26210858bdd973d382adb5a0741b607848397d_exif.jpg?alt=media&token=3d53a5cb-e36f-4570-a943-2e4d48d360ce',0),(107,121,'https://firebasestorage.googleapis.com:443/v0/b/bikersdb-71613.appspot.com/o/feed_images%2F2021-09-15%2018:10:56.3361912b815a5031d3517b8a74d65940f89236_exif.jpg?alt=media&token=fdf974e8-2ad8-421d-b27e-a6335745b02f',0),(108,131,'https://firebasestorage.googleapis.com:443/v0/b/bikersdb-71613.appspot.com/o/feed_images%2F2021-09-23%2020:39:10.1725572b815a5031d3517b8a74d65940f89236_exif.jpg?alt=media&token=6c01acaf-504c-41a5-9aba-56b0ae8cc592',0),(109,136,'https://firebasestorage.googleapis.com/v0/b/bikersdb-71613.appspot.com/o/feed_images%2F2021-10-09%2013%3A11%3A56.85869510630_Screenshot_20211009-124148_Chrome.jpg?alt=media&token=92758e30-a082-4c5c-af1c-9ddeea389939',0),(110,136,'https://firebasestorage.googleapis.com/v0/b/bikersdb-71613.appspot.com/o/feed_images%2F2021-10-09%2013%3A12%3A00.04181210612_Screenshot_20210929-132445_KakaoMap.jpg?alt=media&token=3607981c-90f1-441f-8def-b8483d102950',1),(111,136,'https://firebasestorage.googleapis.com/v0/b/bikersdb-71613.appspot.com/o/feed_images%2F2021-10-09%2013%3A12%3A01.3905201633752703334?alt=media&token=145389c4-98e4-4af1-8002-d541cf24cbac',2);
/*!40000 ALTER TABLE `feed_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friend`
--

DROP TABLE IF EXISTS `friend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_user` varchar(36) NOT NULL,
  `to_user` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `from_user` (`from_user`),
  KEY `to_user` (`to_user`),
  CONSTRAINT `friend_ibfk_1` FOREIGN KEY (`from_user`) REFERENCES `users` (`id`),
  CONSTRAINT `friend_ibfk_2` FOREIGN KEY (`to_user`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friend`
--

LOCK TABLES `friend` WRITE;
/*!40000 ALTER TABLE `friend` DISABLE KEYS */;
INSERT INTO `friend` VALUES (42,'jP1wRAE05gNnQc9edeoo4MGvMfo2','mvjRBv04ZhOyNGgPRqcGONmDgls1'),(43,'UXumXkZpqGSYeQ1zSe8YhFZxbVj1','UkgImo2tBZP1rsRowOwom6vNoO82');
/*!40000 ALTER TABLE `friend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_image`
--

DROP TABLE IF EXISTS `goods_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `image_url` varchar(300) NOT NULL,
  `sequence` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_id` (`goods_id`),
  CONSTRAINT `goods_image_ibfk_1` FOREIGN KEY (`goods_id`) REFERENCES `goods_post` (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_image`
--

LOCK TABLES `goods_image` WRITE;
/*!40000 ALTER TABLE `goods_image` DISABLE KEYS */;
INSERT INTO `goods_image` VALUES (16,10,'https://firebasestorage.googleapis.com:443/v0/b/bikersdb-71613.appspot.com/o/shop_images%2F2021-09-26%2016:58:57.42506253b97cdaca226e2c5b7a6df8e9f7476f_exif.jpg?alt=media&token=dc76859c-cb27-46de-a138-6782403cabda',0),(17,10,'https://firebasestorage.googleapis.com:443/v0/b/bikersdb-71613.appspot.com/o/shop_images%2F2021-09-26%2016:59:01.51851953b97cdaca226e2c5b7a6df8e9f7476f_exif.jpg?alt=media&token=d2afd78b-8ad9-4c2a-ab52-2e598fc881b6',1),(18,11,'https://firebasestorage.googleapis.com:443/v0/b/bikersdb-71613.appspot.com/o/shop_images%2F2021-09-26%2016:58:59.82618153b97cdaca226e2c5b7a6df8e9f7476f_exif.jpg?alt=media&token=1fc5c7df-c940-4a2a-a6fb-d7a68d2d649f',0),(19,11,'https://firebasestorage.googleapis.com:443/v0/b/bikersdb-71613.appspot.com/o/shop_images%2F2021-09-26%2016:59:02.40944053b97cdaca226e2c5b7a6df8e9f7476f_exif.jpg?alt=media&token=9c932acf-d3af-4267-9770-5c72b401db80',1),(20,12,'https://firebasestorage.googleapis.com:443/v0/b/bikersdb-71613.appspot.com/o/shop_images%2F2021-09-26%2019:15:18.96982053b97cdaca226e2c5b7a6df8e9f7476f_exif.jpg?alt=media&token=6fa88c8b-23ed-4cef-b064-21fb52c45f02',0),(21,13,'https://firebasestorage.googleapis.com/v0/b/bikersdb-71613.appspot.com/o/shop_images%2F2021-10-09%2020%3A11%3A21.88616210606_20210928_183146.jpg?alt=media&token=b01692d1-bd70-41fa-9e65-daed55172648',0),(22,13,'https://firebasestorage.googleapis.com/v0/b/bikersdb-71613.appspot.com/o/shop_images%2F2021-10-09%2020%3A11%3A27.22298610596_Screenshot_20210915-224128_YouTube.jpg?alt=media&token=19bbde3d-6670-4dc9-9342-061dda1fcb8b',1),(23,14,'https://firebasestorage.googleapis.com/v0/b/bikersdb-71613.appspot.com/o/shop_images%2F2021-10-09%2020%3A11%3A26.02077010606_20210928_183146.jpg?alt=media&token=0f40c686-fb87-4092-8984-4276e713d2d7',0),(24,14,'https://firebasestorage.googleapis.com/v0/b/bikersdb-71613.appspot.com/o/shop_images%2F2021-10-09%2020%3A11%3A29.40238710596_Screenshot_20210915-224128_YouTube.jpg?alt=media&token=86994ff6-afe6-4173-bbf3-af829538fb88',1),(25,15,'https://firebasestorage.googleapis.com:443/v0/b/bikersdb-71613.appspot.com/o/shop_images%2F2021-10-09%2020:27:49.84947258bdd973d382adb5a0741b607848397d_exif.jpg?alt=media&token=7ca1b302-f461-44a1-98ff-1a9fdaca5010',0),(26,16,'https://firebasestorage.googleapis.com:443/v0/b/bikersdb-71613.appspot.com/o/shop_images%2F2021-10-30%2014:36:45.6647592b815a5031d3517b8a74d65940f89236_exif.jpg?alt=media&token=47486293-449e-4ea5-9cd2-ef2439994f68',0),(27,17,'https://firebasestorage.googleapis.com/v0/b/bikersdb-71613.appspot.com/o/shop_images%2F2021-10-30%2016%3A55%3A45.2036251635580530019?alt=media&token=cf9503ae-8da7-4615-b904-ec9878785996',0),(28,18,'https://firebasestorage.googleapis.com:443/v0/b/bikersdb-71613.appspot.com/o/shop_images%2F2021-11-09%2022:22:09.3096182b815a5031d3517b8a74d65940f89236_exif.jpg?alt=media&token=beebc1bf-f8d7-4b7d-909d-3a190dab8c3b',0),(29,19,'https://firebasestorage.googleapis.com:443/v0/b/bikersdb-71613.appspot.com/o/shop_images%2F2021-11-09%2022:50:23.7673522b815a5031d3517b8a74d65940f89236_exif.jpg?alt=media&token=8b989eba-5630-4c31-8554-ce4d954e6a4a',0);
/*!40000 ALTER TABLE `goods_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_post`
--

DROP TABLE IF EXISTS `goods_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods_post` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `writer_id` varchar(36) NOT NULL,
  `title` varchar(30) NOT NULL,
  `contents` varchar(400) NOT NULL,
  `price` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `view_count` mediumint(9) NOT NULL DEFAULT '0',
  `like_count` mediumint(9) DEFAULT '0',
  `category_id` tinyint(4) NOT NULL,
  `region_id` tinyint(4) NOT NULL,
  `goods_state_id` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`goods_id`),
  KEY `FK_users_TO_goods_post_1` (`writer_id`),
  KEY `FK_category_TO_goods_post_1` (`category_id`),
  KEY `FK_region_TO_goods_post_1` (`region_id`),
  KEY `FK_goods_state_TO_goods_post_1` (`goods_state_id`),
  CONSTRAINT `FK_category_TO_goods_post_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `FK_goods_state_TO_goods_post_1` FOREIGN KEY (`goods_state_id`) REFERENCES `goods_state` (`id`),
  CONSTRAINT `FK_region_TO_goods_post_1` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`),
  CONSTRAINT `FK_users_TO_goods_post_1` FOREIGN KEY (`writer_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_post`
--

LOCK TABLES `goods_post` WRITE;
/*!40000 ALTER TABLE `goods_post` DISABLE KEYS */;
INSERT INTO `goods_post` VALUES (10,'jP1wRAE05gNnQc9edeoo4MGvMfo2','sdsdfds','sdfsdfsd',123123,'2021-09-26 07:59:03',0,0,5,5,0),(11,'jP1wRAE05gNnQc9edeoo4MGvMfo2','sdsdfds','sdfsdfsd',123123,'2021-09-26 07:59:05',0,0,5,5,0),(12,'jP1wRAE05gNnQc9edeoo4MGvMfo2','혼다 바이크 팝니다.','▶ 제조사 : 혼다\n▶ 모델명 : svc-126\n▶ 연식 : 1997년\n▶ 색상 : 주황색\n▶ 주행거리 : 87,200km\n▶ 사고유무 : 무\n▶ 튜닝내역 : 무\n▶ 하자내역 : 무\n\n꿀매이니까 많이 연락주세요\n',10000000,'2021-09-26 10:15:24',0,0,1,3,0),(13,'UkgImo2tBZP1rsRowOwom6vNoO82','서울 바이크 팝니다','▶ 제조사 : \n▶ 모델명 : \n▶ 연식 : \n▶ 색상 : \n▶ 주행거리 : \n▶ 사고유무 : \n▶ 튜닝내역 : \n▶ 하자내역 : \n\n\n\n\n\n\n\nㄱㄷㄱ\n\n\n\n\n\n\nㄱㄷㄱㄷ\n\n\n\n\n\nㄱㄷㄱㄷㄱ\n\n\n\n\n\nㄱㅌㄱ\n\n\n\n\nㄱㄷ\n\n\n\nㄱㄸㄱ\n',360507,'2021-10-09 11:11:30',0,0,1,0,0),(14,'UkgImo2tBZP1rsRowOwom6vNoO82','서울 바이크 팝니다','▶ 제조사 : \n▶ 모델명 : \n▶ 연식 : \n▶ 색상 : \n▶ 주행거리 : \n▶ 사고유무 : \n▶ 튜닝내역 : \n▶ 하자내역 : \n\n\n\n\n\n\n\nㄱㄷㄱ\n\n\n\n\n\n\nㄱㄷㄱㄷ\n\n\n\n\n\nㄱㄷㄱㄷㄱ\n\n\n\n\n\nㄱㅌㄱ\n\n\n\n\nㄱㄷ\n\n\n\nㄱㄸㄱ\n',360507,'2021-10-09 11:11:32',0,0,1,0,0),(15,'jP1wRAE05gNnQc9edeoo4MGvMfo2','dgf','▶ 제조사 : \n▶ 모델명 : \n▶ 연식 : \n▶ 색상 : \n▶ 주행거리 : \n▶ 사고유무 : \n▶ 튜닝내역 : \n▶ 하자내역 : \n',854,'2021-10-09 11:27:51',0,0,1,1,0),(16,'UXumXkZpqGSYeQ1zSe8YhFZxbVj1','chatting test','▶ 제조사 : \n▶ 모델명 : \n▶ 연식 : \n▶ 색상 : \n▶ 주행거리 : \n▶ 사고유무 : \n▶ 튜닝내역 : \n▶ 하자내역 : \n',88888888,'2021-10-30 05:36:52',0,0,1,1,0),(17,'UkgImo2tBZP1rsRowOwom6vNoO82',' hwibfjagq','▶ 제조사 : \n▶ 모델명 : \n▶ 연식 : \n▶ 색상 : \n▶ 주행거리 : \n▶ 사고유무 : \n▶ 튜닝내역 : \n▶ 하자내역 : \n',5379151,'2021-10-30 07:55:52',0,0,1,2,0),(18,'jP1wRAE05gNnQc9edeoo4MGvMfo2','dfdddfd','sdfsdfsf',1233313,'2021-11-09 13:22:11',0,0,3,4,0),(19,'jP1wRAE05gNnQc9edeoo4MGvMfo2','jhh','▶ 제조사 : \n▶ 모델명 : \n▶ 연식 : \n▶ 색상 : \n▶ 주행거리 : \n▶ 사고유무 : \n▶ 튜닝내역 : \n▶ 하자내역 : \n',86868,'2021-11-09 13:50:26',0,0,1,2,0);
/*!40000 ALTER TABLE `goods_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_state`
--

DROP TABLE IF EXISTS `goods_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods_state` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_state`
--

LOCK TABLES `goods_state` WRITE;
/*!40000 ALTER TABLE `goods_state` DISABLE KEYS */;
INSERT INTO `goods_state` VALUES (0,'new'),(1,'registered'),(2,'soldout');
/*!40000 ALTER TABLE `goods_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liked_feed`
--

DROP TABLE IF EXISTS `liked_feed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `liked_feed` (
  `user_id` varchar(36) NOT NULL,
  `feed_id` int(11) NOT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `FK_users_TO_liked_feed_1` (`user_id`),
  KEY `FK_feed_TO_liked_feed_1` (`feed_id`),
  CONSTRAINT `FK_feed_TO_liked_feed_1` FOREIGN KEY (`feed_id`) REFERENCES `feed` (`id`),
  CONSTRAINT `FK_users_TO_liked_feed_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liked_feed`
--

LOCK TABLES `liked_feed` WRITE;
/*!40000 ALTER TABLE `liked_feed` DISABLE KEYS */;
INSERT INTO `liked_feed` VALUES ('UXumXkZpqGSYeQ1zSe8YhFZxbVj1',127,'2021-10-26 07:42:12');
/*!40000 ALTER TABLE `liked_feed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liked_feed_child_comment`
--

DROP TABLE IF EXISTS `liked_feed_child_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `liked_feed_child_comment` (
  `user_id` varchar(36) NOT NULL,
  `feed_child_comment_id` int(11) NOT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `feed_child_comment_id` (`feed_child_comment_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `liked_feed_child_comment_ibfk_1` FOREIGN KEY (`feed_child_comment_id`) REFERENCES `feed_child_comment` (`id`),
  CONSTRAINT `liked_feed_child_comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liked_feed_child_comment`
--

LOCK TABLES `liked_feed_child_comment` WRITE;
/*!40000 ALTER TABLE `liked_feed_child_comment` DISABLE KEYS */;
INSERT INTO `liked_feed_child_comment` VALUES ('jP1wRAE05gNnQc9edeoo4MGvMfo2',2,'2021-10-02 07:43:56');
/*!40000 ALTER TABLE `liked_feed_child_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liked_feed_comment`
--

DROP TABLE IF EXISTS `liked_feed_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `liked_feed_comment` (
  `user_id` varchar(36) NOT NULL,
  `feed_comment_id` int(11) NOT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `feed_comment_id` (`feed_comment_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `liked_feed_comment_ibfk_1` FOREIGN KEY (`feed_comment_id`) REFERENCES `feed_comment` (`id`),
  CONSTRAINT `liked_feed_comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liked_feed_comment`
--

LOCK TABLES `liked_feed_comment` WRITE;
/*!40000 ALTER TABLE `liked_feed_comment` DISABLE KEYS */;
INSERT INTO `liked_feed_comment` VALUES ('mvjRBv04ZhOyNGgPRqcGONmDgls1',24,'2021-10-02 05:25:08'),('jP1wRAE05gNnQc9edeoo4MGvMfo2',32,'2021-10-02 05:53:18'),('jP1wRAE05gNnQc9edeoo4MGvMfo2',36,'2021-10-02 07:30:04');
/*!40000 ALTER TABLE `liked_feed_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liked_goods`
--

DROP TABLE IF EXISTS `liked_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `liked_goods` (
  `user_id` varchar(36) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `FK_users_TO_liked_goods_1` (`user_id`),
  KEY `FK_goods_post_TO_liked_goods_1` (`goods_id`),
  CONSTRAINT `FK_goods_post_TO_liked_goods_1` FOREIGN KEY (`goods_id`) REFERENCES `goods_post` (`goods_id`),
  CONSTRAINT `FK_users_TO_liked_goods_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liked_goods`
--

LOCK TABLES `liked_goods` WRITE;
/*!40000 ALTER TABLE `liked_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `liked_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liked_tour`
--

DROP TABLE IF EXISTS `liked_tour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `liked_tour` (
  `user_id` varchar(36) NOT NULL,
  `tour_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `FK_users_TO_liked_tour_1` (`user_id`),
  KEY `FK_tour_post_TO_liked_tour_1` (`tour_id`),
  CONSTRAINT `FK_tour_post_TO_liked_tour_1` FOREIGN KEY (`tour_id`) REFERENCES `tour_post` (`tour_id`),
  CONSTRAINT `FK_users_TO_liked_tour_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liked_tour`
--

LOCK TABLES `liked_tour` WRITE;
/*!40000 ALTER TABLE `liked_tour` DISABLE KEYS */;
INSERT INTO `liked_tour` VALUES ('jP1wRAE05gNnQc9edeoo4MGvMfo2',46,'2021-10-01 12:47:01'),('jP1wRAE05gNnQc9edeoo4MGvMfo2',31,'2021-10-01 12:47:01'),('jP1wRAE05gNnQc9edeoo4MGvMfo2',30,'2021-10-01 12:47:02'),('jP1wRAE05gNnQc9edeoo4MGvMfo2',2,'2021-10-01 12:47:04'),('jP1wRAE05gNnQc9edeoo4MGvMfo2',3,'2021-10-01 12:47:04');
/*!40000 ALTER TABLE `liked_tour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `region` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (0,'서울'),(1,'경기남부'),(2,'경기북부'),(3,'강원도'),(4,'충청북도'),(5,'충청남도'),(6,'전라북도'),(7,'전라남도'),(8,'경상북도'),(9,'경상남도'),(10,'부산'),(11,'인천'),(12,'대구'),(13,'울산'),(14,'광주'),(15,'제주');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (0,'user'),(1,'admin');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour_post`
--

DROP TABLE IF EXISTS `tour_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tour_post` (
  `tour_id` int(11) NOT NULL AUTO_INCREMENT,
  `writer_id` varchar(36) NOT NULL,
  `title` varchar(30) NOT NULL,
  `contents` varchar(200) NOT NULL,
  `region_lat` decimal(15,12) NOT NULL,
  `region_lng` decimal(15,12) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `member_num` tinyint(4) NOT NULL,
  `like_count` mediumint(9) NOT NULL DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `view_count` mediumint(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tour_id`),
  KEY `FK_users_TO_tour_post_1` (`writer_id`),
  CONSTRAINT `FK_users_TO_tour_post_1` FOREIGN KEY (`writer_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_post`
--

LOCK TABLES `tour_post` WRITE;
/*!40000 ALTER TABLE `tour_post` DISABLE KEYS */;
INSERT INTO `tour_post` VALUES (1,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목','테스트입니다. 투어 테스트',38.000000000000,125.000000000000,'2021-08-21 03:00:01',12,0,'2021-08-31 05:49:09',0),(2,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목','테스트입니다. 투어 테스트',38.421520000000,125.353252000000,'2021-08-21 03:00:01',12,1,'2021-08-31 05:54:10',0),(3,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,1,'2021-09-01 04:45:47',0),(4,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:28',0),(5,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:29',0),(6,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:29',0),(7,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:30',0),(8,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:32',0),(9,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:33',0),(10,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:33',0),(11,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:34',0),(12,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:34',0),(13,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:34',0),(14,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:35',0),(15,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:35',0),(16,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:36',0),(17,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:36',0),(18,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:36',0),(19,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:37',0),(20,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:37',0),(21,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:37',0),(23,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:38',0),(24,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:39',0),(25,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:39',0),(26,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:40',0),(27,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:40',0),(28,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:41',0),(29,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:41',0),(30,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,1,'2021-09-10 11:41:42',0),(31,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,1,'2021-09-10 11:41:42',0),(45,'UkgImo2tBZP1rsRowOwom6vNoO82','sfffssssf','ddsdfsdf',37.540529554787,126.996469694816,'2021-09-21 22:32:36',5,0,'2021-09-22 10:32:48',0),(46,'UkgImo2tBZP1rsRowOwom6vNoO82','ㄴㅇㄹㄴㅇㄹㄴㄴㄴ','ㄴㅇㄹㄴㅇㄹ',37.365553769939,126.728844418169,'2021-10-09 04:14:03',8,1,'2021-09-22 11:05:55',0);
/*!40000 ALTER TABLE `tour_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` varchar(36) NOT NULL,
  `mobile_number` varchar(20) NOT NULL,
  `nick_name` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `image_url` varchar(100) DEFAULT NULL,
  `role_id` tinyint(4) NOT NULL,
  `birth` date NOT NULL,
  `sex` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_role_TO_users_1` (`role_id`),
  CONSTRAINT `FK_role_TO_users_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('6BjxQNOow4RXub7ChmbbPMNU8qA3','01046248531','슈퍼뚱보','김정민',NULL,1,'1997-12-18','male'),('jP1wRAE05gNnQc9edeoo4MGvMfo2','+11087654321','슈퍼뚱보!@#','김모씨',NULL,0,'1998-12-28','female'),('mvjRBv04ZhOyNGgPRqcGONmDgls1','01073089880','준민이형','이준민',NULL,1,'1997-12-18','male'),('UkgImo2tBZP1rsRowOwom6vNoO82','+11046248531','김딱딱','김딱딱',NULL,0,'1997-12-18','male'),('UXumXkZpqGSYeQ1zSe8YhFZxbVj1','+11012345678','sdsdf','sdfsdf',NULL,0,'1999-12-18','sdfsdf');
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

-- Dump completed on 2021-11-10  9:10:37
