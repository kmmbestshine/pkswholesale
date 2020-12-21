-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2020 at 08:33 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory070`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `brand_name`, `created_at`, `updated_at`) VALUES
(1, 'kmm TV', 'TCL', '2020-12-11 11:42:44', '2020-12-11 11:42:44');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `article` int(11) DEFAULT NULL,
  `nif` int(11) DEFAULT NULL,
  `nis` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `client_name`, `phone`, `address`, `description`, `rc`, `article`, `nif`, `nis`, `created_at`, `updated_at`) VALUES
(1, 'Anonymous', '0000000000', 'Mila', 'Nothing', '1000000', 1000000, 1000000, 1000000, '2020-12-11 11:36:51', '2020-12-11 11:36:51'),
(2, 'kmm customer', '9003152804', 'suraikayur', 'TV', '12345', 123, 1233, 11233, '2020-12-11 11:46:45', '2020-12-11 11:46:45');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `store_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_day` date NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `investment_capital` double NOT NULL,
  `rc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `article` int(11) NOT NULL,
  `nif` int(11) NOT NULL,
  `nis` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `store_name`, `activity`, `phone`, `address`, `start_day`, `image`, `investment_capital`, `rc`, `article`, `nif`, `nis`, `created_at`, `updated_at`) VALUES
(1, 'Bestshine Electronic Store', 'Bestshine Digital Shop', '9003152804', '1/141, kambur,kodavasal-tk, thiruvarur-dt', '2020-12-12', 'gMRsYQogW1oz1teXfyxmxjOUfN2TAC1abK4csWEj.png', 1000000, '1000000', 1000000, 1000000, 1000000, '2020-12-11 11:36:51', '2020-12-12 00:29:50');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_01_23_160015_laratrust_setup_tables', 2),
(3, '2019_02_06_130106_create_categories_table', 2),
(4, '2019_02_09_123449_create_products_table', 2),
(5, '2019_02_20_145357_create_clients_table', 2),
(6, '2019_02_21_131740_create_providers_table', 2),
(7, '2019_03_17_115012_create_sales_table', 2),
(8, '2019_03_17_130734_product_sale', 2),
(9, '2019_04_20_115426_create_purchases_table', 2),
(10, '2019_04_20_120300_product_purchase', 2),
(11, '2019_05_23_102749_create_spendings_table', 2),
(12, '2019_06_17_111712_create_general_settings_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'create_users', 'Create Users', 'Create Users', '2020-12-11 11:36:47', '2020-12-11 11:36:47'),
(2, 'read_users', 'Read Users', 'Read Users', '2020-12-11 11:36:47', '2020-12-11 11:36:47'),
(3, 'update_users', 'Update Users', 'Update Users', '2020-12-11 11:36:47', '2020-12-11 11:36:47'),
(4, 'delete_users', 'Delete Users', 'Delete Users', '2020-12-11 11:36:47', '2020-12-11 11:36:47'),
(5, 'create_categories', 'Create Categories', 'Create Categories', '2020-12-11 11:36:47', '2020-12-11 11:36:47'),
(6, 'read_categories', 'Read Categories', 'Read Categories', '2020-12-11 11:36:47', '2020-12-11 11:36:47'),
(7, 'update_categories', 'Update Categories', 'Update Categories', '2020-12-11 11:36:47', '2020-12-11 11:36:47'),
(8, 'delete_categories', 'Delete Categories', 'Delete Categories', '2020-12-11 11:36:47', '2020-12-11 11:36:47'),
(9, 'create_products', 'Create Products', 'Create Products', '2020-12-11 11:36:47', '2020-12-11 11:36:47'),
(10, 'read_products', 'Read Products', 'Read Products', '2020-12-11 11:36:47', '2020-12-11 11:36:47'),
(11, 'update_products', 'Update Products', 'Update Products', '2020-12-11 11:36:47', '2020-12-11 11:36:47'),
(12, 'delete_products', 'Delete Products', 'Delete Products', '2020-12-11 11:36:47', '2020-12-11 11:36:47'),
(13, 'create_sales', 'Create Sales', 'Create Sales', '2020-12-11 11:36:47', '2020-12-11 11:36:47'),
(14, 'read_sales', 'Read Sales', 'Read Sales', '2020-12-11 11:36:47', '2020-12-11 11:36:47'),
(15, 'update_sales', 'Update Sales', 'Update Sales', '2020-12-11 11:36:47', '2020-12-11 11:36:47'),
(16, 'delete_sales', 'Delete Sales', 'Delete Sales', '2020-12-11 11:36:48', '2020-12-11 11:36:48'),
(17, 'create_purchases', 'Create Purchases', 'Create Purchases', '2020-12-11 11:36:48', '2020-12-11 11:36:48'),
(18, 'read_purchases', 'Read Purchases', 'Read Purchases', '2020-12-11 11:36:48', '2020-12-11 11:36:48'),
(19, 'update_purchases', 'Update Purchases', 'Update Purchases', '2020-12-11 11:36:48', '2020-12-11 11:36:48'),
(20, 'delete_purchases', 'Delete Purchases', 'Delete Purchases', '2020-12-11 11:36:48', '2020-12-11 11:36:48'),
(21, 'create_clients', 'Create Clients', 'Create Clients', '2020-12-11 11:36:48', '2020-12-11 11:36:48'),
(22, 'read_clients', 'Read Clients', 'Read Clients', '2020-12-11 11:36:48', '2020-12-11 11:36:48'),
(23, 'update_clients', 'Update Clients', 'Update Clients', '2020-12-11 11:36:48', '2020-12-11 11:36:48'),
(24, 'delete_clients', 'Delete Clients', 'Delete Clients', '2020-12-11 11:36:48', '2020-12-11 11:36:48'),
(25, 'create_providers', 'Create Providers', 'Create Providers', '2020-12-11 11:36:48', '2020-12-11 11:36:48'),
(26, 'read_providers', 'Read Providers', 'Read Providers', '2020-12-11 11:36:48', '2020-12-11 11:36:48'),
(27, 'update_providers', 'Update Providers', 'Update Providers', '2020-12-11 11:36:48', '2020-12-11 11:36:48'),
(28, 'delete_providers', 'Delete Providers', 'Delete Providers', '2020-12-11 11:36:48', '2020-12-11 11:36:48'),
(29, 'create_spendings', 'Create Spendings', 'Create Spendings', '2020-12-11 11:36:48', '2020-12-11 11:36:48'),
(30, 'read_spendings', 'Read Spendings', 'Read Spendings', '2020-12-11 11:36:48', '2020-12-11 11:36:48'),
(31, 'update_spendings', 'Update Spendings', 'Update Spendings', '2020-12-11 11:36:48', '2020-12-11 11:36:48'),
(32, 'delete_spendings', 'Delete Spendings', 'Delete Spendings', '2020-12-11 11:36:48', '2020-12-11 11:36:48'),
(33, 'create_moneybox', 'Create Moneybox', 'Create Moneybox', '2020-12-11 11:36:48', '2020-12-11 11:36:48'),
(34, 'read_moneybox', 'Read Moneybox', 'Read Moneybox', '2020-12-11 11:36:48', '2020-12-11 11:36:48'),
(35, 'update_moneybox', 'Update Moneybox', 'Update Moneybox', '2020-12-11 11:36:48', '2020-12-11 11:36:48'),
(36, 'delete_moneybox', 'Delete Moneybox', 'Delete Moneybox', '2020-12-11 11:36:49', '2020-12-11 11:36:49'),
(37, 'create_generalsetting', 'Create Generalsetting', 'Create Generalsetting', '2020-12-11 11:36:49', '2020-12-11 11:36:49'),
(38, 'read_generalsetting', 'Read Generalsetting', 'Read Generalsetting', '2020-12-11 11:36:49', '2020-12-11 11:36:49'),
(39, 'update_generalsetting', 'Update Generalsetting', 'Update Generalsetting', '2020-12-11 11:36:49', '2020-12-11 11:36:49'),
(40, 'delete_generalsetting', 'Delete Generalsetting', 'Delete Generalsetting', '2020-12-11 11:36:49', '2020-12-11 11:36:49');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_user`
--

INSERT INTO `permission_user` (`permission_id`, `user_id`, `user_type`) VALUES
(2, 2, 'App\\User'),
(7, 2, 'App\\User'),
(11, 2, 'App\\User'),
(23, 2, 'App\\User'),
(27, 2, 'App\\User'),
(13, 2, 'App\\User'),
(19, 2, 'App\\User'),
(30, 2, 'App\\User'),
(34, 2, 'App\\User'),
(13, 3, 'App\\User'),
(14, 3, 'App\\User'),
(15, 3, 'App\\User');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `codebar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'product.png',
  `purchase_price` double(8,2) NOT NULL,
  `sale_price` double(8,2) NOT NULL,
  `min_stock` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `codebar`, `product_name`, `description`, `image`, `purchase_price`, `sale_price`, `min_stock`, `stock`, `created_at`, `updated_at`) VALUES
(1, 1, 'L', 'LCD TV', '32 inch tv', 'uVyIT51gi9MaxVk8pf0dzaCi6OM9yq4iXLdgd9iM.jpeg', 9000.00, 10000.00, 1, 10, '2020-12-11 11:45:17', '2020-12-12 00:38:15'),
(2, 1, '000000000002', 'LCD TV small', NULL, 'PDHaphJoWNSVn2Xsm7G22bHEjprAzNsjnkWhb8s1.jpeg', 5000.00, 6000.00, 1, 27, '2020-12-11 11:51:21', '2020-12-12 00:20:44'),
(3, 1, '000000000003', 'mobile', 'samsung', 'GM33LtWKDN5i3ZlInARcg7t251GXUvM88PUuLpe9.jpeg', 10500.00, 12500.00, 2, 8, '2020-12-12 00:12:01', '2020-12-12 00:49:13');

-- --------------------------------------------------------

--
-- Table structure for table `product_purchase`
--

CREATE TABLE `product_purchase` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_purchase`
--

INSERT INTO `product_purchase` (`product_id`, `quantity`, `purchase_id`) VALUES
(2, '20', 1),
(2, '10', 2),
(1, '10', 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_sale`
--

CREATE TABLE `product_sale` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sale`
--

INSERT INTO `product_sale` (`product_id`, `quantity`, `sale_id`) VALUES
(2, '2', 2),
(1, '2', 3),
(1, '7', 4),
(1, '1', 5),
(3, '1', 6),
(2, '1', 7),
(3, '1', 9);

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

CREATE TABLE `providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `article` int(11) DEFAULT NULL,
  `nif` int(11) DEFAULT NULL,
  `nis` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `providers`
--

INSERT INTO `providers` (`id`, `provider_name`, `phone`, `address`, `description`, `rc`, `article`, `nif`, `nis`, `created_at`, `updated_at`) VALUES
(1, 'Anonymous', '0000000000', 'Mila', 'Nothing', '1000000', 1000000, 1000000, 1000000, '2020-12-11 11:36:51', '2020-12-11 11:36:51'),
(2, 'kmm supplier', '9003152805', 'ffffffff', 'hhhhhhhhhhhh', 'dddd', 2222, 11111, 32, '2020-12-11 12:05:10', '2020-12-11 12:05:10');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `number_purchase` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` double NOT NULL,
  `discount` double NOT NULL,
  `total_amount` double NOT NULL,
  `status` enum('paid','nopaid','debt') COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid` double NOT NULL,
  `due` double NOT NULL,
  `provider_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `number_purchase`, `total`, `discount`, `total_amount`, `status`, `paid`, `due`, `provider_id`, `created_at`, `updated_at`) VALUES
(1, 'PN : 1 / 2020', 100000, 0, 100000, 'nopaid', 100000, 0, 1, '2020-12-11 11:52:04', '2020-12-11 11:52:04'),
(2, 'PN : 2 / 2020', 50000, 0, 50000, 'paid', 50000, 0, 2, '2020-12-11 12:09:42', '2020-12-11 12:09:42'),
(3, 'PN : 3 / 2020', 90000, 0, 90000, 'debt', 9000, 81000, 1, '2020-12-12 00:38:14', '2020-12-12 00:38:14');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'Super Admin', 'Super Admin', '2020-12-11 11:36:47', '2020-12-11 11:36:47'),
(2, 'employer', 'Employer', 'Employer', '2020-12-11 11:36:50', '2020-12-11 11:36:50');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(1, 1, 'App\\User'),
(2, 2, 'App\\User'),
(2, 3, 'App\\User');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `number_sale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` double NOT NULL,
  `discount` double NOT NULL,
  `total_amount` double NOT NULL,
  `status` enum('paid','nopaid','debt') COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid` double NOT NULL,
  `due` double NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `number_sale`, `total`, `discount`, `total_amount`, `status`, `paid`, `due`, `client_id`, `created_at`, `updated_at`) VALUES
(2, 'SN : 2 / 2020', 12000, 0, 12000, 'debt', 12000, 0, 1, '2020-12-11 12:02:35', '2020-12-11 12:02:35'),
(3, 'SN : 1 / 2020', 20000, 0, 20000, 'paid', 20000, 0, 1, '2020-12-11 12:22:17', '2020-12-11 12:22:17'),
(4, 'SN : 2 / 2020', 70000, 0, 70000, 'paid', 70000, 0, 1, '2020-12-11 12:23:58', '2020-12-11 12:23:58'),
(5, 'SN : 3 / 2020', 10000, 0, 10000, 'paid', 10000, 0, 1, '2020-12-11 12:24:26', '2020-12-11 12:24:26'),
(6, 'SN : 4 / 2020', 12500, 0, 12500, 'paid', 12500, 0, 1, '2020-12-12 00:15:25', '2020-12-12 00:15:25'),
(7, 'SN : 5 / 2020', 6000, 0, 6000, 'debt', 6000, 0, 1, '2020-12-12 00:20:44', '2020-12-12 00:20:44'),
(9, 'SN : 6 / 2020', 12500, 0, 12500, 'debt', 12000, 500, 1, '2020-12-12 00:49:13', '2020-12-12 00:49:13');

-- --------------------------------------------------------

--
-- Table structure for table `spendings`
--

CREATE TABLE `spendings` (
  `id` int(10) UNSIGNED NOT NULL,
  `spending_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spending_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spending_price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spendings`
--

INSERT INTO `spendings` (`id`, `spending_name`, `spending_description`, `spending_price`, `created_at`, `updated_at`) VALUES
(1, 'stationary', 'paper', 500, '2020-12-11 11:54:13', '2020-12-11 11:54:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `image`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'super', 'admin', 'kmmadmin@app.com', 'admin.png', NULL, '$2y$10$T/AO49e7BmIC9aUG/33mAOdy9yDm/SUGUZC5zU.3Gtj4Lvvf.27My', 'KX1WzXyceKy9DSXeIC8ZCj1EyAhOb3cPHMU7QR31mvbpkR5if1hjCAikDx2R', '2020-12-11 11:36:51', '2020-12-11 11:36:51'),
(2, 'kmm kumar', 'kmm', 'kmm@gmail.com', 'v2ZFbNkjmT13BHYvykeKSxQ1GQmXN51f6eGr8brK.png', NULL, '$2y$10$fHuLJW1fhPHLr2zXhDElx.bUA/paKAGwPIbu99gju1p7ef9DNFCE6', NULL, '2020-12-11 11:58:59', '2020-12-11 11:58:59'),
(3, 'kmm 1kumar', 'kmm1', 'kmm1@gmail.com', 'sXz5jNIMJLBdR2Y01PoKb0Kv6M1O0toqx0ZRaWhH.jpeg', NULL, '$2y$10$CwdDvqBjgMXxoST9DFVKkOW0qv0uUjRCtzRbut2RQZLNuCl.3qAly', NULL, '2020-12-12 00:18:54', '2020-12-12 00:18:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
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
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_purchase`
--
ALTER TABLE `product_purchase`
  ADD KEY `product_purchase_product_id_foreign` (`product_id`),
  ADD KEY `product_purchase_purchase_id_foreign` (`purchase_id`);

--
-- Indexes for table `product_sale`
--
ALTER TABLE `product_sale`
  ADD KEY `product_sale_product_id_foreign` (`product_id`),
  ADD KEY `product_sale_sale_id_foreign` (`sale_id`);

--
-- Indexes for table `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_provider_id_foreign` (`provider_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_client_id_foreign` (`client_id`);

--
-- Indexes for table `spendings`
--
ALTER TABLE `spendings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `providers`
--
ALTER TABLE `providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `spendings`
--
ALTER TABLE `spendings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_purchase`
--
ALTER TABLE `product_purchase`
  ADD CONSTRAINT `product_purchase_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_purchase_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_sale`
--
ALTER TABLE `product_sale`
  ADD CONSTRAINT `product_sale_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_sale_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
