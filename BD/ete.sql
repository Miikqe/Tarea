-- MySQL dump 10.16  Distrib 10.1.34-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: ETE
-- ------------------------------------------------------
-- Server version	10.1.34-MariaDB

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
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alumnos` (
  `NCuenta` int(9) NOT NULL,
  `ApPaterno` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ApMaterno` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Nombre` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ETEClave` int(2) DEFAULT NULL,
  PRIMARY KEY (`NCuenta`),
  KEY `ETEClave` (`ETEClave`),
  CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`ETEClave`) REFERENCES `ete` (`ETEClave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
INSERT INTO `alumnos` VALUES (316353251,'López','Díaz','Anna',8),(316521919,'Iglesias','Santos','Iván',1),(317009457,'Aguilar','Flores','Luis',9),(317454212,'Navarro','Ramírez','Jimena',8),(317492018,'León','Vidal','Juan Manuel',4),(317664227,'Hernández','Sánchez','Juan',11),(318153231,'Fernández','García','Isabela',10),(318154247,'Gutiérrez','Maldonado','Andrés',6),(318325979,'Márquez','Castillo','Daniel',2),(318356613,'Malagón','Gasca','Miguel',3);
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ete`
--

DROP TABLE IF EXISTS `ete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ete` (
  `ETEClave` int(2) NOT NULL,
  `ETENomb` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Duracion` int(1) DEFAULT NULL,
  `Asignaturas` int(2) DEFAULT NULL,
  PRIMARY KEY (`ETEClave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ete`
--

LOCK TABLES `ete` WRITE;
/*!40000 ALTER TABLE `ete` DISABLE KEYS */;
INSERT INTO `ete` VALUES (1,'AGENCIA DE VIAJES Y HOTELERÍA',2,11),(2,'AUXILIAR BANCARIO',1,6),(3,'COMPUTACIÓN',2,10),(4,'AUXILIAR EN CONTABILIDAD',1,5),(5,'AUXILIAR EN DIBUJO ARQUITECTÓNICO',1,6),(6,'ENSEÑANZA DE INGLÉS',1,5),(7,'AUXILIAR FOTÓGRAFO LABORATORISTA Y PRENS',1,5),(8,'HISTOPATOLOGÍA',1,6),(9,'AUXILIAR LABORATORISTA QUÍMICO',1,6),(10,'AUXILIAR MUSEÓGRAFO RESTAURADOR',1,4),(11,'AUXILIAR NUTRIÓLOGO',1,6);
/*!40000 ALTER TABLE `ete` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-21 10:38:23
