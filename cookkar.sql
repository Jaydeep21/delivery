-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2019 at 09:06 PM
-- Server version: 5.7.21-log
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cookkar`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `cid` bigint(20) NOT NULL,
  `carea` varchar(100) NOT NULL,
  `ccity` varchar(100) NOT NULL,
  `cpincode` varchar(100) NOT NULL,
  `cstate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `chef`
--

CREATE TABLE `chef` (
  `chid` bigint(20) NOT NULL,
  `cid` bigint(20) NOT NULL,
  `paddress` varchar(200) NOT NULL,
  `aadhar` bigint(20) NOT NULL,
  `aadhar_image` varchar(100) NOT NULL,
  `chorders` bigint(20) DEFAULT NULL,
  `chorders_in_a_day` bigint(20) DEFAULT NULL,
  `chdishes` bigint(20) DEFAULT NULL,
  `chdishes_in_a_day` bigint(20) DEFAULT NULL,
  `chincome` bigint(20) DEFAULT NULL,
  `chincome_in_a_day` bigint(20) DEFAULT NULL,
  `chspeciality` varchar(200) DEFAULT NULL,
  `chstart_date` date DEFAULT NULL,
  `chstatus` varchar(50) DEFAULT NULL,
  `chwork_time` varchar(50) DEFAULT NULL,
  `chfood_type` varchar(50) DEFAULT NULL,
  `chdescription` varchar(200) DEFAULT NULL,
  `clongitude` float DEFAULT NULL,
  `clattitude` float DEFAULT NULL,
  `cadminapproval` varchar(20) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chef`
--

INSERT INTO `chef` (`chid`, `cid`, `paddress`, `aadhar`, `aadhar_image`, `chorders`, `chorders_in_a_day`, `chdishes`, `chdishes_in_a_day`, `chincome`, `chincome_in_a_day`, `chspeciality`, `chstart_date`, `chstatus`, `chwork_time`, `chfood_type`, `chdescription`, `clongitude`, `clattitude`, `cadminapproval`, `timestamp`) VALUES
(1, 1, 'Bombay leprosy care', 123456789, 'aadharimg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -73.9893, 40.7419, 'accepted', '2019-09-23 05:45:37');

-- --------------------------------------------------------

--
-- Table structure for table `chef_reviewrate`
--

CREATE TABLE `chef_reviewrate` (
  `crid` bigint(20) NOT NULL,
  `cid` bigint(20) NOT NULL,
  `review` varchar(200) NOT NULL,
  `rating` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cid` bigint(20) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_no` bigint(20) NOT NULL,
  `referred_id` varchar(40) NOT NULL,
  `referred_by_id` varchar(40) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `cname`, `gender`, `dob`, `email`, `phone_no`, `referred_id`, `referred_by_id`, `timestamp`) VALUES
(1, 'Huzefa', 'M', '2019-09-09', 'bandook@gmail.com', 1234567890, 'HB786', 'AS786', '2019-09-23 03:24:30');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `did` bigint(20) NOT NULL,
  `dname` varchar(50) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `aadhar` bigint(20) NOT NULL,
  `aadhar_img` varchar(100) NOT NULL,
  `dstart_date` date DEFAULT NULL,
  `dorder_count` bigint(20) DEFAULT NULL,
  `dincome` bigint(20) DEFAULT NULL,
  `dincome_of_the_day` bigint(20) DEFAULT NULL,
  `dorder` bigint(20) DEFAULT NULL,
  `dorder_per_day` bigint(20) DEFAULT NULL,
  `admin_approval` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`did`, `dname`, `mobile`, `gender`, `dob`, `aadhar`, `aadhar_img`, `dstart_date`, `dorder_count`, `dincome`, `dincome_of_the_day`, `dorder`, `dorder_per_day`, `admin_approval`, `timestamp`) VALUES
(1, 'asdfsadf', 1334134, 'male', '2019-09-03', 121212, 'images/delivery/121212.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-22 03:16:30'),
(2, 'asdfsadf', 121212, 'male', '2019-09-03', 12111, 'images/delivery/12111.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-22 03:41:14'),
(3, 'rahulgupta', 1234, 'male', '2019-09-11', 12334, 'images/delivery/12334.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-22 03:53:04'),
(5, 'rahulgupta', 12345, 'male', '2019-09-11', 12334, 'images/delivery/12334.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-22 03:53:42');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_reviewrate`
--

CREATE TABLE `delivery_reviewrate` (
  `drid` bigint(20) NOT NULL,
  `cid` bigint(20) NOT NULL,
  `rating` float NOT NULL,
  `review` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `fid` bigint(20) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `fcusine` varchar(50) NOT NULL,
  `fcourse` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`fid`, `fname`, `fcusine`, `fcourse`) VALUES
(1, 'Roti', 'Indian', 'Main Course');

-- --------------------------------------------------------

--
-- Table structure for table `food_made`
--

CREATE TABLE `food_made` (
  `fmid` bigint(20) NOT NULL,
  `fid` bigint(20) NOT NULL,
  `chid` bigint(20) NOT NULL,
  `cost` bigint(20) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `spice` varchar(100) NOT NULL,
  `speciality` varchar(100) NOT NULL,
  `food_type` varchar(50) NOT NULL,
  `admin_approval` varchar(10) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `food_reviewrate`
--

CREATE TABLE `food_reviewrate` (
  `frid` bigint(20) NOT NULL,
  `cid` bigint(20) NOT NULL,
  `review` varchar(200) NOT NULL,
  `rating` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `oid` bigint(20) NOT NULL,
  `did` bigint(20) DEFAULT NULL,
  `cid` bigint(20) NOT NULL,
  `fids` varchar(100) NOT NULL,
  `chid` bigint(20) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `deliverycharges` bigint(20) NOT NULL,
  `ordercharge` bigint(20) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`oid`, `did`, `cid`, `fids`, `chid`, `address`, `deliverycharges`, `ordercharge`, `status`) VALUES
(1, 5, 1, '1,2,3', 1, 'Govandi', 100, 1000, 'Picking up the order from chef');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`carea`,`ccity`,`cpincode`,`cstate`),
  ADD KEY `cid` (`cid`);

--
-- Indexes for table `chef`
--
ALTER TABLE `chef`
  ADD PRIMARY KEY (`chid`),
  ADD KEY `cid` (`cid`);

--
-- Indexes for table `chef_reviewrate`
--
ALTER TABLE `chef_reviewrate`
  ADD PRIMARY KEY (`crid`),
  ADD KEY `cid` (`cid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cid`,`referred_id`),
  ADD UNIQUE KEY `phone_no` (`phone_no`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `delivery_reviewrate`
--
ALTER TABLE `delivery_reviewrate`
  ADD PRIMARY KEY (`drid`),
  ADD KEY `cid` (`cid`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `food_made`
--
ALTER TABLE `food_made`
  ADD PRIMARY KEY (`fmid`),
  ADD KEY `chid` (`chid`,`fid`) USING BTREE,
  ADD KEY `fid` (`fid`);

--
-- Indexes for table `food_reviewrate`
--
ALTER TABLE `food_reviewrate`
  ADD PRIMARY KEY (`frid`),
  ADD KEY `cid` (`cid`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`oid`),
  ADD KEY `chid` (`chid`),
  ADD KEY `cid` (`cid`),
  ADD KEY `did` (`did`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chef`
--
ALTER TABLE `chef`
  MODIFY `chid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chef_reviewrate`
--
ALTER TABLE `chef_reviewrate`
  MODIFY `crid` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `did` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `delivery_reviewrate`
--
ALTER TABLE `delivery_reviewrate`
  MODIFY `drid` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `fid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `food_made`
--
ALTER TABLE `food_made`
  MODIFY `fmid` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_reviewrate`
--
ALTER TABLE `food_reviewrate`
  MODIFY `frid` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `oid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `customer` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chef`
--
ALTER TABLE `chef`
  ADD CONSTRAINT `chef_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `customer` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chef_reviewrate`
--
ALTER TABLE `chef_reviewrate`
  ADD CONSTRAINT `chef_reviewrate_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `customer` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `delivery_reviewrate`
--
ALTER TABLE `delivery_reviewrate`
  ADD CONSTRAINT `delivery_reviewrate_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `customer` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `food_made`
--
ALTER TABLE `food_made`
  ADD CONSTRAINT `food_made_ibfk_2` FOREIGN KEY (`chid`) REFERENCES `chef` (`chid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `food_made_ibfk_3` FOREIGN KEY (`fid`) REFERENCES `food` (`fid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `food_reviewrate`
--
ALTER TABLE `food_reviewrate`
  ADD CONSTRAINT `food_reviewrate_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `customer` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`chid`) REFERENCES `chef` (`chid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`cid`) REFERENCES `customer` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_ibfk_3` FOREIGN KEY (`did`) REFERENCES `delivery` (`did`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
