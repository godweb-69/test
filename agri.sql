-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 17, 2026 at 04:09 PM
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
-- Database: `agri`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'testing.web017@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `billing_address`
--

DROP TABLE IF EXISTS `billing_address`;
CREATE TABLE IF NOT EXISTS `billing_address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL,
  `f_name` varchar(100) NOT NULL,
  `l_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `company` varchar(100) NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `city` varchar(100) NOT NULL,
  `postcode` varchar(7) NOT NULL,
  `country` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `billing_address`
--

INSERT INTO `billing_address` (`id`, `user_id`, `f_name`, `l_name`, `email`, `phone`, `company`, `address1`, `address2`, `city`, `postcode`, `country`, `state`, `created_at`, `updated_at`) VALUES
(1, '1', 'Porter', 'Joseph', 'testing.web017@gmail.com', '6833586623', 'Acosta and Beck Traders', '67 North Fabien Road', 'Aut velit harum', 'Laudantium', '624896', 'Tanzania', 'Cheshire', '2026-02-03 04:56:55', '2026-02-06 08:57:13'),
(4, '2', 'Anand', 'Baid', 'anand@webgrity.com', '9830956373', '', '1st Floor, 19 Lake Temple Road', 'Besides Menoka Cinema', 'Kolkata', '700029', 'India', 'Cardiff', '2026-02-04 11:09:19', '2026-02-05 13:38:15'),
(5, '1', 'Nora', 'Curry', 'cafyx@mailinator.com', '9322265726', 'Acosta and Beck Traders', '67 North Fabien Road', 'Aut velit harum', 'Laudantium', '624896', 'Tanzania', 'Cheshire', '2026-02-04 11:23:39', '2026-02-06 08:57:13'),
(6, '1', 'Cassandra', 'Crosby', 'honixeveve@mailinator.com', '9628423484', 'Acosta and Beck Traders', '67 North Fabien Road', 'Aut velit harum', 'Laudantium', '624896', 'Tanzania', 'Cheshire', '2026-02-09 04:21:27', '2026-02-09 11:31:18');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `u_id` varchar(100) NOT NULL,
  `p_id` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL DEFAULT '1',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `u_id`, `p_id`, `quantity`, `time`) VALUES
(47, '1', '7', '1', '2026-02-10 11:46:29'),
(25, '2', '2', '1', '2026-02-03 07:31:59'),
(26, '2', '16', '1', '2026-02-03 07:31:59');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `order_number` int NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `order_number`, `image`, `status`) VALUES
(1, 'Animal Dosing', 1, '1768976270.png', 'ACTIVE'),
(2, 'Cattle', 0, '1768977136.png', 'ACTIVE'),
(3, 'Sheep', 2, '1768977160.png', 'ACTIVE'),
(4, 'Horses', 0, '1768987425.png', 'ACTIVE'),
(5, 'Fencing', 2, '1768979110.png', 'ACTIVE'),
(6, 'Hardware', 1, '1768989323.png', 'ACTIVE'),
(7, 'Clothing  & Footwear', 0, '1768979417.png', 'ACTIVE'),
(8, 'Pets', 3, '1768980002.png', 'ACTIVE'),
(13, 'Anand', 0, '1769764224.png', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
CREATE TABLE IF NOT EXISTS `discount` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `valid_from` date NOT NULL,
  `valid_till` date NOT NULL,
  `type` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`id`, `name`, `valid_from`, `valid_till`, `type`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(3, 'test20', '2026-02-03', '0000-00-00', 'PERCENTAGE', '20', 'ACTIVE', '2026-02-03 10:51:38', '2026-02-03 11:54:19'),
(2, 'demo', '2026-02-03', '2026-02-28', 'FLAT', '15', 'ACTIVE', '2026-02-03 10:25:01', '2026-02-04 05:16:57'),
(4, 'exp25', '2026-02-04', '2026-02-03', 'PERCENTAGE', '25', 'ACTIVE', '2026-02-04 04:20:28', '0000-00-00 00:00:00'),
(5, 'agri', '2026-02-04', '0000-00-00', 'PERCENTAGE', '12', 'ACTIVE', '2026-02-04 05:30:13', '0000-00-00 00:00:00'),
(6, 'not', '2026-02-05', '2026-02-28', 'PERCENTAGE', '10', 'ACTIVE', '2026-02-04 07:41:30', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

DROP TABLE IF EXISTS `order_product`;
CREATE TABLE IF NOT EXISTS `order_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` varchar(100) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `quantity`, `price`, `created_at`) VALUES
(1, '1', '10', '1', '52.00', '2026-02-04 12:13:44'),
(2, '1', '7', '1', '43.68', '2026-02-04 12:13:44'),
(3, '1', '12', '2', '23.00', '2026-02-04 12:13:44'),
(10, '7', '14', '2', '234.00', '2026-02-09 04:43:39'),
(7, '4', '2', '1', '76.00', '2026-02-06 13:18:06'),
(9, '6', '11', '1', '96.00', '2026-02-09 04:21:46'),
(11, '7', '10', '1', '52.00', '2026-02-09 04:43:39');

-- --------------------------------------------------------

--
-- Table structure for table `order_table`
--

DROP TABLE IF EXISTS `order_table`;
CREATE TABLE IF NOT EXISTS `order_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL,
  `random_id` varchar(100) NOT NULL,
  `order_status` enum('processing','shiped','delivered') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'processing',
  `payment_status` enum('processing','paid','refunded') NOT NULL DEFAULT 'processing',
  `payment_mode` varchar(100) NOT NULL,
  `billing_address_id` varchar(100) NOT NULL,
  `shipping_address_id` varchar(100) NOT NULL,
  `total_price` varchar(100) NOT NULL,
  `eco_tax` varchar(100) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `vat` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `order_table`
--

INSERT INTO `order_table` (`id`, `user_id`, `random_id`, `order_status`, `payment_status`, `payment_mode`, `billing_address_id`, `shipping_address_id`, `total_price`, `eco_tax`, `discount`, `vat`, `created_at`, `updated_at`) VALUES
(1, '1', '9999', 'delivered', 'paid', 'paypal', '5', '5', '178.02', '8', '0', '28.34', '2026-02-04 12:13:44', '2026-02-09 04:23:59'),
(4, '1', '4998', 'shiped', 'processing', 'card', '1', '5', '93.20', '2', '0', '15.20', '2026-02-06 13:18:06', '2026-02-06 13:43:41'),
(7, '1', '9422', 'processing', 'processing', 'paypal', '6', '6', '505.20', '6', '104.00', '83.20', '2026-02-09 04:43:39', '0000-00-00 00:00:00'),
(6, '1', '9927', 'processing', 'processing', 'card', '6', '1', '103.38', '2', '11.52', '16.90', '2026-02-09 04:21:46', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `sub_category` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL,
  `price` varchar(100) NOT NULL,
  `feature_image` varchar(255) NOT NULL,
  `availability` varchar(100) NOT NULL,
  `gallery_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `special` varchar(100) DEFAULT NULL,
  `feature` varchar(100) DEFAULT NULL,
  `is_delete` varchar(100) NOT NULL DEFAULT 'false',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `sub_category`, `description`, `price`, `feature_image`, `availability`, `gallery_image`, `special`, `feature`, `is_delete`, `time`, `update_time`) VALUES
(2, 'Castle Suit 3r42', 'Animal Dosing', 'Horses', 'Aenean id mollis elit. Maecenas', '76.00', '1769693323.jpg', 'In Stock', '1769693328_anubhav-arora-XWsbsx0G_yQ-unsplash.jpg,1769693332_zoozanagheh-studio-By5IFqgKgPk-unsplash (1).jpg,1769693337_behnam-norouzi-F4rWoM3cYjI-unsplash.jpg', 'special', 'feature', 'false', '2026-01-30 12:59:39', NULL),
(5, 'Aenean id mollis elit Maecenas', 'Sheep', 'Lambing', 'In hac habitasse platea dictumst. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce eget nisl et arcu mollis pellentesque. Aliquam a arcu porttitor, tempus nisi sit amet, viverra est. Integer et venenatis lorem. Praesent aliquet eros ante', '54.00', '1769693172.jpg', 'In Stock', '1769693178_gavin-allanwood-ndpX28miBtE-unsplash.jpg', 'special', 'false', 'false', '2026-01-30 12:59:39', NULL),
(6, 'Castle Suit 7455g', 'Clothing  & Footwear', 'Castle Suit', 'Nullam volutpat eleifend elit, et convallis lacus tristique ac. Quisque ex justo, gravida eget purus id, tincidunt dignissim elit. Nulla pharetra dictum urna', '132.40', '1769580356.jpg', 'In Stock', '', 'false', 'feature', 'true', '2026-01-30 12:59:39', NULL),
(7, 'Curabitur eu facilisis', 'Sheep', 'Grooming', 'vulputate eu erat. Cras lorem augue, egestas eget congue sit amet, bibendum id eros. Vestibulum varius mi id diam vulputate, lacinia imperdiet turpis malesuada', '43.68', '1769693369.jpg', 'In Stock', '', 'special', 'false', 'false', '2026-01-30 12:59:39', NULL),
(8, 'Cras vitae quam', 'Sheep', 'Grooming', 'Sed consectetur commodo odio, nec vehicula augue bibendum ac. Cras ut rhoncus leo. Nunc in aliquam nibh, pharetra malesuada quam', '64.00', '1769693390.jpg', 'In Stock', '1769693393_luis-felipe-lins-8T-LD_wxlSo-unsplash.jpg', 'false', 'feature', 'false', '2026-01-30 12:59:39', NULL),
(9, 'Sed mattis condimentum', 'Clothing  & Footwear', 'Castle Suit', 'Maecenas luctus velit urna, a elementum velit luctus eget. Maecenas ut nisi sed nunc condimentum condimentum quis vitae massa. Nulla vitae turpis odio. In imperdiet pulvinar nulla, vitae pellentesque augue ornare at.', '234.00', '1769693418.jpg', 'In Stock', '1769693424_dushawn-jovic-jsTGxmqfwM4-unsplash.jpg,1769693427_arun-krishnavajjala-tivTsgIDjEM-unsplash.jpg', 'special', 'false', 'false', '2026-01-30 12:59:39', NULL),
(10, 'Sed condimentum', 'Sheep', 'Handling', 'Maecenas luctus velit urna, a elementum velit luctus eget. Maecenas ut nisi sed nunc condimentum condimentum quis vitae massa. Nulla vitae turpis odio.', '52.00', '1769693453.jpg', 'In Stock', '1769693457_giorgio-trovato-K62u25Jk6vo-unsplash.jpg', 'special', 'false', 'false', '2026-01-30 12:59:39', '2026-02-04 07:47:47'),
(11, 'Curabitur vitae mattis metus', 'Hardware', 'Keyboard', 'Quisque suscipit condimentum scelerisque. Etiam tempus, quam scelerisque tempor hendrerit, orci dui posuere metus, ut iaculis metus massa ac justo.', '96.00', '1769693497.jpg', 'In Stock', '1769693500_hannes-kottner-KAS8bV1vdxg-unsplash.jpg,1769693502_hannes-kottner-ZN7YzzMgWGw-unsplash.jpg', 'false', 'false', 'false', '2026-01-30 12:59:39', NULL),
(12, 'Nam eu varius neque', 'Sheep', 'Hoofcare', 'Quisque suscipit condimentum scelerisque. Etiam tempus, quam scelerisque tempor hendrerit, orci dui posuere metus, ut iaculis metus massa ac justo. Maecenas ornare diam nec ligula ullamcorper sodales. Nullam vitae cursus dolor, quis euismod nisl. Morbi venenatis dapibus est', '23.00', '1769693536.jpg', 'In Stock', '1769693539_aditya-sethia-phBFn96I3xk-unsplash.jpg,1769693543_pavlo-talpa-RVLy3mUD7Kw-unsplash.jpg', 'false', 'feature', 'false', '2026-01-30 12:59:39', NULL),
(13, 'Sed mauris odio', 'Sheep', 'Grooming', 'Aenean ultricies risus vitae nisi facilisis aliquam. Maecenas commodo est vitae ipsum lobortis iaculis. Curabitur sapien leo, tristique sit amet quam nec', '31.00', '1769693569.jpg', 'In Stock', '1769693570_richard-71bB7u-MBWk-unsplash.jpg,1769693574_aditya-sethia-_8dzM1dtvB4-unsplash.jpg', 'false', 'feature', 'false', '2026-01-30 12:59:39', NULL),
(14, 'Donec vulputate', 'Anand', 'Sub-Anand', 'Maecenas faucibus ex in mattis fringilla. Proin venenatis odio quis justo blandit, non rhoncus nisl ullamcorper. Sed porttitor augue ligula, eu pulvinar metus placerat vel.', '234.00', '1769765366.jpg', 'In Stock', '1769765369_alexander-andrews-BX4Q0gojWAs-unsplash.jpg,1769765375_clement-remond-BB2G2cfdXKE-unsplash.jpg,1769765379_marc-olivier-jodoin-Rs41B7YNf9A-unsplash.jpg,1769765385_martin-sanchez-fnysC6apsOc-unsplash.jpg', 'special', 'false', 'false', '2026-01-30 12:59:39', NULL),
(15, 'Nullam volutpat', 'Anand', 'Sub-Anand', 'Donec at auctor dui. In hac habitasse platea dictumst. Fusce a orci sit amet dolor porta ultricies ac ut arcu. Phasellus fringilla sapien a felis ornare commodo dignissim at quam. Pellentesque id egestas massa. Donec convallis magna at consectetur bibendum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nunc pulvinar elit eu turpis finibus dignissim. Fusce vitae neque magna', '321.00', '1769774962.jpg', 'In Stock', '1769772170_geoffrey-gu-blTZdowrHXc-unsplash.jpg,1769774894_luca-merz-ep4z1m_mp_I-unsplash.jpg,1769774967_mathieu-deslauriers-l4HQri2g6JI-unsplash.jpg', 'special', 'false', 'false', '2026-01-30 12:59:39', NULL),
(16, 'Etiam elit est', 'Pets', 'Pet', 'Nullam volutpat pretium tellus a vehicula. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur euismod urna et dolor accumsan bibendum. Ut eget condimentum diam. Nam nec libero sed risus luctus semper non ut magna. Vivamus ornare porta eros et dignissim', '321.00', '1769770455.jpg', 'In Stock', '1769770461_jeffrey-eisen-Az5dv8YtSZ8-unsplash.jpg,1769770466_maximilian-brand-CYmRdQxnypM-unsplash.jpg,1769834706_luca-merz-ep4z1m_mp_I-unsplash.jpg,1769835215_dusan-veverkolog-OorjimDS9kA-unsplash.jpg', 'false', 'feature', 'false', '2026-01-30 12:59:39', '2026-01-31 04:53:41'),
(17, 'Product Anand', 'Anand', 'Sub-Anand', 'This avoids the worst failure mode: being stuck in a trade and not managing it because REST is flaky.This avoids the worst failure mode: being stuck in a trade and not managing it because REST is flaky.This avoids the worst failure mode: being stuck in a trade and not managing it because REST is flaky.This avoids the worst failure mode: being stuck in a trade and not managing it because REST is flaky.This avoids the worst failure mode: being stuck in a trade and not managing it because REST is flaky.', '100.00', '1769771106.jpg', 'In Stock', '1769770853_20251104_123432.jpg,1769770861_20251104_123456.jpg', 'false', 'feature', 'true', '2026-01-30 12:59:39', NULL),
(18, 'Product Anand', 'Anand', 'Sub-Anand', 'This avoids the worst failure mode: being stuck in a trade and not managing it because REST is flaky.This avoids the worst failure mode: being stuck in a trade and not managing it because REST is flaky.This avoids the worst failure mode: being stuck in a trade and not managing it because REST is flaky.This avoids the worst failure mode: being stuck in a trade and not managing it because REST is flaky.This avoids the worst failure mode: being stuck in a trade and not managing it because REST is flaky.', '100.00', '1769770863.jpg', 'In Stock', '1769770867_20251104_123425.jpg,1769770869_20251104_123432.jpg,1769770872_20251104_123438.jpg,1769770874_20251104_123442.jpg,1769770877_20251104_123456.jpg', 'false', 'feature', 'true', '2026-01-30 12:59:39', NULL),
(19, 'Product Anand', 'Anand', 'Sub-Anand', 'This avoids the worst failure mode: being stuck in a trade and not managing it because REST is flaky.This avoids the worst failure mode: being stuck in a trade and not managing it because REST is flaky.This avoids the worst failure mode: being stuck in a trade and not managing it because REST is flaky.This avoids the worst failure mode: being stuck in a trade and not managing it because REST is flaky.This avoids the worst failure mode: being stuck in a trade and not managing it because REST is flaky.', '100.00', '1769770880.jpg', 'In Stock', '1769770883_20251104_123425.jpg,1769770885_20251104_123432.jpg,1769770888_20251104_123438.jpg,1769770890_20251104_123442.jpg,1769770893_20251104_123456.jpg', 'false', 'feature', 'true', '2026-01-30 12:59:39', NULL),
(20, 'Product Anand', 'Anand', 'Sub-Anand', 'This avoids the worst failure mode: being stuck in a trade and not managing it because REST is flaky.This avoids the worst failure mode: being stuck in a trade and not managing it because REST is flaky.This avoids the worst failure mode: being stuck in a trade and not managing it because REST is flaky.This avoids the worst failure mode: being stuck in a trade and not managing it because REST is flaky.This avoids the worst failure mode: being stuck in a trade and not managing it because REST is flaky.', '200.00', '1769770896.jpg', 'In Stock', '1769770898_20251104_123425.jpg,1769770901_20251104_123432.jpg,1769770903_20251104_123438.jpg,1769770906_20251104_123442.jpg,1769770908_20251104_123456.jpg', 'false', 'feature', 'true', '2026-01-30 12:59:39', NULL),
(21, 'Product Anand', 'Anand', 'Sub-Anand', 'Trump has repeatedly assailed Powell for not cutting interest rates quickly enough, although he chose him to lead in 2017.Trump has repeatedly assailed Powell for not cutting interest rates quickly enough, although he chose him to lead in 2017.Trump has repeatedly assailed Powell for not cutting interest rates quickly enough, although he chose him to lead in 2017.', '200.00', '1769776342.jpg', 'In Stock', '1769776301_20251104_113253.jpg,1769776303_20251104_113954.jpg,1769776346_20251104_174554.jpg,1769776348_20251104_174700.jpg,1769776351_20251104_174719.jpg', 'false', 'false', 'true', '2026-01-30 12:59:39', '2026-01-30 13:32:14'),
(22, 'PRoduct Anand', 'Anand', 'Sub-Anand', 'What email addressWhat email addressWhat email addressWhat email address', '200.00', '1769780064.jpg', 'In Stock', '1769779982_20251104_121641.jpg,1769779987_20251104_123425.jpg,1769780067_20251104_164051.jpg,1769780069_20251104_164103.jpg,1769780072_20251104_165645.jpg', 'special', 'false', 'false', '2026-01-30 13:33:10', '2026-01-30 13:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

DROP TABLE IF EXISTS `sub_category`;
CREATE TABLE IF NOT EXISTS `sub_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `order_number` int NOT NULL,
  `category` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `is_delete` varchar(100) NOT NULL DEFAULT 'false',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`id`, `name`, `order_number`, `category`, `status`, `is_delete`) VALUES
(1, 'Horses', 2, 'Animal Dosing', 'ACTIVE', 'false'),
(2, 'Fencing', 0, 'Animal Dosing', 'ACTIVE', 'false'),
(6, 'Hardware', 1, 'Animal Dosing', 'ACTIVE', 'false'),
(4, 'Pet', 2, 'Pets', 'ACTIVE', 'false'),
(5, 'Castle Suit', 2, 'Clothing  & Footwear', 'ACTIVE', 'false'),
(7, 'Grooming', 2, 'Sheep', 'ACTIVE', 'false'),
(8, 'Hoofcare', 1, 'Sheep', 'ACTIVE', 'false'),
(9, 'Lambing', 2, 'Sheep', 'ACTIVE', 'false'),
(10, 'Handling', 0, 'Sheep', 'ACTIVE', 'false'),
(11, 'Identification', 1, 'Sheep', 'ACTIVE', 'false'),
(12, 'Keyboard', 2, 'Hardware', 'ACTIVE', 'false'),
(13, 'Sub-Anand', 0, 'Anand', 'ACTIVE', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telephone` varchar(13) NOT NULL,
  `fax` varchar(100) NOT NULL,
  `company` varchar(255) NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `city` varchar(100) NOT NULL,
  `postcode` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `country` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `subscribe` varchar(100) NOT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `telephone`, `fax`, `company`, `address1`, `address2`, `city`, `postcode`, `country`, `state`, `password`, `subscribe`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Porter', 'Joseph', 'testing.web017@gmail.com', '6833586623', '6673427506', 'Acosta and Beck Traders', '67 North Fabien Road', 'Aut velit harum', 'Laudantium', '624896', 'Tanzania', 'Cheshire', 'admin', '1', 'Active', '2026-02-02 09:24:24', '2026-02-10 11:46:22'),
(2, 'Anand', 'Baid', 'anand@webgrity.com', '9830956373', '', '', '1st Floor, 19 Lake Temple Road', 'Besides Menoka Cinema', 'Kolkata', '700029', 'India', 'Cardiff', 'uipl123', '0', 'Active', '2026-02-03 07:20:17', '2026-02-06 04:49:45');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `u_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `p_id` varchar(100) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `u_id`, `p_id`, `time`) VALUES
(13, '1', '10', '2026-02-09 04:31:34');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
