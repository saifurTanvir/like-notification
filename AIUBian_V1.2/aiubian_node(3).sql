-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2020 at 11:38 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aiubian_node`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `aiubId` varchar(15) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(12) NOT NULL,
  `email` varchar(150) NOT NULL,
  `department` varchar(100) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `aiubId`, `username`, `password`, `email`, `department`, `type`) VALUES
(17, 'Nazib Mahfuz', '17-34418-1', 'nazib', '123', 'nazibmahfuz60@gmail.com', 'Faculty of Science and Technology', 'Student'),
(19, 'Hasib Ahmed', '17-34349-1', 'hasib', 'hasib', 'hasib3030@gmail.com', 'Faculty of Science and Technology', 'Student'),
(20, 'Tanvir', '17-33944-1', 'Tanvir', 'Tanvir', 'saifur.tanvir96@gmail.com', 'Faculty of Engineering', 'Faculty');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(10) NOT NULL,
  `sender` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `seen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `sender`, `type`, `receiver`, `seen`) VALUES
(54, 'Tanvir', 'like', 'nazib', 'true'),
(55, 'nazib', 'like', 'nazib', 'true'),
(56, 'nazib', 'like', 'nazib', 'true'),
(57, 'nazib', 'like', 'nazib', 'true'),
(58, 'nazib', 'like', 'nazib', 'true'),
(59, 'nazib', 'like', 'nazib', 'true'),
(60, 'nazib', 'like', 'nazib', 'true'),
(61, 'nazib', 'like', 'nazib', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `postId` int(11) NOT NULL,
  `postDate` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `status` varchar(20) NOT NULL,
  `text` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `video` varchar(250) NOT NULL,
  `postLike` int(11) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`postId`, `postDate`, `email`, `status`, `text`, `image`, `video`, `postLike`, `username`) VALUES
(1, '14/12/2019 08:13:48am', 'nazibmahfuz60@gmail.com', 'Student', 'I am Nazib Mahfuz. Its my first Post ', 'Bzs7gW9.jpg', '', 69, 'nazib'),
(2, '18/12/2019 02:22:53pm', 'hasib3030@gmail.com', 'Student', 'This is my first post', 'hasib.png', '', 7, 'hasib');

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `UserId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `aiub_id` varchar(15) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `facebook` varchar(150) DEFAULT NULL,
  `linkedin` varchar(150) DEFAULT NULL,
  `department` varchar(100) NOT NULL,
  `program` varchar(50) DEFAULT NULL,
  `semester` varchar(3) DEFAULT NULL,
  `thesisName` varchar(200) DEFAULT NULL,
  `skills` varchar(250) DEFAULT NULL,
  `github` varchar(200) DEFAULT NULL,
  `stackoverflow` varchar(200) DEFAULT NULL,
  `hackerrank` varchar(200) DEFAULT NULL,
  `portfolio` varchar(200) DEFAULT NULL,
  `workingPlace` varchar(150) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `workingDomain` varchar(250) DEFAULT NULL,
  `joiningDate` varchar(50) DEFAULT NULL,
  `publishedPaper` varchar(5) DEFAULT NULL,
  `thesisDomain` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`UserId`, `name`, `email`, `aiub_id`, `phone`, `facebook`, `linkedin`, `department`, `program`, `semester`, `thesisName`, `skills`, `github`, `stackoverflow`, `hackerrank`, `portfolio`, `workingPlace`, `website`, `workingDomain`, `joiningDate`, `publishedPaper`, `thesisDomain`) VALUES
(5, 'Nazib Mahfuz', 'nazibmahfuz60@gmail.com', '17344181', '2583', 'https://www.linkedin.com/feed/', 'https://www.linkedin.com/feed/', 'Faculty of Science & Technology', 'CSE', '10', '', '', '', NULL, '', '', '', '', '', '', '', ''),
(7, 'Hasib Ahmed', 'hasib3030@gmail.com', '17-34349-1', NULL, NULL, NULL, 'Faculty of Science and Technology', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Tanvir', 'saifur.tanvir96@gmail.com', '17-33944-1', NULL, NULL, NULL, 'Faculty of Engineering', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`postId`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`UserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `postId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
