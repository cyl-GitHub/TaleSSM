CREATE DATABASE  IF NOT EXISTS `weblog` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `weblog`;
-- MySQL dump 10.13  Distrib 5.7.25, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: weblog
-- ------------------------------------------------------
-- Server version	5.7.25

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
-- Table structure for table `accessories`
--

DROP TABLE IF EXISTS `accessories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accessories` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '附件id',
  `u_id` int(11) NOT NULL COMMENT '用户id',
  `name` varchar(20) NOT NULL COMMENT '附件名',
  `address` varchar(100) NOT NULL COMMENT '附件地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accessories`
--

LOCK TABLES `accessories` WRITE;
/*!40000 ALTER TABLE `accessories` DISABLE KEYS */;
INSERT INTO `accessories` VALUES (1,1,'2','3'),(2,1,'colin预习.txt','C:\\Users\\cyl27\\Desktop\\Tale\\File\\colin预习.txt'),(3,1,'colin预习.txt','C:\\Users\\cyl27\\Desktop\\Tale\\File\\colin预习.txt'),(4,1,'1714010601陈玉龙.doc','C:\\Users\\cyl27\\Desktop\\Tale\\File\\1714010601陈玉龙.doc'),(5,1,'1714010601陈玉龙.doc','C:\\Users\\cyl27\\Desktop\\Tale\\File\\1714010601陈玉龙.doc'),(6,6,'mysql使用.txt','D:\\学习\\编译器\\文件\\IDEA\\weblog\\File\\mysql使用.txt'),(7,1,'微博.docx','D:\\微博.docx');
/*!40000 ALTER TABLE `accessories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `u_id` int(11) NOT NULL COMMENT '用户id',
  `title` varchar(30) NOT NULL COMMENT '标题',
  `content` varchar(10000) DEFAULT NULL COMMENT '文章内容',
  `createtime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `pageview` int(11) NOT NULL DEFAULT '0' COMMENT '浏览量',
  `type` varchar(50) DEFAULT '默认分类' COMMENT '分类',
  `flag` varchar(50) DEFAULT NULL COMMENT '标签',
  `condition` varchar(10) DEFAULT '已发布',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (20,1,'1','8','2019-05-19 17:44:39',1,'6','1','已发布'),(21,1,'9','2','2019-05-19 17:56:10',1,'发送','2','已发布'),(22,7,'小风','123','2019-05-31 00:08:13',2,'5555','顶顶顶顶','已发布');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flag`
--

DROP TABLE IF EXISTS `flag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flag` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标签id',
  `u_id` int(11) NOT NULL COMMENT '用户id',
  `name` varchar(20) NOT NULL COMMENT '标签名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flag`
--

LOCK TABLES `flag` WRITE;
/*!40000 ALTER TABLE `flag` DISABLE KEYS */;
INSERT INTO `flag` VALUES (1,1,'方法'),(2,1,'特务'),(5,1,'k'),(6,1,'y'),(7,1,'666'),(8,1,'1'),(9,1,'2'),(10,7,'顶顶顶顶');
/*!40000 ALTER TABLE `flag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friends` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '友链id',
  `u_id` int(11) NOT NULL COMMENT '用户id',
  `name` varchar(50) NOT NULL COMMENT '友链名',
  `address` varchar(50) NOT NULL COMMENT '友链地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friends`
--

LOCK TABLES `friends` WRITE;
/*!40000 ALTER TABLE `friends` DISABLE KEYS */;
INSERT INTO `friends` VALUES (2,1,'2','2'),(4,1,'1','1');
/*!40000 ALTER TABLE `friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '留言id',
  `a_id` int(11) NOT NULL COMMENT '文章id',
  `u_id` int(11) NOT NULL COMMENT '用户id',
  `v_id` int(11) DEFAULT NULL COMMENT '游客id',
  `v_name` varchar(50) DEFAULT NULL COMMENT '游客用户名',
  `message` varchar(100) NOT NULL COMMENT '留言内容',
  `createtime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '留言发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (5,2,1,NULL,NULL,'111','2019-05-17 10:32:12'),(7,2,1,NULL,NULL,'222','2019-05-17 10:44:24'),(8,2,1,NULL,NULL,'333','2019-05-17 10:44:24'),(9,2,1,NULL,NULL,'444','2019-05-17 10:45:39'),(11,2,1,NULL,NULL,'555','2019-05-17 17:11:18'),(12,2,1,NULL,NULL,'666','2019-05-17 17:11:18'),(13,20,1,NULL,NULL,'222','2019-05-19 19:00:19'),(14,22,7,NULL,NULL,'666','2019-05-31 00:09:51'),(15,1,20,NULL,NULL,'000','2019-06-22 10:01:49'),(16,20,1,NULL,NULL,'000','2019-06-22 10:04:04'),(17,21,1,NULL,NULL,'+++','2019-06-22 10:04:24');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `u_id` int(11) NOT NULL COMMENT '用户id',
  `name` varchar(20) NOT NULL COMMENT '分类名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (4,1,'发送'),(5,1,'嘀咕'),(15,1,'k'),(22,1,'对对对'),(23,1,'2'),(24,1,'1'),(25,1,'5'),(26,7,'5555'),(27,1,'333'),(28,1,'000');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `name` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '用户密码',
  `obligate1` varchar(50) DEFAULT NULL COMMENT '预留1',
  `obligate2` varchar(50) DEFAULT NULL COMMENT '预留2',
  `obligate3` varchar(50) DEFAULT NULL COMMENT '预留3',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'小白','1',NULL,NULL,NULL),(6,'小黑','1',NULL,NULL,NULL),(7,'单群','456',NULL,NULL,NULL),(8,'小刚','xiaogang',NULL,NULL,NULL),(9,'6','6',NULL,NULL,NULL),(10,'陈玉龙','123456',NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'weblog'
--

--
-- Dumping routines for database 'weblog'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-26 15:28:54
