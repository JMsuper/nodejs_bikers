-- MySQL dump 10.13  Distrib 8.0.26, for macos11.3 (x86_64)
--
-- Host: localhost    Database: bikers
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` tinyint NOT NULL,
  `name` varchar(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
-- Table structure for table `feed`
--

DROP TABLE IF EXISTS `feed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feed` (
  `id` int NOT NULL AUTO_INCREMENT,
  `writer_id` varchar(36) NOT NULL,
  `contents` varchar(400) NOT NULL,
  `like_count` mediumint DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `has_image` tinyint NOT NULL,
  `comment_count` mediumint DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_users_TO_feed_1` (`writer_id`),
  CONSTRAINT `FK_users_TO_feed_1` FOREIGN KEY (`writer_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feed`
--

LOCK TABLES `feed` WRITE;
/*!40000 ALTER TABLE `feed` DISABLE KEYS */;
INSERT INTO `feed` VALUES (119,'mvjRBv04ZhOyNGgPRqcGONmDgls1','dfdfdfdfd',0,'2021-09-15 09:10:11',1,5),(120,'mvjRBv04ZhOyNGgPRqcGONmDgls1','fefefefeewfw',0,'2021-09-15 09:10:49',1,0),(121,'mvjRBv04ZhOyNGgPRqcGONmDgls1','ddgdgdgdgd',0,'2021-09-15 09:10:57',1,0),(122,'mvjRBv04ZhOyNGgPRqcGONmDgls1','dfdfdfdfefe',0,'2021-09-15 09:14:42',0,0),(123,'UXumXkZpqGSYeQ1zSe8YhFZxbVj1','ㄴㅇㄴㅇㄹㄴㅇㄹㄴㅇㄹㅇㄴ',0,'2021-09-17 07:45:17',0,0),(124,'UXumXkZpqGSYeQ1zSe8YhFZxbVj1','ㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㅇㄴㄹㄴㅇㄹㅇㄹㅇㄹㅇㄹㅇㅇㄹㅇㅇㄹㅇㄹㅇㄹㅇㄹㅇㄹㅇㄹㅇㄹㅇㄹㅇㄹㅇㅇㄹㅇㄹㅈㅇㄹㅈㅇㄹㅈㅇㄹㅈㅇㅈㅇㄹㅈㅇㄹㅈㅇㄹㅈㅇㄹㅈㅇㄹㅈㅇㄹㅈㅇㄹㅈㅇㅈㄹㅇ',0,'2021-09-17 07:46:05',0,0),(125,'UkgImo2tBZP1rsRowOwom6vNoO82','sdsdfsdfsssfsdfsdfsdsfsdfffsfsfsdfsdfs\n\n\n\n\n\ns\ndsdfsdfsdfsdfsdfsdfsssdfsdfsdf\nsdfsdf\nsdfsdfsdfsfsssfs',0,'2021-09-22 07:50:41',0,0),(126,'UkgImo2tBZP1rsRowOwom6vNoO82','ewefwefwwwfwefwefwefwefwefwefwefwfwefwefwefwefwefwefwefwefwefwefwefwefwefwefwefwwwefwwefwefwefwfwwwefwefwefwfwefwefwefwefwefwefwefwwwefwfwefwefwfwfwefwefwefwfwfwefwefwfwefwfwefwfwfwefwefwwwefwefwwwefwfwwwefwfwefwfwfwfwfwefwefwefwefwefwefwefwfwefwfwefwfwfwfwfwfwfwfwfwfwwfwefwefwefwwwefwfwfwefwfwfwfwfwwwfwefwfwefwfwfwfwefwfwfwfwefwfwfwfwefwefwfwwwefwfwffwfw',0,'2021-09-22 09:22:08',0,0),(127,'UkgImo2tBZP1rsRowOwom6vNoO82','ddfssssfsdfss\ns\nsfsdfsdf\ns\nas\nadd\nsdfsdfsdfsffs\nsdfsdfsdfsfffsfsf\nadds',-1,'2021-09-22 09:24:13',0,0),(128,'UkgImo2tBZP1rsRowOwom6vNoO82','ㄴㅇㄹㄴㅇㄴㄴㄴㄴㄴㅇㄹㄴㅇㄹㄴㄴㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㄴㄴ\nㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄴㄹㄴㅇㄹㅁㄴㄹㅁㄴㅇㄹㅁㄴㅇㄹㄴㅇ레ㅏㅓㅘㅁ너ㅚㅏㅓㄴㄴ나맘ㄹㄴㄹㄴㄴㄴㅇㄹㅁㄴㅇㄹㅁ늍ㅊㅁ튠ㅊㅇ튶ㅊㄹㄴ윺ㅊㄹㅌ뮨ㅇㅊㄹ튶ㄴㅇㅊㄹ튶ㅁㄴㅇㅊㅊㅊ튬ㅍㄴㅇㅊㅍㅍㅍㅍㅍㅍㅍㅍㅇㅊㄹㅌ뮾ㅇㅊㄹ튬ㅍㄴㅇㅊ튶ㅁㄴㅇㅊㄹㅌㅊㅇㅊㅊㅊㅊㅇㅍㅍㄴㅊㅁㅍㅍㄴㅊㅇㅌ륲ㄴㅊㅁㅇㅌㅍㅁㄴㄴ륲ㅍㅍㄴㄴㅇㅊㅊㅊㄹ튶ㅇㅊ튶ㅇ튬ㅍㄴㅊㅇ튶ㅁㄴㅊㅇㅇㅇ튶ㅁㄴㅇㅊㅌㄴㄴㄴㄴㅍ튶ㅁㄴㅊㅇㅇㅇㄹㅌㅁㅍㅍㅇㅊㅊㅊㄹ튶ㅇㅊㄹ튶ㅍㅍㄴㅇㅊ튶ㅁㄴㅊㅊㄹㅌㅌ튶ㄴㅇㅊㅌㄴㅍㅍㄹㅌㅇㅊ튠ㅍㅇㅊㄹ튬ㄴㅇㅊ튠ㅍㅇㅇㅇㅊ튬ㅍㅍㅇㅊㅌ륲ㄴㅇ튶ㄴㅇㅊㄹㅌㅌ튶ㅁㅊ튬ㅍㅊㅇ튶ㅁㄴㅊㅇ튶ㅁㄴㅊ륲ㄴㅊㅇㄹ튠ㅇㅊㅊㅊㄹㄹ튬ㅍㄴㅇㅊㅊㅊㅊㄹ튶ㄴㅌㅌㅌㅌㅌㄴㅇㅊ',0,'2021-09-22 09:29:48',0,0),(129,'UkgImo2tBZP1rsRowOwom6vNoO82','assassins\nassassins\nAssad fed\nasdavxv\nxvxvxv',0,'2021-09-22 11:27:23',0,0),(130,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트입니다. 이미지 없는 경우',0,'2021-09-22 15:29:47',0,0),(131,'UXumXkZpqGSYeQ1zSe8YhFZxbVj1','ㅏㅏㅏㅏㅓㅗ’\n화하거나\nㅣㅜㅏ\n',0,'2021-09-23 11:39:12',1,1),(132,'jP1wRAE05gNnQc9edeoo4MGvMfo2','sdsdfsdfsfsssdfsdfsdsdfsd\n\nsdfsdsdfsdfsdfsdfsdfsdfsdfsdf\n\n\nsdfsdfssdsdfsdfsdfsdfsdfsdfsdfsdfffsdfsdfsdfdsfsdsdfsdfffffsdfssf',0,'2021-09-25 06:45:24',0,0),(133,'jP1wRAE05gNnQc9edeoo4MGvMfo2','dfddfddddd\ndfdfdfdf',0,'2021-09-25 10:44:50',0,12),(134,'jP1wRAE05gNnQc9edeoo4MGvMfo2','hjdtjj hi igfthhjjj',0,'2021-10-03 04:10:55',0,0),(135,'jP1wRAE05gNnQc9edeoo4MGvMfo2','vlfhu',0,'2021-10-03 04:14:26',0,2);
/*!40000 ALTER TABLE `feed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feed_child_comment`
--

DROP TABLE IF EXISTS `feed_child_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feed_child_comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `writer_id` varchar(36) NOT NULL,
  `feed_comment_id` int NOT NULL,
  `contents` varchar(100) NOT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `like_count` mediumint DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `writer_id` (`writer_id`),
  KEY `feed_comment_id` (`feed_comment_id`),
  CONSTRAINT `feed_child_comment_ibfk_1` FOREIGN KEY (`writer_id`) REFERENCES `users` (`id`),
  CONSTRAINT `feed_child_comment_ibfk_2` FOREIGN KEY (`feed_comment_id`) REFERENCES `feed_comment` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feed_comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `writer_id` varchar(36) NOT NULL,
  `feed_id` int NOT NULL,
  `contents` varchar(100) NOT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `like_count` mediumint DEFAULT '0',
  `comment_count` mediumint DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `writer_id` (`writer_id`),
  KEY `feed_id` (`feed_id`),
  CONSTRAINT `feed_comment_ibfk_1` FOREIGN KEY (`writer_id`) REFERENCES `users` (`id`),
  CONSTRAINT `feed_comment_ibfk_2` FOREIGN KEY (`feed_id`) REFERENCES `feed` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feed_comment`
--

LOCK TABLES `feed_comment` WRITE;
/*!40000 ALTER TABLE `feed_comment` DISABLE KEYS */;
INSERT INTO `feed_comment` VALUES (24,'mvjRBv04ZhOyNGgPRqcGONmDgls1',119,'123123123','2021-10-02 04:11:54',1,1),(25,'jP1wRAE05gNnQc9edeoo4MGvMfo2',119,'123123','2021-10-02 04:48:58',0,0),(26,'jP1wRAE05gNnQc9edeoo4MGvMfo2',119,'kjhkjhkj','2021-10-02 04:49:03',0,0),(27,'jP1wRAE05gNnQc9edeoo4MGvMfo2',119,'','2021-10-02 04:49:45',0,0),(28,'jP1wRAE05gNnQc9edeoo4MGvMfo2',119,'jhkjhkj','2021-10-02 04:49:51',0,0),(29,'jP1wRAE05gNnQc9edeoo4MGvMfo2',133,'dfdddfdf','2021-10-02 04:57:06',0,0),(30,'jP1wRAE05gNnQc9edeoo4MGvMfo2',133,'defeeeggges','2021-10-02 05:39:23',0,0),(31,'jP1wRAE05gNnQc9edeoo4MGvMfo2',133,'dfffdfffdddfdfdfdfdfdfdfdddddfdfdfd','2021-10-02 05:52:59',0,0),(32,'jP1wRAE05gNnQc9edeoo4MGvMfo2',133,'ggghhhghghghhhghghhhghghghghghhhghghghghghghhghghgghghghghghhhghgh','2021-10-02 05:53:12',1,0),(33,'jP1wRAE05gNnQc9edeoo4MGvMfo2',133,'','2021-10-02 06:39:59',0,0),(34,'jP1wRAE05gNnQc9edeoo4MGvMfo2',133,'','2021-10-02 06:40:00',0,0),(35,'jP1wRAE05gNnQc9edeoo4MGvMfo2',133,'','2021-10-02 06:40:01',0,0),(36,'jP1wRAE05gNnQc9edeoo4MGvMfo2',133,'','2021-10-02 06:40:01',1,0),(37,'jP1wRAE05gNnQc9edeoo4MGvMfo2',133,'','2021-10-02 06:40:02',0,1),(38,'jP1wRAE05gNnQc9edeoo4MGvMfo2',133,'','2021-10-02 06:40:05',0,0),(39,'jP1wRAE05gNnQc9edeoo4MGvMfo2',133,'fjfstu','2021-10-02 06:51:58',0,10),(40,'jP1wRAE05gNnQc9edeoo4MGvMfo2',133,'jhkvcd','2021-10-03 03:14:16',0,0),(41,'jP1wRAE05gNnQc9edeoo4MGvMfo2',135,'rjcjdflj','2021-10-03 07:56:18',0,0),(42,'jP1wRAE05gNnQc9edeoo4MGvMfo2',135,'cjftjgii','2021-10-03 07:56:29',0,1),(43,'jP1wRAE05gNnQc9edeoo4MGvMfo2',131,'fogfryfsskk','2021-10-03 08:48:19',0,0);
/*!40000 ALTER TABLE `feed_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feed_image`
--

DROP TABLE IF EXISTS `feed_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feed_image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `feed_id` int NOT NULL,
  `image_url` varchar(300) NOT NULL,
  `sequence` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `feed_id` (`feed_id`),
  CONSTRAINT `feed_image_ibfk_1` FOREIGN KEY (`feed_id`) REFERENCES `feed` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feed_image`
--

LOCK TABLES `feed_image` WRITE;
/*!40000 ALTER TABLE `feed_image` DISABLE KEYS */;
INSERT INTO `feed_image` VALUES (103,119,'https://firebasestorage.googleapis.com:443/v0/b/bikersdb-71613.appspot.com/o/feed_images%2F2021-09-15%2018:10:06.24454153b97cdaca226e2c5b7a6df8e9f7476f_exif.jpg?alt=media&token=b8263ee7-300e-4360-b270-df1e28be4e85',0),(104,119,'https://firebasestorage.googleapis.com:443/v0/b/bikersdb-71613.appspot.com/o/feed_images%2F2021-09-15%2018:10:08.1693408cfdc198b692be3685771c0eb3ad5beb_exif.jpg?alt=media&token=cba03a0a-1469-47af-8792-3f2f07840ac0',1),(105,119,'https://firebasestorage.googleapis.com:443/v0/b/bikersdb-71613.appspot.com/o/feed_images%2F2021-09-15%2018:10:09.74205958bdd973d382adb5a0741b607848397d_exif.jpg?alt=media&token=c643f7b4-4a81-4d69-b492-87a7c704aa91',2),(106,120,'https://firebasestorage.googleapis.com:443/v0/b/bikersdb-71613.appspot.com/o/feed_images%2F2021-09-15%2018:10:47.26210858bdd973d382adb5a0741b607848397d_exif.jpg?alt=media&token=3d53a5cb-e36f-4570-a943-2e4d48d360ce',0),(107,121,'https://firebasestorage.googleapis.com:443/v0/b/bikersdb-71613.appspot.com/o/feed_images%2F2021-09-15%2018:10:56.3361912b815a5031d3517b8a74d65940f89236_exif.jpg?alt=media&token=fdf974e8-2ad8-421d-b27e-a6335745b02f',0),(108,131,'https://firebasestorage.googleapis.com:443/v0/b/bikersdb-71613.appspot.com/o/feed_images%2F2021-09-23%2020:39:10.1725572b815a5031d3517b8a74d65940f89236_exif.jpg?alt=media&token=6c01acaf-504c-41a5-9aba-56b0ae8cc592',0);
/*!40000 ALTER TABLE `feed_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friend`
--

DROP TABLE IF EXISTS `friend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friend` (
  `id` int NOT NULL AUTO_INCREMENT,
  `from_user` varchar(36) NOT NULL,
  `to_user` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `from_user` (`from_user`),
  KEY `to_user` (`to_user`),
  CONSTRAINT `friend_ibfk_1` FOREIGN KEY (`from_user`) REFERENCES `users` (`id`),
  CONSTRAINT `friend_ibfk_2` FOREIGN KEY (`to_user`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friend`
--

LOCK TABLES `friend` WRITE;
/*!40000 ALTER TABLE `friend` DISABLE KEYS */;
INSERT INTO `friend` VALUES (36,'jP1wRAE05gNnQc9edeoo4MGvMfo2','UkgImo2tBZP1rsRowOwom6vNoO82'),(37,'jP1wRAE05gNnQc9edeoo4MGvMfo2','UXumXkZpqGSYeQ1zSe8YhFZxbVj1'),(38,'jP1wRAE05gNnQc9edeoo4MGvMfo2','mvjRBv04ZhOyNGgPRqcGONmDgls1');
/*!40000 ALTER TABLE `friend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_image`
--

DROP TABLE IF EXISTS `goods_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods_image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `goods_id` int NOT NULL,
  `image_url` varchar(300) NOT NULL,
  `sequence` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_id` (`goods_id`),
  CONSTRAINT `goods_image_ibfk_1` FOREIGN KEY (`goods_id`) REFERENCES `goods_post` (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_image`
--

LOCK TABLES `goods_image` WRITE;
/*!40000 ALTER TABLE `goods_image` DISABLE KEYS */;
INSERT INTO `goods_image` VALUES (16,10,'https://firebasestorage.googleapis.com:443/v0/b/bikersdb-71613.appspot.com/o/shop_images%2F2021-09-26%2016:58:57.42506253b97cdaca226e2c5b7a6df8e9f7476f_exif.jpg?alt=media&token=dc76859c-cb27-46de-a138-6782403cabda',0),(17,10,'https://firebasestorage.googleapis.com:443/v0/b/bikersdb-71613.appspot.com/o/shop_images%2F2021-09-26%2016:59:01.51851953b97cdaca226e2c5b7a6df8e9f7476f_exif.jpg?alt=media&token=d2afd78b-8ad9-4c2a-ab52-2e598fc881b6',1),(18,11,'https://firebasestorage.googleapis.com:443/v0/b/bikersdb-71613.appspot.com/o/shop_images%2F2021-09-26%2016:58:59.82618153b97cdaca226e2c5b7a6df8e9f7476f_exif.jpg?alt=media&token=1fc5c7df-c940-4a2a-a6fb-d7a68d2d649f',0),(19,11,'https://firebasestorage.googleapis.com:443/v0/b/bikersdb-71613.appspot.com/o/shop_images%2F2021-09-26%2016:59:02.40944053b97cdaca226e2c5b7a6df8e9f7476f_exif.jpg?alt=media&token=9c932acf-d3af-4267-9770-5c72b401db80',1),(20,12,'https://firebasestorage.googleapis.com:443/v0/b/bikersdb-71613.appspot.com/o/shop_images%2F2021-09-26%2019:15:18.96982053b97cdaca226e2c5b7a6df8e9f7476f_exif.jpg?alt=media&token=6fa88c8b-23ed-4cef-b064-21fb52c45f02',0);
/*!40000 ALTER TABLE `goods_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_post`
--

DROP TABLE IF EXISTS `goods_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods_post` (
  `goods_id` int NOT NULL AUTO_INCREMENT,
  `writer_id` varchar(36) NOT NULL,
  `title` varchar(30) NOT NULL,
  `contents` varchar(400) NOT NULL,
  `price` int NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `view_count` mediumint NOT NULL DEFAULT '0',
  `like_count` mediumint DEFAULT '0',
  `category_id` tinyint NOT NULL,
  `region_id` tinyint NOT NULL,
  `goods_state_id` tinyint DEFAULT '0',
  PRIMARY KEY (`goods_id`),
  KEY `FK_users_TO_goods_post_1` (`writer_id`),
  KEY `FK_category_TO_goods_post_1` (`category_id`),
  KEY `FK_region_TO_goods_post_1` (`region_id`),
  KEY `FK_goods_state_TO_goods_post_1` (`goods_state_id`),
  CONSTRAINT `FK_category_TO_goods_post_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `FK_goods_state_TO_goods_post_1` FOREIGN KEY (`goods_state_id`) REFERENCES `goods_state` (`id`),
  CONSTRAINT `FK_region_TO_goods_post_1` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`),
  CONSTRAINT `FK_users_TO_goods_post_1` FOREIGN KEY (`writer_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_post`
--

LOCK TABLES `goods_post` WRITE;
/*!40000 ALTER TABLE `goods_post` DISABLE KEYS */;
INSERT INTO `goods_post` VALUES (10,'jP1wRAE05gNnQc9edeoo4MGvMfo2','sdsdfds','sdfsdfsd',123123,'2021-09-26 07:59:03',0,1,5,5,0),(11,'jP1wRAE05gNnQc9edeoo4MGvMfo2','sdsdfds','sdfsdfsd',123123,'2021-09-26 07:59:05',0,0,5,5,0),(12,'jP1wRAE05gNnQc9edeoo4MGvMfo2','혼다 바이크 팝니다.','▶ 제조사 : 혼다\n▶ 모델명 : svc-126\n▶ 연식 : 1997년\n▶ 색상 : 주황색\n▶ 주행거리 : 87,200km\n▶ 사고유무 : 무\n▶ 튜닝내역 : 무\n▶ 하자내역 : 무\n\n꿀매이니까 많이 연락주세요\n',10000000,'2021-09-26 10:15:24',0,0,1,3,0);
/*!40000 ALTER TABLE `goods_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_state`
--

DROP TABLE IF EXISTS `goods_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods_state` (
  `id` tinyint NOT NULL,
  `name` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `liked_feed` (
  `user_id` varchar(36) NOT NULL,
  `feed_id` int NOT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `FK_users_TO_liked_feed_1` (`user_id`),
  KEY `FK_feed_TO_liked_feed_1` (`feed_id`),
  CONSTRAINT `FK_feed_TO_liked_feed_1` FOREIGN KEY (`feed_id`) REFERENCES `feed` (`id`),
  CONSTRAINT `FK_users_TO_liked_feed_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liked_feed`
--

LOCK TABLES `liked_feed` WRITE;
/*!40000 ALTER TABLE `liked_feed` DISABLE KEYS */;
/*!40000 ALTER TABLE `liked_feed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liked_feed_child_comment`
--

DROP TABLE IF EXISTS `liked_feed_child_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `liked_feed_child_comment` (
  `user_id` varchar(36) NOT NULL,
  `feed_child_comment_id` int NOT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `feed_child_comment_id` (`feed_child_comment_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `liked_feed_child_comment_ibfk_1` FOREIGN KEY (`feed_child_comment_id`) REFERENCES `feed_child_comment` (`id`),
  CONSTRAINT `liked_feed_child_comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `liked_feed_comment` (
  `user_id` varchar(36) NOT NULL,
  `feed_comment_id` int NOT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `feed_comment_id` (`feed_comment_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `liked_feed_comment_ibfk_1` FOREIGN KEY (`feed_comment_id`) REFERENCES `feed_comment` (`id`),
  CONSTRAINT `liked_feed_comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `liked_goods` (
  `user_id` varchar(36) NOT NULL,
  `goods_id` int NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `FK_users_TO_liked_goods_1` (`user_id`),
  KEY `FK_goods_post_TO_liked_goods_1` (`goods_id`),
  CONSTRAINT `FK_goods_post_TO_liked_goods_1` FOREIGN KEY (`goods_id`) REFERENCES `goods_post` (`goods_id`),
  CONSTRAINT `FK_users_TO_liked_goods_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liked_goods`
--

LOCK TABLES `liked_goods` WRITE;
/*!40000 ALTER TABLE `liked_goods` DISABLE KEYS */;
INSERT INTO `liked_goods` VALUES ('jP1wRAE05gNnQc9edeoo4MGvMfo2',10,'2021-10-06 12:01:55');
/*!40000 ALTER TABLE `liked_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liked_tour`
--

DROP TABLE IF EXISTS `liked_tour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `liked_tour` (
  `user_id` varchar(36) NOT NULL,
  `tour_id` int NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `FK_users_TO_liked_tour_1` (`user_id`),
  KEY `FK_tour_post_TO_liked_tour_1` (`tour_id`),
  CONSTRAINT `FK_tour_post_TO_liked_tour_1` FOREIGN KEY (`tour_id`) REFERENCES `tour_post` (`tour_id`),
  CONSTRAINT `FK_users_TO_liked_tour_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `region` (
  `id` tinyint NOT NULL,
  `name` varchar(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` tinyint NOT NULL,
  `name` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour_post` (
  `tour_id` int NOT NULL AUTO_INCREMENT,
  `writer_id` varchar(36) NOT NULL,
  `title` varchar(30) NOT NULL,
  `contents` varchar(200) NOT NULL,
  `region_lat` decimal(15,12) NOT NULL,
  `region_lng` decimal(15,12) NOT NULL,
  `start_date` timestamp NOT NULL,
  `member_num` tinyint NOT NULL,
  `like_count` mediumint NOT NULL DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `view_count` mediumint NOT NULL DEFAULT '0',
  PRIMARY KEY (`tour_id`),
  KEY `FK_users_TO_tour_post_1` (`writer_id`),
  CONSTRAINT `FK_users_TO_tour_post_1` FOREIGN KEY (`writer_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_post`
--

LOCK TABLES `tour_post` WRITE;
/*!40000 ALTER TABLE `tour_post` DISABLE KEYS */;
INSERT INTO `tour_post` VALUES (1,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목','테스트입니다. 투어 테스트',38.000000000000,125.000000000000,'2021-08-21 03:00:01',12,0,'2021-08-31 05:49:09',0),(2,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목','테스트입니다. 투어 테스트',38.421520000000,125.353252000000,'2021-08-21 03:00:01',12,1,'2021-08-31 05:54:10',0),(3,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,1,'2021-09-01 04:45:47',0),(4,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:28',0),(5,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:29',0),(6,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:29',0),(7,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:30',0),(8,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:32',0),(9,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:33',0),(10,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:33',0),(11,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:34',0),(12,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:34',0),(13,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:34',0),(14,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:35',0),(15,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:35',0),(16,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:36',0),(17,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:36',0),(18,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:36',0),(19,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:37',0),(20,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:37',0),(21,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:37',0),(23,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:38',0),(24,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:39',0),(25,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:39',0),(26,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:40',0),(27,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:40',0),(28,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:41',0),(29,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,0,'2021-09-10 11:41:41',0),(30,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,1,'2021-09-10 11:41:42',0),(31,'6BjxQNOow4RXub7ChmbbPMNU8qA3','테스트 제목2','테스트입니다2. 투어 테스트2',38.421524640000,125.353252000000,'2021-08-21 03:00:01',12,1,'2021-09-10 11:41:42',0),(45,'UkgImo2tBZP1rsRowOwom6vNoO82','sfffssssf','ddsdfsdf',37.540529554787,126.996469694816,'2021-09-21 22:32:36',5,0,'2021-09-22 10:32:48',0),(46,'UkgImo2tBZP1rsRowOwom6vNoO82','ㄴㅇㄹㄴㅇㄹㄴㄴㄴ','ㄴㅇㄹㄴㅇㄹ',37.365553769939,126.728844418169,'2021-12-22 03:00:00',8,1,'2021-09-22 11:05:55',0);
/*!40000 ALTER TABLE `tour_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` varchar(36) NOT NULL,
  `mobile_number` varchar(20) NOT NULL,
  `nick_name` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `image_url` varchar(100) DEFAULT NULL,
  `role_id` tinyint NOT NULL,
  `birth` date NOT NULL,
  `sex` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_role_TO_users_1` (`role_id`),
  CONSTRAINT `FK_role_TO_users_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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

-- Dump completed on 2021-10-08 22:53:18
