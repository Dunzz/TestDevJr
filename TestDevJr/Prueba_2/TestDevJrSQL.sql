-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: testdevjr
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `costos`
--

DROP TABLE IF EXISTS `costos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `costos` (
  `tipoDeLlamada` varchar(15) NOT NULL,
  `costo` decimal(10,4) DEFAULT NULL,
  PRIMARY KEY (`tipoDeLlamada`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `costos`
--

LOCK TABLES `costos` WRITE;
/*!40000 ALTER TABLE `costos` DISABLE KEYS */;
INSERT INTO `costos` VALUES ('Cel',0.4000),('Cel LD',0.5000),('LD nacional',0.1200);
/*!40000 ALTER TABLE `costos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logdial`
--

DROP TABLE IF EXISTS `logdial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logdial` (
  `idLlamada` varchar(10) NOT NULL,
  `fechaDeLlamada` datetime DEFAULT NULL,
  `tiempoDialogo` smallint DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `tipoDeLlamada` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idLlamada`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logdial`
--

LOCK TABLES `logdial` WRITE;
/*!40000 ALTER TABLE `logdial` DISABLE KEYS */;
INSERT INTO `logdial` VALUES ('197463','2020-01-01 00:00:00',60,'8000000001','Cel LD'),('197464','2020-01-02 00:00:00',60,'8000000002','Cel LD'),('197465','2020-01-03 00:00:00',240,'8000000003','Cel LD'),('197466','2020-01-04 00:00:00',60,'8000000004','Cel LD'),('197467','2020-01-05 00:00:00',60,'8000000005','Cel LD'),('197468','2020-01-06 00:00:00',60,'8000000006','Cel LD'),('197469','2020-01-07 00:00:00',60,'8000000007','Cel'),('197470','2020-01-08 00:00:00',120,'8000000008','LD nacional'),('197471','2020-01-09 00:00:00',60,'8000000009','Cel LD'),('197472','2020-01-10 00:00:00',60,'8000000010','Cel LD'),('197473','2020-01-11 00:00:00',120,'8000000011','Cel LD'),('197474','2020-01-12 00:00:00',60,'8000000012','LD nacional'),('197475','2020-01-13 00:00:00',60,'8000000013','LD nacional'),('197476','2020-01-14 00:00:00',60,'8000000014','Cel'),('197477','2020-01-15 00:00:00',120,'8000000015','Cel LD'),('197478','2020-01-16 00:00:00',60,'8000000016','Cel LD'),('197479','2020-01-17 00:00:00',60,'8000000017','Cel'),('197480','2020-01-18 00:00:00',60,'8000000018','Cel LD'),('197481','2020-01-19 00:00:00',180,'8000000019','LD nacional'),('197482','2020-01-20 00:00:00',120,'8000000020','LD nacional'),('197483','2020-01-21 00:00:00',60,'8000000021','Cel LD'),('197484','2020-01-22 00:00:00',60,'8000000022','Cel LD'),('197485','2020-01-23 00:00:00',60,'8000000023','Cel LD'),('197486','2020-01-24 00:00:00',120,'8000000024','Cel LD'),('197487','2020-01-25 00:00:00',60,'8000000025','Cel LD'),('197488','2020-01-26 00:00:00',60,'8000000026','Cel LD'),('197489','2020-01-27 00:00:00',120,'8000000027','Cel LD'),('197490','2020-01-28 00:00:00',60,'8000000028','Cel LD'),('197491','2020-01-29 00:00:00',76,'8000000029','Cel LD'),('197492','2020-01-30 00:00:00',60,'8000000030','Cel LD'),('197493','2020-01-31 00:00:00',60,'8000000031','Cel'),('197494','2020-02-01 00:00:00',60,'8000000032','Cel'),('197495','2020-02-02 00:00:00',60,'8000000033','Cel'),('197496','2020-02-03 00:00:00',240,'8000000034','Cel LD'),('197497','2020-02-04 00:00:00',60,'8000000035','Cel LD'),('197498','2020-02-05 00:00:00',240,'8000000036','Cel LD'),('197499','2020-02-06 00:00:00',120,'8000000037','Cel LD'),('197500','2020-02-07 00:00:00',95,'8000000038','Cel LD'),('197501','2020-02-08 00:00:00',60,'8000000039','Cel LD'),('197502','2020-02-09 00:00:00',60,'8000000040','Cel LD'),('197503','2020-02-10 00:00:00',360,'8000000041','Cel LD'),('197504','2020-02-11 00:00:00',60,'8000000042','Cel'),('197505','2020-02-12 00:00:00',60,'8000000043','Cel LD'),('197506','2020-02-13 00:00:00',60,'8000000044','Cel LD'),('197507','2020-02-14 00:00:00',120,'8000000045','Cel LD'),('197508','2020-02-15 00:00:00',60,'8000000046','Cel LD'),('197509','2020-02-16 00:00:00',60,'8000000047','Cel LD'),('197510','2020-02-17 00:00:00',120,'8000000048','Cel LD'),('197511','2020-02-18 00:00:00',120,'8000000049','Cel LD'),('197512','2020-02-19 00:00:00',60,'8000000050','Cel LD'),('197513','2020-02-20 00:00:00',85,'8000000051','Cel LD'),('197514','2020-02-21 00:00:00',60,'8000000052','Cel'),('197515','2020-02-22 00:00:00',60,'8000000053','Cel'),('197516','2020-02-23 00:00:00',120,'8000000054','Cel LD'),('197517','2020-02-24 00:00:00',120,'8000000055','Cel LD'),('197518','2020-02-25 00:00:00',240,'8000000056','Cel LD'),('197519','2020-02-26 00:00:00',60,'8000000057','Cel LD'),('197520','2020-02-27 00:00:00',180,'8000000058','Cel LD'),('197521','2020-02-28 00:00:00',180,'8000000059','Cel LD'),('197522','2020-02-29 00:00:00',120,'8000000060','Cel'),('197523','2020-03-01 00:00:00',60,'8000000061','Cel'),('197524','2020-03-02 00:00:00',60,'8000000062','Cel LD'),('197525','2020-03-03 00:00:00',120,'8000000063','Cel LD'),('197526','2020-03-04 00:00:00',60,'8000000064','Cel LD'),('197527','2020-03-05 00:00:00',60,'8000000065','Cel'),('197528','2020-03-06 00:00:00',60,'8000000066','Cel LD'),('197529','2020-03-07 00:00:00',60,'8000000067','Cel'),('197530','2020-03-08 00:00:00',60,'8000000068','Cel LD'),('197531','2020-03-09 00:00:00',60,'8000000069','Cel LD'),('197532','2020-03-10 00:00:00',60,'8000000070','Cel LD'),('197533','2020-03-11 00:00:00',60,'8000000071','Cel LD'),('197534','2020-03-12 00:00:00',120,'8000000072','Cel LD'),('197535','2020-03-13 00:00:00',60,'8000000073','Cel LD'),('197536','2020-03-14 00:00:00',60,'8000000074','Cel'),('197537','2020-03-15 00:00:00',60,'8000000075','Cel LD'),('197538','2020-03-16 00:00:00',120,'8000000076','Cel LD'),('197539','2020-03-17 00:00:00',60,'8000000077','Cel'),('197540','2020-03-18 00:00:00',60,'8000000078','Cel LD'),('197541','2020-03-19 00:00:00',86,'8000000079','Cel LD'),('197542','2020-03-20 00:00:00',120,'8000000080','Cel'),('197543','2020-03-21 00:00:00',120,'8000000081','Cel LD'),('197544','2020-03-22 00:00:00',60,'8000000082','Cel LD'),('197545','2020-03-23 00:00:00',77,'8000000083','Cel LD'),('197546','2020-03-24 00:00:00',60,'8000000084','Cel'),('197547','2020-03-25 00:00:00',60,'8000000085','Cel LD'),('197548','2020-03-26 00:00:00',120,'8000000086','Cel LD'),('197549','2020-03-27 00:00:00',180,'8000000087','Cel LD'),('197550','2020-03-28 00:00:00',180,'8000000088','Cel LD'),('197551','2020-03-29 00:00:00',60,'8000000089','Local'),('197552','2020-03-30 00:00:00',60,'8000000090','LD nacional'),('197553','2020-03-31 00:00:00',60,'8000000091','Cel LD'),('197554','2020-04-01 00:00:00',60,'8000000092','Cel LD'),('197555','2020-04-02 00:00:00',60,'8000000093','Cel LD'),('197556','2020-04-03 00:00:00',180,'8000000094','Cel'),('197557','2020-04-04 00:00:00',60,'8000000095','Cel LD'),('197558','2020-04-05 00:00:00',196,'8000000096','Cel'),('197559','2020-04-06 00:00:00',60,'8000000097','Cel LD'),('197560','2020-04-07 00:00:00',60,'8000000098','Cel'),('197561','2020-04-08 00:00:00',60,'8000000099','Cel LD'),('197562','2020-04-09 00:00:00',60,'8000000100','Cel'),('197563','2020-04-10 00:00:00',60,'8000000101','Cel'),('197564','2020-04-11 00:00:00',60,'8000000102','Cel LD'),('197565','2020-04-12 00:00:00',60,'8000000103','Cel'),('197566','2020-04-13 00:00:00',120,'8000000104','Cel LD'),('197567','2020-04-14 00:00:00',180,'8000000105','Cel'),('197568','2020-04-15 00:00:00',60,'8000000106','Cel LD'),('197569','2020-04-16 00:00:00',60,'8000000107','Cel LD'),('197570','2020-04-17 00:00:00',60,'8000000108','Cel LD'),('197571','2020-04-18 00:00:00',180,'8000000109','Cel LD'),('197572','2020-04-19 00:00:00',60,'8000000110','Cel LD'),('197573','2020-04-20 00:00:00',60,'8000000111','LD nacional'),('197574','2020-04-21 00:00:00',60,'8000000112','Cel LD'),('197575','2020-04-22 00:00:00',60,'8000000113','Cel LD'),('197576','2020-04-23 00:00:00',60,'8000000114','Cel LD'),('197577','2020-04-24 00:00:00',60,'8000000115','Cel'),('197578','2020-04-25 00:00:00',60,'8000000116','Cel LD'),('197579','2020-04-26 00:00:00',60,'8000000117','Cel LD'),('197580','2020-04-27 00:00:00',240,'8000000118','Cel LD'),('197581','2020-04-28 00:00:00',60,'8000000119','Cel LD'),('197582','2020-04-29 00:00:00',60,'8000000120','Cel LD'),('197583','2020-04-30 00:00:00',120,'8000000121','Cel LD'),('197584','2020-05-01 00:00:00',60,'8000000122','Cel LD'),('197585','2020-05-02 00:00:00',60,'8000000123','Cel LD'),('197586','2020-05-03 00:00:00',120,'8000000124','LD nacional'),('197587','2020-05-04 00:00:00',60,'8000000125','Cel LD'),('197588','2020-05-05 00:00:00',60,'8000000126','LD nacional'),('197589','2020-05-06 00:00:00',60,'8000000127','Cel'),('197590','2020-05-07 00:00:00',60,'8000000128','Cel LD'),('197591','2020-05-08 00:00:00',120,'8000000129','Cel LD');
/*!40000 ALTER TABLE `logdial` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-15 19:01:30
