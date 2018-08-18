-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 27, 2017 at 11:02 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mycreation`
--
CREATE DATABASE `mycreation` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mycreation`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `uname` varchar(500) NOT NULL,
  `pass` varchar(1000) NOT NULL,
  PRIMARY KEY (`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`uname`, `pass`) VALUES
('admin', 'pankaj');

-- --------------------------------------------------------

--
-- Table structure for table `complaint_i`
--

CREATE TABLE IF NOT EXISTS `complaint_i` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(1000) DEFAULT NULL,
  `roll` varchar(1000) DEFAULT NULL,
  `hostel` varchar(1000) DEFAULT NULL,
  `complaint` varchar(1000) DEFAULT NULL,
  `cdate` date DEFAULT NULL,
  `ctime` time DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `complaint_i`
--

INSERT INTO `complaint_i` (`cid`, `sname`, `roll`, `hostel`, `complaint`, `cdate`, `ctime`) VALUES
(1, 'a', '0981', 'I', 'Food is not good.', '2017-11-25', '15:55:17'),
(2, 'a', '0981', 'I', 'Food is  good now.', '2017-11-25', '15:56:18'),
(3, 'a', '0981', 'I', 'Room Is dirty.', '2017-11-25', '17:22:27');

-- --------------------------------------------------------

--
-- Table structure for table `complaint_m`
--

CREATE TABLE IF NOT EXISTS `complaint_m` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(1000) DEFAULT NULL,
  `roll` varchar(1000) DEFAULT NULL,
  `hostel` varchar(1000) DEFAULT NULL,
  `complaint` varchar(1000) DEFAULT NULL,
  `cdate` date DEFAULT NULL,
  `ctime` time DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `complaint_m`
--


-- --------------------------------------------------------

--
-- Table structure for table `hostel_i`
--

CREATE TABLE IF NOT EXISTS `hostel_i` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `floor` varchar(2000) NOT NULL,
  `room_no` varchar(2000) NOT NULL,
  `type` varchar(6000) NOT NULL,
  `status` varchar(200) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `hostel_i`
--

INSERT INTO `hostel_i` (`sno`, `floor`, `room_no`, `type`, `status`) VALUES
(1, '0', '1', 'Single Seater Shared Toilet', '1'),
(2, '0', '2', 'Single Seater Shared Toilet', '0'),
(3, '0', '3', 'Single Seater Shared Toilet', '0'),
(4, '0', '4', 'Single Seater Shared Toilet', '0'),
(5, '0', '5', 'Single Seater Attached Toilet', '0'),
(6, '0', '6', 'Single Seater Attached Toilet', '0'),
(7, '0', '7', 'Single Seater Attached Toilet', '0'),
(8, '0', '8', 'Single Seater Attached Toilet', '0'),
(9, '0', '9', 'Single Seater Attached Toilet', '0'),
(10, '0', '10', 'Single Seater Attached Toilet', '0'),
(11, '0', '11', 'Double Seater Shared Toilet', '0'),
(12, '0', '12', 'Double Seater Shared Toilet', '0'),
(13, '0', '13', 'Double Seater Shared Toilet', '0'),
(14, '0', '14', 'Double Seater Shared Toilet', '0'),
(15, '0', '15', 'Single Seater Attached Toilet', '0'),
(16, '1', '101', 'Single Seated Shared Toilet', '0'),
(17, '1', '102', 'Single Seated Shared Toilet', '0'),
(18, '1', '103', 'Single Seated Shared Toilet', '0'),
(19, '1', '104', 'Single Seated Shared Toilet', '0');

-- --------------------------------------------------------

--
-- Table structure for table `hostel_i_allot`
--

CREATE TABLE IF NOT EXISTS `hostel_i_allot` (
  `req_no` varchar(100) DEFAULT NULL,
  `stu_name` varchar(1000) DEFAULT NULL,
  `course` varchar(100) DEFAULT NULL,
  `sem` varchar(100) DEFAULT NULL,
  `roll` varchar(100) NOT NULL DEFAULT '',
  `preftype` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `floor` varchar(100) DEFAULT NULL,
  `roomno` varchar(100) DEFAULT NULL,
  `allottype` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`roll`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostel_i_allot`
--


-- --------------------------------------------------------

--
-- Table structure for table `hostel_i_req`
--

CREATE TABLE IF NOT EXISTS `hostel_i_req` (
  `req_no` int(11) NOT NULL AUTO_INCREMENT,
  `stu_name` varchar(2000) NOT NULL,
  `course` varchar(1000) NOT NULL,
  `sem` varchar(100) NOT NULL,
  `roll_no` varchar(1000) NOT NULL,
  `type` varchar(1000) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `phone` varchar(1000) NOT NULL,
  `req_date` date NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`req_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14002 ;

--
-- Dumping data for table `hostel_i_req`
--

INSERT INTO `hostel_i_req` (`req_no`, `stu_name`, `course`, `sem`, `roll_no`, `type`, `email`, `phone`, `req_date`, `status`) VALUES
(14001, 'a', 'B.Tech', '2', '0981', 'Double Room', 'a', '12', '2017-11-25', '0');

-- --------------------------------------------------------

--
-- Table structure for table `hostel_m`
--

CREATE TABLE IF NOT EXISTS `hostel_m` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `floor` varchar(2000) NOT NULL,
  `room_no` varchar(2000) NOT NULL,
  `type` varchar(6000) NOT NULL,
  `status` varchar(200) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `hostel_m`
--

INSERT INTO `hostel_m` (`sno`, `floor`, `room_no`, `type`, `status`) VALUES
(1, '0', '1', 'Single Seater Shared Toilet', '0'),
(2, '0', '2', 'Single Seater Shared Toilet', '0'),
(3, '0', '3', 'Single Seater Shared Toilet', '0'),
(4, '0', '4', 'Single Seater Shared Toilet', '0'),
(5, '0', '5', 'Single Seater Attached Toilet', '0'),
(6, '0', '6', 'Single Seater Attached Toilet', '0'),
(7, '0', '7', 'Single Seater Attached Toilet', '0'),
(8, '0', '8', 'Single Seater Attached Toilet', '0'),
(9, '0', '9', 'Single Seater Attached Toilet', '0'),
(10, '0', '10', 'Single Seater Attached Toilet', '0'),
(11, '0', '11', 'Double Seater Shared Toilet', '0'),
(12, '0', '12', 'Double Seater Shared Toilet', '0'),
(13, '0', '13', 'Double Seater Shared Toilet', '0'),
(14, '0', '14', 'Double Seater Shared Toilet', '0'),
(15, '0', '15', 'Single Seater Attached Toilet', '0'),
(16, '1', '101', 'Single Seated Shared Toilet', '0'),
(17, '1', '102', 'Single Seated Shared Toilet', '0'),
(18, '1', '103', 'Single Seated Shared Toilet', '0'),
(19, '1', '104', 'Single Seated Shared Toilet', '0');

-- --------------------------------------------------------

--
-- Table structure for table `hostel_m_allot`
--

CREATE TABLE IF NOT EXISTS `hostel_m_allot` (
  `allotno` int(11) NOT NULL AUTO_INCREMENT,
  `req_no` varchar(100) DEFAULT NULL,
  `stu_name` varchar(1000) DEFAULT NULL,
  `course` varchar(100) DEFAULT NULL,
  `sem` varchar(100) DEFAULT NULL,
  `roll` varchar(100) DEFAULT NULL,
  `preftype` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `floor` varchar(100) DEFAULT NULL,
  `roomno` varchar(100) DEFAULT NULL,
  `allottype` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`allotno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `hostel_m_allot`
--


-- --------------------------------------------------------

--
-- Table structure for table `hostel_m_req`
--

CREATE TABLE IF NOT EXISTS `hostel_m_req` (
  `req_no` int(11) NOT NULL AUTO_INCREMENT,
  `stu_name` varchar(2000) NOT NULL,
  `course` varchar(1000) NOT NULL,
  `sem` varchar(100) NOT NULL,
  `roll_no` varchar(1000) NOT NULL,
  `type` varchar(1000) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `phone` varchar(1000) NOT NULL,
  `req_date` date NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`req_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9002 ;

--
-- Dumping data for table `hostel_m_req`
--

INSERT INTO `hostel_m_req` (`req_no`, `stu_name`, `course`, `sem`, `roll_no`, `type`, `email`, `phone`, `req_date`, `status`) VALUES
(9001, 'a', 'B.Tech', '2', '098', 'Double Room', 'a', '12', '2017-11-25', '0');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE IF NOT EXISTS `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notice` varchar(7000) NOT NULL,
  `ndate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `notice`, `ndate`) VALUES
(9, 'hello !!', '2017-11-16'),
(11, 'hostelthapar@gmail.compassword: 801731008', '2017-11-16'),
(12, 'Hello', '2017-11-26');

-- --------------------------------------------------------

--
-- Table structure for table `student_reg`
--

CREATE TABLE IF NOT EXISTS `student_reg` (
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `fphone` varchar(100) NOT NULL,
  `femail` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `courseinfo` varchar(100) NOT NULL,
  `sem` varchar(10) NOT NULL,
  `rollno` varchar(100) NOT NULL,
  `room` varchar(100) NOT NULL,
  PRIMARY KEY (`rollno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_reg`
--

INSERT INTO `student_reg` (`name`, `email`, `password`, `mobile`, `fname`, `fphone`, `femail`, `gender`, `courseinfo`, `sem`, `rollno`, `room`) VALUES
('a', 'a', 'a', '12', 'df', 'dfd', 'hgff', 'male', 'B.Tech', '2', '098', 'Double Room'),
('a', 'a', 'b', '12', 'df', 'dfd', 'hgff', 'female', 'B.Tech', '2', '0981', 'Double Room'),
('Himanshu', 'demo@gmail.com', '456', '098765432', 'hitesh', '123456789', 'hitesh@gmail.com', 'male', 'M.tech', '2', '0987', 'Double Room'),
('aneesh', 'aneesh123', '1234', '0987', 'abcd', '7654', 'myf', 'male', 'M.tech', '2', '987656', 'Single Room');

-- --------------------------------------------------------

--
-- Table structure for table `warden`
--

CREATE TABLE IF NOT EXISTS `warden` (
  `wname` varchar(100) DEFAULT NULL,
  `pass` varchar(500) NOT NULL,
  `hostel` varchar(100) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `desig` varchar(1000) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `father` varchar(100) DEFAULT NULL,
  `econtact` varchar(100) DEFAULT NULL,
  `acctstatus` varchar(100) DEFAULT NULL,
  `acdate` date DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warden`
--

INSERT INTO `warden` (`wname`, `pass`, `hostel`, `gender`, `desig`, `mobile`, `email`, `address`, `father`, `econtact`, `acctstatus`, `acdate`) VALUES
('Aneesh', '123', 'I', 'Male', 'abcd', '0987654321', 'abc', 'My Address', 'myfather', '1234567890', '0', '2017-11-16'),
('akbar', '123', 'M', 'Male', 'warden', '123', 'abcd', 'myadd', 'ok', '0987654', '0', '2017-11-25');

-- --------------------------------------------------------

--
-- Table structure for table `warden_notice`
--

CREATE TABLE IF NOT EXISTS `warden_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notice` varchar(8000) NOT NULL,
  `ndate` date NOT NULL,
  `hostel` varchar(1000) NOT NULL,
  `warden_name` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `warden_notice`
--

INSERT INTO `warden_notice` (`id`, `notice`, `ndate`, `hostel`, `warden_name`) VALUES
(3, 'This is new Notice', '2017-11-24', 'M', ''),
(4, 'Hiiiii', '2017-11-25', 'I', 'Aneesh');

-- --------------------------------------------------------

--
-- Table structure for table `warden_reply`
--

CREATE TABLE IF NOT EXISTS `warden_reply` (
  `reply_id` int(11) NOT NULL AUTO_INCREMENT,
  `comp_id` varchar(1000) NOT NULL,
  `warden_name` varchar(1000) NOT NULL,
  `hostel` varchar(1000) NOT NULL,
  `reply` varchar(8000) NOT NULL,
  `rdate` date NOT NULL,
  `rtime` time NOT NULL,
  PRIMARY KEY (`reply_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `warden_reply`
--

INSERT INTO `warden_reply` (`reply_id`, `comp_id`, `warden_name`, `hostel`, `reply`, `rdate`, `rtime`) VALUES
(1, '3', 'Aneesh', 'I', 'OK i will do it', '2017-11-26', '18:07:39'),
(2, '3', 'Aneesh', 'I', 'Sure', '2017-11-26', '18:17:53'),
(3, '2', 'Aneesh', 'I', 'Thanks.', '2017-11-26', '18:21:21'),
(4, '3', 'I', 'I', 'Thanks', '2017-11-26', '18:40:23'),
(5, '1', 'Aneesh', 'I', 'I will try my best.', '2017-11-26', '18:40:45'),
(6, '3', '0981', 'I', 'Sure!!', '2017-11-26', '18:45:01'),
(7, '2', '0981', 'I', 'OK', '2017-11-26', '18:45:12'),
(8, '1', '0981', 'I', 'I will try again.', '2017-11-26', '18:45:22'),
(9, '3', 'Aneesh', 'I', 'Ok', '2017-11-26', '18:45:42');
