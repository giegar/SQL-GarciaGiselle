-- TABLAS INCLUIDAS EN EL BACKUP
-- detalle_pedido
-- detalle_venta
-- egresos
-- ingreso
-- log_prod
-- log_ventas
-- pedidos
-- productos
-- proveedores
-- venta

-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: stock
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Dumping data for table `detalle_pedido`
--

LOCK TABLES `detalle_pedido` WRITE;
/*!40000 ALTER TABLE `detalle_pedido` DISABLE KEYS */;
INSERT INTO `detalle_pedido` VALUES (700,500,117,10),(701,501,113,15),(702,502,113,15),(703,502,115,10),(704,503,116,10),(705,504,104,10),(706,505,117,5),(707,505,116,15),(708,506,104,10),(709,506,105,10),(710,506,107,5),(711,507,100,10),(712,508,115,5),(713,508,113,5),(714,509,109,5),(715,510,116,5),(716,511,100,15),(717,512,113,10),(718,512,113,5),(719,513,103,10),(720,514,118,5),(721,514,117,5);
/*!40000 ALTER TABLE `detalle_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `detalle_venta`
--

LOCK TABLES `detalle_venta` WRITE;
/*!40000 ALTER TABLE `detalle_venta` DISABLE KEYS */;
INSERT INTO `detalle_venta` VALUES (1500,1000,118,3,120.00),(1501,1001,118,1,400.00),(1502,1001,117,1,450.00),(1503,1001,116,1,200.00),(1504,1002,114,2,900.00),(1505,1002,100,1,900.00),(1506,1002,104,1,650.00),(1507,1003,114,1,450.00),(1508,1003,112,1,300.00),(1509,1004,115,2,2250.00),(1510,1005,100,1,900.00),(1511,1005,103,1,4200.00),(1512,1005,105,1,3250.00),(1513,1005,107,1,5500.00),(1514,1005,112,1,1750.00),(1515,1006,106,1,1100.00),(1516,1006,110,1,350.00),(1517,1007,103,1,4200.00),(1518,1007,105,1,3250.00),(1519,1008,103,1,4200.00),(1520,1009,101,2,2000.00),(1521,1010,107,1,5500.00),(1522,1010,113,2,3000.00),(1523,1010,105,1,3250.00),(1524,1010,115,1,2250.00),(1525,1011,102,1,850.00),(1526,1012,103,2,8400.00),(1527,1012,104,2,1300.00),(1528,1012,115,1,2250.00),(1529,1013,111,2,3500.00),(1530,1014,109,1,1250.00),(1531,1014,111,1,1750.00),(1532,1014,103,1,4200.00);
/*!40000 ALTER TABLE `detalle_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `egresos`
--

LOCK TABLES `egresos` WRITE;
/*!40000 ALTER TABLE `egresos` DISABLE KEYS */;
INSERT INTO `egresos` VALUES (2000,1000,118,3,'2023-05-01'),(2001,1001,118,1,'2023-05-01'),(2002,1001,117,1,'2023-05-01'),(2003,1001,116,1,'2023-05-01'),(2004,1002,114,2,'2023-05-02'),(2005,1002,100,1,'2023-05-02'),(2006,1002,104,1,'2023-05-02'),(2007,1003,114,1,'2023-05-02'),(2008,1003,112,1,'2023-05-02'),(2009,1004,115,2,'2023-05-03'),(2010,1005,100,1,'2023-05-03'),(2011,1005,103,1,'2023-05-03'),(2012,1005,105,1,'2023-05-03'),(2013,1005,107,1,'2023-05-03'),(2014,1005,112,1,'2023-05-03'),(2015,1006,106,1,'2023-05-03'),(2016,1006,110,1,'2023-05-03'),(2017,1007,103,1,'2023-05-04'),(2018,1007,105,1,'2023-05-04'),(2019,1008,103,1,'2023-05-04'),(2020,1009,101,2,'2023-05-06'),(2021,1010,107,1,'2023-05-07'),(2022,1010,113,2,'2023-05-07'),(2023,1010,105,1,'2023-05-07'),(2024,1010,115,1,'2023-05-07'),(2025,1011,102,1,'2023-05-07'),(2026,1012,103,2,'2023-05-08'),(2027,1012,104,2,'2023-05-08'),(2028,1012,115,1,'2023-05-08'),(2029,1013,111,2,'2023-05-08'),(2030,1014,109,1,'2023-05-08'),(2031,1014,111,1,'2023-05-08'),(2032,1014,103,1,'2023-05-08');
/*!40000 ALTER TABLE `egresos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ingreso`
--

LOCK TABLES `ingreso` WRITE;
/*!40000 ALTER TABLE `ingreso` DISABLE KEYS */;
INSERT INTO `ingreso` VALUES (200,500,117,10,1200.00,'2023-05-05'),(201,501,113,8,375.00,'2023-05-04'),(202,502,113,12,375.00,'2023-05-06'),(203,502,115,5,900.00,'2023-05-06'),(204,503,116,6,500.00,'2023-05-07'),(205,504,104,8,810.00,'2023-05-07'),(206,505,117,5,900.00,'2023-05-07'),(207,505,116,6,750.00,'2023-05-07'),(208,506,104,3,775.00,'2023-05-08'),(209,506,105,4,580.00,'2023-05-08'),(210,506,107,4,1160.00,'2023-05-08'),(211,507,100,10,450.00,'2023-05-08'),(212,508,115,5,1000.00,'2023-05-09'),(213,508,113,2,1200.00,'2023-05-09'),(214,509,109,4,750.00,'2023-05-09'),(215,510,116,5,1000.00,'2023-05-09'),(216,511,100,13,460.00,'2023-05-09'),(217,512,113,10,500.00,'2023-05-09'),(218,512,113,2,1000.00,'2023-05-10'),(219,513,103,6,1500.00,'2023-05-10'),(220,514,118,1,1500.00,'2023-05-10'),(221,514,117,5,1000.00,'2023-05-11');
/*!40000 ALTER TABLE `ingreso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_prod`
--

LOCK TABLES `log_prod` WRITE;
/*!40000 ALTER TABLE `log_prod` DISABLE KEYS */;
INSERT INTO `log_prod` VALUES (1,120,'lenteja nar 500gr','root@localhost','INSERT','2023-07-20','10:15:03'),(2,120,'lenteja nar 500gr','root@localhost','DELETE','2023-07-20','10:15:03'),(3,121,'Kanawa Pomelo 500ml','root@localhost','INSERT','2023-07-20','10:27:05'),(4,122,'Kanawa Sandia 500ml','root@localhost','INSERT','2023-07-20','10:27:05'),(5,123,'Kanawa Pomelo 250ml','root@localhost','INSERT','2023-07-20','10:27:05'),(6,124,'Kanawa Sandia 250ml','root@localhost','INSERT','2023-07-20','10:27:05'),(7,125,'Chipa baston Un','root@localhost','INSERT','2023-07-20','10:27:05'),(8,126,'Chipa Bolita Un','root@localhost','INSERT','2023-07-20','10:27:05'),(9,127,'Toques veg garb','root@localhost','INSERT','2023-07-20','10:27:05'),(10,128,'Toques veg lentej','root@localhost','INSERT','2023-07-20','10:27:05');
/*!40000 ALTER TABLE `log_prod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_ventas`
--

LOCK TABLES `log_ventas` WRITE;
/*!40000 ALTER TABLE `log_ventas` DISABLE KEYS */;
INSERT INTO `log_ventas` VALUES (1,1015,'5000.00','root@localhost','INSERT','2023-07-20','10:15:03'),(2,1015,'5000.00','root@localhost','BEF UPDATE','2023-07-20','10:15:03'),(3,1015,'4000.00','root@localhost','AFT UPDATE','2023-07-20','10:15:03');
/*!40000 ALTER TABLE `log_ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (500,2,12000,1,'2023-05-01'),(501,5,3000,0,'2023-05-01'),(502,5,9000,1,'2023-05-01'),(503,2,3000,1,'2023-05-03'),(504,4,6500,1,'2023-05-03'),(505,2,7800,1,'2023-05-03'),(506,4,9300,1,'2023-05-06'),(507,7,4500,0,'2023-05-06'),(508,5,7400,1,'2023-05-06'),(509,4,3000,1,'2023-05-07'),(510,2,5000,1,'2023-05-07'),(511,7,6000,1,'2023-05-07'),(512,5,7000,0,'2023-05-08'),(513,4,9000,1,'2023-05-08'),(514,2,6500,0,'2023-05-08');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (100,'avena extfina 500gr',900,10),(101,'avena clasica 500gr',1000,5),(102,'almendra 100gr',850,3),(103,'almendra 500gr',4200,4),(104,'nuez mariposa 100gr',650,6),(105,'nuez mariposa 500gr',3250,8),(106,'pistacho 100gr',1100,7),(107,'pistacho 500gr',5500,5),(108,'mani natural 100gr',250,8),(109,'mani natural 500gr',1250,10),(110,'mani salado 100gr',350,5),(111,'mani salado 500gr',1750,8),(112,'mani choco 100gr',300,2),(113,'mani choco 500gr',1500,1),(114,'almendr choc 100gr',450,6),(115,'almendr choc 500gr',2250,7),(116,'choco c/leche 100gr',200,9),(117,'choco semi am 100gr',450,2),(118,'choco blanc 100gr',400,9),(121,'Kanawa Pomelo 500ml',650,10),(122,'Kanawa Sandia 500ml',650,10),(123,'Kanawa Pomelo 250ml',550,15),(124,'Kanawa Sandia 250ml',550,15),(125,'Chipa baston Un',70,60),(126,'Chipa Bolita Un',60,60),(127,'Toques veg garb',800,10),(128,'Toques veg lentej',800,10);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'el brocal','',1547925682,'','efectivo'),(2,'arcor','',1539754625,'','transferencia'),(3,'deli','',1578541209,'','efectivo'),(4,'el portugues','',1547965025,'','merc pago'),(5,'argenfruit','',1578945632,'','transferencia'),(6,'pipas','',1547893656,'','merc pago'),(7,'quacker','',1578601462,'','merc pago'),(8,'dinalchile','',1529488239,'','transferencia'),(9,'distrb personitas','',1543269010,'','merc pago'),(10,'mayorist pacheco','',1549230587,'','efectivo'),(11,'juan guiñazu','',1532697550,'','merc pago'),(12,'kanawa','',1533029874,'','efectivo'),(13,'casavegana','',1539562478,'','efectivo'),(14,'la choza','',1547471025,'','merc pago'),(15,'mandiole','',1598663258,'','transferencia');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
INSERT INTO `venta` VALUES (1000,'contado','consumidor final',1200.00,'2023-05-01'),(1001,'contado','consumidor final',1050.00,'2023-05-01'),(1002,'tarjeta','consumidor final',2450.00,'2023-05-02'),(1003,'contado','consumidor final',750.00,'2023-05-02'),(1004,'contado','consumidor final',4500.00,'2023-05-03'),(1005,'tarjeta','consumidor final',14250.00,'2023-05-03'),(1006,'debito','consumidor final',1450.00,'2023-05-03'),(1007,'debito','consumidor final',7450.00,'2023-05-04'),(1008,'tarjeta','consumidor final',3250.00,'2023-05-04'),(1009,'contado','consumidor final',2000.00,'2023-05-06'),(1010,'contado','consumidor final',14000.00,'2023-05-07'),(1011,'contado','consumidor final',850.00,'2023-05-07'),(1012,'tarjeta','consumidor final',11950.00,'2023-05-08'),(1013,'debito','consumidor final',3500.00,'2023-05-08'),(1014,'contado','consumidor final',7200.00,'2023-05-08'),(1015,'contado','consumidor final',4000.00,'2023-10-05');
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-20 10:43:18
