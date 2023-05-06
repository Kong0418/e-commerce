CREATE DATABASE  IF NOT EXISTS `final` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `final`;
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: final
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
-- Table structure for table `board_d1`
--

DROP TABLE IF EXISTS `board_d1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_d1` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `star` varchar(255) DEFAULT NULL,
  `textarea` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_d1`
--

LOCK TABLES `board_d1` WRITE;
/*!40000 ALTER TABLE `board_d1` DISABLE KEYS */;
INSERT INTO `board_d1` VALUES (1,'呱呱','3','(•͈⌔•͈⑅) ');
/*!40000 ALTER TABLE `board_d1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_d2`
--

DROP TABLE IF EXISTS `board_d2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_d2` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `star` varchar(255) DEFAULT NULL,
  `textarea` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_d2`
--

LOCK TABLES `board_d2` WRITE;
/*!40000 ALTER TABLE `board_d2` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_d2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_d3`
--

DROP TABLE IF EXISTS `board_d3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_d3` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `star` varchar(255) DEFAULT NULL,
  `textarea` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_d3`
--

LOCK TABLES `board_d3` WRITE;
/*!40000 ALTER TABLE `board_d3` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_d3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_d4`
--

DROP TABLE IF EXISTS `board_d4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_d4` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `star` varchar(255) DEFAULT NULL,
  `textarea` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_d4`
--

LOCK TABLES `board_d4` WRITE;
/*!40000 ALTER TABLE `board_d4` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_d4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_n1`
--

DROP TABLE IF EXISTS `board_n1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_n1` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `star` varchar(255) DEFAULT NULL,
  `textarea` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_n1`
--

LOCK TABLES `board_n1` WRITE;
/*!40000 ALTER TABLE `board_n1` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_n1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_n2`
--

DROP TABLE IF EXISTS `board_n2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_n2` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `star` varchar(255) DEFAULT NULL,
  `textarea` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_n2`
--

LOCK TABLES `board_n2` WRITE;
/*!40000 ALTER TABLE `board_n2` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_n2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_n3`
--

DROP TABLE IF EXISTS `board_n3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_n3` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `star` varchar(255) DEFAULT NULL,
  `textarea` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_n3`
--

LOCK TABLES `board_n3` WRITE;
/*!40000 ALTER TABLE `board_n3` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_n3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_n4`
--

DROP TABLE IF EXISTS `board_n4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_n4` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `star` varchar(255) DEFAULT NULL,
  `textarea` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_n4`
--

LOCK TABLES `board_n4` WRITE;
/*!40000 ALTER TABLE `board_n4` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_n4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_o1`
--

DROP TABLE IF EXISTS `board_o1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_o1` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `star` varchar(255) DEFAULT NULL,
  `textarea` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_o1`
--

LOCK TABLES `board_o1` WRITE;
/*!40000 ALTER TABLE `board_o1` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_o1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_o2`
--

DROP TABLE IF EXISTS `board_o2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_o2` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `star` varchar(255) DEFAULT NULL,
  `textarea` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_o2`
--

LOCK TABLES `board_o2` WRITE;
/*!40000 ALTER TABLE `board_o2` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_o2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_o3`
--

DROP TABLE IF EXISTS `board_o3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_o3` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `star` varchar(255) DEFAULT NULL,
  `textarea` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_o3`
--

LOCK TABLES `board_o3` WRITE;
/*!40000 ALTER TABLE `board_o3` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_o3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_o4`
--

DROP TABLE IF EXISTS `board_o4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_o4` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `star` varchar(255) DEFAULT NULL,
  `textarea` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_o4`
--

LOCK TABLES `board_o4` WRITE;
/*!40000 ALTER TABLE `board_o4` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_o4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_w1`
--

DROP TABLE IF EXISTS `board_w1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_w1` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `star` varchar(255) DEFAULT NULL,
  `textarea` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_w1`
--

LOCK TABLES `board_w1` WRITE;
/*!40000 ALTER TABLE `board_w1` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_w1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_w2`
--

DROP TABLE IF EXISTS `board_w2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_w2` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `star` varchar(255) DEFAULT NULL,
  `textarea` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_w2`
--

LOCK TABLES `board_w2` WRITE;
/*!40000 ALTER TABLE `board_w2` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_w2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_w3`
--

DROP TABLE IF EXISTS `board_w3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_w3` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `star` varchar(255) DEFAULT NULL,
  `textarea` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_w3`
--

LOCK TABLES `board_w3` WRITE;
/*!40000 ALTER TABLE `board_w3` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_w3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_w4`
--

DROP TABLE IF EXISTS `board_w4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_w4` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `star` varchar(255) DEFAULT NULL,
  `textarea` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_w4`
--

LOCK TABLES `board_w4` WRITE;
/*!40000 ALTER TABLE `board_w4` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_w4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `count` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counter`
--

DROP TABLE IF EXISTS `counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `counter` (
  `Count` int NOT NULL,
  PRIMARY KEY (`Count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counter`
--

LOCK TABLES `counter` WRITE;
/*!40000 ALTER TABLE `counter` DISABLE KEYS */;
INSERT INTO `counter` VALUES (5);
/*!40000 ALTER TABLE `counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dark`
--

DROP TABLE IF EXISTS `dark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dark` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `src` varchar(45) DEFAULT NULL,
  `href` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `stock` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dark`
--

LOCK TABLES `dark` WRITE;
/*!40000 ALTER TABLE `dark` DISABLE KEYS */;
INSERT INTO `dark` VALUES (1,'黑巧克力','../assets/Images/Dark1.jpg','back.jsp','100','999');
/*!40000 ALTER TABLE `dark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `Name` varchar(255) NOT NULL,
  `Phone` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Account` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  PRIMARY KEY (`Account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('呱呱','609','1@1','10844119','123456789'),('喵喵','0987654321','0@0','meow','1234');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_dark`
--

DROP TABLE IF EXISTS `product_dark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_dark` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `href` varchar(255) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `stock` varchar(255) DEFAULT NULL,
  `Types` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_dark`
--

LOCK TABLES `product_dark` WRITE;
/*!40000 ALTER TABLE `product_dark` DISABLE KEYS */;
INSERT INTO `product_dark` VALUES (1,'../pages/Dark1.jsp','../assets/Images/Dark1.jpg','黑巧克力','100','950','D'),(2,'../pages/Dark2.jsp','../assets/Images/Dark2.jpg','黑巧克力蛋糕','200','996','D'),(3,'../pages/Dark3.jsp','../assets/Images/Dark3.jpg','黑巧克力軟餅乾','150','997','D'),(4,'../pages/Dark4.jsp','../assets/Images/Dark4.jpg','黑巧克力泡芙','150','999','D');
/*!40000 ALTER TABLE `product_dark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_nama`
--

DROP TABLE IF EXISTS `product_nama`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_nama` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `href` varchar(255) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `stock` varchar(255) DEFAULT NULL,
  `Types` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_nama`
--

LOCK TABLES `product_nama` WRITE;
/*!40000 ALTER TABLE `product_nama` DISABLE KEYS */;
INSERT INTO `product_nama` VALUES (1,'../pages/Nama1.jsp','../assets/Images/Nama1.jpg','醇酒生巧克力','300','999','N'),(2,'../pages/Nama2.jsp','../assets/Images/Nama2.jpg','草莓生巧克力','230','999','N'),(3,'../pages/Nama3.jsp','../assets/Images/Nama3.jpg','榛果生巧克力','230','999','N'),(4,'../pages/Nama4.jsp','../assets/Images/Nama4.jpg','原味生巧克力','200','999','N');
/*!40000 ALTER TABLE `product_nama` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_others`
--

DROP TABLE IF EXISTS `product_others`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_others` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `href` varchar(255) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `stock` varchar(255) DEFAULT NULL,
  `Types` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_others`
--

LOCK TABLES `product_others` WRITE;
/*!40000 ALTER TABLE `product_others` DISABLE KEYS */;
INSERT INTO `product_others` VALUES (1,'../pages/Other1.jsp','../assets/Images/Other1.jpg','比利時巧克力脆片','200','999','O'),(2,'../pages/Other2.jsp','../assets/Images/Other2.jpg','巧克力杏仁脆片','150','999','O'),(3,'../pages/Other3.jsp','../assets/Images/Other3.jpg','巧克力拉麵','180','999','O'),(4,'../pages/Other4.jsp','../assets/Images/Other4.jpg','紅寶石巧克力','400','999','O');
/*!40000 ALTER TABLE `product_others` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_white`
--

DROP TABLE IF EXISTS `product_white`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_white` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `href` varchar(255) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `stock` varchar(255) DEFAULT NULL,
  `Types` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_white`
--

LOCK TABLES `product_white` WRITE;
/*!40000 ALTER TABLE `product_white` DISABLE KEYS */;
INSERT INTO `product_white` VALUES (1,'../pages/White1.jsp','../assets/Images/White1.jpg','白巧克力','100','999','W'),(2,'../pages/White2.jsp','../assets/Images/White2.jpg','白巧克力檸檬蛋糕','200','999','W'),(3,'../pages/White3.jsp','../assets/Images/White3.jpg','白巧克力豆餅乾','120','999','W'),(4,'../pages/White4.jsp','../assets/Images/White4.jpg','白巧克力慕斯','150','999','W');
/*!40000 ALTER TABLE `product_white` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `count` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase`
--

LOCK TABLES `purchase` WRITE;
/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-17 17:45:34
