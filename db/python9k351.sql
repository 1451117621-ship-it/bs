-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: python9k351
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `python9k351`
--

/*!40000 DROP DATABASE IF EXISTS `python9k351`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `python9k351` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `python9k351`;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COLLATE utf8mb4_unicode_ci COMMENT '提问',
  `reply` longtext COLLATE utf8mb4_unicode_ci COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  `isread` int(11) DEFAULT '0' COMMENT '已读/未读(1:已读,0:未读)',
  `uname` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户头像',
  `uimage` longtext COLLATE utf8mb4_unicode_ci COMMENT '用户名',
  `type` int(11) DEFAULT '1' COMMENT '内容类型(1:文本,2:图片,3:视频,4:文件,5:表情)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='智能客服';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (1,'2025-03-09 07:28:59',1,1,'提问1','回复1',1,1,'用户头像1','upload/chat_uimage1.jpg,upload/chat_uimage2.jpg,upload/chat_uimage3.jpg',1),(2,'2025-03-09 07:28:59',2,2,'提问2','回复2',2,2,'用户头像2','upload/chat_uimage2.jpg,upload/chat_uimage3.jpg,upload/chat_uimage4.jpg',2),(3,'2025-03-09 07:28:59',3,3,'提问3','回复3',3,3,'用户头像3','upload/chat_uimage3.jpg,upload/chat_uimage4.jpg,upload/chat_uimage5.jpg',3),(4,'2025-03-09 07:28:59',4,4,'提问4','回复4',4,4,'用户头像4','upload/chat_uimage4.jpg,upload/chat_uimage5.jpg,upload/chat_uimage6.jpg',4),(5,'2025-03-09 07:28:59',5,5,'提问5','回复5',5,5,'用户头像5','upload/chat_uimage5.jpg,upload/chat_uimage6.jpg,upload/chat_uimage7.jpg',5),(6,'2025-03-09 07:28:59',6,6,'提问6','回复6',6,6,'用户头像6','upload/chat_uimage6.jpg,upload/chat_uimage7.jpg,upload/chat_uimage8.jpg',6),(7,'2025-03-09 07:28:59',7,7,'提问7','回复7',7,7,'用户头像7','upload/chat_uimage7.jpg,upload/chat_uimage8.jpg,upload/chat_uimage1.jpg',7),(8,'2025-03-09 07:28:59',8,8,'提问8','回复8',8,8,'用户头像8','upload/chat_uimage8.jpg,upload/chat_uimage1.jpg,upload/chat_uimage2.jpg',8),(9,'2025-03-09 07:40:52',11,11,NULL,'主人，我是您的智能助手小搏，请问有什么可以帮您！',NULL,0,NULL,NULL,1),(10,'2025-03-09 07:44:26',1741506203193,1741506203193,NULL,'主人，我是您的智能助手小搏，请问有什么可以帮您！',0,1,NULL,NULL,1),(11,'2025-03-09 07:44:29',1741506203193,NULL,'你好',NULL,0,1,'11','upload/1741506202721.jpg',1),(12,'2025-03-09 07:44:33',1741506203193,1741506203193,NULL,'你好！我是文心一言，很高兴与你交流。请问有什么我可以帮助你的吗？无论是知识问答、文本创作还是其他任务，我都会尽力为你提供帮助。',0,1,NULL,NULL,1),(13,'2025-03-09 07:44:34',1741506203193,1741506203193,NULL,'您好，在线客服很高兴为您服务！',0,1,NULL,NULL,1),(14,'2025-03-09 07:44:36',1741506203193,NULL,'1122',NULL,0,1,'11','upload/1741506202721.jpg',1),(15,'2025-03-09 07:46:47',1741506203193,1,NULL,'回复回复AA',0,1,'admin','upload/image1.jpg',1),(16,'2025-03-09 07:48:06',1741506203193,1741506203193,NULL,'主人，我是您的智能助手小搏，请问有什么可以帮您！',NULL,0,NULL,NULL,1);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chongdianchangshi`
--

DROP TABLE IF EXISTS `chongdianchangshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chongdianchangshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `fengmian` longtext COLLATE utf8mb4_unicode_ci COMMENT '封面',
  `shipin` longtext COLLATE utf8mb4_unicode_ci COMMENT '视频',
  `xiangqingjieshao` longtext COLLATE utf8mb4_unicode_ci COMMENT '详情介绍',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `discussnum` int(11) DEFAULT '0' COMMENT '评论数',
  `storeupnum` int(11) DEFAULT '0' COMMENT '收藏数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='充电常识';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chongdianchangshi`
--

LOCK TABLES `chongdianchangshi` WRITE;
/*!40000 ALTER TABLE `chongdianchangshi` DISABLE KEYS */;
INSERT INTO `chongdianchangshi` VALUES (1,'2025-03-09 07:28:59','标题1','upload/chongdianchangshi_fengmian1.jpg,upload/chongdianchangshi_fengmian2.jpg,upload/chongdianchangshi_fengmian3.jpg','','详情介绍1','2025-03-09',1,1,'2025-03-09 15:28:59',2,0,1),(2,'2025-03-09 07:28:59','标题2','upload/chongdianchangshi_fengmian2.jpg,upload/chongdianchangshi_fengmian3.jpg,upload/chongdianchangshi_fengmian4.jpg','','详情介绍2','2025-03-09',2,2,'2025-03-09 15:28:59',2,0,2),(3,'2025-03-09 07:28:59','标题3','upload/chongdianchangshi_fengmian3.jpg,upload/chongdianchangshi_fengmian4.jpg,upload/chongdianchangshi_fengmian5.jpg','','详情介绍3','2025-03-09',3,3,'2025-03-09 15:28:59',3,0,3),(4,'2025-03-09 07:28:59','标题4','upload/chongdianchangshi_fengmian4.jpg,upload/chongdianchangshi_fengmian5.jpg,upload/chongdianchangshi_fengmian6.jpg','','详情介绍4','2025-03-09',4,4,'2025-03-09 15:28:59',4,0,4),(5,'2025-03-09 07:28:59','标题5','upload/chongdianchangshi_fengmian5.jpg,upload/chongdianchangshi_fengmian6.jpg,upload/chongdianchangshi_fengmian7.jpg','','详情介绍5','2025-03-09',5,5,'2025-03-09 15:28:59',5,0,5),(6,'2025-03-09 07:28:59','标题6','upload/chongdianchangshi_fengmian6.jpg,upload/chongdianchangshi_fengmian7.jpg,upload/chongdianchangshi_fengmian8.jpg','','详情介绍6','2025-03-09',6,6,'2025-03-09 15:28:59',6,0,6),(7,'2025-03-09 07:28:59','标题7','upload/chongdianchangshi_fengmian7.jpg,upload/chongdianchangshi_fengmian8.jpg,upload/chongdianchangshi_fengmian1.jpg','','详情介绍7','2025-03-09',7,7,'2025-03-09 15:28:59',7,0,7),(8,'2025-03-09 07:28:59','标题8','upload/chongdianchangshi_fengmian8.jpg,upload/chongdianchangshi_fengmian1.jpg,upload/chongdianchangshi_fengmian2.jpg','','详情介绍8','2025-03-09',8,8,'2025-03-09 15:28:59',8,0,8),(9,'2025-03-09 07:46:30','标题AAAAAAA','upload/1741506386434.jpg','upload/1741506388628.mp4','<p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p><br></p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p><br></p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p><br></p>','2025-03-09',1,0,NULL,2,1,1);
/*!40000 ALTER TABLE `chongdianchangshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chongdianzhuang`
--

DROP TABLE IF EXISTS `chongdianzhuang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chongdianzhuang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianzhuangbianhao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电桩编号',
  `chongdianzhuangleibie` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '充电桩类别',
  `tupian` longtext COLLATE utf8mb4_unicode_ci COMMENT '图片',
  `chongdiandianya` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '充电电压',
  `chongdiandianliu` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '充电电流',
  `xiaoshidanjia` double DEFAULT NULL COMMENT '小时单价',
  `gonglv` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '功率',
  `chongdiansudu` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '充电速度',
  `dianliang` double DEFAULT NULL COMMENT '电量',
  `zhuangtai` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '状态',
  `zhuyishixiang` longtext COLLATE utf8mb4_unicode_ci COMMENT '注意事项',
  `weizhi` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '位置',
  `xiangxijieshao` longtext COLLATE utf8mb4_unicode_ci COMMENT '详细介绍',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `storeupnum` int(11) DEFAULT '0' COMMENT '收藏数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dianzhuangbianhao` (`dianzhuangbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='充电桩';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chongdianzhuang`
--

LOCK TABLES `chongdianzhuang` WRITE;
/*!40000 ALTER TABLE `chongdianzhuang` DISABLE KEYS */;
INSERT INTO `chongdianzhuang` VALUES (1,'2025-03-09 07:28:59','电桩编号1','充电桩类别1','upload/chongdianzhuang_tupian1.jpg,upload/chongdianzhuang_tupian2.jpg,upload/chongdianzhuang_tupian3.jpg','充电电压1','充电电流1',1,'功率1','充电速度1',1,'使用中','注意事项1','位置1','详细介绍1','2025-03-09 15:28:59',1,1),(2,'2025-03-09 07:28:59','电桩编号2','充电桩类别2','upload/chongdianzhuang_tupian2.jpg,upload/chongdianzhuang_tupian3.jpg,upload/chongdianzhuang_tupian4.jpg','充电电压2','充电电流2',2,'功率2','充电速度2',2,'使用中','注意事项2','位置2','详细介绍2','2025-03-09 15:28:59',2,2),(3,'2025-03-09 07:28:59','电桩编号3','充电桩类别3','upload/chongdianzhuang_tupian3.jpg,upload/chongdianzhuang_tupian4.jpg,upload/chongdianzhuang_tupian5.jpg','充电电压3','充电电流3',3,'功率3','充电速度3',3,'使用中','注意事项3','位置3','详细介绍3','2025-03-09 15:28:59',3,3),(4,'2025-03-09 07:28:59','电桩编号4','充电桩类别4','upload/chongdianzhuang_tupian4.jpg,upload/chongdianzhuang_tupian5.jpg,upload/chongdianzhuang_tupian6.jpg','充电电压4','充电电流4',4,'功率4','充电速度4',4,'使用中','注意事项4','位置4','详细介绍4','2025-03-09 15:28:59',4,4),(5,'2025-03-09 07:28:59','电桩编号5','充电桩类别5','upload/chongdianzhuang_tupian5.jpg,upload/chongdianzhuang_tupian6.jpg,upload/chongdianzhuang_tupian7.jpg','充电电压5','充电电流5',5,'功率5','充电速度5',5,'使用中','注意事项5','位置5','详细介绍5','2025-03-09 15:28:59',5,5),(6,'2025-03-09 07:28:59','电桩编号6','充电桩类别6','upload/chongdianzhuang_tupian6.jpg,upload/chongdianzhuang_tupian7.jpg,upload/chongdianzhuang_tupian8.jpg','充电电压6','充电电流6',6,'功率6','充电速度6',6,'使用中','注意事项6','位置6','详细介绍6','2025-03-09 15:28:59',6,6),(7,'2025-03-09 07:28:59','电桩编号7','充电桩类别7','upload/chongdianzhuang_tupian7.jpg,upload/chongdianzhuang_tupian8.jpg,upload/chongdianzhuang_tupian1.jpg','充电电压7','充电电流7',7,'功率7','充电速度7',7,'使用中','注意事项7','位置7','详细介绍7','2025-03-09 15:28:59',10,9),(8,'2025-03-09 07:28:59','电桩编号8','充电桩类别5','upload/chongdianzhuang_tupian8.jpg,upload/chongdianzhuang_tupian1.jpg,upload/chongdianzhuang_tupian2.jpg','充电电压8','充电电流8',8,'功率8','充电速度8',8,'使用中','注意事项8','位置8','<p>详细介绍8</p>','2025-03-09 15:28:59',12,9),(9,'2025-03-09 07:44:13','2222','快充','upload/1741506243383.jpg','22','222',33,'22','22',22,'使用中','操作者可以在输入框输入   简介信息    等内容。','长沙市开福区秀峰路1号','<p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p><br></p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p><br></p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p><br></p>',NULL,2,0);
/*!40000 ALTER TABLE `chongdianzhuang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chongdianzhuangbaoxiu`
--

DROP TABLE IF EXISTS `chongdianzhuangbaoxiu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chongdianzhuangbaoxiu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianzhuangbianhao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电桩编号',
  `chongdianzhuangleibie` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '充电桩类别',
  `tupian` longtext COLLATE utf8mb4_unicode_ci COMMENT '图片',
  `baoxiuxiangqing` longtext COLLATE utf8mb4_unicode_ci COMMENT '报修详情',
  `baoxiuriqi` date DEFAULT NULL COMMENT '报修日期',
  `zhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COLLATE utf8mb4_unicode_ci COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='充电桩报修';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chongdianzhuangbaoxiu`
--

LOCK TABLES `chongdianzhuangbaoxiu` WRITE;
/*!40000 ALTER TABLE `chongdianzhuangbaoxiu` DISABLE KEYS */;
INSERT INTO `chongdianzhuangbaoxiu` VALUES (1,'2025-03-09 07:28:59','电桩编号1','充电桩类别1','upload/chongdianzhuangbaoxiu_tupian1.jpg,upload/chongdianzhuangbaoxiu_tupian2.jpg,upload/chongdianzhuangbaoxiu_tupian3.jpg','报修详情1','2025-03-09','账号1','姓名1','手机1','是',''),(2,'2025-03-09 07:28:59','电桩编号2','充电桩类别2','upload/chongdianzhuangbaoxiu_tupian2.jpg,upload/chongdianzhuangbaoxiu_tupian3.jpg,upload/chongdianzhuangbaoxiu_tupian4.jpg','报修详情2','2025-03-09','账号2','姓名2','手机2','是',''),(3,'2025-03-09 07:28:59','电桩编号3','充电桩类别3','upload/chongdianzhuangbaoxiu_tupian3.jpg,upload/chongdianzhuangbaoxiu_tupian4.jpg,upload/chongdianzhuangbaoxiu_tupian5.jpg','报修详情3','2025-03-09','账号3','姓名3','手机3','是',''),(4,'2025-03-09 07:28:59','电桩编号4','充电桩类别4','upload/chongdianzhuangbaoxiu_tupian4.jpg,upload/chongdianzhuangbaoxiu_tupian5.jpg,upload/chongdianzhuangbaoxiu_tupian6.jpg','报修详情4','2025-03-09','账号4','姓名4','手机4','是',''),(5,'2025-03-09 07:28:59','电桩编号5','充电桩类别5','upload/chongdianzhuangbaoxiu_tupian5.jpg,upload/chongdianzhuangbaoxiu_tupian6.jpg,upload/chongdianzhuangbaoxiu_tupian7.jpg','报修详情5','2025-03-09','账号5','姓名5','手机5','是',''),(6,'2025-03-09 07:28:59','电桩编号6','充电桩类别6','upload/chongdianzhuangbaoxiu_tupian6.jpg,upload/chongdianzhuangbaoxiu_tupian7.jpg,upload/chongdianzhuangbaoxiu_tupian8.jpg','报修详情6','2025-03-09','账号6','姓名6','手机6','是',''),(7,'2025-03-09 07:28:59','电桩编号7','充电桩类别7','upload/chongdianzhuangbaoxiu_tupian7.jpg,upload/chongdianzhuangbaoxiu_tupian8.jpg,upload/chongdianzhuangbaoxiu_tupian1.jpg','报修详情7','2025-03-09','账号7','姓名7','手机7','是',''),(8,'2025-03-09 07:28:59','电桩编号8','充电桩类别8','upload/chongdianzhuangbaoxiu_tupian8.jpg,upload/chongdianzhuangbaoxiu_tupian1.jpg,upload/chongdianzhuangbaoxiu_tupian2.jpg','报修详情8','2025-03-09','账号8','姓名8','手机8','是',''),(9,'2025-03-09 07:45:36','2222','快充','upload/1741506243383.jpg','<p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p><br></p>','2025-03-09','11','张三','15111111111','是','打发房东');
/*!40000 ALTER TABLE `chongdianzhuangbaoxiu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chongdianzhuangdingdan`
--

DROP TABLE IF EXISTS `chongdianzhuangdingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chongdianzhuangdingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单编号',
  `dianzhuangbianhao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电桩编号',
  `chongdianzhuangleibie` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '充电桩类别',
  `tupian` longtext COLLATE utf8mb4_unicode_ci COMMENT '图片',
  `kaishishijian` datetime DEFAULT NULL COMMENT '开始时间',
  `wanchengshijian` datetime DEFAULT NULL COMMENT '完成时间',
  `xiaoshidanjia` double DEFAULT NULL COMMENT '小时单价',
  `chongdianshizhang` double DEFAULT NULL COMMENT '充电时长',
  `yingfujine` double DEFAULT NULL COMMENT '应付金额',
  `zhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `chepaihao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '车牌号',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  `ispay` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='充电桩订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chongdianzhuangdingdan`
--

LOCK TABLES `chongdianzhuangdingdan` WRITE;
/*!40000 ALTER TABLE `chongdianzhuangdingdan` DISABLE KEYS */;
INSERT INTO `chongdianzhuangdingdan` VALUES (1,'2025-03-09 07:28:59','订单编号1','电桩编号1','落地式','upload/chongdianzhuangdingdan_tupian1.jpg,upload/chongdianzhuangdingdan_tupian2.jpg,upload/chongdianzhuangdingdan_tupian3.jpg','2025-03-09 15:28:59','2025-03-09 15:28:59',1,1,1,'账号1','姓名1','车牌号1',1,1,'未支付'),(2,'2025-03-09 07:28:59','订单编号2','电桩编号2','落地式','upload/chongdianzhuangdingdan_tupian2.jpg,upload/chongdianzhuangdingdan_tupian3.jpg,upload/chongdianzhuangdingdan_tupian4.jpg','2025-03-09 15:28:59','2025-03-09 15:28:59',2,2,2,'账号2','姓名2','车牌号2',2,2,'未支付'),(3,'2025-03-09 07:28:59','订单编号3','电桩编号3','落地式','upload/chongdianzhuangdingdan_tupian3.jpg,upload/chongdianzhuangdingdan_tupian4.jpg,upload/chongdianzhuangdingdan_tupian5.jpg','2025-03-09 15:28:59','2025-03-09 15:28:59',3,3,3,'账号3','姓名3','车牌号3',3,3,'未支付'),(4,'2025-03-09 07:28:59','订单编号4','电桩编号4','落地式','upload/chongdianzhuangdingdan_tupian4.jpg,upload/chongdianzhuangdingdan_tupian5.jpg,upload/chongdianzhuangdingdan_tupian6.jpg','2025-03-09 15:28:59','2025-03-09 15:28:59',4,4,4,'账号4','姓名4','车牌号4',4,4,'未支付'),(5,'2025-03-09 07:28:59','订单编号5','电桩编号5','落地式','upload/chongdianzhuangdingdan_tupian5.jpg,upload/chongdianzhuangdingdan_tupian6.jpg,upload/chongdianzhuangdingdan_tupian7.jpg','2025-03-09 15:28:59','2025-03-09 15:28:59',5,5,5,'账号5','姓名5','车牌号5',5,5,'未支付'),(6,'2025-03-09 07:28:59','订单编号6','电桩编号6','落地式','upload/chongdianzhuangdingdan_tupian6.jpg,upload/chongdianzhuangdingdan_tupian7.jpg,upload/chongdianzhuangdingdan_tupian8.jpg','2025-03-09 15:28:59','2025-03-09 15:28:59',6,6,6,'账号6','姓名6','车牌号6',6,6,'未支付'),(7,'2025-03-09 07:28:59','订单编号7','电桩编号7','落地式','upload/chongdianzhuangdingdan_tupian7.jpg,upload/chongdianzhuangdingdan_tupian8.jpg,upload/chongdianzhuangdingdan_tupian1.jpg','2025-03-09 15:28:59','2025-03-09 15:28:59',7,7,7,'账号7','姓名7','车牌号7',7,7,'未支付'),(8,'2025-03-09 07:28:59','订单编号8','电桩编号8','落地式','upload/chongdianzhuangdingdan_tupian8.jpg,upload/chongdianzhuangdingdan_tupian1.jpg,upload/chongdianzhuangdingdan_tupian2.jpg','2025-03-09 15:28:59','2025-03-09 15:28:59',8,8,8,'账号8','姓名8','车牌号8',8,8,'未支付'),(9,'2025-03-09 07:40:34','1111111111','电桩编号1','充电桩类别1','upload/yuyuechongdian_tupian1.jpg','2025-03-09 15:40:52','2025-03-09 15:40:58',1,1,1,'账号1','姓名1','车牌号1',11,1,'未支付'),(10,'2025-03-09 07:45:48','1741506331003','2222','快充','upload/1741506243383.jpg','2025-03-09 15:46:07','2025-03-09 18:46:07',33,3,99,'11','张三','京W45125',1741506203193,10,'已支付');
/*!40000 ALTER TABLE `chongdianzhuangdingdan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chongdianzhuangleibie`
--

DROP TABLE IF EXISTS `chongdianzhuangleibie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chongdianzhuangleibie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chongdianzhuangleibie` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '充电桩类别',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chongdianzhuangleibie` (`chongdianzhuangleibie`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='充电桩类别';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chongdianzhuangleibie`
--

LOCK TABLES `chongdianzhuangleibie` WRITE;
/*!40000 ALTER TABLE `chongdianzhuangleibie` DISABLE KEYS */;
INSERT INTO `chongdianzhuangleibie` VALUES (1,'2025-03-09 07:28:59','充电桩类别1'),(2,'2025-03-09 07:28:59','充电桩类别2'),(3,'2025-03-09 07:28:59','充电桩类别3'),(4,'2025-03-09 07:28:59','充电桩类别4'),(5,'2025-03-09 07:28:59','充电桩类别5'),(6,'2025-03-09 07:28:59','充电桩类别6'),(7,'2025-03-09 07:28:59','充电桩类别7'),(8,'2025-03-09 07:28:59','充电桩类别8'),(9,'2025-03-09 07:43:50','快充');
/*!40000 ALTER TABLE `chongdianzhuangleibie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  `url` varchar(500) DEFAULT NULL COMMENT 'url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg',NULL),(2,'picture2','upload/picture2.jpg',NULL),(3,'picture3','upload/1741506415429.jpg',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusschongdianchangshi`
--

DROP TABLE IF EXISTS `discusschongdianchangshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusschongdianchangshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COLLATE utf8mb4_unicode_ci COMMENT '头像',
  `nickname` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '评论内容',
  `reply` longtext COLLATE utf8mb4_unicode_ci COMMENT '回复内容',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `istop` int(11) DEFAULT '0' COMMENT '置顶(1:置顶,0:非置顶)',
  `tuserids` longtext COLLATE utf8mb4_unicode_ci COMMENT '赞用户ids',
  `cuserids` longtext COLLATE utf8mb4_unicode_ci COMMENT '踩用户ids',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='充电常识评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusschongdianchangshi`
--

LOCK TABLES `discusschongdianchangshi` WRITE;
/*!40000 ALTER TABLE `discusschongdianchangshi` DISABLE KEYS */;
INSERT INTO `discusschongdianchangshi` VALUES (1,'2025-03-09 07:47:29',9,1741506203193,'upload/1741506202721.jpg','11','<p>的师傅撒旦发啥</p>','<p>回复回复AA</p>',0,0,1,NULL,NULL);
/*!40000 ALTER TABLE `discusschongdianchangshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '表名',
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `picture` longtext COLLATE utf8mb4_unicode_ci COMMENT '图片',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '1' COMMENT '类型',
  `inteltype` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1,'2025-03-09 07:44:50',1741506203193,7,'chongdianzhuang','电桩编号7','upload/chongdianzhuang_tupian7.jpg','1',NULL,NULL),(2,'2025-03-09 07:44:53',1741506203193,8,'chongdianzhuang','电桩编号8','upload/chongdianzhuang_tupian8.jpg','1',NULL,NULL),(3,'2025-03-09 07:47:26',1741506203193,9,'chongdianchangshi','标题AAAAAAA','upload/1741506386434.jpg','1',NULL,NULL),(4,'2025-03-09 07:47:31',1741506203193,9,'chongdianchangshi','标题AAAAAAA','upload/1741506386434.jpg','21',NULL,NULL),(5,'2025-03-09 07:48:20',11,7,'chongdianzhuang','电桩编号7','upload/chongdianzhuang_tupian7.jpg','1',NULL,NULL);
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','odcu07f649cvrk54dhxxvljnilem9waw','2025-03-09 07:39:42','2025-03-09 08:43:30'),(2,11,'账号1','yonghu','用户','wwlr5e5f6lj09ih79o419g3a3anazneq','2025-03-09 07:40:01','2025-03-09 08:48:11'),(3,1741506203193,'11','yonghu','用户','p9erfhgeaieu6knyxhzhzgisp2ddyifl','2025-03-09 07:44:23','2025-03-09 08:44:24');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `image` varchar(200) DEFAULT NULL COMMENT '头像',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','upload/image1.jpg','管理员','2025-03-09 07:28:59');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xinnengyuangonggao`
--

DROP TABLE IF EXISTS `xinnengyuangonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xinnengyuangonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `jianjie` longtext COLLATE utf8mb4_unicode_ci COMMENT '简介',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `fengmian` longtext COLLATE utf8mb4_unicode_ci COMMENT '封面',
  `neirong` longtext COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `storeupnum` int(11) DEFAULT '0' COMMENT '收藏数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='新能源公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xinnengyuangonggao`
--

LOCK TABLES `xinnengyuangonggao` WRITE;
/*!40000 ALTER TABLE `xinnengyuangonggao` DISABLE KEYS */;
INSERT INTO `xinnengyuangonggao` VALUES (1,'2025-03-09 07:28:59','标题1','简介1','2025-03-09','upload/xinnengyuangonggao_fengmian1.jpg,upload/xinnengyuangonggao_fengmian2.jpg,upload/xinnengyuangonggao_fengmian3.jpg','内容1',1,1),(2,'2025-03-09 07:28:59','标题2','简介2','2025-03-09','upload/xinnengyuangonggao_fengmian2.jpg,upload/xinnengyuangonggao_fengmian3.jpg,upload/xinnengyuangonggao_fengmian4.jpg','内容2',2,2),(3,'2025-03-09 07:28:59','标题3','简介3','2025-03-09','upload/xinnengyuangonggao_fengmian3.jpg,upload/xinnengyuangonggao_fengmian4.jpg,upload/xinnengyuangonggao_fengmian5.jpg','内容3',3,3),(4,'2025-03-09 07:28:59','标题4','简介4','2025-03-09','upload/xinnengyuangonggao_fengmian4.jpg,upload/xinnengyuangonggao_fengmian5.jpg,upload/xinnengyuangonggao_fengmian6.jpg','内容4',4,4),(5,'2025-03-09 07:28:59','标题5','简介5','2025-03-09','upload/xinnengyuangonggao_fengmian5.jpg,upload/xinnengyuangonggao_fengmian6.jpg,upload/xinnengyuangonggao_fengmian7.jpg','内容5',5,5),(6,'2025-03-09 07:28:59','标题6','简介6','2025-03-09','upload/xinnengyuangonggao_fengmian6.jpg,upload/xinnengyuangonggao_fengmian7.jpg,upload/xinnengyuangonggao_fengmian8.jpg','内容6',7,6),(7,'2025-03-09 07:28:59','标题7','简介7','2025-03-09','upload/xinnengyuangonggao_fengmian7.jpg,upload/xinnengyuangonggao_fengmian8.jpg,upload/xinnengyuangonggao_fengmian1.jpg','内容7',7,7),(8,'2025-03-09 07:28:59','标题8','简介8','2025-03-09','upload/xinnengyuangonggao_fengmian8.jpg,upload/xinnengyuangonggao_fengmian1.jpg,upload/xinnengyuangonggao_fengmian2.jpg','内容8',8,8),(9,'2025-03-09 07:46:41','公告信息','操作者可以在输入框输入   简介信息    等内容。','2025-03-09','upload/1741506398748.jpg','<p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p><br></p>',1,0);
/*!40000 ALTER TABLE `xinnengyuangonggao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '账号',
  `mima` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `xingming` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机',
  `chepaihao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '车牌号',
  `touxiang` longtext COLLATE utf8mb4_unicode_ci COMMENT '头像',
  `sfsh` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COLLATE utf8mb4_unicode_ci COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1741506203194 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2025-03-09 07:28:59','账号1','123456','姓名1','男','13823888881','车牌号1','upload/yonghu_touxiang1.jpg','是',''),(12,'2025-03-09 07:28:59','账号2','123456','姓名2','男','13823888882','车牌号2','upload/yonghu_touxiang2.jpg','是',''),(13,'2025-03-09 07:28:59','账号3','123456','姓名3','男','13823888883','车牌号3','upload/yonghu_touxiang3.jpg','是',''),(14,'2025-03-09 07:28:59','账号4','123456','姓名4','男','13823888884','车牌号4','upload/yonghu_touxiang4.jpg','是',''),(15,'2025-03-09 07:28:59','账号5','123456','姓名5','男','13823888885','车牌号5','upload/yonghu_touxiang5.jpg','是',''),(16,'2025-03-09 07:28:59','账号6','123456','姓名6','男','13823888886','车牌号6','upload/yonghu_touxiang6.jpg','是',''),(17,'2025-03-09 07:28:59','账号7','123456','姓名7','男','13823888887','车牌号7','upload/yonghu_touxiang7.jpg','是',''),(18,'2025-03-09 07:28:59','账号8','123456','姓名8','男','13823888888','车牌号8','upload/yonghu_touxiang8.jpg','是',''),(1741506203193,'2025-03-09 07:43:23','11','11','张三','女','15111111111','京W45125','upload/1741506202721.jpg','是','12');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuyuechongdian`
--

DROP TABLE IF EXISTS `yuyuechongdian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuyuechongdian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单编号',
  `dianzhuangbianhao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电桩编号',
  `chongdianzhuangleibie` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '充电桩类别',
  `tupian` longtext COLLATE utf8mb4_unicode_ci COMMENT '图片',
  `xiaoshidanjia` double DEFAULT NULL COMMENT '小时单价',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `zhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `chepaihao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '车牌号',
  `sfsh` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COLLATE utf8mb4_unicode_ci COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='预约充电';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuyuechongdian`
--

LOCK TABLES `yuyuechongdian` WRITE;
/*!40000 ALTER TABLE `yuyuechongdian` DISABLE KEYS */;
INSERT INTO `yuyuechongdian` VALUES (1,'2025-03-09 07:28:59','1111111111','电桩编号1','充电桩类别1','upload/yuyuechongdian_tupian1.jpg,upload/yuyuechongdian_tupian2.jpg,upload/yuyuechongdian_tupian3.jpg',1,'2025-03-09 15:28:59','账号1','姓名1','车牌号1','是',''),(2,'2025-03-09 07:28:59','2222222222','电桩编号2','充电桩类别2','upload/yuyuechongdian_tupian2.jpg,upload/yuyuechongdian_tupian3.jpg,upload/yuyuechongdian_tupian4.jpg',2,'2025-03-09 15:28:59','账号2','姓名2','车牌号2','是',''),(3,'2025-03-09 07:28:59','3333333333','电桩编号3','充电桩类别3','upload/yuyuechongdian_tupian3.jpg,upload/yuyuechongdian_tupian4.jpg,upload/yuyuechongdian_tupian5.jpg',3,'2025-03-09 15:28:59','账号3','姓名3','车牌号3','是',''),(4,'2025-03-09 07:28:59','4444444444','电桩编号4','充电桩类别4','upload/yuyuechongdian_tupian4.jpg,upload/yuyuechongdian_tupian5.jpg,upload/yuyuechongdian_tupian6.jpg',4,'2025-03-09 15:28:59','账号4','姓名4','车牌号4','是',''),(5,'2025-03-09 07:28:59','5555555555','电桩编号5','充电桩类别5','upload/yuyuechongdian_tupian5.jpg,upload/yuyuechongdian_tupian6.jpg,upload/yuyuechongdian_tupian7.jpg',5,'2025-03-09 15:28:59','账号5','姓名5','车牌号5','是',''),(6,'2025-03-09 07:28:59','6666666666','电桩编号6','充电桩类别6','upload/yuyuechongdian_tupian6.jpg,upload/yuyuechongdian_tupian7.jpg,upload/yuyuechongdian_tupian8.jpg',6,'2025-03-09 15:28:59','账号6','姓名6','车牌号6','是',''),(7,'2025-03-09 07:28:59','7777777777','电桩编号7','充电桩类别7','upload/yuyuechongdian_tupian7.jpg,upload/yuyuechongdian_tupian8.jpg,upload/yuyuechongdian_tupian1.jpg',7,'2025-03-09 15:28:59','账号7','姓名7','车牌号7','是',''),(8,'2025-03-09 07:28:59','8888888888','电桩编号8','充电桩类别8','upload/yuyuechongdian_tupian8.jpg,upload/yuyuechongdian_tupian1.jpg,upload/yuyuechongdian_tupian2.jpg',8,'2025-03-09 15:28:59','账号8','姓名8','车牌号8','是',''),(9,'2025-03-09 07:40:10','1741506035183','电桩编号8','充电桩类别5','upload/chongdianzhuang_tupian8.jpg',8,'2025-03-09 15:40:35','账号1','姓名1','车牌号1','是','122'),(10,'2025-03-09 07:45:08','1741506331003','2222','快充','upload/1741506243383.jpg',33,'2025-03-09 06:45:31','11','张三','京W45125','是','122');
/*!40000 ALTER TABLE `yuyuechongdian` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-09 18:33:48
