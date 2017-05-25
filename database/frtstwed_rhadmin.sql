-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 25, 2017 at 12:27 PM
-- Server version: 5.6.35-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `frtstwed_rhadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

DROP TABLE IF EXISTS `about`;
CREATE TABLE `about` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `speciality_masters_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aboutus`
--

DROP TABLE IF EXISTS `aboutus`;
CREATE TABLE `aboutus` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aboutus`
--

INSERT INTO `aboutus` (`id`, `title`, `subtitle`, `description`, `category`, `created_at`, `updated_at`) VALUES
(1, 'About Child Care', '24/7 Health care for Children', 'Pediatricians are not mere doctors – they are trusted partners in your child’s health. At Rainbow Children’s Hospital, we put ourselves in the shoes of the parents and endeavor primarily for children’s healthcare. Your child’s good health, well-being and happiness are our priority. Our panel of doctors has extensive knowledge and experience on holistic development of a child at physical, emotional and social levels and can give your child the care that is just right for his or her age and stage of life.', 'Childcare', '2017-05-09 02:01:30', '2017-05-09 02:01:30');

-- --------------------------------------------------------

--
-- Table structure for table `awards_history`
--

DROP TABLE IF EXISTS `awards_history`;
CREATE TABLE `awards_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `boardofdirectors`
--

DROP TABLE IF EXISTS `boardofdirectors`;
CREATE TABLE `boardofdirectors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `boardofdirectors`
--

INSERT INTO `boardofdirectors` (`id`, `name`, `designation`, `description`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Ramesh Kancharla', 'Chairman and Managing Director', '“At Rainbow, we are driven with the powerful belief that to convert the’impossible’ to ‘possible’, one has to convert the ‘I’s and ‘Me’s to ‘Us’ and ‘We’. Teamwork is the very soul of our entity as Rainbow Group. One may have a vision but without unequivocal support from likeminded and dedicated child specialists, who joined Rainbow, supported and strengthened the idea further by working alongside to help bring this vision to concrete reality, we would literally still be chasing rainbows…\r\n\r\nFor us at Rainbow, our greatest measure of success is in the number of smilingfaces, love and appreciation from our children and their parents and the tremendous support from the medical community. Our success also lies in the knowledge, that with their continued support we will keep on going from strength to strength and hopefully one day Rainbow will extend its umbrella of Perinatal and Tertiary Pediatric care to children nationwide.”', '/board/dr/1', '2017-05-18 07:39:43', '2017-05-18 07:39:53');

-- --------------------------------------------------------

--
-- Table structure for table `brief_facilities`
--

DROP TABLE IF EXISTS `brief_facilities`;
CREATE TABLE `brief_facilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `speciality_masters_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `page` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brief_facilities`
--

INSERT INTO `brief_facilities` (`id`, `image`, `description`, `speciality_masters_id`, `created_at`, `updated_at`, `page`) VALUES
(1, '/uploads/9b610836e4518917c5c56591f08c2d48.jpg', 'We were also awarded “Best Children\'s Hospital in the country” by” CNBC, TV 18, ICICI Lombard at India Health Care Awards” in 2010. We were ranked among the “Five Best Children\'s hospitals in India”by \'The Week\' and ‘HANSA Research’ for the year 2010, 2011 and 2012.\r\n\r\nRainbow Hospitals also received the “Six Sigma Healthcare Excellence Award” at the first Asia Pacific International Conference held at Mt. Abu, Rajasthan during 4th and 5th of October 2013.', 5, '2017-05-23 23:31:32', '2017-05-24 03:12:48', 'who-we-are'),
(2, '/uploads/24fd4f1040aa5b065f7d5cee6f46932b.jpg', 'Prenatal consultations', 1, '2017-05-24 00:59:58', '2017-05-24 00:59:58', 'about-child-care'),
(3, '/uploads/a49ea53b59ae53d59717f3b23c36f37f.jpg', 'Critical care supported by our Level 3, state of the art Neonatal Intensive Care Units (NICU) and Pediatric Intensive Care Units (PICU)', 1, '2017-05-24 01:00:55', '2017-05-24 01:00:55', 'about-child-care'),
(4, '/uploads/5f9a4005233f2e8ef1f68a4b28838684.jpg', 'Care of illness supported by our multi disciplinary specialty services including General Pediatrics, Neonatology, Nephrology, Neurology, Gastroenterology, Hematology, Oncology, Cardiology, Genetic and Metabolic Diseases, Pediatric Dentistry and Nutrition.', 1, '2017-05-24 01:01:16', '2017-05-24 01:01:16', 'about-child-care'),
(5, '/uploads/495f122133349e51aa53b7b87b271017.jpg', 'Pediatric Surgery', 1, '2017-05-24 01:01:37', '2017-05-24 01:01:37', 'about-child-care'),
(6, '/uploads/aeb621e8cc4d4759988f46c8e0345d26.jpg', 'Vaccination and immunization programs', 1, '2017-05-24 01:02:06', '2017-05-24 01:02:06', 'about-child-care'),
(7, '/uploads/7e2d0e768a8bfd3a4fcdcc8b1d4b57e8.jpg', 'Healthcare, wellness and nutrition education', 1, '2017-05-24 01:02:26', '2017-05-24 01:02:26', 'about-child-care'),
(8, '/uploads/eabf0aa024d31b78fff255c94b28cacf.jpg', 'Care and treatment of minor injuries', 1, '2017-05-24 01:02:45', '2017-05-24 01:02:45', 'about-child-care'),
(9, '/uploads/e0ebbcb4589d4e549016f22dbe505b11.jpg', 'Preventive Health care advocated through a series of awareness and wellness programs that we run from time to time', 1, '2017-05-24 01:03:05', '2017-05-24 01:03:05', 'about-child-care'),
(10, '/uploads/9e42c5bbd62a59c08c6ab8ae1b13eba2.jpg', 'Pediatric Dentistry', 1, '2017-05-24 01:03:29', '2017-05-24 01:03:29', 'about-child-care'),
(11, '/uploads/497d85e44ab787bf153609b7828da3b4.jpg', '24*7 Emergency & Transport Services', 1, '2017-05-24 01:07:05', '2017-05-24 01:07:05', 'about-child-care');

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

DROP TABLE IF EXISTS `careers`;
CREATE TABLE `careers` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `qualification` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `experience` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `title`, `qualification`, `experience`, `location`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Consultant Pediatric Intensivist', 'MD/DCh', '0 year to 2yrs', 'Rainbow Children\'s Hospital & BirthRight by Rainbow, Banjara Hills, Hyderabad', 'Performs rounds in the PICU seeing patients with the departmental team which includes residents; guiding them and teaching them simultaneously.Performs various procedures necessary for care of the patients in PICU (e.g. Intubation, arterial or Central venous line insertion, ICD placement etc)Providing patient care in using multidisciplinary approach and involves other subspecialties (e.g. Neurology, Nephrology etc) whenever required.Carries out counseling of patients attendants maintaining punctuality and professionalism.Liaises with the referring doctors by updating them about patient’s status and discussing ongoing management.Performs in-patients and out-patient duties with professionalism and punctuality.Participates in preparation and execution of on-call schedule for the PICU.Plays a major role in coordinating long and short distance Transport of sick patients.Plays a major role in Teaching the PICU Fellowship students and DNB students including supervising them during procedures, helping in their dissertation work, researching and auditing.Plays a major role in training and education of PICU nurses.Contributes in departmental promotional activities by participating in various CMEs, Workshops and Conferences.Involves in important hospital-wide activities by participating in Infection Control activities, Medical and clinical audits, patient safety and Quality related activities.', '2017-05-18 07:20:52', '2017-05-18 07:20:52'),
(2, 'Consultant Pediatric Intensivist', 'MD/DCh', '0 year to 2yrs', 'Rainbow Children\'s Hospital & BirthRight by Rainbow, Banjara Hills, Hyderabad', '<ul>\r\n<li style=\"box-sizing: border-box; float: left; width: 1258.796875px; margin: 4px 0px; list-style: none; background-image: url(\'../../assets/images/dot.png\'); padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px; background-position: left 8px; background-repeat: no-repeat no-repeat;\">Performs rounds in the PICU seeing patients with the departmental team which includes residents; guiding them and teaching them simultaneously.</li>\r\n<li style=\"box-sizing: border-box; float: left; width: 1258.796875px; margin: 4px 0px; list-style: none; background-image: url(\'../../assets/images/dot.png\'); padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px; background-position: left 8px; background-repeat: no-repeat no-repeat;\">Performs various procedures necessary for care of the patients in PICU (e.g. Intubation, arterial or Central venous line insertion, ICD placement etc)</li>\r\n<li style=\"box-sizing: border-box; float: left; width: 1258.796875px; margin: 4px 0px; list-style: none; background-image: url(\'../../assets/images/dot.png\'); padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px; background-position: left 8px; background-repeat: no-repeat no-repeat;\">Providing patient care in using multidisciplinary approach and involves other subspecialties (e.g. Neurology, Nephrology etc) whenever required.</li>\r\n<li style=\"box-sizing: border-box; float: left; width: 1258.796875px; margin: 4px 0px; list-style: none; background-image: url(\'../../assets/images/dot.png\'); padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px; background-position: left 8px; background-repeat: no-repeat no-repeat;\">Carries out counseling of patients attendants maintaining punctuality and professionalism.</li>\r\n<li style=\"box-sizing: border-box; float: left; width: 1258.796875px; margin: 4px 0px; list-style: none; background-image: url(\'../../assets/images/dot.png\'); padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px; background-position: left 8px; background-repeat: no-repeat no-repeat;\">Liaises with the referring doctors by updating them about patient&rsquo;s status and discussing ongoing management.</li>\r\n<li style=\"box-sizing: border-box; float: left; width: 1258.796875px; margin: 4px 0px; list-style: none; background-image: url(\'../../assets/images/dot.png\'); padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px; background-position: left 8px; background-repeat: no-repeat no-repeat;\">Performs in-patients and out-patient duties with professionalism and punctuality.</li>\r\n<li style=\"box-sizing: border-box; float: left; width: 1258.796875px; margin: 4px 0px; list-style: none; background-image: url(\'../../assets/images/dot.png\'); padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px; background-position: left 8px; background-repeat: no-repeat no-repeat;\">Participates in preparation and execution of on-call schedule for the PICU.</li>\r\n<li style=\"box-sizing: border-box; float: left; width: 1258.796875px; margin: 4px 0px; list-style: none; background-image: url(\'../../assets/images/dot.png\'); padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px; background-position: left 8px; background-repeat: no-repeat no-repeat;\">Plays a major role in coordinating long and short distance Transport of sick patients.</li>\r\n<li style=\"box-sizing: border-box; float: left; width: 1258.796875px; margin: 4px 0px; list-style: none; background-image: url(\'../../assets/images/dot.png\'); padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px; background-position: left 8px; background-repeat: no-repeat no-repeat;\">Plays a major role in Teaching the PICU Fellowship students and DNB students including supervising them during procedures, helping in their dissertation work, researching and auditing.</li>\r\n<li style=\"box-sizing: border-box; float: left; width: 1258.796875px; margin: 4px 0px; list-style: none; background-image: url(\'../../assets/images/dot.png\'); padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px; background-position: left 8px; background-repeat: no-repeat no-repeat;\">Plays a major role in training and education of PICU nurses.</li>\r\n<li style=\"box-sizing: border-box; float: left; width: 1258.796875px; margin: 4px 0px; list-style: none; background-image: url(\'../../assets/images/dot.png\'); padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px; background-position: left 8px; background-repeat: no-repeat no-repeat;\">Contributes in departmental promotional activities by participating in various CMEs, Workshops and Conferences.</li>\r\n<li style=\"box-sizing: border-box; float: left; width: 1258.796875px; margin: 4px 0px; list-style: none; background-image: url(\'../../assets/images/dot.png\'); padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px; background-position: left 8px; background-repeat: no-repeat no-repeat;\">Involves in important hospital-wide activities by participating in Infection Control activities, Medical and clinical audits, patient safety and Quality related activities.</li>\r\n</ul>', '2017-05-18 07:24:16', '2017-05-18 07:24:16');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Child Care', '2017-05-09 02:02:28', '2017-05-09 02:02:28'),
(2, 'Women Health', '2017-05-09 02:02:38', '2017-05-09 02:02:38'),
(3, 'Fertility Care', '2017-05-09 02:02:47', '2017-05-09 02:02:47');

-- --------------------------------------------------------

--
-- Table structure for table `centers`
--

DROP TABLE IF EXISTS `centers`;
CREATE TABLE `centers` (
  `id` int(10) UNSIGNED NOT NULL,
  `center_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `centers`
--

INSERT INTO `centers` (`id`, `center_name`, `address`, `telephone`, `created_at`, `updated_at`) VALUES
(1, 'Rainbow Children\'s Hospital &  BirthRight by Rainbow, Banjara Hills', '22, Road No - 4, (old road no-10), Karvy Lanes,Banjara Hills, Hyderabad - 500 034. Telangana, INDIA.', '+91-40-2331 9191, +91-40-4466 5555', '2017-05-24 03:47:52', '2017-05-24 03:47:52'),
(2, 'Rainbow Children\'s Hospital & BirthRight by Rainbow, Secunderabad', '22, Road No - 4, (old road no-10), Karvy Lanes,Banjara Hills, Hyderabad - 500 034. Telangana, INDIA.', '+91-40-2331 9191, +91-40-4466 5555.', '2017-05-24 03:48:54', '2017-05-24 03:48:54'),
(3, 'Rainbow Children\'s Hospital & BirthRight by Rainbow, Kondapur', '22, Road No - 4, (old road no-10), Karvy Lanes,Banjara Hills, Hyderabad - 500 034. Telangana, INDIA.', '+91-40-2331 9191, +91-40-4466 5555.', '2017-05-24 03:49:55', '2017-05-24 03:49:55');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
CREATE TABLE `doctors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qualification` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `qualification`, `designation`, `info`, `photo`, `created_at`, `updated_at`) VALUES
(4, 'Dr. Farhan Shaikh', 'MBBS, MD', 'CMO, LTTGM Hospital', 'Some thing good about the Dr.', '/uploads/999dfd054d252ae7e5a1d11f7e8b3388.jpg', '2017-05-18 03:18:20', '2017-05-18 03:18:20'),
(5, 'Dr. Ramesh Kancharla', 'PedPediatrician & Gastroenterologist', 'Managing Director', 'Rainbow Children’s Hospital', '/uploads/3a8e642e3d160948141c866afa0e241a.jpg', '2017-05-24 02:33:37', '2017-05-24 02:33:37'),
(6, 'DR. A. VENKATALAKSHMI', '&nbsp;', 'Neonatologist & Pediatrician', 'Rainbow Children’s Hospital', '/uploads/6469746f8d7dfbe666eb316a17617850.jpg', '2017-05-24 02:34:54', '2017-05-24 03:02:00'),
(7, 'DR. RAMESH KANCHARLA', '&nbsp;', 'Director Intensive Care Services', 'Rainbow Children’s Hospital', '/uploads/c0756e3de5747f5a9b16114ea283f88e.jpg', '2017-05-24 02:58:55', '2017-05-24 03:02:21'),
(8, 'DR. FAISAL B NAHDI', '&nbsp;', 'Pediatrician ', 'Rainbow Children’s Hospital', '/uploads/f4863f02b922f8c03bca97bd378f6f06.jpg', '2017-05-24 02:59:55', '2017-05-24 03:02:41'),
(9, 'DR. UJJWALA DESAI', '&nbsp;', 'Pediatrician', 'Rainbow Children’s Hospital', '/uploads/f22ba2714f86d72b5ecb93c03f587de5.jpg', '2017-05-24 03:00:30', '2017-05-24 03:01:31'),
(10, 'DR. FARHAN SHAIKH', '&nbsp;', 'In-charge Pediatric Intensive Care Chairperson Quality and Accreditation', 'Rainbow Children’s Hospital', '/uploads/4a1cbf372194b214a2e9cb4b8eb7825f.jpg', '2017-05-24 03:01:05', '2017-05-24 03:01:05');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_hospitals`
--

DROP TABLE IF EXISTS `doctor_hospitals`;
CREATE TABLE `doctor_hospitals` (
  `id` int(10) UNSIGNED NOT NULL,
  `doctor_id` int(10) UNSIGNED NOT NULL,
  `hospital_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctor_hospitals`
--

INSERT INTO `doctor_hospitals` (`id`, `doctor_id`, `hospital_id`, `created_at`, `updated_at`) VALUES
(4, 4, 2, NULL, NULL),
(5, 4, 4, NULL, NULL),
(6, 5, 5, NULL, NULL),
(7, 5, 6, NULL, NULL),
(8, 5, 7, NULL, NULL),
(9, 6, 5, NULL, NULL),
(10, 6, 6, NULL, NULL),
(11, 6, 7, NULL, NULL),
(12, 7, 5, NULL, NULL),
(13, 7, 6, NULL, NULL),
(14, 7, 7, NULL, NULL),
(15, 8, 5, NULL, NULL),
(16, 8, 6, NULL, NULL),
(17, 8, 7, NULL, NULL),
(18, 9, 5, NULL, NULL),
(19, 9, 6, NULL, NULL),
(20, 9, 7, NULL, NULL),
(21, 10, 5, NULL, NULL),
(22, 10, 6, NULL, NULL),
(23, 10, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `healthcare_service`
--

DROP TABLE IF EXISTS `healthcare_service`;
CREATE TABLE `healthcare_service` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `speciality_masters_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `page` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `healthcare_service`
--

INSERT INTO `healthcare_service` (`id`, `image`, `title`, `description`, `speciality_masters_id`, `created_at`, `updated_at`, `page`) VALUES
(1, '/uploads/75870cdc43132da4d7ceb24a15bae615.jpg', 'HEALTHY CHILDREN', 'Children are such special gifts and bring fulfillment in our lives. And they do deserve special attention. That is why at Rainbow Hospitals, we have committed ourselves to child health care and always love to see them happy & healthy. Since its inception, Rainbow has been pivotal in saving thousands of children. Our inpatient specialties for child care includes Neonatology, Pediatric Intensive Care, Neonatal Intensive Care, Neurology, Gastroenterology, Nephrology, Hematology and Oncology, Pediatric Surgery, Cardiology and Nutrition. Equipped with state of the art equipments in medical technology and backed by the expertise of our doctors and consultants across a range of clinical specialties, we strive towards making you choose us as the ultimate choice whenever you seek excellence in health care for your children.', 5, '2017-05-23 23:24:22', '2017-05-24 01:25:16', 'who-we-are'),
(2, '/uploads/a6cf789adb805b74de8f0371e07e761d.jpg', 'HAPPY MOTHERS & HAPPY WOMEN', 'Rainbow Hospitals for Children is 300- bed comprehensive health center for Pediatrics and offers the best care available in modern pediatric medicine, delivered in its state of the art facilities, spread over five locations and expanding. We are among the top five multi specialty Pediatric Hospitals of our country and have won this recognition for the last three consecutive years from “The Week” and “HANSA” research. We are also the winner of CNBC TV 18 and ICICI Lombard in India Health care awards 2010 for the Best Children’s Hospital in India.', 5, '2017-05-23 23:27:14', '2017-05-24 01:25:36', 'who-we-are'),
(3, '/uploads/2f5da4e1aa2a95f08425d76b8ef35304.jpg', 'CHEERFUL COUPLES', 'Rainbow Hospitals for Children is 300- bed comprehensive health center for Pediatrics and offers the best care available in modern pediatric medicine, delivered in its state of the art facilities, spread over five locations and expanding. We are among the top five multi specialty Pediatric Hospitals of our country and have won this recognition for the last three consecutive years from “The Week” and “HANSA” research. We are also the winner of CNBC TV 18 and ICICI Lombard in India Health care awards 2010 for the Best Children’s Hospital in India.', 5, '2017-05-23 23:29:12', '2017-05-24 01:24:56', 'who-we-are'),
(4, '/uploads/e91fafc566883e5414fabf771e005da4.jpg', '500- BED HEALTH CENTRE', 'Rainbow Hospitals for Children is 500- bed comprehensive health center for Pediatrics and offers the best care available in modern pediatric medicine, delivered in its state of the art facilities, spread over five locations and expanding. We are among the top five multi specialty Pediatric Hospitals of our country and have won this recognition for the last three consecutive years from “The Week” and “HANSA” research. We are also the winner of CNBC TV 18 and ICICI Lombard in India Health care awards 2010 for the Best Children’s Hospital in India.', 1, '2017-05-23 23:47:55', '2017-05-23 23:53:22', 'about-child-care'),
(5, '/uploads/d20811e6019495bc40d6451d60a85235.jpg', '12,000 IMPATIENT ADMISSIONSHEALTH CENTRE', 'Rainbow Hospitals for Children is 200- bed comprehensive health center for Pediatrics and offers the best care available in modern pediatric medicine, delivered in its state of the art facilities, spread over five locations and expanding. We are among the top five multi specialty Pediatric Hospitals of our country and have won this recognition for the last three consecutive years from “The Week” and “HANSA” research. We are also the winner of CNBC TV 18 and ICICI Lombard in India Health care awards 2010 for the Best Children’s Hospital in India.', 1, '2017-05-23 23:51:04', '2017-05-24 00:22:57', 'about-child-care'),
(6, '/uploads/8e729271a7d5c6e14e8251833e855f53.jpg', 'FINEST PEDIATRICIAN', 'Rainbow Hospitals for Children is 300- bed comprehensive health center for Pediatrics and offers the best care available in modern pediatric medicine, delivered in its state of the art facilities, spread over five locations and expanding. We are among the top five multi specialty Pediatric Hospitals of our country and have won this recognition for the last three consecutive years from “The Week” and “HANSA” research. We are also the winner of CNBC TV 18 and ICICI Lombard in India Health care awards 2010 for the Best Children’s Hospital in India.', 1, '2017-05-24 00:24:41', '2017-05-24 00:24:41', 'about-child-care');

-- --------------------------------------------------------

--
-- Table structure for table `home_events`
--

DROP TABLE IF EXISTS `home_events`;
CREATE TABLE `home_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_events`
--

INSERT INTO `home_events` (`id`, `name`, `description`, `event_date`, `created_at`, `updated_at`) VALUES
(1, 'Inauguration Ceremony', 'Chief guest XYZ. Hello World!', '2017-04-26 20:00:31', '2017-05-01 02:07:09', '2017-05-01 02:07:09');

-- --------------------------------------------------------

--
-- Table structure for table `home_highlights`
--

DROP TABLE IF EXISTS `home_highlights`;
CREATE TABLE `home_highlights` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `highlights` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_highlights`
--

INSERT INTO `home_highlights` (`id`, `title`, `subtitle`, `highlights`, `image`, `created_at`, `updated_at`) VALUES
(13, '35000', 'IVF Successfully', 'Art IVF infrastructure', '/uploads/8cf695bdd8ae0953f6c39c35a97bdee7.jpg', '2017-05-09 00:51:47', '2017-05-09 00:51:47'),
(14, '24 Hour', 'Emergency Cover', 'Providing 24/7 cover for women with complications in pregnancy', '/uploads/4e214fd7c4256e1c79d2231d64de3cd9.jpg', '2017-05-09 00:53:53', '2017-05-09 00:53:53'),
(15, 'Some Test', 'Highlight', 'Hello World', '/uploads/3d0fbf8a1bd14ef90a6bdcaea1f04a1c.jpg', '2017-05-22 10:58:18', '2017-05-22 10:58:18');

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

DROP TABLE IF EXISTS `hospitals`;
CREATE TABLE `hospitals` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `title`, `location`, `created_at`, `updated_at`) VALUES
(1, 'Seven Hills', 'Andheri (E)', '2017-05-17 14:18:23', '2017-05-17 14:18:23'),
(2, 'Holy Spirit', 'Bandra (W)', '2017-05-17 14:18:34', '2017-05-17 14:18:34'),
(3, 'KEM', 'Parel', '2017-05-17 14:18:45', '2017-05-17 14:18:45'),
(4, 'BYL Nair', 'Mumbai Central', '2017-05-17 14:18:58', '2017-05-17 14:18:58'),
(5, 'Rainbow Children Hospitals - Banjara Hills', 'Banjara Hills', '2017-05-24 02:28:46', '2017-05-24 02:28:46'),
(6, 'Rainbow Children Hospitals - Secunderabad', 'Secunderabad', '2017-05-24 02:31:26', '2017-05-24 02:31:26'),
(7, 'Rainbow Children Hospitals - Kondapur', 'Kondapur', '2017-05-24 02:31:45', '2017-05-24 02:31:45');

-- --------------------------------------------------------

--
-- Table structure for table `left_highlights`
--

DROP TABLE IF EXISTS `left_highlights`;
CREATE TABLE `left_highlights` (
  `id` int(10) UNSIGNED NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `md_message`
--

DROP TABLE IF EXISTS `md_message`;
CREATE TABLE `md_message` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_press_release`
--

DROP TABLE IF EXISTS `media_press_release`;
CREATE TABLE `media_press_release` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_04_16_121839_create_tags_table', 2),
(4, '2015_08_04_131614_create_settings_table', 3),
(5, '2017_04_20_181049_create_home_highlights_table', 4),
(6, '2017_05_01_061338_create_home_events_table', 5),
(7, '2017_05_04_115058_create_left_highlights_table', 6),
(8, '2017_05_04_115215_create_right_highlights_table', 6),
(9, '2017_05_08_111813_create_rainbow_guide_table', 7),
(10, '2017_05_08_115939_create_specialities_table', 8),
(11, '2017_05_09_053901_create_centers_table', 9),
(12, '2017_05_09_054132_create_aboutus_table', 9),
(13, '2017_05_09_055201_create_categories_table', 9),
(14, '2017_05_09_060238_create_doctors_table', 9),
(15, '2017_05_17_192907_create_hospitals_table', 10),
(16, '2017_05_17_193303_create_doctor_hospitals_table', 10),
(17, '2017_05_18_124456_create_careers_table', 11),
(18, '2017_05_18_125941_create_boardofdirectors_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `our_specialities`
--

DROP TABLE IF EXISTS `our_specialities`;
CREATE TABLE `our_specialities` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `speciality_masters_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `our_speciality_features`
--

DROP TABLE IF EXISTS `our_speciality_features`;
CREATE TABLE `our_speciality_features` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `speciality_masters_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `our_speciality_features`
--

INSERT INTO `our_speciality_features` (`id`, `image`, `title`, `description`, `link`, `speciality_masters_id`, `created_at`, `updated_at`) VALUES
(1, '/uploads/399deca2468f51fc174f586c46ade9c9.jpg', 'General Pediatrics', 'The Division of Pediatric Gastroenterology and Nutrition at Rainbow Children’s...', '#', 1, '2017-05-24 01:29:36', '2017-05-24 01:29:36'),
(2, '/uploads/e7cc5b8fd0048f8765cc59e56210a105.jpg', 'Neonatal', 'Our Neonatal Intensive Care Unit at Banjara Hills provides highly specialized care to the new born who are in critical state.', '#', 1, '2017-05-24 01:32:44', '2017-05-24 01:33:24'),
(3, '/uploads/79c68d6db1720ad6d4c7dd469380573e.jpg', 'Pediatric ICU', 'Our Pediatric Intensive Care Unit at Banjara Hills, Hyderabad provides highly specialized care to critically ill children...', '#', 1, '2017-05-24 01:35:27', '2017-05-24 01:35:27'),
(4, '/uploads/d0e1ebfe51ab17b883306d07d5fdb60a.jpg', 'The Pediatric Neurology', 'Our Pediatric Neuro Rehabilitation and Allied Services Team at Banjara Hills, Hyderabad provides', '#', 1, '2017-05-24 01:39:09', '2017-05-24 01:39:09'),
(5, '/uploads/2755295037b5c8306d706ca4898b7207.jpg', 'Pediatric Surgery', 'The Department of Pediatric Surgery, Pediatric Urology and Pediatric Minimal Invasive..', '#', 1, '2017-05-24 01:40:21', '2017-05-24 01:40:21'),
(6, '/uploads/f33c572f7ed14b6911d91a5d5044da67.jpg', 'Pediatric Gastroenterology', 'The Division of Pediatric Gastroenterology and Nutrition at Rainbow Children’s...', '#', 1, '2017-05-24 01:45:12', '2017-05-24 01:45:12'),
(7, '/uploads/d0cb6fbc158e566baa9f8da5745ea314.jpg', 'Hematology and Oncology', 'The Department of Pediatric Hematology and Oncology at Rainbow Children’s Hospital...', '#', 1, '2017-05-24 01:46:39', '2017-05-24 01:46:39'),
(8, '/uploads/9bd04987fa4ae7df7c08f15ccae5b415.jpg', 'Pediatric Nephrology', 'The department of Pediatric Nephrology at Rainbow Children’s Hospital and Perinatal..', '#', 1, '2017-05-24 02:00:47', '2017-05-24 02:00:47'),
(9, '/uploads/94daa202123ed2a12883eac299f80276.jpg', 'Pediatric  Pulmonology', 'At Rainbow Hospitals, we have respiratory and asthma clinic.  These services are..', '#', 1, '2017-05-24 02:06:40', '2017-05-24 02:06:40'),
(10, '/uploads/9c2c13872f18ad7379deb42d64a4b8b7.jpg', 'Pediatric  Pulmonology', 'At Rainbow Hospitals, we have respiratory and asthma clinic.  These services are..', '#', 1, '2017-05-24 02:07:12', '2017-05-24 02:07:12'),
(11, '/uploads/2c1cc7ce14c0d3b10e7fb9f85a858d30.jpg', 'Anasthesia  & Pain Management', 'The Department of Anaesthesia and Pain Management Rainbow Children’s Hospital and....', '#', 1, '2017-05-24 02:10:01', '2017-05-24 02:10:01'),
(12, '/uploads/9ead58eff0759b6e435b9ac747bdaa47.jpg', 'Anasthesia  & Pain Management', 'The Department of Anaesthesia and Pain Management Rainbow Children’s Hospital and....', '#', 1, '2017-05-24 02:10:39', '2017-05-24 02:10:39');

-- --------------------------------------------------------

--
-- Table structure for table `page_description`
--

DROP TABLE IF EXISTS `page_description`;
CREATE TABLE `page_description` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `page` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page_description`
--

INSERT INTO `page_description` (`id`, `title`, `subtitle`, `image`, `description`, `page`, `created_at`, `updated_at`) VALUES
(2, 'Who We are', 'Rainbow Hospital for Women and Children', '/uploads/13112b2658b1d3e8bbca217921c63fa8.jpg', 'has 15 glorious years of excellence in child care, women care and fertility. It is the first corporate children\'s hospital in India, started on 14th November 1999 on Children\'s Day. Setting the benchmark in neonatal and paediatric intensive care, Rainbow has played a major role in saving thousands of critically ill children and has emerged as one of the best children’s hospital in the country. Rainbow Hospitals aims to provide high standards of care for the mother, women, fetus, newborn and children so that none of them is deprived of a tertiary care facility. The hospital\'s clinical staffs include strong team of highly qualified and experienced Consultants, dynamic team of residents and fellows, well trained nurses and paramedical personnel, and highly motivated team of full- and part-time employees. The measure of our success is in the number of smiling faces. We are here because we care for you. Filling your life with the pinkest of health is our dream. As a Women and Children’s Hospital, Rainbow strives to send you home in perfect health as a colourful life welcomes you back.', 'who-we-are', '2017-05-23 23:07:39', '2017-05-23 23:07:39'),
(3, 'WHAT WE DO', 'Our Vision', '/uploads/bf86211a941386b95fa882d1e7c03182.jpg', 'Our aim at Rainbow Hospitals is to provide high standards of care for the mother, fetus, newborn and children so that none of them is deprived of a tertiary care facility.', 'what-we-do', '2017-05-23 23:37:14', '2017-05-23 23:37:14'),
(4, 'WHAT WE DO', 'Our Mission', '/uploads/af6b94a4468a7898dfe84d90810c5cbd.jpg', 'The measure of our success is in the number of smiling faces. Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'what-we-do', '2017-05-23 23:38:47', '2017-05-23 23:38:47'),
(5, 'About  Child Care', '24/7 healthcare for children', '/uploads/9a39e0c044a3df02c199d9ae3056584b.jpg', 'Pediatricians are not mere doctors – they are trusted partners in your child’s health. At Rainbow Children’s Hospital, we put ourselves in the shoes of the parents and endeavor primarily for children’s healthcare. Your child’s good health, well-being and happiness are our priority. Our panel of doctors has extensive knowledge and experience on holistic development of a child at physical, emotional and social levels and can give your child the care that is just right for his or her age and stage of life.', 'about-child-care', '2017-05-23 23:43:19', '2017-05-23 23:43:19'),
(6, 'Our Specialities', 'Health care for your child all under one roof', '/uploads/0ba995d8537c4bbdae3adbfccdad218a.jpg', 'We are dedicated to providing the highest quality of healthcare for your child and it includes, routine well childcare right from birth to adolescence, treatment for illness and injury and state of the art 24*7 Paediatric Emergency Services. We offer a broad spectrum of inpatient and outpatients services especially tailored to the unique needs of children right from their birth.', 'our-specialities', '2017-05-24 01:19:33', '2017-05-24 01:19:33'),
(7, 'Your Doctors', 'Find a child care doctor who is the perfect match for your medical needs.', '/uploads/1a90cab80bd3c0e497af5a4d73da1f90.jpg', 'Use the tools below to search for a doctor by name, specialty, gender, service line or practice location.', 'child-care-doctors', '2017-05-24 02:22:24', '2017-05-24 02:22:24'),
(8, 'Our Centres', 'Branches of Rainbow Hospitals', '/uploads/107fc5a44597e7fdef88ab2df8f52b0e.jpg', 'Below you will find information about our different hospital locations.', 'our-center', '2017-05-24 03:15:12', '2017-05-24 03:15:12'),
(9, 'Vaccination', 'Dear Parent,', '/uploads/5e10e8927eb96799147d209eac16a1a9.jpg', 'We wish to inform you that Vaccination Services for your children are available at all the Pediatric Outpatient Clinics of Rainbow Hospitals.Although the schedule of the vaccines may differ in different countries, the vaccines given are mostly the same.The make and brands of the vaccines used at our centres are at par with International Standards and comply with the schedules of most of the countries and regions.', 'vaccination', '2017-05-24 03:53:02', '2017-05-24 03:53:02'),
(10, 'Testimonials', '&nbsp;', '/uploads/9013b218d67048e26e17c5f4fb08dee8.jpg', 'Thank you very much parents, for providing your valuable feedback. Your positive feedback & appreciation always motivates & inspires us to work harder and give you the best treatment that your child truly deserves to come back into good health. Presented below are some of the testimonials, from the hundreds that we receive every month. Do keep them coming in!', 'testimonials', '2017-05-24 04:00:53', '2017-05-24 04:00:53');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rainbow_guide`
--

DROP TABLE IF EXISTS `rainbow_guide`;
CREATE TABLE `rainbow_guide` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rainbow_guide`
--

INSERT INTO `rainbow_guide` (`id`, `title`, `description`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Academic Programs', 'Academic Programs for Neonatology & Paediatric Specialities', '/rainbowguide', '2017-05-08 06:04:10', '2017-05-08 06:04:10');

-- --------------------------------------------------------

--
-- Table structure for table `right_highlights`
--

DROP TABLE IF EXISTS `right_highlights`;
CREATE TABLE `right_highlights` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `right_highlights`
--

INSERT INTO `right_highlights` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Covering Woman\'s Journey to Wholeness', 'From adolescence to conceiving to delivery and beyond.', '2017-05-04 06:40:14', '2017-05-04 06:40:14');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `name`, `description`, `value`, `field`, `active`, `created_at`, `updated_at`) VALUES
(1, 'contact_email', 'Contact form email address', 'The email address that all emails from the contact form will go to.', 'admin@updivision.com', '{\"name\":\"value\",\"label\":\"Value\",\"type\":\"email\"}', 1, NULL, NULL),
(2, 'contact_cc', 'Contact form CC field', 'Email adresses separated by comma, to be included as CC in the email sent by the contact form.', 'nikhil@local.dev', '{\"name\":\"value\",\"label\":\"Value\",\"type\":\"email\"}', 1, NULL, '2017-04-16 08:05:13'),
(3, 'contact_bcc', 'Contact form BCC field', 'Email adresses separated by comma, to be included as BCC in the email sent by the contact form.', NULL, '{\"name\":\"value\",\"label\":\"Value\",\"type\":\"email\"}', 1, NULL, '2017-04-16 08:05:25'),
(4, 'motto', 'Motto', 'Website motto', 'this is the value', '{\"name\":\"value\",\"label\":\"Value\", \"title\":\"Motto value\" ,\"type\":\"textarea\"}', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `specialities`
--

DROP TABLE IF EXISTS `specialities`;
CREATE TABLE `specialities` (
  `id` int(10) UNSIGNED NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `specialities`
--

INSERT INTO `specialities` (`id`, `icon`, `title`, `description`, `link`, `page`, `created_at`, `updated_at`) VALUES
(1, '/uploads/e7a86d46df666624f6d0c4ef954ff6c1.jpg', 'General Paediatrics', 'Our department of General Paediatrics is one of the largest departments of the Hospital.', '/specialities-general-paediatrics', 'Home', '2017-05-08 21:54:59', '2017-05-09 00:59:03'),
(2, '/uploads/f04716a388cf67ca2a06d4ba613213e2.jpg', 'Neonatal', 'Our Neonatal Intensive Care Unit at Banjara Hills Hospital provides specialised care to newborns who are in a critical state.', '/specialities-neonatal', 'Home', '2017-05-08 22:01:07', '2017-05-09 01:01:04');

-- --------------------------------------------------------

--
-- Table structure for table `speciality_masters`
--

DROP TABLE IF EXISTS `speciality_masters`;
CREATE TABLE `speciality_masters` (
  `id` int(10) UNSIGNED NOT NULL,
  `speciality` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `speciality_masters`
--

INSERT INTO `speciality_masters` (`id`, `speciality`, `created_at`, `updated_at`) VALUES
(1, 'Child Care', '2017-05-19 07:21:58', '2017-05-19 07:21:58'),
(2, 'Women Health', '2017-05-19 07:22:06', '2017-05-19 07:22:06'),
(3, 'Home', '2017-05-19 07:22:11', '2017-05-19 07:22:11'),
(4, 'Fertility Care', '2017-05-19 07:22:21', '2017-05-19 07:22:21'),
(5, 'Who We Are', '2017-05-23 23:23:18', '2017-05-23 23:23:18'),
(6, 'About Child Care', '2017-05-23 23:46:01', '2017-05-23 23:46:01');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Something New is here', '2017-04-16 07:54:42', '2017-04-22 07:01:04'),
(3, 'Hello World', '2017-04-16 07:55:09', '2017-04-16 07:55:09'),
(4, 'Cloud Computing', '2017-04-20 11:09:09', '2017-04-20 11:09:09'),
(5, 'Hi', '2017-04-22 07:01:13', '2017-04-22 07:01:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nikhil', 'nikhil@localhost.dev', '$2y$10$SffDwRN8nptc9t3WahfImOOdtWm9rYt3tFMwFLEWyjpe7DstnFLKW', 'x0JsN70ov2OyJfOk0lmAgCvtTJGiFRN7iMmrphOdJgsUGqkAdO63Wg0KkBTq', '2017-04-13 07:33:32', '2017-04-13 07:33:32'),
(2, 'admin', 'admin@localhost.dev', '$2y$10$j/7YFE8NEzF9qzr4.zyQze1oeC.ozvgMRlOHiPii9AWBcAfJI1k6O', NULL, '2017-05-23 23:05:45', '2017-05-23 23:05:45');

-- --------------------------------------------------------

--
-- Table structure for table `what_we_do_details`
--

DROP TABLE IF EXISTS `what_we_do_details`;
CREATE TABLE `what_we_do_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `what_we_do_details`
--

INSERT INTO `what_we_do_details` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Emergency', 'Casualty dept for emergency services 24/7', '2017-05-24 00:55:17', '2017-05-24 00:55:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aboutus`
--
ALTER TABLE `aboutus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `awards_history`
--
ALTER TABLE `awards_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `boardofdirectors`
--
ALTER TABLE `boardofdirectors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brief_facilities`
--
ALTER TABLE `brief_facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `centers`
--
ALTER TABLE `centers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor_hospitals`
--
ALTER TABLE `doctor_hospitals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_hospitals_doctor_id_foreign` (`doctor_id`),
  ADD KEY `doctor_hospitals_hospital_id_foreign` (`hospital_id`);

--
-- Indexes for table `healthcare_service`
--
ALTER TABLE `healthcare_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_events`
--
ALTER TABLE `home_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_highlights`
--
ALTER TABLE `home_highlights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `left_highlights`
--
ALTER TABLE `left_highlights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_message`
--
ALTER TABLE `md_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_press_release`
--
ALTER TABLE `media_press_release`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_specialities`
--
ALTER TABLE `our_specialities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_speciality_features`
--
ALTER TABLE `our_speciality_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_description`
--
ALTER TABLE `page_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `rainbow_guide`
--
ALTER TABLE `rainbow_guide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `right_highlights`
--
ALTER TABLE `right_highlights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specialities`
--
ALTER TABLE `specialities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `speciality_masters`
--
ALTER TABLE `speciality_masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `what_we_do_details`
--
ALTER TABLE `what_we_do_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `aboutus`
--
ALTER TABLE `aboutus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `awards_history`
--
ALTER TABLE `awards_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `boardofdirectors`
--
ALTER TABLE `boardofdirectors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `brief_facilities`
--
ALTER TABLE `brief_facilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `centers`
--
ALTER TABLE `centers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `doctor_hospitals`
--
ALTER TABLE `doctor_hospitals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `healthcare_service`
--
ALTER TABLE `healthcare_service`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `home_events`
--
ALTER TABLE `home_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_highlights`
--
ALTER TABLE `home_highlights`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `left_highlights`
--
ALTER TABLE `left_highlights`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `md_message`
--
ALTER TABLE `md_message`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `media_press_release`
--
ALTER TABLE `media_press_release`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `our_specialities`
--
ALTER TABLE `our_specialities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `our_speciality_features`
--
ALTER TABLE `our_speciality_features`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `page_description`
--
ALTER TABLE `page_description`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `rainbow_guide`
--
ALTER TABLE `rainbow_guide`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `right_highlights`
--
ALTER TABLE `right_highlights`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `specialities`
--
ALTER TABLE `specialities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `speciality_masters`
--
ALTER TABLE `speciality_masters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `what_we_do_details`
--
ALTER TABLE `what_we_do_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `doctor_hospitals`
--
ALTER TABLE `doctor_hospitals`
  ADD CONSTRAINT `doctor_hospitals_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`),
  ADD CONSTRAINT `doctor_hospitals_hospital_id_foreign` FOREIGN KEY (`hospital_id`) REFERENCES `hospitals` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
