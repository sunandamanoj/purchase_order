-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2025 at 02:44 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `purchase_order_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `item_list`
--

CREATE TABLE `item_list` (
  `id` int(30) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT ' 1 = Active, 0 = Inactive',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item_list`
--

INSERT INTO `item_list` (`id`, `name`, `description`, `status`, `date_created`) VALUES
(5, '22x55 mm', 'FLASH STAMPMOUNT WITHEVA FOAM', 1, '2025-01-12 14:49:06'),
(6, '27x43 mm', 'FLASH STAMPMOUNT WITHEVA FOAM', 1, '2025-01-12 14:49:24'),
(7, '27x55 mm', 'FLASH STAMPMOUNT WITHEVA FOAM', 1, '2025-01-12 14:49:37'),
(8, '27x67mm', 'FLASH STAMPMOUNT WITHEVA FOAM', 1, '2025-01-12 14:49:49'),
(9, '32x52/55  mm', 'FLASH STAMPMOUNT WITHEVA FOAM', 1, '2025-01-12 14:50:01'),
(10, '35x70 mm', 'FLASH STAMPMOUNT WITHEVA FOAM', 1, '2025-01-13 09:33:19'),
(11, 'ROUND 17mm', 'FLASH STAMPMOUNT WITHEVA FOAM', 1, '2025-01-13 09:33:32'),
(12, 'ROUND 25 / 28mm', 'FLASH STAMPMOUNT WITHEVA FOAM', 1, '2025-01-13 09:33:45'),
(13, 'ROUND 32  /33mm', 'FLASH STAMPMOUNT WITHEVA FOAM', 1, '2025-01-13 09:34:00'),
(14, 'ROUND 35 mm', 'FLASH STAMPMOUNT WITHEVA FOAM', 1, '2025-01-13 09:34:58'),
(15, 'ROUND 38mm', 'FLASH STAMPMOUNT WITHEVA FOAM ', 1, '2025-01-13 09:35:47'),
(16, 'ROUND 40mm', 'FLASH STAMPMOUNT WITHEVA FOAM ', 1, '2025-01-13 09:36:30'),
(17, 'ROUND 45mm', 'FLASH STAMPMOUNT WITHEVA FOAM ', 1, '2025-01-13 09:36:41'),
(18, '53x67mm', 'FLASH STAMPMOUNT WITHEVA FOAM\r\n', 1, '2025-01-13 09:42:34'),
(19, '55x55 mm', 'FLASH STAMPMOUNT WITHEVA FOAM', 1, '2025-01-13 09:42:52'),
(20, '66x60 mm', 'FLASH STAMPMOUNT WITHEVA FOAM', 1, '2025-01-13 09:43:06'),
(21, '66x85 mm', 'FLASH STAMPMOUNT WITHEVA FOAM', 1, '2025-01-13 09:43:36'),
(22, '22x43 mm', 'FLASH STAMPMOUNT WITHEVA FOAM\r\n', 1, '2025-01-13 09:44:13'),
(23, '18x55 mm', 'FLASH STAMPMOUNT WITHEVA FOAM', 1, '2025-01-13 09:44:34'),
(24, '18x43 mm', 'FLASH STAMPMOUNT WITHEVA FOAM', 1, '2025-01-13 09:44:50'),
(25, '17x55 mm', 'FLASH STAMPMOUNT WITHEVA FOAM', 1, '2025-01-13 09:45:10'),
(26, '17x43 mm', 'FLASH STAMPMOUNT WITHEVA FOAM', 1, '2025-01-13 09:45:24'),
(27, '15x43 mm', 'FLASH STAMPMOUNT WITHEVA FOAM', 1, '2025-01-13 09:45:38'),
(33, '02-31mm-ROUND', 'Normal RubberStamp PlasticHandle', 1, '2025-01-13 09:51:41'),
(34, '03-38mm-ROUND', 'Normal RubberStamp PlasticHandle\r\n', 1, '2025-01-13 09:52:05'),
(35, '04-45mm-ROUND', 'Normal RubberStamp PlasticHandle\r\n', 1, '2025-01-13 09:52:22'),
(36, '05-50mm-ROUND', 'Normal RubberStamp PlasticHandle\r\n', 1, '2025-01-13 09:52:34'),
(37, '06-28x40mm-OVAL', 'Normal RubberStamp PlasticHandle\r\n', 1, '2025-01-13 09:52:52'),
(38, '07-30x45mm-OVAL', 'Normal RubberStamp PlasticHandle\r\n', 1, '2025-01-13 09:53:07'),
(39, '08/09-40x60mm-OVAL', 'Normal RubberStamp PlasticHandle\r\n', 1, '2025-01-13 09:53:22'),
(40, '11-15x50mm', 'Normal RubberStamp PlasticHandle\r\n', 1, '2025-01-13 09:53:44'),
(41, '12/A-15x65mm', 'Normal RubberStamp PlasticHandle\r\n', 1, '2025-01-13 09:53:55'),
(42, '12/B-18x65mm', 'Normal RubberStamp PlasticHandle\r\n', 1, '2025-01-13 09:54:12'),
(43, '13-20x50mm', 'Normal RubberStamp PlasticHandle\r\n', 1, '2025-01-13 09:54:24'),
(44, '14-20x60mm', 'Normal RubberStamp PlasticHandle\r\n', 1, '2025-01-13 09:54:34'),
(45, '15-20x65mm', 'Normal RubberStamp PlasticHandle\r\n', 1, '2025-01-13 09:54:50'),
(46, '16-30x50mm', 'Normal RubberStamp PlasticHandle\r\n', 1, '2025-01-13 09:55:03'),
(47, '17-30x60mm', 'Normal RubberStamp PlasticHandle\r\n', 1, '2025-01-13 09:55:14'),
(48, '18-45x65mm', 'Normal RubberStamp PlasticHandle\r\n', 1, '2025-01-13 09:55:31'),
(49, '19-45x100mm', 'Normal RubberStamp PlasticHandle\r\n', 1, '2025-01-13 09:55:42'),
(50, '20-34x100mm', 'Normal RubberStamp PlasticHandle\r\n', 1, '2025-01-13 09:55:53'),
(51, '22-24x89mm', 'Normal RubberStamp PlasticHandle\r\n', 1, '2025-01-13 09:56:05'),
(52, '27-A-15x30mm', 'Normal RubberStamp PlasticHandle\r\n', 1, '2025-01-13 09:56:17'),
(53, '27-B-15x40mm', 'Normal RubberStamp PlasticHandle', 1, '2025-01-13 09:56:36'),
(54, '27-C-12x25mm', 'Normal RubberStamp PlasticHandle\r\n', 1, '2025-01-13 09:56:49'),
(55, '27-D-12x35mm', 'Normal RubberStamp PlasticHandle\r\n', 1, '2025-01-13 09:56:58'),
(56, '28-65x113', 'Normal RubberStamp PlasticHandle\r\n', 1, '2025-01-13 09:57:11'),
(57, '28A-65x115mm', 'Normal RubberStamp PlasticHandle\r\n', 1, '2025-01-13 09:57:29'),
(58, 'INK  Black  100gms', 'Special Flash Ink (Black) (A)100gms', 1, '2025-01-13 09:59:36'),
(59, 'INK  VIOLET  100gms', 'Special Flash Ink (Violet) (A)100gms', 1, '2025-01-13 10:00:30'),
(60, 'INK BLUE  100gms', 'Special Flash Ink (BLUE) (A) 100gms', 1, '2025-01-13 10:01:51'),
(61, 'INK  GREEN 100gms', 'Special Flash Ink (GREEN) ( A)100gms', 1, '2025-01-13 10:02:48'),
(62, 'INK  RED 100gms', 'Special Flash Ink (RED) (A)100gms', 1, '2025-01-13 10:03:58'),
(63, 'INK  EPSO - CYAN', 'EPSON INK - CMYK - GENUINEFOREPSON', 1, '2025-01-13 10:07:00'),
(64, 'INK EPSON  - MAGENTA', 'EPSON INK - CMYK - GENUINEFOREPSON', 1, '2025-01-13 10:07:42'),
(65, 'INK EPSON  - YELLOW', 'EPSON INK - CMYK - GENUINEFOREPSON', 1, '2025-01-13 10:08:30'),
(66, 'INK EPSON -  BLACK', 'EPSON INK - CMYK - GENUINEFOREPSON', 1, '2025-01-13 10:09:46'),
(67, 'Polymer Liquid  500g', 'Polymer Liquid', 1, '2025-01-13 10:11:59'),
(68, 'Polymer Liquid 300g', 'Polymer Liquid ', 1, '2025-01-13 10:12:11'),
(69, 'Polymer Liquid  1Kg', 'Polymer Liquid  ', 1, '2025-01-13 10:12:24'),
(70, 'Hardening Powder', '(100gms) White', 1, '2025-01-13 10:12:59'),
(71, 'Darkener - Clear', 'Negative Enhance Liquid (Tomake theNegativedarker)', 1, '2025-01-13 10:13:20'),
(72, 'Front Paper', 'Clear', 1, '2025-01-13 10:14:03'),
(73, 'Base Film Substrate', 'Basefilm(USA)', 1, '2025-01-13 10:14:19'),
(74, 'Tracing Paper - DIAMON', 'To PrintPositive Print&amp; NegativePrints forPolymer &amp;Flash StampMaking', 1, '2025-01-13 10:15:10'),
(75, 'Tracing Paper - INKJET', 'PVC SHEET SUPERWHITE (Inkjet WhiteCore)', 1, '2025-01-13 10:16:40'),
(76, 'OHP', ' A4 size', 1, '2025-01-13 10:17:01'),
(77, 'Flash Glue', 'CLEAR', 1, '2025-01-13 10:17:18'),
(78, 'Flash Foams -S', 'GRAY', 1, '2025-01-13 10:18:59'),
(79, 'Flash Foams -M', 'GRAY', 1, '2025-01-13 10:19:13'),
(80, 'Flash Foams -L', 'GRAY', 1, '2025-01-13 10:19:23'),
(81, 'DATE STAMP - C - 40X60 mm', 'Chinese', 1, '2025-01-13 10:43:09'),
(82, 'DATE STAMP - C - 70X50 mm', 'Chinese', 1, '2025-01-13 10:44:27'),
(83, 'DATE STAMP - C - 40R mm', 'Chinese', 1, '2025-01-13 10:48:01'),
(84, 'DATE STAMP - C - 45R mm', 'Chinese', 1, '2025-01-13 10:48:27'),
(85, 'DATE STAMP - C - 51R mm', 'Chinese', 1, '2025-01-13 10:48:43'),
(86, '22x67 mm', 'FLASH STAMPMOUNT WITHEVA FOAM', 1, '2025-01-13 18:27:34'),
(87, '22x78 mm', 'FLASH STAMPMOUNT WITHEVA FOAM', 1, '2025-01-13 18:28:04'),
(88, '27x78mm', 'FLASH STAMPMOUNT WITHEVA FOAM', 1, '2025-01-13 18:29:04');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `po_id` int(30) NOT NULL,
  `item_id` int(11) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `unit_price` float NOT NULL,
  `quantity` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`po_id`, `item_id`, `unit`, `unit_price`, `quantity`) VALUES
(63, 11, '', 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `po_list`
--

CREATE TABLE `po_list` (
  `id` int(30) NOT NULL,
  `po_no` varchar(100) NOT NULL,
  `supplier_id` int(30) NOT NULL,
  `discount_percentage` float NOT NULL,
  `discount_amount` float NOT NULL,
  `tax_percentage` float NOT NULL,
  `tax_amount` float NOT NULL,
  `quotation_notes` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=pending, 1= Approved, 2 = Denied',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `for_what_quotation` text NOT NULL,
  `purchase_orders_notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `po_list`
--

INSERT INTO `po_list` (`id`, `po_no`, `supplier_id`, `discount_percentage`, `discount_amount`, `tax_percentage`, `tax_amount`, `quotation_notes`, `status`, `date_created`, `date_updated`, `for_what_quotation`, `purchase_orders_notes`) VALUES
(63, 'PO-87756568418', 54, 0, 0, 0, 0, 'qqqqqqqqqqqqqqqqqq\r\n<br>\r\nkkkkkkkkkkkkkkkkkkkkkkkkkk', 2, '2025-01-15 07:10:54', NULL, '99999999999999', '');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_list`
--

CREATE TABLE `supplier_list` (
  `id` int(30) NOT NULL,
  `name` varchar(250) NOT NULL,
  `address` text NOT NULL,
  `contact_person` text NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT ' 0 = Inactive, 1 = Active',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier_list`
--

INSERT INTO `supplier_list` (`id`, `name`, `address`, `contact_person`, `contact`, `email`, `status`, `date_created`) VALUES
(8, 'A.M.N. DILRANGA', 'ALAHENEGAMA', '', '', '', 1, '2025-01-13 18:45:18'),
(9, 'A.M.P.C. DE SILVA', 'MATARA', '', '', '', 1, '2025-01-13 18:45:33'),
(10, 'A.R. CHAMALKA PRAMOD AMBAGALA', 'THOLANGAMUWA', '', '', '', 1, '2025-01-13 18:45:47'),
(11, 'ABDUL NASAR', 'PUTTALAM', '', '', '', 1, '2025-01-13 18:46:02'),
(12, 'ABI CARDS', 'HATTON', '', '', '', 1, '2025-01-13 18:46:16'),
(13, 'ACHINI PRINTERS', 'MATARA', '', '', '', 1, '2025-01-13 18:46:29'),
(14, 'ACT ADVERTISING', 'GALEWELA', '', '', '', 1, '2025-01-13 18:46:43'),
(15, 'ADK ADVERTISING', 'RATNAPURA', '', '', '', 1, '2025-01-13 18:46:55'),
(16, 'ADROMA ADVERTISING', 'KADAWATHA', '', '', '', 1, '2025-01-13 18:47:07'),
(17, 'ADS HOLDINGS', 'EMBILIPITIYA', '', '', '', 1, '2025-01-13 18:47:21'),
(18, 'ADSIGN ADVERTISING (PVT) LTD', 'EMBILIPITIYA', '', '', '', 1, '2025-01-13 18:47:35'),
(19, 'ADVANTIS', 'WELLAMPITIYA', '', '', '', 1, '2025-01-13 18:47:47'),
(20, 'AGRA BOOK SHOP', 'AKKARAIPATTU', '', '', '', 1, '2025-01-13 18:47:59'),
(21, 'AH PRINTERS', 'KANDY', '', '', '', 1, '2025-01-13 18:48:14'),
(22, 'AHASRA COMMUNICATION & PRINTERS', 'NILDANDAHINNA', '', '', '', 1, '2025-01-13 18:48:27'),
(23, 'AHMED FAYAZ', 'MALE - MALDIVES', '', '', '', 1, '2025-01-13 18:48:43'),
(24, 'AHMED KHALEEL', 'MALE - MALDIVES', '', '', '', 1, '2025-01-13 18:49:05'),
(25, 'AHMED RASHEED', 'DEHIWALA', '', '', '', 1, '2025-01-13 18:49:17'),
(26, 'AIKO PRESCHOOL, DAYCARE & AFTER SCHOOL ACTIVITY CENTER', 'NAWALA', '', '', '', 1, '2025-01-13 18:49:50'),
(27, 'AJITH ADVERTISING', 'UDAWALAWE', '', '', '', 1, '2025-01-13 18:50:03'),
(28, 'AK GRAPHIC', 'MARAWILA', '', '', '', 1, '2025-01-13 18:50:21'),
(29, 'AKURA PRINTERS', 'EMBILIPITIYA', '', '', '', 1, '2025-01-13 18:50:35'),
(30, 'AKURU COLOR GRAPHICS', 'BATTARAMULLA', '', '', '', 1, '2025-01-13 18:50:46'),
(31, 'AL RAFA QUICK DIGITAL', 'KATTANKUDY', '', '', '', 1, '2025-01-13 18:50:59'),
(32, 'ALBERT ART', 'GALLE', '', '', '', 1, '2025-01-13 18:51:10'),
(33, 'AL-NOORAS INDUSTRIES', 'BANDARAWELA', '', '', '', 1, '2025-01-13 18:51:24'),
(34, 'AM MANAGEMENT', 'KINNIYA', '', '', '', 1, '2025-01-13 18:51:43'),
(35, 'AMANATH EXPRESS', 'KINNIYA-04', '', '', '', 1, '2025-01-13 18:51:55'),
(36, 'AMARA ADVERTISING', 'BADULLA', '', '', '', 1, '2025-01-13 18:52:06'),
(37, 'AMARA PRINTERS', 'CHILAW', '', '', '', 1, '2025-01-13 18:52:19'),
(38, 'AMB CREATION', 'HABARANA', '', '', '', 1, '2025-01-13 18:52:31'),
(39, 'AMILA DESIGN PLUS', 'KADUWELA', '', '', '', 1, '2025-01-13 18:52:44'),
(40, 'AMMAN CREATION', 'HATTON', '', '', '', 1, '2025-01-13 18:52:56'),
(41, 'ANAGI BOOKSHOP', 'BORALESGAMUWA', '', '', '', 1, '2025-01-13 18:53:11'),
(42, 'ANANDA STATIONERY', 'GALLE', '', '', '', 1, '2025-01-13 18:53:23'),
(43, 'ANGEL ADS', 'NAINAMADAMA', '', '', '', 1, '2025-01-13 18:53:36'),
(44, 'ANIL PRINTERS', 'KURUNEGALA', '', '', '', 1, '2025-01-13 18:53:50'),
(45, 'ANIM8', 'COLOMBO 05', '', '', '', 1, '2025-01-13 18:54:03'),
(46, 'ANJELO PHONE GATE', 'KULIYAPITIYA', '', '', '', 1, '2025-01-13 18:54:16'),
(47, 'ANSELL TEXTILES LANKA (PVT) LTD', 'SEEDUWA', '', '', '', 1, '2025-01-13 18:54:29'),
(48, 'ANTHONY BOOK BINDING WORK SHOP', 'KANDY', '', '', '', 1, '2025-01-13 18:54:41'),
(49, 'ANTON STUDIO', 'NAULA', '', '', '', 1, '2025-01-13 18:54:54'),
(50, 'ANURA CELLULAR', 'RATNAPURA', '', '', '', 1, '2025-01-13 18:55:08'),
(51, 'ANURA GUNATHILAKE', 'MAGGONA', '', '', '', 1, '2025-01-13 18:55:21'),
(52, 'APEKSHA COMPUTER TECHNOLOGY', 'KALUTARA-SOUTH', '', '', '', 1, '2025-01-13 18:55:33'),
(53, 'APEKSHA OFFSET PRINTERS', 'NUWARA ELIYA', '', '', '', 1, '2025-01-13 18:55:45'),
(54, 'A-PLUS COMPUTERS', 'MARATA', '', '', '', 1, '2025-01-13 18:55:57'),
(55, 'AR HOLDINGS', 'MATARA', '', '', '', 1, '2025-01-13 18:56:13'),
(56, 'ARADANA GREETINGS', 'GAMPOLA', '', '', '', 1, '2025-01-13 18:56:33'),
(57, 'ARADHANA BOOK SHOP', 'GALLE', '', '', '', 1, '2025-01-13 18:56:59'),
(58, 'ARALIYA', 'DELGODA', '', '', '', 1, '2025-01-13 18:57:11'),
(59, 'ARALIYA CREATION & ADVERTISING', 'KATUNERIYA', '', '', '', 1, '2025-01-13 18:57:31'),
(60, 'ARALIYA PRINTERS', 'MAWANELLE', '', '', '', 1, '2025-01-13 18:57:43'),
(61, 'ARIYADASA PRINTERS (PVT) LTD', 'GALLE', '', '', '', 1, '2025-01-13 18:57:54'),
(62, 'ARIYASIRI PRINTERS', 'AKURESSA', '', '', '', 1, '2025-01-13 18:58:06'),
(63, 'ARJENE CREATIONS', 'JAFFNA', '', '', '', 1, '2025-01-13 18:58:17'),
(64, 'ARJUNA GAYANATH', 'PANNIPITIYA', '', '', '', 1, '2025-01-13 18:58:30'),
(65, 'ART FOCUS', 'KATTANKUDY-06', '', '', '', 1, '2025-01-13 18:58:43'),
(66, 'ART GRAPHICS ADVERTISING', 'KANDY', '', '', '', 1, '2025-01-13 18:58:56'),
(67, 'ARTLINK', 'KATUGASTOTA', '', '', '', 1, '2025-01-13 18:59:08'),
(68, 'ARUNA ADS', 'KANDAWALA', '', '', '', 1, '2025-01-13 18:59:20'),
(69, 'ARUNA PRINTERS', 'PILIYANDALA', '', '', '', 1, '2025-01-13 18:59:30'),
(70, 'ARUNA PRINTERS  02', 'URUBOKKA', '', '', '', 1, '2025-01-13 19:00:15'),
(71, 'AS GRAPHICS - PAMUNUGAMA', 'NEGOMBO', '', '', '', 1, '2025-01-13 19:00:27'),
(72, 'AS KUMARATHUNGA', 'ANURADAPURA', '', '', '', 1, '2025-01-13 19:00:40'),
(73, 'ASAKA TELECOM & OFFSET PRINTERS', 'MAHAWEWA (NWP)', '', '', '', 1, '2025-01-13 19:00:56'),
(74, 'ASANKA GRAPHICS & PRINTERS', 'MARAWILA', '', '', '', 1, '2025-01-13 19:01:09'),
(75, 'ASHA DIGITAL PRINT', 'RUWANWELLA', '', '', '', 1, '2025-01-13 19:01:22'),
(76, 'ASHEN NADEERA', 'KELANIYA', '', '', '', 1, '2025-01-13 19:01:33'),
(77, 'ASIRI BOOK SHOP', 'NIKAWERATIYA', '', '', '', 1, '2025-01-13 19:01:48'),
(78, 'ASIRI FERNANDO', 'SEEDUWA', '', '', '', 1, '2025-01-13 19:02:00'),
(79, 'ASIRI OFFSET PRINTERS', 'RATNAPURA', '', '', '', 1, '2025-01-13 19:02:16'),
(80, 'ASIRI PRINTERS', 'KANDY', '', '', '', 1, '2025-01-13 19:02:27'),
(81, 'ATHULA ADVERTISING', 'OPANAYAKE', '', '', '', 1, '2025-01-13 19:02:38'),
(82, 'ATHULA ADVERTISING 02', 'PELMADULLA', '', '', '', 1, '2025-01-13 19:03:07'),
(83, 'ATHULA ART CENTER', 'GODAKAWELA', '', '', '', 1, '2025-01-13 19:03:20'),
(84, 'AUTO DESIGNER', 'MATALE', '', '', '', 1, '2025-01-13 19:03:33'),
(85, 'AWARJANA CREATIONS', 'MINUWANGODA', '', '', '', 1, '2025-01-13 19:03:45'),
(86, 'AYSHA BOOK SHOP', 'KALUTHARA SOUTH', '', '', '', 1, '2025-01-13 19:04:00'),
(87, 'A-ZONE', 'BANDARAWELA', '', '', '', 1, '2025-01-13 19:04:12'),
(88, 'B.I.P. FERNANDO', 'RAGAMA', '', '', '', 1, '2025-01-13 19:04:38'),
(89, 'BANDULA DEMEL', 'KANDY', '', '', '', 1, '2025-01-13 19:04:50'),
(90, 'BASNAYAKA PRINTERS', 'MEDIRIGIRIYA', '', '', '', 1, '2025-01-13 19:05:04'),
(91, 'BERNI ARTS', 'ANDIYAGALA-DAMBULLA', '', '', '', 1, '2025-01-13 19:05:26'),
(92, 'BERTY', 'MAWANELLA', '', '', '', 1, '2025-01-13 19:05:39'),
(93, 'BEST ADVERTISING', 'RIDIGAMA-KURUNEGALA', '', '', '', 1, '2025-01-13 19:05:52'),
(94, 'BESTLIFE INTERNATIONAL (PVT) LTD', 'PANADURA', '', '', '', 1, '2025-01-13 19:06:05'),
(95, 'BEYOND COMPUTER SYSTEM', 'KOCHCHIKADE', '', '', '', 1, '2025-01-13 19:06:17'),
(96, 'BHAGYA PHOTO', 'UDUGAMPOLA', '', '', '', 1, '2025-01-13 19:06:29'),
(97, 'BIMALKA YESHANI', 'THALAGASPE-ELPITIYA', '', '', '', 1, '2025-01-13 19:06:43'),
(98, 'BIMPUTH FINANCE PLC', 'PADIYATHALAWA', '', '', '', 1, '2025-01-13 19:06:54'),
(99, 'BRANDIX APPAREL SOLUTIONS LTD', 'RATHMALANA', '', '', '', 1, '2025-01-13 19:07:06'),
(100, 'BRIGHT LIGHT COMPUTERS', 'MATALE', '', '', '', 1, '2025-01-13 19:07:45'),
(101, 'BS STATIONER', 'BAKAMUNA', '', '', '', 1, '2025-01-13 19:07:59'),
(102, 'BUDDHIKA INDRAJITH', 'TRINCOMALEE', '', '', '', 1, '2025-01-13 19:08:11'),
(103, 'BUDDHIKA PRINTERS', 'KADURUWELA', '', '', '', 1, '2025-01-13 19:08:22'),
(104, 'BUDDIKA COMMUNICATIONS', 'KANDY', '', '', '', 1, '2025-01-13 19:08:35'),
(105, 'BUDHIKA PRINTERS', 'AMPARA', '', '', '', 1, '2025-01-13 19:08:47'),
(106, 'C&C SERVICES', 'DHARGA TOWN', '', '', '', 1, '2025-01-14 09:35:33'),
(107, 'C&O COMMUNICATION', 'TISSAMAHARAMA', '', '', '', 1, '2025-01-14 09:35:48'),
(108, 'CANDY FACTORY GROUP', 'DEPANAMA-PANNIPITIYA', '', '', '', 1, '2025-01-14 09:36:08'),
(109, 'CCC CHANDINA CREATIVE COLLECTION', 'BANDARAWELA', '', '', '', 1, '2025-01-14 09:36:22'),
(110, 'CELL POINT', 'AKURANA', '', '', '', 1, '2025-01-14 09:36:37'),
(111, 'CENTRAL FOTO', 'GAMPAHA', '', '', '', 1, '2025-01-14 09:36:49'),
(112, 'CEYLON ARUNA PRODUCTS (PVT) LTD', 'KADAWATHA', '', '', '', 1, '2025-01-14 09:37:01'),
(113, 'CEYLON ELECTRICITY BOARD', 'COLOMBO', '', '', '', 1, '2025-01-14 09:37:18'),
(114, 'CEYLON SHIPPING LINES LTD', 'DANUSHKE BERAGAMA - COLOMBO 10', '', '', '', 1, '2025-01-14 09:38:15'),
(115, 'CGM EXPRESS PRINT SHOP', 'WELLAWAYA', '', '', '', 1, '2025-01-14 09:38:27'),
(116, 'CHALANA PRINTERS', 'BUTTALA', '', '', '', 1, '2025-01-14 09:38:44'),
(117, 'CHAMARA INDUSTRIES', 'PERADENIYA', '', '', '', 1, '2025-01-14 09:38:56'),
(118, 'CHAMAREE', 'HINGURANA', '', '', '', 1, '2025-01-14 09:39:11'),
(119, 'CHANDANA MAHINDA JAYASINGHE', 'BINGIRIYA', '', '', '', 1, '2025-01-14 09:39:25'),
(120, 'CHANDIMAL PRINTERS & ADVERTISING', 'MAWATHAGAMA', '', '', '', 1, '2025-01-14 09:39:45'),
(121, 'CHANDRARATHNA BANDARA', 'GOKARELLA-KURUNEGALA', '', '', '', 1, '2025-01-14 09:40:00'),
(122, 'CHARITHA DARSHANA PERERA', 'DODANGODA', '', '', '', 1, '2025-01-14 09:40:17'),
(123, 'CHATHUM ADVERTISING', 'MATUGAMA', '', '', '', 1, '2025-01-14 09:40:36'),
(124, 'CHATHURA PRINTERS', 'GALLE', '', '', '', 1, '2025-01-14 09:40:47'),
(125, 'CHATHURA PRINTERS - WELLAWA', 'KURUNEGALA', '', '', '', 1, '2025-01-14 09:41:26'),
(126, 'CHILAW IMAGE STUDIO', 'CHILAW', '', '', '', 1, '2025-01-14 09:41:40'),
(127, 'CHILAW MAYURA BOOK SHOP', 'CHILAW', '', '', '', 1, '2025-01-14 09:41:51'),
(128, 'CHINTAKA CREATION', 'RIKILLAGASKADA-KANDY', '', '', '', 1, '2025-01-14 09:42:06'),
(129, 'CHIRATH TROPHIES', 'MORAWAKA', '', '', '', 1, '2025-01-14 09:42:18'),
(130, 'CITIZEN OFFSET PRINTERS', 'BADULLA', '', '', '', 1, '2025-01-14 09:42:32'),
(131, 'CITY DESIGNERS', 'DELTOTA-KANDY', '', '', '', 1, '2025-01-14 09:42:44'),
(132, 'CITY HARDWARE', 'BANDARAGAMA', '', '', '', 1, '2025-01-14 09:42:57'),
(133, 'CITY LIGHT PRINT', 'GAMPAHA', '', '', '', 1, '2025-01-14 09:43:10'),
(134, 'CITY MAX', 'ANURADHAPURA', '', '', '', 1, '2025-01-14 09:43:23'),
(135, 'CITY OFFSET PRINTERS', 'NAWALAPITIYA', '', '', '', 1, '2025-01-14 09:43:38'),
(136, 'CLP CITY LINE PRINTERS - NADIMALA', 'DEHIWALA', '', '', '', 1, '2025-01-14 09:43:50'),
(137, 'COCONUT RESEARCH INSTITUTE', 'LUNUWILA', '', '', '', 1, '2025-01-14 09:44:02'),
(138, 'COLOR LINE', 'PUTTALAM', '', '', '', 1, '2025-01-14 09:44:14'),
(139, 'COLOUR CREATION ADVERTISING', 'URUBOKKA', '', '', '', 1, '2025-01-14 09:44:28'),
(140, 'COLOUR FIX STUDIO', 'AKURANA', '', '', '', 1, '2025-01-14 09:44:39'),
(141, 'COLOUR LINK ADS', 'ALAWWA', '', '', '', 1, '2025-01-14 09:44:49'),
(142, 'Corner Net Cafe & Communication', 'BIBILE', '', '', '', 1, '2025-01-14 09:45:04'),
(143, 'COZY RANGE ADVERTISING', 'THIHARIYA', '', '', '', 1, '2025-01-14 09:45:15'),
(144, 'CRIASHA ADVERTISING', 'MATARA', '', '', '', 1, '2025-01-14 09:45:27'),
(145, 'CRISTAL PRINTERS', 'GALLE', '', '', '', 1, '2025-01-14 09:45:39'),
(146, 'CROWN PRINTERS', 'KEKIRAWA', '', '', '', 1, '2025-01-14 09:45:52'),
(147, 'CYBERTEC COMPUTER', 'GALNEWA', '', '', '', 1, '2025-01-14 09:46:05'),
(148, 'D. N. S. KOTHALAWALA', 'TISSAMAHARAMA', '', '', '', 1, '2025-01-15 06:11:35'),
(149, 'D.M.K.S. GUNARATHNA', 'PAYAGALA', '', '', '', 1, '2025-01-15 06:11:50'),
(150, 'D.R. NISAL-(SANKA)', 'WEWATHENNA-BANDARAWELA', '', '', '', 1, '2025-01-15 06:12:11'),
(151, 'DAHARA BOOK SHOP', 'CHILAW', '', '', '', 1, '2025-01-15 06:12:23'),
(152, 'DAHASPATH SOLUTIONS', 'JA-ELA', '', '', '', 1, '2025-01-15 06:12:34'),
(153, 'DAKSHINA TELE SHOP', 'WELIGAMA', '', '', '', 1, '2025-01-15 06:12:45'),
(154, 'DAMMIKA OFFSET PRINTERS', 'KATUWANA', '', '', '', 1, '2025-01-15 06:12:58'),
(155, 'DAMRO-D. R. INDUSTRIES (PVT) LTD', 'NITTAMBUWA', '', '', '', 1, '2025-01-15 06:13:12'),
(156, 'DANANJA TELESHOP', 'WATTEGAMA', '', '', '', 1, '2025-01-15 06:13:23'),
(157, 'DANANJAYA PRINT HOUSE', 'DEHIOWITA', '', '', '', 1, '2025-01-15 06:13:34'),
(158, 'DANANJAYA PRINT HOUSE COMPUTER VIDEO & BOOKSHOP', 'MAGAMMAN-DEHIOWITA', '', '', '', 1, '2025-01-15 06:13:46'),
(159, 'DANTECH STATIONERIES', 'RAGAMA', '', '', '', 1, '2025-01-15 06:13:57'),
(160, 'DANUKA PRINTERS', 'PADIYATHALAWA', '', '', '', 1, '2025-01-15 06:14:08'),
(161, 'DANURA SENAN', 'NUWARA ELIYA', '', '', '', 1, '2025-01-15 06:14:22'),
(162, 'DARK FORUM MEDIA', 'DARK FORUM MEDIA', '', '', '', 1, '2025-01-15 06:14:34'),
(163, 'DARSHI GRAPHICS', 'NATTANDIYA', '', '', '', 1, '2025-01-15 06:14:46'),
(164, 'DASA PRINTERS', 'HABARADUWA', '', '', '', 1, '2025-01-15 06:14:56'),
(165, 'DASATHA COMMUNICATION', 'MORAWAKA', '', '', '', 1, '2025-01-15 06:15:11'),
(166, 'DATA CAPTURE EXPERTS', 'COLOMBO 09', '', '', '', 1, '2025-01-15 06:29:49'),
(167, 'DAYARATHNE OFFSET PRINTERS', 'PANNALA', '', '', '', 1, '2025-01-15 06:30:02'),
(168, 'DE CREATIONS', 'URUBOKKA', '', '', '', 1, '2025-01-15 06:30:14'),
(169, 'DEDUNU GRAPHICS', 'DANKOTUWA', '', '', '', 1, '2025-01-15 06:30:25'),
(170, 'DEEGAJANU PRINTERS', 'PUTTALAM', '', '', '', 1, '2025-01-15 06:30:36'),
(171, 'DEEPANI INDUSTRIES', 'KURUNEGALA', '', '', '', 1, '2025-01-15 06:30:47'),
(172, 'DELPHI GRAPHICS', 'PANADURA', '', '', '', 1, '2025-01-15 06:31:03'),
(173, 'DESHAPRIYA CREATIONS AND DIGITAL COLORLAB', 'KEGALLE', '', '', '', 1, '2025-01-15 06:31:15'),
(174, 'DESHIKA TEA FACTORY', 'RAKWANA', '', '', '', 1, '2025-01-15 06:31:26'),
(175, 'DESIGN PRINTING', 'RATNAPURA', '', '', '', 1, '2025-01-15 06:31:39'),
(176, 'DEVASEE BOOK SHOP', 'BADURALIYA', '', '', '', 1, '2025-01-15 06:31:49'),
(177, 'DHAMMIKA ANURADHA-(CAMELLIA CLOTHING)', 'AMBALANGODA', '', '', '', 1, '2025-01-15 06:32:01'),
(178, 'DHAMMIKA ARTS', 'PUSSELLAWA', '', '', '', 1, '2025-01-15 06:32:16'),
(179, 'DHANAJA TELEPRINT', 'WATTEGAMA', '', '', '', 1, '2025-01-15 06:32:27'),
(180, 'DHANANJAYA', 'KIRINDA-TISSA', '', '', '', 1, '2025-01-15 06:32:46'),
(181, 'DHARMAKEERTHI TRADE CENTER', 'BALAPITIYA', '', '', '', 1, '2025-01-15 06:32:58'),
(182, 'DIDULA INTERNATIONAL', 'ATHURUGIRIYA', '', '', '', 1, '2025-01-15 06:33:12'),
(183, 'DIGIMAX (PVT) LTD', 'KESBEWA', '', '', '', 1, '2025-01-15 06:33:22'),
(184, 'DIGITAL EYE CREATIONS', 'URUBOKKA', '', '', '', 1, '2025-01-15 06:33:33'),
(185, 'DIGITAL MEDIA CENTRE', 'COLOMBO 08', '', '', '', 1, '2025-01-15 06:33:46'),
(186, 'DIGITAL MIND', 'AKKARAIPATTU', '', '', '', 1, '2025-01-15 06:33:58'),
(187, 'DIGIWORLD ADVERTISING', 'GALLE', '', '', '', 1, '2025-01-15 06:34:10'),
(188, 'DILANKA ADVERTISING', 'WALAPANE', '', '', '', 1, '2025-01-15 06:34:21'),
(189, 'DILANTHA SENARATHNA', 'MAWANELLA', '', '', '', 1, '2025-01-15 06:34:34'),
(190, 'DILI PRINTERS', 'MALSIRIPURA', '', '', '', 1, '2025-01-15 06:34:45'),
(191, 'DILRANGI KUKULEVITHANA', 'MALAWATTA-PAREIGAMA', '', '', '', 1, '2025-01-15 06:35:01'),
(192, 'Dilsha', 'Bandaragama', '', '', '', 1, '2025-01-15 06:35:14'),
(193, 'DILSHAN HAPUGODA', 'PODDALA-GALLE', '', '', '', 1, '2025-01-15 06:35:27'),
(194, 'DINALIE STUDIO', 'NEGOMBO', '', '', '', 1, '2025-01-15 06:35:42'),
(195, 'DINETH PRINTS & SOLUTIONS', 'MIRIGAMA', '', '', '', 1, '2025-01-15 06:35:55'),
(196, 'DINU GRAPHICS', 'MATARA', '', '', '', 1, '2025-01-15 06:36:07'),
(197, 'DISCOVERY PRINTERS', 'BANDARA KOSWATTA', '', '', '', 1, '2025-01-15 06:36:20'),
(198, 'DIVA ENTERPRISES', 'KIRAN-BATTICALOA', '', '', '', 1, '2025-01-15 06:36:31'),
(199, 'Divine Pizzeria', 'pannipitiya', '', '', '', 1, '2025-01-15 06:36:46'),
(200, 'DOT ADVERTISING (DOT LINE)', 'RIDEEGAMA', '', '', '', 1, '2025-01-15 06:37:16'),
(201, 'DOTLINE PRINTERS', 'KATTANKUDY-01', '', '', '', 1, '2025-01-15 06:37:30'),
(202, 'DPC HOLDING', 'ALUTHGAMA', '', '', '', 1, '2025-01-15 06:37:41'),
(203, 'DREAM ART', 'MONARAGALA', '', '', '', 1, '2025-01-15 06:37:55'),
(204, 'DS PRINTERS & ADVERTISING SERVICE', 'HATARALIYADDA', '', '', '', 1, '2025-01-15 06:38:11'),
(205, 'DUBAI DIGITAL PRINTING', 'CHENKALADY-BATTICALOA', '', '', '', 1, '2025-01-15 06:38:23'),
(206, 'DV CREATIVE', 'BATTICALOA', '', '', '', 1, '2025-01-15 06:38:36'),
(207, 'DYNAMIC PRINTERS', 'KEGALLE', '', '', '', 1, '2025-01-15 06:38:49'),
(208, 'E.M.G. KARUNARATHNE OFFSET PRINTERS', 'BALANGODA', '', '', '', 1, '2025-01-15 06:39:13'),
(209, 'E.M.G. KARUNARTNA SONS COMPANY', 'BANDARAWELA', '', '', '', 1, '2025-01-15 06:39:30'),
(210, 'E.M.G.G.T.B. EKANAYAKE', 'PILIMATALAWA', '', '', '', 1, '2025-01-15 06:39:44'),
(211, 'EAGER CREATIONS', 'BORALESGAMUWA', '', '', '', 1, '2025-01-15 06:39:55'),
(212, 'EAGLE STUDIO', 'NELUWA', '', '', '', 1, '2025-01-15 06:40:06'),
(213, 'E-CARE PRINTERS', 'PUTTALAM', '', '', '', 1, '2025-01-15 06:40:20'),
(214, 'ECHO LANKA', 'KIRIBATHGODA', '', '', '', 1, '2025-01-15 06:40:32'),
(215, 'E-CORNER', 'NEGOMBO', '', '', '', 1, '2025-01-15 06:40:43'),
(216, 'E-CORNER POLYMER', 'NEGOMBO', '', '', '', 1, '2025-01-15 06:40:53'),
(217, 'EDIRISINGHE MARKETING', 'HABARAKADA', '', '', '', 1, '2025-01-15 06:41:06'),
(218, 'EDWARD RUBBER STAMP', 'MATALE', '', '', '', 1, '2025-01-15 06:41:18'),
(219, 'EESWAA DIGITAL PRESS', 'JAFFNA', '', '', '', 1, '2025-01-15 06:41:31'),
(220, 'EESWAA DIGITAL PRINTING', 'JAFFNA', '', '', '', 1, '2025-01-15 06:41:45'),
(221, 'EETHAWAKA PRINTERS & PUBLISHER', 'HANWELLA', '', '', '', 1, '2025-01-15 06:41:59'),
(222, 'EKOM LANKA', 'ATHURUGIRIYA', '', '', '', 1, '2025-01-15 06:42:10'),
(223, 'Elvicon Tech (Pvt) Ltd', 'Colombo-10', '', '', '', 1, '2025-01-15 06:42:26'),
(224, 'EMERCHEMIE NB (CEYLON) LIMITED', 'COLOMBO 10', '', '', '', 1, '2025-01-15 06:42:38'),
(225, 'EPF DEPARTMENT', 'COLOMBO 01', '', '', '', 1, '2025-01-15 06:42:50'),
(226, 'ERANGA SADARUWAN', 'KOTTAWA', '', '', '', 1, '2025-01-15 06:43:02'),
(227, 'ERANGIKA STUDIO', 'HASALAKA', '', '', '', 1, '2025-01-15 06:43:14'),
(228, 'ETEC MAX-DESHI LANKA', 'KENGALLE', '', '', '', 1, '2025-01-15 06:43:24'),
(229, 'E-TEC PRINTERS', 'KUNDASALE', '', '', '', 1, '2025-01-15 06:43:35'),
(230, 'EURO GRAPHICS & COMMUNICATIONS', 'KATUBEDDA-MORATUWA', '', '', '', 1, '2025-01-15 06:43:52'),
(231, 'EVERGREEN PRINTERS', 'BATTICALOA', '', '', '', 1, '2025-01-15 06:44:05'),
(232, 'EVERSHINE PRINTERS', 'KINNIYA', '', '', '', 1, '2025-01-15 06:44:15'),
(233, 'EXCELLENCE PRINTING SOLUTIONS (PVT) LTD', 'DAMBULLA', '', '', '', 1, '2025-01-15 06:44:28'),
(234, 'EXCELLENT ADS - TALGASWALA', 'GALLE', '', '', '', 1, '2025-01-15 06:44:40'),
(235, 'EXCELLENT DESIGNWORK', 'GODAKAWELA', '', '', '', 1, '2025-01-15 06:44:56'),
(236, 'EXPERT PRINTERS', 'AKKARAIPATTU', '', '', '', 1, '2025-01-15 06:45:08'),
(237, 'EYE COM', 'SEEDUWA', '', '', '', 1, '2025-01-15 06:45:19'),
(238, 'EYI ADS (PVT) LTD', 'BADULLA', '', '', '', 1, '2025-01-15 06:45:30'),
(239, 'E-ZINE PRINTERS', 'HETTIPOLA', '', '', '', 1, '2025-01-15 06:45:44'),
(240, 'FALCON STUDIO', 'BANDARAWELA', '', '', '', 1, '2025-01-15 06:46:02'),
(241, 'FAMILIES WELFARE & GIRLS  ACADEMY', 'KALUBOWILA-DEHIWALA', '', '', '', 1, '2025-01-15 06:46:25'),
(242, 'FASHION JEWELLERY', 'HAMBANTOTA', '', '', '', 1, '2025-01-15 06:46:34'),
(243, 'FAST PRINT', 'PASYALA', '', '', '', 1, '2025-01-15 06:46:45'),
(244, 'FASTECH PRINTERS', 'BIYAGAMA-MALWANA', '', '', '', 1, '2025-01-15 06:47:00'),
(245, 'FASTECH PRINTERS & RUBBER STAMP MAKERS', 'MALWANA', '', '', '', 1, '2025-01-15 06:47:13'),
(246, 'FATHIMA ALINA-AADHIL', 'ERAVUR-6A-BATTICALOA', '', '', '', 1, '2025-01-15 06:47:50'),
(247, 'FATHIMA OFFSET PRINTERS', 'POTTUVIL', '', '', '', 1, '2025-01-15 06:48:05'),
(248, 'FEATHER PRINT SERVICE', 'RAJAGIRIYA', '', '', '', 1, '2025-01-15 06:48:19'),
(249, 'Feather Print Services', 'Gothatuwa', '', '', '', 1, '2025-01-15 06:48:35'),
(250, 'FEDART GRAPHIC', 'ATHURUGIRIYA', '', '', '', 1, '2025-01-15 06:48:49'),
(251, 'FINTREX FINANCE', 'COLOMBO 14', '', '', '', 1, '2025-01-15 06:49:02'),
(252, 'FNF Advertise', 'AKURANA', '', '', '', 1, '2025-01-15 06:49:15'),
(253, 'FOUR COINS CREATIONS', 'WELIPILLEWA-DADIGAMUWA', '', '', '', 1, '2025-01-15 06:49:29'),
(254, 'FOWZIE', 'DEHIWALA', '', '', '', 1, '2025-01-15 06:49:41'),
(255, 'FRESCO CREATIONS', 'HIKKADUWA', '', '', '', 1, '2025-01-15 06:49:54');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', ''),
(6, 'short_name', ''),
(11, 'logo', 'uploads/1736702100_logo.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1736702100_123.jpg'),
(15, 'company_name', 'My Sample Company Co.'),
(16, 'company_email', 'info@sampleco.com'),
(17, 'company_address', 'Weerasena, Rebet Silva Ln, 10390');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2021-06-21 09:55:07'),
(3, 'Mike ', 'Williams', 'mwilliams', 'a88df23ac492e6e2782df6586a0c645f', 'uploads/1630999200_avatar5.png', NULL, 2, '2021-09-07 15:20:40', NULL),
(5, 'SUNANDA', 'MANOJ', 'SUNANDA', '7f841df2894883b91a5f1a2388c7c24b', NULL, NULL, 2, '2025-01-12 23:14:54', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `item_list`
--
ALTER TABLE `item_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD KEY `po_id` (`po_id`),
  ADD KEY `item_no` (`item_id`);

--
-- Indexes for table `po_list`
--
ALTER TABLE `po_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `supplier_list`
--
ALTER TABLE `supplier_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
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
-- AUTO_INCREMENT for table `item_list`
--
ALTER TABLE `item_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `po_list`
--
ALTER TABLE `po_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `supplier_list`
--
ALTER TABLE `supplier_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`po_id`) REFERENCES `po_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `po_list`
--
ALTER TABLE `po_list`
  ADD CONSTRAINT `po_list_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
