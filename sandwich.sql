-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: the_wich
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `bread`
--

DROP TABLE IF EXISTS `bread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bread` (
  `bread_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(31) NOT NULL,
  PRIMARY KEY (`bread_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `customer_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(127) NOT NULL,
  `password` varchar(63) NOT NULL,
  `name` varchar(63) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_detail`
--

DROP TABLE IF EXISTS `customer_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_detail` (
  `customer_detail_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` smallint(5) unsigned NOT NULL,
  `address` varchar(63) NOT NULL,
  `postal_code` varchar(7) NOT NULL,
  `phone_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`customer_detail_id`),
  KEY `fk_customer_id_idx` (`customer_id`),
  CONSTRAINT `fk_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `meat`
--

DROP TABLE IF EXISTS `meat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meat` (
  `meat_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(31) NOT NULL,
  PRIMARY KEY (`meat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `order_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` smallint(5) unsigned NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_line`
--

DROP TABLE IF EXISTS `order_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_line` (
  `order_line_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` smallint(5) unsigned NOT NULL,
  `sandwich_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`order_line_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sandwich`
--

DROP TABLE IF EXISTS `sandwich`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sandwich` (
  `sandwich_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(63) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` decimal(5,2) NOT NULL,
  PRIMARY KEY (`sandwich_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sandwich_bread`
--

DROP TABLE IF EXISTS `sandwich_bread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sandwich_bread` (
  `sandwich_bread_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `sandwich_id` smallint(5) unsigned NOT NULL,
  `bread_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`sandwich_bread_id`),
  KEY `fk_sandwich_bread_sandwich_idx` (`sandwich_id`),
  KEY `fk_sandwich_bread_bread_idx` (`bread_id`),
  CONSTRAINT `fk_sandwich_bread_bread` FOREIGN KEY (`bread_id`) REFERENCES `bread` (`bread_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_sandwich_bread_sandwich` FOREIGN KEY (`sandwich_id`) REFERENCES `sandwich` (`sandwich_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sandwich_meat`
--

DROP TABLE IF EXISTS `sandwich_meat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sandwich_meat` (
  `sandwich_meat_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `sandwich_id` smallint(5) unsigned NOT NULL,
  `meat_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`sandwich_meat_id`),
  KEY `fk_sandwich_meat_sandwich_idx` (`sandwich_id`),
  KEY `fk_sandwich_meat_meat_idx` (`meat_id`),
  CONSTRAINT `fk_sandwich_meat_meat` FOREIGN KEY (`meat_id`) REFERENCES `meat` (`meat_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_sandwich_meat_sandwich` FOREIGN KEY (`sandwich_id`) REFERENCES `sandwich` (`sandwich_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sandwich_sauce`
--

DROP TABLE IF EXISTS `sandwich_sauce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sandwich_sauce` (
  `sandwich_sauce_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `sandwich_id` smallint(5) unsigned NOT NULL,
  `sauce_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`sandwich_sauce_id`),
  KEY `fk_sandwich_sauce_sandwich_idx` (`sandwich_id`),
  KEY `fk_sandwich_sauce_sauce_idx` (`sauce_id`),
  CONSTRAINT `fk_sandwich_sauce_sandwich` FOREIGN KEY (`sandwich_id`) REFERENCES `sandwich` (`sandwich_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_sandwich_sauce_sauce` FOREIGN KEY (`sauce_id`) REFERENCES `sauce` (`sauce_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sandwich_topping`
--

DROP TABLE IF EXISTS `sandwich_topping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sandwich_topping` (
  `sandwich_topping_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `sandwich_id` smallint(5) unsigned NOT NULL,
  `topping_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`sandwich_topping_id`),
  KEY `fk_sandwich_topping_sandwich_idx` (`sandwich_id`),
  KEY `fk_sandwich_topping_topping_idx` (`topping_id`),
  CONSTRAINT `fk_sandwich_topping_sandwich` FOREIGN KEY (`sandwich_id`) REFERENCES `sandwich` (`sandwich_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_sandwich_topping_topping` FOREIGN KEY (`topping_id`) REFERENCES `topping` (`topping_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sauce`
--

DROP TABLE IF EXISTS `sauce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sauce` (
  `sauce_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(31) NOT NULL,
  PRIMARY KEY (`sauce_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `topping`
--

DROP TABLE IF EXISTS `topping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topping` (
  `topping_id` smallint(5) unsigned NOT NULL,
  `name` varchar(63) NOT NULL,
  `price` decimal(3,2) NOT NULL,
  PRIMARY KEY (`topping_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-01 19:29:44
