-- MySQL dump 10.13  Distrib 5.5.32, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: sample
-- ------------------------------------------------------
-- Server version	5.5.32-0ubuntu0.12.10.1

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
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `article` varchar(20) NOT NULL DEFAULT '',
  `author` varchar(20) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`article`),
  KEY `author` (`author`),
  CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`author`) REFERENCES `users` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES ('congress loose','user3','political'),('fees hike','user4','educational'),('india won','user3','sports'),('overspeed kills','user1','city'),('sachin retired','user1','sports');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artist` (
  `a_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`a_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
INSERT INTO `artist` VALUES (1,'Da Vinci'),(2,'monet'),(4,'Picasso'),(5,'renoir'),(3,'Van Gogh');
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branch` (
  `bcode` varchar(2) NOT NULL DEFAULT '',
  `librarian` varchar(20) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`bcode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES ('b1','john smith','2 anglesea rd'),('b2','mary jones','34 pearse st'),('b3','francis owens','grange x');
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city2`
--

DROP TABLE IF EXISTS `city2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(25) NOT NULL DEFAULT '',
  `countrycode` char(3) NOT NULL DEFAULT '',
  `population` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `countrycode` (`countrycode`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city2`
--

LOCK TABLES `city2` WRITE;
/*!40000 ALTER TABLE `city2` DISABLE KEYS */;
INSERT INTO `city2` VALUES (1,'india','ind',30000),(2,'pakistan','pak',20000),(3,'russia','rus',15000),(4,'russia','rus',15000),(5,'russia','rus',15000),(6,'this is nota a russia','rus',15000),(7,'russia_new','rus',23230),(8,'russia_new','ind',23230),(9,'russia','rus',15000),(10,'russia','rus',15000),(11,'russia','rus',15000),(12,'russia','rus',15000),(13,'india','ind',25000),(14,'india','ind',25000),(15,'india','ind',25000),(16,'india','ind',25000),(17,'india','ind',25000);
/*!40000 ALTER TABLE `city2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `article` varchar(20) DEFAULT NULL,
  `comment` varchar(40) DEFAULT NULL,
  `user` varchar(20) DEFAULT NULL,
  KEY `article` (`article`),
  KEY `user` (`user`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`article`) REFERENCES `articles` (`article`),
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user`) REFERENCES `users` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES ('congress loose','bjp in power','user1'),('fees hike','govt take action','user2'),('india won','by 5-0','user1'),('congress loose','bjp celebrates','user1'),('congress loose','nda came into power','user4'),('fees hike','3 schools shut down','user2'),('india won','bangla loose','user3');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `date`
--

DROP TABLE IF EXISTS `date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `date` (
  `d` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `date`
--

LOCK TABLES `date` WRITE;
/*!40000 ALTER TABLE `date` DISABLE KEYS */;
INSERT INTO `date` VALUES ('1991-12-12'),('1991-10-12'),('1991-10-13'),('1991-10-22');
/*!40000 ALTER TABLE `date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `holdings`
--

DROP TABLE IF EXISTS `holdings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `holdings` (
  `branch` varchar(2) NOT NULL DEFAULT '',
  `title` varchar(20) NOT NULL DEFAULT '',
  `copies` int(2) DEFAULT NULL,
  PRIMARY KEY (`branch`,`title`),
  KEY `title` (`title`),
  CONSTRAINT `holdings_ibfk_1` FOREIGN KEY (`branch`) REFERENCES `branch` (`bcode`),
  CONSTRAINT `holdings_ibfk_2` FOREIGN KEY (`title`) REFERENCES `titles` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `holdings`
--

LOCK TABLES `holdings` WRITE;
/*!40000 ALTER TABLE `holdings` DISABLE KEYS */;
INSERT INTO `holdings` VALUES ('b1','a history of dublin',1),('b1','how to fish',2),('b1','susannah',3),('b2','computers',2),('b2','how to fish',4),('b2','the wife',3),('b3','a history of dublin',1),('b3','computers',4),('b3','susannah',3),('b3','the wife',1);
/*!40000 ALTER TABLE `holdings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `lname` varchar(10) NOT NULL DEFAULT '',
  `phone` int(10) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`lname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES ('buttery',6984567,'college st'),('lincoln',6834567,'lincoln palace'),('o\'neill\'s',6834534,'pearse st'),('old nag',6823567,'dame st');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `painting`
--

DROP TABLE IF EXISTS `painting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `painting` (
  `a_id` int(10) unsigned NOT NULL,
  `p_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `state` varchar(2) NOT NULL,
  `price` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`p_id`),
  KEY `a_id` (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `painting`
--

LOCK TABLES `painting` WRITE;
/*!40000 ALTER TABLE `painting` DISABLE KEYS */;
INSERT INTO `painting` VALUES (1,1,'last supper','in',34),(1,2,'the mona lisa','mi',87),(3,3,'starry night','ky',48),(3,4,'the potato eaters','ky',67),(3,5,'the rocks','ie',33),(5,6,'les deux','ne',64);
/*!40000 ALTER TABLE `painting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sandwiches`
--

DROP TABLE IF EXISTS `sandwiches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sandwiches` (
  `location` varchar(10) NOT NULL DEFAULT '',
  `bread` varchar(7) NOT NULL DEFAULT '',
  `filling` varchar(10) NOT NULL DEFAULT '',
  `price` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`location`,`bread`,`filling`),
  CONSTRAINT `sandwiches_ibfk_1` FOREIGN KEY (`location`) REFERENCES `locations` (`lname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sandwiches`
--

LOCK TABLES `sandwiches` WRITE;
/*!40000 ALTER TABLE `sandwiches` DISABLE KEYS */;
INSERT INTO `sandwiches` VALUES ('buttery','white','cheese',1.00),('buttery','white','ham',1.10),('lincoln','rye','beef',1.35),('lincoln','rye','ham',1.25),('lincoln','white','ham',1.30),('o\'neill\'s','white','cheese',1.20),('o\'neill\'s','white','turkey',1.35),('o\'neill\'s','whole','ham',1.25),('old nag','rye','beef',1.35),('old nag','rye','ham',1.40);
/*!40000 ALTER TABLE `sandwiches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tastes`
--

DROP TABLE IF EXISTS `tastes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tastes` (
  `name` varchar(10) NOT NULL DEFAULT '',
  `filling` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`,`filling`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tastes`
--

LOCK TABLES `tastes` WRITE;
/*!40000 ALTER TABLE `tastes` DISABLE KEYS */;
INSERT INTO `tastes` VALUES ('brown','beef'),('brown','ham'),('brown','turkey'),('green','beef'),('green','cheese'),('green','turkey'),('jones','cheese');
/*!40000 ALTER TABLE `tastes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testing_table`
--

DROP TABLE IF EXISTS `testing_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testing_table` (
  `username` varchar(10) DEFAULT NULL,
  `roll_no` int(11) DEFAULT NULL,
  `first_name` varchar(10) DEFAULT NULL,
  `last_name` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testing_table`
--

LOCK TABLES `testing_table` WRITE;
/*!40000 ALTER TABLE `testing_table` DISABLE KEYS */;
INSERT INTO `testing_table` VALUES ('rahul',11,'rahul','bansal'),('jatin',12,'jatin','baweja'),('baweja',13,'vidit','jain'),('manish',14,'manish','puri'),('mohit',15,'mohit','jain'),('kulraj',16,'kulraj','singh'),('pramod',17,'pramod','sharma'),('divya',18,'divya','talwar');
/*!40000 ALTER TABLE `testing_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time`
--

DROP TABLE IF EXISTS `time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time` (
  `t` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time`
--

LOCK TABLES `time` WRITE;
/*!40000 ALTER TABLE `time` DISABLE KEYS */;
INSERT INTO `time` VALUES ('13:00:00'),('12:00:00'),('11:00:00'),('11:04:00');
/*!40000 ALTER TABLE `time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `titles`
--

DROP TABLE IF EXISTS `titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `titles` (
  `title` varchar(20) NOT NULL DEFAULT '',
  `author` varchar(20) DEFAULT NULL,
  `publisher` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `titles`
--

LOCK TABLES `titles` WRITE;
/*!40000 ALTER TABLE `titles` DISABLE KEYS */;
INSERT INTO `titles` VALUES ('a history of dublin','david little','wiley'),('computers','blaise pascal','applewoods'),('how to fish','amy fly','stop press'),('susannah','ann brown','macmillan'),('the wife','ann brown','macmillan');
/*!40000 ALTER TABLE `titles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `track`
--

DROP TABLE IF EXISTS `track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `track` (
  `album` char(10) NOT NULL,
  `dsk` int(11) NOT NULL,
  `posn` int(11) NOT NULL,
  `song` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`album`,`dsk`,`posn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `track`
--

LOCK TABLES `track` WRITE;
/*!40000 ALTER TABLE `track` DISABLE KEYS */;
INSERT INTO `track` VALUES ('new',23,24,'d-day'),('new',23,26,'d-day');
/*!40000 ALTER TABLE `track` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tsdemo1`
--

DROP TABLE IF EXISTS `tsdemo1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tsdemo1` (
  `t` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `val` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tsdemo1`
--

LOCK TABLES `tsdemo1` WRITE;
/*!40000 ALTER TABLE `tsdemo1` DISABLE KEYS */;
INSERT INTO `tsdemo1` VALUES ('2006-05-27 18:30:00',3),('2006-05-27 18:30:00',4),('2006-05-27 18:30:00',5),('2006-05-27 18:30:00',5);
/*!40000 ALTER TABLE `tsdemo1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `name` varchar(20) NOT NULL DEFAULT '',
  `category` enum('admin','normal') DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('user1','admin'),('user2','normal'),('user3','admin'),('user4','normal');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weekday`
--

DROP TABLE IF EXISTS `weekday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekday` (
  `day` enum('Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weekday`
--

LOCK TABLES `weekday` WRITE;
/*!40000 ALTER TABLE `weekday` DISABLE KEYS */;
INSERT INTO `weekday` VALUES ('Monday'),('Friday'),('Tuesday'),('Sunday'),('Thursday'),('Saturday'),('Wednesday');
/*!40000 ALTER TABLE `weekday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xyz`
--

DROP TABLE IF EXISTS `xyz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xyz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `a_id` int(10) unsigned NOT NULL,
  `p_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `state` varchar(2) NOT NULL,
  `price` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xyz`
--

LOCK TABLES `xyz` WRITE;
/*!40000 ALTER TABLE `xyz` DISABLE KEYS */;
INSERT INTO `xyz` VALUES (1,1,1,'last supper','in',234),(2,1,2,'the mona lisa','mi',287),(3,3,3,'starry night','ky',248),(4,3,4,'the potato eaters','ky',267),(5,3,5,'the rocks','ie',233),(6,5,6,'les deux','ne',264),(8,0,0,'rahul','',NULL),(9,0,0,'jatin','',NULL),(10,0,0,'baweja','',NULL),(11,0,0,'manish','',NULL),(12,0,0,'mohit','',NULL),(13,0,0,'kulraj','',NULL),(14,0,0,'pramod','',NULL),(15,0,0,'divya','',NULL);
/*!40000 ALTER TABLE `xyz` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-08-06 13:36:13
