-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 18, 2023 at 06:32 AM
-- Server version: 10.5.19-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u276671220_crm_btob`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountants`
--

CREATE TABLE `accountants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_name` text DEFAULT NULL,
  `file_variable` text DEFAULT NULL,
  `accountant_id` bigint(20) DEFAULT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accountants`
--

INSERT INTO `accountants` (`id`, `file_name`, `file_variable`, `accountant_id`, `course_id`, `created_at`, `updated_at`) VALUES
(1, 'dgvdgdg', NULL, 4, 1, '2023-12-18 03:36:03', '2023-12-18 03:36:03');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` text NOT NULL,
  `comments` text NOT NULL,
  `file_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `user_name`, `comments`, `file_id`, `created_at`, `updated_at`) VALUES
(1, 240, 'tanjib', 'Invalid', 217, '2023-09-10 07:39:08', '2023-09-10 07:39:08'),
(2, 240, 'tanjib', 'Please send valid files', 217, '2023-09-10 07:39:21', '2023-09-10 07:39:21'),
(3, 240, 'tanjib', 'Invalid', 226, '2023-09-10 09:56:11', '2023-09-10 09:56:11'),
(4, 172, 'Jaman mahadi', 'Why this is Incomplete. Inform me right now. And who are you for make it incomplete tell me write now. give me your information and your boss number i will fire you if with in a minute you are not going to make it complete.', 250, '2023-09-18 08:42:54', '2023-09-18 08:42:54'),
(5, 240, 'tanjib', 'First tell me who are you. And who give you to say this kind faltu talk. Apolozise to me right now other wise i will withdraw you agency registration for ITEC. Ok', 250, '2023-09-18 08:45:29', '2023-09-18 08:45:29'),
(6, 172, 'Jaman mahadi', 'O sorry please i had to send it in other perso but by mistake i sent it to you. sorry', 250, '2023-09-18 08:46:35', '2023-09-18 08:46:35'),
(7, 240, 'tanjib', 'Ok that is your last warning', 250, '2023-09-18 08:48:02', '2023-09-18 08:48:02'),
(8, 172, 'Jaman mahadi', 'Thank you sir.', 250, '2023-09-18 08:48:14', '2023-09-18 08:48:14'),
(9, 172, 'Jaman mahadi', 'Sir, can you plese approve this file ?', 250, '2023-09-18 08:48:36', '2023-09-18 08:48:36'),
(10, 240, 'tanjib', 'I got some unclear. So, upload again this file', 250, '2023-09-18 08:50:14', '2023-09-18 08:50:14'),
(11, 172, 'Jaman mahadi', 'Ok sir', 250, '2023-09-18 08:50:26', '2023-09-18 08:50:26'),
(12, 240, 'tanjib', 'Do it again', 97, '2023-09-18 08:51:53', '2023-09-18 08:51:53'),
(13, 172, 'Jaman mahadi', 'Ok sir', 97, '2023-09-18 08:52:09', '2023-09-18 08:52:09'),
(14, 172, 'Jaman mahadi', 'I uploaded', 97, '2023-09-18 08:52:15', '2023-09-18 08:52:15'),
(15, 240, 'tanjib', 'Where it is', 97, '2023-09-18 08:52:25', '2023-09-18 08:52:25'),
(16, 240, 'tanjib', 'What is thats', 255, '2023-09-21 07:55:43', '2023-09-21 07:55:43'),
(17, 240, 'tanjib', 'Re upload it again', 98, '2023-09-21 07:56:08', '2023-09-21 07:56:08'),
(18, 172, 'Jaman mahadi', 'Ok i am uploading it again', 255, '2023-09-21 07:56:39', '2023-09-21 07:56:39'),
(19, 172, 'Jaman mahadi', 'ot it is also', 98, '2023-09-21 07:56:48', '2023-09-21 07:56:48'),
(20, 172, 'Jaman mahadi', 'why it is invalid', 226, '2023-10-10 08:01:43', '2023-10-10 08:01:43'),
(21, 240, 'tanjib', 'Wht is this actually man', 240, '2023-10-10 08:04:38', '2023-10-10 08:04:38'),
(22, 240, 'tanjib', 'Hello', 262, '2023-10-25 08:00:30', '2023-10-25 08:00:30'),
(23, 240, 'tanjib', 'The visa copy is not valid. Please kindly reupload the valid one.', 262, '2023-10-25 08:01:08', '2023-10-25 08:01:08'),
(24, 172, 'Jaman mahadi', 'Ok. Checking it.', 262, '2023-10-25 08:02:15', '2023-10-25 08:02:15'),
(25, 240, 'tanjib', 'This file needs to be rescanned properly', 100, '2023-10-25 08:05:19', '2023-10-25 08:05:19'),
(26, 240, 'tanjib', 'This file is incomplete. Need to upload again', 335, '2023-10-31 04:51:38', '2023-10-31 04:51:38'),
(27, 172, 'Jaman mahadi', 'Ok uploading it', 335, '2023-10-31 04:52:36', '2023-10-31 04:52:36');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_name` text DEFAULT NULL,
  `file_path` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 2 COMMENT '1 = complete, 0 = incomplete, 2 = pending',
  `student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `file_name`, `file_path`, `status`, `student_id`, `created_at`, `updated_at`) VALUES
(93, 'TLC Repayment Chart L.pdf', 'assets/student_files/xf3dbE2qGlgQvnWIn4WWtIZM6cP2pr8wBUfOAdyL.pdf', 2, 2, '2023-09-10 07:58:03', '2023-09-10 07:58:03'),
(94, 'TLC Weblink LS.docx', 'assets/student_files/RyijERDQ6OyBiLeWgDuxfpgU9sPfhCuG1OMs4uZc.docx', 2, 2, '2023-09-10 07:58:03', '2023-09-10 07:58:03'),
(96, 'BSB40520 - Certificate IV in Leadership and Management.pdf', 'assets/student_files/SAtSoH0dHa5yFnKqXEe5sJJEKWYBbYxjGntRicyy.pdf', 2, 4, '2023-09-10 10:04:07', '2023-09-10 10:04:07'),
(97, 'gittoken.txt', 'assets/student_files/1695027159.txt', 1, 5, '2023-09-18 08:38:47', '2023-09-18 08:52:52'),
(98, 'gittoken.txt', 'assets/student_files/1695283014.txt', 1, 6, '2023-09-21 07:53:45', '2023-09-21 07:57:29'),
(99, 'WhatsApp Image 2023-08-27 at 13.40.14.jpeg', 'assets/student_files/DTe6gcdVJGwiPIHgdkyIwDZXg1GF0wL98Hfp6Fx5.jpg', 1, 7, '2023-10-25 08:04:20', '2023-10-25 08:06:24'),
(100, '1678688251.png', 'assets/student_files/1698221155.png', 1, 7, '2023-10-25 08:04:20', '2023-10-25 08:06:26'),
(101, 'WhatsApp Image 2023-08-27 at 13.40.13.jpeg', 'assets/student_files/XCWzPwNEGk62O2cjCleo6zmDdFUtefFaaUlSwESv.jpg', 1, 7, '2023-10-25 08:04:20', '2023-10-25 08:06:28'),
(102, 'All clients logo-18.png', 'assets/student_files/gIkXFFE7ZwdEbTojD4rmqL9hVpiCELcSAVCt6y2k.png', 1, 8, '2023-10-25 10:10:59', '2023-10-25 10:11:46'),
(103, 'All clients logo-21.png', 'assets/student_files/Fj9c3ncIIKHdLzXxR9OzpqKYez3EJm6SdwR10fwK.png', 1, 8, '2023-10-25 10:10:59', '2023-10-25 10:11:47'),
(104, 'All clients logo-22.png', 'assets/student_files/1w6WBqG23UsE1jCQvhMrkce3QZU2SQuEZozfz21M.png', 1, 8, '2023-10-25 10:10:59', '2023-10-25 10:11:49'),
(105, 'invoice-.pdf', 'assets/student_files/EcGWchsRXIX38zdabJqyXmVdkeLamub94XmOZ5Pb.pdf', 2, 9, '2023-10-25 11:12:35', '2023-10-25 11:12:35'),
(106, 'Resume.pdf', 'assets/student_files/pADdDawvIw9lHV7TRWQX4Ub3Ar0JGQQ1GzIxHrfX.pdf', 2, 9, '2023-10-25 11:12:35', '2023-10-25 11:12:35'),
(107, 'Invoice_17116_2023-07-03 (1).pdf', 'assets/student_files/uCA9nAHkektAoRRYLOwOBRp1qmoes37FGi9YNV1J.pdf', 2, 9, '2023-10-25 11:12:35', '2023-10-25 11:12:35'),
(108, 'Invoice_17620_2023-08-10.pdf', 'assets/student_files/7IdNzA8F6fXdaveNtT4pvNaKsd7h61AbL4Ali45X.pdf', 2, 9, '2023-10-25 11:12:35', '2023-10-25 11:12:35'),
(109, 'screencapture-quadque-tech-products-sap-erp-2023-07-24-12_05_35.pdf', 'assets/student_files/YzyVnuh6KZD9t2Wo2bjRzqsyTbxARJRub023oSwt.pdf', 1, 13, '2023-10-25 11:19:59', '2023-10-25 11:20:45'),
(110, 'EID_UL_ADHA_NOTICE_2023.docx.pdf', 'assets/student_files/KCx3zjdqF1YDbm1qrJnK47s211WwBsygMIMy7WcS.pdf', 1, 13, '2023-10-25 11:19:59', '2023-10-25 11:20:40'),
(111, 'QQ Tech  - Technical Audit.pdf', 'assets/student_files/T5g3MwluU4muGyQEZ70kNQgSM5E7nngdhMqbMitx.pdf', 1, 13, '2023-10-25 11:19:59', '2023-10-25 11:20:37'),
(112, 'review-evaluation-satisfaction-customer-service-feedback-sign-icon (1).jpg', 'assets/student_files/BbY59wujNAwwpJ4dHd2Lr69lfPNdMV25M8AlFn3g.jpg', 1, 14, '2023-10-25 11:33:29', '2023-10-25 11:33:58'),
(113, 'WhatsApp Image 2023-07-27 at 09.56.55.jpeg', 'assets/student_files/iccxfUlbf5azrV6HXWrgnpTUzIDVA9yEcGnGTDEo.jpg', 1, 14, '2023-10-25 11:33:29', '2023-10-25 11:34:01'),
(114, 'photo_id.jpeg', 'assets/student_files/exrZfnnGV1ENTIFm3ulKtiQrB4EQyAu5s2qRjTSo.jpg', 1, 15, '2023-10-26 02:58:10', '2023-10-26 02:58:38'),
(115, 'Resume.pdf', 'assets/student_files/C1qfeg9Tsxvs20fmumHg64rIdx4v4vn7GN4yC8iF.pdf', 1, 15, '2023-10-26 02:58:10', '2023-10-26 02:58:39'),
(116, 'usi_number.jpeg', 'assets/student_files/VC6DQgP4H33DCmORcwX6Lo0wzWlZPiorc7AQrP7m.jpg', 1, 15, '2023-10-26 02:58:10', '2023-10-26 02:58:41'),
(117, 'visa_copy.jpg', 'assets/student_files/JX6WFUEo50nva9F9bxcLvUpkWQSydMxqmd9EzrHp.jpg', 1, 16, '2023-10-26 03:06:06', '2023-10-26 03:06:32'),
(118, 'photo_id.jpeg', 'assets/student_files/2D9Ngqr1Ll4AHsMndarwlmVWEVDAL43b7c2MbB40.jpg', 1, 16, '2023-10-26 03:06:06', '2023-10-26 03:06:33'),
(119, 'quadque-teck-logo.png', 'assets/student_files/lfZywVlMlVDDwMgI1y4XCG8AeF6CNlmWBIhxT5Se.png', 1, 16, '2023-10-26 03:06:06', '2023-10-26 03:06:34'),
(120, 'WhatsApp Image 2023-09-26 at 11.34.55.jpeg', 'assets/student_files/yJT4WJROIJ0FdP07ILcl83BWq7GJiIm7P9hdtXC7.jpg', 1, 18, '2023-10-26 03:33:40', '2023-10-26 03:34:04'),
(121, '1678538652.jpg', 'assets/student_files/2jR0OQvc3KIiM7frGq0ux8kegN905qiNjzEhaSxB.jpg', 1, 18, '2023-10-26 03:33:40', '2023-10-26 03:34:05'),
(122, 'WhatsApp Image 2023-09-26 at 09.53.07 (3).jpeg', 'assets/student_files/yDRhXFnCVCuA10KjMxgtVEg1pMpnX4DdBgAzK1e8.jpg', 1, 18, '2023-10-26 03:33:40', '2023-10-26 03:34:06'),
(123, '01.png', 'assets/student_files/7UBikw6ssuGK7JCaV7dv2FLnllRur3A0Z45dcCN0.png', 1, 19, '2023-10-26 03:37:55', '2023-10-26 03:38:17'),
(124, '1.ITEC-new-logo--23-02-2022 (1).png', 'assets/student_files/nUEQQWBICxh9BAjzZTvpvFzXySWw5gs2J1Slvc4T.png', 1, 19, '2023-10-26 03:37:55', '2023-10-26 03:38:18'),
(125, '02.png', 'assets/student_files/Kmz5IFVMVE4Tqj8VPXzudvHKD6pWudgZ3o0qnloz.png', 1, 19, '2023-10-26 03:37:55', '2023-10-26 03:38:20'),
(126, '2.ITEC-new-logo-wide--23-02-2022.png', 'assets/student_files/myRMsS8LsfHFppIrva6zP4MpdxhEsj6DonKIdj7a.png', 1, 19, '2023-10-26 03:37:55', '2023-10-26 03:38:21'),
(127, 'review-evaluation-satisfaction-customer-service-feedback-sign-icon.jpg', 'assets/student_files/hfdFQiwMHS0vEgokCW7y8U6AWXqzqcN4FqO3VG1D.jpg', 1, 19, '2023-10-26 03:41:07', '2023-10-26 03:41:24'),
(128, '1695282778.mp4', 'assets/student_files/d0foCEAfHM54g8NCNFv258VgMNTcqqN3N0CEP1NU.mp4', 1, 19, '2023-10-26 03:49:21', '2023-10-26 03:49:35'),
(129, 'Best-camera-portrait-photography-EOS-5D-MarkIV.webp', 'assets/student_files/eH3YowwUVGrLx4rjMfDmfLKNg0E3huxoqpiTZpJe.webp', 1, 20, '2023-10-31 04:50:01', '2023-10-31 04:53:42'),
(130, '1663760311-2060206-r-z001a-1663760295.jpg', 'assets/student_files/8NsxRdGQ9MxLxBFC448qLQ9aCnhS7GeePhYC1ROA.jpg', 1, 20, '2023-10-31 04:50:01', '2023-10-31 04:53:45'),
(131, 'Consoles_MAIN (1).jpg', 'assets/student_files/DFbRJEG4GotEUCCneUtNH3cRkIh4dT5rsGYRtTYs.jpg', 1, 20, '2023-10-31 04:50:01', '2023-10-31 04:53:46'),
(132, 'console.jpg', 'assets/student_files/yftYTaYz5JBIXW2ugWEF4ziPVY3k9VzaWJhI3DNH.jpg', 1, 20, '2023-10-31 04:50:01', '2023-10-31 04:53:56'),
(133, 'headphone.jpg', 'assets/student_files/9e1DU9rRuiarKBVwlMyF4zrQYPRfLAFxajhpcE0u.jpg', 1, 20, '2023-10-31 04:50:01', '2023-10-31 04:53:52');

-- --------------------------------------------------------

--
-- Table structure for table `mandatory_files`
--

CREATE TABLE `mandatory_files` (
  `id` bigint(20) NOT NULL,
  `file_type` text NOT NULL,
  `file_name` text NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1 = complete, 0 = incomplete, 2 = pending',
  `student_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mandatory_files`
--

INSERT INTO `mandatory_files` (`id`, `file_type`, `file_name`, `file_path`, `status`, `student_id`, `created_at`, `updated_at`) VALUES
(47, 'Academic Qualification', 'Resume.pdf', 'assets/academic_qualification/1693715068.pdf', 2, 47, '2023-09-03 04:24:28', '2023-09-03 04:24:28'),
(48, 'Photo Video', 'Resume.pdf', 'assets/photo_video/1693715068.pdf', 2, 47, '2023-09-03 04:24:28', '2023-09-03 04:24:28'),
(49, 'Usi Number', 'Resume.pdf', 'assets/usi_number/1693715068.pdf', 2, 47, '2023-09-03 04:24:28', '2023-09-03 04:24:28'),
(50, 'Photo ID', 'Resume.pdf', 'assets/photo_id/1693736959.pdf', 2, 48, '2023-09-03 10:29:19', '2023-09-03 10:29:19'),
(51, 'Resume', 'Resume.pdf', 'assets/resume/1693736959.pdf', 2, 48, '2023-09-03 10:29:19', '2023-09-03 10:29:19'),
(52, 'Reference Letter', 'Resume.pdf', 'assets/reference_letter/1693736959.pdf', 2, 48, '2023-09-03 10:29:19', '2023-09-03 10:29:19'),
(53, 'Visa Copy', 'Resume.pdf', 'assets/visa_copy/1693736959.pdf', 2, 48, '2023-09-03 10:29:19', '2023-09-03 10:29:19'),
(54, 'Academic Qualification', 'Resume.pdf', 'assets/academic_qualification/1693736959.pdf', 2, 48, '2023-09-03 10:29:19', '2023-09-03 10:29:19'),
(55, 'Photo Video', 'Resume.pdf', 'assets/photo_video/1693736959.pdf', 2, 48, '2023-09-03 10:29:19', '2023-09-03 10:29:19'),
(56, 'Usi Number', 'Resume.pdf', 'assets/usi_number/1693736959.pdf', 2, 48, '2023-09-03 10:29:19', '2023-09-03 10:29:19'),
(57, 'Photo ID', 'Resume.pdf', 'assets/photo_id/1693736998.pdf', 2, 49, '2023-09-03 10:29:58', '2023-09-03 10:29:58'),
(58, 'Resume', 'Resume.pdf', 'assets/resume/1693736998.pdf', 2, 49, '2023-09-03 10:29:58', '2023-09-03 10:29:58'),
(59, 'Reference Letter', 'Resume.pdf', 'assets/reference_letter/1693736998.pdf', 2, 49, '2023-09-03 10:29:58', '2023-09-03 10:29:58'),
(60, 'Visa Copy', 'Resume.pdf', 'assets/visa_copy/1693736998.pdf', 2, 49, '2023-09-03 10:29:58', '2023-09-03 10:29:58'),
(61, 'Academic Qualification', 'Resume.pdf', 'assets/academic_qualification/1693736998.pdf', 2, 49, '2023-09-03 10:29:58', '2023-09-03 10:29:58'),
(62, 'Photo Video', 'Resume.pdf', 'assets/photo_video/1693736998.pdf', 2, 49, '2023-09-03 10:29:58', '2023-09-03 10:29:58'),
(63, 'Usi Number', 'Resume.pdf', 'assets/usi_number/1693736998.pdf', 2, 49, '2023-09-03 10:29:58', '2023-09-03 10:29:58'),
(64, 'Photo ID', '11856855.jpg', 'assets/photo_id/1694316669.jpg', 1, 50, '2023-09-10 06:46:39', '2023-09-10 06:46:39'),
(65, 'Resume', 'invoice-.pdf', 'assets/resume/1694316669.pdf', 1, 50, '2023-09-10 06:08:17', '2023-09-10 06:08:17'),
(66, 'Reference Letter', 'invoice-.pdf', 'assets/reference_letter/1694316669.pdf', 1, 50, '2023-09-10 06:11:38', '2023-09-10 06:11:38'),
(67, 'Visa Copy', 'screencapture-localhost-3000-services-software-development-2023-05-28-16_53_57.pdf', 'assets/visa_copy/1694316669.pdf', 1, 50, '2023-09-10 06:11:52', '2023-09-10 06:11:52'),
(68, 'Academic Qualification', 'Resume.pdf', 'assets/academic_qualification/1694316669.pdf', 1, 50, '2023-09-10 06:46:08', '2023-09-10 06:46:08'),
(69, 'Photo Video', 'WhatsApp Image 2023-08-27 at 13.40.15.jpeg', 'assets/photo_video/1694316669.jpeg', 1, 50, '2023-09-10 06:12:18', '2023-09-10 06:12:18'),
(70, 'Usi Number', '35691543.jpg', 'assets/usi_number/1694316669.jpg', 1, 50, '2023-09-10 06:12:20', '2023-09-10 06:12:20'),
(71, 'Photo ID', '11856855.jpg', 'assets/photo_id/1694316679.jpg', 2, 51, '2023-09-10 03:31:19', '2023-09-10 03:31:19'),
(72, 'Resume', 'invoice-.pdf', 'assets/resume/1694316679.pdf', 2, 51, '2023-09-10 03:31:19', '2023-09-10 03:31:19'),
(73, 'Reference Letter', 'invoice-.pdf', 'assets/reference_letter/1694316679.pdf', 2, 51, '2023-09-10 03:31:19', '2023-09-10 03:31:19'),
(74, 'Visa Copy', 'screencapture-localhost-3000-services-software-development-2023-05-28-16_53_57.pdf', 'assets/visa_copy/1694316679.pdf', 2, 51, '2023-09-10 03:31:19', '2023-09-10 03:31:19'),
(75, 'Academic Qualification', 'Resume.pdf', 'assets/academic_qualification/1694316679.pdf', 2, 51, '2023-09-10 03:31:19', '2023-09-10 03:31:19'),
(76, 'Photo Video', 'WhatsApp Image 2023-08-27 at 13.40.15.jpeg', 'assets/photo_video/1694316679.jpeg', 2, 51, '2023-09-10 03:31:19', '2023-09-10 03:31:19'),
(77, 'Usi Number', '35691543.jpg', 'assets/usi_number/1694316679.jpg', 2, 51, '2023-09-10 03:31:19', '2023-09-10 03:31:19'),
(78, 'Photo ID', '1687771364.png', 'assets/photo_id/1694316805.png', 2, 52, '2023-09-10 03:33:25', '2023-09-10 03:33:25'),
(79, 'Photo ID', '1687771364.png', 'assets/photo_id/1694316850.png', 2, 53, '2023-09-10 03:34:10', '2023-09-10 03:34:10'),
(80, 'Photo ID', '1687771364.png', 'assets/photo_id/1694316899.png', 1, 54, '2023-09-10 03:42:57', '2023-09-10 03:42:57'),
(81, 'Resume', 'TLC Repayment Chart L.pdf', 'assets/resume/1694316899.pdf', 1, 54, '2023-09-10 03:36:52', '2023-09-10 03:36:52'),
(82, 'Reference Letter', 'Untitled.pdf', 'assets/reference_letter/1694316899.pdf', 1, 54, '2023-09-10 03:39:00', '2023-09-10 03:39:00'),
(83, 'Visa Copy', 'asdfaSF.pdf', 'assets/visa_copy/1694316899.pdf', 1, 54, '2023-09-10 03:41:54', '2023-09-10 03:41:54'),
(84, 'Academic Qualification', 'ESOSFrameworkfactsheetfinaldraft9May2014(2).pdf', 'assets/academic_qualification/1694316899.pdf', 1, 54, '2023-09-10 03:39:03', '2023-09-10 03:39:03'),
(85, 'Photo Video', 'Quadque job post.jpg', 'assets/photo_video/1694316899.jpg', 1, 54, '2023-09-10 03:39:04', '2023-09-10 03:39:04'),
(86, 'Usi Number', 'Application – Education Agent.pdf', 'assets/usi_number/1694316899.pdf', 1, 54, '2023-09-10 03:39:05', '2023-09-10 03:39:05'),
(87, 'Photo ID', 'WhatsApp Image 2023-08-30 at 4.00.53 PM.jpeg', 'assets/photo_id/1694318550.jpeg', 2, 55, '2023-09-10 04:02:30', '2023-09-10 04:02:30'),
(88, 'Resume', 'EFTAKHAR\'s Resume.pdf', 'assets/resume/1694318550.pdf', 2, 55, '2023-09-10 04:02:30', '2023-09-10 04:02:30'),
(89, 'Photo ID', 'WhatsApp Image 2023-08-30 at 4.00.53 PM.jpeg', 'assets/photo_id/1694318552.jpeg', 2, 56, '2023-09-10 04:02:32', '2023-09-10 04:02:32'),
(90, 'Resume', 'EFTAKHAR\'s Resume.pdf', 'assets/resume/1694318552.pdf', 2, 56, '2023-09-10 04:02:32', '2023-09-10 04:02:32'),
(91, 'Photo ID', 'WhatsApp Image 2023-08-30 at 4.00.53 PM.jpeg', 'assets/photo_id/1694318553.jpeg', 2, 57, '2023-09-10 04:02:33', '2023-09-10 04:02:33'),
(92, 'Resume', 'Resume.pdf', 'assets/files/1694336748.pdf', 2, 57, '2023-09-10 09:05:48', '2023-09-10 09:05:48'),
(93, 'Photo ID', 'WhatsApp Image 2023-08-30 at 4.00.53 PM.jpeg', 'assets/photo_id/1694318554.jpeg', 2, 58, '2023-09-10 04:02:34', '2023-09-10 04:02:34'),
(94, 'Resume', 'EFTAKHAR\'s Resume.pdf', 'assets/resume/1694318554.pdf', 2, 58, '2023-09-10 04:02:34', '2023-09-10 04:02:34'),
(95, 'Photo ID', 'WhatsApp Image 2023-08-30 at 4.00.53 PM.jpeg', 'assets/photo_id/1694318555.jpeg', 2, 59, '2023-09-10 04:02:35', '2023-09-10 04:02:35'),
(96, 'Resume', 'EFTAKHAR\'s Resume.pdf', 'assets/resume/1694318555.pdf', 0, 59, '2023-09-10 05:23:52', '2023-09-10 05:23:52'),
(97, 'Photo ID', 'gittoken.txt', 'assets/photo_id/1694325003.txt', 2, 60, '2023-09-10 05:50:03', '2023-09-10 05:50:03'),
(98, 'Photo ID', 'gittoken.txt', 'assets/photo_id/1694325096.txt', 2, 61, '2023-09-10 05:51:36', '2023-09-10 05:51:36'),
(99, 'Resume', 'Resume.pdf', 'assets/resume/1694325096.pdf', 2, 61, '2023-09-10 05:51:36', '2023-09-10 05:51:36'),
(100, 'Reference Letter', 'Resume.pdf', 'assets/reference_letter/1694325096.pdf', 2, 61, '2023-09-10 05:51:36', '2023-09-10 05:51:36'),
(101, 'Visa Copy', 'Resume.pdf', 'assets/visa_copy/1694325096.pdf', 2, 61, '2023-09-10 05:51:36', '2023-09-10 05:51:36'),
(102, 'Academic Qualification', 'Resume.pdf', 'assets/academic_qualification/1694325096.pdf', 2, 61, '2023-09-10 05:51:36', '2023-09-10 05:51:36'),
(103, 'Photo Video', 'Resume.pdf', 'assets/photo_video/1694325096.pdf', 2, 61, '2023-09-10 05:51:36', '2023-09-10 05:51:36'),
(104, 'Usi Number', 'Resume.pdf', 'assets/usi_number/1694325096.pdf', 2, 61, '2023-09-10 05:51:36', '2023-09-10 05:51:36'),
(105, 'Photo ID', 'gittoken.txt', 'assets/photo_id/1694325114.txt', 2, 62, '2023-09-10 05:51:54', '2023-09-10 05:51:54'),
(106, 'Resume', 'Resume.pdf', 'assets/resume/1694325114.pdf', 2, 62, '2023-09-10 05:51:54', '2023-09-10 05:51:54'),
(107, 'Reference Letter', 'Resume.pdf', 'assets/reference_letter/1694325114.pdf', 2, 62, '2023-09-10 05:51:54', '2023-09-10 05:51:54'),
(108, 'Visa Copy', 'Resume.pdf', 'assets/visa_copy/1694325114.pdf', 2, 62, '2023-09-10 05:51:54', '2023-09-10 05:51:54'),
(109, 'Academic Qualification', 'Resume.pdf', 'assets/academic_qualification/1694325114.pdf', 2, 62, '2023-09-10 05:51:54', '2023-09-10 05:51:54'),
(110, 'Photo Video', 'Resume.pdf', 'assets/photo_video/1694325114.pdf', 2, 62, '2023-09-10 05:51:54', '2023-09-10 05:51:54'),
(111, 'Usi Number', 'Resume.pdf', 'assets/usi_number/1694325114.pdf', 2, 62, '2023-09-10 05:51:54', '2023-09-10 05:51:54'),
(112, 'Photo ID', 'gittoken.txt', 'assets/photo_id/1694325152.txt', 2, 63, '2023-09-10 05:52:32', '2023-09-10 05:52:32'),
(113, 'Resume', 'Resume.pdf', 'assets/resume/1694325152.pdf', 2, 63, '2023-09-10 05:52:32', '2023-09-10 05:52:32'),
(114, 'Reference Letter', 'Resume.pdf', 'assets/reference_letter/1694325152.pdf', 2, 63, '2023-09-10 05:52:32', '2023-09-10 05:52:32'),
(115, 'Visa Copy', 'Resume.pdf', 'assets/visa_copy/1694325152.pdf', 2, 63, '2023-09-10 05:52:32', '2023-09-10 05:52:32'),
(116, 'Academic Qualification', 'Resume.pdf', 'assets/academic_qualification/1694325152.pdf', 2, 63, '2023-09-10 05:52:32', '2023-09-10 05:52:32'),
(117, 'Photo Video', 'Resume.pdf', 'assets/photo_video/1694325152.pdf', 2, 63, '2023-09-10 05:52:32', '2023-09-10 05:52:32'),
(118, 'Usi Number', 'Resume.pdf', 'assets/usi_number/1694325152.pdf', 2, 63, '2023-09-10 05:52:32', '2023-09-10 05:52:32'),
(119, 'Photo ID', 'EFTAKHAR\'s Resume.pdf', 'assets/photo_id/1694325282.pdf', 2, 64, '2023-09-10 05:54:42', '2023-09-10 05:54:42'),
(120, 'Resume', 'gittoken.txt', 'assets/resume/1694325282.txt', 2, 64, '2023-09-10 05:54:42', '2023-09-10 05:54:42'),
(121, 'Reference Letter', 'EFTAKHAR\'s Resume.pdf', 'assets/reference_letter/1694325282.pdf', 2, 64, '2023-09-10 05:54:42', '2023-09-10 05:54:42'),
(122, 'Visa Copy', 'gittoken.txt', 'assets/visa_copy/1694325282.txt', 2, 64, '2023-09-10 05:54:42', '2023-09-10 05:54:42'),
(123, 'Academic Qualification', 'gittoken.txt', 'assets/academic_qualification/1694325282.txt', 2, 64, '2023-09-10 05:54:42', '2023-09-10 05:54:42'),
(124, 'Photo Video', 'Resume.pdf', 'assets/photo_video/1694325282.pdf', 2, 64, '2023-09-10 05:54:42', '2023-09-10 05:54:42'),
(125, 'Usi Number', 'EFTAKHAR\'s Resume.pdf', 'assets/usi_number/1694325282.pdf', 2, 64, '2023-09-10 05:54:42', '2023-09-10 05:54:42'),
(126, 'Photo ID', 'EFTAKHAR\'s Resume.pdf', 'assets/photo_id/1694325333.pdf', 2, 65, '2023-09-10 05:55:33', '2023-09-10 05:55:33'),
(127, 'Resume', 'gittoken.txt', 'assets/resume/1694325333.txt', 2, 65, '2023-09-10 05:55:33', '2023-09-10 05:55:33'),
(128, 'Reference Letter', 'EFTAKHAR\'s Resume.pdf', 'assets/reference_letter/1694325333.pdf', 2, 65, '2023-09-10 05:55:33', '2023-09-10 05:55:33'),
(129, 'Visa Copy', 'gittoken.txt', 'assets/visa_copy/1694325333.txt', 2, 65, '2023-09-10 05:55:33', '2023-09-10 05:55:33'),
(130, 'Academic Qualification', 'gittoken.txt', 'assets/academic_qualification/1694325333.txt', 2, 65, '2023-09-10 05:55:33', '2023-09-10 05:55:33'),
(131, 'Photo Video', 'Resume.pdf', 'assets/photo_video/1694325333.pdf', 2, 65, '2023-09-10 05:55:33', '2023-09-10 05:55:33'),
(132, 'Usi Number', 'EFTAKHAR\'s Resume.pdf', 'assets/usi_number/1694325333.pdf', 2, 65, '2023-09-10 05:55:33', '2023-09-10 05:55:33'),
(133, 'Photo ID', 'EFTAKHAR\'s Resume.pdf', 'assets/photo_id/1694325339.pdf', 2, 66, '2023-09-10 05:55:39', '2023-09-10 05:55:39'),
(134, 'Resume', 'gittoken.txt', 'assets/resume/1694325339.txt', 2, 66, '2023-09-10 05:55:39', '2023-09-10 05:55:39'),
(135, 'Reference Letter', 'EFTAKHAR\'s Resume.pdf', 'assets/reference_letter/1694325339.pdf', 2, 66, '2023-09-10 05:55:39', '2023-09-10 05:55:39'),
(136, 'Visa Copy', 'gittoken.txt', 'assets/visa_copy/1694325339.txt', 2, 66, '2023-09-10 05:55:39', '2023-09-10 05:55:39'),
(137, 'Academic Qualification', 'gittoken.txt', 'assets/academic_qualification/1694325339.txt', 2, 66, '2023-09-10 05:55:39', '2023-09-10 05:55:39'),
(138, 'Photo Video', 'Resume.pdf', 'assets/photo_video/1694325339.pdf', 2, 66, '2023-09-10 05:55:39', '2023-09-10 05:55:39'),
(139, 'Usi Number', 'EFTAKHAR\'s Resume.pdf', 'assets/usi_number/1694325339.pdf', 2, 66, '2023-09-10 05:55:39', '2023-09-10 05:55:39'),
(140, 'Photo ID', 'EFTAKHAR\'s Resume.pdf', 'assets/photo_id/1694325389.pdf', 2, 67, '2023-09-10 05:56:29', '2023-09-10 05:56:29'),
(141, 'Resume', 'gittoken.txt', 'assets/resume/1694325389.txt', 2, 67, '2023-09-10 05:56:29', '2023-09-10 05:56:29'),
(142, 'Reference Letter', 'EFTAKHAR\'s Resume.pdf', 'assets/reference_letter/1694325389.pdf', 2, 67, '2023-09-10 05:56:29', '2023-09-10 05:56:29'),
(143, 'Visa Copy', 'gittoken.txt', 'assets/visa_copy/1694325389.txt', 2, 67, '2023-09-10 05:56:29', '2023-09-10 05:56:29'),
(144, 'Academic Qualification', 'gittoken.txt', 'assets/academic_qualification/1694325389.txt', 2, 67, '2023-09-10 05:56:29', '2023-09-10 05:56:29'),
(145, 'Photo Video', 'Resume.pdf', 'assets/photo_video/1694325389.pdf', 2, 67, '2023-09-10 05:56:29', '2023-09-10 05:56:29'),
(146, 'Usi Number', 'EFTAKHAR\'s Resume.pdf', 'assets/usi_number/1694325389.pdf', 2, 67, '2023-09-10 05:56:29', '2023-09-10 05:56:29'),
(147, 'Photo ID', 'Resume.pdf', 'assets/photo_id/1694325465.pdf', 2, 68, '2023-09-10 05:57:45', '2023-09-10 05:57:45'),
(148, 'Resume', 'EFTAKHAR\'s Resume.pdf', 'assets/resume/1694325465.pdf', 2, 68, '2023-09-10 05:57:45', '2023-09-10 05:57:45'),
(149, 'Reference Letter', 'EFTAKHAR\'s Resume.pdf', 'assets/reference_letter/1694325465.pdf', 2, 68, '2023-09-10 05:57:45', '2023-09-10 05:57:45'),
(150, 'Visa Copy', 'EFTAKHAR\'s Resume.pdf', 'assets/visa_copy/1694325465.pdf', 2, 68, '2023-09-10 05:57:45', '2023-09-10 05:57:45'),
(151, 'Academic Qualification', 'EFTAKHAR\'s Resume.pdf', 'assets/academic_qualification/1694325465.pdf', 2, 68, '2023-09-10 05:57:45', '2023-09-10 05:57:45'),
(152, 'Photo Video', 'EFTAKHAR\'s Resume.pdf', 'assets/photo_video/1694325465.pdf', 2, 68, '2023-09-10 05:57:46', '2023-09-10 05:57:46'),
(153, 'Usi Number', 'EFTAKHAR\'s Resume.pdf', 'assets/usi_number/1694325466.pdf', 2, 68, '2023-09-10 05:57:46', '2023-09-10 05:57:46'),
(154, 'Photo ID', 'Resume.pdf', 'assets/photo_id/1694325515.pdf', 2, 69, '2023-09-10 05:58:35', '2023-09-10 05:58:35'),
(155, 'Resume', 'EFTAKHAR\'s Resume.pdf', 'assets/resume/1694325515.pdf', 2, 69, '2023-09-10 05:58:35', '2023-09-10 05:58:35'),
(156, 'Reference Letter', 'EFTAKHAR\'s Resume.pdf', 'assets/reference_letter/1694325515.pdf', 2, 69, '2023-09-10 05:58:35', '2023-09-10 05:58:35'),
(157, 'Visa Copy', 'EFTAKHAR\'s Resume.pdf', 'assets/visa_copy/1694325515.pdf', 2, 69, '2023-09-10 05:58:35', '2023-09-10 05:58:35'),
(158, 'Academic Qualification', 'EFTAKHAR\'s Resume.pdf', 'assets/academic_qualification/1694325515.pdf', 2, 69, '2023-09-10 05:58:35', '2023-09-10 05:58:35'),
(159, 'Photo Video', 'EFTAKHAR\'s Resume.pdf', 'assets/photo_video/1694325515.pdf', 2, 69, '2023-09-10 05:58:35', '2023-09-10 05:58:35'),
(160, 'Usi Number', 'EFTAKHAR\'s Resume.pdf', 'assets/usi_number/1694325515.pdf', 2, 69, '2023-09-10 05:58:35', '2023-09-10 05:58:35'),
(161, 'Photo ID', 'Resume.pdf', 'assets/photo_id/1694325661.pdf', 2, 70, '2023-09-10 06:01:01', '2023-09-10 06:01:01'),
(162, 'Resume', 'EFTAKHAR\'s Resume.pdf', 'assets/resume/1694325661.pdf', 2, 70, '2023-09-10 06:01:01', '2023-09-10 06:01:01'),
(163, 'Reference Letter', 'EFTAKHAR\'s Resume.pdf', 'assets/reference_letter/1694325661.pdf', 2, 70, '2023-09-10 06:01:01', '2023-09-10 06:01:01'),
(164, 'Visa Copy', 'EFTAKHAR\'s Resume.pdf', 'assets/visa_copy/1694325661.pdf', 2, 70, '2023-09-10 06:01:01', '2023-09-10 06:01:01'),
(165, 'Academic Qualification', 'EFTAKHAR\'s Resume.pdf', 'assets/academic_qualification/1694325661.pdf', 2, 70, '2023-09-10 06:01:01', '2023-09-10 06:01:01'),
(166, 'Photo Video', 'EFTAKHAR\'s Resume.pdf', 'assets/photo_video/1694325661.pdf', 2, 70, '2023-09-10 06:01:01', '2023-09-10 06:01:01'),
(167, 'Usi Number', 'EFTAKHAR\'s Resume.pdf', 'assets/usi_number/1694325661.pdf', 2, 70, '2023-09-10 06:01:01', '2023-09-10 06:01:01'),
(168, 'Photo ID', 'Resume.pdf', 'assets/photo_id/1694325818.pdf', 2, 71, '2023-09-10 06:03:38', '2023-09-10 06:03:38'),
(169, 'Resume', 'EFTAKHAR\'s Resume.pdf', 'assets/resume/1694325818.pdf', 2, 71, '2023-09-10 06:03:38', '2023-09-10 06:03:38'),
(170, 'Reference Letter', 'EFTAKHAR\'s Resume.pdf', 'assets/reference_letter/1694325818.pdf', 2, 71, '2023-09-10 06:03:38', '2023-09-10 06:03:38'),
(171, 'Visa Copy', 'EFTAKHAR\'s Resume.pdf', 'assets/visa_copy/1694325818.pdf', 2, 71, '2023-09-10 06:03:38', '2023-09-10 06:03:38'),
(172, 'Academic Qualification', 'EFTAKHAR\'s Resume.pdf', 'assets/academic_qualification/1694325818.pdf', 2, 71, '2023-09-10 06:03:38', '2023-09-10 06:03:38'),
(173, 'Photo Video', 'EFTAKHAR\'s Resume.pdf', 'assets/photo_video/1694325818.pdf', 2, 71, '2023-09-10 06:03:38', '2023-09-10 06:03:38'),
(174, 'Usi Number', 'EFTAKHAR\'s Resume.pdf', 'assets/usi_number/1694325818.pdf', 2, 71, '2023-09-10 06:03:38', '2023-09-10 06:03:38'),
(175, 'Photo ID', 'Resume.pdf', 'assets/photo_id/1694325844.pdf', 2, 72, '2023-09-10 06:04:04', '2023-09-10 06:04:04'),
(176, 'Resume', 'EFTAKHAR\'s Resume.pdf', 'assets/resume/1694325844.pdf', 2, 72, '2023-09-10 06:04:04', '2023-09-10 06:04:04'),
(177, 'Reference Letter', 'EFTAKHAR\'s Resume.pdf', 'assets/reference_letter/1694325844.pdf', 2, 72, '2023-09-10 06:04:04', '2023-09-10 06:04:04'),
(178, 'Visa Copy', 'EFTAKHAR\'s Resume.pdf', 'assets/visa_copy/1694325844.pdf', 2, 72, '2023-09-10 06:04:04', '2023-09-10 06:04:04'),
(179, 'Academic Qualification', 'EFTAKHAR\'s Resume.pdf', 'assets/academic_qualification/1694325844.pdf', 2, 72, '2023-09-10 06:04:04', '2023-09-10 06:04:04'),
(180, 'Photo Video', 'EFTAKHAR\'s Resume.pdf', 'assets/photo_video/1694325844.pdf', 2, 72, '2023-09-10 06:04:04', '2023-09-10 06:04:04'),
(181, 'Usi Number', 'EFTAKHAR\'s Resume.pdf', 'assets/usi_number/1694325844.pdf', 2, 72, '2023-09-10 06:04:04', '2023-09-10 06:04:04'),
(182, 'Photo ID', 'Resume.pdf', 'assets/photo_id/1694325851.pdf', 2, 73, '2023-09-10 06:04:11', '2023-09-10 06:04:11'),
(183, 'Resume', 'EFTAKHAR\'s Resume.pdf', 'assets/resume/1694325851.pdf', 2, 73, '2023-09-10 06:04:11', '2023-09-10 06:04:11'),
(184, 'Reference Letter', 'EFTAKHAR\'s Resume.pdf', 'assets/reference_letter/1694325851.pdf', 2, 73, '2023-09-10 06:04:11', '2023-09-10 06:04:11'),
(185, 'Visa Copy', 'EFTAKHAR\'s Resume.pdf', 'assets/visa_copy/1694325851.pdf', 2, 73, '2023-09-10 06:04:11', '2023-09-10 06:04:11'),
(186, 'Academic Qualification', 'EFTAKHAR\'s Resume.pdf', 'assets/academic_qualification/1694325851.pdf', 2, 73, '2023-09-10 06:04:11', '2023-09-10 06:04:11'),
(187, 'Photo Video', 'EFTAKHAR\'s Resume.pdf', 'assets/photo_video/1694325851.pdf', 2, 73, '2023-09-10 06:04:11', '2023-09-10 06:04:11'),
(188, 'Usi Number', 'EFTAKHAR\'s Resume.pdf', 'assets/usi_number/1694325851.pdf', 2, 73, '2023-09-10 06:04:11', '2023-09-10 06:04:11'),
(189, 'Photo ID', 'Resume.pdf', 'assets/photo_id/1694326013.pdf', 2, 74, '2023-09-10 06:06:53', '2023-09-10 06:06:53'),
(190, 'Resume', 'EFTAKHAR\'s Resume.pdf', 'assets/resume/1694326013.pdf', 2, 74, '2023-09-10 06:06:53', '2023-09-10 06:06:53'),
(191, 'Reference Letter', 'EFTAKHAR\'s Resume.pdf', 'assets/reference_letter/1694326013.pdf', 2, 74, '2023-09-10 06:06:53', '2023-09-10 06:06:53'),
(192, 'Visa Copy', 'EFTAKHAR\'s Resume.pdf', 'assets/visa_copy/1694326013.pdf', 2, 74, '2023-09-10 06:06:53', '2023-09-10 06:06:53'),
(193, 'Academic Qualification', 'EFTAKHAR\'s Resume.pdf', 'assets/academic_qualification/1694326013.pdf', 2, 74, '2023-09-10 06:06:53', '2023-09-10 06:06:53'),
(194, 'Photo Video', 'EFTAKHAR\'s Resume.pdf', 'assets/photo_video/1694326013.pdf', 2, 74, '2023-09-10 06:06:53', '2023-09-10 06:06:53'),
(195, 'Usi Number', 'EFTAKHAR\'s Resume.pdf', 'assets/usi_number/1694326013.pdf', 2, 74, '2023-09-10 06:06:53', '2023-09-10 06:06:53'),
(196, 'Photo ID', 'Resume.pdf', 'assets/photo_id/1694326027.pdf', 2, 75, '2023-09-10 06:07:07', '2023-09-10 06:07:07'),
(210, 'Photo ID', 'gittoken.txt', 'assets/photo_id/1694326298.txt', 2, 77, '2023-09-10 06:11:38', '2023-09-10 06:11:38'),
(211, 'Resume', 'gittoken.txt', 'assets/resume/1694326298.txt', 2, 77, '2023-09-10 06:11:38', '2023-09-10 06:11:38'),
(212, 'Reference Letter', 'me.jpeg', 'assets/reference_letter/1694326298.jpeg', 2, 77, '2023-09-10 06:11:38', '2023-09-10 06:11:38'),
(213, 'Visa Copy', 'EFTAKHAR\'s Resume.pdf', 'assets/visa_copy/1694326298.pdf', 2, 77, '2023-09-10 06:11:38', '2023-09-10 06:11:38'),
(214, 'Academic Qualification', 'EFTAKHAR\'s Resume.pdf', 'assets/academic_qualification/1694326298.pdf', 2, 77, '2023-09-10 06:11:38', '2023-09-10 06:11:38'),
(215, 'Photo Video', 'Resume.pdf', 'assets/photo_video/1694326298.pdf', 2, 77, '2023-09-10 06:11:38', '2023-09-10 06:11:38'),
(216, 'Usi Number', 'EFTAKHAR\'s Resume.pdf', 'assets/usi_number/1694326298.pdf', 2, 77, '2023-09-10 06:11:38', '2023-09-10 06:11:38'),
(218, 'Resume', 'EFTAKHAR\'s Resume.pdf', 'assets/files/1694334774.pdf', 2, 1, '2023-09-10 08:32:54', '2023-09-10 08:32:54'),
(219, 'Reference Letter', 'CPC40120 - Certificate IV in Building and Construction.pdf', 'assets/files/1694331449.pdf', 2, 1, '2023-09-10 07:37:29', '2023-09-10 07:37:29'),
(220, 'Visa Copy', 'EFTAKHAR\'s Resume.pdf', 'assets/files/1694335168.pdf', 2, 1, '2023-09-10 08:39:28', '2023-09-10 08:39:28'),
(222, 'Photo Video', 'Resume.pdf', 'assets/files/1694335193.pdf', 2, 1, '2023-09-10 08:39:53', '2023-09-10 08:39:53'),
(223, 'Usi Number', 'EFTAKHAR\'s Resume.pdf', 'assets/files/1694336317.pdf', 2, 1, '2023-09-10 08:58:37', '2023-09-10 08:58:37'),
(224, 'Photo ID', 'Resume.pdf', 'assets/files/1694336365.pdf', 1, 2, '2023-09-10 09:55:40', '2023-09-10 09:55:40'),
(225, 'Resume', 'DASI0046_RPL_Qualificaiton_Asbestos Awareness Training.pdf', 'assets/files/1694332145.pdf', 1, 2, '2023-09-10 09:55:37', '2023-09-10 09:55:37'),
(226, 'Reference Letter', 'Resume.pdf', 'assets/files/1694336950.pdf', 0, 2, '2023-09-10 09:56:34', '2023-09-10 09:56:34'),
(227, 'Visa Copy', 'Kutub Uddin_1.jpg', 'assets/files/1694341321.jpg', 2, 2, '2023-09-10 10:22:01', '2023-09-10 10:22:01'),
(228, 'Academic Qualification', 'DASI0046_RPL_Work Reference_PaySlip 30012019.pdf', 'assets/files/1694339391.pdf', 1, 2, '2023-09-10 09:55:51', '2023-09-10 09:55:51'),
(229, 'Photo Video', 'ATT-Mobile.jpg', 'assets/files/1694332145.jpg', 1, 2, '2023-09-10 09:55:55', '2023-09-10 09:55:55'),
(230, 'Usi Number', 'Screenshot (559)_LI.jpg', 'assets/files/1694339699.jpg', 1, 2, '2023-09-10 09:56:00', '2023-09-10 09:56:00'),
(231, 'Photo ID', 'Mobile-View-1.jpg', 'assets/files/1694332364.jpg', 1, 3, '2023-09-10 08:01:42', '2023-09-10 08:01:42'),
(232, 'Resume', 'DASI0046_RPL-Drive License.pdf', 'assets/files/1694332364.pdf', 1, 3, '2023-09-10 08:01:46', '2023-09-10 08:01:46'),
(233, 'Reference Letter', 'CPC50220 - Diploma of Building and Construction (Building).pdf', 'assets/files/1694332364.pdf', 1, 3, '2023-09-10 08:01:49', '2023-09-10 08:01:49'),
(234, 'Visa Copy', 'ATT-Mobile.jpg', 'assets/files/1694332364.jpg', 1, 3, '2023-09-10 08:01:55', '2023-09-10 08:01:55'),
(235, 'Academic Qualification', 'CHC51015 - Diploma of Counseling.pdf', 'assets/files/1694332364.pdf', 1, 3, '2023-09-10 08:01:57', '2023-09-10 08:01:57'),
(236, 'Photo Video', 'Mobile-View-1.jpg', 'assets/files/1694332364.jpg', 1, 3, '2023-09-10 08:02:02', '2023-09-10 08:02:02'),
(237, 'Usi Number', 'ATT.jpg', 'assets/files/1694332364.jpg', 1, 3, '2023-09-10 08:02:04', '2023-09-10 08:02:04'),
(238, 'Photo ID', 'teacher-working-with-small-group-kids.jpg', 'assets/files/1694340150.jpg', 2, 4, '2023-09-10 10:02:30', '2023-09-10 10:02:30'),
(239, 'Resume', 'front-view-male-lifting-up-car-inspection.jpg', 'assets/files/1694340177.jpg', 2, 4, '2023-09-10 10:02:57', '2023-09-10 10:02:57'),
(240, 'Reference Letter', 'SIT60322 - Advanced Diploma of Hospitality Management.pdf', 'assets/files/1694340150.pdf', 1, 4, '2023-10-10 08:04:44', '2023-10-10 08:04:44'),
(241, 'Visa Copy', 'Applying paint by brush 2 - Wall.jpeg', 'assets/files/1694340150.jpeg', 2, 4, '2023-09-10 10:02:30', '2023-09-10 10:02:30'),
(242, 'Academic Qualification', 'CPC50220 - Diploma of Building and Construction (Building).pdf', 'assets/files/1694340150.pdf', 2, 4, '2023-09-10 10:02:30', '2023-09-10 10:02:30'),
(243, 'Photo Video', 'DASI0046_RPL_Quafliciation - Safety Training.jpg', 'assets/files/1694340150.jpg', 2, 4, '2023-09-10 10:02:30', '2023-09-10 10:02:30'),
(244, 'Usi Number', 'front-view-male-lifting-up-car-inspection (1).jpg', 'assets/files/1694340150.jpg', 2, 4, '2023-09-10 10:02:31', '2023-09-10 10:02:31'),
(245, 'Photo ID', 'me.jpeg', 'assets/files/1695026327.jpeg', 1, 5, '2023-09-18 08:40:01', '2023-09-18 08:40:01'),
(246, 'Resume', 'Resume.pdf', 'assets/files/1695026327.pdf', 1, 5, '2023-09-18 08:40:05', '2023-09-18 08:40:05'),
(247, 'Reference Letter', 'Resume.pdf', 'assets/files/1695026327.pdf', 1, 5, '2023-09-18 08:40:07', '2023-09-18 08:40:07'),
(248, 'Visa Copy', 'Resume.pdf', 'assets/files/1695026327.pdf', 1, 5, '2023-09-18 08:40:10', '2023-09-18 08:40:10'),
(249, 'Academic Qualification', 'Resume.pdf', 'assets/files/1695026327.pdf', 1, 5, '2023-09-18 08:40:16', '2023-09-18 08:40:16'),
(250, 'Photo Video', 'gittoken.txt', 'assets/files/1695027049.txt', 1, 5, '2023-09-18 08:51:35', '2023-09-18 08:51:35'),
(251, 'Usi Number', 'Resume.pdf', 'assets/files/1695026327.pdf', 1, 5, '2023-09-18 08:51:39', '2023-09-18 08:51:39'),
(252, 'Photo ID', 'EFTAKHAR\'s Resume.pdf', 'assets/files/1695282778.pdf', 1, 6, '2023-09-21 07:55:20', '2023-09-21 07:55:20'),
(253, 'Resume', 'Screenshot from 2023-09-04 09-40-29.png', 'assets/files/1695282803.png', 1, 6, '2023-09-21 07:55:24', '2023-09-21 07:55:24'),
(254, 'Reference Letter', '1693205019941.mp4', 'assets/files/1695282778.mp4', 1, 6, '2023-09-21 07:55:28', '2023-09-21 07:55:28'),
(255, 'Visa Copy', 'paid.svg', 'assets/files/1695283020.svg', 1, 6, '2023-09-21 07:57:25', '2023-09-21 07:57:25'),
(256, 'Academic Qualification', '1693205019941.mp4', 'assets/files/1695282778.mp4', 1, 6, '2023-09-21 07:55:50', '2023-09-21 07:55:50'),
(257, 'Photo Video', '1693205019941.mp4', 'assets/files/1695282778.mp4', 1, 6, '2023-09-21 07:55:52', '2023-09-21 07:55:52'),
(258, 'Usi Number', '1693205019941.mp4', 'assets/files/1695282778.mp4', 1, 6, '2023-09-21 07:55:54', '2023-09-21 07:55:54'),
(259, 'Photo ID', 'crm gif.gif', 'assets/files/1698220761.gif', 1, 7, '2023-10-25 08:00:03', '2023-10-25 08:00:03'),
(260, 'Resume', 'Aoip.pdf', 'assets/files/1698220761.pdf', 1, 7, '2023-10-25 08:00:05', '2023-10-25 08:00:05'),
(261, 'Reference Letter', 'Resume.pdf', 'assets/files/1698220761.pdf', 1, 7, '2023-10-25 08:00:08', '2023-10-25 08:00:08'),
(262, 'Visa Copy', 'Quadque about.png', 'assets/files/1698220952.png', 1, 7, '2023-10-25 08:02:57', '2023-10-25 08:02:57'),
(263, 'Academic Qualification', 'Aoip.pdf', 'assets/files/1698220761.pdf', 1, 7, '2023-10-25 08:00:18', '2023-10-25 08:00:18'),
(264, 'Photo Video', 'WhatsApp Image 2023-08-27 at 13.40.15.jpeg', 'assets/files/1698220761.jpeg', 1, 7, '2023-10-25 08:01:19', '2023-10-25 08:01:19'),
(265, 'Usi Number', 'WhatsApp Image 2023-10-10 at 14.07.40.jpeg', 'assets/files/1698220761.jpeg', 1, 7, '2023-10-25 08:01:20', '2023-10-25 08:01:20'),
(266, 'Photo ID', 'WhatsApp Image 2023-10-10 at 14.07.40 (1).jpeg', 'assets/files/1698228658.jpeg', 1, 8, '2023-10-25 10:11:33', '2023-10-25 10:11:33'),
(267, 'Resume', 'Resume.pdf', 'assets/files/1698228658.pdf', 1, 8, '2023-10-25 10:11:35', '2023-10-25 10:11:35'),
(268, 'Reference Letter', 'Aoip.pdf', 'assets/files/1698228658.pdf', 1, 8, '2023-10-25 10:11:36', '2023-10-25 10:11:36'),
(269, 'Visa Copy', 'Quadque about.png', 'assets/files/1698228658.png', 1, 8, '2023-10-25 10:11:36', '2023-10-25 10:11:36'),
(270, 'Academic Qualification', 'screencapture-quadque-tech-products-sap-erp-2023-07-24-12_05_35.pdf', 'assets/files/1698228658.pdf', 1, 8, '2023-10-25 10:11:37', '2023-10-25 10:11:37'),
(271, 'Photo Video', 'All clients logo-20.png', 'assets/files/1698228658.png', 1, 8, '2023-10-25 10:11:39', '2023-10-25 10:11:39'),
(272, 'Usi Number', '35691543.jpg', 'assets/files/1698228658.jpg', 1, 8, '2023-10-25 10:11:42', '2023-10-25 10:11:42'),
(273, 'Photo ID', 'crm gif.gif', 'assets/files/dkMR630573gkGpDUQoTmdYKMjixX8KC0mjICF1mx.gif', 1, 9, '2023-10-25 11:03:43', '2023-10-25 11:03:43'),
(274, 'Resume', 'Resume.pdf', 'assets/files/HD6Cb0VxmaspiEdZLhI9dXk2TjFIsQNJkyDmGiAc.pdf', 1, 9, '2023-10-25 11:03:44', '2023-10-25 11:03:44'),
(275, 'Reference Letter', 'R. M. Automobiles - Requrements.docx', 'assets/files/GDcimcpNMjTsXRQaIrSAi5FjhJeKwadfaVfVVmnx.docx', 1, 9, '2023-10-25 11:03:45', '2023-10-25 11:03:45'),
(276, 'Photo ID', 'crm gif.gif', 'assets/files/rtS9BP3PrzpAWl16SnbpcboK58NWBLJIrFDqJf5B.gif', 2, 10, '2023-10-25 11:17:10', '2023-10-25 11:17:10'),
(277, 'Resume', 'CV of Abdullah Al Mamun-1-merged.pdf', 'assets/files/KLaVjc48MiSoxlry3VcmxrzsJonN9CnZ016zPGQB.pdf', 2, 10, '2023-10-25 11:17:10', '2023-10-25 11:17:10'),
(278, 'Reference Letter', 'R. M. Automobiles - Requrements.docx', 'assets/files/fycPsb1MRd9mDFMV2zSjNVpKKIvJazJROWL4mtkf.docx', 2, 10, '2023-10-25 11:17:10', '2023-10-25 11:17:10'),
(279, 'Photo ID', 'crm gif.gif', 'assets/files/t7xBtWTfd165Z4QrtYdiLZy5UDC77EhUReNA4hOL.gif', 2, 11, '2023-10-25 11:19:23', '2023-10-25 11:19:23'),
(280, 'Resume', 'CV of Abdullah Al Mamun-1-merged.pdf', 'assets/files/CwHQbJ1G2cxMIKXME7oJeYgTUj2Gc3s18ozxHMe5.pdf', 2, 11, '2023-10-25 11:19:24', '2023-10-25 11:19:24'),
(281, 'Reference Letter', 'R. M. Automobiles - Requrements.docx', 'assets/files/QCkWHfQCsIotXEp6ZQYLILNADuMBmA4OoxJNZLSd.docx', 2, 11, '2023-10-25 11:19:24', '2023-10-25 11:19:24'),
(282, 'Photo ID', 'crm gif.gif', 'assets/files/tYPxo2J19f2FdAjQQ4dacYbQhaUM7eB8wgZlMSae.gif', 2, 12, '2023-10-25 11:19:34', '2023-10-25 11:19:34'),
(283, 'Resume', 'CV of Abdullah Al Mamun-1-merged.pdf', 'assets/files/nTIRPSg3D7mGiBLOmVZa5DajbGWQOqh5ood2AmYe.pdf', 2, 12, '2023-10-25 11:19:35', '2023-10-25 11:19:35'),
(284, 'Reference Letter', 'R. M. Automobiles - Requrements.docx', 'assets/files/jvrQyVnIKLXdkRPvsiEUH9adSZXAiSzl49fR7i56.docx', 2, 12, '2023-10-25 11:19:35', '2023-10-25 11:19:35'),
(285, 'Photo ID', 'photo_id.jpeg', 'assets/files/1698234037.jpeg', 1, 13, '2023-10-25 11:43:26', '2023-10-25 11:40:37'),
(286, 'Resume', 'CV of Abdullah Al Mamun-1-merged.pdf', 'assets/files/JWMRs7jFBshXaJbfs7SNuShAhuEmfxNBi0xxjJWH.pdf', 1, 13, '2023-10-25 11:20:58', '2023-10-25 11:20:58'),
(287, 'Reference Letter', 'R. M. Automobiles - Requrements.docx', 'assets/files/kvhLMQEr6mvo21cyi1y8mVMYZhZdoGbg01jCmERQ.docx', 1, 13, '2023-10-25 11:20:59', '2023-10-25 11:20:59'),
(288, 'Visa Copy', 'WhatsApp Image 2023-10-10 at 14.07.41.jpeg', 'assets/files/2pRuhjIG6R941SBRTRsqEFQG1W3et5r0HbK8CVCY.jpg', 1, 13, '2023-10-25 11:20:54', '2023-10-25 11:20:54'),
(289, 'Academic Qualification', 'WhatsApp Image 2023-10-10 at 14.07.40 (1).jpeg', 'assets/files/VLoq4WwHiR0FCuBu2JtFzAIEY8oZrsuaHdXNp7xP.pdf', 1, 13, '2023-10-25 11:20:51', '2023-10-25 11:20:51'),
(290, 'Photo Video', 'Aoip.pdf', 'assets/files/VLoq4WwHiR0FCuBu2JtFzAIEY8oZrsuaHdXNp7xP.pdf', 1, 13, '2023-10-25 11:20:50', '2023-10-25 11:20:50'),
(291, 'Usi Number', 'Resume.pdf', 'assets/files/mrSLQE2GAIOhuu7zXyQlq1fLIAksOBQ03pOeZRpz.pdf', 1, 13, '2023-10-25 11:20:48', '2023-10-25 11:20:48'),
(292, 'Photo ID', 'photo_id.gif', 'assets/files/fCD5eg6UB9N5mYNCbMVsOrv2Z1ayaD4NPjISuTGG.gif', 1, 14, '2023-10-25 11:33:42', '2023-10-25 11:33:42'),
(293, 'Resume', 'Resume.pdf', 'assets/files/dEx53O8BCjA56CTLtOU03QFjhjTQtQ6BtdnBhvaN.pdf', 1, 14, '2023-10-25 11:33:44', '2023-10-25 11:33:44'),
(294, 'Reference Letter', 'reference_letter.docx', 'assets/files/DvOrQBr8z6Z0Rfjq4rquA73JieEfO44CHKlog0FC.docx', 1, 14, '2023-10-25 11:33:44', '2023-10-25 11:33:44'),
(295, 'Visa Copy', 'visa_copy.jpg', 'assets/files/GvchB8dxW9JSwQBONFOJXZePrDlIfHkhonOXRQfm.jpg', 1, 14, '2023-10-25 11:33:49', '2023-10-25 11:33:49'),
(296, 'Academic Qualification', 'academic_qualification.docx', 'assets/files/EqaG4jZPbGECJZVI0COWffuExSbzEVCCKE18nxyx.png', 1, 14, '2023-10-25 11:33:51', '2023-10-25 11:33:51'),
(297, 'Photo Video', 'photo_video.png', 'assets/files/EqaG4jZPbGECJZVI0COWffuExSbzEVCCKE18nxyx.png', 1, 14, '2023-10-25 11:33:53', '2023-10-25 11:33:53'),
(298, 'Usi Number', 'usi_number.jpeg', 'assets/files/c2722CmCY0NGDj0kiQQRqOD0aaOhYvSmrCaDzNhN.jpg', 1, 14, '2023-10-25 11:33:56', '2023-10-25 11:33:56'),
(299, 'Photo ID', 'photo_id.jpeg', 'assets/files/w8PBlmuZfQSvotwXOfTl2tr3UXWqvHEL1fgMJymm.jpg', 1, 15, '2023-10-26 02:58:24', '2023-10-26 02:58:24'),
(300, 'Resume', 'Resume.pdf', 'assets/files/OADHjphUSlNeQNoyF4pZ5oL9N4yvcyXQxJM858xA.pdf', 1, 15, '2023-10-26 02:58:26', '2023-10-26 02:58:26'),
(301, 'Reference Letter', 'reference_letter.docx', 'assets/files/WYeKv53HCADtemw4v18lM4YLd0V6xqWNomol6Kuy.docx', 1, 15, '2023-10-26 02:58:27', '2023-10-26 02:58:27'),
(302, 'Visa Copy', 'visa_copy.jpg', 'assets/files/vJolalPJQxBTDlzqGZO92FADViI5Y4PvaDxzOVxm.jpg', 1, 15, '2023-10-26 02:58:28', '2023-10-26 02:58:28'),
(303, 'Academic Qualification', 'academic_qualification.docx', 'assets/files/dX2OBwxUEraD7g33i5CCutw2oV0A2jeIGsnCmHIY.png', 1, 15, '2023-10-26 02:58:33', '2023-10-26 02:58:33'),
(304, 'Photo Video', 'photo_video.png', 'assets/files/dX2OBwxUEraD7g33i5CCutw2oV0A2jeIGsnCmHIY.png', 1, 15, '2023-10-26 02:58:35', '2023-10-26 02:58:35'),
(305, 'Usi Number', 'usi_number.jpeg', 'assets/files/goIcn1xCwdpiPAe2nqQUEWQFecmE3kt4D5e84Pip.jpg', 1, 15, '2023-10-26 02:58:36', '2023-10-26 02:58:36'),
(306, 'Photo ID', 'photo_id.jpeg', 'assets/files/ayB4rIGzUD7n3IrXj1cWrQBkhWOKj41WUZ0Ee1f1.jpg', 1, 16, '2023-10-26 03:06:19', '2023-10-26 03:06:19'),
(307, 'Resume', 'Resume.pdf', 'assets/files/at6QyFqE4xUWL2Y4hbJtCTeC0KmfF7hK2x7hUJ9E.pdf', 1, 16, '2023-10-26 03:06:20', '2023-10-26 03:06:20'),
(308, 'Reference Letter', 'reference_letter.docx', 'assets/files/Um3eyj6AMtzNaUrzRnIbxC7ZSlz06aWNejyOYxTB.docx', 1, 16, '2023-10-26 03:06:22', '2023-10-26 03:06:22'),
(309, 'Visa Copy', 'visa_copy.jpg', 'assets/files/HSuDNBieMzbWAeRyDsSYB0avqDCjBKx8k6b04OpY.jpg', 1, 16, '2023-10-26 03:06:23', '2023-10-26 03:06:23'),
(310, 'Academic Qualification', 'photo_id.jpeg', 'assets/files/SVKXZ2TjeSYaq1MDABzPY1bjQ0NIpRPdpVkUT1M9.png', 1, 16, '2023-10-26 03:06:26', '2023-10-26 03:06:26'),
(311, 'Photo Video', 'photo_video.png', 'assets/files/SVKXZ2TjeSYaq1MDABzPY1bjQ0NIpRPdpVkUT1M9.png', 1, 16, '2023-10-26 03:06:28', '2023-10-26 03:06:28'),
(312, 'Usi Number', 'usi_number.jpeg', 'assets/files/lUgosDWQSigGFktyJxM8iWZm9KdYMeeEMH1da4Rw.jpg', 1, 16, '2023-10-26 03:06:29', '2023-10-26 03:06:29'),
(313, 'Photo ID', 'photo_id.jpeg', 'assets/files/4pF0zw7Jez5rmLwPSUuflpyASaXICvEKGWsdIFYl.jpg', 1, 17, '2023-10-26 03:26:12', '2023-10-26 03:26:12'),
(314, 'Resume', 'Resume.pdf', 'assets/files/FkZtCWeSYHXHUJzbRjrrZJS7ofsYHuEYDQOAC7p8.pdf', 1, 17, '2023-10-26 03:26:13', '2023-10-26 03:26:13'),
(315, 'Reference Letter', 'reference_letter.docx', 'assets/files/lPnGHPzLRnURjJXeESYb8vUqF5YTvRr4PdIkP1Wj.docx', 1, 17, '2023-10-26 03:26:14', '2023-10-26 03:26:14'),
(316, 'Visa Copy', 'visa_copy.jpg', 'assets/files/WKtazvu5kL6RT5AyV6V9Qfk7V0HJxr35xWnGmcsV.jpg', 1, 17, '2023-10-26 03:26:15', '2023-10-26 03:26:15'),
(317, 'Academic Qualification', 'academic_qualification.docx', 'assets/files/d6cU0HMviHa0IQ42KhizxHPnwXkYWGHyNlt2485h.png', 1, 17, '2023-10-26 03:26:16', '2023-10-26 03:26:16'),
(318, 'Photo Video', 'photo_video.png', 'assets/files/d6cU0HMviHa0IQ42KhizxHPnwXkYWGHyNlt2485h.png', 1, 17, '2023-10-26 03:26:18', '2023-10-26 03:26:18'),
(319, 'Usi Number', 'usi_number.jpeg', 'assets/files/uZtrgYPIM9iLUJeOWLdht8lD0ziCTUZiHXJM99Bu.jpg', 1, 17, '2023-10-26 03:26:21', '2023-10-26 03:26:21'),
(320, 'Photo ID', 'photo_id.jpeg', 'assets/files/qEwujCVhv7rzBgrTk7uHE9MHonILpzKVvP0Dj02G.jpg', 1, 18, '2023-10-26 03:33:54', '2023-10-26 03:33:54'),
(321, 'Resume', 'Resume.pdf', 'assets/files/1izIuPNY7FtbHCwwiArhZ0hR1gPLhGwJvSyaE0U0.pdf', 1, 18, '2023-10-26 03:33:55', '2023-10-26 03:33:55'),
(322, 'Reference Letter', 'reference_letter.docx', 'assets/files/ii2VB9EnCHWp7TEq1T1bjWTuyEwT6NAIwguz3cmY.docx', 1, 18, '2023-10-26 03:33:57', '2023-10-26 03:33:57'),
(323, 'Visa Copy', 'visa_copy.jpg', 'assets/files/mABm3cV9PogY6NUT4Sl1f5Rr4zQxZPV7o6p6bJPt.jpg', 1, 18, '2023-10-26 03:33:58', '2023-10-26 03:33:58'),
(324, 'Academic Qualification', 'academic_qualification.docx', 'assets/files/Et4Wi0DEZocHW55cvBFqeVpByYFaUJTumn9uCzND.docx', 1, 18, '2023-10-26 03:33:59', '2023-10-26 03:33:59'),
(325, 'Photo Video', 'photo_video.png', 'assets/files/LhCW282pwMeboW3BCVR2g4ifnb71GH5j6zDpTGhb.png', 1, 18, '2023-10-26 03:34:00', '2023-10-26 03:34:00'),
(326, 'Usi Number', 'usi_number.jpeg', 'assets/files/e5Nfx99iOWG7jWr9oV9Zv4LtgixDAg1aaShvzlTa.jpg', 1, 18, '2023-10-26 03:34:02', '2023-10-26 03:34:02'),
(327, 'Photo ID', 'crm gif.gif', 'assets/files/4LdVglmZB8At5PiB688hgfWnbfV0bEyiNWd7Ojee.gif', 1, 19, '2023-10-26 03:38:07', '2023-10-26 03:38:07'),
(328, 'Resume', 'Resume.pdf', 'assets/files/mJpuJNeybtOEWVh2uWlAaCqQlXCyz95521KFYuoR.pdf', 1, 19, '2023-10-26 03:38:08', '2023-10-26 03:38:08'),
(329, 'Reference Letter', 'reference_letter.docx', 'assets/files/pi9GcHjazFAkRMbd06AXgMKXVNxvzNJLGyoPp2QC.docx', 1, 19, '2023-10-26 03:38:09', '2023-10-26 03:38:09'),
(330, 'Visa Copy', 'visa_copy.jpg', 'assets/files/6rpNAeQQFsomTMYVKPQVHawYZRkcVufHC7EPCyzY.jpg', 1, 19, '2023-10-26 03:38:10', '2023-10-26 03:38:10'),
(331, 'Academic Qualification', 'academic_qualification.docx', 'assets/files/aDj9YZVdPBanGl6zfZv3LtM48spkTyo8U8qMQwiS.docx', 1, 19, '2023-10-26 03:38:11', '2023-10-26 03:38:11'),
(332, 'Photo Video', 'RPL Leads -1- ATR-QQ.csv', 'assets/files/pbJTsh3aWOKSqf9dSrDBcHKk4otWmOeHJBKr2YB7.csv', 1, 19, '2023-10-26 03:38:13', '2023-10-26 03:38:13'),
(333, 'Usi Number', 'usi_number.jpeg', 'assets/files/jIQqarxI1ugP68wzblvOl8H1YSaxpqEPoB1EJgc7.jpg', 1, 19, '2023-10-26 03:38:15', '2023-10-26 03:38:15'),
(334, 'Photo ID', 'photo_id.jpeg', 'assets/files/msboTGwW8SigGLpHtwGcLLVoMrlFPChYyDdaUUJV.jpg', 1, 20, '2023-10-31 04:51:01', '2023-10-31 04:51:01'),
(335, 'Resume', 'Quadque about.png', 'assets/files/1698727978.png', 1, 20, '2023-10-31 04:53:28', '2023-10-31 04:53:28'),
(336, 'Reference Letter', 'reference_letter.docx', 'assets/files/KKd9DWFHDzwx0I6evUlL8l0WgCTa6zeEw911Wc24.docx', 1, 20, '2023-10-31 04:53:31', '2023-10-31 04:53:31'),
(337, 'Visa Copy', 'visa_copy.jpg', 'assets/files/jKpKAaSwSm1wrgIKert83cuFvjiuKWibAUHiwtZ9.jpg', 1, 20, '2023-10-31 04:53:32', '2023-10-31 04:53:32'),
(338, 'Academic Qualification', 'academic_qualification.docx', 'assets/files/MRUhXirLlDsIknqD6JUY88uoQMZGjbiCqz1c2RKC.docx', 1, 20, '2023-10-31 04:53:33', '2023-10-31 04:53:33'),
(339, 'Photo Video', '1695282778.mp4', 'assets/files/EvJj5dfJhhILdSohJneTsUcMLF6d4IgTkGbcayEZ.mp4', 1, 20, '2023-10-31 04:53:38', '2023-10-31 04:53:38'),
(340, 'Usi Number', 'usi_number.jpeg', 'assets/files/HaB8DSSmXBxl0OARbflo5iluOJzIHH1a7pJ6vrGC.jpg', 1, 20, '2023-10-31 04:53:35', '2023-10-31 04:53:35');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(14, 'App\\Models\\User', 10, 'API_TOKEN', 'a86757cbba790ea175895a448ffd978b1c22f58da9b310b6a5577fae5cfbdccc', '[\"*\"]', NULL, '2023-08-03 08:00:29', '2023-08-03 08:00:29'),
(15, 'App\\Models\\User', 10, 'API_TOKEN', '783d4c026022087bc10a63cc2f0a142d108f3f3462d83a0702b8695f68e7eb79', '[\"*\"]', NULL, '2023-08-03 08:02:05', '2023-08-03 08:02:05'),
(16, 'App\\Models\\User', 10, 'API_TOKEN', '6a93a4d38b89abfcb4f35ada0b275456641b4b30ef771b4402de7111d02ca5fe', '[\"*\"]', NULL, '2023-08-03 08:05:02', '2023-08-03 08:05:02'),
(17, 'App\\Models\\User', 10, 'API_TOKEN', '7f92116a2442f1e71e7c15d02b2fa8ec005815982374845c6ffb390fd58a1b23', '[\"*\"]', NULL, '2023-08-03 08:24:41', '2023-08-03 08:24:41'),
(18, 'App\\Models\\User', 10, 'API_TOKEN', '3601916ea426b96bfd32a8de7149f4f490899ab9d112a1a72b0d21e7b238be4e', '[\"*\"]', NULL, '2023-08-03 08:27:12', '2023-08-03 08:27:12'),
(19, 'App\\Models\\User', 10, 'API_TOKEN', '9551d87c0b77fa727bc4baaa30f0509ab4544a368c1e3cf26f3fb32852ddbe8c', '[\"*\"]', NULL, '2023-08-03 08:30:47', '2023-08-03 08:30:47'),
(20, 'App\\Models\\User', 10, 'API_TOKEN', 'cc7d1b5a2a1497d0c0abc3999c8e7e0b225d391828f7bb3eaae2e6022dac5b90', '[\"*\"]', NULL, '2023-08-03 08:34:08', '2023-08-03 08:34:08'),
(21, 'App\\Models\\User', 10, 'API_TOKEN', '843d3aea7dbb0faf915ba84c9b54a89b2b06cc28da16cb2ca5cbcbcb4241b902', '[\"*\"]', NULL, '2023-08-03 09:58:25', '2023-08-03 09:58:25'),
(23, 'App\\Models\\User', 10, 'API_TOKEN', '7eb43dfcc89b4794f34d40036a1bc9555443baece08b99323599f229d1f3fb9a', '[\"*\"]', NULL, '2023-08-03 10:40:58', '2023-08-03 10:40:58'),
(25, 'App\\Models\\User', 10, 'API_TOKEN', '1cd5329f709a1b4147be6031fa193006c1b8ef5288859fcb8450e858815035ca', '[\"*\"]', NULL, '2023-08-03 10:46:31', '2023-08-03 10:46:31'),
(26, 'App\\Models\\User', 10, 'API_TOKEN', '2a7839c759f8eb018acae4e3a5ed4d5f24702bcde795ba7793b6ca5e905c63e1', '[\"*\"]', NULL, '2023-08-03 10:51:24', '2023-08-03 10:51:24'),
(27, 'App\\Models\\User', 10, 'API_TOKEN', 'fc3b17b7eefeef020a932f3a200e7475cac5ceb546515235320f3778d69f7fdb', '[\"*\"]', NULL, '2023-08-03 11:54:53', '2023-08-03 11:54:53'),
(28, 'App\\Models\\User', 10, 'API_TOKEN', 'd8e13143cd774d886f02c90415ace2fba2de9a38c206563e6f1136e4e9d39284', '[\"*\"]', NULL, '2023-08-03 12:06:51', '2023-08-03 12:06:51'),
(29, 'App\\Models\\User', 10, 'API_TOKEN', 'ee7bceffe58d608cec166c996cbd9069c9f77cddc78f76a4de7c242941023b28', '[\"*\"]', NULL, '2023-08-03 12:18:07', '2023-08-03 12:18:07'),
(30, 'App\\Models\\User', 10, 'API_TOKEN', 'db501a6b9092175e5dada8487e8b2cfe1d21ef3c8d4de9e50685804975d122db', '[\"*\"]', NULL, '2023-08-04 05:31:05', '2023-08-04 05:31:05'),
(31, 'App\\Models\\User', 10, 'API_TOKEN', '5283fc17ae58df0908ca1950ddee2e631a691e710f20f9301a4ba2490a2933e5', '[\"*\"]', NULL, '2023-08-06 03:18:23', '2023-08-06 03:18:23'),
(32, 'App\\Models\\User', 10, 'API_TOKEN', '269c526a30e906a2a4a384bdeab471dea6a0af0c837cf22446c458e9a5eb53ea', '[\"*\"]', NULL, '2023-08-06 06:22:43', '2023-08-06 06:22:43'),
(33, 'App\\Models\\User', 10, 'API_TOKEN', '57c60b4345c01963c32553db3389cb1eada94d650184649beb99406c83fed046', '[\"*\"]', NULL, '2023-08-06 06:22:57', '2023-08-06 06:22:57'),
(34, 'App\\Models\\User', 10, 'API_TOKEN', 'a888b8d10605e98a119ea312a283a2565d4c52f09bd7856f353875a21ba57833', '[\"*\"]', NULL, '2023-08-06 06:23:07', '2023-08-06 06:23:07'),
(35, 'App\\Models\\User', 10, 'API_TOKEN', '0f98f24e326be95eebaa705be8344e57a3fed65e58a518654c10f2be6cae6040', '[\"*\"]', NULL, '2023-08-06 06:23:15', '2023-08-06 06:23:15'),
(36, 'App\\Models\\User', 10, 'API_TOKEN', '075aa02851af3cede3f172a81026d32614fd373359267e452b1d872fabefaee5', '[\"*\"]', NULL, '2023-08-06 06:24:08', '2023-08-06 06:24:08'),
(37, 'App\\Models\\User', 13, 'API_TOKEN', 'a8c5accf9606231ddd54899ffea384a34427da7a044579a4018bebfa9fed1d8d', '[\"*\"]', NULL, '2023-08-06 06:45:52', '2023-08-06 06:45:52'),
(38, 'App\\Models\\User', 13, 'API_TOKEN', '2c467dc7c45ea37962f5d964c70c18ee20b9087aa7b0aee360ef2d3b5f3610a2', '[\"*\"]', NULL, '2023-08-06 06:55:52', '2023-08-06 06:55:52'),
(39, 'App\\Models\\User', 10, 'API_TOKEN', '73f64a078f3dda54c603fa5a8e4ff3657f4cb6b9c098a8ca4a6c7407f4710160', '[\"*\"]', NULL, '2023-08-06 07:03:55', '2023-08-06 07:03:55'),
(41, 'App\\Models\\User', 13, 'API_TOKEN', 'c72da13e72e012d3bb16061ed6fc29f6d7bdd47d82e9cc8a59ce694b279cc163', '[\"*\"]', NULL, '2023-08-06 07:04:22', '2023-08-06 07:04:22'),
(43, 'App\\Models\\User', 10, 'API_TOKEN', 'cc107ac9fdfdc598cff673af543e9392941fffedbc98dc91e6707e7b80384511', '[\"*\"]', NULL, '2023-08-06 07:37:25', '2023-08-06 07:37:25'),
(44, 'App\\Models\\User', 13, 'API_TOKEN', '38a0c60d05fbdef40b272e8cc21ea2ca2e1ca3a7012eb15b3ee77bfa1baefc56', '[\"*\"]', NULL, '2023-08-06 07:37:46', '2023-08-06 07:37:46'),
(45, 'App\\Models\\User', 10, 'API_TOKEN', '1cec86f74887dd5af4fa8c7eb937fd6215a79cefa2477e66fa503398040fc7d4', '[\"*\"]', NULL, '2023-08-06 08:23:24', '2023-08-06 08:23:24'),
(46, 'App\\Models\\User', 13, 'API_TOKEN', '4d17640a3c41f221cef9fc1c39da939f913ad8284f3309e233dc08f275b8ce72', '[\"*\"]', NULL, '2023-08-06 08:32:26', '2023-08-06 08:32:26'),
(47, 'App\\Models\\User', 10, 'API_TOKEN', '4b4291417a5f487cd61259f56dc741f46f6c10137fd4d0ac92a12199363c630e', '[\"*\"]', NULL, '2023-08-06 09:30:08', '2023-08-06 09:30:08'),
(48, 'App\\Models\\User', 13, 'API_TOKEN', '4030ef34f5d60830e5a717524e30f7d9fe9c4c5317a9cd65b08a32cedd366253', '[\"*\"]', NULL, '2023-08-06 09:46:52', '2023-08-06 09:46:52'),
(49, 'App\\Models\\User', 10, 'API_TOKEN', '55177ed17a8aa5d151db739276dc16c80bd72073f93288f77e2b966074f8c154', '[\"*\"]', NULL, '2023-08-06 10:13:36', '2023-08-06 10:13:36'),
(50, 'App\\Models\\User', 13, 'API_TOKEN', '0d628b1a4ef1bf6ee4aac9dd9cf786bd3bf0bf694b4569eaa82f3888b6d2dd20', '[\"*\"]', NULL, '2023-08-06 10:15:04', '2023-08-06 10:15:04'),
(51, 'App\\Models\\User', 10, 'API_TOKEN', '4a4b8c473bf57505e711525fda44b33a242921cea53f53371d72220c023f4245', '[\"*\"]', NULL, '2023-08-06 10:18:18', '2023-08-06 10:18:18'),
(52, 'App\\Models\\User', 13, 'API_TOKEN', '28fae6fc3a641a90de8883ddd33fe6b4712f2634d19ca60897f525244e48a777', '[\"*\"]', NULL, '2023-08-06 11:26:12', '2023-08-06 11:26:12'),
(53, 'App\\Models\\User', 10, 'API_TOKEN', 'a5149041e965bc2b00b3d6b974e080a988483058fb684aa2ba6332cccde880c1', '[\"*\"]', NULL, '2023-08-06 11:38:06', '2023-08-06 11:38:06'),
(54, 'App\\Models\\User', 13, 'API_TOKEN', 'e1b04917bef642ad9a5f572b34a8c50c0241b1197a7a454a06fd2f2073864e93', '[\"*\"]', NULL, '2023-08-06 11:38:53', '2023-08-06 11:38:53'),
(55, 'App\\Models\\User', 13, 'API_TOKEN', '657eb050ef56178f23ab40a9bfc7b0ad7c37830b10ec1dea61e65746e9f69057', '[\"*\"]', NULL, '2023-08-07 03:09:41', '2023-08-07 03:09:41'),
(56, 'App\\Models\\User', 10, 'API_TOKEN', '3eca94f26e9de264abce84a77101b752e14c2e83e8b2e8ca40451a654ce10d60', '[\"*\"]', NULL, '2023-08-07 03:19:48', '2023-08-07 03:19:48'),
(57, 'App\\Models\\User', 10, 'API_TOKEN', 'f9c5d0c5c8f558ae1dc32f39865615f74491049ffb22700df057df06b2f46599', '[\"*\"]', NULL, '2023-08-07 04:37:27', '2023-08-07 04:37:27'),
(58, 'App\\Models\\User', 13, 'API_TOKEN', '6ae46f42ea04e649ec22b441a1f356589839318be79054b572cd2f3b244a23de', '[\"*\"]', NULL, '2023-08-07 04:38:57', '2023-08-07 04:38:57'),
(59, 'App\\Models\\User', 10, 'API_TOKEN', '152e197017ed42cb756f2f1e68a1ae4d2fd64a057ab90b15d27d2e308459a3f0', '[\"*\"]', NULL, '2023-08-07 04:41:07', '2023-08-07 04:41:07'),
(61, 'App\\Models\\User', 13, 'API_TOKEN', '8c3dee709a3e613a78ff6255da293781d0f68bada2c1e1182b96945ac54be62d', '[\"*\"]', NULL, '2023-08-07 06:40:30', '2023-08-07 06:40:30'),
(65, 'App\\Models\\User', 13, 'API_TOKEN', '74e8c640b901e4c89a60c39cacbf1b41a1628eb4d4ad1bb4059a43638c5f7b88', '[\"*\"]', '2023-08-07 07:32:48', '2023-08-07 07:22:51', '2023-08-07 07:32:48'),
(66, 'App\\Models\\User', 13, 'API_TOKEN', '1193691d49fe6a2706550bbe0475ecea8bbd7effb5613ec9bf7086ab1a3c6a2e', '[\"*\"]', '2023-08-07 07:27:53', '2023-08-07 07:24:11', '2023-08-07 07:27:53'),
(68, 'App\\Models\\User', 10, 'API_TOKEN', '986cde7b4287908835e8f2c2d2a190e860a746222ce9d42a6db8023dfba6a352', '[\"*\"]', NULL, '2023-08-07 07:32:01', '2023-08-07 07:32:01'),
(69, 'App\\Models\\User', 1, 'API_TOKEN', 'cc7532650712299be9b00f84e37a7532866d15a0df7858a7cc772279cadce19f', '[\"*\"]', '2023-08-07 07:32:27', '2023-08-07 07:32:15', '2023-08-07 07:32:27'),
(70, 'App\\Models\\User', 13, 'API_TOKEN', '8959598045a0baff97fadc800a11302b306ed62153061f70938129e1cd56d139', '[\"*\"]', '2023-08-07 08:06:56', '2023-08-07 07:32:58', '2023-08-07 08:06:56'),
(71, 'App\\Models\\User', 13, 'API_TOKEN', 'bef1868880584d7aa74e8776b16363caa6d9c4c361062719281b5d3e0e71d501', '[\"*\"]', '2023-08-09 09:58:13', '2023-08-07 07:40:14', '2023-08-09 09:58:13'),
(72, 'App\\Models\\User', 13, 'API_TOKEN', '9374cb209b32a2775aa7b28850b07adf78df1ca2e30cc608f7e9128def0b75e2', '[\"*\"]', '2023-08-07 08:23:07', '2023-08-07 08:12:26', '2023-08-07 08:23:07'),
(73, 'App\\Models\\User', 15, 'API_TOKEN', '15fefcd31e423abb0ef25515c6cf8d54f0f2a95b434d38695a75f46949c0c30e', '[\"*\"]', '2023-08-07 08:35:53', '2023-08-07 08:20:57', '2023-08-07 08:35:53'),
(74, 'App\\Models\\User', 13, 'API_TOKEN', '52f4368812904c19b8b3cda7f0c8454dca997dd40d55f54b21b3e8f39111fea8', '[\"*\"]', '2023-08-07 08:23:51', '2023-08-07 08:23:40', '2023-08-07 08:23:51'),
(75, 'App\\Models\\User', 15, 'API_TOKEN', '2b8286158e6751d1a9be040023d04937b058f18dabe092c781729f2eb5b63299', '[\"*\"]', '2023-08-07 08:24:26', '2023-08-07 08:24:11', '2023-08-07 08:24:26'),
(76, 'App\\Models\\User', 10, 'API_TOKEN', '6a1b986346e40358201293d8e4b3daa3dc6fefdae92a00cc3b5e2ec66e35a70b', '[\"*\"]', '2023-08-07 08:33:12', '2023-08-07 08:24:39', '2023-08-07 08:33:12'),
(77, 'App\\Models\\User', 13, 'API_TOKEN', '8457499aac03cf8a6589f79fbef8d0d3673005067fc769eed7bc8502efb5e335', '[\"*\"]', '2023-08-08 11:33:12', '2023-08-07 08:36:08', '2023-08-08 11:33:12'),
(78, 'App\\Models\\User', 13, 'API_TOKEN', '02c7fd2a68d6d79981be0f910f7ccb444de5031a3803638e4a5493e6f39be8f3', '[\"*\"]', '2023-08-08 05:28:55', '2023-08-07 09:17:04', '2023-08-08 05:28:55'),
(79, 'App\\Models\\User', 13, 'API_TOKEN', '62228b41c2bc2aa817503079c9d1cf2c9a1df98e14f392cbc11b7117855717ea', '[\"*\"]', '2023-08-08 05:41:50', '2023-08-08 05:39:36', '2023-08-08 05:41:50'),
(80, 'App\\Models\\User', 10, 'API_TOKEN', 'c18053fd3c62b254a0790529c1abd448a67526288cadd8d849e8129edf449c6c', '[\"*\"]', '2023-08-08 10:51:51', '2023-08-08 10:44:22', '2023-08-08 10:51:51'),
(81, 'App\\Models\\User', 10, 'API_TOKEN', 'bcc330ca144d720bd7ee94aa5352dc37488db7cc9b306b5e37095d4ad9e2025c', '[\"*\"]', '2023-08-08 10:47:03', '2023-08-08 10:45:59', '2023-08-08 10:47:03'),
(82, 'App\\Models\\User', 13, 'API_TOKEN', 'cb3d960de6547332e2152037838db3d363fd9bb995c4e6319ff8aac8e957d1aa', '[\"*\"]', '2023-08-08 10:49:18', '2023-08-08 10:48:37', '2023-08-08 10:49:18'),
(83, 'App\\Models\\User', 13, 'API_TOKEN', '964cfaafdbcd8044cbc01c9d9b89b8edfc0cd56d9703c9faaccec2998c032269', '[\"*\"]', '2023-08-09 07:15:42', '2023-08-08 10:49:37', '2023-08-09 07:15:42'),
(84, 'App\\Models\\User', 10, 'API_TOKEN', '6999acfe6754950cb958d6f43e84592b0e1c1b1f3c19d4a2ab1277b77a4ee085', '[\"*\"]', '2023-08-08 10:53:51', '2023-08-08 10:50:10', '2023-08-08 10:53:51'),
(85, 'App\\Models\\User', 13, 'API_TOKEN', '97578675b64f16d2aea2c99221811cb60da8746d35c500a4088296801c8c788c', '[\"*\"]', '2023-08-08 11:17:44', '2023-08-08 10:53:10', '2023-08-08 11:17:44'),
(86, 'App\\Models\\User', 13, 'API_TOKEN', '933566e1e39b3f6bbb0fcd0ea93c0e0441cd4ffa799b1cde14d30c5906048a0e', '[\"*\"]', '2023-08-08 11:06:56', '2023-08-08 10:55:13', '2023-08-08 11:06:56'),
(87, 'App\\Models\\User', 10, 'API_TOKEN', 'c1b0f3c5ec5f8c03a28213fed6abc78ffc940839d58008d411406b8bc5078e1e', '[\"*\"]', '2023-08-08 14:32:25', '2023-08-08 14:22:45', '2023-08-08 14:32:25'),
(88, 'App\\Models\\User', 13, 'API_TOKEN', '833f741ebc48a430814bf3a8c1bc40b172aa080876c5a3ca3e4ca98642e86d15', '[\"*\"]', '2023-08-12 17:20:34', '2023-08-08 15:22:05', '2023-08-12 17:20:34'),
(89, 'App\\Models\\User', 13, 'API_TOKEN', '85e8fc7bed394707e8fe84a0ae5cf02e610fa1a8cd01008b71e0f9d4bdca8281', '[\"*\"]', NULL, '2023-08-09 03:40:07', '2023-08-09 03:40:07'),
(90, 'App\\Models\\User', 13, 'API_TOKEN', 'dd84b93d112e8b374f54e6e855a68d8866fdcc0f22d46e00838d5dc9067f7fb7', '[\"*\"]', NULL, '2023-08-09 03:40:27', '2023-08-09 03:40:27'),
(91, 'App\\Models\\User', 13, 'API_TOKEN', 'd40e947f35f4f435d45f6f2fb2208b593ded5a57d60ece5bea5567f5e46ae525', '[\"*\"]', '2023-08-09 03:42:50', '2023-08-09 03:42:24', '2023-08-09 03:42:50'),
(92, 'App\\Models\\User', 13, 'API_TOKEN', '624c6ccecfd28094000013d551d9f2f513e5bdfe081754e8b407be53b47a6232', '[\"*\"]', '2023-08-09 10:02:32', '2023-08-09 04:46:09', '2023-08-09 10:02:32'),
(93, 'App\\Models\\User', 10, 'API_TOKEN', 'd436b24e527c826c20d260c9a3a71a4d609e400acce553ff3f0cd962d06d7c2e', '[\"*\"]', '2023-08-09 07:39:40', '2023-08-09 07:16:56', '2023-08-09 07:39:40'),
(94, 'App\\Models\\User', 13, 'API_TOKEN', '2b7c8d50ed8fb5d23500612bb83a15331ac1419beea3e2df61c64159b1a86c5d', '[\"*\"]', '2023-08-09 07:52:17', '2023-08-09 07:51:40', '2023-08-09 07:52:17'),
(95, 'App\\Models\\User', 10, 'API_TOKEN', '7f76c6eb5446440c502d51661d01842a0ea0bfcead9bdb7942a54eb2a4492d31', '[\"*\"]', '2023-08-09 07:55:05', '2023-08-09 07:52:31', '2023-08-09 07:55:05'),
(96, 'App\\Models\\User', 13, 'API_TOKEN', 'b40d9dbe9d7a68a7644ac136ec02bf4f159e4caa1f9c626bae6e5ec1694b32ee', '[\"*\"]', '2023-08-09 08:27:25', '2023-08-09 08:15:49', '2023-08-09 08:27:25'),
(97, 'App\\Models\\User', 10, 'API_TOKEN', 'd149215f1b1196cb86cbdd08de5ef1272a8800a03c121dab4c14581c859a716a', '[\"*\"]', '2023-08-09 08:30:27', '2023-08-09 08:27:55', '2023-08-09 08:30:27'),
(98, 'App\\Models\\User', 13, 'API_TOKEN', '43ea3e769c673593069bea81ac2f7315b7640000fc03b1579224525678bd8106', '[\"*\"]', '2023-08-09 08:35:13', '2023-08-09 08:33:05', '2023-08-09 08:35:13'),
(99, 'App\\Models\\User', 10, 'API_TOKEN', '85a0c1e4814fc32706bac634b7fecf58ef1448f366e13de9fca08630d38a9d46', '[\"*\"]', '2023-08-09 10:27:25', '2023-08-09 08:35:28', '2023-08-09 10:27:25'),
(100, 'App\\Models\\User', 13, 'API_TOKEN', '9403d304f49521bdbc0d4df9a75cfc4ca16d334b2ac8b7737131df0d1a1bd9a5', '[\"*\"]', '2023-08-09 09:52:37', '2023-08-09 08:42:01', '2023-08-09 09:52:38'),
(101, 'App\\Models\\User', 1, 'API_TOKEN', 'f8c55c807aae2dea4ff2dcbb367c49e2843d2ccc14f5cbc20c8caba0c9467e3f', '[\"*\"]', '2023-08-09 10:13:27', '2023-08-09 10:03:33', '2023-08-09 10:13:27'),
(102, 'App\\Models\\User', 10, 'API_TOKEN', '294bef9e78f1922176a8eb38c58320d633435d5fe19566dd115098a85ebfcca1', '[\"*\"]', '2023-08-09 10:38:43', '2023-08-09 10:34:59', '2023-08-09 10:38:43'),
(103, 'App\\Models\\User', 13, 'API_TOKEN', 'e1e13a91722ab700e56afcde3f812329489aa6080546890905f649b4e2f5bec2', '[\"*\"]', '2023-08-09 19:27:40', '2023-08-09 11:02:03', '2023-08-09 19:27:40'),
(104, 'App\\Models\\User', 13, 'API_TOKEN', '9912a290248306fb3ea0d9d905a26ba1b51899722862db7b8115fb44da1fa335', '[\"*\"]', '2023-08-10 03:50:24', '2023-08-10 03:18:10', '2023-08-10 03:50:24'),
(105, 'App\\Models\\User', 25, 'API_TOKEN', '165f8b577bea3f1682314b12bc89658566ae32063562c69635432343afadaec6', '[\"*\"]', '2023-08-13 04:16:16', '2023-08-13 04:15:51', '2023-08-13 04:16:16'),
(106, 'App\\Models\\User', 10, 'API_TOKEN', 'bc851988fc3831906e1afdfcbe512f20ad2062ca410b1df741063ed2a1aef841', '[\"*\"]', '2023-08-13 09:10:32', '2023-08-13 09:10:25', '2023-08-13 09:10:32'),
(107, 'App\\Models\\User', 10, 'API_TOKEN', 'e49327a1f44574df2cc9c9c52a67ffb523c4e2bd4ad1234d789b12871ee2a6a3', '[\"*\"]', NULL, '2023-08-17 04:39:42', '2023-08-17 04:39:42');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_name` text NOT NULL,
  `course_name` text NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `agency_email` varchar(255) NOT NULL,
  `agency_name` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 2,
  `comment` text DEFAULT NULL,
  `pay_slip` varchar(255) DEFAULT NULL,
  `pay_slip_status` int(11) DEFAULT NULL COMMENT '0 = pending, 1 = approve, 2 = Disapprove',
  `certificate` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `student_name`, `course_name`, `course_id`, `user_id`, `agency_email`, `agency_name`, `status`, `comment`, `pay_slip`, `pay_slip_status`, `certificate`, `created_at`, `updated_at`) VALUES
(1, 'Atika', 'cpp40516 - certificate iv in strata community management', 469, 172, 'ejmahadiair@gmail.com', 'Jaman mahadi', 0, NULL, NULL, NULL, NULL, '2023-09-10 07:37:29', '2023-09-10 07:42:26'),
(2, 'Rubayat', 'bsb40520 - certificate iv in leadership and management', 411, 172, 'ejmahadiair@gmail.com', 'Jaman mahadi', 0, NULL, NULL, NULL, NULL, '2023-09-10 07:49:05', '2023-09-10 09:56:34'),
(3, 'Jaman', 'hlt33021 - certificate iii in allied health assistance', 413, 172, 'ejmahadiair@gmail.com', 'Jaman mahadi', 1, NULL, 'assets/pay_slip/1694333051.pdf', 1, 'assets/certificate/1694333389.pdf', '2023-09-10 07:52:44', '2023-09-10 08:09:49'),
(4, 'sdf', 'builder\'s license', 338, 172, 'ejmahadiair@gmail.com', 'Jaman mahadi', 2, NULL, NULL, NULL, NULL, '2023-09-10 10:02:30', '2023-10-10 08:04:44'),
(5, 'mahfuz', 'cpp40516 - certificate iv in strata community management', 469, 172, 'ejmahadiair@gmail.com', 'Jaman mahadi', 1, NULL, 'assets/pay_slip/1695185413.mp4', 1, 'assets/certificate/1695027819.png', '2023-09-18 08:38:47', '2023-09-20 04:51:52'),
(6, 'kio ki khobor', 'RIIWHS206 Control traffic with portable traffic control devices and temporary traffic signs', 491, 172, 'ejmahadiair@gmail.com', 'Jaman mahadi', 1, NULL, 'assets/pay_slip/1695283172.mp4', 1, 'assets/certificate/1695283230.mp4', '2023-09-21 07:52:58', '2023-09-21 08:00:30'),
(7, 'Tanjib', 'builder\'s license', 814, 172, 'ejmahadiair@gmail.com', 'Jaman mahadi', 1, NULL, 'assets/pay_slip/1698221233.jpeg', 1, 'assets/certificate/1698221382.jpeg', '2023-10-25 07:59:21', '2023-10-25 08:09:42'),
(8, 'test user', 'CPCWHS1001 - Prepare to work safely in the construction industry', 759, 172, 'ejmahadiair@gmail.com', 'Jaman mahadi', 1, NULL, 'assets/pay_slip/1698228793.pdf', 1, NULL, '2023-10-25 10:10:58', '2023-10-25 10:13:48'),
(9, 'test 2', 'CPCWHS1001 - Prepare to work safely in the construction industry', 758, 172, 'ejmahadiair@gmail.com', 'Jaman mahadi', 2, NULL, 'assets/pay_slip/1698231906.pdf', 1, NULL, '2023-10-25 11:02:36', '2023-10-25 11:12:35'),
(10, 'test 3', 'builder\'s license', 784, 172, 'ejmahadiair@gmail.com', 'Jaman mahadi', 2, NULL, NULL, NULL, NULL, '2023-10-25 11:17:09', '2023-10-25 11:17:09'),
(11, 'test 3', 'builder\'s license', 784, 172, 'ejmahadiair@gmail.com', 'Jaman mahadi', 2, NULL, NULL, NULL, NULL, '2023-10-25 11:19:22', '2023-10-25 11:19:22'),
(12, 'test 3', 'builder\'s license', 784, 172, 'ejmahadiair@gmail.com', 'Jaman mahadi', 2, NULL, NULL, NULL, NULL, '2023-10-25 11:19:34', '2023-10-25 11:19:34'),
(13, 'test 3', 'builder\'s license', 784, 172, 'ejmahadiair@gmail.com', 'Jaman mahadi', 1, NULL, 'assets/pay_slip/1698233064.pdf', 1, NULL, '2023-10-25 11:19:59', '2023-10-25 11:39:21'),
(14, 'test 4', 'builder\'s license', 809, 172, 'ejmahadiair@gmail.com', 'Jaman mahadi', 1, NULL, 'assets/pay_slip/1698233668.pdf', 1, NULL, '2023-10-25 11:32:31', '2023-10-25 11:34:42'),
(15, 'test 5', 'builder\'s license', 813, 172, 'ejmahadiair@gmail.com', 'Jaman mahadi', 1, NULL, NULL, NULL, NULL, '2023-10-26 02:58:10', '2023-10-26 02:58:41'),
(16, 'test 6', 'builder\'s license', 815, 172, 'ejmahadiair@gmail.com', 'Jaman mahadi', 1, NULL, NULL, NULL, NULL, '2023-10-26 03:06:06', '2023-10-26 03:06:34'),
(17, 'test 7', 'builder\'s license', 814, 172, 'ejmahadiair@gmail.com', 'Jaman mahadi', 1, NULL, NULL, NULL, NULL, '2023-10-26 03:25:56', '2023-10-26 03:26:21'),
(18, 'test 8', 'builder\'s license', 816, 172, 'ejmahadiair@gmail.com', 'Jaman mahadi', 1, NULL, NULL, NULL, NULL, '2023-10-26 03:33:40', '2023-10-26 03:34:06'),
(19, 'Mehedi', 'builder\'s license', 817, 172, 'ejmahadiair@gmail.com', 'Jaman mahadi', 1, NULL, NULL, NULL, NULL, '2023-10-26 03:37:55', '2023-10-26 03:49:35'),
(20, 'test 9', 'CPCWHS1001 - Prepare to work safely in the construction industry', 759, 172, 'ejmahadiair@gmail.com', 'Jaman mahadi', 1, NULL, 'assets/pay_slip/1698728214.jpg', 1, 'assets/certificate/1698728395.jpg', '2023-10-31 04:50:01', '2023-10-31 04:59:55');

-- --------------------------------------------------------

--
-- Table structure for table `student_invoices`
--

CREATE TABLE `student_invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` bigint(20) NOT NULL,
  `student_name` text NOT NULL,
  `file_path` text NOT NULL,
  `course_fee` int(11) NOT NULL,
  `agency_id` int(11) NOT NULL,
  `invoice_date` datetime NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_invoices`
--

INSERT INTO `student_invoices` (`id`, `invoice_number`, `student_name`, `file_path`, `course_fee`, `agency_id`, `invoice_date`, `student_id`, `created_at`, `updated_at`) VALUES
(23, 59269, 'Jaman', 'https://crmbtob.quadque.digital/storage/app/public/invoice/invoice-Jaman.pdf', 200, 172, '2023-09-10 08:02:20', 3, '2023-09-10 08:02:21', '2023-09-10 08:02:21'),
(24, 25474, 'mahfuz', 'https://crmbtob.quadque.digital/storage/app/public/invoice/invoice-mahfuz.pdf', 1299, 172, '2023-09-18 08:54:01', 5, '2023-09-18 08:54:03', '2023-09-18 08:54:03'),
(25, 42481, 'mahfuz', 'https://crmbtob.quadque.digital/storage/app/public/invoice/invoice-mahfuz.pdf', 4000, 172, '2023-09-18 09:09:44', 5, '2023-09-18 09:09:45', '2023-09-18 09:09:45'),
(26, 98986, 'mahfuz', 'https://crmbtob.quadque.digital/storage/app/public/invoice/invoice-mahfuz.pdf', 4000, 172, '2023-09-18 09:11:43', 5, '2023-09-18 09:11:44', '2023-09-18 09:11:44'),
(27, 67609, 'mahfuz', 'https://crmbtob.quadque.digital/storage/app/public/invoice/invoice-mahfuz.pdf', 5000, 172, '2023-09-18 09:13:05', 5, '2023-09-18 09:13:06', '2023-09-18 09:13:06'),
(28, 57853, 'mahfuz', 'https://crmbtob.quadque.digital/storage/app/public/invoice/invoice-mahfuz.pdf', 1000, 172, '2023-09-18 09:14:07', 5, '2023-09-18 09:14:08', '2023-09-18 09:14:08'),
(29, 40739, 'mahfuz', 'https://crmbtob.quadque.digital/storage/app/public/invoice/invoice-mahfuz.pdf', 500, 172, '2023-09-18 09:15:05', 5, '2023-09-18 09:15:06', '2023-09-18 09:15:06'),
(30, 42349, 'kio ki khobor', 'https://crmbtob.quadque.digital/storage/app/public/invoice/invoice-kio ki khobor.pdf', 0, 172, '2023-09-21 07:55:02', 6, '2023-09-21 07:55:03', '2023-09-21 07:55:03'),
(31, 90735, 'kio ki khobor', 'https://crmbtob.quadque.digital/storage/app/public/invoice/invoice-kio ki khobor.pdf', 1500000, 172, '2023-09-21 07:57:37', 6, '2023-09-21 07:57:38', '2023-09-21 07:57:38'),
(32, 44612, 'sdf', 'https://crmbtob.quadque.digital/storage/app/public/invoice/invoice-sdf.pdf', 0, 172, '2023-10-10 08:04:14', 4, '2023-10-10 08:04:15', '2023-10-10 08:04:15'),
(33, 23105, 'Tanjib', 'https://crmbtob.quadque.digital/storage/app/public/invoice/invoice-Tanjib.pdf', 30000, 172, '2023-10-25 08:03:16', 7, '2023-10-25 08:03:17', '2023-10-25 08:03:17'),
(34, 55798, 'test user', 'https://crmbtob.quadque.digital/storage/app/public/invoice/invoice-test user.pdf', 40000, 172, '2023-10-25 10:12:07', 8, '2023-10-25 10:12:09', '2023-10-25 10:12:09'),
(35, 60176, 'test 2', 'https://crmbtob.quadque.digital/storage/app/public/invoice/invoice-test 2.pdf', 1000, 172, '2023-10-25 11:04:30', 9, '2023-10-25 11:04:32', '2023-10-25 11:04:32'),
(36, 67345, 'test 3', 'https://crmbtob.quadque.digital/storage/app/public/invoice/invoice-test 3.pdf', 4000, 172, '2023-10-25 11:23:54', 13, '2023-10-25 11:23:55', '2023-10-25 11:23:55'),
(37, 89120, 'test 4', 'https://crmbtob.quadque.digital/storage/app/public/invoice/invoice-test 4.pdf', 400, 172, '2023-10-25 11:34:11', 14, '2023-10-25 11:34:12', '2023-10-25 11:34:12'),
(38, 42903, 'test 3', 'https://crmbtob.quadque.digital/storage/app/public/invoice/invoice-test 3.pdf', 20000, 172, '2023-10-25 11:44:59', 13, '2023-10-25 11:45:00', '2023-10-25 11:45:00'),
(39, 59608, 'test 5', 'https://crmbtob.quadque.digital/storage/app/public/invoice/invoice-test 5.pdf', 200, 172, '2023-10-26 02:58:49', 15, '2023-10-26 02:58:50', '2023-10-26 02:58:50'),
(40, 34616, 'test 9', 'https://crmbtob.quadque.digital/storage/app/public/invoice/invoice-test 9.pdf', 2000, 172, '2023-10-31 04:54:52', 20, '2023-10-31 04:54:53', '2023-10-31 04:54:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `agency_name` text DEFAULT NULL,
  `student_admin_name` text DEFAULT NULL,
  `abn_number` int(11) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL COMMENT '1 = agency, 2= student admin',
  `website` varchar(255) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `suspend_status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `agency_name`, `student_admin_name`, `abn_number`, `phone_number`, `address`, `email_verified_at`, `password`, `role`, `website`, `company_id`, `suspend_status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, 'tanjib@quadque.tech', NULL, NULL, 454566, NULL, 'fdgvfdgrfghrdhg', NULL, '$2y$10$scXrAvK6b5plU2C6N8uHo.Mc/1fN6mpudaxGr2biC8m4zw.5n6RIy', 1, '', NULL, 1, NULL, '2023-08-02 20:55:15', '2023-08-02 20:55:15'),
(2, NULL, 'tanjib@gmail.com', 'lulu', NULL, 454567, NULL, 'fdgvfdgrfghrdhg', NULL, '$2y$10$Hhu4UcCPeBHrjfLDaE/GHus05s.XcBx0scOrfUstdZMc7kcLlMLNa', 1, '', NULL, 1, NULL, '2023-08-03 04:39:43', '2023-08-03 04:39:43'),
(3, NULL, 'admin@itecounsel.com', 'jfj', NULL, 54645, NULL, 'sdfsdfsdfsdf', NULL, '$2y$10$bbL5aCiqNvQXmBpTxacKhuiMLe2T/tKfsO4iRUQCqkHDkBljyjhBC', 1, '', NULL, 1, NULL, '2023-08-03 04:43:08', '2023-08-03 04:43:08'),
(5, NULL, 'ej@itecounsel.com', 'hi', NULL, 455645645, NULL, 'dsfsdfsdfsdffds', NULL, '$2y$10$pfBTJi4di.1At0NgzlmKsuDcc02Kmkkn17FOdepRNaJUHF/WwREGC', 1, '', NULL, 1, NULL, '2023-08-03 05:11:30', '2023-08-03 05:11:30'),
(6, NULL, 'ejs@itecounsel.com', 'hi', NULL, 455645645, NULL, 'dsfsdfsdfsdffds', NULL, '$2y$10$xz0VjGt5iS6XVFXMFADsq.WryB9pgjNCV5QX4DH64uEtl0hqJexwi', 1, '', NULL, 1, NULL, '2023-08-03 05:11:53', '2023-08-03 05:11:53'),
(7, NULL, 'jaman@quadque.tech', 'hi', NULL, 456778, NULL, 'sdfsdfsdfsdf', NULL, '$2y$10$aFPA0sEuxvss/Vx0QXFkyO4JXGzdLx2EUlQnRbsTEz2sCMnaLaxS.', 1, '', NULL, 1, NULL, '2023-08-03 05:18:07', '2023-08-03 05:18:07'),
(9, NULL, 'jamans@quadque.tech', 'hi', NULL, 456778, NULL, 'sdfsdfsdfsdf', NULL, '$2y$10$S4pXEELInqdeAdjMjzHoXe7Rj5.x2AJpiFDKRgdeLC7f2/lgm6ACi', 1, '', NULL, 1, NULL, '2023-08-03 05:23:46', '2023-08-03 05:23:46'),
(10, NULL, 'mahadi@itecounsel.com', 'mahadi', NULL, 987654, NULL, 'sdfsdfsdfsdfs', NULL, '$2y$10$kzzIdJeiN34i/Ik1xvpRNOAFMT8GiQ0.llpHlLx9DCkhAoxACpmXG', 1, '', NULL, 1, NULL, '2023-08-03 06:56:08', '2023-08-03 06:56:08'),
(11, NULL, 'hairhouse2340@outlook.com', 'fdgd', NULL, 56546345, NULL, 'sdfsdfsdf', NULL, '$2y$10$miTLdkCQZ85HL/yzE5cLHOFSpu9tGpjJq1D83nf8lL2NYqg11u4Sq', 1, '', NULL, 1, NULL, '2023-08-03 07:26:22', '2023-08-03 07:26:22'),
(12, NULL, 'jaman@quadque.digital', NULL, 'Jaman', NULL, '+8801642167361', NULL, NULL, '$2y$10$/Aa9FX0y4E5EJxCUDNBJ6O72efcn94eBx88675yUSZV4UWAmsY29G', 2, '', NULL, 1, NULL, '2023-08-03 10:49:55', '2023-08-03 10:49:55'),
(13, NULL, 'jaman.ceo@microsoft.com', NULL, 'Ej Mahadi', NULL, '+8801642167361', NULL, NULL, '$2y$10$HCF.dQo6kX1K9qicwRox6O15Aunrj3u5a26pQDe57.c2U4dMOwS.G', 2, '', NULL, 1, NULL, '2023-08-06 06:39:01', '2023-08-06 06:39:01'),
(14, NULL, 'git@hub.com', 'Github', NULL, 123454, NULL, 'sdfsdfsdfsdfsdfsdf', NULL, '$2y$10$h74HqddEGY9CgUQWxa/KM.I5ApuaHCKjpPmP3LvpJzuJl6pcWzsKW', 1, '', NULL, 1, NULL, '2023-08-07 08:18:44', '2023-08-07 08:18:44'),
(15, NULL, 'elonmusk@twitter.com', 'Twitter', NULL, 456789, NULL, 'sdfsdfsdfsdfsd', NULL, '$2y$10$0Jb367qVh/97RIQzpDAQa.7w2V7qCmYhiFWz9bmhw41rT0y9PRFxy', 1, '', NULL, 1, NULL, '2023-08-07 08:20:44', '2023-08-07 08:20:44'),
(16, NULL, 'megatanjib@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$2IisRJsj.a/Vf4ihVvQC2.7b3UFSyY30jT9gv/CAv69GLJrYfnz7m', 2, NULL, 1, 0, NULL, '2023-08-10 08:10:27', '2023-08-13 04:12:49'),
(25, NULL, 'tanjibrubyat@gmail.com', NULL, 'Jhilik', NULL, NULL, NULL, NULL, '$2y$10$b24nFTYYV2GPhqgeILQQ2uYcLc3guP/ACLKZA1ETVwfk5Yfex3DF.', 2, NULL, 1, 0, NULL, '2023-08-10 08:59:46', '2023-08-13 04:12:47'),
(26, NULL, 'ejmahadiair@gmail.com', NULL, 'Jaman', NULL, '01642167361', NULL, NULL, '$2y$10$MEJMb2oxLhPKdMJkDMQXX.ZuJ89eshNNKl1z0Q8Bt4FlVEwMAuCSO', 2, NULL, 1, 0, NULL, '2023-08-10 09:08:52', '2023-08-13 06:02:44'),
(29, NULL, 'loucchristensen78@gmail.com', NULL, 'Tanjib', NULL, '01972075917', NULL, NULL, '$2y$10$FntkUV7x0cOkT.M9OGos4.l.i0bQsRAhAfriKcgQW3sACJX.QNqty', 2, NULL, 1, 1, NULL, '2023-08-13 03:24:25', '2023-08-13 04:12:35'),
(30, NULL, 'ej@gmial.com', NULL, 'Jaman', NULL, '01642167361', NULL, NULL, '$2y$10$rkm6PrxY3O7B4yImE4jmrOdKqaOdRHC0TM1aZChxrIXH/kmg0obI2', 2, NULL, 1, 1, NULL, '2023-08-13 03:26:25', '2023-08-13 05:40:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountants`
--
ALTER TABLE `accountants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_student_id_foreign` (`student_id`);

--
-- Indexes for table `mandatory_files`
--
ALTER TABLE `mandatory_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_invoices`
--
ALTER TABLE `student_invoices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invoice_number` (`invoice_number`),
  ADD KEY `student_invoices_student_id_foreign` (`student_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountants`
--
ALTER TABLE `accountants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `mandatory_files`
--
ALTER TABLE `mandatory_files`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=341;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `student_invoices`
--
ALTER TABLE `student_invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_invoices`
--
ALTER TABLE `student_invoices`
  ADD CONSTRAINT `student_invoices_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
