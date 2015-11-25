-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Host: sql307.byethost11.com
-- Generation Time: Nov 25, 2015 at 04:28 AM
-- Server version: 5.6.25-73.1
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `b11_16922317_os`
--

-- --------------------------------------------------------

--
-- Table structure for table `CATEGORY`
--

CREATE TABLE IF NOT EXISTS `CATEGORY` (
  `Category ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Category ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `CATEGORY`
--

INSERT INTO `CATEGORY` (`Category ID`, `Name`) VALUES
(1, 'Pop'),
(2, 'Rock'),
(3, 'R&B');

-- --------------------------------------------------------

--
-- Table structure for table `CUSTOMER`
--

CREATE TABLE IF NOT EXISTS `CUSTOMER` (
  `Customer_ID` int(11) NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(255) DEFAULT NULL,
  `Last_Name` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Town` varchar(255) DEFAULT NULL,
  `Phone Number` int(11) DEFAULT '0',
  `Email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Customer_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `CUSTOMER`
--

INSERT INTO `CUSTOMER` (`Customer_ID`, `First_Name`, `Last_Name`, `Address`, `Town`, `Phone Number`, `Email`) VALUES
(1, 'Josh', 'Ball', 'Address', 'Town', 423456789, 'joshball@gmail.com'),
(2, 'Simon', 'Thow', 'Address', 'Town', 323456789, 'simonthow@gmail.com'),
(3, 'Tom', 'Makey', 'Address', 'Town', 223456789, 'tommakey@gmail.com'),
(4, 'Owen', 'Shotbolt', 'Address', 'Town', 133456789, 'owenshotbolt@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `EMPLOYEE`
--

CREATE TABLE IF NOT EXISTS `EMPLOYEE` (
  `Employee ID` int(11) NOT NULL AUTO_INCREMENT,
  `First Name` varchar(255) DEFAULT NULL,
  `Second Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Employee ID`),
  KEY `Employee ID` (`Employee ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `EMPLOYEE`
--

INSERT INTO `EMPLOYEE` (`Employee ID`, `First Name`, `Second Name`) VALUES
(1, 'Jo', 'Blogs'),
(2, 'Chris', 'Blogs'),
(3, 'Sam', 'Blogs'),
(4, 'Curtus', 'Blogs');

-- --------------------------------------------------------

--
-- Table structure for table `ENQUIRY`
--

CREATE TABLE IF NOT EXISTS `ENQUIRY` (
  `Enquiry ID` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(255) DEFAULT NULL,
  `Customer ID` int(11) DEFAULT NULL,
  `Product ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Enquiry ID`),
  KEY `Customer ID` (`Customer ID`),
  KEY `Enquiry ID` (`Enquiry ID`),
  KEY `Product ID` (`Product ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ENQUIRY`
--

INSERT INTO `ENQUIRY` (`Enquiry ID`, `Description`, `Customer ID`, `Product ID`) VALUES
(1, 'Is in stock?', 1, 2),
(2, 'How many tracks are in the album', 3, 1),
(3, 'When will it be available?', 2, 3),
(4, 'Website glitch', 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ORDER`
--

CREATE TABLE IF NOT EXISTS `ORDER` (
  `Order_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Customer_ID` int(11) DEFAULT NULL,
  `Total` decimal(19,4) DEFAULT '0.0000',
  `Employee ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Order_ID`),
  KEY `Customer_ID` (`Customer_ID`),
  KEY `Employee ID` (`Employee ID`),
  KEY `Order_ID` (`Order_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `ORDER`
--

INSERT INTO `ORDER` (`Order_ID`, `Customer_ID`, `Total`, `Employee ID`) VALUES
(1, 4, '104.0000', 2),
(2, 2, '15.0000', 4),
(3, 4, '100.0000', 1),
(4, 1, '75.0000', 2),
(5, 3, '10.0000', 3),
(6, 1, '100000.0000', 4),
(7, 4, '0.0000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `PRODUCT`
--

CREATE TABLE IF NOT EXISTS `PRODUCT` (
  `Product ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Image` longblob,
  `Price` decimal(19,4) DEFAULT '0.0000',
  `Category ID` int(11) DEFAULT NULL,
  `Stock` int(11) DEFAULT '0',
  PRIMARY KEY (`Product ID`),
  KEY `Product ID` (`Product ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `PRODUCT`
--

INSERT INTO `PRODUCT` (`Product ID`, `Name`, `Description`, `Image`, `Price`, `Category ID`, `Stock`) VALUES
(1, 'Music1', 'Music1 is the best Pop album', NULL, '10.0000', 1, 100),
(2, 'Music2', 'Music2 is the best Rock album', NULL, '15.0000', 2, 30),
(3, 'Music3', 'Music3 is the best R&B album', NULL, '20.0000', 2, 75),
(4, 'Music4', 'Music4 is the best Clasic album', NULL, '30.0000', 3, 12);

-- --------------------------------------------------------

--
-- Table structure for table `PURCHASE`
--

CREATE TABLE IF NOT EXISTS `PURCHASE` (
  `Purchase ID` int(11) NOT NULL AUTO_INCREMENT,
  `Product ID` int(11) DEFAULT NULL,
  `Order ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Purchase ID`),
  KEY `Order ID` (`Order ID`),
  KEY `Product ID` (`Product ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `PURCHASE`
--

INSERT INTO `PURCHASE` (`Purchase ID`, `Product ID`, `Order ID`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 4, 2),
(6, 3, 1),
(7, 3, 2),
(8, 4, 1),
(9, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `email` varchar(35) NOT NULL,
  `password` varchar(50) NOT NULL,
  `admin` int(11) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `admin`) VALUES
(2, 'root', 'owenshotbolt@gmail.com', 'e7192a7db15c2419d2d387fbbee8739f', 1),
(3, 'control', 'cozza963@gmail.com', '1a8434c8cb4b7bc4938d925e99f09e62', 1),
(4, 'TomBIGMACmakey', 'ilovebigmac@gmail.com', '6da9c003eea0ff6bea9a4c4900b33f5f', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
