-- MySQL dump 10.13  Distrib 8.1.0, for Win64 (x86_64)
--
-- Host: 82.180.133.39    Database: SOFTEAM
-- ------------------------------------------------------
-- Server version	8.0.35-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `SOFTEAM`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `SOFTEAM` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `SOFTEAM`;

--
-- Table structure for table `ANIMALES`
--

DROP TABLE IF EXISTS `ANIMALES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ANIMALES` (
  `COD_ANIMAL` bigint NOT NULL AUTO_INCREMENT,
  `FEC_REG_ANIMAL` date NOT NULL,
  `CLAS_ANIMAL` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `RAZ_ANIMAL` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `COL_ANIMAL` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `COD_FIERRO` bigint NOT NULL,
  `VEN_ANIMAL` enum('S','N') NOT NULL,
  `HER_ANIMAL` enum('S','N') NOT NULL,
  `DET_ANIMAL` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`COD_ANIMAL`),
  KEY `FK_ANIMALES_FIERROS_COD_FIERRO` (`COD_FIERRO`),
  CONSTRAINT `FK_ANIMALES_FIERROS_COD_FIERRO` FOREIGN KEY (`COD_FIERRO`) REFERENCES `FIERROS` (`COD_FIERRO`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ANIMALES`
--

LOCK TABLES `ANIMALES` WRITE;
/*!40000 ALTER TABLE `ANIMALES` DISABLE KEYS */;
INSERT INTO `ANIMALES` VALUES (38,'2023-08-14','Yegua','criollo','Gris',29,'N','N','Animal movible'),(40,'2023-08-14','caballo','pura sangre','cafes',23,'N','S','NINGUNA'),(41,'2023-08-14','caballo','pura sangre','cafes',27,'N','N','NINGUNA'),(42,'2023-08-14','Yegua','criollo','Gris',28,'N','N','NINGUNO'),(43,'2023-08-15','Vaca','Hereford','Gris',29,'N','N','NINGUNO'),(44,'2023-08-15','Cerdo','criollo','blanco',30,'S','S','-------'),(45,'2023-08-15','Caballo','shire','negro',27,'N','N','------'),(46,'2023-08-15','Burro','criollo','Gris',30,'S','N','-------'),(47,'2023-08-15','Yegua','criollo','Gris',26,'N','N','ninguno'),(48,'2023-08-15','Yegua','criollo','Gris',28,'N','N','NINGUNO'),(49,'2023-08-15','Cerdo','criollo','castaño',23,'S','S','NADA'),(50,'2023-08-15','Mula','criollo','manchado',32,'N','N','NADA'),(51,'2023-08-15','Caballo','mustang','cafes',29,'N','N','NADa'),(52,'2023-08-15','Caballo','frison','castaño',24,'S','N','NADa'),(53,'2023-08-15','Caballo','shire','blanco',27,'S','S','NADA'),(54,'2023-08-15','Cerdo','criollo','cafes',30,'S','S','NADA'),(55,'2023-08-17','Yegua','criollo','castaño',29,'S','N','No'),(56,'2023-08-17','Vaca','Ganado Lechero','negro',27,'S','S','NINGUNO'),(57,'2023-08-17','Cerdo','criollo','marron',30,'N','N','Nada'),(58,'2023-08-17','Yegua','criollo','negro',27,'N','N','NO'),(59,'2023-08-17','Burro','criollo','cafes',30,'S','N','Nada'),(60,'2023-08-17','Caballo','shire','manchado',29,'N','S','Nada'),(61,'2023-08-17','Caballo','mustang','blanco',28,'N','N','No'),(62,'2023-08-17','Burro','criollo','Gris',29,'N','N','Nada'),(63,'2023-08-17','Yegua','criollo','Gris',32,'N','N','No'),(64,'2023-08-17','Mula','criollo','negro',28,'S','S','Nada'),(65,'2023-08-17','Yegua','criollo','Gris',27,'N','N','/////////'),(66,'2023-08-17','Cerdo','criollo','negro',30,'N','N','No'),(67,'2023-08-17','Yegua','criollo','Gris',26,'N','N','NO'),(68,'2023-08-17','Yegua','criollo','Gris',26,'N','N','NO'),(69,'2023-08-18','Yegua','criollo','Gris',23,'N','N','Nada'),(70,'2023-08-18','Yegua','criollo','Gris',28,'N','N','No'),(71,'2023-08-18','Yegua','criollo','Gris',24,'S','S','No'),(72,'2023-08-18','Vaca','Hereford','marron',32,'N','N','NINGUNO'),(73,'2023-08-18','Caballo','frison','Gris',28,'N','N','prueva'),(74,'2023-08-18','Vaca','Angus rojo','marron',24,'N','S','n'),(75,'2023-08-18','Cerdo','criollo','Gris',29,'S','S','<<<<<'),(76,'2023-08-18','Vaca','Angus','castaño',26,'N','N','n'),(77,'2023-08-18','Vaca','simmental<','marron',30,'N','N','prueva'),(78,'2023-08-18','Vaca','Brangus','negro',24,'S','N','NINGUNO'),(79,'2023-08-18','Yegua','criollo','negro',27,'N','N','NINGUNO'),(80,'2023-08-18','Burro','criollo','castaño',32,'N','N','NINGUNO'),(81,'2023-08-18','Yegua','criollo','Gris',27,'N','N','00000999'),(82,'2023-08-19','Cerdo','criollo','manchado',26,'N','N','ni'),(83,'2023-08-19','Toro','hereford','anaranjado',24,'N','N','NINGUNO'),(84,'2023-08-19','vaca','l','a',24,'N','S','NINGUNO'),(85,'2023-08-19','vaca','lechera','manchada',38,'N','N','NINGUNO'),(86,'2023-08-19','VACA','Criolla','cafe',26,'N','N','NINGUNO'),(87,'2023-08-20','VACA','SHIRE','manchada',24,'N','N','NINGUNO'),(88,'2023-08-20','Mulo','Criollo','Gris con Blanco',36,'N','N','ningunooo'),(89,'2023-08-29','Cerdo','Grande','Verde',46,'S','N','Es un cerdo'),(90,'2023-08-29','Vaca','Holter','Verde',47,'N','S','Ninguno'),(91,'2023-09-20','Caballo','Appaloosa','Cafe',36,'N','N','Ninguna'),(100,'2023-10-14','Bobino','Grajam','Amarillo',29,'S','S','Criado con amor'),(101,'2023-10-14','Bobino','Grajam','Rojo',45,'S','S','Ninguno'),(102,'2023-10-17','Vaca','Angu','Negro',27,'S','N','Ninguna'),(103,'2023-10-17','Cerdo','Landrace','rosado intenso',28,'N','S','Ninguna'),(104,'2023-11-08','Cerdo','Profesor','Beage',52,'S','S','Cerdito criado'),(105,'2023-11-17','Cerdo','criollo','blanco',24,'N','N','NINGUNO'),(106,'2023-11-24','Vaca','Holstein','marron',42,'N','S','NINGUNO');
/*!40000 ALTER TABLE `ANIMALES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BITACORA`
--

DROP TABLE IF EXISTS `BITACORA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BITACORA` (
  `COD_BITACORA` bigint NOT NULL AUTO_INCREMENT,
  `TIP_EVENTO` varchar(10) DEFAULT NULL,
  `USUARIO_DB` varchar(100) DEFAULT NULL,
  `FEC_REG_TIP_EVENTO` datetime DEFAULT NULL,
  `NOM_TABLA` varchar(50) DEFAULT NULL,
  `MOD_TABLA` varchar(50) DEFAULT NULL,
  `IND_TABLA` varchar(50) DEFAULT NULL,
  `REG1` varchar(500) DEFAULT NULL,
  `REG2` varchar(500) DEFAULT NULL,
  `REG3` varchar(500) DEFAULT NULL,
  `REG4` varchar(500) DEFAULT NULL,
  `REG5` varchar(500) DEFAULT NULL,
  `REG6` varchar(500) DEFAULT NULL,
  `REG7` varchar(500) DEFAULT NULL,
  `REG8` varchar(500) DEFAULT NULL,
  `REG9` varchar(500) DEFAULT NULL,
  `REG10` varchar(500) DEFAULT NULL,
  `REG11` varchar(500) DEFAULT NULL,
  `REG12` varchar(500) DEFAULT NULL,
  `REG13` varchar(500) DEFAULT NULL,
  `REG14` varchar(500) DEFAULT NULL,
  `REG15` varchar(500) DEFAULT NULL,
  `REG16` varchar(500) DEFAULT NULL,
  `REG17` varchar(500) DEFAULT NULL,
  `REG18` varchar(500) DEFAULT NULL,
  `REG19` varchar(500) DEFAULT NULL,
  `REG20` varchar(500) DEFAULT NULL,
  `REG21` varchar(500) DEFAULT NULL,
  `REG22` varchar(500) DEFAULT NULL,
  `REG23` varchar(500) DEFAULT NULL,
  `REG24` varchar(500) DEFAULT NULL,
  `REG25` varchar(500) DEFAULT NULL,
  `REG26` varchar(500) DEFAULT NULL,
  `REG27` varchar(500) DEFAULT NULL,
  `REG28` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`COD_BITACORA`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BITACORA`
--

LOCK TABLES `BITACORA` WRITE;
/*!40000 ALTER TABLE `BITACORA` DISABLE KEYS */;
INSERT INTO `BITACORA` VALUES (202,'UPDATE','soft@%','2023-11-25 19:07:06','TBL_MS_USUARIOS','SEGURIDAD','ACTIVA','32','32','28','28','JUANZR','JUANZR','1','1','ACTIVO','ACTIVO','2023-11-21 03:09:31','2023-11-21 03:09:31','3','3','0','0','2024-01-20','2024-01-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(203,'UPDATE','soft@%','2023-11-25 19:07:06','TBL_MS_USUARIOS','SEGURIDAD','ACTIVA','32','32','28','28','JUANZR','JUANZR','1','1','ACTIVO','ACTIVO','2023-11-25 19:07:06','2023-11-21 03:09:31','3','3','0','0','2024-01-20','2024-01-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `BITACORA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DETALLE_TRASLADO`
--

DROP TABLE IF EXISTS `DETALLE_TRASLADO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DETALLE_TRASLADO` (
  `COD_DTRASLADO` bigint NOT NULL AUTO_INCREMENT,
  `COD_PTRASLADO` bigint NOT NULL,
  `COD_FIERRO` bigint NOT NULL,
  `CAN_GANADO` bigint NOT NULL,
  PRIMARY KEY (`COD_DTRASLADO`),
  KEY `FK_DTRASLADO_TRASLADOS_COD_PTRASLADO` (`COD_PTRASLADO`),
  KEY `FK_DTRASLADO_FIERROS_COD_FIERRO` (`COD_FIERRO`),
  CONSTRAINT `FK_DTRASLADO_FIERROS_COD_FIERRO` FOREIGN KEY (`COD_FIERRO`) REFERENCES `FIERROS` (`COD_FIERRO`),
  CONSTRAINT `FK_DTRASLADO_TRASLADOS_COD_PTRASLADO` FOREIGN KEY (`COD_PTRASLADO`) REFERENCES `PERMISOS_TRASLADO` (`COD_PTRASLADO`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DETALLE_TRASLADO`
--

LOCK TABLES `DETALLE_TRASLADO` WRITE;
/*!40000 ALTER TABLE `DETALLE_TRASLADO` DISABLE KEYS */;
INSERT INTO `DETALLE_TRASLADO` VALUES (12,12,30,5),(13,12,32,3),(14,12,32,5),(15,13,32,3),(16,14,29,2),(17,15,40,3),(18,16,42,2),(21,19,23,123),(24,22,37,5),(25,23,37,5),(26,24,37,7),(27,25,52,100);
/*!40000 ALTER TABLE `DETALLE_TRASLADO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DIRECCIONES`
--

DROP TABLE IF EXISTS `DIRECCIONES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DIRECCIONES` (
  `COD_DIRECCION` bigint NOT NULL AUTO_INCREMENT,
  `COD_PERSONA` bigint NOT NULL,
  `DES_DIRECCION` varchar(100) NOT NULL,
  `TIP_DIRECCION` enum('DO','TR') NOT NULL,
  PRIMARY KEY (`COD_DIRECCION`),
  KEY `FK_DIRECCIONES_PERSONAS_COD_PERSONA` (`COD_PERSONA`),
  CONSTRAINT `FK_DIRECCIONES_PERSONAS_COD_PERSONA` FOREIGN KEY (`COD_PERSONA`) REFERENCES `PERSONAS` (`COD_PERSONA`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DIRECCIONES`
--

LOCK TABLES `DIRECCIONES` WRITE;
/*!40000 ALTER TABLE `DIRECCIONES` DISABLE KEYS */;
INSERT INTO `DIRECCIONES` VALUES (1,22,'LLANOS','DO'),(2,23,'LA CRUZ','TR'),(3,24,'LLANOS, casa 2333','DO'),(4,25,'SUYAPA','DO'),(5,26,'IZAGUIRRE POR LAS GRADAS','DO'),(6,27,'Col. Llanos','DO'),(7,28,'DONDE SAMU al lado','TR'),(9,30,'Res. La Cañada BLOQUE 2','TR'),(11,1,'Loarque casa 2408','DO'),(14,2,'San Juancito','TR'),(15,3,'PRADOS UNI','DO'),(16,4,'ALEMAN','DO'),(17,5,'COL. KENNEDY','DO'),(18,9,'Metro mall','DO'),(19,21,'lomas de aqui','DO'),(26,35,'LOARQUE bloque 3','DO'),(33,42,'SEGURO SOCIAL IHH','DO'),(35,34,'ANILLO','TR'),(36,29,'ANILLO','DO'),(37,36,'SUYAPA','TR'),(46,52,'Plaza Flor','DO'),(47,53,'Quezada','TR'),(48,54,'Prados Universitarios','TR'),(49,55,'En la esquina','TR'),(50,56,'La Cañada','DO'),(51,57,'supermercados Colonia','TR'),(52,58,'barrio san Cristóbal','DO'),(53,59,'Res. La Cañada','DO'),(54,60,'Res. La Cañada','DO'),(55,61,'Col. Los Castaños','TR'),(56,62,'Talanga','DO'),(57,63,'Santa Lucia','DO'),(58,64,'tegucigalpa','DO'),(59,65,'El hato','DO'),(60,66,'El Carrizal','DO'),(61,67,'Santa Lucia','DO'),(62,68,'Santa Lucia','DO'),(63,69,'El hato','DO'),(64,70,'La Rosa','DO'),(71,78,'Aleman, por el pasaje','DO'),(83,90,'CentroAmerica','DO'),(84,91,'Las Lomas','TR'),(85,92,'Anillo Periferico','TR'),(86,93,'Villa Vieja','TR'),(87,94,'El Hato','DO');
/*!40000 ALTER TABLE `DIRECCIONES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMAILS`
--

DROP TABLE IF EXISTS `EMAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EMAILS` (
  `COD_EMAIL` bigint NOT NULL AUTO_INCREMENT,
  `COD_PERSONA` bigint NOT NULL,
  `DIR_EMAIL` varchar(50) NOT NULL,
  PRIMARY KEY (`COD_EMAIL`),
  UNIQUE KEY `DIR_EMAIL_UNIQUE` (`DIR_EMAIL`),
  KEY `FK_EMAILS_PERSONAS_COD_PERSONA` (`COD_PERSONA`),
  CONSTRAINT `FK_EMAILS_PERSONAS_COD_PERSONA` FOREIGN KEY (`COD_PERSONA`) REFERENCES `PERSONAS` (`COD_PERSONA`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMAILS`
--

LOCK TABLES `EMAILS` WRITE;
/*!40000 ALTER TABLE `EMAILS` DISABLE KEYS */;
INSERT INTO `EMAILS` VALUES (1,5,'fanicita64@gmail.com'),(2,2,'marijo2@gmail.com'),(3,3,'ricardo00@gmail.com'),(4,23,'richar35@gmail.com'),(5,28,'juansamu22@gmail.com'),(7,30,'leoit2@gmail.com'),(9,1,'jacy600@gmail.com'),(11,4,'saludos2@gmail.com'),(12,9,'doñamari00@gmail.com'),(13,21,'otramaria@gmail.com'),(14,22,'majope20@gmail.com'),(15,24,'nohelia34@gmail.com'),(16,25,'karla199@gmail.com'),(17,26,'juancitohn@gmail.com'),(18,27,'estoymal98@gmail.com'),(24,35,'leomessi10@hb.om'),(25,36,'jacybeu@gmail.com'),(33,34,'lorena@gmail.com'),(34,29,'poleth@gmail.com'),(35,42,'josesito@gmail.com'),(44,52,'javiacape@kai.com'),(45,53,'santi@gmail.com'),(46,54,'larissa@gmail.com'),(47,55,'lore@gamil.com'),(48,56,'carlitos@gmail.com'),(49,57,'sarita@gmail.com'),(50,58,'walesdshgd@gmail.com'),(51,59,'samanta@gmail.com'),(52,60,'emilio@gmail.com'),(53,61,'angelb@correo.com'),(54,62,'ivsaid@correo.hn'),(55,63,'olmand@correo.hn'),(56,64,'nelson@correo.com'),(57,65,'mariana@gmail.com'),(58,66,'martha@gmail.com'),(59,67,'olmanlujo@.com'),(60,68,'olmannuevo@.com'),(61,69,'juan@gmail.com'),(62,70,'martinez@gmail.com'),(69,78,'miguelito@gmail.com'),(81,90,'danilo98@gmail.com'),(82,91,'invitado@correo.com'),(83,92,'samara30@gmail.com'),(84,93,'saulito9@gmail.com'),(85,94,'profesor@correo.com');
/*!40000 ALTER TABLE `EMAILS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EXPEDIENTE_CVENTA`
--

DROP TABLE IF EXISTS `EXPEDIENTE_CVENTA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EXPEDIENTE_CVENTA` (
  `COD_CVENTA` bigint NOT NULL AUTO_INCREMENT,
  `FEC_CVENTA` date NOT NULL,
  `COD_VENDEDOR` bigint NOT NULL,
  `NOM_COMPRADOR` varchar(200) NOT NULL,
  `DNI_COMPRADOR` varchar(15) NOT NULL,
  `COD_ANIMAL` bigint NOT NULL,
  `FOL_CVENTA` varchar(20) NOT NULL,
  `ANT_CVENTA` enum('NO','SI') DEFAULT NULL,
  PRIMARY KEY (`COD_CVENTA`),
  UNIQUE KEY `COD_ANIMAL` (`COD_ANIMAL`),
  KEY `FK_CVENTA_PERSONAS_COD_VENDEDOR` (`COD_VENDEDOR`),
  CONSTRAINT `FK_CVENTA_ANIMALES_COD_ANIMAL` FOREIGN KEY (`COD_ANIMAL`) REFERENCES `ANIMALES` (`COD_ANIMAL`),
  CONSTRAINT `FK_CVENTA_PERSONAS_COD_VENDEDOR` FOREIGN KEY (`COD_VENDEDOR`) REFERENCES `PERSONAS` (`COD_PERSONA`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EXPEDIENTE_CVENTA`
--

LOCK TABLES `EXPEDIENTE_CVENTA` WRITE;
/*!40000 ALTER TABLE `EXPEDIENTE_CVENTA` DISABLE KEYS */;
INSERT INTO `EXPEDIENTE_CVENTA` VALUES (1,'2023-08-07',2,'Arturo Mateo Sandoval','080118804567',38,'000145','NO'),(3,'2023-08-14',3,'Victor Enrique Suarez','801199423456',40,'9800','NO'),(4,'2023-08-14',1,'yamileth maria perez ortez','0801199267865',41,'0009','NO'),(7,'2023-08-14',25,'Diana Carina Valverde Tellez','0802199845678',42,'0006','NO'),(10,'2023-08-18',2,'Nohemi Esmeralda Aguilar','0801199267865',76,'0008','NO'),(11,'2023-08-18',1,'angela','080219907890',77,'0004','NO'),(12,'2023-08-18',9,'Kennert andres Aviles','080120178954',78,'00014','NO'),(13,'2023-08-18',9,'Marcelo Rodrigo Gonzalo Urrutia','0803177509872',75,'0009','NO'),(14,'2023-08-18',26,'Fernanda Josellin Meza Flores','0801197302222',79,'00013','NO'),(15,'2023-08-19',25,'Elsa Rainting Oseguera','0801176789765',81,'00015','NO'),(17,'2023-08-19',25,'Elvis Miguel Pavon Palau','0801197604445',82,'202','NO'),(21,'2023-08-20',53,'Sarahi Margarita Perez Suarez','0802178966532',84,'6732','SI'),(22,'2023-08-20',3,'Ana Frida Arellano Barriento','0801199467543',86,'88','NO'),(23,'2023-10-24',68,'J///***888','0254///*******',52,'hjhbhbhb//******','NO'),(24,'2023-10-24',67,'Julia','0254789584554',49,'02555','SI'),(25,'2023-10-24',1,'Marvin Perez','12#$202df0603',91,'1\"s#34','NO');
/*!40000 ALTER TABLE `EXPEDIENTE_CVENTA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FIERROS`
--

DROP TABLE IF EXISTS `FIERROS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FIERROS` (
  `COD_FIERRO` bigint NOT NULL AUTO_INCREMENT,
  `FEC_TRAMITE_FIERRO` date NOT NULL,
  `COD_PERSONA` bigint NOT NULL,
  `TIP_FIERRO` enum('L','F','N','S') NOT NULL,
  `IMG_FIERRO` varchar(300) NOT NULL,
  `NUM_FOLIO_FIERRO` varchar(20) NOT NULL,
  `MON_CERTIFICO_FIERRO` decimal(8,2) NOT NULL,
  `ESTADO` enum('A','I') DEFAULT NULL,
  PRIMARY KEY (`COD_FIERRO`),
  UNIQUE KEY `COD_PERSONA` (`COD_PERSONA`),
  KEY `FK_FIERROS_PERSONAS_COD_PERSONA_idx` (`COD_PERSONA`),
  CONSTRAINT `FK_FIERROS_PERSONAS_COD_PERSONA` FOREIGN KEY (`COD_PERSONA`) REFERENCES `PERSONAS` (`COD_PERSONA`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FIERROS`
--

LOCK TABLES `FIERROS` WRITE;
/*!40000 ALTER TABLE `FIERROS` DISABLE KEYS */;
INSERT INTO `FIERROS` VALUES (23,'2023-08-14',2,'L','http://127.0.0.1:8000/imagenes/fierros/86d2304f063fdb926bc2a54d26e0806f.png','000001',300.00,NULL),(24,'2023-08-14',3,'L','http://127.0.0.1:8000/imagenes/fierros/29220746ddee9f5056eaf89165716b1c.jpg','000002',3000.00,NULL),(26,'2023-08-14',4,'S','http://sistema.softeam.online/imagenes/fierros/d1e982a8f9f94d4e03321cdfa6b4561e.jpg','000003',300.00,NULL),(27,'2023-08-14',23,'N','http://127.0.0.1:8000/imagenes/fierros/f7e3058201a66f0d9d1804cf890e07bf.jpg','000004',300.00,NULL),(28,'2023-08-14',36,'F','http://sistema.softeam.online/imagenes/fierros/bfec2badba91694a1cd87fef3653457f.jpg','000005',300.00,NULL),(29,'2023-08-14',26,'N','http://127.0.0.1:8000/imagenes/fierros/9cfe85d787b4ae8e0fe56fc2048f749c.jpg','000006',300.00,NULL),(30,'2023-08-15',30,'L','http://127.0.0.1:8000/imagenes/fierros/d8fc84adc04d70c4a9cb34ed411c7f07.jpg','000001',350.00,NULL),(32,'2023-08-15',1,'S','http://127.0.0.1:8000/imagenes/fierros/327fb19d14d7214902d258e9c76be1ef.png','000008',350.00,NULL),(36,'2023-08-19',21,'L','http://127.0.0.1:8000/imagenes/fierros/5c912df931fe8e0ff8723188c2205d76.png','000010',375.00,NULL),(37,'2023-08-19',52,'L','http://127.0.0.1:8000/imagenes/fierros/14597b8293fdb2f37b35eca04c945e94.jpg','000011',663.00,NULL),(38,'2023-08-19',55,'N','http://127.0.0.1:8000/imagenes/fierros/25dbeb886e4c982372a0e97e8d926151.jpg','000012',35258.00,NULL),(39,'2023-07-13',5,'L','http://127.0.0.1:8000/imagenes/fierros/487c1ca737183e845c114020a7a31f59.jpg','00215',700.00,NULL),(40,'2023-08-21',56,'S','http://127.0.0.1:8000/imagenes/fierros/d1a455ee0e33e10d8c6592af666f7e67.jpg','000021',200.00,NULL),(42,'2023-08-21',35,'F','http://127.0.0.1:8000/imagenes/fierros/5208b5305e7aaf53102df8c39f443709.png','100244',821.00,NULL),(43,'2023-08-21',27,'L','http://127.0.0.1:8000/imagenes/fierros/e908a0b6740dfa3f552af386fb5fede2.jpg','000033',350.00,NULL),(44,'2023-08-24',59,'N','http://localhost:8000/imagenes/fierros/1be3edd245caa40a5124a21a190d1f70.jpg','000245',300.00,'I'),(45,'2023-08-24',58,'S','http://localhost:8000/imagenes/fierros/affc318a877015cad9bea0c063e226bd.jpg','000246',350.00,'I'),(46,'2023-08-28',60,'F','http://sistema.softeam.online/imagenes/fierros/614b41c22a89ab8909a51c6ea93efc4b.jpeg','000548',350.00,NULL),(47,'2023-08-29',61,'L','http://sistema.softeam.online/imagenes/fierros/d27283511b00192b32751d5e50c99bae.jpg','213355',500.00,'A'),(51,'2023-11-22',92,'L','http://127.0.0.1:8000/imagenes/fierros/863a56e8f1e69b889cbbdf8356335e3e.png','000252',370.00,'A'),(52,'2023-11-08',94,'N','http://sistema.softeam.online/imagenes/fierros/8248aa49b6094bce54886fd17eebf915.jpeg','999955',550.00,'A');
/*!40000 ALTER TABLE `FIERROS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PERMISOS_SACRIFICIO`
--

DROP TABLE IF EXISTS `PERMISOS_SACRIFICIO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PERMISOS_SACRIFICIO` (
  `COD_PSACRIFICIO` bigint NOT NULL AUTO_INCREMENT,
  `FEC_REG_PSACRIFICIO` date NOT NULL,
  `NOM_PERSONA` varchar(200) NOT NULL,
  `DNI_PERSONA` varchar(15) NOT NULL,
  `TEL_PERSONA` varchar(18) NOT NULL,
  `FEC_SACRIFICIO` date NOT NULL,
  `COD_ANIMAL` bigint NOT NULL,
  `DIR_PSACRIFICIO` varchar(200) NOT NULL,
  PRIMARY KEY (`COD_PSACRIFICIO`),
  UNIQUE KEY `COD_ANIMAL` (`COD_ANIMAL`),
  CONSTRAINT `FK_SACRIFICIO_ANIMALES_COD_ANIMAL` FOREIGN KEY (`COD_ANIMAL`) REFERENCES `ANIMALES` (`COD_ANIMAL`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PERMISOS_SACRIFICIO`
--

LOCK TABLES `PERMISOS_SACRIFICIO` WRITE;
/*!40000 ALTER TABLE `PERMISOS_SACRIFICIO` DISABLE KEYS */;
INSERT INTO `PERMISOS_SACRIFICIO` VALUES (45,'2023-08-14','Douglas Mauricio Cruz','0801199902000','96662066','2023-08-14',38,'Col. San Miguel'),(46,'2023-08-15','Juan Samuel Zelaya','0987619876155','22245589','2023-08-23',40,'El Hato de Enmedio'),(47,'2023-08-15','Jose Humberto','0987654321245','00990099','2023-08-26',41,'Departamento El Paraiso'),(48,'2023-08-15','Ivis Said Arteaga','0989098765436','96953035','2023-08-31',42,'En Talanga, cerca del parque'),(49,'2023-08-15','Jacy Benites','0232197392923','98765423','2023-11-23',43,'En la residencial maya'),(50,'2023-08-15','Nelson diaz','2738278283732','32323223','2023-08-29',44,'UNAH-CU'),(51,'2023-08-15','Leonel Andres Messi','3290332900392','34324343','2023-08-27',45,'Miami, Florida'),(52,'2023-08-15','Neymar JR','3192839182381','78934753','2023-08-31',46,'Dubai'),(53,'2023-08-15','Jasser Umanzor','4903293923423','23443423','2023-09-06',47,'Colonia Izaguirre'),(55,'2023-08-15','Sonia Umanzor','4234234324323','34324323','2023-08-17',48,'Calle Lempa 2'),(56,'2023-08-15','Dennise Melendez','4534232131244','32132311','2023-08-30',49,'Calle principal de la San Miguel'),(57,'2023-08-15','Mia Marcela','0021923291032','32321312','2023-08-31',50,'Colonia Estados Unidos'),(60,'2023-08-15','Luz Virginia','3921389021392','32132133','2023-08-22',51,'Col. La Esperanza'),(61,'2023-08-15','Juana Karina','0321302130212','32321312','2023-08-29',52,'Col. Izaguirre'),(63,'2023-08-15','Donaldo Barrientos','3231232312334','31232133','2023-08-16',53,'Villas del Sol'),(64,'2023-08-17','Oscar Donaldo','8303912939290','89312838','2023-08-30',54,'Valle del este'),(65,'2023-08-17','Jose Figueroa','9021309238329','83218382','2023-08-29',55,'Villa Nueva'),(66,'2023-08-17','Dominic Toretto','9039023193233','90321939','2023-08-31',56,'Las Vegas'),(67,'2023-08-17','Brayan Oconer','0932139123834','83218383','2023-08-29',57,'New York'),(68,'2023-08-17','Mia Ortis','9021187283913','91239238','2023-08-29',58,'San Salvador'),(69,'2023-08-17','Dina Lopez','9312931293890','83839303','2023-08-22',59,'Altos de la Sosa'),(70,'2023-08-17','Obed Lopez','9812379227428','78312378','2023-08-27',60,'Rio abajo'),(71,'2023-08-17','Kevin Amilcar','0133932028300','87628023','2023-08-30',61,'Izaguirre'),(72,'2023-08-17','Bonieck Garcia','0182393020830','83736393','2023-08-28',62,'Bulevar Suyapa'),(73,'2023-08-17','Alejandra Barriento','0182635373832','93837373','2023-08-30',63,'Bulevar Fuerzas Armada'),(74,'2023-08-17','Nora Velasques','7261712891292','22828262','2023-08-29',64,'Brisas del Valle'),(75,'2023-08-17','Daniel Mauricio','9128389329332','21321321','2023-08-31',65,'3 de Noviembre'),(76,'2023-08-17','Dennis Villalobos','8213891283838','82182183','2023-08-27',66,'El Sitio'),(77,'2023-08-18','Denis Maldonado','9123983919192','92929393','2023-08-20',67,'21 de Octubre'),(78,'2023-08-18','Monica Caceres','1232443211234','32432423','2023-08-26',68,'Col. Aurora'),(79,'2023-08-18','Jerry Mejia','0923949344902','29329499','2023-08-23',69,'Col. La Era'),(80,'2023-08-18','Pedro Gutierres','9832190332233','33333333','2023-08-18',70,'La Padrera'),(82,'2023-08-18','Silvia Victoria','9021932103932','12132212','2023-08-28',75,'San Juan'),(85,'2023-08-21','Mel Zelaya','2139123902183','23121322','2023-08-29',88,'Residencial las Uvas'),(86,'2023-08-23','Walter Ricardo','0801199915113','22334455','2023-10-03',83,'Olancho'),(87,'2023-08-28','Ingrid del Sid','3901239219232','23123123','2023-08-31',78,'Villa vista'),(89,'2023-10-17','Carlos','0803198534561','33891581','2023-10-19',103,'La Ceiba, Atlántida'),(90,'2023-10-17','Jerry Mejia','0801199929086','33891234&%/((&%(%8','2023-09-29',100,'Islas de la Bahía%%&&/())=)&/&'),(101,'2023-11-08','Silvia Triminio','0987731873193','33131313','2023-11-16',104,'Colonia Izaguirre');
/*!40000 ALTER TABLE `PERMISOS_SACRIFICIO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PERMISOS_TRASLADO`
--

DROP TABLE IF EXISTS `PERMISOS_TRASLADO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PERMISOS_TRASLADO` (
  `COD_PTRASLADO` bigint NOT NULL AUTO_INCREMENT,
  `FEC_REG_PTRASLADO` date NOT NULL,
  `FEC_TRASLADO` date NOT NULL,
  `COD_PERSONA` bigint NOT NULL,
  `DIR_ORIG_PTRASLADO` varchar(200) NOT NULL,
  `DIR_DEST_TRASLADO` varchar(200) NOT NULL,
  `NOM_TRANSPORTISTA` varchar(200) NOT NULL,
  `DNI_TRANSPORTISTA` varchar(15) NOT NULL,
  `TEL_TRANSPORTISTA` varchar(18) NOT NULL,
  `MAR_VEHICULO` varchar(20) NOT NULL,
  `MOD_VEHICULO` varchar(20) NOT NULL,
  `MAT_VEHICULO` varchar(20) NOT NULL,
  `COL_VEHICULO` varchar(20) NOT NULL,
  `MON_TRASLADO` decimal(8,2) NOT NULL,
  PRIMARY KEY (`COD_PTRASLADO`),
  KEY `FK_TRASLADO_PERSONAS_COD_PERSONA` (`COD_PERSONA`),
  CONSTRAINT `FK_TRASLADO_PERSONAS_COD_PERSONA` FOREIGN KEY (`COD_PERSONA`) REFERENCES `PERSONAS` (`COD_PERSONA`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PERMISOS_TRASLADO`
--

LOCK TABLES `PERMISOS_TRASLADO` WRITE;
/*!40000 ALTER TABLE `PERMISOS_TRASLADO` DISABLE KEYS */;
INSERT INTO `PERMISOS_TRASLADO` VALUES (11,'2023-08-14','2023-11-09',1,'Talanga','yuscaran','Joel Antonio','0812198000004','97847466','TOYOTA','4x4','XYZH 2734','Rojo',3000.00),(12,'2023-08-15','2023-08-18',4,'TALANGA','OJOJONA','JOSE MANUEL ORDOÑEZ','0708-2000-00222','97932345','HONDA','4X4','UYTF 7646','ROJO',5000.00),(13,'2023-08-16','2023-08-29',24,'Talanga','YUSCA','Jose Humberto','0701199800045','97220379','TOYOTA','CAMION','876 HHTD','BLANco',40.00),(14,'2023-08-16','2023-08-24',42,'Talanga','Patuca','Cristiano Ronaldo','0827198500024','97220346','TOYOTA','Camion','HYT 5678','Negro',3000.00),(15,'2023-08-21','2023-08-28',24,'Ojo de Agua','LA CARCEl','Jose Humberto Figueroa Duron','070120010004','96512100','Honda','4x4','HYT 0000','Negro',2000.00),(16,'2023-08-22','2023-08-31',5,'OJOJONA','YUCATAN','Costly','0701200100034','96512100','NISSAN','Camion','HYT JHFD','gris',80.00),(17,'2023-10-24','2023-10-24',21,'centroamerica','hato de enmedio','javier','0801199025521','96427283','hyundai','accent','2002','rojo',2500.00),(18,'2023-10-24','2023-10-13',42,'La Ceiba, Atlántida','Comayagua','Pablo Aguilar89/$&','08#119$705699%','89H06#4A','Civic','Camión','2003','ROj5$',9000.00),(19,'2023-10-24','2023-10-24',1,'Una Cuadra abajo del Rio, bloque 3','El Carrizal, 2 cuadras abajo del mercado','Roberto Matute','1204202300604','33858678','Toyota','1.2Hatchback','HBO0123','Verde',12345.00),(20,'2023-11-08','2023-11-08',2,'asdsdfdsgfdgdf','sdfsdfdsfsdfsdf','dsfsdfsdfsdf','0801111989674','125487877','bas0145','dgdfgdfg','dfgdfgdfg','dfgdfgdfg',300.00),(21,'2023-11-08','2023-11-15',1,'Talanga','Ojo de Agua','Juan Reconco','0807198924705','96512100','TOYOTA','iihcihidchck','876 HHTD','gris',2000.00),(22,'2023-11-08','2023-11-08',1,'Talanga','Ojo de Agua','Juan Reconco','0701199800045','96512100','NISSAN','4x4','HYT JHFD','BLANco',50.00),(23,'2023-11-08','2023-11-16',78,'Talanga','Villa de San Francisco','Jose Ferrari','0701200012345','96512109','FORD','4x4','HYT 0000','Rojo',600.00),(24,'2023-11-08','2023-11-16',1,'Talanga','Ojo de Agua','Jorge Ucles','0701080919284','96512100','NISSAN','4x4hh','876 HHT','azul',500.00),(25,'2023-11-08','2023-11-16',94,'Colonia Villa Nueva, sector 8, casa #10, 10 cuadras arriba de la posta abajo de la pulpería mi bendición, casa beige con portón color negro','Salida del Sur, aldea Yaguasire cerca de la escuela Rural mixta, casa color naranja con portones azules, antes del campo de futbol','Juan Ramirez Garcia','9999999999999','88887878','Toyota','Corolla','HSDJKLA','Beage',1000.00);
/*!40000 ALTER TABLE `PERMISOS_TRASLADO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PERSONAS`
--

DROP TABLE IF EXISTS `PERSONAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PERSONAS` (
  `COD_PERSONA` bigint NOT NULL AUTO_INCREMENT,
  `DNI_PERSONA` varchar(15) NOT NULL,
  `NOM_PERSONA` varchar(200) NOT NULL,
  `GEN_PERSONA` enum('M','F') NOT NULL,
  `FEC_NAC_PERSONA` date NOT NULL,
  `IMG_PERSONA` varchar(300) NOT NULL,
  PRIMARY KEY (`COD_PERSONA`),
  UNIQUE KEY `DNI_PERSONA_UNIQUE` (`DNI_PERSONA`),
  UNIQUE KEY `NOM_PERSONA_UNIQUE` (`NOM_PERSONA`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PERSONAS`
--

LOCK TABLES `PERSONAS` WRITE;
/*!40000 ALTER TABLE `PERSONAS` DISABLE KEYS */;
INSERT INTO `PERSONAS` VALUES (1,'0801199925014','Jacy Poleth Benitez','F','1999-05-09','/imagenes/personas/51d198dbb539da4c07477c8648b9b5e2.jpg'),(2,'0801199604050','Maria Jose Lopez Cruz','F','1995-10-14','/imagenes/personas/8671e7468fcfd107c52b51a2b9092121.jpg'),(3,'0801199720037','Ricardo Arjona','M','1992-06-21','undefined'),(4,'0801199900045','Saul Fernando Peralta Ventura','M','2000-05-29','/imagenes/personas/13dd0f203ae6e0103261a98ac0af6e21.jpg'),(5,'0801199207852','Fani Esmeralda Sierra Funez','M','2001-10-12','/imagenes/personas/6c84896b13400631b348660191337525.jpg'),(9,'0801199851126','Cielo Marina Gallo Flores','F','1999-07-20','undefined'),(21,'0601198700548','Maria Jose Peralta Abraham','F','1987-07-27','undefined'),(22,'0801199000487','Genesis Hilda Hernandez Flores','F','1990-07-15','undefined'),(23,'0801198600598','Ricardo Miguel Gomez Tercero','M','1986-08-06','undefined'),(24,'0801200600407','Nohelia Jimena Torres Hernandez','F','2001-12-08','/imagenes/personas/d8d24c3b894dd09ac6272ea779b39471.jpg'),(25,'0105197500363','Karla Sandra Perez Halanga','F','1975-07-17','undefined'),(26,'0801199006248','Juan Jose Arteaga Martinez','M','1990-09-05','undefined'),(27,'0802195645158','Denilson Domingo Peralta Kepez','M','1990-07-06','/imagenes/personas/f727d69b73a0eae04bd99ae0061f37eb.jpg'),(28,'0801198924705','Juan Samuel Zelaya Reconco','M','1994-05-10','/imagenes/personas/756e0e4a00e7d36fb53437ab7bce82b9.jpg'),(29,'0828200100242','Gladis Ester Hernandez Espinal','F','2001-08-09','null'),(30,'0601200100544','Genesis Jimena Nolasco Torres','M','2001-01-23','C/:'),(34,'0504199587452','Jennifer Gabriela Lopez Simon','F','1995-05-10','null'),(35,'0408198600207','Lionel Andres Messi Cruz','M','1986-05-20','null'),(36,'0601199500566','Paola Nora Sanchez Baquedano','F','1995-03-30','unah.jpg'),(42,'0601198801491','Jose Alejandro Garcia Contreras','M','1988-12-12','null'),(52,'0818200249852','Javier Olvin Hernandez Rosales','M','2002-06-28','null'),(53,'0806199501411','Santiago Emilio Nutella Casco','M','1995-10-08','http://127.0.0.1:8000/imagenes/personas/8e18eebce34bd007947149d19a6ca05c.jpg'),(54,'0803197300555','Larissa Suarez Martinez Ponce','F','1973-07-21','http://127.0.0.1:8000/imagenes/personas/ddfa2b086613293291079dd15c946ff1.jpeg'),(55,'0602199302987','Lorena Samara Raudales Pinto','F','1993-06-11','http://127.0.0.1:8000/imagenes/personas/e29a85ef6607d6134afbef5f0a7e0839.jpeg'),(56,'0905199200478','Ricardo Fabian Ramos Valle','M','1992-12-16','http://127.0.0.1:8000/imagenes/personas/01f4dbfc2c8b1f9c28b5846b024363ec.jpeg'),(57,'0504196400200','Sara Emilia Cortez Rodriguez','F','1964-12-29','http://127.0.0.1:8000/imagenes/personas/9fcdf9b423a93383a238d132a78285f7.jpeg'),(58,'0801199202001','Marlen Waleska Suyen','F','1992-11-21','http://127.0.0.1:8000/imagenes/personas/55c9c3486cd1170709d8ff115971a8c3.jpg'),(59,'0823200101094','Karol Estephani Moncada Zuniga','F','2001-02-14','http://sistema.softeam.online/imagenes/personas/e54fc0186424d764fc74b08afa50af79.jpeg'),(60,'0604198252218','Emilio Jairo Martinez Arguijo','M','1982-09-15','http://sistema.softeam.online/imagenes/personas/e0d5ab1d1339fbda3c5d06d92dc49e0f.jpeg'),(61,'0801198822669','Angela Lizeth Bustamante Duron','F','1982-05-17','http://sistema.softeam.online/imagenes/personas/5006c14129886928690db42a07de2a1b.jpeg'),(62,'0909200414258','Ivis Said Artega Flores','M','2000-01-12','http://sistema.softeam.online/imagenes/personas/26c5dc7c90c98c5205ea1d85df2aa8da.jpg'),(63,'0909187458963','Olman Dominguez','M','2005-01-01','http://sistema.softeam.online/imagenes/personas/8de6edd20b8c1a693968eb7382e75339.jpg'),(64,'0801199402135','Nelson Salgado','M','1994-06-13','http://sistema.softeam.online/imagenes/personas/171a8d7fd011c117fb5e315641cef20d.jpg'),(65,'0808199900606','Maria Antonieta','F','1999-05-09','http://sistema.softeam.online/imagenes/personas/cb2613a83c1c0ec32239ecbd00127631.jpg'),(66,'1208199808724','Martha Perez','F','1998-02-10','http://sistema.softeam.online/imagenes/personas/bd1ab98962c5ffe346b0f2da693e6f15.jpg'),(67,'0178986522855','Olman Hugo Dominguez Baca','M','2003-01-14','http://sistema.softeam.online/imagenes/personas/a5a8b234463ea1b166eff9ee9beaf3e9.jpeg'),(68,'0848484848875','Olman Dominguez Nolasco ','M','2001-01-01','http://sistema.softeam.online/imagenes/personas/386b6fdeaa5e97e86a566a2ebee8203a.jpeg'),(69,'0601200006063','Juan Lopez','M','2000-02-10','http://sistema.softeam.online/imagenes/personas/3542306b2c55d44fb7e030f2feadfc18.jpg'),(70,'0801200000606','Natanael Cesar Martinez','M','2000-06-10','http://sistema.softeam.online/imagenes/personas/ae7ffb28510f6010750cf8d7d2cc052a.jpg'),(78,'0605199865646','Julio Miguel Solano Sambrano','M','2005-09-04','http://127.0.0.1:8000/imagenes/personas/ca717d7e31b65cd4fa75a5fffe8ea770.jpg'),(90,'0301199688754','Danilo Santiago Montero Hildo','M','1996-08-10','http://127.0.0.1:8000/imagenes/personas/1ebba38c1ef81a8b21342857e053a2f2.jpeg'),(91,'0811200147983','Invitado','M','1986-07-09','http://sistema.softeam.online/imagenes/personas/dd570bf22898fd3b9ec66b3858063397.jpg'),(92,'0102196900254','Pauli Samara Melendez Medina','F','1969-10-08','http://127.0.0.1:8000/imagenes/personas/d27276f3969275579b67af227091cabb.jpg'),(93,'0205198866354','Pablo Saul Becerra Sech','M','1988-08-04','http://127.0.0.1:8000/imagenes/personas/2cdf7666e0fa2b86bf52a323943b380a.jpg'),(94,'0901199933489','Persona Profesor','M','1997-06-12','http://sistema.softeam.online/imagenes/personas/62d6b262a006c963524c76b89b601230.jpeg');
/*!40000 ALTER TABLE `PERSONAS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TBL_ERRORES`
--

DROP TABLE IF EXISTS `TBL_ERRORES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TBL_ERRORES` (
  `COD_ERROR` varchar(5) NOT NULL,
  `DES_ERROR` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `USR_ERROR` varchar(50) NOT NULL,
  `FEC_REG_ERROR` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TBL_ERRORES`
--

LOCK TABLES `TBL_ERRORES` WRITE;
/*!40000 ALTER TABLE `TBL_ERRORES` DISABLE KEYS */;
INSERT INTO `TBL_ERRORES` VALUES ('23000','Duplicate entry \'5\' for key \'TBL_MS_PREGUNTAS_USUARIO.PRIMARY\'','SOFTEAM@%','2023-07-04 00:13:12'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TBL_MS_PREGUNTAS_USUARIO`, CONSTRAINT `FK_P_USUARIOS_USUARIO_COD_USUARIO`','SOFTEAM@%','2023-07-04 00:14:09'),('23000','Duplicate entry \'4\' for key \'TBL_MS_USUARIOS.COD_PERSONA\'','SOFTEAM@%','2023-07-04 00:15:35'),('23000','Duplicate entry \'4\' for key \'TBL_MS_USUARIOS.COD_PERSONA\'','SOFTEAM@%','2023-07-04 00:15:47'),('23000','Duplicate entry \'4\' for key \'TBL_MS_USUARIOS.COD_PERSONA\'','SOFTEAM@%','2023-07-04 00:17:12'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TBL_MS_USUARIOS`, CONSTRAINT `FK_USUARIOS_PERSONAS_COD_PERSONA` FOREIGN K','SOFTEAM@%','2023-07-04 00:18:35'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TBL_MS_USUARIOS`, CONSTRAINT `FK_USUARIOS_PERSONAS_COD_PERSONA` FOREIGN K','SOFTEAM@%','2023-07-04 00:48:15'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TELEFONOS`, CONSTRAINT `FK_TELEFONOS_PERSONAS_COD_PERSONA` FOREIGN KEY (`','SOFTEAM@%','2023-07-04 01:12:49'),('22007','Incorrect date value: \'2023-07-04 03:34:39\' for column \'FEC_REG_ANIMAL\' at row 1','SOFTEAM@%','2023-07-04 03:34:39'),('22007','Incorrect date value: \'2023-07-04 03:36:44\' for column \'FEC_REG_ANIMAL\' at row 1','SOFTEAM@%','2023-07-04 03:36:44'),('22007','Incorrect date value: \'2023-07-04 03:37:43\' for column \'FEC_REG_ANIMAL\' at row 1','SOFTEAM@%','2023-07-04 03:37:43'),('22007','Incorrect date value: \'2023-07-04 03:55:07\' for column \'FEC_REG_ANIMAL\' at row 1','SOFTEAM@%','2023-07-04 03:55:07'),('42S22','Unknown column \'PI_COD_PERSONA\' in \'field list\'','SOFTEAM@%','2023-07-04 04:04:18'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TBL_MS_USUARIOS`, CONSTRAINT `FK_USUARIOS_PERSONAS_COD_PERSONA` FOREIGN KEY (`COD_PERSONA`) REFERENCES `PERSONAS` (`COD_PERSONA`))','SOFTEAM@%','2023-07-04 10:38:21'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TBL_MS_USUARIOS`, CONSTRAINT `FK_USUARIOS_PERSONAS_COD_PERSONA` FOREIGN KEY (`COD_PERSONA`) REFERENCES `PERSONAS` (`COD_PERSONA`))','SOFTEAM@%','2023-07-04 10:41:39'),('23000','Duplicate entry \'1\' for key \'TBL_MS_PREGUNTAS_USUARIO.PRIMARY\'','SOFTEAM@%','2023-07-04 10:43:42'),('22007','Incorrect date value: \'2023-07-05 00:37:54\' for column \'FEC_REG_PSACRIFICIO\' at row 1','SOFTEAM@%','2023-07-05 00:37:54'),('22007','Incorrect date value: \'2023-07-05 00:41:50\' for column \'FEC_REG_PSACRIFICIO\' at row 1','SOFTEAM@%','2023-07-05 00:41:50'),('22007','Incorrect date value: \'2023-07-05 01:10:51\' for column \'FEC_REG_ANIMAL\' at row 1','SOFTEAM@%','2023-07-05 01:10:51'),('22007','Incorrect date value: \'2023-07-05 01:12:22\' for column \'FEC_REG_ANIMAL\' at row 1','SOFTEAM@%','2023-07-05 01:12:22'),('22007','Incorrect date value: \'2023-07-05 01:12:45\' for column \'FEC_REG_ANIMAL\' at row 1','SOFTEAM@%','2023-07-05 01:12:45'),('22007','Incorrect date value: \'2023-07-05 01:13:44\' for column \'FEC_REG_ANIMAL\' at row 1','SOFTEAM@%','2023-07-05 01:13:44'),('22007','Incorrect date value: \'2023-07-05 01:14:02\' for column \'FEC_REG_PSACRIFICIO\' at row 1','SOFTEAM@%','2023-07-05 01:14:02'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`ANIMALES`, CONSTRAINT `FK_ANIMALES_FIERROS_COD_FIERRO` FOREIGN KEY (`COD_FIERRO`) REFERENCES `FIERROS` (`COD_FIERRO`))','SOFTEAM@%','2023-07-05 01:15:23'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`PERMISOS_SACRIFICIO`, CONSTRAINT `FK_SACRIFICIO_ANIMALES_COD_ANIMAL` FOREIGN KEY (`COD_ANIMAL`) REFERENCES `ANIMALES` (`COD_ANIMAL`))','SOFTEAM@%','2023-07-05 01:16:24'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`PERMISOS_SACRIFICIO`, CONSTRAINT `FK_SACRIFICIO_ANIMALES_COD_ANIMAL` FOREIGN KEY (`COD_ANIMAL`) REFERENCES `ANIMALES` (`COD_ANIMAL`))','SOFTEAM@%','2023-07-05 01:33:58'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`PERMISOS_SACRIFICIO`, CONSTRAINT `FK_SACRIFICIO_ANIMALES_COD_ANIMAL` FOREIGN KEY (`COD_ANIMAL`) REFERENCES `ANIMALES` (`COD_ANIMAL`))','SOFTEAM@%','2023-07-05 01:43:29'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`PERMISOS_SACRIFICIO`, CONSTRAINT `FK_SACRIFICIO_ANIMALES_COD_ANIMAL` FOREIGN KEY (`COD_ANIMAL`) REFERENCES `ANIMALES` (`COD_ANIMAL`))','SOFTEAM@%','2023-07-05 02:13:57'),('42S22','Unknown column \'PI_HER_ANIMAL\' in \'field list\'','SOFTEAM@%','2023-07-05 03:31:15'),('23000','Duplicate entry \'1\' for key \'TBL_MS_PREGUNTAS_USUARIO.PRIMARY\'','SOFTEAM@%','2023-07-06 22:19:40'),('23000','Duplicate entry \'10\' for key \'PERMISOS_SACRIFICIO.COD_ANIMAL\'','SOFTEAM@%','2023-07-12 02:56:01'),('23000','Duplicate entry \'5\' for key \'PERMISOS_SACRIFICIO.COD_ANIMAL\'','SOFTEAM@%','2023-07-13 20:10:20'),('42S22','Unknown column \'PV_TIPOOPERACION\' in \'field list\'','SOFTEAM@%','2023-07-14 00:21:31'),('42S22','Unknown column \'PV_TIPOOPERACION\' in \'field list\'','SOFTEAM@%','2023-07-14 00:22:31'),('42S22','Unknown column \'PV_TIPOOPERACION\' in \'field list\'','SOFTEAM@%','2023-07-14 00:25:09'),('42S22','Unknown column \'PV_TIPOOPERACION\' in \'field list\'','SOFTEAM@%','2023-07-14 00:39:50'),('42S22','Unknown column \'PV_TIPOOPERACION\' in \'field list\'','SOFTEAM@%','2023-07-14 00:40:35'),('42S22','Unknown column \'PV_TIPOOPERACION\' in \'field list\'','SOFTEAM@%','2023-07-14 00:41:21'),('42S22','Unknown column \'PV_TIPOOPERACION\' in \'field list\'','SOFTEAM@%','2023-07-14 00:41:25'),('42S22','Unknown column \'PV_TIPOOPERACION\' in \'field list\'','SOFTEAM@%','2023-07-14 00:43:54'),('42S22','Unknown column \'PV_TIPOOPERACION\' in \'field list\'','SOFTEAM@%','2023-07-14 00:49:07'),('42S22','Unknown column \'PV_TIPOOPERACION\' in \'field list\'','SOFTEAM@%','2023-07-14 00:53:54'),('42S22','Unknown column \'PV_TIPOOPERACION\' in \'field list\'','SOFTEAM@%','2023-07-14 00:54:01'),('42S22','Unknown column \'PV_TIPOOPERACION\' in \'field list\'','SOFTEAM@%','2023-07-14 00:54:38'),('42S22','Unknown column \'PV_TIPOOPERACION\' in \'field list\'','SOFTEAM@%','2023-07-14 00:58:21'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`ANIMALES`, CONSTRAINT `FK_ANIMALES_FIERROS_COD_FIERRO` FOREIGN KEY (`COD_FIERRO`) REFERENCES `FIERROS` (`COD_FIERRO`))','SOFTEAM@%','2023-07-14 22:01:05'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`ANIMALES`, CONSTRAINT `FK_ANIMALES_FIERROS_COD_FIERRO` FOREIGN KEY (`COD_FIERRO`) REFERENCES `FIERROS` (`COD_FIERRO`))','SOFTEAM@%','2023-07-14 23:45:23'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`ANIMALES`, CONSTRAINT `FK_ANIMALES_FIERROS_COD_FIERRO` FOREIGN KEY (`COD_FIERRO`) REFERENCES `FIERROS` (`COD_FIERRO`))','SOFTEAM@%','2023-07-14 23:48:38'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`EXPEDIENTE_CVENTA`, CONSTRAINT `FK_CVENTA_ANIMALES_COD_ANIMAL` FOREIGN KEY (`COD_ANIMAL`) REFERENCES `ANIMALES` (`COD_ANIMAL`))','SOFTEAM@%','2023-07-14 23:56:09'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`ANIMALES`, CONSTRAINT `FK_ANIMALES_FIERROS_COD_FIERRO` FOREIGN KEY (`COD_FIERRO`) REFERENCES `FIERROS` (`COD_FIERRO`))','SOFTEAM@%','2023-07-15 00:03:30'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`ANIMALES`, CONSTRAINT `FK_ANIMALES_FIERROS_COD_FIERRO` FOREIGN KEY (`COD_FIERRO`) REFERENCES `FIERROS` (`COD_FIERRO`))','SOFTEAM@%','2023-07-15 00:05:13'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`DETALLE_TRASLADO`, CONSTRAINT `FK_DTRASLADO_FIERROS_COD_FIERRO` FOREIGN KEY (`COD_FIERRO`) REFERENCES `FIERROS` (`COD_FIERRO`))','SOFTEAM@%','2023-07-16 17:07:24'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`DETALLE_TRASLADO`, CONSTRAINT `FK_DTRASLADO_FIERROS_COD_FIERRO` FOREIGN KEY (`COD_FIERRO`) REFERENCES `FIERROS` (`COD_FIERRO`))','SOFTEAM@%','2023-07-16 17:09:14'),('23000','Duplicate entry \'22\' for key \'TBL_MS_USUARIOS.COD_PERSONA\'','SOFTEAM@%','2023-07-17 20:40:58'),('23000','Column \'NOM_PERSONA\' cannot be null','SOFTEAM@%','2023-08-04 00:50:49'),('23000','Column \'NOM_PERSONA\' cannot be null','SOFTEAM@%','2023-08-04 01:02:04'),('23000','Column \'NOM_PERSONA\' cannot be null','SOFTEAM@%','2023-08-04 01:37:57'),('23000','Duplicate entry \'25\' for key \'PERMISOS_SACRIFICIO.COD_ANIMAL\'','SOFTEAM@%','2023-08-04 01:47:59'),('23000','Duplicate entry \'25\' for key \'PERMISOS_SACRIFICIO.COD_ANIMAL\'','SOFTEAM@%','2023-08-04 01:50:31'),('23000','Duplicate entry \'25\' for key \'PERMISOS_SACRIFICIO.COD_ANIMAL\'','SOFTEAM@%','2023-08-04 01:57:19'),('23000','Duplicate entry \'27\' for key \'PERMISOS_SACRIFICIO.COD_ANIMAL\'','SOFTEAM@%','2023-08-04 01:58:52'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TBL_MS_USUARIOS`, CONSTRAINT `FK_USUARIOS_TIPOSDEROL_COD_ROL` FOREIGN KEY (`COD_ROL`) REFERENCES `TBL_MS_ROLES` (`COD_ROL`))','SOFTEAM@%','2023-08-05 01:43:15'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TBL_MS_USUARIOS`, CONSTRAINT `FK_USUARIOS_TIPOSDEROL_COD_ROL` FOREIGN KEY (`COD_ROL`) REFERENCES `TBL_MS_ROLES` (`COD_ROL`))','SOFTEAM@%','2023-08-05 01:43:59'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TBL_MS_USUARIOS`, CONSTRAINT `FK_USUARIOS_TIPOSDEROL_COD_ROL` FOREIGN KEY (`COD_ROL`) REFERENCES `TBL_MS_ROLES` (`COD_ROL`))','SOFTEAM@%','2023-08-05 01:44:44'),('23000','Duplicate entry \'1\' for key \'TBL_MS_USUARIOS.COD_PERSONA\'','SOFTEAM@%','2023-08-05 19:21:25'),('23000','Duplicate entry \'10\' for key \'PERMISOS_SACRIFICIO.COD_ANIMAL\'','SOFTEAM@%','2023-08-05 19:50:14'),('23000','Column \'NOM_PERSONA\' cannot be null','SOFTEAM@%','2023-08-06 00:47:37'),('42S22','Unknown column \'COD_OBJETOS\' in \'field list\'','SOFTEAM@%','2023-08-06 12:23:51'),('42S22','Unknown column \'COD_OBJETOS\' in \'field list\'','SOFTEAM@%','2023-08-06 12:25:31'),('42S22','Unknown column \'COD_OBJETOS\' in \'field list\'','SOFTEAM@%','2023-08-06 12:26:47'),('42S22','Unknown column \'COD_OBJETOS\' in \'field list\'','SOFTEAM@%','2023-08-06 12:27:57'),('42S02','Table \'SOFTEAM.TBL_MS_ROL\' doesn\'t exist','SOFTEAM@%','2023-08-06 12:31:37'),('42S02','Table \'SOFTEAM.TBL_MS_ROL\' doesn\'t exist','SOFTEAM@%','2023-08-06 12:32:11'),('23000','Column \'NOM_PERSONA\' cannot be null','SOFTEAM@%','2023-08-06 12:36:50'),('23000','Column \'NOM_PERSONA\' cannot be null','SOFTEAM@%','2023-08-06 12:41:57'),('23000','Column \'NOM_PERSONA\' cannot be null','SOFTEAM@%','2023-08-06 12:50:31'),('23000','Duplicate entry \'1\' for key \'PERMISOS_SACRIFICIO.COD_ANIMAL\'','SOFTEAM@%','2023-08-07 00:25:14'),('23000','Duplicate entry \'1\' for key \'PERMISOS_SACRIFICIO.COD_ANIMAL\'','SOFTEAM@%','2023-08-07 00:25:17'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`EXPEDIENTE_CVENTA`, CONSTRAINT `FK_CVENTA_PERSONAS_COD_COMPRADOR` FOREIGN KEY (`COD_COMPRADOR`) REFERENCES `PERSONAS` (`COD_PERSONA`))','SOFTEAM@%','2023-08-09 00:30:28'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`EXPEDIENTE_CVENTA`, CONSTRAINT `FK_CVENTA_PERSONAS_COD_COMPRADOR` FOREIGN KEY (`COD_COMPRADOR`) REFERENCES `PERSONAS` (`COD_PERSONA`))','SOFTEAM@%','2023-08-09 01:11:31'),('23000','Duplicate entry \'1\' for key \'PERMISOS_SACRIFICIO.COD_ANIMAL\'','SOFTEAM@%','2023-08-10 01:30:34'),('23000','Duplicate entry \'1\' for key \'PERMISOS_SACRIFICIO.COD_ANIMAL\'','SOFTEAM@%','2023-08-10 01:30:39'),('23000','Duplicate entry \'1\' for key \'PERMISOS_SACRIFICIO.COD_ANIMAL\'','SOFTEAM@%','2023-08-10 01:30:40'),('HY000','Field \'IMG_FIR_PERSONA\' doesn\'t have a default value','SOFTEAM@%','2023-08-10 01:46:50'),('HY000','Field \'IMG_FIR_PERSONA\' doesn\'t have a default value','SOFTEAM@%','2023-08-10 01:50:26'),('HY000','Field \'IMG_FIR_PERSONA\' doesn\'t have a default value','SOFTEAM@%','2023-08-10 01:55:44'),('23000','Duplicate entry \'32\' for key \'PERMISOS_SACRIFICIO.COD_ANIMAL\'','SOFTEAM@%','2023-08-10 01:56:20'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`EXPEDIENTE_CVENTA`, CONSTRAINT `FK_CVENTA_PERSONAS_COD_COMPRADOR` FOREIGN KEY (`COD_COMPRADOR`) REFERENCES `PERSONAS` (`COD_PERSONA`))','SOFTEAM@%','2023-08-10 11:16:24'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`EXPEDIENTE_CVENTA`, CONSTRAINT `FK_CVENTA_PERSONAS_COD_COMPRADOR` FOREIGN KEY (`COD_COMPRADOR`) REFERENCES `PERSONAS` (`COD_PERSONA`))','SOFTEAM@%','2023-08-10 11:17:13'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`EXPEDIENTE_CVENTA`, CONSTRAINT `FK_CVENTA_PERSONAS_COD_COMPRADOR` FOREIGN KEY (`COD_COMPRADOR`) REFERENCES `PERSONAS` (`COD_PERSONA`))','SOFTEAM@%','2023-08-10 11:19:49'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`EXPEDIENTE_CVENTA`, CONSTRAINT `FK_CVENTA_PERSONAS_COD_COMPRADOR` FOREIGN KEY (`COD_COMPRADOR`) REFERENCES `PERSONAS` (`COD_PERSONA`))','SOFTEAM@%','2023-08-10 11:21:07'),('23000','Duplicate entry \'1\' for key \'PERMISOS_SACRIFICIO.COD_ANIMAL\'','SOFTEAM@%','2023-08-12 23:47:58'),('HY000','Field \'ESTADO\' doesn\'t have a default value','SOFTEAM@%','2023-08-13 04:39:58'),('23000','Column \'COD_PERSONA\' cannot be null','SOFTEAM@%','2023-08-13 23:39:35'),('23000','Column \'COD_PERSONA\' cannot be null','SOFTEAM@%','2023-08-13 23:40:06'),('23000','Duplicate entry \'2\' for key \'FIERROS.COD_PERSONA\'','SOFTEAM@%','2023-08-14 03:11:42'),('42S22','Unknown column \'PV_DNI_COMPRADOR\' in \'field list\'','SOFTEAM@%','2023-08-14 17:27:28'),('42S22','Unknown column \'PV_DNI_COMPRADOR\' in \'field list\'','SOFTEAM@%','2023-08-14 17:28:05'),('42S22','Unknown column \'PV_DNI_COMPRADOR\' in \'field list\'','SOFTEAM@%','2023-08-14 17:28:34'),('42S22','Unknown column \'PV_DNI_COMPRADOR\' in \'field list\'','SOFTEAM@%','2023-08-14 17:28:49'),('42S22','Unknown column \'PV_DNI_COMPRADOR\' in \'field list\'','SOFTEAM@%','2023-08-14 17:31:26'),('42S22','Unknown column \'PV_DNI_COMPRADOR\' in \'field list\'','SOFTEAM@%','2023-08-14 17:32:44'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`ANIMALES`, CONSTRAINT `FK_ANIMALES_FIERROS_COD_FIERRO` FOREIGN KEY (`COD_FIERRO`) REFERENCES `FIERROS` (`COD_FIERRO`))','SOFTEAM@%','2023-08-14 17:37:23'),('42S22','Unknown column \'PV_DNI_COMPRADOR\' in \'field list\'','SOFTEAM@%','2023-08-14 17:39:20'),('42S22','Unknown column \'PV_DNI_COMPRADOR\' in \'field list\'','SOFTEAM@%','2023-08-14 17:40:04'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`EXPEDIENTE_CVENTA`, CONSTRAINT `FK_CVENTA_ANIMALES_COD_ANIMAL` FOREIGN KEY (`COD_ANIMAL`) REFERENCES `ANIMALES` (`COD_ANIMAL`))','SOFTEAM@%','2023-08-14 17:41:40'),('23000','Duplicate entry \'41\' for key \'EXPEDIENTE_CVENTA.COD_ANIMAL\'','SOFTEAM@%','2023-08-14 19:59:05'),('23000','Duplicate entry \'41\' for key \'EXPEDIENTE_CVENTA.COD_ANIMAL\'','SOFTEAM@%','2023-08-14 20:04:25'),('23000','Duplicate entry \'30\' for key \'FIERROS.COD_PERSONA\'','SOFTEAM@%','2023-08-15 02:17:54'),('23000','Duplicate entry \'1\' for key \'FIERROS.COD_PERSONA\'','SOFTEAM@%','2023-08-15 02:21:50'),('23000','Duplicate entry \'47\' for key \'PERMISOS_SACRIFICIO.COD_ANIMAL\'','SOFTEAM@%','2023-08-15 16:23:51'),('23000','Duplicate entry \'50\' for key \'PERMISOS_SACRIFICIO.COD_ANIMAL\'','SOFTEAM@%','2023-08-15 17:00:00'),('23000','Duplicate entry \'50\' for key \'PERMISOS_SACRIFICIO.COD_ANIMAL\'','SOFTEAM@%','2023-08-15 17:02:06'),('23000','Duplicate entry \'52\' for key \'PERMISOS_SACRIFICIO.COD_ANIMAL\'','SOFTEAM@%','2023-08-15 17:49:49'),('23000','Duplicate entry \'54\' for key \'EXPEDIENTE_CVENTA.COD_ANIMAL\'','SOFTEAM@%','2023-08-15 22:29:59'),('23000','Duplicate entry \'2\' for key \'FIERROS.COD_PERSONA\'','SOFTEAM@%','2023-08-16 21:34:58'),('23000','Duplicate entry \'45\' for key \'PERMISOS_SACRIFICIO.COD_ANIMAL\'','SOFTEAM@%','2023-08-18 02:27:26'),('42S22','Unknown column \'LIM_INTENTOS\' in \'field list\'','SOFTEAM@%','2023-08-18 03:17:39'),('42S22','Unknown column \'LIM_INTENTOS\' in \'field list\'','SOFTEAM@%','2023-08-18 03:18:21'),('42S22','Unknown column \'LIM_INTENTOS\' in \'field list\'','SOFTEAM@%','2023-08-18 03:18:56'),('42S22','Unknown column \'LIM_INTENTOS\' in \'field list\'','SOFTEAM@%','2023-08-18 03:20:37'),('42S22','Unknown column \'LIM_INTENTOS\' in \'field list\'','SOFTEAM@%','2023-08-18 03:20:43'),('42S22','Unknown column \'LIM_INTENTOS\' in \'field list\'','SOFTEAM@%','2023-08-18 03:20:53'),('42S22','Unknown column \'LIM_INTENTOS\' in \'field list\'','SOFTEAM@%','2023-08-18 03:21:21'),('42S22','Unknown column \'LIM_INTENTOS\' in \'field list\'','SOFTEAM@%','2023-08-18 03:21:38'),('42S22','Unknown column \'LIM_INTENTOS\' in \'field list\'','SOFTEAM@%','2023-08-18 03:21:49'),('42S22','Unknown column \'LIM_INTENTOS\' in \'field list\'','SOFTEAM@%','2023-08-18 03:22:07'),('42S22','Unknown column \'LIM_INTENTOS\' in \'field list\'','SOFTEAM@%','2023-08-18 03:25:04'),('42S22','Unknown column \'NUM_INTENTOS_FALLIDOS\' in \'field list\'','SOFTEAM@%','2023-08-18 03:28:39'),('23000','Duplicate entry \'77\' for key \'EXPEDIENTE_CVENTA.COD_ANIMAL\'','SOFTEAM@%','2023-08-19 02:55:58'),('23000','Duplicate entry \'81\' for key \'EXPEDIENTE_CVENTA.COD_ANIMAL\'','SOFTEAM@%','2023-08-19 03:08:15'),('23000','Duplicate entry \'82\' for key \'EXPEDIENTE_CVENTA.COD_ANIMAL\'','SOFTEAM@%','2023-08-19 03:09:11'),('23000','Duplicate entry \'82\' for key \'EXPEDIENTE_CVENTA.COD_ANIMAL\'','SOFTEAM@%','2023-08-19 03:12:20'),('23000','Duplicate entry \'1\' for key \'FIERROS.COD_PERSONA\'','SOFTEAM@%','2023-08-20 01:14:11'),('23000','Duplicate entry \'1-1\' for key \'TBL_PERMISOS.PRIMARY\'','SOFTEAM@%','2023-08-20 20:22:28'),('23000','Duplicate entry \'1-2\' for key \'TBL_PERMISOS.PRIMARY\'','SOFTEAM@%','2023-08-20 20:22:50'),('23000','Duplicate entry \'55\' for key \'FIERROS.COD_PERSONA\'','SOFTEAM@%','2023-08-21 01:45:30'),('23000','Duplicate entry \'58\' for key \'PERMISOS_SACRIFICIO.COD_ANIMAL\'','SOFTEAM@%','2023-08-21 04:00:03'),('23000','Duplicate entry \'38\' for key \'PERMISOS_SACRIFICIO.COD_ANIMAL\'','SOFTEAM@%','2023-08-21 04:04:06'),('23000','Duplicate entry \'3-6\' for key \'TBL_PERMISOS.PRIMARY\'','SOFTEAM@%','2023-08-23 16:48:37'),('23000','Duplicate entry \'88\' for key \'PERMISOS_SACRIFICIO.COD_ANIMAL\'','soft@%','2023-08-29 01:23:30'),('42S22','Unknown column \'USUARIO_DB\' in \'field list\'','soft@%','2023-09-08 16:49:02'),('42S22','Unknown column \'USUARIO_DB\' in \'field list\'','soft@%','2023-09-08 16:49:37'),('42S22','Unknown column \'USUARIO_DB\' in \'field list\'','soft@%','2023-09-08 16:50:00'),('42S22','Unknown column \'USUARIO_DB\' in \'field list\'','soft@%','2023-09-08 16:50:08'),('42S22','Unknown column \'USUARIO_DB\' in \'field list\'','soft@%','2023-09-08 16:50:56'),('42S22','Unknown column \'USUARIO_DB\' in \'field list\'','soft@%','2023-09-08 16:51:04'),('42S22','Unknown column \'USUARIO_DB\' in \'field list\'','soft@%','2023-09-08 16:54:09'),('42S22','Unknown column \'USUARIO_DB\' in \'field list\'','soft@%','2023-09-08 16:54:09'),('42S22','Unknown column \'USUARIO_DB\' in \'field list\'','soft@%','2023-09-08 16:54:34'),('42S22','Unknown column \'USUARIO_DB\' in \'field list\'','soft@%','2023-09-08 16:58:05'),('42S22','Unknown column \'USUARIO_DB\' in \'field list\'','soft@%','2023-09-08 16:58:14'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TBL_MANTENIMIENTOS`, CONSTRAINT `FK_MANTENIMIENTOS_USUARIOS_COD_USUARIO` FOREIGN KEY (`COD_USUARIO`) REFERENCES `TBL_MS_USUARIOS` (`COD_USUARIO`))','soft@%','2023-09-13 16:33:13'),('23000','Duplicate entry \'ITEC\' for key \'TBL_MS_USUARIOS.NOM_USUARIO\'','soft@%','2023-10-03 04:59:58'),('23000','Duplicate entry \'ITEC\' for key \'TBL_MS_USUARIOS.NOM_USUARIO\'','soft@%','2023-10-03 05:02:27'),('23000','Duplicate entry \'53\' for key \'TBL_MS_USUARIOS.COD_PERSONA\'','soft@%','2023-10-03 05:05:23'),('23000','Duplicate entry \'54\' for key \'TBL_MS_USUARIOS.COD_PERSONA\'','soft@%','2023-10-03 05:07:05'),('23000','Duplicate entry \'54\' for key \'TBL_MS_USUARIOS.COD_PERSONA\'','soft@%','2023-10-03 05:32:41'),('23000','Duplicate entry \'56\' for key \'TBL_MS_USUARIOS.COD_PERSONA\'','soft@%','2023-10-03 05:38:06'),('23000','Duplicate entry \'55\' for key \'TBL_MS_USUARIOS.COD_PERSONA\'','soft@%','2023-10-03 05:39:51'),('23000','Duplicate entry \'56\' for key \'TBL_MS_USUARIOS.COD_PERSONA\'','soft@%','2023-10-03 05:55:44'),('23000','Duplicate entry \'¿Ciudad donde vivió su adolecencia?\' for key \'TBL_MS_PREGUNTAS.PREGUNTA_UNIQUE\'','soft@%','2023-10-03 22:09:06'),('23000','Duplicate entry \'¿Ciudad donde nació?\' for key \'TBL_MS_PREGUNTAS.PREGUNTA_UNIQUE\'','soft@%','2023-10-03 22:10:26'),('23000','Duplicate entry \'58\' for key \'TBL_MS_USUARIOS.COD_PERSONA\'','soft@%','2023-10-03 23:41:31'),('23000','Duplicate entry \'58\' for key \'TBL_MS_USUARIOS.COD_PERSONA\'','soft@%','2023-10-03 23:42:17'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TBL_MS_USUARIOS`, CONSTRAINT `FK_USUARIOS_PERSONAS_COD_PERSONA` FOREIGN KEY (`COD_PERSONA`) REFERENCES `PERSONAS` (`COD_PERSONA`))','soft@%','2023-10-03 23:43:14'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TBL_MS_USUARIOS`, CONSTRAINT `FK_USUARIOS_PERSONAS_COD_PERSONA` FOREIGN KEY (`COD_PERSONA`) REFERENCES `PERSONAS` (`COD_PERSONA`))','soft@%','2023-10-03 23:47:21'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TBL_MS_USUARIOS`, CONSTRAINT `FK_USUARIOS_PERSONAS_COD_PERSONA` FOREIGN KEY (`COD_PERSONA`) REFERENCES `PERSONAS` (`COD_PERSONA`))','soft@%','2023-10-03 23:48:16'),('23000','Duplicate entry \'57\' for key \'TBL_MS_USUARIOS.COD_PERSONA\'','soft@%','2023-10-03 23:52:33'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TBL_MS_USUARIOS`, CONSTRAINT `FK_USUARIOS_PERSONAS_COD_PERSONA` FOREIGN KEY (`COD_PERSONA`) REFERENCES `PERSONAS` (`COD_PERSONA`))','soft@%','2023-10-03 23:54:17'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TBL_MS_USUARIOS`, CONSTRAINT `FK_USUARIOS_PERSONAS_COD_PERSONA` FOREIGN KEY (`COD_PERSONA`) REFERENCES `PERSONAS` (`COD_PERSONA`))','soft@%','2023-10-04 00:35:37'),('23000','Duplicate entry \'58\' for key \'TBL_MS_USUARIOS.COD_PERSONA\'','soft@%','2023-10-04 00:57:41'),('23000','Duplicate entry \'57\' for key \'TBL_MS_USUARIOS.COD_PERSONA\'','soft@%','2023-10-04 00:58:14'),('23000','Duplicate entry \'¿En que año te graduaste de la Universidad?\' for key \'TBL_MS_PREGUNTAS.PREGUNTA_UNIQUE\'','soft@%','2023-10-04 03:28:32'),('23000','Duplicate entry \'2-10\' for key \'TBL_PERMISOS.PRIMARY\'','soft@%','2023-10-05 03:24:50'),('42000','Result consisted of more than one row','soft@%','2023-10-06 04:33:31'),('42000','Result consisted of more than one row','soft@%','2023-10-06 04:36:54'),('42000','Result consisted of more than one row','soft@%','2023-10-06 04:42:17'),('42000','Result consisted of more than one row','soft@%','2023-10-06 04:49:30'),('23000','Duplicate entry \'24\' for key \'TBL_MS_USUARIOS.COD_PERSONA\'','soft@%','2023-10-06 23:52:42'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TBL_MS_USUARIOS`, CONSTRAINT `FK_USUARIOS_PERSONAS_COD_PERSONA` FOREIGN KEY (`COD_PERSONA`) REFERENCES `PERSONAS` (`COD_PERSONA`))','soft@%','2023-10-07 18:48:31'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TBL_MS_USUARIOS`, CONSTRAINT `FK_USUARIOS_PERSONAS_COD_PERSONA` FOREIGN KEY (`COD_PERSONA`) REFERENCES `PERSONAS` (`COD_PERSONA`))','soft@%','2023-10-07 18:49:59'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TBL_MS_USUARIOS`, CONSTRAINT `FK_USUARIOS_PERSONAS_COD_PERSONA` FOREIGN KEY (`COD_PERSONA`) REFERENCES `PERSONAS` (`COD_PERSONA`))','soft@%','2023-10-07 19:00:56'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TBL_MS_USUARIOS`, CONSTRAINT `FK_USUARIOS_PERSONAS_COD_PERSONA` FOREIGN KEY (`COD_PERSONA`) REFERENCES `PERSONAS` (`COD_PERSONA`))','soft@%','2023-10-07 19:02:00'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TBL_MS_USUARIOS`, CONSTRAINT `FK_USUARIOS_PERSONAS_COD_PERSONA` FOREIGN KEY (`COD_PERSONA`) REFERENCES `PERSONAS` (`COD_PERSONA`))','soft@%','2023-10-07 19:04:36'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TBL_MS_USUARIOS`, CONSTRAINT `FK_USUARIOS_PERSONAS_COD_PERSONA` FOREIGN KEY (`COD_PERSONA`) REFERENCES `PERSONAS` (`COD_PERSONA`))','soft@%','2023-10-07 19:05:17'),('23000','Duplicate entry \'Olmand\' for key \'TBL_MS_USUARIOS.NOM_USUARIO\'','soft@%','2023-10-07 19:06:24'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TBL_MS_USUARIOS`, CONSTRAINT `FK_USUARIOS_PERSONAS_COD_PERSONA` FOREIGN KEY (`COD_PERSONA`) REFERENCES `PERSONAS` (`COD_PERSONA`))','soft@%','2023-10-07 19:10:58'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TBL_MS_USUARIOS`, CONSTRAINT `FK_USUARIOS_PERSONAS_COD_PERSONA` FOREIGN KEY (`COD_PERSONA`) REFERENCES `PERSONAS` (`COD_PERSONA`))','soft@%','2023-10-07 19:13:06'),('23000','Duplicate entry \'Olmand\' for key \'TBL_MS_USUARIOS.NOM_USUARIO\'','soft@%','2023-10-07 19:13:46'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TBL_MS_USUARIOS`, CONSTRAINT `FK_USUARIOS_PERSONAS_COD_PERSONA` FOREIGN KEY (`COD_PERSONA`) REFERENCES `PERSONAS` (`COD_PERSONA`))','soft@%','2023-10-07 19:16:07'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TBL_MS_USUARIOS`, CONSTRAINT `FK_USUARIOS_PERSONAS_COD_PERSONA` FOREIGN KEY (`COD_PERSONA`) REFERENCES `PERSONAS` (`COD_PERSONA`))','soft@%','2023-10-07 19:16:32'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TBL_MS_USUARIOS`, CONSTRAINT `FK_USUARIOS_PERSONAS_COD_PERSONA` FOREIGN KEY (`COD_PERSONA`) REFERENCES `PERSONAS` (`COD_PERSONA`))','soft@%','2023-10-07 19:20:17'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TBL_MS_USUARIOS`, CONSTRAINT `FK_USUARIOS_PERSONAS_COD_PERSONA` FOREIGN KEY (`COD_PERSONA`) REFERENCES `PERSONAS` (`COD_PERSONA`))','soft@%','2023-10-07 19:21:12'),('23000','Duplicate entry \'63\' for key \'TBL_MS_USUARIOS.COD_PERSONA\'','soft@%','2023-10-07 23:52:22'),('23000','Duplicate entry \'64\' for key \'TBL_MS_USUARIOS.COD_PERSONA\'','soft@%','2023-10-07 23:58:15'),('23000','Duplicate entry \'Olman\' for key \'TBL_MS_USUARIOS.NOM_USUARIO\'','soft@%','2023-10-08 00:00:35'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TBL_MANTENIMIENTOS`, CONSTRAINT `FK_MANTENIMIENTOS_USUARIOS_COD_USUARIO` FOREIGN KEY (`COD_USUARIO`) REFERENCES `TBL_MS_USUARIOS` (`COD_USUARIO`))','soft@%','2023-10-08 00:04:11'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TBL_MANTENIMIENTOS`, CONSTRAINT `FK_MANTENIMIENTOS_USUARIOS_COD_USUARIO` FOREIGN KEY (`COD_USUARIO`) REFERENCES `TBL_MS_USUARIOS` (`COD_USUARIO`))','soft@%','2023-10-08 00:06:05'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TBL_MANTENIMIENTOS`, CONSTRAINT `FK_MANTENIMIENTOS_USUARIOS_COD_USUARIO` FOREIGN KEY (`COD_USUARIO`) REFERENCES `TBL_MS_USUARIOS` (`COD_USUARIO`))','soft@%','2023-10-08 00:07:35'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TBL_MS_USUARIOS`, CONSTRAINT `FK_USUARIOS_PERSONAS_COD_PERSONA` FOREIGN KEY (`COD_PERSONA`) REFERENCES `PERSONAS` (`COD_PERSONA`))','soft@%','2023-10-08 22:14:46'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TBL_MS_USUARIOS`, CONSTRAINT `FK_USUARIOS_PERSONAS_COD_PERSONA` FOREIGN KEY (`COD_PERSONA`) REFERENCES `PERSONAS` (`COD_PERSONA`))','soft@%','2023-10-08 22:17:59'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TBL_MS_USUARIOS`, CONSTRAINT `FK_USUARIOS_PERSONAS_COD_PERSONA` FOREIGN KEY (`COD_PERSONA`) REFERENCES `PERSONAS` (`COD_PERSONA`))','soft@%','2023-10-08 22:19:19'),('23000','Duplicate entry \'¿Cuál es el nombre de su madre?\' for key \'TBL_MS_PREGUNTAS.PREGUNTA_UNIQUE\'','soft@%','2023-10-09 01:44:37'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TBL_MS_USUARIOS`, CONSTRAINT `FK_USUARIOS_PERSONAS_COD_PERSONA` FOREIGN KEY (`COD_PERSONA`) REFERENCES `PERSONAS` (`COD_PERSONA`))','soft@%','2023-10-09 01:51:28'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TBL_MS_USUARIOS`, CONSTRAINT `FK_USUARIOS_PERSONAS_COD_PERSONA` FOREIGN KEY (`COD_PERSONA`) REFERENCES `PERSONAS` (`COD_PERSONA`))','soft@%','2023-10-09 03:11:59'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TBL_MS_USUARIOS`, CONSTRAINT `FK_USUARIOS_PERSONAS_COD_PERSONA` FOREIGN KEY (`COD_PERSONA`) REFERENCES `PERSONAS` (`COD_PERSONA`))','soft@%','2023-10-09 21:18:30'),('23000','Duplicate entry \'3-7\' for key \'TBL_PERMISOS.PRIMARY\'','soft@%','2023-10-10 06:38:17'),('42000','Result consisted of more than one row','soft@%','2023-10-10 06:47:18'),('42000','Result consisted of more than one row','soft@%','2023-10-10 06:48:11'),('23000','Duplicate entry \'¿Ciudad donde nació?\' for key \'TBL_MS_PREGUNTAS.PREGUNTA_UNIQUE\'','soft@%','2023-10-10 07:32:57'),('23000','Duplicate entry \'¿Ciudad donde nació?\' for key \'TBL_MS_PREGUNTAS.PREGUNTA_UNIQUE\'','soft@%','2023-10-10 07:43:08'),('23000','Duplicate entry \'¿Ciudad donde vivió su adolecencia?\' for key \'TBL_MS_PREGUNTAS.PREGUNTA_UNIQUE\'','soft@%','2023-10-10 07:43:51'),('42000','Result consisted of more than one row','soft@%','2023-10-12 05:00:12'),('42000','Result consisted of more than one row','soft@%','2023-10-12 05:01:20'),('23000','Duplicate entry \'7-9\' for key \'TBL_PERMISOS.PRIMARY\'','soft@%','2023-10-12 05:02:23'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TBL_MS_USUARIOS`, CONSTRAINT `FK_USUARIOS_PERSONAS_COD_PERSONA` FOREIGN KEY (`COD_PERSONA`) REFERENCES `PERSONAS` (`COD_PERSONA`))','soft@%','2023-10-14 05:30:23'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TBL_MS_USUARIOS`, CONSTRAINT `FK_USUARIOS_PERSONAS_COD_PERSONA` FOREIGN KEY (`COD_PERSONA`) REFERENCES `PERSONAS` (`COD_PERSONA`))','soft@%','2023-10-14 05:31:21'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TBL_MS_USUARIOS`, CONSTRAINT `FK_USUARIOS_PERSONAS_COD_PERSONA` FOREIGN KEY (`COD_PERSONA`) REFERENCES `PERSONAS` (`COD_PERSONA`))','soft@%','2023-10-14 05:32:16'),('23000','Duplicate entry \'majope20@gmail.com\' for key \'EMAILS.DIR_EMAIL_UNIQUE\'','soft@%','2023-10-14 23:33:01'),('23000','Duplicate entry \'0828200100242\' for key \'PERSONAS.DNI_PERSONA_UNIQUE\'','soft@%','2023-10-14 23:42:43'),('23000','Duplicate entry \'nohebb20@gmail.com\' for key \'EMAILS.DIR_EMAIL_UNIQUE\'','soft@%','2023-10-14 23:44:17'),('23000','Duplicate entry \'majope20@gmail.com\' for key \'EMAILS.DIR_EMAIL_UNIQUE\'','soft@%','2023-10-14 23:45:55'),('23000','Duplicate entry \'samanta@gmail.com\' for key \'EMAILS.DIR_EMAIL_UNIQUE\'','soft@%','2023-10-14 23:51:17'),('23000','Duplicate entry \'majope20@gmail.com\' for key \'EMAILS.DIR_EMAIL_UNIQUE\'','soft@%','2023-10-15 00:02:22'),('23000','Duplicate entry \'3\' for key \'TBL_MS_USUARIOS.COD_PERSONA\'','soft@%','2023-10-15 20:58:53'),('23000','Duplicate entry \'4\' for key \'TBL_MS_USUARIOS.COD_PERSONA\'','soft@%','2023-10-15 21:15:00'),('23000','Duplicate entry \'ADMINISTRADOR\' for key \'TBL_MS_ROLES.NOM_ROL_UNIQUE\'','soft@%','2023-10-15 21:56:54'),('23000','Duplicate entry \'¿CIUDAD DONDE NACIÓ?\' for key \'TBL_MS_PREGUNTAS.PREGUNTA_UNIQUE\'','soft@%','2023-10-16 01:16:21'),('23000','Duplicate entry \'¿?\' for key \'TBL_MS_PREGUNTAS.PREGUNTA_UNIQUE\'','soft@%','2023-10-17 03:49:10'),('23000','Duplicate entry \'¿?\' for key \'TBL_MS_PREGUNTAS.PREGUNTA_UNIQUE\'','soft@%','2023-10-17 03:49:35'),('23000','Duplicate entry \'79\' for key \'FIERROS.COD_PERSONA\'','soft@%','2023-10-17 04:09:26'),('23000','Duplicate entry \'21\' for key \'FIERROS.COD_PERSONA\'','soft@%','2023-10-17 04:21:13'),('23000','Duplicate entry \'richar35@gmail.com\' for key \'EMAILS.DIR_EMAIL_UNIQUE\'','soft@%','2023-10-17 04:23:45'),('23000','Duplicate entry \'richar35@gmail.com\' for key \'EMAILS.DIR_EMAIL_UNIQUE\'','soft@%','2023-10-17 04:29:21'),('23000','Duplicate entry \'103\' for key \'PERMISOS_SACRIFICIO.COD_ANIMAL\'','soft@%','2023-10-18 04:29:50'),('23000','Duplicate entry \'78\' for key \'PERMISOS_SACRIFICIO.COD_ANIMAL\'','soft@%','2023-10-18 04:31:23'),('23000','Duplicate entry \'38\' for key \'PERMISOS_SACRIFICIO.COD_ANIMAL\'','soft@%','2023-10-18 04:32:12'),('23000','Duplicate entry \'38\' for key \'PERMISOS_SACRIFICIO.COD_ANIMAL\'','soft@%','2023-10-18 04:33:18'),('23000','Duplicate entry \'58\' for key \'PERMISOS_SACRIFICIO.COD_ANIMAL\'','soft@%','2023-10-18 04:34:15'),('23000','Duplicate entry \'51\' for key \'PERMISOS_SACRIFICIO.COD_ANIMAL\'','soft@%','2023-10-18 04:36:08'),('23000','Duplicate entry \'58\' for key \'PERMISOS_SACRIFICIO.COD_ANIMAL\'','soft@%','2023-10-18 04:37:41'),('23000','Duplicate entry \'38\' for key \'PERMISOS_SACRIFICIO.COD_ANIMAL\'','soft@%','2023-10-18 04:40:45'),('23000','Duplicate entry \'58\' for key \'PERMISOS_SACRIFICIO.COD_ANIMAL\'','soft@%','2023-10-18 04:42:43'),('23000','Duplicate entry \'58\' for key \'PERMISOS_SACRIFICIO.COD_ANIMAL\'','soft@%','2023-10-18 04:44:35'),('23000','Duplicate entry \'1\' for key \'TBL_MS_USUARIOS.COD_PERSONA\'','soft@%','2023-10-19 05:31:27'),('23000','Duplicate entry \'2\' for key \'TBL_MS_USUARIOS.COD_PERSONA\'','soft@%','2023-10-19 05:31:56'),('23000','Duplicate entry \'0801198822669\' for key \'PERSONAS.DNI_PERSONA_UNIQUE\'','soft@%','2023-10-19 06:09:04'),('23000','Duplicate entry \'2\' for key \'TBL_MS_USUARIOS.COD_PERSONA\'','soft@%','2023-10-19 07:17:36'),('23000','Duplicate entry \'¿NOMBRE DE SU PRIMER MASCOTA?\' for key \'TBL_MS_PREGUNTAS.PREGUNTA_UNIQUE\'','soft@%','2023-10-20 07:35:42'),('23000','Duplicate entry \'SECRETARIA\' for key \'TBL_MS_ROLES.NOM_ROL_UNIQUE\'','soft@%','2023-10-20 07:36:08'),('23000','Duplicate entry \'¿NOMBRE DE SU PRIMER MASCOTA?\' for key \'TBL_MS_PREGUNTAS.PREGUNTA_UNIQUE\'','soft@%','2023-10-20 07:47:51'),('23000','Duplicate entry \'2-1\' for key \'TBL_PERMISOS.PRIMARY\'','soft@%','2023-10-20 22:33:55'),('23000','Duplicate entry \'2-1\' for key \'TBL_PERMISOS.PRIMARY\'','soft@%','2023-10-20 22:34:14'),('23000','Duplicate entry \'Usuario\' for key \'TBL_MS_ROLES.NOM_ROL_UNIQUE\'','soft@%','2023-10-20 22:36:47'),('23000','Duplicate entry \'usuario\' for key \'TBL_MS_ROLES.NOM_ROL_UNIQUE\'','soft@%','2023-10-20 22:37:14'),('23000','Duplicate entry \'ADMINISTRADOR\' for key \'TBL_MS_ROLES.NOM_ROL_UNIQUE\'','soft@%','2023-10-21 05:19:16'),('23000','Duplicate entry \'JACY\' for key \'TBL_MS_USUARIOS.NOM_USUARIO\'','soft@%','2023-10-21 08:20:04'),('23000','Duplicate entry \'JACY\' for key \'TBL_MS_USUARIOS.NOM_USUARIO\'','soft@%','2023-10-21 08:23:15'),('23000','Duplicate entry \'JACY\' for key \'TBL_MS_USUARIOS.NOM_USUARIO\'','soft@%','2023-10-21 08:26:21'),('23000','Duplicate entry \'JACY\' for key \'TBL_MS_USUARIOS.NOM_USUARIO\'','soft@%','2023-10-21 08:35:39'),('23000','Duplicate entry \'JACY\' for key \'TBL_MS_USUARIOS.NOM_USUARIO\'','soft@%','2023-10-21 08:41:28'),('23000','Duplicate entry \'JACY\' for key \'TBL_MS_USUARIOS.NOM_USUARIO\'','soft@%','2023-10-21 08:53:27'),('23000','Duplicate entry \'JACY\' for key \'TBL_MS_USUARIOS.NOM_USUARIO\'','soft@%','2023-10-21 08:54:36'),('23000','Duplicate entry \'JACY\' for key \'TBL_MS_USUARIOS.NOM_USUARIO\'','soft@%','2023-10-21 09:02:57'),('23000','Duplicate entry \'JACY\' for key \'TBL_MS_USUARIOS.NOM_USUARIO\'','soft@%','2023-10-21 09:11:27'),('23000','Duplicate entry \'JACY\' for key \'TBL_MS_USUARIOS.NOM_USUARIO\'','soft@%','2023-10-21 09:40:47'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TBL_MANTENIMIENTOS`, CONSTRAINT `FK_MANTENIMIENTOS_USUARIOS_COD_USUARIO` FOREIGN KEY (`COD_USUARIO`) REFERENCES `TBL_MS_USUARIOS` (`COD_USUARIO`))','soft@%','2023-10-22 01:15:23'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TBL_MANTENIMIENTOS`, CONSTRAINT `FK_MANTENIMIENTOS_USUARIOS_COD_USUARIO` FOREIGN KEY (`COD_USUARIO`) REFERENCES `TBL_MS_USUARIOS` (`COD_USUARIO`))','soft@%','2023-10-22 06:05:57'),('23000','Cannot add or update a child row: a foreign key constraint fails (`SOFTEAM`.`TBL_MANTENIMIENTOS`, CONSTRAINT `FK_MANTENIMIENTOS_USUARIOS_COD_USUARIO` FOREIGN KEY (`COD_USUARIO`) REFERENCES `TBL_MS_USUARIOS` (`COD_USUARIO`))','soft@%','2023-10-22 06:06:18'),('23000','Duplicate entry \'91\' for key \'EXPEDIENTE_CVENTA.COD_ANIMAL\'','soft@%','2023-10-24 04:46:22'),('23000','Duplicate entry \'91\' for key \'EXPEDIENTE_CVENTA.COD_ANIMAL\'','soft@%','2023-10-24 04:48:15'),('23000','Duplicate entry \'91\' for key \'EXPEDIENTE_CVENTA.COD_ANIMAL\'','soft@%','2023-10-24 04:49:34'),('23000','Duplicate entry \'91\' for key \'EXPEDIENTE_CVENTA.COD_ANIMAL\'','soft@%','2023-10-24 05:01:52'),('23000','Duplicate entry \'49\' for key \'EXPEDIENTE_CVENTA.COD_ANIMAL\'','soft@%','2023-10-24 05:28:15'),('42S22','Unknown column \'PARAMETRO\' in \'field list\'','soft@%','2023-11-19 06:16:09'),('23000','Duplicate entry \'INT_PERMITIDOS\' for key \'TBL_MS_PARAMETROS.PARAMETRO\'','soft@%','2023-11-19 08:31:09');
/*!40000 ALTER TABLE `TBL_ERRORES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TBL_MANTENIMIENTOS`
--

DROP TABLE IF EXISTS `TBL_MANTENIMIENTOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TBL_MANTENIMIENTOS` (
  `COD_MANTENIMIENTO` bigint NOT NULL AUTO_INCREMENT,
  `FEC_REG_MANTENIMIENTO` datetime NOT NULL,
  `FEC_HR_MANTENIMIENTO` datetime NOT NULL,
  `TIP_MANTENIMIENTO` enum('Mantenimiento predictivo','Mantenimiento preventivo','Mantenimiento correctivo','Mantenimiento evolutivo') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `DES_MANTENIMIENTO` varchar(100) NOT NULL,
  `COD_USUARIO` bigint NOT NULL,
  `MON_MANTENIMIENTO` decimal(8,2) NOT NULL,
  PRIMARY KEY (`COD_MANTENIMIENTO`),
  KEY `FK_MANTENIMIENTOS_USUARIOS_COD_USUARIO` (`COD_USUARIO`),
  CONSTRAINT `FK_MANTENIMIENTOS_USUARIOS_COD_USUARIO` FOREIGN KEY (`COD_USUARIO`) REFERENCES `TBL_MS_USUARIOS` (`COD_USUARIO`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TBL_MANTENIMIENTOS`
--

LOCK TABLES `TBL_MANTENIMIENTOS` WRITE;
/*!40000 ALTER TABLE `TBL_MANTENIMIENTOS` DISABLE KEYS */;
INSERT INTO `TBL_MANTENIMIENTOS` VALUES (1,'2023-07-01 16:06:00','2023-09-14 11:30:00','Mantenimiento predictivo','Verificar las entradas de datos.',1,600.50),(2,'2023-08-06 13:57:49','2023-05-10 13:20:00','Mantenimiento correctivo','Añadir mejoras a las funciones de busqueda avanzada.',17,1300.50),(3,'2023-08-07 02:12:10','2023-08-24 19:36:00','Mantenimiento correctivo','Limpieza del caché en PCs',32,600.00),(4,'2023-08-20 01:36:18','2023-11-25 09:40:00','Mantenimiento evolutivo','si esta bien',1,500.00),(5,'2023-09-12 23:48:01','2023-09-13 17:47:00','Mantenimiento predictivo','Eso...',45,350.85),(6,'2023-10-22 06:48:33','2023-10-24 15:00:00','Mantenimiento predictivo','Revisar cableados',99,445647.89),(7,'2023-10-22 06:52:09','2023-10-31 12:30:00','Mantenimiento correctivo','Optimizar códigos de entrada del sistema y validaciones',100,458931.36);
/*!40000 ALTER TABLE `TBL_MANTENIMIENTOS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TBL_MS_HIST_CONTRASEÑA`
--

DROP TABLE IF EXISTS `TBL_MS_HIST_CONTRASEÑA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TBL_MS_HIST_CONTRASEÑA` (
  `COD_HIST` bigint NOT NULL AUTO_INCREMENT,
  `COD_USUARIO` bigint NOT NULL,
  `PAS_USUARIO` varchar(100) NOT NULL,
  `FEC_REG_CAMBIO` datetime NOT NULL,
  PRIMARY KEY (`COD_HIST`),
  KEY `FK_HCONTRASEÑA_USUARIO_COD_USUARIO` (`COD_USUARIO`),
  CONSTRAINT `FK_HCONTRASEÑA_USUARIO_COD_USUARIO` FOREIGN KEY (`COD_USUARIO`) REFERENCES `TBL_MS_USUARIOS` (`COD_USUARIO`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TBL_MS_HIST_CONTRASEÑA`
--

LOCK TABLES `TBL_MS_HIST_CONTRASEÑA` WRITE;
/*!40000 ALTER TABLE `TBL_MS_HIST_CONTRASEÑA` DISABLE KEYS */;
INSERT INTO `TBL_MS_HIST_CONTRASEÑA` VALUES (1,1,'#Hola','2023-07-01 15:30:40'),(2,1,'#NuevoPas','2023-07-01 16:02:27'),(3,2,'MiPASS','2023-07-01 16:12:28'),(5,2,'MiOtroPass','2023-07-02 19:42:01'),(6,2,'#Prueba','2023-07-02 19:59:53'),(7,2,'Prueba1','2023-07-02 21:46:49'),(8,3,'Prueba3','2023-07-02 22:05:30'),(9,11,'1','2023-07-15 02:08:23'),(10,11,'SoyBarbaro','2023-08-05 01:50:04'),(11,11,'XDDDD','2023-08-05 01:51:33'),(12,32,'XDDDD','2023-08-05 03:24:53'),(13,37,'PASS','2023-08-05 19:54:13'),(14,37,'Esmeralda','2023-08-05 20:02:59'),(15,1,'Prueba2','2023-08-13 12:43:12'),(16,32,'LAOTRACONTRASEÑA','2023-08-14 23:50:50'),(17,32,'MIOTRA','2023-08-15 00:02:48'),(18,32,'LAOTRA','2023-08-15 00:06:15'),(19,32,'LAOTRA','2023-08-15 00:08:17'),(20,32,'LAOTRA','2023-08-17 21:39:24'),(21,11,'ALLICanD','2023-08-17 21:56:19'),(22,37,'1','2023-08-17 22:02:18'),(23,32,'SiSePuede','2023-08-19 00:23:29'),(24,32,'PruebaRST','2023-08-19 04:33:08'),(25,32,'c8ef72c6273de85041040c277dbe46a2872e33d0','2023-08-28 18:21:16'),(26,32,'e67085933aa27017944e3f5aeed9d84e45addd46','2023-08-28 18:23:50'),(27,32,'2572fcdb6fe61789976c296a6b587ddb66c243c1','2023-08-28 21:37:52'),(28,35,'9626b8b9f7445fb5d22568441dd5859cab0878c2','2023-08-29 00:29:00'),(29,35,'0215756cef9e676e5cbaf0e06d552cf642b84a15','2023-08-29 00:34:27'),(30,35,'4e46dc0969e6621f2d61d2228e3cd91b75cd9edc','2023-08-29 00:42:15'),(31,35,'85136c79cbf9fe36bb9d05d0639c70c265c18d37','2023-08-29 00:44:30'),(32,32,'4e46dc0969e6621f2d61d2228e3cd91b75cd9edc','2023-08-29 00:59:47'),(33,32,'e1c362d4c61e135cbdaea54fdb8f71e492e2e553','2023-08-29 01:46:29'),(34,35,'4e46dc0969e6621f2d61d2228e3cd91b75cd9edc','2023-08-29 02:26:22'),(35,46,'e1c362d4c61e135cbdaea54fdb8f71e492e2e553','2023-08-29 02:33:23'),(40,1,'e67085933aa27017944e3f5aeed9d84e45addd46','2023-09-08 16:49:02'),(41,1,'e67085933aa27017944e3f5aeed9d84e45addd46','2023-09-08 16:50:00'),(42,1,'e67085933aa27017944e3f5aeed9d84e45addd46','2023-09-08 16:50:56'),(43,1,'e67085933aa27017944e3f5aeed9d84e45addd46','2023-09-08 16:54:34'),(44,1,'e67085933aa27017944e3f5aeed9d84e45addd46','2023-09-08 16:58:05'),(45,1,'e67085933aa27017944e3f5aeed9d84e45addd46','2023-09-08 17:08:22'),(46,1,'276d1cb5ae0ca358d5460d5c8f91f49c41e27db2','2023-09-08 17:34:49'),(47,1,'e67085933aa27017944e3f5aeed9d84e45addd46','2023-09-08 19:12:36'),(48,1,'5b130ae98ee56f1ac8f8626bdaa52563e6b06907','2023-09-08 20:37:58'),(49,4,'8da46a7ae04cfd5f8d73c13150e7517326dd588b','2023-09-08 21:32:41'),(50,4,'d61e1cb1f7a1b2ea6fcba7931a4b59b6c673d656','2023-09-08 21:33:54'),(51,4,'8da46a7ae04cfd5f8d73c13150e7517326dd588b','2023-09-08 21:35:44'),(52,4,'d61e1cb1f7a1b2ea6fcba7931a4b59b6c673d656','2023-09-08 21:36:26'),(53,4,'8da46a7ae04cfd5f8d73c13150e7517326dd588b','2023-09-08 21:45:20'),(54,4,'d61e1cb1f7a1b2ea6fcba7931a4b59b6c673d656','2023-09-08 21:46:04'),(55,1,'e67085933aa27017944e3f5aeed9d84e45addd46','2023-09-12 20:33:42'),(56,1,'8d345450b2d948548dcb4795de47e1155829dc8d','2023-09-12 20:37:23'),(57,1,'2c5cc870b9d18f4fa82751053b0aea3079a14635','2023-09-12 20:39:37'),(58,1,'e67085933aa27017944e3f5aeed9d84e45addd46','2023-09-12 20:45:38'),(59,1,'8d345450b2d948548dcb4795de47e1155829dc8d','2023-09-12 20:46:22'),(60,1,'e67085933aa27017944e3f5aeed9d84e45addd46','2023-09-12 21:15:55'),(61,1,'8d345450b2d948548dcb4795de47e1155829dc8d','2023-09-12 21:17:59'),(62,1,'f95d8688caae4f11a376f1e4fd16418152d72562','2023-09-12 21:21:44'),(63,1,'2c5cc870b9d18f4fa82751053b0aea3079a14635','2023-09-12 21:53:16'),(64,1,'e67085933aa27017944e3f5aeed9d84e45addd46','2023-09-12 22:43:01'),(65,32,'2572fcdb6fe61789976c296a6b587ddb66c243c1','2023-09-12 23:58:16'),(66,32,'e1e72688da1223b6873cec4b0b65e3ab5f9b1c00','2023-09-12 23:59:36'),(67,32,'d22a5b7b8b3443c4899b1a8137715ed8c3152f5b','2023-09-13 00:00:15'),(68,32,'e1e72688da1223b6873cec4b0b65e3ab5f9b1c00','2023-09-13 17:22:57'),(69,1,'e67085933aa27017944e3f5aeed9d84e45addd46','2023-09-28 05:44:07'),(70,1,'e67085933aa27017944e3f5aeed9d84e45addd46','2023-09-28 05:58:47'),(71,32,'d22a5b7b8b3443c4899b1a8137715ed8c3152f5b','2023-09-29 16:10:10'),(72,63,'e4bde7efa1a7f8f9165f348208694a5b019048a8','2023-10-04 00:22:44'),(73,75,'78f218dd421e669d7e1c5c2f995cf881c4bd7bfd','2023-10-04 05:28:27'),(74,74,'a0af464dc1fe1ef50787d6aa5dd04941b1cba4ae','2023-10-06 00:39:37'),(75,74,'232436e3477ac8221217079fa07e8a0a86ff82d4','2023-10-06 00:50:25'),(76,74,'668f480ad044d27b9cf0fc030ddd4a9062eba85d','2023-10-06 00:53:28'),(77,74,'199393e7ab7300658bcba52ac82e2049ed8cd896','2023-10-06 01:46:07'),(78,74,'ff627285a77c760b76cd6e24aa08de46d5716d3a','2023-10-06 02:39:21'),(79,74,'813349665cf912df907f28403f6c81818959df36','2023-10-06 02:48:40'),(80,74,'3446c5bc4967bd551699de84e9009f2805c8a678','2023-10-06 03:04:10'),(81,74,'1401e392f662253438f2c441b7acfdf41c99f56e','2023-10-09 05:20:10'),(82,74,'5c6aba2bebb18efe1648bfb3172ed8e0a6c42d29','2023-10-09 05:21:10'),(83,63,'78f218dd421e669d7e1c5c2f995cf881c4bd7bfd','2023-10-10 05:44:01'),(84,32,'2572fcdb6fe61789976c296a6b587ddb66c243c1','2023-10-15 22:46:57'),(85,32,'3a56c5634baabd315399dd0c5d7fc76aa902ea0d','2023-10-15 22:49:50'),(86,32,'517be541ff47aa908c5c3fcaaf97ac20374cd157','2023-10-15 22:51:10'),(89,32,'408dbc975730375fb3a53c18f40335e8741671aa','2023-10-22 07:54:57'),(90,32,'745d38e97afdd7f2777e5df1be753d7690fa3c19','2023-10-22 08:24:46'),(93,1,'e67085933aa27017944e3f5aeed9d84e45addd46','2023-10-23 07:25:08'),(94,1,'d413420d377b261f2c6e2b89c24cfd84b54b99f5','2023-10-23 07:26:25'),(95,11,'2a3534e35481acb2d9b7453c3223cfe4a3a00569','2023-10-25 02:43:55'),(96,1,'8bed41b2f5887724c340d5c8474cbd7859d0a382','2023-10-26 04:10:09'),(98,17,'4c7c3b42526b73e2d0e283a35bd5a4bbda355fc3','2023-11-03 22:09:07'),(99,100,'c1111dc0edcd8987caf57368359aaca270729ecc','2023-11-03 23:26:57'),(101,108,'6a7e92a7c0baf90be8017da51eb9586978f45ca0','2023-11-05 06:55:03'),(102,59,'c1111dc0edcd8987caf57368359aaca270729ecc','2023-11-05 15:31:25');
/*!40000 ALTER TABLE `TBL_MS_HIST_CONTRASEÑA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TBL_MS_PARAMETROS`
--

DROP TABLE IF EXISTS `TBL_MS_PARAMETROS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TBL_MS_PARAMETROS` (
  `COD_PARAMETRO` bigint NOT NULL AUTO_INCREMENT,
  `PARAMETRO` varchar(20) NOT NULL,
  `DES_PARAMETRO` varchar(100) NOT NULL,
  `VALOR` int NOT NULL,
  `USUARIO_CREADOR` varchar(40) NOT NULL,
  `FEC_CREADO` datetime NOT NULL,
  `USUARIO_MODIFICADOR` varchar(40) DEFAULT NULL,
  `FEC_MODIFICADO` datetime DEFAULT NULL,
  PRIMARY KEY (`COD_PARAMETRO`),
  UNIQUE KEY `PARAMETRO` (`PARAMETRO`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TBL_MS_PARAMETROS`
--

LOCK TABLES `TBL_MS_PARAMETROS` WRITE;
/*!40000 ALTER TABLE `TBL_MS_PARAMETROS` DISABLE KEYS */;
INSERT INTO `TBL_MS_PARAMETROS` VALUES (1,'INT_PERMITIDOS','Parámetro que controla los intentos de inicio de sesión de los usuarios.',3,'JUANZR','2023-11-19 08:24:04','JACY','2023-11-21 03:04:45');
/*!40000 ALTER TABLE `TBL_MS_PARAMETROS` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`soft`@`%`*/ /*!50003 TRIGGER `TRG_INS_BITACORA_TBL_MS_PARAMETROS` AFTER INSERT ON `TBL_MS_PARAMETROS` FOR EACH ROW BEGIN
                    INSERT INTO BITACORA(TIP_EVENTO, USUARIO_DB, FEC_REG_TIP_EVENTO, NOM_TABLA, MOD_TABLA, IND_TABLA, 
                    REG1, REG3, REG5, REG7, REG9, REG11, REG13, REG15)
                    VALUES ('INSERT', CURRENT_USER(), NOW(), 'TBL_MS_PARAMETROS', 'SEGURIDAD', 'ACTIVA', 
                    NEW.COD_PARAMETRO, NEW.PARAMETRO, NEW.DES_PARAMETRO, NEW.VALOR, 
                    NEW.USUARIO_CREADOR, NEW.FEC_CREADO, NEW.USUARIO_MODIFICADOR, NEW.FEC_MODIFICADO);
                END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`soft`@`%`*/ /*!50003 TRIGGER `TRG_UPD_BITACORA_TBL_MS_PARAMETROS` AFTER UPDATE ON `TBL_MS_PARAMETROS` FOR EACH ROW BEGIN
                    INSERT INTO BITACORA(TIP_EVENTO, USUARIO_DB, FEC_REG_TIP_EVENTO, NOM_TABLA, MOD_TABLA, IND_TABLA, 
                    REG1, REG2, REG3, REG4, REG5, REG6, REG7, REG8, REG9, REG10, 
                    REG11, REG12, REG13, REG14, REG15, REG16)
                    VALUES ('UPDATE', CURRENT_USER(), NOW(), 'TBL_MS_PARAMETROS', 'SEGURIDAD', 'ACTIVA',
                    NEW.COD_PARAMETRO, OLD.COD_PARAMETRO, NEW.PARAMETRO, OLD.PARAMETRO, NEW.DES_PARAMETRO, OLD.DES_PARAMETRO, NEW.VALOR, OLD.VALOR, 
                    NEW.USUARIO_CREADOR, OLD.USUARIO_CREADOR, NEW.FEC_CREADO, OLD.FEC_CREADO, NEW.USUARIO_MODIFICADOR, OLD.USUARIO_MODIFICADOR, 
                    NEW.FEC_MODIFICADO, OLD.FEC_MODIFICADO);
                END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`soft`@`%`*/ /*!50003 TRIGGER `TRG_DLT_BITACORA_TBL_MS_PARAMETROS` AFTER DELETE ON `TBL_MS_PARAMETROS` FOR EACH ROW BEGIN
                INSERT INTO BITACORA(TIP_EVENTO, USUARIO_DB, FEC_REG_TIP_EVENTO, NOM_TABLA, MOD_TABLA, IND_TABLA, 
                    REG2, REG4, REG6, REG8, REG10, REG12, REG14, REG16)
                    VALUES ('DELETE', CURRENT_USER(), NOW(), 'TBL_MS_PARAMETROS', 'SEGURIDAD', 'ACTIVA',
                    OLD.COD_PARAMETRO, OLD.PARAMETRO, OLD.DES_PARAMETRO, OLD.VALOR, OLD.USUARIO_CREADOR, OLD.FEC_CREADO, OLD.USUARIO_MODIFICADOR, OLD.FEC_MODIFICADO);
                END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `TBL_MS_PREGUNTAS`
--

DROP TABLE IF EXISTS `TBL_MS_PREGUNTAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TBL_MS_PREGUNTAS` (
  `COD_PREGUNTA` bigint NOT NULL AUTO_INCREMENT,
  `PREGUNTA` varchar(200) NOT NULL,
  PRIMARY KEY (`COD_PREGUNTA`),
  UNIQUE KEY `PREGUNTA_UNIQUE` (`PREGUNTA`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TBL_MS_PREGUNTAS`
--

LOCK TABLES `TBL_MS_PREGUNTAS` WRITE;
/*!40000 ALTER TABLE `TBL_MS_PREGUNTAS` DISABLE KEYS */;
INSERT INTO `TBL_MS_PREGUNTAS` VALUES (3,'¿CIUDAD DONDE ESTUDIO LA PRIMARIA?'),(20,'¿CIUDAD DONDE NACIO?'),(9,'¿CIUDAD DONDE VIVIÓ SU ADOLECENCIA?'),(10,'¿CUÁL ES EL NOMBRE DE SU MADRE?'),(19,'¿CUÁNTOS HERMANOS TIENE?'),(11,'¿EN QUÉ AÑO SE GRADUO DE LA UNIVERSIDAD?'),(13,'¿ESTA ES UNA PRUEBA?'),(21,'¿HOLA QUE TAL COMO VA ESTAN BIEN AMIGOS Y AMIGAS?'),(22,'¿HOLA QUE TAL?'),(1,'¿NOMBRE DE SU PRIMER MASCOTA?'),(2,'¿NOMBRE PRIMER PAREJA?'),(23,'¿PORQUE ELLA NO TE AMA?');
/*!40000 ALTER TABLE `TBL_MS_PREGUNTAS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TBL_MS_PREGUNTAS_USUARIO`
--

DROP TABLE IF EXISTS `TBL_MS_PREGUNTAS_USUARIO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TBL_MS_PREGUNTAS_USUARIO` (
  `COD_USUARIO` bigint NOT NULL,
  `COD_PREGUNTA` bigint NOT NULL,
  `RESPUESTA` varchar(50) NOT NULL,
  PRIMARY KEY (`COD_USUARIO`),
  KEY `FK_P_USUARIOS_PREGUNTAS_COD_PREGUNTA` (`COD_PREGUNTA`),
  CONSTRAINT `FK_P_USUARIOS_PREGUNTAS_COD_PREGUNTA` FOREIGN KEY (`COD_PREGUNTA`) REFERENCES `TBL_MS_PREGUNTAS` (`COD_PREGUNTA`),
  CONSTRAINT `FK_P_USUARIOS_USUARIO_COD_USUARIO` FOREIGN KEY (`COD_USUARIO`) REFERENCES `TBL_MS_USUARIOS` (`COD_USUARIO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TBL_MS_PREGUNTAS_USUARIO`
--

LOCK TABLES `TBL_MS_PREGUNTAS_USUARIO` WRITE;
/*!40000 ALTER TABLE `TBL_MS_PREGUNTAS_USUARIO` DISABLE KEYS */;
INSERT INTO `TBL_MS_PREGUNTAS_USUARIO` VALUES (1,1,'5b1095c628ef99c4a1524d2c77515112bb98d294'),(2,10,'ea6dd44b9f148d3af08f234a71b988320e940c6b'),(3,2,'756d9ece605b6085935c6df154c1276600539604'),(4,3,'bb1fb4da3aca6b63f7cf65a6607666885bbe165b'),(5,1,'bb3619933e84aab18e7629d0647648e3567c2db0'),(11,9,'7b094a034b7ff972ae56db59a35c33c36f39c5f7'),(17,10,'fd9ee9065c212609a3e54eb9f9a8d22e2ee85560'),(32,2,'dd2ed1b827f8de585d4271f7aef0d4e1470ac967'),(35,1,'0dcb548effca0f668e4bc6c0210b25cac9fd16b9'),(37,1,'430d2e047507fda4379d8ecfc7d683e3898aeebf'),(39,2,'e59bcef41cd57784218d04b5f5e1216379d55edb'),(40,9,'6459e854a241df9e76dedb7ba962de52772c33b2'),(41,9,'2d19b16beab3afa0d824e85feb143eca6f0b3be4'),(42,1,'dc03847736868623d50cac5c428bacafd5dd5b4e'),(43,1,'125ac7efa94835fce50eb1afb0c9bf1d750f9792'),(44,3,'bb1fb4da3aca6b63f7cf65a6607666885bbe165b'),(45,11,'e83fa588ea3c3fa190ebb947a272320a89b35c91'),(46,1,'0dcb548effca0f668e4bc6c0210b25cac9fd16b9'),(52,3,'7ce8277c35ac7d51701decad652c060741bd7e48'),(59,23,'e4b5555b6461e541fbdee11ff9b440426655e65a'),(63,10,'5d569dfc13001c8b30aa11eeb2a59d22071f3d80'),(74,11,'e22cd461c068aea5dff1c3462214880d76b3e39c'),(75,11,'87e8db4f2338ba69baa1c7d4e60969caf4f06d9e'),(76,10,'ff3465471a3a064130a9b80bfe2340094e954d1c'),(91,3,'a3595885b92b54d7d5e4d4a2b66c245b8ef4ba0b'),(99,3,'35290e5645d46343b2c6365fcd364d34f132433a'),(100,19,'ac3478d69a3c81fa62e60f5c3696165a4e5e6ac4'),(101,3,'71e1c0010e20f949a2c251ee56510bb5b3b1db65'),(108,10,'4e03c09ad93949f48fa1a1b9b142fa6570532c21');
/*!40000 ALTER TABLE `TBL_MS_PREGUNTAS_USUARIO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TBL_MS_ROLES`
--

DROP TABLE IF EXISTS `TBL_MS_ROLES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TBL_MS_ROLES` (
  `COD_ROL` bigint NOT NULL AUTO_INCREMENT,
  `NOM_ROL` varchar(15) NOT NULL,
  `DES_ROL` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`COD_ROL`),
  UNIQUE KEY `NOM_ROL_UNIQUE` (`NOM_ROL`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TBL_MS_ROLES`
--

LOCK TABLES `TBL_MS_ROLES` WRITE;
/*!40000 ALTER TABLE `TBL_MS_ROLES` DISABLE KEYS */;
INSERT INTO `TBL_MS_ROLES` VALUES (1,'ADMINISTRADOR','Control total y permisos para agregar y modificar modulo de seguridad'),(2,'USUARIO','Ingreso de datos y consultas, solo puede consultar mod. seguridad'),(3,'SECRETARIO','Solo consultas'),(4,'OPERADOR','Solo tendras acceso al modulo personas'),(5,'PROFESOR','Profesor');
/*!40000 ALTER TABLE `TBL_MS_ROLES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TBL_MS_USUARIOS`
--

DROP TABLE IF EXISTS `TBL_MS_USUARIOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TBL_MS_USUARIOS` (
  `COD_USUARIO` bigint NOT NULL AUTO_INCREMENT,
  `COD_PERSONA` bigint NOT NULL,
  `NOM_USUARIO` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `PAS_USUARIO` varchar(100) NOT NULL,
  `COD_ROL` bigint NOT NULL,
  `IND_USUARIO` enum('ACTIVO','INACTIVO') DEFAULT NULL,
  `FEC_ULTIMO_ACCESO` datetime NOT NULL,
  `LIM_INTENTOS` int NOT NULL,
  `NUM_INTENTOS_FALLIDOS` int NOT NULL,
  `FEC_VENCIMIENTO` date NOT NULL,
  PRIMARY KEY (`COD_USUARIO`),
  UNIQUE KEY `COD_PERSONA` (`COD_PERSONA`),
  UNIQUE KEY `NOM_USUARIO` (`NOM_USUARIO`),
  KEY `FK_USUARIOS_TIPOSDEROL_COD_ROL` (`COD_ROL`),
  CONSTRAINT `FK_USUARIOS_PERSONAS_COD_PERSONA` FOREIGN KEY (`COD_PERSONA`) REFERENCES `PERSONAS` (`COD_PERSONA`),
  CONSTRAINT `FK_USUARIOS_TIPOSDEROL_COD_ROL` FOREIGN KEY (`COD_ROL`) REFERENCES `TBL_MS_ROLES` (`COD_ROL`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TBL_MS_USUARIOS`
--

LOCK TABLES `TBL_MS_USUARIOS` WRITE;
/*!40000 ALTER TABLE `TBL_MS_USUARIOS` DISABLE KEYS */;
INSERT INTO `TBL_MS_USUARIOS` VALUES (1,1,'JACY','d22a5b7b8b3443c4899b1a8137715ed8c3152f5b',1,'ACTIVO','2023-11-25 14:23:29',3,0,'2024-01-24'),(2,2,'MLOPEZ','7c0203c2bee631edac8025a49e504b3d5bfc81cb',4,'ACTIVO','2023-07-01 00:00:00',3,0,'2023-07-31'),(3,3,'RAMOSRC','fd5497a72187526011df9450be078fa5ccc6ce64',1,'INACTIVO','2023-07-02 00:00:00',3,2,'2023-09-30'),(4,9,'mary','8da46a7ae04cfd5f8d73c13150e7517326dd588b',3,'ACTIVO','2023-09-08 21:46:15',3,0,'2023-12-07'),(5,4,'speralta','c93d839e4b8a2f9d08857cb8cb20db1a299b6e70',1,'ACTIVO','2023-08-28 00:00:00',3,0,'2023-10-31'),(11,22,'mjose','3fecf97a44dfdc3fa345667667cf63f711dc6734',1,'INACTIVO','2023-07-01 00:00:00',3,4,'2024-01-23'),(17,21,'mariahn','c1111dc0edcd8987caf57368359aaca270729ecc',2,'ACTIVO','2023-11-03 22:09:29',3,0,'2024-02-01'),(32,28,'JUANZR','408dbc975730375fb3a53c18f40335e8741671aa',1,'ACTIVO','2023-11-25 19:07:06',3,0,'2024-01-20'),(35,5,'fany2023','84f5fc0b0ebc0ffc881f22d7d5a11107427a2a1b',1,'ACTIVO','2023-08-05 00:00:00',3,0,'2023-11-01'),(37,23,'FESMERALDA','4f501d3fbe635d341e48a19e447f77a678c1be4e',4,'ACTIVO','2023-08-05 00:00:00',3,0,'2023-11-30'),(39,24,'noedim','1759cea91e7a04cdfc9c042858f06a607da893c9',2,'INACTIVO','2023-08-16 00:00:00',3,2,'2023-10-31'),(40,35,'leomesi','65e0a0efde20f19e9b742a0fb0c71081d73eb69b',3,'ACTIVO','2023-08-13 00:00:00',3,0,'2023-09-30'),(41,42,'jp325','c88ee6bf93e51620a1b432fd23e97e53e0f2b44f',3,'ACTIVO','2023-08-20 00:00:00',3,0,'2024-01-06'),(42,36,'paola','75d08e5c609af2df60afee1de0619b63e2aba48c',3,'ACTIVO','2023-11-17 20:37:24',3,0,'2023-11-21'),(43,56,'Villalobos','733fde620b6c0e2730145a596f3ded71abb014c8',1,'ACTIVO','2023-11-25 01:35:04',3,0,'2027-01-01'),(44,59,'codcanales','470bc3d8e5a41489a7cb933329880c28b53aec26',3,'ACTIVO','1999-01-01 00:00:00',3,0,'2023-10-30'),(45,54,'lariza54','75e90d8e9dc8ba65bd1c647c7c27ba0d965e16be',4,'INACTIVO','1999-01-01 00:00:00',3,0,'2023-09-30'),(46,60,'emcko','84f5fc0b0ebc0ffc881f22d7d5a11107427a2a1b',3,'ACTIVO','2023-08-29 00:00:00',3,0,'2024-02-22'),(51,58,'m_waleska','2ae33b2f075d9d2f075e84393f22de0c0e209249',2,'ACTIVO','2023-09-08 19:15:12',3,0,'2023-12-07'),(52,62,'ITEC','a152cfbf71597a20cf24b1055f143987c06e65f1',1,'INACTIVO','2023-10-18 16:11:21',3,6,'2023-12-28'),(55,53,'BET.S%U A','7c8e8eef8eba7142cb0d7af0ba0562be363a2f42',2,'ACTIVO','1999-01-01 00:00:00',3,0,'2024-01-01'),(59,55,'Olman','ff590efda891799f71f7a71a658ad6fd5f1c43ba',2,'ACTIVO','2023-11-05 15:34:45',3,0,'2024-02-03'),(63,57,'pedro','52dcd36d3c9a589ca29e3e8ff51669f6cc302769',1,'ACTIVO','2023-10-10 06:05:54',3,0,'2024-01-08'),(74,63,'O','1401e392f662253438f2c441b7acfdf41c99f56e',1,'ACTIVO','2023-10-25 01:41:51',3,0,'2024-01-07'),(75,34,'user','29bc6a26df8ada46b0f2e2c56be092b913306c32',2,'ACTIVO','2023-10-04 05:21:56',3,0,'2024-01-30'),(76,25,'USER12','b420cbab975626f6f4093ba082f8c5bc679c91d8',4,'ACTIVO','2023-10-07 00:26:06',3,0,'2023-10-27'),(91,64,'Tnsalgad','42f549ce17f48a9bdd46afbd32e418ccc525bdde',1,'ACTIVO','2023-10-09 03:49:56',3,0,'2024-01-05'),(99,65,'Mariana','58b6aee8d6e0694c542fc8eaf111727f5b8b2731',1,'ACTIVO','2023-10-09 22:29:34',3,0,'2024-01-07'),(100,69,'JUAN','aaa5ceb14a4fa4092ed183484b995cc53216205f',2,'ACTIVO','2023-11-03 23:27:25',3,0,'2024-02-01'),(101,70,'MARTINEZ','73298c7e8bc614db073eebb043d349bf0bb91ec2',2,'ACTIVO','2023-10-10 16:07:14',3,0,'2024-01-08'),(108,78,'JULIO','aabfe601ac374cab2de19c356f40299edcf690d5',1,'ACTIVO','2023-11-05 06:55:36',3,0,'2024-02-03'),(109,91,'LICKARLA','c1111dc0edcd8987caf57368359aaca270729ecc',1,'ACTIVO','1999-01-01 00:00:00',3,1,'2023-11-07');
/*!40000 ALTER TABLE `TBL_MS_USUARIOS` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`soft`@`%`*/ /*!50003 TRIGGER `TRG_INS_BITACORA_TBL_MS_USUARIOS` AFTER INSERT ON `TBL_MS_USUARIOS` FOR EACH ROW BEGIN
                    INSERT INTO BITACORA(TIP_EVENTO, USUARIO_DB, FEC_REG_TIP_EVENTO, NOM_TABLA, MOD_TABLA, IND_TABLA, 
                    REG1, REG3, REG5, REG7, REG9, REG11, REG13, REG15, REG17)
                    VALUES ('INSERT', CURRENT_USER(), NOW(), 'TBL_MS_USUARIOS', 'SEGURIDAD', 'ACTIVA', 
                    NEW.COD_USUARIO, NEW.COD_PERSONA, NEW.NOM_USUARIO, NEW.COD_ROL, NEW.IND_USUARIO, 
                    NEW.FEC_ULTIMO_ACCESO, NEW.LIM_INTENTOS, NEW.NUM_INTENTOS_FALLIDOS, NEW.FEC_VENCIMIENTO);
                END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`soft`@`%`*/ /*!50003 TRIGGER `TRG_UPD_BITACORA_TBL_MS_USUARIOS` AFTER UPDATE ON `TBL_MS_USUARIOS` FOR EACH ROW BEGIN
                    IF OLD.PAS_USUARIO = NEW.PAS_USUARIO THEN
                        INSERT INTO BITACORA(TIP_EVENTO, USUARIO_DB, FEC_REG_TIP_EVENTO, NOM_TABLA, MOD_TABLA, IND_TABLA, 
                        REG1, REG2, REG3, REG4, REG5, REG6, REG7, REG8, REG9, REG10, 
                        REG11, REG12, REG13, REG14, REG15, REG16, REG17, REG18)
                        VALUES ('UPDATE', CURRENT_USER(), NOW(), 'TBL_MS_USUARIOS', 'SEGURIDAD', 'ACTIVA',
                        NEW.COD_USUARIO, OLD.COD_USUARIO, NEW.COD_PERSONA, OLD.COD_PERSONA, NEW.NOM_USUARIO, OLD.NOM_USUARIO,
                        NEW.COD_ROL, OLD.COD_ROL, NEW.IND_USUARIO, OLD.IND_USUARIO, NEW.FEC_ULTIMO_ACCESO, OLD.FEC_ULTIMO_ACCESO,
                        NEW.LIM_INTENTOS, OLD.LIM_INTENTOS, NEW.NUM_INTENTOS_FALLIDOS, OLD.NUM_INTENTOS_FALLIDOS, 
                        NEW.FEC_VENCIMIENTO, OLD.FEC_VENCIMIENTO);
                    END IF;
                END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`soft`@`%`*/ /*!50003 TRIGGER `TRG_DLT_BITACORA_TBL_MS_USUARIOS` AFTER DELETE ON `TBL_MS_USUARIOS` FOR EACH ROW BEGIN
                INSERT INTO BITACORA(TIP_EVENTO, USUARIO_DB, FEC_REG_TIP_EVENTO, NOM_TABLA, MOD_TABLA, IND_TABLA, 
                    REG2, REG4, REG6, REG8, REG10, REG12, REG14, REG16, REG18)
                    VALUES ('DELETE', CURRENT_USER(), NOW(), 'TBL_MS_USUARIOS', 'SEGURIDAD', 'ACTIVA',
                    OLD.COD_USUARIO, OLD.COD_PERSONA, OLD.NOM_USUARIO, OLD.COD_ROL, OLD.IND_USUARIO, OLD.FEC_ULTIMO_ACCESO, OLD.LIM_INTENTOS, OLD.NUM_INTENTOS_FALLIDOS, OLD.FEC_VENCIMIENTO);
                END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `TBL_OBJETOS`
--

DROP TABLE IF EXISTS `TBL_OBJETOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TBL_OBJETOS` (
  `COD_OBJETO` bigint NOT NULL AUTO_INCREMENT,
  `OBJETO` varchar(100) NOT NULL,
  `DES_OBJETO` varchar(100) NOT NULL,
  `TIP_OBJETO` varchar(15) NOT NULL,
  PRIMARY KEY (`COD_OBJETO`),
  UNIQUE KEY `OBJETO_UNIQUE` (`OBJETO`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TBL_OBJETOS`
--

LOCK TABLES `TBL_OBJETOS` WRITE;
/*!40000 ALTER TABLE `TBL_OBJETOS` DISABLE KEYS */;
INSERT INTO `TBL_OBJETOS` VALUES (1,'PERSONAS','Muestra los ciudadanos registrados en la base de datos.','Primordial'),(2,'FIERROS','Muestra los fierros almacenados en la base de datos','Servicio'),(3,'PSACRIFICIO','Administra registro y emisión de permisos de sacrificio de animales','Servicio'),(4,'PTRASLADO','Administra registro y emisión de permisos de traslado','Servicio'),(5,'EXPEDIENTECV','Administra registro y emisión de cartas de venta','Servicio'),(6,'ANIMALES','Muestra los animales registrados en la base de datos','Servicio'),(7,'USUARIOS','Muestran los usuarios encargados del sistema','Seguridad'),(8,'PREGUNTAS','Muestra las preguntas almacenadas en la base de datos','Seguridad'),(9,'ROLES','Muestra los roles configurados para el sistema.','Seguridad'),(11,'PERMISOS','Muestra la selección de permisos disponibles para cada rol según su objeto','Seguridad'),(12,'MANTENIMIENTOS','Muestra los mantenimientos programados y los usuarios encargados de estos','Servicio');
/*!40000 ALTER TABLE `TBL_OBJETOS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TBL_PERMISOS`
--

DROP TABLE IF EXISTS `TBL_PERMISOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TBL_PERMISOS` (
  `COD_ROL` bigint NOT NULL,
  `COD_OBJETO` bigint NOT NULL,
  `PRM_INSERTAR` enum('S','N') NOT NULL,
  `PRM_ACTUALIZAR` enum('S','N') NOT NULL,
  `PRM_CONSULTAR` enum('S','N') NOT NULL,
  PRIMARY KEY (`COD_ROL`,`COD_OBJETO`),
  KEY `FK_PERMISOS_USUARIO_COD_USUARIO` (`COD_OBJETO`),
  CONSTRAINT `FK_PERMISOS_ROLES_COD_ROL` FOREIGN KEY (`COD_ROL`) REFERENCES `TBL_MS_ROLES` (`COD_ROL`),
  CONSTRAINT `FK_PERMISOS_USUARIO_COD_USUARIO` FOREIGN KEY (`COD_OBJETO`) REFERENCES `TBL_OBJETOS` (`COD_OBJETO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TBL_PERMISOS`
--

LOCK TABLES `TBL_PERMISOS` WRITE;
/*!40000 ALTER TABLE `TBL_PERMISOS` DISABLE KEYS */;
INSERT INTO `TBL_PERMISOS` VALUES (1,1,'S','S','S'),(1,2,'S','S','S'),(1,3,'S','S','S'),(1,4,'S','S','S'),(1,5,'S','S','S'),(1,6,'S','S','S'),(1,7,'S','S','S'),(1,8,'S','S','S'),(1,9,'S','S','S'),(1,11,'S','S','S'),(1,12,'S','S','S'),(2,1,'S','S','S'),(2,2,'S','N','S'),(2,3,'S','S','S'),(2,4,'S','S','S'),(2,5,'S','S','S'),(2,6,'S','S','S'),(2,7,'N','N','N'),(2,9,'N','S','N'),(2,11,'N','N','N'),(2,12,'N','N','S'),(3,1,'N','N','S'),(3,2,'N','S','S'),(3,3,'N','S','S'),(3,4,'S','S','S'),(3,5,'S','S','S'),(3,6,'S','S','S'),(3,7,'N','N','S'),(3,8,'N','N','N'),(3,9,'N','N','N'),(3,11,'N','N','N'),(3,12,'S','N','S'),(4,5,'N','N','N'),(4,6,'S','S','S'),(4,11,'N','N','N'),(5,1,'S','N','S'),(5,8,'S','S','S'),(5,9,'N','S','S');
/*!40000 ALTER TABLE `TBL_PERMISOS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TELEFONOS`
--

DROP TABLE IF EXISTS `TELEFONOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TELEFONOS` (
  `COD_TELEFONO` bigint NOT NULL AUTO_INCREMENT,
  `COD_PERSONA` bigint NOT NULL,
  `NUM_TELEFONO` varchar(18) NOT NULL,
  `TIP_TELEFONO` enum('FI','MO') NOT NULL,
  `DES_TELEFONO` varchar(100) NOT NULL,
  `OPE_TELEFONO` varchar(20) NOT NULL,
  `IND_TELEFONO` enum('ACTIVO','INACTIVO') NOT NULL,
  PRIMARY KEY (`COD_TELEFONO`),
  KEY `FK_TELEFONOS_PERSONAS_COD_PERSONA` (`COD_PERSONA`),
  CONSTRAINT `FK_TELEFONOS_PERSONAS_COD_PERSONA` FOREIGN KEY (`COD_PERSONA`) REFERENCES `PERSONAS` (`COD_PERSONA`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TELEFONOS`
--

LOCK TABLES `TELEFONOS` WRITE;
/*!40000 ALTER TABLE `TELEFONOS` DISABLE KEYS */;
INSERT INTO `TELEFONOS` VALUES (2,1,'23875966','FI','Telefono Empresa cuarto','TIGO','ACTIVO'),(3,22,'88521045','MO','Telefono personal','CLARO','ACTIVO'),(4,23,'33659879','MO','Onana','CLARO','INACTIVO'),(5,24,'89632222','FI','Telefono personal','CLARO','ACTIVO'),(6,25,'95962823','MO','personal','TIGO','ACTIVO'),(7,26,'88552022','MO','Telefono Personal','CLARO','ACTIVO'),(8,27,'88587954','MO','Telefono Personal','HONDUTEL','ACTIVO'),(9,28,'22548752','FI','mio y de mami','HONDUTEL','ACTIVO'),(10,29,'33654920','MO','EL PRIMERO','Tigo','ACTIVO'),(11,30,'98745541','FI','mio X2','CONMIGO','ACTIVO'),(14,2,'33589654','MO','Telefono personal','HONDUTEL','ACTIVO'),(15,3,'94658710','MO','Telefono personal','TIGO','ACTIVO'),(16,4,'22589625','MO','Telefono trabajo','HONDUTEL','ACTIVO'),(17,5,'99200021','MO','Telefono trabajo','TIGO','ACTIVO'),(18,9,'32202520','FI','Telefono casa','CLARO','ACTIVO'),(19,21,'25552513','MO','Telefono papi','HONDUTEL','ACTIVO'),(28,36,'87588715','FI','TRABAJO','CLARO','ACTIVO'),(36,34,'98754201','MO','EN CASA','Claro','ACTIVO'),(37,42,'88965013','MO','El de mami','CLARO','ACTIVO'),(46,52,'98654712','MO','paoia','togio','ACTIVO'),(47,53,'98745210','MO','Trabajo','TIGO','ACTIVO'),(49,35,'99458730','MO','Personal','Tigo','ACTIVO'),(50,54,'87452101','MO','Solo Trabajo','Tigo Y Hondutel','ACTIVO'),(51,55,'84875250','FI','Trabajo','Hondutel','ACTIVO'),(52,56,'96987452','MO','El de casa','Tigo','ACTIVO'),(53,57,'96745210','MO','Personal','Tigo','ACTIVO'),(54,58,'92103034','MO','propio','tigo','ACTIVO'),(55,59,'98754755','MO','Personal','Tigo','ACTIVO'),(56,60,'99685420','MO','Personal','Tigo','ACTIVO'),(57,61,'33225588','MO','Telefono personal','Claro','ACTIVO'),(58,62,'99992222','MO','Telefono para trabajo','TIGO','ACTIVO'),(59,63,'97778899','MO','Telefono de trabajo','Claro','ACTIVO'),(60,64,'99745852','MO','personal','tigo','ACTIVO'),(61,65,'33998872','MO','Color negro Huawei','Claro','ACTIVO'),(62,66,'33978888','MO','Color blaco Huawei','Claro','ACTIVO'),(63,67,'78965242','FI','Telefono trabajo','TIGO','ACTIVO'),(64,68,'33565588','FI','Telefono trabajo','Claro','ACTIVO'),(65,69,'99888823','MO','samsung negro','Tigo','ACTIVO'),(66,70,'99887765','MO','samsung Blanco','Tigo','ACTIVO'),(73,78,'99874521','MO','Personal','Tigo','ACTIVO'),(85,90,'32489651','MO','Personal','CLARO','ACTIVO'),(86,91,'22225598','FI','Personal','Hondutel','ACTIVO'),(87,92,'98746666','MO','Trabajo mor','Tigo','ACTIVO'),(88,93,'95512021','MO','Personal','CLARO','ACTIVO'),(89,94,'99999999','FI','Telefono de domicilio','HONDUTEL','ACTIVO');
/*!40000 ALTER TABLE `TELEFONOS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'SOFTEAM'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`soft`@`%` PROCEDURE `sp_login`(IN `P_COD_USUARIO` BIGINT, IN `P_PAS_USUARIO` VARCHAR(40))
BEGIN
    SELECT * FROM users WHERE COD_USUARIO = P_COD_USUARIO AND PAS_USUARIO = P_PAS_USUARIO;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_LOGIN_SEGURIDAD` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`soft`@`%` PROCEDURE `SP_LOGIN_SEGURIDAD`(IN `PV_TIPO_OPERACION` VARCHAR(2), IN `PI_COD_USUARIO` BIGINT, IN `PV_PAS_USUARIO` VARCHAR(40))
BEGIN
    DECLARE PV_COD_ERROR VARCHAR(5) DEFAULT NULL;
    DECLARE PV_DES_ERROR VARCHAR(500);
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION GET DIAGNOSTICS CONDITION 1 PV_COD_ERROR = returned_sqlstate, PV_DES_ERROR = message_text;
	START TRANSACTION;
			IF PV_TIPO_OPERACION = 'ST' THEN
				SELECT * FROM TBL_MS_USUARIOS WHERE COD_USUARIO = PI_COD_USUARIO AND PAS_USUARIO = PV_PAS_USUARIO;
            ELSE
				SELECT 'Favor, ingrese una operación valida.' as ADVERTENCIA;
			END IF;
            IF PV_COD_ERROR IS NOT NULL THEN
				INSERT INTO TBL_ERRORES(COD_ERROR, DES_ERROR, USR_ERROR, FEC_REG_ERROR)
				VALUES(PV_COD_ERROR, PV_DES_ERROR, current_user(), now());
				SELECT PV_DES_ERROR as ERROR;
			END IF;
	COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_MOD_CVENTA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`soft`@`%` PROCEDURE `SP_MOD_CVENTA`(IN `PV_TABLA_NOMBRE` VARCHAR(100), IN `PV_TIPO_OPERACION` VARCHAR(2), IN `PI_COD_CVENTA` BIGINT, IN `PI_COD_VENDEDOR` BIGINT, IN `PV_NOM_COMPRADOR` VARCHAR(200), IN `PV_DNI_COMPRADOR` VARCHAR(15), IN `PI_COD_ANIMAL` BIGINT, IN `PV_FOL_CVENTA` VARCHAR(20), IN `PV_ANT_CVENTA` ENUM('NO','SI'), IN `PV_CLAS_ANIMAL` VARCHAR(50), IN `PV_RAZ_ANIMAL` VARCHAR(50), IN `PV_COL_ANIMAL` VARCHAR(50), IN `PI_COD_FIERRO` BIGINT, IN `PV_VEN_ANIMAL` ENUM('S','N'), IN `PV_HER_ANIMAL` ENUM('S','N'), IN `PV_DET_ANIMAL` VARCHAR(200))
BEGIN
-- DECLARACION DE ERRORES 
	DECLARE PV_COD_ERROR VARCHAR(5) DEFAULT NULL;
    DECLARE PV_DES_ERROR VARCHAR(500);
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION GET DIAGNOSTICS CONDITION 1 PV_COD_ERROR = returned_sqlstate, PV_DES_ERROR = message_text;
START TRANSACTION;
    
-- TABLA EXPENDIENTE_CVENTA
       IF PV_TABLA_NOMBRE = 'EXPEDIENTE_CVENTA' THEN
                IF PV_TIPO_OPERACION = 'I' THEN -- INSERT.
			    INSERT INTO EXPEDIENTE_CVENTA( FEC_CVENTA, COD_VENDEDOR, NOM_COMPRADOR, DNI_COMPRADOR , COD_ANIMAL, FOL_CVENTA , ANT_CVENTA) 
			    VALUES(current_date(), PI_COD_VENDEDOR, PV_NOM_COMPRADOR, PV_DNI_COMPRADOR ,PI_COD_ANIMAL, PV_FOL_CVENTA, PV_ANT_CVENTA);
		        ELSEIF PV_TIPO_OPERACION = 'U' THEN -- UPDATE.
			    UPDATE EXPEDIENTE_CVENTA SET COD_VENDEDOR= PI_COD_VENDEDOR, NOM_COMPRADOR= PV_NOM_COMPRADOR, DNI_COMPRADOR= PV_DNI_COMPRADOR, COD_ANIMAL=PI_COD_ANIMAL, FOL_CVENTA= PV_FOL_CVENTA, ANT_CVENTA=PV_ANT_CVENTA WHERE COD_CVENTA = PI_COD_CVENTA;
				ELSEIF PV_TIPO_OPERACION = 'S' THEN -- SELECT ALL.
		    	SELECT * FROM EXPEDIENTE_CVENTA;
                ELSEIF PV_TIPO_OPERACION = 'ST' THEN -- SELECT ONE.
		    	SELECT * FROM EXPEDIENTE_CVENTA WHERE COD_CVENTA = PI_COD_CVENTA ;
                ELSE 
                    SELECT 'Error! Ha ingresado un valor erroneo.' as ERROR;
				END IF;
                IF PV_COD_ERROR IS NOT NULL THEN
					INSERT INTO TBL_ERRORES(COD_ERROR, DES_ERROR, USR_ERROR, FEC_REG_ERROR)
					VALUES(PV_COD_ERROR, PV_DES_ERROR, current_user(), now());
					SELECT PV_DES_ERROR as ERROR;
		END IF;
	-- FIN TABLA EXPENDIENTE_CVENTA.
    -- TABLA ANIMALES.
       ELSEIF PV_TABLA_NOMBRE = 'ANIMALES' THEN
				IF PV_TIPO_OPERACION = 'I' THEN -- INSERT.
			    INSERT INTO ANIMALES(FEC_REG_ANIMAL, CLAS_ANIMAL, RAZ_ANIMAL, COL_ANIMAL, COD_FIERRO , VEN_ANIMAL,
                HER_ANIMAL, DET_ANIMAL) 
			    VALUES(current_date(), PV_CLAS_ANIMAL, PV_RAZ_ANIMAL, PV_COL_ANIMAL, PI_COD_FIERRO , PV_VEN_ANIMAL,
                PV_HER_ANIMAL, PV_DET_ANIMAL);
		        ELSEIF PV_TIPO_OPERACION = 'U' THEN -- UPDATE.
			    UPDATE ANIMALES SET CLAS_ANIMAL = PV_CLAS_ANIMAL, RAZ_ANIMAL = PV_RAZ_ANIMAL, COL_ANIMAL = PV_COL_ANIMAL,
                 COD_FIERRO = PI_COD_FIERRO, VEN_ANIMAL = PV_VEN_ANIMAL, HER_ANIMAL = PV_HER_ANIMAL, DET_ANIMAL = PV_DET_ANIMAL WHERE COD_ANIMAL = PI_COD_ANIMAL;
				ELSEIF PV_TIPO_OPERACION = 'S' THEN -- SELECT ALL.
                 SELECT * FROM ANIMALES;
                ELSEIF PV_TIPO_OPERACION = 'ST' THEN -- SELECT ONE.
		    	SELECT * FROM ANIMALES WHERE COD_ANIMAL = PI_COD_ANIMAL;
                ELSE 
                    SELECT 'Error! Ha ingresado un valor erroneo.' as ERROR;
				END IF;
                IF PV_COD_ERROR IS NOT NULL THEN
					INSERT INTO TBL_ERRORES(COD_ERROR, DES_ERROR, USR_ERROR, FEC_REG_ERROR)
					VALUES(PV_COD_ERROR, PV_DES_ERROR, current_user(), now());
					SELECT PV_DES_ERROR as ERROR;
		END IF;
    -- FIN DE LA TABLA ANIMALES 
    END IF;
COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_MOD_FIERRO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`soft`@`%` PROCEDURE `SP_MOD_FIERRO`(IN `PV_TABLA_NOMBRE` VARCHAR(100), IN `PV_TIPO_OPERACION` VARCHAR(2), IN `PI_COD_FIERRO` BIGINT, IN `PD_FEC_TRAMITE_FIERRO` DATE, IN `PI_COD_PERSONA` BIGINT, IN `PV_TIP_FIERRO` ENUM('L','F','N','S'), IN `PV_IMG_FIERRO` VARCHAR(300), IN `PV_NUM_FOLIO_FIERRO` VARCHAR(20), IN `PD_MON_CERTIFICO_FIERRO` DECIMAL(8,2), IN `PV_ESTADO` ENUM('A','I'))
BEGIN
-- MANEJO DE ERRORES Y EXCEPCIONES
	DECLARE PV_COD_ERROR VARCHAR(5) DEFAULT NULL;
    DECLARE PV_DES_ERROR VARCHAR(500);
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION GET DIAGNOSTICS CONDITION 1 PV_COD_ERROR = returned_sqlstate, PV_DES_ERROR = message_text;
    
START TRANSACTION;
	-- TABLA FIERROS
	IF PV_TABLA_NOMBRE = 'FIERROS' THEN
		IF PV_TIPO_OPERACION = 'I' THEN -- INSERT.
			    INSERT INTO FIERROS(FEC_TRAMITE_FIERRO, COD_PERSONA, TIP_FIERRO, IMG_FIERRO, NUM_FOLIO_FIERRO, MON_CERTIFICO_FIERRO, ESTADO) 
			    VALUES(CURRENT_DATE(), PI_COD_PERSONA, PV_TIP_FIERRO, PV_IMG_FIERRO, PV_NUM_FOLIO_FIERRO, PD_MON_CERTIFICO_FIERRO, PV_ESTADO );
		        ELSEIF PV_TIPO_OPERACION = 'U' THEN -- UPDATE.
			    UPDATE FIERROS SET FEC_TRAMITE_FIERRO = PD_FEC_TRAMITE_FIERRO, TIP_FIERRO = PV_TIP_FIERRO, IMG_FIERRO = PV_IMG_FIERRO, 
                NUM_FOLIO_FIERRO = PV_NUM_FOLIO_FIERRO, MON_CERTIFICO_FIERRO = PD_MON_CERTIFICO_FIERRO, ESTADO = PV_ESTADO WHERE COD_FIERRO = PI_COD_FIERRO;
				ELSEIF PV_TIPO_OPERACION = 'S' THEN -- SELECT ALL.
		    	SELECT * FROM FIERROS;
                ELSEIF PV_TIPO_OPERACION = 'ST' THEN -- SELECT ONE.
		    	SELECT * FROM FIERROS WHERE COD_FIERRO = PI_COD_FIERRO;

			ELSE 
					SELECT 'Error! Ha ingresado un valor erroneo.' as ADVERTENCIA;
				END IF;
			-- Fin tabla de mantenimientos.
            ELSE
				SELECT 'Error! Ha ingresado un valor erroneo.' as ADVERTENCIA;
			END IF;
            IF PV_COD_ERROR IS NOT NULL THEN
				INSERT INTO TBL_ERRORES(COD_ERROR, DES_ERROR, USR_ERROR, FEC_REG_ERROR)
				VALUES(PV_COD_ERROR, PV_DES_ERROR, current_user(), now());
				SELECT PV_DES_ERROR as ERROR;
			END IF;
COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_MOD_PERMISOS_SACRIFICIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`soft`@`%` PROCEDURE `SP_MOD_PERMISOS_SACRIFICIO`(IN `PV_TABLA_NOMBRE` VARCHAR(100), IN `PV_TIPO_OPERACION` VARCHAR(2), IN `PI_COD_PSACRIFICIO` BIGINT, IN `PV_NOM_PERSONA` VARCHAR(200), IN `PV_DNI_PERSONA` VARCHAR(15), IN `PV_TEL_PERSONA` VARCHAR(18), IN `PD_FEC_SACRIFICIO` DATE, IN `PI_COD_ANIMAL` BIGINT, IN `PV_DIR_PSACRIFICIO` VARCHAR(200))
BEGIN
	-- MANEJO DE ERRORES Y EXCEPCIONES
	DECLARE PV_COD_ERROR VARCHAR(5) DEFAULT NULL;
    DECLARE PV_DES_ERROR VARCHAR(500);
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION GET DIAGNOSTICS CONDITION 1 PV_COD_ERROR = returned_sqlstate, PV_DES_ERROR = message_text;
    
START TRANSACTION;
	-- TABLA PERMISO_SARIFICIO
    IF PV_TABLA_NOMBRE = 'PERMISOS_SACRIFICIO'THEN
		IF PV_TIPO_OPERACION = 'I' THEN -- INSERT.
        INSERT INTO PERMISOS_SACRIFICIO(FEC_REG_PSACRIFICIO, NOM_PERSONA, DNI_PERSONA, TEL_PERSONA, FEC_SACRIFICIO, COD_ANIMAL, DIR_PSACRIFICIO) 
			VALUES(CURRENT_DATE(), PV_NOM_PERSONA, PV_DNI_PERSONA, PV_TEL_PERSONA, PD_FEC_SACRIFICIO, PI_COD_ANIMAL, PV_DIR_PSACRIFICIO);
			ELSEIF PV_TIPO_OPERACION = 'U' THEN -- UPDATE.
			UPDATE PERMISOS_SACRIFICIO SET 
            NOM_PERSONA=PV_NOM_PERSONA, DNI_PERSONA=PV_DNI_PERSONA, 
			TEL_PERSONA=PV_TEL_PERSONA, FEC_SACRIFICIO=PD_FEC_SACRIFICIO, COD_ANIMAL=PI_COD_ANIMAL, DIR_PSACRIFICIO=PV_DIR_PSACRIFICIO 
			WHERE COD_PSACRIFICIO = PI_COD_PSACRIFICIO ;
			ELSEIF PV_TIPO_OPERACION = 'S' THEN -- SELECT ALL.
			SELECT * FROM PERMISOS_SACRIFICIO;
			ELSEIF PV_TIPO_OPERACION = 'ST' THEN -- SELECT ONE.
			SELECT * FROM PERMISOS_SACRIFICIO WHERE COD_PSACRIFICIO=PI_COD_PSACRIFICIO;
        ELSE 
			SELECT 'Error! Ha ingresado un valor erroneo.' as ERROR;
			END IF;
		IF PV_COD_ERROR IS NOT NULL THEN
			INSERT INTO TBL_ERRORES(COD_ERROR, DES_ERROR, USR_ERROR, FEC_REG_ERROR)
			VALUES(PV_COD_ERROR, PV_DES_ERROR, current_user(), now());
			SELECT PV_DES_ERROR as ERROR;
	END IF;
	-- FIN DE LA TABLA PERMISO_SACRIFICIO
    ELSE 
		SELECT 'Error! Ha ingresado un valor erroneo.' as ERROR;
    END IF;
            
COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_MOD_PERMISOS_TRASLADO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`soft`@`%` PROCEDURE `SP_MOD_PERMISOS_TRASLADO`(IN `TABLA_NOMBRE` VARCHAR(100), IN `TIPO_OPERACION` VARCHAR(2), IN `PI_COD_PTRASLADO` BIGINT, IN `PD_FEC_TRASLADO` DATE, IN `PI_COD_PERSONA` BIGINT, IN `PV_DIR_ORIG_PTRASLADO` VARCHAR(200), IN `PV_DIR_DEST_TRASLADO` VARCHAR(200), IN `PV_NOM_TRANSPORTISTA` VARCHAR(200), IN `PV_DNI_TRANSPORTISTA` VARCHAR(15), IN `PV_TEL_TRANSPORTISTA` VARCHAR(18), IN `PV_MAR_VEHICULO` VARCHAR(20), IN `PV_MOD_VEHICULO` VARCHAR(20), IN `PV_MAT_VEHICULO` VARCHAR(20), IN `PV_COL_VEHICULO` VARCHAR(20), IN `PD_MON_TRASLADO` DECIMAL(8,2), IN `PI_COD_DTRASLADO` BIGINT, IN `PI_COD_FIERRO` BIGINT, IN `PI_CAN_GANADO` BIGINT)
BEGIN
DECLARE PI_COD_TRASLADO BIGINT;
	DECLARE PV_COD_ERROR VARCHAR(5) DEFAULT NULL;
    DECLARE PV_DES_ERROR VARCHAR(500);
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION GET DIAGNOSTICS CONDITION 1 PV_COD_ERROR = returned_sqlstate, PV_DES_ERROR = message_text;
	
START TRANSACTION;
IF TABLA_NOMBRE = 'PERMISOS_TRASLADO' THEN
IF TIPO_OPERACION = 'I' THEN -- INSERT.
	INSERT INTO PERMISOS_TRASLADO (FEC_REG_PTRASLADO, FEC_TRASLADO,COD_PERSONA, DIR_ORIG_PTRASLADO, DIR_DEST_TRASLADO, NOM_TRANSPORTISTA, DNI_TRANSPORTISTA,TEL_TRANSPORTISTA, MAR_VEHICULO, MOD_VEHICULO, MAT_VEHICULO, COL_VEHICULO, MON_TRASLADO)
	VALUES (CURRENT_DATE(), PD_FEC_TRASLADO, PI_COD_PERSONA, PV_DIR_ORIG_PTRASLADO, PV_DIR_DEST_TRASLADO, PV_NOM_TRANSPORTISTA, PV_DNI_TRANSPORTISTA, PV_TEL_TRANSPORTISTA, PV_MAR_VEHICULO, PV_MOD_VEHICULO, PV_MAT_VEHICULO, PV_COL_VEHICULO,PD_MON_TRASLADO);
       SELECT MAX(COD_PTRASLADO) INTO PI_COD_TRASLADO FROM PERMISOS_TRASLADO;
       INSERT INTO DETALLE_TRASLADO (COD_PTRASLADO, COD_FIERRO,CAN_GANADO)
		VALUES (PI_COD_TRASLADO, PI_COD_FIERRO, PI_CAN_GANADO);
	ELSEIF TIPO_OPERACION = 'U' THEN -- UPDATE.
	UPDATE PERMISOS_TRASLADO SET FEC_TRASLADO=PD_FEC_TRASLADO, COD_PERSONA=PI_COD_PERSONA, DIR_ORIG_PTRASLADO=PV_DIR_ORIG_PTRASLADO,DIR_DEST_TRASLADO=PV_DIR_DEST_TRASLADO,NOM_TRANSPORTISTA=PV_NOM_TRANSPORTISTA,DNI_TRANSPORTISTA=PV_DNI_TRANSPORTISTA,TEL_TRANSPORTISTA=PV_TEL_TRANSPORTISTA,MAR_VEHICULO=PV_MAR_VEHICULO,MOD_VEHICULO=PV_MOD_VEHICULO,MAT_VEHICULO=PV_MAT_VEHICULO,COL_VEHICULO=PV_COL_VEHICULO,MON_TRASLADO=PD_MON_TRASLADO WHERE COD_PTRASLADO=PI_COD_PTRASLADO;
ELSEIF TIPO_OPERACION = 'S' THEN -- SELECT ALL.
SELECT * FROM PERMISOS_TRASLADO;
ELSEIF TIPO_OPERACION = 'ST' THEN -- SELECT ONE.
SELECT * FROM PERMISOS_TRASLADO WHERE COD_PTRASLADO=PI_COD_PTRASLADO;
       ELSE 
			SELECT 'Error! Ha ingresado un valor erroneo.' as ADVERTENCIA;
END IF; 
-- FIN DE LA TABLA PERMISOS_TRASLADO

-- TABLA DETALLE_TRASLADO
ELSEIF TABLA_NOMBRE = 'DETALLE_TRASLADO' THEN
IF TIPO_OPERACION = 'I' THEN -- INSERT.
INSERT INTO DETALLE_TRASLADO (COD_PTRASLADO, COD_FIERRO,CAN_GANADO)
VALUES (PI_COD_PTRASLADO, PI_COD_FIERRO, PI_CAN_GANADO);
ELSEIF TIPO_OPERACION = 'U' THEN -- UPDATE.
UPDATE DETALLE_TRASLADO SET COD_PTRASLADO=PI_COD_PTRASLADO,COD_FIERRO=PI_COD_FIERRO, CAN_GANADO=PI_CAN_GANADO WHERE COD_DTRASLADO= PI_COD_DTRASLADO;
ELSEIF TIPO_OPERACION = 'S' THEN -- SELECT ALL.
SELECT * FROM DETALLE_TRASLADO;
ELSEIF TIPO_OPERACION = 'ST' THEN -- SELECT ONE.
SELECT * FROM DETALLE_TRASLADO WHERE COD_DTRASLADO=PI_COD_DTRASLADO;
     ELSE 
		SELECT 'Error! Ha ingresado un valor erroneo.' as ADVERTENCIA;
END IF;
-- FIN TABLA DETALLE_TRASLADO
 IF PV_COD_ERROR IS NOT NULL THEN
				INSERT INTO TBL_ERRORES(COD_ERROR, DES_ERROR, USR_ERROR, FEC_REG_ERROR)
				VALUES(PV_COD_ERROR, PV_DES_ERROR, current_user(), now());
				SELECT PV_DES_ERROR as ERROR;
 END IF;
END IF;
COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_MOD_PERSONA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`soft`@`%` PROCEDURE `SP_MOD_PERSONA`(IN `PV_TABLA_NOMBRE` VARCHAR(100), IN `PV_TIPO_OPERACION` VARCHAR(2), IN `PI_COD_PERSONA` BIGINT, IN `PV_DNI_PERSONA` VARCHAR(15), IN `PV_NOM_PERSONA` VARCHAR(200), IN `PV_GEN_PERSONA` ENUM('M','F'), IN `PD_FEC_NAC_PERSONA` DATE, IN `PV_IMG_PERSONA` VARCHAR(300), IN `PI_COD_DIRECCION` BIGINT, IN `PV_DES_DIRECCION` VARCHAR(200), IN `PV_TIP_DIRECCION` ENUM('DO','TR'), IN `PI_COD_EMAIL` BIGINT, IN `PV_DIR_EMAIL` VARCHAR(20), IN `PI_COD_TELEFONO` BIGINT, IN `PV_NUM_TELEFONO` VARCHAR(18), IN `PV_TIP_TELEFONO` ENUM('FI','MO'), IN `PV_DES_TELEFONO` VARCHAR(200), IN `PV_OPE_TELEFONO` VARCHAR(20), IN `PV_IND_TELEFONO` ENUM('ACTIVO','INACTIVO'))
BEGIN 
    DECLARE PI_COD_DIRECCIONES BIGINT;
    DECLARE PI_COD_TELEFONOS BIGINT;
    DECLARE PI_COD_CORREOS BIGINT;
	DECLARE PV_COD_ERROR VARCHAR(5) DEFAULT NULL;
    DECLARE PV_DES_ERROR VARCHAR(500);
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION GET DIAGNOSTICS CONDITION 1 PV_COD_ERROR = returned_sqlstate, PV_DES_ERROR = message_text;
START TRANSACTION;
	   -- TABLA PERSONAS
       IF PV_TABLA_NOMBRE = 'PERSONAS' THEN
          IF PV_TIPO_OPERACION = 'I' THEN -- INSERT.
          INSERT INTO PERSONAS(DNI_PERSONA, NOM_PERSONA, GEN_PERSONA, FEC_NAC_PERSONA, IMG_PERSONA)
		  VALUES(PV_DNI_PERSONA, PV_NOM_PERSONA, PV_GEN_PERSONA, PD_FEC_NAC_PERSONA, PV_IMG_PERSONA);
          SELECT MAX(COD_PERSONA) INTO PI_COD_DIRECCIONES FROM PERSONAS; 
          INSERT INTO DIRECCIONES (DES_DIRECCION, TIP_DIRECCION, COD_PERSONA)
		  VALUES(PV_DES_DIRECCION, PV_TIP_DIRECCION, PI_COD_DIRECCIONES);
		  SELECT MAX(COD_PERSONA) INTO PI_COD_TELEFONOS FROM PERSONAS;
          INSERT INTO TELEFONOS (NUM_TELEFONO, TIP_TELEFONO, DES_TELEFONO, OPE_TELEFONO, IND_TELEFONO, COD_PERSONA)
          VALUES(PV_NUM_TELEFONO, PV_TIP_TELEFONO, PV_DES_TELEFONO, PV_OPE_TELEFONO, PV_IND_TELEFONO, PI_COD_TELEFONOS);
          SELECT MAX(COD_PERSONA) INTO PI_COD_CORREOS FROM PERSONAS; 
          INSERT INTO EMAILS (DIR_EMAIL, COD_PERSONA)
		  VALUES(PV_DIR_EMAIL, PI_COD_CORREOS);
		  ELSEIF PV_TIPO_OPERACION = 'U' THEN -- UPDATE.
          BEGIN UPDATE PERSONAS SET DNI_PERSONA = PV_DNI_PERSONA, NOM_PERSONA = PV_NOM_PERSONA, GEN_PERSONA = PV_GEN_PERSONA, FEC_NAC_PERSONA = PD_FEC_NAC_PERSONA, 
				IMG_PERSONA = PV_IMG_PERSONA
			WHERE COD_PERSONA = PI_COD_PERSONA;
			UPDATE DIRECCIONES SET DES_DIRECCION = PV_DES_DIRECCION, TIP_DIRECCION = PV_TIP_DIRECCION WHERE COD_DIRECCION = PI_COD_DIRECCION;
			UPDATE TELEFONOS SET NUM_TELEFONO = PV_NUM_TELEFONO, TIP_TELEFONO = PV_TIP_TELEFONO, DES_TELEFONO = PV_DES_TELEFONO, 
				OPE_TELEFONO = PV_OPE_TELEFONO, IND_TELEFONO = PV_IND_TELEFONO WHERE COD_TELEFONO = PI_COD_TELEFONO;
			UPDATE EMAILS SET DIR_EMAIL = PV_DIR_EMAIL WHERE COD_EMAIL = PI_COD_EMAIL;
            END;
		  ELSEIF PV_TIPO_OPERACION = 'D' THEN -- DELETE (Eliminación lógica)
		  BEGIN
		  UPDATE PERSONAS SET ESTADO = 0 WHERE COD_PERSONA = PI_COD_PERSONA;
		  UPDATE DIRECCIONES SET ESTADO = 0 WHERE COD_DIRECCION = PI_COD_DIRECCION;
          UPDATE TELEFONOS SET ESTADO = 0 WHERE COD_TELEFONO = PI_COD_TELEFONO;
          UPDATE EMAILS SET ESTADO = 0 WHERE COD_EMAIL = PI_COD_EMAIL;
		  END;
		  ELSEIF PV_TIPO_OPERACION = 'S' THEN -- SELECT ALL.
		  SELECT * FROM PERSONAS;  
		  ELSEIF PV_TIPO_OPERACION = 'ST' THEN -- SELECT ONE.
		  SELECT * FROM PERSONAS WHERE COD_PERSONA = PI_COD_PERSONA;
          ELSE 
                    SELECT 'Error! Ha ingresado un valor erroneo.' as ERROR;
		END IF;
           IF PV_COD_ERROR IS NOT NULL THEN
				INSERT INTO TBL_ERRORES(COD_ERROR, DES_ERROR, USR_ERROR, FEC_REG_ERROR)
				VALUES(PV_COD_ERROR, PV_DES_ERROR, current_user(), now());
				SELECT PV_DES_ERROR as ERROR;
		END IF;
        -- FIN TABLA PERSONAS
        -- TABLA DIRECCIONES
         ELSEIF PV_TABLA_NOMBRE = 'DIRECCIONES' THEN
			IF PV_TIPO_OPERACION = 'I' THEN -- INSERT.
			INSERT INTO DIRECCIONES(DES_DIRECCION, TIP_DIRECCION, COD_PERSONA) 
			VALUES(PV_DES_DIRECCION, PV_TIP_DIRECCION, PI_COD_PERSONA);
			ELSEIF PV_TIPO_OPERACION = 'U' THEN -- UPDATE.
			UPDATE DIRECCIONES SET DES_DIRECCION = PV_DES_DIRECCION, TIP_DIRECCION = PV_TIP_DIRECCION, COD_PERSONA = PI_COD_PERSONA WHERE COD_DIRECCION = PI_COD_DIRECCION;
            ELSEIF PV_TIPO_OPERACION = 'D' THEN -- DELETE (Eliminación lógica)
            BEGIN
                UPDATE DIRECCIONES SET ESTADO = 0 WHERE COD_DIRECCION = PI_COD_DIRECCION;
            END;
			ELSEIF PV_TIPO_OPERACION = 'S' THEN -- SELECT ALL.
			SELECT * FROM DIRECCIONES;
			ELSEIF PV_TIPO_OPERACION = 'ST' THEN -- SELECT ONE.
			SELECT * FROM DIRECCIONES WHERE COD_DIRECCION = PI_COD_DIRECCION;
			ELSE 
				SELECT 'Error! Ha ingresado un valor erroneo.' as ERROR;
		END IF;
           IF PV_COD_ERROR IS NOT NULL THEN
				INSERT INTO TBL_ERRORES(COD_ERROR, DES_ERROR, USR_ERROR, FEC_REG_ERROR)
				VALUES(PV_COD_ERROR, PV_DES_ERROR, current_user(), now());
				SELECT PV_DES_ERROR as ERROR;
		END IF;
        -- FIN TABLA DIRECCIONES
        -- TABLA TELEFONOS
		  ELSEIF PV_TABLA_NOMBRE = 'TELEFONOS' THEN
			IF PV_TIPO_OPERACION = 'I' THEN -- INSERT.
			INSERT INTO TELEFONOS(NUM_TELEFONO, TIP_TELEFONO, DES_TELEFONO, OPE_TELEFONO, IND_TELEFONO, COD_PERSONA) 
			VALUES(PV_NUM_TELEFONO, PV_TIP_TELEFONO, PV_DES_TELEFONO, PV_OPE_TELEFONO, PV_IND_TELEFONO, PI_COD_PERSONA);
			ELSEIF PV_TIPO_OPERACION = 'U' THEN -- UPDATE.
			UPDATE TELEFONOS SET NUM_TELEFONO = PV_NUM_TELEFONO, TIP_TELEFONO = PV_TIP_TELEFONO, DES_TELEFONO = PV_DES_TELEFONO, 
			OPE_TELEFONO = PV_OPE_TELEFONO, IND_TELEFONO = PV_IND_TELEFONO, COD_PERSONA = PI_COD_PERSONA WHERE COD_TELEFONO = PI_COD_TELEFONO;
            ELSEIF PV_TIPO_OPERACION = 'D' THEN -- DELETE (Eliminación lógica)
            BEGIN
                UPDATE TELEFONOS SET ESTADO = 0 WHERE COD_TELEFONO = PI_COD_TELEFONO;
            END;
			ELSEIF PV_TIPO_OPERACION = 'S' THEN -- SELECT ALL.
			SELECT * FROM TELEFONOS;
			ELSEIF PV_TIPO_OPERACION = 'ST' THEN -- SELECT ONE.
			SELECT * FROM TELEFONOS WHERE COD_TELEFONO = PI_COD_TELEFONO; 
			ELSE 
				SELECT 'Error! Ha ingresado un valor erroneo.' as ERROR;
		END IF;
           IF PV_COD_ERROR IS NOT NULL THEN
				INSERT INTO TBL_ERRORES(COD_ERROR, DES_ERROR, USR_ERROR, FEC_REG_ERROR)
				VALUES(PV_COD_ERROR, PV_DES_ERROR, current_user(), now());
				SELECT PV_DES_ERROR as ERROR;
		END IF;
        -- FIN TABLA TELEFONOS
        -- TABLA EMAILS
		ELSEIF PV_TABLA_NOMBRE = 'EMAILS' THEN
			IF PV_TIPO_OPERACION = 'I' THEN -- INSERT.
			INSERT INTO EMAILS(DIR_EMAIL, COD_PERSONA) 
			VALUES(PV_DIR_EMAIL, PI_COD_PERSONA);
			ELSEIF PV_TIPO_OPERACION = 'U' THEN -- UPDATE.
			UPDATE EMAILS SET DIR_EMAIL = PV_DIR_EMAIL, COD_PERSONA = PI_COD_PERSONA WHERE COD_EMAIL = PI_COD_EMAIL;
            ELSEIF PV_TIPO_OPERACION = 'D' THEN -- DELETE (Eliminación lógica)
            BEGIN
                UPDATE EMAILS SET ESTADO = 0 WHERE COD_EMAIL = PI_COD_EMAIL;
            END;
			ELSEIF PV_TIPO_OPERACION = 'S' THEN -- SELECT ALL.
			SELECT * FROM EMAILS;
			ELSEIF PV_TIPO_OPERACION = 'ST' THEN -- SELECT ONE.
			SELECT * FROM EMAILS WHERE COD_EMAIL = PI_COD_EMAIL;
			ELSE 
				SELECT 'Error! Ha ingresado un valor erroneo.' as ERROR;
		END IF;
           IF PV_COD_ERROR IS NOT NULL THEN
				INSERT INTO TBL_ERRORES(COD_ERROR, DES_ERROR, USR_ERROR, FEC_REG_ERROR)
				VALUES(PV_COD_ERROR, PV_DES_ERROR, current_user(), now());
				SELECT PV_DES_ERROR as ERROR;
		END IF;
        -- FIN TABLA EMAILS
        ELSE 
                    SELECT 'Error! Ha ingresado un valor erroneo.' as ERROR;
       END IF;
COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_MOD_SEGURIDAD` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`soft`@`%` PROCEDURE `SP_MOD_SEGURIDAD`(
	/*
	  Nombre: SP_MOD_SEGURIDAD
	  Descripcion: Procedimiento almacenado que gestiona las tablas del modulo de seguridad.
	  Autor: Juan Samuel Zelaya Reconco - 20081002433.
	  Version: 2.0
	*/
	IN PV_TABLA_NOMBRE VARCHAR(100), 
	IN PV_TIPO_OPERACION VARCHAR(2),
    	-- Parametros para la tabla Roles.
	IN PI_COD_ROL BIGINT,
	IN PV_NOM_ROL VARCHAR(15),
	IN PV_DES_ROL VARCHAR(100),
	-- Parametros para la tabla de usuarios. 
	IN PI_COD_USUARIO BIGINT,  
	IN PI_COD_PERSONA BIGINT,
	IN PV_NOM_USUARIO VARCHAR(40), 
	IN PV_PAS_USUARIO VARCHAR(100),
	IN PV_IND_USUARIO ENUM('ACTIVO','INACTIVO'),
	IN PI_NUM_INTENTOS_FALLIDOS INT,
	IN PD_FEC_VENCIMIENTO DATE,
	-- Parametros para la tabla de preguntas de seguridad.
	IN PI_COD_PREGUNTA BIGINT,
	IN PV_PREGUNTA VARCHAR(200),
    -- Parametros para la tabla de respuestas del usuario.
	IN PV_RESPUESTA VARCHAR(50),
    -- Parametros para la tabla de objetos.
	IN PI_COD_OBJETO BIGINT,
	IN PV_OBJETO VARCHAR(100),
	IN PV_DES_OBJETO VARCHAR(100),
	IN PV_TIP_OBJETO VARCHAR(15),
    -- Parametros para la tabla de permisos.
	IN PI_PRM_INSERTAR ENUM('S','N'),
	IN PI_PRM_ACTUALIZAR ENUM('S','N'),
	IN PI_PRM_CONSULTAR ENUM('S','N'),
    -- Parametros para la tabla de Mantenimiento.
    	IN PI_COD_MANTENIMIENTO BIGINT,
	-- IN FEC_REG_MANTENIMIENTO DATETIME NOT NULL, -- Se usa la funcion "current date()".
	IN PD_FEC_HR_MANTENIMIENTO DATETIME,
	IN PV_TIP_MANTENIMIENTO ENUM('Mantenimiento predictivo', 'Mantenimiento preventivo', 'Mantenimiento correctivo', 'Mantenimiento evolutivo'),
	IN PV_DES_MANTENIMIENTO VARCHAR(100),
	IN PI_MON_MANTENIMIENTO DECIMAL(8,2),
     -- Parametros de la tabla de parametros.
	IN PI_COD_PARAMETRO BIGINT,
	IN PV_PARAMETRO VARCHAR(20),
	IN PV_DES_PARAMETRO VARCHAR(100),
	IN PI_VALOR INT,
	IN PV_USUARIO_CREADOR VARCHAR(40),
	IN PV_USUARIO_MODIFICADOR VARCHAR(40)
    )
BEGIN
    DECLARE PV_CONTRASEÑA VARCHAR(40);
    DECLARE PI_CROL BIGINT DEFAULT NULL;
    DECLARE PI_CUSUARIO BIGINT DEFAULT NULL;
    DECLARE PI_CPREGUNTA BIGINT DEFAULT NULL;
    DECLARE PI_COBJETO BIGINT DEFAULT NULL;
    DECLARE PV_COD_ERROR VARCHAR(5) DEFAULT NULL;
    DECLARE PV_DES_ERROR VARCHAR(500);
    DECLARE PI_INT_PERMITIDOS INT;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION GET DIAGNOSTICS CONDITION 1 PV_COD_ERROR = returned_sqlstate, PV_DES_ERROR = message_text;
	START TRANSACTION;
			SELECT VALOR INTO PI_INT_PERMITIDOS FROM TBL_MS_PARAMETROS WHERE PARAMETRO = 'INT_PERMITIDOS';
			IF PI_INT_PERMITIDOS IS NULL OR PI_INT_PERMITIDOS = 0 THEN
				SET PI_INT_PERMITIDOS := 3;
			END iF;
			-- Tabla de parametros.
			IF PV_TABLA_NOMBRE = 'TBL_MS_PARAMETROS' THEN
				IF PV_TIPO_OPERACION = 'I' THEN -- INSERT.
					INSERT INTO TBL_MS_PARAMETROS(PARAMETRO, DES_PARAMETRO, VALOR, USUARIO_CREADOR, FEC_CREADO) 
					VALUES(PV_PARAMETRO, PV_DES_PARAMETRO, PI_VALOR, PV_USUARIO_CREADOR, NOW());
					IF PV_PARAMETRO = 'INT_PERMITIDOS' THEN
						SELECT VALOR INTO PI_INT_PERMITIDOS FROM TBL_MS_PARAMETROS WHERE PARAMETRO = 'INT_PERMITIDOS';
						UPDATE TBL_MS_USUARIOS SET LIM_INTENTOS = PI_INT_PERMITIDOS;
					END iF;
				ELSEIF PV_TIPO_OPERACION = 'U' THEN -- UPDATE.
					UPDATE TBL_MS_PARAMETROS SET PARAMETRO = PV_PARAMETRO, DES_PARAMETRO = PV_DES_PARAMETRO, VALOR = PI_VALOR, 
					USUARIO_MODIFICADOR = PV_USUARIO_MODIFICADOR, FEC_MODIFICADO = NOW() WHERE COD_PARAMETRO = PI_COD_PARAMETRO;
					IF PV_PARAMETRO = 'INT_PERMITIDOS' THEN
						SELECT VALOR INTO PI_INT_PERMITIDOS FROM TBL_MS_PARAMETROS WHERE PARAMETRO = 'INT_PERMITIDOS';
						UPDATE TBL_MS_USUARIOS SET LIM_INTENTOS = PI_INT_PERMITIDOS;
					END iF;
				ELSEIF PV_TIPO_OPERACION = 'S' THEN -- Consultar todos los registros.
					SELECT * FROM TBL_MS_PARAMETROS;
				ELSEIF PV_TIPO_OPERACION = 'ST' THEN -- Consultar solo un registro.
					SELECT * FROM TBL_MS_PARAMETROS WHERE COD_PARAMETRO = PI_COD_PARAMETRO;
				ELSE 
                    			SELECT 'Favor, ingrese una operación valida.' as ADVERTENCIA;
				END IF;
			-- Fin tabla parametros.
			-- Tabla de roles.
			ELSEIF PV_TABLA_NOMBRE = 'TBL_MS_ROLES' THEN
				IF PV_TIPO_OPERACION = 'I' THEN -- INSERT.
					INSERT INTO TBL_MS_ROLES(NOM_ROL, DES_ROL) 
					VALUES(PV_NOM_ROL, PV_DES_ROL);
				ELSEIF PV_TIPO_OPERACION = 'U' THEN -- UPDATE.
					UPDATE TBL_MS_ROLES SET NOM_ROL = PV_NOM_ROL, DES_ROL = PV_DES_ROL WHERE COD_ROL = PI_COD_ROL;
				ELSEIF PV_TIPO_OPERACION = 'S' THEN -- Consultar todos los registros.
					SELECT * FROM TBL_MS_ROLES;
				ELSEIF PV_TIPO_OPERACION = 'ST' THEN -- Consultar solo un registro.
					SELECT * FROM TBL_MS_ROLES WHERE COD_ROL = PI_COD_ROL;
				ELSE 
                    			SELECT 'Favor, ingrese una operación valida.' as ADVERTENCIA;
				END IF;
			-- Fin tabla roles.
			-- Tabla de objetos
			ELSEIF PV_TABLA_NOMBRE = 'TBL_OBJETOS' THEN
				IF PV_TIPO_OPERACION = 'I' THEN -- INSERT.
					INSERT INTO TBL_OBJETOS(OBJETO, DES_OBJETO, TIP_OBJETO) 
					VALUES(PV_OBJETO, PV_DES_OBJETO, PV_TIP_OBJETO);
				ELSEIF PV_TIPO_OPERACION = 'U' THEN -- UPDATE.
					UPDATE TBL_OBJETOS SET OBJETO = PV_OBJETO, DES_OBJETO = PV_DES_OBJETO, TIP_OBJETO = PV_TIP_OBJETO WHERE COD_OBJETO = PI_COD_OBJETO;
				ELSEIF PV_TIPO_OPERACION = 'S' THEN -- Consultar todos los registros.
					SELECT * FROM TBL_OBJETOS;
				ELSEIF PV_TIPO_OPERACION = 'ST' THEN -- Consultar solo un registro.
					SELECT * FROM TBL_OBJETOS WHERE COD_OBJETO = PI_COD_OBJETO;
				ELSE 
                    SELECT 'Favor, ingrese una operación valida.' as ADVERTENCIA;
				END IF;
			-- Fin tabla de objetos.
			-- Tabla de permisos.
			ELSEIF PV_TABLA_NOMBRE = 'TBL_PERMISOS' THEN
				IF PV_TIPO_OPERACION = 'I' THEN -- INSERT.
					SELECT COD_ROL INTO PI_CROL FROM TBL_MS_ROLES WHERE NOM_ROL = PV_NOM_ROL;
					SELECT COD_OBJETO INTO PI_COBJETO FROM TBL_OBJETOS WHERE OBJETO = PV_OBJETO;
					IF PI_CROL IS NOT NULL AND PI_COBJETO IS NOT NULL THEN
						INSERT INTO TBL_PERMISOS(COD_ROL, COD_OBJETO, PRM_INSERTAR, PRM_ACTUALIZAR, PRM_CONSULTAR) 
						VALUES(PI_CROL,  PI_COBJETO, PI_PRM_INSERTAR, PI_PRM_ACTUALIZAR, PI_PRM_CONSULTAR);
					ELSE
						SELECT 'Favor, ingrese un rol y un objeto validos.' as ADVERTENCIA;
					END IF;
				ELSEIF PV_TIPO_OPERACION = 'U' THEN -- UPDATE.
					UPDATE TBL_PERMISOS SET PRM_INSERTAR = PI_PRM_INSERTAR, PRM_ACTUALIZAR = PI_PRM_ACTUALIZAR, PRM_CONSULTAR = PI_PRM_CONSULTAR WHERE COD_ROL = PI_COD_ROL AND COD_OBJETO = PI_COD_OBJETO;
				ELSEIF PV_TIPO_OPERACION = 'S' THEN -- SELECT ALL.
					SELECT a.COD_ROL, b.NOM_ROL, a.COD_OBJETO, c.OBJETO, a.PRM_INSERTAR, a.PRM_ACTUALIZAR, a.PRM_CONSULTAR FROM TBL_PERMISOS a, TBL_MS_ROLES b, TBL_OBJETOS c WHERE a.COD_ROL = b.COD_ROL AND a.COD_OBJETO = c.COD_OBJETO ORDER BY a.COD_ROL;
				ELSEIF PV_TIPO_OPERACION = 'ST' THEN -- SELECT ONE.
					SELECT a.COD_ROL, b.NOM_ROL, a.COD_OBJETO, c.OBJETO, a.PRM_INSERTAR, a.PRM_ACTUALIZAR, a.PRM_CONSULTAR FROM TBL_PERMISOS a, TBL_MS_ROLES b, TBL_OBJETOS c WHERE a.COD_ROL = b.COD_ROL AND a.COD_OBJETO = c.COD_OBJETO AND a.COD_ROL = PI_COD_ROL AND a.COD_OBJETO = PI_COD_OBJETO;
				ELSE 
                    SELECT 'Favor, ingrese una operación valida.' as ADVERTENCIA;
				END IF;
			-- Fin tabla de permisos.
			-- Tabla de preguntas.
			ELSEIF PV_TABLA_NOMBRE = 'TBL_MS_PREGUNTAS' THEN
				IF PV_TIPO_OPERACION = 'I' THEN -- INSERT.
					INSERT INTO TBL_MS_PREGUNTAS(PREGUNTA) 
					VALUES(PV_PREGUNTA);
				ELSEIF PV_TIPO_OPERACION = 'U' THEN -- UPDATE.
					UPDATE TBL_MS_PREGUNTAS SET PREGUNTA = PV_PREGUNTA WHERE COD_PREGUNTA = PI_COD_PREGUNTA;
				ELSEIF PV_TIPO_OPERACION = 'S' THEN -- SELECT ALL.
					SELECT * FROM TBL_MS_PREGUNTAS;
				ELSEIF PV_TIPO_OPERACION = 'ST' THEN -- SELECT ONE.
					SELECT * FROM TBL_MS_PREGUNTAS WHERE COD_PREGUNTA = PI_COD_PREGUNTA;
				ELSE 
                   SELECT 'Favor, ingrese una operación valida.' as ADVERTENCIA;
				END IF;
			-- Fin tabla de preguntas.
			-- Tabla de usuarios.
			ELSEIF PV_TABLA_NOMBRE = 'TBL_MS_USUARIOS' THEN
				IF PV_TIPO_OPERACION = 'I' THEN -- INSERT.
					SELECT COD_ROL INTO PI_CROL FROM TBL_MS_ROLES WHERE NOM_ROL = PV_NOM_ROL;
                    IF PI_CROL IS NOT NULL THEN
						INSERT INTO TBL_MS_USUARIOS(COD_PERSONA, NOM_USUARIO, PAS_USUARIO, COD_ROL, IND_USUARIO, FEC_ULTIMO_ACCESO, LIM_INTENTOS, NUM_INTENTOS_FALLIDOS, FEC_VENCIMIENTO) 
						VALUES(PI_COD_PERSONA, PV_NOM_USUARIO, sha1(PV_PAS_USUARIO), PI_CROL, PV_IND_USUARIO, '1999-01-01 00:00:00', PI_INT_PERMITIDOS, 0, DATE_SUB(CURRENT_DATE(), INTERVAL 1 DAY));
		    ELSE
                        SELECT 'Favor, ingrese un rol valido.' as ADVERTENCIA;
                    END IF;
				ELSEIF PV_TIPO_OPERACION = 'U' THEN -- UPDATE.
					SELECT COD_ROL INTO PI_CROL FROM TBL_MS_ROLES WHERE NOM_ROL = PV_NOM_ROL;
                    IF PI_CROL IS NOT NULL THEN
						UPDATE TBL_MS_USUARIOS SET NOM_USUARIO = PV_NOM_USUARIO, COD_ROL = PI_CROL, IND_USUARIO = PV_IND_USUARIO, FEC_VENCIMIENTO = PD_FEC_VENCIMIENTO WHERE COD_USUARIO = PI_COD_USUARIO;
							IF PV_IND_USUARIO = 'ACTIVO' THEN
								UPDATE TBL_MS_USUARIOS SET NUM_INTENTOS_FALLIDOS = 0 WHERE COD_USUARIO = PI_COD_USUARIO;
							END IF;
					ELSE
                        SELECT 'Favor, ingrese un rol valido.' as ADVERTENCIA;
                    END IF;
				ELSEIF PV_TIPO_OPERACION = 'C' THEN -- UPDATE CONTRASEÑA.
                -- Se guarda la contraseña actual en la variable "PV_CONTRASEÑA" por medio de un "SELECT INTO".
					SELECT PAS_USUARIO INTO PV_CONTRASEÑA FROM TBL_MS_USUARIOS WHERE COD_USUARIO = PI_COD_USUARIO;
					IF PV_PAS_USUARIO <> '' AND PV_CONTRASEÑA <> sha1(PV_PAS_USUARIO) THEN
						UPDATE TBL_MS_USUARIOS SET PAS_USUARIO = sha1(PV_PAS_USUARIO) WHERE COD_USUARIO = PI_COD_USUARIO;
						-- Se actualiza la fecha de vencimiento de la nueva contraseña.
						UPDATE TBL_MS_USUARIOS SET FEC_VENCIMIENTO = date_add(current_date(), interval 90 day) WHERE COD_USUARIO = PI_COD_USUARIO;
						-- Se registra el cambio al historial de contraseñas de los usuarios.
						INSERT INTO TBL_MS_HIST_CONTRASEÑA(COD_USUARIO, PAS_USUARIO, FEC_REG_CAMBIO)
						VALUES(PI_COD_USUARIO, PV_CONTRASEÑA, NOW());
					ELSE
						SELECT 'Favor, ingrese una contraseña y que esta sea diferente a la anterior.' as ADVERTENCIA;
					END iF;
				ELSEIF PV_TIPO_OPERACION = 'S' THEN -- SELECT ALL.
					SELECT a.COD_USUARIO, a.NOM_USUARIO, b.NOM_PERSONA as NOMBRE_USUARIO, c.NOM_ROL, a.IND_USUARIO, a.FEC_ULTIMO_ACCESO, 
                    a.LIM_INTENTOS, a.NUM_INTENTOS_FALLIDOS, a.FEC_VENCIMIENTO FROM TBL_MS_USUARIOS a, PERSONAS  b, TBL_MS_ROLES c 
                    WHERE a.COD_PERSONA = b.COD_PERSONA AND a.COD_ROL = c.COD_ROL ORDER BY COD_USUARIO;
				ELSEIF PV_TIPO_OPERACION = 'ST' THEN -- SELECT ONE.
					SELECT a.COD_USUARIO, a.NOM_USUARIO, b.NOM_PERSONA as NOMBRE_USUARIO, c.NOM_ROL, a.IND_USUARIO, a.FEC_ULTIMO_ACCESO, 
                    a.LIM_INTENTOS, a.NUM_INTENTOS_FALLIDOS, a.FEC_VENCIMIENTO FROM TBL_MS_USUARIOS a, PERSONAS  b, TBL_MS_ROLES c 
                    WHERE a.COD_PERSONA = b.COD_PERSONA AND a.COD_ROL = c.COD_ROL AND a.COD_USUARIO = PI_COD_USUARIO;
                ELSEIF PV_TIPO_OPERACION = 'F' THEN -- Intentos fallidos.
                	UPDATE TBL_MS_USUARIOS SET NUM_INTENTOS_FALLIDOS = PI_NUM_INTENTOS_FALLIDOS WHERE COD_USUARIO = PI_COD_USUARIO;
                    IF PI_NUM_INTENTOS_FALLIDOS >= PI_INT_PERMITIDOS THEN
                    	UPDATE TBL_MS_USUARIOS SET IND_USUARIO = 'INACTIVO' WHERE COD_USUARIO = PI_COD_USUARIO;
                    END IF;
				ELSEIF PV_TIPO_OPERACION = 'A' THEN -- Almacena la fecha de acceso.
                			UPDATE TBL_MS_USUARIOS SET FEC_ULTIMO_ACCESO = now() WHERE COD_USUARIO = PI_COD_USUARIO;
				ELSE
					SELECT 'Favor, ingrese una operación valida.' as ADVERTENCIA;
				END IF;
			-- Fin tabla de usuarios.
			-- Tabla de preguntas almacenadas por los usuarios.
			ELSEIF PV_TABLA_NOMBRE = 'TBL_MS_PREGUNTAS_USUARIO' THEN
				IF PV_TIPO_OPERACION = 'I' THEN -- INSERT.
					SELECT COD_PREGUNTA INTO PI_CPREGUNTA FROM TBL_MS_PREGUNTAS WHERE PREGUNTA = PV_PREGUNTA;
					IF PI_CPREGUNTA IS NOT NULL THEN
						 INSERT INTO TBL_MS_PREGUNTAS_USUARIO(COD_USUARIO, COD_PREGUNTA, RESPUESTA)
						 VALUES(PI_COD_USUARIO, PI_CPREGUNTA, sha1(PV_RESPUESTA));
					ELSE
						SELECT 'Favor, ingrese una pregunta almacenada en la base de datos.' as ADVERTENCIA;
					END IF;
				ELSEIF PV_TIPO_OPERACION = 'U' THEN -- UPDATE.
					SELECT COD_PREGUNTA INTO PI_CPREGUNTA FROM TBL_MS_PREGUNTAS WHERE PREGUNTA = PV_PREGUNTA;
					IF PI_CPREGUNTA IS NOT NULL THEN
						 UPDATE TBL_MS_PREGUNTAS_USUARIO SET COD_PREGUNTA = PI_CPREGUNTA, RESPUESTA = sha1(PV_RESPUESTA) WHERE COD_USUARIO = PI_COD_USUARIO;
					ELSE
						SELECT 'Favor, ingrese una pregunta almacenada en la base de datos.' as ADVERTENCIA;
					END IF;
				ELSEIF PV_TIPO_OPERACION = 'ST' THEN -- SELECT ONE.
					SELECT * FROM TBL_MS_PREGUNTAS_USUARIO WHERE COD_USUARIO = PI_COD_USUARIO;
				ELSE 
					SELECT 'Favor, ingrese una operación valida.' as ADVERTENCIA;
				END IF;
			-- Fin tabla de preguntas almacenadas por los usuarios.
			-- Tabla de mantenimientos.
			ELSEIF PV_TABLA_NOMBRE = 'TBL_MANTENIMIENTOS' THEN
				IF PV_TIPO_OPERACION = 'I' THEN -- INSERT.
					INSERT INTO TBL_MANTENIMIENTOS(FEC_REG_MANTENIMIENTO, FEC_HR_MANTENIMIENTO, TIP_MANTENIMIENTO, DES_MANTENIMIENTO, COD_USUARIO, MON_MANTENIMIENTO) 
					VALUES(NOW(), PD_FEC_HR_MANTENIMIENTO, PV_TIP_MANTENIMIENTO, PV_DES_MANTENIMIENTO, PI_COD_USUARIO, PI_MON_MANTENIMIENTO);
				ELSEIF PV_TIPO_OPERACION = 'U' THEN -- UPDATE.
					UPDATE TBL_MANTENIMIENTOS SET FEC_HR_MANTENIMIENTO = PD_FEC_HR_MANTENIMIENTO, TIP_MANTENIMIENTO = PV_TIP_MANTENIMIENTO, DES_MANTENIMIENTO = PV_DES_MANTENIMIENTO, COD_USUARIO = PI_COD_USUARIO, MON_MANTENIMIENTO = PI_MON_MANTENIMIENTO WHERE COD_MANTENIMIENTO = PI_COD_MANTENIMIENTO;
				ELSEIF PV_TIPO_OPERACION = 'S' THEN -- SELECT ALL.
					SELECT a.COD_MANTENIMIENTO, a.FEC_REG_MANTENIMIENTO, a.FEC_HR_MANTENIMIENTO, a.TIP_MANTENIMIENTO, a.DES_MANTENIMIENTO, a.COD_USUARIO, c.NOM_PERSONA as NOMBRE_USUARIO, a.MON_MANTENIMIENTO FROM TBL_MANTENIMIENTOS a, TBL_MS_USUARIOS b, PERSONAS c WHERE a.COD_USUARIO = b.COD_USUARIO AND b.COD_PERSONA = c.COD_PERSONA;
				ELSEIF PV_TIPO_OPERACION = 'ST' THEN -- SELECT ONE.
					SELECT a.COD_MANTENIMIENTO, a.FEC_REG_MANTENIMIENTO, a.FEC_HR_MANTENIMIENTO, a.TIP_MANTENIMIENTO, a.DES_MANTENIMIENTO, a.COD_USUARIO, c.NOM_PERSONA as NOMBRE_USUARIO, a.MON_MANTENIMIENTO FROM TBL_MANTENIMIENTOS a, TBL_MS_USUARIOS b, PERSONAS c WHERE a.COD_USUARIO = b.COD_USUARIO AND b.COD_PERSONA = c.COD_PERSONA AND a.COD_MANTENIMIENTO = PI_COD_MANTENIMIENTO;
				ELSE 
					SELECT 'Favor, ingrese una operación valida.' as ADVERTENCIA;
				END IF;
			-- Fin tabla de mantenimientos.
            ELSE
				SELECT 'Favor, ingrese el nombre de la tabla perteneciente a esta base de datos.' as ADVERTENCIA;
			END IF;
            IF PV_COD_ERROR IS NOT NULL THEN
				INSERT INTO TBL_ERRORES(COD_ERROR, DES_ERROR, USR_ERROR, FEC_REG_ERROR)
				VALUES(PV_COD_ERROR, PV_DES_ERROR, current_user(), now());
				SELECT PV_DES_ERROR as ERROR;
			END IF;
	COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-25 13:08:05