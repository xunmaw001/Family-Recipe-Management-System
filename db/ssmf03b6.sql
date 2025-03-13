-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmf03b6
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `cailiaoxinxi`
--

DROP TABLE IF EXISTS `cailiaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cailiaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cailiaomingcheng` varchar(200) DEFAULT NULL COMMENT '材料名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shiwugongxiao` varchar(200) DEFAULT NULL COMMENT '食物功效',
  `shiwudapei` varchar(200) DEFAULT NULL COMMENT '食物搭配',
  `shiwujinji` varchar(200) DEFAULT NULL COMMENT '食物禁忌',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='材料信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cailiaoxinxi`
--

LOCK TABLES `cailiaoxinxi` WRITE;
/*!40000 ALTER TABLE `cailiaoxinxi` DISABLE KEYS */;
INSERT INTO `cailiaoxinxi` VALUES (51,'2021-03-02 03:35:22','材料名称1','http://localhost:8080/ssmf03b6/upload/cailiaoxinxi_tupian1.jpg','食物功效1','食物搭配1','食物禁忌1'),(52,'2021-03-02 03:35:22','材料名称2','http://localhost:8080/ssmf03b6/upload/cailiaoxinxi_tupian2.jpg','食物功效2','食物搭配2','食物禁忌2'),(53,'2021-03-02 03:35:22','材料名称3','http://localhost:8080/ssmf03b6/upload/cailiaoxinxi_tupian3.jpg','食物功效3','食物搭配3','食物禁忌3'),(54,'2021-03-02 03:35:22','材料名称4','http://localhost:8080/ssmf03b6/upload/cailiaoxinxi_tupian4.jpg','食物功效4','食物搭配4','食物禁忌4'),(55,'2021-03-02 03:35:22','材料名称5','http://localhost:8080/ssmf03b6/upload/cailiaoxinxi_tupian5.jpg','食物功效5','食物搭配5','食物禁忌5'),(56,'2021-03-02 03:35:22','材料名称6','http://localhost:8080/ssmf03b6/upload/cailiaoxinxi_tupian6.jpg','食物功效6','食物搭配6','食物禁忌6');
/*!40000 ALTER TABLE `cailiaoxinxi` ENABLE KEYS */;
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssmf03b6/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmf03b6/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmf03b6/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='美食论坛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (61,'2021-03-02 03:35:22','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(62,'2021-03-02 03:35:22','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(63,'2021-03-02 03:35:22','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(64,'2021-03-02 03:35:22','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(65,'2021-03-02 03:35:22','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(66,'2021-03-02 03:35:22','帖子标题6','帖子内容6',6,6,'用户名6','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (81,'2021-03-02 03:35:22','标题1','简介1','http://localhost:8080/ssmf03b6/upload/news_picture1.jpg','内容1'),(82,'2021-03-02 03:35:22','标题2','简介2','http://localhost:8080/ssmf03b6/upload/news_picture2.jpg','内容2'),(83,'2021-03-02 03:35:22','标题3','简介3','http://localhost:8080/ssmf03b6/upload/news_picture3.jpg','内容3'),(84,'2021-03-02 03:35:22','标题4','简介4','http://localhost:8080/ssmf03b6/upload/news_picture4.jpg','内容4'),(85,'2021-03-02 03:35:22','标题5','简介5','http://localhost:8080/ssmf03b6/upload/news_picture5.jpg','内容5'),(86,'2021-03-02 03:35:22','标题6','简介6','http://localhost:8080/ssmf03b6/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipufenlei`
--

DROP TABLE IF EXISTS `shipufenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipufenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shipufenlei` varchar(200) NOT NULL COMMENT '食谱分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='食谱分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipufenlei`
--

LOCK TABLES `shipufenlei` WRITE;
/*!40000 ALTER TABLE `shipufenlei` DISABLE KEYS */;
INSERT INTO `shipufenlei` VALUES (21,'2021-03-02 03:35:22','食谱分类1'),(22,'2021-03-02 03:35:22','食谱分类2'),(23,'2021-03-02 03:35:22','食谱分类3'),(24,'2021-03-02 03:35:22','食谱分类4'),(25,'2021-03-02 03:35:22','食谱分类5'),(26,'2021-03-02 03:35:22','食谱分类6');
/*!40000 ALTER TABLE `shipufenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipuxinxi`
--

DROP TABLE IF EXISTS `shipuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shipumingcheng` varchar(200) NOT NULL COMMENT '食谱名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shipufenlei` varchar(200) DEFAULT NULL COMMENT '食谱分类',
  `pengrenfangshi` varchar(200) DEFAULT NULL COMMENT '烹饪方式',
  `zuofa` longtext COMMENT '做法',
  `gongxiao` varchar(200) DEFAULT NULL COMMENT '功效',
  `shizhang` varchar(200) DEFAULT NULL COMMENT '时长',
  `yuancailiao` varchar(200) DEFAULT NULL COMMENT '原材料',
  `dapeijinji` varchar(200) DEFAULT NULL COMMENT '搭配禁忌',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='食谱信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipuxinxi`
--

LOCK TABLES `shipuxinxi` WRITE;
/*!40000 ALTER TABLE `shipuxinxi` DISABLE KEYS */;
INSERT INTO `shipuxinxi` VALUES (31,'2021-03-02 03:35:22','食谱名称1','http://localhost:8080/ssmf03b6/upload/shipuxinxi_tupian1.jpg','食谱分类1','烹饪方式1','做法1','功效1','时长1','原材料1','搭配禁忌1',1,1,'2021-03-02 13:18:39',2),(32,'2021-03-02 03:35:22','食谱名称2','http://localhost:8080/ssmf03b6/upload/shipuxinxi_tupian2.jpg','食谱分类2','烹饪方式2','做法2','功效2','时长2','原材料2','搭配禁忌2',2,2,'2021-03-02 11:35:22',2),(33,'2021-03-02 03:35:22','食谱名称3','http://localhost:8080/ssmf03b6/upload/shipuxinxi_tupian3.jpg','食谱分类3','烹饪方式3','做法3','功效3','时长3','原材料3','搭配禁忌3',3,3,'2021-03-02 11:35:22',3),(34,'2021-03-02 03:35:22','食谱名称4','http://localhost:8080/ssmf03b6/upload/shipuxinxi_tupian4.jpg','食谱分类4','烹饪方式4','做法4','功效4','时长4','原材料4','搭配禁忌4',4,4,'2021-03-02 11:35:22',4),(35,'2021-03-02 03:35:22','食谱名称5','http://localhost:8080/ssmf03b6/upload/shipuxinxi_tupian5.jpg','食谱分类5','烹饪方式5','做法5','功效5','时长5','原材料5','搭配禁忌5',5,5,'2021-03-02 11:35:22',5),(36,'2021-03-02 03:35:22','食谱名称6','http://localhost:8080/ssmf03b6/upload/shipuxinxi_tupian6.jpg','食谱分类6','烹饪方式6','做法6','功效6','时长6','原材料6','搭配禁忌6',6,6,'2021-03-02 13:31:29',7);
/*!40000 ALTER TABLE `shipuxinxi` ENABLE KEYS */;
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
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614663138780 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1614663097023,'2021-03-02 05:31:36',11,36,'shipuxinxi','食谱名称6','http://localhost:8080/ssmf03b6/upload/shipuxinxi_tupian6.jpg'),(1614663138779,'2021-03-02 05:32:18',11,1614663053584,'yizhoushipujiankanganpai','学生一周营养食谱','http://localhost:8080/ssmf03b6/upload/1614662904827.jpg');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,11,'用户1','yonghu','用户','5zuo9b9wif0odpf0lhc0ztcuuu73f9a1','2021-03-02 03:36:54','2021-03-02 06:31:17'),(2,1,'abo','users','管理员','a18qv7454pmxs7fbf34oh82uvce5l3fm','2021-03-02 03:37:25','2021-03-02 06:33:44');
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
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-02 03:35:22');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yizhoushipujiankanganpai`
--

DROP TABLE IF EXISTS `yizhoushipujiankanganpai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yizhoushipujiankanganpai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaotimingcheng` varchar(200) NOT NULL COMMENT '标题名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xingqiyi` longtext COMMENT '星期一',
  `xingqier` longtext COMMENT '星期二',
  `xingqisan` longtext COMMENT '星期三',
  `xingqisi` longtext COMMENT '星期四',
  `xingqiwu` longtext COMMENT '星期五',
  `xingqiliu` longtext COMMENT '星期六',
  `xingqitian` longtext COMMENT '星期天',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614663053585 DEFAULT CHARSET=utf8 COMMENT='一周食谱健康安排';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yizhoushipujiankanganpai`
--

LOCK TABLES `yizhoushipujiankanganpai` WRITE;
/*!40000 ALTER TABLE `yizhoushipujiankanganpai` DISABLE KEYS */;
INSERT INTO `yizhoushipujiankanganpai` VALUES (41,'2021-03-02 03:35:22','标题名称1','http://localhost:8080/ssmf03b6/upload/yizhoushipujiankanganpai_tupian1.jpg','星期一1','星期二1','星期三1','星期四1','星期五1','星期六1','星期天1'),(42,'2021-03-02 03:35:22','标题名称2','http://localhost:8080/ssmf03b6/upload/yizhoushipujiankanganpai_tupian2.jpg','星期一2','星期二2','星期三2','星期四2','星期五2','星期六2','星期天2'),(43,'2021-03-02 03:35:22','标题名称3','http://localhost:8080/ssmf03b6/upload/yizhoushipujiankanganpai_tupian3.jpg','星期一3','星期二3','星期三3','星期四3','星期五3','星期六3','星期天3'),(44,'2021-03-02 03:35:22','标题名称4','http://localhost:8080/ssmf03b6/upload/yizhoushipujiankanganpai_tupian4.jpg','星期一4','星期二4','星期三4','星期四4','星期五4','星期六4','星期天4'),(45,'2021-03-02 03:35:22','标题名称5','http://localhost:8080/ssmf03b6/upload/yizhoushipujiankanganpai_tupian5.jpg','星期一5','星期二5','星期三5','星期四5','星期五5','星期六5','星期天5'),(46,'2021-03-02 03:35:22','标题名称6','http://localhost:8080/ssmf03b6/upload/yizhoushipujiankanganpai_tupian6.jpg','星期一6','星期二6','星期三6','星期四6','星期五6','星期六6','星期天6'),(1614663053584,'2021-03-02 05:30:52','学生一周营养食谱','http://localhost:8080/ssmf03b6/upload/1614662904827.jpg','早餐：牛奶，吐司\n午餐：丝瓜虾仁汤，西红柿炒鸡蛋，青椒牛肉丝，二米饭\n加餐: 苹果\n晚餐：青菜豆腐汤，木耳西葫芦，红烧黄花鱼，二米饭','早餐：豆浆，提子蛋糕卷\n午餐：三丝炸酱面\n加餐：酸奶\n晚餐: 紫菜蛋花汤，素炒花菜，可乐鸡翅，红枣米饭','早餐：八宝粥，芝士厚蛋烧\n午餐：冬瓜虾皮汤，蒜苔肉丝，家常豆腐，麦仁米饭\n加餐：桔子\n晚餐：酸菜笋丝汤，草菇豌豆苗，红烧大虾，麦仁米饭','早餐：酸奶，生菜火腿三明治\n午餐：西红柿金针菇汤，时蔬蛋炒饭\n加餐：哈密瓜\n晚餐：小白菜干贝汤，藕片荷兰豆，清蒸多宝鱼，芝麻米饭','早餐：豆奶，鲜肉小笼包\n午餐：黄瓜鸡蛋汤，彩椒圆白菜，菠萝鸡丁，红豆米饭\n加餐：牛奶\n晚餐：海带豆腐汤，口蘑炒芦笋，酱爆鱿鱼圈，红豆米饭','早餐：银耳莲子羹，胡萝卜鸡蛋饼\n午餐：时蔬牛肉面\n加餐：葡萄\n晚餐：玉米排骨汤，白灼秋葵，香煎银鳕鱼，松仁米饭','早餐：三鲜小馄饨\n午餐：竹笙菌菇汤，毛豆烧茄子，芝麻鸭肝，米饭\n加餐：酸奶\n晚餐：萝卜丝虾皮汤，干煸豆角，文蛤鸡蛋羹，米饭');
/*!40000 ALTER TABLE `yizhoushipujiankanganpai` ENABLE KEYS */;
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
  `yonghuhao` varchar(200) NOT NULL COMMENT '用户号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuhao` (`yonghuhao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-02 03:35:22','用户1','123456','用户姓名1','http://localhost:8080/ssmf03b6/upload/yonghu_touxiang1.jpg','男','13823888881','773890001@qq.com'),(12,'2021-03-02 03:35:22','用户2','123456','用户姓名2','http://localhost:8080/ssmf03b6/upload/yonghu_touxiang2.jpg','男','13823888882','773890002@qq.com'),(13,'2021-03-02 03:35:22','用户3','123456','用户姓名3','http://localhost:8080/ssmf03b6/upload/yonghu_touxiang3.jpg','男','13823888883','773890003@qq.com'),(14,'2021-03-02 03:35:22','用户4','123456','用户姓名4','http://localhost:8080/ssmf03b6/upload/yonghu_touxiang4.jpg','男','13823888884','773890004@qq.com'),(15,'2021-03-02 03:35:22','用户5','123456','用户姓名5','http://localhost:8080/ssmf03b6/upload/yonghu_touxiang5.jpg','男','13823888885','773890005@qq.com'),(16,'2021-03-02 03:35:22','用户6','123456','用户姓名6','http://localhost:8080/ssmf03b6/upload/yonghu_touxiang6.jpg','男','13823888886','773890006@qq.com');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-03 15:55:13
