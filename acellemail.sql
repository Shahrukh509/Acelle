-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2022 at 04:14 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `acellemail`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `contact_id` int(10) UNSIGNED DEFAULT NULL,
  `admin_group_id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED DEFAULT NULL,
  `timezone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color_scheme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `text_direction` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ltr',
  `menu_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `theme_mode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'light'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `uid`, `user_id`, `creator_id`, `contact_id`, `admin_group_id`, `language_id`, `timezone`, `status`, `color_scheme`, `created_at`, `updated_at`, `text_direction`, `menu_layout`, `theme_mode`) VALUES
(1, '618b9901a945a', 1, NULL, NULL, 1, 1, 'Asia/Kabul', 'active', NULL, '2016-12-31 20:00:00', '2016-12-31 20:00:00', 'ltr', 'left', 'light');

-- --------------------------------------------------------

--
-- Table structure for table `admin_groups`
--

CREATE TABLE `admin_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_groups`
--

INSERT INTO `admin_groups` (`id`, `name`, `options`, `permissions`, `creator_id`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', '', '{\"admin_group_read\":\"all\",\"admin_group_create\":\"yes\",\"admin_group_update\":\"all\",\"admin_group_delete\":\"all\",\"admin_read\":\"all\",\"admin_create\":\"yes\",\"admin_update\":\"all\",\"admin_delete\":\"all\",\"admin_login_as\":\"all\",\"customer_read\":\"all\",\"customer_create\":\"yes\",\"customer_update\":\"all\",\"customer_delete\":\"all\",\"customer_login_as\":\"all\",\"subscription_read\":\"all\",\"subscription_create\":\"yes\",\"subscription_update\":\"all\",\"subscription_disable\":\"all\",\"subscription_enable\":\"all\",\"subscription_delete\":\"all\",\"subscription_paid\":\"all\",\"subscription_unpaid\":\"all\",\"plan_read\":\"all\",\"plan_create\":\"yes\",\"plan_update\":\"all\",\"plan_delete\":\"all\",\"payment_method_read\":\"all\",\"payment_method_create\":\"yes\",\"payment_method_update\":\"all\",\"payment_method_delete\":\"all\",\"sending_server_read\":\"all\",\"sending_server_create\":\"yes\",\"sending_server_update\":\"all\",\"sending_server_delete\":\"all\",\"bounce_handler_read\":\"all\",\"bounce_handler_create\":\"yes\",\"bounce_handler_update\":\"all\",\"bounce_handler_delete\":\"all\",\"fbl_handler_read\":\"all\",\"fbl_handler_create\":\"yes\",\"fbl_handler_update\":\"all\",\"fbl_handler_delete\":\"all\",\"sending_domain_read\":\"all\",\"sending_domain_create\":\"yes\",\"sending_domain_update\":\"all\",\"sending_domain_delete\":\"all\",\"template_read\":\"all\",\"template_create\":\"yes\",\"template_update\":\"all\",\"template_delete\":\"all\",\"layout_read\":\"yes\",\"layout_update\":\"yes\",\"setting_general\":\"yes\",\"setting_sending\":\"yes\",\"setting_system_urls\":\"yes\",\"setting_access_when_offline\":\"yes\",\"setting_background_job\":\"yes\",\"setting_upgrade_manager\":\"yes\",\"language_read\":\"yes\",\"language_create\":\"yes\",\"language_update\":\"yes\",\"language_delete\":\"yes\",\"currency_read\":\"all\",\"currency_create\":\"yes\",\"currency_update\":\"all\",\"currency_delete\":\"all\",\"report_blacklist\":\"yes\",\"report_tracking_log\":\"yes\",\"report_bounce_log\":\"yes\",\"report_feedback_log\":\"yes\",\"report_open_log\":\"yes\",\"report_click_log\":\"yes\",\"report_unsubscribe_log\":\"yes\"}', NULL, '2017-03-06 15:33:12', '2017-04-09 03:31:41'),
(2, 'Reseller', '', '{\"admin_group_read\":\"no\",\"admin_group_create\":\"no\",\"admin_group_update\":\"no\",\"admin_group_delete\":\"no\",\"admin_read\":\"no\",\"admin_create\":\"no\",\"admin_update\":\"no\",\"admin_delete\":\"no\",\"admin_login_as\":\"no\",\"customer_read\":\"own\",\"customer_create\":\"yes\",\"customer_update\":\"own\",\"customer_delete\":\"own\",\"customer_login_as\":\"own\",\"subscription_read\":\"own\",\"subscription_create\":\"yes\",\"subscription_update\":\"no\",\"subscription_disable\":\"own\",\"subscription_enable\":\"own\",\"subscription_delete\":\"own\",\"subscription_paid\":\"no\",\"subscription_unpaid\":\"no\",\"plan_read\":\"all\",\"plan_create\":\"no\",\"plan_update\":\"no\",\"plan_delete\":\"no\",\"payment_method_read\":\"no\",\"payment_method_create\":\"no\",\"payment_method_update\":\"no\",\"payment_method_delete\":\"no\",\"sending_server_read\":\"no\",\"sending_server_create\":\"no\",\"sending_server_update\":\"no\",\"sending_server_delete\":\"no\",\"bounce_handler_read\":\"no\",\"bounce_handler_create\":\"no\",\"bounce_handler_update\":\"no\",\"bounce_handler_delete\":\"no\",\"fbl_handler_read\":\"no\",\"fbl_handler_create\":\"no\",\"fbl_handler_update\":\"no\",\"fbl_handler_delete\":\"no\",\"sending_domain_read\":\"no\",\"sending_domain_create\":\"no\",\"sending_domain_update\":\"no\",\"sending_domain_delete\":\"no\",\"template_read\":\"own\",\"template_create\":\"yes\",\"template_update\":\"own\",\"template_delete\":\"own\",\"layout_read\":\"no\",\"layout_update\":\"no\",\"setting_general\":\"no\",\"setting_sending\":\"no\",\"setting_system_urls\":\"no\",\"setting_access_when_offline\":\"no\",\"setting_background_job\":\"no\",\"setting_upgrade_manager\":\"no\",\"language_read\":\"no\",\"language_create\":\"no\",\"language_update\":\"no\",\"language_delete\":\"no\",\"currency_read\":\"no\",\"currency_create\":\"no\",\"currency_update\":\"no\",\"currency_delete\":\"no\",\"report_blacklist\":\"no\",\"report_tracking_log\":\"no\",\"report_bounce_log\":\"no\",\"report_feedback_log\":\"no\",\"report_open_log\":\"no\",\"report_click_log\":\"no\",\"report_unsubscribe_log\":\"no\"}', NULL, '2017-04-09 03:31:41', '2017-04-09 03:34:44');

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `automation2s`
--

CREATE TABLE `automation2s` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `mail_list_id` int(10) UNSIGNED NOT NULL,
  `time_zone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `segment_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cache` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_error` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auto_triggers`
--

CREATE TABLE `auto_triggers` (
  `id` int(10) UNSIGNED NOT NULL,
  `subscriber_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `automation2_id` int(10) UNSIGNED NOT NULL,
  `executed_index` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `billing_addresses`
--

CREATE TABLE `billing_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blacklists`
--

CREATE TABLE `blacklists` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bounce_handlers`
--

CREATE TABLE `bounce_handlers` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `host` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `port` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `protocol` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `encryption` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bounce_logs`
--

CREATE TABLE `bounce_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `runtime_message_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bounce_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `raw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plain` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_to` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sign_dkim` tinyint(1) DEFAULT NULL,
  `track_open` tinyint(1) DEFAULT NULL,
  `track_click` tinyint(1) DEFAULT NULL,
  `resend` int(11) DEFAULT NULL,
  `run_at` timestamp NULL DEFAULT NULL,
  `delivery_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `template_source` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_error` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_mail_list_id` int(10) UNSIGNED DEFAULT NULL,
  `cache` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_domain_id` bigint(20) UNSIGNED DEFAULT NULL,
  `use_default_sending_server_from_email` tinyint(1) NOT NULL DEFAULT 0,
  `preheader` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `running_pid` int(11) DEFAULT NULL,
  `template_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `uid`, `customer_id`, `type`, `name`, `subject`, `plain`, `from_email`, `from_name`, `reply_to`, `status`, `sign_dkim`, `track_open`, `track_click`, `resend`, `run_at`, `delivery_at`, `created_at`, `updated_at`, `template_source`, `last_error`, `image`, `default_mail_list_id`, `cache`, `tracking_domain_id`, `use_default_sending_server_from_email`, `preheader`, `running_pid`, `template_id`) VALUES
(1, '61b875eed2a41', 25, 'regular', 'Untitled', NULL, NULL, NULL, NULL, NULL, 'new', 1, 1, 1, NULL, NULL, NULL, '2021-12-14 06:46:06', '2021-12-14 06:46:06', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(2, '61b880d3ee80e', 25, 'regular', 'Untitled', NULL, NULL, NULL, NULL, NULL, 'new', 1, 1, 1, NULL, NULL, NULL, '2021-12-14 07:32:35', '2021-12-14 07:32:35', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(3, '61b88169d9cf1', 25, 'regular', 'Untitled', NULL, NULL, NULL, NULL, NULL, 'new', 1, 1, 1, NULL, NULL, NULL, '2021-12-14 07:35:05', '2021-12-14 07:35:05', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(4, '61b88231904d0', 25, 'regular', 'Untitled', NULL, NULL, NULL, NULL, NULL, 'new', 1, 1, 1, NULL, NULL, NULL, '2021-12-14 07:38:25', '2021-12-14 07:38:25', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(5, '61b8b20a31ff4', 25, 'regular', 'Untitled', NULL, NULL, NULL, NULL, NULL, 'new', 1, 1, 1, NULL, NULL, NULL, '2021-12-14 11:02:34', '2021-12-14 11:02:34', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(6, '61b8b4b3be4ad', 25, 'plain-text', 'Untitled', NULL, NULL, NULL, NULL, NULL, 'new', 1, 1, 1, NULL, NULL, NULL, '2021-12-14 11:13:55', '2021-12-14 11:13:55', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(7, '61b8d07f61e26', 26, 'regular', 'Untitled', NULL, NULL, NULL, NULL, NULL, 'new', 1, 1, 1, NULL, NULL, NULL, '2021-12-14 13:12:31', '2021-12-14 13:12:31', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `campaigns_lists_segments`
--

CREATE TABLE `campaigns_lists_segments` (
  `id` int(10) UNSIGNED NOT NULL,
  `campaign_id` int(10) UNSIGNED NOT NULL,
  `mail_list_id` int(10) UNSIGNED NOT NULL,
  `segment_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_links`
--

CREATE TABLE `campaign_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `campaign_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `click_logs`
--

CREATE TABLE `click_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `message_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 'AF', 'active', '2016-07-13 17:42:43', '2016-07-13 17:42:43'),
(2, 'Albania', 'AL', 'active', '2016-07-13 17:42:43', '2016-07-13 17:42:43'),
(3, 'Algeria', 'DZ', 'active', '2016-07-13 17:42:43', '2016-07-13 17:42:43'),
(4, 'American Samoa', 'AS', 'active', '2016-07-13 17:42:43', '2016-07-13 17:42:43'),
(5, 'Andorra', 'AD', 'active', '2016-07-13 17:42:43', '2016-07-13 17:42:43'),
(6, 'Angola', 'AO', 'active', '2016-07-13 17:42:43', '2016-07-13 17:42:43'),
(7, 'Anguilla', 'AI', 'active', '2016-07-13 17:42:43', '2016-07-13 17:42:43'),
(8, 'Antigua', 'AG', 'active', '2016-07-13 17:42:43', '2016-07-13 17:42:43'),
(9, 'Argentina', 'AR', 'active', '2016-07-13 17:42:43', '2016-07-13 17:42:43'),
(10, 'Armenia', 'AM', 'active', '2016-07-13 17:42:43', '2016-07-13 17:42:43'),
(11, 'Aruba', 'AW', 'active', '2016-07-13 17:42:43', '2016-07-13 17:42:43'),
(12, 'Australia', 'AU', 'active', '2016-07-13 17:42:43', '2016-07-13 17:42:43'),
(13, 'Austria', 'AT', 'active', '2016-07-13 17:42:43', '2016-07-13 17:42:43'),
(14, 'Azerbaijan', 'AZ', 'active', '2016-07-13 17:42:43', '2016-07-13 17:42:43'),
(15, 'Bahrain', 'BH', 'active', '2016-07-13 17:42:43', '2016-07-13 17:42:43'),
(16, 'Bangladesh', 'BD', 'active', '2016-07-13 17:42:43', '2016-07-13 17:42:43'),
(17, 'Barbados', 'BB', 'active', '2016-07-13 17:42:43', '2016-07-13 17:42:43'),
(18, 'Belarus', 'BY', 'active', '2016-07-13 17:42:43', '2016-07-13 17:42:43'),
(19, 'Belgium', 'BE', 'active', '2016-07-13 17:42:43', '2016-07-13 17:42:43'),
(20, 'Belize', 'BZ', 'active', '2016-07-13 17:42:43', '2016-07-13 17:42:43'),
(21, 'Benin', 'BJ', 'active', '2016-07-13 17:42:43', '2016-07-13 17:42:43'),
(22, 'Bermuda', 'BM', 'active', '2016-07-13 17:42:43', '2016-07-13 17:42:43'),
(23, 'Bhutan', 'BT', 'active', '2016-07-13 17:42:43', '2016-07-13 17:42:43'),
(24, 'Bolivia', 'BO', 'active', '2016-07-13 17:42:43', '2016-07-13 17:42:43'),
(25, 'Bosnia and Herzegovina', 'BA', 'active', '2016-07-13 17:42:43', '2016-07-13 17:42:43'),
(26, 'Botswana', 'BW', 'active', '2016-07-13 17:42:43', '2016-07-13 17:42:43'),
(27, 'Brazil', 'BR', 'active', '2016-07-13 17:42:43', '2016-07-13 17:42:43'),
(28, 'British Indian Ocean Territory', 'IO', 'active', '2016-07-13 17:42:43', '2016-07-13 17:42:43'),
(29, 'British Virgin Islands', 'VG', 'active', '2016-07-13 17:42:43', '2016-07-13 17:42:43'),
(30, 'Brunei', 'BN', 'active', '2016-07-13 17:42:43', '2016-07-13 17:42:43'),
(31, 'Bulgaria', 'BG', 'active', '2016-07-13 17:42:43', '2016-07-13 17:42:43'),
(32, 'Burkina Faso', 'BF', 'active', '2016-07-13 17:42:43', '2016-07-13 17:42:43'),
(33, 'Burma Myanmar', 'MM', 'active', '2016-07-13 17:42:43', '2016-07-13 17:42:43'),
(34, 'Burundi', 'BI', 'active', '2016-07-13 17:42:43', '2016-07-13 17:42:43'),
(35, 'Cambodia', 'KH', 'active', '2016-07-13 17:42:43', '2016-07-13 17:42:43'),
(36, 'Cameroon', 'CM', 'active', '2016-07-13 17:42:44', '2016-07-13 17:42:44'),
(37, 'Canada', 'CA', 'active', '2016-07-13 17:42:44', '2016-07-13 17:42:44'),
(38, 'Cape Verde', 'CV', 'active', '2016-07-13 17:42:44', '2016-07-13 17:42:44'),
(39, 'Cayman Islands', 'KY', 'active', '2016-07-13 17:42:44', '2016-07-13 17:42:44'),
(40, 'Central African Republic', 'CF', 'active', '2016-07-13 17:42:44', '2016-07-13 17:42:44'),
(41, 'Chad', 'TD', 'active', '2016-07-13 17:42:44', '2016-07-13 17:42:44'),
(42, 'Chile', 'CL', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(43, 'China', 'CN', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(44, 'Colombia', 'CO', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(45, 'Comoros', 'KM', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(46, 'Cook Islands', 'CK', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(47, 'Costa Rica', 'CR', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(48, 'Côte d\'Ivoire', 'CI', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(49, 'Croatia', 'HR', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(50, 'Cuba', 'CU', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(51, 'Cyprus', 'CY', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(52, 'Czech Republic', 'CZ', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(53, 'Democratic Republic of Congo', 'CD', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(54, 'Denmark', 'DK', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(55, 'Djibouti', 'DJ', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(56, 'Dominica', 'DM', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(57, 'Dominican Republic', 'DO', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(58, 'Ecuador', 'EC', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(59, 'Egypt', 'EG', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(60, 'El Salvador', 'SV', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(61, 'Equatorial Guinea', 'GQ', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(62, 'Eritrea', 'ER', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(63, 'Estonia', 'EE', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(64, 'Ethiopia', 'ET', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(65, 'Falkland Islands', 'FK', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(66, 'Faroe Islands', 'FO', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(67, 'Federated States of Micronesia', 'FM', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(68, 'Fiji', 'FJ', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(69, 'Finland', 'FI', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(70, 'France', 'FR', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(71, 'French Guiana', 'GF', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(72, 'French Polynesia', 'PF', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(73, 'Gabon', 'GA', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(74, 'Georgia', 'GE', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(75, 'Germany', 'DE', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(76, 'Ghana', 'GH', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(77, 'Gibraltar', 'GI', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(78, 'Greece', 'GR', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(79, 'Greenland', 'GL', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(80, 'Grenada', 'GD', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(81, 'Guadeloupe', 'GP', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(82, 'Guam', 'GU', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(83, 'Guatemala', 'GT', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(84, 'Guinea', 'GN', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(85, 'Guinea-Bissau', 'GW', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(86, 'Guyana', 'GY', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(87, 'Haiti', 'HT', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(88, 'Honduras', 'HN', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(89, 'Hong Kong', 'HK', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(90, 'Hungary', 'HU', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(91, 'Iceland', 'IS', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(92, 'India', 'IN', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(93, 'Indonesia', 'ID', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(94, 'Iran', 'IR', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(95, 'Iraq', 'IQ', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(96, 'Ireland', 'IE', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(97, 'Israel', 'IL', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(98, 'Italy', 'IT', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(99, 'Jamaica', 'JM', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(100, 'Japan', 'JP', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(101, 'Jordan', 'JO', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(102, 'Kazakhstan', 'KZ', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(103, 'Kenya', 'KE', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(104, 'Kiribati', 'KI', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(105, 'Kosovo', 'XK', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(106, 'Kuwait', 'KW', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(107, 'Kyrgyzstan', 'KG', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(108, 'Laos', 'LA', 'active', '2016-07-13 17:42:45', '2016-07-13 17:42:45'),
(109, 'Latvia', 'LV', 'active', '2016-07-13 17:42:46', '2016-07-13 17:42:46'),
(110, 'Lebanon', 'LB', 'active', '2016-07-13 17:42:46', '2016-07-13 17:42:46'),
(111, 'Lesotho', 'LS', 'active', '2016-07-13 17:42:46', '2016-07-13 17:42:46'),
(112, 'Liberia', 'LR', 'active', '2016-07-13 17:42:46', '2016-07-13 17:42:46'),
(113, 'Libya', 'LY', 'active', '2016-07-13 17:42:46', '2016-07-13 17:42:46'),
(114, 'Liechtenstein', 'LI', 'active', '2016-07-13 17:42:46', '2016-07-13 17:42:46'),
(115, 'Lithuania', 'LT', 'active', '2016-07-13 17:42:46', '2016-07-13 17:42:46'),
(116, 'Luxembourg', 'LU', 'active', '2016-07-13 17:42:46', '2016-07-13 17:42:46'),
(117, 'Macau', 'MO', 'active', '2016-07-13 17:42:46', '2016-07-13 17:42:46'),
(118, 'Macedonia', 'MK', 'active', '2016-07-13 17:42:46', '2016-07-13 17:42:46'),
(119, 'Madagascar', 'MG', 'active', '2016-07-13 17:42:46', '2016-07-13 17:42:46'),
(120, 'Malawi', 'MW', 'active', '2016-07-13 17:42:46', '2016-07-13 17:42:46'),
(121, 'Malaysia', 'MY', 'active', '2016-07-13 17:42:46', '2016-07-13 17:42:46'),
(122, 'Maldives', 'MV', 'active', '2016-07-13 17:42:46', '2016-07-13 17:42:46'),
(123, 'Mali', 'ML', 'active', '2016-07-13 17:42:46', '2016-07-13 17:42:46'),
(124, 'Malta', 'MT', 'active', '2016-07-13 17:42:46', '2016-07-13 17:42:46'),
(125, 'Marshall Islands', 'MH', 'active', '2016-07-13 17:42:46', '2016-07-13 17:42:46'),
(126, 'Martinique', 'MQ', 'active', '2016-07-13 17:42:46', '2016-07-13 17:42:46'),
(127, 'Mauritania', 'MR', 'active', '2016-07-13 17:42:46', '2016-07-13 17:42:46'),
(128, 'Mauritius', 'MU', 'active', '2016-07-13 17:42:46', '2016-07-13 17:42:46'),
(129, 'Mayotte', 'YT', 'active', '2016-07-13 17:42:46', '2016-07-13 17:42:46'),
(130, 'Mexico', 'MX', 'active', '2016-07-13 17:42:46', '2016-07-13 17:42:46'),
(131, 'Moldova', 'MD', 'active', '2016-07-13 17:42:46', '2016-07-13 17:42:46'),
(132, 'Monaco', 'MC', 'active', '2016-07-13 17:42:46', '2016-07-13 17:42:46'),
(133, 'Mongolia', 'MN', 'active', '2016-07-13 17:42:46', '2016-07-13 17:42:46'),
(134, 'Montenegro', 'ME', 'active', '2016-07-13 17:42:46', '2016-07-13 17:42:46'),
(135, 'Montserrat', 'MS', 'active', '2016-07-13 17:42:46', '2016-07-13 17:42:46'),
(136, 'Morocco', 'MA', 'active', '2016-07-13 17:42:46', '2016-07-13 17:42:46'),
(137, 'Mozambique', 'MZ', 'active', '2016-07-13 17:42:46', '2016-07-13 17:42:46'),
(138, 'Namibia', 'NA', 'active', '2016-07-13 17:42:46', '2016-07-13 17:42:46'),
(139, 'Nauru', 'NR', 'active', '2016-07-13 17:42:46', '2016-07-13 17:42:46'),
(140, 'Nepal', 'NP', 'active', '2016-07-13 17:42:46', '2016-07-13 17:42:46'),
(141, 'Netherlands', 'NL', 'active', '2016-07-13 17:42:46', '2016-07-13 17:42:46'),
(142, 'Netherlands Antilles', 'AN', 'active', '2016-07-13 17:42:46', '2016-07-13 17:42:46'),
(143, 'New Caledonia', 'NC', 'active', '2016-07-13 17:42:46', '2016-07-13 17:42:46'),
(144, 'New Zealand', 'NZ', 'active', '2016-07-13 17:42:46', '2016-07-13 17:42:46'),
(145, 'Nicaragua', 'NI', 'active', '2016-07-13 17:42:46', '2016-07-13 17:42:46'),
(146, 'Niger', 'NE', 'active', '2016-07-13 17:42:46', '2016-07-13 17:42:46'),
(147, 'Nigeria', 'NG', 'active', '2016-07-13 17:42:47', '2016-07-13 17:42:47'),
(148, 'Niue', 'NU', 'active', '2016-07-13 17:42:47', '2016-07-13 17:42:47'),
(149, 'Norfolk Island', 'NF', 'active', '2016-07-13 17:42:47', '2016-07-13 17:42:47'),
(150, 'North Korea', 'KP', 'active', '2016-07-13 17:42:47', '2016-07-13 17:42:47'),
(151, 'Northern Mariana Islands', 'MP', 'active', '2016-07-13 17:42:47', '2016-07-13 17:42:47'),
(152, 'Norway', 'NO', 'active', '2016-07-13 17:42:47', '2016-07-13 17:42:47'),
(153, 'Oman', 'OM', 'active', '2016-07-13 17:42:47', '2016-07-13 17:42:47'),
(154, 'Pakistan', 'PK', 'active', '2016-07-13 17:42:47', '2016-07-13 17:42:47'),
(155, 'Palau', 'PW', 'active', '2016-07-13 17:42:47', '2016-07-13 17:42:47'),
(156, 'Palestine', 'PS', 'active', '2016-07-13 17:42:47', '2016-07-13 17:42:47'),
(157, 'Panama', 'PA', 'active', '2016-07-13 17:42:47', '2016-07-13 17:42:47'),
(158, 'Papua New Guinea', 'PG', 'active', '2016-07-13 17:42:47', '2016-07-13 17:42:47'),
(159, 'Paraguay', 'PY', 'active', '2016-07-13 17:42:47', '2016-07-13 17:42:47'),
(160, 'Peru', 'PE', 'active', '2016-07-13 17:42:47', '2016-07-13 17:42:47'),
(161, 'Philippines', 'PH', 'active', '2016-07-13 17:42:47', '2016-07-13 17:42:47'),
(162, 'Poland', 'PL', 'active', '2016-07-13 17:42:47', '2016-07-13 17:42:47'),
(163, 'Portugal', 'PT', 'active', '2016-07-13 17:42:47', '2016-07-13 17:42:47'),
(164, 'Puerto Rico', 'PR', 'active', '2016-07-13 17:42:47', '2016-07-13 17:42:47'),
(165, 'Qatar', 'QA', 'active', '2016-07-13 17:42:47', '2016-07-13 17:42:47'),
(166, 'Republic of the Congo', 'CG', 'active', '2016-07-13 17:42:47', '2016-07-13 17:42:47'),
(167, 'Réunion', 'RE', 'active', '2016-07-13 17:42:47', '2016-07-13 17:42:47'),
(168, 'Romania', 'RO', 'active', '2016-07-13 17:42:47', '2016-07-13 17:42:47'),
(169, 'Russia', 'RU', 'active', '2016-07-13 17:42:47', '2016-07-13 17:42:47'),
(170, 'Rwanda', 'RW', 'active', '2016-07-13 17:42:47', '2016-07-13 17:42:47'),
(171, 'Saint Barthélemy', 'BL', 'active', '2016-07-13 17:42:47', '2016-07-13 17:42:47'),
(172, 'Saint Helena', 'SH', 'active', '2016-07-13 17:42:47', '2016-07-13 17:42:47'),
(173, 'Saint Kitts and Nevis', 'KN', 'active', '2016-07-13 17:42:47', '2016-07-13 17:42:47'),
(174, 'Saint Martin', 'MF', 'active', '2016-07-13 17:42:47', '2016-07-13 17:42:47'),
(175, 'Saint Pierre and Miquelon', 'PM', 'active', '2016-07-13 17:42:47', '2016-07-13 17:42:47'),
(176, 'Saint Vincent and the Grenadines', 'VC', 'active', '2016-07-13 17:42:48', '2016-07-13 17:42:48'),
(177, 'Samoa', 'WS', 'active', '2016-07-13 17:42:48', '2016-07-13 17:42:48'),
(178, 'San Marino', 'SM', 'active', '2016-07-13 17:42:48', '2016-07-13 17:42:48'),
(179, 'São Tomé and Príncipe', 'ST', 'active', '2016-07-13 17:42:48', '2016-07-13 17:42:48'),
(180, 'Saudi Arabia', 'SA', 'active', '2016-07-13 17:42:48', '2016-07-13 17:42:48'),
(181, 'Senegal', 'SN', 'active', '2016-07-13 17:42:48', '2016-07-13 17:42:48'),
(182, 'Serbia', 'RS', 'active', '2016-07-13 17:42:48', '2016-07-13 17:42:48'),
(183, 'Seychelles', 'SC', 'active', '2016-07-13 17:42:48', '2016-07-13 17:42:48'),
(184, 'Sierra Leone', 'SL', 'active', '2016-07-13 17:42:48', '2016-07-13 17:42:48'),
(185, 'Singapore', 'SG', 'active', '2016-07-13 17:42:48', '2016-07-13 17:42:48'),
(186, 'Slovakia', 'SK', 'active', '2016-07-13 17:42:48', '2016-07-13 17:42:48'),
(187, 'Slovenia', 'SI', 'active', '2016-07-13 17:42:48', '2016-07-13 17:42:48'),
(188, 'Solomon Islands', 'SB', 'active', '2016-07-13 17:42:48', '2016-07-13 17:42:48'),
(189, 'Somalia', 'SO', 'active', '2016-07-13 17:42:48', '2016-07-13 17:42:48'),
(190, 'South Africa', 'ZA', 'active', '2016-07-13 17:42:48', '2016-07-13 17:42:48'),
(191, 'South Korea', 'KR', 'active', '2016-07-13 17:42:48', '2016-07-13 17:42:48'),
(192, 'Spain', 'ES', 'active', '2016-07-13 17:42:48', '2016-07-13 17:42:48'),
(193, 'Sri Lanka', 'LK', 'active', '2016-07-13 17:42:48', '2016-07-13 17:42:48'),
(194, 'St. Lucia', 'LC', 'active', '2016-07-13 17:42:48', '2016-07-13 17:42:48'),
(195, 'Sudan', 'SD', 'active', '2016-07-13 17:42:48', '2016-07-13 17:42:48'),
(196, 'Suriname', 'SR', 'active', '2016-07-13 17:42:48', '2016-07-13 17:42:48'),
(197, 'Swaziland', 'SZ', 'active', '2016-07-13 17:42:48', '2016-07-13 17:42:48'),
(198, 'Sweden', 'SE', 'active', '2016-07-13 17:42:48', '2016-07-13 17:42:48'),
(199, 'Switzerland', 'CH', 'active', '2016-07-13 17:42:48', '2016-07-13 17:42:48'),
(200, 'Syria', 'SY', 'active', '2016-07-13 17:42:48', '2016-07-13 17:42:48'),
(201, 'Taiwan', 'TW', 'active', '2016-07-13 17:42:49', '2016-07-13 17:42:49'),
(202, 'Tajikistan', 'TJ', 'active', '2016-07-13 17:42:49', '2016-07-13 17:42:49'),
(203, 'Tanzania', 'TZ', 'active', '2016-07-13 17:42:49', '2016-07-13 17:42:49'),
(204, 'Thailand', 'TH', 'active', '2016-07-13 17:42:49', '2016-07-13 17:42:49'),
(205, 'The Bahamas', 'BS', 'active', '2016-07-13 17:42:49', '2016-07-13 17:42:49'),
(206, 'The Gambia', 'GM', 'active', '2016-07-13 17:42:49', '2016-07-13 17:42:49'),
(207, 'Timor-Leste', 'TL', 'active', '2016-07-13 17:42:49', '2016-07-13 17:42:49'),
(208, 'Togo', 'TG', 'active', '2016-07-13 17:42:49', '2016-07-13 17:42:49'),
(209, 'Tokelau', 'TK', 'active', '2016-07-13 17:42:49', '2016-07-13 17:42:49'),
(210, 'Tonga', 'TO', 'active', '2016-07-13 17:42:49', '2016-07-13 17:42:49'),
(211, 'Trinidad and Tobago', 'TT', 'active', '2016-07-13 17:42:49', '2016-07-13 17:42:49'),
(212, 'Tunisia', 'TN', 'active', '2016-07-13 17:42:49', '2016-07-13 17:42:49'),
(213, 'Turkey', 'TR', 'active', '2016-07-13 17:42:49', '2016-07-13 17:42:49'),
(214, 'Turkmenistan', 'TM', 'active', '2016-07-13 17:42:49', '2016-07-13 17:42:49'),
(215, 'Turks and Caicos Islands', 'TC', 'active', '2016-07-13 17:42:49', '2016-07-13 17:42:49'),
(216, 'Tuvalu', 'TV', 'active', '2016-07-13 17:42:49', '2016-07-13 17:42:49'),
(217, 'Uganda', 'UG', 'active', '2016-07-13 17:42:49', '2016-07-13 17:42:49'),
(218, 'Ukraine', 'UA', 'active', '2016-07-13 17:42:49', '2016-07-13 17:42:49'),
(219, 'United Arab Emirates', 'AE', 'active', '2016-07-13 17:42:49', '2016-07-13 17:42:49'),
(220, 'United Kingdom', 'GB', 'active', '2016-07-13 17:42:49', '2016-07-13 17:42:49'),
(221, 'United States', 'US', 'active', '2016-07-13 17:42:49', '2016-07-13 17:42:49'),
(222, 'Uruguay', 'UY', 'active', '2016-07-13 17:42:49', '2016-07-13 17:42:49'),
(223, 'US Virgin Islands', 'VI', 'active', '2016-07-13 17:42:49', '2016-07-13 17:42:49'),
(224, 'Uzbekistan', 'UZ', 'active', '2016-07-13 17:42:49', '2016-07-13 17:42:49'),
(225, 'Vanuatu', 'VU', 'active', '2016-07-13 17:42:49', '2016-07-13 17:42:49'),
(226, 'Vatican City', 'VA', 'active', '2016-07-13 17:42:49', '2016-07-13 17:42:49'),
(227, 'Venezuela', 'VE', 'active', '2016-07-13 17:42:49', '2016-07-13 17:42:49'),
(228, 'Vietnam', 'VN', 'active', '2016-07-13 17:42:49', '2016-07-13 17:42:49'),
(229, 'Wallis and Futuna', 'WF', 'active', '2016-07-13 17:42:49', '2016-07-13 17:42:49'),
(230, 'Yemen', 'YE', 'active', '2016-07-13 17:42:49', '2016-07-13 17:42:49'),
(231, 'Zambia', 'ZM', 'active', '2016-07-13 17:42:49', '2016-07-13 17:42:49'),
(232, 'Zimbabwe', 'ZW', 'active', '2016-07-13 17:42:49', '2016-07-13 17:42:49');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `format` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `uid`, `admin_id`, `name`, `code`, `format`, `status`, `created_at`, `updated_at`) VALUES
(1, '58bd48f91f10b', NULL, 'US Dollar', 'USD', '${PRICE}', 'active', '2017-03-06 07:33:12', '2017-03-06 07:33:12');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(10) UNSIGNED DEFAULT NULL,
  `contact_id` int(10) UNSIGNED DEFAULT NULL,
  `language_id` int(10) UNSIGNED DEFAULT NULL,
  `timezone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color_scheme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quota` blob DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cache` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_direction` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ltr',
  `payment_method` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auto_billing_data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `theme_mode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'light'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `uid`, `admin_id`, `contact_id`, `language_id`, `timezone`, `status`, `color_scheme`, `quota`, `created_at`, `updated_at`, `cache`, `text_direction`, `payment_method`, `auto_billing_data`, `menu_layout`, `theme_mode`) VALUES
(1, '618b9901d5500', 1, NULL, 1, 'Asia/Kabul', 'active', NULL, NULL, '2021-11-10 10:03:45', '2021-11-10 10:03:45', NULL, 'ltr', NULL, NULL, 'left', 'light'),
(2, '61921d981520b', NULL, NULL, 1, 'America/Scoresbysund', 'active', NULL, NULL, '2021-11-15 08:43:04', '2021-11-15 08:43:04', NULL, 'ltr', NULL, NULL, 'left', 'light'),
(3, '619240b715c00', 1, NULL, 2, 'America/Scoresbysund', 'active', NULL, NULL, '2021-11-15 11:12:55', '2021-11-15 11:12:55', NULL, 'ltr', NULL, NULL, 'left', 'light'),
(4, '61924e4f3c63d', NULL, NULL, 2, 'Asia/Kabul', 'active', NULL, NULL, '2021-11-15 12:10:55', '2021-11-15 12:10:55', NULL, 'ltr', NULL, NULL, 'left', 'light'),
(5, '61925286332e9', NULL, NULL, 2, 'Asia/Kabul', 'active', NULL, NULL, '2021-11-15 12:28:54', '2021-11-15 12:28:54', NULL, 'ltr', NULL, NULL, 'left', 'light'),
(6, '61925a526026f', NULL, NULL, 2, 'Asia/Kabul', 'active', NULL, NULL, '2021-11-15 13:02:10', '2021-11-15 13:02:10', NULL, 'ltr', NULL, NULL, 'left', 'light'),
(7, '61927c8523293', NULL, NULL, 2, 'Asia/Kabul', 'active', NULL, NULL, '2021-11-15 15:28:05', '2021-11-15 15:28:05', NULL, 'ltr', NULL, NULL, 'left', 'light'),
(8, '6193770e10682', NULL, NULL, 2, 'Asia/Kabul', 'active', NULL, NULL, '2021-11-16 09:17:02', '2021-11-16 09:17:02', NULL, 'ltr', NULL, NULL, 'left', 'light'),
(9, '61937f89c184c', NULL, NULL, 2, 'Asia/Kabul', 'active', NULL, NULL, '2021-11-16 09:53:13', '2021-11-16 09:53:13', NULL, 'ltr', NULL, NULL, 'left', 'light'),
(10, '61a757d34b140', NULL, NULL, 1, 'America/Scoresbysund', 'active', NULL, NULL, '2021-12-01 11:09:07', '2021-12-01 11:09:07', NULL, 'ltr', NULL, NULL, 'left', 'light'),
(11, '61af45410b892', NULL, NULL, 1, 'America/Newyork', 'active', NULL, NULL, '2021-12-07 07:28:01', '2021-12-07 07:28:01', NULL, 'ltr', NULL, NULL, 'left', 'light'),
(12, '61af60ece15eb', NULL, NULL, 1, 'America/Newyork', 'active', NULL, NULL, '2021-12-07 09:26:04', '2021-12-07 09:26:04', NULL, 'ltr', NULL, NULL, 'left', 'light'),
(13, '61af61bff3654', NULL, NULL, 1, 'America/Newyork', 'active', NULL, NULL, '2021-12-07 09:29:35', '2021-12-07 09:29:35', NULL, 'ltr', NULL, NULL, 'left', 'light'),
(14, '61af621e40541', NULL, NULL, 1, 'America/Newyork', 'active', NULL, NULL, '2021-12-07 09:31:10', '2021-12-07 09:31:10', NULL, 'ltr', NULL, NULL, 'left', 'light'),
(15, '61af629796bd5', NULL, NULL, 1, 'America/Newyork', 'active', NULL, NULL, '2021-12-07 09:33:11', '2021-12-07 09:33:11', NULL, 'ltr', NULL, NULL, 'left', 'light'),
(16, '61af654c157ff', NULL, NULL, 1, 'America/Newyork', 'active', NULL, NULL, '2021-12-07 09:44:44', '2021-12-07 09:44:44', NULL, 'ltr', NULL, NULL, 'left', 'light'),
(17, '61b08ed6b6e72', NULL, NULL, 1, 'America/Newyork', 'active', NULL, NULL, '2021-12-08 06:54:14', '2021-12-08 06:54:14', NULL, 'ltr', NULL, NULL, 'left', 'light'),
(18, '61b0a2e059928', NULL, NULL, 1, 'America/Newyork', 'active', NULL, NULL, '2021-12-08 08:19:44', '2021-12-08 08:19:44', NULL, 'ltr', NULL, NULL, 'left', 'light'),
(19, '61b0a3e4177e8', NULL, NULL, 1, 'America/Newyork', 'active', NULL, NULL, '2021-12-08 08:24:04', '2021-12-08 08:24:04', NULL, 'ltr', NULL, NULL, 'left', 'light'),
(20, '61b0ca796e3c6', NULL, NULL, 1, 'America/Newyork', 'active', NULL, NULL, '2021-12-08 11:08:41', '2021-12-08 11:08:41', NULL, 'ltr', NULL, NULL, 'left', 'light'),
(21, '61b0f4c7511dc', NULL, NULL, 1, 'America/Newyork', 'active', NULL, NULL, '2021-12-08 14:09:11', '2021-12-08 14:09:11', NULL, 'ltr', NULL, NULL, 'left', 'light'),
(22, '61b2216de0015', NULL, NULL, 1, 'America/Newyork', 'active', NULL, NULL, '2021-12-09 11:31:57', '2021-12-09 11:31:57', NULL, 'ltr', NULL, NULL, 'left', 'light'),
(23, '61b221db1904b', NULL, NULL, 1, 'Atlantic/South_Georgia', 'active', 'default', NULL, '2021-12-09 11:33:47', '2021-12-10 11:38:58', NULL, 'ltr', NULL, NULL, 'left', 'light'),
(24, '61b39f5e848d7', NULL, NULL, 1, 'America/Newyork', 'active', NULL, NULL, '2021-12-10 14:41:34', '2021-12-10 14:41:34', NULL, 'ltr', NULL, NULL, 'left', 'light'),
(25, '61b8627f280c0', NULL, NULL, 1, 'America/Newyork', 'active', NULL, NULL, '2021-12-14 05:23:11', '2021-12-14 05:23:11', NULL, 'ltr', NULL, NULL, 'left', 'light'),
(26, '61b8c7cf28a6b', NULL, NULL, 1, 'America/Newyork', 'active', NULL, NULL, '2021-12-14 12:35:27', '2021-12-14 12:35:27', NULL, 'ltr', NULL, NULL, 'left', 'light'),
(27, '61c9be82356db', NULL, NULL, 1, 'America/Newyork', 'active', NULL, NULL, '2021-12-27 09:24:18', '2021-12-27 09:24:18', NULL, 'ltr', NULL, NULL, 'left', 'light'),
(28, '61c9bee82526a', NULL, NULL, 1, 'America/Newyork', 'active', NULL, NULL, '2021-12-27 09:26:00', '2021-12-27 09:26:00', NULL, 'ltr', NULL, NULL, 'left', 'light');

-- --------------------------------------------------------

--
-- Table structure for table `customer_groups`
--

CREATE TABLE `customer_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_group_sending_servers`
--

CREATE TABLE `customer_group_sending_servers` (
  `id` int(10) UNSIGNED NOT NULL,
  `sending_server_id` int(11) NOT NULL,
  `customer_group_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fitness` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_attempts`
--

CREATE TABLE `delivery_attempts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscriber_id` int(10) UNSIGNED NOT NULL,
  `email_id` int(10) UNSIGNED NOT NULL,
  `auto_trigger_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `automation2_id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sign_dkim` tinyint(1) NOT NULL DEFAULT 1,
  `track_open` tinyint(1) NOT NULL DEFAULT 1,
  `track_click` tinyint(1) NOT NULL DEFAULT 1,
  `action_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plain` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_domain_id` bigint(20) UNSIGNED DEFAULT NULL,
  `template_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_links`
--

CREATE TABLE `email_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_id` int(10) UNSIGNED NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_verifications`
--

CREATE TABLE `email_verifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `result` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscriber_id` int(10) UNSIGNED NOT NULL,
  `email_verification_server_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_verification_servers`
--

CREATE TABLE `email_verification_servers` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback_logs`
--

CREATE TABLE `feedback_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `runtime_message_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feedback_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `raw_feedback_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback_loop_handlers`
--

CREATE TABLE `feedback_loop_handlers` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `host` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `port` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `protocol` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `encryption` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_list_id` int(10) UNSIGNED NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `field_options`
--

CREATE TABLE `field_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_id` int(10) UNSIGNED NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `currency_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `billing_first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_id` int(10) UNSIGNED NOT NULL,
  `item_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(16,2) NOT NULL DEFAULT 0.00,
  `tax` double(16,2) NOT NULL DEFAULT 0.00,
  `discount` double(16,2) NOT NULL DEFAULT 0.00,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vat` decimal(16,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ip_locations`
--

CREATE TABLE `ip_locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metro_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `areacode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"09744358-17a1-42e7-9066-a34f88e6f9ce\",\"displayName\":\"Acelle\\\\Jobs\\\\UpdateUserJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":1,\"maxExceptions\":1,\"failOnTimeout\":true,\"backoff\":null,\"timeout\":120,\"retryUntil\":null,\"data\":{\"commandName\":\"Acelle\\\\Jobs\\\\UpdateUserJob\",\"command\":\"O:25:\\\"Acelle\\\\Jobs\\\\UpdateUserJob\\\":15:{s:11:\\\"\\u0000*\\u0000customer\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:21:\\\"Acelle\\\\Model\\\\Customer\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:7:\\\"timeout\\\";i:120;s:13:\\\"failOnTimeout\\\";b:1;s:5:\\\"tries\\\";i:1;s:13:\\\"maxExceptions\\\";i:1;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1636968177, 1636968177),
(2, 'default', '{\"uuid\":\"f7256468-2bda-4725-8360-cce1fd6a3d80\",\"displayName\":\"Acelle\\\\Jobs\\\\UpdateUserJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":1,\"maxExceptions\":1,\"failOnTimeout\":true,\"backoff\":null,\"timeout\":120,\"retryUntil\":null,\"data\":{\"commandName\":\"Acelle\\\\Jobs\\\\UpdateUserJob\",\"command\":\"O:25:\\\"Acelle\\\\Jobs\\\\UpdateUserJob\\\":15:{s:11:\\\"\\u0000*\\u0000customer\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:21:\\\"Acelle\\\\Model\\\\Customer\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:7:\\\"timeout\\\";i:120;s:13:\\\"failOnTimeout\\\";b:1;s:5:\\\"tries\\\";i:1;s:13:\\\"maxExceptions\\\";i:1;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1636968196, 1636968196);

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_monitors`
--

CREATE TABLE `job_monitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` bigint(20) NOT NULL,
  `batch_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_id` bigint(20) DEFAULT NULL,
  `job_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `uid`, `name`, `code`, `region_code`, `status`, `created_at`, `updated_at`, `is_default`) VALUES
(1, '5781b681c1b34', 'English', 'en', 'us', 'active', '2016-07-10 05:44:17', '2016-07-10 05:44:17', 1),
(2, '581b52d8acdca', 'Spanish', 'es', 'es', 'active', '2016-07-10 05:44:17', '2016-07-10 05:44:17', 0),
(3, '618b98f54412b', 'Portuguese', 'pt', 'pt', 'active', '2021-11-10 10:03:33', '2021-11-10 10:03:33', 0),
(4, '618b98f586172', 'German', 'de', 'de', 'active', '2021-11-10 10:03:33', '2021-11-10 10:03:33', 0),
(5, '618b98fb81d0f', '日本語 (Japanese)', 'ja', 'ja', 'active', '2021-11-10 10:03:39', '2021-11-10 10:03:39', 0);

-- --------------------------------------------------------

--
-- Table structure for table `layouts`
--

CREATE TABLE `layouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `layouts`
--

INSERT INTO `layouts` (`id`, `uid`, `alias`, `group_name`, `content`, `type`, `created_at`, `updated_at`, `subject`) VALUES
(1, '618b98f99cad7', 'sender_verification_email', 'Verification', '<!DOCTYPE html><html><body style=\"padding-left:20%;padding-right:20%\"><h1>Identify Verification</h1><p>Dear {USER_NAME}</p><p>Thank you for registering your email ({USER_EMAIL}) with us. Please click the link below to verify your email address against our service. If you do not request this verification, please just ignore this email</p><p>{VERIFICATION_LINK}</p></body></html>', 'email', NULL, NULL, 'Verify your sender identity'),
(2, '618b98f9a2151', 'sender_verification_email_for_amazon_ses', 'Verification', '<!DOCTYPE html><html><body style=\"padding-left:20%;padding-right:20%\"><h1>Identify Verification</h1><p>Dear {USER_NAME}</p><p>Thank you for registering your email ({USER_EMAIL}) with us. Please click the link below to verify your email address against our service. If you do not request this verification, please just ignore this email</p><p><i style=\"color:#888\">Verification link will automatically be injected to the end of this message - you can safely delete this notice</i></p></body></html>', 'email', NULL, NULL, 'Verify your sender identity'),
(3, '618b98f9acd48', 'unsubscribe_notification_for_list_owner', 'Notification for List Owner', '<!DOCTYPE html><html><body style=\"padding-left:20%;padding-right:20%\"><h1>Unsubscribe notification</h1><p>Dear List Owner</p><p>User <strong>{EMAIL}</strong> has unsubscribed from your mail list <strong>{LIST_NAME}</strong></p></body></html>', 'email', NULL, NULL, 'Unsubscribe notification'),
(4, '57639eb9715cf', 'sign_up_form', 'Sign-up', '	<!-- Page container -->\r\n	<div class=\"page-container login-container\" style=\"min-height:249px\">\r\n\r\n		<!-- Page content -->\r\n		<div class=\"page-content\">\r\n\r\n			<!-- Main content -->\r\n			<div class=\"content-wrapper\">\r\n				<div class=\"row\">\r\n					<div class=\"col-sm-2 col-md-3\">\r\n						\r\n					</div>\r\n					<div class=\"col-sm-8 col-md-6\">\r\n\r\n                    <!-- subscribe form -->\r\n				                  \r\n					<h2 class=\"text-semibold mt-40 text-white\">{LIST_NAME}</h2>\r\n                        <div class=\"panel panel-body\">						\r\n                                                \r\n                        <h4>Welcome to {LIST_NAME}</h4>\r\n                        <hr>\r\n                        {FIELDS}\r\n                        <br>\r\n                        {SUBSCRIBE_BUTTON}\r\n\r\n					</div>\r\n\r\n                    <!-- /subscribe form -->\r\n    \r\n						\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<!-- /main content -->\r\n\r\n		</div>\r\n		<!-- /page content -->\r\n\r\n\r\n		<!-- Footer -->\r\n		<div class=\"footer text-white\">\r\n			<span class=\"text-white\">Copyright &copy; 2021. All rights reserved.</a>			\r\n		</div>\r\n		<!-- /footer -->\r\n\r\n	</div>\r\n	<!-- /page container -->', 'page', '2016-06-18 20:54:49', '2016-06-18 20:54:49', 'Sign up'),
(5, '5763c01613687', 'sign_up_thankyou_page', 'Sign-up', '<!-- Page container -->\r\n	<div class=\"page-container login-container\" style=\"min-height:249px\">\r\n\r\n		<!-- Page content -->\r\n		<div class=\"page-content\">\r\n\r\n			<!-- Main content -->\r\n			<div class=\"content-wrapper\">\r\n				<div class=\"row\">\r\n					<div class=\"col-sm-2 col-md-3\">\r\n						\r\n					</div>\r\n					<div class=\"col-sm-8 col-md-6\">\r\n\r\n                    <!-- subscribe form -->\r\n				                  \r\n					<h2 class=\"text-semibold mt-40 text-white\">{LIST_NAME}</h2>\r\n                        <div class=\"panel panel-body\">						\r\n                                                \r\n                        <h4>Almost finished...</h4>\r\n                        <hr>\r\n						<p>We need to confirm your email address.</p>\r\n						<p>To complete the subscription process, please click the link in the email we just sent you.\r\n						</p>					</div>\r\n\r\n                    <!-- /subscribe form -->\r\n    \r\n						\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<!-- /main content -->\r\n\r\n		</div>\r\n		<!-- /page content -->\r\n\r\n\r\n		<!-- Footer -->\r\n		<div class=\"footer text-white\">\r\n			<span class=\"text-white\">Copyright &copy; 2021. All rights reserved.</a>			\r\n		</div>\r\n		<!-- /footer -->\r\n\r\n	</div>\r\n	<!-- /page container -->', 'page', '2016-06-18 23:17:10', '2016-06-18 23:17:10', 'Thank you'),
(6, '5763c3ef7bb8e', 'sign_up_confirmation_email', 'Sign-up', '<!-- Page container -->\r\n<div class=\"page-container login-container\" style=\"min-height: 249px;\"><!-- Page content -->\r\n<div class=\"page-content\"><!-- Main content -->\r\n<div class=\"content-wrapper\">\r\n<div class=\"row\">\r\n<div class=\"col-sm-2 col-md-3\"></div>\r\n<div class=\"col-sm-8 col-md-6\"><!-- subscribe form -->\r\n<h2 class=\"text-semibold mt-40 text-white\">{LIST_NAME}</h2>\r\n<div class=\"panel panel-body\">\r\n<h4>Please Confirm Subscription</h4>\r\n<hr />Click the link below to confirm your subscription:<br /> {SUBSCRIBE_CONFIRM_URL}<hr />\r\n<p>If you received this email by mistake, simply delete it. You won\'t be subscribed if you don\'t click the confirmation link above.</p></div>\r\n<!-- /subscribe form --></div>\r\n</div>\r\n</div>\r\n<!-- /main content --></div>\r\n<!-- /page content --> <!-- Footer -->\r\n<div class=\"footer text-white\">&copy; 2020. <span class=\"text-white\">Copyright &copy; 2021. All rights reserved.</a></div>\r\n<!-- /footer --></div>\r\n<!-- /page container -->', 'email', '2016-06-18 23:33:35', '2016-06-29 23:55:55', 'Sign-up confirmation'),
(7, '5763cab0459c8', 'sign_up_confirmation_thankyou', 'Sign-up', '<!-- Page container -->\r\n	<div class=\"page-container login-container\" style=\"min-height:249px\">\r\n\r\n		<!-- Page content -->\r\n		<div class=\"page-content\">\r\n\r\n			<!-- Main content -->\r\n			<div class=\"content-wrapper\">\r\n				<div class=\"row\">\r\n					<div class=\"col-sm-2 col-md-3\">\r\n						\r\n					</div>\r\n					<div class=\"col-sm-8 col-md-6\">\r\n\r\n                    <!-- subscribe form -->\r\n				                  \r\n					<h2 class=\"text-semibold mt-40 text-white\">{LIST_NAME}</h2>\r\n                        <div class=\"panel panel-body\">						\r\n                                                \r\n                        <h4>Subscription Confirmed</h4>\r\n                        <hr>\r\n						<p>Your subscription to our list has been confirmed.\r\n</p>\r\n<p>Thank you for subscribing!</p>\r\n\r\n						\r\n                     <a href=\"{UPDATE_PROFILE_URL}\" class=\"btn btn-info bg-teal-800\">Manage your preferences</a>\r\n\r\n					</div>\r\n\r\n                    <!-- /subscribe form -->\r\n    \r\n						\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<!-- /main content -->\r\n\r\n		</div>\r\n		<!-- /page content -->\r\n\r\n\r\n		<!-- Footer -->\r\n		<div class=\"footer text-white\">\r\n			<span class=\"text-white\">Copyright &copy; 2021. All rights reserved.</a>			\r\n		</div>\r\n		<!-- /footer -->\r\n\r\n	</div>\r\n	<!-- /page container -->', 'page', '2016-06-19 00:02:24', '2016-06-19 00:02:24', 'Thank you'),
(8, '5764b3c8bcf4a', 'sign_up_welcome_email', 'Sign-up', '<!-- Page container -->\r\n<div class=\"page-container login-container\" style=\"min-height: 249px;\"><!-- Page content -->\r\n<div class=\"page-content\"><!-- Main content -->\r\n<div class=\"content-wrapper\">\r\n<div class=\"row\">\r\n<div class=\"col-sm-2 col-md-3\"></div>\r\n<div class=\"col-sm-8 col-md-6\"><!-- subscribe form -->\r\n<h2 class=\"text-semibold mt-40 text-white\">{LIST_NAME}</h2>\r\n<div class=\"panel panel-body\">\r\n<h4>Your subscription to our list has been confirmed.</h4>\r\n<hr />\r\n<p>For your records, here is a copy of the information you submitted to us...</p>\r\n{SUBSCRIBER_SUMMARY}<hr />\r\n<p>If at any time you wish to stop receiving our emails, you can: <br /> <a href=\"{UNSUBSCRIBE_URL}\" class=\"btn btn-info bg-teal-800\">Unsubscribe here</a></p></div>\r\n<!-- /subscribe form --></div>\r\n</div>\r\n</div>\r\n<!-- /main content --></div>\r\n<!-- /page content --> <!-- Footer -->\r\n<div class=\"footer text-white\">&copy; 2020. <span class=\"text-white\">Copyright &copy; 2021. All rights reserved.</a></div>\r\n<!-- /footer --></div>\r\n<!-- /page container -->', 'email', '2016-06-19 16:36:56', '2016-06-29 23:56:51', 'Welcome'),
(9, '5764bac04f223', 'unsubscribe_form', 'Unsubscribe', '<!-- Page container -->\r\n	<div class=\"page-container login-container\" style=\"min-height:249px\">\r\n\r\n		<!-- Page content -->\r\n		<div class=\"page-content\">\r\n\r\n			<!-- Main content -->\r\n			<div class=\"content-wrapper\">\r\n				<div class=\"row\">\r\n					<div class=\"col-sm-2 col-md-3\">\r\n						\r\n					</div>\r\n					<div class=\"col-sm-8 col-md-6\">\r\n\r\n                    <!-- form -->\r\n				                  \r\n					<h2 class=\"text-semibold mt-40 text-white\">{LIST_NAME}</h2>\r\n                        <div class=\"panel panel-body\">						\r\n                                                \r\n                        <h4>Unsubscribe</h4>\r\n                        <hr>\r\n                        <p>You are going to opt out of mail list {LIST_NAME}, please click the button below to confirm. Really sorry to let you go!</p>\r\n                        \r\n                        \r\n\r\n\r\n<p>{UNSUBSCRIBE_BUTTON}</p>\r\n					</div>\r\n\r\n                    <!-- /form -->\r\n    \r\n						\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<!-- /main content -->\r\n\r\n		</div>\r\n		<!-- /page content -->\r\n\r\n\r\n		<!-- Footer -->\r\n		<div class=\"footer text-white\">\r\n			<span class=\"text-white\">Copyright &copy; 2021. All rights reserved.</a>			\r\n		</div>\r\n		<!-- /footer -->\r\n\r\n	</div>\r\n	<!-- /page container -->', 'page', '2016-06-19 17:06:40', '2016-06-19 17:06:40', 'Unsubscribe'),
(10, '5764c2d612aea', 'unsubscribe_success_page', 'Unsubscribe', '	<!-- Page container -->\n	<div class=\"page-container login-container\" style=\"min-height:249px\">\n\n		<!-- Page content -->\n		<div class=\"page-content\">\n\n			<!-- Main content -->\n			<div class=\"content-wrapper\">\n				<div class=\"row\">\n					<div class=\"col-sm-2 col-md-3\">\n						\n					</div>\n					<div class=\"col-sm-8 col-md-6\">\n\n                    <!-- form -->\n				                  \n					<h2 class=\"text-semibold mt-40 text-white\">{LIST_NAME}</h2>\n                        <div class=\"panel panel-body\">						\n                                                \n                        <h4>Unsubscribe Successful</h4>\n                        <hr>\n                        <p>You have been removed from {LIST_NAME}.</p>\n                        \n                        <br />\n					</div>\n\n                    <!-- /form -->\n    \n						\n					</div>\n				</div>\n			</div>\n			<!-- /main content -->\n\n		</div>\n		<!-- /page content -->\n\n\n		<!-- Footer -->\n		<div class=\"footer text-white\">\n			<span class=\"text-white\">Copyright &copy; 2021. All rights reserved.</a>			\n		</div>\n		<!-- /footer -->\n\n	</div>\n	<!-- /page container -->', 'page', '2016-06-19 17:41:10', '2016-06-19 17:41:10', 'Unsubscribed'),
(11, '5764c466641c7', 'unsubscribe_goodbye_email', 'Unsubscribe', '	<!-- Page container -->\n	<div class=\"page-container login-container\" style=\"min-height:249px\">\n\n		<!-- Page content -->\n		<div class=\"page-content\">\n\n			<!-- Main content -->\n			<div class=\"content-wrapper\">\n				<div class=\"row\">\n					<div class=\"col-sm-2 col-md-3\">\n						\n					</div>\n					<div class=\"col-sm-8 col-md-6\">\n\n                    <!-- form -->\n				                  \n					<h2 class=\"text-semibold mt-40 text-white\">{LIST_NAME}</h2>\n                        <div class=\"panel panel-body\">						\n                                                \n                        <h4>We have removed your email address from our list.</h4>\n                        <hr>\n                        <p>We\'re sorry to see you go.</p>\n                        <p>Was this a mistake? Did you forward one of our emails to a friend, and they clicked the unsubscribe link not realizing they were in fact unsubscribing you from this list? If this was a mistake, you can re-subscribe at: <br />\n<a href=\"{SUBSCRIBE_URL}\" class=\"btn btn-info bg-teal-800\">Subscribe</a>\n</p>				</div>\n\n                    <!-- /form -->\n    \n						\n					</div>\n				</div>\n			</div>\n			<!-- /main content -->\n\n		</div>\n		<!-- /page content -->\n\n\n		<!-- Footer -->\n		<div class=\"footer text-white\">\n			<span class=\"text-white\">Copyright &copy; 2021. All rights reserved.</a>			\n		</div>\n		<!-- /footer -->\n\n	</div>\n	<!-- /page container -->', 'email', '2016-06-19 17:47:50', '2016-06-19 17:47:50', 'Unsubscribed'),
(12, '5764c710527b8', 'profile_update_email', 'Update profile', '	<!-- Page container -->\r\n	<div class=\"page-container login-container\" style=\"min-height:249px\">\r\n\r\n		<!-- Page content -->\r\n		<div class=\"page-content\">\r\n\r\n			<!-- Main content -->\r\n			<div class=\"content-wrapper\">\r\n				<div class=\"row\">\r\n					<div class=\"col-sm-2 col-md-3\">\r\n						\r\n					</div>\r\n					<div class=\"col-sm-8 col-md-6\">\r\n\r\n                    <!-- form -->\r\n				                  \r\n					<h2 class=\"text-semibold mt-40 text-white\">{LIST_NAME}</h2>\r\n                        <div class=\"panel panel-body\">						\r\n                                                \r\n                        <p>We received a request to change your subscription preferences for List 1.</p>\r\n\r\n<p>If you made this request, and would like to change your preferences, use the link below</p>\r\n\r\n<p><a href=\"{UPDATE_PROFILE_URL}\">Update your preferences</a></p>\r\n\r\n<p>If you did not make this request, it was probably submitted by someone else by mistake. You can ignore this email, and no changes will be made to your subscription preferences.</p>				</div>\r\n\r\n                    <!-- /form -->\r\n    \r\n						\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<!-- /main content -->\r\n\r\n		</div>\r\n		<!-- /page content -->\r\n\r\n\r\n		<!-- Footer -->\r\n		<div class=\"footer text-white\">\r\n			<span class=\"text-white\">Copyright &copy; 2021. All rights reserved.</a>			\r\n		</div>\r\n		<!-- /footer -->\r\n\r\n	</div>\r\n	<!-- /page container -->', 'email', '2016-06-19 17:59:12', '2016-06-19 17:59:12', 'Update profile'),
(13, '5764c87e6bad1', 'profile_update_form', 'Update profile', '	<!-- Page container -->\r\n	<div class=\"page-container login-container\" style=\"min-height:249px\">\r\n\r\n		<!-- Page content -->\r\n		<div class=\"page-content\">\r\n\r\n			<!-- Main content -->\r\n			<div class=\"content-wrapper\">\r\n				<div class=\"row\">\r\n					<div class=\"col-sm-2 col-md-3\">\r\n						\r\n					</div>\r\n					<div class=\"col-sm-8 col-md-6\">\r\n\r\n                    <!-- form -->\r\n				                  \r\n					<h2 class=\"text-semibold mt-40 text-white\">{LIST_NAME}</h2>\r\n                        <div class=\"panel panel-body\">						\r\n<h4>Update your preferences</h4>\r\n<hr />\r\n                        {FIELDS}<br />\r\n{UPDATE_PROFILE_BUTTON} or <a class=\"btn btn-info bg-grey\" href=\"{UNSUBSCRIBE_URL}\">Unsubscribe</a>\r\n\r\n\r\n					</div>\r\n\r\n                    <!-- /form -->\r\n    \r\n						\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<!-- /main content -->\r\n\r\n		</div>\r\n		<!-- /page content -->\r\n\r\n\r\n		<!-- Footer -->\r\n		<div class=\"footer text-white\">\r\n			<span class=\"text-white\">Copyright &copy; 2021. All rights reserved.</a>			\r\n		</div>\r\n		<!-- /footer -->\r\n\r\n	</div>\r\n	<!-- /page container -->', 'page', '2016-06-19 18:05:18', '2016-06-19 18:05:18', 'Update profile'),
(14, '5764c90505f1c', 'profile_update_success_page', 'Update profile', '<!-- Page container -->\r\n	<div class=\"page-container login-container\" style=\"min-height:249px\">\r\n\r\n		<!-- Page content -->\r\n		<div class=\"page-content\">\r\n\r\n			<!-- Main content -->\r\n			<div class=\"content-wrapper\">\r\n				<div class=\"row\">\r\n					<div class=\"col-sm-2 col-md-3\">\r\n						\r\n					</div>\r\n					<div class=\"col-sm-8 col-md-6\">\r\n\r\n                    <!-- subscribe form -->\r\n				                  \r\n					<h2 class=\"text-semibold mt-40 text-white\">{LIST_NAME}</h2>\r\n                        <div class=\"panel panel-body\">						\r\n                                                \r\n                        <h4>Profile Updated</h4>\r\n                        <hr>\r\n						<p>Your profile information has been updated. For your records, here is a copy of the information you submitted to us...</p>\r\n\r\n{SUBSCRIBER_SUMMARY}			</div>\r\n\r\n                    <!-- /subscribe form -->\r\n    \r\n						\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<!-- /main content -->\r\n\r\n		</div>\r\n		<!-- /page content -->\r\n\r\n\r\n		<!-- Footer -->\r\n		<div class=\"footer text-white\">\r\n			<span class=\"text-white\">Copyright &copy; 2021. All rights reserved.</a>			\r\n		</div>\r\n		<!-- /footer -->\r\n\r\n	</div>\r\n	<!-- /page container -->', 'page', '2016-06-19 18:07:33', '2016-06-19 18:07:33', 'Update profile'),
(15, '5764c9812b0bc', 'profile_update_email_sent', 'Update profile', '	<!-- Page container -->\r\n	<div class=\"page-container login-container\" style=\"min-height:249px\">\r\n\r\n		<!-- Page content -->\r\n		<div class=\"page-content\">\r\n\r\n			<!-- Main content -->\r\n			<div class=\"content-wrapper\">\r\n				<div class=\"row\">\r\n					<div class=\"col-sm-2 col-md-3\">\r\n						\r\n					</div>\r\n					<div class=\"col-sm-8 col-md-6\">\r\n\r\n                    <!-- form -->\r\n				                  \r\n					<h2 class=\"text-semibold mt-40 text-white\">{LIST_NAME}</h2>\r\n                        <div class=\"panel panel-body\">						\r\n<h4>Email sent</h4>          \r\n<hr />\r\n                        <p>For security, we\'ve sent an email to your inbox that contains a link to update your preferences.</p></div>\r\n\r\n                    <!-- /form -->\r\n    \r\n						\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<!-- /main content -->\r\n\r\n		</div>\r\n		<!-- /page content -->\r\n\r\n\r\n		<!-- Footer -->\r\n		<div class=\"footer text-white\">\r\n			<span class=\"text-white\">Copyright &copy; 2021. All rights reserved.</a>			\r\n		</div>\r\n		<!-- /footer -->\r\n\r\n	</div>\r\n	<!-- /page container -->', 'page', '2016-06-19 17:59:11', '2016-06-19 18:09:37', 'Update profile'),
(16, '58ac002f2e5c3', 'registration_confirmation_email', 'Subscription', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h2>Hello {CUSTOMER_NAME}, welcome to Acelle Mail</h2>\r\n<div class=\"page-container login-container\" style=\"min-height: 249px;\">\r\n<div class=\"page-content\">\r\n<div class=\"content-wrapper\">\r\n<div class=\"row\">\r\n<div class=\"col-sm-8 col-md-6\">\r\n<div class=\"panel panel-body\">\r\n<h4>Please Confirm&nbsp;Registration</h4>\r\n<hr />Click the link below to activate your account:<br /><a href=\"{ACTIVATION_URL}\">{ACTIVATION_URL}</a><br /><hr />\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"footer text-white\">\r\n<div class=\"footer text-muted\">&copy; 2020. Acelle Email Marketing Application by <a class=\"\" href=\"http://acellemail.com/\" target=\"_blank\">Acellemail.com</a></div>\r\n</div>\r\n<!-- /footer --></div>\r\n<!-- /page container -->\r\n<p>&nbsp;</p>\r\n</body>\r\n</html>', 'email', NULL, '2017-02-23 03:44:26', 'Registration confirmation');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mail_lists`
--

CREATE TABLE `mail_lists` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `contact_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_subject` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remind_message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subscribe` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_unsubscribe` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_daily` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `send_welcome_email` tinyint(1) NOT NULL DEFAULT 0,
  `unsubscribe_notification` tinyint(1) NOT NULL DEFAULT 0,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subscribe_confirmation` tinyint(1) NOT NULL DEFAULT 1,
  `cache` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `all_sending_servers` tinyint(1) DEFAULT 0,
  `embedded_form_options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mail_lists_sending_servers`
--

CREATE TABLE `mail_lists_sending_servers` (
  `id` int(10) UNSIGNED NOT NULL,
  `sending_server_id` int(10) UNSIGNED NOT NULL,
  `mail_list_id` int(10) UNSIGNED NOT NULL,
  `fitness` int(11) NOT NULL,
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
(3, '2016_06_09_172556_create_mail_lists_table', 1),
(4, '2016_06_09_174024_create_contacts_table', 1),
(5, '2016_06_09_174351_create_countries_table', 1),
(6, '2016_06_10_041252_create_languages_table', 1),
(7, '2016_06_10_174522_create_admin_groups_table', 1),
(8, '2016_06_10_174523_create_admins_table', 1),
(9, '2016_06_10_174527_create_customer_groups_table', 1),
(10, '2016_06_10_174528_create_customers_table', 1),
(11, '2016_06_10_174529_create_campaigns_table', 1),
(12, '2016_06_11_073311_add_foreign_keys', 1),
(13, '2016_06_11_182326_add_email_to_contact', 1),
(14, '2016_06_11_182432_add_city_to_contact', 1),
(15, '2016_06_12_030828_rename_mail_list_description_to_remind_message', 1),
(16, '2016_06_12_152501_add_custom_order_to_mail_lists', 1),
(17, '2016_06_13_045445_create_tracking_logs_table', 1),
(18, '2016_06_14_025716_create_fields_table', 1),
(19, '2016_06_14_164304_create_field_options_table', 1),
(20, '2016_06_15_025158_create_subscribers_table', 1),
(21, '2016_06_15_064031_create_subscriber_fields_table', 1),
(22, '2016_06_16_034306_create_segments_table', 1),
(23, '2016_06_16_062814_create_segment_conditions_table', 1),
(24, '2016_06_16_133626_create_jobs_table', 1),
(25, '2016_06_17_041253_create_layouts_table', 1),
(26, '2016_06_17_042331_create_pages_table', 1),
(27, '2016_06_19_145423_create_open_logs_table', 1),
(28, '2016_06_19_145434_create_click_logs_table', 1),
(29, '2016_06_19_145452_create_unsubscribe_logs_table', 1),
(30, '2016_06_19_145506_create_feedback_logs_table', 1),
(31, '2016_06_21_074950_create_templates_table', 1),
(32, '2016_06_21_145755_add_segment_foreign_key_to_campaigns_table', 1),
(33, '2016_06_29_024509_create_bounce_handlers_table', 1),
(34, '2016_06_29_041133_create_feedback_loop_handlers_table', 1),
(35, '2016_07_01_150630_create_sending_servers_table', 1),
(36, '2016_07_04_092555_create_sending_domains_table', 1),
(37, '2016_07_05_020001_create_settings_table', 1),
(38, '2016_07_05_073002_create_campaign_links_table', 1),
(39, '2016_07_06_034536_add_user_foreign_key_to_users', 1),
(40, '2016_07_06_145609_create_logs_table', 1),
(41, '2016_07_07_034047_add_tracking_logs_foreign_keys', 1),
(42, '2016_07_07_080813_create_bounce_logs_table', 1),
(43, '2016_07_10_030645_create_ip_locations_table', 1),
(44, '2016_07_12_031139_create_blacklists_table', 1),
(45, '2016_09_08_163044_add_reason_column_for_blacklists', 1),
(46, '2016_09_16_123651_create_customer_group_sending_servers_table', 1),
(47, '2016_09_26_035705_create_currencies_table', 1),
(48, '2016_09_26_035706_create_plans_table', 1),
(49, '2016_09_27_035248_add_sending_servers_api_secret_key', 1),
(50, '2016_10_05_151438_add_source_to_templates', 1),
(51, '2016_10_06_131656_add_template_source_to_campaigns', 1),
(52, '2016_10_21_032525_add_index_to_subscribers', 1),
(53, '2016_11_02_033333_add_campaigns_last_error_field', 1),
(54, '2016_11_02_094446_add_default_to_languages', 1),
(55, '2016_11_06_045817_add_users_quota_column', 1),
(56, '2016_11_23_103930_create_failed_jobs_table', 1),
(57, '2016_12_15_023825_add_subscribe_confirmation_to_mail_lists', 1),
(58, '2016_12_20_015411_add_index_to_ip_locations_ip_address', 1),
(59, '2016_12_20_015536_add_index_to_open_logs_ip_address', 1),
(60, '2016_12_27_104155_create_auto_trigger_table', 1),
(61, '2016_12_28_095315_add_auto_trigger_id_to_tracking_logs', 1),
(62, '2016_12_31_031017_add_image_to_campaigns', 1),
(63, '2017_01_02_173918_add_subscription_type_column', 1),
(64, '2017_01_11_114659_create_campaigns_lists_segments_table', 1),
(65, '2017_01_11_174230_add_default_mail_list_id_to_campaigns', 1),
(66, '2017_01_12_155942_delete_list_segmnet_cols_form_campaigns', 1),
(67, '2017_01_22_175544_add_sending_servers_quota_column', 1),
(68, '2017_01_24_092138_update_user_quota', 1),
(69, '2017_02_17_071823_create_plans_sending_servers_table', 1),
(70, '2017_02_22_082127_create_user_activations_table', 1),
(71, '2017_02_22_082327_add_activated_to_users', 1),
(72, '2017_02_24_162634_add_cache_column_for_campaigns', 1),
(73, '2017_02_26_123202_add_cache_column_for_mail_lists', 1),
(74, '2017_02_27_045021_add_cache_column_for_customers', 1),
(75, '2017_03_02_033500_create_mail_lists_sending_servers_table', 1),
(76, '2017_03_02_035144_add_all_sending_servers_to_mail_lists', 1),
(77, '2017_03_11_160853_add_email_to_bounce_handlers', 1),
(78, '2017_03_17_012705_add_subject_to_layouts', 1),
(79, '2017_03_17_012734_add_subject_to_pages', 1),
(80, '2017_04_17_040000_create_email_verification_servers_table', 1),
(81, '2017_04_17_043522_create_email_verifications_table', 1),
(82, '2017_04_25_064529_create_plans_email_verification_servers_table', 1),
(83, '2017_04_28_112900_add_billing_info_to_contacts', 1),
(84, '2017_05_03_092307_change_segment_conditions_field_id_nullable', 1),
(85, '2017_06_02_040458_patch_null_start_at_for_subscriptions', 1),
(86, '2017_06_30_104909_add_email_to_feedback_loop_handlers', 1),
(87, '2017_07_12_020023_add_customer_amin_ids_to_blacklists', 1),
(88, '2017_07_14_030750_add_portuguese', 1),
(89, '2017_07_18_130505_add_tax_billing_required_to_plans', 1),
(90, '2017_07_24_033211_create_sub_accounts_table', 1),
(91, '2017_07_29_173114_add_tracking_logs_sub_account_id', 1),
(92, '2017_08_11_093849_create_index_on_email_verifications_result', 1),
(93, '2017_08_12_170910_add_index_for_subscribers_email', 1),
(94, '2017_08_15_102115_add_segments_cache_column', 1),
(95, '2017_10_14_172620_add_german', 1),
(96, '2018_05_29_032030_add_verification_fields_to_sending_domains_table', 1),
(97, '2018_05_29_091718_add_tracking_domain_id_to_campaigns', 1),
(98, '2018_06_27_074852_add_outside_url_columns_to_pages', 1),
(99, '2018_07_12_065620_add_default_from_email_to_sending_servers', 1),
(100, '2018_07_12_080758_add_use_default_sending_server_from_email_to_campaigns', 1),
(101, '2018_07_13_150351_update_sending_server_and_campaign_default_from_email', 1),
(102, '2018_07_23_072940_add_verification_hostname_dkim_selector_to_sending_domains', 1),
(103, '2018_07_31_173424_create_notifications_table', 1),
(104, '2018_08_22_151656_change_jobs_datatable_for_laravel53', 1),
(105, '2018_08_31_151114_change_sending_domains_table', 1),
(106, '2018_09_02_165941_update_nullable', 1),
(107, '2018_09_27_111714_modify_sending_domains_table', 1),
(108, '2018_09_27_165011_update_sparkpost_sending_servers', 1),
(109, '2018_11_06_032139_create_senders_table', 1),
(110, '2018_11_27_174942_update_subscriber_fields_table', 1),
(111, '2018_12_20_065508_add_options_to_sending_servers', 1),
(112, '2018_12_28_022508_change_unsubscribe_logs_table', 1),
(113, '2019_01_02_081142_add_is_primary_to_plans_sending_servers', 1),
(114, '2019_01_09_081643_reset_subscriptions_table', 1),
(115, '2019_05_17_041704_add_visibility_column', 1),
(116, '2019_06_06_093339_add_description_to_plan', 1),
(117, '2019_06_10_034534_drop_self_referential_constraints_on_auto_triggers_table', 1),
(118, '2019_11_13_024803_load_default_themes', 1),
(119, '2019_11_28_022304_create_automation2s_table', 1),
(120, '2019_12_06_013433_create_emails_table', 1),
(121, '2019_12_10_014005_create_attachments_table', 1),
(122, '2019_12_11_022619_update_auto_triggers_table', 1),
(123, '2019_12_14_021438_delete_plans_is_default', 1),
(124, '2019_12_16_013420_add_track_cols_to_emails', 1),
(125, '2019_12_17_040745_create_email_links_table', 1),
(126, '2019_12_18_032219_add_action_id_to_emails', 1),
(127, '2019_12_19_125841_add_email_id_to_tracking_logs_table', 1),
(128, '2019_12_23_084044_add_executed_to_auto_triggers_table', 1),
(129, '2019_12_23_142909_create_timelines_table', 1),
(130, '2019_12_26_123553_add_activity_type_to_timelines_table', 1),
(131, '2019_12_27_164952_make_message_id_in_unsubscribe_logs_table_nullable', 1),
(132, '2019_12_27_165404_make_user_agent_in_unsubscribe_logs_table_nullable', 1),
(133, '2019_12_27_165937_add_subscriber_id_to_unsubscribe_logs_table', 1),
(134, '2019_12_30_101626_add_tags_to_subscribers', 1),
(135, '2020_01_06_074816_change_emails_content', 1),
(136, '2020_01_13_024133_set_default_payment_method', 1),
(137, '2020_01_14_081807_generate_app_url_enviroment_setting_if_not_exist', 1),
(138, '2020_02_04_092300_create_subscription_logs_table', 1),
(139, '2020_02_10_020233_add_timezone_to_suscriptions', 1),
(140, '2020_02_11_081812_add_started_at_and_next_start_at_to_subscriptions_table', 1),
(141, '2020_02_17_020856_add_visible_to_plans', 1),
(142, '2020_02_19_093026_add_segment_id_to_automation2s', 1),
(143, '2020_03_04_014436_add_plain_to_email', 1),
(144, '2020_03_27_030133_change_sending_servers_options_column', 1),
(145, '2020_04_03_062513_add_sending_server_id_to_sending_domains', 1),
(146, '2020_04_03_062925_add_options_column_to_sending_domains', 1),
(147, '2020_04_05_173546_add_sending_server_id_to_senders_table', 1),
(148, '2020_04_05_173951_drop_column_type_in_senders_table', 1),
(149, '2020_04_06_164531_add_default_template_for_sender_verification_email', 1),
(150, '2020_04_08_024632_update_started_at_in_subscriptions_table', 1),
(151, '2020_04_09_094225_add_default_template_for_sender_verification_email_amazon_ses', 1),
(152, '2020_04_15_094229_add_text_direction_to_customers_admins', 1),
(153, '2020_05_21_133632_add_column_cache_to_automation2s_table', 1),
(154, '2020_06_02_121854_add_template_for_unsubscribe_notification_email', 1),
(155, '2020_06_08_134621_add_preheader_to_campaigns', 1),
(156, '2020_06_12_025945_add_last_error_column_to_automation2s', 1),
(157, '2020_06_29_130700_create_tracking_domains_table', 1),
(158, '2020_06_29_132507_add_tracking_domain_foreign_key', 1),
(159, '2020_07_02_023916_create_delivery_attempt_table', 1),
(160, '2020_07_02_072841_add_scheme_to_tracking_domains', 1),
(161, '2020_07_02_170337_add_tracking_domain_id_to_emails', 1),
(162, '2020_09_25_134528_add_one_time_api_token_to_users', 1),
(163, '2020_09_26_035313_add_running_pid_to_campaigns_table', 1),
(164, '2020_09_30_104755_create_plugins_table', 1),
(165, '2021_01_25_155902_add_data_to_plugins', 1),
(166, '2021_03_12_023933_create_sources_table', 1),
(167, '2021_03_12_024042_create_products_table', 1),
(168, '2021_04_22_005606_add_payment_method_to_customers', 1),
(169, '2021_04_22_025613_create_billing_addresses_table', 1),
(170, '2021_04_23_121906_create_invoices_table', 1),
(171, '2021_04_23_122104_create_invoice_items_table', 1),
(172, '2021_04_25_152033_create_transactions_table', 1),
(173, '2021_04_29_085142_add_cashier_default_settings', 1),
(174, '2021_05_07_024007_add_mail_list_id_to_sources', 1),
(175, '2021_05_07_025954_nullable_cols_contacts', 1),
(176, '2021_05_22_180347_update_unsubscribe_logs', 1),
(177, '2021_05_29_101319_add_japanese_language', 1),
(178, '2021_06_12_014642_add_category_to_templates', 1),
(179, '2021_06_12_150006_remove_source_from_templates', 1),
(180, '2021_06_12_151354_add_builder_to_templates', 1),
(181, '2021_06_13_055150_create_template_categories_table', 1),
(182, '2021_06_13_055346_create_templates_categories_table', 1),
(183, '2021_06_13_061052_remove_category_from_templates', 1),
(184, '2021_06_13_142819_add_template_id_to_campaigns', 1),
(185, '2021_06_13_143038_remove_html_from_campaigns', 1),
(186, '2021_06_14_173636_add_url_to_campaign_links_table', 1),
(187, '2021_06_15_013459_add_auto_billing_data_to_customers', 1),
(188, '2021_06_16_025209_update_subscriptions_keys', 1),
(189, '2021_06_18_022006_remove_cols_from_transactions', 1),
(190, '2021_06_19_164657_switch_users_customers_admins_table', 1),
(191, '2021_06_20_074007_add_user_details_to_users_table', 1),
(192, '2021_06_22_014825_add_template_id_to_emails', 1),
(193, '2021_06_22_081643_remove_content_from_emails', 1),
(194, '2021_06_22_084528_add_customer_id_to_emails_table', 1),
(195, '2021_06_26_021528_add_debug_column_to_notifications', 1),
(196, '2021_06_26_104628_drop_image_columns_in_customers_and_admins', 1),
(197, '2021_06_27_071652_create_job_batches_table', 1),
(198, '2021_06_27_073007_add_uuid_to_failed_jobs_table', 1),
(199, '2021_06_27_164858_job_monitor', 1),
(200, '2021_06_28_155121_drop_timezone_from_subscriptions', 1),
(201, '2021_06_28_155328_invoices_metadata_nullable', 1),
(202, '2021_06_28_155724_subscription_logs_data_nullable', 1),
(203, '2021_06_29_125613_make_offline_payment_as_default', 1),
(204, '2021_06_30_022321_make_subscribers_tags_nullable', 1),
(205, '2021_07_02_043715_add_vat_to_plans', 1),
(206, '2021_07_03_105220_drop_custom_order_column', 1),
(207, '2021_07_06_022100_remove_color_from_plans', 1),
(208, '2021_07_06_022624_make_tags_nullable_from_subscribers', 1),
(209, '2021_07_06_152941_make_timezone_in_automations_nullable', 1),
(210, '2021_07_08_024745_make_settings_value_nullable', 1),
(211, '2021_07_08_180613_make_fields_nullable', 1),
(212, '2021_07_09_044328_add_vat_to_invoice_items', 1),
(213, '2021_07_11_061704_lists_default_subject_nullable', 1),
(214, '2021_07_13_105538_make_fields_nullable_2', 1),
(215, '2021_07_15_022541_add_allow_manual_review_to_transactions', 1),
(216, '2021_07_17_153400_update_tracking_logs_error_column', 1),
(217, '2021_07_18_161036_default_end_period_last_days_settings', 1),
(218, '2021_07_20_023046_make_contacts_cols_nullable', 1),
(219, '2021_07_20_023243_make_automation2s_cols_nullable', 1),
(220, '2021_07_20_023534_make_emails_cols_nullable', 1),
(221, '2021_07_21_074508_make_cols_nullable', 1),
(222, '2021_07_22_035117_remove_templates_shared_and_image_columns', 1),
(223, '2021_07_22_040758_make_emails_cols_2_nullable', 1),
(224, '2021_07_26_150052_update_sending_domains', 1),
(225, '2021_07_30_043101_add_is_default_column_to_templates', 1),
(226, '2021_07_30_050454_reset_templates', 1),
(227, '2021_08_06_232431_add_billing_info_to_invoices', 1),
(228, '2021_08_10_025208_make_default_values_for_fields', 1),
(229, '2021_08_14_093744_add_default_value_for_mail_lists_all_sending_servers', 1),
(230, '2021_08_16_102708_add_menu_layout_to_customers', 1),
(231, '2021_08_16_103656_add_menu_layout_to_admins', 1),
(232, '2021_08_20_015640_add_embedded_form_options_to_lists', 1),
(233, '2021_08_23_155419_update_tracking_domains_status', 1),
(234, '2021_08_25_032646_add_theme_to_templates', 1),
(235, '2021_08_27_083634_add_dark_mode_to_customers', 1),
(236, '2021_08_27_102137_add_dark_mode_to_admins', 1),
(237, '2021_08_28_021505_change_dark_mode_type', 1),
(238, '2021_09_11_163156_transactions_error_change', 1),
(239, '2021_09_13_165603_initialize_default_templates', 1),
(240, '2021_09_29_110343_rename_emails_from_column_to_from_email', 1),
(241, '2021_10_03_033322_add_verification_status_and_last_verification_at_to_subscribers_table', 1),
(242, '2021_10_03_034904_update_subscribers_verification_status', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `visibility` tinyint(1) NOT NULL DEFAULT 1,
  `debug` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `uid`, `type`, `title`, `message`, `level`, `admin_id`, `customer_id`, `created_at`, `updated_at`, `visibility`, `debug`) VALUES
(35, '61923f51981c0', 'Acelle\\Library\\Notification\\CronJob', 'CronJob', 'Application\'s CronJob has not been executed during the last 15 minutes. Last executed at 1970-01-01 00:00:00', 'warning', NULL, NULL, '2021-11-15 11:06:57', '2021-11-15 11:06:57', 1, NULL),
(37, '61a8edef9dd56', 'Acelle\\Library\\Notification\\BackendError', 'PHP CLI ERROR', '[X1 Yoga] [2021-12-02 16:01:51 UTC+00:00] Symfony\\Component\\Console\\Exception\\CommandNotFoundException: Command \"rm\" is not defined.', 'warning', NULL, NULL, '2021-12-02 16:01:51', '2021-12-02 16:01:51', 1, '#0 C:\\xampp\\htdocs\\acellemail\\vendor\\symfony\\console\\Application.php(255): Symfony\\Component\\Console\\Application->find(\'rm\')\n#1 C:\\xampp\\htdocs\\acellemail\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#2 C:\\xampp\\htdocs\\acellemail\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#3 C:\\xampp\\htdocs\\acellemail\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#4 C:\\xampp\\htdocs\\acellemail\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#5 {main}');

-- --------------------------------------------------------

--
-- Table structure for table `open_logs`
--

CREATE TABLE `open_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `message_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `layout_id` int(10) UNSIGNED NOT NULL,
  `mail_list_id` int(10) UNSIGNED NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `use_outside_url` tinyint(1) NOT NULL DEFAULT 0,
  `outside_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(10) UNSIGNED DEFAULT NULL,
  `currency_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(16,2) NOT NULL,
  `frequency_amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `frequency_unit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tax_billing_required` tinyint(1) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visible` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `vat` decimal(16,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `uid`, `admin_id`, `currency_id`, `name`, `price`, `frequency_amount`, `frequency_unit`, `options`, `status`, `created_at`, `updated_at`, `tax_billing_required`, `description`, `visible`, `vat`) VALUES
(1, '58bd48f91fcab', NULL, 1, 'Free', '0.00', '1', 'month', '{\"email_max\":\"5000\",\"list_max\":\"10\",\"subscriber_max\":\"1000\",\"subscriber_per_list_max\":\"-1\",\"segment_per_list_max\":\"3\",\"campaign_max\":\"20\",\"automation_max\":\"10\",\"billing_cycle\":\"monthly\",\"sending_limit\":\"1000_per_hour\",\"sending_quota\":1000,\"sending_quota_time\":1,\"sending_quota_time_unit\":\"hour\",\"max_process\":\"1\",\"all_sending_servers\":\"yes\",\"max_size_upload_total\":\"500\",\"max_file_size_upload\":\"5\",\"unsubscribe_url_required\":\"yes\",\"access_when_offline\":\"no\",\"create_sending_domains\":\"no\",\"sending_servers_max\":\"-1\",\"sending_domains_max\":\"-1\",\"all_email_verification_servers\":\"yes\",\"create_email_verification_servers\":\"no\",\"email_verification_servers_max\":\"-1\",\"list_import\":\"yes\",\"list_export\":\"yes\",\"all_sending_server_types\":\"yes\",\"sending_server_types\":{\"amazon-smtp\":\"yes\",\"amazon-api\":\"yes\",\"sendgrid-smtp\":\"yes\",\"sendgrid-api\":\"yes\",\"mailgun-api\":\"yes\",\"mailgun-smtp\":\"yes\",\"elasticemail-api\":\"yes\",\"elasticemail-smtp\":\"yes\",\"sparkpost-api\":\"yes\",\"sparkpost-smtp\":\"yes\",\"smtp\":\"yes\",\"sendmail\":\"yes\",\"php-mail\":\"yes\"},\"sending_server_option\":\"system\",\"sending_server_subaccount_uid\":null,\"api_access\":\"yes\",\"email_footer_enabled\":\"yes\",\"email_footer_trial_period_only\":\"no\",\"html_footer\":\"\",\"plain_text_footer\":\"\",\"payment_gateway\":\"\"}', 'inactive', '2017-03-06 09:33:12', '2020-01-14 03:59:58', 0, 'All the basics for businesses or individual to get started with email marketing', '0', '0.00'),
(2, '5cf8e24978ede', NULL, 1, 'Essentials', '19.00', '1', 'month', '{\"email_max\":\"1000\",\"list_max\":\"2\",\"subscriber_max\":\"5000\",\"subscriber_per_list_max\":\"1000\",\"segment_per_list_max\":\"0\",\"campaign_max\":\"10\",\"automation_max\":\"10\",\"billing_cycle\":\"monthly\",\"sending_limit\":\"100_per_minute\",\"sending_quota\":100,\"sending_quota_time\":1,\"sending_quota_time_unit\":\"minute\",\"max_process\":\"1\",\"all_sending_servers\":\"yes\",\"max_size_upload_total\":\"200\",\"max_file_size_upload\":\"5\",\"unsubscribe_url_required\":\"yes\",\"access_when_offline\":\"no\",\"create_sending_domains\":\"yes\",\"sending_servers_max\":\"-1\",\"sending_domains_max\":\"-1\",\"all_email_verification_servers\":\"yes\",\"create_email_verification_servers\":\"no\",\"email_verification_servers_max\":\"-1\",\"list_import\":\"yes\",\"list_export\":\"yes\",\"all_sending_server_types\":\"yes\",\"sending_server_types\":{\"amazon-smtp\":\"yes\",\"amazon-api\":\"yes\",\"sendgrid-smtp\":\"yes\",\"sendgrid-api\":\"yes\",\"mailgun-api\":\"yes\",\"mailgun-smtp\":\"yes\",\"elasticemail-api\":\"yes\",\"elasticemail-smtp\":\"yes\",\"sparkpost-api\":\"yes\",\"sparkpost-smtp\":\"yes\",\"smtp\":\"yes\",\"sendmail\":\"yes\",\"php-mail\":\"yes\"},\"sending_server_option\":\"system\",\"sending_server_subaccount_uid\":null,\"api_access\":\"no\",\"email_footer_enabled\":\"yes\",\"email_footer_trial_period_only\":\"no\",\"html_footer\":\"\",\"plain_text_footer\":\"\",\"payment_gateway\":\"\"}', 'inactive', '2019-06-05 15:52:09', '2020-01-14 04:00:12', 0, 'Must-have features for marketing agency & individual to engage in email marketing', '0', '0.00'),
(3, '58bd48f92088f', NULL, 1, 'Standard', '250.00', '1', 'month', '{\"email_max\":\"100000\",\"list_max\":\"50\",\"subscriber_max\":\"50000\",\"subscriber_per_list_max\":\"-1\",\"segment_per_list_max\":\"3\",\"campaign_max\":\"40\",\"automation_max\":\"20\",\"billing_cycle\":\"monthly\",\"sending_limit\":\"10000_per_hour\",\"sending_quota\":1000,\"sending_quota_time\":1,\"sending_quota_time_unit\":\"hour\",\"max_process\":\"1\",\"all_sending_servers\":\"yes\",\"max_size_upload_total\":\"10000\",\"max_file_size_upload\":\"50\",\"unsubscribe_url_required\":\"yes\",\"access_when_offline\":\"no\",\"create_sending_domains\":\"no\",\"sending_servers_max\":\"-1\",\"sending_domains_max\":\"-1\",\"all_email_verification_servers\":\"yes\",\"create_email_verification_servers\":\"no\",\"email_verification_servers_max\":\"-1\",\"list_import\":\"yes\",\"list_export\":\"yes\",\"all_sending_server_types\":\"yes\",\"sending_server_types\":{\"amazon-smtp\":\"yes\",\"amazon-api\":\"yes\",\"sendgrid-smtp\":\"yes\",\"sendgrid-api\":\"yes\",\"mailgun-api\":\"yes\",\"mailgun-smtp\":\"yes\",\"elasticemail-api\":\"yes\",\"elasticemail-smtp\":\"yes\",\"sparkpost-api\":\"yes\",\"sparkpost-smtp\":\"yes\",\"smtp\":\"yes\",\"sendmail\":\"yes\",\"php-mail\":\"yes\"},\"sending_server_option\":\"system\",\"sending_server_subaccount_uid\":null,\"api_access\":\"yes\",\"email_footer_enabled\":\"yes\",\"email_footer_trial_period_only\":\"no\",\"html_footer\":\"\",\"plain_text_footer\":\"\",\"payment_gateway\":\"\"}', 'inactive', '2017-03-06 09:33:12', '2020-01-14 04:01:05', 0, 'Powerful statistics & insight report for maximized sales & marketing performance', '0', '0.00'),
(4, '58bd4b4d0d4c3', NULL, 1, 'Premium', '895.00', '1', 'month', '{\"email_max\":\"1000000\",\"list_max\":\"-1\",\"subscriber_max\":\"-1\",\"subscriber_per_list_max\":\"-1\",\"segment_per_list_max\":\"3\",\"campaign_max\":\"-1\",\"automation_max\":\"-1\",\"billing_cycle\":\"monthly\",\"sending_limit\":\"50000_per_hour\",\"sending_quota\":1000,\"sending_quota_time\":1,\"sending_quota_time_unit\":\"hour\",\"max_process\":\"1\",\"all_sending_servers\":\"yes\",\"max_size_upload_total\":\"50000\",\"max_file_size_upload\":\"100\",\"unsubscribe_url_required\":\"yes\",\"access_when_offline\":\"no\",\"create_sending_domains\":\"yes\",\"sending_servers_max\":\"5\",\"sending_domains_max\":\"-1\",\"all_email_verification_servers\":\"yes\",\"create_email_verification_servers\":\"no\",\"email_verification_servers_max\":\"-1\",\"list_import\":\"yes\",\"list_export\":\"yes\",\"all_sending_server_types\":\"yes\",\"sending_server_types\":{\"amazon-smtp\":\"yes\",\"amazon-api\":\"yes\",\"sendgrid-smtp\":\"yes\",\"sendgrid-api\":\"yes\",\"mailgun-api\":\"yes\",\"mailgun-smtp\":\"yes\",\"elasticemail-api\":\"yes\",\"elasticemail-smtp\":\"yes\",\"sparkpost-api\":\"yes\",\"sparkpost-smtp\":\"yes\",\"smtp\":\"yes\",\"sendmail\":\"yes\",\"php-mail\":\"yes\"},\"sending_server_option\":\"system\",\"sending_server_subaccount_uid\":null,\"api_access\":\"yes\",\"email_footer_enabled\":\"yes\",\"email_footer_trial_period_only\":\"no\",\"html_footer\":\"\",\"plain_text_footer\":\"\",\"payment_gateway\":\"\"}', 'inactive', '2017-03-06 09:43:09', '2020-01-14 04:01:32', 0, 'Advanced features for professionals who need unlimited marketing capability', '0', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `plans_email_verification_servers`
--

CREATE TABLE `plans_email_verification_servers` (
  `id` int(10) UNSIGNED NOT NULL,
  `server_id` int(10) UNSIGNED NOT NULL,
  `plan_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans_sending_servers`
--

CREATE TABLE `plans_sending_servers` (
  `id` int(10) UNSIGNED NOT NULL,
  `sending_server_id` int(10) UNSIGNED NOT NULL,
  `plan_id` int(10) UNSIGNED NOT NULL,
  `fitness` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plugins`
--

CREATE TABLE `plugins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `source_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(16,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `source_item_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `segments`
--

CREATE TABLE `segments` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_list_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matching` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cache` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `segment_conditions`
--

CREATE TABLE `segment_conditions` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `segment_id` int(10) UNSIGNED NOT NULL,
  `field_id` int(10) UNSIGNED DEFAULT NULL,
  `operator` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `senders`
--

CREATE TABLE `senders` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sending_server_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sending_domains`
--

CREATE TABLE `sending_domains` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dkim_private` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dkim_public` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `signing_enabled` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `verification_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sending_server_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sending_servers`
--

CREATE TABLE `sending_servers` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `bounce_handler_id` int(10) UNSIGNED DEFAULT NULL,
  `feedback_loop_handler_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `host` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aws_access_key_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aws_secret_access_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aws_region` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` int(11) DEFAULT NULL,
  `smtp_protocol` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sendmail_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quota_value` int(11) NOT NULL,
  `quota_base` int(11) NOT NULL,
  `quota_unit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `api_secret_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quota` blob DEFAULT NULL,
  `default_from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'system.payment_gateway', 'direct', '2021-11-10 10:03:36', '2021-11-10 10:03:36'),
(2, 'recurring_charge_before_days', '2', '2021-11-10 10:03:39', '2021-11-10 10:03:39'),
(3, 'renew_free_plan', 'yes', '2021-11-10 10:03:39', '2021-11-10 10:03:39'),
(4, 'end_period_last_days', '7', '2021-11-10 10:03:39', '2021-11-10 10:03:42'),
(5, 'gateways', '[\"direct\",\"offline\"]', '2021-11-10 10:03:41', '2021-11-10 10:03:41'),
(6, 'url_delivery_handler', 'http://localhost/acellemail/public/delivery/notify', '2016-12-31 20:00:00', '2016-12-31 20:00:00'),
(7, 'url_unsubscribe', 'http://localhost/acellemail/public/c/SUBSCRIBER/unsubscribe/MESSAGE_ID', '2016-12-31 20:00:00', '2016-12-31 20:00:00'),
(8, 'url_open_track', 'http://localhost/acellemail/public/p/MESSAGE_ID/open', '2016-12-31 20:00:00', '2016-12-31 20:00:00'),
(9, 'url_web_view', 'http://localhost/acellemail/public/campaigns/MESSAGE_ID/web-view', '2016-12-31 20:00:00', '2016-12-31 20:00:00'),
(10, 'url_click_track', 'http://localhost/acellemail/public/p/URL/click/MESSAGE_ID', '2016-12-31 20:00:00', '2016-12-31 20:00:00'),
(11, 'url_update_profile', 'http://localhost/acellemail/public/lists/LIST_UID/update-profile/SUBSCRIBER_UID/SECURE_CODE', '2016-12-31 20:00:00', '2016-12-31 20:00:00'),
(12, 'site_name', 'maairi', '2016-12-31 20:00:00', '2016-12-31 20:00:00'),
(13, 'site_keyword', 'maairi', '2016-12-31 20:00:00', '2016-12-31 20:00:00'),
(14, 'site_description', 'saas based application', '2016-12-31 20:00:00', '2016-12-31 20:00:00'),
(15, 'license', '', '2016-12-31 20:00:00', '2016-12-31 20:00:00'),
(16, 'license_type', '', '2016-12-31 20:00:00', '2016-12-31 20:00:00'),
(17, 'mailer.mailer', 'sendmail', '2021-11-10 10:03:45', '2021-11-10 10:03:45'),
(18, 'mailer.host', 'localhost', '2021-11-10 10:03:45', '2021-11-15 09:29:33'),
(19, 'mailer.port', '3306', '2021-11-10 10:03:45', '2021-11-15 09:29:33'),
(20, 'mailer.encryption', NULL, '2021-11-10 10:03:45', '2021-11-10 10:03:45'),
(21, 'mailer.username', 'root1', '2021-11-10 10:03:45', '2021-11-15 09:29:33'),
(22, 'mailer.password', '1234', '2021-11-10 10:03:45', '2021-11-15 09:29:33'),
(23, 'mailer.from.name', 'Maairi', '2021-11-10 10:03:45', '2021-11-10 10:03:45'),
(24, 'mailer.from.address', 'srkshah1998@gmail.com', '2021-11-10 10:03:45', '2021-11-10 10:03:45'),
(25, 'mailer.sendmail_path', '/usr/sbin/sendmail', '2021-11-10 10:03:45', '2021-11-10 10:03:45'),
(26, 'remote_job_token', 'WtUZRS0noVRqkNbXUYQ5t6YQnvNPTi3HD0wiyp7M1SRboeDJcbUYnipMCx3F', '2021-11-10 10:03:46', '2021-11-10 10:03:46'),
(27, 'php_bin_path', 'C:\\xampp\\php\\php.exe', '2021-11-10 10:05:32', '2021-11-10 10:05:32');

-- --------------------------------------------------------

--
-- Table structure for table `sources`
--

CREATE TABLE `sources` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `meta` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mail_list_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_list_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subscription_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verification_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_verification_at` datetime DEFAULT NULL,
  `last_verification_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_verification_result` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriber_fields`
--

CREATE TABLE `subscriber_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `subscriber_id` int(10) UNSIGNED NOT NULL,
  `field_id` int(10) UNSIGNED NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_period_ends_at` datetime DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `started_at` datetime DEFAULT NULL,
  `last_period_ends_at` datetime DEFAULT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `plan_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_logs`
--

CREATE TABLE `subscription_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscription_id` int(10) UNSIGNED NOT NULL,
  `transaction_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_accounts`
--

CREATE TABLE `sub_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `sending_server_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_key_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `builder` tinyint(1) NOT NULL DEFAULT 0,
  `is_default` tinyint(1) DEFAULT 0,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id`, `uid`, `customer_id`, `name`, `content`, `created_at`, `updated_at`, `builder`, `is_default`, `theme`) VALUES
(1, '6037a0a8583a7', NULL, 'Blank', '<!DOCTYPE html><html lang=\"en\">\n  <head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n    <meta name=\"description\" content=\"\">\n    <meta name=\"author\" content=\"Mark Otto, Jacob Thornton, and Bootstrap contributors\">\n    <meta name=\"generator\" content=\"AcelleSystemLayouts\">\n    <title>Blank</title>\n\n    <link href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTBhODU4M2E3L2Nzcw/bootstrap.min.css\" rel=\"stylesheet\">\n    <link href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTBhODU4M2E3L2Nzcw/custom.css\" rel=\"stylesheet\">\n  </head>\n  <body class=\"builderjs-layout\">    \n    <div builder-element=\"BlockElement\" builder-container builder-wrapper>\n      \n    </div>\n  </body>\n</html>', '2021-11-10 10:03:43', '2021-11-10 10:03:43', 1, 1, NULL),
(2, '6037a2135b974', NULL, 'Pricing Table', '<!DOCTYPE html><html lang=\"en\">\n  <head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n    <meta name=\"description\" content=\"\">\n    <meta name=\"author\" content=\"Mark Otto, Jacob Thornton, and Bootstrap contributors\">\n    <meta name=\"generator\" content=\"AcelleSystemLayouts\">\n    <title>Pricing Table</title>\n\n    <!-- Bootstrap core CSS -->\n    \n    <link href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTIxMzViOTc0L2Nzcw/bootstrap.min.css\" rel=\"stylesheet\">\n    <link href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTIxMzViOTc0L2Nzcw/custom.css\" rel=\"stylesheet\">\n  </head>\n  <body class=\"builderjs-layout\">\n    \n    <div builder-element=\"BlockElement\" builder-container builder-wrapper>\n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3 pt-5\">\n                <table width=\"100%\">\n                <tr>\n                    <td class=\"text-left\">\n                    <img builder-element src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTIxMzViOTc0L2ltYWdl/logo.png\" width=\"200px\">\n                    </td>\n                    <td class=\"text-right pr-2\">\n                    <a builder-element builder-inline-edit href=\"\" style=\"color: #333\">Open in your browser</a>\n                    </td>\n                </tr>\n                </table>\n            </div>\n        </div>\n\n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <h1 builder-element builder-inline-edit class=\"display-4 text-center\">Lorem ipsum dolor</h1>\n                <h5 builder-element builder-inline-edit class=\"text-center font-weight-normal mt-1 mb-3 text-muted\">Nunc pulvinar turpis sed pellentesque aliquet</h5>\n                <p builder-element builder-inline-edit class=\"\">Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque. Nunc pulvinar turpis sed pellentesque aliquet. Sed ullamcorper, tellus eu viverra tincidunt, quam justo pellentesque est, et gravida justo eros vitae turpis. Mauris molestie id nisi in ultrices. Curabitur tellus ex, pretium nec dui ut, feugiat semper ipsum. Donec porttitor congue blandit. Pellentesque in purus nulla. Integer ut turpis purus. Nunc nec efficitur nunc.</p>\n            </div>\n        </div>\n\n      <div builder-element=\"PricingTableElement\" data-style=\"default\" builder-draggable>\n            <div class=\"container py-3\">\n                <div class=\"row mx-0\" style=\"border-left: solid 1px #ccc\">\n                    <div builder-element class=\"p-3 pb-0 col-12\" style=\"border: solid 1px #ccc;border-left:none;flex-grow: 1;\n                    flex-basis: 0;\">\n                    <h3 builder-element builder-inline-edit class=\"font-weight-normal\">Free</h3>\n                    <p builder-element builder-inline-edit class=\"my-3\">All the basics for businesses or individual to get started with email marketing campaign</p>\n                    <div builder-element=\"TextElement\" builder-inline-edit class=\"text-center mt-5\">Starting at</div>\n                    <div builder-element=\"TextElement\" builder-inline-edit class=\"display-4 text-center my-2\" style=\"font-size: 40px;font-weight:400\">$0</div>\n                    <div builder-element=\"TextElement\" builder-inline-edit class=\"text-center\">1 month</div>\n                    <div class=\"text-center my-3 mt-5\">\n                        <a builder-element builder-inline-edit href=\"\" data-style=\"style_1\" class=\"btn btn-primary\" style=\"width: 80%;background-color: #007c89;\">Select</a>\n                    </div>\n                    </div>\n                    <div builder-element class=\"p-3 pb-0 col-12\" style=\"border: solid 1px #ccc;border-left:none;flex-grow: 1;\n                    flex-basis: 0;\">\n                    <h3 builder-element builder-inline-edit class=\"font-weight-normal\">Essentials</h3>\n                    <p builder-element builder-inline-edit class=\"my-3\">Must-have features for marketing agency & individual to engage in email marketing</p>\n                    <div builder-element=\"TextElement\" builder-inline-edit class=\"text-center mt-5\">Starting at</div>\n                    <div builder-element=\"TextElement\" builder-inline-edit class=\"display-4 text-center my-2\" style=\"font-size: 40px;;font-weight:400\">$28</div>\n                    <div builder-element=\"TextElement\" builder-inline-edit class=\"text-center\">1 month</div>\n                    <div class=\"text-center my-3 mt-5\">\n                        <a builder-element builder-inline-edit href=\"\" data-style=\"style_1\" class=\"btn btn-primary\" style=\"width: 80%;background-color: #007c89;\">Select</a>\n                    </div>\n                    </div>\n                    <div builder-element class=\"p-3 pb-0 col-12\" style=\"border: solid 1px #ccc;border-left:none;flex-grow: 1;\n                    flex-basis: 0;\">\n                    <h3 builder-element builder-inline-edit class=\"font-weight-normal\">Premium</h3>\n                    <p builder-element builder-inline-edit class=\"my-3\">Advanced features for professionals who need unlimited marketing capability</p>\n                    <div builder-element=\"TextElement\" builder-inline-edit class=\"text-center mt-5\">Starting at</div>\n                    <div builder-element=\"TextElement\" builder-inline-edit class=\"display-4 text-center my-2\" style=\"font-size: 40px;;font-weight:400\">$50</div>\n                    <div builder-element=\"TextElement\" builder-inline-edit class=\"text-center\">1 month</div>\n                    <div class=\"text-center my-3 mt-5\">\n                        <a builder-element builder-inline-edit href=\"\" data-style=\"style_1\" class=\"btn btn-primary\" style=\"width: 80%;background-color: #007c89;\">Select</a>\n                    </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n\n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div class=\"row\">\n                    <div class=\"col-12 col-md-12\">\n                    <img builder-element builder-inline-edit class=\"my-2\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTIxMzViOTc0L2ltYWdl/banner_1920_640.png\" width=\"100%\">\n                    <h3 builder-element builder-inline-edit class=\"mt-2 mb-2\">Lorem ipsum dolor</h3>\n                    <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet. Sed ullamcorper, tellus eu viverra tincidunt,\n                    quam justo pellentesque est, et gravida justo eros vitae turpis.</p>\n                    </div>\n                </div>\n            </div>\n        </div>\n\n      <footer builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div class=\"text-muted pt-5\">\n                    <div class=\"row\">\n                        <div builder-element=\"TextElement\" builder-inline-edit class=\"col-md-8 pb-4\">\n                        <p class=\"mb-1\">Copyright © 2021. All rights reserved. You can <a href=\"{UPDATE_PROFILE_URL}\">update your preferences</a> or <a href=\"{UNSUBSCRIBE_URL}\">unsubscribe from this list</a>.</p>\n                        </div>\n                        <div class=\"col-md-4\">\n                        <p builder-element builder-inline-edit class=\"float-right\">\n                            <a href=\"#\">Back to top</a>\n                        </p>\n                        </div>        \n                    </div>\n                </div>\n            </div>\n        </footer>\n    </div>\n  </body>\n</html>', '2021-11-10 10:03:43', '2021-11-10 10:03:43', 1, 1, NULL),
(3, '6037a2250a3a3', NULL, 'Lists & Tables', '<!DOCTYPE html><html lang=\"en\">\n  <head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n    <meta name=\"description\" content=\"\">\n    <meta name=\"author\" content=\"Mark Otto, Jacob Thornton, and Bootstrap contributors\">\n    <meta name=\"generator\" content=\"AcelleSystemLayouts\">\n    <title>Listing & Tables</title>\n\n    <link href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTIyNTBhM2EzL2Nzcw/bootstrap.min.css\" rel=\"stylesheet\">\n    <link href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTIyNTBhM2EzL2Nzcw/custom.css\" rel=\"stylesheet\">\n  </head>\n  <body class=\"builderjs-layout\">    \n    <div builder-element=\"BlockElement\" builder-container builder-wrapper>\n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3 pt-5\">\n                <table width=\"100%\">\n                <tr>\n                    <td class=\"text-left\">\n                    <img builder-element src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTIyNTBhM2EzL2ltYWdl/logo.png\" width=\"200px\">\n                    </td>\n                    <td class=\"text-right pr-2\">\n                    <a builder-element builder-inline-edit href=\"\" style=\"color: #333\">Open in your browser</a>\n                    </td>\n                </tr>\n                </table>\n            </div>\n        </div>\n\n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <h1 builder-element builder-inline-edit class=\"display-4 text-center\">Lorem ipsum dolor</h1>\n                <h5 builder-element builder-inline-edit class=\"text-center font-weight-normal mt-1 mb-3 text-muted\">Nunc pulvinar turpis sed pellentesque aliquet</h5>\n                <p builder-element builder-inline-edit class=\"\">Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque. Nunc pulvinar turpis sed pellentesque aliquet. Sed ullamcorper, tellus eu viverra tincidunt, quam justo pellentesque est, et gravida justo eros vitae turpis. Mauris molestie id nisi in ultrices. Curabitur tellus ex, pretium nec dui ut, feugiat semper ipsum. Donec porttitor congue blandit. Pellentesque in purus nulla. Integer ut turpis purus. Nunc nec efficitur nunc.</p>\n            </div>\n        </div>\n\n        <div builder-element=\"TableBlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <table class=\"table\">\n                    <thead>\n                        <tr builder-element=\"\" class=\"\">\n                            <th><span builder-element=\"\" builder-inline-edit=\"\" class=\"\">#</span></th>\n                            <th><span builder-element=\"\" builder-inline-edit=\"\">First Name</span></th>\n                            <th><span builder-element=\"\" builder-inline-edit=\"\" class=\"builder-class-element-highlighted\">Last Name</span></th>\n                            <th><span builder-element=\"\" builder-inline-edit=\"\">Username</span></th>\n                        </tr>\n                    </thead>\n                    <tbody>\n                        <tr builder-element=\"\">\n                            <td><span builder-element=\"\" builder-inline-edit=\"\">1</span></td>\n                            <td><span builder-element=\"\" builder-inline-edit=\"\">Mark</span></td>\n                            <td><span builder-element=\"\" builder-inline-edit=\"\">Otto</span></td>\n                            <td><span builder-element=\"\" builder-inline-edit=\"\">@mdo</span></td>\n                        </tr>\n                        <tr builder-element=\"\">\n                            <td><span builder-element=\"\" builder-inline-edit=\"\">2</span></td>\n                            <td><span builder-element=\"\" builder-inline-edit=\"\">Jacob</span></td>\n                            <td><span builder-element=\"\" builder-inline-edit=\"\">Thornton</span></td>\n                            <td><span builder-element=\"\" builder-inline-edit=\"\">@fat</span></td>\n                        </tr>\n                        <tr builder-element=\"\">\n                            <td><span builder-element=\"\" builder-inline-edit=\"\">3</span></td>\n                            <td><span builder-element=\"\" builder-inline-edit=\"\">Larry</span></td>\n                            <td><span builder-element=\"\" builder-inline-edit=\"\">the Bird</span></td>\n                            <td><span builder-element=\"\" builder-inline-edit=\"\">@twitter</span></td>\n                        </tr>\n                    </tbody>\n                </table>\n            </div>\n        </div>\n\n    <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div style=\"text-align:center\">\n                    <img builder-element class=\"\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTIyNTBhM2EzL2ltYWdl/banner_1920_640.png\" width=\"100%\">\n                </div>\n                <h2 builder-element builder-inline-edit class=\"mt-3\">Lorem ipsum dolor</h2>\n                <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet. Sed ullamcorper, tellus eu viverra tincidunt,\n                    quam justo pellentesque est, et gravida justo eros vitae turpis. Mauris molestie id nisi in ultrices.\n                    Curabitur tellus ex, pretium nec dui ut, feugiat semper ipsum. Donec porttitor congue blandit.\n                    Pellentesque in purus nulla. Integer ut turpis purus. Nunc nec efficitur nunc.\n                </p>\n            </div>\n        </div>\n\n      <footer builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div class=\"text-muted pt-5\">\n                    <div class=\"row\">\n                        <div builder-element=\"TextElement\" builder-inline-edit class=\"col-md-8 pb-4\">\n                        <p class=\"mb-1\">Copyright © 2021. All rights reserved. You can <a href=\"{UPDATE_PROFILE_URL}\">update your preferences</a> or <a href=\"{UNSUBSCRIBE_URL}\">unsubscribe from this list</a>.</p>\n                        </div>\n                        <div class=\"col-md-4\">\n                        <p builder-element builder-inline-edit class=\"float-right\">\n                            <a href=\"#\">Back to top</a>\n                        </p>\n                        </div>        \n                    </div>\n                </div>\n            </div>\n        </footer>\n    </div>\n  </body>\n</html>', '2021-11-10 10:03:43', '2021-11-10 10:03:43', 1, 1, NULL),
(4, '6037a28418c95', NULL, 'One column layout', '<!DOCTYPE html><html lang=\"en\">\n  <head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n    <meta name=\"description\" content=\"\">\n    <meta name=\"author\" content=\"Mark Otto, Jacob Thornton, and Bootstrap contributors\">\n    <meta name=\"generator\" content=\"AcelleSystemLayouts\">\n    <title>One column layout</title>\n\n    <link href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI4NDE4Yzk1L2Nzcw/bootstrap.min.css\" rel=\"stylesheet\">\n    <link href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI4NDE4Yzk1L2Nzcw/custom.css\" rel=\"stylesheet\">\n  </head>\n  <body class=\"builderjs-layout\">    \n    <div builder-element=\"BlockElement\" builder-container builder-wrapper>\n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3 pt-5\">\n                <table width=\"100%\">\n                <tr>\n                    <td class=\"text-left\">\n                    <img builder-element src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI4NDE4Yzk1L2ltYWdl/logo.png\" width=\"200px\">\n                    </td>\n                    <td class=\"text-right pr-2\">\n                    <a builder-element builder-inline-edit href=\"\" style=\"color: #333\">Open in your browser</a>\n                    </td>\n                </tr>\n                </table>\n            </div>\n        </div>\n\n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <h1 builder-element builder-inline-edit class=\"display-4 text-center\">Lorem ipsum dolor</h1>\n                <h5 builder-element builder-inline-edit class=\"text-center font-weight-normal mt-1 mb-3 text-muted\">Nunc pulvinar turpis sed pellentesque aliquet</h5>\n                <p builder-element builder-inline-edit class=\"\">Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque. Nunc pulvinar turpis sed pellentesque aliquet. Sed ullamcorper, tellus eu viverra tincidunt, quam justo pellentesque est, et gravida justo eros vitae turpis. Mauris molestie id nisi in ultrices. Curabitur tellus ex, pretium nec dui ut, feugiat semper ipsum. Donec porttitor congue blandit. Pellentesque in purus nulla. Integer ut turpis purus. Nunc nec efficitur nunc.</p>\n            </div>\n        </div>\n      \n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div style=\"text-align:center\">\n                    <img builder-element class=\"\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI4NDE4Yzk1L2ltYWdl/banner_1920_640.png\" width=\"100%\">\n                </div>\n                <h2 builder-element builder-inline-edit class=\"mt-3\">Lorem ipsum dolor</h2>\n                <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet. Sed ullamcorper, tellus eu viverra tincidunt,\n                    quam justo pellentesque est, et gravida justo eros vitae turpis. Mauris molestie id nisi in ultrices.\n                    Curabitur tellus ex, pretium nec dui ut, feugiat semper ipsum. Donec porttitor congue blandit.\n                    Pellentesque in purus nulla. Integer ut turpis purus. Nunc nec efficitur nunc.\n                </p>\n            </div>\n        </div>\n\n      <footer builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div class=\"text-muted pt-5\">\n                    <div class=\"row\">\n                        <div builder-element=\"TextElement\" builder-inline-edit class=\"col-md-8 pb-4\">\n                        <p class=\"mb-1\">Copyright © 2021. All rights reserved. You can <a href=\"{UPDATE_PROFILE_URL}\">update your preferences</a> or <a href=\"{UNSUBSCRIBE_URL}\">unsubscribe from this list</a>.</p>\n                        </div>\n                        <div class=\"col-md-4\">\n                        <p builder-element builder-inline-edit class=\"float-right\">\n                            <a href=\"#\">Back to top</a>\n                        </p>\n                        </div>        \n                    </div>\n                </div>\n            </div>\n        </footer>\n    </div>\n  </body>\n</html>', '2021-11-10 10:03:43', '2021-11-10 10:03:43', 1, 1, NULL),
(5, '6037a24ebdbd6', NULL, '1-2 column layout', '<!DOCTYPE html><html lang=\"en\">\n  <head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n    <meta name=\"description\" content=\"\">\n    <meta name=\"author\" content=\"Mark Otto, Jacob Thornton, and Bootstrap contributors\">\n    <meta name=\"generator\" content=\"AcelleSystemLayouts\">\n    <title>1-2 column layout</title>\n\n    <link href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI0ZWJkYmQ2L2Nzcw/bootstrap.min.css\" rel=\"stylesheet\">\n    <link href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI0ZWJkYmQ2L2Nzcw/custom.css\" rel=\"stylesheet\">\n  </head>\n  <body class=\"builderjs-layout\">    \n    <div builder-element=\"BlockElement\" builder-container builder-wrapper>\n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3 pt-5\">\n                <table width=\"100%\">\n                <tr>\n                    <td class=\"text-left\">\n                    <img builder-element src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI0ZWJkYmQ2L2ltYWdl/logo.png\" width=\"200px\">\n                    </td>\n                    <td class=\"text-right pr-2\">\n                    <a builder-element builder-inline-edit href=\"\" style=\"color: #333\">Open in your browser</a>\n                    </td>\n                </tr>\n                </table>\n            </div>\n        </div>\n\n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <h1 builder-element builder-inline-edit class=\"display-4 text-center\">Lorem ipsum dolor</h1>\n                <h5 builder-element builder-inline-edit class=\"text-center font-weight-normal mt-1 mb-3 text-muted\">Nunc pulvinar turpis sed pellentesque aliquet</h5>\n                <p builder-element builder-inline-edit class=\"\">Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque. Nunc pulvinar turpis sed pellentesque aliquet. Sed ullamcorper, tellus eu viverra tincidunt, quam justo pellentesque est, et gravida justo eros vitae turpis. Mauris molestie id nisi in ultrices. Curabitur tellus ex, pretium nec dui ut, feugiat semper ipsum. Donec porttitor congue blandit. Pellentesque in purus nulla. Integer ut turpis purus. Nunc nec efficitur nunc.</p>\n            </div>\n        </div>\n\n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div style=\"text-align:center\">\n                    <img builder-element class=\"\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI0ZWJkYmQ2L2ltYWdl/banner_1920_640.png\" width=\"100%\">\n                </div>\n                <h2 builder-element builder-inline-edit class=\"mt-3\">Lorem ipsum dolor</h2>\n                <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet. Sed ullamcorper, tellus eu viverra tincidunt,\n                    quam justo pellentesque est, et gravida justo eros vitae turpis. Mauris molestie id nisi in ultrices.\n                    Curabitur tellus ex, pretium nec dui ut, feugiat semper ipsum. Donec porttitor congue blandit.\n                    Pellentesque in purus nulla. Integer ut turpis purus. Nunc nec efficitur nunc.\n                </p>\n            </div>\n        </div>\n      \n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div class=\"row\">\n                    <div class=\"col-6 col-md-6\">\n                    <div style=\"text-align:center\"><img builder-element builder-inline-edit class=\"my-2\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI0ZWJkYmQ2L2ltYWdl/1_2_placeholder.png\" width=\"100%\"></div>\n                    <h3 builder-element builder-inline-edit class=\"mt-2 mb-2\">Lorem ipsum dolor</h3>\n                    <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet. Sed ullamcorper, tellus eu viverra tincidunt,\n                    quam justo pellentesque est, et gravida justo eros vitae turpis.</p>\n                    </div>\n                    <div class=\"col-6 col-md-6\">\n                    <div style=\"text-align:center\"><img builder-element builder-inline-edit class=\"my-2\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI0ZWJkYmQ2L2ltYWdl/1_2_placeholder.png\" width=\"100%\"></div>\n                    <h3 builder-element builder-inline-edit class=\"mt-2 mb-2\">Lorem ipsum dolor</h3>\n                    <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet. Sed ullamcorper, tellus eu viverra tincidunt,\n                    quam justo pellentesque est, et gravida justo eros vitae turpis.</p>\n                    </div>\n                </div>\n            </div>\n        </div>\n\n      <footer builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div class=\"text-muted pt-5\">\n                    <div class=\"row\">\n                        <div builder-element=\"TextElement\" builder-inline-edit class=\"col-md-8 pb-4\">\n                        <p class=\"mb-1\">Copyright © 2021. All rights reserved. You can <a href=\"{UPDATE_PROFILE_URL}\">update your preferences</a> or <a href=\"{UNSUBSCRIBE_URL}\">unsubscribe from this list</a>.</p>\n                        </div>\n                        <div class=\"col-md-4\">\n                        <p builder-element builder-inline-edit class=\"float-right\">\n                            <a href=\"#\">Back to top</a>\n                        </p>\n                        </div>        \n                    </div>\n                </div>\n            </div>\n        </footer>\n    </div>\n  </body>\n</html>', '2021-11-10 10:03:43', '2021-11-10 10:03:43', 1, 1, NULL),
(6, '6037a2401b055', NULL, '1-2-1 column layout', '<!DOCTYPE html><html lang=\"en\">\n  <head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n    <meta name=\"description\" content=\"\">\n    <meta name=\"author\" content=\"Mark Otto, Jacob Thornton, and Bootstrap contributors\">\n    <meta name=\"generator\" content=\"AcelleSystemLayouts\">\n    <title>1-2-1 column layout</title>\n\n    <link href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI0MDFiMDU1L2Nzcw/bootstrap.min.css\" rel=\"stylesheet\">\n    <link href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI0MDFiMDU1L2Nzcw/custom.css\" rel=\"stylesheet\">\n  </head>\n  <body class=\"builderjs-layout\">    \n    <div builder-element=\"BlockElement\" builder-container builder-wrapper>\n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3 pt-5\">\n                <table width=\"100%\">\n                <tr>\n                    <td class=\"text-left\">\n                    <img builder-element src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI0MDFiMDU1L2ltYWdl/logo.png\" width=\"200px\">\n                    </td>\n                    <td class=\"text-right pr-2\">\n                    <a builder-element builder-inline-edit href=\"\" style=\"color: #333\">Open in your browser</a>\n                    </td>\n                </tr>\n                </table>\n            </div>\n        </div>\n\n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <h1 builder-element builder-inline-edit class=\"display-4 text-center\">Lorem ipsum dolor</h1>\n                <h5 builder-element builder-inline-edit class=\"text-center font-weight-normal mt-1 mb-3 text-muted\">Nunc pulvinar turpis sed pellentesque aliquet</h5>\n                <p builder-element builder-inline-edit class=\"\">Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque. Nunc pulvinar turpis sed pellentesque aliquet. Sed ullamcorper, tellus eu viverra tincidunt, quam justo pellentesque est, et gravida justo eros vitae turpis. Mauris molestie id nisi in ultrices. Curabitur tellus ex, pretium nec dui ut, feugiat semper ipsum. Donec porttitor congue blandit. Pellentesque in purus nulla. Integer ut turpis purus. Nunc nec efficitur nunc.</p>\n            </div>\n        </div>\n\n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div style=\"text-align:center\">\n                    <img builder-element class=\"\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI0MDFiMDU1L2ltYWdl/banner_1920_640.png\" width=\"100%\">\n                </div>\n                <h2 builder-element builder-inline-edit class=\"mt-3\">Lorem ipsum dolor</h2>\n                <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet. Sed ullamcorper, tellus eu viverra tincidunt,\n                    quam justo pellentesque est, et gravida justo eros vitae turpis. Mauris molestie id nisi in ultrices.\n                    Curabitur tellus ex, pretium nec dui ut, feugiat semper ipsum. Donec porttitor congue blandit.\n                    Pellentesque in purus nulla. Integer ut turpis purus. Nunc nec efficitur nunc.\n                </p>\n            </div>\n        </div>\n      \n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div class=\"row\">\n                    <div class=\"col-6 col-md-6\">\n                    <div style=\"text-align:center\"><img builder-element builder-inline-edit class=\"my-2\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI0MDFiMDU1L2ltYWdl/1_2_placeholder.png\" width=\"100%\"></div>\n                    <h3 builder-element builder-inline-edit class=\"mt-2 mb-2\">Lorem ipsum dolor</h3>\n                    <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet. Sed ullamcorper, tellus eu viverra tincidunt,\n                    quam justo pellentesque est, et gravida justo eros vitae turpis.</p>\n                    </div>\n                    <div class=\"col-6 col-md-6\">\n                    <div style=\"text-align:center\"><img builder-element builder-inline-edit class=\"my-2\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI0MDFiMDU1L2ltYWdl/1_2_placeholder.png\" width=\"100%\"></div>\n                    <h3 builder-element builder-inline-edit class=\"mt-2 mb-2\">Lorem ipsum dolor</h3>\n                    <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet. Sed ullamcorper, tellus eu viverra tincidunt,\n                    quam justo pellentesque est, et gravida justo eros vitae turpis.</p>\n                    </div>\n                </div>\n            </div>\n        </div>\n      \n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div class=\"row\">\n                    <div class=\"col-12 col-md-12\">\n                    <img builder-element builder-inline-edit class=\"my-2\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI0MDFiMDU1L2ltYWdl/banner_1920_640.png\" width=\"100%\">\n                    <h3 builder-element builder-inline-edit class=\"mt-2 mb-2\">Lorem ipsum dolor</h3>\n                    <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet. Sed ullamcorper, tellus eu viverra tincidunt,\n                    quam justo pellentesque est, et gravida justo eros vitae turpis.</p>\n                    </div>\n                </div>\n            </div>\n        </div>\n\n      <footer builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div class=\"text-muted pt-5\">\n                    <div class=\"row\">\n                        <div builder-element=\"TextElement\" builder-inline-edit class=\"col-md-8 pb-4\">\n                        <p class=\"mb-1\">Copyright © 2021. All rights reserved. You can <a href=\"{UPDATE_PROFILE_URL}\">update your preferences</a> or <a href=\"{UNSUBSCRIBE_URL}\">unsubscribe from this list</a>.</p>\n                        </div>\n                        <div class=\"col-md-4\">\n                        <p builder-element builder-inline-edit class=\"float-right\">\n                            <a href=\"#\">Back to top</a>\n                        </p>\n                        </div>        \n                    </div>\n                </div>\n            </div>\n        </footer>\n    </div>\n  </body>\n</html>', '2021-11-10 10:03:43', '2021-11-10 10:03:43', 1, 1, NULL),
(7, '6037a275bf375', NULL, '1-3 column layout', '<!DOCTYPE html><html lang=\"en\">\n  <head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n    <meta name=\"description\" content=\"\">\n    <meta name=\"author\" content=\"Mark Otto, Jacob Thornton, and Bootstrap contributors\">\n    <meta name=\"generator\" content=\"AcelleSystemLayouts\">\n    <title>1-3 column layout</title>\n\n    <link href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI3NWJmMzc1L2Nzcw/bootstrap.min.css\" rel=\"stylesheet\">\n    <link href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI3NWJmMzc1L2Nzcw/custom.css\" rel=\"stylesheet\">\n  </head>\n  <body class=\"builderjs-layout\">    \n    <div builder-element=\"BlockElement\" builder-container builder-wrapper>\n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3 pt-5\">\n                <table width=\"100%\">\n                <tr>\n                    <td class=\"text-left\">\n                    <img builder-element src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI3NWJmMzc1L2ltYWdl/logo.png\" width=\"200px\">\n                    </td>\n                    <td class=\"text-right pr-2\">\n                    <a builder-element builder-inline-edit href=\"\" style=\"color: #333\">Open in your browser</a>\n                    </td>\n                </tr>\n                </table>\n            </div>\n        </div>\n\n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <h1 builder-element builder-inline-edit class=\"display-4 text-center\">Lorem ipsum dolor</h1>\n                <h5 builder-element builder-inline-edit class=\"text-center font-weight-normal mt-1 mb-3 text-muted\">Nunc pulvinar turpis sed pellentesque aliquet</h5>\n                <p builder-element builder-inline-edit class=\"\">Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque. Nunc pulvinar turpis sed pellentesque aliquet. Sed ullamcorper, tellus eu viverra tincidunt, quam justo pellentesque est, et gravida justo eros vitae turpis. Mauris molestie id nisi in ultrices. Curabitur tellus ex, pretium nec dui ut, feugiat semper ipsum. Donec porttitor congue blandit. Pellentesque in purus nulla. Integer ut turpis purus. Nunc nec efficitur nunc.</p>\n            </div>\n        </div>\n\n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div style=\"text-align:center\">\n                    <img builder-element class=\"\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI3NWJmMzc1L2ltYWdl/banner_1920_640.png\" width=\"100%\">\n                </div>\n                <h2 builder-element builder-inline-edit class=\"mt-3\">Lorem ipsum dolor</h2>\n                <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet. Sed ullamcorper, tellus eu viverra tincidunt,\n                    quam justo pellentesque est, et gravida justo eros vitae turpis. Mauris molestie id nisi in ultrices.\n                    Curabitur tellus ex, pretium nec dui ut, feugiat semper ipsum. Donec porttitor congue blandit.\n                    Pellentesque in purus nulla. Integer ut turpis purus. Nunc nec efficitur nunc.\n                </p>\n            </div>\n        </div>\n      \n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div class=\"row\">\n                    <div class=\"col-4 col-md-4\">\n                    <img builder-element class=\"my-2\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI3NWJmMzc1L2ltYWdl/1_2_placeholder.png\" width=\"100%\">\n                    <h4 builder-element builder-inline-edit class=\"mt-2 mb-2\">Lorem ipsum dolor</h4>\n                    <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet.</p>\n                    </div>\n                    <div class=\"col-4 col-md-4\">\n                    <img builder-element class=\"my-2\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI3NWJmMzc1L2ltYWdl/1_2_placeholder.png\" width=\"100%\">\n                    <h4 builder-element builder-inline-edit class=\"mt-2 mb-2\">Lorem ipsum dolor</h4>\n                    <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet.</p>\n                    </div>\n                    <div class=\"col-4 col-md-4\">\n                    <img builder-element class=\"my-2\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI3NWJmMzc1L2ltYWdl/1_2_placeholder.png\" width=\"100%\">\n                    <h4 builder-element builder-inline-edit class=\"mt-2 mb-2\">Lorem ipsum dolor</h4>\n                    <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet.</p>\n                    </div>\n                </div>\n            </div>\n        </div>\n\n      <footer builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div class=\"text-muted pt-5\">\n                    <div class=\"row\">\n                        <div builder-element=\"TextElement\" builder-inline-edit class=\"col-md-8 pb-4\">\n                        <p class=\"mb-1\">Copyright © 2021. All rights reserved. You can <a href=\"{UPDATE_PROFILE_URL}\">update your preferences</a> or <a href=\"{UNSUBSCRIBE_URL}\">unsubscribe from this list</a>.</p>\n                        </div>\n                        <div class=\"col-md-4\">\n                        <p builder-element builder-inline-edit class=\"float-right\">\n                            <a href=\"#\">Back to top</a>\n                        </p>\n                        </div>        \n                    </div>\n                </div>\n            </div>\n        </footer>\n    </div>\n  </body>\n</html>', '2021-11-10 10:03:44', '2021-11-10 10:03:44', 1, 1, NULL),
(8, '6037a25ddce80', NULL, '1-3-1 column layout', '<!DOCTYPE html><html lang=\"en\">\n  <head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n    <meta name=\"description\" content=\"\">\n    <meta name=\"author\" content=\"Mark Otto, Jacob Thornton, and Bootstrap contributors\">\n    <meta name=\"generator\" content=\"AcelleSystemLayouts\">\n    <title>1-3-1 column layout</title>\n\n    <link href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI1ZGRjZTgwL2Nzcw/bootstrap.min.css\" rel=\"stylesheet\">\n    <link href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI1ZGRjZTgwL2Nzcw/custom.css\" rel=\"stylesheet\">\n  </head>\n  <body class=\"builderjs-layout\">    \n    <div builder-element=\"BlockElement\" builder-container builder-wrapper>\n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3 pt-5\">\n                <table width=\"100%\">\n                <tr>\n                    <td class=\"text-left\">\n                    <img builder-element src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI1ZGRjZTgwL2ltYWdl/logo.png\" width=\"200px\">\n                    </td>\n                    <td class=\"text-right pr-2\">\n                    <a builder-element builder-inline-edit href=\"\" style=\"color: #333\">Open in your browser</a>\n                    </td>\n                </tr>\n                </table>\n            </div>\n        </div>\n\n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <h1 builder-element builder-inline-edit class=\"display-4 text-center\">Lorem ipsum dolor</h1>\n                <h5 builder-element builder-inline-edit class=\"text-center font-weight-normal mt-1 mb-3 text-muted\">Nunc pulvinar turpis sed pellentesque aliquet</h5>\n                <p builder-element builder-inline-edit class=\"\">Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque. Nunc pulvinar turpis sed pellentesque aliquet. Sed ullamcorper, tellus eu viverra tincidunt, quam justo pellentesque est, et gravida justo eros vitae turpis. Mauris molestie id nisi in ultrices. Curabitur tellus ex, pretium nec dui ut, feugiat semper ipsum. Donec porttitor congue blandit. Pellentesque in purus nulla. Integer ut turpis purus. Nunc nec efficitur nunc.</p>\n            </div>\n        </div>\n\n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div style=\"text-align:center\">\n                    <img builder-element class=\"\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI1ZGRjZTgwL2ltYWdl/banner_1920_640.png\" width=\"100%\">\n                </div>\n                <h2 builder-element builder-inline-edit class=\"mt-3\">Lorem ipsum dolor</h2>\n                <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet. Sed ullamcorper, tellus eu viverra tincidunt,\n                    quam justo pellentesque est, et gravida justo eros vitae turpis. Mauris molestie id nisi in ultrices.\n                    Curabitur tellus ex, pretium nec dui ut, feugiat semper ipsum. Donec porttitor congue blandit.\n                    Pellentesque in purus nulla. Integer ut turpis purus. Nunc nec efficitur nunc.\n                </p>\n            </div>\n        </div>\n      \n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div class=\"row\">\n                    <div class=\"col-4 col-md-4\">\n                    <img builder-element class=\"my-2\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI1ZGRjZTgwL2ltYWdl/1_2_placeholder.png\" width=\"100%\">\n                    <h4 builder-element builder-inline-edit class=\"mt-2 mb-2\">Lorem ipsum dolor</h4>\n                    <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet.</p>\n                    </div>\n                    <div class=\"col-4 col-md-4\">\n                    <img builder-element class=\"my-2\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI1ZGRjZTgwL2ltYWdl/1_2_placeholder.png\" width=\"100%\">\n                    <h4 builder-element builder-inline-edit class=\"mt-2 mb-2\">Lorem ipsum dolor</h4>\n                    <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet.</p>\n                    </div>\n                    <div class=\"col-4 col-md-4\">\n                    <img builder-element class=\"my-2\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI1ZGRjZTgwL2ltYWdl/1_2_placeholder.png\" width=\"100%\">\n                    <h4 builder-element builder-inline-edit class=\"mt-2 mb-2\">Lorem ipsum dolor</h4>\n                    <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet.</p>\n                    </div>\n                </div>\n            </div>\n        </div>\n      \n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div class=\"row\">\n                    <div class=\"col-12 col-md-12\">\n                    <img builder-element builder-inline-edit class=\"my-2\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI1ZGRjZTgwL2ltYWdl/banner_1920_640.png\" width=\"100%\">\n                    <h3 builder-element builder-inline-edit class=\"mt-2 mb-2\">Lorem ipsum dolor</h3>\n                    <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet. Sed ullamcorper, tellus eu viverra tincidunt,\n                    quam justo pellentesque est, et gravida justo eros vitae turpis.</p>\n                    </div>\n                </div>\n            </div>\n        </div>\n\n      <footer builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div class=\"text-muted pt-5\">\n                    <div class=\"row\">\n                        <div builder-element=\"TextElement\" builder-inline-edit class=\"col-md-8 pb-4\">\n                        <p class=\"mb-1\">Copyright © 2021. All rights reserved. You can <a href=\"{UPDATE_PROFILE_URL}\">update your preferences</a> or <a href=\"{UNSUBSCRIBE_URL}\">unsubscribe from this list</a>.</p>\n                        </div>\n                        <div class=\"col-md-4\">\n                        <p builder-element builder-inline-edit class=\"float-right\">\n                            <a href=\"#\">Back to top</a>\n                        </p>\n                        </div>        \n                    </div>\n                </div>\n            </div>\n        </footer>\n    </div>\n  </body>\n</html>', '2021-11-10 10:03:44', '2021-11-10 10:03:44', 1, 1, NULL);
INSERT INTO `templates` (`id`, `uid`, `customer_id`, `name`, `content`, `created_at`, `updated_at`, `builder`, `is_default`, `theme`) VALUES
(9, '6037a26b0a286', NULL, '1-3-2 column layout', '<!DOCTYPE html><html lang=\"en\">\n  <head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n    <meta name=\"description\" content=\"\">\n    <meta name=\"author\" content=\"Mark Otto, Jacob Thornton, and Bootstrap contributors\">\n    <meta name=\"generator\" content=\"AcelleSystemLayouts\">\n    <title>1-3-2 column layout</title>\n\n    <link href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjg2L2Nzcw/bootstrap.min.css\" rel=\"stylesheet\">\n    <link href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjg2L2Nzcw/custom.css\" rel=\"stylesheet\">\n  </head>\n  <body class=\"builderjs-layout\">    \n    <div builder-element=\"BlockElement\" builder-container builder-wrapper>\n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3 pt-5\">\n                <table width=\"100%\">\n                <tr>\n                    <td class=\"text-left\">\n                    <img builder-element src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjg2L2ltYWdl/logo.png\" width=\"200px\">\n                    </td>\n                    <td class=\"text-right pr-2\">\n                    <a builder-element builder-inline-edit href=\"\" style=\"color: #333\">Open in your browser</a>\n                    </td>\n                </tr>\n                </table>\n            </div>\n        </div>\n\n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <h1 builder-element builder-inline-edit class=\"display-4 text-center\">Lorem ipsum dolor</h1>\n                <h5 builder-element builder-inline-edit class=\"text-center font-weight-normal mt-1 mb-3 text-muted\">Nunc pulvinar turpis sed pellentesque aliquet</h5>\n                <p builder-element builder-inline-edit class=\"\">Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque. Nunc pulvinar turpis sed pellentesque aliquet. Sed ullamcorper, tellus eu viverra tincidunt, quam justo pellentesque est, et gravida justo eros vitae turpis. Mauris molestie id nisi in ultrices. Curabitur tellus ex, pretium nec dui ut, feugiat semper ipsum. Donec porttitor congue blandit. Pellentesque in purus nulla. Integer ut turpis purus. Nunc nec efficitur nunc.</p>\n            </div>\n        </div>\n\n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div class=\"row\">\n                    <div class=\"col-12 col-md-12\">\n                    <img builder-element builder-inline-edit class=\"my-2\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjg2L2ltYWdl/banner_1920_640.png\" width=\"100%\">\n                    <h3 builder-element builder-inline-edit class=\"mt-2 mb-2\">Lorem ipsum dolor</h3>\n                    <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet. Sed ullamcorper, tellus eu viverra tincidunt,\n                    quam justo pellentesque est, et gravida justo eros vitae turpis.</p>\n                    </div>\n                </div>\n            </div>\n        </div>\n      \n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div class=\"row\">\n                    <div class=\"col-4 col-md-4\">\n                    <img builder-element class=\"my-2\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjg2L2ltYWdl/1_2_placeholder.png\" width=\"100%\">\n                    <h4 builder-element builder-inline-edit class=\"mt-2 mb-2\">Lorem ipsum dolor</h4>\n                    <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet.</p>\n                    </div>\n                    <div class=\"col-4 col-md-4\">\n                    <img builder-element class=\"my-2\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjg2L2ltYWdl/1_2_placeholder.png\" width=\"100%\">\n                    <h4 builder-element builder-inline-edit class=\"mt-2 mb-2\">Lorem ipsum dolor</h4>\n                    <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet.</p>\n                    </div>\n                    <div class=\"col-4 col-md-4\">\n                    <img builder-element class=\"my-2\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjg2L2ltYWdl/1_2_placeholder.png\" width=\"100%\">\n                    <h4 builder-element builder-inline-edit class=\"mt-2 mb-2\">Lorem ipsum dolor</h4>\n                    <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet.</p>\n                    </div>\n                </div>\n            </div>\n        </div>\n      \n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div class=\"row\">\n                    <div class=\"col-6 col-md-6\">\n                    <div style=\"text-align:center\"><img builder-element builder-inline-edit class=\"my-2\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjg2L2ltYWdl/1_2_placeholder.png\" width=\"100%\"></div>\n                    <h3 builder-element builder-inline-edit class=\"mt-2 mb-2\">Lorem ipsum dolor</h3>\n                    <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet. Sed ullamcorper, tellus eu viverra tincidunt,\n                    quam justo pellentesque est, et gravida justo eros vitae turpis.</p>\n                    </div>\n                    <div class=\"col-6 col-md-6\">\n                    <div style=\"text-align:center\"><img builder-element builder-inline-edit class=\"my-2\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjg2L2ltYWdl/1_2_placeholder.png\" width=\"100%\"></div>\n                    <h3 builder-element builder-inline-edit class=\"mt-2 mb-2\">Lorem ipsum dolor</h3>\n                    <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet. Sed ullamcorper, tellus eu viverra tincidunt,\n                    quam justo pellentesque est, et gravida justo eros vitae turpis.</p>\n                    </div>\n                </div>\n            </div>\n        </div>\n\n      <footer builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div class=\"text-muted pt-5\">\n                    <div class=\"row\">\n                        <div builder-element=\"TextElement\" builder-inline-edit class=\"col-md-8 pb-4\">\n                        <p class=\"mb-1\">Copyright © 2021. All rights reserved. You can <a href=\"{UPDATE_PROFILE_URL}\">update your preferences</a> or <a href=\"{UNSUBSCRIBE_URL}\">unsubscribe from this list</a>.</p>\n                        </div>\n                        <div class=\"col-md-4\">\n                        <p builder-element builder-inline-edit class=\"float-right\">\n                            <a href=\"#\">Back to top</a>\n                        </p>\n                        </div>        \n                    </div>\n                </div>\n            </div>\n        </footer>\n    </div>\n  </body>\n</html>', '2021-11-10 10:03:44', '2021-11-10 10:03:44', 1, 1, NULL),
(10, '6037a2b67ed27', NULL, 'Two columns layout', '<!DOCTYPE html><html lang=\"en\">\n  <head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n    <meta name=\"description\" content=\"\">\n    <meta name=\"author\" content=\"Mark Otto, Jacob Thornton, and Bootstrap contributors\">\n    <meta name=\"generator\" content=\"AcelleSystemLayouts\">\n    <title>Two columns layout</title>\n\n    <link href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTJiNjdlZDI3L2Nzcw/bootstrap.min.css\" rel=\"stylesheet\">\n    <link href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTJiNjdlZDI3L2Nzcw/custom.css\" rel=\"stylesheet\">\n  </head>\n  <body class=\"builderjs-layout\">    \n    <div builder-element=\"BlockElement\" builder-container builder-wrapper>\n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3 pt-5\">\n                <table width=\"100%\">\n                <tr>\n                    <td class=\"text-left\">\n                    <img builder-element src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTJiNjdlZDI3L2ltYWdl/logo.png\" width=\"200px\">\n                    </td>\n                    <td class=\"text-right pr-2\">\n                    <a builder-element builder-inline-edit href=\"\" style=\"color: #333\">Open in your browser</a>\n                    </td>\n                </tr>\n                </table>\n            </div>\n        </div>\n\n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <h1 builder-element builder-inline-edit class=\"display-4 text-center\">Lorem ipsum dolor</h1>\n                <h5 builder-element builder-inline-edit class=\"text-center font-weight-normal mt-1 mb-3 text-muted\">Nunc pulvinar turpis sed pellentesque aliquet</h5>\n                <p builder-element builder-inline-edit class=\"\">Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque. Nunc pulvinar turpis sed pellentesque aliquet. Sed ullamcorper, tellus eu viverra tincidunt, quam justo pellentesque est, et gravida justo eros vitae turpis. Mauris molestie id nisi in ultrices. Curabitur tellus ex, pretium nec dui ut, feugiat semper ipsum. Donec porttitor congue blandit. Pellentesque in purus nulla. Integer ut turpis purus. Nunc nec efficitur nunc.</p>\n            </div>\n        </div>\n\n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div class=\"row\">\n                    <div class=\"col-6 col-md-6\">\n                    <div style=\"text-align:center\"><img builder-element builder-inline-edit class=\"my-2\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTJiNjdlZDI3L2ltYWdl/1_2_placeholder.png\" width=\"100%\"></div>\n                    <h3 builder-element builder-inline-edit class=\"mt-2 mb-2\">Lorem ipsum dolor</h3>\n                    <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet. Sed ullamcorper, tellus eu viverra tincidunt,\n                    quam justo pellentesque est, et gravida justo eros vitae turpis.</p>\n                    </div>\n                    <div class=\"col-6 col-md-6\">\n                    <div style=\"text-align:center\"><img builder-element builder-inline-edit class=\"my-2\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTJiNjdlZDI3L2ltYWdl/1_2_placeholder.png\" width=\"100%\"></div>\n                    <h3 builder-element builder-inline-edit class=\"mt-2 mb-2\">Lorem ipsum dolor</h3>\n                    <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet. Sed ullamcorper, tellus eu viverra tincidunt,\n                    quam justo pellentesque est, et gravida justo eros vitae turpis.</p>\n                    </div>\n                </div>\n            </div>\n        </div>\n\n      <footer builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div class=\"text-muted pt-5\">\n                    <div class=\"row\">\n                        <div builder-element=\"TextElement\" builder-inline-edit class=\"col-md-8 pb-4\">\n                        <p class=\"mb-1\">Copyright © 2021. All rights reserved. You can <a href=\"{UPDATE_PROFILE_URL}\">update your preferences</a> or <a href=\"{UNSUBSCRIBE_URL}\">unsubscribe from this list</a>.</p>\n                        </div>\n                        <div class=\"col-md-4\">\n                        <p builder-element builder-inline-edit class=\"float-right\">\n                            <a href=\"#\">Back to top</a>\n                        </p>\n                        </div>        \n                    </div>\n                </div>\n            </div>\n        </footer>\n    </div>\n  </body>\n</html>', '2021-11-10 10:03:44', '2021-11-10 10:03:44', 1, 1, NULL),
(11, '6037a2aa315d4', NULL, '2-1 column layout', '<!DOCTYPE html><html lang=\"en\">\n  <head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n    <meta name=\"description\" content=\"\">\n    <meta name=\"author\" content=\"Mark Otto, Jacob Thornton, and Bootstrap contributors\">\n    <meta name=\"generator\" content=\"AcelleSystemLayouts\">\n    <title>2-1 column layout</title>\n\n    <link href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTJhYTMxNWQ0L2Nzcw/bootstrap.min.css\" rel=\"stylesheet\">\n    <link href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTJhYTMxNWQ0L2Nzcw/custom.css\" rel=\"stylesheet\">\n  </head>\n  <body class=\"builderjs-layout\">    \n    <div builder-element=\"BlockElement\" builder-container builder-wrapper>\n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3 pt-5\">\n                <table width=\"100%\">\n                <tr>\n                    <td class=\"text-left\">\n                    <img builder-element src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTJhYTMxNWQ0L2ltYWdl/logo.png\" width=\"200px\">\n                    </td>\n                    <td class=\"text-right pr-2\">\n                    <a builder-element builder-inline-edit href=\"\" style=\"color: #333\">Open in your browser</a>\n                    </td>\n                </tr>\n                </table>\n            </div>\n        </div>\n\n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <h1 builder-element builder-inline-edit class=\"display-4 text-center\">Lorem ipsum dolor</h1>\n                <h5 builder-element builder-inline-edit class=\"text-center font-weight-normal mt-1 mb-3 text-muted\">Nunc pulvinar turpis sed pellentesque aliquet</h5>\n                <p builder-element builder-inline-edit class=\"\">Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque. Nunc pulvinar turpis sed pellentesque aliquet. Sed ullamcorper, tellus eu viverra tincidunt, quam justo pellentesque est, et gravida justo eros vitae turpis. Mauris molestie id nisi in ultrices. Curabitur tellus ex, pretium nec dui ut, feugiat semper ipsum. Donec porttitor congue blandit. Pellentesque in purus nulla. Integer ut turpis purus. Nunc nec efficitur nunc.</p>\n            </div>\n        </div>\n\n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div class=\"row\">\n                    <div class=\"col-6 col-md-6\">\n                    <div style=\"text-align:center\"><img builder-element builder-inline-edit class=\"my-2\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTJhYTMxNWQ0L2ltYWdl/1_2_placeholder.png\" width=\"100%\"></div>\n                    <h3 builder-element builder-inline-edit class=\"mt-2 mb-2\">Lorem ipsum dolor</h3>\n                    <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet. Sed ullamcorper, tellus eu viverra tincidunt,\n                    quam justo pellentesque est, et gravida justo eros vitae turpis.</p>\n                    </div>\n                    <div class=\"col-6 col-md-6\">\n                    <div style=\"text-align:center\"><img builder-element builder-inline-edit class=\"my-2\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTJhYTMxNWQ0L2ltYWdl/1_2_placeholder.png\" width=\"100%\"></div>\n                    <h3 builder-element builder-inline-edit class=\"mt-2 mb-2\">Lorem ipsum dolor</h3>\n                    <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet. Sed ullamcorper, tellus eu viverra tincidunt,\n                    quam justo pellentesque est, et gravida justo eros vitae turpis.</p>\n                    </div>\n                </div>\n            </div>\n        </div>\n\n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div style=\"text-align:center\">\n                    <img builder-element class=\"\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTJhYTMxNWQ0L2ltYWdl/banner_1920_640.png\" width=\"100%\">\n                </div>\n                <h2 builder-element builder-inline-edit class=\"mt-3\">Lorem ipsum dolor</h2>\n                <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet. Sed ullamcorper, tellus eu viverra tincidunt,\n                    quam justo pellentesque est, et gravida justo eros vitae turpis. Mauris molestie id nisi in ultrices.\n                    Curabitur tellus ex, pretium nec dui ut, feugiat semper ipsum. Donec porttitor congue blandit.\n                    Pellentesque in purus nulla. Integer ut turpis purus. Nunc nec efficitur nunc.\n                </p>\n            </div>\n        </div>\n\n      <footer builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div class=\"text-muted pt-5\">\n                    <div class=\"row\">\n                        <div builder-element=\"TextElement\" builder-inline-edit class=\"col-md-8 pb-4\">\n                        <p class=\"mb-1\">Copyright © 2021. All rights reserved. You can <a href=\"{UPDATE_PROFILE_URL}\">update your preferences</a> or <a href=\"{UNSUBSCRIBE_URL}\">unsubscribe from this list</a>.</p>\n                        </div>\n                        <div class=\"col-md-4\">\n                        <p builder-element builder-inline-edit class=\"float-right\">\n                            <a href=\"#\">Back to top</a>\n                        </p>\n                        </div>        \n                    </div>\n                </div>\n            </div>\n        </footer>\n    </div>\n  </body>\n</html>', '2021-11-10 10:03:44', '2021-11-10 10:03:44', 1, 1, NULL),
(12, '6037a29a35e05', NULL, '2-1-2 column layout', '<!DOCTYPE html><html lang=\"en\">\n  <head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n    <meta name=\"description\" content=\"\">\n    <meta name=\"author\" content=\"Mark Otto, Jacob Thornton, and Bootstrap contributors\">\n    <meta name=\"generator\" content=\"AcelleSystemLayouts\">\n    <title>2-1-2 column layout</title>\n\n    <link href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI5YTM1ZTA1L2Nzcw/bootstrap.min.css\" rel=\"stylesheet\">\n    <link href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI5YTM1ZTA1L2Nzcw/custom.css\" rel=\"stylesheet\">\n  </head>\n  <body class=\"builderjs-layout\">    \n    <div builder-element=\"BlockElement\" builder-container builder-wrapper>\n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3 pt-5\">\n                <table width=\"100%\">\n                <tr>\n                    <td class=\"text-left\">\n                    <img builder-element src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI5YTM1ZTA1L2ltYWdl/logo.png\" width=\"200px\">\n                    </td>\n                    <td class=\"text-right pr-2\">\n                    <a builder-element builder-inline-edit href=\"\" style=\"color: #333\">Open in your browser</a>\n                    </td>\n                </tr>\n                </table>\n            </div>\n        </div>\n\n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <h1 builder-element builder-inline-edit class=\"display-4 text-center\">Lorem ipsum dolor</h1>\n                <h5 builder-element builder-inline-edit class=\"text-center font-weight-normal mt-1 mb-3 text-muted\">Nunc pulvinar turpis sed pellentesque aliquet</h5>\n                <p builder-element builder-inline-edit class=\"\">Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque. Nunc pulvinar turpis sed pellentesque aliquet. Sed ullamcorper, tellus eu viverra tincidunt, quam justo pellentesque est, et gravida justo eros vitae turpis. Mauris molestie id nisi in ultrices. Curabitur tellus ex, pretium nec dui ut, feugiat semper ipsum. Donec porttitor congue blandit. Pellentesque in purus nulla. Integer ut turpis purus. Nunc nec efficitur nunc.</p>\n            </div>\n        </div>\n\n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div class=\"row\">\n                    <div class=\"col-6 col-md-6\">\n                    <div style=\"text-align:center\"><img builder-element builder-inline-edit class=\"my-2\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI5YTM1ZTA1L2ltYWdl/1_2_placeholder.png\" width=\"100%\"></div>\n                    <h3 builder-element builder-inline-edit class=\"mt-2 mb-2\">Lorem ipsum dolor</h3>\n                    <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet. Sed ullamcorper, tellus eu viverra tincidunt,\n                    quam justo pellentesque est, et gravida justo eros vitae turpis.</p>\n                    </div>\n                    <div class=\"col-6 col-md-6\">\n                    <div style=\"text-align:center\"><img builder-element builder-inline-edit class=\"my-2\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI5YTM1ZTA1L2ltYWdl/1_2_placeholder.png\" width=\"100%\"></div>\n                    <h3 builder-element builder-inline-edit class=\"mt-2 mb-2\">Lorem ipsum dolor</h3>\n                    <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet. Sed ullamcorper, tellus eu viverra tincidunt,\n                    quam justo pellentesque est, et gravida justo eros vitae turpis.</p>\n                    </div>\n                </div>\n            </div>\n        </div>\n\n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div class=\"row\">\n                    <div class=\"col-12 col-md-12\">\n                    <img builder-element builder-inline-edit class=\"my-2\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI5YTM1ZTA1L2ltYWdl/banner_1920_640.png\" width=\"100%\">\n                    <h3 builder-element builder-inline-edit class=\"mt-2 mb-2\">Lorem ipsum dolor</h3>\n                    <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet. Sed ullamcorper, tellus eu viverra tincidunt,\n                    quam justo pellentesque est, et gravida justo eros vitae turpis.</p>\n                    </div>\n                </div>\n            </div>\n        </div>\n      \n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div class=\"row\">\n                    <div class=\"col-6 col-md-6\">\n                    <div style=\"text-align:center\"><img builder-element builder-inline-edit class=\"my-2\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI5YTM1ZTA1L2ltYWdl/1_2_placeholder.png\" width=\"100%\"></div>\n                    <h3 builder-element builder-inline-edit class=\"mt-2 mb-2\">Lorem ipsum dolor</h3>\n                    <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet. Sed ullamcorper, tellus eu viverra tincidunt,\n                    quam justo pellentesque est, et gravida justo eros vitae turpis.</p>\n                    </div>\n                    <div class=\"col-6 col-md-6\">\n                    <div style=\"text-align:center\"><img builder-element builder-inline-edit class=\"my-2\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI5YTM1ZTA1L2ltYWdl/1_2_placeholder.png\" width=\"100%\"></div>\n                    <h3 builder-element builder-inline-edit class=\"mt-2 mb-2\">Lorem ipsum dolor</h3>\n                    <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet. Sed ullamcorper, tellus eu viverra tincidunt,\n                    quam justo pellentesque est, et gravida justo eros vitae turpis.</p>\n                    </div>\n                </div>\n            </div>\n        </div>\n\n      <footer builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div class=\"text-muted pt-5\">\n                    <div class=\"row\">\n                        <div builder-element=\"TextElement\" builder-inline-edit class=\"col-md-8 pb-4\">\n                        <p class=\"mb-1\">Copyright © 2021. All rights reserved. You can <a href=\"{UPDATE_PROFILE_URL}\">update your preferences</a> or <a href=\"{UNSUBSCRIBE_URL}\">unsubscribe from this list</a>.</p>\n                        </div>\n                        <div class=\"col-md-4\">\n                        <p builder-element builder-inline-edit class=\"float-right\">\n                            <a href=\"#\">Back to top</a>\n                        </p>\n                        </div>        \n                    </div>\n                </div>\n            </div>\n        </footer>\n    </div>\n  </body>\n</html>', '2021-11-10 10:03:44', '2021-11-10 10:03:44', 1, 1, NULL),
(13, '6037a2dcb6c56', NULL, 'Three columns layout', '<!DOCTYPE html><html lang=\"en\">\n  <head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n    <meta name=\"description\" content=\"\">\n    <meta name=\"author\" content=\"Mark Otto, Jacob Thornton, and Bootstrap contributors\">\n    <meta name=\"generator\" content=\"AcelleSystemLayouts\">\n    <title>Three columns layout</title>\n\n    <link href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTJkY2I2YzU2L2Nzcw/bootstrap.min.css\" rel=\"stylesheet\">\n    <link href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTJkY2I2YzU2L2Nzcw/custom.css\" rel=\"stylesheet\">\n  </head>\n  <body class=\"builderjs-layout\">    \n      <div builder-element=\"BlockElement\" builder-container builder-wrapper>\n        <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3 pt-5\">\n                <table width=\"100%\">\n                <tr>\n                    <td class=\"text-left\">\n                    <img builder-element src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTJkY2I2YzU2L2ltYWdl/logo.png\" width=\"200px\">\n                    </td>\n                    <td class=\"text-right pr-2\">\n                    <a builder-element builder-inline-edit href=\"\" style=\"color: #333\">Open in your browser</a>\n                    </td>\n                </tr>\n                </table>\n            </div>\n        </div>\n\n        <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <h1 builder-element builder-inline-edit class=\"display-4 text-center\">Lorem ipsum dolor</h1>\n                <h5 builder-element builder-inline-edit class=\"text-center font-weight-normal mt-1 mb-3 text-muted\">Nunc pulvinar turpis sed pellentesque aliquet</h5>\n                <p builder-element builder-inline-edit class=\"\">Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque. Nunc pulvinar turpis sed pellentesque aliquet. Sed ullamcorper, tellus eu viverra tincidunt, quam justo pellentesque est, et gravida justo eros vitae turpis. Mauris molestie id nisi in ultrices. Curabitur tellus ex, pretium nec dui ut, feugiat semper ipsum. Donec porttitor congue blandit. Pellentesque in purus nulla. Integer ut turpis purus. Nunc nec efficitur nunc.</p>\n            </div>\n        </div>\n        \n        <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div class=\"row\">\n                    <div class=\"col-4 col-md-4\">\n                    <img builder-element class=\"my-2\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTJkY2I2YzU2L2ltYWdl/1_2_placeholder.png\" width=\"100%\">\n                    <h4 builder-element builder-inline-edit class=\"mt-2 mb-2\">Lorem ipsum dolor</h4>\n                    <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet.</p>\n                    </div>\n                    <div class=\"col-4 col-md-4\">\n                    <img builder-element class=\"my-2\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTJkY2I2YzU2L2ltYWdl/1_2_placeholder.png\" width=\"100%\">\n                    <h4 builder-element builder-inline-edit class=\"mt-2 mb-2\">Lorem ipsum dolor</h4>\n                    <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet.</p>\n                    </div>\n                    <div class=\"col-4 col-md-4\">\n                    <img builder-element class=\"my-2\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTJkY2I2YzU2L2ltYWdl/1_2_placeholder.png\" width=\"100%\">\n                    <h4 builder-element builder-inline-edit class=\"mt-2 mb-2\">Lorem ipsum dolor</h4>\n                    <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet.</p>\n                    </div>\n                </div>\n            </div>\n        </div>\n\n        <footer builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div class=\"text-muted pt-5\">\n                    <div class=\"row\">\n                        <div builder-element=\"TextElement\" builder-inline-edit class=\"col-md-8 pb-4\">\n                        <p class=\"mb-1\">Copyright © 2021. All rights reserved. You can <a href=\"{UPDATE_PROFILE_URL}\">update your preferences</a> or <a href=\"{UNSUBSCRIBE_URL}\">unsubscribe from this list</a>.</p>\n                        </div>\n                        <div class=\"col-md-4\">\n                        <p builder-element builder-inline-edit class=\"float-right\">\n                            <a href=\"#\">Back to top</a>\n                        </p>\n                        </div>        \n                    </div>\n                </div>\n            </div>\n        </footer>\n      </div>\n  </body>\n</html>', '2021-11-10 10:03:44', '2021-11-10 10:03:44', 1, 1, NULL),
(14, '6037a2c3d7fa1', NULL, '3-1-3 column layout', '<!DOCTYPE html><html lang=\"en\">\n  <head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n    <meta name=\"description\" content=\"\">\n    <meta name=\"author\" content=\"Mark Otto, Jacob Thornton, and Bootstrap contributors\">\n    <meta name=\"generator\" content=\"AcelleSystemLayouts\">\n    <title>3-1-3 column layout</title>\n\n    <link href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTJjM2Q3ZmExL2Nzcw/bootstrap.min.css\" rel=\"stylesheet\">\n    <link href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTJjM2Q3ZmExL2Nzcw/custom.css\" rel=\"stylesheet\">\n  </head>\n  <body class=\"builderjs-layout\">    \n      <div builder-element=\"BlockElement\" builder-container builder-wrapper>\n        <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3 pt-5\">\n                <table width=\"100%\">\n                <tr>\n                    <td class=\"text-left\">\n                    <img builder-element src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTJjM2Q3ZmExL2ltYWdl/logo.png\" width=\"200px\">\n                    </td>\n                    <td class=\"text-right pr-2\">\n                    <a builder-element builder-inline-edit href=\"\" style=\"color: #333\">Open in your browser</a>\n                    </td>\n                </tr>\n                </table>\n            </div>\n        </div>\n\n        <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <h1 builder-element builder-inline-edit class=\"display-4 text-center\">Lorem ipsum dolor</h1>\n                <h5 builder-element builder-inline-edit class=\"text-center font-weight-normal mt-1 mb-3 text-muted\">Nunc pulvinar turpis sed pellentesque aliquet</h5>\n                <p builder-element builder-inline-edit class=\"\">Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque. Nunc pulvinar turpis sed pellentesque aliquet. Sed ullamcorper, tellus eu viverra tincidunt, quam justo pellentesque est, et gravida justo eros vitae turpis. Mauris molestie id nisi in ultrices. Curabitur tellus ex, pretium nec dui ut, feugiat semper ipsum. Donec porttitor congue blandit. Pellentesque in purus nulla. Integer ut turpis purus. Nunc nec efficitur nunc.</p>\n            </div>\n        </div>\n        \n        <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div class=\"row\">\n                    <div class=\"col-4 col-md-4\">\n                    <img builder-element class=\"my-2\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTJjM2Q3ZmExL2ltYWdl/1_2_placeholder.png\" width=\"100%\">\n                    <h4 builder-element builder-inline-edit class=\"mt-2 mb-2\">Lorem ipsum dolor</h4>\n                    <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet.</p>\n                    </div>\n                    <div class=\"col-4 col-md-4\">\n                    <img builder-element class=\"my-2\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTJjM2Q3ZmExL2ltYWdl/1_2_placeholder.png\" width=\"100%\">\n                    <h4 builder-element builder-inline-edit class=\"mt-2 mb-2\">Lorem ipsum dolor</h4>\n                    <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet.</p>\n                    </div>\n                    <div class=\"col-4 col-md-4\">\n                    <img builder-element class=\"my-2\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTJjM2Q3ZmExL2ltYWdl/1_2_placeholder.png\" width=\"100%\">\n                    <h4 builder-element builder-inline-edit class=\"mt-2 mb-2\">Lorem ipsum dolor</h4>\n                    <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet.</p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        \n        <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div style=\"text-align:center\">\n                    <img builder-element class=\"\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTJjM2Q3ZmExL2ltYWdl/banner_1920_640.png\" width=\"100%\">\n                </div>\n                <h2 builder-element builder-inline-edit class=\"mt-3\">Lorem ipsum dolor</h2>\n                <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet. Sed ullamcorper, tellus eu viverra tincidunt,\n                    quam justo pellentesque est, et gravida justo eros vitae turpis. Mauris molestie id nisi in ultrices.\n                    Curabitur tellus ex, pretium nec dui ut, feugiat semper ipsum. Donec porttitor congue blandit.\n                    Pellentesque in purus nulla. Integer ut turpis purus. Nunc nec efficitur nunc.\n                </p>\n            </div>\n        </div>\n        \n        <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div class=\"row\">\n                    <div class=\"col-4 col-md-4\">\n                    <img builder-element class=\"my-2\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTJjM2Q3ZmExL2ltYWdl/1_2_placeholder.png\" width=\"100%\">\n                    <h4 builder-element builder-inline-edit class=\"mt-2 mb-2\">Lorem ipsum dolor</h4>\n                    <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet.</p>\n                    </div>\n                    <div class=\"col-4 col-md-4\">\n                    <img builder-element class=\"my-2\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTJjM2Q3ZmExL2ltYWdl/1_2_placeholder.png\" width=\"100%\">\n                    <h4 builder-element builder-inline-edit class=\"mt-2 mb-2\">Lorem ipsum dolor</h4>\n                    <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet.</p>\n                    </div>\n                    <div class=\"col-4 col-md-4\">\n                    <img builder-element class=\"my-2\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTJjM2Q3ZmExL2ltYWdl/1_2_placeholder.png\" width=\"100%\">\n                    <h4 builder-element builder-inline-edit class=\"mt-2 mb-2\">Lorem ipsum dolor</h4>\n                    <p builder-element builder-inline-edit>Vestibulum id convallis ligula. Maecenas tellus erat, porta in augue eget, pretium aliquet neque.\n                    Nunc pulvinar turpis sed pellentesque aliquet.</p>\n                    </div>\n                </div>\n            </div>\n        </div>\n\n        <footer builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div class=\"text-muted pt-5\">\n                    <div class=\"row\">\n                        <div builder-element=\"TextElement\" builder-inline-edit class=\"col-md-8 pb-4\">\n                        <p class=\"mb-1\">Copyright © 2021. All rights reserved. You can <a href=\"{UPDATE_PROFILE_URL}\">update your preferences</a> or <a href=\"{UNSUBSCRIBE_URL}\">unsubscribe from this list</a>.</p>\n                        </div>\n                        <div class=\"col-md-4\">\n                        <p builder-element builder-inline-edit class=\"float-right\">\n                            <a href=\"#\">Back to top</a>\n                        </p>\n                        </div>        \n                    </div>\n                </div>\n            </div>\n        </footer>\n      </div>\n  </body>\n</html>', '2021-11-10 10:03:44', '2021-11-10 10:03:44', 1, 1, NULL),
(15, '6037a26b0a200', NULL, 'Abandoned Cart Email #2', '<!DOCTYPE html><html lang=\"en\">\n  <head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n    <meta name=\"description\" content=\"\">\n    <meta name=\"author\" content=\"Mark Otto, Jacob Thornton, and Bootstrap contributors\">\n    <meta name=\"generator\" content=\"AcelleSystemLayouts\">\n    <title>Abandoned Cart Email #2</title>\n\n    <link href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjAwL2Nzcw/bootstrap.min.css\" rel=\"stylesheet\">\n    <link href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjAwL2Nzcw/custom.css\" rel=\"stylesheet\">\n  </head>\n  <body class=\"builderjs-layout\">    \n    <div builder-element=\"BlockElement\" builder-container builder-wrapper>\n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3 pt-5\">\n                <table width=\"100%\">\n                <tr>\n                    <td class=\"text-left\">\n                    <img builder-element src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjAwL2ltYWdl/logo.png\" width=\"200px\">\n                    </td>\n                    <td class=\"text-right pr-2\">\n                    <a builder-element builder-inline-edit href=\"\" style=\"color: #333\">Open in your browser</a>\n                    </td>\n                </tr>\n                </table>\n            </div>\n        </div>\n\n      <div builder-element=\"BlockElement\" builder-draggable>\n        <div class=\"container py-3\">\n          <h3 builder-element builder-inline-edit class=\"display-4 text-center\">Hey, you forgot something</h3>\n          <h5 builder-element builder-inline-edit class=\"text-center font-weight-normal mt-1 mb-3 text-muted\">\n            It seems you forgot some items great in your cart<br>\n            Purchase now before they are sold out!<br>\n            Click the items to go back to our store and review your cart\n          </h5>\n        </div>\n      </div>\n\n      <div data-items-number=\"4\" builder-element=\"AbandonedCartElement\" data-max-items=\"2\" data-display=\"2\" data-sort-by=\"created_at-desc\" builder-draggable=\"\" class=\"product-list-widget\">\n        <div class=\"container py-3\">\n        <span class=\"woo-button product-preview-but\" style=\"display:none\">Preview</span>\n        <span class=\"woo-button product-unpreview-but\" style=\"display:none\">Close preview</span>\n        <div class=\"row py-3 products\">\n                    <div class=\"woo-col-item mb-4 mt-4 col-12 col-md-6 col-sm-6\">\n                        <div class=\"\">\n                            <div class=\"img-col mb-3\" style=\"\">\n                                <a href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjAw/*|PRODUCT_URL|*\" class=\"mr-4\"><img src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjAwL2ltYWdl/cart_item.svg\" width=\"100%\"></a>\n                            </div>\n                            <div class=\"\">\n                                <p class=\"font-weight-normal product-name mb-1\">\n                                    <a style=\"color: #333;\" href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjAw/*|PRODUCT_URL|*\" class=\"mr-4\">*|PRODUCT_NAME|*</a>\n                                </p>\n                                <p class=\" product-description\">*|PRODUCT_DESCRIPTION|*</p>\n                                <p><strong>*|PRODUCT_PRICE|*</strong></p>\n                                <a href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjAw/*|PRODUCT_URL|*\" style=\"background-color: #9b5c8f;\nborder-color: #9b5c8f;\" class=\"btn btn-primary text-white\">\n                                    Buy now\n                                </a>\n                            </div>\n                        </div>\n                    </div>\n                \n                    <div class=\"woo-col-item mb-4 mt-4 col-12 col-md-6 col-sm-6\">\n                        <div class=\"\">\n                            <div class=\"img-col mb-3\" style=\"\">\n                                <a href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjAw/*|PRODUCT_URL|*\" class=\"mr-4\"><img src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjAwL2ltYWdl/cart_item.svg\" width=\"100%\"></a>\n                            </div>\n                            <div class=\"\">\n                                <p class=\"font-weight-normal product-name mb-1\">\n                                    <a style=\"color: #333;\" href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjAw/*|PRODUCT_URL|*\" class=\"mr-4\">*|PRODUCT_NAME|*</a>\n                                </p>\n                                <p class=\" product-description\">*|PRODUCT_DESCRIPTION|*</p>\n                                <p><strong>*|PRODUCT_PRICE|*</strong></p>\n                                <a href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjAw/*|PRODUCT_URL|*\" style=\"background-color: #9b5c8f;\nborder-color: #9b5c8f;\" class=\"btn btn-primary text-white\">\n                                    Buy now\n                                </a>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n          </div>\n    </div>\n\n      <footer builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div class=\"text-muted pt-5\">\n                    <div class=\"row\">\n                        <div builder-element=\"TextElement\" builder-inline-edit class=\"col-md-8 pb-4\">\n                        <p class=\"mb-1\">Copyright © 2021. All rights reserved. You can <a href=\"{UPDATE_PROFILE_URL}\">update your preferences</a> or <a href=\"{UNSUBSCRIBE_URL}\">unsubscribe from this list</a>.</p>\n                        </div>\n                        <div class=\"col-md-4\">\n                        <p builder-element builder-inline-edit class=\"float-right\">\n                            <a href=\"#\">Back to top</a>\n                        </p>\n                        </div>        \n                    </div>\n                </div>\n            </div>\n        </footer>\n    </div>\n  </body>\n</html>', '2021-11-10 10:03:44', '2021-11-10 10:03:44', 1, 1, NULL);
INSERT INTO `templates` (`id`, `uid`, `customer_id`, `name`, `content`, `created_at`, `updated_at`, `builder`, `is_default`, `theme`) VALUES
(16, '6037a26b0a211', NULL, 'Abandoned Cart Email #3', '<!DOCTYPE html><html lang=\"en\">\n  <head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n    <meta name=\"description\" content=\"\">\n    <meta name=\"author\" content=\"Mark Otto, Jacob Thornton, and Bootstrap contributors\">\n    <meta name=\"generator\" content=\"AcelleSystemLayouts\">\n    <title>Abandoned Cart Email #3</title>\n\n    <link href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjExL2Nzcw/bootstrap.min.css\" rel=\"stylesheet\">\n    <link href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjExL2Nzcw/custom.css\" rel=\"stylesheet\">\n  </head>\n  <body class=\"builderjs-layout\">    \n    <div builder-element=\"BlockElement\" builder-container builder-wrapper>\n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3 pt-5\">\n                <table width=\"100%\">\n                <tr>\n                    <td class=\"text-left\">\n                    <img builder-element src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjExL2ltYWdl/logo.png\" width=\"200px\">\n                    </td>\n                    <td class=\"text-right pr-2\">\n                    <a builder-element builder-inline-edit href=\"\" style=\"color: #333\">Open in your browser</a>\n                    </td>\n                </tr>\n                </table>\n            </div>\n        </div>\n\n      <div builder-element=\"BlockElement\" builder-draggable>\n        <div class=\"container py-3\">\n          <h3 builder-element builder-inline-edit class=\"display-4 text-center\">Hey, you forgot something</h3>\n          <h5 builder-element builder-inline-edit class=\"text-center font-weight-normal mt-1 mb-3 text-muted\">\n            It seems you forgot some items great in your cart<br>\n            Purchase now before they are sold out!<br>\n            Click the items to go back to our store and review your cart\n          </h5>\n        </div>\n      </div>\n\n      <div data-items-number=\"3\" builder-element=\"AbandonedCartElement\" data-max-items=\"3\" data-display=\"3\" data-sort-by=\"created_at-desc\" builder-draggable=\"\" class=\"product-list-widget\">\n        <div class=\"container py-3\">\n        <span class=\"woo-button product-preview-but\" style=\"display:none\">Preview</span>\n        <span class=\"woo-button product-unpreview-but\" style=\"display:none\">Close preview</span>\n        <div class=\"row py-3 products\">\n                    <div class=\"woo-col-item mb-4 mt-4 col-12 col-md-4 col-sm-6\">\n                        <div class=\"\">\n                            <div class=\"img-col mb-3\" style=\"\">\n                                <a href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjEx/*|PRODUCT_URL|*\" class=\"mr-4\"><img src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjExL2ltYWdl/cart_item.svg\" width=\"100%\"></a>\n                            </div>\n                            <div class=\"\">\n                                <p class=\"font-weight-normal product-name mb-1\">\n                                    <a style=\"color: #333;\" href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjEx/*|PRODUCT_URL|*\" class=\"mr-4\">*|PRODUCT_NAME|*</a>\n                                </p>\n                                <p class=\" product-description\">*|PRODUCT_DESCRIPTION|*</p>\n                                <p><strong>*|PRODUCT_PRICE|*</strong></p>\n                                <a href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjEx/*|PRODUCT_URL|*\" style=\"background-color: #9b5c8f;\nborder-color: #9b5c8f;\" class=\"btn btn-primary text-white\">\n                                    Buy now\n                                </a>\n                            </div>\n                        </div>\n                    </div>\n                \n                    <div class=\"woo-col-item mb-4 mt-4 col-12 col-md-4 col-sm-6\">\n                        <div class=\"\">\n                            <div class=\"img-col mb-3\" style=\"\">\n                                <a href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjEx/*|PRODUCT_URL|*\" class=\"mr-4\"><img src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjExL2ltYWdl/cart_item.svg\" width=\"100%\"></a>\n                            </div>\n                            <div class=\"\">\n                                <p class=\"font-weight-normal product-name mb-1\">\n                                    <a style=\"color: #333;\" href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjEx/*|PRODUCT_URL|*\" class=\"mr-4\">*|PRODUCT_NAME|*</a>\n                                </p>\n                                <p class=\" product-description\">*|PRODUCT_DESCRIPTION|*</p>\n                                <p><strong>*|PRODUCT_PRICE|*</strong></p>\n                                <a href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjEx/*|PRODUCT_URL|*\" style=\"background-color: #9b5c8f;\nborder-color: #9b5c8f;\" class=\"btn btn-primary text-white\">\n                                    Buy now\n                                </a>\n                            </div>\n                        </div>\n                    </div>\n                \n                    <div class=\"woo-col-item mb-4 mt-4 col-12 col-md-4 col-sm-6\">\n                        <div class=\"\">\n                            <div class=\"img-col mb-3\" style=\"\">\n                                <a href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjEx/*|PRODUCT_URL|*\" class=\"mr-4\"><img src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjExL2ltYWdl/cart_item.svg\" width=\"100%\"></a>\n                            </div>\n                            <div class=\"\">\n                                <p class=\"font-weight-normal product-name mb-1\">\n                                    <a style=\"color: #333;\" href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjEx/*|PRODUCT_URL|*\" class=\"mr-4\">*|PRODUCT_NAME|*</a>\n                                </p>\n                                <p class=\" product-description\">*|PRODUCT_DESCRIPTION|*</p>\n                                <p><strong>*|PRODUCT_PRICE|*</strong></p>\n                                <a href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjEx/*|PRODUCT_URL|*\" style=\"background-color: #9b5c8f;\nborder-color: #9b5c8f;\" class=\"btn btn-primary text-white\">\n                                    Buy now\n                                </a>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n\n      <footer builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div class=\"text-muted pt-5\">\n                    <div class=\"row\">\n                        <div builder-element=\"TextElement\" builder-inline-edit class=\"col-md-8 pb-4\">\n                        <p class=\"mb-1\">Copyright © 2021. All rights reserved. You can <a href=\"{UPDATE_PROFILE_URL}\">update your preferences</a> or <a href=\"{UNSUBSCRIBE_URL}\">unsubscribe from this list</a>.</p>\n                        </div>\n                        <div class=\"col-md-4\">\n                        <p builder-element builder-inline-edit class=\"float-right\">\n                            <a href=\"#\">Back to top</a>\n                        </p>\n                        </div>        \n                    </div>\n                </div>\n            </div>\n        </footer>\n    </div>\n  </body>\n</html>', '2021-11-10 10:03:45', '2021-11-10 10:03:45', 1, 1, NULL),
(17, '6037a26b0a244', NULL, 'Abandoned Cart Email #4', '<!DOCTYPE html><html lang=\"en\">\n  <head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n    <meta name=\"description\" content=\"\">\n    <meta name=\"author\" content=\"Mark Otto, Jacob Thornton, and Bootstrap contributors\">\n    <meta name=\"generator\" content=\"AcelleSystemLayouts\">\n    <title>Abandoned Cart Email #4</title>\n\n    <link href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjQ0L2Nzcw/bootstrap.min.css\" rel=\"stylesheet\">\n    <link href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjQ0L2Nzcw/custom.css\" rel=\"stylesheet\">\n  </head>\n  <body class=\"builderjs-layout\">    \n    <div builder-element=\"BlockElement\" builder-container builder-wrapper>\n      <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3 pt-5\">\n                <table width=\"100%\">\n                <tr>\n                    <td class=\"text-left\">\n                    <img builder-element src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjQ0L2ltYWdl/logo.png\" width=\"200px\">\n                    </td>\n                    <td class=\"text-right pr-2\">\n                    <a builder-element builder-inline-edit href=\"\" style=\"color: #333\">Open in your browser</a>\n                    </td>\n                </tr>\n                </table>\n            </div>\n        </div>\n\n      <div builder-element=\"BlockElement\" builder-draggable>\n        <div class=\"container py-3\">\n          <h3 builder-element builder-inline-edit class=\"display-4 text-center\">Hey, you forgot something</h3>\n          <h5 builder-element builder-inline-edit class=\"text-center font-weight-normal mt-1 mb-3 text-muted\">\n            It seems you forgot some items great in your cart<br>\n            Purchase now before they are sold out!<br>\n            Click the items to go back to our store and review your cart\n          </h5>\n        </div>\n      </div>\n\n      <div data-items-number=\"4\" builder-element=\"AbandonedCartElement\" data-max-items=\"4\" data-display=\"4\" data-sort-by=\"created_at-desc\" builder-draggable=\"\" class=\"product-list-widget\">\n        <div class=\"container py-3\">\n        <span class=\"woo-button product-preview-but\" style=\"display:none\">Preview</span>\n        <span class=\"woo-button product-unpreview-but\" style=\"display:none\">Close preview</span>\n        <div class=\"row py-3 products\">\n            <div class=\"woo-col-item mb-4 mt-4 col-12 col-sm-6 col-md-3\">\n                <div class=\"\">\n                    <div class=\"img-col mb-3\">\n                        <a href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjQ0/*|PRODUCT_URL|*\" class=\"mr-4\"><img src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjQ0L2ltYWdl/cart_item.svg\" width=\"100%\"></a>\n                    </div>\n                    <div class=\"\">\n                        <p class=\"font-weight-normal product-name mb-1\">\n                            <a style=\"color: #333;\" href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjQ0/*|PRODUCT_URL|*\" class=\"mr-4\">*|PRODUCT_NAME|*</a>\n                        </p>\n                        <p class=\" product-description\">*|PRODUCT_DESCRIPTION|*</p>\n                        <p><strong>*|PRODUCT_PRICE|*</strong></p>\n                        <a href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjQ0/*|PRODUCT_URL|*\" style=\"background-color: #9b5c8f;\nborder-color: #9b5c8f;\" class=\"btn btn-primary text-white\">\n                            Buy now\n                        </a>\n                    </div>\n                </div>\n            </div>\n            <div class=\"woo-col-item mb-4 mt-4 col-12 col-sm-6 col-md-3\">\n                <div class=\"\">\n                    <div class=\"img-col mb-3\">\n                        <a href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjQ0/*|PRODUCT_URL|*\" class=\"mr-4\"><img src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjQ0L2ltYWdl/cart_item.svg\" width=\"100%\"></a>\n                    </div>\n                    <div class=\"\">\n                        <p class=\"font-weight-normal product-name mb-1\">\n                            <a style=\"color: #333;\" href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjQ0/*|PRODUCT_URL|*\" class=\"mr-4\">*|PRODUCT_NAME|*</a>\n                        </p>\n                        <p class=\" product-description\">*|PRODUCT_DESCRIPTION|*</p>\n                        <p><strong>*|PRODUCT_PRICE|*</strong></p>\n                        <a href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjQ0/*|PRODUCT_URL|*\" style=\"background-color: #9b5c8f;\nborder-color: #9b5c8f;\" class=\"btn btn-primary text-white\">\n                            Buy now\n                        </a>\n                    </div>\n                </div>\n            </div>\n            <div class=\"woo-col-item mb-4 mt-4 col-12 col-sm-6 col-md-3\">\n                <div class=\"\">\n                    <div class=\"img-col mb-3\">\n                        <a href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjQ0/*|PRODUCT_URL|*\" class=\"mr-4\"><img src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjQ0L2ltYWdl/cart_item.svg\" width=\"100%\"></a>\n                    </div>\n                    <div class=\"\">\n                        <p class=\"font-weight-normal product-name mb-1\">\n                            <a style=\"color: #333;\" href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjQ0/*|PRODUCT_URL|*\" class=\"mr-4\">*|PRODUCT_NAME|*</a>\n                        </p>\n                        <p class=\" product-description\">*|PRODUCT_DESCRIPTION|*</p>\n                        <p><strong>*|PRODUCT_PRICE|*</strong></p>\n                        <a href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjQ0/*|PRODUCT_URL|*\" style=\"background-color: #9b5c8f;\nborder-color: #9b5c8f;\" class=\"btn btn-primary text-white\">\n                            Buy now\n                        </a>\n                    </div>\n                </div>\n            </div>\n            <div class=\"woo-col-item mb-4 mt-4 col-12 col-sm-6 col-md-3\">\n                <div class=\"\">\n                    <div class=\"img-col mb-3\">\n                        <a href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjQ0/*|PRODUCT_URL|*\" class=\"mr-4\"><img src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjQ0L2ltYWdl/cart_item.svg\" width=\"100%\"></a>\n                    </div>\n                    <div class=\"\">\n                        <p class=\"font-weight-normal product-name mb-1\">\n                            <a style=\"color: #333;\" href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjQ0/*|PRODUCT_URL|*\" class=\"mr-4\">*|PRODUCT_NAME|*</a>\n                        </p>\n                        <p class=\" product-description\">*|PRODUCT_DESCRIPTION|*</p>\n                        <p><strong>*|PRODUCT_PRICE|*</strong></p>\n                        <a href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTI2YjBhMjQ0/*|PRODUCT_URL|*\" style=\"background-color: #9b5c8f;\nborder-color: #9b5c8f;\" class=\"btn btn-primary text-white\">\n                            Buy now\n                        </a>\n                    </div>\n                </div>\n            </div>\n        </div></div>\n    </div>\n\n      <footer builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div class=\"text-muted pt-5\">\n                    <div class=\"row\">\n                        <div builder-element=\"TextElement\" builder-inline-edit class=\"col-md-8 pb-4\">\n                        <p class=\"mb-1\">Copyright © 2021. All rights reserved. You can <a href=\"{UPDATE_PROFILE_URL}\">update your preferences</a> or <a href=\"{UNSUBSCRIBE_URL}\">unsubscribe from this list</a>.</p>\n                        </div>\n                        <div class=\"col-md-4\">\n                        <p builder-element builder-inline-edit class=\"float-right\">\n                            <a href=\"#\">Back to top</a>\n                        </p>\n                        </div>        \n                    </div>\n                </div>\n            </div>\n        </footer>\n    </div>\n  </body>\n</html>', '2021-11-10 10:03:45', '2021-11-10 10:03:45', 1, 1, NULL),
(18, '6037a2356820zs', NULL, 'News Digest', '<!DOCTYPE html><html lang=\"en\">\n  <head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n    <meta name=\"description\" content=\"\">\n    <meta name=\"author\" content=\"Mark Otto, Jacob Thornton, and Bootstrap contributors\">\n    <meta name=\"generator\" content=\"AcelleSystemLayouts\">\n    <title>News Digest</title>\n\n    <!-- Bootstrap core CSS -->\n    <link href=\"https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i&subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese\" rel=\"stylesheet\">\n    <link href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTIzNTY4MjB6cy9jc3M/bootstrap.min.css\" rel=\"stylesheet\">\n    <link href=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTIzNTY4MjB6cy9jc3M/custom.css\" rel=\"stylesheet\">\n  </head>\n  <body class=\"builderjs-layout\">    \n    <div builder-element=\"BlockElement\" builder-container builder-wrapper>\n        <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div class=\"text-center pb-3 pt-4\">\n                    <div class=\"pt-4\">\n                        <img builder-element src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTIzNTY4MjB6cy9pbWFnZQ/logo_2.png\" width=\"160px\">\n                    </div>\n                    <h1 builder-element builder-inline-edit class=\"fw-normal fs-4 mt-2\">Louis\'s Digest</h1>\n                </div>\n            </div>\n        </div>\n\n        <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div builder-element builder-inline-edit class=\"border-bottom text-muted small\"><span>TOP STORIES FOR YOU</span></div>\n            </div>\n        </div>\n        \n        <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <h5 builder-element builder-inline-edit class=\"mb-2\" style=\"font-size: 19px;font-weight: bold;\">What is the most Japanese thing ever?</h5>\n                <div class=\"d-flex align-items-center my-2\">\n                    <div class=\" me-2\">\n                        <img builder-element src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTIzNTY4MjB6cy9pbWFnZQ/avatar2.svg\" width=\"32px\">\n                    </div>\n                    <div>\n                        <p builder-element builder-inline-edit class=\"mb-0 text-sm\" style=\"font-size: 14px;\"><span class=\"fw-bold\">Scott Egan</span>, Lived in Japan for two years • <span style=\"opacity: 0.7;;\">Updated April 25, 2017</span></p>\n                    </div>\n                </div>\n                <div class=\"d-flex\">\n                    <div>\n                        <p builder-element builder-inline-edit class=\"pe-3\">I worked in a government office in Japan twenty years ago. After one month on the job I returned to my desk (after being away the ENTIRE day) to find $3,000 worth of yen on... \n                            \n                        <a builder-element builder-inline-edit href=\"\">Read More »</a>\n                        \n                        </p>\n                    </div>\n                    <div>\n                        <img builder-element class=\"my-2\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTIzNTY4MjB6cy9pbWFnZQ/news1.jpg\" width=\"140px\">\n                    </div>\n                </div>\n                <div>\n                    <div class=\"d-flex align-items-center\">\n                        <a builder-element builder-inline-edit href=\"\" class=\"d-flex align-items-center me-4\" style=\"color: #636466\">\n                            <svg style=\"width:15px;margin-right:5px\" xmlns=\"http://www.w3.org/2000/svg\" viewbox=\"0 0 236 209.1\"><g id=\"Layer_2\" data-name=\"Layer 2\"><g id=\"Layer_1-2\" data-name=\"Layer 1\"><path d=\"M155,209.1H84a9,9,0,0,1-9-9V149.7L8.9,149a9.1,9.1,0,0,1-8.1-5.2,9.3,9.3,0,0,1,1.3-9.6l109-131A9,9,0,0,1,118,0h0a8.8,8.8,0,0,1,6.9,3.3l109,132A9,9,0,0,1,227,150H164v50.1A9,9,0,0,1,155,209.1Zm-62-18h53V141a9,9,0,0,1,9-9h52.9L118,23.1,28,131.2l56.1.6a9,9,0,0,1,8.9,9Z\" style=\"fill:#616567\"></path></g></g></svg>\n                            <span>4.0K upvotes</span>\n                        </a>\n                            \n                        <a builder-element builder-inline-edit href=\"\" class=\"d-flex align-items-center\" style=\"color: #636466\">\n                            <svg style=\"width:15px;margin-right:5px\" xmlns=\"http://www.w3.org/2000/svg\" viewbox=\"0 0 242 218.2\"><g id=\"Layer_2\" data-name=\"Layer 2\"><g id=\"Layer_1-2\" data-name=\"Layer 1\"><path d=\"M121,217.4A131.2,131.2,0,0,1,62.8,204l8.8-17.9A112.2,112.2,0,0,0,121,197.4c55.7,0,101-39.8,101-88.7S176.7,20,121,20,20,59.8,20,108.7c0,19.8,7.3,38.6,21.1,54.2l-15,13.2C9,156.8,0,133.5,0,108.7,0,48.8,54.3,0,121,0S242,48.8,242,108.7,187.7,217.4,121,217.4Z\" style=\"fill:#646566\"></path><path d=\"M13.2,218.2a10.1,10.1,0,0,1-7.9-3.8,10.3,10.3,0,0,1-1-10.9l.7-1.1,19.7-37.5a10,10,0,0,1,17.7,9.3l-10,19.1,32.5-7.9a9.9,9.9,0,0,1,12,7.3,10,10,0,0,1-7.3,12.1L15.5,217.9A9.1,9.1,0,0,1,13.2,218.2Z\" style=\"fill:#646566\"></path></g></g></svg>\n                            <span>88 comments</span>\n                        </a>\n                    </div>\n                </div>\n            </div>\n        </div>\n\n        <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container d-flex justify-content-center\">\n                <div style=\"width:50%\" class=\"border-bottom my-2\"></div>\n            </div>\n        </div>\n\n        <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <h5 builder-element builder-inline-edit class=\"mb-2\" style=\"font-size: 19px;font-weight: bold;\">I have written a novel and it’s been proofread. Where do I get it published or should I self-publish it?</h5>\n                <div class=\"d-flex align-items-center my-2\">\n                    <div class=\" me-2\">\n                        <img builder-element src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTIzNTY4MjB6cy9pbWFnZQ/avatar1.svg\" width=\"32px\">\n                    </div>\n                    <div>\n                        <p builder-element builder-inline-edit class=\"mb-0 text-sm\" style=\"font-size: 14px;\">\n                            <span class=\"fw-bold\">	\n                                Sarah Armstrong</span>, I\'m a USA Today bestselling author. • <span style=\"opacity: 0.7;;\">Updated July 8</span></p>\n                    </div>\n                </div>\n                <div class=\"d-flex\">\n                    <div>\n                        <p builder-element builder-inline-edit class=\"pe-3\">I’m a USA Today bestselling author, and own a small traditional publishing company. I’m also a ghostwriter and editor. The choices: 1. Traditional (never charges the author a... \n                            \n                        <a builder-element builder-inline-edit href=\"\">Read More »</a>\n                        \n                        </p>\n                    </div>\n                </div>\n                <div>\n                    <div class=\"d-flex align-items-center\">\n                        <a builder-element builder-inline-edit href=\"\" class=\"d-flex align-items-center me-4\" style=\"color: #636466\">\n                            <svg style=\"width:15px;margin-right:5px\" xmlns=\"http://www.w3.org/2000/svg\" viewbox=\"0 0 236 209.1\"><g id=\"Layer_2\" data-name=\"Layer 2\"><g id=\"Layer_1-2\" data-name=\"Layer 1\"><path d=\"M155,209.1H84a9,9,0,0,1-9-9V149.7L8.9,149a9.1,9.1,0,0,1-8.1-5.2,9.3,9.3,0,0,1,1.3-9.6l109-131A9,9,0,0,1,118,0h0a8.8,8.8,0,0,1,6.9,3.3l109,132A9,9,0,0,1,227,150H164v50.1A9,9,0,0,1,155,209.1Zm-62-18h53V141a9,9,0,0,1,9-9h52.9L118,23.1,28,131.2l56.1.6a9,9,0,0,1,8.9,9Z\" style=\"fill:#616567\"></path></g></g></svg>\n                            <span>81 upvotes</span>\n                        </a>\n                            \n                        <a builder-element builder-inline-edit href=\"\" class=\"d-flex align-items-center\" style=\"color: #636466\">\n                            <svg style=\"width:15px;margin-right:5px\" xmlns=\"http://www.w3.org/2000/svg\" viewbox=\"0 0 242 218.2\"><g id=\"Layer_2\" data-name=\"Layer 2\"><g id=\"Layer_1-2\" data-name=\"Layer 1\"><path d=\"M121,217.4A131.2,131.2,0,0,1,62.8,204l8.8-17.9A112.2,112.2,0,0,0,121,197.4c55.7,0,101-39.8,101-88.7S176.7,20,121,20,20,59.8,20,108.7c0,19.8,7.3,38.6,21.1,54.2l-15,13.2C9,156.8,0,133.5,0,108.7,0,48.8,54.3,0,121,0S242,48.8,242,108.7,187.7,217.4,121,217.4Z\" style=\"fill:#646566\"></path><path d=\"M13.2,218.2a10.1,10.1,0,0,1-7.9-3.8,10.3,10.3,0,0,1-1-10.9l.7-1.1,19.7-37.5a10,10,0,0,1,17.7,9.3l-10,19.1,32.5-7.9a9.9,9.9,0,0,1,12,7.3,10,10,0,0,1-7.3,12.1L15.5,217.9A9.1,9.1,0,0,1,13.2,218.2Z\" style=\"fill:#646566\"></path></g></g></svg>\n                            <span>8 comments</span>\n                        </a>\n                    </div>\n                </div>\n            </div>\n        </div>\n\n        <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container d-flex justify-content-center\">\n                <div style=\"width:50%\" class=\"border-bottom my-2\"></div>\n            </div>\n        </div>\n\n        <div builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <h5 builder-element builder-inline-edit class=\"mb-2\" style=\"font-size: 19px;font-weight: bold;\">What does “ghibli” mean in Japanese?</h5>\n                <div class=\"d-flex align-items-center my-2\">\n                    <div class=\" me-2\">\n                        <img builder-element src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTIzNTY4MjB6cy9pbWFnZQ/avatar3.svg\" width=\"32px\">\n                    </div>\n                    <div>\n                        <p builder-element builder-inline-edit class=\"mb-0 text-sm\" style=\"font-size: 14px;\">\n                            <span class=\"fw-bold\">	\n                                Douglas Kim</span>,\n                                lived in Japan (2018-2019) • \n                                <span style=\"opacity: 0.7;;\">Answered October 23, 2020</span></p>\n                    </div>\n                </div>\n                <div class=\"d-flex\">\n                    <div>\n                        <p builder-element builder-inline-edit class=\"pe-3\">\n                            This question was made for me. I honestly love Studio Ghibli’s movies and I even went to visit the Ghibli Museum in Mitaka, Tokyo. Put simply Ghibli refers to the translite... Read More »\n                            \n                        <a builder-element builder-inline-edit href=\"\">Read More »</a>\n                        \n                        </p>\n                    </div>\n                    <div>\n                        <img builder-element class=\"my-2\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTIzNTY4MjB6cy9pbWFnZQ/news3.jpeg\" width=\"140px\">\n                    </div>\n                </div>\n                <div>\n                    <div class=\"d-flex align-items-center\">\n                        <a builder-element builder-inline-edit href=\"\" class=\"d-flex align-items-center me-4\" style=\"color: #636466\">\n                            <svg style=\"width:15px;margin-right:5px\" xmlns=\"http://www.w3.org/2000/svg\" viewbox=\"0 0 236 209.1\"><g id=\"Layer_2\" data-name=\"Layer 2\"><g id=\"Layer_1-2\" data-name=\"Layer 1\"><path d=\"M155,209.1H84a9,9,0,0,1-9-9V149.7L8.9,149a9.1,9.1,0,0,1-8.1-5.2,9.3,9.3,0,0,1,1.3-9.6l109-131A9,9,0,0,1,118,0h0a8.8,8.8,0,0,1,6.9,3.3l109,132A9,9,0,0,1,227,150H164v50.1A9,9,0,0,1,155,209.1Zm-62-18h53V141a9,9,0,0,1,9-9h52.9L118,23.1,28,131.2l56.1.6a9,9,0,0,1,8.9,9Z\" style=\"fill:#616567\"></path></g></g></svg>\n                            <span>420 upvotes</span>\n                        </a>\n                            \n                        <a builder-element builder-inline-edit href=\"\" class=\"d-flex align-items-center\" style=\"color: #636466\">\n                            <svg style=\"width:15px;margin-right:5px\" xmlns=\"http://www.w3.org/2000/svg\" viewbox=\"0 0 242 218.2\"><g id=\"Layer_2\" data-name=\"Layer 2\"><g id=\"Layer_1-2\" data-name=\"Layer 1\"><path d=\"M121,217.4A131.2,131.2,0,0,1,62.8,204l8.8-17.9A112.2,112.2,0,0,0,121,197.4c55.7,0,101-39.8,101-88.7S176.7,20,121,20,20,59.8,20,108.7c0,19.8,7.3,38.6,21.1,54.2l-15,13.2C9,156.8,0,133.5,0,108.7,0,48.8,54.3,0,121,0S242,48.8,242,108.7,187.7,217.4,121,217.4Z\" style=\"fill:#646566\"></path><path d=\"M13.2,218.2a10.1,10.1,0,0,1-7.9-3.8,10.3,10.3,0,0,1-1-10.9l.7-1.1,19.7-37.5a10,10,0,0,1,17.7,9.3l-10,19.1,32.5-7.9a9.9,9.9,0,0,1,12,7.3,10,10,0,0,1-7.3,12.1L15.5,217.9A9.1,9.1,0,0,1,13.2,218.2Z\" style=\"fill:#646566\"></path></g></g></svg>\n                            <span>6 comments</span>\n                        </a>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div builder-element=\"BlockElement\" builder-draggable=\"\" class=\"\">\n            <div class=\"container py-3\">\n                <div class=\"text-center py-4\">\n                    <a builder-element=\"ButtonElement\" data-style=\"style_1\" builder-inline-edit=\"\" class=\"btn btn-primary btn-lg mr-2\" style=\"display:inline-block;font-weight:400;color:#fff;text-align:center;vertical-align:middle;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;background-color:transparent;border:1px solid transparent;padding:.7rem 2rem;font-size:1.2rem;line-height:1.5;border-radius:50px;transition:color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;background-color:#2196f3;border-color:#2196f3\">Read More in Your Feed\n                    </a>\n                </div>\n            </div>\n        </div>\n\n        <div builder-element=\"BlockElement\" builder-draggable=\"\">\n            <div class=\"container py-3\">\n                <div builder-element class=\"my-4\" style=\"font-size:0px;text-align:left;direction:ltr;display:inline-block;vertical-align:top;width:100%;padding: 20px;background: #ebf1fe;border-radius: 10px;\"><table style=\"vertical-align:top\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" width=\"100%\"><tbody><tr><td style=\"font-size:0px;padding:0px;word-break:break-word\" align=\"center\"><div builder-element=\"TextElement\" builder-inline-edit style=\"font-family:system-ui,Segoe UI,sans-serif;font-size:17px;font-weight:700;line-height:1.4;text-align:center;color:#333333\">Never miss a story. Designed for readers on the go.</div></td></tr><tr><td style=\"font-size:0px;padding:0px;word-break:break-word\"><div style=\"height:16px\"> </div></td></tr><tr><td><table style=\"text-align:center;margin:0 auto\" align=\"center\"><tbody><tr><td><table><tbody><tr><td style=\"text-align:center\"><div style=\"width:100%;display:inline-block\"><span>\n                    <a builder-element builder-inline-edit href=\"\" style=\"display: inline-block;\" target=\"_blank\">\n                        <img builder-element alt=\"Download on the App Store\" height=\"40\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTIzNTY4MjB6cy9pbWFnZQ/app_store.png\" style=\"height: 50px;max-height: 40px;margin-bottom:10px;margin-top: 10px;\" class=\"CToWUd\">\n                    </a></span><span><a builder-element builder-inline-edit href=\"\" target=\"_blank\" style=\"display: inline-block;\">\n                        <img builder-element builder-inline-edit alt=\"Get it on Google Play\" height=\"60\" src=\"/acellemail/public/assets/YXBwL3RlbXBsYXRlcy82MDM3YTIzNTY4MjB6cy9pbWFnZQ/play_store.png\" style=\"height: 60px;max-height:60px;\" class=\"CToWUd\"></a></span></div></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></div>\n            </div>\n        </div>\n\n        <footer builder-element=\"BlockElement\" builder-draggable>\n            <div class=\"container py-3\">\n                <div class=\"\">\n                    <div class=\"text-center\">\n                        <div builder-element=\"TextElement\" builder-inline-edit>\n                            <p builder-element builder-inline-edit style=\"font-size: 13px;color:#939598\">This email was sent by Quora (605 Castro Street, Mountain View, CA 94041).\n                                If you don\'t want to receive this type of email in the future, please <a builder-element builder-inline-edit style=\"color:#939598;text-decoration: underline;\" href=\"{UNSUBSCRIBE_URL}\">unsubscribe</a>.\n                            </p>\n\n                            <a builder-element builder-inline-edit style=\"font-size: 13px;color:#939598;text-decoration: underline;\" href=\"https://acellemail.com\">https://acellemail.com</a>\n                        </div>     \n                    </div>\n                </div>\n            </div>\n        </footer>\n    </div>\n  </body>\n</html>', '2021-11-10 10:03:45', '2021-11-10 10:03:45', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `templates_categories`
--

CREATE TABLE `templates_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `template_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `templates_categories`
--

INSERT INTO `templates_categories` (`id`, `template_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 5, NULL, NULL),
(2, 2, 5, NULL, NULL),
(3, 3, 5, NULL, NULL),
(4, 4, 5, NULL, NULL),
(5, 5, 5, NULL, NULL),
(6, 6, 5, NULL, NULL),
(7, 7, 5, NULL, NULL),
(8, 8, 5, NULL, NULL),
(9, 9, 5, NULL, NULL),
(10, 10, 5, NULL, NULL),
(11, 11, 5, NULL, NULL),
(12, 12, 5, NULL, NULL),
(13, 13, 5, NULL, NULL),
(14, 14, 5, NULL, NULL),
(15, 15, 8, NULL, NULL),
(16, 16, 8, NULL, NULL),
(17, 17, 8, NULL, NULL),
(18, 18, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `template_categories`
--

CREATE TABLE `template_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `template_categories`
--

INSERT INTO `template_categories` (`id`, `uid`, `name`, `created_at`, `updated_at`) VALUES
(5, '618b98ff28ebf', 'Basic', '2021-11-10 10:03:43', '2021-11-10 10:03:43'),
(6, '618b98ff296d9', 'Featured', '2021-11-10 10:03:43', '2021-11-10 10:03:43'),
(7, '618b98ff2a1c3', 'Themes', '2021-11-10 10:03:43', '2021-11-10 10:03:43'),
(8, '618b98ff2ade1', 'WooCommerce', '2021-11-10 10:03:43', '2021-11-10 10:03:43');

-- --------------------------------------------------------

--
-- Table structure for table `timelines`
--

CREATE TABLE `timelines` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `automation2_id` int(10) UNSIGNED NOT NULL,
  `subscriber_id` int(10) UNSIGNED NOT NULL,
  `auto_trigger_id` int(10) UNSIGNED NOT NULL,
  `activity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `activity_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracking_domains`
--

CREATE TABLE `tracking_domains` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `scheme` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracking_logs`
--

CREATE TABLE `tracking_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `runtime_message_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `sending_server_id` int(10) UNSIGNED NOT NULL,
  `campaign_id` int(10) UNSIGNED DEFAULT NULL,
  `subscriber_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `error` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `auto_trigger_id` int(10) UNSIGNED DEFAULT NULL,
  `sub_account_id` int(10) UNSIGNED DEFAULT NULL,
  `email_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_id` int(10) UNSIGNED NOT NULL,
  `error` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `allow_manual_review` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `unsubscribe_logs`
--

CREATE TABLE `unsubscribe_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `message_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subscriber_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `quota` blob DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT 0,
  `one_time_api_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `first_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uid`, `api_token`, `creator_id`, `email`, `password`, `remember_token`, `status`, `created_at`, `updated_at`, `quota`, `activated`, `one_time_api_token`, `customer_id`, `first_name`, `last_name`) VALUES
(1, '618b99018cdd2', 'IQBRzQJ4UxiAKcqUUqQNPF3RcfX8mf6eYIPAuYoWwbNwF6wnD4rciuryNezP', NULL, 'srkshah1998@gmail.com', '$2y$10$ORkEvmji4ekvpmqfYCIeieOtiHhe7X/5Qq3ble9kgDNmvkW8kQIUq', '5pQW2NVMRX44qOUPUz5Gg9hxLK5ZTutyaA8QE8K3IV8D5WXdRxdvjR4mIYA2', 'active', '2016-12-31 20:00:00', '2021-11-10 10:03:45', NULL, 1, NULL, 1, 'shahrukh', 'akhter'),
(2, '61921d98328ea', 'QsGuwk4D1zauIBB8P6noVz7HDQiC0bgRCjfja22elwbIsS3qN0KYYiNnO0jc', NULL, 'fake@gmail.com', '$2y$10$S.NSULyXKnVoR54wle8JwOvYZZGDBgpKKO5wYFmBj/sTn2aIdEmq6', NULL, NULL, '2021-11-15 08:43:04', '2021-11-15 08:43:04', NULL, 0, NULL, 2, 'Fake', 'khan'),
(3, '619240b713509', 'XtYe0fJ18hDMSlIesaKpmbRUqMspodFUOnlN2RLMjtZDunGLupP4eEdhNCIq', NULL, 'fake2@gmail.com', '$2y$10$Je6b.Ic1JvNl3/Le0q/xAeEgWIv0OcyV3kngLNJ2IAbhbbEIACAXO', NULL, NULL, '2021-11-15 11:12:55', '2021-11-15 11:12:55', NULL, 1, NULL, 3, 'fake2', 'khan'),
(11, '619252863079e', '10Mj8Skd3OImpGVF0tI9JlXD6DnF93R5VQDtS4HTNTmZskvzrTwZFJazC3hV', NULL, 'bhai@gmail.com', '$2y$10$zl7mxcK4LDUQO19DcGAtvejNp/d8R/QkLeFXCBOXAudTFgdxm3F4S', NULL, NULL, '2021-11-15 12:28:54', '2021-11-15 12:28:54', NULL, 1, NULL, 5, 'bhai', 'jaan'),
(12, '61925a525db97', 'TZchW1BM5xuGSTgz03oBbXIuFvWYW8JfrksrbezdXwBvisPMRLGnpd7bcSWJ', NULL, 'bhai1@gmail.com', '$2y$10$5wPuOIzK12pbad8/ram9cOCJbnA1oAZxp/s3hH9DefO12oxNZAqii', NULL, NULL, '2021-11-15 13:02:10', '2021-11-15 13:02:10', NULL, 1, NULL, 6, 'bhai1', 'jaan'),
(17, '61927c8520590', 'vEUegUDdn2VXt4ZAtY4x2OW4RFhTtfEp20ZW7BJq3SyHRf3KFrIg3Dro9YuB', NULL, 'bhai2@gmail.com', '$2y$10$/Fc6N/QSK44jsjaaiP2LCOXPhU06X5Qu19yffGlAhtSBvaeC3xJn.', NULL, NULL, '2021-11-15 15:28:05', '2021-11-15 15:28:05', NULL, 1, NULL, 7, 'bhai2', 'jaan'),
(21, '6193770e0d8ae', 'aP7yCE1XzCLy5vIutIFKZfD7z5iYYM4ZUDJGYVVnVnDMa9Gb1iynVHEToAyn', NULL, 'bhai3@gmail.com', '$2y$10$rU6ziQqUR.dOiKfU9Vk7pOm.1KiMIVEr7l9WBdEKj4/Be/Xw.IQnu', NULL, NULL, '2021-11-16 09:17:02', '2021-11-16 09:17:02', NULL, 1, NULL, 8, 'bhai3', 'jaan'),
(22, '61937f89bf8db', 'QFyF2jznaKrohH9ftNkMxidlTWbwqLMnCfYoLXLiIiPmhU5PMpdIyNUs8Spa', NULL, 'bhai4@gmail.com', '$2y$10$C9ev7lPQAP..hVlC87b/OO0Bl3reb6o4JTZ.D1KTzRgfXp7Qev43m', NULL, NULL, '2021-11-16 09:53:13', '2021-11-16 09:53:13', NULL, 1, NULL, 9, 'bhai4', 'jaan'),
(25, '61a757d373b47', '8xYGR8Nv4xaqU2BncMLhjrZQPjna9PGwGACVsOnAsgccfIQPx2Nsbh3IBsPK', NULL, 'mohit1@gmail.com', '$2y$10$HJq.snvd1O7Su.sKgFEtqe7Z.xXPI.M43bApbBnYcoeDCOZ/.dXVq', '7X3bsAgsGLMuDXqsLR4vIuhyuqq6NoP1iPGZh80B3zJrPoHhuIF1m73pk0ht', NULL, '2021-12-01 11:09:07', '2021-12-01 11:09:07', NULL, 1, NULL, 10, 'mohit', 'kumari'),
(26, '61af621e53508', 'DR93JmBTHwjPzqDZp4NlvYQLUQYQ7wA5Vaev6sahk38rBttdnNN0rioZkXcg', NULL, 'wajahat@gmail.com', '$2y$10$WBNolJFH57cpAP4pms9cOui.yGTiKIuBnT186cNQ9F1WaU.CM69tS', NULL, NULL, '2021-12-07 09:31:10', '2021-12-07 09:31:10', NULL, 0, NULL, 14, 'wajahat', 'wajahat'),
(27, '61af6297a9ef6', 'WgCzdaH47zQ7CbsmUhkTXhno7QscSj4hBmqDOrSsx2Y6izA6SbRdPJeZThYc', NULL, 'kumara@gmail.com', '$2y$10$IQ/0hgPx/DCi3p//AElslOgBOgUuO3pLOsfe5HCo/u/bGejRs.OG.', NULL, NULL, '2021-12-07 09:33:11', '2021-12-07 09:33:11', NULL, 0, NULL, 15, 'kumara', 'kumara'),
(28, '61af654c27f2f', 'X8HbA2HFiLv4Oa6vmKyipQCkTkfYbulfiDmnZDZSerUHWIVzyUXHwP2oESP0', NULL, 'kumara1@gmail.com', '$2y$10$pR6R2bEGAFTs1KctPr.Y5eayrgo0xftcIT915F6M9JknHOQMESJ3K', NULL, NULL, '2021-12-07 09:44:44', '2021-12-07 09:44:44', NULL, 0, NULL, 16, 'kumara1', 'kumara1'),
(29, '61b08ed6c9e2c', 'UWzJlo9JKq1IvFc001ZQqGxa6yW3Ob6wHGqiJS0DxscwJnMubcVbhMBUT53f', NULL, 'kumara2@gmail.com', '$2y$10$DygdPvjFEL0s7U06dehM7eQV1mJUlZRG2UP/dT4I45XQiA5BcvSq2', NULL, NULL, '2021-12-08 06:54:14', '2021-12-08 06:54:14', NULL, 0, NULL, 17, 'kumara2', 'kumara2'),
(30, '61b0a2e06cc4d', 'hgEi9iAUFVpKzr5Yn8upQqlkF3AvL4PRUwnC5xVUma9TjC62qGhXk9jCeDye', NULL, 'kumara3@gmail.com', '$2y$10$mD8skVKczr4xq8SGSbJR.u1nXoqE5E4RAr57ZrLja9OTrpgNVPl1q', NULL, NULL, '2021-12-08 08:19:44', '2021-12-08 08:19:44', NULL, 0, NULL, 18, 'kumara3', 'kumara3'),
(31, '61b0a3e42a1aa', 'PmYVzvShp2uAOCLuwFLJQgko8NqTtVtITZ7lffuq6xeMdO7Du0skt2PY5ZwZ', NULL, 'kumara4@gmail.com', '$2y$10$UKnUVQ19whnFJTYwcrSSzeVZwZc.4frKMiMjXKXC2kh/vRNbxpD9q', NULL, NULL, '2021-12-08 08:24:04', '2021-12-08 08:24:04', NULL, 0, NULL, 19, 'kumara4', 'kumara4'),
(32, '61b0ca7982e0d', 'vGBfb5YaE8mB48Ne0MOmDXBUBqkVuzkPoBx4ZYT7BdhkGk22YTo0vYYFj0Xa', NULL, 'kumara5@gmail.com', '$2y$10$d/eCkm0tP8HpTtVl4wigh.ijxpP6jweUmp23ilcyx9YDwih7vhuaq', NULL, NULL, '2021-12-08 11:08:41', '2021-12-08 11:08:41', NULL, 0, NULL, 20, 'kumara5', 'kumara5'),
(33, '61b0f4c763916', 'ngkMLplXSpeLfD41sXQQEWWr3g7flabEAOJwWnDaqpMjAi1WUt4z0s5z0JET', NULL, 'kumara6@gmail.com', '$2y$10$NjpWsk5H4O2b3Z30ZcjeC.g4s20DGRcGK1Tk7fEHC362ZIxF0VkB6', NULL, NULL, '2021-12-08 14:09:11', '2021-12-08 14:09:11', NULL, 0, NULL, 21, 'kumara6', 'kumara6'),
(34, '61b2216df373d', 'osYJ6TuDJIwKNRn7uG4756cmUT446JWNOaeydfQy9iqc7YpVZB3i33x8zTWX', NULL, 'kumara7@gmail.com', '$2y$10$NuJoVp1U6i0jyJ6oErceLecAPXnAOTfksxh5xTCCT6jCw6dsp8Peu', NULL, NULL, '2021-12-09 11:31:57', '2021-12-09 11:31:57', NULL, 0, NULL, 22, 'kumara7', 'kumara7'),
(35, '61b221db2ba6a', 'DMVj45YonHo3l7xyhw6aMmzBxU1i81MW844duvBDtSllDDAmp78kid9Iql5k', NULL, 'kumara8@gmail.com', '$2y$10$295J3ltOvSIIkHSoTnpgOe.HgA4aoopCkVd0qdGwdEroFjNFC.lo6', 'dRLW1OMFPy9cw60ngczrQwLgjFIKx8eQLAhx0RmjDuA09jREUlzjckfpcfWV', NULL, '2021-12-09 11:33:47', '2021-12-16 14:37:50', NULL, 1, NULL, 23, 'kumara8', 'kumara9'),
(36, '61b39f5e99698', 'njeWAAC0yDmnkgQdEZkYSlSBnb5l6VVseL5Dw9qBs8CBKNjd2lj5GaaS0Xr4', NULL, 'ben1@gmail.com', '$2y$10$hK1z15kDjYBCXH6xYrSOSutYDzLVz3Jq.tsYg6Ke/1nwZN9pIgFxe', NULL, NULL, '2021-12-10 14:41:34', '2021-12-10 14:41:34', NULL, 1, NULL, 24, 'ben1', 'ben1'),
(37, '61b8627f3fd15', 'y4OAkwWvGYsIqoq1r7QaftgYFUGSf1dmJTIJ2tJropB7eiahpWDHIQfc7I6R', NULL, 'kumara9@gmail.com', '$2y$10$cq5L6NhXXZSaWTY9yo9rxe7FTFmAK.EU/lhq4dSFNDdYQz/8B0D5W', NULL, NULL, '2021-12-14 05:23:11', '2021-12-14 05:23:11', NULL, 1, NULL, 25, 'kumara9', 'kumara9'),
(38, '61b8c7cf4627f', 'wAZZnxUlVXUKsAv6UBRQGzYRnrQ7hhPTcwHVgY93XMAuzt2riepl3OfmaMfs', NULL, 'kumara10@gmail.com', '$2y$10$.MDN1wNJXKwPfh8zCwPz8e7leN6ZoAi6xvknZr3SjdZctRTZN.hW6', NULL, NULL, '2021-12-14 12:35:27', '2021-12-14 12:35:27', NULL, 1, NULL, 26, 'kumara10', 'kumara10'),
(39, '61c9be824e1a4', 'bDBjEINTihrR1zydZQXTMGSL2cRDul8NVImm39u5Y1bj61fnzkqFlXVw3pyB', NULL, 'mohit20@gmail.com', '$2y$10$L/VY5r6SAhxPhvJ6rnwWFORewI7z.a.jKHWFC.SDHi2MWMntEuXU2', NULL, NULL, '2021-12-27 09:24:18', '2021-12-27 09:24:18', NULL, 1, NULL, 27, 'mohit20', 'mohit20'),
(40, '61c9bee837ea5', 'RsVlNCqDyPb0ZOqOlFgW3BSgaJnfQF67S8x6boQvHYzTq5tcdweezgKfcvrf', NULL, 'mohit21@gmail.com', '$2y$10$sUwilamgIIAErargcOfnhOm4gNNPF1lTn6H7hdqz3jjhajSDr2Kne', NULL, NULL, '2021-12-27 09:26:00', '2021-12-27 09:26:00', NULL, 1, NULL, 28, 'mohit21', 'mohit21');

-- --------------------------------------------------------

--
-- Table structure for table `user_activations`
--

CREATE TABLE `user_activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_activations`
--

INSERT INTO `user_activations` (`id`, `user_id`, `token`, `created_at`, `updated_at`) VALUES
(1, 2, 'f585a11bb08a86711d2b418d8153a989100e783670680814bc8787e590df0943', '2021-11-15 08:43:04', '2021-11-15 08:43:04'),
(2, 25, '5860a50c95fd2427be639ca2e811fa9f0d3598509003961916aec87357ebcd20', '2021-12-01 11:09:07', '2021-12-01 11:09:07');

-- --------------------------------------------------------

--
-- Table structure for table `_tmp_subscriptions`
--

CREATE TABLE `_tmp_subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_period_ends_at` datetime DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `timezone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `started_at` datetime DEFAULT NULL,
  `last_period_ends_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admins_user_id_foreign` (`user_id`),
  ADD KEY `admins_creator_id_foreign` (`creator_id`),
  ADD KEY `admins_contact_id_foreign` (`contact_id`),
  ADD KEY `admins_admin_group_id_foreign` (`admin_group_id`),
  ADD KEY `admins_language_id_foreign` (`language_id`);

--
-- Indexes for table `admin_groups`
--
ALTER TABLE `admin_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_groups_creator_id_foreign` (`creator_id`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `automation2s`
--
ALTER TABLE `automation2s`
  ADD PRIMARY KEY (`id`),
  ADD KEY `automation2s_customer_id_foreign` (`customer_id`),
  ADD KEY `automation2s_mail_list_id_foreign` (`mail_list_id`);

--
-- Indexes for table `auto_triggers`
--
ALTER TABLE `auto_triggers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auto_triggers_subscriber_id_foreign` (`subscriber_id`),
  ADD KEY `auto_triggers_automation2_id_foreign` (`automation2_id`);

--
-- Indexes for table `billing_addresses`
--
ALTER TABLE `billing_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `billing_addresses_customer_id_foreign` (`customer_id`),
  ADD KEY `billing_addresses_country_id_foreign` (`country_id`);

--
-- Indexes for table `blacklists`
--
ALTER TABLE `blacklists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blacklists_admin_id_foreign` (`admin_id`),
  ADD KEY `blacklists_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `bounce_handlers`
--
ALTER TABLE `bounce_handlers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bounce_handlers_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `bounce_logs`
--
ALTER TABLE `bounce_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaigns_customer_id_foreign` (`customer_id`),
  ADD KEY `campaigns_default_mail_list_id_foreign` (`default_mail_list_id`),
  ADD KEY `campaigns_tracking_domain_id_foreign` (`tracking_domain_id`),
  ADD KEY `campaigns_template_id_foreign` (`template_id`);

--
-- Indexes for table `campaigns_lists_segments`
--
ALTER TABLE `campaigns_lists_segments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cls_campaign_id_fk` (`campaign_id`),
  ADD KEY `cls_mail_list_id_fk` (`mail_list_id`),
  ADD KEY `cls_segment_id_fk` (`segment_id`);

--
-- Indexes for table `campaign_links`
--
ALTER TABLE `campaign_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_links_campaign_id_foreign` (`campaign_id`);

--
-- Indexes for table `click_logs`
--
ALTER TABLE `click_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `click_logs_message_id_foreign` (`message_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_country_id_foreign` (`country_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currencies_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_admin_id_foreign` (`admin_id`),
  ADD KEY `customers_contact_id_foreign` (`contact_id`),
  ADD KEY `customers_language_id_foreign` (`language_id`);

--
-- Indexes for table `customer_groups`
--
ALTER TABLE `customer_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_groups_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `customer_group_sending_servers`
--
ALTER TABLE `customer_group_sending_servers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_attempts`
--
ALTER TABLE `delivery_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_attempts_subscriber_id_foreign` (`subscriber_id`),
  ADD KEY `delivery_attempts_email_id_foreign` (`email_id`),
  ADD KEY `delivery_attempts_auto_trigger_id_foreign` (`auto_trigger_id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emails_automation2_id_foreign` (`automation2_id`),
  ADD KEY `emails_tracking_domain_id_foreign` (`tracking_domain_id`),
  ADD KEY `emails_template_id_foreign` (`template_id`),
  ADD KEY `emails_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `email_links`
--
ALTER TABLE `email_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_links_email_id_foreign` (`email_id`);

--
-- Indexes for table `email_verifications`
--
ALTER TABLE `email_verifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_verifications_subscriber_id_foreign` (`subscriber_id`),
  ADD KEY `ev_email_verification_server_id_fk` (`email_verification_server_id`),
  ADD KEY `email_verifications_result_index` (`result`);

--
-- Indexes for table `email_verification_servers`
--
ALTER TABLE `email_verification_servers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `evs_admin_id_fk` (`admin_id`),
  ADD KEY `evs_customer_id_fk` (`customer_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedback_logs`
--
ALTER TABLE `feedback_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback_loop_handlers`
--
ALTER TABLE `feedback_loop_handlers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedback_loop_handlers_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fields_mail_list_id_foreign` (`mail_list_id`);

--
-- Indexes for table `field_options`
--
ALTER TABLE `field_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `field_options_field_id_foreign` (`field_id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_customer_id_foreign` (`customer_id`),
  ADD KEY `invoices_currency_id_foreign` (`currency_id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_items_invoice_id_foreign` (`invoice_id`);

--
-- Indexes for table `ip_locations`
--
ALTER TABLE `ip_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ip_locations_ip_address_index` (`ip_address`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_monitors`
--
ALTER TABLE `job_monitors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layouts`
--
ALTER TABLE `layouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `logs_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `mail_lists`
--
ALTER TABLE `mail_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mail_lists_contact_id_foreign` (`contact_id`),
  ADD KEY `mail_lists_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `mail_lists_sending_servers`
--
ALTER TABLE `mail_lists_sending_servers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mlss_sending_server_id_fk` (`sending_server_id`),
  ADD KEY `mlss_mail_list_id_fk` (`mail_list_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_admin_id_foreign` (`admin_id`),
  ADD KEY `notifications_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `open_logs`
--
ALTER TABLE `open_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `open_logs_message_id_foreign` (`message_id`),
  ADD KEY `open_logs_ip_address_index` (`ip_address`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_mail_list_id_foreign` (`mail_list_id`),
  ADD KEY `pages_layout_id_foreign` (`layout_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plans_admin_id_foreign` (`admin_id`),
  ADD KEY `plans_currency_id_foreign` (`currency_id`);

--
-- Indexes for table `plans_email_verification_servers`
--
ALTER TABLE `plans_email_verification_servers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pevs_server_id_fk` (`server_id`),
  ADD KEY `pevs_plan_id_fk` (`plan_id`);

--
-- Indexes for table `plans_sending_servers`
--
ALTER TABLE `plans_sending_servers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pss_sending_server_id_fk` (`sending_server_id`),
  ADD KEY `plans_sending_servers_plan_id_foreign` (`plan_id`);

--
-- Indexes for table `plugins`
--
ALTER TABLE `plugins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_customer_id_foreign` (`customer_id`),
  ADD KEY `products_source_id_foreign` (`source_id`);

--
-- Indexes for table `segments`
--
ALTER TABLE `segments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `segments_mail_list_id_foreign` (`mail_list_id`);

--
-- Indexes for table `segment_conditions`
--
ALTER TABLE `segment_conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `segment_conditions_segment_id_foreign` (`segment_id`),
  ADD KEY `segment_conditions_field_id_foreign` (`field_id`);

--
-- Indexes for table `senders`
--
ALTER TABLE `senders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `senders_customer_id_foreign` (`customer_id`),
  ADD KEY `senders_sending_server_id_foreign` (`sending_server_id`);

--
-- Indexes for table `sending_domains`
--
ALTER TABLE `sending_domains`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sending_domains_admin_id_foreign` (`admin_id`),
  ADD KEY `sending_domains_customer_id_foreign` (`customer_id`),
  ADD KEY `sending_domains_sending_server_id_foreign` (`sending_server_id`);

--
-- Indexes for table `sending_servers`
--
ALTER TABLE `sending_servers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sending_servers_admin_id_foreign` (`admin_id`),
  ADD KEY `ss_customer_id_fk` (`customer_id`),
  ADD KEY `ss_bounce_handler_id_fk` (`bounce_handler_id`),
  ADD KEY `ss_feedback_loop_handler_id_fk` (`feedback_loop_handler_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sources`
--
ALTER TABLE `sources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sources_customer_id_foreign` (`customer_id`),
  ADD KEY `sources_mail_list_id_foreign` (`mail_list_id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscribers_mail_list_id_email_index` (`mail_list_id`,`email`),
  ADD KEY `subscribers_email_index` (`email`);

--
-- Indexes for table `subscriber_fields`
--
ALTER TABLE `subscriber_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriber_fields_subscriber_id_foreign` (`subscriber_id`),
  ADD KEY `subscriber_fields_field_id_foreign` (`field_id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_customer_id_foreign` (`customer_id`),
  ADD KEY `subscriptions_plan_id_foreign` (`plan_id`);

--
-- Indexes for table `subscription_logs`
--
ALTER TABLE `subscription_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sl_subscription_id_fk` (`subscription_id`);

--
-- Indexes for table `sub_accounts`
--
ALTER TABLE `sub_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_accounts_customer_id_foreign` (`customer_id`),
  ADD KEY `sub_accounts_sending_server_id_foreign` (`sending_server_id`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `templates_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `templates_categories`
--
ALTER TABLE `templates_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `templates_categories_template_id_foreign` (`template_id`),
  ADD KEY `templates_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `template_categories`
--
ALTER TABLE `template_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timelines`
--
ALTER TABLE `timelines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `timelines_automation2_id_foreign` (`automation2_id`),
  ADD KEY `timelines_subscriber_id_foreign` (`subscriber_id`),
  ADD KEY `timelines_auto_trigger_id_foreign` (`auto_trigger_id`);

--
-- Indexes for table `tracking_domains`
--
ALTER TABLE `tracking_domains`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracking_domains_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `tracking_logs`
--
ALTER TABLE `tracking_logs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tracking_logs_runtime_message_id_unique` (`runtime_message_id`),
  ADD UNIQUE KEY `tracking_logs_message_id_unique` (`message_id`),
  ADD KEY `tracking_logs_customer_id_foreign` (`customer_id`),
  ADD KEY `tracking_logs_sending_server_id_foreign` (`sending_server_id`),
  ADD KEY `tracking_logs_subscriber_id_foreign` (`subscriber_id`),
  ADD KEY `tracking_logs_auto_trigger_id_foreign` (`auto_trigger_id`),
  ADD KEY `tracking_logs_sub_account_id_foreign` (`sub_account_id`),
  ADD KEY `tracking_logs_email_id_foreign` (`email_id`),
  ADD KEY `tracking_logs_campaign_id_foreign` (`campaign_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_invoice_id_foreign` (`invoice_id`);

--
-- Indexes for table `unsubscribe_logs`
--
ALTER TABLE `unsubscribe_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unsubscribe_logs_message_id_foreign` (`message_id`),
  ADD KEY `unsubscribe_logs_subscriber_id_foreign` (`subscriber_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_creator_id_foreign` (`creator_id`),
  ADD KEY `users_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `user_activations`
--
ALTER TABLE `user_activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_activations_user_id_foreign` (`user_id`),
  ADD KEY `user_activations_token_index` (`token`);

--
-- Indexes for table `_tmp_subscriptions`
--
ALTER TABLE `_tmp_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_groups`
--
ALTER TABLE `admin_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `automation2s`
--
ALTER TABLE `automation2s`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auto_triggers`
--
ALTER TABLE `auto_triggers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `billing_addresses`
--
ALTER TABLE `billing_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blacklists`
--
ALTER TABLE `blacklists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bounce_handlers`
--
ALTER TABLE `bounce_handlers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bounce_logs`
--
ALTER TABLE `bounce_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `campaigns_lists_segments`
--
ALTER TABLE `campaigns_lists_segments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaign_links`
--
ALTER TABLE `campaign_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `click_logs`
--
ALTER TABLE `click_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `customer_groups`
--
ALTER TABLE `customer_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_group_sending_servers`
--
ALTER TABLE `customer_group_sending_servers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_attempts`
--
ALTER TABLE `delivery_attempts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_links`
--
ALTER TABLE `email_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_verifications`
--
ALTER TABLE `email_verifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_verification_servers`
--
ALTER TABLE `email_verification_servers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback_logs`
--
ALTER TABLE `feedback_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback_loop_handlers`
--
ALTER TABLE `feedback_loop_handlers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `field_options`
--
ALTER TABLE `field_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_locations`
--
ALTER TABLE `ip_locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `job_monitors`
--
ALTER TABLE `job_monitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `layouts`
--
ALTER TABLE `layouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mail_lists`
--
ALTER TABLE `mail_lists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mail_lists_sending_servers`
--
ALTER TABLE `mail_lists_sending_servers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `open_logs`
--
ALTER TABLE `open_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `plans_email_verification_servers`
--
ALTER TABLE `plans_email_verification_servers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plans_sending_servers`
--
ALTER TABLE `plans_sending_servers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plugins`
--
ALTER TABLE `plugins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `segments`
--
ALTER TABLE `segments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `segment_conditions`
--
ALTER TABLE `segment_conditions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `senders`
--
ALTER TABLE `senders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sending_domains`
--
ALTER TABLE `sending_domains`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sending_servers`
--
ALTER TABLE `sending_servers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `sources`
--
ALTER TABLE `sources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriber_fields`
--
ALTER TABLE `subscriber_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_logs`
--
ALTER TABLE `subscription_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_accounts`
--
ALTER TABLE `sub_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `templates_categories`
--
ALTER TABLE `templates_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `template_categories`
--
ALTER TABLE `template_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `timelines`
--
ALTER TABLE `timelines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracking_domains`
--
ALTER TABLE `tracking_domains`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracking_logs`
--
ALTER TABLE `tracking_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unsubscribe_logs`
--
ALTER TABLE `unsubscribe_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `user_activations`
--
ALTER TABLE `user_activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `_tmp_subscriptions`
--
ALTER TABLE `_tmp_subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_admin_group_id_foreign` FOREIGN KEY (`admin_group_id`) REFERENCES `admin_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admins_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`),
  ADD CONSTRAINT `admins_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `admins_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`),
  ADD CONSTRAINT `admins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_groups`
--
ALTER TABLE `admin_groups`
  ADD CONSTRAINT `admin_groups_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `automation2s`
--
ALTER TABLE `automation2s`
  ADD CONSTRAINT `automation2s_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `automation2s_mail_list_id_foreign` FOREIGN KEY (`mail_list_id`) REFERENCES `mail_lists` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auto_triggers`
--
ALTER TABLE `auto_triggers`
  ADD CONSTRAINT `auto_triggers_automation2_id_foreign` FOREIGN KEY (`automation2_id`) REFERENCES `automation2s` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auto_triggers_subscriber_id_foreign` FOREIGN KEY (`subscriber_id`) REFERENCES `subscribers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `billing_addresses`
--
ALTER TABLE `billing_addresses`
  ADD CONSTRAINT `billing_addresses_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `billing_addresses_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blacklists`
--
ALTER TABLE `blacklists`
  ADD CONSTRAINT `blacklists_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blacklists_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bounce_handlers`
--
ALTER TABLE `bounce_handlers`
  ADD CONSTRAINT `bounce_handlers_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD CONSTRAINT `campaigns_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `campaigns_default_mail_list_id_foreign` FOREIGN KEY (`default_mail_list_id`) REFERENCES `mail_lists` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `campaigns_template_id_foreign` FOREIGN KEY (`template_id`) REFERENCES `templates` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `campaigns_tracking_domain_id_foreign` FOREIGN KEY (`tracking_domain_id`) REFERENCES `tracking_domains` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `campaigns_lists_segments`
--
ALTER TABLE `campaigns_lists_segments`
  ADD CONSTRAINT `cls_campaign_id_fk` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cls_mail_list_id_fk` FOREIGN KEY (`mail_list_id`) REFERENCES `mail_lists` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cls_segment_id_fk` FOREIGN KEY (`segment_id`) REFERENCES `segments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `campaign_links`
--
ALTER TABLE `campaign_links`
  ADD CONSTRAINT `campaign_links_campaign_id_foreign` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `click_logs`
--
ALTER TABLE `click_logs`
  ADD CONSTRAINT `click_logs_message_id_foreign` FOREIGN KEY (`message_id`) REFERENCES `tracking_logs` (`message_id`) ON DELETE CASCADE;

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `currencies`
--
ALTER TABLE `currencies`
  ADD CONSTRAINT `currencies_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `customers_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`),
  ADD CONSTRAINT `customers_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);

--
-- Constraints for table `customer_groups`
--
ALTER TABLE `customer_groups`
  ADD CONSTRAINT `customer_groups_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `delivery_attempts`
--
ALTER TABLE `delivery_attempts`
  ADD CONSTRAINT `delivery_attempts_auto_trigger_id_foreign` FOREIGN KEY (`auto_trigger_id`) REFERENCES `auto_triggers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `delivery_attempts_email_id_foreign` FOREIGN KEY (`email_id`) REFERENCES `emails` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `delivery_attempts_subscriber_id_foreign` FOREIGN KEY (`subscriber_id`) REFERENCES `subscribers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `emails`
--
ALTER TABLE `emails`
  ADD CONSTRAINT `emails_automation2_id_foreign` FOREIGN KEY (`automation2_id`) REFERENCES `automation2s` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `emails_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `emails_template_id_foreign` FOREIGN KEY (`template_id`) REFERENCES `templates` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `emails_tracking_domain_id_foreign` FOREIGN KEY (`tracking_domain_id`) REFERENCES `tracking_domains` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `email_links`
--
ALTER TABLE `email_links`
  ADD CONSTRAINT `email_links_email_id_foreign` FOREIGN KEY (`email_id`) REFERENCES `emails` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `email_verifications`
--
ALTER TABLE `email_verifications`
  ADD CONSTRAINT `email_verifications_subscriber_id_foreign` FOREIGN KEY (`subscriber_id`) REFERENCES `subscribers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ev_email_verification_server_id_fk` FOREIGN KEY (`email_verification_server_id`) REFERENCES `email_verification_servers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `email_verification_servers`
--
ALTER TABLE `email_verification_servers`
  ADD CONSTRAINT `evs_admin_id_fk` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `evs_customer_id_fk` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `feedback_loop_handlers`
--
ALTER TABLE `feedback_loop_handlers`
  ADD CONSTRAINT `feedback_loop_handlers_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fields`
--
ALTER TABLE `fields`
  ADD CONSTRAINT `fields_mail_list_id_foreign` FOREIGN KEY (`mail_list_id`) REFERENCES `mail_lists` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `field_options`
--
ALTER TABLE `field_options`
  ADD CONSTRAINT `field_options_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `fields` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoices_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD CONSTRAINT `invoice_items_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `mail_lists`
--
ALTER TABLE `mail_lists`
  ADD CONSTRAINT `mail_lists_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `mail_lists_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `mail_lists_sending_servers`
--
ALTER TABLE `mail_lists_sending_servers`
  ADD CONSTRAINT `mlss_mail_list_id_fk` FOREIGN KEY (`mail_list_id`) REFERENCES `mail_lists` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `mlss_sending_server_id_fk` FOREIGN KEY (`sending_server_id`) REFERENCES `sending_servers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `open_logs`
--
ALTER TABLE `open_logs`
  ADD CONSTRAINT `open_logs_message_id_foreign` FOREIGN KEY (`message_id`) REFERENCES `tracking_logs` (`message_id`) ON DELETE CASCADE;

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_layout_id_foreign` FOREIGN KEY (`layout_id`) REFERENCES `layouts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pages_mail_list_id_foreign` FOREIGN KEY (`mail_list_id`) REFERENCES `mail_lists` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `plans`
--
ALTER TABLE `plans`
  ADD CONSTRAINT `plans_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `plans_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `plans_email_verification_servers`
--
ALTER TABLE `plans_email_verification_servers`
  ADD CONSTRAINT `pevs_plan_id_fk` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pevs_server_id_fk` FOREIGN KEY (`server_id`) REFERENCES `email_verification_servers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `plans_sending_servers`
--
ALTER TABLE `plans_sending_servers`
  ADD CONSTRAINT `plans_sending_servers_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pss_sending_server_id_fk` FOREIGN KEY (`sending_server_id`) REFERENCES `sending_servers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_source_id_foreign` FOREIGN KEY (`source_id`) REFERENCES `sources` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `segments`
--
ALTER TABLE `segments`
  ADD CONSTRAINT `segments_mail_list_id_foreign` FOREIGN KEY (`mail_list_id`) REFERENCES `mail_lists` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `segment_conditions`
--
ALTER TABLE `segment_conditions`
  ADD CONSTRAINT `segment_conditions_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `segment_conditions_segment_id_foreign` FOREIGN KEY (`segment_id`) REFERENCES `segments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `senders`
--
ALTER TABLE `senders`
  ADD CONSTRAINT `senders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `senders_sending_server_id_foreign` FOREIGN KEY (`sending_server_id`) REFERENCES `sending_servers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sending_domains`
--
ALTER TABLE `sending_domains`
  ADD CONSTRAINT `sending_domains_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sending_domains_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sending_domains_sending_server_id_foreign` FOREIGN KEY (`sending_server_id`) REFERENCES `sending_servers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sending_servers`
--
ALTER TABLE `sending_servers`
  ADD CONSTRAINT `sending_servers_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ss_bounce_handler_id_fk` FOREIGN KEY (`bounce_handler_id`) REFERENCES `bounce_handlers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ss_customer_id_fk` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ss_feedback_loop_handler_id_fk` FOREIGN KEY (`feedback_loop_handler_id`) REFERENCES `feedback_loop_handlers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sources`
--
ALTER TABLE `sources`
  ADD CONSTRAINT `sources_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sources_mail_list_id_foreign` FOREIGN KEY (`mail_list_id`) REFERENCES `mail_lists` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD CONSTRAINT `subscribers_mail_list_id_foreign` FOREIGN KEY (`mail_list_id`) REFERENCES `mail_lists` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscriber_fields`
--
ALTER TABLE `subscriber_fields`
  ADD CONSTRAINT `subscriber_fields_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscriber_fields_subscriber_id_foreign` FOREIGN KEY (`subscriber_id`) REFERENCES `subscribers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `subscriptions_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscriptions_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscription_logs`
--
ALTER TABLE `subscription_logs`
  ADD CONSTRAINT `sl_subscription_id_fk` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_accounts`
--
ALTER TABLE `sub_accounts`
  ADD CONSTRAINT `sub_accounts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sub_accounts_sending_server_id_foreign` FOREIGN KEY (`sending_server_id`) REFERENCES `sending_servers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `templates`
--
ALTER TABLE `templates`
  ADD CONSTRAINT `templates_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `templates_categories`
--
ALTER TABLE `templates_categories`
  ADD CONSTRAINT `templates_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `template_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `templates_categories_template_id_foreign` FOREIGN KEY (`template_id`) REFERENCES `templates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `timelines`
--
ALTER TABLE `timelines`
  ADD CONSTRAINT `timelines_auto_trigger_id_foreign` FOREIGN KEY (`auto_trigger_id`) REFERENCES `auto_triggers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `timelines_automation2_id_foreign` FOREIGN KEY (`automation2_id`) REFERENCES `automation2s` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `timelines_subscriber_id_foreign` FOREIGN KEY (`subscriber_id`) REFERENCES `subscribers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tracking_domains`
--
ALTER TABLE `tracking_domains`
  ADD CONSTRAINT `tracking_domains_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tracking_logs`
--
ALTER TABLE `tracking_logs`
  ADD CONSTRAINT `tracking_logs_auto_trigger_id_foreign` FOREIGN KEY (`auto_trigger_id`) REFERENCES `auto_triggers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tracking_logs_campaign_id_foreign` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tracking_logs_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tracking_logs_email_id_foreign` FOREIGN KEY (`email_id`) REFERENCES `emails` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tracking_logs_sending_server_id_foreign` FOREIGN KEY (`sending_server_id`) REFERENCES `sending_servers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tracking_logs_sub_account_id_foreign` FOREIGN KEY (`sub_account_id`) REFERENCES `sub_accounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tracking_logs_subscriber_id_foreign` FOREIGN KEY (`subscriber_id`) REFERENCES `subscribers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `unsubscribe_logs`
--
ALTER TABLE `unsubscribe_logs`
  ADD CONSTRAINT `unsubscribe_logs_subscriber_id_foreign` FOREIGN KEY (`subscriber_id`) REFERENCES `subscribers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `users_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `user_activations`
--
ALTER TABLE `user_activations`
  ADD CONSTRAINT `user_activations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
