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
-- Dumping data for table `bread`
--

LOCK TABLES `bread` WRITE;
/*!40000 ALTER TABLE `bread` DISABLE KEYS */;
INSERT INTO `bread` VALUES (1,'white'),(2,'whole wheat'),(3,'16 grain'),(4,'cheesy');
/*!40000 ALTER TABLE `bread` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'email@inter.net','password','Name',1),(2,'chungy@email','password','Chungy',1);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `customer_detail`
--

LOCK TABLES `customer_detail` WRITE;
/*!40000 ALTER TABLE `customer_detail` DISABLE KEYS */;
INSERT INTO `customer_detail` VALUES (1,2,'123 ABC','A1B2C3',613123);
/*!40000 ALTER TABLE `customer_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `meat`
--

LOCK TABLES `meat` WRITE;
/*!40000 ALTER TABLE `meat` DISABLE KEYS */;
INSERT INTO `meat` VALUES (1,'bacon'),(2,'chicken breast'),(3,'sliced chicken'),(4,'roast beef'),(5,'tofu'),(6,'turkey'),(7,'ham');
/*!40000 ALTER TABLE `meat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `order_line`
--

LOCK TABLES `order_line` WRITE;
/*!40000 ALTER TABLE `order_line` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sandwich`
--

LOCK TABLES `sandwich` WRITE;
/*!40000 ALTER TABLE `sandwich` DISABLE KEYS */;
INSERT INTO `sandwich` VALUES (1,'B.L.T.','Bacon, lettuce, and tomato. A classic.',7.99),(2,'Clubhouse','Sliced chicken, bacon, lettuce, tomato and mayonnaise. Join the club.',9.49),(3,'Ham & Cheese','Black forest ham, and cheddar cheese.',8.99),(4,'Herbivore','Lettuce, onion, tomato, green and black olive, cucumber and bell pepper on 16 grain bread.',6.99),(5,'Carnivore','Bacon, chicken breast, roast beef, ham, and turkey. We think there\'s bread in there somewhere.',10.99),(6,'Roast Beef','Roast beef, lettuce, tomato, and cheddar cheese. Simple but satisfying.',7.99),(7,'T.L.T.','Tofu bacon, lettuce and tomato. You\'ll taste the difference!',7.99);
/*!40000 ALTER TABLE `sandwich` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sandwich_bread`
--

LOCK TABLES `sandwich_bread` WRITE;
/*!40000 ALTER TABLE `sandwich_bread` DISABLE KEYS */;
/*!40000 ALTER TABLE `sandwich_bread` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sandwich_meat`
--

LOCK TABLES `sandwich_meat` WRITE;
/*!40000 ALTER TABLE `sandwich_meat` DISABLE KEYS */;
/*!40000 ALTER TABLE `sandwich_meat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sandwich_sauce`
--

LOCK TABLES `sandwich_sauce` WRITE;
/*!40000 ALTER TABLE `sandwich_sauce` DISABLE KEYS */;
/*!40000 ALTER TABLE `sandwich_sauce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sandwich_topping`
--

LOCK TABLES `sandwich_topping` WRITE;
/*!40000 ALTER TABLE `sandwich_topping` DISABLE KEYS */;
/*!40000 ALTER TABLE `sandwich_topping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sauce`
--

LOCK TABLES `sauce` WRITE;
/*!40000 ALTER TABLE `sauce` DISABLE KEYS */;
INSERT INTO `sauce` VALUES (1,'mayonnaise'),(2,'ketchup'),(3,'mustard'),(4,'ranch'),(5,'sriracha'),(6,'special sauce'),(7,'BBQ'),(8,'hot sauce');
/*!40000 ALTER TABLE `sauce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `topping`
--

LOCK TABLES `topping` WRITE;
/*!40000 ALTER TABLE `topping` DISABLE KEYS */;
INSERT INTO `topping` VALUES (1,'lettuce',0.00),(3,'onion',0.00),(4,'pickle',0.00),(5,'tomato',0.00),(6,'green olive',0.00),(7,'black olive',0.00),(8,'cucumber',0.00),(9,'peppers',0.00);
/*!40000 ALTER TABLE `topping` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-13 22:01:07
