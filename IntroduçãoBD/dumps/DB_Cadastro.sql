CREATE DATABASE  IF NOT EXISTS `cadastro` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cadastro`;
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: cadastro
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `descricao` text,
  `carga_horaria` int unsigned DEFAULT NULL,
  `total_aulas` int unsigned DEFAULT NULL,
  `ano` year DEFAULT '2026',
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'html5','Curso de HTML5',40,37,2014),(2,'Algoritmos','Lógica de Programação',20,15,2014),(3,'Photoshop','Dicas de Photoshop CC',10,8,2014),(4,'PHP','Curso de PHP para iniciantes',40,20,2015),(5,'Java','Introdução à Linguagem Java',40,29,2015),(6,'MySQL','Bancos de Dados MySQL',30,15,2016),(7,'Word','Curso completo de Word',40,30,2016);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `nascimento` date NOT NULL,
  `sexo` enum('M','F') NOT NULL,
  `peso` decimal(5,2) NOT NULL,
  `altura` decimal(3,2) NOT NULL,
  `nacionalidade` varchar(20) DEFAULT 'Brasil',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES (1,'Gabriel','2005-02-14','M',92.47,1.82,'Brasil'),(2,'Nathaly','2006-05-08','F',48.76,1.58,'Cuba'),(3,'Luiza','1988-09-29','F',68.71,1.76,'Brasil'),(4,'Gabrielly','2011-04-08','F',66.54,1.72,'EUA');
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pessoa_fisica`
--

DROP TABLE IF EXISTS `tb_pessoa_fisica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_pessoa_fisica` (
  `cpf` char(11) NOT NULL,
  `id_pessoa` int NOT NULL,
  PRIMARY KEY (`cpf`),
  UNIQUE KEY `id_pessoa` (`id_pessoa`),
  CONSTRAINT `tb_pessoa_fisica_ibfk_1` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pessoa_fisica`
--

LOCK TABLES `tb_pessoa_fisica` WRITE;
/*!40000 ALTER TABLE `tb_pessoa_fisica` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_pessoa_fisica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pessoa_juridica`
--

DROP TABLE IF EXISTS `tb_pessoa_juridica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_pessoa_juridica` (
  `cnpj` char(14) NOT NULL,
  `id_pessoa` int NOT NULL,
  PRIMARY KEY (`cnpj`),
  UNIQUE KEY `id_pessoa` (`id_pessoa`),
  CONSTRAINT `tb_pessoa_juridica_ibfk_1` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pessoa_juridica`
--

LOCK TABLES `tb_pessoa_juridica` WRITE;
/*!40000 ALTER TABLE `tb_pessoa_juridica` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_pessoa_juridica` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-29 13:28:22
CREATE DATABASE  IF NOT EXISTS `db_biblioteca` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_biblioteca`;
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: db_biblioteca
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `tb_aluno`
--

DROP TABLE IF EXISTS `tb_aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_aluno` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `nascimento` date NOT NULL,
  `peso` decimal(5,2) NOT NULL,
  `altura` decimal(3,2) NOT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `telefone` varchar(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `ativo` enum('S','N') DEFAULT 'S',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_aluno`
--

LOCK TABLES `tb_aluno` WRITE;
/*!40000 ALTER TABLE `tb_aluno` DISABLE KEYS */;
INSERT INTO `tb_aluno` VALUES (91,'Gabriel','2005-02-14',92.42,1.82,'M','61998174612','Gabrielcotts1444@gmail.com','S'),(92,'Nathaly','2006-06-17',47.22,1.90,'F','61998277112','Gabrielcotts1000@gmail.com','N'),(93,'Alan','2011-10-21',44.22,1.60,'M','61990176312','Gabrielcotts1111@gmail.com','N'),(94,'Ana','2006-01-23',67.42,1.47,'F','61993277412','Gabrielcotts1222@gmail.com','S'),(95,'Mario','2014-06-14',52.41,1.63,'M','61999671461','Gabrielcotts1333@gmail.com','S'),(96,'Alice','2010-04-29',62.62,1.58,'F','61998470112','Gabrielcotts1555@gmail.com','N'),(97,'Miguel','2005-11-30',52.91,1.91,'M','61990272412','Gabrielcotts1666@gmail.com','S'),(98,'Lilian','2001-12-20',80.32,1.72,'M','61991273412','Gabrielcotts1777@gmail.com','N'),(99,'Maria','1985-09-13',122.92,1.76,'F','61993277212','Gabrielcotts1888@gmail.com','S'),(100,'Rafaela','2004-01-01',63.21,1.52,'F','61994671012','Gabrielcotts1999@gmail.com','S');
/*!40000 ALTER TABLE `tb_aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_livro`
--

DROP TABLE IF EXISTS `tb_livro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_livro` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(120) NOT NULL,
  `autor` varchar(80) NOT NULL,
  `nome_editora` varchar(80) NOT NULL DEFAULT 'desconhecida',
  `paginas` int unsigned DEFAULT NULL,
  `preco` decimal(8,2) NOT NULL,
  `categoria` varchar(40) NOT NULL,
  `disponivel` enum('S','N') DEFAULT 'S',
  `ano_publicacao` year NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_livro`
--

LOCK TABLES `tb_livro` WRITE;
/*!40000 ALTER TABLE `tb_livro` DISABLE KEYS */;
INSERT INTO `tb_livro` VALUES (1,'Lógica de programação','Fábio Mandela','',437,129.90,'didático','S',2011),(2,'Banco de dados','Fábio Mandela','',831,299.90,'didático','S',2022),(3,'Engenharia de Software','Alessandro Sousa','',421,82.90,'didático','N',2014),(4,'One Piece','Oda','',1500,219.90,'aventura','S',1998),(5,'Naruto','Masashi Kishimoto','',847,189.90,'aventura','N',2011),(6,'Dragon Ball','Akira Toriyama','',987,99.90,'aventura','S',1990),(7,'Jujutso Kaizen','Gege akutami','',406,229.90,'aventura','N',2020),(8,'Ataque aos titãs','Hajime Isayama','',239,409.90,'aventura','S',2009);
/*!40000 ALTER TABLE `tb_livro` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-29 13:28:23
