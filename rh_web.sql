-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: rh_web
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.10.1

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
-- Table structure for table `about`
--

DROP TABLE IF EXISTS `about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `about` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `speciality_masters_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about`
--

LOCK TABLES `about` WRITE;
/*!40000 ALTER TABLE `about` DISABLE KEYS */;
INSERT INTO `about` VALUES (1,'About  Child Care','24/7 healthcare for children','Pediatricians are not mere doctors – they are trusted partners in your child’s health. At Rainbow Children’s Hospital, we put ourselves in the shoes of the parents and endeavor primarily for children’s healthcare. Your child’s good health, well-being and happiness are our priority. Our panel of doctors has extensive knowledge and experience on holistic development of a child at physical, emotional and social levels and can give your child the care that is just right for his or her age and stage of life.','/uploads/45ddefca5a64ef8fac98a575b0fb137b.jpg','We offer a complete range of healthcare services for children from birth, supported all through their childhood and growing years. We offer the following comprehensive pediatric care services as a part of our, out-patient and in-patient departments:',1,'2017-05-17 23:44:45','2017-05-17 23:44:45');
/*!40000 ALTER TABLE `about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aboutus`
--

DROP TABLE IF EXISTS `aboutus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aboutus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aboutus`
--

LOCK TABLES `aboutus` WRITE;
/*!40000 ALTER TABLE `aboutus` DISABLE KEYS */;
/*!40000 ALTER TABLE `aboutus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `awards_history`
--

DROP TABLE IF EXISTS `awards_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `awards_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `awards_history`
--

LOCK TABLES `awards_history` WRITE;
/*!40000 ALTER TABLE `awards_history` DISABLE KEYS */;
INSERT INTO `awards_history` VALUES (1,'Hospital Awards','/uploads/bbd77b74f77681f466444cae76c79438.jpg','2010-2013','Amongst the Top 5 Best Multi-Specialist Hospitals','In the Country there are top 5 hospitals. We are the best.','2017-05-18 07:45:14','2017-05-18 07:45:14');
/*!40000 ALTER TABLE `awards_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brief_facilities`
--

DROP TABLE IF EXISTS `brief_facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brief_facilities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `speciality_masters_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `page` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brief_facilities`
--

LOCK TABLES `brief_facilities` WRITE;
/*!40000 ALTER TABLE `brief_facilities` DISABLE KEYS */;
INSERT INTO `brief_facilities` VALUES (1,'/uploads/52d59b7a6fb6598e2e1b3de4ddf335ab.jpg','Prenatal consultations.',1,'2017-05-18 00:53:57','2017-05-18 00:53:57',''),(2,'/uploads/5a611d7f7e416e25cced991eabca1db3.jpg','Critical care supported by our Level 3, state of the art Neonatal Intensive Care Units (NICU) and Pediatric Intensive Care Units (PICU)',2,'2017-05-18 00:54:52','2017-05-18 00:54:52',''),(3,'/uploads/7896654cdb2b7eb00d8ae7ef58af318e.jpg','Care of illness supported by our multi disciplinary specialty services including General Pediatrics, Neonatology, Nephrology, Neurology, Gastroenterology, Hematology, Oncology, Cardiology, Genetic and Metabolic Diseases, Pediatric Dentistry and Nutrition.',1,'2017-05-18 00:55:17','2017-05-18 00:55:17',''),(4,'/uploads/de40a0e3f1c1237c5300a5a76e309cb6.jpg','Pediatric Surgery.',1,'2017-05-18 00:55:41','2017-05-18 00:55:41',''),(5,'/uploads/b6f7cc847df79cd2658372043335ef82.jpg','Vaccination and immunization programs.',4,'2017-05-18 00:56:08','2017-05-18 00:56:08',''),(6,'/uploads/29d799a4d7f7504d4d1b4dc520cfe733.jpg','Healthcare, wellness and nutrition education.',1,'2017-05-18 00:58:06','2017-05-18 00:58:06',''),(7,'/uploads/59e1b242250a04342703d9907fcd8d2d.jpg','Care and treatment of minor injuries.',2,'2017-05-18 00:58:28','2017-05-18 00:58:28',''),(8,'/uploads/0de24c3859be705bb5a6a3b785171217.jpg','Preventive Health care advocated through a series of awareness and wellness programs that we run from time to time.',1,'2017-05-18 00:58:41','2017-05-18 00:58:41',''),(9,'/uploads/91c4879c651235b82589b2206fa3253b.jpg','Pediatric Dentistry.',1,'2017-05-18 00:58:55','2017-05-18 00:58:55',''),(10,'/uploads/35357564f0fdb38dd3ffaf33f0408594.jpg','24*7 Emergency & Transport Services.',3,'2017-05-18 00:59:25','2017-05-18 00:59:25',''),(12,'/uploads/3ddc37aa00c5817d15ccfda827740d08.jpg','are, Commitment and Compassion.',1,'2017-05-18 06:15:35','2017-05-18 06:15:35','What-We-Do');
/*!40000 ALTER TABLE `brief_facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `centers`
--

DROP TABLE IF EXISTS `centers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `centers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `center_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `centers`
--

LOCK TABLES `centers` WRITE;
/*!40000 ALTER TABLE `centers` DISABLE KEYS */;
/*!40000 ALTER TABLE `centers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qualification` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `healthcare_service`
--

DROP TABLE IF EXISTS `healthcare_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `healthcare_service` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `speciality_masters_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `page` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `healthcare_service`
--

LOCK TABLES `healthcare_service` WRITE;
/*!40000 ALTER TABLE `healthcare_service` DISABLE KEYS */;
INSERT INTO `healthcare_service` VALUES (1,'/uploads/d93515061b9a27a923649916ac4c013b.jpg','500- BED HEALTH CENTRE','Rainbow hospital for children is 500 – they are trusted partners in your child’s health. At Rainbow Children’s Hospital, we put ourselves in the shoes of the parents and endeavor primarily for children’s healthcare. Your child’s good health, well-being and happiness are our priority. Our panel of doctors has extensive knowledge and experience on holistic development of a child at physical, emotional and social levels and can give your child the care that is just right for his or her age and stage of life.',1,'2017-05-18 00:16:34','2017-05-18 00:16:34',''),(2,'/uploads/eba83e44b5f2ce22d1aa41106a290ee7.jpg','12000 IMPATIENT ADMISSIONSHEALTH CENTRE','Rainbow hospital for children is 200 – they are trusted partners in your child’s health. At Rainbow Children’s Hospital, we put ourselves in the shoes of the parents and endeavor primarily for children’s healthcare. Your child’s good health, well-being and happiness are our priority. Our panel of doctors has extensive knowledge and experience on holistic development of a child at physical, emotional and social levels and can give your child the care that is just right for his or her age and stage of life.',1,'2017-05-18 00:17:38','2017-05-18 00:17:38',''),(3,'/uploads/65717a6a90d7f32aec37befedf48ed4c.jpg','FINEST PEDIATRICIAN','Rainbow hospital for children is 300 – they are trusted partners in your child’s health. At Rainbow Children’s Hospital, we put ourselves in the shoes of the parents and endeavor primarily for children’s healthcare. Your child’s good health, well-being and happiness are our priority. Our panel of doctors has extensive knowledge and experience on holistic development of a child at physical, emotional and social levels and can give your child the care that is just right for his or her age and stage of life.',1,'2017-05-18 00:18:07','2017-05-18 00:18:07',''),(4,'/uploads/ad35d68858ff1569fbe7127c244e88bc.jpg','Childcare','THis is really the best.',1,'2017-05-18 05:12:44','2017-05-18 05:12:44','ChidCare'),(5,'/uploads/d3dd88628d5bbc734e37977fad849a70.jpg','Our DNA','Out of the Three C\'s Stands for Care,Commitment and compassion.',1,'2017-05-18 06:34:24','2017-05-18 06:34:24','Why Choose Us'),(6,'/uploads/2910761d31f57462449de0a1bb53217a.jpg','Intensifying Surgical Care','Achieving the highest number of infants in the world...',1,'2017-05-18 06:38:35','2017-05-18 06:39:47','Cutting Edge Medical Solutions Milestones Achieved'),(7,'/uploads/feb28ba7595c575a0f04f444e7d09672.jpg','Sophisticated maternal care','Rainbow launched its Perinatal Centre for Women with the sole aim of gifting soon-to-be mothers a safe, secure and happy motherhood especially in high risk pregnancy cases. With state-of-the-art labor rooms attached with Maternity ICU, over 175 deliveries are handled every month. Rainbow has initiated high end LDRP Suites (Labor, delivery, recovery, postpartum suites) the first of its kind in South India. The average stay duration of 1.97 days for normal delivery and 3.99 days for LSCS patients is on par with international standards. We are also known for the least possible surgical interventions and pave way for natural birthing.',3,'2017-05-18 06:40:54','2017-05-18 06:41:12','Cutting Edge Medical Solutions Details');
/*!40000 ALTER TABLE `healthcare_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history_details`
--

DROP TABLE IF EXISTS `history_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `page` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history_details`
--

LOCK TABLES `history_details` WRITE;
/*!40000 ALTER TABLE `history_details` DISABLE KEYS */;
INSERT INTO `history_details` VALUES (1,'2017-05-18','/uploads/09c40a13648e37ae51197ff15419c248.jpg','Rainbow Hospital for Women and Children at Kondapur','To enable more number of women and children to enjoy good quality healthcare and be more accessible to people in Hyderabad city, we opened a comprehensive healthcare facility for women and children at Kondapur, in 2013. This is a 50 bed ultramodern, sophisticated hospital with exclusive maternity care unit supported with Fetal Medicine, Neonatal and Pediatric.','www.youtube.com','2017-05-18 07:29:31','2017-05-18 22:47:29','History'),(2,'2017-05-19','/uploads/1a34b53bed0ea275a28db1c2d8fa0d06.jpg','Dr.Bhavana Kasu','Q & A Coloumn Published in Sakshi.','www.skandroidtech.com','2017-05-18 22:45:24','2017-05-18 22:47:39','Media'),(3,NULL,'/uploads/eb302d01745de1a1ff6ea16f0412ebff.jpg','Media Contact & Policy','The Public Relations & Media Department at Rainbow Hospitals handles all media inquiries. We welcome inquiries from local, regional and national media and members of the media should call the Public Relations and Media Department if you have any of the following requests\r\n\r\nInterview with an expert spokesperson for medical news or with a doctor on healthcare topics. We are happy to connect you with some of the world’s most knowledgeable pediatric and women care doctors from across different specialties. Our experts can provide information about cutting edge medical care, healthcare trends & topics, patient stories and more.\r\nArrangement for any photography or video shoots within the hospital during any press meet or events. Please note that the Hospital Policy requires that a PR team member accompany all media personnel during their visit to Rainbow Hospital across all locations.\r\nAny information request related to a news releases, event or press release from the hospital.','www.skandroidtech.com','2017-05-18 22:58:41','2017-05-18 22:58:41','Media'),(4,NULL,'/uploads/a10e9cb17b6f201e4fe4fbe2163bd48c.jpg','WHY JOIN US?','At Rainbow Hospital, we believe that people are the DNA of our organization and each one brings a special worldview that contributes largely to high quality, focused and dedicated patient care, research and education for which we are renowned.','https://www.youtube.com/watch?time_continue=4&v=3J_R5qXHsCs','2017-05-18 23:11:46','2017-05-18 23:11:46','Careers');
/*!40000 ALTER TABLE `history_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_events`
--

DROP TABLE IF EXISTS `home_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_events`
--

LOCK TABLES `home_events` WRITE;
/*!40000 ALTER TABLE `home_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `home_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_highlights`
--

DROP TABLE IF EXISTS `home_highlights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_highlights` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `highlights` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_highlights`
--

LOCK TABLES `home_highlights` WRITE;
/*!40000 ALTER TABLE `home_highlights` DISABLE KEYS */;
INSERT INTO `home_highlights` VALUES (1,'Big','Equations','Superb!!!','/uploads/0da72ebee888e6885d0b871338b1bb60.jpg','2017-05-17 00:01:50','2017-05-17 00:01:50'),(2,'Rahalkar','Infotech','TYooo','/uploads/495ee71344aeae0c1f79db72fd473ad4.jpg','2017-05-17 01:42:12','2017-05-17 01:42:12');
/*!40000 ALTER TABLE `home_highlights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital_specialities`
--

DROP TABLE IF EXISTS `hospital_specialities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hospital_specialities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hospital_id` int(10) unsigned NOT NULL,
  `speciality_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_specialities`
--

LOCK TABLES `hospital_specialities` WRITE;
/*!40000 ALTER TABLE `hospital_specialities` DISABLE KEYS */;
INSERT INTO `hospital_specialities` VALUES (1,2,1,NULL,NULL),(2,2,2,NULL,NULL);
/*!40000 ALTER TABLE `hospital_specialities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospitals`
--

DROP TABLE IF EXISTS `hospitals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hospitals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `map_coordinates` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_highlights` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `specialities` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Not Available',
  `visitor_information` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospitals`
--

LOCK TABLES `hospitals` WRITE;
/*!40000 ALTER TABLE `hospitals` DISABLE KEYS */;
INSERT INTO `hospitals` VALUES (1,'Kashif shaikh','D-403 Varsha Adarsh Society\r\nNehru Nagar, Kurla east','east 204,west 501','9167772953','dafd fadsf  sf dfsafd','2','2','fdadf af fdasf dfsa f','2017-05-17 02:00:35','2017-05-17 02:00:35'),(2,'Global Hospital','HEllo World','1.2,3.432','038329991','Some special Hospital for treatement','2','Not Available','Hello, visitor.','2017-05-17 02:13:24','2017-05-17 02:13:24');
/*!40000 ALTER TABLE `hospitals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `left_highlights`
--

DROP TABLE IF EXISTS `left_highlights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `left_highlights` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `left_highlights`
--

LOCK TABLES `left_highlights` WRITE;
/*!40000 ALTER TABLE `left_highlights` DISABLE KEYS */;
/*!40000 ALTER TABLE `left_highlights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `md_message`
--

DROP TABLE IF EXISTS `md_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `md_message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `md_message`
--

LOCK TABLES `md_message` WRITE;
/*!40000 ALTER TABLE `md_message` DISABLE KEYS */;
INSERT INTO `md_message` VALUES (1,'MD\'s Message','Dr. Ramesh Kancharla','Chairman and Managing Director','“At Rainbow we are driven with the powerful belief that to convert the ‘impossible’ to ‘possible’, one has to convert the ‘I’s and Me’s’ to ‘Us and We’. Teamwork is the very soul of our entity as Rainbow Group. One may have a vision but without unequivocal support from likeminded and dedicated child specialists, who joined Rainbow, supported and strengthened the idea further by working alongside to help bring this vision to concrete reality, we would literally still be chasing rainbows..\r\n\r\nFor us at Rainbow, our greatest measure of success is in the number of smiling faces, love and appreciation from our children and their parents and the tremendous support from the medical community. Our success also lies in the knowledge, that with their continued support we will keep on going from strength to strength and hopefully one day Rainbow will extend its umbrella of Perinatal and Tertiary Pediatric care to children nationwide.”','/uploads/263be93eca7d2b14820843401baa444d.jpg','www.youtube.com','2017-05-18 06:53:13','2017-05-18 06:53:13'),(2,'Board of Directors','Dr. Dinesh Kumar Chirla','Whole-time Director','\"We offer Advanced Pediatric & Neonatal intensive care services with support of all Pediatric subspecialties under one roof. We established Rainbow’s Perinatal Center where we take care of the mother and the baby from conception right through to postnatal support. Pediatric Intensive care is a high intensity environment that requires quick diagnosis, lightning decisions, followed by immediate action. Most importantly it also requires a high level of empathy that extends beyond the children brought in critical conditions, to their parents and loved ones.\r\n\r\nWe understand that when a child’s life is at stake even the most reasonable of people tend to lose their balance and cool. This is where our strong philosophy that Intensive Care can never be a one man show but is in fact, a synchronized team effort, comes in to play and has been the fundamental backbone of our success so far. We intend to save many more lives and although we have come a long way, we still have far to go. Our journey will continue till the day that every child in India gets the much needed critical care when necessary. And that no child is ever turned away for want of intensive care facilities. For us at Rainbow, the journey has just begun.\"','/uploads/b24f3689ca3fceae365b522260487acd.jpg','www.youtube.com','2017-05-18 07:02:24','2017-05-18 07:02:24'),(3,'Board of Directors','Dr. Ramesh Kancharla','Chairman and Managing Director','“At Rainbow, we are driven with the powerful belief that to convert the’impossible’ to ‘possible’, one has to convert the ‘I’s and ‘Me’s to ‘Us’ and ‘We’. Teamwork is the very soul of our entity as Rainbow Group. One may have a vision but without unequivocal support from likeminded and dedicated child specialists, who joined Rainbow, supported and strengthened the idea further by working alongside to help bring this vision to concrete reality, we would literally still be chasing rainbows…\r\n\r\nFor us at Rainbow, our greatest measure of success is in the number of smilingfaces, love and appreciation from our children and their parents and the tremendous support from the medical community. Our success also lies in the knowledge, that with their continued support we will keep on going from strength to strength and hopefully one day Rainbow will extend its umbrella of Perinatal and Tertiary Pediatric care to children nationwide.”','/uploads/b610d62253bb835ad3af3c7b9f8ad9d3.jpg','www.youtube.com','2017-05-18 07:03:47','2017-05-18 07:03:47');
/*!40000 ALTER TABLE `md_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_press_release`
--

DROP TABLE IF EXISTS `media_press_release`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_press_release` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_press_release`
--

LOCK TABLES `media_press_release` WRITE;
/*!40000 ALTER TABLE `media_press_release` DISABLE KEYS */;
INSERT INTO `media_press_release` VALUES (1,'2017-05-19','Rainbow Hospital sets the “Guinness World Record the largest gathering of people born prematurely under one roof”.','Hyderabad, India:','Breaks the four years old record created in Argentina Mr. KT Rama Rao and Prof Bipin Batra graced the celebrations of “World Prematurity Day”.\r\n\r\nHyderabad, Making impossible, possible. Rainbow Hospitals, which has been saving hundreds of kids who otherwise had little chance to survive is now the proud “Guinness World Record holder for assembling the largest gathering of people born prematurely under one roof.','http://rhadmin.dev/press-releases-details.html','2017-05-18 22:40:22','2017-05-18 22:40:22');
/*!40000 ALTER TABLE `media_press_release` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2015_08_04_131614_create_settings_table',1),(4,'2017_04_16_121839_create_tags_table',1),(5,'2017_04_20_181049_create_home_highlights_table',1),(6,'2017_05_01_061338_create_home_events_table',1),(7,'2017_05_04_115058_create_left_highlights_table',1),(8,'2017_05_04_115215_create_right_highlights_table',1),(9,'2017_05_08_111813_create_rainbow_guide_table',1),(10,'2017_05_08_115939_create_specialities_table',1),(11,'2017_05_09_053901_create_centers_table',1),(12,'2017_05_09_054132_create_aboutus_table',1),(13,'2017_05_09_055201_create_categories_table',1),(14,'2017_05_09_060238_create_doctors_table',1),(15,'2017_05_16_100000_create_Success_stories_table',2),(16,'2017_05_17_053308_create_hospital',3),(17,'2017_05_17_073956_create_hospital_specialities_table',4),(18,'2017_05_17_084225_create_subject',5),(19,'2017_05_17_084316_create_student',5),(20,'2017_05_17_084526_create_student_subject_table',6),(23,'2017_05_17_121038_create_speciality_master_table',7),(24,'2017_05_17_125109_create_speciality_masters',8),(25,'2017_05_17_125756_create_about_table',8),(26,'2017_05_18_052126_create_healthcare_service_table',9),(27,'2017_05_18_055257_create_brief_facilities_table',10),(28,'2017_05_18_063724_create_our_specialities_table',11),(29,'2017_05_18_070842_create_our_speciality_features_table',12),(30,'2017_05_18_103257_add_page_to_healthcare_service_table',13),(31,'2017_05_18_111339_create_page_description',14),(32,'2017_05_18_112926_create_what_we_do_details',15),(33,'2017_05_18_114305_add_page_to_brief_facilities_table',16),(34,'2017_05_18_121635_create_md_message',17),(35,'2017_05_18_123634_create_history_details',18),(36,'2017_05_18_130812_create_awards_history',19),(37,'2017_05_19_035730_create_media_press_release',20),(38,'2017_05_19_041631_add_page_to_history_details__table',21);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `our_specialities`
--

DROP TABLE IF EXISTS `our_specialities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `our_specialities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `speciality_masters_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `our_specialities`
--

LOCK TABLES `our_specialities` WRITE;
/*!40000 ALTER TABLE `our_specialities` DISABLE KEYS */;
INSERT INTO `our_specialities` VALUES (1,'/uploads/07ecb514e7be2f6fbbfe7dad394195ad.jpg','Our Specialities','Health care for your child all under one roof','We are dedicated to providing the highest quality of healthcare for your child and it includes, routine well childcare right from birth to adolescence, treatment for illness and injury and state of the art 24*7 Paediatric Emergency Services. We offer a broad spectrum of inpatient and outpatients services especially tailored to the unique needs of children right from their birth.','/uploads/b8493d358ca7859f88a98fc0b242517e.jpg',1,'2017-05-18 01:32:09','2017-05-18 01:32:09'),(2,'/uploads/99ed05b749add4c8369d709665f9d3cc.jpg','Sample','Some title','Hello World! Thsi si my description.','/uploads/fdde9b4947e239118040a5484a3f4b1f.jpg',3,'2017-05-18 04:29:25','2017-05-18 04:29:25');
/*!40000 ALTER TABLE `our_specialities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `our_speciality_features`
--

DROP TABLE IF EXISTS `our_speciality_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `our_speciality_features` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `speciality_masters_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `our_speciality_features`
--

LOCK TABLES `our_speciality_features` WRITE;
/*!40000 ALTER TABLE `our_speciality_features` DISABLE KEYS */;
INSERT INTO `our_speciality_features` VALUES (1,'/uploads/29eb293b10db57bf2eff744e57cc8f82.jpg','General Pediatrics','The Department of General Pediatrics is one of the largest departments in the Hospital doctors of the department are involved with clinical care, teaching, administration and quality management.','/var/html/rhadmin',4,'2017-05-18 01:48:30','2017-05-18 01:48:30'),(2,'/uploads/65ee83edf6e198cdd73a6efe1c5b7893.jpg','Neonatal','We are dedicated to providing the highest quality of healthcare for your child and it includes, routine well childcare right from birth to adolescence, treatment for illness and injury and state of the art 24*7 Paediatric Emergency Services. We offer a broad spectrum of inpatient and outpatients services especially tailored to the unique needs of children right from their birth.','http://rhadmin.dev/our-specialities.html#',2,'2017-05-18 01:50:33','2017-05-18 01:50:33'),(3,'/uploads/d9ca2015b549057bce747660350cf95d.jpg','Pediatric ICU','We are dedicated to providing the highest quality of healthcare for your child and it includes, routine well childcare right from birth to adolescence, treatment for illness and injury and state of the art 24*7 Paediatric Emergency Services. We offer a broad spectrum of inpatient and outpatients services especially tailored to the unique needs of children right from their birth.','http://rhadmin.dev/our-specialities.html#',3,'2017-05-18 01:51:28','2017-05-18 01:51:28');
/*!40000 ALTER TABLE `our_speciality_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_description`
--

DROP TABLE IF EXISTS `page_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_description` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `page` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_description`
--

LOCK TABLES `page_description` WRITE;
/*!40000 ALTER TABLE `page_description` DISABLE KEYS */;
INSERT INTO `page_description` VALUES (1,'History','Taking a walk down the memory lane','/uploads/636aa474f2c6200a9a3086cbc454be92.jpg','Rainbow Hospitals for Women and Children today reflects a decade plus history of dedicated patient care, pioneering procedures, visionary leadership and most importantly strong community support. We would like to walk you through some of the most significant events in our 15+ years’ history of patient care & commitment to your wellness. We are constantly learning, striving towards maintaining excellence and building on our past, and are poised for continued growth and innovations in the years ahead. Here are some of our milestone achievements and sweet memories from the past and we welcome you to be a part of this journey in future!','History','2017-05-18 05:49:56','2017-05-18 05:49:56'),(2,'Who We are','Rainbow Hospital for Women and Children','/uploads/485d9ec95e3823d528f0b76db57899c6.jpg','has 15 glorious years of excellence in child care, women care and fertility. It is the first corporate children\'s hospital in India, started on 14th November 1999 on Children\'s Day. Setting the benchmark in neonatal and paediatric intensive care, Rainbow has played a major role in saving thousands of critically ill children and has emerged as one of the best children’s hospital in the country. Rainbow Hospitals aims to provide high standards of care for the mother, women, fetus, newborn and children so that none of them is deprived of a tertiary care facility. The hospital\'s clinical staffs include strong team of highly qualified and experienced Consultants, dynamic team of residents and fellows, well trained nurses and paramedical personnel, and highly motivated team of full- and part-time employees. The measure of our success is in the number of smiling faces. We are here because we care for you. Filling your life with the pinkest of health is our dream. As a Women and Children’s Hospital, Rainbow strives to send you home in perfect health as a colourful life welcomes you back.','Who We Are','2017-05-18 05:52:03','2017-05-18 05:52:03'),(3,'WHAT WE DO','&nbsp;','/uploads/53296c90bd8205591b379bbd2240763d.jpg','&nbsp;&nbsp;&nbsp;&nbsp;','What-We-Do','2017-05-18 05:54:26','2017-05-18 05:54:26'),(4,'Why Choose Us','We are a Family','/uploads/7b5eb701a61242d57bcaaf0f40c63baa.jpg','As a holistic centre to care for and heal infants, children and women, we define ourselves as a community health provider with patient-centric care and value for money to all sections of society. Being dependable is the key and as people approach us with their medical needs, it becomes increasingly essential for us to cater to their trust first than to anything else. We highly identify with the needs of the patients and respond in the same vein and promptness. Perhaps this is what gives the feel of a home away from home and our patients feel like a family with us, for we reflect the same amount of....','Why Choose Us','2017-05-18 06:32:29','2017-05-18 06:32:29'),(5,'Cutting Edge Medical Solutions','The Pediatric Superspeciality Powerhouse','/uploads/4f3214f33b7464df64587bb208be6699.jpg','Rainbow’s Pediatric Intensive Care Unit treats more than 1000 critically ill children annually, in collaboration with various pediatric subspecialties such as Neurology, Nephrology, Hematology, Pediatric Surgery etc. and has the largest number of children managed on High Frequency Oscillatory Ventilation in the country. Pioneering minimal access pediatric surgery, today Rainbow takes the lead. Annually out of 2500 surgeries performed at Rainbow, 75% are done using laparoscopy.','Cutting Edge Medical Solutions','2017-05-18 06:36:34','2017-05-18 06:36:34'),(6,'Board of Directors','Accolades for patient centric approach and leadership.','/uploads/5d791d25b7d03783105e3906b9b81523.jpg','&nbsp;','Management','2017-05-18 06:58:52','2017-05-18 06:58:52'),(7,'Awards & Recognitions','Accolades for patient centric approach and leadership.','/uploads/b7bfdada1ea18395135f013c64d7aff5.jpg','At Rainbow Hospitals, we pursue excellence, innovation, dedicated patient care, cutting edge medical technologies, treatments & procedures, academic research and teaching programs with rigor. We believe that competing for awards, recognitions, merits and accolades is not just about winning, it is about understanding how well we are doing and is a direction guide for how we can do it even better. We have been recognized as one of the most advanced, super specialty tertiary care hospital for Women and Children in the country and the quality of our work is often recognized by influential organizations and media institutions. Among many things, we have won accolades for exceptional patient outcomes, dedicated patient care and patient centric approach and leadership. Here are some of the awards and recognitions Rainbow Hospitals has garnered over the years since its inception in 1999.','Awards','2017-05-18 07:31:55','2017-05-18 07:31:55'),(8,'Media','Get all the latest updates and connect with us on our social media at Rainbow Hospital.','/uploads/90e0fb8a734c1844d593d77510cc33ee.jpg','&nbsp;','Media','2017-05-18 22:25:08','2017-05-18 22:25:08'),(9,'Careers','Accolades for patient centric  approach and leadership.','/uploads/1b1f494d81630e795ad7e15e63ea53c8.jpg','At Rainbow Hospitals, we pursue excellence, innovation, dedicated patient care, cutting edge medical technologies, treatments & procedures, academic research and teaching programs with rigor. We believe that competing for awards, recognitions, merits and accolades is not just about winning, it is about understanding how well we are doing and is a direction guide for how we can do it even better. We have been recognized as one of the most advanced, super specialty tertiary care hospital for Women and Children in the country and the quality of our work is often recognized by influential organizations and media institutions. Among many things, we have won accolades for exceptional patient outcomes, dedicated patient care and patient centric approach and leadership. Here are some of the awards and recognitions Rainbow Hospitals has garnered over the years since its inception in 1999.','Careers','2017-05-18 23:06:19','2017-05-18 23:06:19'),(10,'Rainbow Channel','Lorem Ipsum is simply dummy text','/uploads/f7b948f73ad5ee755f89eb7ead1a1dea.jpg','&nbsp;','Channel','2017-05-18 23:13:59','2017-05-18 23:13:59'),(11,'Quality & Accreditation','Lorem Ipsum is simply dummy text','/uploads/040dcc257f2b250c5156a179e143daee.jpg','Welcome to the Department of Quality at Rainbow Hospitals. Department of Quality is spearheaded by a Core Committee comprising of Dr. Farhan Shaikh (Consultant Pediatric Intensivist, NABH Accreditation Coordinator), Dr. Faisal B Nahdi (Consultant Pediatrician), Mr. Natraj Rasa (Manager Quality and Training) and Ms. Karuna (Assistant Manager Quality) as its members and Ms. Sherly (Nursing Manager), as its associate member.','QUALITY & ACCREDITATION','2017-05-18 23:17:01','2017-05-18 23:17:01'),(12,'Your Doctors','Find a child care doctor who is the perfect match for your medical needs.','77067126ad358c0a00d51fbd55535ac2.png','Use the tools below to search for a doctor by name, specialty, gender, service line or practice location.','Doctors','2017-05-19 03:45:03','2017-05-19 03:45:03'),(13,'HealthCare','One the best.','uploads/de64eaa3aa436aefb30c97fa7919dd5c.png','This is just too good to be the best.','Doctors.','2017-05-19 03:50:03','2017-05-19 03:50:03'),(14,'One More','Try this Out','uploads/c3af1576a7e17158478d41e54dabd39d.png','This is the best Hospital.','Hospital','2017-05-19 03:51:44','2017-05-19 03:51:44'),(15,'Pediatrics','For the Specialist','uploads/b58431d143e1c6889a0d8104e8e0e076.png','No one can Enter It.','Pediatrics','2017-05-19 03:53:37','2017-05-19 03:53:37'),(16,'Title','Subtitle','/uploads/dcf3293def3011fcad36534ae2334e0e.jpg','This is just Too good','Good','2017-05-19 03:58:24','2017-05-19 03:58:24');
/*!40000 ALTER TABLE `page_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rainbow_guide`
--

DROP TABLE IF EXISTS `rainbow_guide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rainbow_guide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rainbow_guide`
--

LOCK TABLES `rainbow_guide` WRITE;
/*!40000 ALTER TABLE `rainbow_guide` DISABLE KEYS */;
/*!40000 ALTER TABLE `rainbow_guide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `right_highlights`
--

DROP TABLE IF EXISTS `right_highlights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `right_highlights` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `right_highlights`
--

LOCK TABLES `right_highlights` WRITE;
/*!40000 ALTER TABLE `right_highlights` DISABLE KEYS */;
/*!40000 ALTER TABLE `right_highlights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specialities`
--

DROP TABLE IF EXISTS `specialities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specialities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialities`
--

LOCK TABLES `specialities` WRITE;
/*!40000 ALTER TABLE `specialities` DISABLE KEYS */;
INSERT INTO `specialities` VALUES (1,'/uploads/a966d67f5e344e2fde98c55d883a1491.jpg','George','He is Good.','/var/html/MileageTracker','32','2017-05-17 00:59:12','2017-05-17 00:59:12'),(2,'/uploads/88a9428f3b229f061ddccc694e4804b3.jpg','Doctor','Good One!!','/var/Mug','105','2017-05-17 01:43:11','2017-05-17 01:43:11');
/*!40000 ALTER TABLE `specialities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `speciality_master`
--

DROP TABLE IF EXISTS `speciality_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `speciality_master` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `speciality` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `speciality_master`
--

LOCK TABLES `speciality_master` WRITE;
/*!40000 ALTER TABLE `speciality_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `speciality_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `speciality_masters`
--

DROP TABLE IF EXISTS `speciality_masters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `speciality_masters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `speciality` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `speciality_masters`
--

LOCK TABLES `speciality_masters` WRITE;
/*!40000 ALTER TABLE `speciality_masters` DISABLE KEYS */;
INSERT INTO `speciality_masters` VALUES (1,'General Pediatrics','2017-05-17 07:25:47','2017-05-17 07:25:47'),(2,'Neonatal','2017-05-17 07:25:57','2017-05-17 07:25:57'),(3,'Pediatric ICU','2017-05-18 00:20:51','2017-05-18 00:20:51'),(4,'The Pediatric Neurology','2017-05-18 00:21:13','2017-05-18 00:21:13');
/*!40000 ALTER TABLE `speciality_masters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_subject`
--

DROP TABLE IF EXISTS `student_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_subject` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` int(10) unsigned NOT NULL,
  `subject_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_subject`
--

LOCK TABLES `student_subject` WRITE;
/*!40000 ALTER TABLE `student_subject` DISABLE KEYS */;
INSERT INTO `student_subject` VALUES (1,10,1,NULL,NULL),(2,10,2,NULL,NULL),(3,10,3,NULL,NULL),(4,11,1,NULL,NULL),(5,11,2,NULL,NULL),(6,12,1,NULL,NULL),(7,12,2,NULL,NULL),(8,13,2,NULL,NULL),(9,13,3,NULL,NULL),(10,14,1,NULL,NULL),(11,14,2,NULL,NULL);
/*!40000 ALTER TABLE `student_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_subjects`
--

DROP TABLE IF EXISTS `student_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_subjects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` int(10) unsigned NOT NULL,
  `subject_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_subject_student_id_foreign` (`student_id`),
  KEY `student_subject_subject_id_foreign` (`subject_id`),
  CONSTRAINT `student_subject_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  CONSTRAINT `student_subject_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_subjects`
--

LOCK TABLES `student_subjects` WRITE;
/*!40000 ALTER TABLE `student_subjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'kashif','2017-05-17 03:40:33','2017-05-17 03:40:33'),(2,'Nikhil','2017-05-17 03:52:41','2017-05-17 03:52:41'),(3,'Nikhil','2017-05-17 04:01:22','2017-05-17 04:01:22'),(4,'Nikhil','2017-05-17 04:04:26','2017-05-17 04:04:26'),(5,'Nikhil','2017-05-17 04:07:17','2017-05-17 04:07:17'),(6,'Nikhil','2017-05-17 04:07:31','2017-05-17 04:07:31'),(7,'Nikhil','2017-05-17 04:08:35','2017-05-17 04:08:35'),(8,'XYZ','2017-05-17 04:10:53','2017-05-17 04:10:53'),(9,'Hekki','2017-05-17 04:11:30','2017-05-17 04:11:30'),(10,'Hekki','2017-05-17 04:17:24','2017-05-17 04:17:24'),(11,'kashif','2017-05-17 04:17:32','2017-05-17 04:17:32'),(12,'mohsin','2017-05-17 04:23:55','2017-05-17 04:23:55'),(13,'kashif','2017-05-17 05:02:22','2017-05-17 05:02:22'),(14,'dsdfd','2017-05-17 05:03:03','2017-05-17 05:03:03');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subjects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'Physics','2017-05-17 03:39:59','2017-05-17 03:39:59'),(2,'Chemistry','2017-05-17 03:40:07','2017-05-17 03:40:07'),(3,'Maths','2017-05-17 03:40:12','2017-05-17 03:40:12'),(4,'Biology','2017-05-17 03:40:18','2017-05-17 03:40:18');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `success_stories`
--

DROP TABLE IF EXISTS `success_stories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `success_stories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `person` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `success_stories`
--

LOCK TABLES `success_stories` WRITE;
/*!40000 ALTER TABLE `success_stories` DISABLE KEYS */;
INSERT INTO `success_stories` VALUES (1,'pubic/image','var/htnl/image','url/html','this is good','kashif','nikhil','2017-05-16 04:57:47','2017-05-16 04:58:04'),(2,'/uploads/7b02ff038587b9acb8fa076e9254186c.jpg','var/htnl/image','url','Something awesome!','Nikhil','Dadar','2017-05-16 05:41:24','2017-05-16 05:41:24'),(3,'/uploads/da1f4d0ab6f11d6f0d6b91aa8784f8df.jpg','var/htnl/image','url','This is unique','Priyanka','CST','2017-05-16 23:47:05','2017-05-16 23:47:05'),(4,'/uploads/53476ba9a30531fc9a8ccdc4406c5b9f.jpg','/uploads/149a0a9cc81a32ea6a606b87981f8227.jpg','/var/www/html','GOOD.','Mudassir','Kurla','2017-05-17 00:01:04','2017-05-17 00:01:04');
/*!40000 ALTER TABLE `success_stories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'kashif','kashifshaikh440@gmail.com','$2y$10$bLK8djrDnBiD6rLZZeENYOd4DfdxfsQFysEnz4qkW76NhO7tAbmyC','f8oX1JsJ8B8Q8bpQkHOvsW1Fov8t5KvmT5KLPVYb3P1MbVaTLaBq1bkT0IbC','2017-05-16 04:16:05','2017-05-16 04:16:05');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `what_we_do_details`
--

DROP TABLE IF EXISTS `what_we_do_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `what_we_do_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `what_we_do_details`
--

LOCK TABLES `what_we_do_details` WRITE;
/*!40000 ALTER TABLE `what_we_do_details` DISABLE KEYS */;
INSERT INTO `what_we_do_details` VALUES (1,'Our Vision','Our aim at Rainbow Hospitals is to provide high standards of care for the mother, fetus, newborn and children so that none of them is deprived of a tertiary care facility.','2017-05-18 06:04:35','2017-05-18 06:04:35'),(2,'Our Mission','The measure of our success is in the number of smiling faces. Lorem Ipsum is simply dummy text of the printing and typesetting industry.','2017-05-18 06:04:53','2017-05-18 06:04:53');
/*!40000 ALTER TABLE `what_we_do_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-19 17:08:04
