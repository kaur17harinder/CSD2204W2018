-- MySQL dump 10.16  Distrib 10.1.21-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: localhost
-- ------------------------------------------------------
-- Server version	10.1.21-MariaDB

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
-- Table structure for table `manu`
--

DROP TABLE IF EXISTS `manu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manu` (
  `Code` int(3) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manu`
--

LOCK TABLES `manu` WRITE;
/*!40000 ALTER TABLE `manu` DISABLE KEYS */;
INSERT INTO `manu` VALUES (1,'Sony'),(2,'Creative Labs'),(3,'Hewlett-Packard'),(4,'Iomega'),(5,'Fujitsu'),(6,'Winchester'),(7,'moxDroid Labs Inc'),(8,'Dell'),(9,'Bell Labs');
/*!40000 ALTER TABLE `manu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet`
--

DROP TABLE IF EXISTS `pet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pet` (
  `name` varchar(20) DEFAULT NULL,
  `owner` varchar(20) DEFAULT NULL,
  `species` varchar(20) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `death` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet`
--

LOCK TABLES `pet` WRITE;
/*!40000 ALTER TABLE `pet` DISABLE KEYS */;
INSERT INTO `pet` VALUES ('Fluffy','Harold','cat','f','1993-02-04','0000-00-00'),('Claws','Gwen','cat','m','1994-03-17','0000-00-00'),('Buffy','Harold','dog','f','1989-05-13','0000-00-00'),('Fang','Benny','dog','m','1990-08-27','0000-00-00'),('Bowser','Diane','dog','m','1979-08-31','1995-07-29'),('Chirpy','Gwen','bird','f','1998-09-11','0000-00-00'),('Whistler','Gwen','bird','','1997-12-09','0000-00-00'),('Slim','Benny','snake','m','1996-04-29','0000-00-00'),('123',NULL,NULL,NULL,NULL,NULL),('ABC123',NULL,NULL,NULL,NULL,NULL),('nh123',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `pet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `Code` int(3) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Price` decimal(10,0) NOT NULL,
  `Manufacturer` int(3) DEFAULT NULL,
  PRIMARY KEY (`Code`),
  KEY `FK_PRODUCTS` (`Manufacturer`),
  CONSTRAINT `FK_PRODUCTS` FOREIGN KEY (`Manufacturer`) REFERENCES `manu` (`Code`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Hard drive',240,5),(2,'Memory',120,6),(3,'ZIP drive',150,4),(4,'Floppy disk',5,6),(5,'Monitor',240,1),(6,'DVD drive',180,2),(7,'CD drive',90,2),(8,'Printer',270,3),(9,'Toner cartridge',66,3),(10,'DVD burner',180,2),(11,'Printer',40,7),(12,'Toner cartridge',54,7),(13,'DVD burner',78,7);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-16 11:16:34
