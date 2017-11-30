-- MySQL dump 10.13  Distrib 5.7.9, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

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
-- Table structure for table `black_list`
--

DROP TABLE IF EXISTS `black_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `black_list` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `black_user_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `black_list`
--

LOCK TABLES `black_list` WRITE;
/*!40000 ALTER TABLE `black_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `black_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commodity_classification`
--

DROP TABLE IF EXISTS `commodity_classification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commodity_classification` (
  `Classify_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Good_kinds_Name` varchar(50) DEFAULT '',
  `Upper_ID` int(11) DEFAULT '0',
  `Upper_Name` varchar(50) DEFAULT '',
  `Description` varchar(100) DEFAULT '',
  PRIMARY KEY (`Classify_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commodity_classification`
--

LOCK TABLES `commodity_classification` WRITE;
/*!40000 ALTER TABLE `commodity_classification` DISABLE KEYS */;
INSERT INTO `commodity_classification` VALUES (1,'',0,'','广州'),(2,'',0,'','北京');
/*!40000 ALTER TABLE `commodity_classification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commodity_list`
--

DROP TABLE IF EXISTS `commodity_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commodity_list` (
  `Good_ID` varchar(50) NOT NULL DEFAULT '',
  `Classify_ID` int(11) DEFAULT '0',
  `Classify_Description` varchar(150) DEFAULT '',
  `Good_Brand` varchar(50) DEFAULT '',
  `Good_Name` varchar(200) DEFAULT '',
  `Good_Price` varchar(50) DEFAULT '',
  `Store_Add` varchar(100) DEFAULT '',
  `Monthsale_Num` int(11) DEFAULT '0',
  `Color_Classification` varchar(500) DEFAULT '',
  `Comment_Num` int(11) DEFAULT '0',
  `Good_AfterRate` varchar(50) DEFAULT '',
  `IndustryCompare` varchar(50) DEFAULT '',
  `Good_Link` varchar(100) DEFAULT '',
  `Store_Name` varchar(100) DEFAULT '',
  `Store_Link` varchar(100) DEFAULT '',
  `Good_Hot` int(11) DEFAULT '0',
  `Store_Age` varchar(50) DEFAULT '',
  `Seller_Credit` varchar(50) DEFAULT '',
  `Ishas_License` int(11) DEFAULT '0',
  `DescriptionSituation` double DEFAULT '0',
  `ServiceAttitude` double DEFAULT '0',
  `LogisticsService` double DEFAULT '0',
  `Size` varchar(200) DEFAULT '',
  PRIMARY KEY (`Good_ID`),
  KEY `FK_Commodity_list_Commodity_classification` (`Classify_ID`),
  CONSTRAINT `commodity_list_ibfk_1` FOREIGN KEY (`Classify_ID`) REFERENCES `commodity_classification` (`Classify_ID`),
  CONSTRAINT `commodity_list_ibfk_2` FOREIGN KEY (`Classify_ID`) REFERENCES `commodity_classification` (`Classify_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commodity_list`
--

LOCK TABLES `commodity_list` WRITE;
/*!40000 ALTER TABLE `commodity_list` DISABLE KEYS */;
INSERT INTO `commodity_list` VALUES ('0014c09c-c16f-4727-a028-5a9bc76b49cc',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2625.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','27个蓝钻',NULL,NULL,NULL,NULL,'1'),('06cee087-fb01-4810-937b-9d43da4816ad',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2607.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','9个蓝钻',NULL,NULL,NULL,NULL,'1'),('0fb519a5-f0d1-448c-84ec-4631994c64c3',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2626.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','28个蓝钻',NULL,NULL,NULL,NULL,'1'),('1',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2600.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2个蓝钻',NULL,NULL,NULL,NULL,'1'),('10842458-ac3b-40bc-b0bd-4336a7430e31',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2603.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','5个蓝钻',NULL,NULL,NULL,NULL,'1'),('10e102fa-7d9a-43db-af7d-4bb03ad79936',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2614.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','16个蓝钻',NULL,NULL,NULL,NULL,'1'),('128f8083-ff9f-453e-ab0b-3088cf6ccc8f',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2623.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','25个蓝钻',NULL,NULL,NULL,NULL,'1'),('12b3362d-2bdc-48ae-b01a-d7ae257155ac',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2605.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','7个蓝钻',NULL,NULL,NULL,NULL,'1'),('1323fb39-8081-45c1-a6b4-8c54fadf8ad2',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2630.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','32个蓝钻',NULL,NULL,NULL,NULL,'1'),('133ff75f-a4ae-4d8e-8856-4a85a0644f9a',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2600.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2个蓝钻',NULL,NULL,NULL,NULL,'1'),('17d7e228-26fb-4121-8e9b-5065c0574a60',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2627.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','29个蓝钻',NULL,NULL,NULL,NULL,'1'),('1b62cd72-6fb1-4048-ad50-102cd5f1ab4d',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2605.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','7个蓝钻',NULL,NULL,NULL,NULL,'1'),('1bf1f2a9-4310-4d75-8fc5-bd3d7191eec3',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2618.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','20个蓝钻',NULL,NULL,NULL,NULL,'1'),('1e4317c0-b367-4f82-882e-6b0d9cd91e7b',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2600.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2个蓝钻',NULL,NULL,NULL,NULL,'1'),('1ef5d1db-3321-457f-a750-358811799cb6',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2622.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','24个蓝钻',NULL,NULL,NULL,NULL,'1'),('2004cc30-494c-43e2-bef0-787e8c3b507f',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2627.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','29个蓝钻',NULL,NULL,NULL,NULL,'1'),('23594526-3147-436b-afb0-bda576aab477',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2624.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','26个蓝钻',NULL,NULL,NULL,NULL,'1'),('2421c154-1e4e-4dd6-bc9c-4e3def88a7ee',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2618.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','20个蓝钻',NULL,NULL,NULL,NULL,'1'),('2a7764d9-f900-4f4d-8e2e-578709d92e3a',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2618.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','20个蓝钻',NULL,NULL,NULL,NULL,'1'),('2ae77164-0773-48b0-a7be-4e1c17693d43',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2608.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','10个蓝钻',NULL,NULL,NULL,NULL,'1'),('2e6f560b-dce9-4079-812d-af742443fcdc',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2600.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2个蓝钻',NULL,NULL,NULL,NULL,'1'),('2f05cdfd-ea3f-4d41-bea6-01640cd75204',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2608.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','10个蓝钻',NULL,NULL,NULL,NULL,'1'),('304217a4-f7fb-4ddb-bf64-334a3357daec',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2607.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','9个蓝钻',NULL,NULL,NULL,NULL,'1'),('3608c377-15b3-4a9e-aeb1-3ffa557ec8e6',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2619.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','21个蓝钻',NULL,NULL,NULL,NULL,'1'),('3687ce47-0266-4ac6-9fea-281e4bcf53ea',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2609.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','11个蓝钻',NULL,NULL,NULL,NULL,'1'),('382d688e-bd81-4ece-9725-0857dc761efa',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2605.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','7个蓝钻',NULL,NULL,NULL,NULL,'1'),('3854e124-b4e2-4aa0-ae56-26dcd075c2be',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2619.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','21个蓝钻',NULL,NULL,NULL,NULL,'1'),('38c955de-0cb1-4122-99da-ce345526d7ac',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2626.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','28个蓝钻',NULL,NULL,NULL,NULL,'1'),('3a510c0e-d658-454b-93bf-6750f23c96e5',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2610.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','12个蓝钻',NULL,NULL,NULL,NULL,'1'),('3edda29a-4d71-4662-b1fc-48b36e723f73',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2601.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','3个蓝钻',NULL,NULL,NULL,NULL,'1'),('3fbf6de8-288e-4315-be80-78a69dfdf11b',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2603.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','5个蓝钻',NULL,NULL,NULL,NULL,'1'),('411a508c-fea2-4133-b178-459c7a4ba40f',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2625.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','27个蓝钻',NULL,NULL,NULL,NULL,'1'),('42785058-323c-4232-8a24-152dd9e4aaef',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2609.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','11个蓝钻',NULL,NULL,NULL,NULL,'1'),('4425e926-490e-4867-8ba1-e59477136410',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2606.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','8个蓝钻',NULL,NULL,NULL,NULL,'1'),('45f36ec2-34d9-4671-b0e4-c53de349217f',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2611.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','13个蓝钻',NULL,NULL,NULL,NULL,'1'),('4831bf8d-2608-4f59-8ad0-372036741a1c',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2624.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','26个蓝钻',NULL,NULL,NULL,NULL,'1'),('492bb7da-2031-44d5-b2b5-28abc82e7e88',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2624.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','26个蓝钻',NULL,NULL,NULL,NULL,'1'),('4cf64224-00eb-44fc-ab74-4b889d33eb42',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2612.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','14个蓝钻',NULL,NULL,NULL,NULL,'1'),('4e2a3ece-d464-438d-bb25-29dd78e99b1e',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2624.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','26个蓝钻',NULL,NULL,NULL,NULL,'1'),('4e781ddb-5573-473f-927f-d8d19e223242',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2628.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','30个蓝钻',NULL,NULL,NULL,NULL,'1'),('4f250e56-75b1-4eec-838a-710707694a28',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2601.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','3个蓝钻',NULL,NULL,NULL,NULL,'1'),('506aa34b-5611-490b-a5ec-5fec4de541c4',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2616.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','18个蓝钻',NULL,NULL,NULL,NULL,'1'),('51150ae9-9517-483b-aa0c-6046e52bd32c',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2623.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','25个蓝钻',NULL,NULL,NULL,NULL,'1'),('51851c13-e50a-405a-8d44-a0a4923a52f6',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2629.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','31个蓝钻',NULL,NULL,NULL,NULL,'1'),('55d75a33-9910-4479-b4e4-cbac890f3666',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2612.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','14个蓝钻',NULL,NULL,NULL,NULL,'1'),('56cfd295-ab5a-4e02-83bd-55225ba6f549',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2617.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','19个蓝钻',NULL,NULL,NULL,NULL,'1'),('5aca8e2b-258f-46da-9a35-b44b6cf397e3',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2608.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','10个蓝钻',NULL,NULL,NULL,NULL,'1'),('5b176b4e-de92-46c1-accf-325921158241',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2607.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','9个蓝钻',NULL,NULL,NULL,NULL,'1'),('5cf18300-fced-4c28-9a2a-26c23f958fc1',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2604.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','6个蓝钻',NULL,NULL,NULL,NULL,'1'),('5e8ad3c5-8b0c-40ae-abc5-34b78723704c',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2611.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','13个蓝钻',NULL,NULL,NULL,NULL,'1'),('6026666d-425e-4874-b58b-584c735b9f45',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2621.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','23个蓝钻',NULL,NULL,NULL,NULL,'1'),('624f20a6-b43a-4797-af4c-0f4f77a06cbe',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2622.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','24个蓝钻',NULL,NULL,NULL,NULL,'1'),('65e6dcdd-4875-4f45-8fa1-e5050c00367f',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2619.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','21个蓝钻',NULL,NULL,NULL,NULL,'1'),('6784f2ba-2239-4cdd-a2f2-708bec82d035',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2623.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','25个蓝钻',NULL,NULL,NULL,NULL,'1'),('69959714-bbbb-4099-abf1-bcd1409aeb7e',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2617.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','19个蓝钻',NULL,NULL,NULL,NULL,'1'),('69e09dcb-4bb1-44ea-9df4-4ac3e8ecda98',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2616.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','18个蓝钻',NULL,NULL,NULL,NULL,'1'),('6c2cf1df-1360-4c7c-ad74-4f87926fc957',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2631.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','33个蓝钻',NULL,NULL,NULL,NULL,'1'),('6cb77ce3-9606-4b31-8005-5d4f9038b181',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2602.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','4个蓝钻',NULL,NULL,NULL,NULL,'1'),('73368f8c-80f3-465d-9964-ffc76f6b2785',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2606.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','8个蓝钻',NULL,NULL,NULL,NULL,'1'),('755626b4-41d2-44a9-b31e-4eef25c3a969',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2628.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','30个蓝钻',NULL,NULL,NULL,NULL,'1'),('758e184e-0b23-4075-9e57-fb21d7e429b1',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2609.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','11个蓝钻',NULL,NULL,NULL,NULL,'1'),('772c85f8-a9f9-4181-bb09-06175fc34dbf',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2611.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','13个蓝钻',NULL,NULL,NULL,NULL,'1'),('772e25ba-915f-4bbf-b8c2-af570167cfe4',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2629.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','31个蓝钻',NULL,NULL,NULL,NULL,'1'),('7bb569f1-5611-466a-9649-6e1b679c3bfb',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2626.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','28个蓝钻',NULL,NULL,NULL,NULL,'1'),('7d853923-e6a0-4519-ad20-34ff246f9dab',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2627.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','29个蓝钻',NULL,NULL,NULL,NULL,'1'),('7d970653-91fc-433a-9346-c410e58f190c',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2611.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','13个蓝钻',NULL,NULL,NULL,NULL,'1'),('7e0cf18b-dd93-4994-a347-51055beb3fd5',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2620.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','22个蓝钻',NULL,NULL,NULL,NULL,'1'),('80a92f5b-c0be-43a1-9cdd-87c5f13c67de',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2604.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','6个蓝钻',NULL,NULL,NULL,NULL,'1'),('8230fdf4-bd76-4383-a48c-16fc13d494af',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2616.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','18个蓝钻',NULL,NULL,NULL,NULL,'1'),('8509c9c2-3ce7-41fd-a6b6-03ff505082aa',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2616.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','18个蓝钻',NULL,NULL,NULL,NULL,'1'),('851ed1db-0c1d-4507-837a-3a4fdb8bb4f4',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2631.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','33个蓝钻',NULL,NULL,NULL,NULL,'1'),('855d4467-7acd-4400-8ee6-f36fba8a7288',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2615.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','17个蓝钻',NULL,NULL,NULL,NULL,'1'),('858ecd77-7594-4d76-9cfc-95c4d15e8b1b',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2625.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','27个蓝钻',NULL,NULL,NULL,NULL,'1'),('85aa2ad2-12cc-4ffa-80b0-37236c85802d',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2609.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','11个蓝钻',NULL,NULL,NULL,NULL,'1'),('880df35d-5687-45b3-80ba-1c07f22a8290',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2615.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','17个蓝钻',NULL,NULL,NULL,NULL,'1'),('89774ff1-d054-4351-b493-1af0e2ecf800',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2615.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','17个蓝钻',NULL,NULL,NULL,NULL,'1'),('8c218f3d-4573-492c-898d-95bf1c771556',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2602.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','4个蓝钻',NULL,NULL,NULL,NULL,'1'),('8e77c2b2-a7ab-4f38-98e0-381affe97055',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2602.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','4个蓝钻',NULL,NULL,NULL,NULL,'1'),('9007756e-c871-4a8d-be64-0cb8a0520d73',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2604.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','6个蓝钻',NULL,NULL,NULL,NULL,'1'),('90a4173a-36fa-48e1-8c80-fda867599d5a',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2603.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','5个蓝钻',NULL,NULL,NULL,NULL,'1'),('91c6887b-5ca4-4972-9556-644973706850',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2605.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','7个蓝钻',NULL,NULL,NULL,NULL,'1'),('954f040f-7a48-4b53-bf52-26800f2c461e',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2631.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','33个蓝钻',NULL,NULL,NULL,NULL,'1'),('9ad19778-d401-48a3-81e9-9df88d3622b8',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2620.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','22个蓝钻',NULL,NULL,NULL,NULL,'1'),('9ae38bd0-29b5-4dc4-a2c6-b037bb4ea8bb',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2620.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','22个蓝钻',NULL,NULL,NULL,NULL,'1'),('9b7cd586-25a0-47fd-90d0-674faab875e0',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2607.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','9个蓝钻',NULL,NULL,NULL,NULL,'1'),('9da56e42-8a42-4d6a-9c55-36b844abea63',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2629.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','31个蓝钻',NULL,NULL,NULL,NULL,'1'),('9f064333-f0ac-4602-a28d-de08e984b3db',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2613.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','15个蓝钻',NULL,NULL,NULL,NULL,'1'),('a1bc5fbb-5672-40df-86fd-48afccf42c51',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2627.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','29个蓝钻',NULL,NULL,NULL,NULL,'1'),('a3b7b30d-e0f3-483a-8d2c-ba1e9e9f37cb',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2623.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','25个蓝钻',NULL,NULL,NULL,NULL,'1'),('a948b17f-0d94-4ca1-b514-a5b87dd80844',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2610.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','12个蓝钻',NULL,NULL,NULL,NULL,'1'),('a9d27b7b-39bb-4ab8-b1e8-277d5a08d44f',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2631.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','33个蓝钻',NULL,NULL,NULL,NULL,'1'),('ab228c63-8bd3-4172-8f0b-8e04b6506539',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2612.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','14个蓝钻',NULL,NULL,NULL,NULL,'1'),('abadd1a8-c14e-41dd-a8cb-1565d2a69d6a',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2625.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','27个蓝钻',NULL,NULL,NULL,NULL,'1'),('ad92f67b-129e-4660-871c-e2aa3173c14e',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2619.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','21个蓝钻',NULL,NULL,NULL,NULL,'1'),('b15d32ce-5ce5-4761-a339-a6c059a214ae',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2618.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','20个蓝钻',NULL,NULL,NULL,NULL,'1'),('b2043fa0-5ed9-455b-8002-fb0fa0e4fef0',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2610.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','12个蓝钻',NULL,NULL,NULL,NULL,'1'),('b34e6bf4-5e30-4231-90d3-2837964018a1',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2615.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','17个蓝钻',NULL,NULL,NULL,NULL,'1'),('b3c65ab8-cb0f-4277-92b4-803e20c1d8dc',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2630.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','32个蓝钻',NULL,NULL,NULL,NULL,'1'),('b8a537af-fbdc-4116-871a-f6315d4365ef',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2600.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2个蓝钻',NULL,NULL,NULL,NULL,'1'),('bb2f9ffd-85ef-41dd-8dda-7bec0f63e497',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2621.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','23个蓝钻',NULL,NULL,NULL,NULL,'1'),('bc1f47e9-72da-4725-8fb7-c55e8dafbb25',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2600.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2个蓝钻',NULL,NULL,NULL,NULL,'1'),('bcb87855-20dc-4686-9ae1-e7002543a29a',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2622.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','24个蓝钻',NULL,NULL,NULL,NULL,'1'),('c3219c18-666a-4aaf-8e2a-9231b3fc5747',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2613.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','15个蓝钻',NULL,NULL,NULL,NULL,'1'),('c713d5c8-a604-497e-bcac-042b5fcc75d9',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2601.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','3个蓝钻',NULL,NULL,NULL,NULL,'1'),('c8ff3c37-f013-4d4d-a1c1-1aad510fe193',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2614.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','16个蓝钻',NULL,NULL,NULL,NULL,'1'),('cb7a69dd-ccc3-4176-b5a3-6ab20ef10ecc',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2630.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','32个蓝钻',NULL,NULL,NULL,NULL,'1'),('cdbcc142-f751-4f73-b2c7-4ec7e6c5082e',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2626.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','28个蓝钻',NULL,NULL,NULL,NULL,'1'),('d15334b5-713d-4453-b7bd-1ad7d1d8778d',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2610.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','12个蓝钻',NULL,NULL,NULL,NULL,'1'),('d1fe3158-2be0-4721-befc-66f2b7597fa8',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2600.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2个蓝钻',NULL,NULL,NULL,NULL,'1'),('d329e41a-78ce-47bc-b57f-6c7e87f183c2',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2617.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','19个蓝钻',NULL,NULL,NULL,NULL,'1'),('d369fefd-5066-4765-8aad-f64d4c0d46ab',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2629.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','31个蓝钻',NULL,NULL,NULL,NULL,'1'),('d5da7cc1-c39a-45d5-8765-569878a4248f',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2614.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','16个蓝钻',NULL,NULL,NULL,NULL,'1'),('dcd6767d-b246-4ec7-82d5-1c0364523538',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2614.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','16个蓝钻',NULL,NULL,NULL,NULL,'1'),('dd64f0f1-93fa-43d2-940d-ff63c168a217',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2600.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2个蓝钻',NULL,NULL,NULL,NULL,'1'),('dd6d8c2e-1ae0-415b-ba1f-eb2d73cdcffb',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2608.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','10个蓝钻',NULL,NULL,NULL,NULL,'1'),('dd90ab5c-235d-414b-a0de-ea9eed68e957',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2621.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','23个蓝钻',NULL,NULL,NULL,NULL,'1'),('dfe0572e-3cfb-4113-ba64-63e947b800e6',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2600.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2个蓝钻',NULL,NULL,NULL,NULL,'1'),('e02c8fb7-aea4-4081-bf90-83eeb29c1a7f',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2602.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','4个蓝钻',NULL,NULL,NULL,NULL,'1'),('e14a54e9-2c24-4524-8f40-e0c8f4725f09',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2613.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','15个蓝钻',NULL,NULL,NULL,NULL,'1'),('e2bbca5e-c6f5-4571-881d-abdb65f5c2b5',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2622.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','24个蓝钻',NULL,NULL,NULL,NULL,'1'),('e39d6be7-fbbb-4f72-b79d-250229f69639',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2606.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','8个蓝钻',NULL,NULL,NULL,NULL,'1'),('e5f6fab8-5e37-4d02-bc09-b4c015fd8936',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2613.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','15个蓝钻',NULL,NULL,NULL,NULL,'1'),('e65e604b-6ce7-409f-ba2b-1e0e80684b88',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2620.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','22个蓝钻',NULL,NULL,NULL,NULL,'1'),('e6cf6692-9689-4aba-aa55-8b0becb72329',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2628.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','30个蓝钻',NULL,NULL,NULL,NULL,'1'),('e7c93faf-6872-4af7-9542-d65b143049ff',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2628.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','30个蓝钻',NULL,NULL,NULL,NULL,'1'),('e940720d-f5f2-40ef-8f75-9b7ca55f6a9c',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2617.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','19个蓝钻',NULL,NULL,NULL,NULL,'1'),('ec42a001-b71e-43b0-9b02-dac5e3b8a88d',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2630.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','32个蓝钻',NULL,NULL,NULL,NULL,'1'),('ef276862-b7a7-41f9-a5b9-ac5d95236375',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2621.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','23个蓝钻',NULL,NULL,NULL,NULL,'1'),('f27e7dfe-5b06-4c80-acdf-eac8eefb76b9',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2601.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','3个蓝钻',NULL,NULL,NULL,NULL,'1'),('f615b93a-c01e-4c08-a6fb-7a9bc777b37b',1,'广州','一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2603.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','5个蓝钻',NULL,NULL,NULL,NULL,'1'),('f74ce7f9-aa27-4196-8c6d-0b6301271e63',2,'北京','er品木舍','北京榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2604.0','北京市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','6个蓝钻',NULL,NULL,NULL,NULL,'1'),('fc3368e5-2bee-469c-bd38-ec455fdad5f8',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2612.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','14个蓝钻',NULL,NULL,NULL,NULL,'1'),('fe497019-0615-492f-970c-87be974175da',NULL,NULL,'一品木舍','广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-','2606.0','广东省广州市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','8个蓝钻',NULL,NULL,NULL,NULL,'1');
/*!40000 ALTER TABLE `commodity_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gag`
--

DROP TABLE IF EXISTS `gag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gag_time` date DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `gag_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gag`
--

LOCK TABLES `gag` WRITE;
/*!40000 ALTER TABLE `gag` DISABLE KEYS */;
INSERT INTO `gag` VALUES (1,'2017-04-01 08:41:27','2017-04-01',1);
/*!40000 ALTER TABLE `gag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `score`
--

DROP TABLE IF EXISTS `score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `score` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `change_type` varchar(255) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `score` int(11) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `score_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score`
--

LOCK TABLES `score` WRITE;
/*!40000 ALTER TABLE `score` DISABLE KEYS */;
INSERT INTO `score` VALUES (1,'??','2017-03-31 09:02:33',10,NULL),(2,'asf','2017-03-31 09:03:30',10,NULL),(3,'充钱','2017-03-31 09:05:06',10,NULL),(4,'充钱','2017-03-31 09:05:59',10,NULL),(5,'充钱','2017-03-31 09:06:10',10,NULL),(6,'充钱钱','2017-03-31 09:06:24',10,NULL),(7,'充钱钱','2017-03-31 09:30:24',10,NULL),(8,'充钱钱','2017-03-31 09:31:25',10,NULL),(9,'充钱钱','2017-03-31 10:40:58',10,NULL),(10,'充钱钱','2017-03-31 11:22:04',10,NULL),(11,'玩游戏','2017-03-31 12:01:34',10,NULL),(12,'玩游戏','2017-03-31 12:13:45',10,NULL),(13,'玩游戏','2017-03-31 12:13:53',10,NULL),(14,'玩游戏','2017-03-31 12:17:17',10,NULL),(15,'玩游戏','2017-03-31 12:36:52',10,NULL),(16,'玩游戏','2017-03-31 12:36:56',10,NULL),(17,'充钱钱','2017-04-01 08:32:09',10,1);
/*!40000 ALTER TABLE `score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t1`
--

DROP TABLE IF EXISTS `t1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t1` (
  `jdoc` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t1`
--

LOCK TABLES `t1` WRITE;
/*!40000 ALTER TABLE `t1` DISABLE KEYS */;
INSERT INTO `t1` VALUES ('{\"age\": 18, \"name\": \"zhangsan\"}'),('{\"age\": 30, \"mail\": \"aaaaa@mail.com\", \"name\": \"value2\"}'),('{\"a\": \"valid\", \"json\": [\"text\"]}'),('\"some, might be formatted, { text } with \\\"quotes\\\"\"');
/*!40000 ALTER TABLE `t1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t2`
--

DROP TABLE IF EXISTS `t2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t2` (
  `jdoc` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t2`
--

LOCK TABLES `t2` WRITE;
/*!40000 ALTER TABLE `t2` DISABLE KEYS */;
INSERT INTO `t2` VALUES ('{\"series\": 1}'),('{\"series\": 7}'),('{\"series\": 3}'),('{\"series\": 4}'),('{\"series\": 10}'),('{\"series\": 2}'),('{\"series\": 6}'),('{\"series\": 5}'),('{\"series\": 8}'),('{\"series\": 11}');
/*!40000 ALTER TABLE `t2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t3`
--

DROP TABLE IF EXISTS `t3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t3` (
  `data` json DEFAULT NULL,
  `id` int(11) GENERATED ALWAYS AS (json_extract(`data`,'$.id')) STORED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_idx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t3`
--

LOCK TABLES `t3` WRITE;
/*!40000 ALTER TABLE `t3` DISABLE KEYS */;
INSERT INTO `t3` (`data`) VALUES ('{\"id\": \"111111111\", \"age\": 19, \"name\": \"zhaoqi\", \"addresss\": \"shenzhen\"}'),('{\"id\": \"123455678\", \"age\": 18, \"name\": \"value2\"}');
/*!40000 ALTER TABLE `t3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user` (
  `f_id` int(11) NOT NULL,
  `f_name` varchar(45) DEFAULT NULL,
  `f_role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (1,'Zhao','Developer'),(2,'Zhao','Developer');
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `pay_money` bigint(20) NOT NULL DEFAULT '0',
  `country` varchar(255) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `score` bigint(20) NOT NULL DEFAULT '0',
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'89564',NULL,0,NULL,'2017-04-01 08:25:36',0,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wow_equipment`
--

DROP TABLE IF EXISTS `wow_equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wow_equipment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `boss` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_by` int(11) NOT NULL,
  `update_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_boss_name` (`boss`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wow_equipment`
--

LOCK TABLES `wow_equipment` WRITE;
/*!40000 ALTER TABLE `wow_equipment` DISABLE KEYS */;
INSERT INTO `wow_equipment` VALUES (1,'??','??',0,'2017-11-22 10:00:34',0,'2017-11-22 10:00:34');
/*!40000 ALTER TABLE `wow_equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wow_role`
--

DROP TABLE IF EXISTS `wow_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wow_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_by` int(11) NOT NULL,
  `update_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wow_role`
--

LOCK TABLES `wow_role` WRITE;
/*!40000 ALTER TABLE `wow_role` DISABLE KEYS */;
INSERT INTO `wow_role` VALUES (1,'???',0,'2017-11-22 10:00:35',0,'2017-11-22 10:00:35');
/*!40000 ALTER TABLE `wow_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wow_role_equipment`
--

DROP TABLE IF EXISTS `wow_role_equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wow_role_equipment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `equipment_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_role_equipment` (`role_id`,`equipment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wow_role_equipment`
--

LOCK TABLES `wow_role_equipment` WRITE;
/*!40000 ALTER TABLE `wow_role_equipment` DISABLE KEYS */;
/*!40000 ALTER TABLE `wow_role_equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wow_role_week`
--

DROP TABLE IF EXISTS `wow_role_week`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wow_role_week` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `boss` varchar(300) NOT NULL,
  `kill_week` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_role_boss_week` (`role_id`,`boss`,`kill_week`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wow_role_week`
--

LOCK TABLES `wow_role_week` WRITE;
/*!40000 ALTER TABLE `wow_role_week` DISABLE KEYS */;
/*!40000 ALTER TABLE `wow_role_week` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-29 13:12:44
