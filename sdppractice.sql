-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2017 at 05:58 PM
-- Server version: 5.7.11
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sdppractice`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `userID` int(20) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`userID`, `userName`, `password`) VALUES
(1, 'sayed', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Employee` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `Name`, `Employee`) VALUES
(1, 'Syndicates', 15),
(3, 'Register Office', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `discipline`
--

CREATE TABLE `discipline` (
  `id` int(100) NOT NULL,
  `disciplineName` varchar(45) NOT NULL,
  `school` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discipline`
--

INSERT INTO `discipline` (`id`, `disciplineName`, `school`) VALUES
(1, 'CSE', 'SET'),
(2, 'Electronics and Communication Engineering', 'SET'),
(3, 'Physics', 'SET'),
(4, 'Physics', 'SET'),
(5, 'Chemistry', 'SET'),
(6, 'Pharmacy', 'Life Science'),
(7, 'URP', 'SET'),
(8, 'wer32', 'wertwer');

-- --------------------------------------------------------

--
-- Table structure for table `filetransfer`
--

CREATE TABLE `filetransfer` (
  `id` int(11) NOT NULL,
  `fromUser` varchar(30) NOT NULL,
  `toUser` varchar(30) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `address` text NOT NULL,
  `checkMessage` varchar(10) NOT NULL,
  `approval` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `filetransfer`
--

INSERT INTO `filetransfer` (`id`, `fromUser`, `toUser`, `subject`, `message`, `address`, `checkMessage`, `approval`) VALUES
(1, 'imran', 'sayed', '', 'Hi', 'aspnet-cms-0.1.zip', 'checked', 'approved'),
(2, 'imran', 'sayed', '', 'hi', 'aspnet-cms-0.1.zip', 'checked', 'not approved'),
(3, 'sayed', 'imran', 'Hello', 'kfhiwea r2B EOIF E', 'kotak.jpg', 'checked', 'not approved'),
(4, 'imran', 'sayed', 'Helloo', 'jfew  uewo rewcwe ycwehu', '5555.jpg', 'checked', 'not approved'),
(5, '', 'sayed', 'none', 'fdfdasfdasf', '~/datastorage/Sketch (2).png', 'checked', 'not approved'),
(6, 'imran', 'sayed', 'hello ', 'hi sayed. i need u to approve this file', '~/datastorage/CA-3.ppt', 'checked', 'rejected'),
(7, 'sayed', '', '', '', '~/datastorage/15921356330_7bc96304de_o.jpg', 'unchecked', 'notapproved'),
(8, 'sayed', 'imran', 'Test', 'sdgdf fdyhdf ', '~/datastorage/images1.jpg', 'checked', 'approved'),
(9, 'sayed', 'imran', 'sdfdsf', 'sdfgfh rf wr wer weqrf wer qw', '~/datastorage/278586.jpg', 'checked', 'notapproved'),
(10, 'sayed', 'imran', 'etsttwetr wety ', 'gre y', '', 'checked', 'notapproved'),
(11, 'sayed', 'imran', 'hello ', 'hi sayed. i need u to approve this file', '', 'checked', 'notapproved'),
(12, 'imran', 'sayed', 'Test', 'sdgdf fdyhdf ', '', 'unchecked', 'notapproved'),
(13, 'imran', 'sayed', 'sdfdsf', 'sdfgfh rf wr wer weqrf wer qw', '', 'unchecked', 'notapproved'),
(14, 'imran', 'sayed', 'sdfdsf', 'sdfgfh rf wr wer weqrf wer qw', '', 'unchecked', 'notapproved'),
(15, 'imran', 'sayed', 'Test', 'sdgdf fdyhdf ', '~/datastorage/images1.jpg', 'unchecked', 'notapproved'),
(16, 'imran', 'sayed', 'none', 'replye is here', '~/datastorage/278586.jpg', 'unchecked', 'notapproved');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(30) NOT NULL,
  `postName` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `postName`) VALUES
(1, 'Lecturer'),
(2, 'Professor');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `userID` int(11) NOT NULL,
  `userName` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `experience` varchar(100) NOT NULL,
  `qualification` varchar(100) NOT NULL,
  `assignedDiscipline` varchar(50) DEFAULT NULL,
  `discipline_id` int(10) DEFAULT NULL,
  `department_id` int(10) DEFAULT NULL,
  `post` varchar(45) DEFAULT NULL,
  `postID` int(10) DEFAULT NULL,
  `contact` text NOT NULL,
  `mail` varchar(45) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`userID`, `userName`, `name`, `experience`, `qualification`, `assignedDiscipline`, `discipline_id`, `department_id`, `post`, `postID`, `contact`, `mail`, `password`) VALUES
(1, 'imran', 'Imran Hossain', 'None', 'BSC', 'CSE', 1, NULL, '', 0, '01681717471', 'imran_cseku@yahoo.com', '123456'),
(6, 'ewrter', 'Tanmoi', 'pro', 'HSC', 'CSE', 1, NULL, '', 0, '01848548987', 'tanmoi@gmail.com', 'gfjyt'),
(8, 'sayed', 'Abu Sayed', 'hhhhujh6y', 'bsc', 'Pharmacy', 6, NULL, '', 0, 'hdreh', 'fhshe4r', 'fdhrttr'),
(9, 'Mahmud', 'Rupa Ghosh', 'Beginner', 'bsc', 'URP', 7, NULL, '', 0, '01825698357', 'fhshe4r', 'fdhrttr'),
(11, 'Mahmud', 'Abdullah Al Mahmud', 'Ameture', 'BSC', 'Syndicates', NULL, 1, '', 0, '01918568471', 'mahmud@yahoo.com', 'fdhrttr'),
(12, 'munir', 'Muniruzzaman', 'None', '', 'Chemistry', 5, NULL, '', 0, 'dfgre', 'dfg', 'dfgrerg'),
(13, 'ratul', 'Siamul Haque', 'None', 'BSC', 'Register Office', NULL, 3, 'Lecturer', NULL, '01547218763', 'ratul@yahoo.com', '12345'),
(14, 'saikatcseku', 'Saikat Mondal', '5 years', 'BSc, KU Bangladesh', NULL, NULL, NULL, 'Assistant Professor', NULL, '01521436399', 'saikat@gmail.com', 'saikat');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discipline`
--
ALTER TABLE `discipline`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disciplineName` (`disciplineName`);

--
-- Indexes for table `filetransfer`
--
ALTER TABLE `filetransfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`userID`),
  ADD KEY `assignedDiscipline` (`assignedDiscipline`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `userID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `discipline`
--
ALTER TABLE `discipline`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `filetransfer`
--
ALTER TABLE `filetransfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
