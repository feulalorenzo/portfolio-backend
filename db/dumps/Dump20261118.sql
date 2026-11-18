-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: portfolio_db
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
-- Table structure for table `certificates`
--

DROP TABLE IF EXISTS `certificates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `certificates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `certificate_issuer` varchar(150) NOT NULL,
  `date_year` varchar(20) NOT NULL,
  `credential_url` varchar(255) DEFAULT '#',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificates`
--

LOCK TABLES `certificates` WRITE;
/*!40000 ALTER TABLE `certificates` DISABLE KEYS */;
INSERT INTO `certificates` VALUES (1,'High School Diploma in Computer Science','ITI A.Pacinotti, Italy','2022','#'),(2,'Bachelor\'s Degree in Computer Science','Università degli Studi dell\'Aquila, Italy','2026','#');
/*!40000 ALTER TABLE `certificates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sender_name` varchar(100) NOT NULL,
  `sender_email` varchar(150) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,'Peppe Vitale','giuseppe.vitale04@gmail.com','Ao a bello mio forza Roma, forza Lupi!','2026-11-18 20:53:05'),(2,'Antonio Muscolo','muscolo225@gmail.com','Sessiamo?','2026-11-18 20:59:45');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_info`
--

DROP TABLE IF EXISTS `profile_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profile_info` (
  `id` int NOT NULL DEFAULT '1',
  `my_name` varchar(100) NOT NULL,
  `my_surname` varchar(100) NOT NULL,
  `my_role` varchar(100) NOT NULL,
  `availability_text` varchar(100) NOT NULL,
  `hero_bio` text,
  `about_title` varchar(150) DEFAULT NULL,
  `about_bio` text,
  `years_exp` varchar(20) DEFAULT NULL,
  `projects_done` varchar(20) DEFAULT NULL,
  `cv_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_info`
--

LOCK TABLES `profile_info` WRITE;
/*!40000 ALTER TABLE `profile_info` DISABLE KEYS */;
INSERT INTO `profile_info` VALUES (1,'Lorenzo','Feula','Junior Game Developer','Available for work','Computer Science student and Junior Developer passionate about building modern web applications and interactive experiences. Focused on clean code, responsive design, and continuous learning.','Turning Ideas Into Digital Reality','I am a Computer Science student at the University of L\'Aquila with a strong interest in both web development and game programming. From crafting responsive user interfaces with React and Tailwind CSS to developing interactive projects in Unity and C#, I enjoy turning complex problems into intuitive digital solutions.','2+','3+','/assets/CV.pdf');
/*!40000 ALTER TABLE `profile_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `github_url` varchar(255) DEFAULT '#',
  `live_url` varchar(255) DEFAULT '#',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'Ermes Project','The ERMES project aims to develop an advanced technological solution for the motor rehabilitation of patients with neuromotor or neurocognitive disabilities.','/assets/project1.jpg','Unity,C#','#','#'),(2,'Grabya!','2D Puzzle Game developed during a Game Jam contest','/assets/project2.jpg','Godot,GDScript','#','https://fabryshii.itch.io/grabya'),(3,'Portfolio','This portfolio is made by me, using both Frontend and Backend skills','/assets/project3.jpg','React Js,Tailwind CSS,Framer Motion, PHP, MySQL','https://github.com/feulalorenzo/portfolio','https://feulalorenzo.gamer.gd');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `id` int NOT NULL AUTO_INCREMENT,
  `skill_name` varchar(50) NOT NULL,
  `percentage` int NOT NULL,
  `color` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1,'React Js',70,'#61DAFB'),(2,'Tailwind CSS',40,'#06B6D4'),(3,'Unity',80,'#4FC08D'),(4,'Javascript',70,'#F7DF1E');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_links`
--

DROP TABLE IF EXISTS `social_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_links` (
  `id` int NOT NULL AUTO_INCREMENT,
  `platform` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_links`
--

LOCK TABLES `social_links` WRITE;
/*!40000 ALTER TABLE `social_links` DISABLE KEYS */;
INSERT INTO `social_links` VALUES (1,'Instagram','https://www.instagram.com/lorenzo.feula/'),(2,'Tiktok','https://www.tiktok.com/@lorenzo.feula'),(3,'Github','https://github.com/feulalorenzo'),(4,'Youtube','https://www.youtube.com/@LoryCat_22'),(5,'Linkedin','https://www.linkedin.com/in/lorenzo-feula-438a98244/');
/*!40000 ALTER TABLE `social_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_text`
--

DROP TABLE IF EXISTS `website_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_text` (
  `id` int NOT NULL DEFAULT '1',
  `skills_text` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_text`
--

LOCK TABLES `website_text` WRITE;
/*!40000 ALTER TABLE `website_text` DISABLE KEYS */;
INSERT INTO `website_text` VALUES (1,'Over the years, I have acquired various skills through my training and the projects I have undertaken. Some of these are listed below.');
/*!40000 ALTER TABLE `website_text` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-18 22:23:15
