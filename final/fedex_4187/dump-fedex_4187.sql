-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: fedex_4187
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
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `id_Client` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id_Client`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=5461;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Client 1','pClient 1','address 1','City 1','email1@mail.com'),(2,'Client 2','pClient 2','address 2','City 2','email2@mail.com'),(3,'Client 3','pClient 3','address 3','City 3','email3@mail.com');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery` (
  `Id_delivery` int(11) NOT NULL AUTO_INCREMENT,
  `fk_packet` int(11) NOT NULL,
  `fk_status` int(11) NOT NULL,
  `date_delivered` datetime NOT NULL,
  PRIMARY KEY (`Id_delivery`),
  KEY `FK_isporaka_status_isporaka_id_status` (`fk_status`),
  KEY `delivery_FK_1` (`fk_packet`),
  CONSTRAINT `delivery_FK` FOREIGN KEY (`fk_status`) REFERENCES `status_delivery` (`id_status`),
  CONSTRAINT `delivery_FK_1` FOREIGN KEY (`fk_packet`) REFERENCES `packet` (`id_packet`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1638;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` VALUES (1,1,1,'2015-10-07 10:12:52'),(2,1,2,'2015-10-09 10:12:52'),(3,1,3,'2015-10-20 10:12:52'),(4,2,1,'2015-01-15 00:00:00'),(5,2,2,'2015-02-04 00:00:00'),(6,3,1,'2015-12-01 10:20:48'),(7,3,2,'2015-12-08 10:21:04'),(8,3,4,'2015-12-15 10:21:25'),(9,4,1,'2015-12-09 10:25:03'),(10,4,5,'2015-12-11 10:25:16');
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `packagesum`
--

DROP TABLE IF EXISTS `packagesum`;
/*!50001 DROP VIEW IF EXISTS `packagesum`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `packagesum` (
  `Client ID` tinyint NOT NULL,
  `First Name` tinyint NOT NULL,
  `Last Name` tinyint NOT NULL,
  `Total Price` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `packet`
--

DROP TABLE IF EXISTS `packet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `packet` (
  `id_packet` int(11) NOT NULL AUTO_INCREMENT,
  `fk_price_packet` int(11) NOT NULL,
  `fk_client` int(11) NOT NULL,
  `fk_recipient` int(11) NOT NULL,
  `datePacket` datetime DEFAULT NULL,
  PRIMARY KEY (`id_packet`),
  KEY `FK_paket_cena_paket_[id_cena_paket` (`fk_price_packet`),
  KEY `FK_paket_klient_id_klient` (`fk_client`),
  KEY `FK_paket_primac_id_primac` (`fk_recipient`),
  CONSTRAINT `packet_FK` FOREIGN KEY (`fk_client`) REFERENCES `client` (`id_Client`),
  CONSTRAINT `packet_FK_1` FOREIGN KEY (`fk_price_packet`) REFERENCES `packet_price` (`id_packet_Price`),
  CONSTRAINT `packet_FK_2` FOREIGN KEY (`fk_recipient`) REFERENCES `recipient` (`id_recipient`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=2340;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packet`
--

LOCK TABLES `packet` WRITE;
/*!40000 ALTER TABLE `packet` DISABLE KEYS */;
INSERT INTO `packet` VALUES (1,1,1,1,'2015-09-01 10:02:21'),(2,2,2,2,'2012-12-05 10:03:31'),(3,3,3,3,'2013-07-11 10:10:02'),(4,4,1,2,'2015-08-12 15:10:32'),(5,5,3,1,'2015-12-02 11:26:00'),(7,2,1,1,'2015-12-08 11:40:04'),(8,2,3,1,'2015-12-12 11:40:54');
/*!40000 ALTER TABLE `packet` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER PacketTrigger
	AFTER INSERT
	ON packet
	FOR EACH ROW
BEGIN
   declare g varchar(255);
SELECT
  price INTO g
FROM packet_price
WHERE id_packet_Price = new.fk_price_packet;

INSERT INTO STAT
SET Desc_STAT = CONCAT('Inserted packet with ID = ', new.id_packet, ' and Price: ', g),
    DATE_STAT = NOW(); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `packet_price`
--

DROP TABLE IF EXISTS `packet_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `packet_price` (
  `id_packet_Price` int(11) NOT NULL AUTO_INCREMENT,
  `weight` varchar(255) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id_packet_Price`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=3276;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packet_price`
--

LOCK TABLES `packet_price` WRITE;
/*!40000 ALTER TABLE `packet_price` DISABLE KEYS */;
INSERT INTO `packet_price` VALUES (1,'0-2 kg',200),(2,'2-4 kg',400),(3,'4-8 kg',800),(4,'8-12 kg',1500),(5,'12 kg+',4000);
/*!40000 ALTER TABLE `packet_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipient`
--

DROP TABLE IF EXISTS `recipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipient` (
  `id_recipient` int(11) NOT NULL AUTO_INCREMENT,
  `fulName` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_recipient`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=5461;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipient`
--

LOCK TABLES `recipient` WRITE;
/*!40000 ALTER TABLE `recipient` DISABLE KEYS */;
INSERT INTO `recipient` VALUES (1,'Recipient 1','Address 1'),(2,'Recipient 2','Address 2'),(3,'Recipient 3','Address 3');
/*!40000 ALTER TABLE `recipient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stat`
--

DROP TABLE IF EXISTS `stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stat` (
  `ID_STAT` int(11) NOT NULL AUTO_INCREMENT,
  `Desc_STAT` varchar(500) DEFAULT NULL,
  `DATE_STAT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_STAT`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stat`
--

LOCK TABLES `stat` WRITE;
/*!40000 ALTER TABLE `stat` DISABLE KEYS */;
INSERT INTO `stat` VALUES (1,'Inserted packet with ID = 1 and Price: 200','2020-12-23 17:34:04'),(2,'Inserted packet with ID = 2 and Price: 400','2020-12-23 17:34:04'),(3,'Inserted packet with ID = 3 and Price: 800','2020-12-23 17:34:04'),(4,'Inserted packet with ID = 4 and Price: 1500','2020-12-23 17:34:04'),(5,'Inserted packet with ID = 5 and Price: 4000','2020-12-23 17:34:04'),(6,'Inserted packet with ID = 7 and Price: 400','2020-12-23 17:34:04'),(7,'Inserted packet with ID = 8 and Price: 400','2020-12-23 17:34:04');
/*!40000 ALTER TABLE `stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_delivery`
--

DROP TABLE IF EXISTS `status_delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_delivery` (
  `id_status` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_status`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=3276;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_delivery`
--

LOCK TABLES `status_delivery` WRITE;
/*!40000 ALTER TABLE `status_delivery` DISABLE KEYS */;
INSERT INTO `status_delivery` VALUES (1,'Packet preparation'),(2,'Packet in Transit'),(3,'Delivery Completed'),(4,'Cancelled'),(5,'UnKnown');
/*!40000 ALTER TABLE `status_delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'fedex_4187'
--
/*!50003 DROP PROCEDURE IF EXISTS `statPacket` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `statPacket`(IN packetID INTEGER)
BEGIN
SELECT
  fk_packet as 'Packet ID', status_delivery.status as 'Status'
FROM delivery
  INNER JOIN status_delivery
    ON delivery.fk_status = status_delivery.id_status
WHERE delivery.fk_packet = packetID; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `packagesum`
--

/*!50001 DROP TABLE IF EXISTS `packagesum`*/;
/*!50001 DROP VIEW IF EXISTS `packagesum`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `packagesum` AS select `client`.`id_Client` AS `Client ID`,`client`.`firstName` AS `First Name`,`client`.`lastName` AS `Last Name`,sum(`packet_price`.`price`) AS `Total Price` from ((`packet` join `client` on((`packet`.`fk_client` = `client`.`id_Client`))) join `packet_price` on((`packet`.`fk_price_packet` = `packet_price`.`id_packet_Price`))) group by `client`.`id_Client` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-23 18:06:57
