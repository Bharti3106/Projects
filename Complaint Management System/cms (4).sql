-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2021 at 06:20 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', '16-06-2021 07:00:23 PM');

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `id` int(11) NOT NULL,
  `areaName` varchar(50) DEFAULT NULL,
  `areaDescription` tinytext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`id`, `areaName`, `areaDescription`, `postingDate`, `updationDate`) VALUES
(1, 'Putlighar', '', '2021-07-09 16:22:19', NULL),
(2, 'Chehartta', '', '2021-07-10 08:01:25', NULL),
(3, 'Albert Chowk', '', '2021-07-10 08:01:56', NULL),
(4, 'LawrenceRoad', '', '2021-07-10 08:02:54', NULL),
(5, 'Bus Stand', '', '2021-07-13 11:40:16', NULL),
(6, 'Hall Gate', '', '2021-07-13 11:40:38', NULL),
(7, 'Lohri Gate', '', '2021-07-13 11:41:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Complaints regardings Street lighting ', 'Here, User can register their complaint regarding street ligth problems', '2021-07-11 12:32:37', NULL),
(2, 'Complaints regarding water supply', 'In this, The Complainer can submit their complaint related to the water issues,they are facing. ', '2021-07-11 12:34:27', NULL),
(3, 'Complaints regarding Garbage Disposal', 'Under this section ,The  Complainer can lodge their complaint regarding the waste disposal problem.', '2021-07-11 12:36:35', NULL),
(5, 'Complaints regarding Sewrage', 'In this section, The User can submit their complaints related to sewrage issues they are facing their locality.', '2021-07-11 12:41:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `cityName` varchar(50) DEFAULT NULL,
  `cityDescription` tinytext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `cityName`, `cityDescription`, `postingDate`, `updationDate`) VALUES
(1, 'Amritsar', '', '2021-07-09 15:38:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE `complaintremark` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(1, 1, 'in process', 'i will take action on it ', '2021-07-13 09:23:45'),
(2, 1, 'closed', 'closed', '2021-07-13 13:39:16'),
(3, 3, 'in process', 'sfdrtw6yejklm,', '2021-07-13 14:27:24'),
(4, 4, 'in process', 'ghyuiop', '2021-07-13 14:53:18'),
(5, 3, 'in process', 'i take action on this complaint', '2021-07-13 15:52:35'),
(6, 6, 'in process', 'i will take action', '2021-07-13 15:54:05'),
(7, 7, 'in process', 'sdfyui', '2021-07-13 16:14:42');

-- --------------------------------------------------------

--
-- Table structure for table `complaint_assgin`
--

CREATE TABLE `complaint_assgin` (
  `id` int(11) NOT NULL,
  `complaint_id` int(11) NOT NULL,
  `engineer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `assigndate` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `comment` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `engineerlog`
--

CREATE TABLE `engineerlog` (
  `id` int(11) NOT NULL,
  `eid` int(11) NOT NULL,
  `engineername` varchar(50) CHARACTER SET latin1 NOT NULL,
  `engineerip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `engineerlog`
--

INSERT INTO `engineerlog` (`id`, `eid`, `engineername`, `engineerip`, `loginTime`, `logout`, `status`) VALUES
(1, 1, 'bhartichahal3106@gmail.com', 0x00000000000000000000000000000000, '2021-07-11 18:17:04', '', 1),
(2, 1, 'bhartichahal3106@gmail.com', 0x00000000000000000000000000000000, '2021-07-13 11:35:13', '', 1),
(3, 2, 'sharmamanvi889@gmail.com', 0x00000000000000000000000000000000, '2021-07-13 11:43:03', '', 1),
(4, 2, 'sharmamanvi889@gmail.com', 0x00000000000000000000000000000000, '2021-07-13 11:54:49', '', 1),
(5, 1, 'bhartichahal3106@gmail.com', 0x00000000000000000000000000000000, '2021-07-13 11:55:11', '', 1),
(6, 1, 'bhartichahal3106@gmail.com', 0x00000000000000000000000000000000, '2021-07-13 12:12:09', '', 1),
(7, 2, 'sharmamanvi889@gmail.com', 0x00000000000000000000000000000000, '2021-07-13 12:19:28', '', 1),
(8, 2, 'sharmamanvi889@gmail.com', 0x00000000000000000000000000000000, '2021-07-13 12:21:37', '', 1),
(9, 2, 'sharmamanvi889@gmail.com', 0x00000000000000000000000000000000, '2021-07-13 12:22:22', '', 1),
(10, 2, 'sharmamanvi889@gmail.com', 0x00000000000000000000000000000000, '2021-07-13 12:35:22', '', 1),
(11, 2, 'sharmamanvi889@gmail.com', 0x00000000000000000000000000000000, '2021-07-13 12:38:44', '', 1),
(12, 2, 'sharmamanvi889@gmail.com', 0x00000000000000000000000000000000, '2021-07-13 12:50:22', '', 1),
(13, 2, 'sharmamanvi889@gmail.com', 0x00000000000000000000000000000000, '2021-07-13 12:56:11', '', 1),
(14, 2, 'sharmamanvi889@gmail.com', 0x00000000000000000000000000000000, '2021-07-13 13:08:48', '', 1),
(15, 2, 'sharmamanvi889@gmail.com', 0x00000000000000000000000000000000, '2021-07-13 13:23:03', '', 1),
(16, 2, 'sharmamanvi889@gmail.com', 0x00000000000000000000000000000000, '2021-07-13 13:27:19', '', 1),
(17, 2, 'sharmamanvi889@gmail.com', 0x00000000000000000000000000000000, '2021-07-13 13:36:16', '', 1),
(18, 2, 'sharmamanvi889@gmail.com', 0x00000000000000000000000000000000, '2021-07-13 13:41:14', '', 1),
(19, 2, 'sharmamanvi889@gmail.com', 0x00000000000000000000000000000000, '2021-07-13 13:56:31', '', 1),
(20, 2, 'sharmamanvi889@gmail.com', 0x00000000000000000000000000000000, '2021-07-13 13:58:23', '', 1),
(21, 2, 'sharmamanvi889@gmail.com', 0x00000000000000000000000000000000, '2021-07-13 13:59:57', '', 1),
(22, 2, 'sharmamanvi889@gmail.com', 0x00000000000000000000000000000000, '2021-07-13 14:00:36', '', 1),
(23, 2, 'sharmamanvi889@gmail.com', 0x00000000000000000000000000000000, '2021-07-13 14:07:43', '', 1),
(24, 2, 'sharmamanvi889@gmail.com', 0x00000000000000000000000000000000, '2021-07-13 14:09:15', '', 1),
(25, 2, 'sharmamanvi889@gmail.com', 0x00000000000000000000000000000000, '2021-07-13 14:11:27', '', 1),
(26, 2, 'sharmamanvi889@gmail.com', 0x00000000000000000000000000000000, '2021-07-13 14:42:02', '', 1),
(27, 2, 'sharmamanvi889@gmail.com', 0x00000000000000000000000000000000, '2021-07-13 14:45:15', '', 1),
(28, 2, 'sharmamanvi889@gmail.com', 0x00000000000000000000000000000000, '2021-07-13 14:47:02', '', 1),
(29, 2, 'sharmamanvi889@gmail.com', 0x00000000000000000000000000000000, '2021-07-13 14:55:59', '', 1),
(30, 3, 'bhattmuskan328@gmail.com', 0x00000000000000000000000000000000, '2021-07-13 15:48:26', '', 1),
(31, 2, 'sharmamanvi889@gmail.com', 0x00000000000000000000000000000000, '2021-07-13 15:50:40', '', 1),
(32, 2, 'sharmamanvi889@gmail.com', 0x00000000000000000000000000000000, '2021-07-13 16:11:29', '', 1),
(33, 2, 'sharmamanvi889@gmail.com', 0x00000000000000000000000000000000, '2021-07-13 16:13:07', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `engineers`
--

CREATE TABLE `engineers` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `engineerEmail` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `password` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `address` tinytext CHARACTER SET latin1 DEFAULT NULL,
  `State` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `country` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `engineerImage` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `engineers`
--

INSERT INTO `engineers` (`id`, `fullName`, `engineerEmail`, `password`, `contactNo`, `address`, `State`, `country`, `pincode`, `engineerImage`, `regDate`, `updationDate`, `status`) VALUES
(1, 'bharti', 'Bhartichahal3106@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 8557999205, NULL, NULL, NULL, NULL, NULL, '2021-07-11 18:15:55', '0000-00-00 00:00:00', 1),
(2, 'manvi', 'sharmamanvi889@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 6239328260, NULL, NULL, NULL, NULL, NULL, '2021-07-13 11:36:10', '0000-00-00 00:00:00', 1),
(3, 'muskaan', 'bhattmuskan328@gmail.com', '4a2d14b5ddab7284dfc2d61b9c4dec93', 6283657059, NULL, NULL, NULL, NULL, NULL, '2021-07-13 15:47:17', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `stateName` varchar(255) DEFAULT NULL,
  `stateDescription` tinytext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `stateName`, `stateDescription`, `postingDate`, `updationDate`) VALUES
(7, 'Punjab', '', '2021-07-09 11:49:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, 'Lights are not working', '2021-07-11 12:53:41', NULL),
(2, 1, 'Poor condition of light', '2021-07-11 12:54:15', NULL),
(3, 1, 'Blinking of lights', '2021-07-11 15:50:34', NULL),
(4, 1, 'Current passing through poles', '2021-07-11 15:50:44', NULL),
(6, 2, 'Dirty water supply', '2021-07-11 18:40:36', NULL),
(7, 2, 'Irregular or poor supply of water', '2021-07-11 18:40:49', NULL),
(8, 2, 'Damage water pipes', '2021-07-11 18:41:02', NULL),
(9, 2, 'Water leakage', '2021-07-11 18:41:23', NULL),
(10, 5, 'Overflow problems of sewrage', '2021-07-11 18:42:50', NULL),
(11, 5, 'Blockage of colony sewrage', '2021-07-11 18:43:16', NULL),
(12, 5, 'Blockage of main sewrage', '2021-07-11 18:43:34', NULL),
(13, 3, 'Garbage lifting is irregular', '2021-07-11 18:45:51', NULL),
(14, 3, 'Poor condition of garbage dustbins', '2021-07-11 18:46:16', NULL),
(15, 3, 'Garbage dustbins are not available', '2021-07-11 18:46:50', NULL),
(16, 3, 'Overflow of garbage bin', '2021-07-11 18:47:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tab_engineer`
--

CREATE TABLE `tab_engineer` (
  `id` int(11) NOT NULL,
  `login_id` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `engineerImage` varchar(300) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

CREATE TABLE `tblcomplaints` (
  `complaintNumber` int(11) NOT NULL,
  `userId` varchar(50) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `complaintType` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `noc` varchar(255) DEFAULT NULL,
  `complaintDetails` mediumtext DEFAULT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomplaints`
--

INSERT INTO `tblcomplaints` (`complaintNumber`, `userId`, `category`, `subcategory`, `complaintType`, `area`, `noc`, `complaintDetails`, `complaintFile`, `regDate`, `status`, `lastUpdationDate`) VALUES
(1, '1', 1, 'Lights are not working', 'General Query', 'Punjab', 'wbhhu8ik', 'edufur8ueirjkmmlroillkp', 'water suppli1.jpg', '2021-07-13 08:18:19', 'closed', '2021-07-13 13:39:16'),
(2, 'amarjeetsingh3106@gmail.com', 2, 'Irregular or poor supply of water', 'General Query', 'Punjab', 'Normal', 'beurjor', '', '2021-07-13 08:23:19', NULL, NULL),
(3, '1', 1, 'Poor condition of light', 'General Query', 'Punjab', 'Normal', 'adtni', 'water suppli1.jpg', '2021-07-13 08:56:07', 'in process', '2021-07-13 14:27:24'),
(4, '1', 1, 'Poor condition of light', ' Complaint', 'Chehartta', 'Normal', 'gjcrxft6y7u8komlkgvt', '', '2021-07-13 09:13:11', 'in process', '2021-07-13 14:53:18'),
(5, '1', 2, 'Dirty water supply', 'General Query', 'Punjab', 'Normal', 'seart567y8u9iop,mnbnvcgdte567890-p', '', '2021-07-13 09:54:59', 'in process', '2021-07-13 15:02:04'),
(6, '1', 1, 'Lights are not working', 'General Query', 'Punjab', 'erwerw', 'werwerwer', 'cms (3).sql', '2021-07-13 09:58:37', 'in process', '2021-07-13 15:54:05'),
(7, '1', 1, 'Lights are not working', ' Complaint', 'Punjab', 'Normal', 'zHBGYS&90opl', '', '2021-07-13 10:04:51', 'in process', '2021-07-13 16:13:35'),
(8, '1', 1, 'Blinking of lights', 'General Query', 'Punjab', 'Normal', 'sqgct67y8ueowkpl;.h/g?', '', '2021-07-13 10:09:32', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 0, 'amarjeetsingh3106@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-11 18:13:47', '', 0),
(2, 1, 'amarjeetsingh3106@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-11 18:14:13', '', 1),
(3, 1, 'amarjeetsingh3106@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-11 18:25:27', '', 1),
(4, 1, 'amarjeetsingh3106@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-13 07:23:15', '', 1),
(5, 1, 'amarjeetsingh3106@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-13 07:23:15', '13-07-2021 12:54:15 PM', 1),
(6, 0, 'bhartichahal3106@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-13 07:24:24', '', 0),
(7, 0, 'bhartichahal3106@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-13 07:24:38', '', 0),
(8, 0, 'bhartichahal3106@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-13 07:25:08', '', 0),
(9, 1, 'amarjeetsingh3106@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-13 07:26:06', '', 1),
(10, 1, 'amarjeetsingh3106@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-13 08:13:21', '', 1),
(11, 1, 'amarjeetsingh3106@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-13 08:15:57', '', 1),
(12, 1, 'amarjeetsingh3106@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-13 08:17:45', '13-07-2021 02:29:55 PM', 1),
(13, 1, 'amarjeetsingh3106@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-13 09:05:50', '13-07-2021 02:44:33 PM', 1),
(14, 1, 'amarjeetsingh3106@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-13 09:28:30', '13-07-2021 03:15:44 PM', 1),
(15, 1, 'amarjeetsingh3106@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-13 09:52:38', '', 1),
(16, 1, 'amarjeetsingh3106@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-13 10:08:56', '', 1),
(17, 0, 'bhartichahal3106@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-13 10:10:27', '', 0),
(18, 0, 'bhartichahal3106@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-13 10:10:37', '', 0),
(19, 0, 'bhartichahal3106@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-13 10:10:45', '', 0),
(20, 0, 'bhartichahal3106@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-13 10:11:06', '13-07-2021 05:05:49 PM', 0),
(21, 1, 'amarjeetsingh3106@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-13 11:20:37', '13-07-2021 04:56:32 PM', 1),
(22, 0, 'muskaanchahal3106@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-13 11:29:37', '', 0),
(23, 0, 'muskaanchahal3106@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-13 11:29:59', '', 0),
(24, 1, 'amarjeetsingh3106@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-13 11:39:19', '13-07-2021 05:12:13 PM', 1),
(25, 1, 'amarjeetsingh3106@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-13 11:44:47', '13-07-2021 05:15:09 PM', 1),
(26, 0, 'amarjeetsingh3106@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-13 11:57:39', '', 0),
(27, 1, 'amarjeetsingh3106@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-13 11:57:45', '', 1),
(28, 1, 'amarjeetsingh3106@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-13 13:07:16', '', 1),
(29, 0, 'admin', 0x3a3a3100000000000000000000000000, '2021-07-13 13:14:49', '', 0),
(30, 1, 'amarjeetsingh3106@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-13 13:15:04', '', 1),
(31, 1, 'amarjeetsingh3106@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-13 13:32:07', '13-07-2021 07:02:40 PM', 1),
(32, 1, 'amarjeetsingh3106@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-13 14:55:20', '13-07-2021 08:25:51 PM', 1),
(33, 6, 'bhattmuskan328@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-13 15:36:09', '', 1),
(34, 6, 'bhattmuskan328@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-13 15:43:54', '', 1),
(35, 1, 'amarjeetsingh3106@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-13 15:44:49', '', 1),
(36, 1, 'amarjeetsingh3106@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-13 15:56:26', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `address` tinytext DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `address`, `State`, `country`, `pincode`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(1, 'Amarjeet', 'Amarjeetsingh3106@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 9888875122, NULL, NULL, NULL, NULL, NULL, '2021-07-11 18:12:27', '0000-00-00 00:00:00', 1),
(5, 'muskaan', 'muskaanchahal3106@gmail.com', 'e77081d6b3e2c7b847f93e0f90dcdb54', 6283966988, NULL, NULL, NULL, NULL, NULL, '2021-07-13 11:27:15', '0000-00-00 00:00:00', 1),
(6, 'muskaan', 'bhattmuskan328@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 6283657059, 'house no9', 'Punjab', 'India', 143001, NULL, '2021-07-13 15:34:26', '2021-07-13 15:39:05', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintremark`
--
ALTER TABLE `complaintremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaint_assgin`
--
ALTER TABLE `complaint_assgin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fb_comid` (`complaint_id`),
  ADD KEY `fb_engid` (`engineer_id`),
  ADD KEY `fb_userid` (`user_id`);

--
-- Indexes for table `engineerlog`
--
ALTER TABLE `engineerlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `engineers`
--
ALTER TABLE `engineers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tab_engineer`
--
ALTER TABLE `tab_engineer`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  ADD PRIMARY KEY (`complaintNumber`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `complaintremark`
--
ALTER TABLE `complaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `engineerlog`
--
ALTER TABLE `engineerlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `engineers`
--
ALTER TABLE `engineers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  MODIFY `complaintNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `complaint_assgin`
--
ALTER TABLE `complaint_assgin`
  ADD CONSTRAINT `fb_comid` FOREIGN KEY (`complaint_id`) REFERENCES `tblcomplaints` (`complaintNumber`),
  ADD CONSTRAINT `fb_engid` FOREIGN KEY (`engineer_id`) REFERENCES `engineers` (`id`),
  ADD CONSTRAINT `fb_userid` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
