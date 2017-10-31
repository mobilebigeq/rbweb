-- phpMyAdmin SQL Dump
-- version 4.5.3.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 24, 2017 at 12:26 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rh_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

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
-- Table structure for table `boardofdirectors`
--

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

CREATE TABLE `brief_facilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `speciality_masters_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `page` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

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
(2, 'Consultant Pediatric Intensivist', 'MD/DCh', '0 year to 2yrs', 'Rainbow Children\'s Hospital & BirthRight by Rainbow, Banjara Hills, Hyderabad', '<ul>\r\n<li style="box-sizing: border-box; float: left; width: 1258.796875px; margin: 4px 0px; list-style: none; background-image: url(\'../../assets/images/dot.png\'); padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px; background-position: left 8px; background-repeat: no-repeat no-repeat;">Performs rounds in the PICU seeing patients with the departmental team which includes residents; guiding them and teaching them simultaneously.</li>\r\n<li style="box-sizing: border-box; float: left; width: 1258.796875px; margin: 4px 0px; list-style: none; background-image: url(\'../../assets/images/dot.png\'); padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px; background-position: left 8px; background-repeat: no-repeat no-repeat;">Performs various procedures necessary for care of the patients in PICU (e.g. Intubation, arterial or Central venous line insertion, ICD placement etc)</li>\r\n<li style="box-sizing: border-box; float: left; width: 1258.796875px; margin: 4px 0px; list-style: none; background-image: url(\'../../assets/images/dot.png\'); padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px; background-position: left 8px; background-repeat: no-repeat no-repeat;">Providing patient care in using multidisciplinary approach and involves other subspecialties (e.g. Neurology, Nephrology etc) whenever required.</li>\r\n<li style="box-sizing: border-box; float: left; width: 1258.796875px; margin: 4px 0px; list-style: none; background-image: url(\'../../assets/images/dot.png\'); padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px; background-position: left 8px; background-repeat: no-repeat no-repeat;">Carries out counseling of patients attendants maintaining punctuality and professionalism.</li>\r\n<li style="box-sizing: border-box; float: left; width: 1258.796875px; margin: 4px 0px; list-style: none; background-image: url(\'../../assets/images/dot.png\'); padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px; background-position: left 8px; background-repeat: no-repeat no-repeat;">Liaises with the referring doctors by updating them about patient&rsquo;s status and discussing ongoing management.</li>\r\n<li style="box-sizing: border-box; float: left; width: 1258.796875px; margin: 4px 0px; list-style: none; background-image: url(\'../../assets/images/dot.png\'); padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px; background-position: left 8px; background-repeat: no-repeat no-repeat;">Performs in-patients and out-patient duties with professionalism and punctuality.</li>\r\n<li style="box-sizing: border-box; float: left; width: 1258.796875px; margin: 4px 0px; list-style: none; background-image: url(\'../../assets/images/dot.png\'); padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px; background-position: left 8px; background-repeat: no-repeat no-repeat;">Participates in preparation and execution of on-call schedule for the PICU.</li>\r\n<li style="box-sizing: border-box; float: left; width: 1258.796875px; margin: 4px 0px; list-style: none; background-image: url(\'../../assets/images/dot.png\'); padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px; background-position: left 8px; background-repeat: no-repeat no-repeat;">Plays a major role in coordinating long and short distance Transport of sick patients.</li>\r\n<li style="box-sizing: border-box; float: left; width: 1258.796875px; margin: 4px 0px; list-style: none; background-image: url(\'../../assets/images/dot.png\'); padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px; background-position: left 8px; background-repeat: no-repeat no-repeat;">Plays a major role in Teaching the PICU Fellowship students and DNB students including supervising them during procedures, helping in their dissertation work, researching and auditing.</li>\r\n<li style="box-sizing: border-box; float: left; width: 1258.796875px; margin: 4px 0px; list-style: none; background-image: url(\'../../assets/images/dot.png\'); padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px; background-position: left 8px; background-repeat: no-repeat no-repeat;">Plays a major role in training and education of PICU nurses.</li>\r\n<li style="box-sizing: border-box; float: left; width: 1258.796875px; margin: 4px 0px; list-style: none; background-image: url(\'../../assets/images/dot.png\'); padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px; background-position: left 8px; background-repeat: no-repeat no-repeat;">Contributes in departmental promotional activities by participating in various CMEs, Workshops and Conferences.</li>\r\n<li style="box-sizing: border-box; float: left; width: 1258.796875px; margin: 4px 0px; list-style: none; background-image: url(\'../../assets/images/dot.png\'); padding: 0px 0px 0px 20px; font-family: dinrg; font-size: 17px; background-position: left 8px; background-repeat: no-repeat no-repeat;">Involves in important hospital-wide activities by participating in Infection Control activities, Medical and clinical audits, patient safety and Quality related activities.</li>\r\n</ul>', '2017-05-18 07:24:16', '2017-05-18 07:24:16');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

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

CREATE TABLE `centers` (
  `id` int(10) UNSIGNED NOT NULL,
  `center_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

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
(3, 'Dr. Nerurkar', 'MBBS', 'CMO,  Res. Doctor', 'Some information about the doctor', '/uploads/711405152b54f530acf8ff005c29d08d.jpg', '2017-05-17 14:35:38', '2017-05-17 14:35:38'),
(4, 'Dr. Farhan Shaikh', 'MBBS, MD', 'CMO, LTTGM Hospital', 'Some thing good about the Dr.', '/uploads/999dfd054d252ae7e5a1d11f7e8b3388.jpg', '2017-05-18 03:18:20', '2017-05-18 03:18:20');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_hospitals`
--

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
(1, 3, 1, NULL, NULL),
(2, 3, 2, NULL, NULL),
(3, 3, 4, NULL, NULL),
(4, 4, 2, NULL, NULL),
(5, 4, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `healthcare_service`
--

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

-- --------------------------------------------------------

--
-- Table structure for table `home_events`
--

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
(4, 'BYL Nair', 'Mumbai Central', '2017-05-17 14:18:58', '2017-05-17 14:18:58');

-- --------------------------------------------------------

--
-- Table structure for table `left_highlights`
--

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
-- Table structure for table `migrations`
--

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

-- --------------------------------------------------------

--
-- Table structure for table `page_description`
--

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
(1, 'Hello World', 'Subtile is subtle', '/hello.png', 'Some thing just like this.', 'Home', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rainbow_guide`
--

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
(1, 'contact_email', 'Contact form email address', 'The email address that all emails from the contact form will go to.', 'admin@updivision.com', '{"name":"value","label":"Value","type":"email"}', 1, NULL, NULL),
(2, 'contact_cc', 'Contact form CC field', 'Email adresses separated by comma, to be included as CC in the email sent by the contact form.', 'nikhil@local.dev', '{"name":"value","label":"Value","type":"email"}', 1, NULL, '2017-04-16 08:05:13'),
(3, 'contact_bcc', 'Contact form BCC field', 'Email adresses separated by comma, to be included as BCC in the email sent by the contact form.', NULL, '{"name":"value","label":"Value","type":"email"}', 1, NULL, '2017-04-16 08:05:25'),
(4, 'motto', 'Motto', 'Website motto', 'this is the value', '{"name":"value","label":"Value", "title":"Motto value" ,"type":"textarea"}', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `specialities`
--

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
(4, 'Fertility Care', '2017-05-19 07:22:21', '2017-05-19 07:22:21');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

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
(1, 'Nikhil', 'nikhil@localhost.dev', '$2y$10$SffDwRN8nptc9t3WahfImOOdtWm9rYt3tFMwFLEWyjpe7DstnFLKW', 'x0JsN70ov2OyJfOk0lmAgCvtTJGiFRN7iMmrphOdJgsUGqkAdO63Wg0KkBTq', '2017-04-13 07:33:32', '2017-04-13 07:33:32');

-- --------------------------------------------------------

--
-- Table structure for table `what_we_do_details`
--

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
-- AUTO_INCREMENT for table `boardofdirectors`
--
ALTER TABLE `boardofdirectors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `brief_facilities`
--
ALTER TABLE `brief_facilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `doctor_hospitals`
--
ALTER TABLE `doctor_hospitals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `healthcare_service`
--
ALTER TABLE `healthcare_service`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `left_highlights`
--
ALTER TABLE `left_highlights`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `page_description`
--
ALTER TABLE `page_description`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
