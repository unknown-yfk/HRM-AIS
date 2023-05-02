-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2023 at 11:06 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myhrms`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `date_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `name`, `email`, `description`, `date_time`, `created_at`, `updated_at`) VALUES
(1, 'abubeker', 'abubeker0934@gmail.com', 'Has log in', 'Fri, Apr 7, 2023 12:59 PM', NULL, NULL),
(2, 'abubeker', 'abubeker0934@gmail.com', 'Has log out', 'Fri, Apr 7, 2023 1:09 PM', NULL, NULL),
(3, 'abubeker', 'abubeker0934@gmail.com', 'Has log in', 'Sun, Apr 9, 2023 3:11 AM', NULL, NULL),
(4, 'yabsra', 'yabsra@gmail.com', 'Has log in', 'Sun, Apr 9, 2023 1:15 PM', NULL, NULL),
(5, 'yabsra', 'yabsra@gmail.com', 'Has log out', 'Sun, Apr 9, 2023 1:17 PM', NULL, NULL),
(6, 'abubeker', 'abubeker0934@gmail.com', 'Has log in', 'Sun, Apr 9, 2023 1:17 PM', NULL, NULL),
(7, 'abubeker', 'abubeker0934@gmail.com', 'Has log out', 'Sun, Apr 9, 2023 2:57 PM', NULL, NULL),
(8, 'yabsra', 'yabsra@gmail.com', 'Has log in', 'Sun, Apr 9, 2023 2:57 PM', NULL, NULL),
(9, 'yabsra', 'yabsra@gmail.com', 'Has log out', 'Sun, Apr 9, 2023 2:58 PM', NULL, NULL),
(10, 'abubeker', 'abubeker0934@gmail.com', 'Has log in', 'Sun, Apr 9, 2023 2:59 PM', NULL, NULL),
(11, 'abubeker', 'abubeker0934@gmail.com', 'Has log in', 'Sun, Apr 9, 2023 8:28 PM', NULL, NULL),
(12, 'abubeker', 'abubeker0934@gmail.com', 'Has log in', 'Mon, May 1, 2023 12:46 PM', NULL, NULL),
(13, 'abubeker', 'abubeker0934@gmail.com', 'Has log in', 'Mon, May 1, 2023 6:37 PM', NULL, NULL),
(14, 'abubeker', 'abubeker0934@gmail.com', 'Has log out', 'Mon, May 1, 2023 7:55 PM', NULL, NULL),
(15, 'abubeker', 'abubeker0934@gmail.com', 'Has log in', 'Tue, May 2, 2023 12:39 AM', NULL, NULL),
(16, 'abubeker', 'abubeker0934@gmail.com', 'Has log in', 'Tue, May 2, 2023 1:56 AM', NULL, NULL),
(17, 'abubeker ahmed', 'abubeker0934@gmail.com', 'Has log in', 'Tue, May 2, 2023 8:14 AM', NULL, NULL),
(18, 'abubeker ahmed', 'abubeker0934@gmail.com', 'Has log out', 'Tue, May 2, 2023 8:28 AM', NULL, NULL),
(19, 'hassen seid', 'hassen@gmail.com', 'Has log in', 'Tue, May 2, 2023 8:28 AM', NULL, NULL),
(20, 'hassen seid', 'hassen@gmail.com', 'Has log out', 'Tue, May 2, 2023 8:29 AM', NULL, NULL),
(21, 'abubeker ahmed', 'abubeker0934@gmail.com', 'Has log in', 'Tue, May 2, 2023 8:29 AM', NULL, NULL),
(22, 'abubeker ahmed', 'abubeker0934@gmail.com', 'Has log out', 'Tue, May 2, 2023 8:30 AM', NULL, NULL),
(23, 'hassen seid', 'hassen@gmail.com', 'Has log in', 'Tue, May 2, 2023 8:30 AM', NULL, NULL),
(24, 'hassen seid', 'hassen@gmail.com', 'Has log out', 'Tue, May 2, 2023 8:38 AM', NULL, NULL),
(25, 'abubeker ahmed', 'abubeker0934@gmail.com', 'Has log in', 'Tue, May 2, 2023 8:38 AM', NULL, NULL),
(26, 'abubeker ahmed', 'abubeker0934@gmail.com', 'Has log out', 'Tue, May 2, 2023 8:38 AM', NULL, NULL),
(27, 'abubeker ahmed', 'abubeker0934@gmail.com', 'Has log in', 'Tue, May 2, 2023 8:38 AM', NULL, NULL),
(28, 'abubeker ahmed', 'abubeker0934@gmail.com', 'Has log out', 'Tue, May 2, 2023 8:54 AM', NULL, NULL),
(29, 'hassen seid', 'hassen@gmail.com', 'Has log in', 'Tue, May 2, 2023 8:54 AM', NULL, NULL),
(30, 'hassen seid', 'hassen@gmail.com', 'Has log out', 'Tue, May 2, 2023 8:55 AM', NULL, NULL),
(31, 'abubeker ahmed', 'abubeker0934@gmail.com', 'Has log in', 'Tue, May 2, 2023 9:02 AM', NULL, NULL),
(32, 'halal', 'abubeker0934@gmail.com', 'Has log in', 'Tue, May 2, 2023 12:09 PM', NULL, NULL),
(33, 'halal', 'abubeker0934@gmail.com', 'Has log out', 'Tue, May 2, 2023 12:17 PM', NULL, NULL),
(34, 'yabsra', 'yabsra@gmail.com', 'Has log in', 'Tue, May 2, 2023 12:17 PM', NULL, NULL),
(35, 'yabsra', 'yabsra@gmail.com', 'Has log out', 'Tue, May 2, 2023 12:18 PM', NULL, NULL),
(36, 'abubeker ahmed', 'abubeker0934@gmail.com', 'Has log in', 'Tue, May 2, 2023 12:18 PM', NULL, NULL),
(37, 'abubeker ahmed', 'abubeker0934@gmail.com', 'Has log out', 'Tue, May 2, 2023 12:25 PM', NULL, NULL),
(38, 'hassen seid', 'hassen@gmail.com', 'Has log in', 'Tue, May 2, 2023 12:25 PM', NULL, NULL),
(39, 'hassen seid', 'hassen@gmail.com', 'Has log out', 'Tue, May 2, 2023 12:25 PM', NULL, NULL),
(40, 'abubeker ahmed', 'abubeker0934@gmail.com', 'Has log in', 'Tue, May 2, 2023 12:26 PM', NULL, NULL),
(41, 'abubeker ahmed', 'abubeker0934@gmail.com', 'Has log out', 'Tue, May 2, 2023 12:33 PM', NULL, NULL),
(42, 'hassen seid', 'hassen@gmail.com', 'Has log in', 'Tue, May 2, 2023 12:34 PM', NULL, NULL),
(43, 'hassen seid', 'hassen@gmail.com', 'Has log out', 'Tue, May 2, 2023 12:34 PM', NULL, NULL),
(44, 'abubeker ahmed', 'abubeker0934@gmail.com', 'Has log in', 'Tue, May 2, 2023 12:34 PM', NULL, NULL),
(45, 'abubeker ahmed', 'abubeker0934@gmail.com', 'Has log out', 'Tue, May 2, 2023 12:36 PM', NULL, NULL),
(46, 'hassen seid', 'hassen@gmail.com', 'Has log in', 'Tue, May 2, 2023 12:36 PM', NULL, NULL),
(47, 'hassen seid', 'hassen@gmail.com', 'Has log out', 'Tue, May 2, 2023 12:37 PM', NULL, NULL),
(48, 'abubeker ahmed', 'abubeker0934@gmail.com', 'Has log in', 'Tue, May 2, 2023 12:37 PM', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `add_jobs`
--

CREATE TABLE `add_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `job_location` varchar(255) DEFAULT NULL,
  `no_of_vacancies` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `salary_from` varchar(255) DEFAULT NULL,
  `salary_to` varchar(255) DEFAULT NULL,
  `job_type` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `expired_date` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `count` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'A', NULL, NULL),
(2, 'B', NULL, NULL),
(3, 'C', NULL, NULL),
(4, 'D', NULL, NULL),
(5, 'E', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `apply_for_jobs`
--

CREATE TABLE `apply_for_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `cv_upload` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department`, `created_at`, `updated_at`) VALUES
(1, 'Web Department', NULL, NULL),
(2, 'IT Management', NULL, NULL),
(3, 'Marketing', NULL, NULL),
(4, 'nbjhjnh', '2023-04-09 00:15:24', '2023-04-09 00:15:24'),
(5, 'Network Infrastracture', '2023-04-09 10:30:18', '2023-04-09 10:30:18');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `birth_date` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `employee_id` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `birth_date`, `gender`, `employee_id`, `company`, `created_at`, `updated_at`) VALUES
(7, 'abubeker', 'abubeker0934@gmail.com', '07-04-2023', 'male', 'KH_00001', 'abubeker', '2023-04-09 10:26:43', '2023-05-02 09:12:29'),
(12, 'hassen seid', 'hassen@gmail.com', '24-05-2023', 'male', 'KH_00003', 'hassen seid', '2023-05-02 09:22:05', '2023-05-02 09:22:05');

-- --------------------------------------------------------

--
-- Table structure for table `estimates`
--

CREATE TABLE `estimates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `estimate_number` varchar(255) NOT NULL,
  `client` varchar(255) DEFAULT NULL,
  `project` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `client_address` varchar(255) DEFAULT NULL,
  `billing_address` varchar(255) DEFAULT NULL,
  `estimate_date` varchar(255) DEFAULT NULL,
  `expiry_date` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `tax_1` varchar(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `grand_total` varchar(255) DEFAULT NULL,
  `other_information` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `estimates`
--

INSERT INTO `estimates` (`id`, `estimate_number`, `client`, `project`, `email`, `tax`, `client_address`, `billing_address`, `estimate_date`, `expiry_date`, `total`, `tax_1`, `discount`, `grand_total`, `other_information`, `created_at`, `updated_at`) VALUES
(1, 'EST_000001', 'Barry Cuda', 'Project Management', 'abubeker0934@gmail.com', 'VAT', 'jjj', 'jkjj', '19-04-2023', '11-04-2023', 'NaN', 'NaN', '10', 'NaN', NULL, '2023-04-09 12:09:40', '2023-04-09 12:09:40');

--
-- Triggers `estimates`
--
DELIMITER $$
CREATE TRIGGER `id_estimate` BEFORE INSERT ON `estimates` FOR EACH ROW BEGIN
                INSERT INTO sequence_estimates VALUES (NULL);
                SET NEW.estimate_number = CONCAT("EST_", LPAD(LAST_INSERT_ID(), 6, "0"));
            END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `estimates_adds`
--

CREATE TABLE `estimates_adds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `estimate_number` varchar(255) NOT NULL,
  `item` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `unit_cost` varchar(255) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `estimates_adds`
--

INSERT INTO `estimates_adds` (`id`, `estimate_number`, `item`, `description`, `unit_cost`, `qty`, `amount`, `created_at`, `updated_at`) VALUES
(1, 'EST_000001', '1', 'ffff', '1000', '1', 'NaN', '2023-04-09 12:09:40', '2023-04-09 12:09:40'),
(2, 'EST_000001', NULL, NULL, NULL, NULL, 'NaN', '2023-04-09 12:09:40', '2023-04-09 12:09:40');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `purchase_from` varchar(255) DEFAULT NULL,
  `purchase_date` varchar(255) DEFAULT NULL,
  `purchased_by` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `paid_by` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `attachments` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_holiday` varchar(255) DEFAULT NULL,
  `date_holiday` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `holidays`
--

INSERT INTO `holidays` (`id`, `name_holiday`, `date_holiday`, `created_at`, `updated_at`) VALUES
(1, 'Eid Al Fitr', '26-04-2023', '2023-04-09 10:31:20', '2023-04-09 10:31:20'),
(2, 'Fasika', '09-04-2023', '2023-04-09 10:31:36', '2023-04-09 10:31:36');

-- --------------------------------------------------------

--
-- Table structure for table `leaves_admins`
--

CREATE TABLE `leaves_admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `leave_type` varchar(255) DEFAULT NULL,
  `from_date` varchar(255) DEFAULT NULL,
  `to_date` varchar(255) DEFAULT NULL,
  `day` varchar(255) DEFAULT NULL,
  `leave_reason` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leaves_admins`
--

INSERT INTO `leaves_admins` (`id`, `user_id`, `leave_type`, `from_date`, `to_date`, `day`, `leave_reason`, `created_at`, `updated_at`) VALUES
(5, 'KH_00001', 'Medical Leave', '02-05-2023', '10-05-2023', '8', 'bbgbbbbbb', '2023-05-02 09:34:59', '2023-05-02 09:34:59'),
(6, 'KH_00003', 'Loss of Pay', '02-05-2023', '08-05-2023', '6', 'gfgg', '2023-05-02 09:37:15', '2023-05-02 09:37:15');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_04_25_224042_create_user_activity_logs_table', 1),
(6, '2021_04_30_224320_create_activity_logs_table', 1),
(7, '2021_05_03_061844_create_user_types_table', 1),
(8, '2021_05_03_061918_create_role_type_users_table', 1),
(9, '2021_06_04_053627_create_sequence_tbls_table', 1),
(10, '2021_06_04_053741_create_generate_id_tbls_table', 1),
(11, '2021_07_03_161410_create_position_types_table', 1),
(12, '2021_07_03_171244_create_departments_table', 1),
(13, '2021_07_14_054840_create_employees_table', 1),
(14, '2021_07_16_143215_create_module_permissions_table', 1),
(15, '2021_07_27_053429_create_holidays_table', 1),
(16, '2021_08_01_052433_create_permission_lists_table', 1),
(17, '2021_08_08_054847_create_roles_permissions_table', 1),
(18, '2021_08_13_054414_create_profile_information_table', 1),
(19, '2021_08_23_053914_create_leaves_admins_table', 1),
(20, '2021_09_21_054658_create_staff_salaries_table', 1),
(21, '2021_11_06_201850_create_performance_indicator_lists_table', 1),
(22, '2021_11_09_070649_create_performance_indicators_table', 1),
(23, '2021_11_18_055032_create_performance_appraisals_table', 1),
(24, '2021_12_04_055348_create_trainings_table', 1),
(25, '2022_01_07_060821_create_trainers_table', 1),
(26, '2022_02_02_060242_create_training_types_table', 1),
(27, '2022_04_23_223952_create_estimates_table', 1),
(28, '2022_04_24_222616_create_estimate_numbers_table', 1),
(29, '2022_04_25_222644_create_estimates_adds_table', 1),
(30, '2022_05_07_224549_create_sequence_estimates_table', 1),
(31, '2022_06_22_051203_create_expenses_table', 1),
(32, '2022_09_04_182928_create_personal_information_table', 1),
(33, '2022_09_16_190428_create_type_jobs_table', 1),
(34, '2022_09_21_053939_create_add_jobs_table', 1),
(35, '2022_10_08_052414_create_apply_for_jobs_table', 1),
(36, '2022_12_18_175400_create_categories_table', 1),
(37, '2022_12_24_180155_create_answers_table', 1),
(38, '2022_12_24_182824_create_questions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `module_permissions`
--

CREATE TABLE `module_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` varchar(255) DEFAULT NULL,
  `module_permission` varchar(255) DEFAULT NULL,
  `id_count` varchar(255) DEFAULT NULL,
  `read` varchar(255) DEFAULT NULL,
  `write` varchar(255) DEFAULT NULL,
  `create` varchar(255) DEFAULT NULL,
  `delete` varchar(255) DEFAULT NULL,
  `import` varchar(255) DEFAULT NULL,
  `export` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `module_permissions`
--

INSERT INTO `module_permissions` (`id`, `employee_id`, `module_permission`, `id_count`, `read`, `write`, `create`, `delete`, `import`, `export`, `created_at`, `updated_at`) VALUES
(30, 'KH_00001', 'Holidays', '1', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', NULL, '2023-05-02 09:12:29'),
(31, 'KH_00001', 'Leaves', '2', 'Y', 'Y', 'Y', 'N', 'N', 'N', NULL, '2023-05-02 09:12:29'),
(32, 'KH_00001', 'Clients', '3', 'Y', 'Y', 'Y', 'N', 'N', 'N', NULL, '2023-05-02 09:12:29'),
(33, 'KH_00001', 'Projects', '4', 'Y', 'N', 'Y', 'N', 'N', 'N', NULL, '2023-05-02 09:12:29'),
(34, 'KH_00001', 'Tasks', '5', 'Y', 'Y', 'Y', 'Y', 'N', 'N', NULL, '2023-05-02 09:12:29'),
(35, 'KH_00001', 'Chats', '6', 'Y', 'Y', 'Y', 'Y', 'N', 'N', NULL, '2023-05-02 09:12:29'),
(36, 'KH_00001', 'Assets', '7', 'Y', 'Y', 'Y', 'Y', 'N', 'N', NULL, '2023-05-02 09:12:29'),
(37, 'KH_00001', 'Timing Sheets', '8', 'Y', 'Y', 'Y', 'Y', 'N', 'N', NULL, '2023-05-02 09:12:29'),
(58, 'KH_00003', 'Holidays', '1', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', NULL, NULL),
(59, 'KH_00003', 'Leaves', '2', 'Y', 'Y', 'Y', 'N', 'N', 'N', NULL, NULL),
(60, 'KH_00003', 'Clients', '3', 'Y', 'Y', 'Y', 'N', 'N', 'N', NULL, NULL),
(61, 'KH_00003', 'Projects', '4', 'Y', 'N', 'Y', 'N', 'N', 'N', NULL, NULL),
(62, 'KH_00003', 'Tasks', '5', 'Y', 'Y', 'Y', 'Y', 'N', 'N', NULL, NULL),
(63, 'KH_00003', 'Chats', '6', 'Y', 'Y', 'Y', 'Y', 'N', 'N', NULL, NULL),
(64, 'KH_00003', 'Assets', '7', 'Y', 'Y', 'Y', 'Y', 'N', 'N', NULL, NULL),
(65, 'KH_00003', 'Timing Sheets', '8', 'Y', 'Y', 'Y', 'Y', 'N', 'N', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('abubeker0934@gmail.com', 'Jat2R3vZg93YRjZhbnZTdOFKSscQyPNJQULFrNdhXwTcoKGXa6K0BrUdxYLW', '2023-04-09 10:13:28');

-- --------------------------------------------------------

--
-- Table structure for table `performance_appraisals`
--

CREATE TABLE `performance_appraisals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `customer_experience` varchar(255) DEFAULT NULL,
  `marketing` varchar(255) DEFAULT NULL,
  `management` varchar(255) DEFAULT NULL,
  `administration` varchar(255) DEFAULT NULL,
  `presentation_skill` varchar(255) DEFAULT NULL,
  `quality_of_Work` varchar(255) DEFAULT NULL,
  `efficiency` varchar(255) DEFAULT NULL,
  `integrity` varchar(255) DEFAULT NULL,
  `professionalism` varchar(255) DEFAULT NULL,
  `team_work` varchar(255) DEFAULT NULL,
  `critical_thinking` varchar(255) DEFAULT NULL,
  `conflict_management` varchar(255) DEFAULT NULL,
  `attendance` varchar(255) DEFAULT NULL,
  `ability_to_meet_deadline` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `performance_appraisals`
--

INSERT INTO `performance_appraisals` (`id`, `name`, `date`, `user_id`, `customer_experience`, `marketing`, `management`, `administration`, `presentation_skill`, `quality_of_Work`, `efficiency`, `integrity`, `professionalism`, `team_work`, `critical_thinking`, `conflict_management`, `attendance`, `ability_to_meet_deadline`, `status`, `created_at`, `updated_at`) VALUES
(1, 'abubeker ahmed', '04-05-2023', 'KH_00001', 'Beginner', 'Beginner', 'Beginner', 'Beginner', 'Beginner', 'Beginner', 'Beginner', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'Active', '2023-05-01 23:28:30', '2023-05-01 23:28:30');

-- --------------------------------------------------------

--
-- Table structure for table `performance_indicators`
--

CREATE TABLE `performance_indicators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `customer_eperience` varchar(255) DEFAULT NULL,
  `marketing` varchar(255) DEFAULT NULL,
  `management` varchar(255) DEFAULT NULL,
  `administration` varchar(255) DEFAULT NULL,
  `presentation_skill` varchar(255) DEFAULT NULL,
  `quality_of_Work` varchar(255) DEFAULT NULL,
  `efficiency` varchar(255) DEFAULT NULL,
  `integrity` varchar(255) DEFAULT NULL,
  `professionalism` varchar(255) DEFAULT NULL,
  `team_work` varchar(255) DEFAULT NULL,
  `critical_thinking` varchar(255) DEFAULT NULL,
  `conflict_management` varchar(255) DEFAULT NULL,
  `attendance` varchar(255) DEFAULT NULL,
  `ability_to_meet_deadline` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `performance_indicators`
--

INSERT INTO `performance_indicators` (`id`, `user_id`, `designation`, `customer_eperience`, `marketing`, `management`, `administration`, `presentation_skill`, `quality_of_Work`, `efficiency`, `integrity`, `professionalism`, `team_work`, `critical_thinking`, `conflict_management`, `attendance`, `ability_to_meet_deadline`, `status`, `created_at`, `updated_at`) VALUES
(4, 'KH_00001', 'Network Infrastracture', 'Beginner', 'Beginner', 'Beginner', 'Beginner', 'Beginner', 'Beginner', 'Beginner', 'Beginner', 'Beginner', 'Beginner', 'Beginner', 'Beginner', 'Beginner', 'Beginner', 'Active', '2023-05-02 09:32:35', '2023-05-02 09:32:35');

-- --------------------------------------------------------

--
-- Table structure for table `performance_indicator_lists`
--

CREATE TABLE `performance_indicator_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `per_name_list` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `performance_indicator_lists`
--

INSERT INTO `performance_indicator_lists` (`id`, `per_name_list`, `created_at`, `updated_at`) VALUES
(1, 'None', NULL, NULL),
(2, 'Beginner', NULL, NULL),
(3, 'Intermediate', NULL, NULL),
(4, 'Advanced', NULL, NULL),
(5, 'Expert / Leader', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_lists`
--

CREATE TABLE `permission_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_name` varchar(255) DEFAULT NULL,
  `read` varchar(255) DEFAULT NULL,
  `write` varchar(255) DEFAULT NULL,
  `create` varchar(255) DEFAULT NULL,
  `delete` varchar(255) DEFAULT NULL,
  `import` varchar(255) DEFAULT NULL,
  `export` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_lists`
--

INSERT INTO `permission_lists` (`id`, `permission_name`, `read`, `write`, `create`, `delete`, `import`, `export`) VALUES
(1, 'Holidays', 'Y', 'Y', 'Y', 'Y', 'Y', 'N'),
(2, 'Leaves', 'Y', 'Y', 'Y', 'N', 'N', 'N'),
(3, 'Clients', 'Y', 'Y', 'Y', 'N', 'N', 'N'),
(4, 'Projects', 'Y', 'N', 'Y', 'N', 'N', 'N'),
(5, 'Tasks', 'Y', 'Y', 'Y', 'Y', 'N', 'N'),
(6, 'Chats', 'Y', 'Y', 'Y', 'Y', 'N', 'N'),
(7, 'Assets', 'Y', 'Y', 'Y', 'Y', 'N', 'N'),
(8, 'Timing Sheets', 'Y', 'Y', 'Y', 'Y', 'N', 'N');

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

-- --------------------------------------------------------

--
-- Table structure for table `personal_information`
--

CREATE TABLE `personal_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `passport_no` varchar(255) NOT NULL,
  `passport_expiry_date` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `marital_status` varchar(255) DEFAULT NULL,
  `employment_of_spouse` varchar(255) DEFAULT NULL,
  `children` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_information`
--

INSERT INTO `personal_information` (`id`, `user_id`, `passport_no`, `passport_expiry_date`, `tel`, `nationality`, `religion`, `marital_status`, `employment_of_spouse`, `children`, `created_at`, `updated_at`) VALUES
(1, 'KH_00001', 'eq0077829', '19-04-2023', '6788899999', 'Ethiopian', 'Muslim', 'Single', '2', '0', '2023-04-07 10:06:46', '2023-05-02 05:23:41');

-- --------------------------------------------------------

--
-- Table structure for table `position_types`
--

CREATE TABLE `position_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `position_types`
--

INSERT INTO `position_types` (`id`, `position`, `created_at`, `updated_at`) VALUES
(1, 'CEO', NULL, NULL),
(2, 'CFO', NULL, NULL),
(3, 'Manager', NULL, NULL),
(4, 'Web Designer', NULL, NULL),
(5, 'Web Developer', NULL, NULL),
(6, 'Android Developer', NULL, NULL),
(7, 'IOS Developer', NULL, NULL),
(8, 'Team Leader', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profile_information`
--

CREATE TABLE `profile_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `birth_date` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pin_code` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `reports_to` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profile_information`
--

INSERT INTO `profile_information` (`id`, `name`, `user_id`, `email`, `birth_date`, `gender`, `address`, `state`, `country`, `pin_code`, `phone_number`, `department`, `designation`, `reports_to`, `created_at`, `updated_at`) VALUES
(1, 'abubeker ahmed', 'KH_00001', 'abubeker0934@gmail.com', '18-04-2023', 'Male', 'addis ababa, addis ababa', 'addis ababa', 'ethiopian', '1000', '0934393329', 'IT Management', 'Web Developer', 'halal', '2023-04-07 10:06:00', '2023-05-01 23:02:28'),
(2, 'yabsra tedla', NULL, NULL, '18-05-2023', 'Male', 'addis ababa', 'addis ababa', 'United Kingdom', '1000', '+251934393329', 'Web Development', 'Web Designer', NULL, '2023-04-09 10:41:17', '2023-05-02 09:15:59'),
(3, 'hassen seid', 'hassen seid', NULL, '17-05-2023', 'Male', 'addis ababa', 'addis ababa', 'United Kingdom', '1000', '+251934393326', 'IT Management', 'Android Developer', NULL, '2023-05-02 09:23:55', '2023-05-02 09:23:55');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `questions` varchar(255) DEFAULT NULL,
  `option_a` varchar(255) DEFAULT NULL,
  `option_b` varchar(255) DEFAULT NULL,
  `option_c` varchar(255) DEFAULT NULL,
  `option_d` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `code_snippets` varchar(255) DEFAULT NULL,
  `answer_explanation` varchar(255) DEFAULT NULL,
  `video_link` varchar(255) DEFAULT NULL,
  `image_to_question` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permissions_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles_permissions`
--

INSERT INTO `roles_permissions` (`id`, `permissions_name`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', NULL, NULL),
(2, 'CEO', NULL, NULL),
(3, 'Manager', NULL, NULL),
(4, 'Team Leader', NULL, NULL),
(5, 'Accountant', NULL, NULL),
(6, 'Web Developer', NULL, NULL),
(7, 'Web Designer', NULL, NULL),
(8, 'HR', NULL, NULL),
(9, 'UI/UX Developer', NULL, NULL),
(10, 'SEO Analyst', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_type_users`
--

CREATE TABLE `role_type_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_type_users`
--

INSERT INTO `role_type_users` (`id`, `role_type`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'Super Admin', NULL, NULL),
(3, 'Normal User', NULL, NULL),
(4, 'Client', NULL, NULL),
(5, 'Employee', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sequence_estimates`
--

CREATE TABLE `sequence_estimates` (
  `id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sequence_estimates`
--

INSERT INTO `sequence_estimates` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `sequence_tbls`
--

CREATE TABLE `sequence_tbls` (
  `id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sequence_tbls`
--

INSERT INTO `sequence_tbls` (`id`) VALUES
(1),
(2),
(3);

-- --------------------------------------------------------

--
-- Table structure for table `staff_salaries`
--

CREATE TABLE `staff_salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `basic` varchar(255) DEFAULT NULL,
  `da` varchar(255) DEFAULT NULL,
  `hra` varchar(255) DEFAULT NULL,
  `conveyance` varchar(255) DEFAULT NULL,
  `allowance` varchar(255) DEFAULT NULL,
  `medical_allowance` varchar(255) DEFAULT NULL,
  `tds` varchar(255) DEFAULT NULL,
  `esi` varchar(255) DEFAULT NULL,
  `pf` varchar(255) DEFAULT NULL,
  `leave` varchar(255) DEFAULT NULL,
  `prof_tax` varchar(255) DEFAULT NULL,
  `labour_welfare` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff_salaries`
--

INSERT INTO `staff_salaries` (`id`, `name`, `user_id`, `salary`, `basic`, `da`, `hra`, `conveyance`, `allowance`, `medical_allowance`, `tds`, `esi`, `pf`, `leave`, `prof_tax`, `labour_welfare`, `created_at`, `updated_at`) VALUES
(2, 'abubeker ahmed', 'KH_00001', '14000', '22000', '1', '2', '1', '100', '0', '50', '3', '4', '1', '1000', '0', '2023-05-01 23:18:47', '2023-05-01 23:18:47');

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

CREATE TABLE `trainers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `trainer_id` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainers`
--

INSERT INTO `trainers` (`id`, `full_name`, `trainer_id`, `role`, `email`, `phone`, `status`, `description`, `created_at`, `updated_at`) VALUES
(1, 'yabsra', 'KH_00002', 'train', 'yabsra@gmail.com', '0920888398', 'Active', 'hghhhhhh', '2023-05-02 09:30:25', '2023-05-02 09:30:25');

-- --------------------------------------------------------

--
-- Table structure for table `trainings`
--

CREATE TABLE `trainings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trainer_id` varchar(255) DEFAULT NULL,
  `employees_id` varchar(255) DEFAULT NULL,
  `training_type` varchar(255) DEFAULT NULL,
  `trainer` varchar(255) DEFAULT NULL,
  `employees` varchar(255) DEFAULT NULL,
  `training_cost` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainings`
--

INSERT INTO `trainings` (`id`, `trainer_id`, `employees_id`, `training_type`, `trainer`, `employees`, `training_cost`, `start_date`, `end_date`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'KH_00002', 'KH_00003', 'Node Training', 'yabsra', 'hassen seid', '6000', '24-05-2023', '23-05-2023', 'web development', 'Active', '2023-05-02 09:31:38', '2023-05-02 09:31:38');

-- --------------------------------------------------------

--
-- Table structure for table `training_types`
--

CREATE TABLE `training_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `training_types`
--

INSERT INTO `training_types` (`id`, `type`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'for all employeee', 'vgggggg', 'Active', '2023-05-02 09:30:07', '2023-05-02 09:30:07'),
(2, 'web development', 'web development', 'Active', '2023-05-02 09:31:06', '2023-05-02 09:31:06');

-- --------------------------------------------------------

--
-- Table structure for table `type_jobs`
--

CREATE TABLE `type_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_type_job` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `type_jobs`
--

INSERT INTO `type_jobs` (`id`, `name_type_job`, `created_at`, `updated_at`) VALUES
(1, 'Full Time', NULL, NULL),
(2, 'Part Time', NULL, NULL),
(3, 'Internship', NULL, NULL),
(4, 'Temporary', NULL, NULL),
(5, 'Remote', NULL, NULL),
(6, 'Others', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `join_date` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_id`, `email`, `join_date`, `phone_number`, `status`, `role_name`, `avatar`, `position`, `department`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'abubeker ahmed', 'KH_00001', 'abubeker0934@gmail.com', 'Fri, Apr 7, 2023 12:57 PM', '+251934393329', 'Active', 'Admin', '861273854.jpg', 'Team Leader', 'IT Management', NULL, '$2y$10$uCZ0ri5eAKv9pHr/3IFLxuEXlzjMYPCG0WQB6/w0tDZh/8cfnXsMi', NULL, '2023-04-07 09:57:58', '2023-05-02 09:15:31'),
(2, 'yabsra', 'KH_00002', 'yabsra@gmail.com', 'Sun, Apr 9, 2023 1:15 PM', NULL, 'Active', 'Employee', 'photo_defaults.jpg', NULL, NULL, NULL, '$2y$10$UzH7jjdZvp2wHVEHhSIlR.vql5mB2EQDNJum3E5Wncab.WgF7olIO', NULL, '2023-04-09 10:15:29', '2023-04-09 10:15:29'),
(3, 'hassen seid', 'KH_00003', 'hassen@gmail.com', 'Tue, May 2, 2023 8:28 AM', '+251934393329', 'Active', 'Normal User', '1682990885.jpg', 'Web Designer', 'IT Management', NULL, '$2y$10$my4HT77WcToFml9xnPsKSO2gBrMaapS8S4EoOcs3FlsB2DFJYoYDq', NULL, '2023-05-02 05:28:06', '2023-05-02 05:30:22');

--
-- Triggers `users`
--
DELIMITER $$
CREATE TRIGGER `id_store` BEFORE INSERT ON `users` FOR EACH ROW BEGIN
                INSERT INTO sequence_tbls VALUES (NULL);
                SET NEW.user_id = CONCAT("KH_", LPAD(LAST_INSERT_ID(), 5, "0"));
            END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user_activity_logs`
--

CREATE TABLE `user_activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `modify_user` varchar(255) DEFAULT NULL,
  `date_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_activity_logs`
--

INSERT INTO `user_activity_logs` (`id`, `user_name`, `email`, `phone_number`, `status`, `role_name`, `modify_user`, `date_time`, `created_at`, `updated_at`) VALUES
(1, 'hassen seid', 'hassen@gmail.com', '+251934393329', 'Active', 'Normal User', 'Update', 'Tue, May 2, 2023 8:30 AM', NULL, NULL),
(2, 'halal', 'abubeker0934@gmail.com', '+251934393329', 'Active', 'Admin', 'Update', 'Tue, May 2, 2023 9:03 AM', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`id`, `type_name`, `created_at`, `updated_at`) VALUES
(1, 'Active', NULL, NULL),
(2, 'Inactive', NULL, NULL),
(3, 'Disable', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_jobs`
--
ALTER TABLE `add_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apply_for_jobs`
--
ALTER TABLE `apply_for_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estimates`
--
ALTER TABLE `estimates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estimates_adds`
--
ALTER TABLE `estimates_adds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaves_admins`
--
ALTER TABLE `leaves_admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_permissions`
--
ALTER TABLE `module_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `performance_appraisals`
--
ALTER TABLE `performance_appraisals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `performance_indicators`
--
ALTER TABLE `performance_indicators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `performance_indicator_lists`
--
ALTER TABLE `performance_indicator_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_lists`
--
ALTER TABLE `permission_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `personal_information`
--
ALTER TABLE `personal_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `position_types`
--
ALTER TABLE `position_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile_information`
--
ALTER TABLE `profile_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_type_users`
--
ALTER TABLE `role_type_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequence_estimates`
--
ALTER TABLE `sequence_estimates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequence_tbls`
--
ALTER TABLE `sequence_tbls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_salaries`
--
ALTER TABLE `staff_salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainings`
--
ALTER TABLE `trainings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_types`
--
ALTER TABLE `training_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_jobs`
--
ALTER TABLE `type_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_join_date_unique` (`join_date`);

--
-- Indexes for table `user_activity_logs`
--
ALTER TABLE `user_activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `add_jobs`
--
ALTER TABLE `add_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `apply_for_jobs`
--
ALTER TABLE `apply_for_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `estimates`
--
ALTER TABLE `estimates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `estimates_adds`
--
ALTER TABLE `estimates_adds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `leaves_admins`
--
ALTER TABLE `leaves_admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `module_permissions`
--
ALTER TABLE `module_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `performance_appraisals`
--
ALTER TABLE `performance_appraisals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `performance_indicators`
--
ALTER TABLE `performance_indicators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `performance_indicator_lists`
--
ALTER TABLE `performance_indicator_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permission_lists`
--
ALTER TABLE `permission_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_information`
--
ALTER TABLE `personal_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `position_types`
--
ALTER TABLE `position_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `profile_information`
--
ALTER TABLE `profile_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `role_type_users`
--
ALTER TABLE `role_type_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sequence_estimates`
--
ALTER TABLE `sequence_estimates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sequence_tbls`
--
ALTER TABLE `sequence_tbls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `staff_salaries`
--
ALTER TABLE `staff_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `trainers`
--
ALTER TABLE `trainers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `trainings`
--
ALTER TABLE `trainings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `training_types`
--
ALTER TABLE `training_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `type_jobs`
--
ALTER TABLE `type_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_activity_logs`
--
ALTER TABLE `user_activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
