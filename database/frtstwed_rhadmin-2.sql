-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 02, 2017 at 08:44 PM
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

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `title`, `subtitle`, `description`, `image`, `additional_info`, `speciality_masters_id`, `created_at`, `updated_at`) VALUES
(1, 'About  Child Care', '24/7 healthcare for children', 'Pediatricians are not mere doctors – they are trusted partners in your child’s health. At Rainbow Children’s Hospital, we put ourselves in the shoes of the parents and endeavor primarily for children’s healthcare. Your child’s good health, well-being and happiness are our priority. Our panel of doctors has extensive knowledge and experience on holistic development of a child at physical, emotional and social levels and can give your child the care that is just right for his or her age and stage of life.', '/uploads/4174318592c4c901a11a0a66f709c0aa.jpg', 'We offer a complete range of healthcare services for children from birth, supported all through their childhood and growing years. We offer the following comprehensive pediatric care services as a part of our, out-patient and in-patient departments:', 1, '2017-05-30 20:17:44', '2017-05-30 20:17:44');

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

--
-- Dumping data for table `awards_history`
--

INSERT INTO `awards_history` (`id`, `title`, `image`, `year`, `subtitle`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Hospital Awards', '/uploads/46bc1e882dd6f1db82d049a001b9fc0c.jpg', '2010', '“Best Children’s Hospital”', 'in India in 2010 by CNBC-TV 18 & ICICI Lombard National Award', '2017-05-29 21:53:38', '2017-05-29 21:53:38'),
(2, 'Hospital Awards', '/uploads/190f879afe4d1840f2213d2af7cc3f54.jpg', '2010-2013', 'Amongst the top 5 Best Multi-specialty Hospitals –Paediatrics', 'in the country, for 3 consecutive years 2010-2013 , by “The Week” and “HANSA” research.', '2017-05-29 21:54:54', '2017-05-29 21:54:54'),
(3, 'Hospital Awards', '/uploads/f7bc9fdb30b0fda6bd354df85bd95980.jpg', '2013', '“Six Sigma Healthcare Excellence Award”', 'at the first Asia Pacific International Conference held at Mt. Abu, Rajasthan during 4th and 5th of October 2013.', '2017-05-29 21:55:45', '2017-05-29 21:55:45');

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
(11, '/uploads/497d85e44ab787bf153609b7828da3b4.jpg', '24*7 Emergency & Transport Services', 1, '2017-05-24 01:07:05', '2017-05-24 01:07:05', 'about-child-care'),
(12, '/uploads/ada248ca5deccc9a2c9b1e420af1eaee.jpg', 'Care, Commitment and Compassion', 1, '2017-05-29 20:02:25', '2017-05-29 20:02:25', 'what-we-do'),
(13, '/uploads/1daa5dc11f4f8cb3665761c63c909edd.jpg', 'Be a leading source of Research and Discovery and translate the findings into advances that directly benefits patients', 1, '2017-05-29 20:03:16', '2017-05-29 20:03:16', 'what-we-do'),
(14, '/uploads/357bca45907953c090160968b0c7e102.jpg', 'Teach, educate and empower next generation healthcare professional in becoming Leaders who define and shape Women and Children Health Care', 1, '2017-05-29 20:03:39', '2017-05-29 20:03:39', 'what-we-do'),
(15, '/uploads/02916a3cb7c57b78e1f3c200d240c407.jpg', 'Timely intervention', 1, '2017-05-29 20:04:03', '2017-05-29 20:04:03', 'what-we-do'),
(16, '/uploads/cb1bf278deb80b82cb78a238e8b0a35a.jpg', 'Influence healthcare positively through sharing of knowledge and best practices with the healthcare community', 1, '2017-05-29 20:04:24', '2017-05-29 20:04:24', 'what-we-do'),
(17, '/uploads/95af335ee46c2bee82e4d43c132a9f99.jpg', 'Efficiency – Setting high standards for ourselves and raising the bar every time.', 1, '2017-05-29 20:04:41', '2017-05-29 20:04:41', 'what-we-do'),
(18, '/uploads/a5f65cae43f910d5dd808d0348856969.jpg', 'The Department of General Pediatrics is committed to improve the health of children in our society by modelling the best practices of general Pediatrics and promoting the role of the general paediatrician as a provider of primary health care doctor for children and their families with\" Care, Commitment and Compassion”', 1, '2017-05-30 20:53:22', '2017-05-30 20:53:22', 'ourspecialities_generalpediatrics'),
(19, '/uploads/83c1622c3b091b927b71d9a44ef34bfa.jpg', 'The Department of General Pediatrics is committed to improve the health of children in our society by modelling the best practices of general Pediatrics and promoting the role of the general paediatrician as a provider of primary health care doctor for children and their families with\" Care, Commitment and Compassion”', 1, '2017-05-30 20:54:18', '2017-05-30 20:54:18', 'ourspecialities_generalpediatrics'),
(20, '/uploads/325adae1cb30de58c234ee7b9ab3e9c9.jpg', 'The Department of General Pediatrics is committed to improve the health of children in our society by modelling the best practices of general Pediatrics and promoting the role of the general paediatrician as a provider of primary health care doctor for children and their families with\" Care, Commitment and Compassion”', 1, '2017-05-30 20:54:33', '2017-05-30 20:54:33', 'ourspecialities_generalpediatrics'),
(21, '/uploads/fa608830c00f1eec6d6d388b11df2637.jpg', '150  Bed  super specialty unit', 1, '2017-05-30 21:10:59', '2017-05-30 21:10:59', 'about-center'),
(22, '/uploads/505d436660224a01bcffbaacad65aca1.jpg', '2500 +  surgeries performed annually', 1, '2017-05-30 21:12:13', '2017-05-30 21:12:13', 'about-center'),
(23, '/uploads/6f54a8e889e862bcb7ba6ba63e0235e1.jpg', '75%  are done laparoscopically', 1, '2017-05-30 21:12:45', '2017-05-30 21:12:45', 'about-center'),
(24, '/uploads/a92b9b705354c52bffbe16f291d52164.jpg', '200+  children brought in with Emergency Transport Service', 1, '2017-05-30 21:13:19', '2017-05-30 21:13:19', 'about-center');

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
(3, 'Consultant Neonatologist', 'MD/DCh', '2yrs', 'Vijayawada', '<ul class=\"list-discription\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: MyriadProRegular; font-size: 13px;\">\r\n<li style=\"box-sizing: border-box; float: left; width: 1185.89px; margin: 4px 0px; list-style: none; background: url(\'../images/dot.png\') left 8px no-repeat; padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px;\">Performs rounds in the PICU seeing patients with the departmental team which includes residents; guiding them and teaching them simultaneously.</li>\r\n<li style=\"box-sizing: border-box; float: left; width: 1185.89px; margin: 4px 0px; list-style: none; background: url(\'../images/dot.png\') left 8px no-repeat; padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px;\">Performs various procedures necessary for care of the patients in PICU (e.g. Intubation, arterial or Central venous line insertion, ICD placement etc)</li>\r\n<li style=\"box-sizing: border-box; float: left; width: 1185.89px; margin: 4px 0px; list-style: none; background: url(\'../images/dot.png\') left 8px no-repeat; padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px;\">Providing patient care in using multidisciplinary approach and involves other subspecialties (e.g. Neurology, Nephrology etc) whenever required.</li>\r\n<li style=\"box-sizing: border-box; float: left; width: 1185.89px; margin: 4px 0px; list-style: none; background: url(\'../images/dot.png\') left 8px no-repeat; padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px;\">Carries out counseling of patients attendants maintaining punctuality and professionalism.</li>\r\n<li style=\"box-sizing: border-box; float: left; width: 1185.89px; margin: 4px 0px; list-style: none; background: url(\'../images/dot.png\') left 8px no-repeat; padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px;\">Liaises with the referring doctors by updating them about patient&rsquo;s status and discussing ongoing management.</li>\r\n<li style=\"box-sizing: border-box; float: left; width: 1185.89px; margin: 4px 0px; list-style: none; background: url(\'../images/dot.png\') left 8px no-repeat; padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px;\">Performs in-patients and out-patient duties with professionalism and punctuality.</li>\r\n<li style=\"box-sizing: border-box; float: left; width: 1185.89px; margin: 4px 0px; list-style: none; background: url(\'../images/dot.png\') left 8px no-repeat; padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px;\">Participates in preparation and execution of on-call schedule for the PICU.</li>\r\n<li style=\"box-sizing: border-box; float: left; width: 1185.89px; margin: 4px 0px; list-style: none; background: url(\'../images/dot.png\') left 8px no-repeat; padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px;\">Plays a major role in coordinating long and short distance Transport of sick patients.</li>\r\n<li style=\"box-sizing: border-box; float: left; width: 1185.89px; margin: 4px 0px; list-style: none; background: url(\'../images/dot.png\') left 8px no-repeat; padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px;\">Plays a major role in Teaching the PICU Fellowship students and DNB students including supervising them during procedures, helping in their dissertation work, researching and auditing.</li>\r\n<li style=\"box-sizing: border-box; float: left; width: 1185.89px; margin: 4px 0px; list-style: none; background: url(\'../images/dot.png\') left 8px no-repeat; padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px;\">Plays a major role in training and education of PICU nurses.</li>\r\n<li style=\"box-sizing: border-box; float: left; width: 1185.89px; margin: 4px 0px; list-style: none; background: url(\'../images/dot.png\') left 8px no-repeat; padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px;\">Contributes in departmental promotional activities by participating in various CMEs, Workshops and Conferences.</li>\r\n<li style=\"box-sizing: border-box; float: left; width: 1185.89px; margin: 4px 0px; list-style: none; background: url(\'../images/dot.png\') left 8px no-repeat; padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px;\">Involves in important hospital-wide activities by participating in Infection Control activities, Medical and clinical audits, patient safety and Quality related activities.</li>\r\n</ul>', '2017-05-30 01:41:49', '2017-05-30 01:42:01'),
(4, 'Consultant Pediatrician with Neonatal Interest', 'MD/DCh', '2yrs', 'Secunderabad', '<ul class=\"list-discription\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: MyriadProRegular; font-size: 13px;\">\r\n<li style=\"box-sizing: border-box; float: left; width: 1185.89px; margin: 4px 0px; list-style: none; background: url(\'../images/dot.png\') left 8px no-repeat; padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px;\">Performs rounds in the PICU seeing patients with the departmental team which includes residents; guiding them and teaching them simultaneously.</li>\r\n<li style=\"box-sizing: border-box; float: left; width: 1185.89px; margin: 4px 0px; list-style: none; background: url(\'../images/dot.png\') left 8px no-repeat; padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px;\">Performs various procedures necessary for care of the patients in PICU (e.g. Intubation, arterial or Central venous line insertion, ICD placement etc)</li>\r\n<li style=\"box-sizing: border-box; float: left; width: 1185.89px; margin: 4px 0px; list-style: none; background: url(\'../images/dot.png\') left 8px no-repeat; padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px;\">Providing patient care in using multidisciplinary approach and involves other subspecialties (e.g. Neurology, Nephrology etc) whenever required.</li>\r\n<li style=\"box-sizing: border-box; float: left; width: 1185.89px; margin: 4px 0px; list-style: none; background: url(\'../images/dot.png\') left 8px no-repeat; padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px;\">Carries out counseling of patients attendants maintaining punctuality and professionalism.</li>\r\n<li style=\"box-sizing: border-box; float: left; width: 1185.89px; margin: 4px 0px; list-style: none; background: url(\'../images/dot.png\') left 8px no-repeat; padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px;\">Liaises with the referring doctors by updating them about patient&rsquo;s status and discussing ongoing management.</li>\r\n<li style=\"box-sizing: border-box; float: left; width: 1185.89px; margin: 4px 0px; list-style: none; background: url(\'../images/dot.png\') left 8px no-repeat; padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px;\">Performs in-patients and out-patient duties with professionalism and punctuality.</li>\r\n<li style=\"box-sizing: border-box; float: left; width: 1185.89px; margin: 4px 0px; list-style: none; background: url(\'../images/dot.png\') left 8px no-repeat; padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px;\">Participates in preparation and execution of on-call schedule for the PICU.</li>\r\n<li style=\"box-sizing: border-box; float: left; width: 1185.89px; margin: 4px 0px; list-style: none; background: url(\'../images/dot.png\') left 8px no-repeat; padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px;\">Plays a major role in coordinating long and short distance Transport of sick patients.</li>\r\n<li style=\"box-sizing: border-box; float: left; width: 1185.89px; margin: 4px 0px; list-style: none; background: url(\'../images/dot.png\') left 8px no-repeat; padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px;\">Plays a major role in Teaching the PICU Fellowship students and DNB students including supervising them during procedures, helping in their dissertation work, researching and auditing.</li>\r\n<li style=\"box-sizing: border-box; float: left; width: 1185.89px; margin: 4px 0px; list-style: none; background: url(\'../images/dot.png\') left 8px no-repeat; padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px;\">Plays a major role in training and education of PICU nurses.</li>\r\n<li style=\"box-sizing: border-box; float: left; width: 1185.89px; margin: 4px 0px; list-style: none; background: url(\'../images/dot.png\') left 8px no-repeat; padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px;\">Contributes in departmental promotional activities by participating in various CMEs, Workshops and Conferences.</li>\r\n<li style=\"box-sizing: border-box; float: left; width: 1185.89px; margin: 4px 0px; list-style: none; background: url(\'../images/dot.png\') left 8px no-repeat; padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px;\">Involves in important hospital-wide activities by participating in Infection Control activities, Medical and clinical audits, patient safety and Quality related activities.</li>\r\n</ul>', '2017-05-30 01:42:38', '2017-05-30 01:42:38');

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
-- Table structure for table `centre_panel`
--

DROP TABLE IF EXISTS `centre_panel`;
CREATE TABLE `centre_panel` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
-- Table structure for table `doctors_desk`
--

DROP TABLE IF EXISTS `doctors_desk`;
CREATE TABLE `doctors_desk` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctors_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctors_desk`
--

INSERT INTO `doctors_desk` (`id`, `title`, `description`, `doctors_id`, `created_at`, `updated_at`) VALUES
(1, 'Teething', 'All babies suck their thumb. Some babies suck their thumbs more than others.Thumb-sucking comes naturally to a baby whether it is because she is hungry, seeking comfort, or just exploring her body.\r\nDo not pull your baby\'s thumb out of her mouth every time she puts it into her mouth. This is definitely not the way to deal with thumb-sucking. This approach could backfire and actually result in the development of a thumb-sucking habit.\r\nParents should keep in mind that thumb-sucking is a habit that disappears of its own volition, gradually petering out between the ages of three and six.', 4, '2017-05-31 21:01:52', '2017-05-31 21:01:52'),
(2, 'Vaccination', 'Learn why on-time vaccination matters.', 4, '2017-05-31 21:33:12', '2017-05-31 21:33:12');

-- --------------------------------------------------------

--
-- Table structure for table `doctors_desk_questions`
--

DROP TABLE IF EXISTS `doctors_desk_questions`;
CREATE TABLE `doctors_desk_questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctors_desk_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctors_desk_questions`
--

INSERT INTO `doctors_desk_questions` (`id`, `title`, `question`, `answer`, `doctors_desk_id`, `created_at`, `updated_at`) VALUES
(1, 'Teething', 'When will my toddler get all of his teeth?', 'Teething patterns vary greatly from child to child. Some don’t have any teeth at their first birthday, while others are sporting a mouthful by then. The vast majority of babies sprout their first teeth between 4 and 7 months of age. (If your child still doesn’t have any teeth by 15 to 18 months, schedule a visit with a pediatric dentist)', 1, '2017-05-31 21:06:15', '2017-05-31 21:06:15'),
(2, 'Teething', 'What can I do to ease my toddler’s discomfort?', 'Teething patterns vary greatly from child to child. Some don’t have any teeth at their first birthday, while others are sporting a mouthful by then. The vast majority of babies sprout their first teeth between 4 and 7 months of age. (If your child still doesn’t have any teeth by 15 to 18 months, schedule a visit with a pediatric dentist)\r\nTeething patterns vary greatly from child to child. Some don’t have any teeth at their first birthday, while others are sporting a mouthful by then. The vast majority of babies sprout their first teeth between 4 and 7 months of age. (If your child still doesn’t have any teeth by 15 to 18 months, schedule a visit with a pediatric dentist)', 1, '2017-05-31 21:07:01', '2017-05-31 21:07:01'),
(3, 'Teething', 'What teething symptoms will my toddler experience?', 'Teething patterns vary greatly from child to child. Some don’t have any teeth at their first birthday, while others are sporting a mouthful by then. The vast majority of babies sprout their first teeth between 4 and 7 months of age. (If your child still doesn’t have any teeth by 15 to 18 months, schedule a visit with a pediatric dentist)\r\nTeething patterns vary greatly from child to child. Some don’t have any teeth at their first birthday, while others are sporting a mouthful by then. The vast majority of babies sprout their first teeth between 4 and 7 months of age. (If your child still doesn’t have any teeth by 15 to 18 months, schedule a visit with a pediatric dentist)', 1, '2017-05-31 21:08:18', '2017-05-31 21:08:18'),
(4, 'Teething', 'What’s the best way to brush my child’s teeth?', 'Teething patterns vary greatly from child to child. Some don’t have any teeth at their first birthday, while others are sporting a mouthful by then. The vast majority of babies sprout their first teeth between 4 and 7 months of age. (If your child still doesn’t have any teeth by 15 to 18 months, schedule a visit with a pediatric dentist)', 1, '2017-05-31 21:08:46', '2017-05-31 21:08:46'),
(5, 'Teething', 'When should I let my toddler start brushing his own teeth?', 'Teething patterns vary greatly from child to child. Some don’t have any teeth at their first birthday, while others are sporting a mouthful by then. The vast majority of babies sprout their first teeth between 4 and 7 months of age. (If your child still doesn’t have any teeth by 15 to 18 months, schedule a visit with a pediatric dentist)', 1, '2017-05-31 21:09:11', '2017-05-31 21:09:11'),
(6, 'Teething', 'When should I start taking my child to the dentist?', 'Teething patterns vary greatly from child to child. Some don’t have any teeth at their first birthday, while others are sporting a mouthful by then. The vast majority of babies sprout their first teeth between 4 and 7 months of age. (If your child still doesn’t have any teeth by 15 to 18 months, schedule a visit with a pediatric dentist)', 1, '2017-05-31 21:09:34', '2017-05-31 21:09:34'),
(7, 'Teething', 'Hunger and thumb-sucking', 'Teething patterns vary greatly from child to child. Some don’t have any teeth at their first birthday, while others are sporting a mouthful by then. The vast majority of babies sprout their first teeth between 4 and 7 months of age. (If your child still doesn’t have any teeth by 15 to 18 months, schedule a visit with a pediatric dentist)', 1, '2017-05-31 21:10:04', '2017-05-31 21:10:04'),
(8, 'Teething', 'Thumb-sucking and breastfeeding', 'Teething patterns vary greatly from child to child. Some don’t have any teeth at their first birthday, while others are sporting a mouthful by then. The vast majority of babies sprout their first teeth between 4 and 7 months of age. (If your child still doesn’t have any teeth by 15 to 18 months, schedule a visit with a pediatric dentist)\r\nTeething patterns vary greatly from child to child. Some don’t have any teeth at their first birthday, while others are sporting a mouthful by then. The vast majority of babies sprout their first teeth between 4 and 7 months of age. (If your child still doesn’t have any teeth by 15 to 18 months, schedule a visit with a pediatric dentist)', 1, '2017-05-31 21:10:39', '2017-05-31 21:10:39'),
(9, 'Vaccination', 'What is an infection?', 'An infection happens when a \"microorganism\" (a living thing so small that we can\'t see them individually) begins to grow and multiply in the body. We all have millions of microorganisms on and in our bodies. There are many bacteria (microorganisms that can live independently) on our skin, and even more in our intestines and mouths. These bacteria are not only fairly harmless (unless your immune system isn\'t working quite right) but actually help you out.\r\nHowever, there are many bacteria that will make you sick. Some are usually not found in the body unless you are sick.\r\n                        In other cases, normally harmless or helpful bacteria may overgrow or invade parts of the body where they aren\'t supposed to be.There are also viruses, particles that cannot live by themselves but which can invade your body\'s cells, take over those cells\' growth machinery, and make the cells start producing more virus particles.', 2, '2017-05-31 21:31:01', '2017-05-31 21:33:34'),
(10, 'Vaccination', 'What is an immunization?', 'Teething patterns vary greatly from child to child. Some don’t have any teeth at their first birthday, while others are sporting a mouthful by then. The vast majority of babies sprout their first teeth between 4 and 7 months of age. (If your child still doesn’t have any teeth by 15 to 18 months, schedule a visit with a pediatric dentist)\r\nTeething patterns vary greatly from child to child. Some don’t have any teeth at their first birthday, while others are sporting a mouthful by then. The vast majority of babies sprout their first teeth between 4 and 7 months of age. (If your child still doesn’t have any teeth by 15 to 18 months, schedule a visit with a pediatric dentist)', 2, '2017-05-31 21:34:50', '2017-05-31 21:34:50'),
(11, 'Vaccination', 'Why are vaccines given at such an early age?', 'Teething patterns vary greatly from child to child. Some don’t have any teeth at their first birthday, while others are sporting a mouthful by then. The vast majority of babies sprout their first teeth between 4 and 7 months of age. (If your child still doesn’t have any teeth by 15 to 18 months, schedule a visit with a pediatric dentist)\r\nTeething patterns vary greatly from child to child. Some don’t have any teeth at their first birthday, while others are sporting a mouthful by then. The vast majority of babies sprout their first teeth between 4 and 7 months of age. (If your child still doesn’t have any teeth by 15 to 18 months, schedule a visit with a pediatric dentist)', 2, '2017-05-31 21:35:24', '2017-05-31 21:35:24'),
(12, 'Vaccination', 'What if my child misses a dose of vaccine?', 'Teething patterns vary greatly from child to child. Some don’t have any teeth at their first birthday, while others are sporting a mouthful by then. The vast majority of babies sprout their first teeth between 4 and 7 months of age. (If your child still doesn’t have any teeth by 15 to 18 months, schedule a visit with a pediatric dentist)', 2, '2017-05-31 21:35:58', '2017-05-31 21:35:58'),
(13, 'Vaccination', 'How safe are vaccines?', 'Teething patterns vary greatly from child to child. Some don’t have any teeth at their first birthday, while others are sporting a mouthful by then. The vast majority of babies sprout their first teeth between 4 and 7 months of age. (If your child still doesn’t have any teeth by 15 to 18 months, schedule a visit with a pediatric dentist)', 2, '2017-05-31 21:36:26', '2017-05-31 21:36:26'),
(14, 'Vaccination', 'Do vaccines always work?', 'Teething patterns vary greatly from child to child. Some don’t have any teeth at their first birthday, while others are sporting a mouthful by then. The vast majority of babies sprout their first teeth between 4 and 7 months of age. (If your child still doesn’t have any teeth by 15 to 18 months, schedule a visit with a pediatric dentist)', 2, '2017-05-31 21:36:49', '2017-05-31 21:36:49'),
(15, 'Vaccination', 'What will happen if my child doesn’t get his vaccinations?', 'Teething patterns vary greatly from child to child. Some don’t have any teeth at their first birthday, while others are sporting a mouthful by then. The vast majority of babies sprout their first teeth between 4 and 7 months of age. (If your child still doesn’t have any teeth by 15 to 18 months, schedule a visit with a pediatric dentist)\r\nTeething patterns vary greatly from child to child. Some don’t have any teeth at their first birthday, while others are sporting a mouthful by then. The vast majority of babies sprout their first teeth between 4 and 7 months of age. (If your child still doesn’t have any teeth by 15 to 18 months, schedule a visit with a pediatric dentist)', 2, '2017-05-31 21:37:21', '2017-05-31 21:37:21');

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
(6, '/uploads/8e729271a7d5c6e14e8251833e855f53.jpg', 'FINEST PEDIATRICIAN', 'Rainbow Hospitals for Children is 300- bed comprehensive health center for Pediatrics and offers the best care available in modern pediatric medicine, delivered in its state of the art facilities, spread over five locations and expanding. We are among the top five multi specialty Pediatric Hospitals of our country and have won this recognition for the last three consecutive years from “The Week” and “HANSA” research. We are also the winner of CNBC TV 18 and ICICI Lombard in India Health care awards 2010 for the Best Children’s Hospital in India.', 1, '2017-05-24 00:24:41', '2017-05-24 00:24:41', 'about-child-care'),
(7, '/uploads/fab3059e7b2781e53c0f714a736c2d40.jpg', 'Childcare', 'Children\'s Intensive Care Unit (PICU), Neonatal Intensive Care (NICU/New born ICU), Pediatric Neurology, Pediatric Nephrology, Pediatric Gastroenterology, Pediatric Hematology & Oncology, Pediatric Surgery, Pediatric Nutrition, Pediatric Dentistry, Pediatric Cardiology, Pediatic Pulmonology, Pediatric Psychology & Psychiatry, Orthopedics, Genetics & Metabolic Medicine, Anesthesia & Pain Management, Pediatric Ophthalmology, Speech & Language Therapy, Physiotherapy & Rehabilitation, ENT, Radiology and Laboratory Services.', 1, '2017-05-29 20:11:49', '2017-05-29 21:02:38', 'what-we-do'),
(8, '/uploads/46c206bf2a8c8986fdc0fd66d970c5ba.jpg', 'Women Care', 'Children\'s Intensive Care Unit (PICU), Neonatal Intensive Care (NICU/New born ICU), Pediatric Neurology, Pediatric Nephrology, Pediatric Gastroenterology, Pediatric Hematology & Oncology, Pediatric Surgery, Pediatric Nutrition, Pediatric Dentistry, Pediatric Cardiology, Pediatic Pulmonology, Pediatric Psychology & Psychiatry, Orthopedics, Genetics & Metabolic Medicine, Anesthesia & Pain Management, Pediatric Ophthalmology, Speech & Language Therapy, Physiotherapy & Rehabilitation, ENT, Radiology and Laboratory Services.', 1, '2017-05-29 20:12:49', '2017-05-29 21:02:49', 'what-we-do'),
(9, '/uploads/a0067d16c52ac7705b7f53a47e81d860.jpg', 'Fertility Care', 'Children\'s Intensive Care Unit (PICU), Neonatal Intensive Care (NICU/New born ICU), Pediatric Neurology, Pediatric Nephrology, Pediatric Gastroenterology, Pediatric Hematology & Oncology, Pediatric Surgery, Pediatric Nutrition, Pediatric Dentistry, Pediatric Cardiology, Pediatic Pulmonology, Pediatric Psychology & Psychiatry, Orthopedics, Genetics & Metabolic Medicine, Anesthesia & Pain Management, Pediatric Ophthalmology, Speech & Language Therapy, Physiotherapy & Rehabilitation, ENT, Radiology and Laboratory Services.', 1, '2017-05-29 20:14:01', '2017-05-29 21:03:01', 'what-we-do'),
(10, '/uploads/c7bab3863f0554a911a5c909f47750ab.jpg', 'Our DNA', 'Our three C’s stand for Care, Commitment and Compassion - the quintessential for speedy recovery and overall well-being. As they say a positive morale is more important than medication to initiate the process of healing, we permeate a positive atmosphere through these three C’s. Our state of the art facilities and infrastructure are there for this reason, apart from the fact that we are in the continual practice of enlightening you on various health issues revolving around mother, child and women.', 1, '2017-05-29 20:34:35', '2017-05-29 20:34:35', 'why-chooseus'),
(11, '/uploads/64696ea5681766fa248ab71ca66d49a7.jpg', 'We are there for you anytime', 'Rainbow Hospitals for Children is 200- bed comprehensive health center for Pediatrics and offers the best care available in modern pediatric medicine, delivered in its state of the art facilities, spread over five locations and expanding. We are among the top five multi specialty Pediatric Hospitals of our country and have won this recognition for the last three consecutive years from “The Week” and “HANSA” research. We are also the winner of CNBC TV 18 and ICICI Lombard in India Health care awards 2010 for the Best Children’s Hospital in India.', 1, '2017-05-29 20:36:02', '2017-05-29 20:36:02', 'why-chooseus'),
(12, '/uploads/d0df2c364a0b7804ec313e94060b6697.jpg', 'Being with you in times  of your critical needs', 'Rainbow Hospitals for Children is 300- bed comprehensive health center for Pediatrics and offers the best care available in modern pediatric medicine, delivered in its state of the art facilities, spread over five locations and expanding. We are among the top five multi specialty Pediatric Hospitals of our country and have won this recognition for the last three consecutive years from “The Week” and “HANSA” research. We are also the winner of CNBC TV 18 and ICICI Lombard in India Health care awards 2010 for the Best Children’s Hospital in India.', 1, '2017-05-29 20:36:37', '2017-05-29 20:36:37', 'why-chooseus'),
(13, '/uploads/8556d0888c0cf90fd43e0f9e8d649ab6.jpg', 'Intensifying Surgical Care', 'Successfully performing rare procedures including, minimally invasive surgery on neonates as young as 2 days and weighing as light as 2 kilograms. Many of the MIS procedures performed by Team Rainbow have been the first-of-their kind in India. E.g., Thoracoscopic Aortopexy on an 8 months old baby. Rainbow’s Pediatric Surgery department extends procedures for neonates, infants, children and adolescents.', 1, '2017-05-29 20:51:07', '2017-05-29 20:51:07', 'cutting-edge-medical_solutions'),
(14, '/uploads/f4ea11a3dd85828b4b90db96857b850c.jpg', 'Infusing Hope with Pediatric  Hemato-Oncology', 'Children\'s Intensive Care Unit (PICU), Neonatal Intensive Care (NICU/New born ICU), Pediatric Neurology, Pediatric Nephrology, Pediatric Gastroenterology, Pediatric Hematology & Oncology, Pediatric Surgery, Pediatric Nutrition, Pediatric Dentistry, Pediatric Cardiology, Pediatic Pulmonology, Pediatric Psychology & Psychiatry, Orthopedics, Genetics & Metabolic Medicine, Anesthesia & Pain Management, Pediatric Ophthalmology, Speech & Language Therapy, Physiotherapy & Rehabilitation, ENT, Radiology and Laboratory Services.', 1, '2017-05-29 20:53:17', '2017-05-29 20:53:17', 'cutting-edge-medical_solutions'),
(15, '/uploads/ee05d7cedd0f12763ba172cc9c73ed50.jpg', 'Pioneering Fetal Medicine', 'Children\'s Intensive Care Unit (PICU), Neonatal Intensive Care (NICU/New born ICU), Pediatric Neurology, Pediatric Nephrology, Pediatric Gastroenterology, Pediatric Hematology & Oncology, Pediatric Surgery, Pediatric Nutrition, Pediatric Dentistry, Pediatric Cardiology, Pediatic Pulmonology, Pediatric Psychology & Psychiatry, Orthopedics, Genetics & Metabolic Medicine, Anesthesia & Pain Management, Pediatric Ophthalmology, Speech & Language Therapy, Physiotherapy & Rehabilitation, ENT, Radiology and Laboratory Services.', 1, '2017-05-29 20:53:49', '2017-05-29 20:53:49', 'cutting-edge-medical_solutions'),
(16, '/uploads/b0e9c5e6b85f22536986c24ad6778282.jpg', 'Sophisticated maternal care', 'Rainbow launched its Perinatal Centre for Women with the sole aim of gifting soon-to-be mothers a safe, secure and happy motherhood especially in high risk pregnancy cases. With state-of-the-art labor rooms attached with Maternity ICU, over 175 deliveries are handled every month. Rainbow has initiated high end LDRP Suites (Labor, delivery, recovery, postpartum suites) the first of its kind in South India. The average stay duration of 1.97 days for normal delivery and 3.99 days for LSCS patients is on par with international standards. We are also known for the least possible surgical interventions and pave way for natural birthing.', 1, '2017-05-29 21:04:15', '2017-05-29 21:04:15', 'cutting-edge-medical_solutions'),
(17, '/uploads/0fd8cac6714572f0ea9ee6f1e5eb764b.jpg', 'Rainbow In-Vitro Fertility (IVF) Centre, Madhapur', 'This Centre is equipped with the most advanced reproductive technology available in India today. At Rainbow, we understand that the inability to conceive can cause a tremendous amount of emotional strain in couples who are trying to start a family. Our aim is to assist couples into parenthood, so that they, in turn can help us create ‘happy mothers and healthy children.’ Rainbow has a state of the art IVF lab and was the first centre in Andhra Pradesh to introduce IMSI for male factor infertility and repeated unexplained IVF failure.', 1, '2017-05-29 21:04:45', '2017-05-29 21:04:45', 'cutting-edge-medical_solutions'),
(18, '/uploads/6595c54365d3320c7fb5fa79e617efa9.jpg', 'Corporate Social Responsibility at Rainbow', 'Rainbow has taken on a number of CSR Projects over the last decade. Rainbow has set up ‘Rainbow Children’s Foundation’ which provides treatment to underprivileged children among other things. We partner with the Government of Andhra Pradesh to give subsidized treatment to children under the Arogyashree Initiative. Rainbow has also adopted Masaipet village, 50 kms from Hyderabad where we cater to basic health needs for all women and children completely free of cost. Rainbow also provides heavily subsidized medical care for children sponsored by ‘Heal a Child’ foundation.', 1, '2017-05-29 21:05:09', '2017-05-29 21:05:09', 'cutting-edge-medical_solutions'),
(19, '/uploads/94e1192783fc58cbfc99edc4f7a543d5.jpg', 'Life Influencer', 'Each day at Rainbow Hospital brings a chance to influence lives of  people, further your learning and discover something new.', 1, '2017-05-30 01:33:47', '2017-05-30 01:33:47', 'careers'),
(20, '/uploads/41701d3eba52c8273a3ba8cbdad1c439.jpg', 'Serve with passion', 'Get ready to join a committed team of doctors, nurses, educators, researchers, administrative professionals, support staff who all work together in harmony to practice compassionate medical care.', 1, '2017-05-30 01:34:38', '2017-05-30 01:34:38', 'careers'),
(21, '/uploads/c9ed9b4df02f4254825d5506e642ccb1.jpg', 'Patient centric approach', 'You are joining a multidisciplinary specialty team of medical experts are committed to providing exceptional care and patient services for the Nation\'s mother and children from across all walks of life.', 1, '2017-05-30 01:35:00', '2017-05-30 01:35:00', 'careers'),
(22, '/uploads/d0eb65d0fd5f5c49623fce522f24e64b.jpg', 'Rainbow Children\'s Hospital, Banjara Hills', 'Rainbow Hospitals at Banjara Hills is a 150 bed super specialty unit with all pediatric super specialties and allied services (Neurology, Hematology, Nephrology, Gastroenterology and liver diseases, Metabolic and genetic disorders, Pediatric surgery etc) offered comprehensively all under one roof. It is equipped with the very best in medical technology and backed by expertise across a range of clinical specialties. The Perinatal Unit is well supported by high risk obstetrics, fetal medicine, maternal intensive care unit & neonatal intensive care unit.\r\nThe centre also runs one of the largest post graduate training programs in the country. It offers the following training programs for doctors – DNB in pediatrics, DNB in Neonatology, Pediatric Critical Care Fellowship certification course by IAP and IAP Fellowship in Neonatology.', 1, '2017-05-30 21:08:09', '2017-05-30 21:08:09', 'about-center'),
(23, '/uploads/aaac1857611ddaeb95ff1d9585341030.jpg', 'Visitor Information', 'We welcome visitors and understand that you are integral to our patient’s recovery. However, we have established visiting hours and rules that you must adhere to in the interest, comfort and safety of your loved one who is admitted and as well as in the interest of other patients who are admitted in the hospital. Please find below a set of policy guidelines which we encourage you to be fully aware of before visiting a patient admitted in the hospital. We believe that this is important to protect our patients, visitors and employees from exposure to respiratory viral infections and seasonal flu. These guidelines are necessary to help prevent the spread of illness with the medical centre. We look forward to your full cooperation and thank you for your understanding.', 1, '2017-05-30 22:27:36', '2017-05-30 22:27:36', 'about-center'),
(24, '/uploads/5a397a37a521f65535d264147e793efb.jpg', 'INFO', 'Dr Farhan’s illustrious career started with securing Gold medal in the final year MBBS in 1995. After securing MD in Pediatrics he is working in the Rainbow team right from the year of inception of Rainbow children’s Hospital.  He worked passionately in both Neonatal and Pediatric Critical Care and was one of the key members in setting up advanced Pediatric and Neonatal transport facility. \r\nThe existing modern, state of the art ambulances were designed and conceptualized by him. He is presently working as Consultant Pediatric Intensivist in the busy pediatric intensive care unit (PICU) at Rainbow Hospitals, Banjara Hills. This ICU is a major referral centre in the state of Andhra Pradesh and takes care of very sick children with complex diseases. \r\nDr. Farhan was actively involved in the establishment and functioning of DNB and Fellowship teaching programs. Presently he takes care of Pediatric Critical Care teaching and helps Dr. Ujjwala in managing the academic activities of DNB Pediatrics.\r\nHe is the NABH Assessor for Quality in Health Care. He is the chair \r\nHe is the NABH Assessor for Quality in Health Care. He is the chair person of the core committee which takes care of Quality and Accreditation across all the centres of Rainbow Hospitals.\r\nHe has lot of research work to his credit in the field of ARDS in children and High Frequency Ventilation.\r\nHis passion in the field of audio-visuals prompted him to make India’s first indigenous movie on Basic Life Support (BLS). This movie is now used for training in BLS, for thousands of medical and paramedical personnel across India. The movie is also used in the PALS (Pediatric Advanced Life Support) courses across the country.', 1, '2017-05-31 21:16:24', '2017-05-31 21:16:24', 'childcare-doctors-detailpage');

-- --------------------------------------------------------

--
-- Table structure for table `history_details`
--

DROP TABLE IF EXISTS `history_details`;
CREATE TABLE `history_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `page` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `history_details`
--

INSERT INTO `history_details` (`id`, `date`, `image`, `title`, `description`, `link`, `created_at`, `updated_at`, `page`) VALUES
(1, '2017-05-30', '/uploads/d5b5c7fd3ca93f22db54b1db81ce6e4b.jpg', 'Rainbow Hospital for Women and Children at Kondapur', 'To enable more number of women and children to enjoy good quality healthcare and be more accessible to people in Hyderabad city, we opened a comprehensive healthcare facility for women and children at Kondapur, in 2013. This is a 50 bed ultramodern, sophisticated hospital with exclusive maternity care unit supported with Fetal Medicine, Neonatal and Pediatric', '#', '2017-05-29 21:40:24', '2017-05-29 21:40:24', 'history'),
(2, '2017-06-14', '/uploads/dd9bc46d31c0127ebe27ad36df9c5e3e.jpg', 'Rainbow Hospital for Women and Children at Kondapur', 'To enable more number of women and children to enjoy good quality healthcare and be more accessible to people in Hyderabad city, we opened a comprehensive healthcare facility for women and children at Kondapur, in 2013. This is a 50 bed ultramodern, sophisticated hospital with exclusive maternity care unit supported with Fetal Medicine, Neonatal and Pediatric', '#', '2017-05-29 21:41:21', '2017-05-29 21:41:21', 'history'),
(3, '2017-05-25', '/uploads/300e64bcc06389297c54ff9a195cc104.jpg', 'Expansion of Rainbow Vijaywada to a 150 bedded mother and child super specialty hospital', 'To enable more number of women and children to enjoy good quality healthcare and be more accessible to people in Hyderabad city, we opened a comprehensive healthcare facility for women and children at Kondapur, in 2013. This is a 50 bed ultramodern, sophisticated hospital with exclusive maternity care unit supported with Fetal Medicine, Neonatal and Pediatric', '#', '2017-05-29 21:42:22', '2017-05-29 21:42:22', 'history'),
(4, '2017-05-24', '/uploads/08679ac9b06cacd6c4f434a5e85a9b62.jpg', 'Six Sigma Healthcare Excellence Award', 'Rainbow Hospitals received the “Six Sigma Healthcare Excellence Award” at the first Asia Pacific International Conference held at Mt. Abu, Rajasthan during 4th and 5th of October 2013.', '#', '2017-05-29 21:43:43', '2017-05-29 21:43:43', 'history'),
(5, '2016-11-18', '/uploads/6faa5636cdb9be93af4c305c0d2540bc.jpg', 'Rainbow Hospital for Women and Children at Kondapur', 'After five years of successful clinical services at Vijayawada, the hospital expanded into a brand new 150 bed center, the largest and one-of-its kind facility in the tier II city. It is in fact much larger than our Hyderabad center. The center has a 40 bed, Level 3 Neonatal Intensive Care Facility. Also, after running Pediatric Intensive Care Services in Vijayawada for 5 years, we have', '#', '2017-05-29 21:47:33', '2017-05-29 21:47:33', 'history'),
(6, '2016-10-21', '/uploads/56f2df31d7889d58d284d6d88add1423.jpg', 'Six Sigma Healthcare Excellence Award', 'Rainbow Hospitals received the “Six Sigma Healthcare Excellence Award” at the first Asia Pacific International Conference held at Mt. Abu, Rajasthan during 4th and 5th of October 2013.', '#', '2017-05-29 21:48:17', '2017-05-29 21:48:17', 'history'),
(7, '2016-05-10', '/uploads/73e6d1646549ea9202757209144742b6.jpg', 'Expansion of Rainbow Vijaywada to a 150 bedded mother and child super specialty hospital', 'After five years of successful clinical services at Vijayawada, the hospital expanded into a brand new 150 bed center, the largest and one-of-its kind facility in the tier II city. It is in fact much larger than our Hyderabad center. The center has a 40 bed, Level 3 Neonatal Intensive Care Facility. Also, after running Pediatric Intensive Care Services in Vijayawada for 5 years, we have', '#', '2017-05-29 21:48:59', '2017-05-29 21:48:59', 'history'),
(8, '2016-07-07', '/uploads/165ccce67b1a368049dcd376cdb0f437.jpg', 'Six Sigma Healthcare Excellence Award', 'Rainbow Hospitals received the “Six Sigma Healthcare Excellence Award” at the first Asia Pacific International Conference held at Mt. Abu, Rajasthan during 4th and 5th of October 2013.', '#', '2017-05-29 21:49:29', '2017-05-29 21:49:29', 'history'),
(9, '2017-04-06', '/uploads/a08bb2c18eb9c79be53282cd80321aa4.jpg', 'Dr.Bhavana Kasu', 'Q & A Coloumn Published in Sakshi', '#', '2017-05-29 22:17:04', '2017-05-29 22:34:29', 'media-press-clips'),
(10, '2017-03-22', '/uploads/19c1882b0e48507afd23ef861ddb34f9.jpg', 'Dr.Satya Prasad', 'Q & A coloumn published in Namaste Telangaana', '#', '2017-05-29 22:18:15', '2017-05-29 22:34:36', 'media-press-clips'),
(11, '2017-03-15', '/uploads/82a032db74ac3b22fc961edeaa1ef46e.jpg', 'Dr.Bhargavi.Katamreddy', 'Article Published in Sakshi', '#', '2017-05-29 22:18:52', '2017-05-29 22:34:44', 'media-press-clips');

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
(3, 'IAP PEDIATRIC NEUROLOGY', 'IAP PEDIATRIC NEUROLOGY Postdoctoral Fellowship Training Program. This is the fifth year of pediatric neurology training programme under IAP Pediatric Neurology sub chapter. From this year it is a TWO year training program under supervision of pediatric neurology consultant across three centers in India. There is an centralised exit exam…', '2017-01-30 12:53:14', '2017-05-29 23:23:33', '2017-05-29 23:23:33'),
(4, 'Child Growth Screening Camp - 1', 'Attend free child growth screening camp and register for a parenting workshop on growth and nutrition at Rainbow Children’s Hospital, Marathahalli on July 31, 2016', '2017-07-14 12:53:38', '2017-05-29 23:23:52', '2017-05-29 23:23:52'),
(5, 'Child Growth Screening Camp', 'Attend free child growth screening camp and register for a parenting workshop on growth and nutrition at Rainbow Children’s Hospital, Bannerghatta Road on July 24, 2016', '2017-07-14 12:53:58', '2017-05-29 23:24:11', '2017-05-29 23:24:11'),
(6, '3rd Mid Term Conference Paediatric Haematology & Oncology', 'Rainbow Children\'s Hospitals In association with IAP Twin Cities Branch & PHO Chapter of IAP Presents 3rd Mid Term Conference Pediatric Haematology & Oncology 9th & 10th July 2016', '2017-04-12 12:54:25', '2017-05-29 23:24:32', '2017-05-29 23:24:32');

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

--
-- Dumping data for table `md_message`
--

INSERT INTO `md_message` (`id`, `title`, `name`, `designation`, `description`, `image`, `link`, `created_at`, `updated_at`) VALUES
(1, 'MD\'s Message', 'Dr. Ramesh Kancharla', 'Chairman and Managing Director', '“At Rainbow we are driven with the powerful belief that to convert the ‘impossible’ to ‘possible’, one has to convert the ‘I’s and Me’s’ to ‘Us and We’. Teamwork is the very soul of our entity as Rainbow Group. One may have a vision but without unequivocal support from likeminded and dedicated child specialists, who joined Rainbow, supported and strengthened the idea further by working alongside to help bring this vision to concrete reality, we would literally still be chasing rainbows..\r\n\r\nFor us at Rainbow, our greatest measure of success is in the number of smiling faces, love and appreciation from our children and their parents and the tremendous support from the medical community. Our success also lies in the knowledge, that with their continued support we will keep on going from strength to strength and hopefully one day Rainbow will extend its umbrella of Perinatal and Tertiary Pediatric care to children nationwide.”', '/uploads/c6df1e518029ea842b2595d466703cd6.jpg', '#', '2017-05-29 21:08:01', '2017-05-29 21:56:15'),
(2, 'Board of Directors', 'DR. RAMESH KANCHARLA', 'Chairman and Managing Director', '“At Rainbow, we are driven with the powerful belief that to convert the’impossible’ to ‘possible’, one has to convert the ‘I’s and ‘Me’s to ‘Us’ and ‘We’. Teamwork is the very soul of our entity as Rainbow Group. One may have a vision but without unequivocal support from likeminded and dedicated child specialists, who joined Rainbow, supported and strengthened the idea further by working alongside to help bring this vision to concrete reality, we would literally still be chasing rainbows…\r\n\r\nFor us at Rainbow, our greatest measure of success is in the number of smilingfaces, love and appreciation from our children and their parents and the tremendous support from the medical community. Our success also lies in the knowledge, that with their continued support we will keep on going from strength to strength and hopefully one day Rainbow will extend its umbrella of Perinatal and Tertiary Pediatric care to children nationwide.”', '/uploads/6ddbc5f5b57965826db4e7b110c6f508.jpg', '#', '2017-05-29 21:19:31', '2017-05-29 21:19:31'),
(3, 'Board of Directors', 'Dr. Dinesh Kumar Chirla', 'Whole-time Director', '\"We offer Advanced Pediatric & Neonatal intensive care services with support of all Pediatric subspecialties under one roof. We established Rainbow’s Perinatal Center where we take care of the mother and the baby from conception right through to postnatal support. Pediatric Intensive care is a high intensity environment that requires quick diagnosis, lightning decisions, followed by immediate action. Most importantly it also requires a high level of empathy that extends beyond the children brought in critical conditions, to their parents and loved ones.\r\n\r\nWe understand that when a child’s life is at stake even the most reasonable of people tend to lose their balance and cool. This is where our strong philosophy that Intensive Care can never be a one man show but is in fact, a synchronized team effort, comes in to play and has been the fundamental backbone of our success so far. We intend to save many more lives and although we have come a long way, we still have far to go. Our journey will continue till the day that every child in India gets the much needed critical care when necessary. And that no child is ever turned away for want of intensive care facilities. For us at Rainbow, the journey has just begun.\"', '/uploads/435a7c8bb0f192ae832c6fed28343cd7.jpg', '#', '2017-05-29 21:20:17', '2017-05-29 21:20:17'),
(4, 'Board of Directors', 'Mr. Yugandhar Meka', 'Non Executive - Independent Director', 'Mr. M Yugandhar is on the Board of Directors for Rainbow Children\'s Hospitals. He is the Managing Director and founder member of Karvy Group has varied experience in the field of financial services spanning over 20 years. He is a Fellow Member of the Institute of Chartered Accountants of India and the Chairman of Hyderabad Branch of SIRC of Institute of Chartered Accountants of India. He is also a member of the Chandrasekharan Committee constituted by Securities and Exchange Board of India (SEBI). He is a member of various industry and management associations namely, Confederation of Indian Industry (CII), Federation of Andhra Pradesh Chambers of Commerce & Industry (FAPCCI), Indo American Chamber of Commerce (IACC), and Hyderabad Management Association (HMA). He is also the Managing Trustee of Hrudaya Cure a little Heart Foundation, an NGO that helps economically disadvantaged children with pediatric heart disease.', '/uploads/17d97b24885c5a7933bfca5344cdadda.jpg', '#', '2017-05-29 21:21:23', '2017-05-29 21:21:23'),
(5, 'Board of Directors', 'Mr. Nagarajan Srinivasan', 'Nominee Director', 'Mr. Srinivasan rejoined CDC in June’2013 and has a regional responsibility for South Asia to support all CDCs investments in the region. He has been in the private equity industry for over 10 years and has spearheaded various origination, execution and exits in India and Sri Lanka. Till recently he led the financial services sector for a global emerging market private equity fund ‘Actis’ in South Asia. Prior to that he worked with CDC and Standard Chartered Bank in Africa and India.\r\n\r\nHe holds a Masters in Economics and Post Graduate in Business Administration from Warwick School of Business.', '/uploads/dd836d922c87b491076e148c7bd79209.jpg', '#', '2017-05-29 21:22:24', '2017-05-29 21:22:24'),
(6, 'Board of Directors', 'Ms. Ranjana Kumar', 'Non Executive - Independent Director', 'World Special Issue dated 26th November 2012, BMA Management Woman Achiever of the Year Award 2008-2009 and Banker of the Year 2002 by Business Standard, India\'s turn around Queen - November 200 by the Economist, UK. She is also the first Woman Chairman and Managing Director of a Public Sector Bank in India and the first Woman Vigilance Commissioner, Central Vigilance Commission, Government of India.\r\n\r\nMs. Ranjana Kumar has authored a book titled \"A New Beginning - The Turnaround Story of Indian Bank\" published by M/S TATA McGraw Hill Publishing Company Ltd. The book has received excellent reviews and has been rated by the Indian Society of Training and Development, an autonomous body as one of the leading books in the country for the year 2008 - 2009.\r\n\r\nShe regularly addresses top management of a cross section of public sector undertaking including important Universities, Forums abroad on various aspects concerning management, leadership and issues relating to human resource management, etc.', '/uploads/aa054f4630dfd9ff6a978914f032130a.jpg', '#', '2017-05-29 21:22:51', '2017-05-29 21:22:51'),
(7, 'Board of Directors', 'Mr. Sumit Keshan', 'Nominee Director', 'Mr. Sumit Keshan joined CDC in 2015 as Director for Portfolio Management for South Asia. He has been part of Corporates, Banking and Private Equity industry for over 24 years. He has been instrumental in completing multiple acquisition deals across geographies as part of his M&A role at Wipro, was Deputy COO of offshore centres at Deutsche Bank India, worked in turn-around situations etc. Prior to joining CDC, ha was part of a portfolio company of Blackstone Private Equity. He is a qualified Chartered Accountant.', '/uploads/40937bb8485a6d64464408a62a679368.jpg', '#', '2017-05-29 21:23:22', '2017-05-29 21:23:22'),
(8, 'Board of Directors', 'Mr. K B Ravindranath Menon', 'Non-Executive – Independent Director', 'Mr. Ravindranath is an energetic and seasoned business leader with extensive international experience spanning India, ASEAN, Greater China, Korea and the Middle East in pharmaceutical, medical device and consumer product industries. He has demonstrated success in establishing startup businesses as well as in driving growth in more developed areas. He has a proven and effective leadership style with excellent communication and interpersonal skills that have enabled him to build, lead and motivate high performing teams across diverse cultures. He has also built and managed successfully complex relationships with Joint venture business partners first in India and then in Korea. Having being involved in direct operations as well as in strategic roles overseeing different business, Mr. Ravindranath brings in a breadth of perspective to his role.\r\n\r\nMr. Ravindranath spent over 21 years at Allergan Inc. and has built very successful businesses in Ophthalmology, Aesthetics, and Neuroscience fields. In his last role with Allergan, He was Vice President and Managing Director (India and South East Asia) based in the Asia Pacific (APAC) region office at Singapore. Additionally, he served as a Director on the boards of a number of Allergan entities in the region. He established India and SEA as the leading growth driver for Allergan in the APAC region (over 20% CAGR in sales and 23% CAGR in pre-tax). With Allergan, Mr. Ravindranath has worked in a number of roles covering general management and also leading the region’s marketing efforts in ophthalmology. He played a key role in driving improvements in the ophthalmology franchises across the region with significant market share gains. Joining Allergan in Dubai in 1993, Mr. Ravindranath worked on the India project while in Dubai, returning to Bangalore in 1996 as Allergan India’s first Managing Director.', '/uploads/b58d5122506be25a723b434a5188d222.jpg', '#', '2017-05-29 21:23:50', '2017-05-29 21:23:50');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `long_description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `media_press_release`
--

INSERT INTO `media_press_release` (`id`, `date`, `title`, `location`, `description`, `link`, `created_at`, `updated_at`, `long_description`) VALUES
(1, '2017-11-13', 'Rainbow Hospital sets the “Guinness World Record the largest gathering of people born prematurely under one roof”', 'Hyderabad, India:', 'Hyderabad, Making impossible, possible. Rainbow Hospitals, which has been saving hundreds of kids who otherwise had little chance to survive is now the proud “Guinness World Record holder for assembling the largest gathering of people born prematurely under one roof.', '#', '2017-05-29 22:07:31', '2017-05-29 22:07:31', NULL),
(2, '2017-11-17', 'Rainbow Hospital sets the “Guinness World Record the largest gathering of people born prematurely under one roof”', 'Hyderabad, India:', 'Hyderabad, Making impossible, possible. Rainbow Hospitals, which has been saving hundreds of kids who otherwise had little chance to survive is now the proud “Guinness World Record holder for assembling the largest gathering of people born prematurely under one roof.', '#', '2017-05-29 22:09:15', '2017-05-29 22:09:15', NULL),
(3, '2017-11-18', 'Rainbow Hospital sets the “Guinness World Record the largest gathering of people born prematurely under one roof”', 'Hyderabad, India:', 'Hyderabad, Making impossible, possible. Rainbow Hospitals, which has been saving hundreds of kids who otherwise had little chance to survive is now the proud “Guinness World Record holder for assembling the largest gathering of people born prematurely under one roof.', '#', '2017-05-29 22:09:39', '2017-05-29 22:09:39', NULL),
(4, '2017-11-20', 'Rainbow Hospital sets the “Guinness World Record the largest gathering of people born prematurely under one roof”', 'Hyderabad, India:', 'Hyderabad, Making impossible, possible. Rainbow Hospitals, which has been saving hundreds of kids who otherwise had little chance to survive is now the proud “Guinness World Record holder for assembling the largest gathering of people born prematurely under one roof.', '#', '2017-05-29 22:10:32', '2017-05-29 22:10:32', NULL),
(5, '2017-11-27', 'Rainbow Hospital sets the “Guinness World Record the largest gathering of people born prematurely under one roof”', 'Hyderabad, India:', 'Hyderabad, Making impossible, possible. Rainbow Hospitals, which has been saving hundreds of kids who otherwise had little chance to survive is now the proud “Guinness World Record holder for assembling the largest gathering of people born prematurely under one roof.', '#', '2017-05-29 22:11:20', '2017-05-29 22:11:20', NULL),
(6, '2017-11-19', 'Rainbow Hospital sets the “Guinness World Record the largest gathering of people born prematurely under one roof”', 'Hyderabad, India:', 'Hyderabad, Making impossible, possible. Rainbow Hospitals, which has been saving hundreds of kids who otherwise had little chance to survive is now the proud “Guinness World Record holder for assembling the largest gathering of people born prematurely under one roof.', '#', '2017-05-29 22:11:52', '2017-05-29 22:11:52', NULL);

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
(10, 'Testimonials', '&nbsp;', '/uploads/9013b218d67048e26e17c5f4fb08dee8.jpg', 'Thank you very much parents, for providing your valuable feedback. Your positive feedback & appreciation always motivates & inspires us to work harder and give you the best treatment that your child truly deserves to come back into good health. Presented below are some of the testimonials, from the hundreds that we receive every month. Do keep them coming in!', 'testimonials', '2017-05-24 04:00:53', '2017-05-24 04:00:53'),
(12, 'Careers', 'Accolades for patient centric  approach and leadership.', '/uploads/80a2536d2ff71bd1ab9f05412bfefa27.jpg', 'At Rainbow Hospitals, we pursue excellence, innovation, dedicated patient care, cutting edge medical technologies, treatments & procedures, academic research and teaching programs with rigor. We believe that competing for awards, recognitions, merits and accolades is not just about winning, it is about understanding how well we are doing and is a direction guide for how we can do it even better. We have been recognized as one of the most advanced, super specialty tertiary care hospital for Women and Children in the country and the quality of our work is often recognized by influential organizations and media institutions. Among many things, we have won accolades for exceptional patient outcomes, dedicated patient care and patient centric approach and leadership. Here are some of the awards and recognitions Rainbow Hospitals has garnered over the years since its inception in 1999.', 'careers', '2017-05-27 02:08:58', '2017-05-29 21:27:36'),
(13, 'Why Choose Us?', 'We are a Family', '/uploads/9ad36f592aa4ad10f49e095c778ac4d8.jpg', 'As a holistic centre to care for and heal infants, children and women, we define ourselves as a community health provider with patient-centric care and value for money to all sections of society. Being dependable is the key and as people approach us with their medical needs, it becomes increasingly essential for us to cater to their trust first than to anything else. We highly identify with the needs of the patients and respond in the same vein and promptness. Perhaps this is what gives the feel of a home away from home and our patients feel like a family with us, for we reflect the same amount of', 'why-chooseus', '2017-05-29 20:31:55', '2017-05-29 20:31:55'),
(14, 'Cutting Edge Medical Solutions', 'The Pediatric Superspeciality Powerhouse', '/uploads/0cd7d53e3dbaa5a8f8f2268d2a23a61f.jpg', 'Rainbow’s Pediatric Intensive Care Unit treats more than 1000 critically ill children annually, in collaboration with various pediatric subspecialties such as Neurology, Nephrology, Hematology, Pediatric Surgery etc. and has the largest number of children managed on High Frequency Oscillatory Ventilation in the country. Pioneering minimal access pediatric surgery, today Rainbow takes the lead. Annually out of 2500 surgeries performed at Rainbow, 75% are done using laparoscopy.', 'cutting-edge-medical_solutions', '2017-05-29 20:45:12', '2017-05-29 20:52:10'),
(15, 'Board of Directors', 'Accolades for patient centric approach and leadership.', '/uploads/0c079facc355652dbca18b839fd1dc48.jpg', '&nbsp;', 'board-of-directors', '2017-05-29 21:16:07', '2017-05-29 21:16:07'),
(16, 'History', 'Taking a walk down the memory lane', '/uploads/3fd26305e47756641002f507b4d57e9f.jpg', 'Rainbow Hospitals for Women and Children today reflects a decade plus history of dedicated patient care, pioneering procedures, visionary leadership and most importantly strong community support. We would like to walk you through some of the most significant events in our 15+ years’ history of patient care & commitment to your wellness. We are constantly learning, striving towards maintaining excellence and building on our past, and are poised for continued growth and innovations in the years ahead. Here are some of our milestone achievements and sweet memories from the past and we welcome you to be a part of this journey in future!', 'history', '2017-05-29 21:26:55', '2017-05-29 21:26:55'),
(17, 'Awards & Recognitions', 'Accolades for patient centric approach and leadership.', '/uploads/946bf9b6f2bc0bcea96aa17009868349.jpg', 'At Rainbow Hospitals, we pursue excellence, innovation, dedicated patient care, cutting edge medical technologies, treatments & procedures, academic research and teaching programs with rigor. We believe that competing for awards, recognitions, merits and accolades is not just about winning, it is about understanding how well we are doing and is a direction guide for how we can do it even better. We have been recognized as one of the most advanced, super specialty tertiary care hospital for Women and Children in the country and the quality of our work is often recognized by influential organizations and media institutions. Among many things, we have won accolades for exceptional patient outcomes, dedicated patient care and patient centric approach and leadership. Here are some of the awards and recognitions Rainbow Hospitals has garnered over the years since its inception in 1999.', 'awards-and-recognitions', '2017-05-29 21:50:40', '2017-05-29 21:51:13'),
(18, 'Media', 'Get all the latest updates and connect with us on our social media at Rainbow Hospital.', '/uploads/80daec8ef07a3713cb79d472b729d991.jpg', '&nbsp;', 'media', '2017-05-29 22:05:03', '2017-05-29 22:05:03'),
(19, 'Media Contact & Policy', 'CSR Policy - Rainbow Hospitals', '/uploads/cac775497b5e7de1bf19f7c439455606.jpg', 'The Public Relations & Media Department at Rainbow Hospitals handles all media inquiries. We welcome inquiries from local, regional and national media and members of the media should call the Public Relations and Media Department if you have any of the following requests\r\n\r\nInterview with an expert spokesperson for medical news or with a doctor on healthcare topics. We are happy to connect you with some of the world’s most knowledgeable pediatric and women care doctors from across different specialties. Our experts can provide information about cutting edge medical care, healthcare trends & topics, patient stories and more.\r\nArrangement for any photography or video shoots within the hospital during any press meet or events. Please note that the Hospital Policy requires that a PR team member accompany all media personnel during their visit to Rainbow Hospital across all locations.\r\nAny information request related to a news releases, event or press release from the hospital', 'media-contact-and-policy', '2017-05-29 22:21:57', '2017-05-29 22:32:49'),
(20, 'Press Releases', 'Read all the press releases covering Rainbow Hospital.', '/uploads/4d8b60e78044541268fe261d778f0d9f.jpg', '&nbsp;', 'media-press-releases', '2017-05-29 22:47:44', '2017-05-29 22:47:44'),
(21, 'Press Releases', 'Rainbow Hospital for Women and Children', '/uploads/632eff2db2f4797599424ff7960305f1.jpg', '&nbsp;', 'media-press-releases-details', '2017-05-29 22:51:56', '2017-05-29 22:51:56'),
(22, 'News', 'Read all the News covering Rainbow Hospital.', '/uploads/73421856ef47c147a85e6f3c52f78155.jpg', '&nbsp;', 'news', '2017-05-29 23:10:22', '2017-05-29 23:10:22'),
(23, 'Events', 'Know about all the events taking place at Rainbow Hospital.', '/uploads/a03955804b0ecb5567ab3f55c37b9ed7.jpg', '&nbsp;', 'events', '2017-05-29 23:20:45', '2017-05-29 23:20:45'),
(24, 'Quality & Accreditation', 'Lorem Ipsum is simply dummy text', '/uploads/ba8083462b9812df3102682155c5abfb.jpg', 'Welcome to the Department of Quality at Rainbow Hospitals. Department of Quality is spearheaded by a Core Committee comprising of Dr. Farhan Shaikh (Consultant Pediatric Intensivist, NABH Accreditation Coordinator), Dr. Faisal B Nahdi (Consultant Pediatrician), Mr. Natraj Rasa (Manager Quality and Training) and Ms. Karuna (Assistant Manager Quality) as its members and Ms. Sherly (Nursing Manager), as its associate member.', 'quality-accreditation', '2017-05-29 23:45:39', '2017-05-29 23:45:39'),
(25, 'Rainbow Channel', 'Lorem Ipsum is simply dummy text', '/uploads/094eb44781953d4ad2039bf2c4d0e878.jpg', '&nbsp;', 'channel', '2017-05-30 00:56:46', '2017-05-30 00:56:46'),
(26, 'Join hands with us', '&nbsp;', '/uploads/2b06ea52afa684d6225404cfaec281f9.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'careers-join-withus', '2017-05-30 01:36:45', '2017-05-30 01:36:45'),
(27, 'GENERAL PEDIATRICS', 'One of the largest departments', '/uploads/ec8a21954d9df600c706bc4e327e2aec.jpg', 'The Department of General Pediatrics is one of the largest departments in the Hospital doctors of the department are involved with clinical care, teaching, administration and quality management.', 'ourspecialities_generalpediatrics', '2017-05-30 20:49:58', '2017-05-30 20:49:58'),
(28, 'Book An Appointment', 'Book an appointment with your doctor who is the perfect match for your medical needs.', '/uploads/3daf9c6d8e48c200e40d583291846959.jpg', 'Use the tool below to select your doctor , timing, date and place.', 'book-an-appointment', '2017-05-30 22:35:58', '2017-05-30 22:35:58'),
(29, 'Dr. Farhan Shaikh', 'MD, DNB (Peds)', '/uploads/7dcbea4cf2c21274b2742eaff06c8330.jpg', 'Fellowship Pediatric Critical Care, NABH Assessor for Quality in Health Care, In-charge\r\nPediatric Intensive Care, Chairperson Quality and Accreditation', 'childcare-doctors-detailpage', '2017-05-31 21:13:21', '2017-05-31 21:13:21'),
(30, 'News', 'Know about all the News taking place at Rainbow Hospital.', '/uploads/98cf9b09e7c3e98d46e252e8936cf872.jpg', '&nbsp;', 'news-details', '2017-06-01 02:48:02', '2017-06-01 02:48:02'),
(31, 'Events', 'Know about all the events taking place at Rainbow Hospital.', '/uploads/d8e47f4e2c129fb53bc4c05a75472996.jpg', '&nbsp;', 'events-details', '2017-06-01 02:52:11', '2017-06-01 02:52:11');

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
-- Table structure for table `testimonial_details`
--

DROP TABLE IF EXISTS `testimonial_details`;
CREATE TABLE `testimonial_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `testimonial_details`
--

INSERT INTO `testimonial_details` (`id`, `icon`, `name`, `designation`, `image`, `description`, `link`, `type`, `created_at`, `updated_at`) VALUES
(1, '/uploads/4f15126a9161bf9d31918c55660187e5.jpg', 'Dr. Surekha', 'Pediatrician', '/uploads/20dcfce0ece825e14a3a085eb71bb13b.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.', '#', 'video', '2017-05-31 20:53:31', '2017-05-31 20:53:31'),
(2, '/uploads/9981386c6bcb6cf73e345258d2377298.jpg', 'Mrs. Vidhya Nirkar', 'Pediatrician', '/uploads/60dc09b9d3ba34a692983e3790ed9162.jpg', 'My heartfelt appreciation to all the doctors and nurses who have done the best to cure my son’s ailment. I am extremely happy.', '#', 'Text', '2017-05-31 20:54:38', '2017-05-31 20:54:38');

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
(1, 'Emergency', 'Casualty dept for emergency services 24/7', '2017-05-24 00:55:17', '2017-05-24 00:55:17'),
(2, 'Our Vision', 'Our aim at Rainbow Hospitals is to provide high standards of care for the mother, fetus, newborn and children so that none of them is deprived of a tertiary care facility.', '2017-05-29 23:48:08', '2017-05-29 23:48:08'),
(3, 'Our Mission', 'The measure of our success is in the number of smiling faces. Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2017-05-29 23:48:21', '2017-05-29 23:48:21'),
(4, 'Quality & Accreditation - Our Mission', 'As the saying goes “Quality is a journey not a destination, Rainbow Hospitals’ quality journey has been quite eventful. It is the first corporate children’s hospital in the country to get accredited to National Accreditation Board for Hospitals and Healthcare providers (NABH) ISO 9001:2008  certified organization.\r\nRainbow Hospitals strive for continuous quality improvement, focusing mainly on adherence to policies, procedures and protocols, infection control practices, training, auditing, quality indicators. Subsequently takes corrective and preventive actions on the findings.\r\nDuring this journey we have brought about many innovations like capturing daily quality indicators to prevent unnoticed adverse events. By empowering people we have been successful in involving people.\r\nClinical procedures on manikins have been video-recorded to be used later for training keeping in mind the multicultural environment of the hospital. Video based learning gave better understanding to people who had barriers in understanding languages other than their native language.\r\nAn exclusive medication nurse accompanied by patient nurse has been appointed on every floor and ward to minimize human errors while administering medications. This medication nurse is a well experienced and proven nurse in the field of nursing and medication administration.\r\nTo ensure patient safety we have designed a checklist of 32 indicators for every patient. The checklist ensures that all the safety parameters for the patient are being adhered to.\r\nMany surveillance activities (Ambient and Indoor air quality, Water quality, Surfaces etc) in the hospital are conducted periodically as per standards to ensure none of the person visiting the hospital acquires hospital acquired infections.', '2017-05-29 23:53:43', '2017-05-29 23:53:43');

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
-- Indexes for table `centre_panel`
--
ALTER TABLE `centre_panel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors_desk`
--
ALTER TABLE `doctors_desk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors_desk_questions`
--
ALTER TABLE `doctors_desk_questions`
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
-- Indexes for table `history_details`
--
ALTER TABLE `history_details`
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
-- Indexes for table `testimonial_details`
--
ALTER TABLE `testimonial_details`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `aboutus`
--
ALTER TABLE `aboutus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `awards_history`
--
ALTER TABLE `awards_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `boardofdirectors`
--
ALTER TABLE `boardofdirectors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `brief_facilities`
--
ALTER TABLE `brief_facilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
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
-- AUTO_INCREMENT for table `centre_panel`
--
ALTER TABLE `centre_panel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `doctors_desk`
--
ALTER TABLE `doctors_desk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `doctors_desk_questions`
--
ALTER TABLE `doctors_desk_questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `doctor_hospitals`
--
ALTER TABLE `doctor_hospitals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `healthcare_service`
--
ALTER TABLE `healthcare_service`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `history_details`
--
ALTER TABLE `history_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `home_events`
--
ALTER TABLE `home_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `media_press_release`
--
ALTER TABLE `media_press_release`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
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
-- AUTO_INCREMENT for table `testimonial_details`
--
ALTER TABLE `testimonial_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `what_we_do_details`
--
ALTER TABLE `what_we_do_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
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
