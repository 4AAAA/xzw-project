-- MySQL dump 10.13  Distrib 5.6.26, for osx10.8 (x86_64)
--
-- Host: localhost    Database: xzw_prod
-- ------------------------------------------------------
-- Server version	5.6.26

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
-- Table structure for table `cp_goods`
--

DROP TABLE IF EXISTS `cp_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cp_goods` (
  `GOODS_ID` varchar(100) NOT NULL,
  `TITLE` varchar(255) DEFAULT NULL COMMENT '商品标题',
  `BIANMA` varchar(30) DEFAULT NULL COMMENT '商品编码',
  `SPTYPE_ID` varchar(100) DEFAULT NULL COMMENT '商品类别',
  `SPBRAND_ID` varchar(100) DEFAULT NULL COMMENT '品牌',
  `SPUNIT_ID` varchar(100) DEFAULT NULL COMMENT '计量单位',
  `DESCRIPTION` varchar(5000) DEFAULT NULL COMMENT '商品描述',
  `SHORTDESC` varchar(500) DEFAULT NULL COMMENT '简述',
  `USERNAME` varchar(100) DEFAULT NULL COMMENT '用户名',
  `ZCOUNT` int(11) DEFAULT NULL,
  PRIMARY KEY (`GOODS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cp_goods`
--

LOCK TABLES `cp_goods` WRITE;
/*!40000 ALTER TABLE `cp_goods` DISABLE KEYS */;
INSERT INTO `cp_goods` VALUES ('284e2238d7fc4bd481c6324fc4c160cf','蒙发护发膏','0001','80c376c418014643aa1a77e2462ce704','a129234a7c584cedbc90f2917f3c9b9c','87e8777c1b514085a09e0f3438151b24','<p>蒙发护发膏</p>','蒙发护发膏','a1',60),('adfd62b9bcde4474b826f92ce64f518d','蒙发护洗发水','022556','80c376c418014643aa1a77e2462ce704','a129234a7c584cedbc90f2917f3c9b9c','87e8777c1b514085a09e0f3438151b24','<p><img src=\"/FHSHGL/plugins/ueditor/jsp/upload1/20170305/26691488717220718.png\" title=\"QQ截图20170305203324.png\"/></p>','蒙发护洗发水','a1',100),('b27e2ba8eab74c90a1418ac341d63241','洗发水','225522','8e5ed83e9fec45fb8ac7ab18f65a184d','bb86304a219b4e2b8e99e5fb0a6f406d','cbee034f4c9c4c47b097ee4ee559a67d','<p>洗发水</p>','洗发水','a2',500),('f0eb6f8cbebc453da88a8c2e1625c9f3','潘婷护法乳','22568','95a3946f4be247ecab2979ae90833a76','bde3e3e047804bc9a3e8860021209e72','abbb90a0b5624157a0593e2326d92720','<p>潘婷护法乳</p>','潘婷护法乳','a1',20);
/*!40000 ALTER TABLE `cp_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cp_spbrand`
--

DROP TABLE IF EXISTS `cp_spbrand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cp_spbrand` (
  `SPBRAND_ID` varchar(100) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL COMMENT '品牌管理',
  `BZ` varchar(1000) DEFAULT NULL COMMENT '备注',
  `USERNAME` varchar(100) DEFAULT NULL COMMENT '用户名',
  PRIMARY KEY (`SPBRAND_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cp_spbrand`
--

LOCK TABLES `cp_spbrand` WRITE;
/*!40000 ALTER TABLE `cp_spbrand` DISABLE KEYS */;
INSERT INTO `cp_spbrand` VALUES ('a129234a7c584cedbc90f2917f3c9b9c','蒙发','蒙发','a1'),('bb86304a219b4e2b8e99e5fb0a6f406d','潘婷','潘婷','a2'),('bde3e3e047804bc9a3e8860021209e72','潘婷','潘婷','a1');
/*!40000 ALTER TABLE `cp_spbrand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cp_sptype`
--

DROP TABLE IF EXISTS `cp_sptype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cp_sptype` (
  `SPTYPE_ID` varchar(100) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL COMMENT '商品类别',
  `BZ` varchar(1000) DEFAULT NULL COMMENT '备注',
  `USERNAME` varchar(100) DEFAULT NULL COMMENT '用户名',
  PRIMARY KEY (`SPTYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cp_sptype`
--

LOCK TABLES `cp_sptype` WRITE;
/*!40000 ALTER TABLE `cp_sptype` DISABLE KEYS */;
INSERT INTO `cp_sptype` VALUES ('80c376c418014643aa1a77e2462ce704','养发系类','养发系类','a1'),('8e5ed83e9fec45fb8ac7ab18f65a184d','洗发','洗发','a2'),('95a3946f4be247ecab2979ae90833a76','护法系列','护法系列','a1');
/*!40000 ALTER TABLE `cp_sptype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cp_spunit`
--

DROP TABLE IF EXISTS `cp_spunit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cp_spunit` (
  `SPUNIT_ID` varchar(100) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL COMMENT '计量单位',
  `BZ` varchar(1000) DEFAULT NULL COMMENT '备注',
  `USERNAME` varchar(100) DEFAULT NULL COMMENT '用户名',
  PRIMARY KEY (`SPUNIT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cp_spunit`
--

LOCK TABLES `cp_spunit` WRITE;
/*!40000 ALTER TABLE `cp_spunit` DISABLE KEYS */;
INSERT INTO `cp_spunit` VALUES ('87e8777c1b514085a09e0f3438151b24','盒','盒','a1'),('abbb90a0b5624157a0593e2326d92720','瓶','瓶','a1'),('cbee034f4c9c4c47b097ee4ee559a67d','瓶','瓶','a2');
/*!40000 ALTER TABLE `cp_spunit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_fhdb`
--

DROP TABLE IF EXISTS `db_fhdb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_fhdb` (
  `FHDB_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(50) DEFAULT NULL COMMENT '操作用户',
  `BACKUP_TIME` varchar(32) DEFAULT NULL COMMENT '备份时间',
  `TABLENAME` varchar(50) DEFAULT NULL COMMENT '表名',
  `SQLPATH` varchar(300) DEFAULT NULL COMMENT '存储位置',
  `TYPE` int(1) NOT NULL COMMENT '类型',
  `DBSIZE` varchar(10) DEFAULT NULL COMMENT '文件大小',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`FHDB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_fhdb`
--

LOCK TABLES `db_fhdb` WRITE;
/*!40000 ALTER TABLE `db_fhdb` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_fhdb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_timingbackup`
--

DROP TABLE IF EXISTS `db_timingbackup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_timingbackup` (
  `TIMINGBACKUP_ID` varchar(100) NOT NULL,
  `JOBNAME` varchar(50) DEFAULT NULL COMMENT '任务名称',
  `CREATE_TIME` varchar(32) DEFAULT NULL COMMENT '创建时间',
  `TABLENAME` varchar(50) DEFAULT NULL COMMENT '表名',
  `STATUS` int(1) NOT NULL COMMENT '类型',
  `FHTIME` varchar(30) DEFAULT NULL COMMENT '时间规则',
  `TIMEEXPLAIN` varchar(100) DEFAULT NULL COMMENT '规则说明',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`TIMINGBACKUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_timingbackup`
--

LOCK TABLES `db_timingbackup` WRITE;
/*!40000 ALTER TABLE `db_timingbackup` DISABLE KEYS */;
INSERT INTO `db_timingbackup` VALUES ('311e06c34a5e4518a86d5d30799f9b55','sys_app_user_515762','2016-04-11 17:04:55','sys_app_user',2,'1/2 * * ? * *','每个月的 每周 每天 每小时执行一次','备份任务'),('bc4a788bc2ec40bdb1b7730131c26d42','sys_app_user_359515','2016-04-12 17:24:05','sys_app_user',2,'1/3 * * ? * *','每个月的 每周 每天 每小时执行一次','ssss');
/*!40000 ALTER TABLE `db_timingbackup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `erp_customer`
--

DROP TABLE IF EXISTS `erp_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `erp_customer` (
  `CUSTOMER_ID` varchar(100) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL COMMENT '姓名',
  `AGE` varchar(10) DEFAULT NULL COMMENT '年龄',
  `PHONE` varchar(100) NOT NULL COMMENT '手机',
  `ADDRESS` varchar(1000) DEFAULT NULL COMMENT '地址',
  `QQ` int(20) NOT NULL COMMENT 'QQ',
  `WEIXIN` varchar(100) DEFAULT NULL COMMENT '微信',
  `CTIME` varchar(32) DEFAULT NULL COMMENT '建档时间',
  `MONEY` int(11) NOT NULL COMMENT '消费金额',
  `LEVEL` varchar(100) DEFAULT NULL COMMENT '级别',
  `REMARKS1` varchar(1000) DEFAULT NULL COMMENT '备注1',
  `REMARKS2` varchar(1000) DEFAULT NULL COMMENT '备注2',
  `USERNAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `erp_customer`
--

LOCK TABLES `erp_customer` WRITE;
/*!40000 ALTER TABLE `erp_customer` DISABLE KEYS */;
INSERT INTO `erp_customer` VALUES ('884a84021c2d45f4b09872f226bcaaa5','葛优','55','13666666666','北京',555555,'555555','2017-03-04 23:51:20',5588,'1a1b2fbf64864e78854fe04aee748acc','脱发比较严重','说','a2'),('918d6890c776437bb7baa7e71b79c7da','黄凯雅 ','25','13590215772','略',12312323,'kalssie ','2017-11-29 16:21:37',500,'50141667fca64083819a37453fd27e49','中等脱发','','a1'),('967014239237446d8951c7fecc6e608a','林晓红','25','13798979992','略',123123123,'xiaohong_6765','2017-11-29 16:22:38',500,'50141667fca64083819a37453fd27e49','中等脱发','','a1');
/*!40000 ALTER TABLE `erp_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `erp_customerimg`
--

DROP TABLE IF EXISTS `erp_customerimg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `erp_customerimg` (
  `CUSTOMERIMG_ID` varchar(100) NOT NULL,
  `CDESCRIPTION` varchar(3000) DEFAULT NULL COMMENT '描述',
  `CTIME` varchar(32) DEFAULT NULL COMMENT '记录日期',
  `CUSTOMER_ID` varchar(100) DEFAULT NULL COMMENT '商户ID',
  PRIMARY KEY (`CUSTOMERIMG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `erp_customerimg`
--

LOCK TABLES `erp_customerimg` WRITE;
/*!40000 ALTER TABLE `erp_customerimg` DISABLE KEYS */;
INSERT INTO `erp_customerimg` VALUES ('ff49180755f941cfb00b981cd0d4b9eb','<p>ddd<img src=\"/FHSHGL/plugins/ueditor/jsp/upload1/20170304/94331488563343291.jpg\" title=\"n.jpg\"/></p>','2017-03-04 01:49:05','a277421ef2524e9ab5a4492a8a7a4ac2');
/*!40000 ALTER TABLE `erp_customerimg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `erp_intoku`
--

DROP TABLE IF EXISTS `erp_intoku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `erp_intoku` (
  `INTOKU_ID` varchar(100) NOT NULL,
  `GOODS_ID` varchar(100) DEFAULT NULL COMMENT '商品ID',
  `INCOUNT` int(11) NOT NULL COMMENT '数量',
  `PRICE` double(11,2) DEFAULT NULL COMMENT '单价',
  `ZPRICE` double(11,2) DEFAULT NULL COMMENT '总价',
  `INTIME` varchar(32) DEFAULT NULL COMMENT '入库时间',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  `USERNAME` varchar(100) DEFAULT NULL COMMENT '用户名',
  `GOODS_NAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`INTOKU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `erp_intoku`
--

LOCK TABLES `erp_intoku` WRITE;
/*!40000 ALTER TABLE `erp_intoku` DISABLE KEYS */;
INSERT INTO `erp_intoku` VALUES ('39fa5c8665ef40ff9af03a13a434403d','f0eb6f8cbebc453da88a8c2e1625c9f3',60,86.00,5160.00,'2017-03-05 20:46:34','潘婷','a1','潘婷护法乳'),('47740177aa5f41cbbe263a69f2789bfd','284e2238d7fc4bd481c6324fc4c160cf',100,100.00,10000.00,'2017-03-04 15:14:02','批发','a1','蒙发护发膏'),('5cccb42838424b268fa21b23035de388','adfd62b9bcde4474b826f92ce64f518d',100,63.00,6300.00,'2017-03-05 20:37:09','洗发水','a1','蒙发护洗发水'),('886dedf433b7484abf4dea029aefcd23','b27e2ba8eab74c90a1418ac341d63241',500,30.00,15000.00,'2017-03-05 01:09:35','洗发水','a2','洗发水');
/*!40000 ALTER TABLE `erp_intoku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `erp_level`
--

DROP TABLE IF EXISTS `erp_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `erp_level` (
  `LEVEL_ID` varchar(100) NOT NULL,
  `TITLE` varchar(100) DEFAULT NULL COMMENT '级别',
  `USERNAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`LEVEL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `erp_level`
--

LOCK TABLES `erp_level` WRITE;
/*!40000 ALTER TABLE `erp_level` DISABLE KEYS */;
INSERT INTO `erp_level` VALUES ('1a1b2fbf64864e78854fe04aee748acc','大客户','a2'),('50141667fca64083819a37453fd27e49','一级代理','a1'),('56d7c5a4397c42b5bc3989d6dd46eec3','潜在客户','a1'),('bcdbb5af953f4472915a2644d42f2ce9','流动客户','a1');
/*!40000 ALTER TABLE `erp_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `erp_outku`
--

DROP TABLE IF EXISTS `erp_outku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `erp_outku` (
  `OUTKU_ID` varchar(100) NOT NULL,
  `GOODS_ID` varchar(100) DEFAULT NULL COMMENT '商品ID',
  `INCOUNT` int(11) NOT NULL COMMENT '数量',
  `PRICE` double(11,2) DEFAULT NULL COMMENT '单价',
  `ZPRICE` double(11,2) DEFAULT NULL COMMENT '总价',
  `OUTTIME` varchar(32) DEFAULT NULL COMMENT '出库时间',
  `GOODS_NAME` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `USERNAME` varchar(100) DEFAULT NULL COMMENT '用户名',
  `BZ` text,
  PRIMARY KEY (`OUTKU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `erp_outku`
--

LOCK TABLES `erp_outku` WRITE;
/*!40000 ALTER TABLE `erp_outku` DISABLE KEYS */;
INSERT INTO `erp_outku` VALUES ('8ab3a952312342eab312ea1e6fe2d628','284e2238d7fc4bd481c6324fc4c160cf',30,500.00,15000.00,'2017-01-05 20:47:41','蒙发护发膏','a1','eee'),('bc06b40e5a0f4fb9b2bc66ec9a064354','f0eb6f8cbebc453da88a8c2e1625c9f3',30,600.00,18000.00,'2017-02-05 20:48:09','潘婷护法乳','a1','ww'),('c6af144a0af54946a9988e6ca499de53','f0eb6f8cbebc453da88a8c2e1625c9f3',10,1000.00,10000.00,'2017-03-05 20:49:31','潘婷护法乳','a1','1'),('ea878108c9804f378325d5211d6e3dbc','284e2238d7fc4bd481c6324fc4c160cf',10,200.00,2000.00,'2016-12-04 15:14:33','蒙发护发膏','a1','销售');
/*!40000 ALTER TABLE `erp_outku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `erp_remarks`
--

DROP TABLE IF EXISTS `erp_remarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `erp_remarks` (
  `REMARKS_ID` varchar(100) NOT NULL,
  `REMARKS` varchar(1000) DEFAULT NULL COMMENT '备注',
  `USERNAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`REMARKS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `erp_remarks`
--

LOCK TABLES `erp_remarks` WRITE;
/*!40000 ALTER TABLE `erp_remarks` DISABLE KEYS */;
INSERT INTO `erp_remarks` VALUES ('295926172a884b28ad9adf454137d6eb','微商','a1'),('b74fa2d77faf4aaca1f0ba64927e6335','商家','a1'),('cb070bac61cf46c3a1e2790a8483c1e1','批发','a1'),('fa51fc07acb1405e9e6e3c106095d7a6','脱发比较严重','a2');
/*!40000 ALTER TABLE `erp_remarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dictionaries`
--

DROP TABLE IF EXISTS `sys_dictionaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dictionaries` (
  `DICTIONARIES_ID` varchar(100) NOT NULL,
  `NAME` varchar(30) DEFAULT NULL COMMENT '名称',
  `NAME_EN` varchar(50) DEFAULT NULL COMMENT '英文',
  `BIANMA` varchar(50) DEFAULT NULL COMMENT '编码',
  `ORDER_BY` int(11) NOT NULL COMMENT '排序',
  `PARENT_ID` varchar(100) DEFAULT NULL COMMENT '上级ID',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  `TBSNAME` varchar(100) DEFAULT NULL COMMENT '排查表',
  PRIMARY KEY (`DICTIONARIES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dictionaries`
--

LOCK TABLES `sys_dictionaries` WRITE;
/*!40000 ALTER TABLE `sys_dictionaries` DISABLE KEYS */;
INSERT INTO `sys_dictionaries` VALUES ('0193ffbfae1e49e0b7810546cada316a','济南','JiNan','0030301',1,'10f46a521ea0471f8d71ee75ac3b5f3a','济南',''),('096e4ec8986149d994b09e604504e38d','黄浦区','huangpu','0030201',1,'f1ea30ddef1340609c35c88fb2919bee','黄埔',''),('10f46a521ea0471f8d71ee75ac3b5f3a','山东','ShanDong','00303',3,'be4a8c5182c744d28282a5345783a77f','山东省',''),('12a62a3e5bed44bba0412b7e6b733c93','北京','beijing','00301',1,'be4a8c5182c744d28282a5345783a77f','北京',''),('507fa87a49104c7c8cdb52fdb297da12','宣武区','xuanwuqu','0030101',1,'12a62a3e5bed44bba0412b7e6b733c93','宣武区',''),('66f1ff79b13947da98525aff7380ef50','高新区','gaoxinqu','003030101',1,'0193ffbfae1e49e0b7810546cada316a','高新区',''),('8994f5995f474e2dba6cfbcdfe5ea07a','语文','yuwen','00201',1,'fce20eb06d7b4b4d8f200eda623f725c','语文',''),('8ea7c44af25f48b993a14f791c8d689f','分类','fenlei','001',1,'0','分类',''),('be4a8c5182c744d28282a5345783a77f','地区','diqu','003',3,'0','地区',''),('d428594b0494476aa7338d9061e23ae3','红色','red','00101',1,'8ea7c44af25f48b993a14f791c8d689f','红色',''),('de9afadfbed0428fa343704d6acce2c4','绿色','green','00102',2,'8ea7c44af25f48b993a14f791c8d689f','绿色',''),('f1ea30ddef1340609c35c88fb2919bee','上海','shanghai','00302',2,'be4a8c5182c744d28282a5345783a77f','上海',''),('fce20eb06d7b4b4d8f200eda623f725c','课程','kecheng','002',2,'0','课程','');
/*!40000 ALTER TABLE `sys_dictionaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_fhbutton`
--

DROP TABLE IF EXISTS `sys_fhbutton`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_fhbutton` (
  `FHBUTTON_ID` varchar(100) NOT NULL,
  `NAME` varchar(30) DEFAULT NULL COMMENT '名称',
  `QX_NAME` varchar(50) DEFAULT NULL COMMENT '权限标识',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`FHBUTTON_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_fhbutton`
--

LOCK TABLES `sys_fhbutton` WRITE;
/*!40000 ALTER TABLE `sys_fhbutton` DISABLE KEYS */;
INSERT INTO `sys_fhbutton` VALUES ('3542adfbda73410c976e185ffe50ad06','导出EXCEL','toExcel','导出EXCEL'),('46992ea280ba4b72b29dedb0d4bc0106','发邮件','email','发送电子邮件'),('4efa162fce8340f0bd2dcd3b11d327ec','导入EXCEL','FromExcel','导入EXCEL到系统用户'),('cc51b694d5344d28a9aa13c84b7166cd','发短信','sms','发送短信'),('da7fd386de0b49ce809984f5919022b8','站内信','FHSMS','发送站内信');
/*!40000 ALTER TABLE `sys_fhbutton` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_fhlog`
--

DROP TABLE IF EXISTS `sys_fhlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_fhlog` (
  `FHLOG_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(100) DEFAULT NULL COMMENT '用户名',
  `CZTIME` varchar(32) DEFAULT NULL COMMENT '操作时间',
  `CONTENT` varchar(255) DEFAULT NULL COMMENT '事件',
  PRIMARY KEY (`FHLOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_fhlog`
--

LOCK TABLES `sys_fhlog` WRITE;
/*!40000 ALTER TABLE `sys_fhlog` DISABLE KEYS */;
INSERT INTO `sys_fhlog` VALUES ('0369d18c3a564ba39f1d8c876935e549','a0','2017-03-06 01:19:13','退出'),('03972bf42ad34077a156549d0770b3f3','admin','2017-11-29 16:06:20','删除角色ID为:06f291d9f68645d1bc4bf2e7a29f36ce'),('053ad6cf8ece43ffb2a6bbc921f61234','a0','2017-03-06 01:19:06','登录系统'),('0a31243e63974dd8a2d42650638686e1','admin','2017-11-29 15:50:59','新增角色:豆沙包下属一级代理'),('0dacc9767f7d44fcad85e47035e044bd','a1','2017-11-28 21:37:54','退出'),('105ddca9feb04eaca7cf82b23d10aeae','admin','2017-11-28 22:37:21','登录系统'),('156f4299deee47e4909b80512c72e739','a0','2017-11-29 15:46:47','退出'),('1675d39fc041435f8c6750e6838cd6e9','admin','2017-11-28 21:40:10','登录系统'),('1cf88b73beeb4e3eb1bc7041f10aac53','a0','2017-11-29 15:46:39','登录系统'),('239beb76b5ff4f5b93cbaec2dc9a582b','a0','2017-03-05 22:15:04','登录系统'),('28eb1061c20b44a5aa3dca915663abac','admin','2017-11-29 15:53:41','退出'),('2ee91b19fa39484fbb89c3f968b54328','admin','2017-11-28 21:50:08','登录系统'),('2fd183417bb94f78809ebd1dc229a454','a1','2017-11-29 14:46:17','退出'),('303c371dfee14b8cab14597e5f654bae','a1','2017-03-05 22:15:16','登录系统'),('36110295a11f4c1f8d3662f22b38eca3','admin','2017-11-29 15:55:28','修改角色:豆沙包工作室'),('376791d9a10940cc9a0b7be064edcd0a','admin','2017-11-29 15:50:07','新增角色:豆沙包麻麻工作室'),('3a06d975d63e4e3e8dfb73c8af1ca4cd','a0','2017-11-29 16:14:10','退出'),('3d4228f2a2474f79b247e472dea0c70b','admin','2017-11-28 22:41:00','退出'),('3eb12cac69de4e629e3ca7a8d0ae13ff','admin','2017-11-29 16:07:00','修改角色:总管理员(豆沙包麻麻)'),('4679a556298a4b37b0063f117872ecb0','admin','2017-11-29 14:42:46','登录系统'),('4a8784d03de04febb84dd73fd2c64b88','a0','2017-11-28 21:39:02','登录系统'),('55c924f23b1749d7b9a0566597e62fb4','admin','2017-11-29 16:06:09','修改角色菜单权限，角色ID为:43447da0825043b896cd896bc85d679b'),('5707a8f12be148d9a3eb3d5b9612d65c','a1','2017-11-28 22:41:14','登录系统'),('5a42b154160a4393b5f981a14d91d660','admin','2017-11-29 15:53:46','登录系统'),('5de9c9ff72144a71b0daaf3e0b3ba851','a1','2017-11-29 15:46:33','退出'),('64ae906d6011460a8fd44dc5b84ead79','admin','2017-11-29 16:06:18','删除角色ID为:43447da0825043b896cd896bc85d679b'),('723e7fae2e084effb8e5dc06182525c6','a0','2017-11-28 21:40:00','退出'),('742c39add8914c099e44e6856db8c6b8','admin','2017-11-29 15:52:15','修改角色菜单权限，角色ID为:06f291d9f68645d1bc4bf2e7a29f36ce'),('74e4cfdae2454607bdee8a8cde5d0965','admin','2017-11-29 14:44:26','退出'),('79892cc777074e5dbd4fe8521dd2ba8e','a0','2017-11-29 14:46:25','登录系统'),('7e85f803078d49b9bdb8b505eb9e43d3','a1','2017-11-28 21:36:45','登录系统'),('83c2454441d94619b69abff9619951ba','a1','2017-11-29 14:44:34','登录系统'),('854ae9f1b55d472d8e9cbb462ae99bd6','admin','2017-11-29 16:07:29','修改角色:下级管理员(豆沙包麻麻代理)'),('88335798335f42ddae1dda112a538bef','admin','2017-11-28 22:38:02','登录系统'),('89b779c3212d41449ec113dfa841d873','a1','2017-03-06 00:45:20','登录系统'),('958817a5fd2749b29175158312e56f3c','a1','2017-11-29 14:51:00','登录系统'),('9799094f87064918b7b40e3cd2488569','admin','2017-11-29 16:06:07','修改角色菜单权限，角色ID为:06f291d9f68645d1bc4bf2e7a29f36ce'),('9a2159c66cb44d33b9f848026cf276ba','a0','2017-03-05 22:15:08','退出'),('9c36a1f1549e491189f5193e9dcc41f8','admin','2017-03-05 22:14:53','退出'),('9ea7970a45ed4ebf89a476e045cbf03f','admin','2017-03-06 01:18:57','退出'),('af31020eca4b4d70850db87bec722180','a0','2017-11-29 16:12:56','登录系统'),('b98f2a3211314ff3bdbebe658e3b7b07','a1','2017-12-06 23:56:23','登录系统'),('c4a577f58b26444ab87c9bdf195944f4','admin','2017-11-29 15:50:38','新增角色:豆沙包服装总管'),('c6d48b409860443eae2c605a87e5d567','admin','2017-11-29 16:12:49','退出'),('c83b3d78a92445dc9d7e5cc737820a54','a1','2017-03-06 00:03:57','退出'),('cde5fab7097a4ad38387caa5d3e6a241','admin','2017-11-29 15:46:57','登录系统'),('cf1f085041144b22ac76c790ffdb1f03','a1','2017-03-06 01:09:10','退出'),('d0e1586dfa9b402fbf26f388aa5ef3f9','admin','2017-11-29 16:06:23','删除角色ID为:663ec11d02c74b778eb5f1f8d40d6bbe'),('d6fd50d2b5e24bac997bb26edf73f63e','admin','2017-11-28 22:36:37','退出'),('da983d575f8544a182ebffab0851a2d0','admin','2017-11-29 16:08:18','修改角色菜单权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216'),('e4e561e9767c4081830d6cb03e00990a','admin','2017-03-06 00:06:01','登录系统'),('e9033e801aeb4b3dbfb9986a936f9752','admin','2017-03-06 01:09:16','登录系统'),('f25ead80761345f19957ba14754c59ec','a1','2017-11-29 16:14:16','登录系统'),('f3570abc796e4463b785cc257e9195f1','admin','2017-11-28 22:37:56','退出'),('f87e063a511944a58cc48edd54c9abca','admin','2017-11-29 15:53:58','登录系统'),('fd2d6aacfee54c02be533104cd636da4','a1','2017-03-06 01:19:22','登录系统'),('fdaca5292eb545fc87b4580990d617fd','a0','2017-11-29 14:50:51','退出');
/*!40000 ALTER TABLE `sys_fhlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_fhsms`
--

DROP TABLE IF EXISTS `sys_fhsms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_fhsms` (
  `FHSMS_ID` varchar(100) NOT NULL,
  `CONTENT` varchar(1000) DEFAULT NULL COMMENT '内容',
  `TYPE` varchar(5) DEFAULT NULL COMMENT '类型',
  `TO_USERNAME` varchar(255) DEFAULT NULL COMMENT '收信人',
  `FROM_USERNAME` varchar(255) DEFAULT NULL COMMENT '发信人',
  `SEND_TIME` varchar(100) DEFAULT NULL COMMENT '发信时间',
  `STATUS` varchar(5) DEFAULT NULL COMMENT '状态',
  `SANME_ID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`FHSMS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_fhsms`
--

LOCK TABLES `sys_fhsms` WRITE;
/*!40000 ALTER TABLE `sys_fhsms` DISABLE KEYS */;
INSERT INTO `sys_fhsms` VALUES ('05879f5868824f35932ee9f2062adc03','你好','2','admin','san','2016-01-25 14:05:31','1','b311e893228f42d5a05dbe16917fd16f'),('2635dd035c6f4bb5a091abdd784bd899','你好','2','san','admin','2016-01-25 14:05:02','1','1b7637306683460f89174c2b025862b5'),('52378ccd4e2d4fe08994d1652af87c68','你好','1','admin','san','2016-01-25 16:26:44','1','920b20dafdfb4c09b560884eb277c51d'),('77ed13f9c49a4c4bb460c41b8580dd36','gggg','2','admin','san','2016-01-24 21:22:43','2','dd9ee339576e48c5b046b94fa1901d00'),('98a6869f942042a1a037d9d9f01cb50f','你好','1','admin','san','2016-01-25 14:05:02','1','1b7637306683460f89174c2b025862b5'),('9e00295529014b6e8a27019cbccb3da1','柔柔弱弱','1','admin','san','2016-01-24 21:22:57','1','a29603d613ea4e54b5678033c1bf70a6'),('d3aedeb430f640359bff86cd657a8f59','你好','1','admin','san','2016-01-24 21:22:12','1','f022fbdce3d845aba927edb698beb90b'),('e5376b1bd54b489cb7f2203632bd74ec','管理员好','2','admin','san','2016-01-25 14:06:13','2','b347b2034faf43c79b54be4627f3bd2b'),('e613ac0fcc454f32895a70b747bf4fb5','你也好','2','admin','san','2016-01-25 16:27:54','2','ce8dc3b15afb40f28090f8b8e13f078d'),('f25e00cfafe741a3a05e3839b66dc7aa','你好','2','san','admin','2016-01-25 16:26:44','1','920b20dafdfb4c09b560884eb277c51d');
/*!40000 ALTER TABLE `sys_fhsms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_loginimg`
--

DROP TABLE IF EXISTS `sys_loginimg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_loginimg` (
  `LOGINIMG_ID` varchar(100) NOT NULL,
  `NAME` varchar(30) DEFAULT NULL COMMENT '文件名',
  `FILEPATH` varchar(100) DEFAULT NULL COMMENT '路径',
  `TYPE` int(2) NOT NULL COMMENT '状态',
  `FORDER` int(3) NOT NULL COMMENT '排序',
  PRIMARY KEY (`LOGINIMG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_loginimg`
--

LOCK TABLES `sys_loginimg` WRITE;
/*!40000 ALTER TABLE `sys_loginimg` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_loginimg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu` (
  `MENU_ID` int(11) NOT NULL,
  `MENU_NAME` varchar(255) DEFAULT NULL,
  `MENU_URL` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `MENU_ORDER` varchar(100) DEFAULT NULL,
  `MENU_ICON` varchar(60) DEFAULT NULL,
  `MENU_TYPE` varchar(10) DEFAULT NULL,
  `MENU_STATE` int(1) DEFAULT NULL,
  PRIMARY KEY (`MENU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,'系统管理','#','0','1','menu-icon fa fa-desktop blue','2',1),(2,'权限管理','#','1','1','menu-icon fa fa-lock black','1',1),(3,'日志管理','fhlog/list.do','1','6','menu-icon fa fa-book blue','1',1),(6,'信息管理','#','0','5','menu-icon fa fa-credit-card green','2',1),(7,'图片管理','#','6','1','menu-icon fa fa-folder-o pink','2',1),(8,'性能监控','druid/index.html','9','9','menu-icon fa fa-tachometer red','1',1),(9,'系统工具','#','0','3','menu-icon fa fa-cog black','2',1),(20,'在线管理','onlinemanager/list.do','1','5','menu-icon fa fa-laptop green','1',1),(36,'角色(基础权限)','role.do','2','1','menu-icon fa fa-key orange','1',1),(37,'按钮权限','buttonrights/list.do','2','2','menu-icon fa fa-key green','1',1),(38,'菜单管理','menu/listAllMenu.do','1','3','menu-icon fa fa-folder-open-o brown','1',1),(39,'按钮管理','fhbutton/list.do','1','2','menu-icon fa fa-download orange','1',1),(40,'用户管理','#','0','2','menu-icon fa fa-users blue','2',1),(41,'系统用户','user/listUsers.do','40','1','menu-icon fa fa-users green','1',1),(43,'数据字典','dictionaries/listAllDict.do?DICTIONARIES_ID=0','1','4','menu-icon fa fa-book purple','1',1),(50,'站内信','fhsms/list.do','6','3','menu-icon fa fa-envelope green','1',1),(51,'图片列表','pictures/list.do','7','1','menu-icon fa fa-folder-open-o green','1',1),(52,'图片爬虫','pictures/goImageCrawler.do','7','2','menu-icon fa fa-cloud-download green','1',1),(54,'数据库管理','#','0','9','menu-icon fa fa-hdd-o blue','2',1),(55,'数据库备份','brdb/listAllTable.do','54','1','menu-icon fa fa-cloud-upload blue','1',1),(56,'数据库还原','brdb/list.do','54','3','menu-icon fa fa-cloud-download blue','1',1),(57,'备份定时器','timingbackup/list.do','54','2','menu-icon fa fa-tachometer blue','1',1),(58,'SQL编辑器','sqledit/view.do','54','4','menu-icon fa fa-pencil-square-o blue','1',1),(69,'客户管理','#','0','11','menu-icon fa fa-users green','2',1),(70,'客户资料','customer/list.do','69','1','menu-icon fa fa-users blue','1',1),(71,'客户备注','remarks/list.do','69','2','menu-icon fa fa-bookmark green','1',1),(72,'客户级别','level/list.do','69','3','menu-icon fa fa-filter orange','1',1),(73,'商品管理','#','0','12','menu-icon fa fa-inbox blue','2',1),(74,'商品列表','goods/list.do','73','1','menu-icon fa fa-gift green','1',1),(75,'商品类别','sptype/list.do','73','2','menu-icon fa fa-book blue','1',1),(76,'品牌管理','spbrand/list.do','73','3','menu-icon fa fa-globe purple','1',1),(77,'计量单位','spunit/list.do','73','4','menu-icon fa fa-circle-o pink','1',1),(78,'库存管理','#','0','13','menu-icon fa fa-home purple','2',1),(79,'商品库存','kucun/list.do','78','1','menu-icon fa fa-home green','1',1),(80,'商品入库','intoku/list.do','78','2','menu-icon fa fa-cloud-download orange','1',1),(81,'商品出库','outku/list.do','78','3','menu-icon fa fa-cloud-upload purple','1',1),(82,'库存盘点','kucun/kucunchar.do','78','4','menu-icon fa fa-bar-chart-o blue','1',1),(83,'销售报表','outku/salesReport.do','78','5','menu-icon fa fa-book red','1',1),(84,'所有客户','allcustomer/list.do','69','1','menu-icon fa fa-users blue','1',1);
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role` (
  `ROLE_ID` varchar(100) NOT NULL,
  `ROLE_NAME` varchar(100) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `ADD_QX` varchar(255) DEFAULT NULL,
  `DEL_QX` varchar(255) DEFAULT NULL,
  `EDIT_QX` varchar(255) DEFAULT NULL,
  `CHA_QX` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES ('1','豆沙包工作室','566340778562945998','0','1','1','1','1'),('115b386ff04f4352b060dffcd2b5d1da','中级会员','','2','0','0','0','0'),('1b67fc82ce89457a8347ae53e43a347e','初级会员','','2','0','0','0','0'),('2','备用组(TEST)','','0','0','0','0','1'),('3','注册用户','','1','','0','0','0'),('3264c8e83d0248bb9e3ea6195b4c0216','总管理员(豆沙包麻麻)','38685035932986973326671936','1','19343403410773623942676544','19343403410773623942676544','19343403410773623942676544','19343403410773623942676544'),('68f8e4a39efe47c7bb869e9d15ab925d','下级管理员(豆沙包麻麻代理)','19342222819149607996489792','1','19342222819149607996489792','19342222819149607996489792','19342222819149607996489792','19342222819149607996489792'),('8b70a7e67f2841e7aaba8a4d92e5ff6f','高级会员','','2','0','0','0','0');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_fhbutton`
--

DROP TABLE IF EXISTS `sys_role_fhbutton`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_fhbutton` (
  `RB_ID` varchar(100) NOT NULL,
  `ROLE_ID` varchar(100) DEFAULT NULL,
  `BUTTON_ID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`RB_ID`),
  KEY `角色表外键` (`ROLE_ID`) USING BTREE,
  KEY `fbutton` (`BUTTON_ID`),
  CONSTRAINT `fbutton` FOREIGN KEY (`BUTTON_ID`) REFERENCES `sys_fhbutton` (`FHBUTTON_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `frole` FOREIGN KEY (`ROLE_ID`) REFERENCES `sys_role` (`ROLE_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_fhbutton`
--

LOCK TABLES `sys_role_fhbutton` WRITE;
/*!40000 ALTER TABLE `sys_role_fhbutton` DISABLE KEYS */;
INSERT INTO `sys_role_fhbutton` VALUES ('4ee1e2bc03a64ef1bc578fcf2e2ea2c1','68f8e4a39efe47c7bb869e9d15ab925d','3542adfbda73410c976e185ffe50ad06'),('5669c8754b4d4e368365ed5065f9fc10','3264c8e83d0248bb9e3ea6195b4c0216','3542adfbda73410c976e185ffe50ad06'),('6cc655a1f9b746eea6af9df540f8e743','3','da7fd386de0b49ce809984f5919022b8'),('74203935bfa34ce3b9b80e81f2a2bcfe','68f8e4a39efe47c7bb869e9d15ab925d','4efa162fce8340f0bd2dcd3b11d327ec'),('81d31bc5bf02490a85ce496b6755ef26','3','46992ea280ba4b72b29dedb0d4bc0106'),('8231c216fb514b4188e4162e629c6237','3264c8e83d0248bb9e3ea6195b4c0216','4efa162fce8340f0bd2dcd3b11d327ec'),('88f66a65ee1642bea7979e0e1050ac5f','3','4efa162fce8340f0bd2dcd3b11d327ec'),('8f8b3c5bfdfa4c6da19fce7396279180','68f8e4a39efe47c7bb869e9d15ab925d','cc51b694d5344d28a9aa13c84b7166cd'),('d51dc41918b040a78a021c9a43caf8d5','68f8e4a39efe47c7bb869e9d15ab925d','da7fd386de0b49ce809984f5919022b8'),('d80abc961d594f75b65e90d5b7437aa9','3','cc51b694d5344d28a9aa13c84b7166cd'),('d9a9a5a2d79446449cd26c17f061e1d0','3264c8e83d0248bb9e3ea6195b4c0216','da7fd386de0b49ce809984f5919022b8'),('e2033c3cdb8d48a1865e16e085f103b7','3264c8e83d0248bb9e3ea6195b4c0216','46992ea280ba4b72b29dedb0d4bc0106'),('f0329033d0914faf8ea6e9ff252cc5e6','68f8e4a39efe47c7bb869e9d15ab925d','46992ea280ba4b72b29dedb0d4bc0106'),('f919c1f620634bdaa353a9f63194a2e0','3','3542adfbda73410c976e185ffe50ad06'),('fbc51895f2184d63bd1409320a7a7a2a','3264c8e83d0248bb9e3ea6195b4c0216','cc51b694d5344d28a9aa13c84b7166cd');
/*!40000 ALTER TABLE `sys_role_fhbutton` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `USER_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `ROLE_ID` varchar(100) DEFAULT NULL,
  `LAST_LOGIN` varchar(255) DEFAULT NULL,
  `IP` varchar(100) DEFAULT NULL,
  `STATUS` varchar(32) DEFAULT NULL,
  `BZ` varchar(255) DEFAULT NULL,
  `SKIN` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(32) DEFAULT NULL,
  `NUMBER` varchar(100) DEFAULT NULL,
  `PHONE` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES ('1','admin','de41b7fb99201d8334c23c014db35ecd92df81bc','FH','1133671055321055258374707980945218933803269864762743594642571294','1','2017-11-29 15:53:58','0:0:0:0:0:0:0:1','0','admin','default','QQ313596790@main.com','001','18788888888'),('a88125c7e4994d5a80061a3645d7701d','a0','203e2ccc573d3bfd4b2492926f441614b97d9f9d','总管','','3264c8e83d0248bb9e3ea6195b4c0216','2017-11-29 16:12:56','0:0:0:0:0:0:0:1','0','总管','default','222222@qq.com','0001','13555555555'),('aba226eceabc404d8960be0ee3626fcd','a2','2a68de09b5b0087d43654e9657dcf6a87408b349','李四','','68f8e4a39efe47c7bb869e9d15ab925d','2017-03-05 01:08:09','127.0.0.1','0','李四','default','55555@qq.com','000003','18888888888'),('df658542223d4da9b700852fd9adaddf','a1','cc3282bafa1ffcbc63c7edf850067c98e28fedb3','测试','','68f8e4a39efe47c7bb869e9d15ab925d','2017-12-06 23:56:23','0:0:0:0:0:0:0:1','0','测试','default','12121212@qq.com','1002','18765555555');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_userphoto`
--

DROP TABLE IF EXISTS `sys_userphoto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_userphoto` (
  `USERPHOTO_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(30) DEFAULT NULL COMMENT '用户名',
  `PHOTO0` varchar(255) DEFAULT NULL COMMENT '原图',
  `PHOTO1` varchar(100) DEFAULT NULL COMMENT '头像1',
  `PHOTO2` varchar(100) DEFAULT NULL COMMENT '头像2',
  `PHOTO3` varchar(100) DEFAULT NULL COMMENT '头像3',
  PRIMARY KEY (`USERPHOTO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_userphoto`
--

LOCK TABLES `sys_userphoto` WRITE;
/*!40000 ALTER TABLE `sys_userphoto` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_userphoto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pictures`
--

DROP TABLE IF EXISTS `tb_pictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_pictures` (
  `PICTURES_ID` varchar(100) NOT NULL,
  `TITLE` varchar(255) DEFAULT NULL COMMENT '标题',
  `NAME` varchar(255) DEFAULT NULL COMMENT '文件名',
  `PATH` varchar(255) DEFAULT NULL COMMENT '路径',
  `CREATETIME` varchar(100) DEFAULT NULL COMMENT '创建时间',
  `MASTER_ID` varchar(255) DEFAULT NULL COMMENT '属于',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`PICTURES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pictures`
--

LOCK TABLES `tb_pictures` WRITE;
/*!40000 ALTER TABLE `tb_pictures` DISABLE KEYS */;
INSERT INTO `tb_pictures` VALUES ('9f54cd35846044d2b088ed2ac839fe95','商品图片','aaaeb48da61442e5b0c5a81f33819f8b.png','20170306/aaaeb48da61442e5b0c5a81f33819f8b.png','2017-03-06 01:24:06','284e2238d7fc4bd481c6324fc4c160cf','商品图片');
/*!40000 ALTER TABLE `tb_pictures` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-01 11:42:10
