-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: moviehub
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `registro_de_compra`
--

DROP TABLE IF EXISTS `registro_de_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registro_de_compra` (
  `id_compra` int NOT NULL AUTO_INCREMENT,
  `assinatura` enum('Grátis','Premium','Deluxe','Deluxe Pro') DEFAULT 'Grátis',
  `cpf_usuario` char(11) NOT NULL,
  `data_compra` date NOT NULL,
  `valor_total` decimal(6,2) NOT NULL,
  `status_compra` enum('Concluída','Pendente','Cancelada') DEFAULT 'Pendente',
  `metodo_pagamento` enum('Cartão de Crédito','Boleto','PayPal','Transferência Bancária') DEFAULT 'Cartão de Crédito',
  PRIMARY KEY (`id_compra`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_de_compra`
--

LOCK TABLES `registro_de_compra` WRITE;
/*!40000 ALTER TABLE `registro_de_compra` DISABLE KEYS */;
INSERT INTO `registro_de_compra` VALUES (1,'Grátis','43215678901','2024-09-01',0.00,'Concluída','Cartão de Crédito'),(2,'Premium','23456789012','2024-09-02',10.00,'Pendente','Boleto'),(3,'Deluxe','34567890123','2024-09-03',25.50,'Concluída','PayPal'),(4,'Deluxe Pro','45678901234','2024-09-04',49.99,'Cancelada','Transferência Bancária'),(5,'Grátis','56789012345','2024-09-05',0.00,'Concluída','Cartão de Crédito'),(6,'Premium','67890123456','2024-09-06',10.00,'Pendente','Boleto'),(7,'Deluxe','78901234567','2024-09-07',25.50,'Concluída','PayPal'),(8,'Deluxe Pro','89012345678','2024-09-08',49.99,'Concluída','Transferência Bancária'),(9,'Grátis','90123456789','2024-09-09',0.00,'Pendente','Cartão de Crédito'),(10,'Premium','01234567890','2024-09-10',10.00,'Cancelada','Boleto');
/*!40000 ALTER TABLE `registro_de_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servico`
--

DROP TABLE IF EXISTS `servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servico` (
  `assinatura` enum('Grátis','Premium','Deluxe','Deluxe Pro') DEFAULT (_utf8mb4'Gratis'),
  `preco_plano` enum('0.00','10.00','25.50','49.99') DEFAULT (_utf8mb4'0.00'),
  `filme` varchar(85) NOT NULL,
  `preco_filme` decimal(4,2) NOT NULL,
  `id_filme` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_filme`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servico`
--

LOCK TABLES `servico` WRITE;
/*!40000 ALTER TABLE `servico` DISABLE KEYS */;
INSERT INTO `servico` VALUES ('Grátis','0.00','O Mágico de Oz',0.00,1),('Premium','10.00','A Origem',9.99,2),('Deluxe','25.50','O Senhor dos Anéis: A Sociedade do Anel',19.99,3),('Deluxe Pro','49.99','Vingadores: Ultimato',39.99,4),('Grátis','0.00','O Grande Lebowski',0.00,5),('Premium','10.00','A Rede Social',8.99,6),('Deluxe','25.50','Pulp Fiction',18.49,7),('Deluxe Pro','49.99','O Poderoso Chefão',29.99,8),('Grátis','0.00','A Fantástica Fábrica de Chocolate',0.00,9),('Premium','10.00','Inception',11.49,10);
/*!40000 ALTER TABLE `servico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `nome` varchar(100) NOT NULL,
  `nome_social` varchar(100) DEFAULT NULL,
  `cpf` char(11) NOT NULL,
  `data_nascimento` date DEFAULT NULL,
  `estilo_favorito` char(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `sexo` enum('M','F','O') NOT NULL,
  `senha` varchar(50) DEFAULT (_utf8mb4'senha123456'),
  PRIMARY KEY (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('Gustavo Fernandes','Gus Fernandes','01234567890','1994-07-01','Musical','gustavo.fernandes@email.com','M','GusF3rn@nd0M!s'),('Carlos Eduardo Costa','Carlos Costa','23456789012','1985-08-22','Ação','carlos.costa@email.com','M','C@rlo$85Act1'),('Beatriz Almeida','Bia Almeida','34567890123','1992-11-10','Drama','beatriz.almeida@email.com','F','B!aAlm3ida92'),('Ana Maria Silva','Ana Silva','43215678901','1990-05-15','Comédia','ana.silva@email.com','F','AnaS!lva90#'),('Fernando Oliveira',NULL,'45678901234','1988-01-05','Terror','fernando.oliveira@email.com','M','F3rn@nd0T3rr0'),('Juliana Santos','Ju Santos','56789012345','1995-03-20','Ficção Científica','juliana.santos@email.com','F','JuS@nt0s95Fic'),('Lucas Pereira',NULL,'67890123456','1993-06-30','Romance','lucas.pereira@email.com','M','LuC@sRom@nc3'),('Mariana Souza','Mari Souza','78901234567','1987-09-15','Animação','mariana.souza@email.com','F','M@ri4n@S0uz@'),('Ricardo Lima','Rick Lima','89012345678','1991-04-25','Suspense','ricardo.lima@email.com','M','R1ckL!m@91Sus'),('Tatiane Rocha',NULL,'90123456789','1989-12-12','Aventura','tatiane.rocha@email.com','F','T@tiRoch@89Av');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-05 20:03:15
