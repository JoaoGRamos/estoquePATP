-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: estoquepatp
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `idcat` int NOT NULL,
  `catnome` varchar(95) DEFAULT NULL,
  PRIMARY KEY (`idcat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'feijao');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idcliente` int NOT NULL,
  `nome` varchar(95) DEFAULT NULL,
  `cpf` varchar(95) DEFAULT NULL,
  `fone` varchar(95) DEFAULT NULL,
  PRIMARY KEY (`idcliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'joao','9999999','9'),(2,'mauricio','5444444444','9');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra` (
  `idcompra` int NOT NULL,
  `datacompra` date DEFAULT NULL,
  `precototal` varchar(95) DEFAULT NULL,
  `idfornecedor` int DEFAULT NULL,
  PRIMARY KEY (`idcompra`),
  KEY `FK_1` (`idfornecedor`),
  CONSTRAINT `FK_1` FOREIGN KEY (`idfornecedor`) REFERENCES `fornecedor` (`idfornecedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedor` (
  `idfornecedor` int NOT NULL,
  `nome` varchar(95) DEFAULT NULL,
  `cnpj` varchar(95) DEFAULT NULL,
  `fone` varchar(95) DEFAULT NULL,
  `email` varchar(95) DEFAULT NULL,
  PRIMARY KEY (`idfornecedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
INSERT INTO `fornecedor` VALUES (1,'GRAMPRIX2012','89785645','549841912','gramprix2010@outlook.com');
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itenscompra`
--

DROP TABLE IF EXISTS `itenscompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itenscompra` (
  `idcompra` int NOT NULL,
  `qtde` int DEFAULT NULL,
  `valorunitario` decimal(10,0) DEFAULT NULL,
  `valortotal` float DEFAULT NULL,
  `idproduto` int NOT NULL,
  PRIMARY KEY (`idcompra`,`idproduto`),
  KEY `FK_3` (`idproduto`),
  CONSTRAINT `FK_2` FOREIGN KEY (`idcompra`) REFERENCES `compra` (`idcompra`),
  CONSTRAINT `FK_3` FOREIGN KEY (`idproduto`) REFERENCES `produto` (`idproduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itenscompra`
--

LOCK TABLES `itenscompra` WRITE;
/*!40000 ALTER TABLE `itenscompra` DISABLE KEYS */;
/*!40000 ALTER TABLE `itenscompra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itensvenda`
--

DROP TABLE IF EXISTS `itensvenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itensvenda` (
  `idvenda` int NOT NULL,
  `qtde` int DEFAULT NULL,
  `valorunitario` decimal(10,0) DEFAULT NULL,
  `valortotal` decimal(10,0) DEFAULT NULL,
  `idproduto` int NOT NULL,
  PRIMARY KEY (`idvenda`,`idproduto`),
  KEY `FK_11` (`idproduto`),
  CONSTRAINT `FK_11` FOREIGN KEY (`idproduto`) REFERENCES `produto` (`idproduto`),
  CONSTRAINT `FK_4` FOREIGN KEY (`idvenda`) REFERENCES `venda` (`idvenda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itensvenda`
--

LOCK TABLES `itensvenda` WRITE;
/*!40000 ALTER TABLE `itensvenda` DISABLE KEYS */;
INSERT INTO `itensvenda` VALUES (1,1,1,1,1),(4,2,1,2,1),(6,5,1,5,1),(7,2,1,2,1);
/*!40000 ALTER TABLE `itensvenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `idproduto` int NOT NULL,
  `nome` varchar(95) DEFAULT NULL,
  `valorunitario` float DEFAULT NULL,
  `qtde` float DEFAULT NULL,
  `idumedida` int DEFAULT NULL,
  `idcat` int DEFAULT NULL,
  PRIMARY KEY (`idproduto`),
  KEY `FK_6` (`idumedida`),
  KEY `FK_7` (`idcat`),
  CONSTRAINT `FK_6` FOREIGN KEY (`idumedida`) REFERENCES `unidademedida` (`idumedida`),
  CONSTRAINT `FK_7` FOREIGN KEY (`idcat`) REFERENCES `categoria` (`idcat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'a',1,5,1,1);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidademedida`
--

DROP TABLE IF EXISTS `unidademedida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unidademedida` (
  `idumedida` int NOT NULL,
  `umedida` varchar(95) DEFAULT NULL,
  PRIMARY KEY (`idumedida`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidademedida`
--

LOCK TABLES `unidademedida` WRITE;
/*!40000 ALTER TABLE `unidademedida` DISABLE KEYS */;
INSERT INTO `unidademedida` VALUES (1,'KG'),(2,'Unidade');
/*!40000 ALTER TABLE `unidademedida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venda`
--

DROP TABLE IF EXISTS `venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venda` (
  `idvenda` int NOT NULL,
  `datavenda` date DEFAULT NULL,
  `precototal` varchar(95) DEFAULT NULL,
  `idcliente` int DEFAULT NULL,
  PRIMARY KEY (`idvenda`),
  KEY `FK_10` (`idcliente`),
  CONSTRAINT `FK_10` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda`
--

LOCK TABLES `venda` WRITE;
/*!40000 ALTER TABLE `venda` DISABLE KEYS */;
INSERT INTO `venda` VALUES (1,'1999-02-02','1',1),(2,'1999-05-05','12',1),(3,'2021-01-20','0',1),(4,'2021-01-20','3',1),(5,'2021-10-20','0',2),(6,'2021-10-20','5',2),(7,'2021-03-09','2',1);
/*!40000 ALTER TABLE `venda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'estoquepatp'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-26  1:43:47
