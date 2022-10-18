CREATE DATABASE  IF NOT EXISTS `inventory_management` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `inventory_management`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: inventory_management
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `auth`
--

DROP TABLE IF EXISTS `auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ROLE_ID` int NOT NULL,
  `MENU_ID` int NOT NULL,
  `PERMISSION` int NOT NULL DEFAULT '1',
  `ACTIVE_FLAG` int NOT NULL DEFAULT '1',
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `roleId_foreignKey_idx` (`ROLE_ID`),
  KEY `menuId_foreignKey_idx` (`MENU_ID`),
  CONSTRAINT `menuId_foreignKey` FOREIGN KEY (`MENU_ID`) REFERENCES `menu` (`ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `roleId_foreignKey` FOREIGN KEY (`ROLE_ID`) REFERENCES `role` (`ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth`
--

LOCK TABLES `auth` WRITE;
/*!40000 ALTER TABLE `auth` DISABLE KEYS */;
INSERT INTO `auth` VALUES (18,1,1,1,1,'2022-09-11 21:16:40','2022-09-11 21:16:40'),(19,1,2,1,1,'2022-09-11 21:16:40','2022-09-11 21:16:40'),(20,1,3,1,1,'2022-09-11 21:16:40','2022-09-11 21:16:40'),(21,1,4,1,1,'2022-09-11 21:16:40','2022-09-11 21:16:40'),(22,1,5,1,1,'2022-09-11 21:16:40','2022-09-11 21:16:40'),(23,1,6,1,1,'2022-09-11 21:16:40','2022-09-11 21:16:40'),(24,1,7,1,1,'2022-09-11 21:16:40','2022-09-11 21:16:40'),(25,1,8,1,1,'2022-09-11 21:16:40','2022-09-11 21:16:40'),(26,1,9,1,1,'2022-09-11 21:16:40','2022-09-11 21:16:40'),(27,1,10,1,1,'2022-09-11 21:16:40','2022-09-11 21:16:40'),(28,1,11,1,1,'2022-09-11 21:16:40','2022-09-11 21:16:40'),(29,1,12,1,1,'2022-09-11 21:16:40','2022-09-11 21:16:40'),(30,1,13,1,1,'2022-09-11 21:16:40','2022-09-11 21:16:40'),(31,1,14,1,1,'2022-09-11 21:16:40','2022-09-11 21:16:40'),(32,1,15,1,1,'2022-09-11 21:16:40','2022-09-11 21:16:40'),(33,1,16,1,1,'2022-09-11 21:16:40','2022-09-11 21:16:40'),(34,1,17,1,1,'2022-09-11 21:16:40','2022-09-11 21:16:40'),(35,1,18,1,1,'2022-09-26 02:43:15','2022-09-26 02:43:15'),(36,1,19,1,1,'2022-09-26 02:43:15','2022-09-26 02:43:15'),(37,1,20,1,1,'2022-09-26 02:43:15','2022-09-26 02:43:15'),(38,1,21,1,1,'2022-09-26 02:43:15','2022-09-26 02:43:15'),(39,1,22,1,1,'2022-09-26 02:43:15','2022-09-26 02:43:15'),(40,1,23,1,1,'2022-09-26 02:55:50','2022-09-26 02:55:50'),(41,1,24,1,1,'2022-09-26 02:55:50','2022-09-26 02:55:50'),(42,1,25,1,1,'2022-09-26 02:55:50','2022-09-26 02:55:50'),(43,1,26,1,1,'2022-09-26 02:55:50','2022-09-26 02:55:50'),(44,1,27,1,1,'2022-09-26 02:55:50','2022-09-26 02:55:50'),(45,1,28,1,1,'2022-09-26 10:59:54','2022-09-26 10:59:54'),(47,1,30,1,1,'2022-09-26 12:19:01','2022-09-26 12:19:01'),(48,1,31,1,1,'2022-09-26 12:19:01','2022-09-26 12:19:01'),(49,1,32,1,1,'2022-09-26 12:19:01','2022-09-26 12:19:01'),(50,1,33,1,1,'2022-09-26 12:19:01','2022-09-26 12:19:01'),(51,1,34,1,1,'2022-09-26 12:19:01','2022-09-26 12:19:01'),(52,1,35,1,1,'2022-09-26 12:19:01','2022-09-26 12:19:01'),(53,1,36,1,1,'2022-09-26 17:49:20','2022-09-26 17:49:20'),(54,1,37,1,1,'2022-09-26 17:49:20','2022-09-26 17:49:20'),(55,1,38,1,1,'2022-09-26 17:49:20','2022-09-26 17:49:20'),(56,1,39,1,1,'2022-09-26 17:49:20','2022-09-26 17:49:20'),(57,1,40,1,1,'2022-09-27 09:52:08','2022-09-27 09:52:08'),(58,1,41,1,1,'2022-09-27 11:34:03','2022-09-27 11:34:03'),(59,1,42,1,1,'2022-09-27 11:34:03','2022-09-27 11:34:03'),(60,1,43,1,1,'2022-09-27 11:34:03','2022-09-27 11:34:03'),(61,1,44,1,1,'2022-09-27 11:34:03','2022-09-27 11:34:03'),(62,1,45,1,1,'2022-09-27 11:34:03','2022-09-27 11:34:03'),(63,2,18,1,1,'2022-10-03 11:59:31','2022-10-03 11:59:31'),(64,1,46,1,1,'2022-10-03 17:46:17','2022-10-03 17:46:17'),(65,1,47,1,1,'2022-10-03 17:53:38','2022-10-03 17:53:38'),(66,1,48,1,1,'2022-10-03 17:53:38','2022-10-03 17:53:38'),(67,2,1,1,1,'2022-10-03 18:14:07','2022-10-03 18:14:07');
/*!40000 ALTER TABLE `auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) NOT NULL,
  `CODE` varchar(50) NOT NULL,
  `DESCRIPTION` text,
  `ACTIVE_FLAG` int NOT NULL DEFAULT '1',
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'IPHONE','APPLE ','made in USA',1,'2022-09-17 23:10:58','2022-09-23 02:22:17'),(2,'Huawei mobile','HWW','Made in Chinaese',1,'2022-09-18 23:35:48','2022-09-23 02:22:33'),(3,'SamSung','SamSung011','made in Korean',1,'2022-09-18 23:39:22','2022-09-23 03:17:24'),(4,'XIAOMI','XIAOMI','xiaomi made by china',1,'2022-09-23 02:21:32','2022-09-23 02:21:32'),(5,'IPAD','APPLE PADD','made by USA',1,'2022-09-23 02:23:12','2022-10-08 16:32:55'),(6,'IPOD','APPLE IPOD','made in USA',1,'2022-09-23 02:23:42','2022-09-23 02:23:42'),(7,'GOOGLE ','GOOGLE','made in USA',1,'2022-09-23 02:24:38','2022-09-23 02:24:38'),(8,'Realme X4','Realme','Realme X4',0,'2022-10-08 16:15:11','2022-10-08 17:00:41'),(9,'Realme X4','Realme1','Realme X4',0,'2022-10-08 17:01:04','2022-10-10 04:04:25'),(10,'Panasonic','Panasonic','Panasonic',0,'2022-10-10 03:54:03','2022-10-10 04:00:35'),(11,'Realme','Realme1','Realme',1,'2022-10-10 04:09:16','2022-10-10 10:56:17');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `history` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ACTION_NAME` varchar(50) NOT NULL,
  `TYPE` int NOT NULL,
  `PRODUCT_ID` int NOT NULL,
  `QTY` int NOT NULL,
  `PRICE` decimal(15,2) NOT NULL,
  `ACTIVE_FLAG` int NOT NULL DEFAULT '1',
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `productID_foreignKey_history_idx` (`PRODUCT_ID`),
  CONSTRAINT `productID_foreignKey_history` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product_info` (`ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES (1,'Add',1,11,200,8000000.00,1,'2022-09-26 03:19:54','2022-09-26 03:19:54'),(2,'Add',1,12,20,8000000.00,1,'2022-09-26 03:26:21','2022-09-26 03:26:21'),(3,'Add',1,10,30,4000000.00,1,'2022-09-26 09:44:53','2022-09-26 09:44:53'),(4,'Add',1,16,5,8000000.00,1,'2022-09-26 11:02:21','2022-09-26 11:02:21'),(5,'Add',2,11,4,9000000.00,1,'2022-09-26 12:39:46','2022-09-26 12:39:46'),(6,'Add',1,11,20,8000000.00,1,'2022-09-26 12:40:28','2022-09-26 12:40:28'),(7,'Add',2,10,5,8000000.00,1,'2022-09-26 12:42:21','2022-09-26 12:42:21'),(8,'Add',2,10,5,8000000.00,1,'2022-09-26 12:43:14','2022-09-26 12:43:14');
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CODE` varchar(50) NOT NULL,
  `TYPE` int NOT NULL,
  `PRODUCT_ID` int NOT NULL,
  `QTY` int NOT NULL,
  `PRICE` decimal(15,2) NOT NULL,
  `ACTIVE_FLAG` int NOT NULL DEFAULT '1',
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `productID_foreignKey_invoice_idx` (`PRODUCT_ID`),
  CONSTRAINT `productID_foreignKey_invoice` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product_info` (`ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (1,'GoodsReceiptPixel6Gold',1,11,200,8000000.00,0,'2022-09-26 03:19:54','2022-09-26 04:09:45'),(2,'sss',1,12,20,8000000.00,1,'2022-09-26 03:26:21','2022-09-26 03:26:21'),(3,'6814',1,10,30,4000000.00,1,'2022-09-26 09:44:53','2022-09-26 09:44:53'),(4,'6816',1,16,5,8000000.00,1,'2022-09-26 11:02:21','2022-09-26 11:02:21'),(5,'googlepixel1',2,11,4,9000000.00,1,'2022-09-26 12:39:45','2022-09-26 12:39:45'),(6,'googlepixelxuat',1,11,20,8000000.00,1,'2022-09-26 12:40:28','2022-09-26 12:40:28'),(7,'xiaomixuat1',2,10,5,8000000.00,1,'2022-09-26 12:42:21','2022-09-26 12:42:21'),(8,'xiaomi11xuat2',2,10,5,8000000.00,1,'2022-09-26 12:43:14','2022-09-26 12:43:14');
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `PARENT_ID` int NOT NULL,
  `URL` varchar(100) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `ORDER_INDEX` int NOT NULL DEFAULT '0',
  `ACTIVE_FLAG` int NOT NULL DEFAULT '1',
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,0,'/product','Sản phẩm',1,1,'2022-09-11 21:10:42','2022-09-11 21:10:42'),(2,0,'/stock','Kho',2,1,'2022-09-11 21:10:42','2022-09-11 21:10:42'),(3,0,'/management','Quản lý',3,1,'2022-09-11 21:10:42','2022-09-11 21:10:42'),(4,1,'/product-info/list','Danh sách sản phẩm',2,1,'2022-09-11 21:10:42','2022-09-11 21:10:42'),(5,1,'/category/list','Danh sách category',1,1,'2022-09-11 21:10:42','2022-09-11 21:10:42'),(6,1,'/category/edit','Sửa',-1,1,'2022-09-11 21:10:42','2022-09-11 21:10:42'),(7,1,'/category/view','Xem',-1,1,'2022-09-11 21:10:42','2022-09-11 21:10:42'),(8,1,'/category/add','Thêm mới',-1,1,'2022-09-11 21:10:42','2022-09-11 21:10:42'),(9,1,'/category/save','Lưu',-1,1,'2022-09-11 21:10:42','2022-09-11 21:10:42'),(10,1,'/category/delete','Xoá',-1,1,'2022-09-11 21:10:42','2022-09-11 21:10:42'),(11,2,'/goods-receipt/list','Danh sách nhập kho',1,1,'2022-09-11 21:10:42','2022-09-11 21:10:42'),(12,2,'/goods-issue/list','Danh sách xuất kho',2,1,'2022-09-11 21:10:42','2022-09-11 21:10:42'),(13,2,'/product-in-stock/list','Sản phẩm trong kho',3,1,'2022-09-11 21:10:42','2022-09-11 21:10:42'),(14,2,'/history/list','Lịch sử kho',4,1,'2022-09-11 21:10:42','2022-09-11 21:10:42'),(15,3,'/user/list','Danh sách user',1,1,'2022-09-11 21:10:42','2022-09-11 21:10:42'),(16,3,'/menu/list','Danh sách menu',3,1,'2022-09-11 21:10:42','2022-09-11 21:10:42'),(17,3,'/role/list','Danh sách quyền',2,1,'2022-09-11 21:10:42','2022-09-11 21:10:42'),(18,1,'/product-info/edit','Sửa',-1,1,'2022-09-26 02:31:21','2022-09-26 02:31:21'),(19,1,'/product-info/view','Xem',-1,1,'2022-09-26 02:31:21','2022-09-26 02:31:21'),(20,1,'/product-info/add','Thêm mới',-1,1,'2022-09-26 02:31:21','2022-09-26 02:31:21'),(21,1,'/product-info/save','Lưu',-1,1,'2022-09-26 02:31:21','2022-09-26 02:31:21'),(22,1,'/product-info/delete','Xoá',-1,1,'2022-09-26 02:31:21','2022-09-26 02:31:21'),(23,1,'/goods-receipt/edit','Sửa',-1,1,'2022-09-26 02:39:01','2022-09-26 02:39:01'),(24,1,'/goods-receipt/view','Xem',-1,1,'2022-09-26 02:39:01','2022-09-26 02:39:01'),(25,1,'/goods-receipt/add','Thêm mới',-1,1,'2022-09-26 02:39:01','2022-09-26 02:39:01'),(26,1,'/goods-receipt/save','Lưu',-1,1,'2022-09-26 02:39:01','2022-09-26 02:39:01'),(27,1,'/goods-receipt/delete','Xoá',-1,1,'2022-09-26 02:39:01','2022-09-26 02:39:01'),(28,1,'/goods-receipt/export','Xuất báo cáo',-1,1,'2022-09-26 10:59:12','2022-09-26 10:59:12'),(30,1,'/goods-issue/edit','Sửa',-1,1,'2022-09-26 12:16:25','2022-09-26 12:16:25'),(31,1,'/goods-issue/view','Xem',-1,1,'2022-09-26 12:16:25','2022-09-26 12:16:25'),(32,1,'/goods-issue/add','Thêm mới',-1,1,'2022-09-26 12:16:25','2022-09-26 12:16:25'),(33,1,'/goods-issue/save','Lưu',-1,1,'2022-09-26 12:16:25','2022-09-26 12:16:25'),(34,1,'/goods-issue/delete','Xoá',-1,1,'2022-09-26 12:16:25','2022-09-26 12:16:25'),(35,1,'/goods-issue/export','Xuất báo cáo',-1,1,'2022-09-26 12:17:19','2022-09-26 12:17:19'),(36,3,'/user/save','Save',-1,1,'2022-09-26 17:47:14','2022-09-26 17:47:14'),(37,3,'/user/edit','Edit',-1,1,'2022-09-26 17:47:14','2022-09-26 17:47:14'),(38,3,'/user/view','View',-1,1,'2022-09-26 17:47:14','2022-09-26 17:47:14'),(39,3,'/user/add','Add',-1,1,'2022-09-26 17:47:14','2022-09-26 17:47:14'),(40,3,'/user/delete','Delete',-1,1,'2022-09-27 09:49:59','2022-09-27 09:49:59'),(41,1,'/role/edit','Sửa',-1,1,'2022-09-27 11:33:05','2022-09-27 11:33:05'),(42,1,'/role/view','Xem',-1,1,'2022-09-27 11:33:05','2022-09-27 11:33:05'),(43,1,'/role/add','Thêm mới',-1,1,'2022-09-27 11:33:05','2022-09-27 11:33:05'),(44,1,'/role/save','Lưu',-1,1,'2022-09-27 11:33:05','2022-09-27 11:33:05'),(45,1,'/role/delete','Xoá',-1,1,'2022-09-27 11:33:05','2022-09-27 11:33:05'),(46,1,'/menu/change-status','thay đổi status menu',-1,1,'2022-10-03 17:45:57','2022-10-03 17:45:57'),(47,1,'/menu/permission','truy cập',-1,1,'2022-10-03 17:52:18','2022-10-03 17:52:18'),(48,1,'/menu/update-permission','sửa truy cập',-1,1,'2022-10-03 17:53:14','2022-10-03 17:53:14');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_in_stock`
--

DROP TABLE IF EXISTS `product_in_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_in_stock` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `PRODUCT_ID` int NOT NULL,
  `QTY` int NOT NULL,
  `PRICE` decimal(15,2) NOT NULL,
  `ACTIVE_FLAG` int NOT NULL DEFAULT '1',
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `productId_foreignKey_idx` (`PRODUCT_ID`),
  CONSTRAINT `productID_foreignKey` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product_info` (`ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_in_stock`
--

LOCK TABLES `product_in_stock` WRITE;
/*!40000 ALTER TABLE `product_in_stock` DISABLE KEYS */;
INSERT INTO `product_in_stock` VALUES (3,10,20,4000000.00,1,'2022-09-26 09:44:53','2022-09-26 12:43:14'),(4,16,5,8000000.00,1,'2022-09-26 11:02:21','2022-09-26 11:02:21'),(5,11,20,8000000.00,1,'2022-09-26 12:40:28','2022-09-26 12:40:28');
/*!40000 ALTER TABLE `product_in_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_info`
--

DROP TABLE IF EXISTS `product_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_info` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CATE_ID` int NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `CODE` varchar(50) NOT NULL,
  `DESCRIPTION` text,
  `IMG_URL` varchar(200) NOT NULL,
  `ACTIVE_FLAG` int NOT NULL DEFAULT '1',
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `cateId_foreignKey_idx` (`CATE_ID`),
  CONSTRAINT `cateId_foreignKey` FOREIGN KEY (`CATE_ID`) REFERENCES `category` (`ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_info`
--

LOCK TABLES `product_info` WRITE;
/*!40000 ALTER TABLE `product_info` DISABLE KEYS */;
INSERT INTO `product_info` VALUES (1,1,'IPhoneXSMax','IP123','Made in USA,born in 2016','co-nen-mua-ip-xsmax-1-1.jpg',0,'2022-09-22 03:21:23','2022-09-23 02:17:06'),(2,3,'SamSungGalaxyS22','SamSung011','sdfghjihg','/upload/1663830413579_image_1.jpg',0,'2022-09-22 07:06:54','2022-09-23 02:17:11'),(3,2,'Hw11','HWW','Ã¡dfghutrd','/upload/1663830548654_banner2.jpg',0,'2022-09-22 07:09:09','2022-09-23 02:17:17'),(4,3,'ff1','ss1','fs1','/upload/1663832143717_Project1.jpg',0,'2022-09-22 07:35:44','2022-09-23 02:17:21'),(5,3,'SamSungGalaxyS2','s221','eÃª','/upload/1663832382677_5633c4a35ad1f46302ec62f557a544b5.jpg',0,'2022-09-22 07:39:43','2022-09-23 02:17:23'),(6,2,'h1','hua1','dd','/upload/1663833169862_5633c4a35ad1f46302ec62f557a544b5.jpg',0,'2022-09-22 07:52:50','2022-09-23 02:17:31'),(7,2,'h1','hua11','dd','/upload/1663833398402_9c68c79a7c7129ac3690a4f1a300162b.jpg',0,'2022-09-22 07:56:38','2022-09-23 02:20:40'),(8,7,'google pixel 6 pro pink','google pixel 6 pro pink','google pixel 6 pro báº£n há»ng 128GB','/upload/1663900431147_google-pixel-6-pro-camera-didongmy.jpg',1,'2022-09-23 02:33:51','2022-09-23 02:33:51'),(9,1,'SAMSUNG GALAXY S22  5G 256GB ','SAMSUNG GALAXY S22  5G 256GB PINK','SAMSUNG GALAXY S22  5G 256GB  báº£n há»ng ','/upload/1663900514055_galaxy-s22-pink-truot-220225110209.jpg',1,'2022-09-23 02:35:14','2022-09-23 02:35:14'),(10,4,'xiaomi mi 11 ultra white 256GB','xiaomi mi 11 ultra white 256GB','xiaomi mi 11 ultra white 256GB ','/upload/1663900593063_Xiaomi-Mi-11-Ultra-4-1.jpg',1,'2022-09-23 02:36:33','2022-09-23 02:36:33'),(11,7,'google pixel 6 pro gold 256GB 5G','google pixel 6 pro gold 256GB 5G','google pixel 6 pro gold 256GB 5G, báº£n vÃ ng,256GB','/upload/1663900676526_google-pixel-6-pro-camera-didongmy.jpg',1,'2022-09-23 02:37:57','2022-09-23 02:37:57'),(12,3,'SAMSUNG GALAXY S22 ULTRA 5G 256GB SKY BLUE','SAMSUNG GALAXY S22 ULTRA 5G 256GB SKY BLUE','SAMSUNG GALAXY S22 ULTRA 5G 256GB SKY BLUE, báº£n xanh,5G,256GB,made by Korean','/upload/1663901031898_samsung-galaxy-_multi_10_730_450.png.jpg',1,'2022-09-23 02:43:52','2022-09-23 02:43:52'),(13,3,'SAMSUNG GALAXY S22 ULTRA 5G 256GB RED','SAMSUNG GALAXY S22 ULTRA 5G 256GB RED','SAMSUNG GALAXY S22 ULTRA 5G 256GB RED','/upload/1663901712904_S22Ultra_ColorSelection_Red_Exclusive_MO.jpg',1,'2022-09-23 02:55:13','2022-09-23 02:55:13'),(14,1,'IPHONE XSMAX 64GB BLACK','IPHONE XSMAX 64GB BLACK','IPHONE XSMAX 64GB BLACK','/upload/1663901798397_táº£i xuá»ng.jpg',1,'2022-09-23 02:56:38','2022-09-23 02:56:38'),(15,5,'iPad Gen 9 2021 10.2 inch WiFi 64GB WHITE','iPad Gen 9 2021 10.2 inch WiFi 64GB WHITE','iPad Gen 9 2021 10.2 inch WiFi 64GB WHITE','/upload/1663902031629_637845973543585181_iPad 10.2 2021 Wi-Fi (8).jpg',1,'2022-09-23 03:00:32','2022-09-23 03:00:32'),(16,5,'iPad Pro 11 2021 M1 Wi-Fi 128GB GRAY','iPad Pro 11 2021 M1 Wi-Fi 128GB GRAY','iPad Pro 11 2021 M1 Wi-Fi 128GB GRAY','/upload/1663902118709_637844101428975156_iPad Pro 11 2021 M1 Wi-F (5).jpg',1,'2022-09-23 03:01:59','2022-09-23 03:01:59'),(17,5,'iPad Pro 11 2021 M1 Wi-Fi 128GB WHITE','iPad Pro 11 2021 M1 Wi-Fi 128GB WHITE','iPad Pro 11 2021 M1 Wi-Fi 128GB WHITE','/upload/1663902140872_637844101428975156_iPad Pro 11 2021 M1 Wi-F (6).jpg',1,'2022-09-23 03:02:21','2022-09-23 03:02:21'),(18,5,'iPad mini 6 2021 8.3 inch WiFi 5G 64GB GOLD','iPad mini 6 2021 8.3 inch WiFi 5G 64GB GOLD','iPad mini 6 2021 8.3 inch WiFi 5G 64GB GOLD','/upload/1663902235662_637845989245437612_iPad Mini 8.3 2021 Wi-Fi 5G (4).jpg',1,'2022-09-23 03:03:56','2022-09-23 03:03:56'),(19,5,'iPad mini 6 2021 8.3 inch WiFi 5G 64GB PINK','iPad mini 6 2021 8.3 inch WiFi 5G 64GB PINK','iPad mini 6 2021 8.3 inch WiFi 5G 64GB PINK','/upload/1663902252123_637845989248406411_iPad Mini 8.3 2021 Wi-Fi 5G (3).jpg',1,'2022-09-23 03:04:12','2022-09-23 03:04:12'),(20,5,'iPad mini 6 2021 8.3 inch WiFi 5G 64GB GRAY','iPad mini 6 2021 8.3 inch WiFi 5G 64GB GRAY','iPad mini 6 2021 8.3 inch WiFi 5G 64GB GRAY','/upload/1663902273891_637845989247625133_iPad Mini 8.3 2021 Wi-Fi 5G (2).jpg',1,'2022-09-23 03:04:34','2022-09-23 03:04:34'),(21,2,'Huawei Nova 7i 256GB 5G PINK BLUE','Huawei Nova 7i 256GB 5G PINK BLUE','Huawei Nova 7i 256GB 5G PINK BLUE','/upload/1663902570178_1_46_4.png',1,'2022-09-23 03:09:30','2022-09-23 03:09:30'),(22,4,' Xiaomi Redmi Note 11S WHITE',' Xiaomi Redmi Note 11S WHITE',' Xiaomi Redmi Note 11S WHITE','/upload/1663902657016_frame37917-640x640_1_.png',1,'2022-09-23 03:10:57','2022-09-23 03:10:57'),(23,4,'Xiaomi Redmi Note 10 Pro 6GB ORANGE','Xiaomi Redmi Note 10 Pro 6GB ORANGE','Xiaomi Redmi Note 10 Pro 6GB ORANGE','/upload/1663902703113_xiaomi-redmi-note-10-pro_2__2.png',1,'2022-09-23 03:11:43','2022-09-23 03:11:43'),(24,6,'Tai nghe Bluetooth Airpods Pro','Tai nghe Bluetooth Airpods Pro','Tai nghe Bluetooth Airpods Pro','/upload/1663902829998_Screenshot 2022-09-23 101339.png',1,'2022-09-23 03:13:50','2022-09-23 03:13:50'),(25,1,'iPhone 14 Pro Max 128GB Violet pastel','iPhone 14 Pro Max 128GB Violet pastel','iPhone 14 Pro Max 128GB Violet pastel','/upload/1663902899696_t_m-iphone-14-pro.png',1,'2022-09-23 03:15:00','2022-09-23 03:15:00'),(26,1,'iPhone 14 Pro Max 1TB WHITE','iPhone 14 Pro Max 1TB WHITE','iPhone 14 Pro Max 1TB WHITE','/upload/1663902939886_t_m-iphone-14-pro-1.png',1,'2022-09-23 03:15:40','2022-09-23 03:15:40');
/*!40000 ALTER TABLE `product_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ROLE_NAME` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(200) NOT NULL,
  `ACTIVE_FLAG` int NOT NULL DEFAULT '1',
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'admin','Admin of system',1,'2022-09-11 21:16:35','2022-09-11 21:16:35'),(2,'staff','Staff of system',1,'2022-09-11 21:16:35','2022-09-11 21:16:35'),(3,'employee','Khách hàng',0,'2022-09-27 11:42:24','2022-09-27 11:42:29');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `USER_ID` int NOT NULL,
  `ROLE_ID` int NOT NULL,
  `ACTIVE_FLAG` int NOT NULL DEFAULT '1',
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `userId_foreign_key_idx` (`USER_ID`),
  KEY `roleId_foreign_key_idx` (`ROLE_ID`),
  CONSTRAINT `roleId_foreign_key` FOREIGN KEY (`ROLE_ID`) REFERENCES `role` (`ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `userId_foreign_key` FOREIGN KEY (`USER_ID`) REFERENCES `users` (`ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,1,1,1,'2022-09-11 21:19:15','2022-09-11 21:19:15'),(2,2,2,1,'2022-09-27 03:59:21','2022-09-27 03:59:21');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(50) NOT NULL,
  `PASSWORD` varchar(100) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `ACTIVE_FLAG` int NOT NULL DEFAULT '1',
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','Rg3xMIa7vd12tfbfA+xNAmIoDsIZEJa8','admin@gmail.com','admin',1,'2022-09-11 18:59:11','2022-09-11 18:59:11'),(2,'quangnui','Rg3xMIa7vd12tfbfA+xNAmIoDsIZEJa8','phamquangnui@gmail.com','Phạm Quang Núi',0,'2022-09-27 03:59:21','2022-09-27 10:37:18');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'inventory_management'
--

--
-- Dumping routines for database 'inventory_management'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-18 17:39:07
