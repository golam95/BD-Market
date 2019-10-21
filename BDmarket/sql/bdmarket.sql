-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2019 at 03:22 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bakery`
--
CREATE DATABASE IF NOT EXISTS `bakery` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bakery`;

-- --------------------------------------------------------

--
-- Table structure for table `addempsallary`
--

CREATE TABLE `addempsallary` (
  `sall_id` int(11) NOT NULL,
  `sall_emptype` varchar(100) NOT NULL,
  `emp_sallary` varchar(100) NOT NULL,
  `medical_value` varchar(100) NOT NULL,
  `transaction_value` varchar(100) NOT NULL,
  `absant_value` varchar(100) NOT NULL,
  `tax_value` varchar(100) NOT NULL,
  `shelter_value` varchar(100) NOT NULL,
  `meal_value` varchar(100) NOT NULL,
  `sall_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addempsallary`
--

INSERT INTO `addempsallary` (`sall_id`, `sall_emptype`, `emp_sallary`, `medical_value`, `transaction_value`, `absant_value`, `tax_value`, `shelter_value`, `meal_value`, `sall_date`) VALUES
(1, 'sager', '500', '5', '5', '5', '5', '5', '5', '2018-03-18');

-- --------------------------------------------------------

--
-- Table structure for table `attend`
--

CREATE TABLE `attend` (
  `aId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `roll` varchar(255) NOT NULL DEFAULT '0',
  `attend` varchar(255) DEFAULT NULL,
  `att_date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attend`
--

INSERT INTO `attend` (`aId`, `userId`, `name`, `roll`, `attend`, `att_date`) VALUES
(26, 8, 'gdfg', '00125', 'absent', '2017-04-25'),
(25, 5, 'fe', '00123', 'present', '2017-04-05'),
(24, 7, 'hfh', '00124', 'absent', '2017-04-05'),
(23, 8, 'gdfg', '00125', 'present', '2017-04-05'),
(22, 5, 'fe', '00123', 'present', '2017-04-13'),
(21, 7, 'hfh', '00124', 'absent', '2017-04-13'),
(20, 8, 'gdfg', '00125', 'present', '2017-04-13'),
(19, 5, 'fe', '00123', 'present', '2017-04-03'),
(18, 7, 'hfh', '00124', 'present', '2017-04-03'),
(17, 8, 'gdfg', '00125', 'absent', '2017-04-03'),
(27, 7, 'hfh', '00124', 'present', '2017-04-25'),
(28, 5, 'fe', '00123', 'absent', '2017-04-25'),
(29, 15, 'Md amanath shah', '00125', 'present', '2017-05-03'),
(30, 14, 'jamal', '00124', 'absent', '2017-05-03'),
(31, 5, 'fe', '00123', 'present', '2017-05-03');

-- --------------------------------------------------------

--
-- Table structure for table `bakeryowner`
--

CREATE TABLE `bakeryowner` (
  `ow_id` int(11) NOT NULL,
  `ow_name` varchar(100) NOT NULL,
  `ow_email` varchar(100) NOT NULL,
  `ow_contactno` varchar(100) NOT NULL,
  `ow_location` varchar(100) NOT NULL,
  `ow_link` varchar(100) NOT NULL,
  `ow_sex` varchar(100) NOT NULL,
  `ow_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bakeryowner`
--

INSERT INTO `bakeryowner` (`ow_id`, `ow_name`, `ow_email`, `ow_contactno`, `ow_location`, `ow_link`, `ow_sex`, `ow_date`) VALUES
(1, 'Habib', 'hasan@gmail.com', '01838383838', 'Mohammadpur Society8', 'https://translate.google.com/', 'Male', '2018-03-14');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brandId`, `brandName`) VALUES
(1, 'Acer'),
(2, 'Samsung'),
(4, 'Walton'),
(5, 'LG');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartId` int(11) NOT NULL,
  `sId` varchar(255) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartId`, `sId`, `productId`, `productName`, `price`, `quantity`, `image`) VALUES
(15, '99oggd3pvsl886jisefev5fkl4', 1, 'Camera mine', 500, 1, 'upload/aef0b028a9.png'),
(2, 'sqot298tvtid139p05u3fv94q3', 3, 'flower', 90, 5, 'upload/ac235ac821.png'),
(16, '29l72c8k97rcv10p6da9gkna24', 1, 'Camera mine', 500, 1, 'upload/aef0b028a9.png'),
(40, 'nto3b7c0gjoa0scss2pgofc2l2', 3, 'flower', 90, 1, 'upload/ac235ac821.png'),
(45, 'oo8klsag1596ir0inguvnidv43', 3, 'flower', 90, 1, 'upload/ac235ac821.png'),
(46, 'domqcea96b6mpp32hklfg00p15', 4, 'samsun225', 4000, 1, 'upload/d797f7b6b6.jpg'),
(47, 'domqcea96b6mpp32hklfg00p15', 3, 'flower', 90, 1, 'upload/ac235ac821.png'),
(48, 'mkplpm75muus08ope60s9r7l27', 4, 'samsun225', 4000, 1, 'upload/d797f7b6b6.jpg'),
(49, '5bu9sdbmgdlmm6bsqdel6qc053', 4, 'samsun225', 4000, 1, 'upload/d797f7b6b6.jpg'),
(59, '2poclv5g7o6lia2q2r8uspgai4', 4, 'samsun225', 4000, 1, 'upload/d797f7b6b6.jpg'),
(61, '2l61qgq13a32bgidpvpvtp1gq6', 3, 'flower', 90, 1, 'upload/ac235ac821.png'),
(62, 'i27lbbsism5md4an38c5ipv982', 3, 'flower', 90, 1, 'upload/ac235ac821.png'),
(119, 'ni1q59l45b1t1958siva6ol361', 6, 'mobile', 4000, 1, 'upload/65103d15d8.jpg'),
(118, '22cmm6506fmcs381n8qi1elnv0', 3, 'flower', 90, 1, 'upload/ac235ac821.png'),
(117, '22cmm6506fmcs381n8qi1elnv0', 6, 'mobile', 4000, 2, 'upload/65103d15d8.jpg'),
(120, 'ub1oaeru36e7mpflvvpem4reg0', 3, 'flower', 90, 1, 'upload/ac235ac821.png');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catId`, `catName`) VALUES
(2, 'Laptop'),
(3, 'Mobile Phone'),
(5, 'tablet'),
(6, 'cloths'),
(7, 'Iphone'),
(10, 'ddd');

-- --------------------------------------------------------

--
-- Table structure for table `compare`
--

CREATE TABLE `compare` (
  `comId` int(11) NOT NULL,
  `cusId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contactid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobileNo` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contactid`, `name`, `mobileNo`, `email`, `body`, `status`, `date`) VALUES
(7, 'Md. Hassan', '01751238337', 'mahmud@gmail.com', 'product  is damage', 0, '2017-05-02 15:33:07'),
(5, 'mojjamel', 'haque', 'dnight950@gmail.com', 'iiuuuuuuuuuuuuuuuuuu\r\nkkkkkkkkkkkkk', 0, '2017-02-13 18:13:36'),
(4, 'salauddin', 'rahman', 'kh@d.co', 'fdfdsagdfgdfg dfdafgsd dfgadfg', 1, '2017-02-13 17:50:39');

-- --------------------------------------------------------

--
-- Table structure for table `customerinfo`
--

CREATE TABLE `customerinfo` (
  `cus_id` int(11) NOT NULL,
  `cus_name` varchar(100) NOT NULL,
  `cus_email` varchar(100) NOT NULL,
  `cus_nid` varchar(100) NOT NULL,
  `cus_contactno` varchar(100) NOT NULL,
  `cus_shopname` varchar(100) NOT NULL,
  `cus_shoplocation` varchar(100) NOT NULL,
  `cus_address` varchar(100) NOT NULL,
  `cus_sex` varchar(100) NOT NULL,
  `cus_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerinfo`
--

INSERT INTO `customerinfo` (`cus_id`, `cus_name`, `cus_email`, `cus_nid`, `cus_contactno`, `cus_shopname`, `cus_shoplocation`, `cus_address`, `cus_sex`, `cus_date`) VALUES
(1, 'Kawsar', 'kawsar@gmail.com', '09876543', '01234567894', 'KawStore', 'Mohamadia housing 8/B', 'Belkuchi', 'Male', '2018-03-14'),
(2, 'Khalid Ahasan', 'khalid@gmail.com', '37484393897', '12345678906', 'rima Store', 'Mohamadia housing 8/B', 'Dhaka', 'Male', '2018-03-15');

-- --------------------------------------------------------

--
-- Table structure for table `cus_order`
--

CREATE TABLE `cus_order` (
  `orderId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cus_order`
--

INSERT INTO `cus_order` (`orderId`, `userId`, `productId`, `productName`, `quantity`, `price`, `image`, `date`, `status`) VALUES
(58, 5, 6, 'mobile', 5, 20000, 'upload/65103d15d8.jpg', '2017-05-03 01:08:51', 0),
(59, 16, 7, 'Walton mobile', 1, 25000, 'upload/c08b783ad1.jpg', '2017-05-03 10:20:33', 0),
(50, 9, 3, 'flower', 1, 90, 'upload/ac235ac821.png', '2017-04-20 03:59:48', 1),
(61, 2, 4, 'love biscutes', 1, 50, 'upload/111cf42d10.jpg', '2018-03-10 09:51:18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_backup`
--

CREATE TABLE `db_backup` (
  `db_id` int(11) NOT NULL,
  `db_name` varchar(100) NOT NULL,
  `db_description` varchar(250) NOT NULL,
  `db_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_backup`
--

INSERT INTO `db_backup` (`db_id`, `db_name`, `db_description`, `db_date`) VALUES
(1, 'Bakery Backup sql', 'db-backup1521152313-c7c9b782c9fa6bf5f57fb6a3276a37ef.sql', '2018-03-15'),
(2, 'Backup File', 'db-backup1521152951-c7c9b782c9fa6bf5f57fb6a3276a37ef.sql', '2018-03-15'),
(3, 'Backup File', 'db-backup1521209245-c7c9b782c9fa6bf5f57fb6a3276a37ef.sql', '2018-03-16');

-- --------------------------------------------------------

--
-- Table structure for table `employeeinfo`
--

CREATE TABLE `employeeinfo` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `emp_designation` varchar(100) NOT NULL,
  `emp_address` varchar(100) NOT NULL,
  `emp_sex` text NOT NULL,
  `emp_nid` varchar(100) NOT NULL,
  `emp_contactno` varchar(100) NOT NULL,
  `emp_worktype` varchar(100) NOT NULL,
  `emp_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeeinfo`
--

INSERT INTO `employeeinfo` (`emp_id`, `emp_name`, `emp_designation`, `emp_address`, `emp_sex`, `emp_nid`, `emp_contactno`, `emp_worktype`, `emp_date`) VALUES
(1, 'Shakib Hasan', 'External Employee', 'Garamashi', 'Male', '012345678', '01718512693', 'Full-Time', '2018-03-14'),
(2, 'Sakil', 'Internal Employee', 'g', 'Male', '3567894321', '12345678976', 'Half-Time', '2018-03-18');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `date`, `created`, `modified`, `status`) VALUES
(1, 'Birthday', '2018-03-18', '2018-03-18', '2018-03-18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `monthly_report`
--

CREATE TABLE `monthly_report` (
  `month_id` int(11) NOT NULL,
  `month_cusonline` varchar(100) NOT NULL,
  `month_cusoffline` varchar(100) NOT NULL,
  `month_orderonline` varchar(100) NOT NULL,
  `month_orderoffline` varchar(100) NOT NULL,
  `month_orderothers` varchar(100) NOT NULL,
  `month_orderhere` varchar(100) NOT NULL,
  `month_costinternal` varchar(100) NOT NULL,
  `month_costexternal` varchar(100) NOT NULL,
  `month_warehouse` varchar(100) NOT NULL,
  `month_sellothers` varchar(100) NOT NULL,
  `month_costhere` varchar(100) NOT NULL,
  `month_totalcost` varchar(100) NOT NULL,
  `month_benefit` varchar(100) NOT NULL,
  `month_status` varchar(100) NOT NULL,
  `month_year` varchar(100) NOT NULL,
  `month_mon` varchar(100) NOT NULL,
  `month_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `monthly_report`
--

INSERT INTO `monthly_report` (`month_id`, `month_cusonline`, `month_cusoffline`, `month_orderonline`, `month_orderoffline`, `month_orderothers`, `month_orderhere`, `month_costinternal`, `month_costexternal`, `month_warehouse`, `month_sellothers`, `month_costhere`, `month_totalcost`, `month_benefit`, `month_status`, `month_year`, `month_mon`, `month_date`) VALUES
(1, '200', '30', '33', '44', '44', '33', '4', '55', '5', '4', '3', '4', '5', '4', '2018', 'March', '2018-03-18');

-- --------------------------------------------------------

--
-- Table structure for table `order_offline`
--

CREATE TABLE `order_offline` (
  `or_id` int(11) NOT NULL,
  `or_shopkeepername` varchar(100) NOT NULL,
  `or_servicename` varchar(100) NOT NULL,
  `or_month` varchar(100) NOT NULL,
  `or_year` varchar(100) NOT NULL,
  `or_prodes` varchar(100) NOT NULL,
  `or_updateprice` double NOT NULL DEFAULT '0',
  `or_dueprice` double NOT NULL DEFAULT '0',
  `or_totalprice` double NOT NULL DEFAULT '0',
  `or_status` varchar(10) NOT NULL,
  `or_date` date NOT NULL,
  `or_deliverydate` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_offline`
--

INSERT INTO `order_offline` (`or_id`, `or_shopkeepername`, `or_servicename`, `or_month`, `or_year`, `or_prodes`, `or_updateprice`, `or_dueprice`, `or_totalprice`, `or_status`, `or_date`, `or_deliverydate`) VALUES
(3, 'Golam', 'Sheikh', 'March', '2018', 'tt,yy', 250, 50, 300, 'Due', '2018-03-18', '2018-03-23');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `pid` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`pid`, `name`, `body`) VALUES
(2, 'About Us', 'sfdfgdshgdfghsf');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `pmId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `total_amount` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`pmId`, `userId`, `productId`, `quantity`, `total_amount`, `date`) VALUES
(1, 9, 1, 10, 5000, '2017-04-07 14:39:49'),
(2, 3, 3, 1, 90, '2017-04-17 18:57:40'),
(3, 3, 3, 1, 90, '2017-04-17 18:57:49'),
(4, 3, 3, 1, 90, '2017-04-17 19:03:48'),
(5, 3, 4, 1, 4000, '2017-04-17 19:08:06'),
(6, 9, 6, 3, 12000, '2017-04-18 15:27:03'),
(7, 9, 3, 2, 180, '2017-04-18 15:31:17'),
(8, 2, 6, 1, 4000, '2017-04-18 16:25:22'),
(9, 2, 3, 1, 90, '2017-04-18 16:41:57'),
(10, 2, 3, 1, 90, '2017-04-18 16:44:27'),
(11, 7, 6, 1, 4000, '2017-04-18 16:45:46'),
(12, 7, 3, 1, 90, '2017-04-18 16:47:37'),
(13, 7, 3, 1, 90, '2017-04-18 16:49:17'),
(14, 7, 3, 1, 90, '2017-04-18 16:51:03'),
(15, 7, 3, 1, 90, '2017-04-18 17:30:06'),
(16, 7, 3, 1, 90, '2017-04-18 17:34:33'),
(17, 7, 3, 1, 90, '2017-04-18 17:38:32'),
(18, 7, 6, 1, 4000, '2017-04-18 18:00:36'),
(19, 7, 3, 1, 90, '2017-04-18 18:01:43'),
(20, 7, 6, 1, 4000, '2017-04-18 18:03:24'),
(21, 7, 6, 1, 4000, '2017-04-18 18:11:23'),
(22, 7, 6, 1, 4000, '2017-04-18 18:29:42'),
(23, 7, 6, 1, 4000, '2017-04-18 18:33:15'),
(24, 7, 6, 1, 4000, '2017-04-18 19:22:23'),
(25, 2, 6, 1, 4000, '2017-04-18 19:31:17'),
(26, 9, 6, 1, 4000, '2017-04-19 21:56:40'),
(27, 9, 3, 1, 90, '2017-04-19 21:59:48'),
(28, 9, 6, 2, 8000, '2017-04-19 22:01:53'),
(29, 9, 6, 3, 12000, '2017-04-19 22:03:40'),
(30, 9, 6, 2, 8000, '2017-04-19 22:15:24'),
(31, 9, 6, 1, 4000, '2017-04-21 16:34:16'),
(32, 10, 6, 1, 4000, '2017-04-22 01:12:19'),
(33, 2, 6, 1, 4000, '2017-04-29 06:56:57'),
(34, 5, 6, 1, 4000, '2017-05-01 18:57:50'),
(35, 5, 6, 5, 20000, '2017-05-02 19:08:51'),
(36, 16, 7, 1, 25000, '2017-05-03 04:20:33'),
(37, 3, 1, 1, 250, '2018-03-10 02:23:30'),
(38, 2, 4, 1, 50, '2018-03-10 03:51:18');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `body` text NOT NULL,
  `netprice` float NOT NULL DEFAULT '0',
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productId`, `productName`, `catId`, `brandId`, `body`, `netprice`, `price`, `quantity`, `image`, `type`) VALUES
(2, 'small biscutes', 7, 4, 'most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.', 100, 150, 3, 'upload/86f09e8666.jpg', 0),
(3, 'roci chanacor', 6, 2, 'most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.', 80, 100, 6, 'upload/2fa41df9ff.jpg', 1),
(4, 'love biscutes', 3, 1, '                            most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.                        ', 20, 50, 4, 'upload/111cf42d10.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pro_delivery`
--

CREATE TABLE `pro_delivery` (
  `did` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `total_amount` double NOT NULL,
  `serviceman` varchar(255) NOT NULL,
  `delivery_date` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pro_delivery`
--

INSERT INTO `pro_delivery` (`did`, `orderId`, `productName`, `quantity`, `price`, `total_amount`, `serviceman`, `delivery_date`) VALUES
(26, 50, 'flower', 1, 90, 90, 'jamal', '2017-05-04'),
(25, 50, 'flower', 1, 90, 90, 'jamal', '2017-05-03');

-- --------------------------------------------------------

--
-- Table structure for table `rejineemp`
--

CREATE TABLE `rejineemp` (
  `re_id` int(11) NOT NULL,
  `re_name` varchar(100) NOT NULL,
  `re_degination` varchar(100) NOT NULL,
  `re_address` varchar(100) NOT NULL,
  `re_nid` varchar(100) NOT NULL,
  `re_contactno` varchar(100) NOT NULL,
  `re_dateofjoining` date NOT NULL,
  `re_rejinedate` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `slogan`
--

CREATE TABLE `slogan` (
  `sId` int(11) NOT NULL,
  `sTitle` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slogan`
--

INSERT INTO `slogan` (`sId`, `sTitle`, `slogan`, `logo`) VALUES
(1, 'BD Online Shop', 'BD', 'upload/logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `social`
--

CREATE TABLE `social` (
  `id` int(11) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `google` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social`
--

INSERT INTO `social` (`id`, `facebook`, `twitter`, `google`) VALUES
(1, 'http://facebook.com.bd', 'http://twitter.com', 'http://google.com');

-- --------------------------------------------------------

--
-- Table structure for table `theme`
--

CREATE TABLE `theme` (
  `tid` int(11) NOT NULL,
  `theme` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `theme`
--

INSERT INTO `theme` (`tid`, `theme`) VALUES
(1, 'tan');

-- --------------------------------------------------------

--
-- Table structure for table `track_visitor`
--

CREATE TABLE `track_visitor` (
  `trackid` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `page` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_visitor`
--

INSERT INTO `track_visitor` (`trackid`, `userId`, `user_name`, `page`, `date`) VALUES
(174, 17, 'Golam', 'http://localhost/BMS/Admin/productlist.php', '2018-03-16 01:37:06'),
(175, 17, 'Golam', 'http://localhost/BMS/Admin/catlist.php', '2018-03-16 01:37:11'),
(176, 17, 'Golam', 'http://localhost/BMS/Admin/sub_catList.php', '2018-03-16 01:37:20'),
(177, 17, 'Golam', 'http://localhost/BMS/Admin/orderlist.php', '2018-03-16 01:37:26'),
(178, 5, 'admin', 'http://localhost/BMS/Admin/dashbord.php', '2018-03-16 03:59:33'),
(179, 5, 'admin', 'http://localhost/BMS/Admin/productlist.php', '2018-03-16 03:59:46'),
(180, 5, 'admin', 'http://localhost/BMS/Admin/dashbord.php', '2018-03-16 04:00:59'),
(181, 5, 'admin', 'http://localhost/BMS/Admin/dashbord.php', '2018-03-16 04:18:33'),
(182, 5, 'admin', 'http://localhost/BMS/Admin/dashbord.php', '2018-03-16 04:29:11'),
(183, 18, 'sager', 'http://localhost/BMS/Admin/dashbord.php', '2018-03-16 20:07:25'),
(184, 18, 'sager', 'http://localhost/BMS/Admin/orderlist.php', '2018-03-16 21:00:39'),
(185, 18, 'sager', 'http://localhost/BMS/Admin/orderlist.php', '2018-03-17 01:39:51'),
(186, 18, 'sager', 'http://localhost/BMS/Admin/productlist.php', '2018-03-17 01:48:41'),
(187, 18, 'sager', 'http://localhost/BMS/Admin/productedit.php', '2018-03-17 01:48:44'),
(188, 18, 'sager', 'http://localhost/BMS/Admin/productedit.php', '2018-03-17 01:49:10'),
(189, 18, 'sager', 'http://localhost/BMS/Admin/catlist.php', '2018-03-17 01:49:30'),
(190, 18, 'sager', 'http://localhost/BMS/Admin/catedit.php', '2018-03-17 01:49:33'),
(191, 18, 'sager', 'http://localhost/BMS/Admin/sub_catList.php', '2018-03-17 01:49:39'),
(192, 18, 'sager', 'http://localhost/BMS/Admin/sub_catEdit.php', '2018-03-17 01:49:42'),
(193, 18, 'sager', 'http://localhost/BMS/Admin/sub_catEdit.php', '2018-03-17 01:49:46'),
(194, 18, 'sager', 'http://localhost/BMS/Admin/sub_catEdit.php', '2018-03-17 01:49:49'),
(195, 18, 'sager', 'http://localhost/BMS/admin/productlist.php', '2018-03-18 04:53:06'),
(196, 18, 'sager', 'http://localhost/BMS/admin/productadd.php', '2018-03-18 04:53:12'),
(197, 18, 'sager', 'http://localhost/BMS/admin/replaymsg.php', '2018-03-18 04:53:20'),
(198, 18, 'sager', 'http://localhost/BMS/admin/productlist.php', '2018-03-18 05:32:28'),
(199, 18, 'sager', 'http://localhost/BMS/admin/productadd.php', '2018-03-18 05:32:32'),
(200, 18, 'sager', 'http://localhost/BMS/admin/productedit.php', '2018-03-18 05:32:41'),
(201, 18, 'sager', 'http://localhost/BMS/admin/productlist.php', '2018-03-18 08:22:44'),
(202, 18, 'sager', 'http://localhost/BMS/admin/productadd.php', '2018-03-18 08:22:45'),
(203, 18, 'sager', 'http://localhost/BMS/admin/productlist.php', '2018-03-18 10:24:38'),
(204, 18, 'sager', 'http://localhost/BMS/admin/productedit.php', '2018-03-18 10:24:40'),
(205, 29, 'Hasan', 'http://localhost/BMS/admin/orderlist.php', '2018-03-18 20:43:37'),
(206, 29, 'Hasan', 'http://localhost/BMS/admin/orderlist.php', '2018-03-19 00:25:52'),
(207, 29, 'Hasan', 'http://localhost/BMS/admin/orderlist.php', '2018-03-19 00:26:52'),
(208, 29, 'Hasan', 'http://localhost/BMS/admin/orderlist.php', '2018-03-19 00:27:45'),
(209, 29, 'Hasan', 'http://localhost/BMS/admin/orderlist.php', '2018-03-19 00:28:02'),
(210, 29, 'Hasan', 'http://localhost/BMSS/BMSS/Admin/productlist.php', '2019-07-27 03:17:29'),
(211, 29, 'Hasan', 'http://localhost/BMSS/BMSS/Admin/productadd.php', '2019-07-27 03:17:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `employeeid` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `typeofuser` varchar(255) DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `name`, `employeeid`, `address`, `city`, `country`, `zip`, `phone`, `email`, `password`, `image`, `typeofuser`, `role`) VALUES
(29, 'Hasan', NULL, 'Garamashi', 'Dhaka', 'Bangladesh', '1207', '09876543212', 'hasan@gmail.com', 'd66567f60a140c14f5ba87b995d3a5f7', NULL, 'General', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vandetails`
--

CREATE TABLE `vandetails` (
  `van_id` int(11) NOT NULL,
  `van_lisence` varchar(100) NOT NULL,
  `van_description` varchar(100) NOT NULL,
  `van_buying` varchar(100) NOT NULL,
  `van_price` varchar(100) NOT NULL,
  `van_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vandetails`
--

INSERT INTO `vandetails` (`van_id`, `van_lisence`, `van_description`, `van_buying`, `van_price`, `van_date`) VALUES
(1, 'XYZ343', 'simple van for service provider', 'Sirajgong', '12000', '2018-03-14');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse`
--

CREATE TABLE `warehouse` (
  `ware_id` int(11) NOT NULL,
  `ware_description` varchar(100) NOT NULL,
  `ware_month` varchar(100) NOT NULL,
  `ware_year` varchar(100) NOT NULL,
  `ware_cost` varchar(100) NOT NULL,
  `ware_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warehouse`
--

INSERT INTO `warehouse` (`ware_id`, `ware_description`, `ware_month`, `ware_year`, `ware_cost`, `ware_date`) VALUES
(1, 'oil,suger,milk,egg,sweet', 'January', '2018', '12000', '2018-03-14');

-- --------------------------------------------------------

--
-- Table structure for table `wlist`
--

CREATE TABLE `wlist` (
  `wId` int(11) NOT NULL,
  `cusId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `year`
--

CREATE TABLE `year` (
  `id` int(11) NOT NULL,
  `year` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `year`
--

INSERT INTO `year` (`id`, `year`, `price`) VALUES
(63, '2017', '40090');

-- --------------------------------------------------------

--
-- Table structure for table `yearly_report`
--

CREATE TABLE `yearly_report` (
  `year_id` int(11) NOT NULL,
  `year_cost` double NOT NULL,
  `year_benefit` double NOT NULL,
  `year_total` double NOT NULL,
  `year_month` varchar(100) NOT NULL,
  `year_yea` varchar(100) NOT NULL,
  `year_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `yearly_report`
--

INSERT INTO `yearly_report` (`year_id`, `year_cost`, `year_benefit`, `year_total`, `year_month`, `year_yea`, `year_date`) VALUES
(1, 200, 300, 50, 'March', '2018', '2018-03-18'),
(2, 300, 400, 400, 'March', '2019', '2018-03-20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addempsallary`
--
ALTER TABLE `addempsallary`
  ADD PRIMARY KEY (`sall_id`);

--
-- Indexes for table `attend`
--
ALTER TABLE `attend`
  ADD PRIMARY KEY (`aId`);

--
-- Indexes for table `bakeryowner`
--
ALTER TABLE `bakeryowner`
  ADD PRIMARY KEY (`ow_id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `compare`
--
ALTER TABLE `compare`
  ADD PRIMARY KEY (`comId`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contactid`);

--
-- Indexes for table `customerinfo`
--
ALTER TABLE `customerinfo`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `cus_order`
--
ALTER TABLE `cus_order`
  ADD PRIMARY KEY (`orderId`);

--
-- Indexes for table `db_backup`
--
ALTER TABLE `db_backup`
  ADD PRIMARY KEY (`db_id`);

--
-- Indexes for table `employeeinfo`
--
ALTER TABLE `employeeinfo`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monthly_report`
--
ALTER TABLE `monthly_report`
  ADD PRIMARY KEY (`month_id`);

--
-- Indexes for table `order_offline`
--
ALTER TABLE `order_offline`
  ADD PRIMARY KEY (`or_id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`pmId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `pro_delivery`
--
ALTER TABLE `pro_delivery`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `rejineemp`
--
ALTER TABLE `rejineemp`
  ADD PRIMARY KEY (`re_id`);

--
-- Indexes for table `slogan`
--
ALTER TABLE `slogan`
  ADD PRIMARY KEY (`sId`);

--
-- Indexes for table `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `track_visitor`
--
ALTER TABLE `track_visitor`
  ADD PRIMARY KEY (`trackid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `vandetails`
--
ALTER TABLE `vandetails`
  ADD PRIMARY KEY (`van_id`);

--
-- Indexes for table `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`ware_id`);

--
-- Indexes for table `year`
--
ALTER TABLE `year`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yearly_report`
--
ALTER TABLE `yearly_report`
  ADD PRIMARY KEY (`year_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addempsallary`
--
ALTER TABLE `addempsallary`
  MODIFY `sall_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attend`
--
ALTER TABLE `attend`
  MODIFY `aId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `bakeryowner`
--
ALTER TABLE `bakeryowner`
  MODIFY `ow_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `compare`
--
ALTER TABLE `compare`
  MODIFY `comId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contactid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customerinfo`
--
ALTER TABLE `customerinfo`
  MODIFY `cus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cus_order`
--
ALTER TABLE `cus_order`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `db_backup`
--
ALTER TABLE `db_backup`
  MODIFY `db_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employeeinfo`
--
ALTER TABLE `employeeinfo`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `monthly_report`
--
ALTER TABLE `monthly_report`
  MODIFY `month_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_offline`
--
ALTER TABLE `order_offline`
  MODIFY `or_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `pmId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pro_delivery`
--
ALTER TABLE `pro_delivery`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `rejineemp`
--
ALTER TABLE `rejineemp`
  MODIFY `re_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slogan`
--
ALTER TABLE `slogan`
  MODIFY `sId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social`
--
ALTER TABLE `social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `theme`
--
ALTER TABLE `theme`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `track_visitor`
--
ALTER TABLE `track_visitor`
  MODIFY `trackid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `vandetails`
--
ALTER TABLE `vandetails`
  MODIFY `van_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `warehouse`
--
ALTER TABLE `warehouse`
  MODIFY `ware_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `year`
--
ALTER TABLE `year`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `yearly_report`
--
ALTER TABLE `yearly_report`
  MODIFY `year_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `bakeryfoodshut`
--
CREATE DATABASE IF NOT EXISTS `bakeryfoodshut` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bakeryfoodshut`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `role`) VALUES
(1, '1000363@daffodil.ac', '123456', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bakerymade`
--

CREATE TABLE `bakerymade` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `role` varchar(100) NOT NULL,
  `shopname` varchar(200) NOT NULL,
  `shoplocation` varchar(255) NOT NULL,
  `document` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bakerymade`
--

INSERT INTO `bakerymade` (`id`, `name`, `email`, `phone`, `address`, `role`, `shopname`, `shoplocation`, `document`, `date`, `password`, `gender`, `district`) VALUES
(9, 'Raid', 'raid@gmail.com', '09876567654', 'Bhola', 'b_unblock', 'RaidBakery shop', 'Bhola ', '2019.09.16.09.01.24.jpg', '2019.09.16', 'sagersager', 'Male', 'Bhola');

-- --------------------------------------------------------

--
-- Table structure for table `bakeryowner`
--

CREATE TABLE `bakeryowner` (
  `id` int(11) NOT NULL,
  `ownername` varchar(100) NOT NULL,
  `owneremail` varchar(100) NOT NULL,
  `shopkeeperemail` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bfhmessage`
--

CREATE TABLE `bfhmessage` (
  `id` int(11) NOT NULL,
  `shopkeeperemail` varchar(100) NOT NULL,
  `comment` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `shopkeeperemail` varchar(255) NOT NULL,
  `customeremail` varchar(255) NOT NULL,
  `productname` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `quantity` int(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `date` varchar(20) NOT NULL,
  `weighttype` varchar(100) NOT NULL,
  `discount` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `description`, `date`) VALUES
(4, 'Hasan', 'hasan@gmail.com', 'need more product post', '2019-09-16');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `nid` varchar(100) NOT NULL,
  `contactno` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `designation`, `address`, `gender`, `nid`, `contactno`, `date`, `status`, `email`) VALUES
(4, 'Rakibul Alam', 'External', 'Belkuchi', 'Male', '1234567898765', '09876543212', '2019.09.16', '1', 'golamnobi278@gmail.com'),
(5, 'Khalid', 'External', 'Belkuchi', 'Male', '1234567898765', '09876543212', '2019.09.16', '1', 'golamnobi278@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `fid` int(11) NOT NULL,
  `ftopic` varchar(255) NOT NULL,
  `fcomment` varchar(255) NOT NULL,
  `femail` varchar(255) NOT NULL,
  `fdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fid`, `ftopic`, `fcomment`, `femail`, `fdate`) VALUES
(2, 'Our Website', 'Please improve your site', 'habbib@gmail.com', '2019-09-16'),
(3, 'Our Website', 'improve', 'golamnobi277@gmail.com', '2019-09-16'),
(4, 'Our Website', 'cole kono rokom...', 'majadurrahman217@gmail.com', '2019-10-03'),
(5, 'Our Website', 'cole kono rokom...', 'majadurrahman217@gmail.com', '2019-10-03');

-- --------------------------------------------------------

--
-- Table structure for table `homemade`
--

CREATE TABLE `homemade` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `hdate` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `homemade`
--

INSERT INTO `homemade` (`id`, `name`, `email`, `phone`, `address`, `role`, `password`, `hdate`, `gender`, `district`) VALUES
(4, 'Ratul', 'ratul@gmail.com', '09876543212', 'Bogorea', 'h_unblock', 'sagersager', '2019.09.16', 'Female', 'Bogra');

-- --------------------------------------------------------

--
-- Table structure for table `localorder`
--

CREATE TABLE `localorder` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `month` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `localorder`
--

INSERT INTO `localorder` (`id`, `description`, `quantity`, `price`, `email`, `date`, `month`, `year`) VALUES
(3, 'oil', 5, 44, 'golamnobi278@gmail.com', '2019.09.16', 'September', '2020');

-- --------------------------------------------------------

--
-- Table structure for table `manageprofileinfo`
--

CREATE TABLE `manageprofileinfo` (
  `id` int(11) NOT NULL,
  `shopkeeperemail` varchar(200) NOT NULL,
  `weblink` varchar(200) NOT NULL,
  `openshop` varchar(200) NOT NULL,
  `closeshop` varchar(200) NOT NULL,
  `branch` varchar(200) NOT NULL,
  `policy` varchar(200) NOT NULL,
  `products` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `vacation` varchar(100) NOT NULL,
  `profileimg` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manageprofileinfo`
--

INSERT INTO `manageprofileinfo` (`id`, `shopkeeperemail`, `weblink`, `openshop`, `closeshop`, `branch`, `policy`, `products`, `date`, `vacation`, `profileimg`) VALUES
(13, 'raid@gmail.com', 'raidbakery.com', '8:00 AM', '10:00 PM', 'raidbakerydhaka,raidbakerysirajgong', 'Home delivery perform only our own area', 'chanacur,biscut,cake,choklate', '2019.09.16', 'Friday', '2019.09.16.09.10.51.jpg'),
(14, 'ratul@gmail.com', 'Ratulbakeryshop', '7:00 AM', '11:00 PM', 'Ratulbakeryshop', 'Home delivery is allow of our own location', 'chanacur,biscuit', '2019.09.16', 'Friday', '2019.09.16.09.15.01.jpg'),
(15, 'golamnobi278@gmail.com', 'http://golambakerybd.com', '8:00 AM', '12:00 AM', 'golambakery', 'No policy', 'chanacur,biscut,cake,choklate', '2019.09.16', 'Friday', '2019.09.16.09.19.47.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `managequantity`
--

CREATE TABLE `managequantity` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mquantity` int(50) NOT NULL,
  `date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `managequantity`
--

INSERT INTO `managequantity` (`id`, `email`, `mquantity`, `date`) VALUES
(6, 'raid@gmail.com', 3, '2019.09.16'),
(7, 'ratul@gmail.com', 4, '2019.09.16'),
(8, 'golamnobi278@gmail.com', 3, '2019.09.16');

-- --------------------------------------------------------

--
-- Table structure for table `offlineorder`
--

CREATE TABLE `offlineorder` (
  `id` int(11) NOT NULL,
  `shopkeeperemail` varchar(100) NOT NULL,
  `customeremail` varchar(100) NOT NULL,
  `ordertype` varchar(100) NOT NULL,
  `tragflag` varchar(100) NOT NULL,
  `totalquantity` varchar(100) NOT NULL,
  `totalprice` varchar(100) NOT NULL,
  `pickuplocation` varchar(100) NOT NULL,
  `pickupdate` varchar(100) NOT NULL,
  `pickuptime` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offlineorder`
--

INSERT INTO `offlineorder` (`id`, `shopkeeperemail`, `customeremail`, `ordertype`, `tragflag`, `totalquantity`, `totalprice`, `pickuplocation`, `pickupdate`, `pickuptime`, `date`, `status`) VALUES
(2, 'golamnobi278@gmail.com', 'nafianshawon96@gmail.com', 'Local Delivery', 'Yes', '1', '300.0', 'Dhaka mirpur', '16 September 2019', '09:40AM', '2019.09.16', '0'),
(3, 'golamnobi278@gmail.com', 'nafianshawon96@gmail.com', 'Local Delivery', 'Yes', '1', '300.0', 'Belkuchi ', '16 September 2019', '10:30AM', '2019.09.16', '0'),
(4, 'golamnobi278@gmail.com', 'nafianshawon96@gmail.com', 'Local Delivery', 'Yes', '1', '300.0', 'Belkuchi ', '16 September 2019', '10:30AM', '2019.09.16', '0'),
(5, 'golamnobi278@gmail.com', 'nafianshawon96@gmail.com', 'Local Delivery', 'Yes', '1', '300.0', 'Belkuchi ', '16 September 2019', '10:40AM', '2019.09.16', '1'),
(6, 'golamnobi278@gmail.com', 'nafianshawon96@gmail.com', 'Local Delivery', 'Yes', '1', '300.0', 'Belkuchi ', '16 September 2019', '10:55AM', '2019.09.16', '1');

-- --------------------------------------------------------

--
-- Table structure for table `orderassign`
--

CREATE TABLE `orderassign` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `orderid` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `serviceproviderid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderassign`
--

INSERT INTO `orderassign` (`id`, `email`, `orderid`, `status`, `date`, `serviceproviderid`) VALUES
(2, 'golamnobi278@gmail.com', 3, 'available', '2019.09.16', 4),
(3, 'golamnobi278@gmail.com', 4, 'available', '2019.09.16', 5);

-- --------------------------------------------------------

--
-- Table structure for table `paidpackage`
--

CREATE TABLE `paidpackage` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `shopname` varchar(255) NOT NULL,
  `shoplocation` varchar(255) NOT NULL,
  `document` varchar(255) NOT NULL,
  `bkashno` varchar(200) NOT NULL,
  `bkashtransactionid` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `role` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paidpackage`
--

INSERT INTO `paidpackage` (`id`, `name`, `phone`, `address`, `email`, `shopname`, `shoplocation`, `document`, `bkashno`, `bkashtransactionid`, `date`, `role`, `password`, `gender`, `district`) VALUES
(2, 'Golam Nobi', '12345678654', 'Sirajgong', 'golamnobi278@gmail.com', 'GolamBakery', 'Belkuchi-Siragong', '2019.09.16.09.02.59.jpg', '017155719929', '123456fvhfc', '2019.09.16', 'p_unblock', 'sagersager', 'Male', 'Sirajganj');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `shopkeeperemail` varchar(255) NOT NULL,
  `productname` varchar(255) NOT NULL,
  `quantity` int(50) NOT NULL,
  `weight` varchar(25) NOT NULL,
  `discount` varchar(20) NOT NULL,
  `productdes` varchar(255) NOT NULL,
  `age` varchar(50) NOT NULL,
  `date` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `area` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `productcategory` varchar(100) NOT NULL,
  `pricetype` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `shopkeeperemail`, `productname`, `quantity`, `weight`, `discount`, `productdes`, `age`, `date`, `img`, `district`, `area`, `price`, `productcategory`, `pricetype`) VALUES
(9, 'raid@gmail.com', 'Biscuit', 6, 'KG', '0 percent', 'Nice product', 'All', '2019.09.16', '2019.09.16.09.12.23.jpg', 'Barisal', 'Khilkhet', '300', 'Biscuit', 'Low price'),
(10, 'ratul@gmail.com', 'Biscuit', 555, 'Packet', '10 percent', 'Healthy food', 'Children', '2019.09.16', '2019.09.16.09.16.02.jpg', 'Bogra', 'Kalai', '200', 'Biscuit', 'Low price'),
(11, 'golamnobi278@gmail.com', 'Biscuit', 1, 'Packet', '0', 'Healty food', 'Middle-Aged', '2019.09.16', '2019.09.16.09.20.35.jpg', 'Sirajganj', 'Belkuchi Upazila', '300', 'Biscuit', 'Low price');

-- --------------------------------------------------------

--
-- Table structure for table `profileinfo`
--

CREATE TABLE `profileinfo` (
  `id` int(11) NOT NULL,
  `shopkeeperemail` varchar(255) NOT NULL,
  `weblink` varchar(20) NOT NULL,
  `branch` varchar(200) NOT NULL,
  `produce` varchar(20) NOT NULL,
  `startbusiness` varchar(50) NOT NULL,
  `date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profileinfo`
--

INSERT INTO `profileinfo` (`id`, `shopkeeperemail`, `weblink`, `branch`, `produce`, `startbusiness`, `date`) VALUES
(16, 'ratul@gmail.com', 'Yes', 'Yes', 'homemade', '17 September 2019', '2019.09.16'),
(17, 'raid@gmail.com', 'No', 'Yes', 'bakerymade', '16 September 2019', '2019.09.16'),
(18, 'golamnobi278@gmail.com', 'Yes', 'Yes', 'paidpackage', '16 September 2019', '2019.09.16');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `rid` int(11) NOT NULL,
  `rname` varchar(255) NOT NULL,
  `remail` varchar(255) NOT NULL,
  `rpassword` varchar(255) NOT NULL,
  `rgender` varchar(255) NOT NULL,
  `rstatus` varchar(50) NOT NULL,
  `rdate` date NOT NULL,
  `district` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`rid`, `rname`, `remail`, `rpassword`, `rgender`, `rstatus`, `rdate`, `district`, `address`) VALUES
(4, 'Hasan', 'hasan@gmail.com', 'sagersager', 'Male', 'unblock', '2019-09-16', 'Bogra', 'Bogora'),
(5, 'Al Nafian', 'nafianshawon96@gmail.com', 'sagersager', 'Male', 'unblock', '2019-09-16', 'Sirajganj', 'Sirajgong ');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `shopkeeperemail` varchar(255) NOT NULL,
  `postid` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `star` int(20) NOT NULL,
  `date` varchar(200) NOT NULL,
  `title` varchar(50) NOT NULL,
  `customeremail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `shopkeeperemail`, `postid`, `description`, `star`, `date`, `title`, `customeremail`) VALUES
(13, 'golamnobi278@gmail.com', 11, 'Your bakery product quality is best', 4, '2019.09.16', 'Good Food', 'nafianshawon96@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `shopkeepermessage`
--

CREATE TABLE `shopkeepermessage` (
  `id` int(11) NOT NULL,
  `shopkeeperemail` varchar(255) NOT NULL,
  `customeremail` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `date` varchar(200) NOT NULL,
  `messagerole` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shopkeepermessage`
--

INSERT INTO `shopkeepermessage` (`id`, `shopkeeperemail`, `customeremail`, `comment`, `date`, `messagerole`) VALUES
(3, 'golamnobi278@gmail.com', 'Nafian', 'need 100 biscuit', '2019.09.16', 0);

-- --------------------------------------------------------

--
-- Table structure for table `van`
--

CREATE TABLE `van` (
  `id` int(11) NOT NULL,
  `lisence` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `van`
--

INSERT INTO `van` (`id`, `lisence`, `description`, `price`, `date`, `email`) VALUES
(3, 'xw23fgcr', 'Nice', '22', '2019.09.16', 'golamnobi278@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse`
--

CREATE TABLE `warehouse` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `month` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bakerymade`
--
ALTER TABLE `bakerymade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bakeryowner`
--
ALTER TABLE `bakeryowner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bfhmessage`
--
ALTER TABLE `bfhmessage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `homemade`
--
ALTER TABLE `homemade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `localorder`
--
ALTER TABLE `localorder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manageprofileinfo`
--
ALTER TABLE `manageprofileinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `managequantity`
--
ALTER TABLE `managequantity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offlineorder`
--
ALTER TABLE `offlineorder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderassign`
--
ALTER TABLE `orderassign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paidpackage`
--
ALTER TABLE `paidpackage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profileinfo`
--
ALTER TABLE `profileinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopkeepermessage`
--
ALTER TABLE `shopkeepermessage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `van`
--
ALTER TABLE `van`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehouse`
--
ALTER TABLE `warehouse`
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
-- AUTO_INCREMENT for table `bakerymade`
--
ALTER TABLE `bakerymade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `bakeryowner`
--
ALTER TABLE `bakeryowner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bfhmessage`
--
ALTER TABLE `bfhmessage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `homemade`
--
ALTER TABLE `homemade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `localorder`
--
ALTER TABLE `localorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `manageprofileinfo`
--
ALTER TABLE `manageprofileinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `managequantity`
--
ALTER TABLE `managequantity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `offlineorder`
--
ALTER TABLE `offlineorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orderassign`
--
ALTER TABLE `orderassign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `paidpackage`
--
ALTER TABLE `paidpackage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `profileinfo`
--
ALTER TABLE `profileinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `shopkeepermessage`
--
ALTER TABLE `shopkeepermessage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `van`
--
ALTER TABLE `van`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `warehouse`
--
ALTER TABLE `warehouse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `bdmarket`
--
CREATE DATABASE IF NOT EXISTS `bdmarket` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bdmarket`;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cid` int(11) NOT NULL,
  `productname` varchar(100) NOT NULL,
  `quantity` int(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `price` int(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `oweremail` varchar(100) NOT NULL,
  `imglink` varchar(100) NOT NULL,
  `customeremail` varchar(100) NOT NULL,
  `productid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `shopcategory` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `shopcategory`) VALUES
(2, 'Computer'),
(3, 'Electronic'),
(4, 'Sweets'),
(5, 'Restaurants'),
(6, 'Cosmetic'),
(7, 'Glossary'),
(8, 'Stationery'),
(9, 'Jewellery'),
(10, 'Fruits'),
(11, 'Hardware'),
(12, 'Animals');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contactshopkeeper`
--

CREATE TABLE `contactshopkeeper` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactshopkeeper`
--

INSERT INTO `contactshopkeeper` (`id`, `email`, `description`, `date`, `role`) VALUES
(6, 'rabbi@gmail.com', 'ki re vi', '2019.10.20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `c_id` int(11) NOT NULL,
  `c_email` varchar(200) NOT NULL,
  `c_phone` varchar(200) NOT NULL,
  `c_password` varchar(200) NOT NULL,
  `c_gender` varchar(200) NOT NULL,
  `c_date` varchar(200) NOT NULL,
  `c_name` varchar(200) NOT NULL,
  `cus_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`c_id`, `c_email`, `c_phone`, `c_password`, `c_gender`, `c_date`, `c_name`, `cus_role`) VALUES
(5, 'golamnobi277@gmail.com', '12345678978', 'sager', 'Male', '2019.10.20', 'Golam Nobi Sheikh', 101),
(6, 'admin123@gmail.com', '01766719929', 'admin123', 'Male', '10/21/2019', 'admin', 105);

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `orderId` int(11) NOT NULL,
  `productname` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `description` varchar(110) NOT NULL,
  `price` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `onweremail` varchar(100) NOT NULL,
  `customeremail` varchar(100) NOT NULL,
  `imagelink` varchar(100) NOT NULL,
  `role` int(11) NOT NULL,
  `customeraddress` varchar(100) NOT NULL,
  `customercontactno` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`orderId`, `productname`, `quantity`, `description`, `price`, `date`, `onweremail`, `customeremail`, `imagelink`, `role`, `customeraddress`, `customercontactno`) VALUES
(3, 'Biscuit', '1', ' dsafffff', '54.0', '2019.10.21', 'rabbi@gmail.com', 'golamnobi277@gmail.com', '2019.10.20.05.25.17.jpg', 3, 'garamashi', '12345678978');

-- --------------------------------------------------------

--
-- Table structure for table `messageshopkeeper`
--

CREATE TABLE `messageshopkeeper` (
  `id` int(11) NOT NULL,
  `shopkeeperemail` varchar(100) NOT NULL,
  `customeremail` varchar(100) NOT NULL,
  `comment` varchar(100) NOT NULL,
  `role` int(11) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messageshopkeeper`
--

INSERT INTO `messageshopkeeper` (`id`, `shopkeeperemail`, `customeremail`, `comment`, `role`, `date`) VALUES
(2, 'rabbi@gmail.com', 'nafianshawon96@gmail.com', 'Hellow', 3, '2019.10.21');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `pid` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `price` int(50) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `typeshop` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`pid`, `email`, `name`, `description`, `price`, `quantity`, `image`, `date`, `typeshop`, `location`) VALUES
(8, 'rabbi@gmail.com', 'Biscuit', 'dsafffff', 54, 10, '2019.10.20.05.25.17.jpg', '2019.10.20', 'Electronic', 'Airport');

-- --------------------------------------------------------

--
-- Table structure for table `shopkeeper`
--

CREATE TABLE `shopkeeper` (
  `s_id` int(11) NOT NULL,
  `s_name` varchar(200) NOT NULL,
  `s_email` varchar(200) NOT NULL,
  `s_phone` varchar(200) NOT NULL,
  `s_password` varchar(200) NOT NULL,
  `s_gender` varchar(200) NOT NULL,
  `s_date` date NOT NULL,
  `shorole` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shopkeeper`
--

INSERT INTO `shopkeeper` (`s_id`, `s_name`, `s_email`, `s_phone`, `s_password`, `s_gender`, `s_date`, `shorole`) VALUES
(6, 'Rabbi', 'rabbi@gmail.com', '01718512693', 'sager', 'Male', '2019-10-21', 109);

-- --------------------------------------------------------

--
-- Table structure for table `updateprofile`
--

CREATE TABLE `updateprofile` (
  `u_id` int(11) NOT NULL,
  `shopname` varchar(100) NOT NULL,
  `shoplocation` varchar(100) NOT NULL,
  `typeshop` varchar(100) NOT NULL,
  `productname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `updateprofile`
--

INSERT INTO `updateprofile` (`u_id`, `shopname`, `shoplocation`, `typeshop`, `productname`, `email`, `date`) VALUES
(3, 'Bkar', 'Airport', 'Electronic', 'Fan,motor etc', 'rabbi@gmail.com', '2019.10.20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactshopkeeper`
--
ALTER TABLE `contactshopkeeper`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`orderId`);

--
-- Indexes for table `messageshopkeeper`
--
ALTER TABLE `messageshopkeeper`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `shopkeeper`
--
ALTER TABLE `shopkeeper`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `updateprofile`
--
ALTER TABLE `updateprofile`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contactshopkeeper`
--
ALTER TABLE `contactshopkeeper`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `messageshopkeeper`
--
ALTER TABLE `messageshopkeeper`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `shopkeeper`
--
ALTER TABLE `shopkeeper`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `updateprofile`
--
ALTER TABLE `updateprofile`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `cybersecurity`
--
CREATE DATABASE IF NOT EXISTS `cybersecurity` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cybersecurity`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `a_email` varchar(100) DEFAULT NULL,
  `a_password` varchar(100) DEFAULT NULL,
  `a_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `a_email`, `a_password`, `a_name`) VALUES
(1, 'admin@gmail.com', '1234', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `b_name` varchar(100) DEFAULT NULL,
  `b_des` varchar(100) DEFAULT NULL,
  `b_date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `c_id` int(10) NOT NULL,
  `c_name` varchar(100) DEFAULT NULL,
  `c_email` varchar(100) DEFAULT NULL,
  `c_subject` varchar(100) DEFAULT NULL,
  `c_message` varchar(100) DEFAULT NULL,
  `c_date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `regstration`
--

CREATE TABLE `regstration` (
  `r_id` int(10) NOT NULL,
  `r_firstname` varchar(100) DEFAULT NULL,
  `r_surname` varchar(100) DEFAULT NULL,
  `r_businessname` varchar(100) DEFAULT NULL,
  `r_jobtitle` varchar(100) DEFAULT NULL,
  `t_interested` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `r_code` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regstration`
--

INSERT INTO `regstration` (`r_id`, `r_firstname`, `r_surname`, `r_businessname`, `r_jobtitle`, `t_interested`, `email`, `date`, `r_code`, `password`) VALUES
(1, 'Masud Ahmed', 'Rana', 'peer to peer', 'Student', 'Incident Responder', 'masudrana@gmail.com', '2019-04-27', 'mas605', '1234'),
(2, 'gh', 'h', 'peer to peer', 'dot', 'Incident Responder', 'khalid@gmail.com', '2019-08-07', 'kha876', 'sager');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `s_id` int(10) NOT NULL,
  `s_name` varchar(100) DEFAULT NULL,
  `s_date` varchar(100) DEFAULT NULL,
  `s_des` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`s_id`, `s_name`, `s_date`, `s_des`) VALUES
(1, 'Incident Responder', '2019-04-27', 'Incident Responderâ€™s investigate computer related crimes within an organization. They discover the'),
(2, 'Malware Analyst', '2019-04-27', 'Incident Responderâ€™s investigate computer related crimes within an organization. They discover the'),
(3, 'Information Security Architect', '2019-04-27', 'Incident Responderâ€™s investigate computer related crimes within an organization. They discover the'),
(4, 'Chief Information Security Officer', '2019-04-27', 'Incident Responderâ€™s investigate computer related crimes within an organization. They discover the');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `regstration`
--
ALTER TABLE `regstration`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`s_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `c_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `regstration`
--
ALTER TABLE `regstration`
  MODIFY `r_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `s_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `db_00155425`
--
CREATE DATABASE IF NOT EXISTS `db_00155425` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_00155425`;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `Module_ID` int(5) DEFAULT NULL,
  `Class_Day` varchar(10) DEFAULT NULL,
  `Duration` int(5) DEFAULT NULL,
  `Class_Time` varchar(5) DEFAULT NULL,
  `Room_Number` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`Module_ID`, `Class_Day`, `Duration`, `Class_Time`, `Room_Number`) VALUES
(301, 'Monday', 10, '9am', '1C'),
(301, 'Tuesday', 10, '9am', '1C'),
(302, 'Wednesday', 5, '9am', '1C'),
(303, 'Monday', 5, '1pm', '204'),
(304, 'Wednesday', 20, '9am', '10'),
(305, 'Friday', 10, '9am', '11'),
(306, 'Monday', 20, '1pm', '1C'),
(307, 'Tuesday', 5, '1pm', '10');

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `Module_ID` int(5) NOT NULL,
  `Module_Title` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`Module_ID`, `Module_Title`) VALUES
(301, 'Improvisation'),
(302, 'Improvition'),
(303, 'Alto Saxophone'),
(304, 'Baritone Sax'),
(305, 'Grade 3 Theory -All Instrument'),
(306, 'Trumpet Novice'),
(307, 'Band leading'),
(308, 'Trumpet Advanced'),
(309, 'Clarinet Novice');

-- --------------------------------------------------------

--
-- Table structure for table `module_level`
--

CREATE TABLE `module_level` (
  `Module_ID` int(5) DEFAULT NULL,
  `level` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module_level`
--

INSERT INTO `module_level` (`Module_ID`, `level`) VALUES
(301, 2),
(302, 1),
(303, 1),
(304, 1),
(305, 2),
(306, 1),
(307, 1),
(308, 3),
(309, 2);

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE `rate` (
  `Tutor_ID` int(5) DEFAULT NULL,
  `speciality` varchar(20) DEFAULT NULL,
  `Hourly_rate` varchar(5) DEFAULT NULL,
  `Day_rate` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rate`
--

INSERT INTO `rate` (`Tutor_ID`, `speciality`, `Hourly_rate`, `Day_rate`) VALUES
(401, 'Improvisation', '£30', '£165'),
(403, 'Trumpet', '£38', '£160'),
(404, 'Saxophone', '£30', '£150'),
(405, 'Theory', '£30', '£150');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `Student_ID` int(5) DEFAULT NULL,
  `Module_ID` int(5) DEFAULT NULL,
  `Result` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`Student_ID`, `Module_ID`, `Result`) VALUES
(102, 306, 'pass'),
(103, 306, 'pass'),
(104, 301, 'pass'),
(105, 303, 'pass'),
(106, 303, 'pass'),
(107, 301, 'pass'),
(108, 304, 'pass'),
(109, 303, 'pass');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `Room_Number` varchar(5) NOT NULL,
  `Location` varchar(20) DEFAULT NULL,
  `Max_Student` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`Room_Number`, `Location`, `Max_Student`) VALUES
('10', 'Sidari Building', 15),
('11', 'Giles Porter Buildin', 15),
('1C', 'Sidari Building', 20),
('204', 'Foster Court', 21);

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `Room_Number` varchar(5) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`Room_Number`, `type`) VALUES
('1C', 'Practical Music'),
('204', 'Practical Music'),
('10', 'Theory'),
('11', 'Practical Music');

-- --------------------------------------------------------

--
-- Table structure for table `std_module`
--

CREATE TABLE `std_module` (
  `Student_ID` int(5) DEFAULT NULL,
  `Module_ID` int(5) DEFAULT NULL,
  `Start_Date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `std_module`
--

INSERT INTO `std_module` (`Student_ID`, `Module_ID`, `Start_Date`) VALUES
(102, 306, '2019-07-01 00:00:00'),
(103, 306, '2019-07-01 00:00:00'),
(104, 301, '2019-07-14 00:00:00'),
(105, 303, '2019-07-14 00:00:00'),
(106, 303, '2019-08-07 00:00:00'),
(107, 301, '2019-08-07 00:00:00'),
(108, 304, '2019-07-07 00:00:00'),
(109, 303, '2019-07-14 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `std_type`
--

CREATE TABLE `std_type` (
  `Student_ID` int(5) DEFAULT NULL,
  `Std_type_ID` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `std_type`
--

INSERT INTO `std_type` (`Student_ID`, `Std_type_ID`) VALUES
(102, 204),
(103, 204),
(104, 201),
(105, 202),
(106, 203),
(107, 201),
(108, 204),
(109, 204),
(110, 205);

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `Student_ID` int(5) NOT NULL,
  `First_Name` varchar(15) DEFAULT NULL,
  `Sur_Name` varchar(15) DEFAULT NULL,
  `Tel_Number` varchar(15) DEFAULT NULL,
  `Email_Address` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`Student_ID`, `First_Name`, `Sur_Name`, `Tel_Number`, `Email_Address`) VALUES
(102, 'Gemma', 'Riley', '09899 765676', 'Gemril126@crzymail.org'),
(103, 'John', 'Maza', '07665 909999', 'jmaza@dmail.com'),
(104, 'Rizwan', 'Maya', '07202 123123', 'riz@horton.ac.uk'),
(105, 'Mezzi', 'Solent', '07677 988988', 'mezzisol@cat.com'),
(106, 'Curtis', 'Palmer', '07343 000989', 'cpalmer@hmail.com'),
(107, 'Paul', 'Collier', '07343 767777', 'pcolier@hmail.com'),
(108, 'Samia', 'Saleed', '07666 098899', 'Ss167@newsoft.co.uk'),
(109, 'Sophie', 'Clarkson', '07767 876678', 'Yth87@binternational.uk'),
(110, 'Ibrahiam', 'Goza', '01978 777654', 'igoza@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tutor`
--

CREATE TABLE `tutor` (
  `Tutor_ID` int(5) NOT NULL,
  `First_Name` varchar(10) DEFAULT NULL,
  `Sur_Name` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tutor`
--

INSERT INTO `tutor` (`Tutor_ID`, `First_Name`, `Sur_Name`) VALUES
(401, 'Beth', 'Lyons'),
(403, 'Fran', 'D Silva'),
(404, 'Richard', 'Longworth'),
(405, 'Molly', 'Luke'),
(407, 'ken', 'Power'),
(408, 'Sophie', 'Khan');

-- --------------------------------------------------------

--
-- Table structure for table `tutor_module`
--

CREATE TABLE `tutor_module` (
  `Tutor_ID` int(5) DEFAULT NULL,
  `Module_ID` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tutor_module`
--

INSERT INTO `tutor_module` (`Tutor_ID`, `Module_ID`) VALUES
(401, 301),
(403, 302),
(404, 303),
(404, 304),
(405, 305),
(403, 308),
(407, 307),
(408, 309);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `Std_type_ID` int(5) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `Discount` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`Std_type_ID`, `type`, `Discount`) VALUES
(201, 'Full Time Student', '60% discount'),
(202, 'Unwaged', '50% discount'),
(203, 'Low Income', '35% discount'),
(204, 'Standard', '0% discount'),
(205, 'Standard', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD KEY `Module_ID` (`Module_ID`),
  ADD KEY `Room_Number` (`Room_Number`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`Module_ID`);

--
-- Indexes for table `module_level`
--
ALTER TABLE `module_level`
  ADD KEY `Module_ID` (`Module_ID`);

--
-- Indexes for table `rate`
--
ALTER TABLE `rate`
  ADD KEY `Tutor_ID` (`Tutor_ID`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD KEY `Student_ID` (`Student_ID`),
  ADD KEY `Module_ID` (`Module_ID`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`Room_Number`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD KEY `Room_Number` (`Room_Number`);

--
-- Indexes for table `std_module`
--
ALTER TABLE `std_module`
  ADD KEY `Student_ID` (`Student_ID`),
  ADD KEY `Module_ID` (`Module_ID`);

--
-- Indexes for table `std_type`
--
ALTER TABLE `std_type`
  ADD KEY `Student_ID` (`Student_ID`),
  ADD KEY `Std_type_ID` (`Std_type_ID`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `tutor`
--
ALTER TABLE `tutor`
  ADD PRIMARY KEY (`Tutor_ID`);

--
-- Indexes for table `tutor_module`
--
ALTER TABLE `tutor_module`
  ADD KEY `Tutor_ID` (`Tutor_ID`),
  ADD KEY `Module_ID` (`Module_ID`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`Std_type_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_ibfk_1` FOREIGN KEY (`Module_ID`) REFERENCES `module` (`Module_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `class_ibfk_2` FOREIGN KEY (`Room_Number`) REFERENCES `room` (`Room_Number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `module_level`
--
ALTER TABLE `module_level`
  ADD CONSTRAINT `module_level_ibfk_1` FOREIGN KEY (`Module_ID`) REFERENCES `module` (`Module_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rate`
--
ALTER TABLE `rate`
  ADD CONSTRAINT `rate_ibfk_1` FOREIGN KEY (`Tutor_ID`) REFERENCES `tutor` (`Tutor_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `result_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `student_info` (`Student_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `result_ibfk_2` FOREIGN KEY (`Module_ID`) REFERENCES `module` (`Module_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `room_type`
--
ALTER TABLE `room_type`
  ADD CONSTRAINT `room_type_ibfk_1` FOREIGN KEY (`Room_Number`) REFERENCES `room` (`Room_Number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `std_module`
--
ALTER TABLE `std_module`
  ADD CONSTRAINT `std_module_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `student_info` (`Student_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `std_module_ibfk_2` FOREIGN KEY (`Module_ID`) REFERENCES `module` (`Module_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `std_type`
--
ALTER TABLE `std_type`
  ADD CONSTRAINT `std_type_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `student_info` (`Student_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `std_type_ibfk_2` FOREIGN KEY (`Std_type_ID`) REFERENCES `type` (`Std_type_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tutor_module`
--
ALTER TABLE `tutor_module`
  ADD CONSTRAINT `tutor_module_ibfk_1` FOREIGN KEY (`Tutor_ID`) REFERENCES `tutor` (`Tutor_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tutor_module_ibfk_2` FOREIGN KEY (`Module_ID`) REFERENCES `module` (`Module_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `db_bms`
--
CREATE DATABASE IF NOT EXISTS `db_bms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_bms`;

-- --------------------------------------------------------

--
-- Table structure for table `attend`
--

CREATE TABLE `attend` (
  `aId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `roll` varchar(255) NOT NULL DEFAULT '0',
  `attend` varchar(255) DEFAULT NULL,
  `att_date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attend`
--

INSERT INTO `attend` (`aId`, `userId`, `name`, `roll`, `attend`, `att_date`) VALUES
(26, 8, 'gdfg', '00125', 'absent', '2017-04-25'),
(25, 5, 'fe', '00123', 'present', '2017-04-05'),
(24, 7, 'hfh', '00124', 'absent', '2017-04-05'),
(23, 8, 'gdfg', '00125', 'present', '2017-04-05'),
(22, 5, 'fe', '00123', 'present', '2017-04-13'),
(21, 7, 'hfh', '00124', 'absent', '2017-04-13'),
(20, 8, 'gdfg', '00125', 'present', '2017-04-13'),
(19, 5, 'fe', '00123', 'present', '2017-04-03'),
(18, 7, 'hfh', '00124', 'present', '2017-04-03'),
(17, 8, 'gdfg', '00125', 'absent', '2017-04-03'),
(27, 7, 'hfh', '00124', 'present', '2017-04-25'),
(28, 5, 'fe', '00123', 'absent', '2017-04-25'),
(29, 15, 'Md amanath shah', '00125', 'present', '2017-05-03'),
(30, 14, 'jamal', '00124', 'absent', '2017-05-03'),
(31, 5, 'fe', '00123', 'present', '2017-05-03');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brandId`, `brandName`) VALUES
(1, 'Acer'),
(2, 'Samsung'),
(4, 'Walton'),
(5, 'LG');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartId` int(11) NOT NULL,
  `sId` varchar(255) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartId`, `sId`, `productId`, `productName`, `price`, `quantity`, `image`) VALUES
(15, '99oggd3pvsl886jisefev5fkl4', 1, 'Camera mine', 500, 1, 'upload/aef0b028a9.png'),
(2, 'sqot298tvtid139p05u3fv94q3', 3, 'flower', 90, 5, 'upload/ac235ac821.png'),
(16, '29l72c8k97rcv10p6da9gkna24', 1, 'Camera mine', 500, 1, 'upload/aef0b028a9.png'),
(40, 'nto3b7c0gjoa0scss2pgofc2l2', 3, 'flower', 90, 1, 'upload/ac235ac821.png'),
(45, 'oo8klsag1596ir0inguvnidv43', 3, 'flower', 90, 1, 'upload/ac235ac821.png'),
(46, 'domqcea96b6mpp32hklfg00p15', 4, 'samsun225', 4000, 1, 'upload/d797f7b6b6.jpg'),
(47, 'domqcea96b6mpp32hklfg00p15', 3, 'flower', 90, 1, 'upload/ac235ac821.png'),
(48, 'mkplpm75muus08ope60s9r7l27', 4, 'samsun225', 4000, 1, 'upload/d797f7b6b6.jpg'),
(49, '5bu9sdbmgdlmm6bsqdel6qc053', 4, 'samsun225', 4000, 1, 'upload/d797f7b6b6.jpg'),
(59, '2poclv5g7o6lia2q2r8uspgai4', 4, 'samsun225', 4000, 1, 'upload/d797f7b6b6.jpg'),
(61, '2l61qgq13a32bgidpvpvtp1gq6', 3, 'flower', 90, 1, 'upload/ac235ac821.png'),
(62, 'i27lbbsism5md4an38c5ipv982', 3, 'flower', 90, 1, 'upload/ac235ac821.png'),
(119, 'ni1q59l45b1t1958siva6ol361', 6, 'mobile', 4000, 1, 'upload/65103d15d8.jpg'),
(118, '22cmm6506fmcs381n8qi1elnv0', 3, 'flower', 90, 1, 'upload/ac235ac821.png'),
(117, '22cmm6506fmcs381n8qi1elnv0', 6, 'mobile', 4000, 2, 'upload/65103d15d8.jpg'),
(120, 'ub1oaeru36e7mpflvvpem4reg0', 3, 'flower', 90, 1, 'upload/ac235ac821.png');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catId`, `catName`) VALUES
(11, 'bbbb'),
(2, 'Laptop'),
(3, 'Mobile Phone'),
(5, 'tablet'),
(6, 'cloths'),
(7, 'Iphone'),
(10, 'ddd'),
(12, 'bbbb');

-- --------------------------------------------------------

--
-- Table structure for table `compare`
--

CREATE TABLE `compare` (
  `comId` int(11) NOT NULL,
  `cusId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contactid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobileNo` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contactid`, `name`, `mobileNo`, `email`, `body`, `status`, `date`) VALUES
(7, 'Md. Hassan', '01751238337', 'mahmud@gmail.com', 'product  is damage', 0, '2017-05-02 15:33:07'),
(4, 'salauddin', 'rahman', 'kh@d.co', 'fdfdsagdfgdfg dfdafgsd dfgadfg', 1, '2017-02-13 17:50:39'),
(6, 'md khaled', '8976867', 'kh@d.co', 'yygbyhhb', 1, '2017-03-03 02:37:18'),
(8, 'khaled', '01751234992', 'khaled@gmail.com', 'test emal', 0, '2018-03-10 11:50:32');

-- --------------------------------------------------------

--
-- Table structure for table `cus_order`
--

CREATE TABLE `cus_order` (
  `orderId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cus_order`
--

INSERT INTO `cus_order` (`orderId`, `userId`, `productId`, `productName`, `quantity`, `price`, `image`, `date`, `status`) VALUES
(58, 5, 6, 'mobile', 5, 20000, 'upload/65103d15d8.jpg', '2017-05-03 01:08:51', 0),
(59, 16, 7, 'Walton mobile', 1, 25000, 'upload/c08b783ad1.jpg', '2017-05-03 10:20:33', 0),
(50, 9, 3, 'flower', 1, 90, 'upload/ac235ac821.png', '2017-04-20 03:59:48', 1),
(57, 5, 6, 'mobile', 1, 4000, 'upload/65103d15d8.jpg', '2017-05-02 00:57:50', 2),
(61, 2, 4, 'love biscutes', 1, 50, 'upload/111cf42d10.jpg', '2018-03-10 09:51:18', 0);

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `pid` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`pid`, `name`, `body`) VALUES
(2, 'About Us', 'sfdfgdshgdfghsf');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `pmId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `total_amount` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`pmId`, `userId`, `productId`, `quantity`, `total_amount`, `date`) VALUES
(1, 9, 1, 10, 5000, '2017-04-07 14:39:49'),
(2, 3, 3, 1, 90, '2017-04-17 18:57:40'),
(3, 3, 3, 1, 90, '2017-04-17 18:57:49'),
(4, 3, 3, 1, 90, '2017-04-17 19:03:48'),
(5, 3, 4, 1, 4000, '2017-04-17 19:08:06'),
(6, 9, 6, 3, 12000, '2017-04-18 15:27:03'),
(7, 9, 3, 2, 180, '2017-04-18 15:31:17'),
(8, 2, 6, 1, 4000, '2017-04-18 16:25:22'),
(9, 2, 3, 1, 90, '2017-04-18 16:41:57'),
(10, 2, 3, 1, 90, '2017-04-18 16:44:27'),
(11, 7, 6, 1, 4000, '2017-04-18 16:45:46'),
(12, 7, 3, 1, 90, '2017-04-18 16:47:37'),
(13, 7, 3, 1, 90, '2017-04-18 16:49:17'),
(14, 7, 3, 1, 90, '2017-04-18 16:51:03'),
(15, 7, 3, 1, 90, '2017-04-18 17:30:06'),
(16, 7, 3, 1, 90, '2017-04-18 17:34:33'),
(17, 7, 3, 1, 90, '2017-04-18 17:38:32'),
(18, 7, 6, 1, 4000, '2017-04-18 18:00:36'),
(19, 7, 3, 1, 90, '2017-04-18 18:01:43'),
(20, 7, 6, 1, 4000, '2017-04-18 18:03:24'),
(21, 7, 6, 1, 4000, '2017-04-18 18:11:23'),
(22, 7, 6, 1, 4000, '2017-04-18 18:29:42'),
(23, 7, 6, 1, 4000, '2017-04-18 18:33:15'),
(24, 7, 6, 1, 4000, '2017-04-18 19:22:23'),
(25, 2, 6, 1, 4000, '2017-04-18 19:31:17'),
(26, 9, 6, 1, 4000, '2017-04-19 21:56:40'),
(27, 9, 3, 1, 90, '2017-04-19 21:59:48'),
(28, 9, 6, 2, 8000, '2017-04-19 22:01:53'),
(29, 9, 6, 3, 12000, '2017-04-19 22:03:40'),
(30, 9, 6, 2, 8000, '2017-04-19 22:15:24'),
(31, 9, 6, 1, 4000, '2017-04-21 16:34:16'),
(32, 10, 6, 1, 4000, '2017-04-22 01:12:19'),
(33, 2, 6, 1, 4000, '2017-04-29 06:56:57'),
(34, 5, 6, 1, 4000, '2017-05-01 18:57:50'),
(35, 5, 6, 5, 20000, '2017-05-02 19:08:51'),
(36, 16, 7, 1, 25000, '2017-05-03 04:20:33'),
(37, 3, 1, 1, 250, '2018-03-10 02:23:30'),
(38, 2, 4, 1, 50, '2018-03-10 03:51:18');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `body` text NOT NULL,
  `netprice` float NOT NULL DEFAULT '0',
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productId`, `productName`, `catId`, `brandId`, `body`, `netprice`, `price`, `quantity`, `image`, `type`) VALUES
(1, 'big biscutes', 10, 5, 'most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.', 200, 250, 4, 'upload/08c3d7d8bc.jpg', 0),
(2, 'small biscutes', 7, 4, 'most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.', 100, 150, 6, 'upload/86f09e8666.jpg', 0),
(3, 'roci chanacor', 6, 2, 'most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.', 80, 100, 6, 'upload/2fa41df9ff.jpg', 1),
(4, 'love biscutes', 3, 1, 'most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.most wonderfulful.', 20, 50, 9, 'upload/111cf42d10.jpg', 0),
(5, 'misti', 10, 1, 'wonderful my country nature .\r\nwonderful my country nature .wonderful my country nature .wonderful my country nature .\r\nwonderful my country nature .\r\nwonderful my country nature .\r\nwonderful my country nature .\r\nwonderful my country nature .\r\nwonderful my country nature .\r\nwonderful my country nature .\r\n', 300, 350, 8, 'upload/51ac9e4e04.jpg', 0),
(6, 'beauty', 7, 2, 'wonderful my country nature .\r\nwonderful my country nature .\r\nwonderful my country nature .\r\nwonderful my country nature .\r\nwonderful my country nature .\r\nwonderful my country nature .\r\n', 200, 350, 6, 'upload/045fed4ccd.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pro_delivery`
--

CREATE TABLE `pro_delivery` (
  `did` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `total_amount` double NOT NULL,
  `serviceman` varchar(255) NOT NULL,
  `delivery_date` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pro_delivery`
--

INSERT INTO `pro_delivery` (`did`, `orderId`, `productName`, `quantity`, `price`, `total_amount`, `serviceman`, `delivery_date`) VALUES
(26, 50, 'flower', 1, 90, 90, 'jamal', '2017-05-04'),
(25, 50, 'flower', 1, 90, 90, 'jamal', '2017-05-03');

-- --------------------------------------------------------

--
-- Table structure for table `slogan`
--

CREATE TABLE `slogan` (
  `sId` int(11) NOT NULL,
  `sTitle` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slogan`
--

INSERT INTO `slogan` (`sId`, `sTitle`, `slogan`, `logo`) VALUES
(1, 'BD Online Shop', 'BD', 'upload/logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `social`
--

CREATE TABLE `social` (
  `id` int(11) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `google` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social`
--

INSERT INTO `social` (`id`, `facebook`, `twitter`, `google`) VALUES
(1, 'http://facebook.com.bd', 'http://twitter.com', 'http://google.com');

-- --------------------------------------------------------

--
-- Table structure for table `theme`
--

CREATE TABLE `theme` (
  `tid` int(11) NOT NULL,
  `theme` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `theme`
--

INSERT INTO `theme` (`tid`, `theme`) VALUES
(1, 'tan');

-- --------------------------------------------------------

--
-- Table structure for table `track_visitor`
--

CREATE TABLE `track_visitor` (
  `trackid` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `page` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_visitor`
--

INSERT INTO `track_visitor` (`trackid`, `userId`, `user_name`, `page`, `date`) VALUES
(1, 14, 'jamal', 'http://localhost/project/shop/admin/dashbord.php', '2017-05-03 09:07:36'),
(2, 5, 'fe', 'http://localhost/project/shop/admin/dashbord.php', '2017-05-03 09:09:32'),
(3, 5, 'fe', 'http://localhost/project/shop/admin/dashbord.php', '2017-05-03 09:11:21'),
(4, 5, 'fe', 'http://localhost/project/shop/admin/dashbord.php', '2017-05-03 09:12:10'),
(5, 5, 'fe', 'http://localhost/project/shop/admin/dashbord.php', '2017-05-03 09:12:18'),
(6, 5, 'fe', 'http://localhost/project/shop/admin/profile.php', '2017-05-03 09:12:53'),
(7, 5, 'fe', 'http://localhost/project/shop/admin/profile.php', '2017-05-03 09:12:54'),
(8, 5, 'fe', 'http://localhost/project/shop/admin/profile.php', '2017-05-03 09:12:55'),
(9, 5, 'admin', 'http://localhost/project/shop/admin/dashbord.php', '2017-05-03 09:13:23'),
(10, 5, 'admin', 'http://localhost/project/shop/admin/theme.php', '2017-05-03 09:13:48'),
(11, 5, 'admin', 'http://localhost/project/shop/admin/theme.php', '2017-05-03 09:15:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `employeeid` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `typeofuser` varchar(255) DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `name`, `employeeid`, `address`, `city`, `country`, `zip`, `phone`, `email`, `password`, `image`, `typeofuser`, `role`) VALUES
(10, 'erer', NULL, 'gdfg', 'd', 'dhaka', '34534', '1234567890', 'ss@g.com', '202cb962ac59075b964b07152d234b70', NULL, 'General', 1),
(2, 'shawon', NULL, 'sirajgong', 'comilla', 'bangladesh', '22', '016712245656', 'khaledmahmud44@gmail.com', '202cb962ac59075b964b07152d234b70', NULL, 'General', 1),
(3, 'khaled', NULL, '&lt;p&gt;dhaka, bangladesh&lt;/p&gt;', '', '', '', '', 'childrenparty4u@gmail.com', '202cb962ac59075b964b07152d234b70', 'upload/2cc44962ca.jpg', 'admin', 0),
(5, 'admin', '00123', '&lt;p&gt;b-baria&lt;/p&gt;', NULL, NULL, NULL, NULL, 'admin@gmail.com', '202cb962ac59075b964b07152d234b70', NULL, 'admin', 2),
(9, 'MD. Al Nafian Shawon', NULL, 'east rajabazar', 'dhaka', 'Bangladesh', '123456789', '00335325', 'nafianshawon490@gmail.com', '202cb962ac59075b964b07152d234b70', NULL, 'General', 1),
(16, 'khaled', NULL, 'East Rajabazar, Dhaka', 'dhaka', 'Bangladesh', '34534', '1234567890', 'khalad@gmail.com', '202cb962ac59075b964b07152d234b70', NULL, 'General', 1),
(12, 'Rakibul Alam', NULL, 'East Rajabazar, Dhaka', 'dhaka', 'ban', '1215', '988776654', 'rasag@gmail.com', '202cb962ac59075b964b07152d234b70', NULL, 'General', 1),
(14, 'jamal', '00124', 'dhaka', NULL, NULL, NULL, NULL, 'jamal@gmail.com', '202cb962ac59075b964b07152d234b70', 'upload/5b1f87981b.jpg', 'jamal', 3);

-- --------------------------------------------------------

--
-- Table structure for table `wlist`
--

CREATE TABLE `wlist` (
  `wId` int(11) NOT NULL,
  `cusId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `year`
--

CREATE TABLE `year` (
  `id` int(11) NOT NULL,
  `year` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `year`
--

INSERT INTO `year` (`id`, `year`, `price`) VALUES
(63, '2017', '40090');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attend`
--
ALTER TABLE `attend`
  ADD PRIMARY KEY (`aId`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `compare`
--
ALTER TABLE `compare`
  ADD PRIMARY KEY (`comId`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contactid`);

--
-- Indexes for table `cus_order`
--
ALTER TABLE `cus_order`
  ADD PRIMARY KEY (`orderId`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`pmId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `pro_delivery`
--
ALTER TABLE `pro_delivery`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `slogan`
--
ALTER TABLE `slogan`
  ADD PRIMARY KEY (`sId`);

--
-- Indexes for table `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `track_visitor`
--
ALTER TABLE `track_visitor`
  ADD PRIMARY KEY (`trackid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `year`
--
ALTER TABLE `year`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attend`
--
ALTER TABLE `attend`
  MODIFY `aId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `compare`
--
ALTER TABLE `compare`
  MODIFY `comId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contactid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cus_order`
--
ALTER TABLE `cus_order`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `pmId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pro_delivery`
--
ALTER TABLE `pro_delivery`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `slogan`
--
ALTER TABLE `slogan`
  MODIFY `sId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social`
--
ALTER TABLE `social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `theme`
--
ALTER TABLE `theme`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `track_visitor`
--
ALTER TABLE `track_visitor`
  MODIFY `trackid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `year`
--
ALTER TABLE `year`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- Database: `demo`
--
CREATE DATABASE IF NOT EXISTS `demo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `demo`;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `freePasses` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `postalCode` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `email`, `firstName`, `freePasses`, `lastName`, `postalCode`) VALUES
(3, 'rr@gmail.com', 'r', 'rr', 'rrr', 'rr');

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);
--
-- Database: `edumatirial`
--
CREATE DATABASE IF NOT EXISTS `edumatirial` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `edumatirial`;

-- --------------------------------------------------------

--
-- Table structure for table `nima`
--

CREATE TABLE `nima` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `email`) VALUES
(1, 'sager', 'sager@gmail.com'),
(2, 'hi', 'hi@gmail.com'),
(3, 'so', 'so@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nima`
--
ALTER TABLE `nima`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nima`
--
ALTER TABLE `nima`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `eshop`
--
CREATE DATABASE IF NOT EXISTS `eshop` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `eshop`;
--
-- Database: `farmer`
--
CREATE DATABASE IF NOT EXISTS `farmer` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `farmer`;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `email`) VALUES
(10, 'Nafian', 'nafian@gmail.com'),
(11, 'Nafian', 'golamnobi277@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `email`, `date`) VALUES
(1, 'sager', 'sager@gmail.com', '1/07/1997'),
(2, 'Mehedi Hasan+d', 'mehedi@gmail.com', '2/7/2019'),
(9, 'Rabbi', 'rabbi@gmail.com', '09/15/2016'),
(10, 'urmi', 'urmi@gmail.com', '5/3/2018');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `farmeraop`
--
CREATE DATABASE IF NOT EXISTS `farmeraop` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `farmeraop`;
--
-- Database: `helpinghand`
--
CREATE DATABASE IF NOT EXISTS `helpinghand` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `helpinghand`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminId` int(11) NOT NULL,
  `adminEmail` varchar(255) DEFAULT NULL,
  `adminName` varchar(255) DEFAULT NULL,
  `adminpassword` varchar(255) DEFAULT NULL,
  `admindate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminId`, `adminEmail`, `adminName`, `adminpassword`, `admindate`) VALUES
(1, 'rakibul9200@gmail.com', 'Rakibul Alam', '1234', '2019-09-12 21:43:27');

-- --------------------------------------------------------

--
-- Table structure for table `bookpost`
--

CREATE TABLE `bookpost` (
  `id` int(11) NOT NULL,
  `bookarea` varchar(255) DEFAULT NULL,
  `bookauthor` varchar(255) DEFAULT NULL,
  `bookcategory` varchar(255) DEFAULT NULL,
  `bookcondition` varchar(255) DEFAULT NULL,
  `bookphone` varchar(255) DEFAULT NULL,
  `bookdate` varchar(255) DEFAULT NULL,
  `bookdes` varchar(255) DEFAULT NULL,
  `bookemail` varchar(255) DEFAULT NULL,
  `bookexchangeoption` varchar(255) DEFAULT NULL,
  `bookimg` varchar(255) DEFAULT NULL,
  `bookname` varchar(255) DEFAULT NULL,
  `bookpublisher` varchar(255) DEFAULT NULL,
  `exchangebookAuthername` varchar(255) DEFAULT NULL,
  `exchangebookCategory` varchar(255) DEFAULT NULL,
  `exchangebookCondition` varchar(255) DEFAULT NULL,
  `exchangebookName` varchar(255) DEFAULT NULL,
  `exchangebookPublishername` varchar(255) DEFAULT NULL,
  `sellingprice` varchar(255) DEFAULT NULL,
  `userstatus` bit(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookpost`
--

INSERT INTO `bookpost` (`id`, `bookarea`, `bookauthor`, `bookcategory`, `bookcondition`, `bookphone`, `bookdate`, `bookdes`, `bookemail`, `bookexchangeoption`, `bookimg`, `bookname`, `bookpublisher`, `exchangebookAuthername`, `exchangebookCategory`, `exchangebookCondition`, `exchangebookName`, `exchangebookPublishername`, `sellingprice`, `userstatus`) VALUES
(16, 'Naogaon', 'Rakibul Alam', 'Academic', 'High', '46456786543', '2019.09.24', 'h', 'kamal@gmail.com', 'Donate', '2019.09.24.02.21.55.jpg', 'Rakibul Alam', 'Bappy', 'blank', 'blank', 'blank', 'blank', 'blank', 'blank', b'1'),
(14, 'Dhaka', 'Ismail Bukhari', 'Islamic', 'High', '01789562210', '2019.09.20', 'This is the most authentic book after Quran. ', 'shafayet@gmail.com', 'Donate', '2019.09.21.00.30.19.jpg', 'Shaheh Bukhari', 'Tawheed Publications', 'blank', 'blank', 'blank', 'blank', 'blank', 'blank', b'1'),
(15, 'Nawabganj', 'Md. Sagor Hossen', 'Academic', 'Moderate', '01685859200', '2019.09.23', 'This is a book of mathematics.', 'abdurrakib777@gmail.com', 'Donate', '2019.09.23.19.14.44.jpg', 'Mathmatics for Us', 'Ujjal ', 'blank', 'blank', 'blank', 'blank', 'blank', 'blank', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryId` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categorydate` datetime DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `categoryEmail` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryId`, `categoryName`, `categorydate`, `type`, `categoryEmail`) VALUES
(12, 'Science Fiction', '2019-09-20 22:36:23', 'Book', 'rakibul9200@gmail.com'),
(11, 'Academic ', '2019-09-20 22:36:23', 'Book', 'rakibul9200@gmail.com'),
(13, 'storybook', '2019-09-20 22:36:23', 'Book', 'rakibul9200@gmail.com'),
(14, 'History Book', '2019-09-20 22:36:23', 'Book', 'rakibul9200@gmail.com'),
(15, 'Table', '2019-09-20 22:36:23', 'Education Assistant', 'rakibul9200@gmail.com'),
(16, 'Bag', '2019-09-20 22:36:23', 'Educational Material', 'rakibul9200@gmail.com'),
(17, 'Pen', '2019-09-20 22:36:23', 'Educational Material', 'rakibul9200@gmail.com'),
(18, 'Geometry Tool Box', '2019-09-20 22:36:23', 'Educational Material', 'rakibul9200@gmail.com'),
(20, 'White Board', '2019-09-20 22:36:23', 'Educational Material', 'rakibul9200@gmail.com'),
(21, 'Projector', '2019-09-20 22:36:23', 'Education Assistant', 'rakibul9200@gmail.com'),
(22, 'Islamic', '2019-09-20 22:36:23', 'Book', 'rakibul9200@gmail.com'),
(24, 'Calculator', '2019-09-21 22:53:25', 'Educational Material', 'rakibul9200@gmail.com'),
(25, 'Rular', '2019-09-21 22:53:25', 'Educational Material', 'rakibul9200@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `date`, `email`, `message`, `name`) VALUES
(7, '2019-09-21 14:46:31', 'abdurrakib777@gmail.com', 'Your website design is simple and clear.', 'Abdur Rakib');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `locationId` int(11) NOT NULL,
  `locationDate` datetime DEFAULT NULL,
  `locationEmail` varchar(255) DEFAULT NULL,
  `locationName` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`locationId`, `locationDate`, `locationEmail`, `locationName`) VALUES
(2, '2019-09-19 08:09:32', 'rakibul9200@gmail.com', 'Nawabganj'),
(3, '2019-09-19 08:09:32', 'rakibul9200@gmail.com', 'Sirajganj'),
(4, '2019-09-19 08:09:32', 'rakibul9200@gmail.com', 'Naogaon'),
(5, '2019-09-20 22:36:23', 'rakibul9200@gmail.com', 'Dhaka'),
(6, '2019-09-20 22:36:23', 'rakibul9200@gmail.com', 'Noakhali'),
(7, '2019-09-20 22:36:23', 'rakibul9200@gmail.com', 'Khulna'),
(8, '2019-09-20 22:36:23', 'rakibul9200@gmail.com', 'Sylhet'),
(9, '2019-09-20 22:36:23', 'rakibul9200@gmail.com', 'Feni'),
(10, '2019-09-20 22:36:23', 'rakibul9200@gmail.com', 'Comilla'),
(12, '2019-09-20 22:36:23', 'rakibul9200@gmail.com', 'Pabna'),
(13, '2019-09-20 22:36:23', 'rakibul9200@gmail.com', 'Bogra'),
(14, '2019-09-20 22:36:23', 'rakibul9200@gmail.com', 'Rajshahi');

-- --------------------------------------------------------

--
-- Table structure for table `matrialpost`
--

CREATE TABLE `matrialpost` (
  `id` int(11) NOT NULL,
  `matrialbrandname` varchar(255) DEFAULT NULL,
  `matrialcategory` varchar(255) DEFAULT NULL,
  `matrialcondition` varchar(255) DEFAULT NULL,
  `materialcontact` varchar(255) DEFAULT NULL,
  `materialdate` varchar(255) DEFAULT NULL,
  `materialdescription` varchar(255) DEFAULT NULL,
  `matrialemail` varchar(255) DEFAULT NULL,
  `mexbarndname` varchar(255) DEFAULT NULL,
  `mexcategory` varchar(255) DEFAULT NULL,
  `mexcondition` varchar(255) DEFAULT NULL,
  `mexchangeitemname` varchar(255) DEFAULT NULL,
  `materialimg` varchar(255) DEFAULT NULL,
  `matrialname` varchar(255) DEFAULT NULL,
  `materialoptin` varchar(255) DEFAULT NULL,
  `matrialarea` varchar(255) DEFAULT NULL,
  `paidprice` int(11) DEFAULT NULL,
  `userstatus` bit(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matrialpost`
--

INSERT INTO `matrialpost` (`id`, `matrialbrandname`, `matrialcategory`, `matrialcondition`, `materialcontact`, `materialdate`, `materialdescription`, `matrialemail`, `mexbarndname`, `mexcategory`, `mexcondition`, `mexchangeitemname`, `materialimg`, `matrialname`, `materialoptin`, `matrialarea`, `paidprice`, `userstatus`) VALUES
(2, 'nieon', 'Bag', 'Moderate', '01858810221', '2019.09.16', 'This is good Bag', 'abdurrakib777@gmail.com', 'blank', 'blank', 'blank', 'blank', '2019.09.16.16.28.26.jpg', 'Smart Bag', 'Sell', 'Sirajganj', 50, b'1'),
(3, 'Fiver Crystal', 'Geometry Tool Box', 'High', '01553899221', '2019.09.20', 'This is gemetroy Box having all tools. ', 'abdurrakib777@gmail.com', 'Apex', 'Bag', 'Moderate', 'School Bag', '2019.09.20.23.18.58.jpg', 'Fiver Geometry Box', 'Exchange', 'Dhaka', 0, b'1'),
(4, 'Local Brand', 'White Board', 'Moderate', '01777777777', '2019.09.20', '15 inches white board.', 'abdurrakib777@gmail.com', 'blank', 'blank', 'blank', 'blank', '2019.09.20.23.28.20.jpg', 'Mini Size White Board ', 'Donate', 'Noakhali', 0, b'1'),
(5, 'Casio', 'Calculator', 'High', '01789654789', '2019.09.21', 'This is good one.', 'shafayet@gmail.com', 'blank', 'blank', 'blank', 'blank', '2019.09.21.23.09.20.jpg', 'Scientific Calculator', 'Donate', 'Nawabganj', 0, b'1'),
(6, 'Econo', 'Pen', 'High', '09876543213', '2019.10.05', '								  dd\r\n								', 'kamal@gmail.com', 'blank', 'blank', 'blank', 'blank', '2019.10.05.19.43.49.jpg', 'Marker', 'Donate', 'Naogaon', 0, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `postid` int(11) DEFAULT NULL,
  `postemail` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `senderemail` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `comment`, `date`, `postid`, `postemail`, `status`, `senderemail`) VALUES
(1, 'hellow', '2019-09-24 02:04:06', 14, 'shafayet@gmail.com', 1, 'kamal@gmail.com'),
(2, 'I want to buy this book.', '2019-09-28 11:14:58', 15, 'abdurrakib777@gmail.com', 1, 'shafayet@gmail.com'),
(3, 'I want to buy this book.', '2019-09-28 11:14:58', 15, 'abdurrakib777@gmail.com', 1, 'shafayet@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `userdate` varchar(255) DEFAULT NULL,
  `useremail` varchar(255) DEFAULT NULL,
  `usernid` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userpassword` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `userdate`, `useremail`, `usernid`, `username`, `userpassword`) VALUES
(24, '2019.09.21', 'kamal@gmail.com', '123654789632', 'Kamal Ahmed', '123'),
(25, '2019.09.21', 'khaledmahmud44@gmail.com', '123456789876', 'Rakibul Alam', '1234'),
(23, '2019.09.20', 'tanbir@gmail.com', '123456789123', 'Tanbir Hossen', '123'),
(21, '2019.09.21', 'abdurrakib777@gmail.com', '6577489651236', 'Abdur Rakib', '456'),
(22, '2019.09.20', 'shafayet@gmail.com', '147896523698', 'Shafayet', 'sha'),
(29, '2019.09.22', 'Buppy@gmail.com', '1478963258741', 'Buppy Haq', '12345'),
(20, '2019.09.21', 'rakibul9200@gmail.com', '4589632147896', 'Rakibul Alam', '123'),
(26, '2019.09.21', 'Jamal@gmail.com', '147896325879', 'Rakib', '123'),
(27, '2019.09.21', 'rafiq@gmail.com', '14789632587', 'Rafiqul Alam', '123'),
(28, '2019.09.21', 'khaledmahmud445@gmail.com', '1234567898765', 'Rakibul Alam', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `bookpost`
--
ALTER TABLE `bookpost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryId`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`locationId`);

--
-- Indexes for table `matrialpost`
--
ALTER TABLE `matrialpost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bookpost`
--
ALTER TABLE `bookpost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `locationId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `matrialpost`
--
ALTER TABLE `matrialpost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- Database: `kids`
--
CREATE DATABASE IF NOT EXISTS `kids` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `kids`;

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE `score` (
  `id` int(11) NOT NULL,
  `highscore` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `score`
--

INSERT INTO `score` (`id`, `highscore`) VALUES
(1, 20),
(2, 400),
(3, 500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `score`
--
ALTER TABLE `score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `library`
--
CREATE DATABASE IF NOT EXISTS `library` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `library`;

-- --------------------------------------------------------

--
-- Table structure for table `booklist`
--

CREATE TABLE `booklist` (
  `id` int(11) NOT NULL,
  `typebook` varchar(100) NOT NULL,
  `bookname` varchar(100) NOT NULL,
  `bookid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booklist`
--

INSERT INTO `booklist` (`id`, `typebook`, `bookname`, `bookid`) VALUES
(1, 'Story Book', 'THE RAILWAY CHILDREN', 'S001'),
(2, 'Story Book', 'WINNIE-THE-POOH', 'S002'),
(3, 'Story Book', 'SWALLOWS AND AMAZONS', 'S003'),
(4, 'Story Book', 'THE FARAWAY TREE', 'S004'),
(5, 'Cook Book', 'Art of the Pie', 'C011'),
(6, 'Cook Book', 'Cooking by Hand', 'C012'),
(7, 'Cook Book', 'Cooking by Hand', 'C013'),
(8, 'Cook Book', 'Against all Grain', 'C0014'),
(9, 'Text Book', 'Calculus', 'T001'),
(10, 'Text Book', 'General Science', 'T002');

-- --------------------------------------------------------

--
-- Table structure for table `bookorder`
--

CREATE TABLE `bookorder` (
  `id` int(11) NOT NULL,
  `bookId` varchar(11) NOT NULL,
  `usercode` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `role` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookorder`
--

INSERT INTO `bookorder` (`id`, `bookId`, `usercode`, `date`, `role`) VALUES
(17, 'S002', 'Kha0', '21-08-2019', 'Not Allow'),
(18, 'S003', 'Kha0', '21-08-2019', 'Allow');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `useremail` varchar(200) NOT NULL,
  `userroll` varchar(200) NOT NULL,
  `usergenerate` varchar(200) NOT NULL,
  `userdate` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `useremail`, `userroll`, `usergenerate`, `userdate`, `password`) VALUES
(3, 'Meekat Sbn', 'meekat@gmail.com', 'admin', 'admin', '07-08-2019', '123456'),
(6, 'Khalid Hasan', 'khalid@gmail.com', 'CSE-14', 'Kha0', '21-08-2019', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booklist`
--
ALTER TABLE `booklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookorder`
--
ALTER TABLE `bookorder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booklist`
--
ALTER TABLE `booklist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bookorder`
--
ALTER TABLE `bookorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `nemo`
--
CREATE DATABASE IF NOT EXISTS `nemo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `nemo`;

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE `score` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `highscore` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `score`
--

INSERT INTO `score` (`id`, `name`, `highscore`) VALUES
(13, 'Level3', 711);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `score`
--
ALTER TABLE `score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Database: `partseshop`
--
CREATE DATABASE IF NOT EXISTS `partseshop` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `partseshop`;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(9, 9, 1, 1),
(10, 16, 9, 1),
(11, 13, 2, 2),
(12, 13, 1, 1),
(13, 13, 5, 1),
(14, 18, 10, 1),
(15, 18, 5, 1),
(16, 20, 7, 1),
(17, 20, 17, 1),
(18, 20, 2, 21),
(20, 23, 4, 1),
(23, 21, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'CNG Spare Parts', 'laptops'),
(2, 'Motor Bike Spare Parts', 'desktop-pc'),
(3, 'CNGs', 'tablets'),
(4, 'Bikes', 'tablets'),
(6, 'Car Spare Parts', 'laptops');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `ID` int(10) NOT NULL,
  `userID` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `transaction` varchar(100) NOT NULL,
  `role` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`ID`, `userID`, `amount`, `transaction`, `role`) VALUES
(25, 21, 59999, 'ab4582901d', 0),
(26, 21, 59999, 'cash on delivery', 0),
(27, 21, 59999, 'cash on delivery', 0),
(28, 21, 59999, 'as', 0),
(29, 21, 59999, 'aaadsdfsdf', 0),
(30, 21, 59999, 'qwe', 0),
(31, 21, 59999, 'ab4582901d', 0),
(32, 21, 59999, 'ab4582901d', 0),
(33, 21, 59999, 'ab4582901d', 0),
(34, 21, 59999, 'ab4582901d', 0),
(35, 21, 35072900, '123asdfghj', 0),
(36, 0, 0, 'qwe', 0),
(37, 21, 0, 'qwe', 0),
(38, 21, 0, 'qwe', 0),
(39, 21, 7999, 'cash on delivery', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `ID` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`ID`, `name`, `email`, `subject`, `comment`) VALUES
(6, 'konok mahamud', 'konokmahamud22@gmail.com', 'dewqed', 'dfdfdsf'),
(7, 'md prince', 'shaharuf@yahoo.com', 'sub', 'please help'),
(8, 'rim', 'shaharufs@gmail.com', 'sub', '999999999999999999999999'),
(10, 'md prince', 'konokmahamud22@gmail.com', 'subdjjehh', 'dhgawdghbdejbdfhb'),
(11, 'md prince', '100266@daffodil.ac', 'help', 'please contact help');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`, `quantity`) VALUES
(1, 1, 'CNG Kit', '<p>Riding on unfathomable volumes of industrial expertise, we are providing a broad array of&nbsp;<strong>CNG Kit.</strong><br />\r\n<strong>Features</strong>:</p>\r\n\r\n<ul>\r\n	<li>Perfect finish</li>\r\n	<li>Simple installation</li>\r\n	<li>High durability</li>\r\n</ul>\r\n', 'cng-kit', 5000, 'cng-kit_1565196259.jpg', '2019-09-16', 2, 100),
(3, 1, 'CNG Sequential Reducer', '<h2>We are a unique entity in this industry, actively engaged in offering a premium quality array of&nbsp;<strong>CNG Sequential Reducer.</strong><br />\r\n<strong>Features</strong>:</h2>\r\n\r\n<ul>\r\n	<li>Easy installation</li>\r\n	<li>Reliable functioning</li>\r\n	<li>Superior finish</li>\r\n</ul>\r\n', 'cng-sequential-reducer', 1500, 'cng-sequential-reducer_1565195750.jpg', '2019-09-24', 1, 100),
(4, 1, 'CNG MPFI Indicator Switch', '<p>We are devoted towards offering the qualitative range of&nbsp;<strong>CNG MPFI Indicator Switch,</strong>&nbsp;as per client&rsquo;s precise need and requirements.<br />\r\n<strong>Features</strong>:</p>\r\n\r\n<ul>\r\n	<li>Clear indications</li>\r\n	<li>Simple installation</li>\r\n	<li>Optimum finish</li>\r\n</ul>\r\n', 'cng-mpfi-indicator-switch', 1750, 'cng-mpfi-indicator-switch_1565196479.jpg', '2019-09-15', 5, 100),
(5, 2, 'Car Parts', '<p>9.7 inch Retina Display, 2048 x 1536 Resolution, Wide Color and True Tone Display</p>\r\n\r\n<p>Apple iOS 9, A9X chip with 64bit architecture, M9 coprocessor</p>\r\n\r\n<p>12 MP iSight Camera, True Tone Flash, Panorama (up to 63MP), Four-Speaker Audio</p>\r\n\r\n<p>Up to 10 Hours of Battery Life</p>\r\n\r\n<p>iPad Pro Supports Apple Smart Keyboard and Apple Pencil</p>\r\n', 'car-parts', 339, 'apple-9-7-ipad-32-gb-gold_1568540923.jpg', '2019-09-24', 1, 100),
(6, 1, 'CNG Pressure Reducer', '<p>In line with clients&#39; diverse requirements, we are involved in providing an optimum quality range of&nbsp;<strong>CNG Pressure Reducer.</strong><br />\r\n<strong>Features</strong>:</p>\r\n\r\n<ul>\r\n	<li>Perfect finish</li>\r\n	<li>Precise design</li>\r\n	<li>Easy to install</li>\r\n</ul>\r\n', 'cng-pressure-reducer', 449, 'cng-pressure-reducer_1565195944.jpg', '0000-00-00', 0, 100),
(8, 1, 'Car CNG Kit', '<p>Being a leader in the industry, we are engaged in offering a qualitative range of&nbsp;<strong>Car CNG Kit</strong>&nbsp;to our clients.<br />\r\n<strong>Features</strong>:</p>\r\n\r\n<ul>\r\n	<li>Easy installation</li>\r\n	<li>Fine finish</li>\r\n	<li>Precise design</li>\r\n</ul>\r\n', 'car-cng-kit', 3500, 'car-cng-kit_1565196087.jpg', '0000-00-00', 0, 100),
(9, 2, 'Motor Parts', '<p>- Top performance for playing eSports and more&nbsp;<br />\r\n<br />\r\n- NVIDIA GeForce GTX graphics deliver smooth visuals&nbsp;<br />\r\n<br />\r\n- GeForce Experience delivers updates straight to your PC&nbsp;<br />\r\n<br />\r\nThe PC Specialist&nbsp;<strong>Vortex Core Lite&nbsp;</strong>is part of our Gaming range, bringing you the most impressive PCs available today. It has spectacular graphics and fast processing performance to suit the most exacting players.</p>\r\n', 'motor-parts', 599.99, 'pc-specialist-vortex-core-lite-gaming-pc_1568541078.jpg', '2019-09-17', 1, 100),
(10, 2, 'Bridgestone Exedra Max Cruiser and Touring Tire ', '<p>Features:</p>\r\n\r\n<ul>\r\n	<li>State-of-the-art pattern designs created specifically for cruisers</li>\r\n	<li>Central grooves running around the tire provide enhanced water evacuation properties, creating excellent wet grip and riding comfort</li>\r\n	<li>The grooves to the left and right provide ideal rigidity and linear handling</li>\r\n	<li>The center of the tread has a wide contact area to increase traction and wear resistance</li>\r\n	<li>EXEDRA MAX is available in an variety of sizes to fit all Japanese cruisers</li>\r\n	<li>Available in three basic structures: radial, bias and belted bias</li>\r\n	<li>S-rated for speeds up to 112 mph; H-rated for speeds up to 130 mph; V-rated for speeds up to 149+ mph; W-rated for speeds of 168+ mph</li>\r\n</ul>\r\n', 'bridgestone-exedra-max-cruiser-and-touring-tire', 599.99, 'bridgestone-exedra-max-cruiser-and-touring-tire_1565198264.JPG', '2019-09-14', 1, 100),
(11, 2, 'Dunlop Sportmax GPR-300 Motorcycle Tire', '<p>The Dunlop Sportmax GPR-300 Motorcycle Tire is one of the newest editions to the Sportmax family featuring a optimized construction to enhance handling and responsiveness for street riding. A advanced belt design and Joint less Band (JLB) rear tire construction utilizes a continuously wound belt for smooth performance and consistent tire contact patch while radial tire technology provides enhanced grip in wet and dry conditions.<br />\r\n&nbsp; &nbsp;<strong>Features:</strong></p>\r\n\r\n<ul>\r\n	<li>Radial tire technology provides enhanced grip in wet and dry conditions.</li>\r\n	<li>A advanced belt design and Joint-less Band (JLB) rear tire construction utilizes a continuously wound belt for smooth performance and consistent tire contact patch.</li>\r\n	<li>Optimized construction to enhance handling and responsiveness for street riding.</li>\r\n	<li>Radial tire for small displacement bikes</li>\r\n	<li>Aggressive sport-derived tread pattern for enhanced on-bike appearance.</li>\r\n</ul>\r\n', 'dunlop-sportmax-gpr-300-motorcycle-tire', 489.98, 'dunlop-sportmax-gpr-300-motorcycle-tire_1565198061.JPG', '2019-09-15', 4, 100),
(12, 2, 'CNG Sensor', '<p><strong>Being one of the renowned firms in the industry, we are decidedly involved in providing a premium quality array of&nbsp;CNG Sensor.<br />\r\nFeatures:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>High sensitivity</strong></li>\r\n	<li><strong>High durability</strong></li>\r\n	<li><strong>Accurate reading</strong></li>\r\n</ul>\r\n', 'cng-sensor', 149, 'cng-sensor_1565195595.jpg', '2018-05-12', 3, 100),
(13, 2, 'Metzeler ME 888 Marathon Ultra Motorcycle TireÂ ', '<p>New from Metzeler the Triple Eight ME 888 Marathon Ultra Motorcycle Tire that combines long tread life with the handling and performance you&#39;d expect from Metzeler<br />\r\n&nbsp; &nbsp;<strong>Features</strong></p>\r\n\r\n<ul>\r\n	<li>Ultra high mileage coupled with Metzeler performance and handling</li>\r\n	<li>Tubeless (TL)</li>\r\n	<li>H-rated for speeds up to 130 mph, V-rated for speeds up to 149 mph, (V)-rated for speeds of 149+ mph or (W) rated for speeds of 168+ mph</li>\r\n	<li>Wide Whitewall sizes available</li>\r\n	<li>Technology offering consistent performance throughout the tire&#39;s life</li>\r\n	<li>Specifically designed for custom touring bikes</li>\r\n	<li>Outstanding high and low speed stability and smooth handling</li>\r\n</ul>\r\n', 'metzeler-me-888-marathon-ultra-motorcycle-tire', 7999, 'metzeler-me-888-marathon-ultra-motorcycle-tire_1565198722.JPG', '2019-09-14', 4, 100),
(14, 1, 'CNG Sponsor', '<p>- Multi-task with ease thanks to Intel&reg; i5 processor&nbsp;<br />\r\n<br />\r\n- Prepare for battle with NVIDIA GeForce GTX graphics card&nbsp;<br />\r\n<br />\r\n- VR ready for the next-generation of immersive gaming and entertainment<br />\r\n<br />\r\n- Tool-less upgrade helps you personalise your system to your own demands&nbsp;<br />\r\n<br />\r\nPart of our Gaming range, which features the most powerful PCs available today, the Lenovo&nbsp;<strong>Legion Y520 Gaming PC</strong>&nbsp;has superior graphics and processing performance to suit the most demanding gamer.</p>\r\n', 'cng-sponsor', 899.99, 'lenovo-legion-y520-gaming-pc_1568540986.jpg', '2018-05-10', 13, 100),
(16, 2, 'Tires', '<p>Processor: Intel&reg; CoreTM i3-6100 Processor- Dual-core- 3.7 GHz- 3 MB cache</p>\r\n\r\n<p>Memory (RAM): 8 GB DDR4 HyperX, Storage: 1 TB HDD, 7200 rpm</p>\r\n\r\n<p>Graphics card: NVIDIA GeForce GTX 950 (2 GB GDDR5), Motherboard: ASUS H110M-R</p>\r\n\r\n<p>USB: USB 3.0 x 3- USB 2.0 x 5, Video interface: HDMI x 1- DisplayPort x 1- DVI x 2, Audio interface: 3.5 mm jack, Optical disc drive: DVD/RW, Expansion card slot PCIe: (x1) x 2</p>\r\n\r\n<p>Sound: 5.1 Surround Sound support PSU Corsair: VS350, 350W, Colour: Black- Green highlights, Box contents: PC Specialist Vortex Core- AC power cable</p>\r\n', 'tires', 649.99, 'pc-specialist-vortex-core-ii-gaming-pc_1568541052.jpg', '2018-05-10', 2, 100),
(17, 4, '125 CC Bike, Black', '<p>The next generation of our best-selling Fire tablet ever - now thinner, lighter, and with longer battery life and an improved display. More durable than the latest iPad</p>\r\n\r\n<p>Beautiful 7&quot; IPS display with higher contrast and sharper text, a 1.3 GHz quad-core processor, and up to 8 hours of battery life. 8 or 16 GB of internal storage and a microSD slot for up to 256 GB of expandable storage.</p>\r\n', '125-cc-bike-black', 49.99, 'amazon-fire-7-tablet-alexa-2017-8-gb-black_1568540153.jpg', '2019-07-11', 1, 100),
(18, 4, 'Full Body Parts (Bike)', '<p>Take your personal assistant with you wherever you go with this Amazon Fire HD 8 tablet featuring Alexa voice-activated cloud service. The slim design of the tablet is easy to handle, and the ample 8-inch screen is ideal for work or play. This Amazon Fire HD 8 features super-sharp high-definition graphics for immersive streaming.</p>\r\n', 'full-body-parts-bike', 79.99, 'amazon-fire-hd-8-tablet-alexa-2017-16-gb-black_1568540807.jpg', '2019-09-24', 2, 98),
(19, 4, 'Engine Parts.', '<p>The next generation of our best-reviewed Fire tablet, with up to 12 hours of battery life, a vibrant 8&quot; HD display, a 1.3 GHz quad-core processor, 1.5 GB of RAM, and Dolby Audio. More durable than the latest iPad.</p>\r\n\r\n<p>16 or 32 GB of internal storage and a microSD slot for up to 256 GB of expandable storage.</p>\r\n', 'engine-parts', 99.99, 'amazon-fire-hd-8-tablet-alexa-2017-32-gb-black_1568540853.jpg', '2018-05-10', 1, 100),
(27, 1, 'CNG Indicator Switch', '<p>To cater the variegated needs of our esteemed customers, we are highly engaged in offering a wide array of&nbsp;<strong>CNG Indicator Switch.</strong><br />\r\n<strong>Features</strong>:</p>\r\n\r\n<ul>\r\n	<li>Easy to install</li>\r\n	<li>Durable finish</li>\r\n	<li>Precise design</li>\r\n</ul>\r\n', 'cng-indicator-switch', 1599, 'cng-indicator-switch_1565196650.jpg', '2019-04-14', 1, 100),
(28, 4, 'GPR-300 Motorcycle Tire', '<p>See the bigger picture and communicate in a whole new way. With the Galaxy Note8 in your hand, bigger things are just waiting to happen.&nbsp;</p>\r\n\r\n<h3>The Infinity Display that&#39;s larger than life.&nbsp;</h3>\r\n\r\n<p>More screen means more space to do great things. Go big with the Galaxy Note8&#39;s 6.3&quot; screen. It&#39;s the largest ever screen on a Note device and it still fits easily in your hand.</p>\r\n\r\n<p>*Infinity Display: a near bezel-less, full-frontal glass, edge-to-edge screen.</p>\r\n\r\n<p>*Screen measured diagonally as a full rectangle without accounting for the rounded corners.</p>\r\n\r\n<p>Use the S Pen to express yourself in ways that make a difference. Draw your own emojis to show how you feel or write a message on a photo and send it as a handwritten note. Do things that matter with the S Pen.</p>\r\n\r\n<p>*Image simulated for illustration purpose only.</p>\r\n', 'gpr-300-motorcycle-tire', 829, 'samsung-note-8_1568541318.JPG', '2019-09-17', 1, 100),
(29, 5, 'Car Parts', '<h2>The revolutionary camera that adapts like the human eye.&nbsp;</h2>\r\n\r\n<h3>Capture stunning pictures in bright daylight and super low light.</h3>\r\n\r\n<p>Our category-defining Dual Aperture lens adapts like the human eye. It&#39;s able to automatically switch between various lighting conditions with ease&mdash;making your photos look great whether it&#39;s bright or dark, day or night.</p>\r\n\r\n<p>*Dual Aperture supports F1.5 and F2.4 modes. Installed on the rear camera (Galaxy S9)/rear wide camera (Galaxy S9+).</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.samsung.com/global/galaxy/galaxy-s9/images/galaxy-s9_slow_gif_visual_l.jpg\" style=\"height:464px; width:942px\" />Add music. Make GIFs. Get likes</p>\r\n\r\n<p>Super Slow-mo lets you see the things you could have missed in the blink of an eye. Set the video to music or turn it into a looping GIF, and share it with a tap. Then sit back and watch the reactions roll in.</p>\r\n', 'car-parts', 889.99, 'samsung-galaxy-s9-128-gb_1568541273.jpg', '2018-07-09', 3, 100),
(30, 3, 'CNG Auto RickShaw', '<p>Vehicle Model&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chief 711 CNG Pass</p>\r\n\r\n<p>Sitting Capacity&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6 + Driver</p>\r\n\r\n<p>Color&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Yellow Green And Black</p>\r\n\r\n<p>Fuel Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Petrol And CNG</p>\r\n\r\n<p>Tank Capacity&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gas 6.8 Kg Petrol 3.00 Ltr.</p>\r\n', 'cng-auto-rickshaw', 299000, 'cng-auto-rickshaw.jpg', '2019-09-24', 1, 100),
(31, 3, 'CNG Auto RickShaw New Model', '', 'cng-auto-rickshaw-new-model', 349900, 'cng-auto-rickshaw-new-model.jpg', '2019-09-17', 1, 100),
(32, 6, 'Bullet alloy wheels', '<p>Neo Wheels provides&nbsp;<strong>14&quot; Bullet alloy wheels</strong>&nbsp;that are suitably fitted in the vehicles like Aveo, Brio, Figo, I-20 and many more.</p>\r\n', 'bullet-alloy-wheels', 5000, 'bullet-alloy-wheels.png', '2019-09-17', 1, 100);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2018-05-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2018-05-10'),
(14, 21, 'ab4582901d', '2019-09-16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$G60lq.dL5mokQdHfZw6ZuuaZCxO/pTcUMQm./7hNwgr0J0Xno/bzq', 1, 'Admin', 'User', '', '', 'Featured-Image5.png', 1, '', '', '2018-05-01'),
(13, 'rayhan35@diit.info', '$2y$10$CwGGprViB2.ksV.92VECSuhCQr0JLx9iqRocBcxj8n6DOFpvVcasG', 0, 'Rayhan', 'm', '', '', '', 1, 'uIcQ3dS8Pqyr', '', '2019-04-12'),
(18, 'srk@ac.cc', '$2y$10$33B9hjhra5Fr2fiKfFPuOegYmwiKCxLFYM3gYVd2W0.ygPRMkHy1y', 0, 'monjil', 'rahman', '', '', '', 0, '', '', '0000-00-00'),
(19, 'user@dev.local', '$2y$10$TP9w1bT3iih.TjkCU23QdOoL6tze1m4z0S5ZP8U/eQBy.cf5kOsp6', 0, 'shaharuf', 'rahman', '', '', '', 0, 'qHeTyrbpSJ9W', '', '2019-07-11'),
(20, 'shaharufs@gmail.com', '$2y$10$bl.jNWr.37x261mvv/G38.w5knja.TAllU2MaLmCGk7e/e6fcWw3u', 1, 'shaharuf', 'rahman', '', '', '', 1, '6cE9PMeIkt4K', '', '2019-07-11'),
(21, 'shaharuf@yahoo.com', '$2y$10$JoP/Ol96w/6DHOYdXjQwm.xmI3VUU1Pz3kWr3oTFopH8FZtoZD8Ru', 0, 'shaharuf', 'rocky', '', '', '', 1, 'WhDJBdUPIzo4', '', '2019-08-08'),
(22, '1000100@daffodil.ac', '$2y$10$1LS71Jly57uEkTyihC5x7.qb5GDVEs6.wEAPpJz.dsXn/YW26dmPC', 0, 'Md. Ibrahim', 'Khalil', '', '', '', 1, 'c43rmyS2sBXD', '', '2019-09-15'),
(23, 'mdibrahimk48@gmail.com', '$2y$10$tpTHAJ95SIhrTUO3GVNRBeaMs3NvvXH4O8KAd0w4O2wRw.vtFg0Om', 0, 'Test ', 'User', '', '', '', 1, 'ruJYlWBOoSk6', '', '2019-09-15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'sudoko', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"progress\",\"user\"],\"table_structure[]\":[\"progress\",\"user\"],\"table_data[]\":[\"progress\",\"user\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"bdmarket\",\"table\":\"shopkeeper\"},{\"db\":\"bdmarket\",\"table\":\"post\"},{\"db\":\"bdmarket\",\"table\":\"customer\"},{\"db\":\"bdmarket\",\"table\":\"category\"},{\"db\":\"bdmarket\",\"table\":\"contactshopkeeper\"},{\"db\":\"bdmarket\",\"table\":\"messageshopkeeper\"},{\"db\":\"bdmarket\",\"table\":\"updateprofile\"},{\"db\":\"bdmarket\",\"table\":\"contact\"},{\"db\":\"bdmarket\",\"table\":\"employee\"},{\"db\":\"bdmarket\",\"table\":\"customer_order\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'bdmarket', 'shopkeeper', '{\"sorted_col\":\"`shorole`  ASC\"}', '2019-10-19 20:59:35'),
('root', 'shop', 'category', '{\"sorted_col\":\"`catName`  ASC\"}', '2018-11-18 22:41:19'),
('root', 'shop', 'deliveryserevice', '{\"sorted_col\":\"`deliser_id`  DESC\"}', '2018-11-18 10:15:28');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('', '2018-10-22 11:54:40', '{\"Console\\/Mode\":\"collapse\"}'),
('root', '2019-10-21 13:21:39', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":192}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `rms`
--
CREATE DATABASE IF NOT EXISTS `rms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `rms`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(7) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `name`) VALUES
(1, 'admin@gmail.com', '1234', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `contentname` varchar(100) NOT NULL,
  `content` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `trackname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `contentname`, `content`, `date`, `trackname`) VALUES
(6, 'Hellow everyone,Hopefully you are doing well..', 'upload/b8135d2ab0.jpg', '2019-08-08', 'Rafi Huq'),
(7, 'Hellow everyone,Hopefully you are doing well..', 'upload/4c77b86026.jpg', '2019-08-08', 'Rafi Huq'),
(8, 'Hellow everyone,Hopefully you are doing well..', 'upload/4e9e4379b0.png', '2019-08-08', 'Rafi Huq');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `name`, `email`, `password`) VALUES
(1, 'Rafi Huq', 'rafi@gmail.com', '1234'),
(4, 'Nazrana Haque', 'nazrana@daffodil.ac', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `email`, `password`, `role`) VALUES
(1, 'Mehedi Hasan', 'mehedihasan@gmail.com', '123', 'Block'),
(3, 'Shakib ', 'shakib@gmail.com', '1234', 'UNBlock'),
(4, 'Rabbi', 'rabbi@gmail.com', '1234', 'UNBlock'),
(5, 'Habib', 'habib@gmail.com', '1234', 'UNBlock');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `rms2`
--
CREATE DATABASE IF NOT EXISTS `rms2` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `rms2`;

-- --------------------------------------------------------

--
-- Table structure for table `file_post`
--

CREATE TABLE `file_post` (
  `post_id` int(11) NOT NULL,
  `file` tinyblob,
  `file_name` varchar(255) DEFAULT NULL,
  `post_date` varchar(255) DEFAULT NULL,
  `post_description` varchar(255) NOT NULL,
  `post_heading` varchar(255) NOT NULL,
  `user_username` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file_post`
--

INSERT INTO `file_post` (`post_id`, `file`, `file_name`, `post_date`, `post_description`, `post_heading`, `user_username`) VALUES
(1, 0xffd8ffe000104a46494600010101004800480000ffdb004300030202020202030202020303030304060404040404080606050609080a0a090809090a0c0f0c0a0b0e0b09090d110d0e0f101011100a0c12131210130f101010ffdb00430103030304030408040408100b090b1010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010ffc0001108020201f403011100021101031101ffc4001e0000010305010100000000000000000000000708090102040506030affc4005510000102050302040403050405050d09010102030004050611071221083109134151142261713281a115, 'rr', 'tt', 'gh', 'g', 'dddd');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `terms_And_Condition` varchar(255) DEFAULT NULL,
  `varsity_id` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_name`, `email`, `enabled`, `first_name`, `gender`, `last_name`, `password`, `phone_number`, `role`, `terms_And_Condition`, `varsity_id`) VALUES
('dddd', 'd@gmail.com', b'1', 'dd', 'male', 'dd', '62e5707bdcfc7a74f03f6f43187460d24e09bdba52018090781ef25517b08165da6f08ecea450039', '01755719929', 'ROLE_STUDENT', 'accept', '181-16-288'),
('jjjj', 'j@gmail.com', b'1', 'jj', 'Choose Gender...', 'jj', 'b097ff389efcf21dde91ac8f989ced8aef9aba67c06d67fbbd90274cde2cccf2db924138f258ee9a', '12345678987', 'ROLE_STUDENT', 'accept', '171-16_288');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `file_post`
--
ALTER TABLE `file_post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `FKlf3p6hjam9vbqykh0x4kb98p0` (`user_username`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `file_post`
--
ALTER TABLE `file_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `school`
--
CREATE DATABASE IF NOT EXISTS `school` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `school`;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(40) NOT NULL,
  `AccountNumber` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `Name`, `AccountNumber`) VALUES
(0, 'Bank of America', '00000132254545'),
(1, 'Equity Bank', '351672718822'),
(2, 'KCB Bank', '98262891719');

-- --------------------------------------------------------

--
-- Table structure for table `classattendance`
--

CREATE TABLE `classattendance` (
  `id` int(10) UNSIGNED NOT NULL,
  `Subject` int(10) UNSIGNED NOT NULL,
  `Student` int(10) UNSIGNED NOT NULL,
  `RegNo` int(10) UNSIGNED DEFAULT NULL,
  `Class` int(10) UNSIGNED DEFAULT NULL,
  `Stream` int(10) UNSIGNED DEFAULT NULL,
  `Attended` varchar(40) DEFAULT NULL,
  `Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classattendance`
--

INSERT INTO `classattendance` (`id`, `Subject`, `Student`, `RegNo`, `Class`, `Stream`, `Attended`, `Date`) VALUES
(0, 1, 1, 1, 1, 1, '1', '2018-07-22');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `Name`) VALUES
(0, '12'),
(1, 'Form One'),
(2, 'Form Two');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Date` date NOT NULL,
  `Details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `Name`, `Date`, `Details`) VALUES
(0, 'Bootcamp', '2018-07-30', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec maximus sollicitudin quam, vitae iaculis est pretium quis. Aliquam eget sapien odio. Sed erat augue, sollicitudin nec justo vel, dictum elementum nisi. Nunc augue ligula, bibendum egestas elit vel, egestas blandit velit. Donec tincidunt scelerisque lorem vel luctus. Phasellus eu tincidunt tellus, non tincidunt risus. Cras at eros orci. Proin sit amet malesuada mauris. Nunc massa velit, pellentesque id mi quis, efficitur semper dui.</p><br class=\"Apple-interchange-newline\">');

-- --------------------------------------------------------

--
-- Table structure for table `examcategories`
--

CREATE TABLE `examcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `examcategories`
--

INSERT INTO `examcategories` (`id`, `Name`) VALUES
(1, 'End Term 1');

-- --------------------------------------------------------

--
-- Table structure for table `examresults`
--

CREATE TABLE `examresults` (
  `id` int(10) UNSIGNED NOT NULL,
  `student` int(10) UNSIGNED NOT NULL,
  `RegNo` int(10) UNSIGNED DEFAULT NULL,
  `Class` int(10) UNSIGNED DEFAULT NULL,
  `Stream` int(10) UNSIGNED DEFAULT NULL,
  `Category` int(10) UNSIGNED DEFAULT NULL,
  `Subject` int(10) UNSIGNED DEFAULT NULL,
  `Marks` int(11) NOT NULL,
  `Term` int(10) UNSIGNED NOT NULL,
  `AcademicYear` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `feescollection`
--

CREATE TABLE `feescollection` (
  `id` int(10) UNSIGNED NOT NULL,
  `Student` int(10) UNSIGNED NOT NULL,
  `Class` int(10) UNSIGNED DEFAULT NULL,
  `Session` int(10) UNSIGNED NOT NULL,
  `PaidAmount` int(11) NOT NULL,
  `Balance` int(10) UNSIGNED DEFAULT NULL,
  `Branch` int(10) UNSIGNED NOT NULL,
  `Date` date DEFAULT NULL,
  `Remarks` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feescollection`
--

INSERT INTO `feescollection` (`id`, `Student`, `Class`, `Session`, `PaidAmount`, `Balance`, `Branch`, `Date`, `Remarks`) VALUES
(0, 0, 0, 1, 11000, 0, 1, '2018-07-30', 'Paid'),
(1, 1, 1, 1, 1000, 1, 1, '2018-05-02', NULL),
(2, 1, 1, 1, 3000, 1, 2, '2018-05-03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hostels`
--

CREATE TABLE `hostels` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Status` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hostels`
--

INSERT INTO `hostels` (`id`, `Name`, `Status`) VALUES
(0, 'Demo', 'Available'),
(1, 'Reez', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `membership_grouppermissions`
--

CREATE TABLE `membership_grouppermissions` (
  `permissionID` int(10) UNSIGNED NOT NULL,
  `groupID` int(11) DEFAULT NULL,
  `tableName` varchar(100) DEFAULT NULL,
  `allowInsert` tinyint(4) DEFAULT NULL,
  `allowView` tinyint(4) NOT NULL DEFAULT '0',
  `allowEdit` tinyint(4) NOT NULL DEFAULT '0',
  `allowDelete` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membership_grouppermissions`
--

INSERT INTO `membership_grouppermissions` (`permissionID`, `groupID`, `tableName`, `allowInsert`, `allowView`, `allowEdit`, `allowDelete`) VALUES
(1, 2, 'students', 1, 3, 3, 3),
(2, 2, 'feescollection', 1, 3, 3, 3),
(3, 2, 'branch', 1, 3, 3, 3),
(4, 2, 'teachers', 1, 3, 3, 3),
(5, 2, 'subjects', 1, 3, 3, 3),
(6, 2, 'classes', 1, 3, 3, 3),
(7, 2, 'streams', 1, 3, 3, 3),
(8, 2, 'hostels', 1, 3, 3, 3),
(9, 2, 'timetable', 1, 3, 3, 3),
(10, 2, 'events', 1, 3, 3, 3),
(11, 2, 'notices', 1, 3, 3, 3),
(12, 2, 'examresults', 1, 3, 3, 3),
(13, 2, 'parents', 1, 3, 3, 3),
(14, 2, 'examcategories', 1, 3, 3, 3),
(15, 2, 'sessions', 1, 3, 3, 3),
(16, 2, 'studentcategories', 1, 3, 3, 3),
(17, 2, 'classattendance', 1, 3, 3, 3),
(18, 2, 'fee_structure', 1, 3, 3, 3),
(19, 2, 'fee_structure', 1, 3, 3, 3),
(20, 2, 'fee_structure', 1, 3, 3, 3),
(21, 2, 'schoolmoney', 1, 3, 3, 3),
(40, 3, 'students', 0, 3, 0, 0),
(41, 3, 'feescollection', 0, 3, 0, 0),
(42, 3, 'branch', 1, 3, 0, 0),
(43, 3, 'teachers', 0, 3, 0, 0),
(44, 3, 'subjects', 0, 3, 0, 0),
(45, 3, 'classes', 0, 3, 0, 0),
(46, 3, 'streams', 0, 3, 0, 0),
(47, 3, 'hostels', 0, 3, 0, 0),
(48, 3, 'timetable', 0, 3, 0, 0),
(49, 3, 'events', 1, 3, 0, 0),
(50, 3, 'notices', 0, 3, 0, 0),
(51, 3, 'examresults', 0, 3, 0, 0),
(52, 3, 'parents', 0, 3, 0, 0),
(53, 3, 'examcategories', 0, 3, 0, 0),
(54, 3, 'sessions', 0, 3, 0, 0),
(55, 3, 'studentcategories', 0, 3, 0, 0),
(56, 3, 'classattendance', 0, 3, 0, 0),
(57, 3, 'schoolmoney', 0, 3, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `membership_groups`
--

CREATE TABLE `membership_groups` (
  `groupID` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `description` text,
  `allowSignup` tinyint(4) DEFAULT NULL,
  `needsApproval` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membership_groups`
--

INSERT INTO `membership_groups` (`groupID`, `name`, `description`, `allowSignup`, `needsApproval`) VALUES
(1, 'anonymous', 'Anonymous group created automatically on 2018-05-02', 0, 0),
(2, 'Admins', 'Admin group created automatically on 2018-05-02', 0, 1),
(3, 'users', 'all test users', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `membership_userpermissions`
--

CREATE TABLE `membership_userpermissions` (
  `permissionID` int(10) UNSIGNED NOT NULL,
  `memberID` varchar(20) NOT NULL,
  `tableName` varchar(100) DEFAULT NULL,
  `allowInsert` tinyint(4) DEFAULT NULL,
  `allowView` tinyint(4) NOT NULL DEFAULT '0',
  `allowEdit` tinyint(4) NOT NULL DEFAULT '0',
  `allowDelete` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `membership_userrecords`
--

CREATE TABLE `membership_userrecords` (
  `recID` bigint(20) UNSIGNED NOT NULL,
  `tableName` varchar(100) DEFAULT NULL,
  `pkValue` varchar(255) DEFAULT NULL,
  `memberID` varchar(20) DEFAULT NULL,
  `dateAdded` bigint(20) UNSIGNED DEFAULT NULL,
  `dateUpdated` bigint(20) UNSIGNED DEFAULT NULL,
  `groupID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membership_userrecords`
--

INSERT INTO `membership_userrecords` (`recID`, `tableName`, `pkValue`, `memberID`, `dateAdded`, `dateUpdated`, `groupID`) VALUES
(1, 'classes', '1', 'admin', 1525280850, 1525280850, 2),
(2, 'classes', '2', 'admin', 1525280867, 1525280867, 2),
(3, 'streams', '1', 'admin', 1525280880, 1525280880, 2),
(4, 'streams', '2', 'admin', 1525280893, 1525280893, 2),
(5, 'branch', '1', 'admin', 1525280912, 1525280912, 2),
(6, 'branch', '2', 'admin', 1525280926, 1525280926, 2),
(7, 'sessions', '1', 'admin', 1525280952, 1525314825, 2),
(8, 'fee_structure', '1', 'admin', 1525281199, 1525281199, 2),
(9, 'students', '1', 'admin', 1525281461, 1525306816, 2),
(10, 'feescollection', '1', 'admin', 1525281522, 1525306950, 2),
(11, 'hostels', '1', 'admin', 1525281663, 1525281663, 2),
(12, 'subjects', '1', 'admin', 1525294277, 1525294277, 2),
(13, 'schoolmoney', '1', 'admin', 1525306280, 1525306280, 2),
(14, 'examcategories', '1', 'admin', 1525310012, 1525310012, 2),
(15, 'feescollection', '2', 'admin', 1525314888, 1525314888, 2),
(0, 'classattendance', '0', 'admin', 1532241827, 1532241827, 2),
(0, 'schoolmoney', '0', 'admin', 1532945263, 1532945263, 2),
(0, 'classes', '0', 'admin', 1532945290, 1532945290, 2),
(0, 'studentcategories', '0', 'admin', 1532945324, 1532945324, 2),
(0, 'parents', '0', 'admin', 1532945398, 1532945398, 2),
(0, 'students', '0', 'admin', 1532945405, 1532945405, 2),
(0, 'teachers', '0', 'admin', 1532956950, 1532956950, 2),
(0, 'subjects', '0', 'admin', 1532956992, 1532956992, 2),
(0, 'notices', '0', 'admin', 1532957308, 1532957308, 2),
(0, 'hostels', '0', 'admin', 1532957327, 1532957327, 2),
(0, 'feescollection', '0', 'admin', 1532957665, 1532957665, 2),
(0, 'branch', '0', 'admin', 1532957704, 1532957704, 2),
(0, 'events', '0', 'admin', 1532958930, 1532958930, 2);

-- --------------------------------------------------------

--
-- Table structure for table `membership_users`
--

CREATE TABLE `membership_users` (
  `memberID` varchar(20) NOT NULL,
  `passMD5` varchar(40) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `signupDate` date DEFAULT NULL,
  `groupID` int(10) UNSIGNED DEFAULT NULL,
  `isBanned` tinyint(4) DEFAULT NULL,
  `isApproved` tinyint(4) DEFAULT NULL,
  `custom1` text,
  `custom2` text,
  `custom3` text,
  `custom4` text,
  `comments` text,
  `pass_reset_key` varchar(100) DEFAULT NULL,
  `pass_reset_expiry` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membership_users`
--

INSERT INTO `membership_users` (`memberID`, `passMD5`, `email`, `signupDate`, `groupID`, `isBanned`, `isApproved`, `custom1`, `custom2`, `custom3`, `custom4`, `comments`, `pass_reset_key`, `pass_reset_expiry`) VALUES
('admin', 'af359ab8f3da5f33ffa01f6736e8c02d', 'ronniengoda@gmail.com', '2018-05-02', 2, 0, 1, NULL, NULL, NULL, NULL, 'Admin member created automatically on 2018-05-02\nRecord updated automatically on 2018-05-03', NULL, NULL),
('guest', NULL, NULL, '2018-05-02', 1, 0, 1, NULL, NULL, NULL, NULL, 'Anonymous member created automatically on 2018-05-02', NULL, NULL),
('kelvin', 'bdf0a027d5e138c2428f5acd68d7d600', 'kevo@gmail.com', '2018-05-03', 3, 0, 1, '', '', '', '', 'member signed up through the registration form.', NULL, NULL),
('harry', 'd3915844cde56f2dccfd24c7d34d12f0', 'harry@den.com', '2018-07-05', 3, 0, 1, '', '', '', '', 'member signed up through the registration form.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Date` date NOT NULL,
  `Details` text NOT NULL,
  `Posted_By` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `Name`, `Date`, `Details`, `Posted_By`) VALUES
(0, 'Spirng Carnival', '2018-07-30', 'To inform all the students about the Spring Carnival Event which is going to be held on school premises. All the students are requested to take part in different activities. For more details contact RTE.', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Phone` varchar(40) NOT NULL,
  `Email` varchar(80) DEFAULT NULL,
  `HomeAddress` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`id`, `Name`, `Phone`, `Email`, `HomeAddress`) VALUES
(0, 'Demo', '123456789', NULL, 'demo');

-- --------------------------------------------------------

--
-- Table structure for table `schoolmoney`
--

CREATE TABLE `schoolmoney` (
  `id` int(10) UNSIGNED NOT NULL,
  `Class` int(10) UNSIGNED NOT NULL,
  `Particulars` text NOT NULL,
  `Total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schoolmoney`
--

INSERT INTO `schoolmoney` (`id`, `Class`, `Particulars`, `Total`) VALUES
(1, 1, 'All fees-15000', '15000.00'),
(0, 2, 'demo', '15000.00');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(10) UNSIGNED NOT NULL,
  `Year` varchar(40) NOT NULL,
  `Term` varchar(40) NOT NULL,
  `status` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `Year`, `Term`, `status`) VALUES
(1, '2018', '2', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `streams`
--

CREATE TABLE `streams` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `streams`
--

INSERT INTO `streams` (`id`, `Name`) VALUES
(1, 'East'),
(2, 'Central');

-- --------------------------------------------------------

--
-- Table structure for table `studentcategories`
--

CREATE TABLE `studentcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `studentcategories`
--

INSERT INTO `studentcategories` (`id`, `Name`) VALUES
(0, 'Demo');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `FullName` varchar(40) NOT NULL,
  `Gender` varchar(40) NOT NULL,
  `DOB` date NOT NULL,
  `Photo` varchar(40) DEFAULT NULL,
  `RegNo` varchar(40) NOT NULL,
  `Class` int(10) UNSIGNED NOT NULL,
  `Stream` int(10) UNSIGNED DEFAULT NULL,
  `Hostel` int(10) UNSIGNED DEFAULT NULL,
  `DOJ` date NOT NULL,
  `Category` int(10) UNSIGNED DEFAULT NULL,
  `AcademicYear` int(10) UNSIGNED NOT NULL,
  `TotalFees` int(10) UNSIGNED NOT NULL,
  `AdvanceFees` int(11) NOT NULL,
  `Balance` int(11) DEFAULT NULL,
  `Parent` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `FullName`, `Gender`, `DOB`, `Photo`, `RegNo`, `Class`, `Stream`, `Hostel`, `DOJ`, `Category`, `AcademicYear`, `TotalFees`, `AdvanceFees`, `Balance`, `Parent`) VALUES
(1, 'Wafula Chebukati', 'Male', '1916-01-18', NULL, 'IEBC/2017', 1, 2, 1, '2018-05-02', NULL, 1, 1, 10500, 500, NULL),
(0, 'Harry Den', 'Male', '1996-02-05', NULL, '852', 0, 2, 1, '2018-07-30', 0, 1, 1, 500, 3500, 0),
(0, 'Christine Gray', 'Female', '1997-04-17', '04619000_1532957454.jpg', '123', 0, 2, 0, '2018-07-30', 0, 1, 0, 5000, 3500, 0),
(0, 'Johnny Doe', 'Male', '1996-03-16', '68070100_1532957566.png', '80', 0, 1, 1, '2018-07-30', 0, 1, 1, 6000, 3500, 0),
(0, 'Bruno Den', 'Male', '1996-12-18', '24894200_1532957631.png', '366', 0, 2, 1, '2018-07-30', 0, 1, 1, 2000, 3500, 0),
(0, 'William Carter', 'Male', '1996-09-15', '08808400_1532959007.png', '852', 0, 2, 0, '2018-07-30', 0, 1, 0, 1500, 13500, 0);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `Name`) VALUES
(1, 'Tec 104'),
(0, 'Database');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Gender` varchar(40) NOT NULL,
  `Age` int(11) NOT NULL,
  `Phone` varchar(40) NOT NULL,
  `Email` varchar(80) DEFAULT NULL,
  `StaffNumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `Name`, `Gender`, `Age`, `Phone`, `Email`, `StaffNumber`) VALUES
(0, 'John Doe', 'Male', 29, '7531598522', 'johndoe@gmail.com', 12),
(0, 'Benedict Cober', 'Male', 33, '1597534560', 'iambenedict@mail.com', 13);

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `id` int(10) UNSIGNED NOT NULL,
  `Time_Table` varchar(40) NOT NULL,
  `Class` int(10) UNSIGNED NOT NULL,
  `Stream` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classattendance`
--
ALTER TABLE `classattendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Subject` (`Subject`),
  ADD KEY `Student` (`Student`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examcategories`
--
ALTER TABLE `examcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examresults`
--
ALTER TABLE `examresults`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student` (`student`),
  ADD KEY `Category` (`Category`),
  ADD KEY `Subject` (`Subject`),
  ADD KEY `Term` (`Term`);

--
-- Indexes for table `feescollection`
--
ALTER TABLE `feescollection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Student` (`Student`),
  ADD KEY `Session` (`Session`),
  ADD KEY `Branch` (`Branch`);

--
-- Indexes for table `hostels`
--
ALTER TABLE `hostels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership_grouppermissions`
--
ALTER TABLE `membership_grouppermissions`
  ADD PRIMARY KEY (`permissionID`);

--
-- Indexes for table `membership_groups`
--
ALTER TABLE `membership_groups`
  ADD PRIMARY KEY (`groupID`);

--
-- Indexes for table `membership_userpermissions`
--
ALTER TABLE `membership_userpermissions`
  ADD PRIMARY KEY (`permissionID`);

--
-- Indexes for table `membership_userrecords`
--
ALTER TABLE `membership_userrecords`
  ADD UNIQUE KEY `tableName_pkValue` (`tableName`,`pkValue`),
  ADD KEY `pkValue` (`pkValue`),
  ADD KEY `tableName` (`tableName`),
  ADD KEY `memberID` (`memberID`),
  ADD KEY `groupID` (`groupID`);

--
-- Indexes for table `membership_users`
--
ALTER TABLE `membership_users`
  ADD KEY `groupID` (`groupID`);
--
-- Database: `security`
--
CREATE DATABASE IF NOT EXISTS `security` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `security`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `a_email` varchar(100) NOT NULL,
  `a_password` int(100) NOT NULL,
  `a_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `a_email`, `a_password`, `a_name`) VALUES
(1, 'admin@gmail.com', 1234, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `b_name` varchar(100) NOT NULL,
  `b_des` varchar(100) NOT NULL,
  `b_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `name`, `email`, `b_name`, `b_des`, `b_date`) VALUES
(13, 'Khalid Hasan', 'khalid@gmail.com', 'Network Security Engineer', 'A network security engineer does a multifaceted job. They are responsible for many different tasks o', '2019-04-27');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(100) NOT NULL,
  `c_email` varchar(100) NOT NULL,
  `c_subject` varchar(100) NOT NULL,
  `c_message` varchar(100) NOT NULL,
  `c_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`c_id`, `c_name`, `c_email`, `c_subject`, `c_message`, `c_date`) VALUES
(1, 'Ashif', 'ashif@gmail.com', 'I need to train up something', 'what are happend', '2019-04-26'),
(2, 'shakib', 'shakib@gmail.com', 'need help', 'how to get your course', '2019-04-26');

-- --------------------------------------------------------

--
-- Table structure for table `regstration`
--

CREATE TABLE `regstration` (
  `r_id` int(11) NOT NULL,
  `r_firstname` varchar(50) NOT NULL,
  `r_surname` varchar(50) NOT NULL,
  `r_businessname` varchar(100) NOT NULL,
  `r_jobtitle` varchar(100) NOT NULL,
  `t_interested` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `r_code` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regstration`
--

INSERT INTO `regstration` (`r_id`, `r_firstname`, `r_surname`, `r_businessname`, `r_jobtitle`, `t_interested`, `email`, `date`, `r_code`, `password`) VALUES
(1, 'hasan', 'Ali', 'programmer', 'dot', 'Information Security Analyst', 'hasan@gmail.com', '2019-04-26', '68080', 'sager'),
(2, 'Mehdi', 'Khan', 'Business man', 'dot', 'Malware Analyst', 'mehedi@gmail.com', '2019-04-26', 'meh25187', 'sager'),
(3, 'Khalid Hasan', 'Hasan', 'peer to peer', 'Student', 'Chief Information Security Officer', 'khalid@gmail.com', '2019-04-27', 'kha202', 'sager');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `s_id` int(11) NOT NULL,
  `s_name` varchar(50) NOT NULL,
  `s_date` varchar(50) NOT NULL,
  `s_des` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`s_id`, `s_name`, `s_date`, `s_des`) VALUES
(2, 'Information Security Analyst', '2019-04-26', 'Information Security Analyst. Information security analysts implement measures to safeguard a compan'),
(3, 'Network Security Engineer', '2019-04-26', 'A network security engineer does a multifaceted job. They are responsible for many different tasks o'),
(4, 'Malware Analyst', '2019-04-26', 'Malware analysts are experts at identifying cyber threats such as worms, trojans, bots, rootkits and'),
(5, 'Chief Information Security Officer', '2019-04-26', 'A chief information security officer (CISO) is the senior-level executive within an organization res'),
(6, 'Forensic Analyst', '2019-04-27', 'Information Security Analyst. Information security analysts implement measures to safeguard a compan'),
(7, 'Incident Responder', '2019-04-27', 'Malware analysts are experts at identifying cyber threats such as worms, trojans, bots, rootkits and');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `regstration`
--
ALTER TABLE `regstration`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`s_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `regstration`
--
ALTER TABLE `regstration`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `shop`
--
CREATE DATABASE IF NOT EXISTS `shop` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `shop`;

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brandId`, `brandName`, `category`) VALUES
(14, 'AC', 'AC');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartId` int(11) NOT NULL,
  `sId` varchar(255) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `size` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartId`, `sId`, `productId`, `productName`, `price`, `quantity`, `image`, `size`) VALUES
(270, '8k08t6ubm3ptvileacn1um8gl8', 48, '  1 Ton AC, 1 Ton- New Air Conditioner in Bangladesh,in Bangladesh', 13000, 1, 'upload/f285faa751.jpg', 'M'),
(269, '8k08t6ubm3ptvileacn1um8gl8', 53, '  1 Ton AC, 1 Ton- New Air Conditioner in Bangladesh,in Bangladesh', 10000, 1, 'upload/ec620571c8.jpg', 'S');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catId`, `catName`) VALUES
(39, 'Whirlpool Interval Air Conditioner (AC)'),
(38, 'Whirlpool Air Conditioner (AC)'),
(36, 'Sharp Air Conditioner (AC)'),
(37, 'Sharp Inverter Air Conditioner (AC)'),
(35, 'Panasonic Air Conditioner (AC)'),
(34, 'Midea Air Conditioner (AC)'),
(33, 'LG Air Conditioner (AC)'),
(32, 'Hitachi Air Conditioner (AC)'),
(31, 'General Air Conditioner (AC)'),
(30, 'Conion Air Conditioner (AC)'),
(29, 'Carrier Air Conditioner (AC)');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contactid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobileNo` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customerinfo`
--

CREATE TABLE `customerinfo` (
  `cus_id` int(11) NOT NULL,
  `cus_name` varchar(100) NOT NULL,
  `cus_email` varchar(100) NOT NULL,
  `cus_contactno` varchar(100) NOT NULL,
  `cus_deliverylocation` varchar(100) NOT NULL,
  `cus_address` varchar(100) NOT NULL,
  `cus_sex` varchar(100) NOT NULL,
  `cus_date` date NOT NULL,
  `cus_city` varchar(100) NOT NULL,
  `cus_country` varchar(100) NOT NULL,
  `role` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerinfo`
--

INSERT INTO `customerinfo` (`cus_id`, `cus_name`, `cus_email`, `cus_contactno`, `cus_deliverylocation`, `cus_address`, `cus_sex`, `cus_date`, `cus_city`, `cus_country`, `role`) VALUES
(34, 'Johirul Islam', 'islam@gmail.com', '09876543212', '12345', 'Mohammadpur', 'Male', '2018-11-21', 'dhaka', 'Bangladesh', 1),
(36, 'Surojit', 'surojit@gmail.com', '12345678908', 'sager', 'Sirajgong', 'Male', '2019-01-16', 'dhaka', 'Bangladesh', 1),
(32, 'karim', 'karim@gmail.com', '12345785675', '12345', 'Sirajgong', 'Male', '2018-11-19', 'dhaka', 'Bangladesh', 1),
(33, 'Hasib', 'hasib@gmail.com', '12345785675', '12345', 'Sirajgong', 'Male', '2018-11-19', 'dhaka', 'Bangladesh', 1),
(31, 'Rabbi', 'rabbi@gmail.com', '12345785675', '12345', 'Sirajgong', 'Male', '2018-11-19', 'dhaka', 'Bangladesh', 1),
(28, 'Nusrat', 'nusrat@gmail.com', '09876543212', '123456', 'Mohammadpur', 'Female', '2018-11-19', 'dhaka', 'dhaka', 3),
(37, 'hamid', 'hamid@gmail.com', '01234567876', 'sager', 'belkuchi', 'Male', '2019-09-01', 'Dhaka', 'bangladesh', 1),
(30, 'Shakil Hasan', 'nafianshawon96@gmail.com', '12345678908', '12345', 'Mohammadpur', 'Male', '2018-11-19', 'dhaka', 'Bangladesh', 1),
(29, 'Juthi', 'juthi@gmail.com', '12345785675', '1234', 'Mohammadpur', 'Female', '2018-11-19', 'dhaka', 'dhaka', 0),
(35, 'Hasan', 'hasan@gmail.com', '09876543216', '123456', 'Panthapath', '--Select--', '2018-11-22', 'dhaka', 'Rajshai', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cus_order`
--

CREATE TABLE `cus_order` (
  `orderId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cus_order`
--

INSERT INTO `cus_order` (`orderId`, `userId`, `productId`, `productName`, `quantity`, `price`, `image`, `date`, `status`) VALUES
(92, 30, 50, '  1 Ton AC, 1 Ton- New Air Conditioner in Bangladesh,in Bangladesh', 2, 28600, 'upload/3320f4f590.jpeg', '2018-11-19 16:16:20', 0),
(94, 37, 52, '  1 Ton AC, 1 Ton- New Air Conditioner in Bangladesh,in Bangladesh', 2, 19800, 'upload/f58038d107.jpg', '2019-09-01 21:38:36', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cus_orderent`
--

CREATE TABLE `cus_orderent` (
  `orderId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `productId` varchar(100) NOT NULL,
  `productName` varchar(110) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `month` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cus_orderent`
--

INSERT INTO `cus_orderent` (`orderId`, `userId`, `productId`, `productName`, `quantity`, `price`, `image`, `date`, `status`, `month`) VALUES
(7, 34, '13', '  1 Ton AC, 1 Ton- New Air Conditioner in Bangladesh,in Bangladesh', '4', '11000', 'upload/7fe0489471.jpg', '2018-11-21', 0, '1'),
(8, 36, '10', '  1 Ton AC, 1 Ton- New Air Conditioner in Bangladesh,in Bangladesh', '2', '4400', 'upload/083644df90.jpg', '2019-07-16', 0, '5');

-- --------------------------------------------------------

--
-- Table structure for table `db_backup`
--

CREATE TABLE `db_backup` (
  `db_id` int(11) NOT NULL,
  `db_name` varchar(100) NOT NULL,
  `db_description` varchar(250) NOT NULL,
  `db_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_backup`
--

INSERT INTO `db_backup` (`db_id`, `db_name`, `db_description`, `db_date`) VALUES
(19, 'CMYShop', 'db-backup-1542584236-a1718d1065fdc2084bbc65ffa1346d9f.sql', '2018-11-19');

-- --------------------------------------------------------

--
-- Table structure for table `deliveryserevice`
--

CREATE TABLE `deliveryserevice` (
  `deid_id` int(11) NOT NULL,
  `deliser_id` int(11) NOT NULL,
  `deliser_name` varchar(150) NOT NULL,
  `deliser_proname` varchar(150) NOT NULL,
  `deliser_date` date NOT NULL,
  `role` int(8) NOT NULL,
  `userId` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deliveryserevice`
--

INSERT INTO `deliveryserevice` (`deid_id`, `deliser_id`, `deliser_name`, `deliser_proname`, `deliser_date`, `role`, `userId`) VALUES
(2, 94, '1 Ton AC, 1 Ton- New Air Conditioner in Bangladesh,in Bangladesh', 'Rahim', '2019-09-13', 1, '37');

-- --------------------------------------------------------

--
-- Table structure for table `employeeinfo`
--

CREATE TABLE `employeeinfo` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `emp_designation` varchar(100) NOT NULL,
  `emp_address` varchar(100) NOT NULL,
  `emp_sex` text NOT NULL,
  `emp_nid` varchar(100) NOT NULL,
  `emp_contactno` varchar(100) NOT NULL,
  `emp_worktype` varchar(100) NOT NULL,
  `emp_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeeinfo`
--

INSERT INTO `employeeinfo` (`emp_id`, `emp_name`, `emp_designation`, `emp_address`, `emp_sex`, `emp_nid`, `emp_contactno`, `emp_worktype`, `emp_date`) VALUES
(14, 'Rahim', 'External Employee', 'Mohammadpur,Dhaka', 'Male', '34564565456', '09876543212', 'Full-Time', '2018-11-19'),
(15, 'Habib', 'External Employee', 'Dhanmondi,Dhaka', 'Male', '345645654566', '09876543212', 'Full-Time', '2018-11-19'),
(16, 'Seam', 'External Employee', 'Mohammadpur,Dhaka', 'Male', '345645654564', '09876543212', 'Half-Time', '2018-11-19'),
(17, 'Ali khan', 'External Employee', 'Dhanmondi,Dhaka', 'Male', '345645654561', '09876543212', 'Full-Time', '2018-11-19'),
(18, 'Habib', 'Internal Employee', 'Dhanmondi,Dhaka', 'Male', '33434343434344', '09876543212', 'Full-Time', '2018-11-19'),
(19, 'Seam', 'Internal Employee', 'Belkuchi,Sirajgong', 'Male', '334343434343445', '09876543212', 'Half-Time', '2018-11-19');

-- --------------------------------------------------------

--
-- Table structure for table `month_setting`
--

CREATE TABLE `month_setting` (
  `m_id` int(11) NOT NULL,
  `m_user` varchar(100) NOT NULL,
  `m_order` varchar(100) NOT NULL,
  `m_product` varchar(100) NOT NULL,
  `m_employee` varchar(100) NOT NULL,
  `m_sellprice` varchar(100) NOT NULL,
  `m_regine` varchar(100) NOT NULL,
  `m_month` varchar(100) NOT NULL,
  `m_year` varchar(100) NOT NULL,
  `m_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `month_setting`
--

INSERT INTO `month_setting` (`m_id`, `m_user`, `m_order`, `m_product`, `m_employee`, `m_sellprice`, `m_regine`, `m_month`, `m_year`, `m_date`) VALUES
(1, '0.00', '2', '24', '6', '62700', '1', 'January', '2018', '2018-11-22'),
(3, '22', '5', '44', '55', '4534', '435', 'Februry', '2017', '2017-11-22'),
(5, '45', '55', '5', '4', '43545', '5', 'January', '2016', '2016-11-22');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `pmId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `total_amount` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `buy_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`pmId`, `userId`, `productId`, `quantity`, `total_amount`, `date`, `buy_status`) VALUES
(71, 37, 52, 2, 19800, '2019-09-01 15:38:36', 1),
(70, 34, 41, 3, 34100, '2018-11-21 12:46:33', 1),
(69, 30, 50, 2, 28600, '2018-11-19 10:16:20', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `body` text NOT NULL,
  `netprice` float NOT NULL DEFAULT '0',
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productId`, `productName`, `catId`, `brandId`, `body`, `netprice`, `price`, `quantity`, `image`, `type`) VALUES
(38, '  1 Ton AC, 1 Ton- New Air Conditioner in Bangladesh,in Bangladesh', 39, 14, 'Carrier Air Conditioner 38KHA012N is designed to create a cool and comfortable living environment. It can be used in residential as well as commercial properties. It has been integrated with an ionizer to ensure refreshing, natural and healthy air. The ionizer generates a high voltage ionization zone through ', 10, 13000, 66, 'upload/6cb8dd488a.jpg', 1),
(37, '  1 Ton AC, 1 Ton- New Air Conditioner in Bangladesh,in Bangladesh', 39, 14, 'Carrier Air Conditioner 38KHA012N is designed to create a cool and comfortable living environment. It can be used in residential as well as commercial properties. It has been integrated with an ionizer to ensure refreshing, natural and healthy air. The ionizer generates a high voltage ionization zone through ', 10, 13000, 66, 'upload/3060c252b1.jpg', 0),
(36, '  1 Ton AC, 1 Ton- New Air Conditioner in Bangladesh,in Bangladesh', 39, 14, 'Carrier Air Conditioner 38KHA012N is designed to create a cool and comfortable living environment. It can be used in residential as well as commercial properties. It has been integrated with an ionizer to ensure refreshing, natural and healthy air. The ionizer generates a high voltage ionization zone through ', 10, 13000, 66, 'upload/c520fa2360.jpg', 0),
(35, '  1 Ton AC, 1 Ton- New Air Conditioner in Bangladesh,in Bangladesh', 39, 14, 'Carrier Air Conditioner 38KHA012N is designed to create a cool and comfortable living environment. It can be used in residential as well as commercial properties. It has been integrated with an ionizer to ensure refreshing, natural and healthy air. The ionizer generates a high voltage ionization zone through ', 10, 13000, 66, 'upload/f2a31c2a8e.jpg', 0),
(34, '  1 Ton AC, 1 Ton- New Air Conditioner in Bangladesh,in Bangladesh', 39, 14, 'Carrier Air Conditioner 38KHA012N is designed to create a cool and comfortable living environment. It can be used in residential as well as commercial properties. It has been integrated with an ionizer to ensure refreshing, natural and healthy air. The ionizer generates a high voltage ionization zone through ', 10, 13000, 66, 'upload/46ebe29e90.jpg', 0),
(33, '  1 Ton AC, 1 Ton- New Air Conditioner in Bangladesh,in Bangladesh', 39, 14, 'Carrier Air Conditioner 38KHA012N is designed to create a cool and comfortable living environment. It can be used in residential as well as commercial properties. It has been integrated with an ionizer to ensure refreshing, natural and healthy air. The ionizer generates a high voltage ionization zone through ', 10, 13000, 66, 'upload/385bf7046b.jpg', 0),
(32, '  1 Ton AC, 1 Ton- New Air Conditioner in Bangladesh,in Bangladesh', 39, 14, 'Carrier Air Conditioner 38KHA012N is designed to create a cool and comfortable living environment. It can be used in residential as well as commercial properties. It has been integrated with an ionizer to ensure refreshing, natural and healthy air. The ionizer generates a high voltage ionization zone through ', 10, 13000, 66, 'upload/189d0421b9.jpg', 0),
(39, '  1 Ton AC, 1 Ton- New Air Conditioner in Bangladesh,in Bangladesh', 39, 0, 'Carrier Air Conditioner 38KHA012N is designed to create a cool and comfortable living environment. It can be used in residential as well as commercial properties. It has been integrated with an ionizer to ensure refreshing, natural and healthy air. The ionizer generates a high voltage ionization zone through ', 10, 13000, 65, 'upload/7c1f12f0c3.jpg', 0),
(40, '  1 Ton AC, 1 Ton- New Air Conditioner in Bangladesh,in Bangladesh', 38, 14, 'Whirlpool Inverter Air Conditioner SPIW 412L can be a perfect choice for you and your family with its cutting-edge features. This 1.0 ton AC with its cooling capacity of 12000 BTU and 1.5HP can be a suitable addition to your home or your office during those hot summer months. The Inverter powered AC is energy efficient and saves money on your electricity bills. ', 8000, 9000, 40, 'upload/e45485b0ba.jpg', 1),
(41, '  1 Ton AC, 1 Ton- New Air Conditioner in Bangladesh,in Bangladesh', 38, 14, 'Whirlpool Inverter Air Conditioner SPIW 412L can be a perfect choice for you and your family with its cutting-edge features. This 1.0 ton AC with its cooling capacity of 12000 BTU and 1.5HP can be a suitable addition to your home or your office during those hot summer months. The Inverter powered AC is energy efficient and saves money on your electricity bills. ', 8000, 9000, 35, 'upload/5b436fbfa0.jpg', 1),
(42, '  1 Ton AC, 1 Ton- New Air Conditioner in Bangladesh,in Bangladesh', 38, 14, 'Whirlpool Inverter Air Conditioner SPIW 412L can be a perfect choice for you and your family with its cutting-edge features. This 1.0 ton AC with its cooling capacity of 12000 BTU and 1.5HP can be a suitable addition to your home or your office during those hot summer months. The Inverter powered AC is energy efficient and saves money on your electricity bills. ', 8000, 9000, 40, 'upload/1118f7c640.jpg', 0),
(43, '  1 Ton AC, 1 Ton- New Air Conditioner in Bangladesh,in Bangladesh', 38, 14, 'Whirlpool Inverter Air Conditioner SPIW 412L can be a perfect choice for you and your family with its cutting-edge features. This 1.0 ton AC with its cooling capacity of 12000 BTU and 1.5HP can be a suitable addition to your home or your office during those hot summer months. The Inverter powered AC is energy efficient and saves money on your electricity bills. ', 8000, 9000, 39, 'upload/19c5f9d203.jpg', 0),
(44, '  1 Ton AC, 1 Ton- New Air Conditioner in Bangladesh,in Bangladesh', 38, 14, 'Whirlpool Inverter Air Conditioner SPIW 412L can be a perfect choice for you and your family with its cutting-edge features. This 1.0 ton AC with its cooling capacity of 12000 BTU and 1.5HP can be a suitable addition to your home or your office during those hot summer months. The Inverter powered AC is energy efficient and saves money on your electricity bills. ', 44, 9000, 40, 'upload/82cc8c1a3a.jpg', 0),
(45, '  1 Ton AC, 1 Ton- New Air Conditioner in Bangladesh,in Bangladesh', 38, 14, 'Whirlpool Inverter Air Conditioner SPIW 412L can be a perfect choice for you and your family with its cutting-edge features. This 1.0 ton AC with its cooling capacity of 12000 BTU and 1.5HP can be a suitable addition to your home or your office during those hot summer months. The Inverter powered AC is energy efficient and saves money on your electricity bills. ', 10, 13000, 20, 'upload/1b6f53185d.jpg', 1),
(46, '  1 Ton AC, 1 Ton- New Air Conditioner in Bangladesh,in Bangladesh', 37, 14, 'Sharp 1 Ton J Tech Inverter Air Conditioner AH XP13SHV is a perfect choice for you and your family with its cutting-edge features. This 1 ton AC with its cooling capacity of 1.5HP and 13000 BTU can be a perfect addition to your home or your office. ', 10, 13000, 40, 'upload/e51cedc659.jpg', 0),
(47, '  1 Ton AC, 1 Ton- New Air Conditioner in Bangladesh,in Bangladesh', 37, 14, 'Sharp 1 Ton J Tech Inverter Air Conditioner AH XP13SHV is a perfect choice for you and your family with its cutting-edge features. This 1 ton AC with its cooling capacity of 1.5HP and 13000 BTU can be a perfect addition to your home or your office. ', 10, 13000, 40, 'upload/e51ffaf3ea.jpg', 0),
(48, '  1 Ton AC, 1 Ton- New Air Conditioner in Bangladesh,in Bangladesh', 37, 14, 'Sharp 1 Ton J Tech Inverter Air Conditioner AH XP13SHV is a perfect choice for you and your family with its cutting-edge features. This 1 ton AC with its cooling capacity of 1.5HP and 13000 BTU can be a perfect addition to your home or your office. ', 10, 13000, 40, 'upload/f285faa751.jpg', 0),
(49, '  1 Ton AC, 1 Ton- New Air Conditioner in Bangladesh,in Bangladesh', 37, 0, 'Sharp 1 Ton J Tech Inverter Air Conditioner AH XP13SHV is a perfect choice for you and your family with its cutting-edge features. This 1 ton AC with its cooling capacity of 1.5HP and 13000 BTU can be a perfect addition to your home or your office. ', 10, 13000, 64, 'upload/13423dd577.jpeg', 0),
(50, '  1 Ton AC, 1 Ton- New Air Conditioner in Bangladesh,in Bangladesh', 37, 14, 'Sharp 1 Ton J Tech Inverter Air Conditioner AH XP13SHV is a perfect choice for you and your family with its cutting-edge features. This 1 ton AC with its cooling capacity of 1.5HP and 13000 BTU can be a perfect addition to your home or your office. ', 10, 13000, 63, 'upload/3320f4f590.jpeg', 0),
(51, '  1 Ton AC, 1 Ton- New Air Conditioner in Bangladesh,in Bangladesh', 33, 14, 'LG Split Air Conditioner HSC 1264SA4 is a perfect choice for you and your family. This 1 ton AC with its cooling capacity of 3.37 kW can be a perfect addition to your home or your office. Jet Cool technology ensures quick cooling and easy to clean filter ensures you neat service. With our easy installment facility LG Split Air Conditioner HSC 1264SA4 can be yours in a heartbeat. Visit your nearest Best Electronics showroom now.', 10, 13000, 39, 'upload/5cb3509b10.jpg', 1),
(52, '  1 Ton AC, 1 Ton- New Air Conditioner in Bangladesh,in Bangladesh', 33, 14, 'LG Split Air Conditioner HSC 1264SA4 is a perfect choice for you and your family. This 1 ton AC with its cooling capacity of 3.37 kW can be a perfect addition to your home or your office. Jet Cool technology ensures quick cooling and easy to clean filter ensures you neat service. With our easy installment facility LG Split Air Conditioner HSC 1264SA4 can be yours in a heartbeat. Visit your nearest Best Electronics showroom now.', 6, 9000, 28, 'upload/f58038d107.jpg', 1),
(53, '  1 Ton AC, 1 Ton- New Air Conditioner in Bangladesh,in Bangladesh', 33, 0, 'LG Split Air Conditioner HSC 1264SA4 is a perfect choice for you and your family. This 1 ton AC with its cooling capacity of 3.37 kW can be a perfect addition to your home or your office. Jet Cool technology ensures quick cooling and easy to clean filter ensures you neat service. With our easy installment facility LG Split Air Conditioner HSC 1264SA4 can be yours in a heartbeat. Visit your nearest Best Electronics showroom now.', 7000, 10000, 33, 'upload/ec620571c8.jpg', 0),
(54, '  1 Ton AC, 1 Ton- New Air Conditioner in Bangladesh,in Bangladesh', 33, 14, 'LG Split Air Conditioner HSC 1264SA4 is a perfect choice for you and your family. This 1 ton AC with its cooling capacity of 3.37 kW can be a perfect addition to your home or your office. Jet Cool technology ensures quick cooling and easy to clean filter ensures you neat service. With our easy installment facility LG Split Air Conditioner HSC 1264SA4 can be yours in a heartbeat. Visit your nearest Best Electronics showroom now.', 10, 13000, 38, 'upload/bdb00098ea.jpg', 0),
(55, '  1 Ton AC, 1 Ton- New Air Conditioner in Bangladesh,in Bangladesh', 33, 0, 'LG Split Air Conditioner HSC 1264SA4 is a perfect choice for you and your family. This 1 ton AC with its cooling capacity of 3.37 kW can be a perfect addition to your home or your office. Jet Cool technology ensures quick cooling and easy to clean filter ensures you neat service. With our easy installment facility LG Split Air Conditioner HSC 1264SA4 can be yours in a heartbeat. Visit your nearest Best Electronics showroom now.', 10, 13000, 40, 'upload/1d5eb0fe41.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rejineemp`
--

CREATE TABLE `rejineemp` (
  `re_id` int(11) NOT NULL,
  `re_name` varchar(100) NOT NULL,
  `re_degination` varchar(100) NOT NULL,
  `re_address` varchar(100) NOT NULL,
  `re_nid` varchar(100) NOT NULL,
  `re_contactno` varchar(100) NOT NULL,
  `re_dateofjoining` date NOT NULL,
  `re_rejinedate` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rejineemp`
--

INSERT INTO `rejineemp` (`re_id`, `re_name`, `re_degination`, `re_address`, `re_nid`, `re_contactno`, `re_dateofjoining`, `re_rejinedate`) VALUES
(7, 'Hasan', 'Internal Employee', 'Belkuchi', '345645654563', '09876543212', '2018-11-19', '2018-11-19');

-- --------------------------------------------------------

--
-- Table structure for table `rent_cart`
--

CREATE TABLE `rent_cart` (
  `cartId` int(11) NOT NULL,
  `sId` varchar(255) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `quantity` varchar(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  `size` varchar(100) NOT NULL,
  `month` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rent_deliveryservice`
--

CREATE TABLE `rent_deliveryservice` (
  `deid_id` int(11) NOT NULL,
  `deliser_id` int(11) NOT NULL,
  `deliser_name` varchar(100) NOT NULL,
  `deliser_proname` varchar(100) NOT NULL,
  `deliser_date` varchar(100) NOT NULL,
  `deliser_role` varchar(11) NOT NULL DEFAULT '0',
  `userId` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rent_deliveryservice`
--

INSERT INTO `rent_deliveryservice` (`deid_id`, `deliser_id`, `deliser_name`, `deliser_proname`, `deliser_date`, `deliser_role`, `userId`) VALUES
(2, 8, '1 Ton AC, 1 Ton- New Air Conditioner in Bangladesh,in Bangladesh', 'Seam', '2019-07-16', '0', '36');

-- --------------------------------------------------------

--
-- Table structure for table `rent_payment`
--

CREATE TABLE `rent_payment` (
  `id` int(11) NOT NULL,
  `userId` varchar(100) NOT NULL,
  `productId` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `total_amount` varchar(100) NOT NULL,
  `month` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `rent_status` varchar(100) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rent_payment`
--

INSERT INTO `rent_payment` (`id`, `userId`, `productId`, `quantity`, `total_amount`, `month`, `date`, `rent_status`) VALUES
(32, '30', '13', '3', '16500', '2', '2018-11-19', '1'),
(33, '34', '13', '4', '11000', '1', '2018-11-21', '0'),
(34, '36', '10', '2', '4400', '5', '2019-07-16', '0');

-- --------------------------------------------------------

--
-- Table structure for table `rent_product`
--

CREATE TABLE `rent_product` (
  `id` int(11) NOT NULL,
  `rent_pname` varchar(150) NOT NULL,
  `rent_category` varchar(150) NOT NULL,
  `rent_description` varchar(150) NOT NULL,
  `rent_netprice` varchar(150) NOT NULL,
  `rent_sellprice` varchar(150) NOT NULL,
  `rent_quantity` varchar(150) NOT NULL,
  `rent_type` varchar(150) NOT NULL,
  `rent_image` varchar(150) NOT NULL,
  `rent_date` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rent_product`
--

INSERT INTO `rent_product` (`id`, `rent_pname`, `rent_category`, `rent_description`, `rent_netprice`, `rent_sellprice`, `rent_quantity`, `rent_type`, `rent_image`, `rent_date`) VALUES
(10, '  1 Ton AC, 1 Ton- New Air Conditioner in Bangladesh,in Bangladesh', '33', 'LG Split Air Conditioner HSC 1264SA4 is a perfect choice for you and your family. This 1 ton AC with its cooling capacity of 3.37 kW can be a perfect ', '300', '400', '64', 'Featured', 'upload/083644df90.jpg', '2018-11-19'),
(11, '  1 Ton AC, 1 Ton- New Air Conditioner in Bangladesh,in Bangladesh', '33', '			    LG Split Air Conditioner HSC 1264SA4 is a perfect choice for you and your family. This 1 ton AC with its cooling capacity of 3.37 kW can be a p', '300', '400', '33', 'General', 'upload/a9ed09f546.jpg', '2018-11-19'),
(12, '  1 Ton AC, 1 Ton- New Air Conditioner in Bangladesh,in Bangladesh', '33', 'LG Split Air Conditioner HSC 1264SA4 is a perfect choice for you and your family. This 1 ton AC with its cooling capacity of 3.37 kW can be a perfect ', '2000', '2500', '40', 'Select Type', 'upload/3788e50b77.jpg', '2018-11-19'),
(13, '  1 Ton AC, 1 Ton- New Air Conditioner in Bangladesh,in Bangladesh', '33', '			    			    LG Split Air Conditioner HSC 1264SA4 is a perfect choice for you and your family. This 1 ton AC with its cooling capacity of 3.37 kW can', '1000', '2500', '36', 'General', 'upload/7fe0489471.jpg', '2018-11-19'),
(14, '  1 Ton AC, 1 Ton- New Air Conditioner in Bangladesh,in Bangladesh', '39', 'Sharp 1 Ton J Tech Inverter Air Conditioner AH XP13SHV is a perfect choice for you and your family with its cutting-edge features. This 1 ton AC with ', '1000', '2500', '40', 'General', 'upload/3e65141e1b.jpg', '2018-11-19'),
(15, '  1 Ton AC, 1 Ton- New Air Conditioner in Bangladesh,in Bangladesh', '39', 'Sharp 1 Ton J Tech Inverter Air Conditioner AH XP13SHV is a perfect choice for you and your family with its cutting-edge features. This 1 ton AC with ', '1000', '2500', '40', 'General', 'upload/3a3e822c28.jpg', '2018-11-19'),
(16, '  1 Ton AC, 1 Ton- New Air Conditioner in Bangladesh,in Bangladesh', '39', 'Sharp 1 Ton J Tech Inverter Air Conditioner AH XP13SHV is a perfect choice for you and your family with its cutting-edge features. This 1 ton AC with ', '1000', '2500', '40', 'Select Type', 'upload/e37dcd77e9.jpg', '2018-11-19'),
(17, '  1 Ton AC, 1 Ton- New Air Conditioner in Bangladesh,in Bangladesh', '39', 'Sharp 1 Ton J Tech Inverter Air Conditioner AH XP13SHV is a perfect choice for you and your family with its cutting-edge features. This 1 ton AC with ', '1000', '2500', '40', 'Featured', 'upload/ffb313cc53.jpg', '2018-11-19'),
(18, '  1 Ton AC, 1 Ton- New Air Conditioner in Bangladesh,in Bangladesh', '39', 'Sharp 1 Ton J Tech Inverter Air Conditioner AH XP13SHV is a perfect choice for you and your family with its cutting-edge features. This 1 ton AC with ', '1000', '2300', '38', 'Featured', 'upload/ad2ed80c1d.jpg', '2018-11-19');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `service_category` varchar(140) NOT NULL,
  `service_code` varchar(140) NOT NULL,
  `service_contact` varchar(140) NOT NULL,
  `service_problem` varchar(200) NOT NULL,
  `service_date` varchar(120) NOT NULL,
  `service_cusid` int(11) NOT NULL,
  `service_deliverydate` varchar(100) NOT NULL,
  `service_role` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`service_id`, `service_category`, `service_code`, `service_contact`, `service_problem`, `service_date`, `service_cusid`, `service_deliverydate`, `service_role`) VALUES
(9, '39', 'we34df', '1234567896', 'fadf', '2018-11-19', 30, '2018-11-25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `track_visitor`
--

CREATE TABLE `track_visitor` (
  `trackid` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `page` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_visitor`
--

INSERT INTO `track_visitor` (`trackid`, `userId`, `user_name`, `page`, `date`) VALUES
(959, 28, 'Nusrat', 'http://localhost/LIFO/Admin/productlist.php', '2019-07-16 17:46:05'),
(960, 28, 'Nusrat', 'http://localhost/LIFO/Admin/productedit.php', '2019-07-16 17:46:10'),
(961, 28, 'Nusrat', 'http://localhost/LIFO/admin/orderlist.php', '2019-07-16 17:54:33'),
(962, 28, 'Nusrat', 'http://localhost/LIFO/admin/rentproductlist.php', '2019-07-16 17:55:31'),
(963, 28, 'Nusrat', 'http://localhost/LIFO/admin/rent_orderlist.php', '2019-07-16 17:55:37'),
(964, 28, 'Nusrat', 'http://localhost/LIFO/admin/orderlist.php', '2019-07-16 17:55:41'),
(965, 28, 'Nusrat', 'http://localhost/LIFO/admin/rent_orderlist.php', '2019-07-16 17:55:45'),
(966, 28, 'Nusrat', 'http://localhost/LIFO/admin/rent_orderlist.php', '2019-07-16 17:56:59'),
(967, 28, 'Nusrat', 'http://localhost/LIFO/admin/viewrent_deliveryservice.php', '2019-07-16 17:57:02'),
(968, 28, 'Nusrat', 'http://localhost/LIFO/admin/viewrent_deliveryservice.php', '2019-07-16 17:57:24'),
(969, 28, 'Nusrat', 'http://localhost/LIFO/admin/rent_orderlist.php', '2019-07-16 17:57:33'),
(970, 28, 'Nusrat', 'http://localhost/LIFO/admin/rent_orderlist.php', '2019-07-16 17:57:36'),
(971, 28, 'Nusrat', 'http://localhost/LIFO/Admin/rent_orderlist.php', '2019-07-16 17:59:17'),
(972, 28, 'Nusrat', 'http://localhost/LIFO/Admin/rent_orderlist.php', '2019-07-16 17:59:37'),
(973, 28, 'Nusrat', 'http://localhost/LIFO/Admin/viewrent_deliveryservice.php', '2019-07-16 17:59:47'),
(974, 28, 'Nusrat', 'http://localhost/LIFO/Admin/viewrent_deliveryservice.php', '2019-07-16 17:59:51'),
(975, 28, 'Nusrat', 'http://localhost/LIFO/Admin/rent_orderlist.php', '2019-07-16 17:59:53'),
(976, 28, 'Nusrat', 'http://localhost/LIFO/Admin/rent_orderlist.php', '2019-07-16 17:59:56'),
(977, 28, 'Nusrat', 'http://localhost/LIFO/Admin/rent_orderlist.php', '2019-07-16 18:00:17'),
(978, 29, 'Hasan', 'http://localhost/BMS/admin/catlist.php', '2019-07-27 03:18:08'),
(979, 29, 'Hasan', 'http://localhost/LIFO/admin/rentproductlist.php', '2019-07-27 03:24:40'),
(980, 29, 'Hasan', 'http://localhost/LIFO/admin/orderlist.php', '2019-07-27 03:24:47'),
(981, 29, 'Hasan', 'http://localhost/LIFO/admin/productlist.php', '2019-07-27 03:25:04'),
(982, 28, 'Nusrat', 'http://localhost/LIFO/admin/productlist.php', '2019-09-14 02:01:16'),
(983, 28, 'Nusrat', 'http://localhost/LIFO/admin/orderlist.php', '2019-09-14 02:01:45'),
(984, 28, 'Nusrat', 'http://localhost/LIFO/admin/orderlist.php', '2019-09-14 02:02:15'),
(985, 28, 'Nusrat', 'http://localhost/LIFO/admin/orderlist.php', '2019-09-14 02:02:37'),
(986, 28, 'Nusrat', 'http://localhost/LIFO/admin/viewdeliveryService.php', '2019-09-14 02:02:39'),
(987, 28, 'Nusrat', 'http://localhost/LIFO/admin/viewdeliveryService.php', '2019-09-14 02:02:47'),
(988, 28, 'Nusrat', 'http://localhost/LIFO/admin/viewdeliveryService.php', '2019-09-14 02:02:49'),
(989, 28, 'Nusrat', 'http://localhost/LIFO/admin/orderlist.php', '2019-09-14 02:02:51'),
(990, 28, 'Nusrat', 'http://localhost/LIFO/admin/orderlist.php', '2019-09-14 02:02:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `employeeid` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `typeofuser` varchar(255) DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `year`
--

CREATE TABLE `year` (
  `id` int(11) NOT NULL,
  `year` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `year_setting`
--

CREATE TABLE `year_setting` (
  `y_id` int(11) NOT NULL,
  `y_order` varchar(100) NOT NULL,
  `y_sellprice` varchar(100) NOT NULL,
  `y_year` varchar(100) NOT NULL,
  `y_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `year_setting`
--

INSERT INTO `year_setting` (`y_id`, `y_order`, `y_sellprice`, `y_year`, `y_date`) VALUES
(1, '45', '3456', '2018', '2018-12-22'),
(2, '45', '3465', '2017', '2017-12-22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contactid`);

--
-- Indexes for table `customerinfo`
--
ALTER TABLE `customerinfo`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `cus_order`
--
ALTER TABLE `cus_order`
  ADD PRIMARY KEY (`orderId`);

--
-- Indexes for table `cus_orderent`
--
ALTER TABLE `cus_orderent`
  ADD PRIMARY KEY (`orderId`);

--
-- Indexes for table `db_backup`
--
ALTER TABLE `db_backup`
  ADD PRIMARY KEY (`db_id`);

--
-- Indexes for table `deliveryserevice`
--
ALTER TABLE `deliveryserevice`
  ADD PRIMARY KEY (`deid_id`);

--
-- Indexes for table `employeeinfo`
--
ALTER TABLE `employeeinfo`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `month_setting`
--
ALTER TABLE `month_setting`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`pmId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `rejineemp`
--
ALTER TABLE `rejineemp`
  ADD PRIMARY KEY (`re_id`);

--
-- Indexes for table `rent_cart`
--
ALTER TABLE `rent_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Indexes for table `rent_deliveryservice`
--
ALTER TABLE `rent_deliveryservice`
  ADD PRIMARY KEY (`deid_id`);

--
-- Indexes for table `rent_payment`
--
ALTER TABLE `rent_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rent_product`
--
ALTER TABLE `rent_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `track_visitor`
--
ALTER TABLE `track_visitor`
  ADD PRIMARY KEY (`trackid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `year`
--
ALTER TABLE `year`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `year_setting`
--
ALTER TABLE `year_setting`
  ADD PRIMARY KEY (`y_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contactid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `customerinfo`
--
ALTER TABLE `customerinfo`
  MODIFY `cus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `cus_order`
--
ALTER TABLE `cus_order`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `cus_orderent`
--
ALTER TABLE `cus_orderent`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `db_backup`
--
ALTER TABLE `db_backup`
  MODIFY `db_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `deliveryserevice`
--
ALTER TABLE `deliveryserevice`
  MODIFY `deid_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employeeinfo`
--
ALTER TABLE `employeeinfo`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `month_setting`
--
ALTER TABLE `month_setting`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `pmId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `rejineemp`
--
ALTER TABLE `rejineemp`
  MODIFY `re_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rent_cart`
--
ALTER TABLE `rent_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rent_deliveryservice`
--
ALTER TABLE `rent_deliveryservice`
  MODIFY `deid_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rent_payment`
--
ALTER TABLE `rent_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `rent_product`
--
ALTER TABLE `rent_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `track_visitor`
--
ALTER TABLE `track_visitor`
  MODIFY `trackid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=991;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `year`
--
ALTER TABLE `year`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `year_setting`
--
ALTER TABLE `year_setting`
  MODIFY `y_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `shopping_cart`
--
CREATE DATABASE IF NOT EXISTS `shopping_cart` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `shopping_cart`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `member_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `order_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_item`
--

CREATE TABLE `tbl_order_item` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `item_price` double NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `payment_response` text NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `price` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `name`, `code`, `image`, `price`) VALUES
(1, '3D Camera', '3DcAM01', 'product/camera.jpg', 1500.00),
(2, 'External Hard Drive', 'USB02', 'product/external-hard-drive.jpg', 800.00),
(3, 'Wrist Watch', 'wristWear03', 'product/watch.jpg', 300.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order_item`
--
ALTER TABLE `tbl_order_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_order_item`
--
ALTER TABLE `tbl_order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `sidari_summer_school`
--
CREATE DATABASE IF NOT EXISTS `sidari_summer_school` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sidari_summer_school`;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `Module_ID` int(5) DEFAULT NULL,
  `Class_Day` varchar(10) DEFAULT NULL,
  `Duration` int(5) DEFAULT NULL,
  `Class_Time` varchar(5) DEFAULT NULL,
  `Room_Number` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`Module_ID`, `Class_Day`, `Duration`, `Class_Time`, `Room_Number`) VALUES
(301, 'Monday', 10, '9am', '1C'),
(301, 'Tuesday', 10, '9am', '1C'),
(302, 'Wednesday', 5, '9am', '1C'),
(303, 'Monday', 5, '1pm', '204'),
(304, 'Wednesday', 20, '9am', '10'),
(305, 'Friday', 10, '9am', '11'),
(306, 'Monday', 20, '1pm', '1C'),
(307, 'Tuesday', 5, '1pm', '10');

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `Module_ID` int(5) NOT NULL,
  `Module_Title` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`Module_ID`, `Module_Title`) VALUES
(301, 'Improvisation'),
(302, 'Improvisation'),
(303, 'Alto Saxophone '),
(304, 'Baritone Sax'),
(305, 'Grade 3 Theory - All Instrumen'),
(306, 'Trumpet Novice'),
(307, 'Band leading '),
(308, 'Trumpet Advanced'),
(309, 'Clarinet Novice');

-- --------------------------------------------------------

--
-- Table structure for table `module_level`
--

CREATE TABLE `module_level` (
  `Module_ID` int(5) DEFAULT NULL,
  `level` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module_level`
--

INSERT INTO `module_level` (`Module_ID`, `level`) VALUES
(301, 2),
(302, 1),
(303, 1),
(304, 1),
(305, 2),
(306, 1),
(307, 1),
(308, 3),
(309, 2);

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE `rate` (
  `Tutor_ID` int(5) DEFAULT NULL,
  `speciality` varchar(20) DEFAULT NULL,
  `Hourly_rate` varchar(5) DEFAULT NULL,
  `Day_rate` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rate`
--

INSERT INTO `rate` (`Tutor_ID`, `speciality`, `Hourly_rate`, `Day_rate`) VALUES
(401, 'Improvisation', '£30', '£165'),
(403, 'Trumpet', '£38', '£160'),
(404, 'Saxophone', '£30', '£150 '),
(405, 'Theory', '£30', '£150 ');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `Student_ID` int(5) DEFAULT NULL,
  `Module_ID` int(5) DEFAULT NULL,
  `Result` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`Student_ID`, `Module_ID`, `Result`) VALUES
(102, 306, 'pass'),
(103, 306, 'pass'),
(104, 301, 'pass'),
(105, 303, 'pass'),
(106, 303, 'pass'),
(107, 301, 'pass'),
(108, 304, 'pass'),
(109, 303, 'pass');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `Room_Number` varchar(5) NOT NULL,
  `Location` varchar(20) DEFAULT NULL,
  `Max_Student` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`Room_Number`, `Location`, `Max_Student`) VALUES
('10', 'Sidari Building', 15),
('11', 'Giles Porter Buildin', 15),
('1C', 'Sidari Building', 20),
('204', 'Foster Court', 21);

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `Room_Number` varchar(5) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`Room_Number`, `type`) VALUES
('1C', 'Practical Music'),
('204', 'Practical Music'),
('10', 'Theory'),
('11', 'Practical Music');

-- --------------------------------------------------------

--
-- Table structure for table `std_module`
--

CREATE TABLE `std_module` (
  `Student_ID` int(5) DEFAULT NULL,
  `Module_ID` int(5) DEFAULT NULL,
  `Start_Date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `std_module`
--

INSERT INTO `std_module` (`Student_ID`, `Module_ID`, `Start_Date`) VALUES
(102, 306, '2019-07-01 00:00:00'),
(103, 306, '2019-07-01 00:00:00'),
(104, 301, '2019-07-14 00:00:00'),
(105, 303, '2019-07-14 00:00:00'),
(106, 303, '2019-08-07 00:00:00'),
(107, 301, '2019-08-07 00:00:00'),
(108, 304, '2019-07-07 00:00:00'),
(109, 303, '2019-07-14 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `std_type`
--

CREATE TABLE `std_type` (
  `Student_ID` int(5) DEFAULT NULL,
  `Std_type_ID` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `std_type`
--

INSERT INTO `std_type` (`Student_ID`, `Std_type_ID`) VALUES
(102, 204),
(103, 204),
(104, 201),
(105, 202),
(106, 203),
(107, 201),
(108, 204),
(109, 204),
(110, 205);

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `Student_ID` int(5) NOT NULL,
  `First_Name` varchar(15) DEFAULT NULL,
  `Sur_Name` varchar(15) DEFAULT NULL,
  `Tel_Number` varchar(15) DEFAULT NULL,
  `Email_Address` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`Student_ID`, `First_Name`, `Sur_Name`, `Tel_Number`, `Email_Address`) VALUES
(102, 'Gemma', 'Riley', '09899 765676', 'Gemril126@crzymail.org'),
(103, 'John', 'Maza', '07665 909999', 'jmaza@dmail.com'),
(104, 'Rizwan', 'Maya', '07202 123123', 'riz@horton.ac.uk'),
(105, 'Mezzi', 'Solent', '07677 988988', 'mezzisol@cat.com'),
(106, 'Curtis', 'Palmer', '07343 000989', 'cpalmer@hmail.com'),
(107, 'Paul', 'Collier', '07343 767777', 'pcolier@hmail.com'),
(108, 'Samia', 'Saleed', '07666 098899', 'Ss167@newsoft.co.uk'),
(109, 'Sophie', 'Clarkson', '07767 876678', 'Yth87@binternational.uk'),
(110, 'Ibrahiam', 'Goza', '01978 777654', 'igoza@hmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tutor`
--

CREATE TABLE `tutor` (
  `Tutor_ID` int(5) NOT NULL,
  `First_Name` varchar(10) DEFAULT NULL,
  `Sur_Name` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tutor`
--

INSERT INTO `tutor` (`Tutor_ID`, `First_Name`, `Sur_Name`) VALUES
(401, 'Beth', 'Lyons'),
(403, 'Fran', 'D Silva'),
(404, 'Richard', 'Longworth'),
(405, 'Robert', 'Lewis'),
(406, 'Molly', 'Luke'),
(407, 'Ken', 'Power'),
(408, 'Sophie', 'Khan');

-- --------------------------------------------------------

--
-- Table structure for table `tutor_module`
--

CREATE TABLE `tutor_module` (
  `Tutor_ID` int(5) DEFAULT NULL,
  `Module_ID` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tutor_module`
--

INSERT INTO `tutor_module` (`Tutor_ID`, `Module_ID`) VALUES
(401, 301),
(406, 302),
(404, 303),
(404, 304),
(405, 305),
(403, 308),
(407, 307),
(408, 309);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `Std_type_ID` int(5) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `Discount` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`Std_type_ID`, `type`, `Discount`) VALUES
(201, 'Full Time Student', '60% discount'),
(202, 'Unwaged', '50% discount'),
(203, 'Low Income', '35% discount'),
(204, 'Standard', '0% discount'),
(205, 'Standard', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD KEY `Module_ID` (`Module_ID`),
  ADD KEY `Room_Number` (`Room_Number`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`Module_ID`);

--
-- Indexes for table `module_level`
--
ALTER TABLE `module_level`
  ADD KEY `Module_ID` (`Module_ID`);

--
-- Indexes for table `rate`
--
ALTER TABLE `rate`
  ADD KEY `Tutor_ID` (`Tutor_ID`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD KEY `Student_ID` (`Student_ID`),
  ADD KEY `Module_ID` (`Module_ID`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`Room_Number`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD KEY `Room_Number` (`Room_Number`);

--
-- Indexes for table `std_module`
--
ALTER TABLE `std_module`
  ADD KEY `Student_ID` (`Student_ID`),
  ADD KEY `Module_ID` (`Module_ID`);

--
-- Indexes for table `std_type`
--
ALTER TABLE `std_type`
  ADD KEY `Student_ID` (`Student_ID`),
  ADD KEY `Std_type_ID` (`Std_type_ID`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `tutor`
--
ALTER TABLE `tutor`
  ADD PRIMARY KEY (`Tutor_ID`);

--
-- Indexes for table `tutor_module`
--
ALTER TABLE `tutor_module`
  ADD KEY `Tutor_ID` (`Tutor_ID`),
  ADD KEY `Module_ID` (`Module_ID`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`Std_type_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_ibfk_1` FOREIGN KEY (`Module_ID`) REFERENCES `module` (`Module_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `class_ibfk_2` FOREIGN KEY (`Room_Number`) REFERENCES `room` (`Room_Number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `module_level`
--
ALTER TABLE `module_level`
  ADD CONSTRAINT `module_level_ibfk_1` FOREIGN KEY (`Module_ID`) REFERENCES `module` (`Module_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rate`
--
ALTER TABLE `rate`
  ADD CONSTRAINT `rate_ibfk_1` FOREIGN KEY (`Tutor_ID`) REFERENCES `tutor` (`Tutor_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `result_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `student_info` (`Student_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `result_ibfk_2` FOREIGN KEY (`Module_ID`) REFERENCES `module` (`Module_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `room_type`
--
ALTER TABLE `room_type`
  ADD CONSTRAINT `room_type_ibfk_1` FOREIGN KEY (`Room_Number`) REFERENCES `room` (`Room_Number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `std_module`
--
ALTER TABLE `std_module`
  ADD CONSTRAINT `std_module_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `student_info` (`Student_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `std_module_ibfk_2` FOREIGN KEY (`Module_ID`) REFERENCES `module` (`Module_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `std_type`
--
ALTER TABLE `std_type`
  ADD CONSTRAINT `std_type_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `student_info` (`Student_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `std_type_ibfk_2` FOREIGN KEY (`Std_type_ID`) REFERENCES `type` (`Std_type_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tutor_module`
--
ALTER TABLE `tutor_module`
  ADD CONSTRAINT `tutor_module_ibfk_1` FOREIGN KEY (`Tutor_ID`) REFERENCES `tutor` (`Tutor_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tutor_module_ibfk_2` FOREIGN KEY (`Module_ID`) REFERENCES `module` (`Module_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `student`
--
CREATE DATABASE IF NOT EXISTS `student` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `student`;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `ID` int(20) NOT NULL,
  `File` varchar(50) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`ID`, `File`, `Title`, `Email`) VALUES
(3, '1565110964.', 'java', 'f@gmail.com'),
(4, '1565113907.jpg', 'UY', 'f@gmail.com'),
(6, '1565113928.jpg', 'aw', 'faculty@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `UserName` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Contact` varchar(15) NOT NULL,
  `Role` int(5) NOT NULL,
  `Active` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`UserName`, `Email`, `Password`, `Contact`, `Role`, `Active`) VALUES
('saem', 'abusaem1774@gmail.com', '123', '01774227331', 3, 1),
('saemya', 'abusaemyma1774@gmail.com', '1', '01774227332', 3, 1),
('admin', 'admin@gmail.com', 'a', 'admin', 1, 1),
('Faculty', 'f@gmail.com', 'f', 'faculty123', 2, 1),
('xyz', 'faculty@gmail.com', 'f', '07#######', 2, 1),
('Rabbi', 'nur@gmail.com', 'sager', '12345678987', 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `sudoku_db`
--
CREATE DATABASE IF NOT EXISTS `sudoku_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sudoku_db`;

-- --------------------------------------------------------

--
-- Table structure for table `progress`
--

CREATE TABLE `progress` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `p_level1` varchar(100) NOT NULL,
  `p_level2` varchar(100) NOT NULL,
  `p_level3` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `progress`
--

INSERT INTO `progress` (`p_id`, `p_name`, `p_level1`, `p_level2`, `p_level3`) VALUES
(1, 'Rocky', '0', '10', '30');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_age` varchar(100) NOT NULL,
  `user_gender` varchar(100) NOT NULL,
  `user_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_age`, `user_gender`, `user_date`) VALUES
(1, 'Rocky', '23', 'Male', '02-05-2019'),
(3, 'Hasan', '34', 'Male', '04-05-2019');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `progress`
--
ALTER TABLE `progress`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `progress`
--
ALTER TABLE `progress`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `system_db`
--
CREATE DATABASE IF NOT EXISTS `system_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `system_db`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user` varchar(20) NOT NULL,
  `pass` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user`, `pass`) VALUES
('alive', 'xxyyzz');

-- --------------------------------------------------------

--
-- Table structure for table `alocation_id_to_pos`
--

CREATE TABLE `alocation_id_to_pos` (
  `id` int(10) NOT NULL,
  `pos_id` int(10) DEFAULT NULL,
  `member_login_id` varchar(20) DEFAULT NULL,
  `member_mobile_no` varchar(20) DEFAULT NULL,
  `alo_login_id_set` varchar(100) DEFAULT NULL,
  `alo_date` varchar(30) DEFAULT NULL,
  `alo_for` varchar(30) DEFAULT NULL,
  `status` varchar(30) DEFAULT 'panding',
  `deposit_id` int(10) DEFAULT NULL,
  `collection_id` int(10) DEFAULT NULL,
  `pos_type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alocation_id_to_pos`
--

INSERT INTO `alocation_id_to_pos` (`id`, `pos_id`, `member_login_id`, `member_mobile_no`, `alo_login_id_set`, `alo_date`, `alo_for`, `status`, `deposit_id`, `collection_id`, `pos_type`) VALUES
(1, 1, '081118361', '8801841787822', '081131523,081159395,151813597,', '20120206053036', 'Member', 'panding', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bank_info`
--

CREATE TABLE `bank_info` (
  `id` int(10) NOT NULL,
  `bank_name` varchar(30) DEFAULT NULL,
  `account_number` varchar(30) DEFAULT NULL,
  `account_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank_info`
--

INSERT INTO `bank_info` (`id`, `bank_name`, `account_number`, `account_name`) VALUES
(1, 'DBBL', '12312356465', 'suman'),
(2, 'SCB', '18374252001', 'suman'),
(3, 'Bankasia', '32132132123', 'arif');

-- --------------------------------------------------------

--
-- Table structure for table `collection_agent`
--

CREATE TABLE `collection_agent` (
  `id` int(10) NOT NULL,
  `agent` varchar(100) DEFAULT NULL,
  `address` varchar(160) DEFAULT NULL,
  `mobileno` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collection_agent`
--

INSERT INTO `collection_agent` (`id`, `agent`, `address`, `mobileno`, `status`, `type`) VALUES
(1, 'bcash', NULL, NULL, NULL, NULL),
(2, 'post office', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `company_account`
--

CREATE TABLE `company_account` (
  `id` int(10) NOT NULL,
  `sender_id` varchar(20) DEFAULT NULL,
  `receive_amount` varchar(30) DEFAULT '0',
  `withdraw_amount` varchar(30) DEFAULT '0',
  `current_balance` varchar(30) DEFAULT '0',
  `transection_date` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `donate_pos`
--

CREATE TABLE `donate_pos` (
  `id` int(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `mobile_no` varchar(20) DEFAULT NULL,
  `address` varchar(160) DEFAULT NULL,
  `security_money` varchar(30) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Deactive',
  `type` varchar(20) DEFAULT NULL,
  `creation_time` varchar(50) DEFAULT NULL,
  `service_charge` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donate_pos`
--

INSERT INTO `donate_pos` (`id`, `name`, `mobile_no`, `address`, `security_money`, `status`, `type`, `creation_time`, `service_charge`) VALUES
(1, 'Suman', '01753859595', NULL, '20000', 'Active', 'Admin', NULL, '0'),
(2, 'Arif', '01841787822', NULL, '20000', 'Active', 'Pos', NULL, '0'),
(3, 'Rukon', '01817756450', NULL, '20000', 'Active', 'pos', NULL, '0');

-- --------------------------------------------------------

--
-- Table structure for table `donate_pos_acc`
--

CREATE TABLE `donate_pos_acc` (
  `id` int(10) NOT NULL,
  `pos_id` int(10) DEFAULT NULL,
  `mobile_no` varchar(20) DEFAULT NULL,
  `deposit` varchar(20) DEFAULT NULL,
  `no_of_id` int(10) DEFAULT NULL,
  `deposit_adjust` varchar(20) DEFAULT NULL,
  `bank_name` varchar(30) DEFAULT NULL,
  `account_number` varchar(50) DEFAULT NULL,
  `deposit_date` varchar(30) DEFAULT NULL,
  `admin_confirm_date` varchar(30) DEFAULT NULL,
  `deposit_type` varchar(30) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Panding'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donate_pos_acc`
--

INSERT INTO `donate_pos_acc` (`id`, `pos_id`, `mobile_no`, `deposit`, `no_of_id`, `deposit_adjust`, `bank_name`, `account_number`, `deposit_date`, `admin_confirm_date`, `deposit_type`, `status`) VALUES
(1, 1, NULL, '', NULL, NULL, '1', '', '20120204081158', NULL, 'collection', 'Panding'),
(2, 1, NULL, '', NULL, NULL, '1', '233132123123', '20120204083307', NULL, 'pinrequest', 'Panding');

-- --------------------------------------------------------

--
-- Table structure for table `donate_pos_deposit`
--

CREATE TABLE `donate_pos_deposit` (
  `id` int(10) NOT NULL,
  `pos_id` int(10) DEFAULT NULL,
  `mobile_no` varchar(20) DEFAULT NULL,
  `deposit` varchar(20) DEFAULT NULL,
  `no_of_id` int(10) DEFAULT NULL,
  `deposit_adjust` varchar(20) DEFAULT NULL,
  `bank_name` varchar(30) DEFAULT NULL,
  `account_number` varchar(50) DEFAULT NULL,
  `deposit_date` varchar(30) DEFAULT NULL,
  `admin_confirm_date` varchar(30) DEFAULT NULL,
  `deposit_type` varchar(30) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Panding'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donate_pos_deposit`
--

INSERT INTO `donate_pos_deposit` (`id`, `pos_id`, `mobile_no`, `deposit`, `no_of_id`, `deposit_adjust`, `bank_name`, `account_number`, `deposit_date`, `admin_confirm_date`, `deposit_type`, `status`) VALUES
(1, 1, NULL, '', NULL, NULL, '1', '', '20120325065344', NULL, 'collection', 'Panding');

-- --------------------------------------------------------

--
-- Table structure for table `form_type`
--

CREATE TABLE `form_type` (
  `id` int(10) NOT NULL,
  `form_type` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form_type`
--

INSERT INTO `form_type` (`id`, `form_type`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C');

-- --------------------------------------------------------

--
-- Table structure for table `level_amount`
--

CREATE TABLE `level_amount` (
  `id` int(10) NOT NULL,
  `level` int(10) DEFAULT NULL,
  `amount` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level_amount`
--

INSERT INTO `level_amount` (`id`, `level`, `amount`) VALUES
(1, 1, 100),
(2, 2, 200),
(3, 3, 300),
(4, 4, 400),
(5, 5, 500),
(6, 6, 600),
(7, 7, 700),
(8, 8, 800),
(9, 9, 900);

-- --------------------------------------------------------

--
-- Table structure for table `login_info`
--

CREATE TABLE `login_info` (
  `m_id` varchar(15) NOT NULL,
  `m_pass` varchar(15) NOT NULL,
  `m_join` date NOT NULL,
  `status` varchar(15) NOT NULL,
  `app_no` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_info`
--

INSERT INTO `login_info` (`m_id`, `m_pass`, `m_join`, `status`, `app_no`) VALUES
('081131432', 'goyhas', '0000-00-00', 'A', '71131432'),
('081118361', 'goyhas', '0000-00-00', 'A', '101118361'),
('081131523', 'goyhas', '0000-00-00', 'A', '21131523'),
('081131594', 'goyhas', '0000-00-00', 'A', '61131594'),
('081159395', '123456', '0000-00-00', 'A', '61159395'),
('151813597', '123456', '2009-10-15', 'A', '91813597'),
('151829258', '123456', '2009-10-15', 'A', '71829258'),
('151841169', '123456', '2009-10-15', 'A', '21841169'),
('1518581710', '123456', '2009-10-15', 'A', '318581710'),
('2219120511', '123456', '2009-10-22', 'A', '119120511'),
('2219222312', '123456', '2009-10-22', 'A', '419222312'),
('2512114213', '123456', '2009-10-25', 'A', '212114213'),
('2512380914', '123456', '2009-10-25', 'A', '412380914'),
('2512451515', '123456', '2009-10-25', 'A', '412451515'),
('2512511216', '123456', '2009-10-25', 'A', '512511216'),
('2513032717', '123456', '2009-10-25', 'A', '1013032717'),
('2513283618', '123456', '2009-10-25', 'A', '913283618'),
('2513513619', '123456', '2009-10-25', 'A', '613513619'),
('2514060020', '123456', '2009-10-25', 'A', '214060020'),
('3112374821', '123456', '2009-10-31', 'A', '612374821'),
('3112563522', '123456', '2009-10-31', 'NA', '912563522');

-- --------------------------------------------------------

--
-- Table structure for table `main_menu`
--

CREATE TABLE `main_menu` (
  `id` int(10) NOT NULL,
  `main_name` varchar(100) DEFAULT NULL,
  `file_name` varchar(100) DEFAULT NULL,
  `user_acl` varchar(100) DEFAULT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  `ordering` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_menu`
--

INSERT INTO `main_menu` (`id`, `main_name`, `file_name`, `user_acl`, `remarks`, `ordering`) VALUES
(2, 'Account', NULL, NULL, NULL, 2),
(3, 'Pos Posting', NULL, NULL, NULL, 3),
(9, 'Logout', 'log_out', NULL, NULL, 7),
(10, 'Admin', NULL, NULL, NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `main_menu_bak`
--

CREATE TABLE `main_menu_bak` (
  `menu_id` int(10) UNSIGNED NOT NULL,
  `menu_name` varchar(80) NOT NULL,
  `menu_content` varchar(80) NOT NULL,
  `sub_menu` varchar(180) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `main_menu_bak`
--

INSERT INTO `main_menu_bak` (`menu_id`, `menu_name`, `menu_content`, `sub_menu`) VALUES
(1, 'Home', '', 'yes'),
(2, 'My tree', 'code.txt', 'yes'),
(3, 'My account', 'account_info', NULL),
(6, 'Log Out', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `member_under_pos`
--

CREATE TABLE `member_under_pos` (
  `id` int(10) NOT NULL,
  `pos_id` int(10) DEFAULT NULL,
  `last_request_time` varchar(50) DEFAULT NULL,
  `next_pos_id` int(10) DEFAULT NULL,
  `member_id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member_under_pos`
--

INSERT INTO `member_under_pos` (`id`, `pos_id`, `last_request_time`, `next_pos_id`, `member_id`) VALUES
(8, 0, NULL, 1, '0000000000'),
(10, 1, '20120206045910', 2, '081131432'),
(11, 2, '20120206050057', 3, '081131432'),
(12, 3, '20120206050131', 1, '081131432'),
(13, 1, '20120206050211', 2, '081131432'),
(14, 2, '20120206050411', 3, '081131432'),
(15, 3, '20120206050438', 1, '081131432'),
(16, 1, '20120206051456', 2, '081131432'),
(17, 2, '20120206051716', 3, '081131594'),
(18, 3, '20120214071259', 1, '081131594'),
(19, 1, '20120214073528', 2, '081131523'),
(20, 2, '20120214080412', 3, '081159395'),
(21, 3, '20120214080454', 1, '151813597'),
(22, 1, '20120214085852', 2, '2219222312'),
(23, 2, '20120223080557', 3, '2512114213'),
(24, 3, '20120223111222', 1, '1518581710'),
(25, 1, '20120223112730', 2, '151841169'),
(26, 2, '20120301115705', 3, '2512380914'),
(27, 3, '20120301115934', 1, '2513032717'),
(28, 1, '20120301121100', 2, '2512451515'),
(29, 2, '20120301121338', 3, '2513283618'),
(30, 3, '20120301121821', 1, '2513513619'),
(31, 1, '20120305100506', 2, '081131432'),
(32, 2, '20120305101119', 3, '081159395'),
(33, 3, '20120305101443', 1, '151841169'),
(34, 1, '20120305101648', 2, '2219222312'),
(35, 2, '20120305113023', 3, '2512511216'),
(36, 3, '20120305114009', 1, '2513283618'),
(37, 1, '20120306095023', 2, '081131432'),
(38, 2, '20120306095440', 3, '081131594'),
(39, 3, '20120306095613', 1, '081131523'),
(40, 1, '20120329100826', 2, '2219222312'),
(41, 2, '20120329101409', 3, '2512114213'),
(42, 3, '20120329102955', 1, '2512380914');

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(10) NOT NULL,
  `login_id` varchar(20) DEFAULT NULL,
  `product` varchar(20) DEFAULT 'Net id',
  `product_qunt` int(10) DEFAULT NULL,
  `amount` varchar(20) DEFAULT NULL,
  `order_date` varchar(20) DEFAULT NULL,
  `payment_mode` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `login_id`, `product`, `product_qunt`, `amount`, `order_date`, `payment_mode`) VALUES
(1, '1518581710', 'Net id', 3, '2000', NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `payment_request`
--

CREATE TABLE `payment_request` (
  `id` int(10) NOT NULL,
  `login_id` varchar(20) DEFAULT NULL,
  `mobile_no` varchar(20) DEFAULT NULL,
  `amount` varchar(20) DEFAULT NULL,
  `product_name` varchar(50) DEFAULT 'net id',
  `product_quentity` varchar(10) DEFAULT NULL,
  `payment_agent` varchar(100) DEFAULT NULL,
  `payment_date` varchar(100) DEFAULT NULL,
  `payment_receive_pin` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'New',
  `creation_time` varchar(30) DEFAULT NULL,
  `pos_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_request`
--

INSERT INTO `payment_request` (`id`, `login_id`, `mobile_no`, `amount`, `product_name`, `product_quentity`, `payment_agent`, `payment_date`, `payment_receive_pin`, `status`, `creation_time`, `pos_id`) VALUES
(17, '081131594', '8801841787822', '2000', 'net id', '', 'bcash', '20120214071510', '123456789', 'paid', '14/02/2012 07:15:10', 3),
(18, '081131594', '8801841787822', '2000', 'net id', '', 'bcash', '20120214071836', '1234569', 'paid', '14/02/2012 07:18:36', 3),
(19, '081131594', '8801841787822', '2000', 'net id', '', 'bcash', '20120214091341', '123456789554', 'paid', '14/02/2012 09:13:41', 3);

-- --------------------------------------------------------

--
-- Table structure for table `pin_no`
--

CREATE TABLE `pin_no` (
  `sno` int(15) NOT NULL,
  `pin_no` varchar(15) NOT NULL,
  `login_id` varchar(15) NOT NULL,
  `active_date` date NOT NULL,
  `status` varchar(20) DEFAULT 'Available',
  `woner_id` varchar(20) DEFAULT NULL,
  `creation_date` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pin_no`
--

INSERT INTO `pin_no` (`sno`, `pin_no`, `login_id`, `active_date`, `status`, `woner_id`, `creation_date`) VALUES
(10001, '919191', '081118361', '2009-10-08', 'Used', NULL, NULL),
(10002, '909002', '081131432', '2009-10-08', 'Used', NULL, NULL),
(10004, '909126', '081131594', '2009-10-08', 'Used', NULL, NULL),
(10003, '929123', '081131523', '2009-10-08', 'Used', NULL, NULL),
(10005, '909026', '081159395', '2009-10-08', 'Available', NULL, NULL),
(10006, '909165', '151813597', '2009-10-15', 'Available', NULL, NULL),
(10007, '912964', '151829258', '2009-10-15', 'Used', NULL, NULL),
(10008, '923568', '151841169', '2009-10-15', 'Available', NULL, NULL),
(10009, '123456789', '1518581710', '2009-10-15', 'Available', NULL, NULL),
(10010, '326547', '2219120511', '2009-10-22', 'Available', NULL, NULL),
(10011, '327845', '2219222312', '2009-10-22', 'Used', NULL, NULL),
(10012, '327789', '2512114213', '2009-10-25', 'Used', NULL, NULL),
(10013, '327956', '2512380914', '2009-10-25', 'Used', NULL, NULL),
(10014, '326999', '2512451515', '2009-10-25', 'Available', NULL, NULL),
(10015, '326789', '2512511216', '2009-10-25', 'Available', NULL, NULL),
(10016, '326777', '2513032717', '2009-10-25', 'Available', NULL, NULL),
(10017, '326329', '2513283618', '2009-10-25', 'Available', NULL, NULL),
(10018, '326824', '2513513619', '2009-10-25', 'Available', NULL, NULL),
(10019, '326025', '2514060020', '2009-10-25', 'Available', NULL, NULL),
(100021, '4568945', '3112374821', '2009-10-31', 'Available', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pos_collection_amount`
--

CREATE TABLE `pos_collection_amount` (
  `id` int(10) NOT NULL,
  `pos_id` int(10) DEFAULT NULL,
  `collection_amount` varchar(20) DEFAULT NULL,
  `login_id` varchar(20) DEFAULT NULL,
  `date_time` varchar(30) DEFAULT NULL,
  `status` varchar(30) DEFAULT 'Panding',
  `collection_agent` varchar(20) DEFAULT NULL,
  `member_mobileno` varchar(20) DEFAULT NULL,
  `agent_pin` varchar(20) DEFAULT NULL,
  `payment_req_date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pos_collection_amount`
--

INSERT INTO `pos_collection_amount` (`id`, `pos_id`, `collection_amount`, `login_id`, `date_time`, `status`, `collection_agent`, `member_mobileno`, `agent_pin`, `payment_req_date`) VALUES
(1, 1, '1983', '081118361', '20120206052921', 'Panding', 'bcash', '8801841787822', '123456789', '20120206052659'),
(2, 3, '1983', '081131594', '20120214071556', 'Panding', 'bcash', '8801841787822', '123456789', '20120214071510'),
(3, 3, '2000', '081131594', '20120214071852', 'Panding', 'bcash', '8801841787822', '1234569', '20120214071836'),
(4, 3, '2000', '081131594', '20120214091517', 'Panding', 'bcash', '8801841787822', '123456789554', '20120214091341');

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `id` int(10) NOT NULL,
  `product_name` varchar(20) DEFAULT NULL,
  `product_price` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`id`, `product_name`, `product_price`) VALUES
(1, 'ID', '2000');

-- --------------------------------------------------------

--
-- Table structure for table `sub_menu1`
--

CREATE TABLE `sub_menu1` (
  `sub_menu_id` int(11) NOT NULL,
  `sub_menu_name` varchar(80) NOT NULL,
  `main_menu_id` int(11) NOT NULL,
  `sub_menu_content` varchar(80) NOT NULL,
  `sub1_sub_menu` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_menu1`
--

INSERT INTO `sub_menu1` (`sub_menu_id`, `sub_menu_name`, `main_menu_id`, `sub_menu_content`, `sub1_sub_menu`) VALUES
(247, 'Tree', 2, 'code.txt', ''),
(249, 'Payment Request', 3, 'payment_request', ''),
(250, 'Payment Check', 3, 'payment_check', ''),
(251, 'Withdraw Request', 10, 'withdraw_request', ''),
(252, 'Withdarw Check', 10, 'withdraw_check', ''),
(253, 'My Account', 2, 'member_account', ''),
(254, 'Deposit Request', 3, 'payment_deposit', ''),
(255, 'Alocation Pin', 3, 'pos_pin_alocation', ''),
(256, 'Deposit Check', 10, 'deposit_check', ''),
(257, 'Pos Collection', 10, 'pos_payment_collection', ''),
(258, 'Registration', 3, 'reg_form', ''),
(259, 'sumitra', 3, 'body_2', '');

-- --------------------------------------------------------

--
-- Table structure for table `sub_menu2`
--

CREATE TABLE `sub_menu2` (
  `sub_menu2_id` int(10) UNSIGNED NOT NULL,
  `menu_name2` varchar(80) DEFAULT NULL,
  `sub_menu1_id` int(11) NOT NULL,
  `menu_content` varchar(80) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `value` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tree_info`
--

CREATE TABLE `tree_info` (
  `id` int(10) NOT NULL,
  `tree_root_id` varchar(15) DEFAULT NULL,
  `tree_woner` varchar(20) DEFAULT NULL,
  `woner_login_id` varchar(10) DEFAULT NULL,
  `woner_mobileno` varchar(20) DEFAULT NULL,
  `commission` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tree_info`
--

INSERT INTO `tree_info` (`id`, `tree_root_id`, `tree_woner`, `woner_login_id`, `woner_mobileno`, `commission`) VALUES
(1, '000000', 'Arif', '081118361', '01841787822', 50),
(2, '111111', 'Suman', '151829258', '01753859595', 50);

-- --------------------------------------------------------

--
-- Table structure for table `user_account`
--

CREATE TABLE `user_account` (
  `id` int(10) NOT NULL,
  `login_id` varchar(100) DEFAULT NULL,
  `receive_amount` int(10) DEFAULT '0',
  `sender_id` varchar(100) DEFAULT NULL,
  `transection_date` varchar(50) DEFAULT NULL,
  `withdraw_amount` varchar(50) DEFAULT '0',
  `current_balance` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Panding'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_account`
--

INSERT INTO `user_account` (`id`, `login_id`, `receive_amount`, `sender_id`, `transection_date`, `withdraw_amount`, `current_balance`, `status`) VALUES
(1, '081118361', 100, '081118361', '20120311000000', '0', '100', 'Panding'),
(2, '000000', 200, '081118361', '20120311000000', '0', '200', 'Panding'),
(3, '081118361', 100, '081118361', '20120311000000', '0', '200', 'Panding'),
(4, '000000', 200, '081118361', '20120311000000', '0', '400', 'Panding'),
(5, '081118361', 100, '081118361', '20120311000000', '0', '300', 'Panding'),
(6, '000000', 200, '081118361', '20120311000000', '0', '600', 'Panding'),
(7, '081131432', 100, '081131432', '20120311000000', '0', '100', 'Panding'),
(8, '081118361', 200, '081131432', '20120311000000', '0', '500', 'Panding'),
(9, '000000', 300, '081131432', '20120311000000', '0', '900', 'Panding'),
(10, '151829258', 100, '151829258', '20120311000000', '0', '100', 'Panding'),
(11, '111111', 200, '151829258', '20120311000000', '0', '200', 'Panding'),
(12, '081131432', 100, '081131432', '20120311000000', '0', '200', 'Panding'),
(13, '081118361', 200, '081131432', '20120311000000', '0', '700', 'Panding'),
(14, '000000', 300, '081131432', '20120311000000', '0', '1200', 'Panding'),
(15, '081118361', 100, '081118361', '20120311000000', '0', '800', 'Panding'),
(16, '000000', 200, '081118361', '20120311000000', '0', '1100', 'Panding'),
(17, '081131432', 100, '081131432', '20120311000000', '0', '300', 'Panding'),
(18, '081118361', 200, '081131432', '20120311000000', '0', '1000', 'Panding'),
(19, '000000', 300, '081131432', '20120311000000', '0', '1200', 'Panding'),
(20, '081131432', 100, '081131432', '20120311000000', '0', '400', 'Panding'),
(21, '081118361', 200, '081131432', '20120311000000', '0', '1000', 'Panding'),
(22, '000000', 300, '081131432', '20120311000000', '0', '1200', 'Panding');

-- --------------------------------------------------------

--
-- Table structure for table `user_acl`
--

CREATE TABLE `user_acl` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(80) DEFAULT NULL,
  `full_name` varchar(80) NOT NULL,
  `password` varchar(80) DEFAULT NULL,
  `user_type` varchar(40) DEFAULT NULL,
  `created_by` varchar(80) NOT NULL,
  `user_create_time` varchar(80) DEFAULT NULL,
  `main_menu` varchar(80) DEFAULT NULL,
  `sub_menu1` varchar(80) DEFAULT NULL,
  `sub_menu2` varchar(80) DEFAULT NULL,
  `pos_id` int(10) DEFAULT NULL,
  `member_id` int(10) DEFAULT NULL,
  `founder_id` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_acl`
--

INSERT INTO `user_acl` (`user_id`, `user_name`, `full_name`, `password`, `user_type`, `created_by`, `user_create_time`, `main_menu`, `sub_menu1`, `sub_menu2`, `pos_id`, `member_id`, `founder_id`) VALUES
(1, 'admin', '', 'abc', 'Admin', 'admin', '00:00:02', '1,2,3,4,5,6', '1,2,3,4,5,6,7,8,9,10', '', 1, 2, 1),
(2, 'arif', '', 'arif', 'pos', 'admin', NULL, '3', '249,250,254,255', NULL, 1, NULL, NULL),
(11, 'suman', 'mnm', 'suman', 'founder', 'Admin', '20110911095827', '1,2,3', NULL, NULL, 1, NULL, NULL),
(12, 'rukon', '', 'rukon', 'member', 'Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '2512114213', '', 'f6P8MYpc', 'member', '', NULL, '1,2', '247,249,250,253,255', NULL, NULL, NULL, NULL),
(14, '1518581710', '', 'L2GbQHkN', 'member', '', NULL, '1,2', '247,253', NULL, NULL, NULL, NULL),
(15, '151841169', '', '3Br2M4Zn', 'member', '', NULL, '1,2', '247,253', NULL, NULL, NULL, NULL),
(16, '2512380914', '', 'qjvgyVfR', 'member', '', NULL, '1,2', '247,253', NULL, NULL, NULL, NULL),
(17, '2513032717', '', 'fWHTjLBF', 'member', '', NULL, '1,2', '247,253', NULL, NULL, NULL, NULL),
(18, '2512451515', '', 'nMjgNFDm', 'member', '', NULL, '1,2', '247,253', NULL, NULL, NULL, NULL),
(19, '2513283618', '', 'dTY7mVch', 'member', '', NULL, '1,2', '247,253', NULL, NULL, NULL, NULL),
(20, '2513513619', '', 'Qpn7drJT', 'member', '', NULL, '1,2', '247,253', NULL, NULL, NULL, NULL),
(21, '2219222312', '', 'K9qbNjyn', 'member', '', NULL, '1,2', '247,253', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `s_id` varchar(15) NOT NULL,
  `form_type` varchar(6) NOT NULL,
  `m_name` varchar(35) NOT NULL,
  `pname` varchar(35) NOT NULL,
  `m_dob` date NOT NULL,
  `m_status` varchar(10) NOT NULL,
  `nationality` varchar(10) NOT NULL,
  `address` varchar(65) NOT NULL,
  `mailing_address` varchar(65) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `mobile_no` varchar(20) NOT NULL DEFAULT '',
  `mobile_network` varchar(10) NOT NULL,
  `phone_office` varchar(12) NOT NULL,
  `email` varchar(30) NOT NULL,
  `picture` varchar(200) DEFAULT NULL,
  `dispatch_mode` varchar(10) NOT NULL,
  `n_name` varchar(35) NOT NULL,
  `n_relation` varchar(30) NOT NULL,
  `n_address` varchar(65) NOT NULL,
  `n_dob` date NOT NULL,
  `bank_name` varchar(35) NOT NULL,
  `acc_no` varchar(14) NOT NULL,
  `bank_branch` varchar(20) NOT NULL,
  `pan_no` varchar(10) NOT NULL,
  `ifsc_code` varchar(10) NOT NULL,
  `login_id` varchar(15) NOT NULL,
  `login_pass` varchar(15) NOT NULL DEFAULT '',
  `hint` varchar(50) NOT NULL,
  `hint_ans` varchar(75) NOT NULL,
  `app_no` varchar(15) NOT NULL,
  `status` varchar(20) DEFAULT 'Deactive',
  `creation_time` varchar(20) DEFAULT NULL,
  `donate_care` varchar(20) DEFAULT NULL,
  `pos_id` int(10) DEFAULT NULL,
  `tree_id` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`s_id`, `form_type`, `m_name`, `pname`, `m_dob`, `m_status`, `nationality`, `address`, `mailing_address`, `city`, `state`, `pincode`, `mobile_no`, `mobile_network`, `phone_office`, `email`, `picture`, `dispatch_mode`, `n_name`, `n_relation`, `n_address`, `n_dob`, `bank_name`, `acc_no`, `bank_branch`, `pan_no`, `ifsc_code`, `login_id`, `login_pass`, `hint`, `hint_ans`, `app_no`, `status`, `creation_time`, `donate_care`, `pos_id`, `tree_id`) VALUES
('000000', '', 'Mr. Sahyog Jan Kalyan Shiksha Samit', 'S/O Sahyog Jan Kalyan Shiksha Samit', '1990-09-26', 'Unmarried', 'Indian', '1445, First Floor, Sector 17C, Gurgaon Haryana', '1445, First Floor, Sector 17C, Gurgaon Haryana', 'Gurgaon', 'Haryana', '205001', '8801753859595', 'gsm', '', 'saurav_pandey786@yahoo.com', NULL, 'Online', 'Sahyog', 'BROTHER', 'As Above', '2009-09-26', 'NA', 'NA', 'NA', 'NA', '', '081118361', 'goyJk9', 'What is your pet name?', 'sahyog', '101118361', 'Active', NULL, NULL, 1, 1),
('111111', '', 'Mr Tamim', '', '0000-00-00', '', '', '', '', '', '', '', '8801753859', '', '', '', NULL, '', '', '', '', '0000-00-00', '', '', '', '', '', '151829258', '123456', '', '', '', 'Active', NULL, NULL, 1, 2),
('081131432', 'A', 'sdfgdfg', '', '0000-00-00', '', '', '', '', '', '', '', '01718233932', '', '', 'abc42094@yahoo.com', NULL, '', '', '', '', '0000-00-00', '', '', '', '', '', '081131523', 'wnJLd4zf', '', '', '', 'Active', NULL, NULL, NULL, NULL),
('081131432', 'C', 'suman', '', '0000-00-00', '', '', '1445, First Floor, Sector 17C, Gurgaon Haryana', '1445, First Floor, Sector 17C, Gurgaon Haryana', '', '', '', '01753859595', '', '', 'abc42092@yahoo.com', NULL, '', '', '', '', '0000-00-00', '', '', '', '', '', '081131594', 'qrDZ64MK', '', '', '', 'Active', NULL, NULL, NULL, NULL),
('081118361', 'A', 'suman', '', '0000-00-00', '', '', '', '', '', '', '', '01841787822', '', '', 'abc42092@yahoo.com', NULL, '', '', '', '', '0000-00-00', '', '', '', '', '', '081131432', 'krQRtvwH', '', '', '', 'Active', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_info_bak`
--

CREATE TABLE `user_info_bak` (
  `s_id` varchar(15) NOT NULL,
  `form_type` varchar(6) NOT NULL,
  `m_name` varchar(35) NOT NULL,
  `pname` varchar(35) NOT NULL,
  `m_dob` date NOT NULL,
  `m_status` varchar(10) NOT NULL,
  `nationality` varchar(10) NOT NULL,
  `address` varchar(65) NOT NULL,
  `mailing_address` varchar(65) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `mobile_no` varchar(10) NOT NULL,
  `mobile_network` varchar(10) NOT NULL,
  `phone_office` varchar(12) NOT NULL,
  `email` varchar(30) NOT NULL,
  `dispatch_mode` varchar(10) NOT NULL,
  `n_name` varchar(35) NOT NULL,
  `n_relation` varchar(30) NOT NULL,
  `n_address` varchar(65) NOT NULL,
  `n_dob` date NOT NULL,
  `bank_name` varchar(35) NOT NULL,
  `acc_no` varchar(14) NOT NULL,
  `bank_branch` varchar(20) NOT NULL,
  `pan_no` varchar(10) NOT NULL,
  `ifsc_code` varchar(10) NOT NULL,
  `login_id` varchar(15) NOT NULL,
  `login_pass` varchar(15) NOT NULL,
  `hint` varchar(50) NOT NULL,
  `hint_ans` varchar(75) NOT NULL,
  `app_no` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info_bak`
--

INSERT INTO `user_info_bak` (`s_id`, `form_type`, `m_name`, `pname`, `m_dob`, `m_status`, `nationality`, `address`, `mailing_address`, `city`, `state`, `pincode`, `mobile_no`, `mobile_network`, `phone_office`, `email`, `dispatch_mode`, `n_name`, `n_relation`, `n_address`, `n_dob`, `bank_name`, `acc_no`, `bank_branch`, `pan_no`, `ifsc_code`, `login_id`, `login_pass`, `hint`, `hint_ans`, `app_no`) VALUES
('000000', '', 'Mr. Sahyog Jan Kalyan Shiksha Samit', 'S/O Sahyog Jan Kalyan Shiksha Samit', '1990-09-26', 'Unmarried', 'Indian', '1445, First Floor, Sector 17C, Gurgaon Haryana', '1445, First Floor, Sector 17C, Gurgaon Haryana', 'Gurgaon', 'Haryana', '205001', '9837035841', 'gsm', '', 'saurav_pandey786@yahoo.com', 'Online', 'Sahyog', 'BROTHER', 'As Above', '2009-09-26', 'NA', 'NA', 'NA', 'NA', '', '081118361', 'goyhas', 'What is your pet name?', 'sahyog', '101118361'),
('081118361', 'A', 'Mr. Sahyog Jan Kalyan Shiksha Samit', 'S/O Sahyog Jan Kalyan Shiksha Samit', '1990-09-26', 'Unmarried', 'Indian', '1445, First Floor, Sector 17C, Gurgaon Haryana', '1445, First Floor, Sector 17C, Gurgaon Haryana', 'Gurgaon', 'Haryana', '205001', '9837035841', 'gsm', '', 'saurav_pandey786@yahoo.com', 'Online', 'Sahyog', 'BROTHER', 'Same As', '2009-09-26', 'NA', 'NA', 'NA', 'NA', '', '081131432', 'goyhas', 'What is your pet name?', 'sahyog', '71131432'),
('081118361', 'B', 'Mr. Sahyog Jan Kalyan Shiksha Samit', 'S/O Sahyog Jan Kalyan Shiksha Samit', '1990-09-26', 'Unmarried', 'Indian', '1445, First Floor, Sector 17C, Gurgaon Haryana', '1445, First Floor, Sector 17C, Gurgaon Haryana', 'Gurgaon', 'Haryana', '205001', '9837035841', 'gsm', '', 'saurav_pandey786@yahoo.com', 'Online', 'Sahyog', 'BROTHER', 'Same As', '2009-09-26', 'NA', 'NA', 'NA', 'NA', '', '081131523', 'goyhas', 'What is your pet name?', 'sahyog', '21131523'),
('081118361', 'C', 'Mr. Sahyog Jan Kalyan Shiksha Samit', 'S/O Sahyog Jan Kalyan Shiksha Samit', '1990-09-26', 'Unmarried', 'Indian', '1445, First Floor, Sector 17C, Gurgaon Haryana', '1445, First Floor, Sector 17C, Gurgaon Haryana', 'Gurgaon', 'Haryana', '205001', '9837035841', 'gsm', '', 'saurav_pandey786@yahoo.com', 'Online', 'Sahyog', 'BROTHER', 'Same As', '2009-09-26', 'NA', 'NA', 'NA', 'NA', '', '081131594', 'goyhas', 'What is your pet name?', 'sahyog', '61131594'),
('081131432', 'A', 'Mr. Gyan Singh Kushwah', 'S/O Balwant Singh Kushwah', '0000-00-00', 'Married', 'Indian', 'Mo. Siyapuram Opp. Bajaj Show Room, Station Road', 'Mo. Siyapuram Opp. Bajaj Show Room, Station Road', 'Mainpuri', 'Uttar Pradesh', '205001', '9719005869', 'gsm', '', 'saurav_pandey786@yahoo.com', 'By Courier', 'Anita Kushwah', 'WIFE', 'Same As', '0000-00-00', 'PNB', '03480001002800', 'Mainpuri', 'NA', '', '081159395', '123456', 'What is your pet name?', 'gyan', '61159395'),
('081159395', 'A', 'Mr. munendra singh chauhan', 'S/O netra pal singh', '1975-04-10', 'Married', 'Indian', 'haridarshan nagar,mainpuri', 'as above', 'mainpuri', 'Uttar Pradesh', '205001', '9457415926', 'gsm', '', 'www.saurav_pandey786@yahoo.com', 'By Courier', 'prem lata', 'WIFE', 'as above', '0000-00-00', 's.b.i.', '3055312577', 'mainpuri', 'AHNTC1997J', '', '151813597', '123456', 'What is your pet name?', 'MUNNI', '91813597'),
('151813597', 'A', 'Mr. anoop kumar', 'S/O amar singh', '0000-00-00', 'Unmarried', 'Indian', 'vill-pragpur, post gariya(chhinkaura)\r\ndistt-mainpuri', 'as above', 'mainpuri', 'Uttar Pradesh', '206301', '9760142035', 'gsm', '', 'www.saurav_pandey786@yahoo.com', 'By Courier', 'amar singh', 'FATHER', 'as above', '0000-00-00', 'bank of india`', '29840', 'bewar', 'a', '', '151829258', '123456', 'What is your pet name?', 'anoop', '71829258'),
('151829258', 'C', 'Mr. kuldeep kumar', 'S/O rati ram saxena', '1980-02-15', 'Unmarried', 'Indian', '4/255,awas vikas colony,mainpuri', 'as above', 'mainpuri', 'Uttar Pradesh', '205001', '9457364391', 'gsm', '', 'www.saurav_pandey786@yahoo.com', 'By Courier', 'rati ram saxena', 'FATHER', 'same', '0000-00-00', 'pnb', '03480001002265', 'mainpuri', 'a', '', '151841169', '123456', 'What is your pet name?', 'kuldeep', '21841169'),
('151841169', 'A', 'Mr. gyan chandra gupta', 'S/O radhe shyam gupta', '0000-00-00', 'Married', 'Indian', '1/66/2,awas vikas ,mainpuri', 'same', 'mainpuri', 'Uttar Pradesh', '205001', '9410450208', 'gsm', '', 'www.saurav_pandey786@yahoo.com', 'By Courier', 'sangeeta gupta', 'WIFE', 'same', '0000-00-00', 'sbi', '10902962663', 'mainpuri', 'afppg8878n', '', '1518581710', '123456', 'What is your pet name?', 'gyan', '318581710'),
('081131432', 'B', 'Ms. sheela varma', 'W/O c.l. verma', '1952-05-13', 'Married', 'Indian', 'c 21,phase 1,trans yamuna colony,agra', 'same', 'agra', 'Uttar Pradesh', '282006', '9412516927', 'gsm', '', 'www.saurav_pandey786@yahoo.com', 'By Courier', 'satyendra verma', 'SON', 'same', '1974-12-24', 'pnb', 'a', 'agra', '282006', '', '2219120511', '123456', 'What is your pet name?', 'verma', '119120511'),
('151841169', 'B', 'Mr. BACHAN SINGH GANGWAR', 'S/O RAM SINGH', '0000-00-00', 'Married', 'Indian', 'VILL+POST-PITAURA,KAIMGANJ,DISST-FARRUKHABAD', 'SAME', 'FARRUKHABAD', 'Uttar Pradesh', '207502', '0988932593', 'gsm', '', 'www.saurav_pandey786@yahoo.com', 'By Courier', 'SAROJNI DEVI', 'WIFE', 'same', '0000-00-00', 'A', 'A', 'A', 'A', 'A', '2219222312', '123456', 'What is your pet name?', 'BACHAN', '419222312'),
('2219120511', 'C', 'Mr. MANOJ KUMAR AMAN', 'S/O SATISH CHANDRA', '1978-03-11', 'Married', 'Indian', 'B.S.A OFFICE I.W.D.P. SABRI ROAD , HAYAT NAGAR MIRZAPUR.', 'B.S.A OFFICE I.W.D.P. SABRI ROAD , HAYAT NAGAR MIRZAPUR.', 'MIRZAPUR', 'Uttar Pradesh', '000000', '9839328265', 'gsm', '', '25SARBESH06KUMAR76@GMAIL.COM', 'By Courier', 'NEERAJ', 'WIFE', 'B.S.A OFFICE I.W.D.P. SABRI ROAD , HAYAT NAGAR MIRZAPUR.', '0000-00-00', 'PNB', '03220001300926', 'MIRZAPUR', 'AKLPA8965D', '', '2512114213', '123456', 'What is your pet name?', 'AMAN', '212114213'),
('151829258', 'A', 'Ms. NEMA DEVI', 'D/O MADANSEN ', '0000-00-00', 'Unmarried', 'Indian', 'VILL-SRANGARPUR POST-KARIMGANJ DIST-MAINPURI', 'VILL-SRANGARPUR POST-KARIMGANJ DIST-MAINPURI', 'MAINPURI', 'Uttar Pradesh', '205001', '9719855072', 'gsm', '', 'ATULBHADAURIA13@GMAIL.COM', 'By Courier', 'MARGSHREE', 'MOTHER', 'VILL-SRANGARPUR POST-KARIMGANJ DIST-MAINPURI', '0000-00-00', 'AA', 'A', 'AA', 'AA', 'AA', '2512380914', '123456', 'What is your pet name?', 'NEMA', '412380914'),
('2512380914', 'A', 'Mr. NEM SINGH', 'S/O AMAR SINGH', '1990-07-10', 'Unmarried', 'Indian', 'VILL-SRANGARPUR POST-KARIMGANJ DIST-MAINPURI', 'VILL-SRANGARPUR POST-KARIMGANJ DIST-MAINPURI', 'MAINPURI', 'Uttar Pradesh', '205001', '9719972035', 'gsm', '', 'ATULBHADAURIA13@GMAIL.COM', 'By Courier', 'AMAR SINGH', 'FATHER', 'VILL-SRANGARPUR POST-KARIMGANJ DIST-MAINPURI', '0000-00-00', 'C.B.I.', '32476', 'MAINPURI', 'A', 'A', '2512451515', '123456', 'What is your pet name?', 'NEM', '412451515'),
('2512451515', 'A', 'Mr. RAJEEV KUMAR', 'S/O JUGAL KISHORE', '0000-00-00', 'Unmarried', 'Indian', 'VILL-SINGARPUR POST-KARIMGANJ DIST-MAINPURI', 'VILL-SINGARPUR POST-KARIMGANJ DIST-MAINPURI', 'MAINPURI', 'Uttar Pradesh', '205001', '9719972035', 'gsm', '', 'ATULBHADAURIA13@GMAIL.COM', 'By Courier', 'JUGAL KISHORE', 'FATHER', 'VILL-SINGARPUR POST-KARIMGANJ DIST-MAINPURI', '0000-00-00', 'AA', 'AA', 'AA', 'AA', 'AA', '2512511216', '123456', 'What is your pet name?', 'RAJEEV', '512511216'),
('151829258', 'B', 'Mr. RATAN KUMAR', 'S/O GAYAPRASAD', '0000-00-00', 'Unmarried', 'Indian', 'VILL-PRAGPUR POST-GARIYA (CHHINKAURA) DIST-MAINPURI', 'VILL-PRAGPUR POST-GARIYA (CHHINKAURA) DIST-MAINPURI', 'MAINPURI', 'Uttar Pradesh', '205001', '9719691242', 'gsm', '', 'ATULBHADAURIA13@GMAIL.COM', 'By Courier', 'GAYAPRASAD', 'FATHER', 'AS ABOVE', '0000-00-00', 'A', 'A', 'A', 'A', 'A', '2513032717', '123456', 'What is your pet name?', 'RATAN', '1013032717'),
('2513032717', 'C', 'Mr. OMPAL SINGH', 'S/O SHRIPAL SINGH', '1988-10-10', 'Unmarried', 'Indian', 'VILL-PRAGPUR  POST-GARIYA(CHHINKAURA)\r\nDISTT. MAINPURI', 'VILL-PRAGPUR  POST-GARIYA(CHHINKAURA)\r\nDISTT. MAINPURI', 'MAINPURI', 'Uttar Pradesh', '205001', '9760401920', 'gsm', '', '25SARBESH06KUMAR76@GMAIL.COM', 'By Courier', 'SHRIPAL SINGH', 'FATHER', 'AS ABOVE', '0000-00-00', 'AA', 'AA', 'AA', 'AA', 'AA', '2513283618', '123456', 'What is your pet name?', 'OM', '913283618'),
('2512114213', 'A', 'Mr. SANJESH KUMAR', 'S/O YAD RAM', '1974-08-17', 'Unmarried', 'Indian', '6A,RAJA KA BAGH MAINPURI', '6A,RAJA KA BAGH MAINPURI', 'MAINPURI', 'Uttar Pradesh', '205001', '9410271309', 'gsm', '', 'SANJESH1974@ORKUT.COM', 'By Courier', 'RAM MURTI DEVI', 'MOTHER', 'AS ABOVE', '0000-00-00', 'PNB', '03480001002963', 'MAINPURI', 'CCZPS6508L', 'A', '2513513619', '123456', 'What is your pet name?', 'SANJESH', '613513619'),
('2513513619', 'A', 'Mr. NIKHIL SAXENA', 'S/O ANIL KUMAR SAXENA', '0000-00-00', 'Unmarried', 'Indian', '285 CHAUTHIYANA DEVI ROAD MAINPURI', 'AS ABOVE', 'MAINPURI', 'Uttar Pradesh', '205001', '9219744878', 'gsm', '', 'SAJESH1974@ORKUT.COM', 'By Courier', 'NEELAM SAXENA ', 'MOTHER', 'AS ABOVE', '0000-00-00', 'SBI', '30669861659', 'MAINPURI', 'CBSPS8804B', '', '2514060020', '123456', 'What is your pet name?', 'NIKHIL', '214060020'),
('2512380914', 'C', 'Mr. pramod kumar', 'S/O Horilal', '1991-06-24', 'Unmarried', 'Indian', 'Vill-N.miti post sugaun Dist Mainpuri', 'Vill-N.miti post sugaun Dist Mainpuri', 'Mainpuri', 'Uttar Pradesh', '205120', '9760275307', 'gsm', '', 'www.saurav@yahoo.com', 'Online', 'Horilal', 'FATHER', 'Vill-N.miti post sugaun Dist Mainpuri', '1951-04-20', 'aa', 'a', 'a', 'a', 'a', '3112374821', '123456', 'What make was your first car or bike?', 'maruti', '612374821'),
('2512380914', 'B', 'Md. pankaj kumar', 'S/O Ramsanehi lal', '0000-00-00', 'Unmarried', 'Indian', 'Vill-Harchandpur post-Nagla jula \r\nDist-Mainpuri', 'Vill-Harchandpur post-Nagla jula \r\nDist-Mainpuri', 'Mainpuri', 'Uttar Pradesh', '205001', '9917562030', 'gsm', '', 'www.anoop9760@yahoo.com', 'Online', 'Ramsanehi lal', 'FATHER', 'Vill-Harchandpur post-Nagla jula ', '1945-05-11', 'aa', 'aa', 'aa', 'aa', 'aa', '3112563522', '123456', 'What make was your first car or bike?', 'hero honda', '912563522');

-- --------------------------------------------------------

--
-- Table structure for table `user_level`
--

CREATE TABLE `user_level` (
  `login_id` varchar(15) NOT NULL,
  `level` varchar(10) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_request`
--

CREATE TABLE `withdraw_request` (
  `id` int(10) NOT NULL,
  `mobile_no` varchar(20) DEFAULT NULL,
  `login_id` varchar(20) DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `request_date` varchar(20) DEFAULT NULL,
  `creation_time` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'New',
  `pin` varchar(20) DEFAULT NULL,
  `agent` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `withdraw_request`
--

INSERT INTO `withdraw_request` (`id`, `mobile_no`, `login_id`, `amount`, `request_date`, `creation_time`, `status`, `pin`, `agent`) VALUES
(4, '8801841787822', '081118361', '100', '20120206053729', '06/02/2012 05:37:29', 'Paid', '32132123123', 'bcash'),
(5, '8801841787822', '081118361', '300', '20120206064924', '06/02/2012 06:49:24', 'New', NULL, NULL),
(6, '8801753859595', '081118361', '200', '20120223083533', '23/02/2012 08:35:33', 'Paid', '123456', 'bcash');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alocation_id_to_pos`
--
ALTER TABLE `alocation_id_to_pos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_info`
--
ALTER TABLE `bank_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collection_agent`
--
ALTER TABLE `collection_agent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_account`
--
ALTER TABLE `company_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donate_pos`
--
ALTER TABLE `donate_pos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donate_pos_acc`
--
ALTER TABLE `donate_pos_acc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donate_pos_deposit`
--
ALTER TABLE `donate_pos_deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_type`
--
ALTER TABLE `form_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level_amount`
--
ALTER TABLE `level_amount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_info`
--
ALTER TABLE `login_info`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `main_menu`
--
ALTER TABLE `main_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_menu_bak`
--
ALTER TABLE `main_menu_bak`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `member_under_pos`
--
ALTER TABLE `member_under_pos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_request`
--
ALTER TABLE `payment_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pin_no`
--
ALTER TABLE `pin_no`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `sno` (`sno`),
  ADD UNIQUE KEY `pin_no` (`pin_no`);

--
-- Indexes for table `pos_collection_amount`
--
ALTER TABLE `pos_collection_amount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_menu1`
--
ALTER TABLE `sub_menu1`
  ADD PRIMARY KEY (`sub_menu_id`);

--
-- Indexes for table `sub_menu2`
--
ALTER TABLE `sub_menu2`
  ADD PRIMARY KEY (`sub_menu2_id`);

--
-- Indexes for table `tree_info`
--
ALTER TABLE `tree_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_account`
--
ALTER TABLE `user_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_acl`
--
ALTER TABLE `user_acl`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `user_info_bak`
--
ALTER TABLE `user_info_bak`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `withdraw_request`
--
ALTER TABLE `withdraw_request`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alocation_id_to_pos`
--
ALTER TABLE `alocation_id_to_pos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bank_info`
--
ALTER TABLE `bank_info`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `collection_agent`
--
ALTER TABLE `collection_agent`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `company_account`
--
ALTER TABLE `company_account`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donate_pos`
--
ALTER TABLE `donate_pos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `donate_pos_acc`
--
ALTER TABLE `donate_pos_acc`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `donate_pos_deposit`
--
ALTER TABLE `donate_pos_deposit`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `form_type`
--
ALTER TABLE `form_type`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `level_amount`
--
ALTER TABLE `level_amount`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `main_menu`
--
ALTER TABLE `main_menu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `main_menu_bak`
--
ALTER TABLE `main_menu_bak`
  MODIFY `menu_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `member_under_pos`
--
ALTER TABLE `member_under_pos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_request`
--
ALTER TABLE `payment_request`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `pin_no`
--
ALTER TABLE `pin_no`
  MODIFY `sno` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100024;

--
-- AUTO_INCREMENT for table `pos_collection_amount`
--
ALTER TABLE `pos_collection_amount`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_menu1`
--
ALTER TABLE `sub_menu1`
  MODIFY `sub_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;

--
-- AUTO_INCREMENT for table `sub_menu2`
--
ALTER TABLE `sub_menu2`
  MODIFY `sub_menu2_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tree_info`
--
ALTER TABLE `tree_info`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_account`
--
ALTER TABLE `user_account`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user_acl`
--
ALTER TABLE `user_acl`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `withdraw_request`
--
ALTER TABLE `withdraw_request`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `travel`
--
CREATE DATABASE IF NOT EXISTS `travel` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `travel`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-05-13 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `FromDate` varchar(100) NOT NULL,
  `ToDate` varchar(100) NOT NULL,
  `Comment` mediumtext NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(2, 1, 'anuj@gmail.com', '05/18/2017', '05/31/2017', '\"Lorem ipsum dolor sit amet, cpariatur. Excepteur sint ', '2017-05-13 19:01:10', 2, 'u', '2017-05-13 21:30:23'),
(3, 2, 'anuj@gmail.com', '05/16/2017', '05/31/2017', 'casf esd sg gd gdfh df', '2017-05-13 20:20:01', 2, 'a', '2017-05-13 23:04:40'),
(4, 1, 'anuj@gmail.com', '05/16/2017', '05/31/2017', 'dwef  fwe', '2017-05-13 20:32:54', 2, 'a', '2017-05-13 21:36:39'),
(5, 1, 'anuj@gmail.com', '05/16/2017', '05/31/2017', 'dwef  fwe', '2017-05-13 20:33:17', 1, NULL, '2017-05-13 23:11:35'),
(6, 2, 'anuj@gmail.com', '05/14/2017', '05/24/2017', 'test demo', '2017-05-13 21:18:37', 2, 'a', '2017-05-14 07:58:28'),
(7, 4, 'sarita@gmail.com', '05/26/2017', '05/30/2017', 'est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2017-05-14 05:09:11', 2, 'a', '2017-05-14 07:47:39'),
(8, 2, 'sarita@gmail.com', '05/27/2017', '05/28/2017', 'ubub5u6', '2017-05-14 05:10:24', 2, 'a', '2017-05-14 05:13:03'),
(9, 1, 'demo@test.com', '05/19/2017', '05/21/2017', 'demo test demo test', '2017-05-14 07:45:11', 1, NULL, '2017-05-14 07:47:45'),
(10, 5, 'abc@g.com', '05/22/2017', '05/24/2017', 'test test t test test ttest test ttest test ttest test ttest test ttest test ttest test ttest test ttest test ttest test ttest test ttest test ttest test t', '2017-05-14 07:56:26', 1, NULL, '2017-05-14 07:58:19');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `EmailId` varchar(100) NOT NULL,
  `MobileNumber` char(10) NOT NULL,
  `Subject` varchar(100) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(1, 'anuj', 'anuj.lpu1@gmail.com', '2354235235', 'The standard Lorem Ipsum passage, used since the 1500s', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '2017-05-13 22:23:53', 1),
(2, 'efgegter', 'terterte@gmail.com', '3454353453', 'The standard Lorem Ipsum passage', 'nventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat volup', '2017-05-13 22:27:00', 1),
(3, 'fwerwetrwet', 'fwsfhrtre@hdhdhqw.com', '8888888888', 'erwt wet', 'nventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat volup', '2017-05-13 22:28:11', 1),
(4, 'Test', 'test@gm.com', '4747474747', 'Test', 'iidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiid', '2017-05-14 07:54:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Issue` varchar(100) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `AdminRemark` mediumtext,
  `AdminremarkDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(4, 'anuj@gmail.com', 'Cancellation', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco ', '2017-05-13 22:03:33', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur', '2017-05-13 23:50:40'),
(5, 'sarita@gmail.com', 'Cancellation', 'tbt 3y 34y4 3y3hgg34t', '2017-05-14 05:12:14', 'sg sd gs g sdgfs ', '2017-05-14 07:52:07'),
(6, 'demo@test.com', 'Refund', 'demo test.com demo test.comdemo test.comdemo test.comdemo test.com', '2017-05-14 07:45:37', NULL, '0000-00-00 00:00:00'),
(7, 'abc@g.com', 'Refund', 'test test ttest test ttest test ttest test ttest test ttest test t', '2017-05-14 07:56:46', 'vetet ert erteryre', '2017-05-14 07:58:43');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>Welcome to Yahoo! India. 1Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <A href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</A>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>'),
(2, 'Privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>'),
(3, 'aboutus', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Test test</span>'),
(11, 'contact', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address------Test</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) NOT NULL,
  `PackageType` varchar(150) NOT NULL,
  `PackageLocation` varchar(100) NOT NULL,
  `PackagePrice` int(11) NOT NULL,
  `PackageFetures` varchar(255) NOT NULL,
  `PackageDetails` mediumtext NOT NULL,
  `PackageImage` varchar(100) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Sundarbans', 'General', 'Sundarbans bangladesh', 100, 'Air Conditioning ,Balcony / Terrace,Cable / Satellite / Pay TV available,Ceiling Fan,Hairdryer', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', '14287acc-b5cb-46db-b8b4-e3ffe652fc0d1.png', '2017-05-13 14:23:44', '2019-01-30 05:20:40'),
(2, 'Cox\'s Bazar', 'Test', 'Sundarbans2', 5433, '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor ', 'demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test ', 'cp1.jpg', '2017-05-13 15:24:26', '2019-01-30 05:20:46'),
(3, 'Chittagong', 'Demo Demo Demo Demo Demo Demo  test', 'Chittagong1', 1000, 'Demo Demo  test', 'testtesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttest', 'complaints1.jpg', '2017-05-13 16:00:58', '2019-01-30 05:20:56'),
(4, 'Dhaka', 'Familty and Couple', 'Dhaka2', 2000, ' velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', ' velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 'images1.jpg', '2017-05-13 22:39:37', '2019-01-30 05:21:07'),
(5, 'Cox\'s Bazar1', 'General', 'Cox\'s Bazar11', 3000, ' velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', ' velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 'coorg-hill-station11.jpg', '2017-05-13 22:42:10', '2019-01-30 05:21:17'),
(6, 'Cox\'s Bazar2', 'Family', 'Cox\'s Bazar14', 5000, 'Frree wifi, pickup and drop etc', 'Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test ', 'mamp-pro-logo-big1.png', '2017-05-14 08:01:08', '2019-01-30 05:21:26');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `MobileNumber` char(10) NOT NULL,
  `EmailId` varchar(70) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(1, 'Anuj kumar', '1111111111', 'anuj@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '2017-05-10 10:38:17', '2017-05-13 19:36:08'),
(3, 'sarita', '9999999999', 'sarita@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '2017-05-10 10:50:48', '2017-05-14 07:40:19'),
(7, 'test', '7676767676', 'test@gm.com', 'f925916e2754e5e03f75dd58a5733251', '2017-05-10 10:54:56', '0000-00-00 00:00:00'),
(8, 'Anuj kumar', '9999999999', 'demo@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-05-14 07:17:44', '0000-00-00 00:00:00'),
(9, 'XYZabc', '3333333333', 'xyz@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-05-14 07:25:13', '2017-05-14 07:25:42'),
(10, 'Anuj Kumar', '4543534534', 'demo@test.com', 'f925916e2754e5e03f75dd58a5733251', '2017-05-14 07:43:23', '2017-05-14 07:46:57'),
(11, 'XYZ', '8888888888', 'abc@g.com', 'f925916e2754e5e03f75dd58a5733251', '2017-05-14 07:54:32', '2017-05-14 07:55:17'),
(12, 'Md. Hamid', '0987654321', 'r@gmail.com', 'd66567f60a140c14f5ba87b995d3a5f7', '2019-01-30 07:07:41', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
