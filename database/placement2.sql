-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 12, 2015 at 08:18 PM
-- Server version: 5.5.40-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `placement`
--

-- --------------------------------------------------------

--
-- Table structure for table `comp_login`
--

CREATE TABLE IF NOT EXISTS `comp_login` (
  `cid` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `newsid` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(255) NOT NULL,
  `venue` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE IF NOT EXISTS `student_info` (
  `sid` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `about_you` varchar(255) NOT NULL,
  `institute` varchar(255) NOT NULL,
  `university` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `batch` varchar(255) NOT NULL,
  `deg_sem7` int(255) NOT NULL,
  `deg_sem8` int(255) NOT NULL,
  `deg_agg` int(255) NOT NULL,
  `diploma_agg` int(255) NOT NULL,
  `hsc` int(255) NOT NULL,
  `ssc` int(255) NOT NULL,
  `key_skills` varchar(255) NOT NULL,
  `project_title` varchar(255) NOT NULL,
  `approval` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`sid`, `username`, `fullname`, `dob`, `gender`, `address`, `about_you`, `institute`, `university`, `department`, `batch`, `deg_sem7`, `deg_sem8`, `deg_agg`, `diploma_agg`, `hsc`, `ssc`, `key_skills`, `project_title`, `approval`) VALUES
(5, 'nabeel', 'hawa nabeel', '01/01/1993', 'male', 'B/02,RAHAT APT.BEHIND SHAHEEN HOSPITAL,KAUSA,MUMBRA', 'TRAVELLING', 'KALSEKAR TECHNICAL CAMPUS', 'MUMBAI UNIVERSITY', 'COMPUTER ENGINEERING', 'JOB SERACH ENGINE', 68, 77, 67, 68, 0, 77, 'PHP,MYSQL,HTML', 'JOB SERACH ENGINE', ''),
(8, 'armash', 'Armash Aslam Fankar', '14/09/1992', 'male', 'B/02,RAHAT APT.BEHIND SHAHEEN HOSPITAL,KAUSA,MUMBRA', 'TRAVELLING', 'KALSEKAR TECHNICAL CAMPUS', 'MUMBAI UNIVERSITY', 'COMPUTER ENGINEERING', '2014-2015', 60, 59, 63, 67, 0, 77, 'PHP,MYSQL,HTML', 'JOB SERACH ENGINE', ''),
(9, 'saima', 'hajee saima', '14-09-1992', 'female', 'c/ dolors colony antophill road wadal east', 'reading books', 'aiktc', 'mumbai', 'computer', '2015', 73, 71, 71, 76, 0, 85, 'java', 'placement portal', '');

-- --------------------------------------------------------

--
-- Table structure for table `stud_login`
--

CREATE TABLE IF NOT EXISTS `stud_login` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `approval` varchar(255) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `stud_login`
--

INSERT INTO `stud_login` (`sid`, `username`, `email`, `password`, `approval`) VALUES
(5, 'nabeel', 'talktoarmash@gmail.com', 'nn', 'yes'),
(8, 'armash', 'talktoarmash@gmail.com', '123', 'yes'),
(9, 'saima', 'hajisaima9@gmail.com', 'saima123', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `tpo`
--

CREATE TABLE IF NOT EXISTS `tpo` (
  `tid` int(233) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tpo`
--

INSERT INTO `tpo` (`tid`, `username`, `password`) VALUES
(1, 'tpo', 'tpo');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;