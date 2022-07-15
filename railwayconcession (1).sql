-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 29, 2019 at 12:26 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `railwayconcession`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `adminid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `passdetails`
--

DROP TABLE IF EXISTS `passdetails`;
CREATE TABLE IF NOT EXISTS `passdetails` (
  `passid` int(11) NOT NULL AUTO_INCREMENT,
  `sid` varchar(500) NOT NULL,
  `source` varchar(400) NOT NULL,
  `destination` varchar(400) NOT NULL,
  `classofticket` varchar(80) NOT NULL,
  `duration` varchar(80) NOT NULL,
  `expirydate` varchar(300) NOT NULL,
  `status` varchar(50) NOT NULL,
  `filename` varchar(1000) NOT NULL,
  PRIMARY KEY (`passid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `sid` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `age` varchar(100) NOT NULL,
  `address` varchar(600) NOT NULL,
  `collegename` varchar(300) NOT NULL,
  `class` varchar(300) NOT NULL,
  `contactno` varchar(200) NOT NULL,
  `emailid` varchar(200) NOT NULL UNIQUE,
  `password` varchar(600) NOT NULL ,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
