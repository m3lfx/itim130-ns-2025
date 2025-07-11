-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: db_sales_ns_2025
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(45) NOT NULL,
  `first_name` char(32) NOT NULL,
  `address` varchar(45) NOT NULL,
  `city` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `zipcode2` char(15) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'stones','jenny','27 Rowan Avenue','hightown','023 9876','1630'),(2,'stones','Andrew','52 The willows','lowtown','876 3527','1630'),(3,'Matthew','Alex','4 The Street','Nicetown','010 4567','1630'),(4,'MAtthew','Adrian','The Barn','Yuleville','487 3871','1630'),(5,'Cozens','Simon','7 Shady Lane','Oahenham','514 5926','1630'),(6,'Matther','Neil','5 Pasture Lane','Nicetown','267 1232','1630'),(7,'stones','Richard','34 Holly Way','Bingham','342 5982','1630'),(8,'stones','Ann','34 Holly Way','Bingham','342 5982','1630'),(9,'Hickman','Christine','36 Queen Street','Histon','342 5432','1630'),(10,'Howard','Mike','86 Dysart Street','Tibsville','505 5482','1630'),(11,'Jones','Dave','54 Vale Rise','Bingham','342 8264','1630'),(12,'Neil','Richard','42 Thached Way','Winersbay','505 6482','1630'),(13,'Hendy','Laura','73 MArgaritta Way','Oxbridge','821 2335','1630'),(14,'ONeil','Bill','2 Beamer Street','Welltown','435 1234','1630'),(15,'Hudson','David','4 The Square','Milltown','961 4526','1630'),(31,'bbb','aaa','tenement','taguig','98099','1630'),(32,'bbb','aaa','tenement','taguig','98099','1630'),(33,'bbb','aaa','tenement','taguig','98099','1630'),(34,'bbb','aaa','tenement','taguig','98099','1630'),(35,'bbb','aaa','tenement','taguig','98099','1630'),(36,'bbb','aaa','tenement','taguig','98099','1630'),(37,'bbb','aaa','tenement','taguig','98099','1630'),(38,'bbb','aaa','tenement','taguig','98099','1630'),(39,'bbb','aaa','tenement','taguig','98099','1630'),(40,'bbb','aaa','tenement','taguig','98099','1630'),(41,'bbb','aaa','tenement','taguig','98099','1630'),(43,'bbb','aaa','tenement','taguig','98099','1630'),(47,'ggdfgfdgfdg','dcbdfgfd','dfbfdgdgfd','dfbgfh11244','231241','3124'),(48,'gregrtytrh','t4retretr','yhtrhrt','jytjytkuy','2342353','12423523');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;




--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `cost_price` decimal(7,2) NOT NULL,
  `sell_price` decimal(7,2) DEFAULT NULL,
  `supplier_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (2,'mouse',200.00,360.50,'acer'),(4,'phone',150.00,165.00,'apple'),(6,'sardinas',100.00,160.00,'ligo'),(7,'shoes',100.00,160.00,NULL),(11,'katol',56.00,100.00,'dragon'),(12,'watch',100.00,200.00,'casio'),(13,'calculator',100.00,200.00,'casio'),(14,'watch',10.90,11.50,'casio'),(16,'laptop',100.00,150.50,'acer');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

--
-- Table structure for table `orderinfo`
--


--
-- Table structure for table `orderline`
--

DROP TABLE IF EXISTS `orderline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderline` (
  `item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_id`,`order_id`),
  INDEX `fk_items_has_orders_orders1_idx` (`order_id`),
  INDEX `fk_items_has_orders_items1_idx` (`item_id`),
  CONSTRAINT `fk_items_has_orders_items1` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`) ON DELETE CASCADE,
  CONSTRAINT `fk_items_has_orders_orders1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderline`
--

LOCK TABLES `orderline` WRITE;
/*!40000 ALTER TABLE `orderline` DISABLE KEYS */;
INSERT INTO `orderline` VALUES (2,1,2),(4,3,10),(6,6,4),(6,7,4);
/*!40000 ALTER TABLE `orderline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_ordered` date NOT NULL,
  `date_delivered` date DEFAULT NULL,
  `status` enum('processing','delivered','canceled') NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`),
  INDEX `fk_orders_customers_idx` (`customer_id`),
  CONSTRAINT `fk_orders_customers` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2025-06-09','2025-06-14','processing',15),(2,'2025-05-13','2025-05-28','processing',15),(3,'2025-05-13','2025-05-28','processing',1),(5,'2025-05-13','2025-05-28','',3),(6,'2025-05-13','2026-05-13','processing',3),(7,'2025-05-13','2025-05-28','processing',6);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--
--

--
-- Table structure for table `stocks`
--

DROP TABLE IF EXISTS `stocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stocks` (
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`item_id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `stock_item_id_fk` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stocks`
--

LOCK TABLES `stocks` WRITE;
/*!40000 ALTER TABLE `stocks` DISABLE KEYS */;
INSERT INTO `stocks` VALUES (4,6),(7,15);
/*!40000 ALTER TABLE `stocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testcolcons`
--

DROP TABLE IF EXISTS `testcolcons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testcolcons` (
  `Colnotnull` int(11) NOT NULL,
  `Colprikey` int(11) NOT NULL,
  `Coldefault` int(11) DEFAULT 42,
  PRIMARY KEY (`Colprikey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testcolcons`
--

LOCK TABLES `testcolcons` WRITE;
/*!40000 ALTER TABLE `testcolcons` DISABLE KEYS */;
INSERT INTO `testcolcons` VALUES (1,1,1),(2,2,NULL),(3,3,42);
/*!40000 ALTER TABLE `testcolcons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ttconst`
--

DROP TABLE IF EXISTS `ttconst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ttconst` (
  `mykey1` int(11) DEFAULT NULL,
  `mykey2` int(11) NOT NULL,
  `mystring` varchar(15) NOT NULL,
  PRIMARY KEY (`mykey2`,`mystring`),
  UNIQUE KEY `cs1` (`mykey1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ttconst`
--

LOCK TABLES `ttconst` WRITE;
/*!40000 ALTER TABLE `ttconst` DISABLE KEYS */;
INSERT INTO `ttconst` VALUES (1,2,'Amy Jones'),(2,2,'Dave jones');
/*!40000 ALTER TABLE `ttconst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

-- Dump completed on 2025-06-03  9:12:52
