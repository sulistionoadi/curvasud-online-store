-- MySQL dump 10.13  Distrib 5.5.29, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: romeshop_development
-- ------------------------------------------------------
-- Server version	5.5.29-0ubuntu0.12.04.1

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
-- Table structure for table `DATABASECHANGELOG`
--

DROP TABLE IF EXISTS `DATABASECHANGELOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DATABASECHANGELOG` (
  `ID` varchar(63) NOT NULL,
  `AUTHOR` varchar(63) NOT NULL,
  `FILENAME` varchar(200) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`,`AUTHOR`,`FILENAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOG`
--

LOCK TABLES `DATABASECHANGELOG` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOG` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOG` VALUES ('1','adi','id/ac/bsi/adi/ta/ecommerce/db/db-changelog-0.0.1.xml','2013-06-10 06:15:56',1,'EXECUTED','3:d41d8cd98f00b204e9800998ecf8427e','Empty','',NULL,'2.0.5');
/*!40000 ALTER TABLE `DATABASECHANGELOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DATABASECHANGELOGLOCK`
--

DROP TABLE IF EXISTS `DATABASECHANGELOGLOCK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DATABASECHANGELOGLOCK` (
  `ID` int(11) NOT NULL,
  `LOCKED` tinyint(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOGLOCK`
--

LOCK TABLES `DATABASECHANGELOGLOCK` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOGLOCK` VALUES (1,0,NULL,NULL);
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_category_product`
--

DROP TABLE IF EXISTS `mst_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_category_product` (
  `id` varchar(255) NOT NULL,
  `category_code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_code` (`category_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_category_product`
--

LOCK TABLES `mst_category_product` WRITE;
/*!40000 ALTER TABLE `mst_category_product` DISABLE KEYS */;
INSERT INTO `mst_category_product` VALUES ('1679091c5a880faf6fb5e6087eb1b2dc','CAT4','CATEGORY 4'),('45c48cce2e2d7fbdea1afc51c7c6ad26','CAT7','CATEGORY 7'),('8f14e45fceea167a5a36dedd4bea2543','TP01','TOPI'),('9bf31c7ff062936a96d3c8bd1f8f2ff3','CAT13','CATEGORY 13'),('aab3238922bcc25a6f606eb525ffdc56','CAT12','CATEGORY 12'),('c4ca4238a0b923820dcc509a6f75849b','KO192','Kaos'),('c81e728d9d4c2f636f067f89cc14862c','PL009','Polo'),('d3d9446802a44259755d38e6d163e820','CAT8','CATEGORY 8'),('e4da3b7fbbce2345d7772b0674a318d5','CAT3','CATEGORY 3'),('eccbc87e4b5ce2fe28308fd9f2a7baf3','CAT1','CATEGORY 1'),('ff8081813f4d63a1013f4d6635b10000','CAT20','CATEGORY 20'),('ff8081813f52ad3b013f52b9f8b40000','ADI','SULISTIONO'),('ff8081813f80b961013f80e43ed90000','CAT201','Category 201'),('ff8081813f81a8af013f820fbba80000','JKT48','JAKET ROMPI');
/*!40000 ALTER TABLE `mst_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_city`
--

DROP TABLE IF EXISTS `mst_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_city` (
  `id` varchar(255) NOT NULL,
  `city_code` varchar(255) NOT NULL,
  `city_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `city_code` (`city_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_city`
--

LOCK TABLES `mst_city` WRITE;
/*!40000 ALTER TABLE `mst_city` DISABLE KEYS */;
INSERT INTO `mst_city` VALUES ('ff8081813f95029e013f950635710001','JKT','JAKARTA'),('ff8081813f95029e013f950661080002','SBY','SURABAYA'),('ff8081813f95029e013f9506893f0003','BKS','BEKASI');
/*!40000 ALTER TABLE `mst_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_member`
--

DROP TABLE IF EXISTS `mst_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_member` (
  `id` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `registration_date` datetime NOT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_member`
--

LOCK TABLES `mst_member` WRITE;
/*!40000 ALTER TABLE `mst_member` DISABLE KEYS */;
INSERT INTO `mst_member` VALUES ('ff8081813f32885a013f328962af0000','Pangkalan Jati 2 No. 26 Jatiwaringin','Jakarta Timur','adimazterkepz@yahoo.com','ADI','SULISTIONO','085210831766','','DKI Jakarta','2013-06-11 16:20:31','13620'),('ff8081813f33e54f013f33e6cf650000','Pangkalan Jati 2','DKI Jakarta','jimmy@gmail.com','JIMMY','RENGGA SAPUTRO','098765689ggh','','Jakarta Timur','2013-06-11 22:42:11','13620'),('ff8081813f38efc2013f38f2ab940000','Bekasi','Bekasi','firman@yahoo.com','FIRMAN','HADI','94809380894','','Jawa Barat','2013-06-12 22:13:15','42421');
/*!40000 ALTER TABLE `mst_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_picture_product`
--

DROP TABLE IF EXISTS `mst_picture_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_picture_product` (
  `id_product` varchar(255) NOT NULL,
  `pictures` varchar(255) DEFAULT NULL,
  KEY `FK9CA613FD5C002540` (`id_product`),
  CONSTRAINT `FK9CA613FD5C002540` FOREIGN KEY (`id_product`) REFERENCES `mst_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_picture_product`
--

LOCK TABLES `mst_picture_product` WRITE;
/*!40000 ALTER TABLE `mst_picture_product` DISABLE KEYS */;
INSERT INTO `mst_picture_product` VALUES ('c4ca4238a0b923820dcc509a6f75849b','img/product/curvasud_juve_jersey.jpg'),('c4ca4238a0b923820dcc509a6f75849b','img/product/curvasud_arsenal_jersey.jpg'),('ff8081813f84faef013f84fbde260000','img/product/curvasud_arsenal_jersey.jpg');
/*!40000 ALTER TABLE `mst_picture_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_product`
--

DROP TABLE IF EXISTS `mst_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_product` (
  `id` varchar(255) NOT NULL,
  `price` decimal(19,2) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_info` longtext NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `id_category` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_code` (`product_code`),
  KEY `FKCB7DAD3EACD25A39` (`id_category`),
  CONSTRAINT `FKCB7DAD3EACD25A39` FOREIGN KEY (`id_category`) REFERENCES `mst_category_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_product`
--

LOCK TABLES `mst_product` WRITE;
/*!40000 ALTER TABLE `mst_product` DISABLE KEYS */;
INSERT INTO `mst_product` VALUES ('c4ca4238a0b923820dcc509a6f75849b',10000.00,'KO002','Kaos Oblong gambar badak','Kaos Oblong','e4da3b7fbbce2345d7772b0674a318d5'),('ff8081813f84faef013f84fbde260000',150000.00,'JKT48','bla bla bla bla bla blakbakan','Jaket Kulit Awey','aab3238922bcc25a6f606eb525ffdc56');
/*!40000 ALTER TABLE `mst_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_shipping_rate`
--

DROP TABLE IF EXISTS `mst_shipping_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_shipping_rate` (
  `id` varchar(255) NOT NULL,
  `express` decimal(19,2) NOT NULL,
  `regular` decimal(19,2) NOT NULL,
  `id_city` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK55F6ADE043E932B4` (`id_city`),
  CONSTRAINT `FK55F6ADE043E932B4` FOREIGN KEY (`id_city`) REFERENCES `mst_city` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_shipping_rate`
--

LOCK TABLES `mst_shipping_rate` WRITE;
/*!40000 ALTER TABLE `mst_shipping_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_shipping_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_supplier`
--

DROP TABLE IF EXISTS `mst_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_supplier` (
  `id` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_supplier`
--

LOCK TABLES `mst_supplier` WRITE;
/*!40000 ALTER TABLE `mst_supplier` DISABLE KEYS */;
INSERT INTO `mst_supplier` VALUES ('ff8081813f8a47c4013f8a48eb300000','Jl. Pasteur 22','BDMTK','','MOTEKAR','43232');
/*!40000 ALTER TABLE `mst_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_menu`
--

DROP TABLE IF EXISTS `sec_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_menu` (
  `id` varchar(255) NOT NULL,
  `menu_action` varchar(255) DEFAULT NULL,
  `label` varchar(255) NOT NULL,
  `menu_level` int(11) NOT NULL,
  `menu_order` int(11) NOT NULL,
  `id_parent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK375A1C8D10530749` (`id_parent`),
  CONSTRAINT `FK375A1C8D10530749` FOREIGN KEY (`id_parent`) REFERENCES `sec_menu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_menu`
--

LOCK TABLES `sec_menu` WRITE;
/*!40000 ALTER TABLE `sec_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `sec_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_permission`
--

DROP TABLE IF EXISTS `sec_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_permission` (
  `id` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `label` (`label`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_permission`
--

LOCK TABLES `sec_permission` WRITE;
/*!40000 ALTER TABLE `sec_permission` DISABLE KEYS */;
INSERT INTO `sec_permission` VALUES ('1','Akses untuk membuka menu form member','ROLE_FORM_MEMBER','Role Menu Form Member'),('2','Akses untuk mendapatkan informasi account','ROLE_USER_ACCOUNT','Role Menu Info User Account');
/*!40000 ALTER TABLE `sec_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_role`
--

DROP TABLE IF EXISTS `sec_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_role` (
  `id` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_role`
--

LOCK TABLES `sec_role` WRITE;
/*!40000 ALTER TABLE `sec_role` DISABLE KEYS */;
INSERT INTO `sec_role` VALUES ('1','SUPER USER','ADMIN'),('2','MEMBER USER','MEMBER');
/*!40000 ALTER TABLE `sec_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_role_menu`
--

DROP TABLE IF EXISTS `sec_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_role_menu` (
  `id_role` varchar(255) NOT NULL,
  `id_menu` varchar(255) NOT NULL,
  PRIMARY KEY (`id_role`,`id_menu`),
  KEY `FK7DA86D1AA8B1ACFE` (`id_menu`),
  KEY `FK7DA86D1AA8B6832C` (`id_role`),
  CONSTRAINT `FK7DA86D1AA8B1ACFE` FOREIGN KEY (`id_menu`) REFERENCES `sec_menu` (`id`),
  CONSTRAINT `FK7DA86D1AA8B6832C` FOREIGN KEY (`id_role`) REFERENCES `sec_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_role_menu`
--

LOCK TABLES `sec_role_menu` WRITE;
/*!40000 ALTER TABLE `sec_role_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `sec_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_role_permission`
--

DROP TABLE IF EXISTS `sec_role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_role_permission` (
  `id_role` varchar(255) NOT NULL,
  `id_permission` varchar(255) NOT NULL,
  PRIMARY KEY (`id_role`,`id_permission`),
  KEY `FK952B254AE9FC5DDE` (`id_permission`),
  KEY `FK952B254AA8B6832C` (`id_role`),
  CONSTRAINT `FK952B254AA8B6832C` FOREIGN KEY (`id_role`) REFERENCES `sec_role` (`id`),
  CONSTRAINT `FK952B254AE9FC5DDE` FOREIGN KEY (`id_permission`) REFERENCES `sec_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_role_permission`
--

LOCK TABLES `sec_role_permission` WRITE;
/*!40000 ALTER TABLE `sec_role_permission` DISABLE KEYS */;
INSERT INTO `sec_role_permission` VALUES ('1','1'),('2','1'),('1','2');
/*!40000 ALTER TABLE `sec_role_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_user`
--

DROP TABLE IF EXISTS `sec_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_user` (
  `id` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(6) NOT NULL,
  `username` varchar(255) NOT NULL,
  `id_member` varchar(255) DEFAULT NULL,
  `id_role` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `FK375DF2F910109592` (`id_member`),
  KEY `FK375DF2F9A8B6832C` (`id_role`),
  CONSTRAINT `FK375DF2F910109592` FOREIGN KEY (`id_member`) REFERENCES `mst_member` (`id`),
  CONSTRAINT `FK375DF2F9A8B6832C` FOREIGN KEY (`id_role`) REFERENCES `sec_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_user`
--

LOCK TABLES `sec_user` WRITE;
/*!40000 ALTER TABLE `sec_user` DISABLE KEYS */;
INSERT INTO `sec_user` VALUES ('ff8081813f32885a013f328962bf0001',1,'7c26edf0aa53678dfa606568ddecaa3e','ACTIVE','adimazterkepz','ff8081813f32885a013f328962af0000','2'),('ff8081813f33e54f013f33e6cf6f0001',0,'f5a3bcd1586529edc2440eaeebcd760e','ACTIVE','jimmy123','ff8081813f33e54f013f33e6cf650000','2'),('ff8081813f38efc2013f38f2aba20001',1,'a968410cf0faa63b324bf0a8ec2d2265','ACTIVE','firman','ff8081813f38efc2013f38f2ab940000','2'),('ff8081813f9448e1013f945a63b40000',0,'521e0393f78285313167fb4440538132','BLOCK','simaman',NULL,'1'),('ff8081813f94a357013f94b983970001',1,'2f9a3392a2c68d93462c2b6a16a3d713','ACTIVE','luciana',NULL,'2');
/*!40000 ALTER TABLE `sec_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trx_change_of_stock`
--

DROP TABLE IF EXISTS `trx_change_of_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trx_change_of_stock` (
  `id` varchar(255) NOT NULL,
  `date_of_mutation` date DEFAULT NULL,
  `final_stock` int(11) NOT NULL,
  `initial_stock` int(11) NOT NULL,
  `stock_credit` int(11) NOT NULL,
  `stock_debet` int(11) NOT NULL,
  `id_product` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `date_of_mutation` (`date_of_mutation`,`id_product`),
  KEY `FK844311D85C002540` (`id_product`),
  CONSTRAINT `FK844311D85C002540` FOREIGN KEY (`id_product`) REFERENCES `mst_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trx_change_of_stock`
--

LOCK TABLES `trx_change_of_stock` WRITE;
/*!40000 ALTER TABLE `trx_change_of_stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `trx_change_of_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trx_purchase`
--

DROP TABLE IF EXISTS `trx_purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trx_purchase` (
  `id` varchar(255) NOT NULL,
  `purchase_date` datetime NOT NULL,
  `purchase_number` varchar(255) NOT NULL,
  `id_supplier` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKBA11C5E6D564D476` (`id_supplier`),
  CONSTRAINT `FKBA11C5E6D564D476` FOREIGN KEY (`id_supplier`) REFERENCES `mst_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trx_purchase`
--

LOCK TABLES `trx_purchase` WRITE;
/*!40000 ALTER TABLE `trx_purchase` DISABLE KEYS */;
/*!40000 ALTER TABLE `trx_purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trx_purchase_detail`
--

DROP TABLE IF EXISTS `trx_purchase_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trx_purchase_detail` (
  `id` varchar(255) NOT NULL,
  `price` decimal(19,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total_price` decimal(19,2) NOT NULL,
  `id_product` varchar(255) NOT NULL,
  `id_purchase` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_purchase` (`id_purchase`,`id_product`),
  KEY `FKEE7F00CA5C002540` (`id_product`),
  KEY `FKEE7F00CAF5E7E88` (`id_purchase`),
  CONSTRAINT `FKEE7F00CA5C002540` FOREIGN KEY (`id_product`) REFERENCES `mst_product` (`id`),
  CONSTRAINT `FKEE7F00CAF5E7E88` FOREIGN KEY (`id_purchase`) REFERENCES `trx_purchase` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trx_purchase_detail`
--

LOCK TABLES `trx_purchase_detail` WRITE;
/*!40000 ALTER TABLE `trx_purchase_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `trx_purchase_detail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-06-30 19:25:07
