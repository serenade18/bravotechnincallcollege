-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 31, 2025 at 12:25 PM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `university_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

DROP TABLE IF EXISTS `about_us`;
CREATE TABLE IF NOT EXISTS `about_us` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `language_id` int UNSIGNED NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `features` longtext COLLATE utf8mb4_unicode_ci,
  `attach` text COLLATE utf8mb4_unicode_ci,
  `video_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mission_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mission_desc` text COLLATE utf8mb4_unicode_ci,
  `mission_icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mission_image` text COLLATE utf8mb4_unicode_ci,
  `vision_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vision_desc` text COLLATE utf8mb4_unicode_ci,
  `vision_icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vision_image` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `language_id`, `label`, `title`, `short_desc`, `description`, `features`, `attach`, `video_id`, `button_text`, `mission_title`, `mission_desc`, `mission_icon`, `mission_image`, `vision_title`, `vision_desc`, `vision_icon`, `vision_image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'About Our University', 'A Few Words About the University', NULL, '<p>Our community is being called to reimagine the future. As the only university where a renowned design school comes together with premier colleges, we are making learning more relevant and transformational.<br /><br />We are proud to offer top ranige in employment services such and asser payroll and benefits administrato managemen and asistance with global business range ployment employer readings from religious texts or literature are also commonly inc compliance.</p>', 'null', 'about_img_05_1692915465.png', NULL, NULL, 'Our Mission', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</p>', NULL, NULL, 'Our Vision', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</p>', NULL, NULL, 1, '2023-08-24 16:17:46', '2023-08-24 16:17:46');

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

DROP TABLE IF EXISTS `applications`;
CREATE TABLE IF NOT EXISTS `applications` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `registration_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `batch_id` int UNSIGNED DEFAULT NULL,
  `program_id` int UNSIGNED DEFAULT NULL,
  `apply_date` date DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_photo` text COLLATE utf8mb4_unicode_ci,
  `mother_photo` text COLLATE utf8mb4_unicode_ci,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_province` int UNSIGNED DEFAULT NULL,
  `present_district` int UNSIGNED DEFAULT NULL,
  `present_village` text COLLATE utf8mb4_unicode_ci,
  `present_address` text COLLATE utf8mb4_unicode_ci,
  `permanent_province` int UNSIGNED DEFAULT NULL,
  `permanent_district` int UNSIGNED DEFAULT NULL,
  `permanent_village` text COLLATE utf8mb4_unicode_ci,
  `permanent_address` text COLLATE utf8mb4_unicode_ci,
  `gender` int NOT NULL COMMENT '1 Male, 2 Female & 3 Other',
  `dob` date NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caste` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_tongue` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` int DEFAULT NULL,
  `blood_group` int DEFAULT NULL,
  `nationality` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_name` text COLLATE utf8mb4_unicode_ci,
  `school_exam_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_graduation_field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_graduation_year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_graduation_point` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collage_name` text COLLATE utf8mb4_unicode_ci,
  `collage_exam_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collage_graduation_field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collage_graduation_year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collage_graduation_point` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci,
  `signature` text COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '1' COMMENT '0 Rejected, 1 Pending, 2 Approve',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_transcript` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_certificate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collage_transcript` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collage_certificate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fee_amount` double(10,2) DEFAULT NULL,
  `pay_status` tinyint NOT NULL DEFAULT '0' COMMENT '0 Unpaid, 1 Paid, 2 Cancel',
  `payment_method` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `applications_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `registration_no`, `batch_id`, `program_id`, `apply_date`, `first_name`, `last_name`, `father_name`, `mother_name`, `father_occupation`, `mother_occupation`, `father_photo`, `mother_photo`, `country`, `present_province`, `present_district`, `present_village`, `present_address`, `permanent_province`, `permanent_district`, `permanent_village`, `permanent_address`, `gender`, `dob`, `email`, `phone`, `emergency_phone`, `religion`, `caste`, `mother_tongue`, `marital_status`, `blood_group`, `nationality`, `national_id`, `passport_no`, `school_name`, `school_exam_id`, `school_graduation_field`, `school_graduation_year`, `school_graduation_point`, `collage_name`, `collage_exam_id`, `collage_graduation_field`, `collage_graduation_year`, `collage_graduation_point`, `photo`, `signature`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `school_transcript`, `school_certificate`, `collage_transcript`, `collage_certificate`, `fee_amount`, `pay_status`, `payment_method`) VALUES
(1, '10000001', NULL, 4, '2023-02-13', 'Judah', 'Bryant', 'Ira Preston', 'Reuben Cooper', 'Explicabo Reiciendi', 'Earum aliquid vel au', NULL, NULL, NULL, 2, 7, NULL, 'Hic rem consequat A', 4, 12, NULL, 'Corrupti sapiente l', 2, '1982-02-08', 'haca@mailinator.com', '+1 (366) 959-1883', NULL, NULL, NULL, NULL, 1, 5, NULL, '21879584857', '878454545454', 'Penelope Mack', '5487854', NULL, '2004', '99.3', 'Genevieve Hammond', '6787877', NULL, '2006', '78.8', 'staff1_1664732856_1676308260.jpg', 'book_covers.jpg_1664732856_1676308260.jpg', 1, 1, NULL, '2023-02-13 11:11:00', '2023-02-13 11:11:00', NULL, NULL, NULL, NULL, NULL, 0, NULL),
(2, '10000002', NULL, 2, '2023-02-13', 'Jerome', 'Sellers', 'Laurel Evans', 'Carlos Hess', 'Id explicabo Repel', 'Adipisicing reiciend', NULL, NULL, NULL, 3, 11, NULL, 'Eius duis debitis no', 2, 7, NULL, 'Quasi magna id dolo', 1, '1998-01-21', 'loxut@mailinator.com', '+1 (431) 155-5046', NULL, NULL, NULL, NULL, 2, 4, NULL, '878654548', '258897878', 'Dorian Cortez', '356897', NULL, '2009', '68.3', 'Tobias Love', '899564', NULL, '2010', '67.8', 'staff2_1664711842_1676308347.jpg', 'book_cover2.jpg_1664711842_1676308347.jpg', 0, 1, 1, '2023-02-13 11:12:27', '2023-02-13 11:14:39', NULL, NULL, NULL, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `application_settings`
--

DROP TABLE IF EXISTS `application_settings`;
CREATE TABLE IF NOT EXISTS `application_settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `header_left` text COLLATE utf8mb4_unicode_ci,
  `header_center` text COLLATE utf8mb4_unicode_ci,
  `header_right` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `footer_left` text COLLATE utf8mb4_unicode_ci,
  `footer_center` text COLLATE utf8mb4_unicode_ci,
  `footer_right` text COLLATE utf8mb4_unicode_ci,
  `logo_left` text COLLATE utf8mb4_unicode_ci,
  `logo_right` text COLLATE utf8mb4_unicode_ci,
  `background` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fee_amount` double(10,2) DEFAULT NULL,
  `pay_online` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 No, 1 Yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `application_settings_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `application_settings`
--

INSERT INTO `application_settings` (`id`, `slug`, `title`, `header_left`, `header_center`, `header_right`, `body`, `footer_left`, `footer_center`, `footer_right`, `logo_left`, `logo_right`, `background`, `status`, `created_at`, `updated_at`, `fee_amount`, `pay_online`) VALUES
(1, 'admission', 'Apply to admission on our university', NULL, NULL, NULL, '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\',</p>', NULL, NULL, NULL, 'logo_1664613886_1676307947.jpg', 'logo_1664613886_1676307947.jpg', NULL, 1, '2023-02-13 11:05:47', '2023-02-13 11:06:14', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

DROP TABLE IF EXISTS `assignments`;
CREATE TABLE IF NOT EXISTS `assignments` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `faculty_id` int UNSIGNED DEFAULT NULL,
  `program_id` int UNSIGNED DEFAULT NULL,
  `session_id` int UNSIGNED DEFAULT NULL,
  `semester_id` int UNSIGNED DEFAULT NULL,
  `section_id` int UNSIGNED DEFAULT NULL,
  `subject_id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `total_marks` decimal(5,2) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `attach` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `assign_by` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `assignments_subject_id_foreign` (`subject_id`),
  KEY `assignments_assign_by_foreign` (`assign_by`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`id`, `faculty_id`, `program_id`, `session_id`, `semester_id`, `section_id`, `subject_id`, `title`, `description`, `total_marks`, `start_date`, `end_date`, `attach`, `status`, `assign_by`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 3, 1, 1, 6, 'Theory of relativity', '<p>The theory of relativity usually encompasses two interrelated theories by Albert Einstein: special relativity and general relativity, proposed and published in 1905 and 1915, respectively. Special relativity applies to all physical phenomena in the absence of gravity</p>', 10.00, '2022-10-03', '2022-10-03', 'book-cover2_1664817002.jpg', 1, 1, '2022-10-03 11:10:02', '2022-10-03 12:57:10'),
(2, 2, 2, 4, 1, 1, 5, 'Measurement and Height', '<p>To convert your height to its metric equivalent, start by calculating your height in inches only. A person who\'s 5 feet, 6 inches tall is 66 inches. One inch equals 2.54 centimeters (cm). So, to make the conversion, simply</p>', 10.00, '2022-10-03', '2022-10-21', 'book-covers_1664817184.jpg', 1, 1, '2022-10-03 11:13:04', '2022-10-03 12:56:58'),
(3, 2, 3, 4, 0, 0, 3, 'Rules of Article', '<p>Rule 1 &ndash; The very basic rule of the article says that the article \'the\' is used before a singular or plural noun, which is specific. It indicates a particular ...</p>', 10.00, '2022-10-04', '2022-10-08', NULL, 1, 1, '2022-10-04 06:53:42', '2022-10-04 06:55:45'),
(5, 2, 3, 4, 0, 0, 3, 'Rules of voice change', '<p>Active and Passive Voice Rules in English Grammar, Examples and Exercise, General Rules. ... The Rules to Change the Sentences from Active to Passive Form</p>', 10.00, '2022-10-04', '2022-10-13', NULL, 1, 1, '2022-10-04 07:05:34', '2022-10-04 07:24:34');

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

DROP TABLE IF EXISTS `batches`;
CREATE TABLE IF NOT EXISTS `batches` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `batches_title_unique` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `batches`
--

INSERT INTO `batches` (`id`, `title`, `start_date`, `status`, `created_at`, `updated_at`) VALUES
(1, '1st Batch', '2018-10-01', 1, '2022-09-30 13:02:48', '2022-09-30 13:02:48'),
(2, '2nd Batch', '2019-10-01', 1, '2022-09-30 13:03:01', '2022-09-30 13:03:01'),
(3, '3rd Batch', '2020-10-01', 1, '2022-09-30 13:03:23', '2022-09-30 13:03:23'),
(4, '4th Batch', '2021-10-01', 1, '2022-09-30 13:03:38', '2022-09-30 13:03:38'),
(5, '5th Batch', '2022-10-01', 1, '2022-09-30 13:03:56', '2022-09-30 13:03:56');

-- --------------------------------------------------------

--
-- Table structure for table `batch_program`
--

DROP TABLE IF EXISTS `batch_program`;
CREATE TABLE IF NOT EXISTS `batch_program` (
  `batch_id` int UNSIGNED NOT NULL,
  `program_id` int UNSIGNED NOT NULL,
  KEY `batch_program_batch_id_foreign` (`batch_id`),
  KEY `batch_program_program_id_foreign` (`program_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `batch_program`
--

INSERT INTO `batch_program` (`batch_id`, `program_id`) VALUES
(1, 2),
(1, 3),
(1, 6),
(1, 7),
(2, 2),
(2, 3),
(2, 5),
(2, 4),
(2, 7),
(3, 2),
(3, 3),
(3, 4),
(3, 7),
(3, 1),
(4, 2),
(4, 3),
(4, 5),
(4, 6),
(4, 4),
(4, 7),
(4, 1),
(5, 2),
(5, 3),
(5, 5),
(5, 6),
(5, 4),
(5, 7),
(5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isbn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publisher` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edition` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `section` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `column` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `row` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `attach` text COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '1' COMMENT '0 Lost, 1 Available, 2 Damage',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `books_isbn_unique` (`isbn`),
  UNIQUE KEY `books_code_unique` (`code`),
  KEY `books_category_id_foreign` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `category_id`, `title`, `isbn`, `code`, `author`, `publisher`, `edition`, `publish_year`, `language`, `price`, `quantity`, `section`, `column`, `row`, `description`, `note`, `attach`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 3, 'Corporis laboriosam', '978-3-16-148410-0', NULL, 'Devid', 'Iure quis est imped', 'Enim id voluptas del', '1970', 'English', 36.00, 132, '17', '5', '2', 'Dolor qui veritatis', 'Consectetur molestia', NULL, 1, 1, 1, '2022-10-01 12:38:52', '2022-10-27 13:26:56'),
(2, 3, 'Voluptatibus volupta', '1-56619-909-3', NULL, 'Jeff', 'Harum ad placeat es', 'Repellendus Et recu', '1978', 'English', 10.00, 702, '47', '8', '18', 'Et eiusmod animi si', 'Assumenda pariatur', 'book-cover2_1664653683.jpg', 1, 1, 1, '2022-10-01 12:41:00', '2022-10-27 13:26:39'),
(3, 1, 'Quod sed sed in in e', '978-3-16-146347-5', NULL, 'Alex', 'Tempora earum adipis', 'Eiusmod enim consequ', '1987', 'English', 14.00, 385, '7', '78', '52', 'Fuga Optio ea offi', 'In consectetur ea om', NULL, 1, 1, 1, '2022-10-01 12:45:56', '2022-10-27 13:26:28'),
(4, 4, 'Et qui aut nisi do a', '978-3-16-785410-9', NULL, 'Arman', 'Assumenda architecto', 'Ea aute excepturi eu', '1981', 'English', 10.00, 349, '78', '01', '14', 'Vel nisi ut et rem q', 'Voluptas ea suscipit', NULL, 1, 1, 1, '2022-10-01 13:07:42', '2022-10-27 13:26:11'),
(5, 2, 'A Story of Your Childhood', '1-566147-548-7', NULL, 'Saif', 'Rerum ab eum esse s', 'Dicta ut quaerat eaq', '2000', 'English', 17.00, 435, '17', '77', '47', 'Unde voluptatem ut u', 'Sequi veniam non se', NULL, 1, 1, 1, '2022-10-01 13:10:51', '2022-10-27 13:26:01'),
(6, 1, 'Et sequi sit obcaeca', '1-254147-457-9', NULL, 'Arman', 'Itaque ut in odio es', 'Eu cupidatat rem ips', '1982', 'English', 45.00, 758, '77', '14', '23', 'Quae irure aut conse', 'Numquam mollit aliqu', 'book-covers_1664653539.jpg', 1, 1, 1, '2022-10-01 13:45:39', '2022-10-27 13:25:51');

-- --------------------------------------------------------

--
-- Table structure for table `book_categories`
--

DROP TABLE IF EXISTS `book_categories`;
CREATE TABLE IF NOT EXISTS `book_categories` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `book_categories_title_unique` (`title`),
  UNIQUE KEY `book_categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_categories`
--

INSERT INTO `book_categories` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Fiction Books', 'fiction-books', NULL, 1, '2022-09-30 14:13:20', '2022-09-30 14:13:20'),
(2, 'Crime & Mystery', 'crime-mystery', NULL, 1, '2022-09-30 14:13:35', '2022-09-30 14:13:35'),
(3, 'History', 'history', NULL, 1, '2022-09-30 14:13:50', '2022-09-30 14:13:50'),
(4, 'Magazine', 'magazine', NULL, 1, '2022-09-30 14:14:12', '2022-09-30 14:14:12');

-- --------------------------------------------------------

--
-- Table structure for table `book_requests`
--

DROP TABLE IF EXISTS `book_requests`;
CREATE TABLE IF NOT EXISTS `book_requests` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isbn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publisher` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edition` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `request_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `attach` text COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '1' COMMENT '0 Rejected, 1 Pending, 2 Progress, 3 Approved',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `book_requests_category_id_foreign` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_requests`
--

INSERT INTO `book_requests` (`id`, `category_id`, `title`, `isbn`, `code`, `author`, `publisher`, `edition`, `publish_year`, `language`, `price`, `quantity`, `request_by`, `phone`, `email`, `description`, `note`, `attach`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'Repudiandae sunt qu', NULL, NULL, 'Nostrud provident e', 'Voluptatum sit exped', 'Quia consectetur est', '1990', 'Quas et impedit vol', NULL, 421, 'Rafael Britt', '+1 (695) 757-2712', 'nunanavy@mailinator.com', 'Asperiores elit ill', 'Reprehenderit illum', NULL, 1, 1, NULL, '2023-02-13 12:11:02', '2023-02-13 12:11:02'),
(2, 2, 'Quos asperiores ut a', NULL, NULL, 'Voluptate quia dolor', 'Doloribus reprehende', 'Anim eius ratione qu', '2010', 'Dolor tenetur exerci', NULL, 324, 'Caldwell Stanton', '+1 (877) 683-7177', 'norigaruzy@mailinator.com', 'Harum dicta sint et', 'Tempor doloremque do', NULL, 1, 1, NULL, '2023-02-13 12:11:18', '2023-02-13 12:11:18');

-- --------------------------------------------------------

--
-- Table structure for table `call_to_actions`
--

DROP TABLE IF EXISTS `call_to_actions`;
CREATE TABLE IF NOT EXISTS `call_to_actions` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `language_id` int UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `bg_image` text COLLATE utf8mb4_unicode_ci,
  `button_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `call_to_actions`
--

INSERT INTO `call_to_actions` (`id`, `language_id`, `title`, `sub_title`, `image`, `bg_image`, `button_text`, `button_link`, `video_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Scholarship Programs', 'At HiTech University, we prepare you to launch your career by providing a supportive, creative, and professional environment from which to learn practical skills and build a network of industry contacts.', NULL, NULL, 'Hi-Tech Parks', 'https://www.hitechparks.com/', NULL, 1, '2023-08-24 16:01:48', '2023-08-24 16:02:41');

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

DROP TABLE IF EXISTS `certificates`;
CREATE TABLE IF NOT EXISTS `certificates` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `template_id` int UNSIGNED NOT NULL,
  `student_id` bigint UNSIGNED NOT NULL,
  `serial_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `starting_year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ending_year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credits` decimal(5,2) NOT NULL,
  `point` decimal(5,2) NOT NULL,
  `barcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `certificates_template_id_foreign` (`template_id`),
  KEY `certificates_student_id_foreign` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `template_id`, `student_id`, `serial_no`, `date`, `starting_year`, `ending_year`, `credits`, `point`, `barcode`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '100001', '2022-10-02', '2022-01-01', '2022-12-01', 10.00, 3.80, '100001', 1, '2022-10-02 16:12:54', '2022-10-04 11:06:27'),
(2, 1, 3, '100002', '2022-10-04', '2022-01-01', '2022-12-01', 10.00, 4.50, '100002', 1, '2022-10-04 11:04:35', '2022-10-04 11:05:33'),
(3, 2, 1, '100003', '2024-10-02', '2022-01-01', '2022-12-01', 10.00, 4.50, '100003', 1, '2024-10-02 08:42:35', '2024-10-02 08:42:35');

-- --------------------------------------------------------

--
-- Table structure for table `certificate_templates`
--

DROP TABLE IF EXISTS `certificate_templates`;
CREATE TABLE IF NOT EXISTS `certificate_templates` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_left` text COLLATE utf8mb4_unicode_ci,
  `header_center` text COLLATE utf8mb4_unicode_ci,
  `header_right` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `footer_left` text COLLATE utf8mb4_unicode_ci,
  `footer_center` text COLLATE utf8mb4_unicode_ci,
  `footer_right` text COLLATE utf8mb4_unicode_ci,
  `logo_left` text COLLATE utf8mb4_unicode_ci,
  `logo_right` text COLLATE utf8mb4_unicode_ci,
  `background` text COLLATE utf8mb4_unicode_ci,
  `width` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'auto',
  `height` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'auto',
  `student_photo` tinyint(1) NOT NULL DEFAULT '0',
  `barcode` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `certificate_templates_title_unique` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificate_templates`
--

INSERT INTO `certificate_templates` (`id`, `title`, `header_left`, `header_center`, `header_right`, `body`, `footer_left`, `footer_center`, `footer_right`, `logo_left`, `logo_right`, `background`, `width`, `height`, `student_photo`, `barcode`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Provisional Certificate', NULL, NULL, NULL, 'This is to certify that  [first_name] [last_name] son / daughter of  [father_name] and [mother_name] passed [program] degree under [faculty] examination of the university held in [ending_year]. And that he/she was placed [cgpa] with grade of [grade]. \r\n\r\nHe/She completed the course of  [credits] credits and all of the requirements for the award of the Bachelor\'s degree.', 'Controller', 'Director', 'Register', 'logo_1664614758.jpg', NULL, 'background-border_1664614748.png', '800px', 'auto', 1, 1, 1, '2022-10-01 02:56:19', '2022-10-02 16:11:17'),
(2, 'Transfer Certificate', NULL, NULL, NULL, 'This is to certify that  [first_name] [last_name] son / daughter of  [father_name] and [mother_name] passed [program] degree under [faculty] examination of the university held in [ending_year]. And that he/she was placed [cgpa] with grade of [grade]. \r\n\r\nHe/She completed the course of  [credits] credits and all of the requirements for the award of the Bachelor\'s degree.', 'Controller', 'Director', 'Register', 'logo_1664614963.jpg', NULL, '206624_1727879809.jpg', '800px', 'auto', 1, 0, 1, '2022-10-01 03:02:43', '2024-10-02 08:36:50');

-- --------------------------------------------------------

--
-- Table structure for table `class_rooms`
--

DROP TABLE IF EXISTS `class_rooms`;
CREATE TABLE IF NOT EXISTS `class_rooms` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `floor` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capacity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `class_rooms_title_unique` (`title`),
  UNIQUE KEY `class_rooms_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_rooms`
--

INSERT INTO `class_rooms` (`id`, `title`, `slug`, `floor`, `capacity`, `type`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, '201A', '201a', '2nd Floor', NULL, 'Theory', NULL, 1, '2022-09-30 13:32:31', '2022-09-30 13:34:51'),
(2, '202B', '202b', '2nd Floor', NULL, 'Theory', NULL, 1, '2022-09-30 13:33:11', '2022-09-30 13:34:45'),
(3, '305A', '305a', '3rd Floor', '40', 'Lab', NULL, 1, '2022-09-30 13:34:10', '2022-09-30 13:34:10'),
(4, '306A', '306a', '3rd Floor', '60', 'Lab', NULL, 1, '2022-09-30 13:34:27', '2022-09-30 13:34:59'),
(5, '205B', '205b', '2nd Floor', NULL, 'Theory', NULL, 1, '2022-10-01 04:46:18', '2022-10-01 04:46:18');

-- --------------------------------------------------------

--
-- Table structure for table `class_routines`
--

DROP TABLE IF EXISTS `class_routines`;
CREATE TABLE IF NOT EXISTS `class_routines` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `teacher_id` bigint UNSIGNED NOT NULL,
  `subject_id` bigint UNSIGNED NOT NULL,
  `room_id` int UNSIGNED NOT NULL,
  `session_id` int UNSIGNED NOT NULL,
  `program_id` int UNSIGNED NOT NULL,
  `semester_id` int UNSIGNED NOT NULL,
  `section_id` int UNSIGNED NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `day` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_routines_teacher_id_foreign` (`teacher_id`),
  KEY `class_routines_subject_id_foreign` (`subject_id`),
  KEY `class_routines_room_id_foreign` (`room_id`),
  KEY `class_routines_session_id_foreign` (`session_id`),
  KEY `class_routines_program_id_foreign` (`program_id`),
  KEY `class_routines_semester_id_foreign` (`semester_id`),
  KEY `class_routines_section_id_foreign` (`section_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_routines`
--

INSERT INTO `class_routines` (`id`, `teacher_id`, `subject_id`, `room_id`, `session_id`, `program_id`, `semester_id`, `section_id`, `start_time`, `end_time`, `day`, `status`, `created_at`, `updated_at`) VALUES
(1, 7, 5, 1, 3, 2, 1, 1, '00:04:00', '01:04:00', 1, 1, '2022-10-02 13:05:24', '2022-10-02 13:05:24'),
(2, 5, 3, 2, 3, 2, 1, 1, '02:04:00', '03:05:00', 1, 1, '2022-10-02 13:05:24', '2022-10-02 13:05:24'),
(3, 4, 4, 1, 3, 2, 1, 1, '00:18:00', '01:18:00', 3, 1, '2022-10-02 13:18:57', '2022-10-02 13:18:57'),
(4, 3, 6, 3, 3, 2, 1, 1, '03:19:00', '04:19:00', 3, 1, '2022-10-02 13:19:19', '2022-10-02 13:19:19'),
(5, 7, 5, 1, 3, 2, 1, 1, '01:23:00', '02:23:00', 5, 1, '2022-10-02 13:23:19', '2022-10-02 13:23:19'),
(6, 3, 4, 3, 3, 2, 1, 1, '03:23:00', '04:24:00', 5, 1, '2022-10-02 13:24:04', '2022-10-02 13:24:04'),
(7, 7, 5, 1, 4, 2, 1, 1, '01:24:00', '02:24:00', 2, 1, '2022-10-02 13:25:01', '2022-10-02 13:25:01'),
(8, 4, 4, 2, 4, 2, 1, 1, '03:25:00', '04:25:00', 2, 1, '2022-10-02 13:25:22', '2022-10-02 13:25:22'),
(9, 5, 4, 5, 4, 2, 1, 1, '01:25:00', '02:25:00', 4, 1, '2022-10-02 13:27:10', '2022-10-02 13:27:10'),
(10, 3, 6, 3, 4, 2, 1, 1, '03:25:00', '04:25:00', 4, 1, '2022-10-02 13:27:10', '2022-10-02 13:27:10'),
(11, 4, 4, 4, 4, 2, 1, 1, '01:27:00', '02:27:00', 6, 1, '2022-10-02 13:27:57', '2022-10-02 13:27:57'),
(12, 5, 3, 5, 4, 2, 1, 1, '03:27:00', '04:27:00', 6, 1, '2022-10-02 13:27:57', '2022-10-02 13:27:57'),
(13, 4, 2, 5, 3, 3, 2, 1, '05:31:00', '06:31:00', 1, 1, '2022-10-02 13:32:15', '2022-10-02 13:32:15'),
(14, 4, 1, 4, 3, 3, 2, 1, '07:32:00', '08:32:00', 1, 1, '2022-10-02 13:32:15', '2022-10-02 13:32:15'),
(15, 5, 9, 5, 3, 3, 2, 1, '05:33:00', '06:33:00', 3, 1, '2022-10-02 13:33:44', '2022-10-02 13:33:44'),
(16, 4, 7, 3, 3, 3, 2, 1, '07:33:00', '08:33:00', 3, 1, '2022-10-02 13:33:44', '2022-10-02 13:33:44'),
(17, 5, 2, 2, 3, 3, 2, 1, '05:33:00', '06:33:00', 5, 1, '2022-10-02 13:34:13', '2022-10-02 13:34:13'),
(18, 3, 1, 5, 3, 3, 2, 1, '07:34:00', '08:34:00', 5, 1, '2022-10-02 13:34:13', '2022-10-02 13:34:13'),
(19, 5, 8, 2, 3, 3, 1, 1, '05:35:00', '06:35:00', 1, 1, '2022-10-02 13:35:44', '2022-10-02 13:35:44'),
(20, 4, 6, 3, 3, 3, 1, 1, '07:35:00', '08:35:00', 1, 1, '2022-10-02 13:35:44', '2022-10-02 13:35:44'),
(21, 7, 3, 1, 3, 3, 1, 1, '05:35:00', '06:35:00', 3, 1, '2022-10-02 13:36:14', '2022-10-02 13:36:14'),
(22, 4, 4, 3, 3, 3, 1, 1, '07:36:00', '08:36:00', 3, 1, '2022-10-02 13:36:14', '2022-10-02 13:36:14'),
(23, 5, 6, 5, 3, 3, 1, 1, '05:36:00', '06:36:00', 5, 1, '2022-10-02 13:37:08', '2022-10-02 13:37:08'),
(24, 3, 8, 3, 3, 3, 1, 1, '07:36:00', '08:37:00', 5, 1, '2022-10-02 13:37:08', '2022-10-02 13:37:08'),
(25, 5, 3, 5, 4, 3, 1, 1, '05:37:00', '06:37:00', 1, 1, '2022-10-02 13:38:05', '2022-10-02 13:38:05'),
(26, 3, 4, 4, 4, 3, 1, 1, '07:37:00', '08:37:00', 1, 1, '2022-10-02 13:38:05', '2022-10-02 13:38:05'),
(27, 4, 8, 2, 4, 3, 1, 1, '05:38:00', '06:38:00', 3, 1, '2022-10-02 13:38:47', '2022-10-02 13:38:47'),
(28, 7, 6, 3, 4, 3, 1, 1, '06:38:00', '07:38:00', 3, 1, '2022-10-02 13:38:47', '2022-10-02 13:38:47'),
(29, 5, 3, 3, 4, 3, 1, 1, '05:39:00', '06:39:00', 5, 1, '2022-10-02 13:39:53', '2022-10-02 13:39:53'),
(30, 4, 4, 5, 4, 3, 1, 1, '06:39:00', '07:39:00', 5, 1, '2022-10-02 13:39:53', '2022-10-02 13:39:53'),
(31, 5, 9, 2, 4, 3, 2, 1, '05:42:00', '06:42:00', 1, 1, '2022-10-02 13:43:01', '2022-10-02 13:43:01'),
(32, 4, 1, 2, 4, 3, 2, 1, '07:42:00', '08:42:00', 1, 1, '2022-10-02 13:43:01', '2022-10-02 13:43:01'),
(33, 4, 2, 5, 4, 3, 2, 1, '05:43:00', '06:43:00', 3, 1, '2022-10-02 13:43:37', '2022-10-02 13:43:37'),
(34, 3, 7, 1, 4, 3, 2, 1, '07:43:00', '08:43:00', 3, 1, '2022-10-02 13:43:37', '2022-10-02 13:43:37'),
(35, 3, 2, 3, 4, 3, 2, 1, '05:43:00', '06:43:00', 5, 1, '2022-10-02 13:44:08', '2022-10-02 13:44:08'),
(36, 4, 1, 2, 4, 3, 2, 1, '07:44:00', '08:44:00', 5, 1, '2022-10-02 13:44:08', '2022-10-02 13:44:08');

-- --------------------------------------------------------

--
-- Table structure for table `complains`
--

DROP TABLE IF EXISTS `complains`;
CREATE TABLE IF NOT EXISTS `complains` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_id` int UNSIGNED NOT NULL,
  `source_id` int UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `action_taken` text COLLATE utf8mb4_unicode_ci,
  `assigned` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issue` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `attach` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `complains_type_id_foreign` (`type_id`),
  KEY `complains_source_id_foreign` (`source_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complains`
--

INSERT INTO `complains` (`id`, `type_id`, `source_id`, `name`, `father_name`, `phone`, `email`, `date`, `action_taken`, `assigned`, `issue`, `note`, `attach`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 7, 2, 'Alika Lucas', 'Velma Flores', '+1 (919) 213-5151', 'firutesygi@mailinator.com', '2021-02-13', 'Ordered', 'Liz', 'Amet velit accusant', 'Fuga Aliqua Molest', NULL, 1, 1, 1, '2022-10-01 12:29:41', '2022-10-27 13:29:43'),
(2, 9, 3, 'Beverly Rich', 'Alyssa Pitts', '+1 (904) 655-2551', 'cidynyb@mailinator.com', '2020-08-02', 'Solved', 'Saif', 'Commodo corporis ips', 'Ullamco cupidatat qu', 'book-cover2_1664656121.jpg', 1, 1, 1, '2022-10-01 12:30:16', '2022-10-27 13:29:18'),
(3, 3, 1, 'Constance Stephens', 'Colorado Knight', '+1 (842) 238-6678', 'vavomul@mailinator.com', '2022-06-22', 'Suspend', '8', 'Eligendi totam quis', 'Quia est ut amet vo', NULL, 0, 1, 1, '2022-10-01 12:30:38', '2023-02-13 12:27:14'),
(4, 5, 2, 'Ezekiel Hooper', 'Mollie Browning', '+1 (859) 183-6191', 'furus@mailinator.com', '2020-03-23', 'Change', 'Alex', 'Iusto laboris ipsa', 'Delectus ex accusam', NULL, 1, 1, 1, '2022-10-01 12:31:10', '2022-10-27 13:28:34'),
(5, 9, 1, 'Kaden Reyes', 'Ruth Petty', '+1 (293) 256-2963', 'tabyxuge@mailinator.com', '2020-02-03', 'Solved', 'Andre', 'Saepe rerum nulla co', 'Aut sunt sunt ea qua', 'book-covers_1664656151.jpg', 1, 1, 1, '2022-10-01 12:31:21', '2022-10-27 13:28:21'),
(6, 5, 3, 'Barry Hull', 'Travis Fuller', '+1 (561) 218-6774', 'weripazu@mailinator.com', '2022-12-03', NULL, '9', 'Perferendis necessit', 'Autem quibusdam aut', NULL, 0, 1, 1, '2023-02-13 12:27:46', '2023-08-25 07:33:40'),
(7, 3, 3, 'Yuri Prince', 'Winifred Key', '+1 (419) 319-4835', 'hufomyc@mailinator.com', '2023-08-17', 'On Going', '9', 'Distinctio Id volu', 'Autem dolorum aut et', NULL, 1, 1, 1, '2023-08-25 07:29:47', '2023-08-25 07:33:13'),
(8, 6, 2, 'Nina Sweet', 'Suki Compton', '+1 (149) 229-1336', 'muxasi@mailinator.com', '2023-07-30', 'Solved', '9', 'Perferendis at amet', 'Velit laudantium ip', NULL, 3, 1, 1, '2023-08-25 07:30:22', '2023-08-25 07:33:37');

-- --------------------------------------------------------

--
-- Table structure for table `complain_sources`
--

DROP TABLE IF EXISTS `complain_sources`;
CREATE TABLE IF NOT EXISTS `complain_sources` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `complain_sources_title_unique` (`title`),
  UNIQUE KEY `complain_sources_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complain_sources`
--

INSERT INTO `complain_sources` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Staff', 'staff', NULL, 1, '2022-10-01 03:56:33', '2022-10-01 03:56:33'),
(2, 'Student', 'student', NULL, 1, '2022-10-01 03:56:40', '2022-10-01 03:56:40'),
(3, 'Parent', 'parent', NULL, 1, '2022-10-01 03:56:47', '2022-10-01 03:56:47'),
(4, 'Teacher', 'teacher', NULL, 1, '2022-10-01 03:56:58', '2022-10-01 03:56:58');

-- --------------------------------------------------------

--
-- Table structure for table `complain_types`
--

DROP TABLE IF EXISTS `complain_types`;
CREATE TABLE IF NOT EXISTS `complain_types` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `complain_types_title_unique` (`title`),
  UNIQUE KEY `complain_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complain_types`
--

INSERT INTO `complain_types` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Fees', 'fees', NULL, 1, '2022-10-01 03:53:14', '2022-10-01 03:53:14'),
(2, 'Study', 'study', NULL, 1, '2022-10-01 03:53:29', '2022-10-01 03:53:29'),
(3, 'Teacher', 'teacher', NULL, 1, '2022-10-01 03:53:37', '2022-10-01 03:53:37'),
(4, 'Sports', 'sports', NULL, 1, '2022-10-01 03:53:42', '2022-10-01 03:53:42'),
(5, 'Transport', 'transport', NULL, 1, '2022-10-01 03:53:51', '2022-10-01 03:53:51'),
(6, 'Hostel', 'hostel', NULL, 1, '2022-10-01 03:54:00', '2022-10-01 03:54:00'),
(7, 'Instrument', 'instrument', NULL, 1, '2022-10-01 03:54:55', '2022-10-01 03:54:55'),
(8, 'Exam', 'exam', NULL, 1, '2022-10-01 03:55:27', '2022-10-01 03:55:27'),
(9, 'Library', 'library', NULL, 1, '2022-10-01 03:55:41', '2022-10-01 03:55:41');

-- --------------------------------------------------------

--
-- Table structure for table `contentables`
--

DROP TABLE IF EXISTS `contentables`;
CREATE TABLE IF NOT EXISTS `contentables` (
  `content_id` bigint NOT NULL,
  `contentable_id` bigint NOT NULL,
  `contentable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contentables`
--

INSERT INTO `contentables` (`content_id`, `contentable_id`, `contentable_type`) VALUES
(1, 8, 'App\\Models\\Student'),
(1, 7, 'App\\Models\\Student'),
(3, 14, 'App\\Models\\Student'),
(3, 12, 'App\\Models\\Student'),
(3, 11, 'App\\Models\\Student'),
(3, 10, 'App\\Models\\Student');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

DROP TABLE IF EXISTS `contents`;
CREATE TABLE IF NOT EXISTS `contents` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `faculty_id` int UNSIGNED DEFAULT NULL,
  `program_id` int UNSIGNED DEFAULT NULL,
  `session_id` int UNSIGNED DEFAULT NULL,
  `semester_id` int UNSIGNED DEFAULT NULL,
  `section_id` int UNSIGNED DEFAULT NULL,
  `type_id` int UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date` date NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci,
  `attach` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contents_type_id_foreign` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `faculty_id`, `program_id`, `session_id`, `semester_id`, `section_id`, `type_id`, `title`, `description`, `date`, `url`, `attach`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 4, 1, 1, 2, 'Optical Physics 1st Class', NULL, '2022-10-03', NULL, 'book-covers_1664802778.jpg', 1, 1, NULL, '2022-10-03 07:12:58', '2022-10-03 07:12:58'),
(2, 2, 3, 4, 1, 0, 1, 'Full Syllabus 2022', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose</p>', '2022-10-03', NULL, 'book-cover2_1664802896.jpg', 1, 1, 1, '2022-10-03 07:14:56', '2022-10-03 14:56:00'),
(3, 2, 3, 4, 1, 0, 2, '2nd Class Of English', NULL, '2022-10-04', NULL, 'Provisional Certificate-100001_1664888967.pdf', 1, 1, NULL, '2022-10-04 07:09:27', '2022-10-04 07:09:27');

-- --------------------------------------------------------

--
-- Table structure for table `content_types`
--

DROP TABLE IF EXISTS `content_types`;
CREATE TABLE IF NOT EXISTS `content_types` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_types_title_unique` (`title`),
  UNIQUE KEY `content_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `content_types`
--

INSERT INTO `content_types` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Syllabus', 'syllabus', NULL, 1, '2022-09-30 13:55:02', '2022-09-30 13:55:02'),
(2, 'Lecture Sheet', 'lecture-sheet', NULL, 1, '2022-09-30 13:55:07', '2022-09-30 13:55:07');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
CREATE TABLE IF NOT EXISTS `courses` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `language_id` int UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faculty` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `semesters` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credits` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `courses` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fee` double(10,2) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `attach` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `courses_title_unique` (`title`),
  UNIQUE KEY `courses_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `language_id`, `title`, `slug`, `faculty`, `semesters`, `credits`, `courses`, `duration`, `fee`, `description`, `attach`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Public Administration', 'public-administration', 'Political Science', '12', '134', '60', '4 Years', 1250.00, '<p>Lorem ipsum is simply free text used by copytyping refreshing. Neque porro est qui dolorem ipsum quia quaed inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Aelltes port lacus quis enim var sed efficitur turpis gilla sed sit amet finibus eros. Lorem Ipsum is simply dummy text of the printing.</p>\r\n<p>The world of search engine optimization is complex and ever-changing, but you can easily understand the basics, and even a small amount of SEO knowledge can make a big difference. Free SEO education is also widely available on the web, including in guides like this! (Woohoo!) This guide is designed to describe all major aspects of SEO, from finding the terms and phrases (keywords) that can generate qualified traffic to your website, to making your site friendly to search engines, to building links and marketing the unique value of your site.Etiam pharetra erat sed fermentum feugiat velit mauris egestas quam ut erat justo.</p>\r\n<h4>What You Will Learn</h4>\r\n<p>Fusce eleifend donec sapien sed phase lusa pellentesque lacus.Vivamus lorem arcu semper duiac. Cras ornare arcu avamus nda leo Etiam ind arcu. Morbi justo mauris tempus pharetra interdum at congue semper purus. Lorem ipsum dolor sit.The world of search engine optimization is complex and ever-changing, but you can easily understand the basics.</p>\r\n<p>Lorem ipsum is simply free text used by copytyping refreshing. Neque porro est qui dolorem ipsum quia quaed inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Aelltes port lacus quis enim var sed efficitur turpis gilla sed sit amet finibus eros. Lorem Ipsum is simply dummy text of the printing.</p>\r\n<p>&nbsp;</p>', 'couress_img_3_1692962811.jpg', 1, '2023-08-25 05:22:05', '2023-08-25 05:26:51'),
(2, 1, 'Computer Engineering', 'computer-engineering', 'Engineering', '12', '127', '66', '4 Years', 6520.00, '<p>Lorem ipsum is simply free text used by copytyping refreshing. Neque porro est qui dolorem ipsum quia quaed inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Aelltes port lacus quis enim var sed efficitur turpis gilla sed sit amet finibus eros. Lorem Ipsum is simply dummy text of the printing.</p>\r\n<p>The world of search engine optimization is complex and ever-changing, but you can easily understand the basics, and even a small amount of SEO knowledge can make a big difference. Free SEO education is also widely available on the web, including in guides like this! (Woohoo!) This guide is designed to describe all major aspects of SEO, from finding the terms and phrases (keywords) that can generate qualified traffic to your website, to making your site friendly to search engines, to building links and marketing the unique value of your site.Etiam pharetra erat sed fermentum feugiat velit mauris egestas quam ut erat justo.</p>\r\n<h4>What You Will Learn</h4>\r\n<p>Fusce eleifend donec sapien sed phase lusa pellentesque lacus.Vivamus lorem arcu semper duiac. Cras ornare arcu avamus nda leo Etiam ind arcu. Morbi justo mauris tempus pharetra interdum at congue semper purus. Lorem ipsum dolor sit.The world of search engine optimization is complex and ever-changing, but you can easily understand the basics.</p>\r\n<p>Lorem ipsum is simply free text used by copytyping refreshing. Neque porro est qui dolorem ipsum quia quaed inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Aelltes port lacus quis enim var sed efficitur turpis gilla sed sit amet finibus eros. Lorem Ipsum is simply dummy text of the printing.</p>\r\n<p>&nbsp;</p>', 'couress_img_2_1692962832.jpg', 1, '2023-08-25 05:24:10', '2023-08-25 05:27:12'),
(3, 1, 'Fine Arts and Design', 'fine-arts-and-design', 'Humanities', '8', '115', '55', '4 Years', 4210.00, '<p>Lorem ipsum is simply free text used by copytyping refreshing. Neque porro est qui dolorem ipsum quia quaed inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Aelltes port lacus quis enim var sed efficitur turpis gilla sed sit amet finibus eros. Lorem Ipsum is simply dummy text of the printing.</p>\r\n<p>The world of search engine optimization is complex and ever-changing, but you can easily understand the basics, and even a small amount of SEO knowledge can make a big difference. Free SEO education is also widely available on the web, including in guides like this! (Woohoo!) This guide is designed to describe all major aspects of SEO, from finding the terms and phrases (keywords) that can generate qualified traffic to your website, to making your site friendly to search engines, to building links and marketing the unique value of your site.Etiam pharetra erat sed fermentum feugiat velit mauris egestas quam ut erat justo.</p>\r\n<h4>What You Will Learn</h4>\r\n<p>Fusce eleifend donec sapien sed phase lusa pellentesque lacus.Vivamus lorem arcu semper duiac. Cras ornare arcu avamus nda leo Etiam ind arcu. Morbi justo mauris tempus pharetra interdum at congue semper purus. Lorem ipsum dolor sit.The world of search engine optimization is complex and ever-changing, but you can easily understand the basics.</p>\r\n<p>Lorem ipsum is simply free text used by copytyping refreshing. Neque porro est qui dolorem ipsum quia quaed inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Aelltes port lacus quis enim var sed efficitur turpis gilla sed sit amet finibus eros. Lorem Ipsum is simply dummy text of the printing.</p>\r\n<p>&nbsp;</p>', 'couress_img_4_1692962782.jpg', 1, '2023-08-25 05:26:23', '2023-08-25 05:26:23');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
CREATE TABLE IF NOT EXISTS `departments` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `departments_title_unique` (`title`),
  UNIQUE KEY `departments_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admission', 'admission', NULL, 1, '2022-09-30 14:02:55', '2022-09-30 14:02:55'),
(2, 'Finance', 'finance', NULL, 1, '2022-09-30 14:03:04', '2022-10-01 04:16:23'),
(3, 'Library', 'library', NULL, 1, '2022-09-30 14:03:14', '2022-09-30 14:03:14'),
(4, 'IT Support', 'it-support', NULL, 1, '2022-09-30 14:03:33', '2022-09-30 14:03:33'),
(5, 'Faculty', 'faculty', NULL, 1, '2022-09-30 14:03:44', '2022-09-30 14:03:44'),
(6, 'Sports', 'sports', NULL, 1, '2022-10-01 04:16:51', '2022-10-01 04:16:51');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

DROP TABLE IF EXISTS `designations`;
CREATE TABLE IF NOT EXISTS `designations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `designations_title_unique` (`title`),
  UNIQUE KEY `designations_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Instructor', 'instructor', NULL, 1, '2022-09-30 14:04:24', '2022-09-30 14:04:24'),
(2, 'Admin', 'admin', NULL, 1, '2022-09-30 14:04:34', '2022-10-01 04:17:39'),
(3, 'Professor', 'professor', NULL, 1, '2022-09-30 14:04:45', '2022-09-30 14:04:45'),
(4, 'Accountant', 'accountant', NULL, 1, '2022-09-30 14:05:06', '2022-09-30 14:05:06'),
(5, 'Librarian', 'librarian', NULL, 1, '2022-09-30 14:05:17', '2022-09-30 14:05:17'),
(6, 'Receptionist', 'receptionist', NULL, 1, '2022-09-30 14:06:12', '2022-09-30 14:06:12'),
(7, 'Director', 'director', NULL, 1, '2022-10-01 04:17:59', '2022-10-01 04:17:59'),
(8, 'Chancellor', 'chancellor', NULL, 1, '2022-10-01 04:18:48', '2022-10-01 04:18:48'),
(9, 'Exam Controller', 'exam-controller', NULL, 1, '2022-10-01 04:19:03', '2022-10-01 04:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

DROP TABLE IF EXISTS `districts`;
CREATE TABLE IF NOT EXISTS `districts` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `province_id` int UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `districts_province_id_foreign` (`province_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `province_id`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Gazipur', NULL, 1, '2022-09-30 14:17:34', '2022-09-30 14:17:34'),
(2, 1, 'Tangail', NULL, 1, '2022-09-30 14:17:46', '2022-09-30 14:17:46'),
(3, 4, 'Kurigram', NULL, 1, '2022-09-30 14:17:55', '2022-09-30 14:17:55'),
(4, 4, 'Dinajpur', NULL, 1, '2022-09-30 14:18:04', '2022-09-30 14:18:04'),
(5, 4, 'Nilphamari', NULL, 1, '2022-10-01 03:17:43', '2022-10-01 03:17:43'),
(6, 1, 'Munshiganj', NULL, 1, '2022-10-01 03:17:57', '2022-10-01 03:19:17'),
(7, 2, 'Hobigonj', NULL, 1, '2022-10-01 03:18:20', '2022-10-01 03:18:20'),
(8, 3, 'Jessore', NULL, 1, '2022-10-01 03:18:50', '2022-10-01 03:18:50'),
(9, 3, 'Kustia', NULL, 1, '2022-10-01 03:19:35', '2022-10-01 03:19:35'),
(10, 3, 'Norail', NULL, 1, '2022-10-01 03:19:50', '2022-10-01 03:19:50'),
(11, 3, 'Magura', NULL, 1, '2022-10-01 03:20:02', '2022-10-01 03:20:02'),
(12, 4, 'Gaibandha', NULL, 1, '2022-10-01 03:20:31', '2022-10-01 03:20:31'),
(13, 2, 'Sylhet', NULL, 1, '2022-10-01 03:20:50', '2022-10-01 03:21:09');

-- --------------------------------------------------------

--
-- Table structure for table `docables`
--

DROP TABLE IF EXISTS `docables`;
CREATE TABLE IF NOT EXISTS `docables` (
  `document_id` bigint UNSIGNED NOT NULL,
  `docable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `docable_id` bigint UNSIGNED NOT NULL,
  UNIQUE KEY `docables_document_id_docable_id_docable_type_unique` (`document_id`,`docable_id`,`docable_type`),
  KEY `docables_docable_type_docable_id_index` (`docable_type`,`docable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `docables`
--

INSERT INTO `docables` (`document_id`, `docable_type`, `docable_id`) VALUES
(4, 'App\\Models\\Student', 2),
(5, 'App\\Models\\Student', 4),
(6, 'App\\Models\\Student', 8),
(7, 'App\\Models\\Student', 9),
(8, 'App\\Models\\Student', 13),
(9, 'App\\Models\\Student', 14),
(1, 'App\\User', 4),
(2, 'App\\User', 7),
(3, 'App\\User', 9);

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
CREATE TABLE IF NOT EXISTS `documents` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attach` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `title`, `attach`, `status`, `created_at`, `updated_at`) VALUES
(1, 'NID Copy', 'book-cover2.jpg_1664711842.jpg', 1, '2022-10-02 05:57:22', '2022-10-02 05:57:22'),
(2, 'Passport Copy', 'book-covers.jpg_1664732229.jpg', 1, '2022-10-02 11:37:09', '2022-10-02 11:37:09'),
(3, 'Experiance Cer', 'book-covers.jpg_1664732856.jpg', 1, '2022-10-02 11:47:36', '2022-10-02 11:47:36'),
(4, 'Marksheet', 'book-covers.jpg_1664734667.jpg', 1, '2022-10-02 12:17:47', '2022-10-02 12:17:47'),
(5, 'Marksheet', 'book-cover2.jpg_1664734905.jpg', 1, '2022-10-02 12:21:45', '2022-10-02 12:21:45'),
(6, 'Marksheet', 'book-covers.jpg_1664735357.jpg', 1, '2022-10-02 12:29:17', '2022-10-02 12:29:17'),
(7, 'Transfer Doc', 'background-border.png_1664835743.png', 1, '2022-10-03 16:22:23', '2022-10-03 16:22:23'),
(8, 'Marksheet', 'book-cover2.jpg_1664884572.jpg', 1, '2022-10-04 05:56:12', '2022-10-04 05:56:12'),
(9, 'Marksheet', 'book-covers.jpg_1664884807.jpg', 1, '2022-10-04 06:00:07', '2022-10-04 06:00:07');

-- --------------------------------------------------------

--
-- Table structure for table `email_notifies`
--

DROP TABLE IF EXISTS `email_notifies`;
CREATE TABLE IF NOT EXISTS `email_notifies` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `faculty_id` int UNSIGNED DEFAULT NULL,
  `program_id` int UNSIGNED DEFAULT NULL,
  `session_id` int UNSIGNED DEFAULT NULL,
  `semester_id` int UNSIGNED DEFAULT NULL,
  `section_id` int UNSIGNED DEFAULT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `receive_count` int DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_notifies`
--

INSERT INTO `email_notifies` (`id`, `faculty_id`, `program_id`, `session_id`, `semester_id`, `section_id`, `subject`, `message`, `receive_count`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 4, 0, 0, 'Your Fees Due Date Is Very Close', 'This depends on when you enrol. Your fees are due 30 days from your starting date. For more information, please see Fees due dates.', 2, 1, 1, NULL, '2022-10-03 11:54:16', '2022-10-03 11:54:16'),
(2, 2, 3, 3, 1, 1, 'Ready for attend our special class on sunday!', 'Note: If any of these dates fall on a holiday or weekend, the due date for fee payment will be the first working day following the holiday/weekend.', 4, 1, 1, NULL, '2022-10-03 12:06:14', '2022-10-03 12:06:14');

-- --------------------------------------------------------

--
-- Table structure for table `enquiries`
--

DROP TABLE IF EXISTS `enquiries`;
CREATE TABLE IF NOT EXISTS `enquiries` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `reference_id` int UNSIGNED DEFAULT NULL,
  `source_id` int UNSIGNED DEFAULT NULL,
  `program_id` int UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `purpose` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `date` date NOT NULL,
  `follow_up_date` date DEFAULT NULL,
  `assigned` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_students` int NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `enquiries_reference_id_foreign` (`reference_id`),
  KEY `enquiries_source_id_foreign` (`source_id`),
  KEY `enquiries_program_id_foreign` (`program_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enquiries`
--

INSERT INTO `enquiries` (`id`, `reference_id`, `source_id`, `program_id`, `name`, `father_name`, `phone`, `email`, `address`, `purpose`, `note`, `date`, `follow_up_date`, `assigned`, `number_of_students`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 3, 3, 3, 'Kim Sandoval', NULL, '+1 (939) 845-9236', 'voxagikib@mailinator.com', 'Aspernatur doloremqu', 'Odit et in qui et nu', 'Harum et deleniti ac', '2022-10-01', '2022-12-07', '3', 1, 3, 1, 1, '2022-10-01 12:24:34', '2023-08-25 07:28:58'),
(2, 3, 1, 1, 'Jesse Sandoval', NULL, '+1 (752) 181-9433', 'morexy@mailinator.com', 'Eum velit ratione qu', 'Pariatur Facilis in', 'Enim esse quidem min', '2019-04-02', NULL, 'Architecto', 1, 0, 1, 1, '2022-10-01 12:25:14', '2022-10-01 12:27:18'),
(3, 5, 1, 1, 'Malachi Buckner', NULL, '+1 (774) 745-9417', 'wicodikico@mailinator.com', 'Laboriosam laudanti', 'Adipisicing aspernat', 'Sint vel animi tem', '2021-09-25', '2022-12-29', 'Arman', 1, 1, 1, 1, '2022-10-01 12:25:59', '2022-10-01 12:26:58'),
(4, 2, 4, 1, 'Ann Castro', NULL, '+1 (225) 849-6955', 'lela@mailinator.com', 'Molestias elit aut', 'Qui laborum Dicta n', 'Eum soluta quia est', '2020-12-13', NULL, 'Aperiam', 1, 1, 1, NULL, '2022-10-01 12:26:30', '2022-10-01 12:26:30'),
(5, 1, NULL, 4, 'Georgia Shepard', NULL, '+1 (907) 196-5628', 'gapi@mailinator.com', 'Fugiat sequi aut qu', 'Aut anim ipsa eaque', 'Et ex doloremque min', '2021-04-05', '2022-10-13', 'Saif', 1, 1, 1, 1, '2022-10-01 12:27:53', '2022-10-01 12:28:07'),
(6, 1, 1, 5, 'Coby Kline', NULL, '+1 (582) 879-4372', 'hoge@mailinator.com', 'Consequat Consequat', 'Asperiores quod null', 'Quod quas amet quid', '2023-02-13', '2023-04-10', '4', 1, 2, 1, 1, '2023-02-13 12:25:51', '2023-08-25 07:28:53'),
(7, 3, 1, 1, 'Maggie Curry', NULL, '+1 (953) 288-2346', 'xaxe@mailinator.com', 'Est suscipit vel ul', 'Nam sit ut voluptate', 'Cum est est et aut', '2023-08-21', '2024-03-12', '5', 1, 1, 1, NULL, '2023-08-25 07:28:46', '2023-08-25 07:28:46');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_references`
--

DROP TABLE IF EXISTS `enquiry_references`;
CREATE TABLE IF NOT EXISTS `enquiry_references` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `enquiry_references_title_unique` (`title`),
  UNIQUE KEY `enquiry_references_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enquiry_references`
--

INSERT INTO `enquiry_references` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Staff', 'staff', NULL, 1, '2022-10-01 03:50:35', '2022-10-01 03:50:35'),
(2, 'Parent', 'parent', NULL, 1, '2022-10-01 03:50:46', '2022-10-01 03:50:46'),
(3, 'Student', 'student', NULL, 1, '2022-10-01 03:50:53', '2022-10-01 03:50:53'),
(4, 'Self', 'self', NULL, 1, '2022-10-01 03:51:01', '2022-10-01 03:51:01'),
(5, 'Promotional Partner', 'promotional-partner', NULL, 1, '2022-10-01 03:52:48', '2022-10-01 03:52:48');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_sources`
--

DROP TABLE IF EXISTS `enquiry_sources`;
CREATE TABLE IF NOT EXISTS `enquiry_sources` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `enquiry_sources_title_unique` (`title`),
  UNIQUE KEY `enquiry_sources_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enquiry_sources`
--

INSERT INTO `enquiry_sources` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Front Office', 'front-office', NULL, 1, '2022-10-01 03:48:47', '2022-10-01 03:48:47'),
(2, 'Advertisement', 'advertisement', NULL, 1, '2022-10-01 03:48:55', '2022-10-01 03:48:55'),
(3, 'University Website', 'university-website', NULL, 1, '2022-10-01 03:49:10', '2022-10-01 03:50:15'),
(4, 'Google Ads', 'google-ads', NULL, 1, '2022-10-01 03:49:20', '2022-10-01 03:49:20'),
(5, 'Admission Campaign', 'admission-campaign', NULL, 1, '2022-10-01 03:49:28', '2022-10-01 03:49:28'),
(6, 'Social Media', 'social-media', NULL, 1, '2022-10-01 03:49:42', '2022-10-01 03:49:42');

-- --------------------------------------------------------

--
-- Table structure for table `enroll_subjects`
--

DROP TABLE IF EXISTS `enroll_subjects`;
CREATE TABLE IF NOT EXISTS `enroll_subjects` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `program_id` int UNSIGNED NOT NULL,
  `semester_id` int UNSIGNED NOT NULL,
  `section_id` int UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `enroll_subjects_program_id_foreign` (`program_id`),
  KEY `enroll_subjects_semester_id_foreign` (`semester_id`),
  KEY `enroll_subjects_section_id_foreign` (`section_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enroll_subjects`
--

INSERT INTO `enroll_subjects` (`id`, `program_id`, `semester_id`, `section_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 1, 1, '2022-10-01 08:44:01', '2022-10-01 08:44:01'),
(2, 3, 1, 2, 1, '2022-10-01 08:49:28', '2022-10-01 08:49:28'),
(3, 3, 2, 1, 1, '2022-10-01 08:50:25', '2022-10-01 08:50:25'),
(4, 3, 2, 2, 1, '2022-10-01 08:50:48', '2022-10-01 08:50:48'),
(5, 2, 1, 1, 1, '2022-10-01 08:51:47', '2022-10-01 08:51:47'),
(6, 2, 2, 1, 1, '2022-10-01 09:00:31', '2022-10-01 09:00:31'),
(7, 4, 1, 1, 1, '2022-10-01 09:03:59', '2022-10-01 09:03:59'),
(8, 4, 2, 1, 1, '2022-10-01 09:05:25', '2022-10-01 09:05:25');

-- --------------------------------------------------------

--
-- Table structure for table `enroll_subject_subject`
--

DROP TABLE IF EXISTS `enroll_subject_subject`;
CREATE TABLE IF NOT EXISTS `enroll_subject_subject` (
  `enroll_subject_id` bigint UNSIGNED NOT NULL,
  `subject_id` bigint UNSIGNED NOT NULL,
  KEY `enroll_subject_subject_enroll_subject_id_foreign` (`enroll_subject_id`),
  KEY `enroll_subject_subject_subject_id_foreign` (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enroll_subject_subject`
--

INSERT INTO `enroll_subject_subject` (`enroll_subject_id`, `subject_id`) VALUES
(1, 8),
(1, 3),
(1, 4),
(1, 6),
(2, 8),
(2, 3),
(2, 4),
(2, 6),
(3, 9),
(3, 2),
(3, 7),
(3, 1),
(4, 9),
(4, 2),
(4, 7),
(4, 1),
(5, 5),
(5, 3),
(5, 4),
(5, 6),
(6, 10),
(6, 11),
(6, 12),
(6, 9),
(7, 5),
(7, 3),
(7, 13),
(7, 6),
(8, 10),
(8, 11),
(8, 12),
(8, 9);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `start_date`, `end_date`, `color`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Eid Holiday', '2023-10-03', '2023-10-17', '#70c24a', 1, '2022-10-03 11:38:23', '2023-08-25 06:38:31'),
(2, 'Marry Crismach', '2023-11-03', '2023-11-10', '#4a5cc2', 1, '2022-10-03 11:39:06', '2023-08-25 06:38:21'),
(3, 'Durga Puja', '2023-10-27', '2023-11-01', '#c24a4e', 1, '2022-10-03 11:39:24', '2023-08-25 06:38:11'),
(4, 'Final Exam', '2023-11-23', '2023-12-03', '#c2b44a', 1, '2022-10-03 11:39:54', '2023-08-25 06:38:02'),
(5, 'Summer Vacation', '2023-11-22', '2023-12-06', '#4aaec2', 1, '2022-10-03 11:41:19', '2023-08-25 06:37:52'),
(6, 'New Year Vacation', '2023-12-24', '2024-01-08', '#c24ac2', 1, '2022-10-03 11:41:57', '2023-08-25 06:37:42');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

DROP TABLE IF EXISTS `exams`;
CREATE TABLE IF NOT EXISTS `exams` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_enroll_id` bigint UNSIGNED NOT NULL,
  `subject_id` bigint UNSIGNED NOT NULL,
  `exam_type_id` int UNSIGNED DEFAULT NULL,
  `attendance` int NOT NULL DEFAULT '2' COMMENT '1-Present, 2-Absent',
  `marks` decimal(5,2) DEFAULT NULL,
  `achieve_marks` decimal(5,2) DEFAULT NULL,
  `contribution` decimal(5,2) NOT NULL DEFAULT '0.00',
  `note` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exams_student_enroll_id_foreign` (`student_enroll_id`),
  KEY `exams_subject_id_foreign` (`subject_id`),
  KEY `exams_exam_type_id_foreign` (`exam_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `student_enroll_id`, `subject_id`, `exam_type_id`, `attendance`, `marks`, `achieve_marks`, `contribution`, `note`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `date`, `time`) VALUES
(1, 7, 3, 1, 1, 100.00, 88.00, 50.00, '', 1, 1, 1, '2022-10-02 13:54:50', '2022-10-02 14:08:16', NULL, NULL),
(2, 8, 3, 1, 1, 100.00, 75.50, 50.00, '', 1, 1, 1, '2022-10-02 13:54:50', '2022-10-02 14:08:16', NULL, NULL),
(3, 7, 4, 1, 1, 100.00, 78.00, 50.00, '', 1, 1, 1, '2022-10-02 13:54:58', '2022-10-02 14:09:10', NULL, NULL),
(4, 8, 4, 1, 1, 100.00, 48.00, 50.00, '', 1, 1, 1, '2022-10-02 13:54:58', '2022-10-02 14:09:10', NULL, NULL),
(5, 7, 6, 1, 1, 100.00, 98.00, 50.00, '', 1, 1, 1, '2022-10-02 13:55:12', '2022-10-02 14:09:24', NULL, NULL),
(6, 8, 6, 1, 1, 100.00, 76.00, 50.00, '', 1, 1, 1, '2022-10-02 13:55:12', '2022-10-02 14:09:24', NULL, NULL),
(7, 7, 5, 1, 1, 100.00, 90.00, 50.00, '', 1, 1, 1, '2022-10-02 13:55:57', '2022-10-02 14:02:13', NULL, NULL),
(8, 8, 5, 1, 1, 100.00, 85.00, 50.00, '', 1, 1, 1, '2022-10-02 13:55:57', '2022-10-02 14:02:13', NULL, NULL),
(9, 7, 5, 2, 1, 50.00, 25.00, 20.00, '', 1, 1, 1, '2022-10-02 13:56:29', '2022-10-02 14:09:56', NULL, NULL),
(10, 8, 5, 2, 1, 50.00, 36.00, 20.00, '', 1, 1, 1, '2022-10-02 13:56:29', '2022-10-02 14:09:56', NULL, NULL),
(11, 7, 3, 2, 1, 50.00, 35.00, 20.00, '', 1, 1, 1, '2022-10-02 13:56:37', '2022-10-02 14:10:15', NULL, NULL),
(12, 8, 3, 2, 1, 50.00, 34.00, 20.00, '', 1, 1, 1, '2022-10-02 13:56:37', '2022-10-02 14:10:15', NULL, NULL),
(13, 7, 4, 2, 1, 50.00, 43.00, 20.00, '', 1, 1, 1, '2022-10-02 13:56:45', '2022-10-02 14:10:25', NULL, NULL),
(14, 8, 4, 2, 1, 50.00, 46.00, 20.00, '', 1, 1, 1, '2022-10-02 13:56:45', '2022-10-02 14:10:26', NULL, NULL),
(15, 7, 6, 2, 1, 50.00, 48.00, 20.00, '', 1, 1, 1, '2022-10-02 13:56:56', '2022-10-02 14:10:35', NULL, NULL),
(16, 8, 6, 2, 1, 50.00, 25.00, 20.00, '', 1, 1, 1, '2022-10-02 13:56:56', '2022-10-02 14:10:35', NULL, NULL),
(17, 5, 5, 2, 1, 50.00, 75.50, 20.00, '', 1, 1, 1, '2022-10-02 13:57:14', '2022-10-02 14:11:57', NULL, NULL),
(18, 6, 5, 2, 1, 50.00, 47.50, 20.00, '', 1, 1, 1, '2022-10-02 13:57:14', '2022-10-02 14:11:58', NULL, NULL),
(19, 5, 3, 2, 1, 50.00, 69.00, 20.00, '', 1, 1, 1, '2022-10-02 13:57:25', '2022-10-02 14:12:12', NULL, NULL),
(20, 6, 3, 2, 1, 50.00, 68.00, 20.00, '', 1, 1, 1, '2022-10-02 13:57:25', '2022-10-02 14:12:12', NULL, NULL),
(21, 5, 4, 2, 1, 50.00, 67.00, 20.00, '', 1, 1, 1, '2022-10-02 13:57:33', '2022-10-02 14:12:26', NULL, NULL),
(22, 6, 4, 2, 1, 50.00, 69.00, 20.00, '', 1, 1, 1, '2022-10-02 13:57:33', '2022-10-02 14:12:26', NULL, NULL),
(23, 5, 6, 2, 1, 50.00, 67.00, 20.00, '', 1, 1, 1, '2022-10-02 13:57:45', '2022-10-02 14:12:50', NULL, NULL),
(24, 6, 6, 2, 1, 50.00, 49.50, 20.00, '', 1, 1, 1, '2022-10-02 13:57:45', '2022-10-02 14:12:50', NULL, NULL),
(25, 5, 6, 1, 1, 100.00, 86.00, 50.00, '', 1, 1, 1, '2022-10-02 13:57:55', '2022-10-02 14:11:28', NULL, NULL),
(26, 6, 6, 1, 1, 100.00, 84.00, 50.00, '', 1, 1, 1, '2022-10-02 13:57:55', '2022-10-02 14:11:28', NULL, NULL),
(27, 5, 5, 1, 1, 100.00, 58.00, 50.00, '', 1, 1, 1, '2022-10-02 13:58:01', '2022-10-02 14:10:53', NULL, NULL),
(28, 6, 5, 1, 1, 100.00, 86.00, 50.00, '', 1, 1, 1, '2022-10-02 13:58:01', '2022-10-02 14:10:53', NULL, NULL),
(29, 5, 3, 1, 1, 100.00, 86.00, 50.00, '', 1, 1, 1, '2022-10-02 13:58:08', '2022-10-02 14:11:03', NULL, NULL),
(30, 6, 3, 1, 1, 100.00, 89.00, 50.00, '', 1, 1, 1, '2022-10-02 13:58:08', '2022-10-02 14:11:03', NULL, NULL),
(31, 5, 4, 1, 1, 100.00, 76.00, 50.00, '', 1, 1, 1, '2022-10-02 13:58:16', '2022-10-02 14:11:12', NULL, NULL),
(32, 6, 4, 1, 1, 100.00, 48.00, 50.00, '', 1, 1, 1, '2022-10-02 13:58:16', '2022-10-02 14:11:12', NULL, NULL),
(33, 1, 8, 1, 1, 100.00, 89.00, 50.00, '', 1, 1, 1, '2022-10-02 13:59:15', '2022-10-02 14:14:14', NULL, NULL),
(34, 2, 8, 1, 1, 100.00, 86.00, 50.00, '', 1, 1, 1, '2022-10-02 13:59:15', '2022-10-02 14:14:14', NULL, NULL),
(35, 3, 8, 1, 1, 100.00, 75.00, 50.00, '', 1, 1, 1, '2022-10-02 13:59:15', '2022-10-02 14:14:14', NULL, NULL),
(36, 4, 8, 1, 1, 100.00, 78.00, 50.00, '', 1, 1, 1, '2022-10-02 13:59:15', '2022-10-02 14:14:14', NULL, NULL),
(37, 1, 3, 1, 1, 100.00, 86.00, 50.00, '', 1, 1, 1, '2022-10-02 13:59:24', '2022-10-02 14:14:29', NULL, NULL),
(38, 2, 3, 1, 1, 100.00, 87.00, 50.00, '', 1, 1, 1, '2022-10-02 13:59:24', '2022-10-02 14:14:29', NULL, NULL),
(39, 3, 3, 1, 1, 100.00, 75.00, 50.00, '', 1, 1, 1, '2022-10-02 13:59:24', '2022-10-02 14:14:29', NULL, NULL),
(40, 4, 3, 1, 1, 100.00, 57.00, 50.00, '', 1, 1, 1, '2022-10-02 13:59:24', '2022-10-02 14:14:29', NULL, NULL),
(41, 1, 3, 2, 1, 50.00, 38.00, 20.00, '', 1, 1, 1, '2022-10-02 13:59:31', '2022-10-02 14:15:59', NULL, NULL),
(42, 2, 3, 2, 1, 50.00, 37.00, 20.00, '', 1, 1, 1, '2022-10-02 13:59:31', '2022-10-02 14:15:59', NULL, NULL),
(43, 3, 3, 2, 1, 50.00, 29.00, 20.00, '', 1, 1, 1, '2022-10-02 13:59:31', '2022-10-02 14:15:59', NULL, NULL),
(44, 4, 3, 2, 1, 50.00, 48.00, 20.00, '', 1, 1, 1, '2022-10-02 13:59:31', '2022-10-02 14:15:59', NULL, NULL),
(45, 1, 4, 1, 1, 100.00, 68.00, 50.00, '', 1, 1, 1, '2022-10-02 13:59:59', '2022-10-02 14:14:44', NULL, NULL),
(46, 2, 4, 1, 1, 100.00, 45.00, 50.00, '', 1, 1, 1, '2022-10-02 13:59:59', '2022-10-02 14:14:44', NULL, NULL),
(47, 3, 4, 1, 1, 100.00, 78.00, 50.00, '', 1, 1, 1, '2022-10-02 13:59:59', '2022-10-02 14:14:44', NULL, NULL),
(48, 4, 4, 1, 1, 100.00, 49.00, 50.00, '', 1, 1, 1, '2022-10-02 13:59:59', '2022-10-02 14:14:44', NULL, NULL),
(49, 1, 6, 1, 1, 100.00, 67.00, 50.00, '', 1, 1, 1, '2022-10-02 14:00:07', '2022-10-02 14:15:05', NULL, NULL),
(50, 2, 6, 1, 1, 100.00, 82.00, 50.00, '', 1, 1, 1, '2022-10-02 14:00:07', '2022-10-02 14:15:05', NULL, NULL),
(51, 3, 6, 1, 1, 100.00, 76.00, 50.00, '', 1, 1, 1, '2022-10-02 14:00:07', '2022-10-02 14:15:05', NULL, NULL),
(52, 4, 6, 1, 1, 100.00, 49.00, 50.00, '', 1, 1, 1, '2022-10-02 14:00:07', '2022-10-02 14:15:05', NULL, NULL),
(53, 1, 8, 2, 1, 50.00, 36.00, 20.00, '', 1, 1, 1, '2022-10-02 14:00:16', '2022-10-02 14:15:44', NULL, NULL),
(54, 2, 8, 2, 1, 50.00, 45.00, 20.00, '', 1, 1, 1, '2022-10-02 14:00:16', '2022-10-02 14:15:44', NULL, NULL),
(55, 3, 8, 2, 1, 50.00, 48.00, 20.00, '', 1, 1, 1, '2022-10-02 14:00:16', '2022-10-02 14:15:44', NULL, NULL),
(56, 4, 8, 2, 1, 50.00, 27.00, 20.00, '', 1, 1, 1, '2022-10-02 14:00:16', '2022-10-02 14:15:44', NULL, NULL),
(57, 1, 4, 2, 1, 50.00, 35.00, 20.00, '', 1, 1, 1, '2022-10-02 14:00:28', '2022-10-02 14:16:16', NULL, NULL),
(58, 2, 4, 2, 1, 50.00, 27.00, 20.00, '', 1, 1, 1, '2022-10-02 14:00:28', '2022-10-02 14:16:16', NULL, NULL),
(59, 3, 4, 2, 1, 50.00, 49.00, 20.00, '', 1, 1, 1, '2022-10-02 14:00:28', '2022-10-02 14:16:16', NULL, NULL),
(60, 4, 4, 2, 1, 50.00, 46.00, 20.00, '', 1, 1, 1, '2022-10-02 14:00:28', '2022-10-02 14:16:16', NULL, NULL),
(61, 1, 6, 2, 1, 50.00, 43.00, 20.00, '', 1, 1, 1, '2022-10-02 14:00:36', '2022-10-02 14:16:32', NULL, NULL),
(62, 2, 6, 2, 1, 50.00, 35.00, 20.00, '', 1, 1, 1, '2022-10-02 14:00:36', '2022-10-02 14:16:32', NULL, NULL),
(63, 3, 6, 2, 1, 50.00, 36.00, 20.00, '', 1, 1, 1, '2022-10-02 14:00:36', '2022-10-02 14:16:32', NULL, NULL),
(64, 4, 6, 2, 1, 50.00, 47.00, 20.00, '', 1, 1, 1, '2022-10-02 14:00:36', '2022-10-02 14:16:32', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exam_routines`
--

DROP TABLE IF EXISTS `exam_routines`;
CREATE TABLE IF NOT EXISTS `exam_routines` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `exam_type_id` int UNSIGNED NOT NULL,
  `session_id` int UNSIGNED NOT NULL,
  `program_id` int UNSIGNED NOT NULL,
  `semester_id` int UNSIGNED NOT NULL,
  `section_id` int UNSIGNED NOT NULL,
  `subject_id` bigint UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exam_routines_exam_type_id_foreign` (`exam_type_id`),
  KEY `exam_routines_session_id_foreign` (`session_id`),
  KEY `exam_routines_program_id_foreign` (`program_id`),
  KEY `exam_routines_semester_id_foreign` (`semester_id`),
  KEY `exam_routines_section_id_foreign` (`section_id`),
  KEY `exam_routines_subject_id_foreign` (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_routines`
--

INSERT INTO `exam_routines` (`id`, `exam_type_id`, `session_id`, `program_id`, `semester_id`, `section_id`, `subject_id`, `date`, `start_time`, `end_time`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 2, 1, 1, 5, '2022-10-05', '12:14:00', '14:14:00', 1, '2022-10-03 06:14:21', '2022-10-03 06:14:21'),
(2, 1, 3, 2, 1, 1, 4, '2022-10-12', '12:30:00', '14:30:00', 1, '2022-10-03 06:30:46', '2022-10-03 06:30:46'),
(3, 1, 3, 2, 1, 1, 3, '2022-10-14', '12:34:00', '14:34:00', 1, '2022-10-03 06:34:42', '2022-10-03 06:34:42'),
(4, 1, 3, 2, 1, 1, 6, '2022-10-16', '12:35:00', '14:35:00', 1, '2022-10-03 06:35:25', '2022-10-03 06:35:25'),
(5, 1, 4, 2, 1, 1, 5, '2022-10-08', '12:35:00', '14:36:00', 1, '2022-10-03 06:36:04', '2022-10-03 06:36:04'),
(6, 1, 4, 2, 1, 1, 3, '2022-10-10', '12:36:00', '14:36:00', 1, '2022-10-03 06:36:30', '2022-10-03 06:36:30'),
(7, 1, 4, 2, 1, 1, 4, '2022-10-12', '12:36:00', '14:37:00', 1, '2022-10-03 06:37:07', '2022-10-03 06:37:07'),
(8, 1, 4, 2, 1, 1, 6, '2022-10-14', '12:37:00', '14:37:00', 1, '2022-10-03 06:37:48', '2022-10-03 06:37:48'),
(9, 1, 3, 3, 1, 1, 8, '2022-10-08', '12:38:00', '14:38:00', 1, '2022-10-03 06:38:40', '2022-10-03 06:38:40'),
(10, 1, 3, 3, 1, 1, 3, '2022-10-10', '12:39:00', '14:39:00', 1, '2022-10-03 06:39:35', '2022-10-03 06:39:35'),
(11, 1, 3, 3, 1, 1, 4, '2022-10-12', '12:39:00', '14:40:00', 1, '2022-10-03 06:40:05', '2022-10-03 06:40:05'),
(12, 1, 3, 3, 1, 1, 6, '2022-10-14', '12:40:00', '14:40:00', 1, '2022-10-03 06:41:26', '2022-10-03 06:41:26'),
(13, 1, 4, 3, 2, 1, 9, '2022-10-08', '12:43:00', '14:43:00', 1, '2022-10-03 06:43:19', '2022-10-03 06:43:19'),
(14, 1, 4, 3, 2, 1, 2, '2022-10-10', '12:43:00', '14:43:00', 1, '2022-10-03 06:43:44', '2022-10-03 06:43:44'),
(15, 1, 4, 3, 2, 1, 7, '2022-10-12', '12:44:00', '14:44:00', 1, '2022-10-03 06:44:38', '2022-10-03 06:44:38'),
(16, 1, 4, 3, 2, 1, 1, '2022-10-14', '12:45:00', '14:45:00', 1, '2022-10-03 06:45:48', '2022-10-03 06:45:48'),
(17, 1, 4, 3, 1, 1, 8, '2022-10-10', '12:47:00', '14:47:00', 1, '2022-10-03 06:47:15', '2022-10-03 06:47:15'),
(18, 1, 4, 3, 1, 1, 3, '2022-10-12', '12:47:00', '14:47:00', 1, '2022-10-03 06:47:35', '2022-10-03 06:47:35'),
(19, 1, 4, 3, 1, 1, 4, '2022-10-14', '12:48:00', '12:48:00', 1, '2022-10-03 06:48:09', '2022-10-03 06:48:09'),
(20, 1, 4, 3, 1, 1, 6, '2022-10-16', '12:48:00', '14:48:00', 1, '2022-10-03 06:48:54', '2022-10-04 07:48:17');

-- --------------------------------------------------------

--
-- Table structure for table `exam_routine_room`
--

DROP TABLE IF EXISTS `exam_routine_room`;
CREATE TABLE IF NOT EXISTS `exam_routine_room` (
  `exam_routine_id` bigint UNSIGNED NOT NULL,
  `room_id` int UNSIGNED NOT NULL,
  KEY `exam_routine_room_exam_routine_id_foreign` (`exam_routine_id`),
  KEY `exam_routine_room_room_id_foreign` (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_routine_room`
--

INSERT INTO `exam_routine_room` (`exam_routine_id`, `room_id`) VALUES
(1, 2),
(1, 4),
(2, 5),
(2, 4),
(3, 4),
(4, 5),
(5, 5),
(5, 4),
(6, 5),
(7, 2),
(7, 4),
(8, 2),
(8, 3),
(9, 5),
(9, 4),
(10, 1),
(10, 3),
(11, 2),
(12, 2),
(12, 5),
(13, 4),
(14, 5),
(14, 4),
(15, 1),
(15, 5),
(16, 1),
(16, 3),
(17, 2),
(17, 4),
(18, 5),
(18, 4),
(19, 1),
(20, 2),
(20, 4);

-- --------------------------------------------------------

--
-- Table structure for table `exam_routine_user`
--

DROP TABLE IF EXISTS `exam_routine_user`;
CREATE TABLE IF NOT EXISTS `exam_routine_user` (
  `exam_routine_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  KEY `exam_routine_user_exam_routine_id_foreign` (`exam_routine_id`),
  KEY `exam_routine_user_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_routine_user`
--

INSERT INTO `exam_routine_user` (`exam_routine_id`, `user_id`) VALUES
(1, 3),
(1, 5),
(2, 4),
(2, 5),
(3, 4),
(4, 4),
(4, 7),
(5, 4),
(5, 7),
(6, 5),
(6, 7),
(7, 3),
(7, 4),
(8, 3),
(9, 4),
(9, 7),
(10, 3),
(10, 7),
(11, 3),
(11, 7),
(12, 4),
(13, 4),
(13, 5),
(14, 4),
(15, 3),
(15, 7),
(16, 4),
(16, 7),
(17, 3),
(17, 4),
(18, 5),
(19, 3),
(19, 7),
(20, 5),
(20, 7);

-- --------------------------------------------------------

--
-- Table structure for table `exam_types`
--

DROP TABLE IF EXISTS `exam_types`;
CREATE TABLE IF NOT EXISTS `exam_types` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marks` decimal(5,2) NOT NULL,
  `contribution` decimal(5,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `exam_types_title_unique` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_types`
--

INSERT INTO `exam_types` (`id`, `title`, `marks`, `contribution`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Final Exam', 100.00, 50.00, NULL, 1, NULL, '2024-09-30 12:37:21'),
(2, 'Midterm Exam', 50.00, 20.00, NULL, 1, NULL, '2024-09-30 12:37:42'),
(3, 'Test Exam', 20.00, 0.00, NULL, 1, NULL, '2024-09-30 12:37:21');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
CREATE TABLE IF NOT EXISTS `expenses` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `date` date NOT NULL,
  `payment_method` int DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `attach` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `expenses_category_id_foreign` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `category_id`, `title`, `invoice_id`, `amount`, `date`, `payment_method`, `note`, `attach`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `reference`) VALUES
(1, 1, 'Beatae corporis sit', '874596', 954.00, '2020-07-07', NULL, 'Voluptas incidunt a', NULL, 1, 1, 1, '2022-10-01 13:22:35', '2022-10-01 13:24:33', NULL),
(2, 4, 'Neque architecto aut', '89654', 841.00, '2020-08-09', NULL, 'Officiis dolor fugia', NULL, 1, 1, 1, '2022-10-01 13:22:50', '2022-10-01 13:24:17', NULL),
(3, 3, 'Pizza for all Staffs', '987456', 544.00, '2021-05-08', NULL, 'Sint non ullamco eum', 'background-border_1664652223.png', 1, 1, 1, '2022-10-01 13:23:43', '2022-10-01 13:24:02', NULL),
(4, 5, 'Voluptate qui ex cup', '98654', 740.00, '2022-01-22', NULL, 'Qui cumque in aut ma', NULL, 1, 1, NULL, '2022-10-01 13:25:03', '2022-10-01 13:25:03', NULL),
(5, 1, 'Ut laboriosam eum e', '87459', 740.00, '2022-04-28', 4, 'Sequi perspiciatis', NULL, 1, 1, 1, '2022-10-01 13:25:25', '2023-02-13 12:06:11', NULL),
(6, 2, 'Quia inventore ex co', '89456', 214.00, '2019-12-19', NULL, 'Sint dolorem sit si', 'background-border_1664652398.png', 1, 1, NULL, '2022-10-01 13:26:38', '2022-10-01 13:26:38', NULL),
(7, 2, 'Tempor voluptates no', '57854', 961.00, '2023-02-10', 5, 'Et voluptas earum ad', NULL, 1, 1, 1, '2023-02-13 12:07:13', '2023-02-13 12:07:29', NULL),
(8, 4, 'Tempor qui id ea non', '4454', 844.00, '2023-08-12', 5, 'Occaecat ut enim con', NULL, 1, 1, NULL, '2023-08-25 06:34:50', '2023-08-25 06:34:50', 'Facere exercitation'),
(9, 1, 'Voluptatibus sint so', '46546', 920.00, '2023-05-09', 3, 'Exercitationem volup', NULL, 1, 1, 1, '2023-08-25 06:43:48', '2023-08-25 06:43:59', 'Omnis velit dolores');

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

DROP TABLE IF EXISTS `expense_categories`;
CREATE TABLE IF NOT EXISTS `expense_categories` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `expense_categories_title_unique` (`title`),
  UNIQUE KEY `expense_categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Electricity BIll', 'electricity-bill', NULL, 1, '2022-09-30 14:09:42', '2022-09-30 14:09:42'),
(2, 'Internet Bill', 'internet-bill', NULL, 1, '2022-09-30 14:10:08', '2022-09-30 14:10:08'),
(3, 'Snacks', 'snacks', NULL, 1, '2022-09-30 14:10:40', '2022-09-30 14:10:40'),
(4, 'Stationery Purchase', 'stationery-purchase', NULL, 1, '2022-10-01 04:11:52', '2022-10-01 04:11:52'),
(5, 'Flower', 'flower', NULL, 1, '2022-10-01 04:12:06', '2022-10-01 04:12:06');

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

DROP TABLE IF EXISTS `faculties`;
CREATE TABLE IF NOT EXISTS `faculties` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shortcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `faculties_title_unique` (`title`),
  UNIQUE KEY `faculties_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`id`, `title`, `slug`, `shortcode`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Faculty of Economics', 'faculty-of-economics', NULL, 0, '2022-09-30 12:22:42', '2022-10-02 12:49:43'),
(2, 'Faculty of Engineering', 'faculty-of-engineering', NULL, 1, '2022-09-30 12:22:48', '2022-09-30 12:22:48'),
(3, 'Faculty of Humanities', 'faculty-of-humanities', NULL, 1, '2022-09-30 12:23:07', '2022-09-30 12:23:07'),
(4, 'Faculty of Political Science', 'faculty-of-political-science', NULL, 1, '2022-09-30 12:23:38', '2022-09-30 12:33:41');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
CREATE TABLE IF NOT EXISTS `faqs` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `language_id` int UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `faqs_title_unique` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `language_id`, `title`, `description`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'What is the minimum qualification for admission?', 'Our community is being called to reimagine the future. As the only university where a renowned design school comes together with premier colleges, we are making learning more relevant and transformational. We are enriched by the wide range.', NULL, 1, '2023-08-24 15:56:49', '2023-08-24 15:56:49'),
(2, 1, 'What the required document for admission?', 'Our community is being called to reimagine the future. As the only university where a renowned design school comes together with premier colleges, we are making learning more relevant and transformational. We are enriched by the wide range.', NULL, 1, '2023-08-24 15:57:23', '2023-08-24 15:57:23'),
(3, 1, 'What is the admission process?', 'Our community is being called to reimagine the future. As the only university where a renowned design school comes together with premier colleges, we are making learning more relevant and transformational. We are enriched by the wide range.', NULL, 1, '2023-08-24 15:57:54', '2023-08-24 15:57:54'),
(4, 1, 'How to apply for under graduation?', 'Our community is being called to reimagine the future. As the only university where a renowned design school comes together with premier colleges, we are making learning more relevant and transformational. We are enriched by the wide range.', NULL, 1, '2023-08-24 15:58:32', '2023-08-24 15:58:32'),
(5, 1, 'How much is admission fees?', 'Our community is being called to reimagine the future. As the only university where a renowned design school comes together with premier colleges, we are making learning more relevant and transformational. We are enriched by the wide range.', NULL, 1, '2023-08-24 15:59:16', '2023-08-24 15:59:16');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
CREATE TABLE IF NOT EXISTS `features` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `language_id` int UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attach` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `features_title_unique` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `language_id`, `title`, `description`, `icon`, `attach`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Education Services', 'Seamlessly visualize quality ellectual capital without superior collaboration and idea sharing listically', NULL, NULL, 1, '2023-08-24 15:54:29', '2023-08-24 15:54:29'),
(2, 1, 'International Hubs', 'Seamlessly visualize quality ellectual capital without superior collaboration and idea sharing listically', NULL, NULL, 1, '2023-08-24 15:54:48', '2023-08-24 15:54:48'),
(3, 1, 'Bachelor’s and Master’s', 'Seamlessly visualize quality ellectual capital without superior collaboration and idea sharing listically', NULL, NULL, 1, '2023-08-24 15:55:08', '2023-08-24 15:55:08');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

DROP TABLE IF EXISTS `fees`;
CREATE TABLE IF NOT EXISTS `fees` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_enroll_id` bigint UNSIGNED NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `fee_amount` double(10,2) NOT NULL,
  `fine_amount` double(10,2) NOT NULL DEFAULT '0.00',
  `discount_amount` double(10,2) NOT NULL DEFAULT '0.00',
  `paid_amount` double(10,2) NOT NULL,
  `assign_date` date NOT NULL,
  `due_date` date NOT NULL,
  `pay_date` date DEFAULT NULL,
  `payment_method` int DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '0' COMMENT '0 Unpaid, 1 Paid',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fees_student_enroll_id_foreign` (`student_enroll_id`),
  KEY `fees_category_id_foreign` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id`, `student_enroll_id`, `category_id`, `fee_amount`, `fine_amount`, `discount_amount`, `paid_amount`, `assign_date`, `due_date`, `pay_date`, `payment_method`, `note`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 3500.00, 0.00, 300.00, 3200.00, '2022-10-03', '2022-10-13', '2022-10-04', 3, NULL, 1, 1, 1, '2022-10-03 12:31:20', '2022-10-04 09:22:54'),
(2, 2, 1, 3500.00, 0.00, 350.00, 3150.00, '2022-10-03', '2022-10-13', NULL, NULL, NULL, 0, 1, 1, '2022-10-03 12:31:20', '2022-10-04 09:22:16'),
(3, 3, 1, 3500.00, 0.00, 0.00, 0.00, '2022-10-03', '2022-10-13', NULL, NULL, NULL, 2, 1, 1, '2022-10-03 12:31:20', '2022-10-03 14:24:47'),
(4, 4, 1, 3500.00, 0.00, 300.00, 3200.00, '2022-10-03', '2022-10-13', '2022-10-04', 5, 'Online', 1, 1, 1, '2022-10-03 12:31:20', '2022-10-04 09:23:56'),
(5, 7, 1, 4500.00, 0.00, 450.00, 4050.00, '2022-10-03', '2022-10-03', '2022-10-03', 2, NULL, 1, NULL, 1, '2022-10-03 13:38:36', '2022-10-03 13:39:15'),
(6, 5, 2, 2000.00, 0.00, 0.00, 0.00, '2022-10-04', '2022-10-20', NULL, NULL, NULL, 0, 1, NULL, '2022-10-04 07:26:59', '2022-10-04 07:26:59'),
(7, 6, 2, 2000.00, 0.00, 0.00, 0.00, '2022-10-04', '2022-10-20', NULL, NULL, NULL, 0, 1, NULL, '2022-10-04 07:26:59', '2022-10-04 07:26:59'),
(8, 7, 2, 2000.00, 0.00, 0.00, 0.00, '2022-10-04', '2022-10-20', NULL, NULL, NULL, 0, 1, NULL, '2022-10-04 07:26:59', '2022-10-04 07:26:59'),
(9, 8, 2, 2000.00, 0.00, 0.00, 0.00, '2022-10-04', '2022-10-20', NULL, NULL, NULL, 0, 1, NULL, '2022-10-04 07:26:59', '2022-10-04 07:26:59'),
(10, 9, 2, 2000.00, 0.00, 200.00, 1800.00, '2022-10-04', '2022-10-20', '2023-08-25', 2, NULL, 1, 1, 1, '2022-10-04 07:26:59', '2023-08-25 06:29:56'),
(11, 10, 2, 2000.00, 0.00, 0.00, 0.00, '2022-10-04', '2022-10-20', NULL, NULL, NULL, 0, 1, NULL, '2022-10-04 07:26:59', '2022-10-04 07:26:59'),
(12, 11, 2, 2000.00, 0.00, 0.00, 0.00, '2022-10-04', '2022-10-20', NULL, NULL, NULL, 0, 1, NULL, '2022-10-04 07:26:59', '2022-10-04 07:26:59'),
(13, 12, 2, 2000.00, 0.00, 200.00, 1800.00, '2022-10-04', '2022-10-20', '2022-10-04', 4, NULL, 1, 1, 1, '2022-10-04 07:26:59', '2022-10-04 10:23:58'),
(14, 13, 2, 2000.00, 0.00, 200.00, 1800.00, '2022-10-04', '2022-10-20', '2023-08-25', 3, NULL, 1, 1, 1, '2022-10-04 07:26:59', '2023-08-25 06:29:24'),
(15, 14, 2, 2000.00, 0.00, 200.00, 1800.00, '2022-10-04', '2022-10-20', '2022-10-04', 1, NULL, 1, 1, 1, '2022-10-04 07:26:59', '2022-10-04 10:11:26'),
(16, 15, 2, 2000.00, 0.00, 0.00, 0.00, '2022-10-04', '2022-10-20', NULL, NULL, NULL, 0, 1, NULL, '2022-10-04 07:26:59', '2022-10-04 07:26:59'),
(17, 16, 2, 2000.00, 0.00, 200.00, 1800.00, '2022-10-04', '2022-10-20', '2022-10-04', 3, NULL, 1, 1, 1, '2022-10-04 07:26:59', '2022-10-04 10:11:18'),
(18, 17, 2, 2000.00, 0.00, 0.00, 0.00, '2022-10-04', '2022-10-20', NULL, NULL, NULL, 0, 1, NULL, '2022-10-04 07:26:59', '2022-10-04 07:26:59'),
(19, 18, 2, 2000.00, 0.00, 200.00, 1800.00, '2022-10-04', '2022-10-20', '2022-10-04', 2, 'Testing', 1, 1, 1, '2022-10-04 07:26:59', '2022-10-04 09:21:36'),
(20, 5, 3, 2000.00, 0.00, 200.00, 1800.00, '2023-02-13', '2023-02-28', '2023-02-13', 1, 'Paid', 1, 1, 1, '2023-02-13 11:53:18', '2023-02-13 11:55:00'),
(21, 6, 3, 2000.00, 0.00, 0.00, 0.00, '2023-02-13', '2023-02-28', NULL, NULL, NULL, 0, 1, NULL, '2023-02-13 11:53:18', '2023-02-13 11:53:18'),
(22, 7, 3, 2000.00, 0.00, 0.00, 0.00, '2023-02-13', '2023-02-28', NULL, NULL, NULL, 0, 1, NULL, '2023-02-13 11:53:18', '2023-02-13 11:53:18'),
(23, 8, 3, 2000.00, 0.00, 200.00, 1800.00, '2023-02-13', '2023-02-28', '2023-02-13', 2, NULL, 1, 1, 1, '2023-02-13 11:53:18', '2023-02-13 11:54:05'),
(24, 17, 3, 2000.00, 0.00, 0.00, 0.00, '2023-02-13', '2023-02-28', NULL, NULL, NULL, 0, 1, NULL, '2023-02-13 11:53:18', '2023-02-13 11:53:18'),
(25, 18, 3, 350.00, 0.00, 0.00, 0.00, '2024-09-30', '2024-09-30', NULL, NULL, NULL, 0, 1, NULL, '2024-09-30 12:49:30', '2024-09-30 12:49:30');

-- --------------------------------------------------------

--
-- Table structure for table `fees_categories`
--

DROP TABLE IF EXISTS `fees_categories`;
CREATE TABLE IF NOT EXISTS `fees_categories` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fees_categories_title_unique` (`title`),
  UNIQUE KEY `fees_categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees_categories`
--

INSERT INTO `fees_categories` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admission Fees', 'admission-fees', NULL, 1, NULL, '2022-10-01 04:21:10'),
(2, 'Semester Fees', 'semester-fees', NULL, 1, NULL, '2022-10-01 04:21:21'),
(3, 'Exam Fees', 'exam-fees', NULL, 1, NULL, '2022-10-01 04:21:16');

-- --------------------------------------------------------

--
-- Table structure for table `fees_category_fees_discount`
--

DROP TABLE IF EXISTS `fees_category_fees_discount`;
CREATE TABLE IF NOT EXISTS `fees_category_fees_discount` (
  `fees_category_id` int UNSIGNED NOT NULL,
  `fees_discount_id` int UNSIGNED NOT NULL,
  KEY `fees_category_fees_discount_fees_category_id_foreign` (`fees_category_id`),
  KEY `fees_category_fees_discount_fees_discount_id_foreign` (`fees_discount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees_category_fees_discount`
--

INSERT INTO `fees_category_fees_discount` (`fees_category_id`, `fees_discount_id`) VALUES
(3, 3),
(2, 3),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `fees_category_fees_fine`
--

DROP TABLE IF EXISTS `fees_category_fees_fine`;
CREATE TABLE IF NOT EXISTS `fees_category_fees_fine` (
  `fees_category_id` int UNSIGNED NOT NULL,
  `fees_fine_id` int UNSIGNED NOT NULL,
  KEY `fees_category_fees_fine_fees_category_id_foreign` (`fees_category_id`),
  KEY `fees_category_fees_fine_fees_fine_id_foreign` (`fees_fine_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees_category_fees_fine`
--

INSERT INTO `fees_category_fees_fine` (`fees_category_id`, `fees_fine_id`) VALUES
(1, 1),
(3, 1),
(2, 1),
(1, 2),
(3, 2),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `fees_discounts`
--

DROP TABLE IF EXISTS `fees_discounts`;
CREATE TABLE IF NOT EXISTS `fees_discounts` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `type` int NOT NULL DEFAULT '1' COMMENT '1 Fixed & 2 Percentange',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees_discounts`
--

INSERT INTO `fees_discounts` (`id`, `title`, `start_date`, `end_date`, `amount`, `type`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Winter Discount', '2022-10-03', '2022-10-31', 300.00, 1, 1, '2022-10-03 13:14:13', '2022-10-04 08:50:10'),
(3, 'Covid-19 Discount', '2022-10-04', '2023-10-04', 10.00, 2, 1, '2022-10-04 08:48:04', '2022-10-04 08:50:20');

-- --------------------------------------------------------

--
-- Table structure for table `fees_discount_status_type`
--

DROP TABLE IF EXISTS `fees_discount_status_type`;
CREATE TABLE IF NOT EXISTS `fees_discount_status_type` (
  `fees_discount_id` int UNSIGNED NOT NULL,
  `status_type_id` int UNSIGNED NOT NULL,
  KEY `fees_discount_status_type_fees_discount_id_foreign` (`fees_discount_id`),
  KEY `fees_discount_status_type_status_type_id_foreign` (`status_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees_discount_status_type`
--

INSERT INTO `fees_discount_status_type` (`fees_discount_id`, `status_type_id`) VALUES
(2, 2),
(2, 7),
(2, 4),
(2, 1),
(2, 3),
(2, 5),
(2, 6),
(3, 2),
(3, 7),
(3, 4),
(3, 1),
(3, 3),
(3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `fees_fines`
--

DROP TABLE IF EXISTS `fees_fines`;
CREATE TABLE IF NOT EXISTS `fees_fines` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `start_day` int NOT NULL,
  `end_day` int NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `type` int NOT NULL DEFAULT '1' COMMENT '1 Fixed, 2 Percentage',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees_fines`
--

INSERT INTO `fees_fines` (`id`, `start_day`, `end_day`, `amount`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 15.00, 2, 1, '2022-09-30 13:58:24', '2022-09-30 13:58:24'),
(2, 6, 30, 500.00, 1, 1, '2022-09-30 13:58:59', '2022-09-30 13:58:59');

-- --------------------------------------------------------

--
-- Table structure for table `fees_masters`
--

DROP TABLE IF EXISTS `fees_masters`;
CREATE TABLE IF NOT EXISTS `fees_masters` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int UNSIGNED NOT NULL,
  `faculty_id` int UNSIGNED DEFAULT NULL,
  `program_id` int UNSIGNED DEFAULT NULL,
  `session_id` int UNSIGNED DEFAULT NULL,
  `semester_id` int UNSIGNED DEFAULT NULL,
  `section_id` int UNSIGNED DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `assign_date` date NOT NULL,
  `due_date` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` int NOT NULL DEFAULT '1' COMMENT '1 Fixed, 2 Per Credit',
  PRIMARY KEY (`id`),
  KEY `fees_masters_category_id_foreign` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees_masters`
--

INSERT INTO `fees_masters` (`id`, `category_id`, `faculty_id`, `program_id`, `session_id`, `semester_id`, `section_id`, `amount`, `assign_date`, `due_date`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `type`) VALUES
(1, 1, 2, 3, 3, 0, 0, 3500.00, '2022-10-03', '2022-10-13', 1, 1, NULL, '2022-10-03 12:31:20', '2022-10-03 12:31:20', 1),
(2, 2, 0, 0, 0, 0, 0, 2000.00, '2022-10-04', '2022-10-20', 1, 1, NULL, '2022-10-04 07:26:59', '2022-10-04 07:26:59', 1),
(3, 3, 2, 2, 0, 0, 0, 200.00, '2023-02-13', '2023-02-28', 1, 1, NULL, '2023-02-13 11:53:18', '2023-02-13 11:53:18', 2);

-- --------------------------------------------------------

--
-- Table structure for table `fees_master_student_enroll`
--

DROP TABLE IF EXISTS `fees_master_student_enroll`;
CREATE TABLE IF NOT EXISTS `fees_master_student_enroll` (
  `fees_master_id` bigint UNSIGNED NOT NULL,
  `student_enroll_id` bigint UNSIGNED NOT NULL,
  KEY `fees_master_student_enroll_fees_master_id_foreign` (`fees_master_id`),
  KEY `fees_master_student_enroll_student_enroll_id_foreign` (`student_enroll_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees_master_student_enroll`
--

INSERT INTO `fees_master_student_enroll` (`fees_master_id`, `student_enroll_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 17);

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

DROP TABLE IF EXISTS `fields`;
CREATE TABLE IF NOT EXISTS `fields` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fields_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`id`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(71, 'user_father_name', 1, NULL, NULL),
(72, 'user_mother_name', 1, NULL, NULL),
(73, 'user_joining_date', 1, NULL, NULL),
(74, 'user_ending_date', 1, NULL, NULL),
(75, 'user_emergency_phone', 1, NULL, NULL),
(76, 'user_religion', 0, NULL, NULL),
(77, 'user_caste', 0, NULL, NULL),
(78, 'user_mother_tongue', 0, NULL, NULL),
(79, 'user_nationality', 0, NULL, NULL),
(80, 'user_marital_status', 1, NULL, NULL),
(81, 'user_blood_group', 1, NULL, NULL),
(82, 'user_national_id', 1, NULL, NULL),
(83, 'user_passport_no', 1, NULL, NULL),
(84, 'user_address', 1, NULL, NULL),
(85, 'user_education', 1, NULL, NULL),
(86, 'user_epf_no', 1, NULL, NULL),
(87, 'user_bank_account', 1, NULL, NULL),
(88, 'user_signature', 1, NULL, NULL),
(89, 'user_resume', 1, NULL, NULL),
(90, 'user_joining_letter', 1, NULL, NULL),
(91, 'user_documents', 1, NULL, NULL),
(92, 'student_father_name', 1, NULL, NULL),
(93, 'student_mother_name', 1, NULL, NULL),
(94, 'student_father_occupation', 1, NULL, NULL),
(95, 'student_mother_occupation', 1, NULL, NULL),
(96, 'student_emergency_phone', 1, NULL, NULL),
(97, 'student_religion', 1, NULL, NULL),
(98, 'student_caste', 0, NULL, NULL),
(99, 'student_mother_tongue', 0, NULL, NULL),
(100, 'student_nationality', 0, NULL, NULL),
(101, 'student_marital_status', 1, NULL, NULL),
(102, 'student_blood_group', 1, NULL, NULL),
(103, 'student_national_id', 1, NULL, NULL),
(104, 'student_passport_no', 1, NULL, NULL),
(105, 'student_address', 1, NULL, NULL),
(106, 'student_school_info', 1, NULL, NULL),
(107, 'student_collage_info', 1, NULL, NULL),
(108, 'student_relatives', 1, NULL, NULL),
(109, 'student_school_transcript', 1, NULL, NULL),
(110, 'student_school_certificate', 1, NULL, NULL),
(111, 'student_collage_transcript', 1, NULL, NULL),
(112, 'student_collage_certificate', 1, NULL, NULL),
(113, 'student_photo', 1, NULL, NULL),
(114, 'student_signature', 1, NULL, NULL),
(115, 'student_documents', 1, NULL, NULL),
(116, 'application_father_name', 1, NULL, NULL),
(117, 'application_mother_name', 1, NULL, NULL),
(118, 'application_father_occupation', 1, NULL, NULL),
(119, 'application_mother_occupation', 1, NULL, NULL),
(120, 'application_emergency_phone', 0, NULL, NULL),
(121, 'application_religion', 0, NULL, NULL),
(122, 'application_caste', 0, NULL, NULL),
(123, 'application_mother_tongue', 0, NULL, NULL),
(124, 'application_nationality', 0, NULL, NULL),
(125, 'application_marital_status', 1, NULL, NULL),
(126, 'application_blood_group', 1, NULL, NULL),
(127, 'application_national_id', 1, NULL, NULL),
(128, 'application_passport_no', 1, NULL, NULL),
(129, 'application_address', 1, NULL, NULL),
(130, 'application_school_info', 1, NULL, NULL),
(131, 'application_collage_info', 1, NULL, NULL),
(132, 'application_school_transcript', 1, NULL, NULL),
(133, 'application_school_certificate', 1, NULL, NULL),
(134, 'application_collage_transcript', 1, NULL, NULL),
(135, 'application_collage_certificate', 1, NULL, NULL),
(136, 'application_photo', 1, NULL, NULL),
(137, 'application_signature', 1, NULL, NULL),
(138, 'panel_class_routine', 1, NULL, NULL),
(139, 'panel_exam_routine', 1, NULL, NULL),
(140, 'panel_attendance', 1, NULL, NULL),
(141, 'panel_leave', 1, NULL, NULL),
(142, 'panel_fees_report', 1, NULL, NULL),
(143, 'panel_online_exam', 1, NULL, NULL),
(144, 'panel_library', 1, NULL, NULL),
(145, 'panel_notice', 1, NULL, NULL),
(146, 'panel_assignment', 1, NULL, NULL),
(147, 'panel_syllabus', 1, NULL, NULL),
(148, 'panel_download', 1, NULL, NULL),
(149, 'panel_tutorial', 1, NULL, NULL),
(150, 'panel_transcript', 1, NULL, NULL),
(151, 'panel_profile', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
CREATE TABLE IF NOT EXISTS `galleries` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `language_id` int UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `attach` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `language_id`, `title`, `description`, `attach`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '01', NULL, 'protfolio_img01_1692915624.jpg', 1, '2023-08-24 16:20:24', '2023-08-24 16:20:24'),
(2, 1, '02', NULL, 'protfolio_img02_1692915631.jpg', 1, '2023-08-24 16:20:31', '2023-08-24 16:20:31'),
(3, 1, '03', NULL, 'protfolio_img03_1692915639.jpg', 1, '2023-08-24 16:20:39', '2023-08-24 16:20:39'),
(4, 1, '04', NULL, 'protfolio_img04_1692915646.jpg', 1, '2023-08-24 16:20:47', '2023-08-24 16:20:47'),
(5, 1, '05', NULL, 'protfolio_img05_1692915654.jpg', 1, '2023-08-24 16:20:55', '2023-08-24 16:20:55'),
(6, 1, '06', NULL, 'protfolio_img06_1692915663.jpg', 1, '2023-08-24 16:21:03', '2023-08-24 16:21:03');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
CREATE TABLE IF NOT EXISTS `grades` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `point` decimal(5,2) NOT NULL,
  `min_mark` decimal(5,2) NOT NULL,
  `max_mark` decimal(5,2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `grades_title_unique` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `title`, `point`, `min_mark`, `max_mark`, `status`, `created_at`, `updated_at`, `remark`) VALUES
(1, 'A', 5.00, 80.00, 100.00, 1, NULL, NULL, NULL),
(2, 'B', 4.00, 70.00, 79.99, 1, NULL, NULL, NULL),
(3, 'C', 3.00, 60.00, 69.99, 1, NULL, NULL, NULL),
(4, 'D', 2.00, 50.00, 59.99, 1, NULL, '2022-10-02 15:21:33', NULL),
(5, 'E', 1.00, 40.00, 49.99, 1, NULL, NULL, NULL),
(6, 'F', 0.00, 0.00, 39.99, 1, NULL, '2022-10-02 15:21:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hostels`
--

DROP TABLE IF EXISTS `hostels`;
CREATE TABLE IF NOT EXISTS `hostels` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int NOT NULL DEFAULT '0' COMMENT '1 Boys, 2 Girls, 3 Staff, 4 Combain',
  `capacity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warden_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warden_contact` text COLLATE utf8mb4_unicode_ci,
  `address` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hostels_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hostels`
--

INSERT INTO `hostels` (`id`, `name`, `type`, `capacity`, `warden_name`, `warden_contact`, `address`, `note`, `status`, `created_at`, `updated_at`) VALUES
(1, 'City Garden', 3, '50', NULL, NULL, 'Ut non proident pra', NULL, 1, '2023-02-13 13:04:25', '2023-02-13 13:10:40'),
(2, 'House of Mystery', 1, '150', NULL, NULL, 'Excepteur dicta magn', NULL, 1, '2023-02-13 13:04:43', '2023-02-13 13:10:47'),
(3, 'Rose and Rings', 2, '120', NULL, NULL, 'Commodo fugit quia', NULL, 1, '2023-02-13 13:05:00', '2023-02-13 13:09:47');

-- --------------------------------------------------------

--
-- Table structure for table `hostel_members`
--

DROP TABLE IF EXISTS `hostel_members`;
CREATE TABLE IF NOT EXISTS `hostel_members` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `hostelable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hostelable_id` bigint UNSIGNED NOT NULL,
  `hostel_room_id` int UNSIGNED NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '1' COMMENT '0 Inactive, 1 Active',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hostel_members_hostelable_type_hostelable_id_index` (`hostelable_type`,`hostelable_id`),
  KEY `hostel_members_hostel_room_id_foreign` (`hostel_room_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hostel_members`
--

INSERT INTO `hostel_members` (`id`, `hostelable_type`, `hostelable_id`, `hostel_room_id`, `start_date`, `end_date`, `note`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Student', 14, 2, '2023-02-13', NULL, NULL, 1, 1, NULL, '2023-02-13 13:12:29', '2023-02-13 13:12:29'),
(2, 'App\\Models\\Student', 12, 3, '2023-02-13', NULL, NULL, 1, 1, NULL, '2023-02-13 13:12:39', '2023-02-13 13:12:39'),
(3, 'App\\Models\\Student', 10, 2, '2023-02-13', NULL, NULL, 1, 1, NULL, '2023-02-13 13:12:45', '2023-02-13 13:12:45'),
(4, 'App\\Models\\Student', 9, 1, '2023-02-13', NULL, NULL, 1, 1, NULL, '2023-02-13 13:13:00', '2023-02-13 13:13:00'),
(5, 'App\\User', 8, 5, '2023-02-13', NULL, NULL, 1, 1, NULL, '2023-02-13 13:13:32', '2023-02-13 13:13:32'),
(6, 'App\\User', 3, 6, '2023-02-13', NULL, NULL, 1, 1, NULL, '2023-02-13 13:13:37', '2023-02-13 13:13:37'),
(7, 'App\\User', 2, 6, '2023-02-13', NULL, NULL, 1, 1, NULL, '2023-02-13 13:13:42', '2023-02-13 13:13:42');

-- --------------------------------------------------------

--
-- Table structure for table `hostel_rooms`
--

DROP TABLE IF EXISTS `hostel_rooms`;
CREATE TABLE IF NOT EXISTS `hostel_rooms` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hostel_id` int UNSIGNED NOT NULL,
  `room_type_id` int UNSIGNED NOT NULL,
  `bed` int NOT NULL DEFAULT '1',
  `fee` double(10,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hostel_rooms_hostel_id_foreign` (`hostel_id`),
  KEY `hostel_rooms_room_type_id_foreign` (`room_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hostel_rooms`
--

INSERT INTO `hostel_rooms` (`id`, `name`, `hostel_id`, `room_type_id`, `bed`, `fee`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'A1', 3, 1, 2, NULL, 'Ex atque consequatur', 1, '2023-02-13 13:06:01', '2023-02-13 13:06:01'),
(2, 'A2', 2, 4, 3, NULL, 'Et ut ut sint ex rat', 1, '2023-02-13 13:06:13', '2023-02-13 13:07:29'),
(3, 'A3', 3, 4, 3, NULL, 'Fugiat aut sit nost', 1, '2023-02-13 13:06:25', '2023-02-13 13:06:25'),
(4, 'A4', 2, 2, 3, NULL, 'Sit voluptate fugia', 1, '2023-02-13 13:06:40', '2023-02-13 13:06:56'),
(5, 'A5', 1, 4, 3, NULL, 'Eveniet eu consecte', 1, '2023-02-13 13:07:16', '2023-02-13 13:07:16'),
(6, 'A6', 1, 1, 2, NULL, 'Enim quis molestias', 1, '2023-02-13 13:07:50', '2023-02-13 13:07:50');

-- --------------------------------------------------------

--
-- Table structure for table `hostel_room_types`
--

DROP TABLE IF EXISTS `hostel_room_types`;
CREATE TABLE IF NOT EXISTS `hostel_room_types` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee` double(10,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hostel_room_types_title_unique` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hostel_room_types`
--

INSERT INTO `hostel_room_types` (`id`, `title`, `fee`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'AC 2 Bed', 2500.00, NULL, 1, '2023-02-13 13:03:07', '2023-02-13 13:03:07'),
(2, 'AC 3 Bed', 2000.00, NULL, 1, '2023-02-13 13:03:17', '2023-02-13 13:03:17'),
(3, 'Non-AC 2 Bed', 1700.00, NULL, 1, '2023-02-13 13:03:41', '2023-02-13 13:03:41'),
(4, 'Non-AC 3 Bed', 1200.00, NULL, 1, '2023-02-13 13:03:54', '2023-02-13 13:03:54');

-- --------------------------------------------------------

--
-- Table structure for table `id_card_settings`
--

DROP TABLE IF EXISTS `id_card_settings`;
CREATE TABLE IF NOT EXISTS `id_card_settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci,
  `background` text COLLATE utf8mb4_unicode_ci,
  `website_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `student_photo` tinyint(1) NOT NULL DEFAULT '0',
  `signature` tinyint(1) NOT NULL DEFAULT '0',
  `barcode` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `prefix` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_card_settings_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `id_card_settings`
--

INSERT INTO `id_card_settings` (`id`, `slug`, `title`, `subtitle`, `logo`, `background`, `website_url`, `validity`, `address`, `student_photo`, `signature`, `barcode`, `status`, `created_at`, `updated_at`, `prefix`) VALUES
(1, 'student-card', 'Your University Name', 'University Slogan', NULL, NULL, NULL, '5', 'Mirpur, Dhaka 1208', 0, 0, 0, 1, '2022-09-30 12:16:48', '2024-09-30 11:51:35', 'HTU-'),
(2, 'library-card', 'Our University Library Card', 'Our University Slogan', NULL, NULL, NULL, '5', 'Mirpur, Dhaka 1208', 0, 0, 0, 1, '2022-09-30 14:14:49', '2024-09-30 11:57:38', 'LIB-');

-- --------------------------------------------------------

--
-- Table structure for table `incomes`
--

DROP TABLE IF EXISTS `incomes`;
CREATE TABLE IF NOT EXISTS `incomes` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `date` date NOT NULL,
  `payment_method` int DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `attach` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `incomes_category_id_foreign` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `incomes`
--

INSERT INTO `incomes` (`id`, `category_id`, `title`, `invoice_id`, `amount`, `date`, `payment_method`, `note`, `attach`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `reference`) VALUES
(1, 1, 'Sint reprehenderit', '789452', 758.00, '2021-02-25', NULL, 'Praesentium et nostr', 'background-border_1664651865.png', 1, 1, NULL, '2022-10-01 13:17:45', '2022-10-01 13:17:45', NULL),
(2, 4, 'Rerum in ducimus es', '78147', 365.00, '2022-03-01', 1, 'Commodo enim maxime', NULL, 1, 1, 1, '2022-10-01 13:18:15', '2023-02-13 12:05:42', NULL),
(3, 3, 'Velit iure velit qui', '78458', 254.00, '2020-07-19', NULL, 'Aliquid at sit inci', NULL, 1, 1, 1, '2022-10-01 13:18:33', '2022-10-01 13:18:49', NULL),
(4, 5, 'Expedita voluptas pr', '758426', 905.00, '2022-05-19', 2, 'Esse laboris quis re', NULL, 1, 1, 1, '2022-10-01 13:19:17', '2023-02-13 12:05:34', NULL),
(5, 6, 'Fugiat ad non digni', '458752', 548.00, '2022-05-30', 3, 'Quidem temporibus qu', 'background-border_1664651984.png', 1, 1, 1, '2022-10-01 13:19:44', '2023-02-13 12:05:26', NULL),
(6, 3, 'Non in voluptatem A', '87458', 654.00, '2021-11-22', NULL, 'Ut deleniti voluptas', NULL, 1, 1, 1, '2022-10-01 13:20:24', '2022-10-01 13:20:36', NULL),
(7, 4, 'Illum est cumque ma', '5454', 530.00, '2023-06-17', 2, 'Dignissimos aut esse', NULL, 1, 1, NULL, '2023-08-25 06:35:17', '2023-08-25 06:35:17', 'Mollitia dolor esse'),
(8, 5, 'Ipsum dignissimos v', '4545', 690.00, '2023-05-27', 4, 'Enim omnis nesciunt', NULL, 1, 1, NULL, '2023-08-25 06:35:55', '2023-08-25 06:35:55', 'Suscipit mollit aut'),
(9, 1, 'Eum magnam non venia', '454', 670.00, '2023-07-02', 5, 'Esse molestiae est', NULL, 1, 1, NULL, '2023-08-25 06:42:55', '2023-08-25 06:42:55', 'Voluptas voluptates');

-- --------------------------------------------------------

--
-- Table structure for table `income_categories`
--

DROP TABLE IF EXISTS `income_categories`;
CREATE TABLE IF NOT EXISTS `income_categories` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `income_categories_title_unique` (`title`),
  UNIQUE KEY `income_categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `income_categories`
--

INSERT INTO `income_categories` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Shop Rent', 'shop-rent', NULL, 1, '2022-09-30 14:07:22', '2022-09-30 14:07:22'),
(2, 'Hostel Fees', 'hostel-fees', NULL, 1, '2022-09-30 14:07:58', '2022-09-30 14:07:58'),
(3, 'Waste Sell', 'waste-sell', NULL, 1, '2022-09-30 14:09:14', '2022-09-30 14:09:14'),
(4, 'Donation', 'donation', NULL, 1, '2022-10-01 04:09:18', '2022-10-01 04:09:18'),
(5, 'Book Sell', 'book-sell', NULL, 1, '2022-10-01 04:10:13', '2022-10-01 04:10:13'),
(6, 'Uniform Sell', 'uniform-sell', NULL, 1, '2022-10-01 04:10:55', '2022-10-01 04:10:55');

-- --------------------------------------------------------

--
-- Table structure for table `issue_returns`
--

DROP TABLE IF EXISTS `issue_returns`;
CREATE TABLE IF NOT EXISTS `issue_returns` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `member_id` bigint UNSIGNED NOT NULL,
  `book_id` bigint UNSIGNED NOT NULL,
  `issue_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `penalty` decimal(10,2) DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1' COMMENT '0 Lost, 1 Issued, 2 Returned',
  `issued_by` bigint UNSIGNED DEFAULT NULL,
  `received_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `issue_returns_member_id_foreign` (`member_id`),
  KEY `issue_returns_book_id_foreign` (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `issue_returns`
--

INSERT INTO `issue_returns` (`id`, `member_id`, `book_id`, `issue_date`, `due_date`, `return_date`, `penalty`, `status`, `issued_by`, `received_by`, `created_at`, `updated_at`) VALUES
(1, 3, 5, '2022-10-03', '2022-10-13', '2022-10-03', NULL, 2, 1, 1, '2022-10-03 15:05:37', '2022-10-03 15:07:20'),
(2, 5, 3, '2022-10-03', '2023-01-12', NULL, NULL, 1, 1, NULL, '2022-10-03 15:06:13', '2022-10-03 15:06:13'),
(3, 14, 4, '2022-10-03', '2022-12-21', NULL, NULL, 1, 1, NULL, '2022-10-03 15:06:34', '2022-10-03 15:06:34'),
(4, 9, 1, '2022-10-03', '2022-12-13', NULL, NULL, 1, 1, NULL, '2022-10-03 15:06:58', '2022-10-03 15:06:58'),
(5, 21, 2, '2022-10-04', '2022-11-14', NULL, NULL, 1, 1, NULL, '2022-10-04 07:41:08', '2022-10-04 07:41:08'),
(6, 21, 5, '2022-10-04', '2022-10-14', '2022-10-04', NULL, 2, 1, 1, '2022-10-04 07:42:03', '2022-10-04 07:42:24'),
(7, 6, 1, '2024-09-30', '2024-10-30', NULL, NULL, 1, 9, NULL, '2024-09-30 12:39:01', '2024-09-30 12:39:01');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `attach` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `items_name_unique` (`name`),
  KEY `items_category_id_foreign` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `category_id`, `unit`, `serial_number`, `quantity`, `description`, `attach`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Acid', 1, 'Pound', NULL, 0, NULL, NULL, 1, '2023-02-13 13:26:53', '2023-02-13 13:29:35'),
(2, 'Volt Metar', 3, 'Digital', NULL, 0, NULL, NULL, 1, '2023-02-13 13:27:57', '2023-02-13 13:29:51'),
(3, 'Cricket Bat', 2, 'M Size', NULL, 0, NULL, NULL, 1, '2023-02-13 13:28:15', '2023-02-13 13:29:01'),
(4, 'Football', 2, '5 No', NULL, 0, NULL, NULL, 1, '2023-02-13 13:28:27', '2023-02-13 13:29:10');

-- --------------------------------------------------------

--
-- Table structure for table `item_categories`
--

DROP TABLE IF EXISTS `item_categories`;
CREATE TABLE IF NOT EXISTS `item_categories` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_categories_title_unique` (`title`),
  UNIQUE KEY `item_categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_categories`
--

INSERT INTO `item_categories` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Chemistry Lab Equipment', 'chemistry-lab-equipment', NULL, 1, '2023-02-13 13:22:02', '2023-02-13 13:22:23'),
(2, 'Sports Equipment', 'sports-equipment', NULL, 1, '2023-02-13 13:22:10', '2023-02-13 13:22:31'),
(3, 'Electrical Lab Equipment', 'electrical-lab-equipment', NULL, 1, '2023-02-13 13:23:01', '2023-02-13 13:23:01');

-- --------------------------------------------------------

--
-- Table structure for table `item_issues`
--

DROP TABLE IF EXISTS `item_issues`;
CREATE TABLE IF NOT EXISTS `item_issues` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `item_id` int UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `issue_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `penalty` decimal(10,2) DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `attach` text COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '1' COMMENT '0 Lost, 1 Issued, 2 Returned',
  `issued_by` bigint UNSIGNED DEFAULT NULL,
  `received_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_issues_item_id_foreign` (`item_id`),
  KEY `item_issues_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_issues`
--

INSERT INTO `item_issues` (`id`, `item_id`, `user_id`, `quantity`, `issue_date`, `due_date`, `return_date`, `penalty`, `note`, `attach`, `status`, `issued_by`, `received_by`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 2, '2023-02-06', '2023-02-08', NULL, NULL, NULL, NULL, 1, 1, NULL, '2023-02-13 13:34:54', '2023-02-13 13:34:54'),
(2, 4, 2, 1, '2023-02-13', '2023-02-13', '2023-02-13', NULL, NULL, NULL, 2, 1, 1, '2023-02-13 13:35:32', '2023-02-13 13:35:52'),
(3, 3, 5, 2, '2023-08-25', '2023-08-31', NULL, NULL, NULL, NULL, 1, 1, NULL, '2023-08-25 06:39:32', '2023-08-25 06:39:32'),
(4, 4, 9, 1, '2024-09-30', '2024-10-30', NULL, NULL, NULL, NULL, 1, 9, NULL, '2024-09-30 12:39:45', '2024-09-30 12:39:45');

-- --------------------------------------------------------

--
-- Table structure for table `item_stocks`
--

DROP TABLE IF EXISTS `item_stocks`;
CREATE TABLE IF NOT EXISTS `item_stocks` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `item_id` int UNSIGNED NOT NULL,
  `supplier_id` int UNSIGNED NOT NULL,
  `store_id` int UNSIGNED NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `price` decimal(10,2) DEFAULT NULL,
  `date` date NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` int DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `attach` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_stocks_item_id_foreign` (`item_id`),
  KEY `item_stocks_store_id_foreign` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_stocks`
--

INSERT INTO `item_stocks` (`id`, `item_id`, `supplier_id`, `store_id`, `quantity`, `price`, `date`, `reference`, `payment_method`, `description`, `attach`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 1, 10, 650.00, '2022-10-10', NULL, 1, 'Quia et et aliquam q', NULL, 1, 1, NULL, '2023-02-13 13:30:33', '2023-02-13 13:30:33'),
(2, 4, 1, 1, 5, 350.00, '2023-01-19', NULL, 5, 'Laborum in tempore', NULL, 1, 1, NULL, '2023-02-13 13:31:19', '2023-02-13 13:31:19'),
(3, 1, 2, 2, 17, 230.00, '2023-01-21', NULL, 4, 'Cumque praesentium v', NULL, 1, 1, NULL, '2023-02-13 13:32:02', '2023-02-13 13:32:02');

-- --------------------------------------------------------

--
-- Table structure for table `item_stores`
--

DROP TABLE IF EXISTS `item_stores`;
CREATE TABLE IF NOT EXISTS `item_stores` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_stores_title_unique` (`title`),
  UNIQUE KEY `item_stores_store_no_unique` (`store_no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_stores`
--

INSERT INTO `item_stores` (`id`, `title`, `store_no`, `in_charge`, `email`, `phone`, `address`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sports Store', '001', NULL, 'rurapovome@mailinator.com', '+1 (904) 944-3416', 'Building 1', 1, '2023-02-13 13:25:30', '2023-02-13 13:25:58'),
(2, 'Lab Store', '002', NULL, 'vofujyweh@mailinator.com', '+1 (603) 435-3949', 'Building 2', 1, '2023-02-13 13:25:51', '2023-02-13 13:25:51');

-- --------------------------------------------------------

--
-- Table structure for table `item_suppliers`
--

DROP TABLE IF EXISTS `item_suppliers`;
CREATE TABLE IF NOT EXISTS `item_suppliers` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `contact_person` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_suppliers_title_unique` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_suppliers`
--

INSERT INTO `item_suppliers` (`id`, `title`, `email`, `phone`, `address`, `contact_person`, `designation`, `contact_person_email`, `contact_person_phone`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'DJ Sports Ltd', 'satudo@mailinator.com', '+1 (226) 353-9362', 'Enim nihil aperiam v', 'Habib', 'Manager', 'zenigigyqo@mailinator.com', '+1 (662) 469-3061', 'Molestias distinctio', 1, '2023-02-13 13:24:00', '2023-02-13 13:24:00'),
(2, 'SF Cemix', 'pezu@mailinator.com', '+1 (713) 437-2232', 'Id ex veniam in et', 'Saif', 'Executive', 'cusopiwu@mailinator.com', '+1 (819) 924-8146', 'Sed quis magnam elig', 1, '2023-02-13 13:24:49', '2023-02-13 13:24:49');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE IF NOT EXISTS `languages` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `direction` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 LTR, 1 RTL',
  `default` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 Not Default, 1 Default',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `languages_name_unique` (`name`),
  UNIQUE KEY `languages_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `description`, `direction`, `default`, `status`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', NULL, 0, 1, 1, '2022-09-30 12:00:47', '2022-09-30 12:00:47');

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

DROP TABLE IF EXISTS `leaves`;
CREATE TABLE IF NOT EXISTS `leaves` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_id` int UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `review_by` bigint UNSIGNED DEFAULT NULL,
  `apply_date` date NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci,
  `attach` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `pay_type` int NOT NULL DEFAULT '1' COMMENT '1 Paid & 2 Unpaid',
  `status` int NOT NULL DEFAULT '0' COMMENT '0 Pending, 1 Approved and 2 Rejected',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `leaves_type_id_foreign` (`type_id`),
  KEY `leaves_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`id`, `type_id`, `user_id`, `review_by`, `apply_date`, `from_date`, `to_date`, `reason`, `attach`, `note`, `pay_type`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2022-10-02', '2022-10-02', '2022-10-08', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, NULL, 1, 2, '2022-10-02 12:00:39', '2022-10-02 12:02:46'),
(2, 2, 1, 1, '2022-10-02', '2022-10-20', '2022-10-24', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'book-covers_1664733674.jpg', NULL, 2, 1, '2022-10-02 12:01:14', '2022-10-02 12:02:50');

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

DROP TABLE IF EXISTS `leave_types`;
CREATE TABLE IF NOT EXISTS `leave_types` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `limit` int DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `leave_types_title_unique` (`title`),
  UNIQUE KEY `leave_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_types`
--

INSERT INTO `leave_types` (`id`, `title`, `slug`, `limit`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Casual Leave', 'casual-leave', NULL, NULL, 1, NULL, NULL),
(2, 'Sick Leave', 'sick-leave', NULL, NULL, 1, NULL, NULL),
(3, 'Maternity Leave', 'maternity-leave', NULL, NULL, 1, NULL, NULL),
(4, 'Marriage Leave', 'marriage-leave', NULL, NULL, 1, NULL, NULL),
(5, 'Bereavement Leave', 'bereavement-leave', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `library_members`
--

DROP TABLE IF EXISTS `library_members`;
CREATE TABLE IF NOT EXISTS `library_members` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `memberable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `memberable_id` bigint UNSIGNED NOT NULL,
  `library_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `status` int NOT NULL DEFAULT '1' COMMENT '0 Inactive, 1 Active',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `library_members_memberable_type_memberable_id_index` (`memberable_type`,`memberable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `library_members`
--

INSERT INTO `library_members` (`id`, `memberable_type`, `memberable_id`, `library_id`, `date`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Student', 1, 'L1001', '2027-10-03', 1, 1, NULL, '2022-10-03 05:32:53', '2022-10-03 05:32:53'),
(2, 'App\\Models\\Student', 2, 'L1002', '2027-10-03', 0, 1, 1, '2022-10-03 05:33:11', '2022-10-03 05:42:05'),
(3, 'App\\Models\\Student', 3, 'L1003', '2027-10-03', 1, 1, NULL, '2022-10-03 05:33:18', '2022-10-03 05:33:18'),
(4, 'App\\Models\\Student', 5, 'L1004', '2027-10-03', 1, 1, NULL, '2022-10-03 05:33:48', '2022-10-03 05:33:48'),
(5, 'App\\Models\\Student', 6, 'L1005', '2027-10-03', 1, 1, NULL, '2022-10-03 05:33:57', '2022-10-03 05:33:57'),
(6, 'App\\Models\\Student', 8, 'L1006', '2027-10-03', 1, 1, NULL, '2022-10-03 05:35:11', '2022-10-03 05:35:11'),
(7, 'App\\User', 9, 'L1009', '2027-10-03', 1, 1, NULL, '2022-10-03 05:40:24', '2022-10-03 05:40:24'),
(8, 'App\\User', 8, 'L1010', '2027-10-03', 1, 1, NULL, '2022-10-03 05:40:39', '2022-10-03 05:40:39'),
(9, 'App\\User', 6, 'L1011', '2027-10-03', 1, 1, NULL, '2022-10-03 05:40:49', '2022-10-03 05:40:49'),
(10, 'App\\User', 5, 'L1012', '2027-10-03', 1, 1, NULL, '2022-10-03 05:40:59', '2022-10-03 05:40:59'),
(11, 'App\\User', 4, 'L1013', '2027-10-03', 0, 1, 1, '2022-10-03 05:41:09', '2022-10-03 05:41:49'),
(12, 'App\\User', 3, 'L1014', '2027-10-03', 1, 1, NULL, '2022-10-03 05:41:20', '2022-10-03 05:41:20'),
(13, 'App\\User', 1, 'L1015', '2027-10-03', 1, 1, NULL, '2022-10-03 05:41:29', '2022-10-03 05:41:29'),
(14, 'App\\Models\\OutsideUser', 1, 'L1016', '2027-10-03', 1, 1, NULL, '2022-10-03 05:44:53', '2022-10-03 05:44:53'),
(15, 'App\\Models\\OutsideUser', 2, 'L1017', '2027-10-03', 1, 1, NULL, '2022-10-03 05:45:41', '2022-10-03 05:45:41'),
(16, 'App\\Models\\OutsideUser', 3, 'L1018', '2027-10-03', 0, 1, 1, '2022-10-03 05:46:30', '2022-10-03 05:48:52'),
(17, 'App\\Models\\OutsideUser', 4, 'L1020', '2027-10-03', 1, 1, NULL, '2022-10-03 05:48:01', '2022-10-03 05:48:01'),
(18, 'App\\Models\\Student', 10, 'L1021', '2027-10-04', 1, 1, NULL, '2022-10-04 07:39:22', '2022-10-04 07:39:22'),
(19, 'App\\Models\\Student', 11, 'L1022', '2027-10-04', 1, 1, NULL, '2022-10-04 07:39:31', '2022-10-04 07:39:31'),
(20, 'App\\Models\\Student', 13, 'L1023', '2027-10-04', 0, 1, 1, '2022-10-04 07:39:42', '2022-10-04 07:39:45'),
(21, 'App\\Models\\Student', 14, 'L1024', '2027-10-04', 1, 1, NULL, '2022-10-04 07:39:52', '2022-10-04 07:39:52');

-- --------------------------------------------------------

--
-- Table structure for table `mail_settings`
--

DROP TABLE IF EXISTS `mail_settings`;
CREATE TABLE IF NOT EXISTS `mail_settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `driver` text COLLATE utf8mb4_unicode_ci,
  `host` text COLLATE utf8mb4_unicode_ci,
  `port` text COLLATE utf8mb4_unicode_ci,
  `username` text COLLATE utf8mb4_unicode_ci,
  `password` text COLLATE utf8mb4_unicode_ci,
  `encryption` text COLLATE utf8mb4_unicode_ci,
  `sender_email` text COLLATE utf8mb4_unicode_ci,
  `sender_name` text COLLATE utf8mb4_unicode_ci,
  `reply_email` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mail_settings`
--

INSERT INTO `mail_settings` (`id`, `driver`, `host`, `port`, `username`, `password`, `encryption`, `sender_email`, `sender_name`, `reply_email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'smtp', 'smtp.mailtrap.io', '2525', '5b1c119ce5a400', 'e177cd2e8894b5', 'tls', 'info@mail.com', 'Info Company', 'info@mail.com', 1, '2022-09-30 12:00:47', '2022-09-30 12:00:47');

-- --------------------------------------------------------

--
-- Table structure for table `marksheet_settings`
--

DROP TABLE IF EXISTS `marksheet_settings`;
CREATE TABLE IF NOT EXISTS `marksheet_settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_left` text COLLATE utf8mb4_unicode_ci,
  `header_center` text COLLATE utf8mb4_unicode_ci,
  `header_right` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `footer_left` text COLLATE utf8mb4_unicode_ci,
  `footer_center` text COLLATE utf8mb4_unicode_ci,
  `footer_right` text COLLATE utf8mb4_unicode_ci,
  `logo_left` text COLLATE utf8mb4_unicode_ci,
  `logo_right` text COLLATE utf8mb4_unicode_ci,
  `background` text COLLATE utf8mb4_unicode_ci,
  `width` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'auto',
  `height` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'auto',
  `student_photo` tinyint(1) NOT NULL DEFAULT '0',
  `barcode` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `marksheet_settings_title_unique` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marksheet_settings`
--

INSERT INTO `marksheet_settings` (`id`, `title`, `header_left`, `header_center`, `header_right`, `body`, `footer_left`, `footer_center`, `footer_right`, `logo_left`, `logo_right`, `background`, `width`, `height`, `student_photo`, `barcode`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Our University Academic Transcript', NULL, NULL, NULL, NULL, 'Controller', 'Director', 'Register', 'logo_1664613886.jpg', 'logo_1664613886.jpg', NULL, '800px', 'auto', 0, 0, 1, '2022-10-01 02:44:46', '2022-10-01 03:27:49');

-- --------------------------------------------------------

--
-- Table structure for table `meeting_schedules`
--

DROP TABLE IF EXISTS `meeting_schedules`;
CREATE TABLE IF NOT EXISTS `meeting_schedules` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `purpose` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `id_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `in_time` time DEFAULT NULL,
  `out_time` time DEFAULT NULL,
  `persons` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attach` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meeting_schedules_type_id_foreign` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meeting_schedules`
--

INSERT INTO `meeting_schedules` (`id`, `type_id`, `user_id`, `name`, `father_name`, `phone`, `email`, `address`, `purpose`, `note`, `id_no`, `token`, `date`, `in_time`, `out_time`, `persons`, `attach`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'Channing Hicks', 'Felix Conway', '+1 (169) 929-4323', 'webizigi@mailinator.com', 'Ut sed proident del', 'Fugit provident ip', 'Est quam amet nobi', '45', 'Pass-100001', '2023-10-09', '17:29:00', '08:22:00', '1', NULL, 0, 1, 1, '2023-02-13 12:30:58', '2023-08-25 07:41:26'),
(2, 2, 8, 'Elaine Guerra', 'Zeus Phelps', '+1 (274) 544-4761', 'zaja@mailinator.com', 'Aut neque saepe pari', 'Fuga Obcaecati haru', 'Est minim iste ea re', '54877', 'Pass-100002', '2023-02-13', '09:45:00', '02:04:00', '2', NULL, 1, 1, 1, '2023-02-13 12:31:57', '2023-02-13 12:37:11'),
(3, 2, 5, 'Kasimir Cooper', 'Yvonne Reid', '+1 (322) 377-7963', 'dinalezo@mailinator.com', 'Provident omnis opt', 'Perspiciatis non cu', 'Aut est molestiae od', '234', 'Pass-100003', '2024-01-25', '04:52:00', '14:49:00', '2', NULL, 3, 1, 1, '2023-08-25 07:39:50', '2023-08-25 07:41:35'),
(4, 1, 1, 'Rebekah Calderon', 'Kyle Armstrong', '+1 (928) 388-3493', 'qezug@mailinator.com', 'Irure ipsam distinct', 'Et non et consequatu', 'Aliqua Et eu velit', '35', 'Pass-100004', '2024-03-05', '23:35:00', '13:21:00', '1', NULL, 1, 1, NULL, '2023-08-25 07:40:20', '2023-08-25 07:40:20');

-- --------------------------------------------------------

--
-- Table structure for table `meeting_types`
--

DROP TABLE IF EXISTS `meeting_types`;
CREATE TABLE IF NOT EXISTS `meeting_types` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `meeting_types_title_unique` (`title`),
  UNIQUE KEY `meeting_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meeting_types`
--

INSERT INTO `meeting_types` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Board Meeting', 'board-meeting', NULL, 1, '2023-02-13 12:23:18', '2023-02-13 12:23:18'),
(2, 'Parent Teacher Meeting', 'parent-teacher-meeting', NULL, 1, '2023-02-13 12:23:34', '2023-02-13 12:23:34');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2021_06_04_092405_create_faculties_table', 1),
(5, '2021_06_04_102314_create_programs_table', 1),
(6, '2021_06_04_114619_create_batches_table', 1),
(7, '2021_06_04_120154_create_sessions_table', 1),
(8, '2021_06_04_131456_create_semesters_table', 1),
(9, '2021_06_04_132856_create_sections_table', 1),
(10, '2021_06_04_141432_create_class_rooms_table', 1),
(11, '2021_06_05_121933_create_income_categories_table', 1),
(12, '2021_06_05_125236_create_incomes_table', 1),
(13, '2021_06_05_144224_create_expense_categories_table', 1),
(14, '2021_06_05_150317_create_expenses_table', 1),
(15, '2021_06_07_152605_create_subjects_table', 1),
(16, '2021_06_07_155306_create_enroll_subjects_table', 1),
(17, '2021_06_07_160042_create_enroll_subject_subject_table', 1),
(18, '2021_06_08_102053_create_program_subject_table', 1),
(19, '2021_06_08_105550_create_batch_program_table', 1),
(20, '2021_06_08_125338_create_program_semester_table', 1),
(21, '2021_06_08_125531_create_program_class_room_table', 1),
(22, '2021_06_08_180439_create_program_session_table', 1),
(23, '2021_06_08_182844_create_program_semester_sections_table', 1),
(24, '2021_06_09_133442_create_class_routines_table', 1),
(25, '2021_06_12_153215_create_departments_table', 1),
(26, '2021_06_12_155411_create_designations_table', 1),
(27, '2021_06_13_075755_create_leave_types_table', 1),
(28, '2021_06_13_125451_create_leaves_table', 1),
(29, '2021_06_13_173512_create_work_shift_types_table', 1),
(30, '2021_06_13_175400_create_tax_settings_table', 1),
(31, '2021_06_13_193417_create_user_program_table', 1),
(32, '2021_06_15_184223_create_staff_attendances_table', 1),
(33, '2021_06_16_180912_create_staff_hourly_attendances_table', 1),
(34, '2021_06_17_083411_create_payrolls_table', 1),
(35, '2021_06_22_185503_create_jobs_table', 1),
(36, '2021_07_07_081616_create_students_table', 1),
(37, '2021_07_07_182329_create_student_relatives_table', 1),
(38, '2021_07_07_190034_create_documents_table', 1),
(39, '2021_07_07_192727_create_docables_table', 1),
(40, '2021_07_08_054948_create_student_enrolls_table', 1),
(41, '2021_07_08_172152_create_student_transfers_table', 1),
(42, '2021_07_08_195650_create_transfer_creadits_table', 1),
(43, '2021_07_09_061940_create_status_types_table', 1),
(44, '2021_07_09_092958_create_status_type_student_table', 1),
(45, '2021_07_09_163443_create_student_enroll_subject_table', 1),
(46, '2021_07_09_173413_create_student_leaves_table', 1),
(47, '2021_07_09_194126_create_student_attendances_table', 1),
(48, '2021_07_17_160726_create_events_table', 1),
(49, '2021_07_18_074323_create_notice_categories_table', 1),
(50, '2021_07_18_080209_create_notices_table', 1),
(51, '2021_07_18_105550_create_noticeables_table', 1),
(52, '2021_07_19_182908_create_email_notifies_table', 1),
(53, '2021_07_19_200327_create_s_m_s_notifies_table', 1),
(54, '2021_09_01_070002_create_exam_types_table', 1),
(55, '2021_09_01_071547_create_result_contributions_table', 1),
(56, '2021_09_01_084615_create_grades_table', 1),
(57, '2021_09_02_184433_create_exams_table', 1),
(58, '2021_09_04_101915_create_subject_markings_table', 1),
(59, '2021_09_27_183257_create_certificate_templates_table', 1),
(60, '2021_10_01_163600_create_certificates_table', 1),
(61, '2021_10_15_182241_create_marksheet_settings_table', 1),
(62, '2022_01_21_142336_create_print_settings_table', 1),
(63, '2022_01_21_170648_create_visit_purposes_table', 1),
(64, '2022_01_21_171901_create_visitors_table', 1),
(65, '2022_01_21_185105_create_postal_exchange_types_table', 1),
(66, '2022_01_21_185152_create_postal_exchanges_table', 1),
(67, '2022_01_21_185201_create_phone_logs_table', 1),
(68, '2022_01_22_103339_create_complain_types_table', 1),
(69, '2022_01_22_103551_create_complain_sources_table', 1),
(70, '2022_01_22_103657_create_complains_table', 1),
(71, '2022_01_23_103439_create_enquiry_sources_table', 1),
(72, '2022_01_23_110653_create_enquiry_references_table', 1),
(73, '2022_01_23_114509_create_enquiries_table', 1),
(74, '2022_01_24_174515_create_assignments_table', 1),
(75, '2022_01_24_179252_create_student_assignments_table', 1),
(76, '2022_01_24_181419_create_content_types_table', 1),
(77, '2022_01_25_165931_create_contents_table', 1),
(78, '2022_01_26_105511_create_contentables_table', 1),
(79, '2022_01_27_100200_create_notifications_table', 1),
(80, '2022_01_28_131433_create_book_categories_table', 1),
(81, '2022_01_28_173902_create_books_table', 1),
(82, '2022_01_29_045003_create_outside_users_table', 1),
(83, '2022_01_29_045120_create_library_members_table', 1),
(84, '2022_01_29_093915_create_issue_returns_table', 1),
(85, '2022_01_31_061950_create_notes_table', 1),
(86, '2022_02_15_173515_create_fees_categories_table', 1),
(87, '2022_02_15_182124_create_fees_masters_table', 1),
(88, '2022_02_16_100327_create_fees_master_student_enroll', 1),
(89, '2022_02_26_184930_create_fees_fines_table', 1),
(90, '2022_02_26_191642_create_fees_category_fees_fine_table', 1),
(91, '2022_03_04_172257_create_fees_discounts_table', 1),
(92, '2022_03_05_132058_create_fees_category_fees_discount_table', 1),
(93, '2022_03_05_132541_create_fees_discount_status_type_table', 1),
(94, '2022_03_05_195051_create_fees_table', 1),
(95, '2022_03_05_203440_create_transactions_table', 1),
(96, '2022_03_10_131324_create_exam_routines_table', 1),
(97, '2022_03_10_131936_create_exam_routine_user_table', 1),
(98, '2022_03_10_132124_create_exam_routine_room_table', 1),
(99, '2022_03_31_074913_create_id_card_settings_table', 1),
(100, '2022_04_01_125726_create_settings_table', 1),
(101, '2022_04_01_210417_create_languages_table', 1),
(102, '2022_04_02_144303_create_permission_tables', 1),
(103, '2022_04_03_103141_create_mail_settings_table', 1),
(104, '2022_04_03_173021_create_s_m_s_settings_table', 1),
(105, '2022_04_03_174009_create_schedule_settings_table', 1),
(106, '2022_04_04_123222_create_provinces_table', 1),
(107, '2022_04_04_173222_create_districts_table', 1),
(108, '2021_06_17_183706_create_payroll_details_table', 2),
(109, '2021_07_04_172713_create_application_settings_table', 2),
(110, '2021_07_06_121630_create_applications_table', 2),
(111, '2022_01_23_192650_create_meeting_types_table', 2),
(112, '2022_01_23_202252_create_meeting_schedules_table', 2),
(113, '2022_01_28_195224_create_book_requests_table', 2),
(114, '2022_11_20_171503_create_item_categories_table', 2),
(115, '2022_11_20_182303_create_item_stores_table', 2),
(116, '2022_11_20_185841_create_item_suppliers_table', 2),
(117, '2022_11_21_190954_create_items_table', 2),
(118, '2022_11_21_194218_create_item_stocks_table', 2),
(119, '2022_11_21_200834_create_item_issues_table', 2),
(120, '2022_12_08_140339_create_hostel_room_types_table', 2),
(121, '2022_12_08_193208_create_hostels_table', 2),
(122, '2022_12_10_203126_create_hostel_rooms_table', 2),
(123, '2022_12_14_181050_create_hostel_members_table', 2),
(124, '2022_12_22_112935_create_transport_routes_table', 2),
(125, '2022_12_23_110116_create_transport_vehicles_table', 2),
(126, '2022_12_23_112400_create_transport_route_transport_vehicle_table', 2),
(127, '2022_12_24_121402_create_transport_members_table', 2),
(128, '2022_12_29_173356_add_fields_to_tables', 2),
(129, '2023_08_12_153552_add_fields_v3_to_table', 3),
(130, '2023_08_12_174813_create_fields_table', 3),
(131, '2023_08_15_010030_create_topbar_settings_table', 3),
(132, '2023_08_15_010553_create_social_settings_table', 3),
(133, '2023_08_15_025440_create_sliders_table', 3),
(134, '2023_08_15_034340_create_features_table', 3),
(135, '2023_08_15_043734_create_about_us_table', 3),
(136, '2023_08_15_112651_create_faqs_table', 3),
(137, '2023_08_15_115731_create_testimonials_table', 3),
(138, '2023_08_15_121544_create_call_to_actions_table', 3),
(139, '2023_08_16_172019_create_galleries_table', 3),
(140, '2023_08_16_172620_create_courses_table', 3),
(141, '2023_08_16_173224_create_web_events_table', 3),
(142, '2023_08_16_173331_create_news_table', 3),
(143, '2023_08_23_142818_create_pages_table', 3),
(144, '2024_07_12_150232_create_failed_jobs_table', 4),
(145, '2024_08_29_170852_add_fields_v4_to_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(4, 'App\\User', 2),
(6, 'App\\User', 3),
(6, 'App\\User', 4),
(6, 'App\\User', 5),
(5, 'App\\User', 6),
(6, 'App\\User', 7),
(3, 'App\\User', 8),
(2, 'App\\User', 9);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `language_id` int UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `attach` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `language_id`, `title`, `slug`, `date`, `description`, `meta_title`, `meta_description`, `attach`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'With our vastly improved notifications system, users have more control', 'with-our-vastly-improved-notifications-system-users-have-more-control', '2023-07-27', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo amet set for your cool happiness for lyour loyal city.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deser unt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusant ium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit asperna tur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisq.</p>\r\n<p>&nbsp;</p>', NULL, NULL, 'inner_b1_1692916385.jpg', 1, '2023-08-24 16:30:23', '2023-08-25 05:33:37'),
(2, 1, 'There are many variations passages of like consectetur lorem ipsum available.', 'there-are-many-variations-passages-of-like-consectetur-lorem-ipsum-available', '2023-08-01', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo amet set for your cool happiness for lyour loyal city.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deser unt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusant ium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit asperna tur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisq.</p>\r\n<p>&nbsp;</p>', NULL, NULL, 'inner_b2_1692916294.jpg', 1, '2023-08-24 16:31:34', '2023-08-25 05:33:19'),
(3, 1, 'I must explain to you how all this mistaken idea of denouncing pleasure.', 'i-must-explain-to-you-how-all-this-mistaken-idea-of-denouncing-pleasure', '2023-08-24', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo amet set for your cool happiness for lyour loyal city.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deser unt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusant ium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit asperna tur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisq.</p>\r\n<p>&nbsp;</p>', NULL, NULL, 'inner_b3_1692916324.jpg', 1, '2023-08-24 16:32:04', '2023-08-24 16:32:04');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
CREATE TABLE IF NOT EXISTS `notes` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `noteable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noteable_id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `attach` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notes_noteable_type_noteable_id_index` (`noteable_type`,`noteable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `noteable_type`, `noteable_id`, `title`, `description`, `attach`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'App\\User', 7, 'Ex maxime do expedit', 'Eligendi placeat ea', NULL, 1, 1, NULL, '2022-10-02 11:56:15', '2022-10-02 11:56:15'),
(2, 'App\\User', 9, 'Nemo libero maiores', 'Est nemo irure qui e', 'book-covers_1664733426.jpg', 1, 1, 1, '2022-10-02 11:56:20', '2022-10-02 11:57:06'),
(3, 'App\\User', 8, 'Dolorum voluptatem e', 'Mollitia at odit num', NULL, 1, 1, NULL, '2022-10-02 11:56:55', '2022-10-02 11:56:55'),
(4, 'App\\Models\\Student', 3, 'Dolor aut excepturi', 'Culpa labore fugit', NULL, 1, 1, NULL, '2022-10-02 12:40:45', '2022-10-02 12:40:45'),
(5, 'App\\Models\\Student', 6, 'Magna culpa distinc', 'At ullam magni autem', 'book-covers_1664736057.jpg', 1, 1, NULL, '2022-10-02 12:40:57', '2022-10-02 12:40:57'),
(6, 'App\\Models\\Student', 4, 'Et nulla sint ut no', 'Rerum sit nostrud l', NULL, 1, 1, NULL, '2022-10-02 12:41:02', '2022-10-02 12:41:02'),
(7, 'App\\Models\\Student', 1, 'Est magnam exercita', 'Aliquid deserunt asp', 'book-cover2_1664736079.jpg', 1, 1, NULL, '2022-10-02 12:41:19', '2022-10-02 12:41:19'),
(8, 'App\\Models\\Student', 13, 'Assumenda ad corpori', 'Qui ea impedit a ex', 'background-border_1664885966.png', 1, 1, NULL, '2022-10-04 06:19:26', '2022-10-04 06:19:26');

-- --------------------------------------------------------

--
-- Table structure for table `noticeables`
--

DROP TABLE IF EXISTS `noticeables`;
CREATE TABLE IF NOT EXISTS `noticeables` (
  `notice_id` bigint NOT NULL,
  `noticeable_id` bigint NOT NULL,
  `noticeable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `noticeables`
--

INSERT INTO `noticeables` (`notice_id`, `noticeable_id`, `noticeable_type`) VALUES
(1, 4, 'App\\Models\\Student'),
(1, 3, 'App\\Models\\Student'),
(1, 2, 'App\\Models\\Student'),
(1, 1, 'App\\Models\\Student'),
(2, 14, 'App\\Models\\Student'),
(2, 12, 'App\\Models\\Student'),
(2, 11, 'App\\Models\\Student'),
(2, 10, 'App\\Models\\Student');

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

DROP TABLE IF EXISTS `notices`;
CREATE TABLE IF NOT EXISTS `notices` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `faculty_id` int UNSIGNED DEFAULT NULL,
  `program_id` int UNSIGNED DEFAULT NULL,
  `session_id` int UNSIGNED DEFAULT NULL,
  `semester_id` int UNSIGNED DEFAULT NULL,
  `section_id` int UNSIGNED DEFAULT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `notice_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date` date NOT NULL,
  `attach` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `notices_notice_no_unique` (`notice_no`),
  KEY `notices_category_id_foreign` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `faculty_id`, `program_id`, `session_id`, `semester_id`, `section_id`, `category_id`, `notice_no`, `title`, `description`, `date`, `attach`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 0, 0, 0, 4, '1001', 'Android Development Hackathon 2022', '<p>Hackathon Android App Innovation Challenge in will happen on Feb 20th 2022. ... To develop an innovative applications which can be helpful for society.</p>\r\n<p>&nbsp;</p>', '2022-10-03', 'book-covers_1664819413.jpg', 1, 1, 1, '2022-10-03 11:50:13', '2022-10-03 14:55:38'),
(2, 2, 3, 4, 1, 0, 2, '1004', 'Winter Vacation Pick On From Sunday', '<p>Winter Vacations for Sun and Scene Seekers: The Caribbean​​ The Caribbean has long drawn couples, families and friends for easy warm-weather getaways, thanks to</p>', '2022-10-04', 'Provisional Certificate-100001_1664890296.pdf', 1, 1, NULL, '2022-10-04 07:31:36', '2022-10-04 07:31:36');

-- --------------------------------------------------------

--
-- Table structure for table `notice_categories`
--

DROP TABLE IF EXISTS `notice_categories`;
CREATE TABLE IF NOT EXISTS `notice_categories` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `notice_categories_title_unique` (`title`),
  UNIQUE KEY `notice_categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notice_categories`
--

INSERT INTO `notice_categories` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Exam', 'exam', NULL, 1, '2022-09-30 14:11:08', '2022-09-30 14:11:54'),
(2, 'Vacation', 'vacation', NULL, 1, '2022-09-30 14:11:23', '2022-09-30 14:12:05'),
(3, 'Festival', 'festival', NULL, 1, '2022-09-30 14:11:41', '2022-09-30 14:12:00'),
(4, 'Competitive Event', 'competitive-event', NULL, 1, '2022-10-01 04:08:04', '2022-10-01 04:08:04');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('011f54a5-007b-47ec-8ca0-ef8d4d02377e', 'App\\Notifications\\ContentNotification', 'App\\Models\\Student', 12, '{\"id\":3,\"title\":\"2nd Class Of English\",\"type\":\"content\"}', NULL, '2022-10-04 07:22:41', '2022-10-04 07:22:41'),
('07aab651-5c90-4523-86b8-d27aae1056ec', 'App\\Notifications\\NoticeNotification', 'App\\Models\\Student', 1, '{\"id\":1,\"title\":\"Android Development Hackathon 2022\",\"type\":\"notice\"}', NULL, '2022-10-03 11:50:13', '2022-10-03 11:50:13'),
('11a62dee-3881-4ac4-8a3b-df96a73781de', 'App\\Notifications\\NoticeNotification', 'App\\Models\\Student', 10, '{\"id\":2,\"title\":\"Winter Vacation Pick On From Sunday\",\"type\":\"notice\"}', NULL, '2022-10-04 07:31:37', '2022-10-04 07:31:37'),
('141e4e0d-3663-43b1-a7be-dc7674e5928d', 'App\\Notifications\\ContentNotification', 'App\\Models\\Student', 11, '{\"id\":3,\"title\":\"2nd Class Of English\",\"type\":\"content\"}', NULL, '2022-10-04 07:22:41', '2022-10-04 07:22:41'),
('15b99a58-fcc8-4de2-a8dc-f47df77d7134', 'App\\Notifications\\AssignmentNotification', 'App\\Models\\Student', 3, '{\"id\":1,\"title\":\"Theory of relativity\",\"type\":\"assignment\"}', NULL, '2022-10-03 11:10:03', '2022-10-03 11:10:03'),
('1664d794-1262-4ee9-aca5-c3ea560e4291', 'App\\Notifications\\NoticeNotification', 'App\\Models\\Student', 4, '{\"id\":1,\"title\":\"Android Development Hackathon 2022\",\"type\":\"notice\"}', NULL, '2022-10-03 11:50:13', '2022-10-03 11:50:13'),
('1e6faade-b601-4573-8611-252bd426a5e4', 'App\\Notifications\\ContentNotification', 'App\\Models\\Student', 14, '{\"id\":3,\"title\":\"2nd Class Of English\",\"type\":\"content\"}', '2022-10-04 07:32:42', '2022-10-04 07:22:41', '2022-10-04 07:32:42'),
('27700e79-b1ef-4aea-84a5-dca35601e2c7', 'App\\Notifications\\AssignmentNotification', 'App\\Models\\Student', 14, '{\"id\":5,\"title\":\"Rules of voice change\",\"type\":\"assignment\"}', '2022-10-04 07:32:47', '2022-10-04 07:22:41', '2022-10-04 07:32:47'),
('31bf7290-9e38-4131-9f5c-7a972e49616a', 'App\\Notifications\\NoticeNotification', 'App\\Models\\Student', 14, '{\"id\":2,\"title\":\"Winter Vacation Pick On From Sunday\",\"type\":\"notice\"}', '2022-10-04 07:32:02', '2022-10-04 07:31:37', '2022-10-04 07:32:02'),
('5b2538da-38e9-4a7a-9d5e-12a5b71bdf90', 'App\\Notifications\\ContentNotification', 'App\\Models\\Student', 7, '{\"id\":1,\"title\":\"Optical Physics 1st Class\",\"type\":\"content\"}', NULL, '2022-10-03 07:12:59', '2022-10-03 07:12:59'),
('6ca44526-326d-40f7-80a2-cd99f3a77fcd', 'App\\Notifications\\AssignmentNotification', 'App\\Models\\Student', 10, '{\"id\":3,\"title\":\"Rules of Article\",\"type\":\"assignment\"}', NULL, '2022-10-04 07:22:41', '2022-10-04 07:22:41'),
('70bf8a20-bd71-403e-bd84-006b6e524a66', 'App\\Notifications\\AssignmentNotification', 'App\\Models\\Student', 1, '{\"id\":1,\"title\":\"Theory of relativity\",\"type\":\"assignment\"}', NULL, '2022-10-03 11:10:03', '2022-10-03 11:10:03'),
('785f549e-c101-40f4-b4f8-134c2cd2a0fe', 'App\\Notifications\\AssignmentNotification', 'App\\Models\\Student', 11, '{\"id\":3,\"title\":\"Rules of Article\",\"type\":\"assignment\"}', NULL, '2022-10-04 07:22:41', '2022-10-04 07:22:41'),
('839d685b-468a-459c-b7e1-8d4b74e7d5df', 'App\\Notifications\\AssignmentNotification', 'App\\Models\\Student', 8, '{\"id\":2,\"title\":\"Measurement and Height\",\"type\":\"assignment\"}', NULL, '2022-10-03 11:13:04', '2022-10-03 11:13:04'),
('93f6ddc6-d6a9-4e6d-b492-d417e1b9b2f7', 'App\\Notifications\\AssignmentNotification', 'App\\Models\\Student', 4, '{\"id\":1,\"title\":\"Theory of relativity\",\"type\":\"assignment\"}', NULL, '2022-10-03 11:10:03', '2022-10-03 11:10:03'),
('9ba811dd-0e6a-4070-b216-069614bc2b9d', 'App\\Notifications\\ContentNotification', 'App\\Models\\Student', 10, '{\"id\":3,\"title\":\"2nd Class Of English\",\"type\":\"content\"}', NULL, '2022-10-04 07:22:41', '2022-10-04 07:22:41'),
('a3f21e8d-3610-40b8-a2e5-7b1a94bf90e6', 'App\\Notifications\\AssignmentNotification', 'App\\Models\\Student', 10, '{\"id\":5,\"title\":\"Rules of voice change\",\"type\":\"assignment\"}', NULL, '2022-10-04 07:22:41', '2022-10-04 07:22:41'),
('a67fd579-3132-4fb3-9107-9108ecc310c8', 'App\\Notifications\\AssignmentNotification', 'App\\Models\\Student', 12, '{\"id\":3,\"title\":\"Rules of Article\",\"type\":\"assignment\"}', '2022-10-04 07:23:16', '2022-10-04 07:22:41', '2022-10-04 07:23:16'),
('a9e0eaac-ddc8-44b7-9a05-c280aa5ce15e', 'App\\Notifications\\ContentNotification', 'App\\Models\\Student', 8, '{\"id\":1,\"title\":\"Optical Physics 1st Class\",\"type\":\"content\"}', NULL, '2022-10-03 07:12:59', '2022-10-03 07:12:59'),
('b131cbc5-8f6d-46af-85ba-99e114a468f7', 'App\\Notifications\\NoticeNotification', 'App\\Models\\Student', 3, '{\"id\":1,\"title\":\"Android Development Hackathon 2022\",\"type\":\"notice\"}', NULL, '2022-10-03 11:50:13', '2022-10-03 11:50:13'),
('c150c5b3-2d00-465e-bb7c-8fb0506f4cb7', 'App\\Notifications\\NoticeNotification', 'App\\Models\\Student', 12, '{\"id\":2,\"title\":\"Winter Vacation Pick On From Sunday\",\"type\":\"notice\"}', NULL, '2022-10-04 07:31:37', '2022-10-04 07:31:37'),
('c223bf63-bf78-4425-b70d-d7f0ed751ba9', 'App\\Notifications\\AssignmentNotification', 'App\\Models\\Student', 12, '{\"id\":5,\"title\":\"Rules of voice change\",\"type\":\"assignment\"}', '2022-10-04 07:23:16', '2022-10-04 07:22:41', '2022-10-04 07:23:16'),
('cdd8fdc1-b992-4df9-a1d7-833bc22c1728', 'App\\Notifications\\AssignmentNotification', 'App\\Models\\Student', 14, '{\"id\":3,\"title\":\"Rules of Article\",\"type\":\"assignment\"}', '2022-10-04 07:32:47', '2022-10-04 07:22:41', '2022-10-04 07:32:47'),
('d1693c75-da05-4cb0-a5fa-4e0e98eed4f4', 'App\\Notifications\\NoticeNotification', 'App\\Models\\Student', 2, '{\"id\":1,\"title\":\"Android Development Hackathon 2022\",\"type\":\"notice\"}', NULL, '2022-10-03 11:50:13', '2022-10-03 11:50:13'),
('d86483c2-2cac-4a32-a274-aa402c0c63d5', 'App\\Notifications\\AssignmentNotification', 'App\\Models\\Student', 2, '{\"id\":1,\"title\":\"Theory of relativity\",\"type\":\"assignment\"}', NULL, '2022-10-03 11:10:03', '2022-10-03 11:10:03'),
('edf49484-fd6d-4d28-9024-dab31f141b7a', 'App\\Notifications\\AssignmentNotification', 'App\\Models\\Student', 7, '{\"id\":2,\"title\":\"Measurement and Height\",\"type\":\"assignment\"}', NULL, '2022-10-03 11:13:04', '2022-10-03 11:13:04'),
('f3bcc8a3-b372-4657-9f29-ea4438f455bc', 'App\\Notifications\\AssignmentNotification', 'App\\Models\\Student', 11, '{\"id\":5,\"title\":\"Rules of voice change\",\"type\":\"assignment\"}', NULL, '2022-10-04 07:22:41', '2022-10-04 07:22:41'),
('fa65ad88-4332-42ac-a773-796203413c68', 'App\\Notifications\\NoticeNotification', 'App\\Models\\Student', 11, '{\"id\":2,\"title\":\"Winter Vacation Pick On From Sunday\",\"type\":\"notice\"}', NULL, '2022-10-04 07:31:37', '2022-10-04 07:31:37');

-- --------------------------------------------------------

--
-- Table structure for table `outside_users`
--

DROP TABLE IF EXISTS `outside_users`;
CREATE TABLE IF NOT EXISTS `outside_users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_province` int UNSIGNED DEFAULT NULL,
  `present_district` int UNSIGNED DEFAULT NULL,
  `present_village` text COLLATE utf8mb4_unicode_ci,
  `present_address` text COLLATE utf8mb4_unicode_ci,
  `permanent_province` int UNSIGNED DEFAULT NULL,
  `permanent_district` int UNSIGNED DEFAULT NULL,
  `permanent_village` text COLLATE utf8mb4_unicode_ci,
  `permanent_address` text COLLATE utf8mb4_unicode_ci,
  `education_level` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` int NOT NULL COMMENT '1 Male, 2 Female & 3 Other',
  `dob` date NOT NULL,
  `mother_tongue` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` int DEFAULT NULL,
  `blood_group` int DEFAULT NULL,
  `nationality` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci,
  `signature` text COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '1' COMMENT '0 Inactive, 1 Active',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `father_occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_photo` text COLLATE utf8mb4_unicode_ci,
  `mother_photo` text COLLATE utf8mb4_unicode_ci,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caste` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `outside_users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `outside_users`
--

INSERT INTO `outside_users` (`id`, `first_name`, `last_name`, `father_name`, `mother_name`, `email`, `phone`, `present_province`, `present_district`, `present_village`, `present_address`, `permanent_province`, `permanent_district`, `permanent_village`, `permanent_address`, `education_level`, `occupation`, `gender`, `dob`, `mother_tongue`, `marital_status`, `blood_group`, `nationality`, `national_id`, `passport_no`, `photo`, `signature`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `father_occupation`, `mother_occupation`, `father_photo`, `mother_photo`, `country`, `religion`, `caste`) VALUES
(1, 'Jason', 'Suarez', 'Cassady Houston', NULL, 'rodemy@mailinator.com', '+1 (133) 832-2324', 4, 3, 'Excepteur consequatu', 'Est ea elit ducimus', 2, 13, 'Nam quia consequat', 'Amet occaecat est e', NULL, 'Tempora incidunt', 1, '1999-02-06', NULL, 2, NULL, NULL, '4568798763153', '5468657354468', NULL, NULL, 1, 1, NULL, '2022-10-03 05:44:53', '2022-10-03 05:44:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Garth', 'Bernard', 'Colby Jacobs', NULL, 'wygicyb@mailinator.com', '+1 (548) 812-6473', 4, 3, 'Quasi dolores enim q', 'Sit harum alias mol', 1, 1, 'Quis aute duis dolor', 'Enim voluptas quia d', NULL, 'Quia impedit', 2, '1989-11-30', 'English', 4, NULL, NULL, '76554633543', '43865438', 'student_1664797541.jpg', NULL, 1, 1, NULL, '2022-10-03 05:45:41', '2022-10-03 05:45:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Neville', 'Frye', 'Medge Grimes', NULL, 'corojeja@mailinator.com', '+1 (204) 668-8836', 4, 3, 'Eius perspiciatis c', 'Delectus consequatu', 4, 4, 'Esse natus ut velit', 'Ducimus voluptate r', NULL, NULL, 2, '2014-03-07', 'Bangla', 4, NULL, NULL, '56789688', '876856876', NULL, NULL, 1, 1, NULL, '2022-10-03 05:46:30', '2022-10-03 05:46:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Vivien', 'Tyler', 'Holmes Walls', NULL, 'semat@mailinator.com', '+1 (686) 105-7363', 4, 5, 'Quae nisi quas in pr', 'Repudiandae veritati', 4, 5, 'Et aliquid qui excep', 'Explicabo Magnam un', NULL, 'Quo deleniti', 3, '1970-07-13', 'English', 1, NULL, NULL, '55489789441', '124897891', 'student_1664797681.jpg', NULL, 1, 1, NULL, '2022-10-03 05:48:01', '2022-10-03 05:48:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `language_id` int UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `attach` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_title_unique` (`title`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `language_id`, `title`, `slug`, `description`, `meta_title`, `meta_description`, `attach`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Requirements', 'requirements', '<h4>What is Lorem Ipsum?</h4>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<h4>Why do we use it?</h4>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n<p>&nbsp;</p>\r\n<h4>Where does it come from?</h4>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', NULL, NULL, NULL, 1, '2023-08-24 16:05:03', '2023-08-25 05:35:21'),
(2, 1, 'Tuition Fees', 'tuition-fees', '<h4>Where does it come from?</h4>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n<h4>Where can I get some?</h4>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n<p>&nbsp;</p>', NULL, NULL, NULL, 1, '2023-08-24 16:06:39', '2023-08-25 05:35:45');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payrolls`
--

DROP TABLE IF EXISTS `payrolls`;
CREATE TABLE IF NOT EXISTS `payrolls` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `basic_salary` double(10,2) NOT NULL DEFAULT '0.00',
  `salary_type` int NOT NULL DEFAULT '1' COMMENT '1 Fixed & 2 Hourly',
  `total_earning` double(10,2) NOT NULL,
  `total_allowance` double(10,2) NOT NULL DEFAULT '0.00',
  `bonus` double(10,2) NOT NULL DEFAULT '0.00',
  `gross_salary` double(10,2) NOT NULL,
  `total_deduction` double(10,2) NOT NULL,
  `tax` double(10,2) NOT NULL DEFAULT '0.00',
  `net_salary` double(10,2) NOT NULL,
  `salary_month` date NOT NULL,
  `pay_date` date DEFAULT NULL,
  `payment_method` int DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '0' COMMENT '0 Unpaid, 1 Paid',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payrolls`
--

INSERT INTO `payrolls` (`id`, `user_id`, `basic_salary`, `salary_type`, `total_earning`, `total_allowance`, `bonus`, `gross_salary`, `total_deduction`, `tax`, `net_salary`, `salary_month`, `pay_date`, `payment_method`, `note`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 2, 40000.00, 1, 15484.00, 2000.00, 0.00, 15984.00, 1500.00, 1099.00, 14886.00, '2022-10-01', '2023-02-13', 3, NULL, 1, 1, 1, '2022-10-03 15:35:22', '2023-02-13 12:02:40'),
(2, 6, 40000.00, 1, 20645.00, 3500.00, 0.00, 22945.00, 1200.00, 2692.00, 20254.00, '2022-10-01', NULL, NULL, NULL, 0, 1, NULL, '2022-10-03 15:35:34', '2023-02-13 12:00:30'),
(3, 7, 38000.00, 1, 14710.00, 5000.00, 0.00, 19410.00, 300.00, 1441.00, 17969.00, '2022-10-01', '2023-02-13', 5, NULL, 1, 1, 1, '2022-10-03 15:36:45', '2023-02-13 12:02:49'),
(4, 8, 35000.00, 1, 15806.00, 2500.00, 0.00, 17106.00, 1200.00, 1211.00, 15896.00, '2022-10-01', NULL, NULL, NULL, 0, 1, 1, '2022-10-03 15:37:27', '2023-02-13 12:01:32'),
(5, 3, 300.00, 2, 3000.00, 2500.00, 0.00, 4300.00, 1200.00, 0.00, 4300.00, '2022-10-01', '2023-02-13', 2, NULL, 1, 1, 1, '2022-10-03 15:44:50', '2023-02-13 12:02:24');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_details`
--

DROP TABLE IF EXISTS `payroll_details`;
CREATE TABLE IF NOT EXISTS `payroll_details` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `payroll_id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `status` int NOT NULL DEFAULT '1' COMMENT '0 Deduction, 1 Allowance',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payroll_details_payroll_id_foreign` (`payroll_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payroll_details`
--

INSERT INTO `payroll_details` (`id`, `payroll_id`, `title`, `amount`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'Eid Bonus', 2000.00, 1, NULL, NULL, '2023-02-13 12:00:01', '2023-02-13 12:00:01'),
(2, 1, 'Lunch', 1500.00, 0, NULL, NULL, '2023-02-13 12:00:01', '2023-02-13 12:00:01'),
(3, 2, 'Eid Bonus', 3500.00, 1, NULL, NULL, '2023-02-13 12:00:30', '2023-02-13 12:00:30'),
(4, 2, 'Lunch', 1200.00, 0, NULL, NULL, '2023-02-13 12:00:30', '2023-02-13 12:00:30'),
(5, 3, 'Bonus', 5000.00, 1, NULL, NULL, '2023-02-13 12:00:59', '2023-02-13 12:00:59'),
(6, 3, 'Snaks', 300.00, 0, NULL, NULL, '2023-02-13 12:00:59', '2023-02-13 12:00:59'),
(7, 4, 'Transport', 2500.00, 1, NULL, NULL, '2023-02-13 12:01:32', '2023-02-13 12:01:32'),
(8, 4, 'Late', 1200.00, 0, NULL, NULL, '2023-02-13 12:01:32', '2023-02-13 12:01:32'),
(9, 5, 'Eid Bonus', 2500.00, 1, NULL, NULL, '2023-02-13 12:02:07', '2023-02-13 12:02:07'),
(10, 5, 'Lunch', 1200.00, 0, NULL, NULL, '2023-02-13 12:02:07', '2023-02-13 12:02:07');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=1949 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `group`, `title`, `guard_name`, `created_at`, `updated_at`) VALUES
(1506, 'application-view', 'Application', 'View', 'web', NULL, NULL),
(1507, 'application-create', 'Application', 'Admission', 'web', NULL, NULL),
(1508, 'application-edit', 'Application', 'Action', 'web', NULL, NULL),
(1509, 'application-delete', 'Application', 'Delete', 'web', NULL, NULL),
(1510, 'student-view', 'Student', 'View', 'web', NULL, NULL),
(1511, 'student-create', 'Student', 'Create', 'web', NULL, NULL),
(1512, 'student-edit', 'Student', 'Edit', 'web', NULL, NULL),
(1513, 'student-delete', 'Student', 'Delete', 'web', NULL, NULL),
(1514, 'student-import', 'Student', 'Import', 'web', NULL, NULL),
(1515, 'student-password-print', 'Student', 'Password Print', 'web', NULL, NULL),
(1516, 'student-password-change', 'Student', 'Password Change', 'web', NULL, NULL),
(1517, 'student-card', 'Student', 'ID Card', 'web', NULL, NULL),
(1518, 'id-card-setting-view', 'ID Card', 'Setting', 'web', NULL, NULL),
(1519, 'student-transfer-in-view', 'Transfer In', 'View', 'web', NULL, NULL),
(1520, 'student-transfer-in-create', 'Transfer In', 'Transfer', 'web', NULL, NULL),
(1521, 'student-transfer-in-edit', 'Transfer In', 'Edit', 'web', NULL, NULL),
(1522, 'student-transfer-out-view', 'Transfer Out', 'View', 'web', NULL, NULL),
(1523, 'student-transfer-out-create', 'Transfer Out', 'Transfer', 'web', NULL, NULL),
(1524, 'student-transfer-out-edit', 'Transfer Out', 'Edit', 'web', NULL, NULL),
(1525, 'status-type-view', 'Status Type', 'View', 'web', NULL, NULL),
(1526, 'status-type-create', 'Status Type', 'Create', 'web', NULL, NULL),
(1527, 'status-type-edit', 'Status Type', 'Edit', 'web', NULL, NULL),
(1528, 'status-type-delete', 'Status Type', 'Delete', 'web', NULL, NULL),
(1529, 'student-attendance-action', 'Student Attendance', 'Manage', 'web', NULL, NULL),
(1530, 'student-attendance-report', 'Student Attendance', 'Report', 'web', NULL, NULL),
(1531, 'student-attendance-import', 'Student Attendance', 'Import', 'web', NULL, NULL),
(1532, 'student-leave-manage-view', 'Student Leave', 'View', 'web', NULL, NULL),
(1533, 'student-leave-manage-edit', 'Student Leave', 'Action', 'web', NULL, NULL),
(1534, 'student-leave-manage-delete', 'Student Leave', 'Delete', 'web', NULL, NULL),
(1535, 'student-note-view', 'Student Note', 'View', 'web', NULL, NULL),
(1536, 'student-note-create', 'Student Note', 'Create', 'web', NULL, NULL),
(1537, 'student-note-edit', 'Student Note', 'Edit', 'web', NULL, NULL),
(1538, 'student-note-delete', 'Student Note', 'Delete', 'web', NULL, NULL),
(1539, 'student-enroll-single', 'Enrollments', 'Single Enroll', 'web', NULL, NULL),
(1540, 'student-enroll-group', 'Enrollments', 'Group Enroll', 'web', NULL, NULL),
(1541, 'student-enroll-adddrop', 'Enrollments', 'Course Add Drop', 'web', NULL, NULL),
(1542, 'student-enroll-complete', 'Enrollments', 'Course Graduation', 'web', NULL, NULL),
(1543, 'student-enroll-alumni', 'Enrollments', 'Alumni List', 'web', NULL, NULL),
(1544, 'faculty-view', 'Faculty', 'View', 'web', NULL, NULL),
(1545, 'faculty-create', 'Faculty', 'Create', 'web', NULL, NULL),
(1546, 'faculty-edit', 'Faculty', 'Edit', 'web', NULL, NULL),
(1547, 'faculty-delete', 'Faculty', 'Delete', 'web', NULL, NULL),
(1548, 'program-view', 'Program', 'View', 'web', NULL, NULL),
(1549, 'program-create', 'Program', 'Create', 'web', NULL, NULL),
(1550, 'program-edit', 'Program', 'Edit', 'web', NULL, NULL),
(1551, 'program-delete', 'Program', 'Delete', 'web', NULL, NULL),
(1552, 'batch-view', 'Batch', 'View', 'web', NULL, NULL),
(1553, 'batch-create', 'Batch', 'Create', 'web', NULL, NULL),
(1554, 'batch-edit', 'Batch', 'Edit', 'web', NULL, NULL),
(1555, 'batch-delete', 'Batch', 'Delete', 'web', NULL, NULL),
(1556, 'session-view', 'Session', 'View', 'web', NULL, NULL),
(1557, 'session-create', 'Session', 'Create', 'web', NULL, NULL),
(1558, 'session-edit', 'Session', 'Edit', 'web', NULL, NULL),
(1559, 'session-delete', 'Session', 'Delete', 'web', NULL, NULL),
(1560, 'semester-view', 'Semester', 'View', 'web', NULL, NULL),
(1561, 'semester-create', 'Semester', 'Create', 'web', NULL, NULL),
(1562, 'semester-edit', 'Semester', 'Edit', 'web', NULL, NULL),
(1563, 'semester-delete', 'Semester', 'Delete', 'web', NULL, NULL),
(1564, 'section-view', 'Section', 'View', 'web', NULL, NULL),
(1565, 'section-create', 'Section', 'Create', 'web', NULL, NULL),
(1566, 'section-edit', 'Section', 'Edit', 'web', NULL, NULL),
(1567, 'section-delete', 'Section', 'Delete', 'web', NULL, NULL),
(1568, 'class-room-view', 'Class Room', 'View', 'web', NULL, NULL),
(1569, 'class-room-create', 'Class Room', 'Create', 'web', NULL, NULL),
(1570, 'class-room-edit', 'Class Room', 'Edit', 'web', NULL, NULL),
(1571, 'class-room-delete', 'Class Room', 'Delete', 'web', NULL, NULL),
(1572, 'subject-view', 'Course', 'View', 'web', NULL, NULL),
(1573, 'subject-create', 'Course', 'Create', 'web', NULL, NULL),
(1574, 'subject-edit', 'Course', 'Edit', 'web', NULL, NULL),
(1575, 'subject-delete', 'Course', 'Delete', 'web', NULL, NULL),
(1576, 'subject-import', 'Course', 'Import', 'web', NULL, NULL),
(1577, 'enroll-subject-view', 'Enroll Course', 'View', 'web', NULL, NULL),
(1578, 'enroll-subject-create', 'Enroll Course', 'Create', 'web', NULL, NULL),
(1579, 'enroll-subject-edit', 'Enroll Course', 'Edit', 'web', NULL, NULL),
(1580, 'enroll-subject-delete', 'Enroll Course', 'Delete', 'web', NULL, NULL),
(1581, 'class-routine-view', 'Class Routine', 'View', 'web', NULL, NULL),
(1582, 'class-routine-create', 'Class Routine', 'Manage', 'web', NULL, NULL),
(1583, 'class-routine-print', 'Class Routine', 'Print', 'web', NULL, NULL),
(1584, 'class-routine-teacher', 'Class Routine', 'Teacher', 'web', NULL, NULL),
(1585, 'exam-routine-view', 'Exam Routine', 'View', 'web', NULL, NULL),
(1586, 'exam-routine-create', 'Exam Routine', 'Manage', 'web', NULL, NULL),
(1587, 'exam-routine-edit', 'Exam Routine', 'Edit', 'web', NULL, NULL),
(1588, 'exam-routine-delete', 'Exam Routine', 'Delete', 'web', NULL, NULL),
(1589, 'exam-routine-print', 'Exam Routine', 'Print', 'web', NULL, NULL),
(1590, 'routine-setting-class', 'Routine Setting', 'Class Routine', 'web', NULL, NULL),
(1591, 'routine-setting-exam', 'Routine Setting', 'Exam Routine', 'web', NULL, NULL),
(1592, 'exam-attendance', 'Exam', 'Attendance', 'web', NULL, NULL),
(1593, 'exam-marking', 'Exam', 'Mark Ledger', 'web', NULL, NULL),
(1594, 'exam-result', 'Exam', 'Result', 'web', NULL, NULL),
(1595, 'exam-import', 'Exam', 'Import', 'web', NULL, NULL),
(1596, 'subject-marking', 'Course Final', 'Mark Ledger', 'web', NULL, NULL),
(1597, 'subject-result', 'Course Final', 'Result', 'web', NULL, NULL),
(1598, 'grade-view', 'Grading System', 'View', 'web', NULL, NULL),
(1599, 'grade-create', 'Grading System', 'Create', 'web', NULL, NULL),
(1600, 'grade-edit', 'Grading System', 'Edit', 'web', NULL, NULL),
(1601, 'grade-delete', 'Grading System', 'Delete', 'web', NULL, NULL),
(1602, 'exam-type-view', 'Exam Type', 'View', 'web', NULL, NULL),
(1603, 'exam-type-create', 'Exam Type', 'Create', 'web', NULL, NULL),
(1604, 'exam-type-edit', 'Exam Type', 'Edit', 'web', NULL, NULL),
(1605, 'exam-type-delete', 'Exam Type', 'Delete', 'web', NULL, NULL),
(1606, 'admit-card-view', 'Admit Card', 'View', 'web', NULL, NULL),
(1607, 'admit-card-print', 'Admit Card', 'Print', 'web', NULL, NULL),
(1608, 'admit-card-download', 'Admit Card', 'Download', 'web', NULL, NULL),
(1609, 'admit-setting-view', 'Admit Card', 'Setting', 'web', NULL, NULL),
(1610, 'result-contribution-view', 'Mark Distribution', 'Setting', 'web', NULL, NULL),
(1611, 'assignment-view', 'Assignment', 'View', 'web', NULL, NULL),
(1612, 'assignment-create', 'Assignment', 'Create', 'web', NULL, NULL),
(1613, 'assignment-edit', 'Assignment', 'Edit', 'web', NULL, NULL),
(1614, 'assignment-delete', 'Assignment', 'Delete', 'web', NULL, NULL),
(1615, 'assignment-marking', 'Assignment', 'Mark Ledger', 'web', NULL, NULL),
(1616, 'content-view', 'Content', 'View', 'web', NULL, NULL),
(1617, 'content-create', 'Content', 'Create', 'web', NULL, NULL),
(1618, 'content-edit', 'Content', 'Edit', 'web', NULL, NULL),
(1619, 'content-delete', 'Content', 'Delete', 'web', NULL, NULL),
(1620, 'content-type-view', 'Content Type', 'View', 'web', NULL, NULL),
(1621, 'content-type-create', 'Content Type', 'Create', 'web', NULL, NULL),
(1622, 'content-type-edit', 'Content Type', 'Edit', 'web', NULL, NULL),
(1623, 'content-type-delete', 'Content Type', 'Delete', 'web', NULL, NULL),
(1624, 'fees-student-due', 'Student Fees', 'Fees Due', 'web', NULL, NULL),
(1625, 'fees-student-quick-assign', 'Student Fees', 'Quick Assign', 'web', NULL, NULL),
(1626, 'fees-student-quick-received', 'Student Fees', 'Quick Received', 'web', NULL, NULL),
(1627, 'fees-student-report', 'Student Fees', 'Report', 'web', NULL, NULL),
(1628, 'fees-student-action', 'Student Fees', 'Action', 'web', NULL, NULL),
(1629, 'fees-student-print', 'Student Fees', 'Print', 'web', NULL, NULL),
(1630, 'fees-receipt-view', 'Fees Receipt', 'Setting', 'web', NULL, NULL),
(1631, 'fees-master-create', 'Assign Fees', 'Manage', 'web', NULL, NULL),
(1632, 'fees-master-view', 'Assign Fees', 'Report', 'web', NULL, NULL),
(1633, 'fees-category-view', 'Fees Type', 'View', 'web', NULL, NULL),
(1634, 'fees-category-create', 'Fees Type', 'Create', 'web', NULL, NULL),
(1635, 'fees-category-edit', 'Fees Type', 'Edit', 'web', NULL, NULL),
(1636, 'fees-category-delete', 'Fees Type', 'Delete', 'web', NULL, NULL),
(1637, 'fees-discount-view', 'Fees Discount', 'View', 'web', NULL, NULL),
(1638, 'fees-discount-create', 'Fees Discount', 'Create', 'web', NULL, NULL),
(1639, 'fees-discount-edit', 'Fees Discount', 'Edit', 'web', NULL, NULL),
(1640, 'fees-discount-delete', 'Fees Discount', 'Delete', 'web', NULL, NULL),
(1641, 'fees-fine-view', 'Fees Fine', 'View', 'web', NULL, NULL),
(1642, 'fees-fine-create', 'Fees Fine', 'Create', 'web', NULL, NULL),
(1643, 'fees-fine-edit', 'Fees Fine', 'Edit', 'web', NULL, NULL),
(1644, 'fees-fine-delete', 'Fees Fine', 'Delete', 'web', NULL, NULL),
(1645, 'user-view', 'Staff List', 'View', 'web', NULL, NULL),
(1646, 'user-create', 'Staff List', 'Create', 'web', NULL, NULL),
(1647, 'user-edit', 'Staff List', 'Edit', 'web', NULL, NULL),
(1648, 'user-delete', 'Staff List', 'Delete', 'web', NULL, NULL),
(1649, 'user-import', 'Staff List', 'Import', 'web', NULL, NULL),
(1650, 'user-password-change', 'Staff List', 'Password Change', 'web', NULL, NULL),
(1651, 'staff-note-view', 'Staff Note', 'View', 'web', NULL, NULL),
(1652, 'staff-note-create', 'Staff Note', 'Create', 'web', NULL, NULL),
(1653, 'staff-note-edit', 'Staff Note', 'Edit', 'web', NULL, NULL),
(1654, 'staff-note-delete', 'Staff Note', 'Delete', 'web', NULL, NULL),
(1655, 'payroll-view', 'Payroll', 'View', 'web', NULL, NULL),
(1656, 'payroll-action', 'Payroll', 'Action', 'web', NULL, NULL),
(1657, 'payroll-report', 'Payroll', 'Report', 'web', NULL, NULL),
(1658, 'payroll-print', 'Payroll', 'Print', 'web', NULL, NULL),
(1659, 'pay-slip-setting-view', 'Pay Slip', 'Setting', 'web', NULL, NULL),
(1660, 'work-shift-type-view', 'Work Shift Type', 'View', 'web', NULL, NULL),
(1661, 'work-shift-type-create', 'Work Shift Type', 'Create', 'web', NULL, NULL),
(1662, 'work-shift-type-edit', 'Work Shift Type', 'Edit', 'web', NULL, NULL),
(1663, 'work-shift-type-delete', 'Work Shift Type', 'Delete', 'web', NULL, NULL),
(1664, 'tax-setting-view', 'Tax Setting', 'View', 'web', NULL, NULL),
(1665, 'tax-setting-create', 'Tax Setting', 'Create', 'web', NULL, NULL),
(1666, 'tax-setting-edit', 'Tax Setting', 'Edit', 'web', NULL, NULL),
(1667, 'tax-setting-delete', 'Tax Setting', 'Delete', 'web', NULL, NULL),
(1668, 'designation-view', 'Designation', 'View', 'web', NULL, NULL),
(1669, 'designation-create', 'Designation', 'Create', 'web', NULL, NULL),
(1670, 'designation-edit', 'Designation', 'Edit', 'web', NULL, NULL),
(1671, 'designation-delete', 'Designation', 'Delete', 'web', NULL, NULL),
(1672, 'department-view', 'Department', 'View', 'web', NULL, NULL),
(1673, 'department-create', 'Department', 'Create', 'web', NULL, NULL),
(1674, 'department-edit', 'Department', 'Edit', 'web', NULL, NULL),
(1675, 'department-delete', 'Department', 'Delete', 'web', NULL, NULL),
(1676, 'staff-daily-attendance-action', 'Staff Daily Attendance', 'Manage', 'web', NULL, NULL),
(1677, 'staff-daily-attendance-report', 'Staff Daily Attendance', 'Report', 'web', NULL, NULL),
(1678, 'staff-hourly-attendance-action', 'Staff Hourly Attendance', 'Manage', 'web', NULL, NULL),
(1679, 'staff-hourly-attendance-report', 'Staff Hourly Attendance', 'Report', 'web', NULL, NULL),
(1680, 'staff-leave-view', 'Staff Apply Leave', 'View', 'web', NULL, NULL),
(1681, 'staff-leave-create', 'Staff Apply Leave', 'Apply', 'web', NULL, NULL),
(1682, 'staff-leave-delete', 'Staff Apply Leave', 'Delete', 'web', NULL, NULL),
(1683, 'leave-type-view', 'Leave Type', 'View', 'web', NULL, NULL),
(1684, 'leave-type-create', 'Leave Type', 'Create', 'web', NULL, NULL),
(1685, 'leave-type-edit', 'Leave Type', 'Edit', 'web', NULL, NULL),
(1686, 'leave-type-delete', 'Leave Type', 'Delete', 'web', NULL, NULL),
(1687, 'staff-leave-manage-view', 'Staff Leave Manage', 'View', 'web', NULL, NULL),
(1688, 'staff-leave-manage-edit', 'Staff Leave Manage', 'Action', 'web', NULL, NULL),
(1689, 'staff-leave-manage-delete', 'Staff Leave Manage', 'Delete', 'web', NULL, NULL),
(1690, 'income-view', 'Income', 'View', 'web', NULL, NULL),
(1691, 'income-create', 'Income', 'Create', 'web', NULL, NULL),
(1692, 'income-edit', 'Income', 'Edit', 'web', NULL, NULL),
(1693, 'income-delete', 'Income', 'Delete', 'web', NULL, NULL),
(1694, 'income-category-view', 'Income Category', 'View', 'web', NULL, NULL),
(1695, 'income-category-create', 'Income Category', 'Create', 'web', NULL, NULL),
(1696, 'income-category-edit', 'Income Category', 'Edit', 'web', NULL, NULL),
(1697, 'income-category-delete', 'Income Category', 'Delete', 'web', NULL, NULL),
(1698, 'expense-view', 'Expense', 'View', 'web', NULL, NULL),
(1699, 'expense-create', 'Expense', 'Create', 'web', NULL, NULL),
(1700, 'expense-edit', 'Expense', 'Edit', 'web', NULL, NULL),
(1701, 'expense-delete', 'Expense', 'Delete', 'web', NULL, NULL),
(1702, 'expense-category-view', 'Expense Category', 'View', 'web', NULL, NULL),
(1703, 'expense-category-create', 'Expense Category', 'Create', 'web', NULL, NULL),
(1704, 'expense-category-edit', 'Expense Category', 'Edit', 'web', NULL, NULL),
(1705, 'expense-category-delete', 'Expense Category', 'Delete', 'web', NULL, NULL),
(1706, 'outcome-view', 'Outcome Overview', 'View', 'web', NULL, NULL),
(1707, 'email-notify-view', 'Send Email', 'View', 'web', NULL, NULL),
(1708, 'email-notify-create', 'Send Email', 'Send', 'web', NULL, NULL),
(1709, 'email-notify-delete', 'Send Email', 'Delete', 'web', NULL, NULL),
(1710, 'sms-notify-view', 'Send SMS', 'View', 'web', NULL, NULL),
(1711, 'sms-notify-create', 'Send SMS', 'Send', 'web', NULL, NULL),
(1712, 'sms-notify-delete', 'Send SMS', 'Delete', 'web', NULL, NULL),
(1713, 'event-view', 'Event', 'View', 'web', NULL, NULL),
(1714, 'event-create', 'Event', 'Create', 'web', NULL, NULL),
(1715, 'event-edit', 'Event', 'Edit', 'web', NULL, NULL),
(1716, 'event-delete', 'Event', 'Delete', 'web', NULL, NULL),
(1717, 'event-calendar', 'Event', 'Calendar', 'web', NULL, NULL),
(1718, 'notice-view', 'Notice List', 'View', 'web', NULL, NULL),
(1719, 'notice-create', 'Notice List', 'Create', 'web', NULL, NULL),
(1720, 'notice-edit', 'Notice List', 'Edit', 'web', NULL, NULL),
(1721, 'notice-delete', 'Notice List', 'Delete', 'web', NULL, NULL),
(1722, 'notice-category-view', 'Notice Category', 'View', 'web', NULL, NULL),
(1723, 'notice-category-create', 'Notice Category', 'Create', 'web', NULL, NULL),
(1724, 'notice-category-edit', 'Notice Category', 'Edit', 'web', NULL, NULL),
(1725, 'notice-category-delete', 'Notice Category', 'Delete', 'web', NULL, NULL),
(1726, 'book-issue-view', 'Issue Book', 'View', 'web', NULL, NULL),
(1727, 'book-issue-action', 'Issue Book', 'Action', 'web', NULL, NULL),
(1728, 'book-issue-delete', 'Issue Book', 'Delete', 'web', NULL, NULL),
(1729, 'library-member-view', 'Library Member', 'View', 'web', NULL, NULL),
(1730, 'library-member-create', 'Library Member', 'Create', 'web', NULL, NULL),
(1731, 'library-member-edit', 'Library Member', 'Edit', 'web', NULL, NULL),
(1732, 'library-member-delete', 'Library Member', 'Delete', 'web', NULL, NULL),
(1733, 'library-member-card', 'Library Member', 'Card Print', 'web', NULL, NULL),
(1734, 'library-card-setting-view', 'Library Card', 'Setting', 'web', NULL, NULL),
(1735, 'book-view', 'Book List', 'View', 'web', NULL, NULL),
(1736, 'book-create', 'Book List', 'Create', 'web', NULL, NULL),
(1737, 'book-edit', 'Book List', 'Edit', 'web', NULL, NULL),
(1738, 'book-delete', 'Book List', 'Delete', 'web', NULL, NULL),
(1739, 'book-import', 'Book List', 'Import', 'web', NULL, NULL),
(1740, 'book-print', 'Book List', 'Token Print', 'web', NULL, NULL),
(1741, 'book-request-view', 'Book Request', 'View', 'web', NULL, NULL),
(1742, 'book-request-create', 'Book Request', 'Create', 'web', NULL, NULL),
(1743, 'book-request-edit', 'Book Request', 'Edit', 'web', NULL, NULL),
(1744, 'book-request-delete', 'Book Request', 'Delete', 'web', NULL, NULL),
(1745, 'book-category-view', 'Book Category', 'View', 'web', NULL, NULL),
(1746, 'book-category-create', 'Book Category', 'Create', 'web', NULL, NULL),
(1747, 'book-category-edit', 'Book Category', 'Edit', 'web', NULL, NULL),
(1748, 'book-category-delete', 'Book Category', 'Delete', 'web', NULL, NULL),
(1749, 'item-issue-view', 'Issue Item', 'View', 'web', NULL, NULL),
(1750, 'item-issue-action', 'Issue Item', 'Action', 'web', NULL, NULL),
(1751, 'item-issue-delete', 'Issue Item', 'Delete', 'web', NULL, NULL),
(1752, 'item-stock-view', 'Item Stock', 'View', 'web', NULL, NULL),
(1753, 'item-stock-create', 'Item Stock', 'Create', 'web', NULL, NULL),
(1754, 'item-stock-edit', 'Item Stock', 'Edit', 'web', NULL, NULL),
(1755, 'item-stock-delete', 'Item Stock', 'Delete', 'web', NULL, NULL),
(1756, 'item-view', 'Item List', 'View', 'web', NULL, NULL),
(1757, 'item-create', 'Item List', 'Create', 'web', NULL, NULL),
(1758, 'item-edit', 'Item List', 'Edit', 'web', NULL, NULL),
(1759, 'item-delete', 'Item List', 'Delete', 'web', NULL, NULL),
(1760, 'item-store-view', 'Store', 'View', 'web', NULL, NULL),
(1761, 'item-store-create', 'Store', 'Create', 'web', NULL, NULL),
(1762, 'item-store-edit', 'Store', 'Edit', 'web', NULL, NULL),
(1763, 'item-store-delete', 'Store', 'Delete', 'web', NULL, NULL),
(1764, 'item-supplier-view', 'Supplier', 'View', 'web', NULL, NULL),
(1765, 'item-supplier-create', 'Supplier', 'Create', 'web', NULL, NULL),
(1766, 'item-supplier-edit', 'Supplier', 'Edit', 'web', NULL, NULL),
(1767, 'item-supplier-delete', 'Supplier', 'Delete', 'web', NULL, NULL),
(1768, 'item-category-view', 'Item Category', 'View', 'web', NULL, NULL),
(1769, 'item-category-create', 'Item Category', 'Create', 'web', NULL, NULL),
(1770, 'item-category-edit', 'Item Category', 'Edit', 'web', NULL, NULL),
(1771, 'item-category-delete', 'Item Category', 'Delete', 'web', NULL, NULL),
(1772, 'hostel-member-view', 'Hostel Member', 'View', 'web', NULL, NULL),
(1773, 'hostel-member-create', 'Hostel Member', 'Manage', 'web', NULL, NULL),
(1774, 'hostel-room-view', 'Hostel Room', 'View', 'web', NULL, NULL),
(1775, 'hostel-room-create', 'Hostel Room', 'Create', 'web', NULL, NULL),
(1776, 'hostel-room-edit', 'Hostel Room', 'Edit', 'web', NULL, NULL),
(1777, 'hostel-room-delete', 'Hostel Room', 'Delete', 'web', NULL, NULL),
(1778, 'hostel-view', 'Hostel', 'View', 'web', NULL, NULL),
(1779, 'hostel-create', 'Hostel', 'Create', 'web', NULL, NULL),
(1780, 'hostel-edit', 'Hostel', 'Edit', 'web', NULL, NULL),
(1781, 'hostel-delete', 'Hostel', 'Delete', 'web', NULL, NULL),
(1782, 'room-type-view', 'Room Type', 'View', 'web', NULL, NULL),
(1783, 'room-type-create', 'Room Type', 'Create', 'web', NULL, NULL),
(1784, 'room-type-edit', 'Room Type', 'Edit', 'web', NULL, NULL),
(1785, 'room-type-delete', 'Room Type', 'Delete', 'web', NULL, NULL),
(1786, 'transport-member-view', 'Transport Member', 'View', 'web', NULL, NULL),
(1787, 'transport-member-create', 'Transport Member', 'Manage', 'web', NULL, NULL),
(1788, 'transport-vehicle-view', 'Transport Vehicle', 'View', 'web', NULL, NULL),
(1789, 'transport-vehicle-create', 'Transport Vehicle', 'Create', 'web', NULL, NULL),
(1790, 'transport-vehicle-edit', 'Transport Vehicle', 'Edit', 'web', NULL, NULL),
(1791, 'transport-vehicle-delete', 'Transport Vehicle', 'Delete', 'web', NULL, NULL),
(1792, 'transport-route-view', 'Transport Route', 'View', 'web', NULL, NULL),
(1793, 'transport-route-create', 'Transport Route', 'Create', 'web', NULL, NULL),
(1794, 'transport-route-edit', 'Transport Route', 'Edit', 'web', NULL, NULL),
(1795, 'transport-route-delete', 'Transport Route', 'Delete', 'web', NULL, NULL),
(1796, 'visitor-view', 'Visitor', 'View', 'web', NULL, NULL),
(1797, 'visitor-create', 'Visitor', 'Create', 'web', NULL, NULL),
(1798, 'visitor-edit', 'Visitor', 'Edit', 'web', NULL, NULL),
(1799, 'visitor-delete', 'Visitor', 'Delete', 'web', NULL, NULL),
(1800, 'visitor-print', 'Visitor', 'Token Print', 'web', NULL, NULL),
(1801, 'visit-purpose-view', 'Visit Purpose', 'View', 'web', NULL, NULL),
(1802, 'visit-purpose-create', 'Visit Purpose', 'Create', 'web', NULL, NULL),
(1803, 'visit-purpose-edit', 'Visit Purpose', 'Edit', 'web', NULL, NULL),
(1804, 'visit-purpose-delete', 'Visit Purpose', 'Delete', 'web', NULL, NULL),
(1805, 'visitor-token-setting-view', 'Visitor Token', 'Setting', 'web', NULL, NULL),
(1806, 'phone-log-view', 'Phone Log', 'View', 'web', NULL, NULL),
(1807, 'phone-log-create', 'Phone Log', 'Create', 'web', NULL, NULL),
(1808, 'phone-log-edit', 'Phone Log', 'Edit', 'web', NULL, NULL),
(1809, 'phone-log-delete', 'Phone Log', 'Delete', 'web', NULL, NULL),
(1810, 'enquiry-view', 'Enquiry', 'View', 'web', NULL, NULL),
(1811, 'enquiry-create', 'Enquiry', 'Create', 'web', NULL, NULL),
(1812, 'enquiry-edit', 'Enquiry', 'Edit', 'web', NULL, NULL),
(1813, 'enquiry-delete', 'Enquiry', 'Delete', 'web', NULL, NULL),
(1814, 'enquiry-reference-view', 'Enquiry Reference', 'View', 'web', NULL, NULL),
(1815, 'enquiry-reference-create', 'Enquiry Reference', 'Create', 'web', NULL, NULL),
(1816, 'enquiry-reference-edit', 'Enquiry Reference', 'Edit', 'web', NULL, NULL),
(1817, 'enquiry-reference-delete', 'Enquiry Reference', 'Delete', 'web', NULL, NULL),
(1818, 'enquiry-source-view', 'Enquiry Source', 'View', 'web', NULL, NULL),
(1819, 'enquiry-source-create', 'Enquiry Source', 'Create', 'web', NULL, NULL),
(1820, 'enquiry-source-edit', 'Enquiry Source', 'Edit', 'web', NULL, NULL),
(1821, 'enquiry-source-delete', 'Enquiry Source', 'Delete', 'web', NULL, NULL),
(1822, 'complain-view', 'Complain', 'View', 'web', NULL, NULL),
(1823, 'complain-create', 'Complain', 'Create', 'web', NULL, NULL),
(1824, 'complain-edit', 'Complain', 'Edit', 'web', NULL, NULL),
(1825, 'complain-delete', 'Complain', 'Delete', 'web', NULL, NULL),
(1826, 'complain-type-view', 'Complain Type', 'View', 'web', NULL, NULL),
(1827, 'complain-type-create', 'Complain Type', 'Create', 'web', NULL, NULL),
(1828, 'complain-type-edit', 'Complain Type', 'Edit', 'web', NULL, NULL),
(1829, 'complain-type-delete', 'Complain Type', 'Delete', 'web', NULL, NULL),
(1830, 'complain-source-view', 'Complain Source', 'View', 'web', NULL, NULL),
(1831, 'complain-source-create', 'Complain Source', 'Create', 'web', NULL, NULL),
(1832, 'complain-source-edit', 'Complain Source', 'Edit', 'web', NULL, NULL),
(1833, 'complain-source-delete', 'Complain Source', 'Delete', 'web', NULL, NULL),
(1834, 'postal-exchange-view', 'Postal Exchange', 'View', 'web', NULL, NULL),
(1835, 'postal-exchange-create', 'Postal Exchange', 'Create', 'web', NULL, NULL),
(1836, 'postal-exchange-edit', 'Postal Exchange', 'Edit', 'web', NULL, NULL),
(1837, 'postal-exchange-delete', 'Postal Exchange', 'Delete', 'web', NULL, NULL),
(1838, 'postal-type-view', 'Postal Type', 'View', 'web', NULL, NULL),
(1839, 'postal-type-create', 'Postal Type', 'Create', 'web', NULL, NULL),
(1840, 'postal-type-edit', 'Postal Type', 'Edit', 'web', NULL, NULL),
(1841, 'postal-type-delete', 'Postal Type', 'Delete', 'web', NULL, NULL),
(1842, 'meeting-view', 'Meeting Schedule', 'View', 'web', NULL, NULL),
(1843, 'meeting-create', 'Meeting Schedule', 'Create', 'web', NULL, NULL),
(1844, 'meeting-edit', 'Meeting Schedule', 'Edit', 'web', NULL, NULL),
(1845, 'meeting-delete', 'Meeting Schedule', 'Delete', 'web', NULL, NULL),
(1846, 'meeting-type-view', 'Meeting Type', 'View', 'web', NULL, NULL),
(1847, 'meeting-type-create', 'Meeting Type', 'Create', 'web', NULL, NULL),
(1848, 'meeting-type-edit', 'Meeting Type', 'Edit', 'web', NULL, NULL),
(1849, 'meeting-type-delete', 'Meeting Type', 'Delete', 'web', NULL, NULL),
(1850, 'marksheet-view', 'Marksheet', 'View', 'web', NULL, NULL),
(1851, 'marksheet-print', 'Marksheet', 'Print', 'web', NULL, NULL),
(1852, 'marksheet-download', 'Marksheet', 'Download', 'web', NULL, NULL),
(1853, 'marksheet-setting-view', 'Marksheet', 'Setting', 'web', NULL, NULL),
(1854, 'certificate-view', 'Certificate', 'View', 'web', NULL, NULL),
(1855, 'certificate-create', 'Certificate', 'Genarate', 'web', NULL, NULL),
(1856, 'certificate-edit', 'Certificate', 'Edit', 'web', NULL, NULL),
(1857, 'certificate-print', 'Certificate', 'Print', 'web', NULL, NULL),
(1858, 'certificate-download', 'Certificate', 'Download', 'web', NULL, NULL),
(1859, 'certificate-template-view', 'Certificate Template', 'View', 'web', NULL, NULL),
(1860, 'certificate-template-create', 'Certificate Template', 'Create', 'web', NULL, NULL),
(1861, 'certificate-template-edit', 'Certificate Template', 'Edit', 'web', NULL, NULL),
(1862, 'certificate-template-delete', 'Certificate Template', 'Delete', 'web', NULL, NULL),
(1863, 'report-student-progress', 'Reports', 'Student Progress', 'web', NULL, NULL),
(1864, 'report-subject-students', 'Reports', 'Course Students', 'web', NULL, NULL),
(1865, 'report-student-attendance', 'Reports', 'Student Attendance', 'web', NULL, NULL),
(1866, 'report-subject-attendance', 'Reports', 'Subject Attendance', 'web', NULL, NULL),
(1867, 'report-collected-fees', 'Reports', 'Collected Fees', 'web', NULL, NULL),
(1868, 'report-student-fees', 'Reports', 'Student Fees', 'web', NULL, NULL),
(1869, 'report-salary-paid', 'Reports', 'Salary Paid', 'web', NULL, NULL),
(1870, 'report-staff-leaves', 'Reports', 'Staff Leaves', 'web', NULL, NULL),
(1871, 'report-income', 'Reports', 'Total Income', 'web', NULL, NULL),
(1872, 'report-expense', 'Reports', 'Total Expense', 'web', NULL, NULL),
(1873, 'report-library', 'Reports', 'Library History', 'web', NULL, NULL),
(1874, 'report-book-return', 'Reports', 'Book Return Due', 'web', NULL, NULL),
(1875, 'report-inventory', 'Reports', 'Inventory History', 'web', NULL, NULL),
(1876, 'report-hostel', 'Reports', 'Hostel Members', 'web', NULL, NULL),
(1877, 'report-transport', 'Reports', 'Transport Members', 'web', NULL, NULL),
(1878, 'topbar-setting-view', 'Contact Setting', 'Manage', 'web', NULL, NULL),
(1879, 'social-setting-view', 'Social Setting', 'Manage', 'web', NULL, NULL),
(1880, 'slider-view', 'Slider', 'View', 'web', NULL, NULL),
(1881, 'slider-create', 'Slider', 'Create', 'web', NULL, NULL),
(1882, 'slider-edit', 'Slider', 'Edit', 'web', NULL, NULL),
(1883, 'slider-delete', 'Slider', 'Delete', 'web', NULL, NULL),
(1884, 'about-us-view', 'About Us', 'Manage', 'web', NULL, NULL),
(1885, 'feature-view', 'Feature', 'View', 'web', NULL, NULL),
(1886, 'feature-create', 'Feature', 'Create', 'web', NULL, NULL),
(1887, 'feature-edit', 'Feature', 'Edit', 'web', NULL, NULL),
(1888, 'feature-delete', 'Feature', 'Delete', 'web', NULL, NULL),
(1889, 'course-view', 'Course', 'View', 'web', NULL, NULL),
(1890, 'course-create', 'Course', 'Create', 'web', NULL, NULL),
(1891, 'course-edit', 'Course', 'Edit', 'web', NULL, NULL),
(1892, 'course-delete', 'Course', 'Delete', 'web', NULL, NULL),
(1893, 'web-event-view', 'Web Event', 'View', 'web', NULL, NULL),
(1894, 'web-event-create', 'Web Event', 'Create', 'web', NULL, NULL),
(1895, 'web-event-edit', 'Web Event', 'Edit', 'web', NULL, NULL),
(1896, 'web-event-delete', 'Web Event', 'Delete', 'web', NULL, NULL),
(1897, 'news-view', 'News', 'View', 'web', NULL, NULL),
(1898, 'news-create', 'News', 'Create', 'web', NULL, NULL),
(1899, 'news-edit', 'News', 'Edit', 'web', NULL, NULL),
(1900, 'news-delete', 'News', 'Delete', 'web', NULL, NULL),
(1901, 'gallery-view', 'Gallery', 'View', 'web', NULL, NULL),
(1902, 'gallery-create', 'Gallery', 'Create', 'web', NULL, NULL),
(1903, 'gallery-edit', 'Gallery', 'Edit', 'web', NULL, NULL),
(1904, 'gallery-delete', 'Gallery', 'Delete', 'web', NULL, NULL),
(1905, 'faq-view', 'Faq', 'View', 'web', NULL, NULL),
(1906, 'faq-create', 'Faq', 'Create', 'web', NULL, NULL),
(1907, 'faq-edit', 'Faq', 'Edit', 'web', NULL, NULL),
(1908, 'faq-delete', 'Faq', 'Delete', 'web', NULL, NULL),
(1909, 'testimonial-view', 'Testimonial', 'View', 'web', NULL, NULL),
(1910, 'testimonial-create', 'Testimonial', 'Create', 'web', NULL, NULL),
(1911, 'testimonial-edit', 'Testimonial', 'Edit', 'web', NULL, NULL),
(1912, 'testimonial-delete', 'Testimonial', 'Delete', 'web', NULL, NULL),
(1913, 'page-view', 'Footer Page', 'View', 'web', NULL, NULL),
(1914, 'page-create', 'Footer Page', 'Create', 'web', NULL, NULL),
(1915, 'page-edit', 'Footer Page', 'Edit', 'web', NULL, NULL),
(1916, 'page-delete', 'Footer Page', 'Delete', 'web', NULL, NULL),
(1917, 'call-to-action-view', 'Call To Action', 'Manage', 'web', NULL, NULL),
(1918, 'province-view', 'State/Province', 'View', 'web', NULL, NULL),
(1919, 'province-create', 'State/Province', 'Create', 'web', NULL, NULL),
(1920, 'province-edit', 'State/Province', 'Edit', 'web', NULL, NULL),
(1921, 'province-delete', 'State/Province', 'Delete', 'web', NULL, NULL),
(1922, 'district-view', 'District/City', 'View', 'web', NULL, NULL),
(1923, 'district-create', 'District/City', 'Create', 'web', NULL, NULL),
(1924, 'district-edit', 'District/City', 'Edit', 'web', NULL, NULL),
(1925, 'district-delete', 'District/City', 'Delete', 'web', NULL, NULL),
(1926, 'language-view', 'Language', 'View', 'web', NULL, NULL),
(1927, 'language-create', 'Language', 'Create', 'web', NULL, NULL),
(1928, 'language-edit', 'Language', 'Edit', 'web', NULL, NULL),
(1929, 'language-delete', 'Language', 'Delete', 'web', NULL, NULL),
(1930, 'translations-view', 'Translation', 'View', 'web', NULL, NULL),
(1931, 'translations-create', 'Translation', 'Create', 'web', NULL, NULL),
(1932, 'translations-delete', 'Translation', 'Delete', 'web', NULL, NULL),
(1933, 'setting-view', 'Setting', 'General', 'web', NULL, NULL),
(1934, 'setting-mail', 'Setting', 'Mail Setting', 'web', NULL, NULL),
(1935, 'setting-sms', 'Setting', 'SMS Getaways', 'web', NULL, NULL),
(1936, 'setting-payment', 'Setting', 'Payment Getaways', 'web', NULL, NULL),
(1937, 'application-setting-view', 'Application Setting', 'Manage', 'web', NULL, NULL),
(1938, 'role-view', 'Role and Permissions', 'View', 'web', NULL, NULL),
(1939, 'role-create', 'Role and Permissions', 'Create', 'web', NULL, NULL),
(1940, 'role-edit', 'Role and Permissions', 'Edit', 'web', NULL, NULL),
(1941, 'role-delete', 'Role and Permissions', 'Delete', 'web', NULL, NULL),
(1942, 'field-staff', 'Field Setting', 'Staff', 'web', NULL, NULL),
(1943, 'field-student', 'Field Setting', 'Student', 'web', NULL, NULL),
(1944, 'field-application', 'Field Setting', 'Application', 'web', NULL, NULL),
(1945, 'student-panel-view', 'Student Panel', 'Manage', 'web', NULL, NULL),
(1946, 'profile-view', 'My Profile', 'View', 'web', NULL, NULL),
(1947, 'profile-edit', 'My Profile', 'Edit', 'web', NULL, NULL),
(1948, 'profile-account', 'My Profile', 'Account', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phone_logs`
--

DROP TABLE IF EXISTS `phone_logs`;
CREATE TABLE IF NOT EXISTS `phone_logs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `follow_up_date` date DEFAULT NULL,
  `call_duration` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `purpose` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `call_type` int NOT NULL COMMENT '1 Income & 2 Outgoing',
  `status` int NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phone_logs`
--

INSERT INTO `phone_logs` (`id`, `name`, `phone`, `date`, `follow_up_date`, `call_duration`, `start_time`, `end_time`, `purpose`, `note`, `call_type`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Quon Sellers', '+1 (948) 556-2442', '2022-10-01', '2022-11-25', '2 min', NULL, NULL, 'Ratione excepturi qu', 'Minus maxime Nam mag', 1, 1, 1, NULL, '2022-10-01 12:17:13', '2022-10-01 12:17:13'),
(2, 'Tanya Grimes', '+1 (988) 107-4828', '2022-10-01', '2022-11-13', '3:50', NULL, NULL, 'Tempore sint est ne', 'Lorem omnis nostrum', 1, 1, 1, NULL, '2022-10-01 12:18:04', '2022-10-01 12:18:04'),
(3, 'Karyn Castillo', '+1 (923) 454-6055', '2021-12-18', '2022-10-09', '5 min', NULL, NULL, 'Et eos corrupti qui', 'Est eius doloremque', 1, 1, 1, NULL, '2022-10-01 12:18:59', '2022-10-01 12:18:59'),
(4, 'Quentin Alford', '+1 (628) 618-3668', '2022-07-20', '2022-11-18', '8:50', NULL, NULL, 'Velit omnis quas dis', 'Laboriosam et quide', 2, 1, 1, NULL, '2022-10-01 12:19:34', '2022-10-01 12:19:34'),
(5, 'Sasha Harper', '+1 (612) 725-1207', '2021-03-12', '2022-10-05', '6 min', NULL, NULL, 'Sint quas ullamco v', 'Architecto numquam q', 2, 1, 1, NULL, '2022-10-01 12:20:45', '2022-10-01 12:20:45'),
(6, 'Cleo Simpson', '+1 (305) 133-4681', '2022-05-28', NULL, NULL, NULL, NULL, 'Quos non maiores eos', 'Et obcaecati aut aut', 1, 1, 1, NULL, '2022-10-01 12:23:14', '2022-10-01 12:23:14'),
(7, 'Meredith Baxter', '+1 (502) 865-8511', '2023-08-25', '2024-11-11', 'Exercitationem tenet', '13:27:00', NULL, 'Incididunt reiciendi', 'Ut inventore error m', 2, 1, 1, NULL, '2023-08-25 07:27:35', '2023-08-25 07:27:35');

-- --------------------------------------------------------

--
-- Table structure for table `postal_exchanges`
--

DROP TABLE IF EXISTS `postal_exchanges`;
CREATE TABLE IF NOT EXISTS `postal_exchanges` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` int NOT NULL COMMENT '1 Import & 2 Export',
  `category_id` int UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` text COLLATE utf8mb4_unicode_ci,
  `from` text COLLATE utf8mb4_unicode_ci,
  `to` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `date` date DEFAULT NULL,
  `attach` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `postal_exchanges_category_id_foreign` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `postal_exchanges`
--

INSERT INTO `postal_exchanges` (`id`, `type`, `category_id`, `title`, `reference`, `from`, `to`, `note`, `date`, `attach`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'Sed reprehenderit e', 'Academic Building', 'Officiis et laboris', 'Numquam placeat rat', 'Ut dignissimos illum', '2019-08-03', 'background-border_1664649226.png', 1, 1, 1, '2022-10-01 12:33:46', '2022-10-27 13:32:56'),
(2, 1, 3, 'Proident provident', 'Govt', 'Commodo qui aut quis', 'Hic aperiam hic aper', 'Sit velit nisi asp', '2020-01-19', 'book-covers_1664656202.jpg', 1, 1, 1, '2022-10-01 12:34:05', '2022-10-27 13:32:01'),
(3, 2, 2, 'Velit sunt modi nihi', 'Sundarbon', 'Voluptate est dolori', 'Et dolor assumenda n', 'Enim in vel ad liber', '2021-01-11', NULL, 1, 1, 1, '2022-10-01 12:34:17', '2022-10-27 13:31:10'),
(4, 2, 3, 'Quod velit aliqua E', 'Saif Transport', 'Aute sint exercitati', 'Vitae ipsa ipsa co', 'Enim consectetur pr', '2022-06-28', NULL, 1, 1, 1, '2022-10-01 12:35:37', '2022-10-27 13:30:58'),
(5, 1, 2, 'Sed ut aut accusamus', 'Habib Vai', 'Architecto et ex qui', 'Qui eos dolorum ut', 'Voluptates quo tempo', '2022-03-31', 'book-cover2_1664656189.jpg', 1, 1, 1, '2022-10-01 12:35:51', '2022-10-27 13:30:40'),
(6, 1, 5, 'Accusamus mollit fug', 'Non vel modi volupta', 'In dolor nulla ut au', 'Labore officiis nost', 'Omnis enim qui obcae', '2023-08-22', NULL, 2, 1, 1, '2023-08-25 07:35:24', '2023-08-25 07:36:22'),
(7, 2, 1, 'Veniam incididunt a', 'Hic ullam mollit bea', 'Provident dolores a', 'Excepturi excepteur', 'Labore alias non cor', '2023-06-28', NULL, 1, 1, NULL, '2023-08-25 07:36:18', '2023-08-25 07:36:18'),
(8, 1, 2, 'Enim eaque consequun', 'Eu ad ipsum quod ve', 'Est cillum nostrum', 'Placeat placeat pa', 'Tempora accusamus mo', '2023-07-31', NULL, 4, 1, NULL, '2023-08-25 07:37:18', '2023-08-25 07:37:18');

-- --------------------------------------------------------

--
-- Table structure for table `postal_exchange_types`
--

DROP TABLE IF EXISTS `postal_exchange_types`;
CREATE TABLE IF NOT EXISTS `postal_exchange_types` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `postal_exchange_types_title_unique` (`title`),
  UNIQUE KEY `postal_exchange_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `postal_exchange_types`
--

INSERT INTO `postal_exchange_types` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Examination Papers', 'examination-papers', NULL, 1, '2022-10-01 03:58:48', '2022-10-01 03:58:48'),
(2, 'Library Books', 'library-books', NULL, 1, '2022-10-01 03:58:57', '2022-10-01 03:58:57'),
(3, 'Lab Instruments', 'lab-instruments', NULL, 1, '2022-10-01 04:01:27', '2022-10-01 04:01:27'),
(4, 'Office Documents', 'office-documents', NULL, 1, '2022-10-01 04:02:19', '2022-10-01 04:02:19'),
(5, 'Sports Equipment', 'sports-equipment', NULL, 1, '2022-10-01 04:03:56', '2022-10-01 04:03:56');

-- --------------------------------------------------------

--
-- Table structure for table `print_settings`
--

DROP TABLE IF EXISTS `print_settings`;
CREATE TABLE IF NOT EXISTS `print_settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `header_left` text COLLATE utf8mb4_unicode_ci,
  `header_center` text COLLATE utf8mb4_unicode_ci,
  `header_right` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `footer_left` text COLLATE utf8mb4_unicode_ci,
  `footer_center` text COLLATE utf8mb4_unicode_ci,
  `footer_right` text COLLATE utf8mb4_unicode_ci,
  `logo_left` text COLLATE utf8mb4_unicode_ci,
  `logo_right` text COLLATE utf8mb4_unicode_ci,
  `background` text COLLATE utf8mb4_unicode_ci,
  `width` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'auto',
  `height` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'auto',
  `student_photo` tinyint(1) NOT NULL DEFAULT '0',
  `barcode` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `prefix` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `print_settings_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `print_settings`
--

INSERT INTO `print_settings` (`id`, `slug`, `title`, `header_left`, `header_center`, `header_right`, `body`, `footer_left`, `footer_center`, `footer_right`, `logo_left`, `logo_right`, `background`, `width`, `height`, `student_photo`, `barcode`, `status`, `created_at`, `updated_at`, `prefix`) VALUES
(1, 'class-routine', 'Our University Class Routine', NULL, NULL, NULL, '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</p>', NULL, NULL, NULL, 'logo_1664567071.jpg', 'logo_1664567071.jpg', NULL, '1000px', 'auto', 0, 0, 1, '2022-09-30 13:44:31', '2022-09-30 13:44:31', NULL),
(2, 'exam-routine', 'Our University Exam Routine', NULL, NULL, NULL, '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</p>', NULL, NULL, NULL, 'logo_1664567122.jpg', 'logo_1664567122.jpg', NULL, '800px', 'auto', 0, 0, 1, '2022-09-30 13:45:22', '2022-09-30 13:45:22', NULL),
(3, 'admit-card', 'Final Exam Admit Card', NULL, NULL, NULL, NULL, 'Exam Controller', NULL, 'Issued By', 'logo_1664567252.jpg', NULL, NULL, '600px', 'auto', 1, 0, 1, '2022-09-30 13:47:32', '2022-10-01 04:36:39', NULL),
(4, 'fees-receipt', 'Our University Fees Receipt', NULL, NULL, NULL, NULL, 'Student Signature', NULL, 'Receiver Signature', 'logo_1664567807.jpg', 'logo_1664567807.jpg', NULL, '800px', 'auto', 0, 0, 1, '2022-09-30 13:56:47', '2024-09-30 11:55:07', 'FR-'),
(5, 'pay-slip', 'Our University Salary Pay Slip', NULL, NULL, NULL, NULL, 'Accountant', NULL, 'Receiver', NULL, 'logo_1664568033.jpg', NULL, '800px', 'auto', 0, 0, 1, '2022-09-30 14:00:33', '2024-09-30 11:55:57', 'PS-'),
(6, 'visitor-token', 'Visitor Token', NULL, NULL, NULL, NULL, 'Authority', NULL, 'Issues By', NULL, 'logo_1664617034.jpg', NULL, '600px', 'auto', 0, 1, 1, '2022-10-01 03:37:14', '2024-09-30 11:58:39', 'UV-');

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

DROP TABLE IF EXISTS `programs`;
CREATE TABLE IF NOT EXISTS `programs` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `faculty_id` int UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shortcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `programs_title_unique` (`title`),
  UNIQUE KEY `programs_slug_unique` (`slug`),
  KEY `programs_faculty_id_foreign` (`faculty_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`id`, `faculty_id`, `title`, `slug`, `shortcode`, `registration`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Social Sciences', 'social-sciences', 'BSS', 0, 1, '2022-09-30 12:25:51', '2022-09-30 12:25:51'),
(2, 2, 'Civil Engineering', 'civil-engineering', 'CE', 0, 1, '2022-09-30 12:27:43', '2022-09-30 12:27:43'),
(3, 2, 'Computer Engineering', 'computer-engineering', 'CSE', 0, 1, '2022-09-30 12:28:31', '2022-09-30 12:28:31'),
(4, 2, 'Mechanical Engineering', 'mechanical-engineering', 'ME', 0, 1, '2022-09-30 12:29:58', '2022-09-30 12:29:58'),
(5, 3, 'English Studies', 'english-studies', 'ES', 0, 1, '2022-09-30 12:30:53', '2022-09-30 12:30:53'),
(6, 3, 'Fine Arts and Design', 'fine-arts-and-design', 'FAD', 0, 1, '2022-09-30 12:31:49', '2022-09-30 12:31:49'),
(7, 4, 'Politics and Governance', 'politics-and-governance', 'PG', 0, 1, '2022-09-30 12:34:23', '2022-09-30 12:34:23');

-- --------------------------------------------------------

--
-- Table structure for table `program_class_room`
--

DROP TABLE IF EXISTS `program_class_room`;
CREATE TABLE IF NOT EXISTS `program_class_room` (
  `program_id` int UNSIGNED NOT NULL,
  `class_room_id` int UNSIGNED NOT NULL,
  KEY `program_class_room_program_id_foreign` (`program_id`),
  KEY `program_class_room_class_room_id_foreign` (`class_room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `program_semester`
--

DROP TABLE IF EXISTS `program_semester`;
CREATE TABLE IF NOT EXISTS `program_semester` (
  `program_id` int UNSIGNED NOT NULL,
  `semester_id` int UNSIGNED NOT NULL,
  KEY `program_semester_program_id_foreign` (`program_id`),
  KEY `program_semester_semester_id_foreign` (`semester_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `program_semester`
--

INSERT INTO `program_semester` (`program_id`, `semester_id`) VALUES
(2, 1),
(3, 1),
(5, 1),
(6, 1),
(4, 1),
(7, 1),
(1, 1),
(2, 2),
(3, 2),
(5, 2),
(6, 2),
(4, 2),
(7, 2),
(1, 2),
(2, 3),
(3, 3),
(5, 3),
(6, 3),
(4, 3),
(7, 3),
(1, 3),
(2, 4),
(3, 4),
(5, 4),
(6, 4),
(4, 4),
(7, 4),
(1, 4),
(2, 5),
(3, 5),
(5, 5),
(6, 5),
(4, 5),
(7, 5),
(1, 5),
(2, 6),
(3, 6),
(5, 6),
(6, 6),
(4, 6),
(7, 6),
(1, 6),
(2, 7),
(3, 7),
(5, 7),
(6, 7),
(4, 7),
(7, 7),
(1, 7),
(2, 8),
(3, 8),
(5, 8),
(6, 8),
(4, 8),
(7, 8),
(1, 8),
(3, 9),
(6, 9),
(3, 10),
(6, 10);

-- --------------------------------------------------------

--
-- Table structure for table `program_semester_sections`
--

DROP TABLE IF EXISTS `program_semester_sections`;
CREATE TABLE IF NOT EXISTS `program_semester_sections` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `program_id` int UNSIGNED NOT NULL,
  `semester_id` int UNSIGNED NOT NULL,
  `section_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `program_semester_sections_program_id_foreign` (`program_id`),
  KEY `program_semester_sections_semester_id_foreign` (`semester_id`),
  KEY `program_semester_sections_section_id_foreign` (`section_id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `program_semester_sections`
--

INSERT INTO `program_semester_sections` (`id`, `program_id`, `semester_id`, `section_id`, `created_at`, `updated_at`) VALUES
(61, 2, 1, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(62, 2, 2, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(63, 2, 3, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(64, 2, 4, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(65, 2, 5, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(66, 2, 6, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(67, 2, 7, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(68, 2, 8, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(69, 3, 10, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(70, 3, 1, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(71, 3, 2, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(72, 3, 3, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(73, 3, 4, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(74, 3, 5, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(75, 3, 6, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(76, 3, 7, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(77, 3, 8, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(78, 3, 9, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(79, 5, 1, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(80, 5, 2, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(81, 5, 3, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(82, 5, 4, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(83, 5, 5, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(84, 5, 6, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(85, 5, 7, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(86, 5, 8, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(87, 6, 10, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(88, 6, 1, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(89, 6, 2, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(90, 6, 3, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(91, 6, 4, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(92, 6, 5, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(93, 6, 6, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(94, 6, 7, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(95, 6, 8, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(96, 6, 9, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(97, 4, 1, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(98, 4, 2, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(99, 4, 3, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(100, 4, 4, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(101, 4, 5, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(102, 4, 6, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(103, 4, 7, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(104, 4, 8, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(105, 7, 1, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(106, 7, 2, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(107, 7, 3, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(108, 7, 4, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(109, 7, 5, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(110, 7, 6, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(111, 7, 7, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(112, 7, 8, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(113, 1, 1, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(114, 1, 2, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(115, 1, 3, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(116, 1, 4, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(117, 1, 5, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(118, 1, 6, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(119, 1, 7, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(120, 1, 8, 1, '2022-09-30 13:28:09', '2022-09-30 13:28:09'),
(121, 3, 10, 2, '2022-09-30 13:29:15', '2022-09-30 13:29:15'),
(122, 3, 1, 2, '2022-09-30 13:29:15', '2022-09-30 13:29:15'),
(123, 3, 2, 2, '2022-09-30 13:29:15', '2022-09-30 13:29:15'),
(124, 3, 3, 2, '2022-09-30 13:29:15', '2022-09-30 13:29:15'),
(125, 3, 4, 2, '2022-09-30 13:29:15', '2022-09-30 13:29:15'),
(126, 3, 5, 2, '2022-09-30 13:29:15', '2022-09-30 13:29:15'),
(127, 3, 6, 2, '2022-09-30 13:29:15', '2022-09-30 13:29:15'),
(128, 3, 7, 2, '2022-09-30 13:29:15', '2022-09-30 13:29:15'),
(129, 3, 8, 2, '2022-09-30 13:29:15', '2022-09-30 13:29:15'),
(130, 3, 9, 2, '2022-09-30 13:29:15', '2022-09-30 13:29:15'),
(131, 5, 1, 2, '2022-09-30 13:29:15', '2022-09-30 13:29:15'),
(132, 5, 2, 2, '2022-09-30 13:29:15', '2022-09-30 13:29:15'),
(133, 5, 3, 2, '2022-09-30 13:29:15', '2022-09-30 13:29:15'),
(134, 5, 4, 2, '2022-09-30 13:29:15', '2022-09-30 13:29:15'),
(135, 5, 5, 2, '2022-09-30 13:29:15', '2022-09-30 13:29:15'),
(136, 5, 6, 2, '2022-09-30 13:29:15', '2022-09-30 13:29:15'),
(137, 5, 7, 2, '2022-09-30 13:29:15', '2022-09-30 13:29:15'),
(138, 5, 8, 2, '2022-09-30 13:29:15', '2022-09-30 13:29:15'),
(139, 7, 1, 2, '2022-09-30 13:29:15', '2022-09-30 13:29:15'),
(140, 7, 2, 2, '2022-09-30 13:29:15', '2022-09-30 13:29:15'),
(141, 7, 3, 2, '2022-09-30 13:29:15', '2022-09-30 13:29:15'),
(142, 7, 4, 2, '2022-09-30 13:29:15', '2022-09-30 13:29:15'),
(143, 7, 5, 2, '2022-09-30 13:29:15', '2022-09-30 13:29:15'),
(144, 7, 6, 2, '2022-09-30 13:29:15', '2022-09-30 13:29:15'),
(145, 7, 7, 2, '2022-09-30 13:29:15', '2022-09-30 13:29:15'),
(146, 7, 8, 2, '2022-09-30 13:29:15', '2022-09-30 13:29:15'),
(147, 3, 10, 3, '2022-09-30 13:30:12', '2022-09-30 13:30:12'),
(148, 3, 1, 3, '2022-09-30 13:30:12', '2022-09-30 13:30:12'),
(149, 3, 2, 3, '2022-09-30 13:30:12', '2022-09-30 13:30:12'),
(150, 3, 3, 3, '2022-09-30 13:30:12', '2022-09-30 13:30:12'),
(151, 3, 4, 3, '2022-09-30 13:30:12', '2022-09-30 13:30:12'),
(152, 3, 5, 3, '2022-09-30 13:30:12', '2022-09-30 13:30:12'),
(153, 3, 6, 3, '2022-09-30 13:30:12', '2022-09-30 13:30:12'),
(154, 3, 7, 3, '2022-09-30 13:30:12', '2022-09-30 13:30:12'),
(155, 3, 8, 3, '2022-09-30 13:30:12', '2022-09-30 13:30:12'),
(156, 3, 9, 3, '2022-09-30 13:30:12', '2022-09-30 13:30:12');

-- --------------------------------------------------------

--
-- Table structure for table `program_session`
--

DROP TABLE IF EXISTS `program_session`;
CREATE TABLE IF NOT EXISTS `program_session` (
  `program_id` int UNSIGNED NOT NULL,
  `session_id` int UNSIGNED NOT NULL,
  KEY `program_session_program_id_foreign` (`program_id`),
  KEY `program_session_session_id_foreign` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `program_session`
--

INSERT INTO `program_session` (`program_id`, `session_id`) VALUES
(2, 1),
(3, 1),
(5, 1),
(6, 1),
(4, 1),
(7, 1),
(1, 1),
(2, 2),
(3, 2),
(5, 2),
(6, 2),
(4, 2),
(7, 2),
(1, 2),
(2, 3),
(3, 3),
(5, 3),
(6, 3),
(4, 3),
(7, 3),
(1, 3),
(2, 4),
(3, 4),
(5, 4),
(6, 4),
(4, 4),
(7, 4),
(1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `program_subject`
--

DROP TABLE IF EXISTS `program_subject`;
CREATE TABLE IF NOT EXISTS `program_subject` (
  `program_id` int UNSIGNED NOT NULL,
  `subject_id` bigint UNSIGNED NOT NULL,
  KEY `program_subject_program_id_foreign` (`program_id`),
  KEY `program_subject_subject_id_foreign` (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `program_subject`
--

INSERT INTO `program_subject` (`program_id`, `subject_id`) VALUES
(3, 1),
(3, 2),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(2, 4),
(3, 4),
(2, 5),
(4, 5),
(2, 6),
(3, 6),
(4, 6),
(3, 7),
(3, 8),
(2, 9),
(3, 9),
(4, 9),
(6, 9),
(2, 10),
(4, 10),
(2, 11),
(4, 11),
(2, 12),
(4, 12),
(6, 12),
(2, 13),
(4, 13);

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

DROP TABLE IF EXISTS `provinces`;
CREATE TABLE IF NOT EXISTS `provinces` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `provinces_title_unique` (`title`),
  UNIQUE KEY `provinces_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', 'dhaka', NULL, 1, '2022-09-30 14:16:55', '2022-09-30 14:16:55'),
(2, 'Sylhet', 'sylhet', NULL, 1, '2022-09-30 14:17:02', '2022-09-30 14:17:02'),
(3, 'Khulna', 'khulna', NULL, 1, '2022-09-30 14:17:07', '2022-09-30 14:17:07'),
(4, 'Rangpur', 'rangpur', NULL, 1, '2022-09-30 14:17:12', '2022-09-30 14:17:12');

-- --------------------------------------------------------

--
-- Table structure for table `result_contributions`
--

DROP TABLE IF EXISTS `result_contributions`;
CREATE TABLE IF NOT EXISTS `result_contributions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `attendances` decimal(5,2) NOT NULL DEFAULT '0.00',
  `assignments` decimal(5,2) NOT NULL DEFAULT '0.00',
  `activities` decimal(5,2) NOT NULL DEFAULT '0.00',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `result_contributions`
--

INSERT INTO `result_contributions` (`id`, `attendances`, `assignments`, `activities`, `status`, `created_at`, `updated_at`) VALUES
(1, 10.00, 10.00, 10.00, 1, NULL, '2024-09-30 12:37:21');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`),
  UNIQUE KEY `roles_name_unique` (`name`),
  UNIQUE KEY `roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'super-admin', 'web', '2022-09-30 12:00:46', '2022-09-30 12:00:46'),
(2, 'Admin', 'admin', 'web', NULL, NULL),
(3, 'Accountant', 'accountant', 'web', NULL, NULL),
(4, 'Librarian', 'librarian', 'web', NULL, NULL),
(5, 'Receptionist', 'receptionist', 'web', NULL, NULL),
(6, 'Teacher', 'teacher', 'web', NULL, NULL),
(7, 'Office Staff', 'office-staff', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1506, 1),
(1507, 1),
(1508, 1),
(1509, 1),
(1510, 1),
(1511, 1),
(1512, 1),
(1513, 1),
(1514, 1),
(1515, 1),
(1516, 1),
(1517, 1),
(1518, 1),
(1519, 1),
(1520, 1),
(1521, 1),
(1522, 1),
(1523, 1),
(1524, 1),
(1525, 1),
(1526, 1),
(1527, 1),
(1528, 1),
(1529, 1),
(1530, 1),
(1531, 1),
(1532, 1),
(1533, 1),
(1534, 1),
(1535, 1),
(1536, 1),
(1537, 1),
(1538, 1),
(1539, 1),
(1540, 1),
(1541, 1),
(1542, 1),
(1543, 1),
(1544, 1),
(1545, 1),
(1546, 1),
(1547, 1),
(1548, 1),
(1549, 1),
(1550, 1),
(1551, 1),
(1552, 1),
(1553, 1),
(1554, 1),
(1555, 1),
(1556, 1),
(1557, 1),
(1558, 1),
(1559, 1),
(1560, 1),
(1561, 1),
(1562, 1),
(1563, 1),
(1564, 1),
(1565, 1),
(1566, 1),
(1567, 1),
(1568, 1),
(1569, 1),
(1570, 1),
(1571, 1),
(1572, 1),
(1573, 1),
(1574, 1),
(1575, 1),
(1576, 1),
(1577, 1),
(1578, 1),
(1579, 1),
(1580, 1),
(1581, 1),
(1582, 1),
(1583, 1),
(1584, 1),
(1585, 1),
(1586, 1),
(1587, 1),
(1588, 1),
(1589, 1),
(1590, 1),
(1591, 1),
(1592, 1),
(1593, 1),
(1594, 1),
(1595, 1),
(1596, 1),
(1597, 1),
(1598, 1),
(1599, 1),
(1600, 1),
(1601, 1),
(1602, 1),
(1603, 1),
(1604, 1),
(1605, 1),
(1606, 1),
(1607, 1),
(1608, 1),
(1609, 1),
(1610, 1),
(1611, 1),
(1612, 1),
(1613, 1),
(1614, 1),
(1615, 1),
(1616, 1),
(1617, 1),
(1618, 1),
(1619, 1),
(1620, 1),
(1621, 1),
(1622, 1),
(1623, 1),
(1624, 1),
(1625, 1),
(1626, 1),
(1627, 1),
(1628, 1),
(1629, 1),
(1630, 1),
(1631, 1),
(1632, 1),
(1633, 1),
(1634, 1),
(1635, 1),
(1636, 1),
(1637, 1),
(1638, 1),
(1639, 1),
(1640, 1),
(1641, 1),
(1642, 1),
(1643, 1),
(1644, 1),
(1645, 1),
(1646, 1),
(1647, 1),
(1648, 1),
(1649, 1),
(1650, 1),
(1651, 1),
(1652, 1),
(1653, 1),
(1654, 1),
(1655, 1),
(1656, 1),
(1657, 1),
(1658, 1),
(1659, 1),
(1660, 1),
(1661, 1),
(1662, 1),
(1663, 1),
(1664, 1),
(1665, 1),
(1666, 1),
(1667, 1),
(1668, 1),
(1669, 1),
(1670, 1),
(1671, 1),
(1672, 1),
(1673, 1),
(1674, 1),
(1675, 1),
(1676, 1),
(1677, 1),
(1678, 1),
(1679, 1),
(1680, 1),
(1681, 1),
(1682, 1),
(1683, 1),
(1684, 1),
(1685, 1),
(1686, 1),
(1687, 1),
(1688, 1),
(1689, 1),
(1690, 1),
(1691, 1),
(1692, 1),
(1693, 1),
(1694, 1),
(1695, 1),
(1696, 1),
(1697, 1),
(1698, 1),
(1699, 1),
(1700, 1),
(1701, 1),
(1702, 1),
(1703, 1),
(1704, 1),
(1705, 1),
(1706, 1),
(1707, 1),
(1708, 1),
(1709, 1),
(1710, 1),
(1711, 1),
(1712, 1),
(1713, 1),
(1714, 1),
(1715, 1),
(1716, 1),
(1717, 1),
(1718, 1),
(1719, 1),
(1720, 1),
(1721, 1),
(1722, 1),
(1723, 1),
(1724, 1),
(1725, 1),
(1726, 1),
(1727, 1),
(1728, 1),
(1729, 1),
(1730, 1),
(1731, 1),
(1732, 1),
(1733, 1),
(1734, 1),
(1735, 1),
(1736, 1),
(1737, 1),
(1738, 1),
(1739, 1),
(1740, 1),
(1741, 1),
(1742, 1),
(1743, 1),
(1744, 1),
(1745, 1),
(1746, 1),
(1747, 1),
(1748, 1),
(1749, 1),
(1750, 1),
(1751, 1),
(1752, 1),
(1753, 1),
(1754, 1),
(1755, 1),
(1756, 1),
(1757, 1),
(1758, 1),
(1759, 1),
(1760, 1),
(1761, 1),
(1762, 1),
(1763, 1),
(1764, 1),
(1765, 1),
(1766, 1),
(1767, 1),
(1768, 1),
(1769, 1),
(1770, 1),
(1771, 1),
(1772, 1),
(1773, 1),
(1774, 1),
(1775, 1),
(1776, 1),
(1777, 1),
(1778, 1),
(1779, 1),
(1780, 1),
(1781, 1),
(1782, 1),
(1783, 1),
(1784, 1),
(1785, 1),
(1786, 1),
(1787, 1),
(1788, 1),
(1789, 1),
(1790, 1),
(1791, 1),
(1792, 1),
(1793, 1),
(1794, 1),
(1795, 1),
(1796, 1),
(1797, 1),
(1798, 1),
(1799, 1),
(1800, 1),
(1801, 1),
(1802, 1),
(1803, 1),
(1804, 1),
(1805, 1),
(1806, 1),
(1807, 1),
(1808, 1),
(1809, 1),
(1810, 1),
(1811, 1),
(1812, 1),
(1813, 1),
(1814, 1),
(1815, 1),
(1816, 1),
(1817, 1),
(1818, 1),
(1819, 1),
(1820, 1),
(1821, 1),
(1822, 1),
(1823, 1),
(1824, 1),
(1825, 1),
(1826, 1),
(1827, 1),
(1828, 1),
(1829, 1),
(1830, 1),
(1831, 1),
(1832, 1),
(1833, 1),
(1834, 1),
(1835, 1),
(1836, 1),
(1837, 1),
(1838, 1),
(1839, 1),
(1840, 1),
(1841, 1),
(1842, 1),
(1843, 1),
(1844, 1),
(1845, 1),
(1846, 1),
(1847, 1),
(1848, 1),
(1849, 1),
(1850, 1),
(1851, 1),
(1852, 1),
(1853, 1),
(1854, 1),
(1855, 1),
(1856, 1),
(1857, 1),
(1858, 1),
(1859, 1),
(1860, 1),
(1861, 1),
(1862, 1),
(1863, 1),
(1864, 1),
(1865, 1),
(1866, 1),
(1867, 1),
(1868, 1),
(1869, 1),
(1870, 1),
(1871, 1),
(1872, 1),
(1873, 1),
(1874, 1),
(1875, 1),
(1876, 1),
(1877, 1),
(1878, 1),
(1879, 1),
(1880, 1),
(1881, 1),
(1882, 1),
(1883, 1),
(1884, 1),
(1885, 1),
(1886, 1),
(1887, 1),
(1888, 1),
(1889, 1),
(1890, 1),
(1891, 1),
(1892, 1),
(1893, 1),
(1894, 1),
(1895, 1),
(1896, 1),
(1897, 1),
(1898, 1),
(1899, 1),
(1900, 1),
(1901, 1),
(1902, 1),
(1903, 1),
(1904, 1),
(1905, 1),
(1906, 1),
(1907, 1),
(1908, 1),
(1909, 1),
(1910, 1),
(1911, 1),
(1912, 1),
(1913, 1),
(1914, 1),
(1915, 1),
(1916, 1),
(1917, 1),
(1918, 1),
(1919, 1),
(1920, 1),
(1921, 1),
(1922, 1),
(1923, 1),
(1924, 1),
(1925, 1),
(1926, 1),
(1927, 1),
(1928, 1),
(1929, 1),
(1930, 1),
(1931, 1),
(1932, 1),
(1933, 1),
(1934, 1),
(1935, 1),
(1936, 1),
(1937, 1),
(1938, 1),
(1939, 1),
(1940, 1),
(1941, 1),
(1942, 1),
(1943, 1),
(1944, 1),
(1945, 1),
(1946, 1),
(1947, 1),
(1948, 1),
(1506, 2),
(1507, 2),
(1508, 2),
(1510, 2),
(1511, 2),
(1512, 2),
(1514, 2),
(1515, 2),
(1516, 2),
(1517, 2),
(1518, 2),
(1519, 2),
(1520, 2),
(1521, 2),
(1522, 2),
(1523, 2),
(1524, 2),
(1525, 2),
(1526, 2),
(1527, 2),
(1529, 2),
(1530, 2),
(1531, 2),
(1532, 2),
(1533, 2),
(1535, 2),
(1536, 2),
(1537, 2),
(1539, 2),
(1540, 2),
(1541, 2),
(1542, 2),
(1543, 2),
(1544, 2),
(1545, 2),
(1546, 2),
(1548, 2),
(1549, 2),
(1550, 2),
(1552, 2),
(1553, 2),
(1554, 2),
(1556, 2),
(1557, 2),
(1558, 2),
(1560, 2),
(1561, 2),
(1562, 2),
(1564, 2),
(1565, 2),
(1566, 2),
(1568, 2),
(1569, 2),
(1570, 2),
(1572, 2),
(1573, 2),
(1574, 2),
(1576, 2),
(1577, 2),
(1578, 2),
(1579, 2),
(1581, 2),
(1582, 2),
(1583, 2),
(1584, 2),
(1585, 2),
(1586, 2),
(1587, 2),
(1589, 2),
(1590, 2),
(1591, 2),
(1592, 2),
(1593, 2),
(1594, 2),
(1595, 2),
(1596, 2),
(1597, 2),
(1598, 2),
(1599, 2),
(1600, 2),
(1602, 2),
(1603, 2),
(1604, 2),
(1606, 2),
(1607, 2),
(1608, 2),
(1609, 2),
(1610, 2),
(1611, 2),
(1612, 2),
(1613, 2),
(1615, 2),
(1616, 2),
(1617, 2),
(1618, 2),
(1620, 2),
(1621, 2),
(1622, 2),
(1624, 2),
(1625, 2),
(1626, 2),
(1627, 2),
(1628, 2),
(1629, 2),
(1630, 2),
(1631, 2),
(1632, 2),
(1633, 2),
(1634, 2),
(1635, 2),
(1637, 2),
(1638, 2),
(1639, 2),
(1641, 2),
(1642, 2),
(1643, 2),
(1645, 2),
(1646, 2),
(1647, 2),
(1649, 2),
(1650, 2),
(1651, 2),
(1652, 2),
(1653, 2),
(1655, 2),
(1656, 2),
(1657, 2),
(1658, 2),
(1659, 2),
(1660, 2),
(1661, 2),
(1662, 2),
(1664, 2),
(1665, 2),
(1666, 2),
(1668, 2),
(1669, 2),
(1670, 2),
(1672, 2),
(1673, 2),
(1674, 2),
(1676, 2),
(1677, 2),
(1678, 2),
(1679, 2),
(1680, 2),
(1681, 2),
(1683, 2),
(1684, 2),
(1685, 2),
(1687, 2),
(1688, 2),
(1690, 2),
(1691, 2),
(1692, 2),
(1694, 2),
(1695, 2),
(1696, 2),
(1698, 2),
(1699, 2),
(1700, 2),
(1702, 2),
(1703, 2),
(1704, 2),
(1706, 2),
(1707, 2),
(1708, 2),
(1710, 2),
(1711, 2),
(1713, 2),
(1714, 2),
(1715, 2),
(1717, 2),
(1718, 2),
(1719, 2),
(1720, 2),
(1722, 2),
(1723, 2),
(1724, 2),
(1726, 2),
(1727, 2),
(1729, 2),
(1730, 2),
(1731, 2),
(1733, 2),
(1734, 2),
(1735, 2),
(1736, 2),
(1737, 2),
(1739, 2),
(1740, 2),
(1741, 2),
(1742, 2),
(1743, 2),
(1745, 2),
(1746, 2),
(1747, 2),
(1749, 2),
(1750, 2),
(1752, 2),
(1753, 2),
(1754, 2),
(1756, 2),
(1757, 2),
(1758, 2),
(1760, 2),
(1761, 2),
(1762, 2),
(1764, 2),
(1765, 2),
(1766, 2),
(1768, 2),
(1769, 2),
(1770, 2),
(1772, 2),
(1773, 2),
(1774, 2),
(1775, 2),
(1776, 2),
(1778, 2),
(1779, 2),
(1780, 2),
(1782, 2),
(1783, 2),
(1784, 2),
(1786, 2),
(1787, 2),
(1788, 2),
(1789, 2),
(1790, 2),
(1792, 2),
(1793, 2),
(1794, 2),
(1796, 2),
(1797, 2),
(1798, 2),
(1800, 2),
(1801, 2),
(1802, 2),
(1803, 2),
(1805, 2),
(1806, 2),
(1807, 2),
(1808, 2),
(1810, 2),
(1811, 2),
(1812, 2),
(1814, 2),
(1815, 2),
(1816, 2),
(1818, 2),
(1819, 2),
(1820, 2),
(1822, 2),
(1823, 2),
(1824, 2),
(1826, 2),
(1827, 2),
(1828, 2),
(1830, 2),
(1831, 2),
(1832, 2),
(1834, 2),
(1835, 2),
(1836, 2),
(1838, 2),
(1839, 2),
(1840, 2),
(1842, 2),
(1843, 2),
(1844, 2),
(1846, 2),
(1847, 2),
(1848, 2),
(1850, 2),
(1851, 2),
(1852, 2),
(1853, 2),
(1854, 2),
(1855, 2),
(1856, 2),
(1857, 2),
(1858, 2),
(1859, 2),
(1860, 2),
(1861, 2),
(1863, 2),
(1864, 2),
(1865, 2),
(1866, 2),
(1867, 2),
(1868, 2),
(1869, 2),
(1870, 2),
(1871, 2),
(1872, 2),
(1873, 2),
(1874, 2),
(1875, 2),
(1876, 2),
(1877, 2),
(1918, 2),
(1919, 2),
(1920, 2),
(1922, 2),
(1923, 2),
(1924, 2),
(1933, 2),
(1934, 2),
(1935, 2),
(1936, 2),
(1937, 2),
(1946, 2),
(1947, 2),
(1948, 2),
(1624, 3),
(1625, 3),
(1626, 3),
(1627, 3),
(1628, 3),
(1629, 3),
(1631, 3),
(1632, 3),
(1633, 3),
(1634, 3),
(1635, 3),
(1637, 3),
(1638, 3),
(1639, 3),
(1641, 3),
(1642, 3),
(1643, 3),
(1655, 3),
(1656, 3),
(1657, 3),
(1658, 3),
(1690, 3),
(1691, 3),
(1692, 3),
(1694, 3),
(1695, 3),
(1696, 3),
(1698, 3),
(1699, 3),
(1700, 3),
(1702, 3),
(1703, 3),
(1704, 3),
(1706, 3),
(1946, 3),
(1947, 3),
(1948, 3),
(1726, 4),
(1727, 4),
(1728, 4),
(1729, 4),
(1730, 4),
(1731, 4),
(1733, 4),
(1735, 4),
(1736, 4),
(1737, 4),
(1739, 4),
(1740, 4),
(1741, 4),
(1742, 4),
(1743, 4),
(1745, 4),
(1746, 4),
(1747, 4),
(1946, 4),
(1947, 4),
(1948, 4),
(1796, 5),
(1797, 5),
(1798, 5),
(1800, 5),
(1801, 5),
(1802, 5),
(1803, 5),
(1806, 5),
(1807, 5),
(1808, 5),
(1810, 5),
(1811, 5),
(1812, 5),
(1814, 5),
(1815, 5),
(1816, 5),
(1818, 5),
(1819, 5),
(1820, 5),
(1822, 5),
(1823, 5),
(1824, 5),
(1826, 5),
(1827, 5),
(1828, 5),
(1830, 5),
(1831, 5),
(1832, 5),
(1834, 5),
(1835, 5),
(1836, 5),
(1838, 5),
(1839, 5),
(1840, 5),
(1842, 5),
(1843, 5),
(1844, 5),
(1846, 5),
(1847, 5),
(1848, 5),
(1946, 5),
(1947, 5),
(1948, 5),
(1510, 6),
(1529, 6),
(1530, 6),
(1531, 6),
(1532, 6),
(1533, 6),
(1535, 6),
(1536, 6),
(1537, 6),
(1539, 6),
(1540, 6),
(1541, 6),
(1542, 6),
(1581, 6),
(1582, 6),
(1583, 6),
(1584, 6),
(1585, 6),
(1586, 6),
(1587, 6),
(1588, 6),
(1589, 6),
(1590, 6),
(1591, 6),
(1592, 6),
(1593, 6),
(1594, 6),
(1595, 6),
(1596, 6),
(1597, 6),
(1606, 6),
(1607, 6),
(1608, 6),
(1609, 6),
(1946, 6),
(1947, 6),
(1948, 6);

-- --------------------------------------------------------

--
-- Table structure for table `schedule_settings`
--

DROP TABLE IF EXISTS `schedule_settings`;
CREATE TABLE IF NOT EXISTS `schedule_settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` int NOT NULL,
  `time` time NOT NULL,
  `email` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 Inactive, 1 Active',
  `sms` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 Inactive, 1 Active',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `schedule_settings_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
CREATE TABLE IF NOT EXISTS `sections` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seat` int DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sections_title_unique` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `title`, `seat`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Section A', NULL, 1, '2022-09-30 13:27:34', '2022-09-30 13:28:09'),
(2, 'Section B', NULL, 1, '2022-09-30 13:29:15', '2022-09-30 13:29:15'),
(3, 'Section C', NULL, 1, '2022-09-30 13:30:12', '2022-09-30 13:30:12');

-- --------------------------------------------------------

--
-- Table structure for table `semesters`
--

DROP TABLE IF EXISTS `semesters`;
CREATE TABLE IF NOT EXISTS `semesters` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `semesters_title_unique` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `semesters`
--

INSERT INTO `semesters` (`id`, `title`, `year`, `status`, `created_at`, `updated_at`) VALUES
(1, '1st Semester', '1', 1, '2022-09-30 13:22:04', '2022-09-30 13:22:04'),
(2, '2nd Semester', '1', 1, '2022-09-30 13:22:18', '2022-09-30 13:22:18'),
(3, '3rd Semester', '2', 1, '2022-09-30 13:22:32', '2022-09-30 13:22:32'),
(4, '4th Semester', '2', 1, '2022-09-30 13:22:48', '2022-09-30 13:22:48'),
(5, '5th Semester', '3', 1, '2022-09-30 13:23:03', '2022-09-30 13:23:03'),
(6, '6th Semester', '3', 1, '2022-09-30 13:23:13', '2022-09-30 13:23:13'),
(7, '7th Semester', '4', 1, '2022-09-30 13:23:24', '2022-09-30 13:23:24'),
(8, '8th Semester', '4', 1, '2022-09-30 13:23:32', '2022-09-30 13:23:32'),
(9, '9th Semester', '5', 1, '2022-09-30 13:24:02', '2022-09-30 13:24:02'),
(10, '10th Semester', '5', 1, '2022-09-30 13:24:55', '2022-09-30 13:24:55');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `current` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sessions_title_unique` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `title`, `start_date`, `end_date`, `current`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Fall-2021', '2021-01-01', '2021-06-30', 0, 1, '2022-09-30 12:00:47', '2022-09-30 13:18:44'),
(2, 'Spring-2021', '2021-07-01', '2021-12-31', 0, 1, '2022-09-30 13:17:39', '2022-09-30 13:18:44'),
(3, 'Fall-2022', '2022-01-01', '2022-07-30', 0, 1, '2022-09-30 13:18:14', '2022-09-30 13:18:44'),
(4, 'Spring-2022', '2022-07-01', '2022-12-01', 1, 1, '2022-09-30 13:18:44', '2022-09-30 13:18:44');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `academy_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `logo_path` text COLLATE utf8mb4_unicode_ci,
  `favicon_path` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_format` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_format` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `week_start` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_zone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decimal_place` int NOT NULL DEFAULT '2',
  `copyright_text` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `academy_code`, `meta_title`, `meta_description`, `meta_keywords`, `logo_path`, `favicon_path`, `phone`, `email`, `fax`, `address`, `language`, `date_format`, `time_format`, `week_start`, `time_zone`, `currency`, `currency_symbol`, `decimal_place`, `copyright_text`, `status`, `created_at`, `updated_at`) VALUES
(1, 'HiTech University', NULL, 'HiTech University', NULL, NULL, 'default_1678621870.png', 'favicon_1666015465.png', NULL, NULL, NULL, NULL, NULL, 'd-m-Y', 'h:i A', NULL, 'Asia/Dhaka', 'USD', '$', 2, '<p>2024 - University System</p>', 1, '2022-09-30 12:00:47', '2024-09-30 12:04:30');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `language_id` int UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` text COLLATE utf8mb4_unicode_ci,
  `button_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attach` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sliders_title_unique` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `language_id`, `title`, `sub_title`, `button_text`, `button_link`, `attach`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Education is the best key success in life', 'Donec vitae libero non enim placerat eleifend aliquam erat volutpat. Curabitur diam ex, dapibus purus sapien, cursus sed nisl tristique, commodo gravida lectus non.', 'Discover More', 'https://www.hitechparks.com/', 'slider_bg_01_1692915046.png', 1, '2023-08-24 16:10:47', '2023-08-24 16:10:47'),
(2, 1, 'Welcome to the largest campus of education', 'Donec vitae libero non enim placerat eleifend aliquam erat volutpat. Curabitur diam ex, dapibus purus sapien, cursus sed nisl tristique, commodo gravida lectus non.', 'Discover More', 'https://www.hitechparks.com/', 'slider_img03_1692915113.png', 1, '2023-08-24 16:11:53', '2023-08-24 16:11:53');

-- --------------------------------------------------------

--
-- Table structure for table `social_settings`
--

DROP TABLE IF EXISTS `social_settings`;
CREATE TABLE IF NOT EXISTS `social_settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tiktok` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telegram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_settings`
--

INSERT INTO `social_settings` (`id`, `facebook`, `twitter`, `linkedin`, `instagram`, `pinterest`, `youtube`, `tiktok`, `skype`, `telegram`, `whatsapp`, `status`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/HiTechParks/', 'https://twitter.com/hitechparks', 'https://www.linkedin.com/company/hi-techparks/', NULL, 'https://www.pinterest.com/hitechparks/', 'https://www.youtube.com/@hitechparks', NULL, NULL, NULL, NULL, 1, '2023-08-24 15:50:31', '2023-08-24 15:53:47');

-- --------------------------------------------------------

--
-- Table structure for table `staff_attendances`
--

DROP TABLE IF EXISTS `staff_attendances`;
CREATE TABLE IF NOT EXISTS `staff_attendances` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `date` date NOT NULL,
  `attendance` int NOT NULL DEFAULT '0' COMMENT '1 Present, 2 Absent, 3 Leave, 4 Holiday',
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `staff_attendances_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff_attendances`
--

INSERT INTO `staff_attendances` (`id`, `user_id`, `start_time`, `end_time`, `date`, `attendance`, `note`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 9, NULL, NULL, '2022-10-03', 1, '', 1, NULL, '2022-10-03 15:09:56', '2022-10-03 15:16:33'),
(2, 8, NULL, NULL, '2022-10-03', 1, '', 1, NULL, '2022-10-03 15:09:56', '2022-10-03 15:16:33'),
(3, 7, NULL, NULL, '2022-10-03', 1, '', 1, NULL, '2022-10-03 15:09:56', '2022-10-03 15:16:33'),
(4, 6, NULL, NULL, '2022-10-03', 1, '', 1, NULL, '2022-10-03 15:09:56', '2022-10-03 15:16:33'),
(5, 5, NULL, NULL, '2022-10-03', 1, '', 1, NULL, '2022-10-03 15:09:56', '2022-10-03 15:16:33'),
(6, 2, NULL, NULL, '2022-10-03', 1, '', 1, NULL, '2022-10-03 15:09:56', '2022-10-03 15:16:33'),
(7, 1, NULL, NULL, '2022-10-03', 1, '', 1, NULL, '2022-10-03 15:09:56', '2022-10-03 15:16:33'),
(8, 9, NULL, NULL, '2022-10-05', 2, '', 1, NULL, '2022-10-03 15:10:12', '2022-10-03 15:10:12'),
(9, 8, NULL, NULL, '2022-10-05', 1, '', 1, NULL, '2022-10-03 15:10:12', '2022-10-03 15:10:12'),
(10, 7, NULL, NULL, '2022-10-05', 1, '', 1, NULL, '2022-10-03 15:10:12', '2022-10-03 15:10:12'),
(11, 6, NULL, NULL, '2022-10-05', 1, '', 1, NULL, '2022-10-03 15:10:12', '2022-10-03 15:10:12'),
(12, 5, NULL, NULL, '2022-10-05', 1, '', 1, NULL, '2022-10-03 15:10:12', '2022-10-03 15:10:12'),
(13, 2, NULL, NULL, '2022-10-05', 3, '', 1, NULL, '2022-10-03 15:10:12', '2022-10-03 15:10:12'),
(14, 1, NULL, NULL, '2022-10-05', 1, '', 1, NULL, '2022-10-03 15:10:12', '2022-10-03 15:10:12'),
(15, 9, NULL, NULL, '2022-10-09', 4, '', 1, NULL, '2022-10-03 15:10:34', '2022-10-03 15:10:34'),
(16, 8, NULL, NULL, '2022-10-09', 4, '', 1, NULL, '2022-10-03 15:10:34', '2022-10-03 15:10:34'),
(17, 7, NULL, NULL, '2022-10-09', 4, '', 1, NULL, '2022-10-03 15:10:34', '2022-10-03 15:10:34'),
(18, 6, NULL, NULL, '2022-10-09', 4, '', 1, NULL, '2022-10-03 15:10:34', '2022-10-03 15:10:34'),
(19, 5, NULL, NULL, '2022-10-09', 4, '', 1, NULL, '2022-10-03 15:10:34', '2022-10-03 15:10:34'),
(20, 2, NULL, NULL, '2022-10-09', 4, '', 1, NULL, '2022-10-03 15:10:34', '2022-10-03 15:10:34'),
(21, 1, NULL, NULL, '2022-10-09', 4, '', 1, NULL, '2022-10-03 15:10:34', '2022-10-03 15:10:34'),
(22, 9, NULL, NULL, '2022-10-11', 1, '', 1, NULL, '2022-10-03 15:10:50', '2022-10-03 15:10:50'),
(23, 8, NULL, NULL, '2022-10-11', 1, '', 1, NULL, '2022-10-03 15:10:50', '2022-10-03 15:10:50'),
(24, 7, NULL, NULL, '2022-10-11', 1, '', 1, NULL, '2022-10-03 15:10:50', '2022-10-03 15:10:50'),
(25, 6, NULL, NULL, '2022-10-11', 1, '', 1, NULL, '2022-10-03 15:10:50', '2022-10-03 15:10:50'),
(26, 5, NULL, NULL, '2022-10-11', 3, '', 1, NULL, '2022-10-03 15:10:50', '2022-10-03 15:10:50'),
(27, 2, NULL, NULL, '2022-10-11', 1, '', 1, NULL, '2022-10-03 15:10:50', '2022-10-03 15:10:50'),
(28, 1, NULL, NULL, '2022-10-11', 1, '', 1, NULL, '2022-10-03 15:10:50', '2022-10-03 15:10:50'),
(29, 9, NULL, NULL, '2022-10-13', 2, '', 1, NULL, '2022-10-03 15:11:07', '2022-10-03 15:11:07'),
(30, 8, NULL, NULL, '2022-10-13', 1, '', 1, NULL, '2022-10-03 15:11:07', '2022-10-03 15:11:07'),
(31, 7, NULL, NULL, '2022-10-13', 1, '', 1, NULL, '2022-10-03 15:11:07', '2022-10-03 15:11:07'),
(32, 6, NULL, NULL, '2022-10-13', 1, '', 1, NULL, '2022-10-03 15:11:07', '2022-10-03 15:11:07'),
(33, 5, NULL, NULL, '2022-10-13', 1, '', 1, NULL, '2022-10-03 15:11:07', '2022-10-03 15:11:07'),
(34, 2, NULL, NULL, '2022-10-13', 1, '', 1, NULL, '2022-10-03 15:11:07', '2022-10-03 15:11:07'),
(35, 1, NULL, NULL, '2022-10-13', 1, '', 1, NULL, '2022-10-03 15:11:07', '2022-10-03 15:11:07'),
(36, 9, NULL, NULL, '2022-10-15', 1, '', 1, NULL, '2022-10-03 15:11:23', '2022-10-03 15:11:23'),
(37, 8, NULL, NULL, '2022-10-15', 1, '', 1, NULL, '2022-10-03 15:11:23', '2022-10-03 15:11:23'),
(38, 7, NULL, NULL, '2022-10-15', 1, '', 1, NULL, '2022-10-03 15:11:23', '2022-10-03 15:11:23'),
(39, 6, NULL, NULL, '2022-10-15', 1, '', 1, NULL, '2022-10-03 15:11:23', '2022-10-03 15:11:23'),
(40, 5, NULL, NULL, '2022-10-15', 1, '', 1, NULL, '2022-10-03 15:11:23', '2022-10-03 15:11:23'),
(41, 2, NULL, NULL, '2022-10-15', 1, '', 1, NULL, '2022-10-03 15:11:23', '2022-10-03 15:11:23'),
(42, 1, NULL, NULL, '2022-10-15', 3, '', 1, NULL, '2022-10-03 15:11:23', '2022-10-03 15:11:23'),
(43, 9, NULL, NULL, '2022-10-17', 1, '', 1, NULL, '2022-10-03 15:11:39', '2022-10-03 15:11:39'),
(44, 8, NULL, NULL, '2022-10-17', 1, '', 1, NULL, '2022-10-03 15:11:39', '2022-10-03 15:11:39'),
(45, 7, NULL, NULL, '2022-10-17', 1, '', 1, NULL, '2022-10-03 15:11:39', '2022-10-03 15:11:39'),
(46, 6, NULL, NULL, '2022-10-17', 1, '', 1, NULL, '2022-10-03 15:11:39', '2022-10-03 15:11:39'),
(47, 5, NULL, NULL, '2022-10-17', 1, '', 1, NULL, '2022-10-03 15:11:39', '2022-10-03 15:11:39'),
(48, 2, NULL, NULL, '2022-10-17', 1, '', 1, NULL, '2022-10-03 15:11:39', '2022-10-03 15:11:39'),
(49, 1, NULL, NULL, '2022-10-17', 1, '', 1, NULL, '2022-10-03 15:11:39', '2022-10-03 15:11:39'),
(50, 9, NULL, NULL, '2022-10-19', 1, '', 1, NULL, '2022-10-03 15:11:55', '2022-10-03 15:11:55'),
(51, 8, NULL, NULL, '2022-10-19', 1, '', 1, NULL, '2022-10-03 15:11:55', '2022-10-03 15:11:55'),
(52, 7, NULL, NULL, '2022-10-19', 2, '', 1, NULL, '2022-10-03 15:11:55', '2022-10-03 15:11:55'),
(53, 6, NULL, NULL, '2022-10-19', 1, '', 1, NULL, '2022-10-03 15:11:55', '2022-10-03 15:11:55'),
(54, 5, NULL, NULL, '2022-10-19', 1, '', 1, NULL, '2022-10-03 15:11:55', '2022-10-03 15:11:55'),
(55, 2, NULL, NULL, '2022-10-19', 1, '', 1, NULL, '2022-10-03 15:11:55', '2022-10-03 15:11:55'),
(56, 1, NULL, NULL, '2022-10-19', 1, '', 1, NULL, '2022-10-03 15:11:55', '2022-10-03 15:11:55'),
(57, 9, NULL, NULL, '2022-10-21', 1, '', 1, NULL, '2022-10-03 15:12:06', '2022-10-03 15:12:06'),
(58, 8, NULL, NULL, '2022-10-21', 2, '', 1, NULL, '2022-10-03 15:12:06', '2022-10-03 15:12:06'),
(59, 7, NULL, NULL, '2022-10-21', 1, '', 1, NULL, '2022-10-03 15:12:06', '2022-10-03 15:12:06'),
(60, 6, NULL, NULL, '2022-10-21', 1, '', 1, NULL, '2022-10-03 15:12:06', '2022-10-03 15:12:06'),
(61, 5, NULL, NULL, '2022-10-21', 1, '', 1, NULL, '2022-10-03 15:12:06', '2022-10-03 15:12:06'),
(62, 2, NULL, NULL, '2022-10-21', 1, '', 1, NULL, '2022-10-03 15:12:06', '2022-10-03 15:12:06'),
(63, 1, NULL, NULL, '2022-10-21', 1, '', 1, NULL, '2022-10-03 15:12:06', '2022-10-03 15:12:06'),
(64, 9, NULL, NULL, '2022-10-23', 3, '', 1, NULL, '2022-10-03 15:12:19', '2022-10-03 15:12:19'),
(65, 8, NULL, NULL, '2022-10-23', 1, '', 1, NULL, '2022-10-03 15:12:19', '2022-10-03 15:12:19'),
(66, 7, NULL, NULL, '2022-10-23', 1, '', 1, NULL, '2022-10-03 15:12:19', '2022-10-03 15:12:19'),
(67, 6, NULL, NULL, '2022-10-23', 1, '', 1, NULL, '2022-10-03 15:12:19', '2022-10-03 15:12:19'),
(68, 5, NULL, NULL, '2022-10-23', 1, '', 1, NULL, '2022-10-03 15:12:19', '2022-10-03 15:12:19'),
(69, 2, NULL, NULL, '2022-10-23', 1, '', 1, NULL, '2022-10-03 15:12:19', '2022-10-03 15:12:19'),
(70, 1, NULL, NULL, '2022-10-23', 1, '', 1, NULL, '2022-10-03 15:12:19', '2022-10-03 15:12:19'),
(71, 9, NULL, NULL, '2022-10-25', 4, '', 1, NULL, '2022-10-03 15:12:31', '2022-10-03 15:12:31'),
(72, 8, NULL, NULL, '2022-10-25', 4, '', 1, NULL, '2022-10-03 15:12:31', '2022-10-03 15:12:31'),
(73, 7, NULL, NULL, '2022-10-25', 4, '', 1, NULL, '2022-10-03 15:12:31', '2022-10-03 15:12:31'),
(74, 6, NULL, NULL, '2022-10-25', 4, '', 1, NULL, '2022-10-03 15:12:31', '2022-10-03 15:12:31'),
(75, 5, NULL, NULL, '2022-10-25', 4, '', 1, NULL, '2022-10-03 15:12:31', '2022-10-03 15:12:31'),
(76, 2, NULL, NULL, '2022-10-25', 4, '', 1, NULL, '2022-10-03 15:12:31', '2022-10-03 15:12:31'),
(77, 1, NULL, NULL, '2022-10-25', 4, '', 1, NULL, '2022-10-03 15:12:31', '2022-10-03 15:12:31'),
(78, 9, NULL, NULL, '2022-10-27', 1, '', 1, NULL, '2022-10-03 15:12:44', '2022-10-03 15:12:44'),
(79, 8, NULL, NULL, '2022-10-27', 1, '', 1, NULL, '2022-10-03 15:12:44', '2022-10-03 15:12:44'),
(80, 7, NULL, NULL, '2022-10-27', 2, '', 1, NULL, '2022-10-03 15:12:44', '2022-10-03 15:12:44'),
(81, 6, NULL, NULL, '2022-10-27', 1, '', 1, NULL, '2022-10-03 15:12:44', '2022-10-03 15:12:44'),
(82, 5, NULL, NULL, '2022-10-27', 3, '', 1, NULL, '2022-10-03 15:12:44', '2022-10-03 15:12:44'),
(83, 2, NULL, NULL, '2022-10-27', 1, '', 1, NULL, '2022-10-03 15:12:44', '2022-10-03 15:12:44'),
(84, 1, NULL, NULL, '2022-10-27', 1, '', 1, NULL, '2022-10-03 15:12:44', '2022-10-03 15:12:44'),
(85, 9, NULL, NULL, '2022-10-29', 1, '', 1, NULL, '2022-10-03 15:12:58', '2022-10-03 15:12:58'),
(86, 8, NULL, NULL, '2022-10-29', 3, '', 1, NULL, '2022-10-03 15:12:58', '2022-10-03 15:12:58'),
(87, 7, NULL, NULL, '2022-10-29', 1, '', 1, NULL, '2022-10-03 15:12:58', '2022-10-03 15:12:58'),
(88, 6, NULL, NULL, '2022-10-29', 1, '', 1, NULL, '2022-10-03 15:12:58', '2022-10-03 15:12:58'),
(89, 5, NULL, NULL, '2022-10-29', 1, '', 1, NULL, '2022-10-03 15:12:58', '2022-10-03 15:12:58'),
(90, 2, NULL, NULL, '2022-10-29', 2, '', 1, NULL, '2022-10-03 15:12:58', '2022-10-03 15:12:58'),
(91, 1, NULL, NULL, '2022-10-29', 1, '', 1, NULL, '2022-10-03 15:12:58', '2022-10-03 15:12:58'),
(92, 9, NULL, NULL, '2022-10-31', 1, '', 1, NULL, '2022-10-03 15:13:25', '2022-10-03 15:13:25'),
(93, 8, NULL, NULL, '2022-10-31', 1, '', 1, NULL, '2022-10-03 15:13:25', '2022-10-03 15:13:25'),
(94, 7, NULL, NULL, '2022-10-31', 3, '', 1, NULL, '2022-10-03 15:13:25', '2022-10-03 15:13:25'),
(95, 6, NULL, NULL, '2022-10-31', 1, '', 1, NULL, '2022-10-03 15:13:25', '2022-10-03 15:13:25'),
(96, 5, NULL, NULL, '2022-10-31', 1, '', 1, NULL, '2022-10-03 15:13:25', '2022-10-03 15:13:25'),
(97, 2, NULL, NULL, '2022-10-31', 1, '', 1, NULL, '2022-10-03 15:13:25', '2022-10-03 15:13:25'),
(98, 1, NULL, NULL, '2022-10-31', 1, '', 1, NULL, '2022-10-03 15:13:25', '2022-10-03 15:13:25'),
(99, 9, NULL, NULL, '2022-10-01', 1, '', 1, NULL, '2022-10-03 15:13:42', '2022-10-03 15:16:40'),
(100, 8, NULL, NULL, '2022-10-01', 1, '', 1, NULL, '2022-10-03 15:13:42', '2022-10-03 15:16:40'),
(101, 7, NULL, NULL, '2022-10-01', 2, '', 1, NULL, '2022-10-03 15:13:42', '2022-10-03 15:16:40'),
(102, 6, NULL, NULL, '2022-10-01', 1, '', 1, NULL, '2022-10-03 15:13:42', '2022-10-03 15:16:40'),
(103, 5, NULL, NULL, '2022-10-01', 1, '', 1, NULL, '2022-10-03 15:13:42', '2022-10-03 15:16:40'),
(104, 2, NULL, NULL, '2022-10-01', 3, '', 1, NULL, '2022-10-03 15:13:42', '2022-10-03 15:16:40'),
(105, 1, NULL, NULL, '2022-10-01', 1, '', 1, NULL, '2022-10-03 15:13:42', '2022-10-03 15:16:40'),
(106, 9, NULL, NULL, '2022-10-07', 1, '', 1, NULL, '2022-10-03 15:14:19', '2022-10-03 15:14:19'),
(107, 8, NULL, NULL, '2022-10-07', 1, '', 1, NULL, '2022-10-03 15:14:19', '2022-10-03 15:14:19'),
(108, 7, NULL, NULL, '2022-10-07', 1, '', 1, NULL, '2022-10-03 15:14:19', '2022-10-03 15:14:19'),
(109, 6, NULL, NULL, '2022-10-07', 1, '', 1, NULL, '2022-10-03 15:14:19', '2022-10-03 15:14:19'),
(110, 5, NULL, NULL, '2022-10-07', 1, '', 1, NULL, '2022-10-03 15:14:19', '2022-10-03 15:14:19'),
(111, 2, NULL, NULL, '2022-10-07', 2, '', 1, NULL, '2022-10-03 15:14:19', '2022-10-03 15:14:19'),
(112, 1, NULL, NULL, '2022-10-07', 1, '', 1, NULL, '2022-10-03 15:14:19', '2022-10-03 15:14:19');

-- --------------------------------------------------------

--
-- Table structure for table `staff_hourly_attendances`
--

DROP TABLE IF EXISTS `staff_hourly_attendances`;
CREATE TABLE IF NOT EXISTS `staff_hourly_attendances` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `subject_id` bigint UNSIGNED NOT NULL,
  `session_id` int UNSIGNED NOT NULL,
  `program_id` int UNSIGNED NOT NULL,
  `semester_id` int UNSIGNED NOT NULL,
  `section_id` int UNSIGNED NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `date` date NOT NULL,
  `attendance` int NOT NULL DEFAULT '0' COMMENT '1 Present, 2 Absent, 3 Leave, 4 Holiday',
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `staff_hourly_attendances_user_id_foreign` (`user_id`),
  KEY `staff_hourly_attendances_subject_id_foreign` (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff_hourly_attendances`
--

INSERT INTO `staff_hourly_attendances` (`id`, `user_id`, `subject_id`, `session_id`, `program_id`, `semester_id`, `section_id`, `start_time`, `end_time`, `date`, `attendance`, `note`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 4, 8, 4, 3, 1, 1, '05:38:00', '06:38:00', '2022-10-03', 1, '', 1, NULL, '2022-10-03 15:27:23', '2022-10-03 15:27:23'),
(2, 4, 2, 4, 3, 2, 1, '05:43:00', '06:43:00', '2022-10-03', 1, '', 1, NULL, '2022-10-03 15:27:23', '2022-10-03 15:27:23'),
(3, 3, 7, 4, 3, 2, 1, '07:43:00', '08:43:00', '2022-10-03', 1, '', 1, NULL, '2022-10-03 15:27:31', '2022-10-03 15:27:31'),
(4, 3, 2, 4, 3, 2, 1, '05:43:00', '06:43:00', '2022-10-05', 1, '', 1, NULL, '2022-10-03 15:27:41', '2022-10-03 15:27:41'),
(5, 4, 4, 4, 3, 1, 1, '06:39:00', '07:39:00', '2022-10-05', 1, '', 1, NULL, '2022-10-03 15:27:49', '2022-10-03 15:27:49'),
(6, 4, 1, 4, 3, 2, 1, '07:44:00', '08:44:00', '2022-10-05', 1, '', 1, NULL, '2022-10-03 15:27:49', '2022-10-03 15:27:49'),
(7, 4, 8, 4, 3, 1, 1, '05:38:00', '06:38:00', '2022-10-10', 2, '', 1, NULL, '2022-10-03 15:28:08', '2022-10-03 15:28:08'),
(8, 4, 2, 4, 3, 2, 1, '05:43:00', '06:43:00', '2022-10-10', 1, '', 1, NULL, '2022-10-03 15:28:08', '2022-10-03 15:28:08'),
(9, 3, 7, 4, 3, 2, 1, '07:43:00', '08:43:00', '2022-10-10', 2, '', 1, NULL, '2022-10-03 15:28:15', '2022-10-03 15:28:15'),
(10, 3, 2, 4, 3, 2, 1, '05:43:00', '06:43:00', '2022-10-12', 1, '', 1, NULL, '2022-10-03 15:28:23', '2022-10-03 15:28:23'),
(11, 4, 4, 4, 3, 1, 1, '06:39:00', '07:39:00', '2022-10-12', 1, '', 1, NULL, '2022-10-03 15:28:30', '2022-10-03 15:28:30'),
(12, 4, 1, 4, 3, 2, 1, '07:44:00', '08:44:00', '2022-10-12', 1, '', 1, NULL, '2022-10-03 15:28:30', '2022-10-03 15:28:30'),
(13, 3, 4, 4, 3, 1, 1, '07:37:00', '08:37:00', '2022-10-15', 3, '', 1, NULL, '2022-10-03 15:28:51', '2022-10-03 15:28:51'),
(14, 4, 1, 4, 3, 2, 1, '07:42:00', '08:42:00', '2022-10-15', 3, '', 1, NULL, '2022-10-03 15:28:59', '2022-10-03 15:28:59'),
(15, 4, 8, 4, 3, 1, 1, '05:38:00', '06:38:00', '2022-10-17', 1, '', 1, NULL, '2022-10-03 15:29:09', '2022-10-03 15:29:09'),
(16, 4, 2, 4, 3, 2, 1, '05:43:00', '06:43:00', '2022-10-17', 1, '', 1, NULL, '2022-10-03 15:29:09', '2022-10-03 15:29:09'),
(17, 3, 7, 4, 3, 2, 1, '07:43:00', '08:43:00', '2022-10-17', 1, '', 1, NULL, '2022-10-03 15:29:15', '2022-10-03 15:29:15'),
(18, 3, 2, 4, 3, 2, 1, '05:43:00', '06:43:00', '2022-10-19', 3, '', 1, NULL, '2022-10-03 15:29:24', '2022-10-03 15:29:24'),
(19, 4, 4, 4, 3, 1, 1, '06:39:00', '07:39:00', '2022-10-19', 3, '', 1, NULL, '2022-10-03 15:29:31', '2022-10-03 15:29:31'),
(20, 4, 1, 4, 3, 2, 1, '07:44:00', '08:44:00', '2022-10-19', 3, '', 1, NULL, '2022-10-03 15:29:31', '2022-10-03 15:29:31'),
(21, 4, 1, 4, 3, 2, 1, '07:42:00', '08:42:00', '2022-10-22', 1, '', 1, NULL, '2022-10-03 15:29:45', '2022-10-03 15:29:45'),
(22, 3, 4, 4, 3, 1, 1, '07:37:00', '08:37:00', '2022-10-22', 1, '', 1, NULL, '2022-10-03 15:29:51', '2022-10-03 15:29:51'),
(23, 3, 7, 4, 3, 2, 1, '07:43:00', '08:43:00', '2022-10-24', 1, '', 1, NULL, '2022-10-03 15:30:02', '2022-10-03 15:30:02'),
(24, 4, 8, 4, 3, 1, 1, '05:38:00', '06:38:00', '2022-10-24', 1, '', 1, NULL, '2022-10-03 15:30:12', '2022-10-03 15:30:12'),
(25, 4, 2, 4, 3, 2, 1, '05:43:00', '06:43:00', '2022-10-24', 1, '', 1, NULL, '2022-10-03 15:30:12', '2022-10-03 15:30:12'),
(26, 4, 4, 4, 3, 1, 1, '06:39:00', '07:39:00', '2022-10-26', 4, '', 1, NULL, '2022-10-03 15:30:22', '2022-10-03 15:30:22'),
(27, 4, 1, 4, 3, 2, 1, '07:44:00', '08:44:00', '2022-10-26', 4, '', 1, NULL, '2022-10-03 15:30:22', '2022-10-03 15:30:22'),
(28, 3, 2, 4, 3, 2, 1, '05:43:00', '06:43:00', '2022-10-26', 4, '', 1, NULL, '2022-10-03 15:30:28', '2022-10-03 15:30:28'),
(29, 3, 4, 4, 3, 1, 1, '07:37:00', '08:37:00', '2022-10-29', 1, '', 1, NULL, '2022-10-03 15:30:42', '2022-10-03 15:30:42'),
(30, 4, 1, 4, 3, 2, 1, '07:42:00', '08:42:00', '2022-10-29', 1, '', 1, NULL, '2022-10-03 15:30:49', '2022-10-03 15:30:49'),
(31, 4, 8, 4, 3, 1, 1, '05:38:00', '06:38:00', '2022-10-31', 1, '', 1, NULL, '2022-10-03 15:30:58', '2022-10-03 15:30:58'),
(32, 4, 2, 4, 3, 2, 1, '05:43:00', '06:43:00', '2022-10-31', 1, '', 1, NULL, '2022-10-03 15:30:58', '2022-10-03 15:30:58'),
(33, 3, 7, 4, 3, 2, 1, '07:43:00', '08:43:00', '2022-10-31', 1, '', 1, NULL, '2022-10-03 15:31:04', '2022-10-03 15:31:04'),
(34, 3, 4, 4, 3, 1, 1, '07:37:00', '08:37:00', '2022-10-01', 1, '', 1, NULL, '2022-10-03 15:31:13', '2022-10-03 15:31:13'),
(35, 4, 1, 4, 3, 2, 1, '07:42:00', '08:42:00', '2022-10-01', 1, '', 1, NULL, '2022-10-03 15:31:20', '2022-10-03 15:31:20'),
(36, 4, 4, 4, 2, 1, 1, '03:25:00', '04:25:00', '2022-10-02', 1, '', 1, NULL, '2022-10-03 15:31:31', '2022-10-03 15:31:31');

-- --------------------------------------------------------

--
-- Table structure for table `status_types`
--

DROP TABLE IF EXISTS `status_types`;
CREATE TABLE IF NOT EXISTS `status_types` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `status_types_title_unique` (`title`),
  UNIQUE KEY `status_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status_types`
--

INSERT INTO `status_types` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'New Admission', 'new-admission', NULL, 1, NULL, NULL),
(2, 'Continue', 'continue', NULL, 1, NULL, NULL),
(3, 'Pass Out', 'pass-out', NULL, 1, NULL, NULL),
(4, 'Drop Out', 'drop-out', NULL, 1, NULL, NULL),
(5, 'Transfer In', 'transfer-in', NULL, 1, NULL, NULL),
(6, 'Transfer Out', 'transfer-out', NULL, 1, NULL, NULL),
(7, 'Disabled', 'disabled', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `status_type_student`
--

DROP TABLE IF EXISTS `status_type_student`;
CREATE TABLE IF NOT EXISTS `status_type_student` (
  `status_type_id` int UNSIGNED NOT NULL,
  `student_id` bigint UNSIGNED NOT NULL,
  KEY `status_type_student_status_type_id_foreign` (`status_type_id`),
  KEY `status_type_student_student_id_foreign` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status_type_student`
--

INSERT INTO `status_type_student` (`status_type_id`, `student_id`) VALUES
(7, 1),
(1, 1),
(2, 2),
(1, 2),
(2, 3),
(1, 3),
(2, 4),
(1, 5),
(7, 6),
(7, 7),
(1, 8),
(5, 9),
(7, 10),
(1, 11),
(2, 12),
(7, 12),
(1, 13),
(1, 14);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registration_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `batch_id` int UNSIGNED DEFAULT NULL,
  `program_id` int UNSIGNED DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_text` longtext COLLATE utf8mb4_unicode_ci,
  `present_province` int UNSIGNED DEFAULT NULL,
  `present_district` int UNSIGNED DEFAULT NULL,
  `present_village` text COLLATE utf8mb4_unicode_ci,
  `present_address` text COLLATE utf8mb4_unicode_ci,
  `permanent_province` int UNSIGNED DEFAULT NULL,
  `permanent_district` int UNSIGNED DEFAULT NULL,
  `permanent_village` text COLLATE utf8mb4_unicode_ci,
  `permanent_address` text COLLATE utf8mb4_unicode_ci,
  `gender` int NOT NULL COMMENT '1 Male, 2 Female & 3 Other',
  `dob` date NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_tongue` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` int DEFAULT NULL,
  `blood_group` int DEFAULT NULL,
  `nationality` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_name` text COLLATE utf8mb4_unicode_ci,
  `school_exam_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_graduation_year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_graduation_point` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collage_name` text COLLATE utf8mb4_unicode_ci,
  `collage_exam_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collage_graduation_year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collage_graduation_point` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci,
  `signature` text COLLATE utf8mb4_unicode_ci,
  `login` tinyint(1) NOT NULL DEFAULT '1',
  `status` int NOT NULL DEFAULT '1' COMMENT '0 Inactive, 1 Active, 2 Passed Out, 3 Transfer Out',
  `is_transfer` int DEFAULT '0' COMMENT '0 Not Transfer, 1 Transfer In & 2 Transfer Out',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `father_occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_photo` text COLLATE utf8mb4_unicode_ci,
  `mother_photo` text COLLATE utf8mb4_unicode_ci,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caste` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_graduation_field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collage_graduation_field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_transcript` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_certificate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collage_transcript` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collage_certificate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `students_student_id_unique` (`student_id`),
  UNIQUE KEY `students_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `student_id`, `registration_no`, `batch_id`, `program_id`, `admission_date`, `first_name`, `last_name`, `father_name`, `mother_name`, `email`, `email_verified_at`, `password`, `password_text`, `present_province`, `present_district`, `present_village`, `present_address`, `permanent_province`, `permanent_district`, `permanent_village`, `permanent_address`, `gender`, `dob`, `phone`, `emergency_phone`, `mother_tongue`, `marital_status`, `blood_group`, `nationality`, `national_id`, `passport_no`, `school_name`, `school_exam_id`, `school_graduation_year`, `school_graduation_point`, `collage_name`, `collage_exam_id`, `collage_graduation_year`, `collage_graduation_point`, `photo`, `signature`, `login`, `status`, `is_transfer`, `remember_token`, `created_by`, `updated_by`, `created_at`, `updated_at`, `father_occupation`, `mother_occupation`, `father_photo`, `mother_photo`, `country`, `religion`, `caste`, `school_graduation_field`, `collage_graduation_field`, `school_transcript`, `school_certificate`, `collage_transcript`, `collage_certificate`) VALUES
(1, '1001', NULL, 4, 3, '2022-10-02', 'Aimee', 'Hendrix', 'Noble Navarro', 'Beatrice Gardner', 'vytumovib@mailinator.com', NULL, '$2y$10$gzar32PTg.Z2pAMIIYS8kuYj9lufoSLUyanQnIRjzWeyYucOl6J.W', 'eyJpdiI6Im9hRkp0bTVBbHhacnFKRE1qdmRuSmc9PSIsInZhbHVlIjoiTlRWbDg3REk3RFNBYlVXMzVZMXJTQT09IiwibWFjIjoiZjNiNWNlZWM3YThkNjU0ODdjZDc2ZmQ5MTc3YjEyZDEwYjFmNDFmNGRiYTNhNTExOTQzNjUzM2ZjZmYwMjg1NiIsInRhZyI6IiJ9', 1, 6, 'Dolore nihil expedit', 'Ab alias et exceptur', 4, 12, 'Illum inventore qua', 'Aut qui voluptas eli', 2, '2021-02-19', '+1 (119) 978-8885', NULL, NULL, 2, 6, NULL, '546198721365', '48431521679', 'Quintessa Dejesus', '45889658', '1991', '88', 'Mercedes Crane', '987135268', '1982', '99', 'student_1664734514.jpg', NULL, 1, 1, 0, NULL, 1, NULL, '2022-10-02 12:15:14', '2022-10-02 12:15:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '1002', NULL, 4, 3, '2022-10-02', 'Lynn', 'Macias', 'Sandra Gomez', 'Bryar Mays', 'hewawo@mailinator.com', NULL, '$2y$10$LxGbLSQwT7Oe4Qre2XcqBuBskapMYQkU3hBrAC3G1pB5lHyCS2U0W', 'eyJpdiI6IjQrZERMQzlmSTJVTGxSUlVQY3hpbUE9PSIsInZhbHVlIjoiRE9VY0ZPKzk2RDU0elB5bEpSQ0xJdz09IiwibWFjIjoiOTMzYWQ0ZjJlNmM0NTk5ZGFmYjJmYjQ3MmJiYWYxYmI0NWU2ZGVjMWVjOWZkNWZjMDFjZDdiY2UzMDE0MGJkMSIsInRhZyI6IiJ9', 4, 4, 'Sunt cupidatat quisq', 'Recusandae Mollit e', 3, 8, 'Dolore mollit omnis', 'Quis eligendi vero d', 2, '2012-11-12', '+1 (325) 943-7187', NULL, NULL, 1, 7, NULL, '42346587687', '786876876', 'Rooney Payne', '142424', '2007', '42', 'Dara Monroe', '4242454', '1991', '77', NULL, NULL, 1, 1, 0, NULL, 1, NULL, '2022-10-02 12:17:47', '2022-10-02 12:17:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '1003', NULL, 4, 3, '2022-10-02', 'Hayden', 'Delgado', 'Mechelle Morse', 'Steel Norris', 'qitisuxyj@mailinator.com', NULL, '$2y$10$uFgBIoBdiaip14.wLfyBvO9Tc9j6epfJjm9uEFlNZVEU1KYeNj1Oi', 'eyJpdiI6IlJqbUFUU0pqRGFEUUpOeVppY01LN1E9PSIsInZhbHVlIjoickt0VXFwelV0Z1NZQU03WWZ5dnVYZz09IiwibWFjIjoiMDhhMzY3MzNlNjhjODMyYzZiOWQ2ZmEyYWRhMWVmY2Q1ZTlhOWJlNDY0MWNiNWM0ZDRlMDQ1Mzg0NTc3ZDdmNCIsInRhZyI6IiJ9', 2, 7, 'Deserunt dolorem et', 'Est enim ab aliquip', 1, 1, 'Omnis rerum dolore n', 'Sint ut cillum numqu', 1, '1987-07-15', '+1 (316) 682-6975', NULL, NULL, 4, 1, NULL, '1245687979', '789876876', 'Uriel Ortega', '457578', '1971', '88', 'Eaton Haley', '4654645', '1979', '77', NULL, NULL, 1, 1, 0, NULL, 1, NULL, '2022-10-02 12:20:00', '2022-10-02 12:20:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '1004', NULL, 4, 3, '2022-10-02', 'Abigail', 'Robles', 'Jolene Zimmerman', 'Sierra Valencia', 'ravihor@mailinator.com', NULL, '$2y$10$wg/Dys9rYeaqNUUkA.1WjO6lc1EvxaPEihHVn1gS7/LbXqnIKEm8i', 'eyJpdiI6IjVJYWdWVE1wd2xaQVFkcUNFcGxmUFE9PSIsInZhbHVlIjoicEt2REdnckhlbmg2TVhOUTBwaWNZUT09IiwibWFjIjoiYzI1YTVkZDcwYWU3Y2ZhMzgxYzM3N2I1ZGJlYmQ4NTg0YjUxMTY4YWM5OGFiM2Y3NGQyM2ZjMzQ5NTMwMWIyNSIsInRhZyI6IiJ9', 3, 9, 'Rerum aliqua Sunt u', 'Dolore quasi quia al', 1, 1, 'Commodi repellendus', 'Distinctio Qui aliq', 2, '2007-10-13', '+1 (288) 828-3796', NULL, NULL, 1, 3, NULL, '4687698', '8796879', 'Elvis Hawkins', '45678676', '1981', '55', 'Mona Berry', '87687687', '1993', '78', NULL, NULL, 1, 1, 0, NULL, 1, NULL, '2022-10-02 12:21:45', '2022-10-02 12:21:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '1005', NULL, 4, 2, '2022-10-02', 'Brooke', 'Kelly', 'Kai Walker', 'Mikayla Mccoy', 'ficuqujoju@mailinator.com', NULL, '$2y$10$Rr41JBJspW2zslNgCWCRe.itQH8f8un16UOZaG/5.mBUCf.XtOn.6', 'eyJpdiI6IlZySFBkMllFVVFUUThhNm5DQWJETnc9PSIsInZhbHVlIjoidjNRcFNmOHhaMkJEMGI5VG91NTM3UT09IiwibWFjIjoiMDcwZWY1ZTdhMTliYzdmNjY1MTJjZTVmOGVhNjdkZDI4YzFhZjM2NTg2ZGU2MzU3NDI0ZjNlYWJiZTI4MDgzYyIsInRhZyI6IiJ9', 4, 12, 'Eius maiores ut iust', 'Fuga Minima quaerat', 2, 13, 'Enim reprehenderit d', 'Minim laudantium do', 1, '1988-01-23', '+1 (803) 438-3494', NULL, NULL, 5, 7, NULL, '4656878', '86876876', 'Olivia Rodgers', '56876543', '1988', '56', 'Camille Hewitt', '45656878', '1994', '86', 'student_1664734989.jpg', NULL, 1, 1, 0, NULL, 1, NULL, '2022-10-02 12:23:09', '2022-10-02 12:23:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '1006', NULL, 4, 2, '2022-10-02', 'Zelenia', 'Cantu', 'Quon Hood', 'Shelley Benson', 'qalaqys@mailinator.com', NULL, '$2y$10$Wp3G22i4x.Ow2AERJbrRke6Uzz6xOMIsxYLyiHSrHGpJc6/IWdA4e', 'eyJpdiI6IkdNNFFGSjlvSDFHM2JWMkVOUDhFcEE9PSIsInZhbHVlIjoiT0N2WkY3TTVPTC9SODJsRUt1WEkwZz09IiwibWFjIjoiYWJlMjlkZDNiM2FkOTJhYzc5MWU2Y2ZjMmU2MzBhYjM1NTZhZGI1OGVkZDczNTM0Zjg5ODA0MWY1M2IzNzY4MiIsInRhZyI6IiJ9', 3, 9, 'Dolor porro nobis lo', 'Vel praesentium in u', 2, 13, 'Voluptate ipsum omni', 'Sunt aliquam in et m', 1, '1979-06-03', '+1 (353) 316-1389', NULL, NULL, 3, 6, NULL, '44578787', '125787545', 'Hanna Curry', '34546565', '2010', '56', 'Keaton Haley', '567878764', '1985', '87', NULL, NULL, 1, 1, 0, NULL, 1, NULL, '2022-10-02 12:26:33', '2022-10-02 12:26:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '1007', NULL, 5, 2, '2022-10-02', 'Kieran', 'Hahn', 'Kyle Mccray', 'Beau Hobbs', 'fiqixijeg@mailinator.com', NULL, '$2y$10$UYbKmXg4PFh7kz3Xd6iRPuAOHyyZ3VgKEtPdtCHp.x0RNaWpmNN.6', 'eyJpdiI6IjJUckxOa1BTY3ozc1IwV2x6RXR4UFE9PSIsInZhbHVlIjoiRmZPK3JJQW9XdmlRazduQ2tEQXdSQT09IiwibWFjIjoiYWU3YWUyOGE3ZDc5NGQ4N2I3NWIyMGU4ZmRmZTEwN2RhMTA1NjRhMGIyNTIxNjM4OTJmZGJlOTFiMGQyODI4YyIsInRhZyI6IiJ9', 3, 9, 'Aut reiciendis illum', 'Aspernatur reprehend', 4, 4, 'Tempore pariatur E', 'Quis aperiam provide', 3, '2006-08-15', '+1 (436) 556-7083', NULL, NULL, 3, 7, NULL, '57867989', '235436576', 'Hyacinth Wong', '2147483647', '2003', '77', 'Kennan Finch', '2147483647', '2002', '45', 'staff1_1664735260.jpg', NULL, 1, 1, 0, NULL, 1, 1, '2022-10-02 12:27:40', '2022-10-02 12:39:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '1008', NULL, 5, 2, '2022-10-02', 'Nyssa', 'Mcdonald', 'Lacota Campbell', 'Brenden Murphy', 'qekehohi@mailinator.com', NULL, '$2y$10$.f3iVO8Xc3e//cm8r9X0gu0laJGIi3VL47lPEo4yrpuPzLRDmoNhi', 'eyJpdiI6Ijc4QllvZWN6dEI3QUFFS1BtRW80Wnc9PSIsInZhbHVlIjoicnJZeFVvWnYxOTQ5L1d2Y2lPcFR0Zz09IiwibWFjIjoiMjJkNzNhY2E2NGU0ZTVlMWIxMWI3NmViM2M5MzdjOGI0NzYzNWRiMDM5OWI0MTYzZjcwYjM3ZmMyMTg3ZWUyNSIsInRhZyI6IiJ9', 4, 5, 'Qui rem dolorem sed', 'Vel consequuntur ea', 3, 10, 'Molestiae nihil dolo', 'Iure expedita itaque', 1, '2021-03-15', '+1 (144) 822-6816', NULL, NULL, 5, 6, NULL, '7875454756', '157867547', 'Hedwig Evans', '54867878', '2010', '89', 'Cailin Serrano', '2147483647', '2001', '45', NULL, NULL, 1, 1, 0, NULL, 1, 1, '2022-10-02 12:29:17', '2022-10-02 12:32:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '1009', NULL, 4, 3, '2022-10-03', 'Bevis', 'Horton', 'Kennan Watts', 'Rhiannon Kirkland', 'curixivuf@mailinator.com', NULL, '$2y$10$WDEeMmA9s7Ext/nOAFSCUeUfxWIPWf1RFHs9u/e6gYS3uN0INcpXS', 'eyJpdiI6ImFuWkc3VGgyUExZUkR6NWxQcEdMVGc9PSIsInZhbHVlIjoiWFBzNU83aHpMOGUyNEltV1dadGNQZz09IiwibWFjIjoiZmVmMzY0NjZkYzFlMjU4M2ZkNmUzZDBlNTlhOTNhOTM5MmMxNzEwOTQ5MTI3OWU3NDRiYWExNmVhMjFlZTY5YiIsInRhZyI6IiJ9', 3, 8, 'Ducimus aut nulla t', 'Aliquip non perspici', 4, 4, 'Maiores incididunt p', 'Dolor excepturi Nam', 2, '1995-11-27', '+1 (833) 984-7695', NULL, NULL, 1, 6, NULL, '457778778', '844687564', 'Bernard Houston', '75687686', '1977', '58', 'Wesley Henry', '78687989', '1984', '69', NULL, NULL, 1, 1, 1, NULL, 1, NULL, '2022-10-03 16:22:23', '2022-10-03 16:22:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '1010', NULL, 5, 3, '2022-10-04', 'Julie', 'Stafford', 'Nicholas Bauer', 'Heather Willis', 'dyvybozypi@mailinator.com', NULL, '$2y$10$UbHEVW9.otCd4f3VGjLDI.LPIV/3IOfKv97RFqhHPdNTVTTPi0Bu.', 'eyJpdiI6InVsMFdyb3l6Wk83ZUdzOVphbjNXQ3c9PSIsInZhbHVlIjoiSlRvbG82azFGTmx4Rzd0MmljZ2NLQT09IiwibWFjIjoiNDkxNzBhZGFiYWU2MjM3MTI1NWI0MWE4ZTgyZjFlMjkwMDg2YWJiZjlkMTNkMWVjZDNjM2U3YTkzZTg3MjlmNCIsInRhZyI6IiJ9', 1, 6, 'Reprehenderit obcae', 'Eum voluptatibus in', 1, 6, 'Repudiandae est mini', 'Beatae enim tempor e', 1, '2010-01-10', '+1 (389) 703-8218', NULL, NULL, 5, 7, NULL, '548678978', '2348587897', 'Oren Leon', '487878', '1978', '78', 'Lila Duke', '692489', '1995', '69', NULL, NULL, 1, 1, 0, NULL, 1, NULL, '2022-10-04 05:51:47', '2022-10-04 05:51:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '1011', NULL, 5, 3, '2022-10-04', 'Austin', 'Ochoa', 'Ingrid Drake', 'Hollee Sexton', 'dypiwizup@mailinator.com', NULL, '$2y$10$yRX1PFsT83p7SpLjS24TxOIu09aRZ8zvNLQqLLsqEbUKDYhjmuwyK', 'eyJpdiI6IkxHWVNQZHJXYzdOVFJieXZ3TGxndUE9PSIsInZhbHVlIjoiRUR5bFRNa2E3TnNwd0l0OForanJFZz09IiwibWFjIjoiNjY3M2EyZTMxZjNlZjAxMDc0ZGNkMGY4NTk5ZTQzNTI4ZTgxNzA2Yzg0YTExNTM1Y2Q2MGQ0ZjdmZTZmMjZkMCIsInRhZyI6IiJ9', 2, 7, 'Non dolor repellendu', 'Assumenda itaque sit', 2, 13, 'Iure iure asperiores', 'Nemo excepturi eum q', 1, '2004-11-06', '+1 (884) 749-5351', NULL, NULL, 5, 5, NULL, '7875454', '01248787548', 'Ulric Lloyd', '21454545', '2000', '56', 'Giacomo Holman', '24587878', '2001', '64', 'student_1664884390.jpg', NULL, 1, 1, 0, NULL, 1, NULL, '2022-10-04 05:53:10', '2022-10-04 05:53:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '1012', NULL, 5, 3, '2022-10-04', 'Carter', 'Donovan', 'Dalton Walters', 'Idona Mitchell', 'zipukamixi@mailinator.com', NULL, '$2y$10$Q/sOqBj0v/y58tDJmJzxeeFy97hsIRjiqtDDSoILXkXLuxjY0567e', 'eyJpdiI6IjlHeG45dVNNWldTdjVUazlRUXZCS3c9PSIsInZhbHVlIjoidkJLaUhwT3J6NWh3eitJK2JXVXRzUT09IiwibWFjIjoiMDFlYWU1YWJjN2NjMzVmOTIxMzA4ODJlNzA1ZTJlOWQ5MTIyYzYzNzdlYmYzZDY1MjNkOTQxN2Y4N2Y1NzY3MSIsInRhZyI6IiJ9', 4, 3, 'Cum ut eum vel aut q', 'Voluptatem fugiat et', 3, 8, 'Libero consectetur v', 'Aliquip esse volupta', 2, '1992-11-29', '+1 (558) 569-2348', NULL, NULL, 4, 4, NULL, '48754548784', '218754778784', 'Gil Henry', '24878854', '1987', '96', 'Xander Yang', '56978874', '1970', '47', NULL, NULL, 1, 1, 0, NULL, 1, 1, '2022-10-04 05:54:20', '2022-10-04 05:54:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '1013', NULL, 5, 2, '2022-10-04', 'Susan', 'Bond', 'Todd Barry', 'Maggie Logan', 'gypuce@mailinator.com', NULL, '$2y$10$hVWcWz8Gmkh4YG/3hVkYF.Ql1kcQ6OH5JL/HsAMMT2yIgvVUeVAD.', 'eyJpdiI6IlNxQk92RGtDMndoc0YvRDZrU1drOXc9PSIsInZhbHVlIjoiNWwvV3pjUUtlN1J4VUlLWVFwajhtUT09IiwibWFjIjoiOWZiOGMyMTI0NTA2OGU2YjA1ZTUyNDZjNjI3ZTczZDg4ZjJiMTc0MWY1YzlmMmU0YmJhYzRlYzRmYzIxODZjYyIsInRhZyI6IiJ9', 2, 7, 'Sit cupiditate nemo', 'Esse officia molesti', 2, 13, 'Ipsum incidunt libe', 'Nisi est pariatur', 2, '1980-10-01', '+1 (566) 386-4189', NULL, NULL, 5, 8, NULL, '5478895457', '2156895548', 'Marah Schwartz', '178454777', '1972', '97', 'Benjamin Herman', '2147483647', '2002', '63', 'student_1664884572.jpg', NULL, 1, 1, 0, NULL, 1, NULL, '2022-10-04 05:56:12', '2022-10-04 05:56:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '1014', NULL, 5, 3, '2022-10-04', 'Rylee', 'Pratt', 'Henry Pollard', 'Russell Rosa', 'student@mail.com', NULL, '$2y$10$cyU517mZqL56JHlS7UGlxumTgb5lUmO4JVgqzYNG.taiW5.XToil6', 'eyJpdiI6IjNzekIrZlF4RWZ2Q2dPREFOZjhUVVE9PSIsInZhbHVlIjoiQW5aYmZrZStKR2F3Nm9uekM3MHhGQT09IiwibWFjIjoiMmFhNzc4ZjE0NTZmM2I5ZmViOTNlNjExMDdmZWJmNGE3YTkwYjljMDAxZmViZjI5NTU2MTVjMjg3ODkyYjE4NSIsInRhZyI6IiJ9', 3, 10, NULL, 'Nihil fuga Tempore', 4, 4, NULL, 'Est illo officia do', 3, '1972-03-25', '+1 (611) 728-8917', NULL, NULL, 3, 1, NULL, '2458787', '2156787', 'Linus Rowland', '78545487', '1995', '96', 'Oliver Charles', '159887845', '2002', '78', 'staff1_1664884807.jpg', NULL, 1, 1, 0, 'SKD8lhKVv0vRDH7DITodddnJqWqAqKoaiNkTVdVL8nrUAXgthM6ihUUzuE83', 1, 1, '2022-10-04 06:00:07', '2024-09-30 12:07:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_assignments`
--

DROP TABLE IF EXISTS `student_assignments`;
CREATE TABLE IF NOT EXISTS `student_assignments` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_enroll_id` bigint UNSIGNED NOT NULL,
  `assignment_id` bigint UNSIGNED NOT NULL,
  `marks` decimal(5,2) DEFAULT NULL,
  `attendance` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `attach` text COLLATE utf8mb4_unicode_ci,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_assignments_student_enroll_id_foreign` (`student_enroll_id`),
  KEY `student_assignments_assignment_id_foreign` (`assignment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_assignments`
--

INSERT INTO `student_assignments` (`id`, `student_enroll_id`, `assignment_id`, `marks`, `attendance`, `date`, `attach`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 4, 1, NULL, NULL, NULL, NULL, 1, NULL, '2022-10-03 11:10:03', '2022-10-03 11:10:03'),
(2, 3, 1, NULL, NULL, NULL, NULL, 1, NULL, '2022-10-03 11:10:03', '2022-10-03 11:10:03'),
(3, 2, 1, NULL, NULL, NULL, NULL, 1, NULL, '2022-10-03 11:10:03', '2022-10-03 11:10:03'),
(4, 1, 1, NULL, NULL, NULL, NULL, 1, NULL, '2022-10-03 11:10:03', '2022-10-03 11:10:03'),
(5, 8, 2, NULL, NULL, NULL, NULL, 1, NULL, '2022-10-03 11:13:04', '2022-10-03 11:13:04'),
(6, 7, 2, NULL, NULL, NULL, NULL, 1, NULL, '2022-10-03 11:13:04', '2022-10-03 11:13:04'),
(7, 18, 3, NULL, NULL, NULL, NULL, 1, NULL, '2022-10-04 06:53:42', '2022-10-04 06:53:42'),
(8, 16, 3, NULL, NULL, NULL, NULL, 1, NULL, '2022-10-04 06:53:42', '2022-10-04 06:53:42'),
(9, 15, 3, NULL, NULL, NULL, NULL, 1, NULL, '2022-10-04 06:53:42', '2022-10-04 06:53:42'),
(10, 14, 3, NULL, NULL, NULL, NULL, 1, NULL, '2022-10-04 06:53:42', '2022-10-04 06:53:42'),
(11, 18, 5, NULL, 1, '2022-10-04', 'Provisional Certificate-100001_1664888786.pdf', 1, NULL, '2022-10-04 07:05:34', '2022-10-04 07:06:26'),
(12, 16, 5, NULL, NULL, NULL, NULL, 1, NULL, '2022-10-04 07:05:34', '2022-10-04 07:05:34'),
(13, 15, 5, NULL, NULL, NULL, NULL, 1, NULL, '2022-10-04 07:05:34', '2022-10-04 07:05:34'),
(14, 14, 5, NULL, NULL, NULL, NULL, 1, NULL, '2022-10-04 07:05:34', '2022-10-04 07:05:34');

-- --------------------------------------------------------

--
-- Table structure for table `student_attendances`
--

DROP TABLE IF EXISTS `student_attendances`;
CREATE TABLE IF NOT EXISTS `student_attendances` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_enroll_id` bigint UNSIGNED NOT NULL,
  `subject_id` bigint UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `time` time DEFAULT NULL,
  `attendance` int NOT NULL DEFAULT '0' COMMENT '1 Present, 2 Absent, 3 Leave, 4 Holiday',
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_attendances_student_enroll_id_foreign` (`student_enroll_id`),
  KEY `student_attendances_subject_id_foreign` (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_attendances`
--

INSERT INTO `student_attendances` (`id`, `student_enroll_id`, `subject_id`, `date`, `time`, `attendance`, `note`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 7, 5, '2022-10-02', NULL, 1, '', 1, NULL, '2022-10-02 12:50:51', '2022-10-02 12:50:51'),
(2, 8, 5, '2022-10-02', NULL, 1, '', 1, NULL, '2022-10-02 12:50:51', '2022-10-02 12:50:51'),
(3, 7, 3, '2022-10-02', NULL, 1, '', 1, NULL, '2022-10-02 12:51:11', '2022-10-02 12:51:11'),
(4, 8, 3, '2022-10-02', NULL, 2, '', 1, NULL, '2022-10-02 12:51:11', '2022-10-02 12:51:17'),
(5, 7, 4, '2022-10-02', NULL, 2, '', 1, NULL, '2022-10-02 12:51:31', '2022-10-02 12:51:31'),
(6, 8, 4, '2022-10-02', NULL, 1, '', 1, NULL, '2022-10-02 12:51:31', '2022-10-02 12:51:31'),
(7, 7, 6, '2022-10-02', NULL, 1, '', 1, NULL, '2022-10-02 12:51:46', '2022-10-02 12:51:46'),
(8, 8, 6, '2022-10-02', NULL, 1, '', 1, NULL, '2022-10-02 12:51:46', '2022-10-02 12:51:46'),
(9, 7, 6, '2022-10-04', NULL, 1, '', 1, NULL, '2022-10-02 12:52:03', '2022-10-02 12:52:03'),
(10, 8, 6, '2022-10-04', NULL, 1, '', 1, NULL, '2022-10-02 12:52:03', '2022-10-02 12:52:03'),
(11, 7, 3, '2022-10-04', NULL, 1, '', 1, NULL, '2022-10-02 12:52:33', '2022-10-02 12:52:33'),
(12, 8, 3, '2022-10-04', NULL, 2, '', 1, NULL, '2022-10-02 12:52:33', '2022-10-02 12:52:33'),
(13, 7, 4, '2022-10-04', NULL, 1, '', 1, NULL, '2022-10-02 12:52:40', '2022-10-02 12:52:40'),
(14, 8, 4, '2022-10-04', NULL, 1, '', 1, NULL, '2022-10-02 12:52:40', '2022-10-02 12:52:40'),
(15, 7, 4, '2022-10-06', NULL, 1, '', 1, NULL, '2022-10-02 12:52:56', '2022-10-02 12:52:56'),
(16, 8, 4, '2022-10-06', NULL, 2, '', 1, NULL, '2022-10-02 12:52:56', '2022-10-02 12:52:56'),
(17, 7, 6, '2022-10-06', NULL, 1, '', 1, NULL, '2022-10-02 12:53:06', '2022-10-02 12:53:06'),
(18, 8, 6, '2022-10-06', NULL, 1, '', 1, NULL, '2022-10-02 12:53:06', '2022-10-02 12:53:06'),
(19, 7, 3, '2022-10-06', NULL, 2, '', 1, NULL, '2022-10-02 12:53:28', '2022-10-02 12:53:28'),
(20, 8, 3, '2022-10-06', NULL, 1, '', 1, NULL, '2022-10-02 12:53:28', '2022-10-02 12:53:28'),
(21, 5, 5, '2022-10-02', NULL, 1, '', 1, NULL, '2022-10-02 12:54:50', '2022-10-02 12:54:50'),
(22, 6, 5, '2022-10-02', NULL, 1, '', 1, NULL, '2022-10-02 12:54:50', '2022-10-02 12:54:50'),
(23, 5, 3, '2022-10-02', NULL, 1, '', 1, NULL, '2022-10-02 12:55:11', '2022-10-02 12:55:11'),
(24, 6, 3, '2022-10-02', NULL, 2, '', 1, NULL, '2022-10-02 12:55:11', '2022-10-02 12:55:11'),
(25, 5, 4, '2022-10-02', NULL, 3, '', 1, NULL, '2022-10-02 12:55:19', '2022-10-02 12:55:19'),
(26, 6, 4, '2022-10-02', NULL, 3, '', 1, NULL, '2022-10-02 12:55:19', '2022-10-02 12:55:19'),
(27, 5, 6, '2022-10-02', NULL, 2, '', 1, NULL, '2022-10-02 12:55:28', '2022-10-02 12:55:28'),
(28, 6, 6, '2022-10-02', NULL, 3, '', 1, NULL, '2022-10-02 12:55:28', '2022-10-02 12:55:28'),
(29, 5, 6, '2022-10-04', NULL, 1, '', 1, NULL, '2022-10-02 12:56:10', '2022-10-02 12:56:10'),
(30, 6, 6, '2022-10-04', NULL, 1, '', 1, NULL, '2022-10-02 12:56:10', '2022-10-02 12:56:10'),
(31, 5, 5, '2022-10-04', NULL, 2, '', 1, NULL, '2022-10-02 12:56:18', '2022-10-02 12:56:18'),
(32, 6, 5, '2022-10-04', NULL, 1, '', 1, NULL, '2022-10-02 12:56:18', '2022-10-02 12:56:18'),
(33, 5, 3, '2022-10-04', NULL, 1, '', 1, NULL, '2022-10-02 12:56:27', '2022-10-02 12:56:27'),
(34, 6, 3, '2022-10-04', NULL, 2, '', 1, NULL, '2022-10-02 12:56:27', '2022-10-02 12:56:27'),
(35, 5, 4, '2022-10-04', NULL, 1, '', 1, NULL, '2022-10-02 12:56:38', '2022-10-02 12:56:38'),
(36, 6, 4, '2022-10-04', NULL, 1, '', 1, NULL, '2022-10-02 12:56:38', '2022-10-02 12:56:38'),
(37, 5, 4, '2022-10-06', NULL, 1, '', 1, NULL, '2022-10-02 12:56:47', '2022-10-02 12:56:47'),
(38, 6, 4, '2022-10-06', NULL, 1, '', 1, NULL, '2022-10-02 12:56:47', '2022-10-02 12:56:47'),
(39, 5, 6, '2022-10-06', NULL, 2, '', 1, NULL, '2022-10-02 12:56:57', '2022-10-02 12:56:57'),
(40, 6, 6, '2022-10-06', NULL, 2, '', 1, NULL, '2022-10-02 12:56:57', '2022-10-02 12:56:57'),
(41, 5, 5, '2022-10-06', NULL, 1, '', 1, NULL, '2022-10-02 12:57:07', '2022-10-02 12:57:07'),
(42, 6, 5, '2022-10-06', NULL, 3, '', 1, NULL, '2022-10-02 12:57:07', '2022-10-02 12:57:07'),
(43, 5, 3, '2022-10-06', NULL, 1, '', 1, NULL, '2022-10-02 12:57:18', '2022-10-02 12:57:18'),
(44, 6, 3, '2022-10-06', NULL, 3, '', 1, NULL, '2022-10-02 12:57:18', '2022-10-02 12:57:23'),
(45, 1, 8, '2022-10-06', NULL, 1, '', 1, NULL, '2022-10-02 12:58:43', '2022-10-02 12:58:43'),
(46, 2, 8, '2022-10-06', NULL, 2, '', 1, NULL, '2022-10-02 12:58:43', '2022-10-02 12:58:43'),
(47, 3, 8, '2022-10-06', NULL, 1, '', 1, NULL, '2022-10-02 12:58:43', '2022-10-02 12:58:43'),
(48, 4, 8, '2022-10-06', NULL, 1, '', 1, NULL, '2022-10-02 12:58:43', '2022-10-02 12:58:43'),
(49, 1, 3, '2022-10-06', NULL, 1, '', 1, NULL, '2022-10-02 12:58:53', '2022-10-02 12:58:53'),
(50, 2, 3, '2022-10-06', NULL, 1, '', 1, NULL, '2022-10-02 12:58:53', '2022-10-02 12:58:53'),
(51, 3, 3, '2022-10-06', NULL, 1, '', 1, NULL, '2022-10-02 12:58:53', '2022-10-02 12:58:53'),
(52, 4, 3, '2022-10-06', NULL, 2, '', 1, NULL, '2022-10-02 12:58:53', '2022-10-02 12:58:53'),
(53, 1, 4, '2022-10-06', NULL, 3, '', 1, NULL, '2022-10-02 12:59:11', '2022-10-02 12:59:11'),
(54, 2, 4, '2022-10-06', NULL, 1, '', 1, NULL, '2022-10-02 12:59:11', '2022-10-02 12:59:11'),
(55, 3, 4, '2022-10-06', NULL, 1, '', 1, NULL, '2022-10-02 12:59:11', '2022-10-02 12:59:11'),
(56, 4, 4, '2022-10-06', NULL, 1, '', 1, NULL, '2022-10-02 12:59:11', '2022-10-02 12:59:11'),
(57, 1, 6, '2022-10-06', NULL, 1, '', 1, NULL, '2022-10-02 12:59:20', '2022-10-02 12:59:20'),
(58, 2, 6, '2022-10-06', NULL, 2, '', 1, NULL, '2022-10-02 12:59:20', '2022-10-02 12:59:20'),
(59, 3, 6, '2022-10-06', NULL, 1, '', 1, NULL, '2022-10-02 12:59:20', '2022-10-02 12:59:20'),
(60, 4, 6, '2022-10-06', NULL, 3, '', 1, NULL, '2022-10-02 12:59:20', '2022-10-02 12:59:20'),
(61, 1, 8, '2022-10-02', NULL, 3, '', 1, NULL, '2022-10-02 12:59:34', '2022-10-02 12:59:34'),
(62, 2, 8, '2022-10-02', NULL, 1, '', 1, NULL, '2022-10-02 12:59:34', '2022-10-02 12:59:34'),
(63, 3, 8, '2022-10-02', NULL, 1, '', 1, NULL, '2022-10-02 12:59:35', '2022-10-02 12:59:35'),
(64, 4, 8, '2022-10-02', NULL, 1, '', 1, NULL, '2022-10-02 12:59:35', '2022-10-02 12:59:35'),
(65, 1, 3, '2022-10-02', NULL, 1, '', 1, NULL, '2022-10-02 12:59:48', '2022-10-02 12:59:48'),
(66, 2, 3, '2022-10-02', NULL, 3, '', 1, NULL, '2022-10-02 12:59:48', '2022-10-02 12:59:48'),
(67, 3, 3, '2022-10-02', NULL, 1, '', 1, NULL, '2022-10-02 12:59:48', '2022-10-02 12:59:48'),
(68, 4, 3, '2022-10-02', NULL, 1, '', 1, NULL, '2022-10-02 12:59:48', '2022-10-02 12:59:48'),
(69, 1, 4, '2022-10-02', NULL, 1, '', 1, NULL, '2022-10-02 13:00:17', '2022-10-02 13:00:17'),
(70, 2, 4, '2022-10-02', NULL, 2, '', 1, NULL, '2022-10-02 13:00:17', '2022-10-02 13:00:17'),
(71, 3, 4, '2022-10-02', NULL, 1, '', 1, NULL, '2022-10-02 13:00:17', '2022-10-02 13:00:17'),
(72, 4, 4, '2022-10-02', NULL, 3, '', 1, NULL, '2022-10-02 13:00:17', '2022-10-02 13:00:17'),
(73, 1, 6, '2022-10-02', NULL, 1, '', 1, NULL, '2022-10-02 13:00:23', '2022-10-02 13:00:23'),
(74, 2, 6, '2022-10-02', NULL, 1, '', 1, NULL, '2022-10-02 13:00:23', '2022-10-02 13:00:23'),
(75, 3, 6, '2022-10-02', NULL, 1, '', 1, NULL, '2022-10-02 13:00:23', '2022-10-02 13:00:23'),
(76, 4, 6, '2022-10-02', NULL, 1, '', 1, NULL, '2022-10-02 13:00:23', '2022-10-02 13:00:23'),
(77, 1, 8, '2022-10-04', NULL, 1, '', 1, NULL, '2022-10-02 13:00:39', '2022-10-02 13:00:39'),
(78, 2, 8, '2022-10-04', NULL, 2, '', 1, NULL, '2022-10-02 13:00:39', '2022-10-02 13:00:39'),
(79, 3, 8, '2022-10-04', NULL, 1, '', 1, NULL, '2022-10-02 13:00:39', '2022-10-02 13:00:39'),
(80, 4, 8, '2022-10-04', NULL, 1, '', 1, NULL, '2022-10-02 13:00:39', '2022-10-02 13:00:39'),
(81, 1, 3, '2022-10-04', NULL, 2, '', 1, NULL, '2022-10-02 13:00:47', '2022-10-02 13:00:47'),
(82, 2, 3, '2022-10-04', NULL, 1, '', 1, NULL, '2022-10-02 13:00:47', '2022-10-02 13:00:47'),
(83, 3, 3, '2022-10-04', NULL, 1, '', 1, NULL, '2022-10-02 13:00:47', '2022-10-02 13:00:47'),
(84, 4, 3, '2022-10-04', NULL, 1, '', 1, NULL, '2022-10-02 13:00:47', '2022-10-02 13:00:47'),
(85, 1, 4, '2022-10-04', NULL, 1, '', 1, NULL, '2022-10-02 13:00:55', '2022-10-02 13:00:55'),
(86, 2, 4, '2022-10-04', NULL, 1, '', 1, NULL, '2022-10-02 13:00:55', '2022-10-02 13:00:55'),
(87, 3, 4, '2022-10-04', NULL, 1, '', 1, NULL, '2022-10-02 13:00:55', '2022-10-02 13:00:55'),
(88, 4, 4, '2022-10-04', NULL, 2, '', 1, NULL, '2022-10-02 13:00:55', '2022-10-02 13:00:55'),
(89, 1, 6, '2022-10-04', NULL, 1, '', 1, NULL, '2022-10-02 13:01:09', '2022-10-02 13:01:09'),
(90, 2, 6, '2022-10-04', NULL, 1, '', 1, NULL, '2022-10-02 13:01:09', '2022-10-02 13:01:09'),
(91, 3, 6, '2022-10-04', NULL, 2, '', 1, NULL, '2022-10-02 13:01:09', '2022-10-02 13:01:09'),
(92, 4, 6, '2022-10-04', NULL, 1, '', 1, NULL, '2022-10-02 13:01:09', '2022-10-02 13:01:09'),
(93, 7, 3, '2022-10-01', NULL, 4, '', 1, NULL, '2022-10-02 13:49:58', '2022-10-02 13:49:58'),
(94, 8, 3, '2022-10-01', NULL, 4, '', 1, NULL, '2022-10-02 13:49:58', '2022-10-02 13:49:58'),
(95, 14, 8, '2022-10-04', NULL, 1, '', 1, NULL, '2022-10-04 06:15:46', '2022-10-04 06:15:46'),
(96, 15, 8, '2022-10-04', NULL, 1, '', 1, NULL, '2022-10-04 06:15:46', '2022-10-04 06:15:46'),
(97, 16, 8, '2022-10-04', NULL, 2, '', 1, NULL, '2022-10-04 06:15:46', '2022-10-04 06:15:46'),
(98, 18, 8, '2022-10-04', NULL, 1, '', 1, NULL, '2022-10-04 06:15:46', '2022-10-04 06:15:46'),
(99, 14, 8, '2022-10-03', NULL, 1, '', 1, NULL, '2022-10-04 06:16:09', '2022-10-04 06:16:09'),
(100, 15, 8, '2022-10-03', NULL, 1, '', 1, NULL, '2022-10-04 06:16:09', '2022-10-04 06:16:09'),
(101, 16, 8, '2022-10-03', NULL, 3, '', 1, NULL, '2022-10-04 06:16:09', '2022-10-04 06:16:09'),
(102, 18, 8, '2022-10-03', NULL, 1, '', 1, NULL, '2022-10-04 06:16:09', '2022-10-04 06:16:09'),
(103, 14, 8, '2022-10-02', NULL, 4, '', 1, NULL, '2022-10-04 06:16:21', '2022-10-04 06:16:21'),
(104, 15, 8, '2022-10-02', NULL, 4, '', 1, NULL, '2022-10-04 06:16:21', '2022-10-04 06:16:21'),
(105, 16, 8, '2022-10-02', NULL, 4, '', 1, NULL, '2022-10-04 06:16:21', '2022-10-04 06:16:21'),
(106, 18, 8, '2022-10-02', NULL, 4, '', 1, NULL, '2022-10-04 06:16:21', '2022-10-04 06:16:21'),
(107, 14, 8, '2022-10-01', NULL, 1, '', 1, NULL, '2022-10-04 06:16:33', '2022-10-04 06:16:33'),
(108, 15, 8, '2022-10-01', NULL, 1, '', 1, NULL, '2022-10-04 06:16:33', '2022-10-04 06:16:33'),
(109, 16, 8, '2022-10-01', NULL, 1, '', 1, NULL, '2022-10-04 06:16:33', '2022-10-04 06:16:33'),
(110, 18, 8, '2022-10-01', NULL, 3, '', 1, NULL, '2022-10-04 06:16:33', '2022-10-04 06:16:33'),
(111, 14, 3, '2022-10-01', NULL, 1, '', 1, NULL, '2022-10-04 06:16:49', '2022-10-04 06:16:49'),
(112, 15, 3, '2022-10-01', NULL, 2, '', 1, NULL, '2022-10-04 06:16:49', '2022-10-04 06:16:49'),
(113, 16, 3, '2022-10-01', NULL, 1, '', 1, NULL, '2022-10-04 06:16:49', '2022-10-04 06:16:49'),
(114, 18, 3, '2022-10-01', NULL, 1, '', 1, NULL, '2022-10-04 06:16:49', '2022-10-04 06:16:49'),
(115, 14, 3, '2022-10-03', NULL, 2, '', 1, NULL, '2022-10-04 06:17:02', '2022-10-04 06:17:02'),
(116, 15, 3, '2022-10-03', NULL, 1, '', 1, NULL, '2022-10-04 06:17:02', '2022-10-04 06:17:02'),
(117, 16, 3, '2022-10-03', NULL, 1, '', 1, NULL, '2022-10-04 06:17:02', '2022-10-04 06:17:02'),
(118, 18, 3, '2022-10-03', NULL, 1, '', 1, NULL, '2022-10-04 06:17:02', '2022-10-04 06:17:02'),
(119, 14, 3, '2022-10-04', NULL, 1, '', 1, NULL, '2022-10-04 06:17:16', '2022-10-04 06:17:16'),
(120, 15, 3, '2022-10-04', NULL, 1, '', 1, NULL, '2022-10-04 06:17:16', '2022-10-04 06:17:16'),
(121, 16, 3, '2022-10-04', NULL, 1, '', 1, NULL, '2022-10-04 06:17:16', '2022-10-04 06:17:16'),
(122, 18, 3, '2022-10-04', NULL, 2, '', 1, NULL, '2022-10-04 06:17:16', '2022-10-04 06:17:16'),
(123, 14, 4, '2022-10-04', NULL, 1, '', 1, NULL, '2022-10-04 06:17:24', '2022-10-04 06:17:24'),
(124, 15, 4, '2022-10-04', NULL, 1, '', 1, NULL, '2022-10-04 06:17:24', '2022-10-04 06:17:24'),
(125, 16, 4, '2022-10-04', NULL, 1, '', 1, NULL, '2022-10-04 06:17:24', '2022-10-04 06:17:24'),
(126, 18, 4, '2022-10-04', NULL, 1, '', 1, NULL, '2022-10-04 06:17:24', '2022-10-04 06:17:24'),
(127, 14, 4, '2022-10-03', NULL, 1, '', 1, NULL, '2022-10-04 06:17:37', '2022-10-04 06:17:37'),
(128, 15, 4, '2022-10-03', NULL, 2, '', 1, NULL, '2022-10-04 06:17:37', '2022-10-04 06:17:37'),
(129, 16, 4, '2022-10-03', NULL, 1, '', 1, NULL, '2022-10-04 06:17:37', '2022-10-04 06:17:37'),
(130, 18, 4, '2022-10-03', NULL, 3, '', 1, NULL, '2022-10-04 06:17:37', '2022-10-04 06:17:37'),
(131, 14, 4, '2022-10-02', NULL, 4, '', 1, NULL, '2022-10-04 06:17:45', '2022-10-04 06:17:45'),
(132, 15, 4, '2022-10-02', NULL, 4, '', 1, NULL, '2022-10-04 06:17:45', '2022-10-04 06:17:45'),
(133, 16, 4, '2022-10-02', NULL, 4, '', 1, NULL, '2022-10-04 06:17:45', '2022-10-04 06:17:45'),
(134, 18, 4, '2022-10-02', NULL, 4, '', 1, NULL, '2022-10-04 06:17:45', '2022-10-04 06:17:45'),
(135, 14, 4, '2022-10-01', NULL, 3, '', 1, NULL, '2022-10-04 06:17:59', '2022-10-04 06:17:59'),
(136, 15, 4, '2022-10-01', NULL, 1, '', 1, NULL, '2022-10-04 06:17:59', '2022-10-04 06:17:59'),
(137, 16, 4, '2022-10-01', NULL, 1, '', 1, NULL, '2022-10-04 06:17:59', '2022-10-04 06:17:59'),
(138, 18, 4, '2022-10-01', NULL, 1, '', 1, NULL, '2022-10-04 06:17:59', '2022-10-04 06:17:59'),
(139, 14, 6, '2022-10-04', NULL, 1, '', 1, NULL, '2022-10-04 06:42:53', '2022-10-04 06:42:53'),
(140, 15, 6, '2022-10-04', NULL, 1, '', 1, NULL, '2022-10-04 06:42:53', '2022-10-04 06:42:53'),
(141, 16, 6, '2022-10-04', NULL, 1, '', 1, NULL, '2022-10-04 06:42:53', '2022-10-04 06:42:53'),
(142, 18, 6, '2022-10-04', NULL, 1, '', 1, NULL, '2022-10-04 06:42:53', '2022-10-04 06:42:53'),
(143, 14, 6, '2022-10-03', NULL, 1, '', 1, NULL, '2022-10-04 06:43:07', '2022-10-04 06:43:07'),
(144, 15, 6, '2022-10-03', NULL, 1, '', 1, NULL, '2022-10-04 06:43:07', '2022-10-04 06:43:07'),
(145, 16, 6, '2022-10-03', NULL, 2, '', 1, NULL, '2022-10-04 06:43:07', '2022-10-04 06:43:07'),
(146, 18, 6, '2022-10-03', NULL, 2, '', 1, NULL, '2022-10-04 06:43:07', '2022-10-04 06:43:07'),
(147, 14, 6, '2022-10-02', NULL, 2, '', 1, NULL, '2022-10-04 06:43:16', '2022-10-04 06:43:16'),
(148, 15, 6, '2022-10-02', NULL, 3, '', 1, NULL, '2022-10-04 06:43:16', '2022-10-04 06:43:16'),
(149, 16, 6, '2022-10-02', NULL, 1, '', 1, NULL, '2022-10-04 06:43:16', '2022-10-04 06:43:16'),
(150, 18, 6, '2022-10-02', NULL, 1, '', 1, NULL, '2022-10-04 06:43:16', '2022-10-04 06:43:16'),
(151, 14, 6, '2022-10-01', NULL, 1, '', 1, NULL, '2022-10-04 06:43:29', '2022-10-04 06:43:29'),
(152, 15, 6, '2022-10-01', NULL, 1, '', 1, NULL, '2022-10-04 06:43:29', '2022-10-04 06:43:34'),
(153, 16, 6, '2022-10-01', NULL, 3, '', 1, NULL, '2022-10-04 06:43:29', '2022-10-04 06:43:34'),
(154, 18, 6, '2022-10-01', NULL, 1, '', 1, NULL, '2022-10-04 06:43:29', '2022-10-04 06:43:29'),
(155, 14, 3, '2022-10-02', NULL, 3, '', 1, NULL, '2022-10-04 06:44:21', '2022-10-04 06:44:54'),
(156, 15, 3, '2022-10-02', NULL, 1, '', 1, NULL, '2022-10-04 06:44:21', '2022-10-04 06:44:51'),
(157, 16, 3, '2022-10-02', NULL, 1, '', 1, NULL, '2022-10-04 06:44:21', '2022-10-04 06:44:51'),
(158, 18, 3, '2022-10-02', NULL, 1, '', 1, NULL, '2022-10-04 06:44:21', '2022-10-04 06:44:51');

-- --------------------------------------------------------

--
-- Table structure for table `student_enrolls`
--

DROP TABLE IF EXISTS `student_enrolls`;
CREATE TABLE IF NOT EXISTS `student_enrolls` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_id` bigint UNSIGNED NOT NULL,
  `program_id` int UNSIGNED NOT NULL,
  `session_id` int UNSIGNED NOT NULL,
  `semester_id` int UNSIGNED NOT NULL,
  `section_id` int UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_enrolls_student_id_foreign` (`student_id`),
  KEY `student_enrolls_program_id_foreign` (`program_id`),
  KEY `student_enrolls_session_id_foreign` (`session_id`),
  KEY `student_enrolls_semester_id_foreign` (`semester_id`),
  KEY `student_enrolls_section_id_foreign` (`section_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_enrolls`
--

INSERT INTO `student_enrolls` (`id`, `student_id`, `program_id`, `session_id`, `semester_id`, `section_id`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 3, 1, 1, 0, 1, NULL, '2022-10-02 12:15:14', '2022-10-03 16:10:08'),
(2, 2, 3, 3, 1, 1, 0, 1, NULL, '2022-10-02 12:17:47', '2022-10-03 16:10:08'),
(3, 3, 3, 3, 1, 1, 0, 1, NULL, '2022-10-02 12:20:00', '2022-10-03 16:10:08'),
(4, 4, 3, 3, 1, 1, 0, 1, NULL, '2022-10-02 12:21:45', '2022-10-03 16:10:08'),
(5, 5, 2, 3, 1, 1, 1, 1, NULL, '2022-10-02 12:23:09', '2022-10-02 12:23:09'),
(6, 6, 2, 3, 1, 1, 1, 1, NULL, '2022-10-02 12:26:33', '2022-10-02 12:26:33'),
(7, 7, 2, 4, 1, 1, 1, 1, NULL, '2022-10-02 12:27:40', '2022-10-02 12:27:40'),
(8, 8, 2, 4, 1, 1, 1, 1, NULL, '2022-10-02 12:29:17', '2022-10-02 12:29:17'),
(9, 1, 3, 4, 2, 1, 1, 1, NULL, '2022-10-03 16:10:08', '2022-10-03 16:10:08'),
(10, 2, 3, 4, 2, 1, 1, 1, NULL, '2022-10-03 16:10:08', '2022-10-03 16:10:08'),
(11, 3, 3, 4, 2, 1, 1, 1, NULL, '2022-10-03 16:10:08', '2022-10-03 16:10:08'),
(12, 4, 3, 4, 2, 1, 1, 1, NULL, '2022-10-03 16:10:08', '2022-10-03 16:10:08'),
(13, 9, 3, 4, 2, 1, 1, 1, NULL, '2022-10-03 16:22:23', '2022-10-03 16:22:23'),
(14, 10, 3, 4, 1, 1, 1, 1, NULL, '2022-10-04 05:51:47', '2022-10-04 05:51:47'),
(15, 11, 3, 4, 1, 1, 1, 1, NULL, '2022-10-04 05:53:10', '2022-10-04 05:53:10'),
(16, 12, 3, 4, 1, 1, 1, 1, NULL, '2022-10-04 05:54:20', '2022-10-04 05:54:20'),
(17, 13, 2, 4, 1, 1, 1, 1, NULL, '2022-10-04 05:56:12', '2022-10-04 05:56:12'),
(18, 14, 3, 4, 1, 1, 1, 1, NULL, '2022-10-04 06:00:07', '2022-10-04 06:00:07');

-- --------------------------------------------------------

--
-- Table structure for table `student_enroll_subject`
--

DROP TABLE IF EXISTS `student_enroll_subject`;
CREATE TABLE IF NOT EXISTS `student_enroll_subject` (
  `student_enroll_id` bigint UNSIGNED NOT NULL,
  `subject_id` bigint UNSIGNED NOT NULL,
  KEY `student_enroll_subject_student_enroll_id_foreign` (`student_enroll_id`),
  KEY `student_enroll_subject_subject_id_foreign` (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_enroll_subject`
--

INSERT INTO `student_enroll_subject` (`student_enroll_id`, `subject_id`) VALUES
(1, 8),
(1, 3),
(1, 4),
(1, 6),
(2, 8),
(2, 3),
(2, 4),
(2, 6),
(3, 8),
(3, 3),
(3, 4),
(3, 6),
(4, 8),
(4, 3),
(4, 4),
(4, 6),
(5, 5),
(5, 3),
(5, 4),
(5, 6),
(6, 5),
(6, 3),
(6, 4),
(6, 6),
(7, 5),
(7, 3),
(7, 4),
(7, 6),
(8, 5),
(8, 3),
(8, 4),
(8, 6),
(9, 9),
(9, 2),
(9, 7),
(9, 1),
(10, 9),
(10, 2),
(10, 7),
(10, 1),
(11, 9),
(11, 2),
(11, 7),
(11, 1),
(12, 9),
(12, 2),
(12, 7),
(12, 1),
(13, 9),
(13, 2),
(13, 7),
(13, 1),
(14, 8),
(14, 3),
(14, 4),
(14, 6),
(15, 8),
(15, 3),
(15, 4),
(15, 6),
(16, 8),
(16, 3),
(16, 4),
(16, 6),
(17, 5),
(17, 3),
(17, 4),
(17, 6),
(18, 8),
(18, 3),
(18, 4),
(18, 6);

-- --------------------------------------------------------

--
-- Table structure for table `student_leaves`
--

DROP TABLE IF EXISTS `student_leaves`;
CREATE TABLE IF NOT EXISTS `student_leaves` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_id` bigint UNSIGNED NOT NULL,
  `review_by` bigint UNSIGNED DEFAULT NULL,
  `apply_date` date NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci,
  `attach` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '0' COMMENT '0 Pending, 1 Approved and 2 Rejected',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_leaves_student_id_foreign` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_leaves`
--

INSERT INTO `student_leaves` (`id`, `student_id`, `review_by`, `apply_date`, `from_date`, `to_date`, `subject`, `reason`, `attach`, `note`, `status`, `created_at`, `updated_at`) VALUES
(1, 14, 1, '2022-10-04', '2022-10-04', '2022-10-07', 'Sudden Headache', 'A thunderclap headache is an extremely severe headache that comes on rapidly. It\'s sometimes called a lone acute headache. It develops in 60 seconds or less and causes intense pain. Thunderclap headaches can be caused by bleeding in the brain after an arterial aneurysm rupture, stroke, or other injury.', 'background-border_1664887696.png', NULL, 1, '2022-10-04 06:48:16', '2022-10-04 06:48:43');

-- --------------------------------------------------------

--
-- Table structure for table `student_relatives`
--

DROP TABLE IF EXISTS `student_relatives`;
CREATE TABLE IF NOT EXISTS `student_relatives` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_id` bigint UNSIGNED NOT NULL,
  `relation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `photo` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `student_relatives_student_id_foreign` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_relatives`
--

INSERT INTO `student_relatives` (`id`, `student_id`, `relation`, `name`, `occupation`, `email`, `phone`, `created_at`, `updated_at`, `address`, `photo`) VALUES
(1, 1, 'Father', 'Scarlett Walton', 'Omnis sed fugiat eum', 'Curry and Eaton Plc', '+2564854475414', '2022-10-02 12:15:14', '2022-10-02 12:15:14', NULL, NULL),
(2, 2, 'Brother', 'Vernon Long', 'Ipsa praesentium te', 'Klein Dale Traders', '+45246876586', '2022-10-02 12:17:47', '2022-10-02 12:17:47', NULL, NULL),
(3, 3, 'Father', 'Janna Hooper', 'Molestias aut distin', 'Quinn Ryan Trading', 'Est dolore sed labo', '2022-10-02 12:20:00', '2022-10-02 12:20:00', NULL, NULL),
(4, 5, 'Uncle', 'Chloe Cleveland', 'Suscipit minima dolo', 'Forbes Weeks LLC', 'Culpa et quidem qui', '2022-10-02 12:23:09', '2022-10-02 12:23:09', NULL, NULL),
(5, 6, 'Uncle', 'Shad Aguirre', 'Qui iure voluptas qu', 'Mills Reynolds Inc', '+48548786786', '2022-10-02 12:26:33', '2022-10-02 12:26:33', NULL, NULL),
(8, 8, 'Brother', 'McKenzie Hardy', 'Ea in praesentium ma', 'Jacobson and Cochran Associates', '+854857584', '2022-10-02 12:32:31', '2022-10-02 12:32:31', NULL, NULL),
(9, 7, 'Brother', 'Quinn Nguyen', 'Dolor commodi volupt', 'Clayton Blake Traders', '+65845445', '2022-10-02 12:32:49', '2022-10-02 12:32:49', NULL, NULL),
(10, 9, 'Father', 'Maxwell Chang', 'Vel dolores nulla of', 'Lowery Cannon Traders', 'Ea deleniti voluptas', '2022-10-03 16:22:23', '2022-10-03 16:22:23', NULL, NULL),
(11, 10, 'Brother', 'Tashya Farley', 'Nesciunt quae provi', 'Castaneda and Alvarado Inc', 'Voluptatibus aute qu', '2022-10-04 05:51:47', '2022-10-04 05:51:47', NULL, NULL),
(12, 11, 'Uncle', 'Haviva Callahan', 'At in sit magna occ', 'Gonzales and Britt Trading', 'In odio consequuntur', '2022-10-04 05:53:10', '2022-10-04 05:53:10', NULL, NULL),
(14, 12, 'Father', 'Timothy Fischer', 'Sed non eu voluptas', 'Kinney and Sanford Trading', 'Mollit autem fugiat', '2022-10-04 05:54:43', '2022-10-04 05:54:43', NULL, NULL),
(15, 13, 'Father', 'Aladdin Hahn', 'Temporibus est earum', 'Snow Morse Trading', 'Velit non ad eos qui', '2022-10-04 05:56:12', '2022-10-04 05:56:12', NULL, NULL),
(19, 14, 'Father', 'Noel Baxter', 'Voluptates suscipit', NULL, 'Dolorum velit labor', '2024-09-30 12:07:31', '2024-09-30 12:07:31', 'Dhaka', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_transfers`
--

DROP TABLE IF EXISTS `student_transfers`;
CREATE TABLE IF NOT EXISTS `student_transfers` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_id` bigint UNSIGNED NOT NULL,
  `transfer_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `university_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 Transfer In, 1 Transfer Out',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_transfers_student_id_foreign` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_transfers`
--

INSERT INTO `student_transfers` (`id`, `student_id`, `transfer_id`, `university_name`, `date`, `note`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 9, '75868576', 'Dhaka University', '2022-10-03', 'Will Say Something...', 0, 1, 1, '2022-10-03 16:22:23', '2022-10-03 16:22:57');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
CREATE TABLE IF NOT EXISTS `subjects` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit_hour` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` int DEFAULT NULL,
  `class_type` int DEFAULT NULL,
  `total_marks` decimal(5,2) DEFAULT NULL,
  `passing_marks` decimal(5,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subjects_title_unique` (`title`),
  UNIQUE KEY `subjects_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `title`, `code`, `credit_hour`, `subject_type`, `class_type`, `total_marks`, `passing_marks`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Artificial Intelligence', 'CSE601', '3', 1, 3, NULL, NULL, NULL, 1, '2022-09-30 13:37:45', '2022-09-30 13:37:45'),
(2, 'Software Engineering', 'CSE503', '3', 1, 3, NULL, NULL, NULL, 1, '2022-09-30 13:38:55', '2022-09-30 13:38:55'),
(3, 'Freshman English', 'EN105', '2', 0, 1, NULL, NULL, NULL, 1, '2022-09-30 13:39:44', '2022-10-02 14:53:12'),
(4, 'Discrete Mathematics', 'MAT211', '2', 1, 1, NULL, NULL, NULL, 1, '2022-09-30 13:40:34', '2022-09-30 13:40:34'),
(5, 'Computer Aided Design', 'CE209', '3', 1, 3, NULL, NULL, NULL, 1, '2022-10-01 04:41:46', '2022-10-01 04:41:46'),
(6, 'Optical Physics', 'PH308', '3', 1, 3, NULL, NULL, NULL, 1, '2022-10-01 04:44:51', '2022-10-01 04:44:51'),
(7, 'Database Management System', 'CSE506', '3', 1, 3, NULL, NULL, NULL, 1, '2022-10-01 08:28:45', '2022-10-01 08:28:45'),
(8, 'Data Structures and Algorithms', 'CSE607', '3', 1, 3, NULL, NULL, NULL, 1, '2022-10-01 08:30:08', '2022-10-01 08:30:08'),
(9, 'Applied Chemistry', 'CM108', '3', 1, 3, NULL, NULL, NULL, 1, '2022-10-01 08:32:02', '2022-10-01 08:32:02'),
(10, 'Hydraulics and Pneumatics', 'CE208', '3', 1, 3, NULL, NULL, NULL, 1, '2022-10-01 08:53:47', '2022-10-01 08:53:47'),
(11, 'Measurement and Instrumentation', 'CE213', '3', 1, 3, NULL, NULL, NULL, 1, '2022-10-01 08:55:03', '2022-10-01 08:55:03'),
(12, 'Architecture Engineering', 'CE304', '3', 1, 3, NULL, NULL, NULL, 1, '2022-10-01 08:57:24', '2022-10-01 08:57:24'),
(13, 'Structural Design', 'ME406', '6', 1, 3, NULL, NULL, NULL, 1, '2022-10-01 08:59:01', '2022-10-01 09:03:06');

-- --------------------------------------------------------

--
-- Table structure for table `subject_markings`
--

DROP TABLE IF EXISTS `subject_markings`;
CREATE TABLE IF NOT EXISTS `subject_markings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_enroll_id` bigint UNSIGNED NOT NULL,
  `subject_id` bigint UNSIGNED NOT NULL,
  `exam_marks` decimal(5,2) DEFAULT NULL,
  `attendances` decimal(5,2) DEFAULT NULL,
  `assignments` decimal(5,2) DEFAULT NULL,
  `activities` decimal(5,2) DEFAULT NULL,
  `total_marks` decimal(5,2) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `publish_time` time DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subject_markings_student_enroll_id_foreign` (`student_enroll_id`),
  KEY `subject_markings_subject_id_foreign` (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subject_markings`
--

INSERT INTO `subject_markings` (`id`, `student_enroll_id`, `subject_id`, `exam_marks`, `attendances`, `assignments`, `activities`, `total_marks`, `publish_date`, `publish_time`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 5, 5, 59.00, 7.00, 8.50, 7.00, 81.50, '2022-10-03', '02:27:00', 1, NULL, NULL, '2022-10-02 14:28:00', '2022-10-02 14:28:00'),
(2, 6, 5, 62.00, 10.00, 8.00, 9.00, 89.00, '2022-10-03', '02:27:00', 1, NULL, NULL, '2022-10-02 14:28:00', '2022-10-02 14:28:00'),
(3, 5, 3, 71.00, 10.00, 5.00, 7.50, 93.50, '2022-10-03', '02:28:00', 1, NULL, NULL, '2022-10-02 14:28:29', '2022-10-02 14:28:29'),
(4, 6, 3, 72.00, 3.00, 7.00, 8.00, 90.00, '2022-10-03', '02:28:00', 1, NULL, NULL, '2022-10-02 14:28:29', '2022-10-02 14:28:29'),
(5, 5, 4, 65.00, 10.00, 8.00, 9.00, 92.00, '2022-10-03', '02:31:00', 1, NULL, NULL, '2022-10-02 14:31:20', '2022-10-02 14:31:20'),
(6, 6, 4, 52.00, 10.00, 7.00, 6.50, 75.50, '2022-10-03', '02:31:00', 1, NULL, NULL, '2022-10-02 14:31:20', '2022-10-02 14:31:20'),
(7, 5, 6, 70.00, 3.00, 8.00, 9.00, 90.00, '2022-10-03', '02:31:00', 1, NULL, NULL, '2022-10-02 14:31:55', '2022-10-02 14:31:55'),
(8, 6, 6, 62.00, 7.00, 9.50, 7.00, 85.50, '2022-10-03', '02:31:00', 1, NULL, NULL, '2022-10-02 14:31:55', '2022-10-02 14:31:55'),
(9, 1, 8, 59.00, 10.00, 7.00, 9.00, 85.00, '2022-10-03', '02:32:00', 1, NULL, NULL, '2022-10-02 14:33:34', '2022-10-02 14:33:34'),
(10, 2, 8, 61.00, 3.00, 7.00, 7.00, 78.00, '2022-10-03', '02:32:00', 1, NULL, NULL, '2022-10-02 14:33:34', '2022-10-02 14:33:34'),
(11, 3, 8, 57.00, 10.00, 8.00, 7.50, 82.50, '2022-10-03', '02:32:00', 1, NULL, NULL, '2022-10-02 14:33:34', '2022-10-02 14:33:34'),
(12, 4, 8, 50.00, 10.00, 8.00, 8.00, 76.00, '2022-10-03', '02:32:00', 1, NULL, NULL, '2022-10-02 14:33:34', '2022-10-02 14:33:34'),
(13, 1, 3, 58.00, 7.00, 8.50, 8.00, 81.50, '2022-10-03', '02:34:00', 1, NULL, NULL, '2022-10-02 14:34:16', '2022-10-02 14:34:16'),
(14, 2, 3, 58.00, 10.00, 7.50, 5.00, 80.50, '2022-10-03', '02:34:00', 1, NULL, NULL, '2022-10-02 14:34:16', '2022-10-02 14:34:16'),
(15, 3, 3, 49.00, 10.00, 5.00, 9.00, 73.00, '2022-10-03', '02:34:00', 1, NULL, NULL, '2022-10-02 14:34:16', '2022-10-02 14:34:16'),
(16, 4, 3, 48.00, 7.00, 8.00, 6.00, 69.00, '2022-10-03', '02:34:00', 1, NULL, NULL, '2022-10-02 14:34:16', '2022-10-02 14:34:16'),
(17, 1, 4, 48.00, 10.00, 8.50, 4.00, 70.50, '2022-10-03', '02:34:00', 1, NULL, NULL, '2022-10-02 14:34:54', '2022-10-02 14:34:54'),
(18, 2, 4, 33.00, 7.00, 8.00, 7.00, 55.00, '2022-10-03', '02:34:00', 1, NULL, NULL, '2022-10-02 14:34:54', '2022-10-02 14:34:54'),
(19, 3, 4, 59.00, 10.00, 8.00, 9.00, 86.00, '2022-10-03', '02:34:00', 1, NULL, NULL, '2022-10-02 14:34:54', '2022-10-02 14:34:54'),
(20, 4, 4, 43.00, 7.00, 7.00, 7.50, 64.50, '2022-10-03', '02:34:00', 1, NULL, NULL, '2022-10-02 14:34:54', '2022-10-02 14:34:54'),
(21, 1, 6, 51.00, 10.00, 6.00, 7.00, 74.00, '2022-10-03', '02:35:00', 1, NULL, NULL, '2022-10-02 14:35:48', '2022-10-02 14:36:03'),
(22, 2, 6, 55.00, 7.00, 8.00, 8.00, 78.00, '2022-10-03', '02:35:00', 1, NULL, NULL, '2022-10-02 14:35:48', '2022-10-02 14:36:03'),
(23, 3, 6, 52.00, 7.00, 5.50, 6.00, 70.50, '2022-10-03', '02:35:00', 1, NULL, NULL, '2022-10-02 14:35:48', '2022-10-02 14:36:03'),
(24, 4, 6, 43.00, 10.00, 6.00, 7.00, 66.00, '2022-10-03', '02:35:00', 1, NULL, NULL, '2022-10-02 14:35:48', '2022-10-02 14:36:03');

-- --------------------------------------------------------

--
-- Table structure for table `s_m_s_notifies`
--

DROP TABLE IF EXISTS `s_m_s_notifies`;
CREATE TABLE IF NOT EXISTS `s_m_s_notifies` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `faculty_id` int UNSIGNED DEFAULT NULL,
  `program_id` int UNSIGNED DEFAULT NULL,
  `session_id` int UNSIGNED DEFAULT NULL,
  `semester_id` int UNSIGNED DEFAULT NULL,
  `section_id` int UNSIGNED DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `receive_count` int DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `s_m_s_notifies`
--

INSERT INTO `s_m_s_notifies` (`id`, `faculty_id`, `program_id`, `session_id`, `semester_id`, `section_id`, `message`, `receive_count`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(3, 0, 0, 0, 0, 0, 'This depends on when you enrol. Your fees are due 30 days from your starting date. For more information, please see Fees due dates.', 8, 1, 1, NULL, '2022-10-03 12:28:07', '2022-10-03 12:28:07');

-- --------------------------------------------------------

--
-- Table structure for table `s_m_s_settings`
--

DROP TABLE IF EXISTS `s_m_s_settings`;
CREATE TABLE IF NOT EXISTS `s_m_s_settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `nexmo_key` text COLLATE utf8mb4_unicode_ci,
  `nexmo_secret` text COLLATE utf8mb4_unicode_ci,
  `nexmo_sender_name` text COLLATE utf8mb4_unicode_ci,
  `twilio_sid` text COLLATE utf8mb4_unicode_ci,
  `twilio_auth_token` text COLLATE utf8mb4_unicode_ci,
  `twilio_number` text COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '1' COMMENT '1 Twilio, 2 Nexmo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `s_m_s_settings`
--

INSERT INTO `s_m_s_settings` (`id`, `nexmo_key`, `nexmo_secret`, `nexmo_sender_name`, `twilio_sid`, `twilio_auth_token`, `twilio_number`, `status`, `created_at`, `updated_at`) VALUES
(1, '7e29c3ce', '6gK9ve4soFO6RP5d', 'ABC', 'AC8f4bfd69c98ad28c8f3a1dc8a8cca836', '83ad3161abe86cb2276eeefc8b9767', '+12513571687', 1, '2022-09-30 12:00:47', '2024-09-30 12:46:08');

-- --------------------------------------------------------

--
-- Table structure for table `tax_settings`
--

DROP TABLE IF EXISTS `tax_settings`;
CREATE TABLE IF NOT EXISTS `tax_settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `min_amount` decimal(10,2) NOT NULL,
  `max_amount` decimal(10,2) NOT NULL,
  `percentange` double(4,2) NOT NULL,
  `max_no_taxable_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tax_settings`
--

INSERT INTO `tax_settings` (`id`, `min_amount`, `max_amount`, `percentange`, `max_no_taxable_amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 0.00, 5000.00, 0.00, 0.00, 1, NULL, NULL),
(2, 5001.00, 10000.00, 5.00, 5000.00, 1, NULL, NULL),
(3, 10001.00, 20000.00, 10.00, 5000.00, 1, NULL, '2022-10-01 05:22:30'),
(4, 20001.00, 50000.00, 15.00, 5000.00, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
CREATE TABLE IF NOT EXISTS `testimonials` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `language_id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` double(2,2) NOT NULL DEFAULT '0.99',
  `attach` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `testimonials_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `language_id`, `name`, `designation`, `description`, `rating`, `attach`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Margie Dose', 'Web Developer', 'Curabitur ac tortor ante. Sed quis iaculis risus. Ut ultrices ligula aliquet odio tristique euismod. Donec efficitur dolor in turpis aliquet, at mollis.', 0.99, 'testi_avatar_1692915788.png', 1, '2023-08-24 16:23:08', '2023-08-24 16:23:08'),
(2, 1, 'Rock Dloder', 'Web Developer', 'Curabitur ac tortor ante. Sed quis iaculis risus. Ut ultrices ligula aliquet odio tristique euismod. Donec efficitur dolor in turpis aliquet, at mollis.', 0.99, 'testi_avatar_02_1692915825.png', 1, '2023-08-24 16:23:45', '2023-08-24 16:23:45'),
(3, 1, 'Roboto Eorure', 'Web Developer', 'Curabitur ac tortor ante. Sed quis iaculis risus. Ut ultrices ligula aliquet odio tristique euismod. Donec efficitur dolor in turpis aliquet, at mollis.', 0.99, 'testi_avatar_03_1692915872.png', 1, '2023-08-24 16:24:32', '2023-08-24 16:24:32'),
(4, 1, 'Alex Barek', 'Web Developer', 'Curabitur ac tortor ante. Sed quis iaculis risus. Ut ultrices ligula aliquet odio tristique euismod. Donec efficitur dolor in turpis aliquet, at mollis.', 0.99, 'testi_avatar_1692915924.png', 1, '2023-08-24 16:25:24', '2023-08-24 16:25:24'),
(5, 1, 'Devid Rogart', 'Web Developer', 'Curabitur ac tortor ante. Sed quis iaculis risus. Ut ultrices ligula aliquet odio tristique euismod. Donec efficitur dolor in turpis aliquet, at mollis.', 0.99, 'testi_avatar_02_1692915972.png', 1, '2023-08-24 16:26:12', '2023-08-24 16:26:12');

-- --------------------------------------------------------

--
-- Table structure for table `topbar_settings`
--

DROP TABLE IF EXISTS `topbar_settings`;
CREATE TABLE IF NOT EXISTS `topbar_settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `address_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_hour` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_summery` text COLLATE utf8mb4_unicode_ci,
  `social_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_status` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topbar_settings`
--

INSERT INTO `topbar_settings` (`id`, `address_title`, `address`, `email`, `phone`, `working_hour`, `about_title`, `about_summery`, `social_title`, `social_status`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Rangpur, Bangladesh', 'info@hitechuniversity.com', '+00123456789', NULL, NULL, NULL, NULL, 1, 1, '2023-08-24 15:52:44', '2023-08-24 15:53:17');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `transactionable_id` bigint NOT NULL,
  `transactionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `type` int NOT NULL COMMENT '1 Creadit & 2 Debit',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `transactions_transaction_id_unique` (`transaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `transactionable_id`, `transactionable_type`, `transaction_id`, `amount`, `type`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 2, 'App\\Models\\Student', 'H9Cpqn51xGm7mVpE', 3150.00, 1, 1, NULL, '2022-10-03 13:35:39', '2022-10-03 13:35:39'),
(2, 4, 'App\\Models\\Student', 'f5JWnxrigm6KyHgY', 3150.00, 1, 1, NULL, '2022-10-03 13:35:58', '2022-10-03 13:35:58'),
(3, 7, 'App\\Models\\Student', 'yo1FhMZ8dS3UqA8M', 4000.00, 1, 1, NULL, '2022-10-03 13:38:36', '2022-10-03 13:38:36'),
(4, 7, 'App\\Models\\Student', '31iN1HVqCYzslNU8', 4000.00, 2, 1, NULL, '2022-10-03 13:38:52', '2022-10-03 13:38:52'),
(5, 7, 'App\\Models\\Student', 'VPpGpvTamxJ8KZA6', 4050.00, 1, 1, NULL, '2022-10-03 13:39:15', '2022-10-03 13:39:15'),
(6, 7, 'App\\User', 'AOzKLAvS6WgUjcWW', 14189.00, 2, 1, NULL, '2022-10-03 15:36:52', '2022-10-03 15:36:52'),
(7, 8, 'App\\User', 'Za0r26eRfMei4lQa', 16526.00, 2, 1, NULL, '2022-10-03 15:37:35', '2022-10-03 15:37:35'),
(8, 3, 'App\\User', '8aSusUqJhjdRysWJ', 3000.00, 2, 1, NULL, '2022-10-03 15:45:04', '2022-10-03 15:45:04'),
(9, 14, 'App\\Models\\Student', '2kChl0YGtKwZCI4I', 1800.00, 1, 1, NULL, '2022-10-04 09:21:36', '2022-10-04 09:21:36'),
(10, 2, 'App\\Models\\Student', '9hAdG9i38LTJ0aPR', 3150.00, 2, 1, NULL, '2022-10-04 09:22:16', '2022-10-04 09:22:16'),
(11, 4, 'App\\Models\\Student', 'cIMb0tMlA9o2te2Z', 3150.00, 2, 1, NULL, '2022-10-04 09:22:29', '2022-10-04 09:22:29'),
(12, 1, 'App\\Models\\Student', 'kog5hZw38tMToRkE', 3200.00, 1, 1, NULL, '2022-10-04 09:22:54', '2022-10-04 09:22:54'),
(13, 4, 'App\\Models\\Student', 'UlYXx4aja6Ak3Wly', 3200.00, 1, 1, NULL, '2022-10-04 09:23:56', '2022-10-04 09:23:56'),
(14, 10, 'App\\Models\\Student', 'xfXmn8WO7BhybnAv', 1800.00, 1, 1, NULL, '2022-10-04 09:24:08', '2022-10-04 09:24:08'),
(15, 10, 'App\\Models\\Student', 'BUUHGkNA9Fun4Ift', 1800.00, 2, 1, NULL, '2022-10-04 10:10:50', '2022-10-04 10:10:50'),
(16, 12, 'App\\Models\\Student', 'BTXkfv9esWhw1A4Q', 1800.00, 1, 1, NULL, '2022-10-04 10:11:18', '2022-10-04 10:11:18'),
(17, 10, 'App\\Models\\Student', '7z16Tht5q9Xei6xZ', 1800.00, 1, 1, NULL, '2022-10-04 10:11:26', '2022-10-04 10:11:26'),
(18, 7, 'App\\User', 'KiwXkDl0MD2rfckr', 14189.00, 1, 1, NULL, '2022-10-04 10:22:13', '2022-10-04 10:22:13'),
(19, 7, 'App\\User', 'cj4IjjdIolJTJ3uK', 14189.00, 2, 1, NULL, '2022-10-04 10:22:30', '2022-10-04 10:22:30'),
(20, 4, 'App\\Models\\Student', 'XbscZanSZVsUZYMx', 1800.00, 1, 1, NULL, '2022-10-04 10:23:58', '2022-10-04 10:23:58'),
(21, 8, 'App\\Models\\Student', 'jWgYEu9vXOvpRWgP', 1800.00, 1, 1, NULL, '2023-02-13 11:54:05', '2023-02-13 11:54:05'),
(22, 5, 'App\\Models\\Student', 't58UYubvOVytQ6I2', 1800.00, 1, 1, NULL, '2023-02-13 11:55:00', '2023-02-13 11:55:00'),
(23, 7, 'App\\User', 'uFzvvWcKEPZQo1sJ', 14189.00, 1, 1, NULL, '2023-02-13 11:59:32', '2023-02-13 11:59:32'),
(24, 8, 'App\\User', 'R10BvOK5v7XdkJdm', 16526.00, 1, 1, NULL, '2023-02-13 11:59:36', '2023-02-13 11:59:36'),
(25, 3, 'App\\User', 'P6cFuywfB0TxDbiQ', 3000.00, 1, 1, NULL, '2023-02-13 12:01:45', '2023-02-13 12:01:45'),
(26, 3, 'App\\User', 'cSHqT2rl213GWXdd', 4300.00, 2, 1, NULL, '2023-02-13 12:02:24', '2023-02-13 12:02:24'),
(27, 2, 'App\\User', 'R9kMSPcqDHBQOTCb', 14886.00, 2, 1, NULL, '2023-02-13 12:02:40', '2023-02-13 12:02:40'),
(28, 7, 'App\\User', '6qQ4EuW9m9Xuduqm', 17969.00, 2, 1, NULL, '2023-02-13 12:02:49', '2023-02-13 12:02:49'),
(29, 9, 'App\\Models\\Student', 'E5CT2yfO92tLOktz', 1800.00, 1, 1, NULL, '2023-08-25 06:29:24', '2023-08-25 06:29:24'),
(30, 1, 'App\\Models\\Student', 'fK6t6Dj6RoxwzF7a', 1800.00, 1, 1, NULL, '2023-08-25 06:29:56', '2023-08-25 06:29:56');

-- --------------------------------------------------------

--
-- Table structure for table `transfer_creadits`
--

DROP TABLE IF EXISTS `transfer_creadits`;
CREATE TABLE IF NOT EXISTS `transfer_creadits` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_id` bigint UNSIGNED NOT NULL,
  `program_id` int UNSIGNED NOT NULL,
  `session_id` int UNSIGNED NOT NULL,
  `semester_id` int UNSIGNED NOT NULL,
  `subject_id` bigint UNSIGNED NOT NULL,
  `marks` decimal(10,2) DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transfer_creadits_student_id_foreign` (`student_id`),
  KEY `transfer_creadits_program_id_foreign` (`program_id`),
  KEY `transfer_creadits_session_id_foreign` (`session_id`),
  KEY `transfer_creadits_semester_id_foreign` (`semester_id`),
  KEY `transfer_creadits_subject_id_foreign` (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transfer_creadits`
--

INSERT INTO `transfer_creadits` (`id`, `student_id`, `program_id`, `session_id`, `semester_id`, `subject_id`, `marks`, `note`, `status`, `created_at`, `updated_at`) VALUES
(1, 9, 3, 3, 1, 3, 68.00, NULL, 1, '2022-10-03 16:22:23', '2023-02-13 11:38:25'),
(2, 9, 3, 3, 1, 6, 76.00, NULL, 1, '2022-10-03 16:22:23', '2023-02-13 11:38:25'),
(3, 9, 3, 3, 1, 4, 82.00, NULL, 1, '2022-10-03 16:22:23', '2023-02-13 11:38:25');

-- --------------------------------------------------------

--
-- Table structure for table `transport_members`
--

DROP TABLE IF EXISTS `transport_members`;
CREATE TABLE IF NOT EXISTS `transport_members` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `transportable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transportable_id` bigint UNSIGNED NOT NULL,
  `transport_route_id` int UNSIGNED NOT NULL,
  `transport_vehicle_id` int UNSIGNED NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '1' COMMENT '0 Inactive, 1 Active',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transport_members_transportable_type_transportable_id_index` (`transportable_type`,`transportable_id`),
  KEY `transport_members_transport_route_id_foreign` (`transport_route_id`),
  KEY `transport_members_transport_vehicle_id_foreign` (`transport_vehicle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transport_members`
--

INSERT INTO `transport_members` (`id`, `transportable_type`, `transportable_id`, `transport_route_id`, `transport_vehicle_id`, `start_date`, `end_date`, `note`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Student', 11, 1, 1, '2023-02-13', NULL, NULL, 1, 1, NULL, '2023-02-13 13:00:43', '2023-02-13 13:00:43'),
(2, 'App\\Models\\Student', 8, 2, 1, '2023-02-13', NULL, NULL, 1, 1, NULL, '2023-02-13 13:00:52', '2023-02-13 13:00:52'),
(3, 'App\\Models\\Student', 14, 1, 3, '2023-02-13', NULL, NULL, 1, 1, NULL, '2023-02-13 13:01:03', '2023-02-13 13:01:03'),
(4, 'App\\Models\\Student', 10, 2, 2, '2023-02-13', NULL, NULL, 1, 1, NULL, '2023-02-13 13:01:11', '2023-02-13 13:01:11'),
(5, 'App\\User', 8, 1, 1, '2023-02-13', NULL, NULL, 1, 1, NULL, '2023-02-13 13:01:42', '2023-02-13 13:01:42'),
(6, 'App\\User', 7, 2, 2, '2023-02-13', NULL, NULL, 1, 1, NULL, '2023-02-13 13:01:48', '2023-02-13 13:01:48'),
(7, 'App\\User', 3, 1, 3, '2023-02-13', NULL, NULL, 1, 1, NULL, '2023-02-13 13:01:55', '2023-02-13 13:01:55');

-- --------------------------------------------------------

--
-- Table structure for table `transport_routes`
--

DROP TABLE IF EXISTS `transport_routes`;
CREATE TABLE IF NOT EXISTS `transport_routes` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee` double(10,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `transport_routes_title_unique` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transport_routes`
--

INSERT INTO `transport_routes` (`id`, `title`, `fee`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Mirpur to Gulshan', 50.00, NULL, 1, '2023-02-13 12:59:12', '2023-02-13 12:59:12'),
(2, 'Mirpur to Uttora', 30.00, NULL, 1, '2023-02-13 12:59:32', '2023-02-13 12:59:32');

-- --------------------------------------------------------

--
-- Table structure for table `transport_route_transport_vehicle`
--

DROP TABLE IF EXISTS `transport_route_transport_vehicle`;
CREATE TABLE IF NOT EXISTS `transport_route_transport_vehicle` (
  `transport_route_id` int UNSIGNED NOT NULL,
  `transport_vehicle_id` int UNSIGNED NOT NULL,
  KEY `transport_route_transport_vehicle_transport_route_id_foreign` (`transport_route_id`),
  KEY `transport_route_transport_vehicle_transport_vehicle_id_foreign` (`transport_vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transport_route_transport_vehicle`
--

INSERT INTO `transport_route_transport_vehicle` (`transport_route_id`, `transport_vehicle_id`) VALUES
(1, 1),
(2, 1),
(2, 2),
(1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `transport_vehicles`
--

DROP TABLE IF EXISTS `transport_vehicles`;
CREATE TABLE IF NOT EXISTS `transport_vehicles` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capacity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_made` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver_license` text COLLATE utf8mb4_unicode_ci,
  `driver_contact` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transport_vehicles`
--

INSERT INTO `transport_vehicles` (`id`, `number`, `type`, `model`, `capacity`, `year_made`, `driver_name`, `driver_license`, `driver_contact`, `note`, `status`, `created_at`, `updated_at`) VALUES
(1, '635', 'Bus', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-02-13 12:59:55', '2023-02-13 12:59:55'),
(2, '788', 'Bus', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-02-13 13:00:10', '2023-02-13 13:00:10'),
(3, '856', 'Bus', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-02-13 13:00:20', '2023-02-13 13:00:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `staff_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int UNSIGNED DEFAULT NULL,
  `designation_id` int UNSIGNED DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_text` longtext COLLATE utf8mb4_unicode_ci,
  `gender` int NOT NULL COMMENT '1 Male, 2 Female & 3 Other',
  `dob` date NOT NULL,
  `joining_date` date DEFAULT NULL,
  `ending_date` date DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_tongue` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` int DEFAULT NULL,
  `blood_group` int DEFAULT NULL,
  `nationality` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_province` int UNSIGNED DEFAULT NULL,
  `present_district` int UNSIGNED DEFAULT NULL,
  `present_village` text COLLATE utf8mb4_unicode_ci,
  `present_address` text COLLATE utf8mb4_unicode_ci,
  `permanent_province` int UNSIGNED DEFAULT NULL,
  `permanent_district` int UNSIGNED DEFAULT NULL,
  `permanent_village` text COLLATE utf8mb4_unicode_ci,
  `permanent_address` text COLLATE utf8mb4_unicode_ci,
  `education_level` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `graduation_academy` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_of_graduation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `graduation_field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `basic_salary` double(10,2) NOT NULL DEFAULT '0.00',
  `contract_type` int NOT NULL DEFAULT '1' COMMENT '1 Full Time & 2 Part Time',
  `work_shift` int UNSIGNED DEFAULT NULL,
  `salary_type` int NOT NULL DEFAULT '1' COMMENT '1 Fixed & 2 Hourly',
  `bank_account_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ifsc_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_brach` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tin_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci,
  `signature` text COLLATE utf8mb4_unicode_ci,
  `resume` text COLLATE utf8mb4_unicode_ci,
  `joining_letter` text COLLATE utf8mb4_unicode_ci,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `login` tinyint(1) NOT NULL DEFAULT '1',
  `status` int NOT NULL DEFAULT '1' COMMENT '0 Inactive, 1 Active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `religion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caste` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `epf_no` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_staff_id_unique` (`staff_id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `staff_id`, `department_id`, `designation_id`, `first_name`, `last_name`, `father_name`, `mother_name`, `email`, `email_verified_at`, `password`, `password_text`, `gender`, `dob`, `joining_date`, `ending_date`, `phone`, `emergency_phone`, `mother_tongue`, `marital_status`, `blood_group`, `nationality`, `national_id`, `passport_no`, `present_province`, `present_district`, `present_village`, `present_address`, `permanent_province`, `permanent_district`, `permanent_village`, `permanent_address`, `education_level`, `graduation_academy`, `year_of_graduation`, `graduation_field`, `experience`, `note`, `basic_salary`, `contract_type`, `work_shift`, `salary_type`, `bank_account_name`, `bank_account_no`, `bank_name`, `ifsc_code`, `bank_brach`, `tin_no`, `photo`, `signature`, `resume`, `joining_letter`, `is_admin`, `login`, `status`, `remember_token`, `created_by`, `updated_by`, `created_at`, `updated_at`, `religion`, `caste`, `country`, `epf_no`) VALUES
(1, '1001', 1, 2, 'Super', 'Admin', 'ABC', 'XYZ', 'admin@mail.com', NULL, '$2y$10$RdSog4xnJYQlAL8CfEkScu5fq6lAK6PAHhRLiWRqqm.5Vbx3tgLTG', 'eyJpdiI6ImdEZVpac0I1amdTOVF0VXFobjZDOVE9PSIsInZhbHVlIjoiTmNUOHRNb0ZGTTVKN2JrNnNGdDJZdz09IiwibWFjIjoiODMyZDI4NDQzOWI2NjFmZTY2Y2QyZjRmZmExNjRiN2MyZTBlN2NmMDE5NDcyNGMwMGEwNjkwMjFiYmE1NWU0NiIsInRhZyI6IiJ9', 1, '2006-01-01', '2018-10-02', NULL, '0123456789', NULL, NULL, 2, 1, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 1, NULL, NULL, 'Minima voluptatem f', 'Et sunt esse non pro', '2001', 'Eum sed do omnis mai', 'Quo sunt hic except', 'Distinctio Esse do', 50000.00, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 'uapLxCHLea7KDQ7exnIuhDzTEMYGV9thTWfiXizOgpik5494loFHIMr4NCeB', NULL, 1, '2022-09-30 12:00:46', '2022-10-02 05:49:52', NULL, NULL, NULL, NULL),
(2, '1002', 3, 5, 'Laurel', 'Rivers', 'Britanney Leonard', 'Aubrey Russo', 'wademegiva@mailinator.com', NULL, '$2y$10$F51VaxrXH7fjXJALgFwmsOLXfp5015iVCBr1TuXI70rUQF04.mhSO', 'eyJpdiI6IjJiZkkvZ1NCUDR0ZFJxZDEydWpTZ1E9PSIsInZhbHVlIjoiOHJlSjlEeWRRdjBWMzJOQzhRQnc4UT09IiwibWFjIjoiYTM1NGNiZmEyMGNhOGRlZGU0YjM1OTlkYzg5ZjAxYzYwMTg4NTlmYmEyMmMzN2FlYTA4OWZlYjFhNDE0M2JhMiIsInRhZyI6IiJ9', 2, '1995-05-03', '2016-06-04', NULL, '+1 (382) 814-8571', '+1 (706) 309-2903', NULL, 1, 4, NULL, '548567878674564', '1215454574578', 3, 9, 'Omnis aut earum veli', 'Voluptatem Fugit a', 3, 11, 'Et non sunt tempore', 'Aperiam reprehenderi', 'Sint aut sed quos l', 'Non qui commodo quam', '2012', 'Sit dolores incidun', 'Earum ea atque expli', 'Maiores totam ex nul', 40000.00, 1, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'staff1_1664711572.jpg', NULL, NULL, NULL, 0, 1, 1, NULL, 1, 1, '2022-10-02 05:52:52', '2022-10-03 14:49:29', NULL, NULL, NULL, NULL),
(3, '1003', 5, 3, 'Meredith', 'Hancock', 'Ariana Mckenzie', 'Carla Oneill', 'vopukiceg@mailinator.com', NULL, '$2y$10$UfKbjSQiUSGzuHvEQvidne/EK8kPZmTXQsMBitk.8e8vFIQTmkeNq', 'eyJpdiI6IjhYVEl0S2NlTHBqSllhc3Z2N1YvY1E9PSIsInZhbHVlIjoieVlXUWlLd2p4SWh5YzhSdEpsSm5KUT09IiwibWFjIjoiN2M5NGM4NGQzMWRlZWQ1MmFmYmY1YTdhODgyNjRmNzk0YjAxMTdhZDEzM2IyZjE0MzU0ZTY5MmNkMGUwMzg3OSIsInRhZyI6IiJ9', 1, '2000-10-03', '2015-12-31', NULL, '+1 (232) 685-4261', '+1 (347) 622-9076', NULL, 3, 3, NULL, 'Officia non cupidita', 'Omnis quia sed dolor', 3, 10, 'Porro laborum quos d', 'Necessitatibus sit', 4, 3, 'Temporibus corrupti', 'Neque id et officiis', NULL, NULL, NULL, NULL, NULL, NULL, 300.00, 2, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, 1, 1, '2022-10-02 05:55:46', '2022-10-02 11:51:35', NULL, NULL, NULL, NULL),
(4, '1004', 5, 1, 'Daphne', 'Padilla', 'Akeem Lester', 'Mallory Winters', 'foxykosen@mailinator.com', NULL, '$2y$10$LzfVRaZciCdgmYZRnvchmehBhCREFtz68CmhGYPORckO2FsYniMUW', 'eyJpdiI6ImVGNCtUcUVER3ZrT2RCZjBzZnhxQVE9PSIsInZhbHVlIjoiZldUR3RwZmVFWHFEc3dzeW1XNlIzZz09IiwibWFjIjoiOTMyODJlMjcxYzE2MzBiMzQ2Y2IxYmQ5OWFhMDlkYTE2NDZjZmVhNzcyOTZiZTRkZTI2OGFhNzVkOTgxMGY2NiIsInRhZyI6IiJ9', 1, '1977-11-04', '2010-03-08', NULL, '+1 (736) 196-8936', '+1 (856) 323-9264', NULL, 5, 2, NULL, '757867868576', '786876876876', 4, 5, 'Incidunt aperiam pa', 'Excepteur fugiat nec', 4, 4, 'Itaque magni maxime', 'Autem itaque quis do', 'Ipsa autem dolores', 'Velit elit hic sint', '2009', 'Qui quia culpa aspe', 'Commodi deserunt lab', 'Possimus minus ipsa', 500.00, 2, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'staff2_1664711842.jpg', NULL, NULL, NULL, 0, 1, 1, NULL, 1, 1, '2022-10-02 05:57:22', '2022-10-02 11:51:51', NULL, NULL, NULL, NULL),
(5, '1005', 5, 3, 'Emmanuel', 'Harmon', 'Thor Rosales', 'Desiree Crawford', 'wymawocowy@mailinator.com', NULL, '$2y$10$r1R9qzdjP0z02OP0Jneaq.eXfo4o3UKrtP8XMKENhjYJPn3bhjEY6', 'eyJpdiI6InBYNWFoZ3dadjd6L1Z3ZW9TTzczYmc9PSIsInZhbHVlIjoiVWVmeWtqRGdwQmYxQS9YaVJvaVV1QT09IiwibWFjIjoiOGRkZmM3MDU1ODkxNDc1Yjc5MDE5MTgyMDc2MmZkZDRkNTA1ZTg0ZDdhZjNkMTcwMTBkNmYxYjA0YjM3NmNiZiIsInRhZyI6IiJ9', 2, '1972-09-29', '2021-09-12', NULL, '+1 (363) 404-1739', '+1 (874) 534-7443', NULL, 3, 4, NULL, 'Ratione consequatur', 'Officia quaerat aliq', 2, 13, 'Beatae Nam praesenti', 'Qui corporis quia la', 1, 2, 'Qui vel consectetur', 'Nostrum deserunt eni', 'Non do mollit eos vo', 'Culpa unde quidem f', '1998', 'Dolore culpa proide', 'In fugiat sit id qu', 'Eaque reiciendis qui', 35000.00, 1, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, 1, 1, '2022-10-02 05:59:21', '2022-10-02 11:52:10', NULL, NULL, NULL, NULL),
(6, '1006', 1, 6, 'Sara', 'Boone', 'Vance Carroll', 'Vaughan Francis', 'myda@mailinator.com', NULL, '$2y$10$w2tfyISrZMeHcXrHaFw1aOufZeIATXxG1lXNnUZZQJR2FGnp49xX.', 'eyJpdiI6IjAxZWJ6SW9iR3pZTnU3aFRPYUUxRnc9PSIsInZhbHVlIjoiOGVQMWZNdmx2S2hOWUZpYlpFOXY4Zz09IiwibWFjIjoiMjFmMjRjM2I1OGE0NmE1YzRlM2Q4MzI1OGE3ZWZhZDdjYmU0ZTkzMjlmM2IxNTk5MTM4NTY1MTQ1NWE5YzQ5ZSIsInRhZyI6IiJ9', 1, '1976-02-11', '2016-09-13', NULL, '+1 (168) 535-3775', '+1 (254) 313-7114', NULL, 3, 5, NULL, 'Non nihil ex tempore', 'Enim sit voluptate', 2, 7, 'Duis voluptas minima', 'Nisi molestias error', 1, 2, 'Culpa aliquam et et', 'Ullamco laudantium', 'Ipsam sed qui dolore', 'Atque totam lorem co', '1976', 'Consequatur excepte', 'Debitis dolore magna', 'Vero voluptatem labo', 40000.00, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, 1, 1, '2022-10-02 11:33:19', '2022-10-02 11:52:30', NULL, NULL, NULL, NULL),
(7, '1007', 5, 3, 'Zorita', 'Rivas', 'Paki Boyd', 'Deanna Arnold', 'jenywox@mailinator.com', NULL, '$2y$10$tAhSlZD.8giHI9ufBYDaoOo0KWjMCr3HRI9oa7j8bHlKQAj0raegm', 'eyJpdiI6ImZNMGRrbDNaMzJJdlFMejROa3JNUGc9PSIsInZhbHVlIjoiOHZkbEN6Wk15YXBRK2xsVGlXNGF4Zz09IiwibWFjIjoiMmUwZDRhMDczOThjZTRmMTA0NmMyOGQ5ZDZkOGY1YTI2MTIwMmI5ZTc3NmYwNGRmNDhiMzRkMmMyMmUwMGEyNyIsInRhZyI6IiJ9', 1, '1997-06-13', '2021-10-31', NULL, '+1 (512) 822-9148', '+1 (231) 297-5927', NULL, 4, 8, NULL, 'Ut suscipit qui dolo', 'Commodi possimus cu', 4, 4, 'Rerum error est reru', 'Deleniti quis fugiat', 4, 3, 'Reprehenderit elige', 'Eius repudiandae dol', 'Rerum accusamus sequ', 'Nam modi soluta volu', '1983', 'Enim fugiat obcaeca', 'Atque nostrum ipsum', 'Deserunt in totam es', 38000.00, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, 1, 1, '2022-10-02 11:37:09', '2022-10-02 11:52:53', NULL, NULL, NULL, NULL),
(8, '1008', 2, 4, 'Kessie', 'Lee', 'Colleen Burt', 'Wesley Pittman', 'jyxeto@mailinator.com', NULL, '$2y$10$xadtHaIdxqKM5mL5RIZjlu5rXl8ezO3vKPNHq4dtwWV03YI/QTxri', 'eyJpdiI6IlFTQlcvYk9XRXoyQ1BxRVlpMUlPblE9PSIsInZhbHVlIjoiLzMvOWFzU3NPMU13UnVKZXVxVC9lQT09IiwibWFjIjoiYzhjM2ViMjVlYWZhN2I4NjEyMWFhNmI5YzJkY2ZiNTI0NjE4MjhhYzRjYjc3YWVhMjliY2IxNjJlZjY0OTYzMiIsInRhZyI6IiJ9', 2, '1979-04-27', '2018-05-30', NULL, '+1 (492) 339-1114', '+1 (485) 738-3534', NULL, 3, 6, NULL, '58765568', '9841357', 1, 6, 'Quia consequat Ut l', 'Commodo dolores eius', 4, 12, 'Ducimus amet volup', 'Quia ullamco quo bea', NULL, NULL, NULL, NULL, NULL, NULL, 35000.00, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, 1, 1, '2022-10-02 11:45:51', '2022-10-02 11:53:10', NULL, NULL, NULL, NULL),
(9, '1009', 4, 2, 'Sophia', 'Hyde', 'Tucker Knapp', 'Halla Pugh', 'kojec@mailinator.com', NULL, '$2y$10$LFeLB5XhtE3b43nbctAvY.fRz.bEpbdnhuhy6AYbAtjNgbtI.d4SO', 'eyJpdiI6IjdyRUQzampIVEpaQTBhcDFkWDhvSFE9PSIsInZhbHVlIjoiTG9peUphcUNwbHFOYmNLelBFais4dz09IiwibWFjIjoiNDA5YmUyNTIzNjA0NGY1M2NiMmMyY2I5OTAwNDYxNzIwNDE5MjVkYmUzNWQ0NGZhYzQ4ZGNkY2YyYTRmOTY4NSIsInRhZyI6IiJ9', 2, '1989-02-26', '2022-09-23', NULL, '+1 (542) 196-8396', '+1 (139) 442-4078', NULL, 4, 6, NULL, '9874646', '4568765323', 2, 7, 'Eos aut lorem exped', 'Tempora aspernatur i', 1, 6, 'Et veniam doloribus', 'Enim molestias enim', NULL, NULL, NULL, NULL, NULL, NULL, 30000.00, 1, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'staff1_1664732856.jpg', NULL, NULL, NULL, 0, 1, 1, NULL, 1, 1, '2022-10-02 11:47:36', '2022-10-02 11:53:26', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_program`
--

DROP TABLE IF EXISTS `user_program`;
CREATE TABLE IF NOT EXISTS `user_program` (
  `user_id` bigint UNSIGNED NOT NULL,
  `program_id` int UNSIGNED NOT NULL,
  KEY `user_program_user_id_foreign` (`user_id`),
  KEY `user_program_program_id_foreign` (`program_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

DROP TABLE IF EXISTS `visitors`;
CREATE TABLE IF NOT EXISTS `visitors` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `purpose_id` int UNSIGNED NOT NULL,
  `department_id` int UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `visit_from` text COLLATE utf8mb4_unicode_ci,
  `id_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `in_time` time DEFAULT NULL,
  `out_time` time DEFAULT NULL,
  `persons` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `attach` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `visitors_purpose_id_foreign` (`purpose_id`),
  KEY `visitors_department_id_foreign` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `purpose_id`, `department_id`, `name`, `father_name`, `phone`, `email`, `address`, `visit_from`, `id_no`, `token`, `date`, `in_time`, `out_time`, `persons`, `note`, `attach`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 4, 2, 'Yoko Payne', 'Griffith Shaw', '+1 (466) 696-7792', 'koty@mailinator.com', NULL, 'Qui quis perferendis', NULL, 'Pass-100001', '2021-02-16', '00:00:00', '11:34:00', '1', 'Rem eu numquam dolor', NULL, 1, 1, NULL, '2022-10-01 11:49:03', '2022-10-01 11:49:03'),
(2, 3, 4, 'Ria Hodges', 'Lester Weber', '+1 (864) 185-6339', 'vubypa@mailinator.com', NULL, 'Voluptas id voluptas', NULL, 'Pass-100002', '2020-12-01', '00:00:00', '23:23:00', '1', 'Consequatur repellen', NULL, 1, 1, 1, '2022-10-01 11:49:30', '2022-10-01 11:50:04'),
(3, 4, 4, 'Astra Good', 'Cora Garrison', '+1 (873) 471-3381', 'dovejyjo@mailinator.com', NULL, 'Reiciendis id dolore', NULL, 'Pass-100003', '2022-01-21', '00:00:00', '03:35:00', '1', 'Qui saepe fuga Faci', 'logo_1664646638.jpg', 1, 1, 1, '2022-10-01 11:50:38', '2022-10-01 11:51:10'),
(4, 3, 3, 'Maile Chavez', 'Macy Harper', '+1 (703) 918-4114', 'zyxisiw@mailinator.com', NULL, 'Reprehenderit odio q', NULL, 'Pass-100004', '2022-10-01', '17:51:00', '19:55:00', '4', 'Odio id corrupti h', NULL, 1, 1, NULL, '2022-10-01 11:51:56', '2022-10-01 11:51:56'),
(5, 2, 3, 'Winifred Poole', 'Linus Guzman', '+1 (477) 757-3411', 'fysel@mailinator.com', NULL, 'A facere aut consequ', NULL, 'Pass-100005', '2020-09-16', '00:00:00', '08:55:00', '2', 'Similique totam esse', NULL, 1, 1, 1, '2022-10-01 11:52:20', '2022-10-01 11:52:42'),
(6, 4, 5, 'Lacey Mitchell', 'Zane Jefferson', '+1 (936) 186-6298', 'nywac@mailinator.com', NULL, 'Quis aute culpa aut', NULL, 'Pass-100006', '2021-10-01', '17:53:00', '16:11:00', '2', 'Vitae minima maiores', NULL, 1, 1, NULL, '2022-10-01 11:53:27', '2022-10-01 11:53:27'),
(7, 4, 1, 'Kirk Kline', 'Coby Rivas', '+1 (423) 673-6386', 'tife@mailinator.com', NULL, 'Porro aliquam sunt e', NULL, 'Pass-100007', '2020-08-20', '17:53:00', '03:57:00', '1', 'Placeat eiusmod qui', NULL, 1, 1, NULL, '2022-10-01 11:54:12', '2022-10-01 11:54:12'),
(8, 3, 2, 'Stewart Padilla', 'Cairo Stanton', '+1 (691) 309-1928', 'bavoc@mailinator.com', NULL, 'Cupiditate dolor pro', NULL, 'Pass-100008', '2021-05-22', '00:00:00', '10:47:00', '1', 'Eu eos lorem ab eos', NULL, 1, 1, NULL, '2022-10-01 11:54:40', '2022-10-01 11:54:40'),
(9, 4, 6, 'Jayme Holder', 'Barrett Mckee', '+1 (393) 487-6252', 'hixuter@mailinator.com', NULL, 'Maxime anim qui iust', NULL, 'Pass-100009', '2021-09-05', '00:00:00', '10:26:00', '1', 'Ex deserunt ea tenet', NULL, 1, 1, NULL, '2022-10-01 11:55:21', '2022-10-01 11:55:21'),
(10, 1, 3, 'Alexander Santana', 'Todd Clayton', '+1 (876) 649-1515', 'lypuhava@mailinator.com', NULL, 'Ab Nam eaque distinc', NULL, 'Pass-100010', '2022-06-12', '00:00:00', NULL, '1', 'Culpa sequi ad in ar', 'background-border_1664646980.png', 1, 1, NULL, '2022-10-01 11:56:20', '2022-10-01 11:56:20'),
(11, 1, 2, 'Neville Golden', 'Dane Holloway', '+1 (131) 631-6741', 'rumahorus@mailinator.com', NULL, 'Recusandae Vero eiu', NULL, 'Pass-100011', '2022-06-13', '00:00:00', NULL, '2', 'Repudiandae eaque sa', 'background-border_1664647025.png', 1, 1, NULL, '2022-10-01 11:57:05', '2022-10-01 11:57:05'),
(12, 4, 6, 'Keegan Mosley', 'Hu Blanchard', '+1 (869) 255-5927', 'xuhylal@mailinator.com', NULL, 'Quia beatae quibusda', NULL, 'Pass-100012', '2022-08-01', '17:57:00', '18:15:28', '1', 'Placeat itaque volu', NULL, 1, 1, 1, '2022-10-01 11:58:15', '2022-10-01 12:15:28'),
(13, 4, 4, 'Donovan Greer', 'Uma Fitzgerald', '+1 (612) 392-8493', 'kaqi@mailinator.com', NULL, 'Veniam ex quidem vo', NULL, 'Pass-100013', '2023-08-25', '13:24:00', '14:36:00', '1', 'Quidem qui saepe qui', NULL, 1, 1, NULL, '2023-08-25 07:24:40', '2023-08-25 07:24:40'),
(14, 3, 1, 'Timon Ayers', 'Mechelle Stein', '+1 (757) 657-5032', 'kikalemufo@mailinator.com', NULL, 'Pariatur Quia modi', NULL, 'Pass-100014', '2023-06-03', '00:00:00', '01:56:00', '1', 'Facilis omnis aliqua', NULL, 1, 1, NULL, '2023-08-25 07:26:47', '2023-08-25 07:26:47');

-- --------------------------------------------------------

--
-- Table structure for table `visit_purposes`
--

DROP TABLE IF EXISTS `visit_purposes`;
CREATE TABLE IF NOT EXISTS `visit_purposes` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `visit_purposes_title_unique` (`title`),
  UNIQUE KEY `visit_purposes_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visit_purposes`
--

INSERT INTO `visit_purposes` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Invigilation', 'invigilation', NULL, 1, '2022-10-01 03:39:14', '2022-10-01 03:39:14'),
(2, 'Parent Meeting', 'parent-meeting', NULL, 1, '2022-10-01 03:39:30', '2022-10-01 03:39:30'),
(3, 'Enquiry', 'enquiry', NULL, 1, '2022-10-01 03:39:51', '2022-10-01 03:39:51'),
(4, 'Attend Event', 'attend-event', NULL, 1, '2022-10-01 04:05:36', '2022-10-01 04:05:36');

-- --------------------------------------------------------

--
-- Table structure for table `web_events`
--

DROP TABLE IF EXISTS `web_events`;
CREATE TABLE IF NOT EXISTS `web_events` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `language_id` int UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` time DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `attach` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web_events`
--

INSERT INTO `web_events` (`id`, `language_id`, `title`, `slug`, `date`, `time`, `address`, `description`, `attach`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Basic UI & UX Design for new development', 'basic-ui-ux-design-for-new-development', '2027-04-14', '04:36:00', 'Mirpur Dhaka', '<p>The world of search engine optimization is complex and ever-changing, but you can easily understand the basics, and even a small amount of SEO knowledge can make a big difference. Free SEO education is also widely available on the web, including in guides like this! (Woohoo!) This guide is designed to describe all major aspects of SEO, from finding the terms and phrases (keywords) that can generate qualified traffic to your website, to making your site friendly to search engines, to building links and marketing the unique value of your site.Etiam pharetra erat sed fermentum feugiat velit mauris egestas quam ut erat justo.</p>\r\n<p>Fusce eleifend donec sapien sed phase lusa pellentesque lacus.Vivamus lorem arcu semper duiac. Cras ornare arcu avamus nda leo Etiam ind arcu. Morbi justo mauris tempus pharetra interdum at congue semper purus. Lorem ipsum dolor sit.The world of search engine optimization is complex and ever-changing, but you can easily understand the basics.</p>\r\n<p>Lorem ipsum is simply free text used by copytyping refreshing. Neque porro est qui dolorem ipsum quia quaed inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Aelltes port lacus quis enim var sed efficitur turpis gilla sed sit amet finibus eros. Lorem Ipsum is simply dummy text of the printing.</p>\r\n<p>&nbsp;</p>', 'evn_img_4_1692916701.jpg', 1, '2023-08-24 16:38:22', '2023-08-24 16:38:22'),
(2, 1, 'Learning Network Webinars for Music Teachers', 'learning-network-webinars-for-music-teachers', '2026-11-20', '00:39:00', 'Rangpur, Bangladesh', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 'evn_img_2_1692916827.jpg', 1, '2023-08-24 16:40:12', '2023-08-24 16:40:27'),
(3, 1, 'Digital Art & 3D Model – a future for film company', 'digital-art-3d-model-a-future-for-film-company', '2025-09-24', '02:41:00', 'Mirpur Dhaka', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n<p>&nbsp;</p>', 'evn_img_5_1692916908.jpg', 1, '2023-08-24 16:41:48', '2023-08-24 16:43:36');

-- --------------------------------------------------------

--
-- Table structure for table `work_shift_types`
--

DROP TABLE IF EXISTS `work_shift_types`;
CREATE TABLE IF NOT EXISTS `work_shift_types` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `work_shift_types_title_unique` (`title`),
  UNIQUE KEY `work_shift_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work_shift_types`
--

INSERT INTO `work_shift_types` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Morning', 'morning', NULL, 1, NULL, NULL),
(2, 'Evening', 'evening', NULL, 1, NULL, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignments`
--
ALTER TABLE `assignments`
  ADD CONSTRAINT `assignments_assign_by_foreign` FOREIGN KEY (`assign_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assignments_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `batch_program`
--
ALTER TABLE `batch_program`
  ADD CONSTRAINT `batch_program_batch_id_foreign` FOREIGN KEY (`batch_id`) REFERENCES `batches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `batch_program_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `book_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `book_requests`
--
ALTER TABLE `book_requests`
  ADD CONSTRAINT `book_requests_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `book_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `certificates`
--
ALTER TABLE `certificates`
  ADD CONSTRAINT `certificates_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `certificates_template_id_foreign` FOREIGN KEY (`template_id`) REFERENCES `certificate_templates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `class_routines`
--
ALTER TABLE `class_routines`
  ADD CONSTRAINT `class_routines_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_routines_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `class_rooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_routines_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_routines_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_routines_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_routines_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_routines_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `complains`
--
ALTER TABLE `complains`
  ADD CONSTRAINT `complains_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `complain_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `contents`
--
ALTER TABLE `contents`
  ADD CONSTRAINT `contents_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `content_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `docables`
--
ALTER TABLE `docables`
  ADD CONSTRAINT `docables_document_id_foreign` FOREIGN KEY (`document_id`) REFERENCES `documents` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `enroll_subjects`
--
ALTER TABLE `enroll_subjects`
  ADD CONSTRAINT `enroll_subjects_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `enroll_subjects_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `enroll_subjects_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `enroll_subject_subject`
--
ALTER TABLE `enroll_subject_subject`
  ADD CONSTRAINT `enroll_subject_subject_enroll_subject_id_foreign` FOREIGN KEY (`enroll_subject_id`) REFERENCES `enroll_subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `enroll_subject_subject_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exams`
--
ALTER TABLE `exams`
  ADD CONSTRAINT `exams_student_enroll_id_foreign` FOREIGN KEY (`student_enroll_id`) REFERENCES `student_enrolls` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exams_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_routines`
--
ALTER TABLE `exam_routines`
  ADD CONSTRAINT `exam_routines_exam_type_id_foreign` FOREIGN KEY (`exam_type_id`) REFERENCES `exam_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_routines_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_routines_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_routines_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_routines_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_routines_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_routine_room`
--
ALTER TABLE `exam_routine_room`
  ADD CONSTRAINT `exam_routine_room_exam_routine_id_foreign` FOREIGN KEY (`exam_routine_id`) REFERENCES `exam_routines` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_routine_room_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `class_rooms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_routine_user`
--
ALTER TABLE `exam_routine_user`
  ADD CONSTRAINT `exam_routine_user_exam_routine_id_foreign` FOREIGN KEY (`exam_routine_id`) REFERENCES `exam_routines` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_routine_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `expense_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fees_category_fees_discount`
--
ALTER TABLE `fees_category_fees_discount`
  ADD CONSTRAINT `fees_category_fees_discount_fees_category_id_foreign` FOREIGN KEY (`fees_category_id`) REFERENCES `fees_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fees_category_fees_discount_fees_discount_id_foreign` FOREIGN KEY (`fees_discount_id`) REFERENCES `fees_discounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fees_category_fees_fine`
--
ALTER TABLE `fees_category_fees_fine`
  ADD CONSTRAINT `fees_category_fees_fine_fees_category_id_foreign` FOREIGN KEY (`fees_category_id`) REFERENCES `fees_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fees_category_fees_fine_fees_fine_id_foreign` FOREIGN KEY (`fees_fine_id`) REFERENCES `fees_fines` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fees_discount_status_type`
--
ALTER TABLE `fees_discount_status_type`
  ADD CONSTRAINT `fees_discount_status_type_fees_discount_id_foreign` FOREIGN KEY (`fees_discount_id`) REFERENCES `fees_discounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fees_discount_status_type_status_type_id_foreign` FOREIGN KEY (`status_type_id`) REFERENCES `status_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fees_master_student_enroll`
--
ALTER TABLE `fees_master_student_enroll`
  ADD CONSTRAINT `fees_master_student_enroll_fees_master_id_foreign` FOREIGN KEY (`fees_master_id`) REFERENCES `fees_masters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fees_master_student_enroll_student_enroll_id_foreign` FOREIGN KEY (`student_enroll_id`) REFERENCES `student_enrolls` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `hostel_members`
--
ALTER TABLE `hostel_members`
  ADD CONSTRAINT `hostel_members_hostel_room_id_foreign` FOREIGN KEY (`hostel_room_id`) REFERENCES `hostel_rooms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `hostel_rooms`
--
ALTER TABLE `hostel_rooms`
  ADD CONSTRAINT `hostel_rooms_hostel_id_foreign` FOREIGN KEY (`hostel_id`) REFERENCES `hostels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hostel_rooms_room_type_id_foreign` FOREIGN KEY (`room_type_id`) REFERENCES `hostel_room_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `incomes`
--
ALTER TABLE `incomes`
  ADD CONSTRAINT `incomes_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `income_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `issue_returns`
--
ALTER TABLE `issue_returns`
  ADD CONSTRAINT `issue_returns_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `issue_returns_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `library_members` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `item_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item_issues`
--
ALTER TABLE `item_issues`
  ADD CONSTRAINT `item_issues_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_issues_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item_stocks`
--
ALTER TABLE `item_stocks`
  ADD CONSTRAINT `item_stocks_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_stocks_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `item_stores` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `leaves`
--
ALTER TABLE `leaves`
  ADD CONSTRAINT `leaves_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `leave_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `leaves_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meeting_schedules`
--
ALTER TABLE `meeting_schedules`
  ADD CONSTRAINT `meeting_schedules_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `meeting_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notices`
--
ALTER TABLE `notices`
  ADD CONSTRAINT `notices_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `notice_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payroll_details`
--
ALTER TABLE `payroll_details`
  ADD CONSTRAINT `payroll_details_payroll_id_foreign` FOREIGN KEY (`payroll_id`) REFERENCES `payrolls` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `postal_exchanges`
--
ALTER TABLE `postal_exchanges`
  ADD CONSTRAINT `postal_exchanges_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `postal_exchange_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `programs`
--
ALTER TABLE `programs`
  ADD CONSTRAINT `programs_faculty_id_foreign` FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `program_class_room`
--
ALTER TABLE `program_class_room`
  ADD CONSTRAINT `program_class_room_class_room_id_foreign` FOREIGN KEY (`class_room_id`) REFERENCES `class_rooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `program_class_room_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `program_semester`
--
ALTER TABLE `program_semester`
  ADD CONSTRAINT `program_semester_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `program_semester_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `program_semester_sections`
--
ALTER TABLE `program_semester_sections`
  ADD CONSTRAINT `program_semester_sections_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `program_semester_sections_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `program_semester_sections_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `program_session`
--
ALTER TABLE `program_session`
  ADD CONSTRAINT `program_session_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `program_session_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `program_subject`
--
ALTER TABLE `program_subject`
  ADD CONSTRAINT `program_subject_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `program_subject_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff_attendances`
--
ALTER TABLE `staff_attendances`
  ADD CONSTRAINT `staff_attendances_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff_hourly_attendances`
--
ALTER TABLE `staff_hourly_attendances`
  ADD CONSTRAINT `staff_hourly_attendances_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `staff_hourly_attendances_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `status_type_student`
--
ALTER TABLE `status_type_student`
  ADD CONSTRAINT `status_type_student_status_type_id_foreign` FOREIGN KEY (`status_type_id`) REFERENCES `status_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `status_type_student_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_assignments`
--
ALTER TABLE `student_assignments`
  ADD CONSTRAINT `student_assignments_assignment_id_foreign` FOREIGN KEY (`assignment_id`) REFERENCES `assignments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_assignments_student_enroll_id_foreign` FOREIGN KEY (`student_enroll_id`) REFERENCES `student_enrolls` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_attendances`
--
ALTER TABLE `student_attendances`
  ADD CONSTRAINT `student_attendances_student_enroll_id_foreign` FOREIGN KEY (`student_enroll_id`) REFERENCES `student_enrolls` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_attendances_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_enrolls`
--
ALTER TABLE `student_enrolls`
  ADD CONSTRAINT `student_enrolls_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_enrolls_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_enrolls_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_enrolls_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_enrolls_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_enroll_subject`
--
ALTER TABLE `student_enroll_subject`
  ADD CONSTRAINT `student_enroll_subject_student_enroll_id_foreign` FOREIGN KEY (`student_enroll_id`) REFERENCES `student_enrolls` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_enroll_subject_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_leaves`
--
ALTER TABLE `student_leaves`
  ADD CONSTRAINT `student_leaves_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_relatives`
--
ALTER TABLE `student_relatives`
  ADD CONSTRAINT `student_relatives_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_transfers`
--
ALTER TABLE `student_transfers`
  ADD CONSTRAINT `student_transfers_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subject_markings`
--
ALTER TABLE `subject_markings`
  ADD CONSTRAINT `subject_markings_student_enroll_id_foreign` FOREIGN KEY (`student_enroll_id`) REFERENCES `student_enrolls` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_markings_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transfer_creadits`
--
ALTER TABLE `transfer_creadits`
  ADD CONSTRAINT `transfer_creadits_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transfer_creadits_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transfer_creadits_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transfer_creadits_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transfer_creadits_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transport_members`
--
ALTER TABLE `transport_members`
  ADD CONSTRAINT `transport_members_transport_route_id_foreign` FOREIGN KEY (`transport_route_id`) REFERENCES `transport_routes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transport_members_transport_vehicle_id_foreign` FOREIGN KEY (`transport_vehicle_id`) REFERENCES `transport_vehicles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transport_route_transport_vehicle`
--
ALTER TABLE `transport_route_transport_vehicle`
  ADD CONSTRAINT `transport_route_transport_vehicle_transport_route_id_foreign` FOREIGN KEY (`transport_route_id`) REFERENCES `transport_routes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transport_route_transport_vehicle_transport_vehicle_id_foreign` FOREIGN KEY (`transport_vehicle_id`) REFERENCES `transport_vehicles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_program`
--
ALTER TABLE `user_program`
  ADD CONSTRAINT `user_program_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_program_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `visitors`
--
ALTER TABLE `visitors`
  ADD CONSTRAINT `visitors_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `visitors_purpose_id_foreign` FOREIGN KEY (`purpose_id`) REFERENCES `visit_purposes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
