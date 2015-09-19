CREATE DATABASE  IF NOT EXISTS `coletadados` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `coletadados`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: coletadados
-- ------------------------------------------------------
-- Server version	5.6.21

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
-- Table structure for table `alteracoes_abdome`
--

DROP TABLE IF EXISTS `alteracoes_abdome`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alteracoes_abdome` (
  `idalteracoes_abdome` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `alteracoes_abdome_tab` int(11) DEFAULT NULL,
  `alteracoes_abdome_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idalteracoes_abdome`),
  UNIQUE KEY `idalteracoes_abdome_UNIQUE` (`idalteracoes_abdome`),
  KEY `ateracoes_abdome_idx` (`prontuario`),
  CONSTRAINT `fk_prontuario2` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alteracoes_abdome`
--

LOCK TABLES `alteracoes_abdome` WRITE;
/*!40000 ALTER TABLE `alteracoes_abdome` DISABLE KEYS */;
/*!40000 ALTER TABLE `alteracoes_abdome` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alteracoes_mobilidade`
--

DROP TABLE IF EXISTS `alteracoes_mobilidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alteracoes_mobilidade` (
  `idalteracoes_mobilidade` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `alteracoes_mobilidade_tab` int(11) DEFAULT NULL,
  `alteracoes_mobilidade_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idalteracoes_mobilidade`),
  UNIQUE KEY `idalteracoes_mobilidade_UNIQUE` (`idalteracoes_mobilidade`),
  KEY `alteracoes_mobilidade_idx` (`prontuario`),
  CONSTRAINT `fk_prontuario1` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alteracoes_mobilidade`
--

LOCK TABLES `alteracoes_mobilidade` WRITE;
/*!40000 ALTER TABLE `alteracoes_mobilidade` DISABLE KEYS */;
/*!40000 ALTER TABLE `alteracoes_mobilidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bordas`
--

DROP TABLE IF EXISTS `bordas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bordas` (
  `idbordas` int(11) NOT NULL AUTO_INCREMENT,
  `lesao` int(11) DEFAULT NULL,
  `bordas_tab` int(11) DEFAULT NULL,
  `bordas_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idbordas`),
  UNIQUE KEY `idbordas_UNIQUE` (`idbordas`),
  KEY `bordas_idx` (`lesao`),
  CONSTRAINT `fk_lesao3` FOREIGN KEY (`lesao`) REFERENCES `lesao` (`idlesao`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bordas`
--

LOCK TABLES `bordas` WRITE;
/*!40000 ALTER TABLE `bordas` DISABLE KEYS */;
/*!40000 ALTER TABLE `bordas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd1_dom11_classe2`
--

DROP TABLE IF EXISTS `cd1_dom11_classe2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd1_dom11_classe2` (
  `idcd1_dom11_classe2` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `cd1_dom11_classe2_tab` int(11) DEFAULT NULL,
  `cd1_dom11_classe2_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcd1_dom11_classe2`),
  UNIQUE KEY `idcd1_dom11_classe2_UNIQUE` (`idcd1_dom11_classe2`),
  KEY `cd1_dom11_classe2_idx` (`prontuario`),
  CONSTRAINT `fk_prontuario4` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd1_dom11_classe2`
--

LOCK TABLES `cd1_dom11_classe2` WRITE;
/*!40000 ALTER TABLE `cd1_dom11_classe2` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd1_dom11_classe2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd1_dom11_classe6`
--

DROP TABLE IF EXISTS `cd1_dom11_classe6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd1_dom11_classe6` (
  `idcd1_dom11_classe6` int(11) NOT NULL,
  `prontuario` int(11) DEFAULT NULL,
  `cd1_dom11_classe6_tab` int(11) DEFAULT NULL,
  `cd1_dom11_classe6_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcd1_dom11_classe6`),
  UNIQUE KEY `idcd1_dom11_classe6_UNIQUE` (`idcd1_dom11_classe6`),
  KEY `cd1_dom11_classe6_idx` (`prontuario`),
  CONSTRAINT `fk_prontuario5` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd1_dom11_classe6`
--

LOCK TABLES `cd1_dom11_classe6` WRITE;
/*!40000 ALTER TABLE `cd1_dom11_classe6` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd1_dom11_classe6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd1_dom12_classe1`
--

DROP TABLE IF EXISTS `cd1_dom12_classe1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd1_dom12_classe1` (
  `idcd1_dom12_classe1` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `cd1_dom12_classe1_tab` int(11) DEFAULT NULL,
  `cd1_dom12_classe1_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcd1_dom12_classe1`),
  UNIQUE KEY `idcd1_dom12_classe1_UNIQUE` (`idcd1_dom12_classe1`),
  KEY `cd1_dom12_classe1` (`prontuario`),
  CONSTRAINT `fk_prontuario6` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd1_dom12_classe1`
--

LOCK TABLES `cd1_dom12_classe1` WRITE;
/*!40000 ALTER TABLE `cd1_dom12_classe1` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd1_dom12_classe1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd1_dom1_classe2`
--

DROP TABLE IF EXISTS `cd1_dom1_classe2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd1_dom1_classe2` (
  `idcd1_dom1_classe2` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `cd1_dom1_classe2_tab` int(11) DEFAULT NULL,
  `cd1_dom1_classe2_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcd1_dom1_classe2`),
  UNIQUE KEY `idcd1_dom1_classe2_UNIQUE` (`idcd1_dom1_classe2`),
  KEY `cd1_dom1_classe2_idx` (`prontuario`),
  CONSTRAINT `fk_prontuario7` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd1_dom1_classe2`
--

LOCK TABLES `cd1_dom1_classe2` WRITE;
/*!40000 ALTER TABLE `cd1_dom1_classe2` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd1_dom1_classe2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd1_dom2_classe1`
--

DROP TABLE IF EXISTS `cd1_dom2_classe1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd1_dom2_classe1` (
  `idcd1_dom2_classe1` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `cd1_dom2_classe1_tab` int(11) DEFAULT NULL,
  `cd1_dom2_classe1_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcd1_dom2_classe1`),
  UNIQUE KEY `idcd1_dom2_classe1_UNIQUE` (`idcd1_dom2_classe1`),
  KEY `cd1_dom2_classe1_idx` (`prontuario`),
  CONSTRAINT `fk_prontuario8` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd1_dom2_classe1`
--

LOCK TABLES `cd1_dom2_classe1` WRITE;
/*!40000 ALTER TABLE `cd1_dom2_classe1` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd1_dom2_classe1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd1_dom3_classe2`
--

DROP TABLE IF EXISTS `cd1_dom3_classe2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd1_dom3_classe2` (
  `idcd1_dom3_classe2` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `cd1_dom3_classe2_tab` int(11) DEFAULT NULL,
  `cd1_dom3_classe2_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcd1_dom3_classe2`),
  UNIQUE KEY `idcd1_dom3_classe2_UNIQUE` (`idcd1_dom3_classe2`),
  KEY `cd1_dom3_classe2` (`prontuario`),
  CONSTRAINT `fk_prontuario9` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd1_dom3_classe2`
--

LOCK TABLES `cd1_dom3_classe2` WRITE;
/*!40000 ALTER TABLE `cd1_dom3_classe2` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd1_dom3_classe2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd1_dom4_classe2`
--

DROP TABLE IF EXISTS `cd1_dom4_classe2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd1_dom4_classe2` (
  `idcd1_dom4_classe2` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `cd1_dom4_classe2_tab` int(11) DEFAULT NULL,
  `cd1_dom4_classe2_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcd1_dom4_classe2`),
  UNIQUE KEY `idcd1_dom4_classe2_UNIQUE` (`idcd1_dom4_classe2`),
  KEY `cd1_dom4_classe2_idx` (`prontuario`),
  CONSTRAINT `fk_prontuario10` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd1_dom4_classe2`
--

LOCK TABLES `cd1_dom4_classe2` WRITE;
/*!40000 ALTER TABLE `cd1_dom4_classe2` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd1_dom4_classe2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd1_dom4_classe4`
--

DROP TABLE IF EXISTS `cd1_dom4_classe4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd1_dom4_classe4` (
  `idcd1_dom4_classe4` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `cd1_dom4_classe4_tab` int(11) DEFAULT NULL,
  `cd1_dom4_classe4_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcd1_dom4_classe4`),
  UNIQUE KEY `idcd1_dom4_classe4_UNIQUE` (`idcd1_dom4_classe4`),
  KEY `cd1_dom4_classe4_idx` (`prontuario`),
  CONSTRAINT `fk_prontuario12` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd1_dom4_classe4`
--

LOCK TABLES `cd1_dom4_classe4` WRITE;
/*!40000 ALTER TABLE `cd1_dom4_classe4` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd1_dom4_classe4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd1_dom4_classe5`
--

DROP TABLE IF EXISTS `cd1_dom4_classe5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd1_dom4_classe5` (
  `idcd1_dom4_classe5` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `cd1_dom4_classe5_tab` int(11) DEFAULT NULL,
  `cd1_dom4_classe5_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcd1_dom4_classe5`),
  UNIQUE KEY `idcd1_dom4_classe5_UNIQUE` (`idcd1_dom4_classe5`),
  KEY `cd1_dom4_classe5` (`prontuario`),
  CONSTRAINT `fk_prontuario13` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd1_dom4_classe5`
--

LOCK TABLES `cd1_dom4_classe5` WRITE;
/*!40000 ALTER TABLE `cd1_dom4_classe5` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd1_dom4_classe5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd1_dom9_classe2`
--

DROP TABLE IF EXISTS `cd1_dom9_classe2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd1_dom9_classe2` (
  `idcd1_dom9_classe2` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `cd1_dom9_classe2_tab` int(11) DEFAULT NULL,
  `cd1_dom9_classe2_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcd1_dom9_classe2`),
  UNIQUE KEY `idcd1_dom9_classe2_UNIQUE` (`idcd1_dom9_classe2`),
  KEY `cd1_dom9_classe2_idx` (`prontuario`),
  CONSTRAINT `fk_prontuario14` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd1_dom9_classe2`
--

LOCK TABLES `cd1_dom9_classe2` WRITE;
/*!40000 ALTER TABLE `cd1_dom9_classe2` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd1_dom9_classe2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd2_dom11_classe2`
--

DROP TABLE IF EXISTS `cd2_dom11_classe2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd2_dom11_classe2` (
  `idcd2_dom11_classe2` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `cd2_dom11_classe2_tab` int(11) DEFAULT NULL,
  `cd2_dom11_classe2_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcd2_dom11_classe2`),
  UNIQUE KEY `idcd2_dom11_classe2_UNIQUE` (`idcd2_dom11_classe2`),
  KEY `cd2_dom11_classe2_idx` (`prontuario`),
  CONSTRAINT `fk_prontuario15` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd2_dom11_classe2`
--

LOCK TABLES `cd2_dom11_classe2` WRITE;
/*!40000 ALTER TABLE `cd2_dom11_classe2` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd2_dom11_classe2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd2_dom11_classe6`
--

DROP TABLE IF EXISTS `cd2_dom11_classe6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd2_dom11_classe6` (
  `idcd2_dom11_classe6` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `cd2_dom11_classe6_tab` int(11) DEFAULT NULL,
  `cd2_dom11_classe6_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcd2_dom11_classe6`),
  UNIQUE KEY `idcd2_dom11_classe6_UNIQUE` (`idcd2_dom11_classe6`),
  KEY `cd2_dom11_classe6_idx` (`prontuario`),
  CONSTRAINT `fk_prontuario16` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd2_dom11_classe6`
--

LOCK TABLES `cd2_dom11_classe6` WRITE;
/*!40000 ALTER TABLE `cd2_dom11_classe6` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd2_dom11_classe6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd2_dom12_classe1`
--

DROP TABLE IF EXISTS `cd2_dom12_classe1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd2_dom12_classe1` (
  `idcd2_dom12_classe1` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `cd2_dom12_classe1_tab` int(11) DEFAULT NULL,
  `cd2_dom12_classe1_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcd2_dom12_classe1`),
  UNIQUE KEY `idcd2_dom12_classe1_UNIQUE` (`idcd2_dom12_classe1`),
  KEY `cd2_dom12_classe1_idx` (`prontuario`),
  CONSTRAINT `fk_prontuario17` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd2_dom12_classe1`
--

LOCK TABLES `cd2_dom12_classe1` WRITE;
/*!40000 ALTER TABLE `cd2_dom12_classe1` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd2_dom12_classe1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd2_dom1_classe2`
--

DROP TABLE IF EXISTS `cd2_dom1_classe2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd2_dom1_classe2` (
  `idcd2_dom1_classe2` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `cd2_dom1_classe2_tab` int(11) DEFAULT NULL,
  `cd2_dom1_classe2_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcd2_dom1_classe2`),
  UNIQUE KEY `idcd2_dom1_classe2_UNIQUE` (`idcd2_dom1_classe2`),
  KEY `cd2_dom1_classe2_idx` (`prontuario`),
  CONSTRAINT `fk_prontuario18` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd2_dom1_classe2`
--

LOCK TABLES `cd2_dom1_classe2` WRITE;
/*!40000 ALTER TABLE `cd2_dom1_classe2` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd2_dom1_classe2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd2_dom3_classe2`
--

DROP TABLE IF EXISTS `cd2_dom3_classe2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd2_dom3_classe2` (
  `idcd2_dom3_classe2` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `cd2_dom3_classe2_tab` int(11) DEFAULT NULL,
  `cd2_dom3_classe2_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcd2_dom3_classe2`),
  UNIQUE KEY `idcd2_dom3_classe2_UNIQUE` (`idcd2_dom3_classe2`),
  KEY `cd2_dom3_classe2` (`prontuario`),
  CONSTRAINT `fk_prontuario19` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd2_dom3_classe2`
--

LOCK TABLES `cd2_dom3_classe2` WRITE;
/*!40000 ALTER TABLE `cd2_dom3_classe2` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd2_dom3_classe2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coloracao_pele`
--

DROP TABLE IF EXISTS `coloracao_pele`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coloracao_pele` (
  `idcoloracao_pele` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `coloracao_pele_tab` int(11) DEFAULT NULL,
  `coloracao_pele_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcoloracao_pele`),
  UNIQUE KEY `idcoloracao_pele_UNIQUE` (`idcoloracao_pele`),
  KEY `coloracao_pele_idx` (`prontuario`),
  CONSTRAINT `fk_prontuario20` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coloracao_pele`
--

LOCK TABLES `coloracao_pele` WRITE;
/*!40000 ALTER TABLE `coloracao_pele` DISABLE KEYS */;
/*!40000 ALTER TABLE `coloracao_pele` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exsudato`
--

DROP TABLE IF EXISTS `exsudato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exsudato` (
  `idexsudato` int(11) NOT NULL AUTO_INCREMENT,
  `lesao` int(11) DEFAULT NULL,
  `exsudato_tab` int(11) DEFAULT NULL,
  `exsudato_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idexsudato`),
  UNIQUE KEY `idexsudato_UNIQUE` (`idexsudato`),
  KEY `exsudato_idx` (`lesao`),
  CONSTRAINT `fk_lesao1` FOREIGN KEY (`lesao`) REFERENCES `lesao` (`idlesao`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exsudato`
--

LOCK TABLES `exsudato` WRITE;
/*!40000 ALTER TABLE `exsudato` DISABLE KEYS */;
/*!40000 ALTER TABLE `exsudato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fr1_dom11_classe1`
--

DROP TABLE IF EXISTS `fr1_dom11_classe1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fr1_dom11_classe1` (
  `idfr1_dom11_classe1` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `fr1_dom11_classe1_tab` int(11) DEFAULT NULL,
  `fr1_dom11_classe1_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idfr1_dom11_classe1`),
  UNIQUE KEY `idfr1_dom11_classe1_UNIQUE` (`idfr1_dom11_classe1`),
  KEY `fr1_dom11_classe1_idx` (`prontuario`),
  CONSTRAINT `fk_prontuario22` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fr1_dom11_classe1`
--

LOCK TABLES `fr1_dom11_classe1` WRITE;
/*!40000 ALTER TABLE `fr1_dom11_classe1` DISABLE KEYS */;
/*!40000 ALTER TABLE `fr1_dom11_classe1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fr1_dom11_classe2`
--

DROP TABLE IF EXISTS `fr1_dom11_classe2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fr1_dom11_classe2` (
  `idfr1_dom11_classe2` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `fr1_dom11_classe2_tab` int(11) DEFAULT NULL,
  `fr1_dom11_classe2_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idfr1_dom11_classe2`),
  UNIQUE KEY `idfr1_dom11_classe2_UNIQUE` (`idfr1_dom11_classe2`),
  KEY `fr1_dom11_classe2_idx` (`prontuario`),
  CONSTRAINT `fk_pontuario23` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fr1_dom11_classe2`
--

LOCK TABLES `fr1_dom11_classe2` WRITE;
/*!40000 ALTER TABLE `fr1_dom11_classe2` DISABLE KEYS */;
/*!40000 ALTER TABLE `fr1_dom11_classe2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fr1_dom11_classe6`
--

DROP TABLE IF EXISTS `fr1_dom11_classe6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fr1_dom11_classe6` (
  `idfr1_dom11_classe6` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `fr1_dom11_classe6_tab` int(11) DEFAULT NULL,
  `fr1_dom11_classe6_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idfr1_dom11_classe6`),
  UNIQUE KEY `idfr1_dom11_classe6_UNIQUE` (`idfr1_dom11_classe6`),
  KEY `fr1_dom11_classe6_idx` (`prontuario`),
  CONSTRAINT `fk_prontuario24` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fr1_dom11_classe6`
--

LOCK TABLES `fr1_dom11_classe6` WRITE;
/*!40000 ALTER TABLE `fr1_dom11_classe6` DISABLE KEYS */;
/*!40000 ALTER TABLE `fr1_dom11_classe6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fr1_dom12_classe1`
--

DROP TABLE IF EXISTS `fr1_dom12_classe1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fr1_dom12_classe1` (
  `idfr1_dom12_classe1` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `fr1_dom12_classe1_tab` int(11) DEFAULT NULL,
  `fr1_dom12_classe1_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idfr1_dom12_classe1`),
  UNIQUE KEY `idfr1_dom12_classe1_UNIQUE` (`idfr1_dom12_classe1`),
  KEY `fr1_dom12_classe1_idx` (`prontuario`),
  CONSTRAINT `fk_prontuario25` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fr1_dom12_classe1`
--

LOCK TABLES `fr1_dom12_classe1` WRITE;
/*!40000 ALTER TABLE `fr1_dom12_classe1` DISABLE KEYS */;
/*!40000 ALTER TABLE `fr1_dom12_classe1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fr1_dom1_classe2`
--

DROP TABLE IF EXISTS `fr1_dom1_classe2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fr1_dom1_classe2` (
  `idfr1_dom1_classe2` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `fr1_dom1_classe2_tab` int(11) DEFAULT NULL,
  `fr1_dom1_classe2_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idfr1_dom1_classe2`),
  UNIQUE KEY `idfr1_dom1_classe2_UNIQUE` (`idfr1_dom1_classe2`),
  KEY `fr1_dom1_classe2_idx` (`prontuario`),
  CONSTRAINT `fk_prontuario26` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fr1_dom1_classe2`
--

LOCK TABLES `fr1_dom1_classe2` WRITE;
/*!40000 ALTER TABLE `fr1_dom1_classe2` DISABLE KEYS */;
/*!40000 ALTER TABLE `fr1_dom1_classe2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fr1_dom2_classe1`
--

DROP TABLE IF EXISTS `fr1_dom2_classe1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fr1_dom2_classe1` (
  `idfr1_dom2_classe1` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `fr1_dom2_classe1_tab` int(11) DEFAULT NULL,
  `fr1_dom2_classe1_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idfr1_dom2_classe1`),
  UNIQUE KEY `idfr1_dom2_classe1_UNIQUE` (`idfr1_dom2_classe1`),
  KEY `fr1_dom2_classe1_idx` (`prontuario`),
  CONSTRAINT `fk_prontuario27` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fr1_dom2_classe1`
--

LOCK TABLES `fr1_dom2_classe1` WRITE;
/*!40000 ALTER TABLE `fr1_dom2_classe1` DISABLE KEYS */;
/*!40000 ALTER TABLE `fr1_dom2_classe1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fr1_dom2_classe4`
--

DROP TABLE IF EXISTS `fr1_dom2_classe4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fr1_dom2_classe4` (
  `idfr1_dom2_classe4` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `fr1_dom2_classe4_tab` int(11) DEFAULT NULL,
  `fr1_dom2_classe4_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idfr1_dom2_classe4`),
  UNIQUE KEY `idfr1_dom2_classe4_UNIQUE` (`idfr1_dom2_classe4`),
  KEY `fr1_dom2_classe4_idx` (`prontuario`),
  CONSTRAINT `fk_prontuario28` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fr1_dom2_classe4`
--

LOCK TABLES `fr1_dom2_classe4` WRITE;
/*!40000 ALTER TABLE `fr1_dom2_classe4` DISABLE KEYS */;
/*!40000 ALTER TABLE `fr1_dom2_classe4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fr1_dom3_classe2`
--

DROP TABLE IF EXISTS `fr1_dom3_classe2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fr1_dom3_classe2` (
  `idfr1_dom3_classe2` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `fr1_dom3_classe2_tab` int(11) DEFAULT NULL,
  `fr1_dom3_classe2_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idfr1_dom3_classe2`),
  UNIQUE KEY `idfr1_dom3_classe2_UNIQUE` (`idfr1_dom3_classe2`),
  KEY `fr1_dom3_classe2_idx` (`prontuario`),
  CONSTRAINT `fk_prontuario29` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fr1_dom3_classe2`
--

LOCK TABLES `fr1_dom3_classe2` WRITE;
/*!40000 ALTER TABLE `fr1_dom3_classe2` DISABLE KEYS */;
/*!40000 ALTER TABLE `fr1_dom3_classe2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fr1_dom4_classe2`
--

DROP TABLE IF EXISTS `fr1_dom4_classe2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fr1_dom4_classe2` (
  `idfr1_dom4_classe2` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `fr1_dom4_classe2_tab` int(11) DEFAULT NULL,
  `fr1_dom4_classe2_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idfr1_dom4_classe2`),
  UNIQUE KEY `idfr1_dom4_classe2_UNIQUE` (`idfr1_dom4_classe2`),
  KEY `fr1_dom4_classe2_idx` (`prontuario`),
  CONSTRAINT `fk_prontuario30` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fr1_dom4_classe2`
--

LOCK TABLES `fr1_dom4_classe2` WRITE;
/*!40000 ALTER TABLE `fr1_dom4_classe2` DISABLE KEYS */;
/*!40000 ALTER TABLE `fr1_dom4_classe2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fr1_dom4_classe4`
--

DROP TABLE IF EXISTS `fr1_dom4_classe4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fr1_dom4_classe4` (
  `idfr1_dom4_classe4` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `fr1_dom4_classe4_tab` int(11) DEFAULT NULL,
  `fr1_dom4_classe4_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idfr1_dom4_classe4`),
  UNIQUE KEY `idfr1_dom4_classe4_UNIQUE` (`idfr1_dom4_classe4`),
  KEY `fr1_dom4_classe4` (`prontuario`),
  CONSTRAINT `fk_prontuario31` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fr1_dom4_classe4`
--

LOCK TABLES `fr1_dom4_classe4` WRITE;
/*!40000 ALTER TABLE `fr1_dom4_classe4` DISABLE KEYS */;
/*!40000 ALTER TABLE `fr1_dom4_classe4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fr1_dom4_classe5`
--

DROP TABLE IF EXISTS `fr1_dom4_classe5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fr1_dom4_classe5` (
  `idfr1_dom4_classe5` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `fr1_dom4_classe5_tab` int(11) DEFAULT NULL,
  `fr1_dom4_classe5_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idfr1_dom4_classe5`),
  UNIQUE KEY `idfr1_dom4_classe5_UNIQUE` (`idfr1_dom4_classe5`),
  KEY `fr1_dom4_classe5_idx` (`prontuario`),
  CONSTRAINT `fk_prontuario32` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fr1_dom4_classe5`
--

LOCK TABLES `fr1_dom4_classe5` WRITE;
/*!40000 ALTER TABLE `fr1_dom4_classe5` DISABLE KEYS */;
/*!40000 ALTER TABLE `fr1_dom4_classe5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fr1_dom9_classe2`
--

DROP TABLE IF EXISTS `fr1_dom9_classe2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fr1_dom9_classe2` (
  `idfr1_dom9_classe2` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `fr1_dom9_classe2_tab` int(11) DEFAULT NULL,
  `fr1_dom9_classe2_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idfr1_dom9_classe2`),
  UNIQUE KEY `idfr1_dom9_classe2_UNIQUE` (`idfr1_dom9_classe2`),
  KEY `fr1_dom9_classe2_idx` (`prontuario`),
  CONSTRAINT `fk_prontuario33` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fr1_dom9_classe2`
--

LOCK TABLES `fr1_dom9_classe2` WRITE;
/*!40000 ALTER TABLE `fr1_dom9_classe2` DISABLE KEYS */;
/*!40000 ALTER TABLE `fr1_dom9_classe2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fr2_dom11_classe2`
--

DROP TABLE IF EXISTS `fr2_dom11_classe2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fr2_dom11_classe2` (
  `idfr2_dom11_classe2` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `fr2_dom11_classe2_tab` int(11) DEFAULT NULL,
  `fr2_dom11_classe2_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idfr2_dom11_classe2`),
  UNIQUE KEY `idfr2_dom11_classe2_UNIQUE` (`idfr2_dom11_classe2`),
  KEY `fr2_dom11_classe2` (`prontuario`),
  CONSTRAINT `fk_prontuario34` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fr2_dom11_classe2`
--

LOCK TABLES `fr2_dom11_classe2` WRITE;
/*!40000 ALTER TABLE `fr2_dom11_classe2` DISABLE KEYS */;
/*!40000 ALTER TABLE `fr2_dom11_classe2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fr2_dom12_classe1`
--

DROP TABLE IF EXISTS `fr2_dom12_classe1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fr2_dom12_classe1` (
  `idfr2_dom12_classe1` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `fr2_dom12_classe1_tab` int(11) DEFAULT NULL,
  `fr2_dom12_classe1_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idfr2_dom12_classe1`),
  UNIQUE KEY `idfr2_dom12_classe1_UNIQUE` (`idfr2_dom12_classe1`),
  KEY `fr2_dom12_classe1` (`prontuario`),
  CONSTRAINT `fk_prontuario35` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fr2_dom12_classe1`
--

LOCK TABLES `fr2_dom12_classe1` WRITE;
/*!40000 ALTER TABLE `fr2_dom12_classe1` DISABLE KEYS */;
/*!40000 ALTER TABLE `fr2_dom12_classe1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fr2_dom1_classe2`
--

DROP TABLE IF EXISTS `fr2_dom1_classe2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fr2_dom1_classe2` (
  `idfr2_dom1_classe2` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `fr2_dom1_classe2_tab` int(11) DEFAULT NULL,
  `fr2_dom1_classe2_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idfr2_dom1_classe2`),
  UNIQUE KEY `idfr2_dom1_classe2_UNIQUE` (`idfr2_dom1_classe2`),
  KEY `fr2_dom1_classe2` (`prontuario`),
  CONSTRAINT `fk_prontuario36` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fr2_dom1_classe2`
--

LOCK TABLES `fr2_dom1_classe2` WRITE;
/*!40000 ALTER TABLE `fr2_dom1_classe2` DISABLE KEYS */;
/*!40000 ALTER TABLE `fr2_dom1_classe2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fr2_dom3_classe2`
--

DROP TABLE IF EXISTS `fr2_dom3_classe2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fr2_dom3_classe2` (
  `idfr2_dom3_classe2` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `fr2_dom3_classe2_tab` int(11) DEFAULT NULL,
  `fr2_dom3_classe2_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idfr2_dom3_classe2`),
  UNIQUE KEY `idfr2_dom3_classe2_UNIQUE` (`idfr2_dom3_classe2`),
  KEY `fr2_dom3_classe2` (`prontuario`),
  CONSTRAINT `fk_prontuario37` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fr2_dom3_classe2`
--

LOCK TABLES `fr2_dom3_classe2` WRITE;
/*!40000 ALTER TABLE `fr2_dom3_classe2` DISABLE KEYS */;
/*!40000 ALTER TABLE `fr2_dom3_classe2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glicemia`
--

DROP TABLE IF EXISTS `glicemia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glicemia` (
  `idglicemia` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `glicemia_tab` int(11) DEFAULT NULL,
  `glicemia_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idglicemia`),
  UNIQUE KEY `idglicemia_UNIQUE` (`idglicemia`),
  KEY `glicemia_idx` (`prontuario`),
  CONSTRAINT `fk_prontuario38` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glicemia`
--

LOCK TABLES `glicemia` WRITE;
/*!40000 ALTER TABLE `glicemia` DISABLE KEYS */;
/*!40000 ALTER TABLE `glicemia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historia_familiar_fatores_risco`
--

DROP TABLE IF EXISTS `historia_familiar_fatores_risco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historia_familiar_fatores_risco` (
  `idhistoria_familiar_fatores_risco` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `historia_tab` int(11) DEFAULT NULL,
  `historia_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idhistoria_familiar_fatores_risco`),
  UNIQUE KEY `idhistoria_familiar_fatores_risco_UNIQUE` (`idhistoria_familiar_fatores_risco`),
  KEY `historia_familiar_fatores_risco_idx` (`prontuario`),
  CONSTRAINT `fk_prontuario39` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historia_familiar_fatores_risco`
--

LOCK TABLES `historia_familiar_fatores_risco` WRITE;
/*!40000 ALTER TABLE `historia_familiar_fatores_risco` DISABLE KEYS */;
/*!40000 ALTER TABLE `historia_familiar_fatores_risco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leito`
--

DROP TABLE IF EXISTS `leito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leito` (
  `idleito` int(11) NOT NULL AUTO_INCREMENT,
  `lesao` int(11) DEFAULT NULL,
  `leito_tab` int(11) DEFAULT NULL,
  `leito_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idleito`),
  UNIQUE KEY `idleito_UNIQUE` (`idleito`),
  KEY `leito_idx` (`lesao`),
  CONSTRAINT `fk_lesao2` FOREIGN KEY (`lesao`) REFERENCES `lesao` (`idlesao`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leito`
--

LOCK TABLES `leito` WRITE;
/*!40000 ALTER TABLE `leito` DISABLE KEYS */;
/*!40000 ALTER TABLE `leito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesao`
--

DROP TABLE IF EXISTS `lesao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lesao` (
  `idlesao` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `local_lesao` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `tempo_tab` int(11) DEFAULT NULL,
  `tempo_item` int(11) DEFAULT NULL,
  `diametro_comp` float DEFAULT NULL,
  `diametro_larg` float DEFAULT NULL,
  `profundidade` float DEFAULT NULL,
  `exsudato` int(11) DEFAULT NULL,
  `presenc_odor` tinyint(1) DEFAULT NULL,
  `tipo_lesao_leito` int(11) DEFAULT NULL,
  `tipo_lesao_bordas` int(11) DEFAULT NULL,
  `debridamento` tinyint(1) DEFAULT NULL,
  `debridamento_quando` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `debridamento_quem` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `debridamento_onde` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `debridamento_vezes` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `tipo_lesao_debridamento` int(11) DEFAULT NULL,
  PRIMARY KEY (`idlesao`),
  UNIQUE KEY `idlesao_UNIQUE` (`idlesao`),
  KEY `lesao_idx` (`prontuario`),
  CONSTRAINT `fk_prontuario50` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesao`
--

LOCK TABLES `lesao` WRITE;
/*!40000 ALTER TABLE `lesao` DISABLE KEYS */;
/*!40000 ALTER TABLE `lesao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesoes_pele`
--

DROP TABLE IF EXISTS `lesoes_pele`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lesoes_pele` (
  `idlesoes_pele` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `lesoes_pele_tab` int(11) DEFAULT NULL,
  `lesoes_pele_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idlesoes_pele`),
  UNIQUE KEY `idlesoes_pele_UNIQUE` (`idlesoes_pele`),
  KEY `lesoes_pele_idx` (`prontuario`),
  CONSTRAINT `fk_prontuario40` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesoes_pele`
--

LOCK TABLES `lesoes_pele` WRITE;
/*!40000 ALTER TABLE `lesoes_pele` DISABLE KEYS */;
/*!40000 ALTER TABLE `lesoes_pele` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paciente` (
  `idpaciente` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `sexo` varchar(45) CHARACTER SET latin1 NOT NULL,
  `endereco` varchar(45) CHARACTER SET latin1 NOT NULL,
  `profissao` varchar(45) CHARACTER SET latin1 NOT NULL,
  `escolaridade_tab` int(11) NOT NULL,
  `escolaridade_item` int(11) NOT NULL,
  `naturalidade` varchar(45) CHARACTER SET latin1 NOT NULL,
  `pessoa_contato` varchar(45) CHARACTER SET latin1 NOT NULL,
  `moradia` varchar(45) CHARACTER SET latin1 NOT NULL,
  `nascimento` datetime NOT NULL,
  `cidade` varchar(45) CHARACTER SET latin1 NOT NULL,
  `estado_civil_tab` int(11) NOT NULL,
  `estado_civil_item` int(11) NOT NULL,
  `etnia_tab` int(11) NOT NULL,
  `etnia_item` int(11) NOT NULL,
  `servico_ref` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `telefone` varchar(45) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`idpaciente`),
  UNIQUE KEY `idpaciente_UNIQUE` (`idpaciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfusao_periferica`
--

DROP TABLE IF EXISTS `perfusao_periferica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfusao_periferica` (
  `idperfusao_periferica` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `perfusao_periferica_tab` int(11) DEFAULT NULL,
  `perfusao_periferica_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idperfusao_periferica`),
  UNIQUE KEY `idperfusao_periferica_UNIQUE` (`idperfusao_periferica`),
  KEY `perfusao_periferica_idx` (`prontuario`),
  CONSTRAINT `fk_prontuario41` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfusao_periferica`
--

LOCK TABLES `perfusao_periferica` WRITE;
/*!40000 ALTER TABLE `perfusao_periferica` DISABLE KEYS */;
/*!40000 ALTER TABLE `perfusao_periferica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pressao_arterial`
--

DROP TABLE IF EXISTS `pressao_arterial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pressao_arterial` (
  `idpressao_arterial` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `pressao_arterial_tab` int(11) DEFAULT NULL,
  `pressao_arterial_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idpressao_arterial`),
  UNIQUE KEY `idpressao_arterial_UNIQUE` (`idpressao_arterial`),
  KEY `pressao_arterial_idx` (`prontuario`),
  CONSTRAINT `fk_prontuario42` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pressao_arterial`
--

LOCK TABLES `pressao_arterial` WRITE;
/*!40000 ALTER TABLE `pressao_arterial` DISABLE KEYS */;
/*!40000 ALTER TABLE `pressao_arterial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prontuario`
--

DROP TABLE IF EXISTS `prontuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prontuario` (
  `idprontuario` int(11) NOT NULL,
  `prontuario` int(11) NOT NULL,
  `paciente` int(11) NOT NULL,
  `boletim_atendimento` int(11) DEFAULT NULL,
  `motivo_atendimento` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `estado_saude` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `hosp_previa` tinyint(1) DEFAULT NULL,
  `real_cirurgias` tinyint(1) DEFAULT NULL,
  `quais_cirurgias` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `utiliza_medic` tinyint(1) DEFAULT NULL,
  `utiliza_medic_adeq` tinyint(1) DEFAULT NULL,
  `medic_preescrito` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `historia_saude` int(11) DEFAULT NULL,
  `medic_nao_preescrito` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `alergico` tinyint(1) DEFAULT NULL,
  `alergico_quais` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `cd1_dom1_classe2` int(11) DEFAULT NULL,
  `fr1_dom1_classe2` int(11) DEFAULT NULL,
  `de_00099` tinyint(1) DEFAULT NULL,
  `cd2_dom1_classe2` int(11) DEFAULT NULL,
  `fr2_dom1_classe2` int(11) DEFAULT NULL,
  `de_00043` tinyint(1) DEFAULT NULL,
  `observ_dom1_classe2` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `alter_nutricao` tinyint(1) DEFAULT NULL,
  `cd1_dom2_classe1` int(11) DEFAULT NULL,
  `fr1_dom2_classe1` int(11) DEFAULT NULL,
  `de_00001` tinyint(1) DEFAULT NULL,
  `observ_dom2_classe1` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `valor_glicemia` int(11) DEFAULT NULL,
  `tipo_glicemia` int(11) DEFAULT NULL,
  `fr1_dom2_classe4` int(11) DEFAULT NULL,
  `de_00179` tinyint(1) DEFAULT NULL,
  `observ_dom2_classe4` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `alter_abdome` tinyint(1) DEFAULT NULL,
  `tipo_alter_abdome` int(11) DEFAULT NULL,
  `ruidos_hideroareos` tinyint(1) DEFAULT NULL,
  `tipo_ruido_hidroareo` int(11) DEFAULT NULL,
  `alter_elimin_intestinal` tinyint(1) DEFAULT NULL,
  `freq_elimin_intestinal` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `quant_elimin_intestinal` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `cd1_dom3_classe2` int(11) DEFAULT NULL,
  `fr1_dom3_classe2` int(11) DEFAULT NULL,
  `de_00011` tinyint(1) DEFAULT NULL,
  `cd2_dom3_classe2` int(11) DEFAULT NULL,
  `fr2_dom3_classe2` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `de_00013` tinyint(1) DEFAULT NULL,
  `observ_dom3_classe2` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `alter_forca` tinyint(1) DEFAULT NULL,
  `alter_mobilidade` tinyint(1) DEFAULT NULL,
  `tipos_alter_mobilidade` int(11) DEFAULT NULL,
  `cd1_dom4_classe2` int(11) DEFAULT NULL,
  `fr1_dom4_classe2` int(11) DEFAULT NULL,
  `de_00085` tinyint(1) DEFAULT NULL,
  `observ_dom4_classe2` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `freq_cardiaca` float DEFAULT NULL,
  `tipo_pressao_arterial` int(11) DEFAULT NULL,
  `medida_pressao` float DEFAULT NULL,
  `perfussao_periferica` int(11) DEFAULT NULL,
  `cd1_dom4_classe4` int(11) DEFAULT NULL,
  `fr1_dom4_classe4` int(11) DEFAULT NULL,
  `de_00204` tinyint(1) DEFAULT NULL,
  `observ_dom4_classe4` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `auxilio_higiene` tinyint(1) DEFAULT NULL,
  `cd1_dom4_classe5` int(11) DEFAULT NULL,
  `fr1_dom4_classe5` int(11) DEFAULT NULL,
  `de_00108` tinyint(1) DEFAULT NULL,
  `observ_dom4_classe5` tinyint(1) DEFAULT NULL,
  `perda_estresse` tinyint(1) DEFAULT NULL,
  `cd1_dom9_classe2` int(11) DEFAULT NULL,
  `fr1_dom9_classe2` int(11) DEFAULT NULL,
  `de_00146` tinyint(1) DEFAULT NULL,
  `observ_dom9_classe2` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `tipos_vacinas_realiz` int(11) DEFAULT NULL,
  `outras_vacinas` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `sinais_infeccoes` int(11) DEFAULT NULL,
  `fr1_dom11_classe1` int(11) DEFAULT NULL,
  `de_00004` tinyint(1) DEFAULT NULL,
  `observ_dom11_classe1` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `alteracoes_pele` tinyint(1) DEFAULT NULL,
  `tipos_alter_pele` int(11) DEFAULT NULL,
  `outras_alteracoes_pele` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `tipo_umidade_pele` int(11) DEFAULT NULL,
  `tipo_color_pele` int(11) DEFAULT NULL,
  `recuper_imediata` tinyint(1) DEFAULT NULL,
  `espec_cirurgia` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `upp` int(11) DEFAULT NULL,
  `presenc_lesoes` tinyint(1) DEFAULT NULL,
  `cd1_dom11_classe2` int(11) DEFAULT NULL,
  `fr1_dom11_classe2` int(11) DEFAULT NULL,
  `de_00046` tinyint(1) DEFAULT NULL,
  `cd2_dom11_classe2` int(11) DEFAULT NULL,
  `fr2_dom11_classe2` int(11) DEFAULT NULL,
  `de_recup_retardada` tinyint(1) DEFAULT NULL,
  `observ_dom11_classe2` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `alter_temperatura` tinyint(1) DEFAULT NULL,
  `tax_temperatura` float DEFAULT NULL,
  `cd1_dom11_classe6` int(11) DEFAULT NULL,
  `fr1_dom11_classe6` int(11) DEFAULT NULL,
  `de_00007` tinyint(1) DEFAULT NULL,
  `cd2_dom11_classe6` int(11) DEFAULT NULL,
  `fr2_dom11_classe6` int(11) DEFAULT NULL,
  `de_00006` tinyint(1) DEFAULT NULL,
  `observ_dom11_classe6` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `tipo_dor` int(11) DEFAULT NULL,
  `escala_dor` int(11) DEFAULT NULL,
  `cd1_dom12_classe1` int(11) DEFAULT NULL,
  `fr1_dom12_classe1` int(11) DEFAULT NULL,
  `de_00132` tinyint(1) DEFAULT NULL,
  `cd2_dom12_classe1` int(11) DEFAULT NULL,
  `fr2_dom12_classe1` int(11) DEFAULT NULL,
  `de_00133` tinyint(1) DEFAULT NULL,
  `observ_dom12_classe1` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `enfermeiro` int(11) NOT NULL,
  `data_preenchimento` date NOT NULL,
  `data_criacao` date NOT NULL,
  PRIMARY KEY (`idprontuario`),
  UNIQUE KEY `idprontuario_UNIQUE` (`idprontuario`),
  UNIQUE KEY `prontuario_UNIQUE` (`prontuario`),
  UNIQUE KEY `paciente_UNIQUE` (`paciente`),
  KEY `paciente_idx` (`paciente`),
  KEY `enfermeiro_idx` (`enfermeiro`),
  CONSTRAINT `enfermeiro` FOREIGN KEY (`enfermeiro`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prontuario`
--

LOCK TABLES `prontuario` WRITE;
/*!40000 ALTER TABLE `prontuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `prontuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qualidade_dor`
--

DROP TABLE IF EXISTS `qualidade_dor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qualidade_dor` (
  `idqualidade_dor` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `qualidade_dor_tab` int(11) DEFAULT NULL,
  `qualidade_dor_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idqualidade_dor`),
  UNIQUE KEY `idqualidade_dor_UNIQUE` (`idqualidade_dor`),
  KEY `qualidade_dor_idx` (`prontuario`),
  CONSTRAINT `fk_prontuario43` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qualidade_dor`
--

LOCK TABLES `qualidade_dor` WRITE;
/*!40000 ALTER TABLE `qualidade_dor` DISABLE KEYS */;
/*!40000 ALTER TABLE `qualidade_dor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ruidos_hidroaereos`
--

DROP TABLE IF EXISTS `ruidos_hidroaereos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ruidos_hidroaereos` (
  `idruidos_hidroaereos` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `ruidos_hidroaereos_tab` int(11) DEFAULT NULL,
  `ruidos_hidroaereos_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idruidos_hidroaereos`),
  UNIQUE KEY `idruidos_hidroaereos_UNIQUE` (`idruidos_hidroaereos`),
  KEY `ruidos_hidroaereos_idx` (`prontuario`),
  CONSTRAINT `fk_prontuario44` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ruidos_hidroaereos`
--

LOCK TABLES `ruidos_hidroaereos` WRITE;
/*!40000 ALTER TABLE `ruidos_hidroaereos` DISABLE KEYS */;
/*!40000 ALTER TABLE `ruidos_hidroaereos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sinais_infeccao`
--

DROP TABLE IF EXISTS `sinais_infeccao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sinais_infeccao` (
  `idsinais_infeccao` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `sinais_infeccao_tab` int(11) DEFAULT NULL,
  `sinais_infeccao_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idsinais_infeccao`),
  UNIQUE KEY `idsinais_infeccao_UNIQUE` (`idsinais_infeccao`),
  KEY `sinais_infeccao_idx` (`prontuario`),
  CONSTRAINT `fk_prontuario45` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sinais_infeccao`
--

LOCK TABLES `sinais_infeccao` WRITE;
/*!40000 ALTER TABLE `sinais_infeccao` DISABLE KEYS */;
/*!40000 ALTER TABLE `sinais_infeccao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_estruturada`
--

DROP TABLE IF EXISTS `tab_estruturada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_estruturada` (
  `idtab_estruturada` int(11) NOT NULL AUTO_INCREMENT,
  `cod_tabela` int(11) DEFAULT NULL,
  `item_tabela` int(11) DEFAULT NULL,
  `descricao` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idtab_estruturada`),
  UNIQUE KEY `idtab_estruturada_UNIQUE` (`idtab_estruturada`)
) ENGINE=InnoDB AUTO_INCREMENT=270 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_estruturada`
--

LOCK TABLES `tab_estruturada` WRITE;
/*!40000 ALTER TABLE `tab_estruturada` DISABLE KEYS */;
INSERT INTO `tab_estruturada` VALUES (1,1,0,'Escolaridade',0),(2,1,1,'Sem escolaridade',1),(3,1,2,'Ensino fundamental',1),(4,1,3,'Ensino médio',1),(5,1,4,'Ensino superior',1),(6,2,0,'Estado civil',0),(7,2,1,'Solteiro',1),(8,2,2,'Casado',1),(9,2,3,'Separado',1),(10,2,4,'Divorciado',1),(11,2,5,'Viúvo',1),(12,3,0,'Etnia',0),(13,3,1,'Branco',1),(14,3,2,'Negro',1),(15,3,3,'Pardo',1),(16,3,4,'Índio',1),(17,3,5,'Mulato',1),(18,4,0,'História familiar/fatores de risco para problemas de saúde',0),(19,4,1,'HAS',1),(20,4,2,'DM',1),(21,4,3,'Neoplasias',1),(22,5,0,'cd1_dom1_classe2',0),(23,5,1,'Falta de interesse expressa em melhorar comportamento de saúde',1),(24,5,2,'Incapacidades de assumir responsabilidades para atender as práticas básicas de saúde',1),(25,5,3,'Prejuízo no sistema de apoio pessoal',1),(26,6,0,'fr1_dom1_classe2',0),(27,6,1,'Enfrentamento individual e familiar',1),(28,6,2,'Incapacidade de realizar julgamentos adequados',1),(29,6,3,'Insuficiência de recursos (equipamento e dinheiro)',1),(30,6,4,'Prejuízos cognitivos',1),(31,7,0,'cd2_dom1_classe2',0),(32,7,1,'Alteração neurossensorial',1),(33,7,2,'Deficiência na imunidade',1),(34,7,3,'Desorientação',1),(35,7,4,'Imobilidade',1),(36,7,5,'Úlcera por pressão',1),(37,8,0,'fr2_dom1_classe2',0),(38,8,1,'Câncer',1),(39,8,2,'Distúrbios imunológicos',1),(40,8,3,'Tratamentos (cirurgias)',1),(41,8,4,'Extremos de idade',1),(42,9,0,'cd1_dom2_classe1',0),(43,9,1,'Estilo de vida sedentário',1),(44,9,2,'Padrão de alimentação disfuncional',1),(45,10,0,'fr1_dom2_classe1',0),(46,10,1,'Ingestão excessiva em relação às necessidades metabólicas',1),(47,11,0,'Glicemia',0),(48,11,1,'Hipoglicemia',1),(49,11,2,'Hiperglicemia',1),(50,12,0,'fr1_dom2_classe4',0),(51,12,1,'Controle de medicamentos',1),(52,12,2,'Falta de controle do diabetes',1),(53,12,3,'Monitorização inadequada da glicemia',1),(54,13,0,'Alterações abdome',0),(55,13,1,'Flácido',1),(56,13,2,'Indolor',1),(57,13,3,'Plano',1),(58,13,4,'Distendido',1),(59,13,5,'Doloroso à palpação',1),(60,13,6,'Tenso',1),(61,13,7,'Globoso',1),(62,13,8,'Escavado',1),(63,14,0,'Ruídos hidroaéreos',0),(64,14,1,'Ausentes',1),(65,14,2,'Presentes',1),(66,14,3,'Normoativos',1),(67,14,4,'Hiperativos',1),(68,14,5,'Hipoativos',1),(69,15,0,'cd1_dom3_classe2',0),(70,15,1,'Dor à evacuação',1),(71,15,2,'Flatulência',1),(72,15,3,'Frequência diminuída',1),(73,15,4,'Incapacidade de eliminar fezes',1),(74,15,5,'Macicez percussão abdominal',1),(75,16,0,'fr1_dom3_classe2',0),(76,16,1,'Farmacológicos',1),(77,16,2,'Diuréticos',1),(78,16,3,'Anti-inflamatórios',1),(79,16,4,'Motilidade gastrointestinal diminuída',1),(80,17,0,'cd2_dom3_classe2',0),(81,17,1,'Pelo menos três evacuações de fezes líquidas/dia',1),(82,18,0,'fr2_dom3_classe2',0),(83,18,1,'Efeitos adversos de medicamentos',1),(84,18,2,'Estresse',1),(85,18,3,'Processos infecciosos',1),(86,19,0,'Alterações de mobilidade',0),(87,19,1,'Paresia ou fraqueza',1),(88,19,2,'Paraplegia',1),(89,19,3,'Paralisia ou plegia',1),(90,19,4,'Hemiplegia D',1),(91,19,5,'Hemiplegia E',1),(92,20,0,'cd1_dom4_classe2',0),(93,20,1,'Amplitude limitada de movimento',1),(94,20,2,'Capacidade limitada para desempenhar atividades motoras finas',1),(95,20,3,'Capacidade limitada para desempenhar atividades motoras grossas',1),(96,20,4,'Instabilidade postural',1),(97,20,5,'Movimentos lentos',1),(98,20,6,'Mudança na marcha',1),(99,21,0,'fr1_dom4_classe2',0),(100,21,1,'Dor',1),(101,21,2,'Força muscular diminuída',1),(102,21,3,'Prejuízos musculoesqueléticos',1),(103,21,4,'Prejuízo neuromuscular',1),(104,21,5,'Ansiedade',1),(105,21,6,'Restrição prescrita de movimento',1),(106,22,0,'Pressão arterial',0),(107,22,1,'Normotenso',1),(108,22,2,'Hipertenso',1),(109,22,3,'Hipotensão',1),(110,23,0,'Perfusão periférica',0),(111,23,1,'Extremidades aquecidas',1),(112,23,2,'Extremidades frias',1),(113,23,3,'Cianose',1),(114,23,4,'Sudorese',1),(115,23,5,'Palidez',1),(116,24,0,'cd1_dom4_classe4',0),(117,24,1,'Características da pele alteradas (cor, elasticidade, umidade, unhas, sensibilidade e temperatura)',1),(118,24,2,'Cicatrização de ferida periférica retardada',1),(119,24,3,'Dor em extremidades',1),(120,24,4,'Edema',1),(121,24,5,'Parestesia',1),(122,24,6,'Pulsos ausentes',1),(123,24,7,'Pulsos diminuídos',1),(124,25,0,'fr1_dom4_classe4',0),(125,25,1,'Conhecimento deficiente dos fatores agravantes',1),(126,25,2,'Diabetes mellitus',1),(127,26,0,'cd1_dom4_classe5',0),(128,26,1,'Incapacidade de lavar o corpo',1),(129,26,2,'Incapacidade de secar o corpo',1),(130,27,0,'fr1_dom4_classe5',0),(131,27,1,'Dor',1),(132,27,2,'Prejuízo musculoesquelético',1),(133,27,3,'Barreiras ambientais',1),(134,28,0,'cd1_dom9_classe2',0),(135,28,1,'Medo',1),(136,28,2,'Produtividade diminuída',1),(137,28,3,'Tensão facial',1),(138,28,4,'Transpiração aumentada',1),(139,29,0,'fr1_dom9_classe2',0),(140,29,1,'Ameaça ao estado de saúde',1),(141,29,2,'Mudança no ambiente',1),(142,29,3,'Mudança no estado de saúde',1),(143,30,0,'Sinais de infecção',0),(144,30,1,'Dor',1),(145,30,2,'Calor',1),(146,30,3,'Rubor',1),(147,30,4,'Edema',1),(148,30,5,'Secreção',1),(149,31,0,'Vacinas realizadas',0),(150,31,1,'Tétano',1),(151,31,2,'Gripe',1),(155,31,3,'Hepatite',1),(156,32,0,'fr1_dom11_classe1',0),(157,32,1,'Aumento da exposição ambiental a patógenos',1),(158,32,2,'Defesas primárias inadequadas: Pele rompida',1),(159,32,3,'Defesas primárias inadequadas: Tecido traumatizado',1),(160,32,4,'Defesas secundárias inadequadas: Imunossupressão',1),(161,32,5,'Defesas secundárias inadequadas: Agentes farmaceuticos',1),(162,32,6,'Doença Crônica',1),(163,33,0,'Lesões na pele',0),(164,33,1,'Hematoma',1),(165,33,2,'Irritação cutânea',1),(166,33,3,'Eritema',1),(167,33,4,'Petéquias',1),(168,33,5,'Esquimoses',1),(169,33,6,'Abrasões',1),(170,34,0,'Umidade da pele',0),(171,34,1,'Hidratada',1),(172,34,2,'Desidratada',1),(173,34,3,'Sudorese',1),(174,35,0,'Coloração da pele',0),(175,35,1,'Corada',1),(176,35,2,'Hipocorada',1),(177,35,3,'Cianótica',1),(178,35,4,'Ictéria',1),(179,36,0,'Presença de úlcera por pressão (UPP)',0),(180,36,1,'Estágio I',1),(181,36,2,'Estágio II',1),(182,36,3,'Estágio III',1),(183,36,4,'Estágio IV',1),(184,37,0,'Exsudato (substância líquida eliminada patologicamente)',0),(185,37,1,'Seroso',1),(186,37,2,'Serosanguinolento',1),(187,37,3,'Sanguinolento',1),(188,37,4,'Purulento',1),(189,38,0,'Leito',0),(190,38,1,'Epitelização',1),(191,38,2,'Granulação',1),(192,38,3,'Fibrina',1),(193,38,4,'Necrose',1),(194,40,0,'Bordas',0),(195,40,1,'Edema',1),(196,40,2,'Isquemia',1),(197,40,3,'Necrose',1),(198,40,4,'Macerada',1),(199,41,0,'Tipo debridamento',0),(200,41,1,'Autolítico',1),(201,41,2,'Enzimático',1),(202,41,3,'Mecânico',1),(203,41,4,'Cirúrgico',1),(204,42,0,'cd1_dom11_classe2',0),(205,42,1,'Destruição de camadas da pele',1),(206,42,2,'Invasão de estruturas do corpo',1),(207,42,3,'Rompimento da superfície da pele',1),(208,43,0,'fr1_dom11_classe2',0),(209,43,1,'Circulação prejudicada',1),(210,43,2,'Fatores mecânicos (forças abrasivas, pressão, contenção)',1),(211,44,0,'cd2_dom11_classe2',0),(212,44,1,'Evidência de interrupção na cicatrização da área cirúrgica (vermelha, drenando)',1),(213,44,2,'Diabetes Mellitus',1),(214,45,0,'fr2_dom11_classe2',0),(215,45,1,'Dor',1),(216,45,2,'Infecção pós-operatório no local da cirurgia',1),(217,45,3,'Obesidade',1),(218,46,0,'cd1_dom11_classe6',0),(219,46,1,'Aumento da temperatura corporal acima dos parâmetros normais',1),(220,47,0,'fr1_dom11_classe6',0),(221,47,1,'Aumento da taxa metabólica',1),(222,47,2,'Desidratação',1),(223,47,3,'Doença',1),(224,47,4,'Trauma',1),(225,48,0,'cd2_dom11_classe6',0),(226,48,1,'Temperatura corporal abaixo dos parâmetros normais',1),(227,49,0,'fr1_dom11_classe6',0),(228,49,1,'Doença',1),(229,49,2,'Trauma',1),(230,50,0,'Qualidade da dor',0),(231,50,1,'Queimação',1),(232,50,2,'Irradiação',1),(233,50,3,'Pulsátil',1),(234,50,4,'Em pontada',1),(235,51,0,'cd1_dom12_classe1',0),(236,51,1,'Comportamento expressivo',1),(237,51,2,'Agitação',1),(238,51,3,'Gemido',1),(239,51,4,'Choro',1),(240,51,5,'Vigilância',1),(241,51,6,'Irritabilidade',1),(242,51,7,'Suspiro',1),(243,51,8,'Evidência observada de dor (presença de cateteres, realização de procedimentos)',1),(244,51,9,'Expressão facial (olho sem brilho, aparência abatida, movimento fixo ou disparado)',1),(245,51,10,'Gestos protetores',1),(246,51,11,'Relato verbal de dor',1),(247,51,12,'Mudança na FC',1),(248,51,13,'Mudança na FR',1),(249,52,0,'fr1_dom12_classe1',0),(250,52,1,'Agentes lesivos (biológicos, físicos, químicos ou psicológicos)',1),(251,53,0,'cd2_dom12_classe1',0),(252,53,1,'Expressão facial (olho sem brilho, aparência abatida, movimento fixo ou disparado)',1),(253,53,2,'Irritabilidade',1),(254,53,3,'Inquietação',1),(255,53,4,'Medo de nova lesão',1),(256,53,5,'Repostas mediadas pelo sistema nervoso simpático',1),(257,53,6,'Frio',1),(258,53,7,'Hipersensibilidade',1),(259,53,8,'Mudanças na posição do corpo',1),(260,53,9,'Temperatura',1),(261,53,10,'Relato verbal de dor há mais de 6 meses',1),(262,54,0,'fr2_dom12_classe1',0),(263,54,1,'Incapacidade física crônica',1),(264,54,2,'Incapacidade psicossocial crônica',1),(265,55,0,'Tempo',0),(266,55,1,'Menos de 6 meses',1),(267,55,2,'Menos de 1 ano',1),(268,55,3,'Menos de 2 anos',1),(269,55,4,'Mais ou igual à 2 anos',1);
/*!40000 ALTER TABLE `tab_estruturada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_debridamento`
--

DROP TABLE IF EXISTS `tipo_debridamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_debridamento` (
  `idtipo_debridamento` int(11) NOT NULL AUTO_INCREMENT,
  `lesao` int(11) DEFAULT NULL,
  `tipo_debridamento_tab` int(11) DEFAULT NULL,
  `tipo_debridamento_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idtipo_debridamento`),
  UNIQUE KEY `idtipo_debridamento_UNIQUE` (`idtipo_debridamento`),
  KEY `tipo_debridamento` (`lesao`),
  CONSTRAINT `fk_lesao4` FOREIGN KEY (`lesao`) REFERENCES `lesao` (`idlesao`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_debridamento`
--

LOCK TABLES `tipo_debridamento` WRITE;
/*!40000 ALTER TABLE `tipo_debridamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_debridamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `umidade_pele`
--

DROP TABLE IF EXISTS `umidade_pele`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `umidade_pele` (
  `idumidade_pele` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `umidade_pele_tab` int(11) DEFAULT NULL,
  `umidade_pele_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idumidade_pele`),
  UNIQUE KEY `idumidade_pele_UNIQUE` (`idumidade_pele`),
  KEY `umidade_pele_idx` (`prontuario`),
  CONSTRAINT `fk_prontuario47` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `umidade_pele`
--

LOCK TABLES `umidade_pele` WRITE;
/*!40000 ALTER TABLE `umidade_pele` DISABLE KEYS */;
/*!40000 ALTER TABLE `umidade_pele` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upp`
--

DROP TABLE IF EXISTS `upp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upp` (
  `idupp` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `upp_tab` int(11) DEFAULT NULL,
  `upp_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idupp`),
  UNIQUE KEY `idupp_UNIQUE` (`idupp`),
  KEY `upp_idx` (`prontuario`),
  CONSTRAINT `fk_prontuario48` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upp`
--

LOCK TABLES `upp` WRITE;
/*!40000 ALTER TABLE `upp` DISABLE KEYS */;
/*!40000 ALTER TABLE `upp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `nome_usuario` varchar(45) CHARACTER SET latin1 NOT NULL,
  `email_usuario` varchar(45) CHARACTER SET latin1 NOT NULL,
  `usuario` varchar(45) CHARACTER SET latin1 NOT NULL,
  `senha_usuario` varchar(45) CHARACTER SET latin1 NOT NULL,
  `administrador_usuario` tinyint(1) NOT NULL,
  PRIMARY KEY (`idusuario`),
  UNIQUE KEY `idusuario_UNIQUE` (`idusuario`),
  UNIQUE KEY `usuario_UNIQUE` (`usuario`),
  UNIQUE KEY `email_usuario_UNIQUE` (`email_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vacinas_realizadas`
--

DROP TABLE IF EXISTS `vacinas_realizadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vacinas_realizadas` (
  `idvacinas_realizadas` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` int(11) DEFAULT NULL,
  `vacinas_realizadas_tab` int(11) DEFAULT NULL,
  `vacinas_realizadas_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`idvacinas_realizadas`),
  UNIQUE KEY `idvacinas_realizadas_UNIQUE` (`idvacinas_realizadas`),
  KEY `vacinas_realizadas_idx` (`prontuario`),
  CONSTRAINT `fk_prontuario49` FOREIGN KEY (`prontuario`) REFERENCES `prontuario` (`idprontuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacinas_realizadas`
--

LOCK TABLES `vacinas_realizadas` WRITE;
/*!40000 ALTER TABLE `vacinas_realizadas` DISABLE KEYS */;
/*!40000 ALTER TABLE `vacinas_realizadas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-08-04 16:22:41
