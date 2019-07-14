-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 14, 2019 at 09:56 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pelangi`
--

-- --------------------------------------------------------

--
-- Table structure for table `graph`
--

CREATE TABLE `graph` (
  `id_graph` int(11) NOT NULL,
  `location` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  `region` varchar(5) NOT NULL,
  `processed` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `graph`
--

INSERT INTO `graph` (`id_graph`, `location`, `status`, `region`, `processed`) VALUES
(1, 'Location A', 'Ok', 'AU', '2019-07-14 07:19:14'),
(2, 'Location B', 'Pending', 'ID', '2019-07-14 13:31:57'),
(3, 'Location C', 'Warning', 'JP', '2019-07-14 13:33:08'),
(4, 'Location D', 'Failed', 'US', '2019-07-14 13:33:43'),
(5, 'Location E', 'Ok', 'AU', '2019-07-14 07:19:14'),
(6, 'Location F', 'Pending', 'ID', '2019-07-14 13:31:57'),
(7, 'Location G', 'Warning', 'JP', '2019-07-14 13:33:08'),
(8, 'Location H', 'Failed', 'US', '2019-07-14 13:33:43'),
(9, 'Location I', 'Ok', 'AU', '2019-07-14 07:19:14'),
(10, 'Location J', 'Pending', 'ID', '2019-07-14 13:31:57'),
(11, 'Location K', 'Warning', 'JP', '2019-07-14 13:33:08'),
(12, 'Location L', 'Failed', 'US', '2019-07-14 13:33:43'),
(13, 'Location M', 'Ok', 'AU', '2019-07-14 07:19:14'),
(14, 'Location N', 'Pending', 'ID', '2019-07-14 13:31:57'),
(15, 'Location O', 'Warning', 'JP', '2019-07-14 13:33:08'),
(16, 'Location P', 'Failed', 'US', '2019-07-14 13:33:43'),
(17, 'Location Q', 'Ok', 'AU', '2019-07-14 07:19:14'),
(18, 'Location R', 'Pending', 'ID', '2019-07-14 13:31:57'),
(19, 'Location S', 'Warning', 'JP', '2019-07-14 13:33:08'),
(20, 'Location T', 'Failed', 'US', '2019-07-14 13:33:43'),
(21, 'Location V', 'Ok', 'AU', '2019-07-14 07:19:14'),
(22, 'Location W', 'Pending', 'ID', '2019-07-14 13:31:57'),
(23, 'Location X', 'Warning', 'JP', '2019-07-14 13:33:08'),
(24, 'Location Y', 'Failed', 'US', '2019-07-14 13:33:43'),
(25, 'Location Z', 'Ok', 'AU', '2019-07-14 07:19:14'),
(26, 'Location A1', 'Pending', 'ID', '2019-07-14 13:31:57'),
(27, 'Location B1', 'Warning', 'JP', '2019-07-14 13:33:08'),
(28, 'Location C1', 'Failed', 'US', '2019-07-14 13:33:43'),
(29, 'Location D1', 'Ok', 'AU', '2019-07-14 07:19:14'),
(30, 'Location E1', 'Pending', 'ID', '2019-07-14 13:31:57'),
(31, 'Location F1', 'Warning', 'JP', '2019-07-14 13:33:08'),
(32, 'Location G1', 'Failed', 'US', '2019-07-14 13:33:43'),
(33, 'Location H1', 'Ok', 'AU', '2019-07-14 07:19:14'),
(34, 'Location I1', 'Pending', 'ID', '2019-07-14 13:31:57'),
(35, 'Location J1', 'Warning', 'JP', '2019-07-14 13:33:08'),
(36, 'Location K1', 'Failed', 'US', '2019-07-14 13:33:43'),
(37, 'Location L1', 'Ok', 'AU', '2019-07-14 07:19:14'),
(38, 'Location M1', 'Pending', 'ID', '2019-07-14 13:31:57'),
(39, 'Location N1', 'Warning', 'JP', '2019-07-14 13:33:08'),
(40, 'Location O1', 'Failed', 'US', '2019-07-14 13:33:43'),
(41, 'Location P1', 'Ok', 'AU', '2019-07-14 07:19:14'),
(42, 'Location Q1', 'Pending', 'ID', '2019-07-14 13:31:57'),
(43, 'Location R1', 'Warning', 'JP', '2019-07-14 13:33:08'),
(44, 'Location S1', 'Failed', 'US', '2019-07-14 13:33:43'),
(45, 'Location T1', 'Ok', 'AU', '2019-07-14 07:19:14'),
(46, 'Location U1', 'Ok', 'ID', '2019-07-14 13:31:57'),
(47, 'Location V1', 'Failed', 'JP', '2019-07-14 13:33:08'),
(48, 'Location W1', 'Failed', 'US', '2019-07-14 13:33:43'),
(49, 'Location X1', 'Warning', 'AU', '2019-07-14 07:19:14'),
(50, 'Location Y1', 'Warning', 'ID', '2019-07-14 13:31:57'),
(51, 'Location Z1', 'Pending', 'JP', '2019-07-14 13:33:08'),
(52, 'Location A2', 'Failed', 'US', '2019-07-14 13:33:43'),
(53, 'Location B2', 'Ok', 'AU', '2019-07-14 07:19:14'),
(54, 'Location C2', 'Ok', 'ID', '2019-07-14 13:31:57'),
(55, 'Location D2', 'Ok', 'JP', '2019-07-14 13:33:08'),
(56, 'Location E2', 'Ok', 'US', '2019-07-14 13:33:43'),
(57, 'Location F2', 'Warning', 'AU', '2019-07-14 13:41:31'),
(58, 'Location G2', 'Pending', 'ID', '2019-07-14 13:41:31'),
(59, 'Location H2', 'Pending', 'JP', '2019-07-14 13:41:31'),
(60, 'Location I2', 'Pending', 'US', '2019-07-14 13:41:31'),
(61, 'Location J2', 'Warning', 'AU', '2019-07-14 13:43:09'),
(62, 'Location K2', 'Ok', 'ID', '2019-07-14 13:43:09'),
(63, 'Location L2', 'Pending', 'JP', '2019-07-14 13:43:09'),
(64, 'Location M2', 'Pending', 'US', '2019-07-14 13:43:09'),
(65, 'Location N2', 'Pending', 'US', '2019-07-14 13:43:09'),
(66, 'Location O2', 'Ok', 'US', '2019-07-14 13:43:09'),
(67, 'Location P2', 'Warning', 'US', '2019-07-14 13:43:09'),
(68, 'Location Q2', 'Warning', 'US', '2019-07-14 13:43:09'),
(69, 'Location R2', 'Pending', 'US', '2019-07-14 13:43:09'),
(70, 'Location S2', 'Pending', 'US', '2019-07-14 13:43:09'),
(71, 'Location T2', 'Warning', 'AU', '2019-07-14 13:45:46'),
(72, 'Location U2', 'Ok', 'ID', '2019-07-14 13:45:46'),
(73, 'Location V2', 'Pending', 'JP', '2019-07-14 13:45:46'),
(74, 'Location W2', 'Pending', 'US', '2019-07-14 13:45:46'),
(75, 'Location X2', 'Pending', 'US', '2019-07-14 13:45:46'),
(76, 'Location Y2', 'Ok', 'US', '2019-07-14 13:45:46'),
(77, 'Location Z2', 'Warning', 'US', '2019-07-14 13:45:46'),
(78, 'Location A3', 'Warning', 'US', '2019-07-14 13:45:46'),
(79, 'Location B3', 'Pending', 'US', '2019-07-14 13:45:46'),
(80, 'Location C3', 'Pending', 'US', '2019-07-14 13:45:46'),
(81, 'Location D3', 'Warning', 'AU', '2019-07-14 13:46:20'),
(82, 'Location E3', 'Ok', 'ID', '2019-07-14 13:46:20'),
(83, 'Location F3', 'Pending', 'JP', '2019-07-14 13:46:20'),
(84, 'Location G3', 'Pending', 'US', '2019-07-14 13:46:20'),
(85, 'Location H3', 'Pending', 'US', '2019-07-14 13:46:20'),
(86, 'Location I3', 'Ok', 'US', '2019-07-14 13:46:20'),
(87, 'Location J3', 'Warning', 'US', '2019-07-14 13:46:20'),
(88, 'Location K3', 'Warning', 'US', '2019-07-14 13:46:20'),
(89, 'Location L3', 'Pending', 'US', '2019-07-14 13:46:20'),
(90, 'Location M3', 'Pending', 'US', '2019-07-14 13:46:20'),
(91, 'Location N3', 'Warning', 'AU', '2019-07-14 13:47:07'),
(92, 'Location O3', 'Ok', 'ID', '2019-07-14 13:47:07'),
(93, 'Location P3', 'Pending', 'JP', '2019-07-14 13:47:07'),
(94, 'Location Q3', 'Pending', 'US', '2019-07-14 13:47:07'),
(95, 'Location R3', 'Pending', 'US', '2019-07-14 13:47:07'),
(96, 'Location S3', 'Ok', 'US', '2019-07-14 13:47:07'),
(97, 'Location T3', 'Warning', 'JP', '2019-07-14 13:47:07'),
(98, 'Location U3', 'Warning', 'ID', '2019-07-14 13:47:07'),
(99, 'Location V3', 'Pending', 'ID', '2019-07-14 13:47:07'),
(100, 'Location W3', 'Pending', 'AU', '2019-07-14 13:47:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `graph`
--
ALTER TABLE `graph`
  ADD PRIMARY KEY (`id_graph`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `graph`
--
ALTER TABLE `graph`
  MODIFY `id_graph` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
