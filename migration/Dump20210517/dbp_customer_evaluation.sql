-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dbp
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `customer_evaluation`
--

DROP TABLE IF EXISTS `customer_evaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_evaluation` (
  `evaluation_content1` varchar(255) NOT NULL,
  `evaluation_score1` int NOT NULL,
  `evaluation_content2` varchar(255) NOT NULL,
  `evaluation_score2` int NOT NULL,
  `project_no` int NOT NULL,
  `customer_id` int NOT NULL,
  `non_evaluator_no` int NOT NULL,
  
  PRIMARY KEY (`project_no`,`non_evaluator_no`,`customer_id`),
  KEY `non_evaluator_no` (`non_evaluator_no`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `customer_evaluation_ibfk_1` FOREIGN KEY (`non_evaluator_no`) REFERENCES `employee` (`emp_no`),
  CONSTRAINT `customer_evaluation_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `customer_evaluation_ibfk_3` FOREIGN KEY (`project_no`) REFERENCES `project` (`project_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_evaluation`
--

LOCK TABLES `customer_evaluation` WRITE;
/*!40000 ALTER TABLE `customer_evaluation` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_evaluation` ENABLE KEYS */;
INSERT INTO customer_evaluation (evaluation_content1, evaluation_score1, evaluation_content2, evaluation_score2, customer_id, non_evaluator_no, project_no) VALUES ("많이 좋음", 90, "보통임", 70, 1, 1, 1);
INSERT INTO customer_evaluation (evaluation_content1, evaluation_score1, evaluation_content2, evaluation_score2, customer_id, non_evaluator_no, project_no) VALUES ("좋음", 70, "그럭저럭", 50, 1, 2, 1);
INSERT INTO customer_evaluation (evaluation_content1, evaluation_score1, evaluation_content2, evaluation_score2, customer_id, non_evaluator_no, project_no) VALUES ("아주 좋음", 100, "별로", 30, 1, 3, 1);
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-17 11:52:01
