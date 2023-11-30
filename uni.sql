-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2021 at 06:48 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uni`
--

-- --------------------------------------------------------

--
-- Drop the existing 'admin' table
DROP TABLE IF EXISTS `admin`;

-- Then, create the new 'admin' table
CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Insert data into the 'admin' table
INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'tipu', '202cb962ac59075b964b07152d234b70'),
(2, 'rishabh', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--

--
-- Drop the existing 'attn' table
DROP TABLE IF EXISTS `attn`;

-- Then, create the new 'attn' table
CREATE TABLE `attn` (
  `id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL,
  `atten` varchar(50) NOT NULL,
  `at_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attn`
--

INSERT INTO `attn` (`id`, `st_id`, `atten`, `at_date`) VALUES
(206, 12103072, 'absent', '2021-04-11'),
(207, 13103072, '', '0000-00-00'),
(208, 13203072, '', '0000-00-00'),
(209, 14103053, '', '0000-00-00'),
(210, 14203072, '', '0000-00-00'),
(211, 12103072, 'absent', '2021-06-05'),
(212, 13103072, 'absent', '2021-06-05'),
(213, 13203072, 'absent', '2021-06-05'),
(214, 14103053, 'present', '2021-06-05'),
(215, 14203072, 'absent', '2021-06-05'),
(216, 1454540, '', '0000-00-00'),
(217, 17699619, '', '0000-00-00'),
(218, 12103072, 'present', '2021-06-06'),
(219, 13103072, 'present', '2021-06-06'),
(220, 13203072, 'present', '2021-06-06'),
(221, 14103053, 'absent', '2021-06-06'),
(222, 14203072, 'absent', '2021-06-06'),
(223, 1454540, 'present', '2021-06-06'),
(224, 17699619, 'present', '2021-06-06');

-- --------------------------------------------------------

--

-- Drop the existing 'at_student' table
DROP TABLE IF EXISTS `at_student`;

-- Then, create the new 'at_student' table
CREATE TABLE `at_student` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `st_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `at_student`
--

INSERT INTO `at_student` (`id`, `name`, `st_id`) VALUES
(29, 'Rishabh jain1', 12103072),
(30, 'rishabh jain2', 13103072),
(31, 'kaniska ', 13203072),
(32, 'ariba ', 14103053),
(33, 'ilma', 14203072),
(34, 'labiba ', 1454540),
(35, 'ishaan', 17699619);

-- --------------------------------------------------------


-- Drop the existing 'faculty' table
DROP TABLE IF EXISTS `faculty`;

-- Then, create the new 'faculty' table
CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `education` varchar(100) DEFAULT NULL,
  `contact` int(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--


INSERT INTO `faculty` (`id`, `username`, `password`, `name`, `email`, `birthday`, `gender`, `education`, `contact`, `address`) VALUES
(1, 'robinson', '202cb962ac59075b964b07152d234b70', 'Terry Robinson', 'terryr@gmail.com', '1986-04-01', 'Male', 'BIT, MIT', 900248750, '3962  Elk Rd Little'),
(13, 'will', '202cb962ac59075b964b07152d234b70', 'Will Williams', 'will@gmail.com', '1985-12-12', 'Male', 'MIT, PhD', 124785450, '3308  Valley Drive');

-- --------------------------------------------------------


-- Drop the existing 'result' table
DROP TABLE IF EXISTS `result`;

-- Then, create the new 'result' table
CREATE TABLE `result` (
  `id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL,
  `marks` int(5) NOT NULL,
  `sub` varchar(255) NOT NULL,
  `semester` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `st_id`, `marks`, `sub`, `semester`) VALUES
(28, 12103072, 95, 'DBMS', '1st'),
(29, 12103072, 92, 'DBMS Lab', '1st'),
(30, 12103072, 90, 'Mathematics', '1st'),
(31, 12103072, 80, 'Programming', '1st'),
(32, 12103072, 90, 'Programming Lab', '1st'),
(35, 12103072, 95, 'Physics', '2nd'),
(36, 12103072, 96, 'Mathematics', '2nd'),
(37, 12103072, 85, 'Chemistry', '2nd'),
(38, 12103072, 78, 'Psychology', '2nd'),
(39, 15103058, 96, 'DBMS', '1st'),
(40, 15103058, 98, 'DBMS Lab', '1st'),
(41, 15103058, 65, 'Mathematics', '1st'),
(42, 15103058, 90, 'Programming', '1st'),
(43, 15103058, 92, 'Programming Lab', '1st'),
(44, 15103058, 95, 'English', '2nd'),
(45, 15103058, 50, 'Physics', '2nd'),
(46, 15103058, 68, 'Chemistry', '2nd'),
(47, 15103058, 92, 'Psychology', '2nd'),
(48, 15103157, 89, 'DBMS', '1st'),
(49, 15103157, 90, 'DBMS Lab', '1st'),
(50, 15103157, 80, 'Mathematics', '1st'),
(51, 15103157, 95, 'English', '1st'),
(52, 16303053, 85, 'DBMS', '1st'),
(53, 15103053, 75, 'DBMS Lab', '1st'),
(54, 15103053, 40, 'Mathematics', '1st'),
(55, 15103053, 85, 'Programming', '1st'),
(56, 15103053, 90, 'Programming Lab', '1st'),
(57, 15103053, 87, 'English', '1st'),
(58, 15103053, 60, 'Physics', '1st'),
(59, 15103053, 65, 'Chemistry', '1st'),
(60, 15103053, 69, 'Psychology', '1st'),
(61, 17699619, 71, 'DBMS', '1st'),
(62, 17699619, 82, 'DBMS Lab', '1st'),
(63, 17699619, 65, 'Mathematics', '1st'),
(64, 17699619, 85, 'Programming', '1st'),
(65, 17699619, 86, 'Programming Lab', '1st'),
(66, 17699619, 87, 'English', '1st'),
(67, 17699619, 70, 'Physics', '1st'),
(68, 17699619, 75, 'Chemistry', '1st'),
(69, 17699619, 70, 'Psychology', '1st');

-- --------------------------------------------------------

--

-- Drop the existing 'st_info' table
DROP TABLE IF EXISTS `st_info`;

-- Then, create the new 'st_info' table
CREATE TABLE `st_info` (
  `st_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(50) NOT NULL,
  `bday` date NOT NULL,
  `program` varchar(10) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `st_info`
--

INSERT INTO `st_info` (`st_id`, `name`, `password`, `email`, `bday`, `program`, `contact`, `gender`, `address`, `img`) VALUES
(12103072, 'Rishabh jain1', '250cf8b51c773f3f8dc8b4be867a9a02', 'jain2t@gmail.com', '1995-10-10', 'bca ctis', '7548884541', 'male', '950  chattarpur', 'F34FEDE2-0BE0-400A-82CC-2FCC984A21C4.png'),
(13103072, 'Rishabh jain2', '123', 'jain1@mail.com', '1995-10-10', 'bca-ctis', '2457778450', 'female', '3983  varanasi', '7E230FB0-C157-4544-B270-97F3C8FDB1AA.png'),
(13203072, 'kaniska singh', '123', 'kaniska@mail.com', '1995-10-10', 'bca-ctis', '4570002480', 'female', '2526  varanasi', '20DE853C-35DC-4D91-BB0F-BBAEB2388294.png'),
(14103053, 'labiba ali', '202cb962ac59075b964b07152d234b70', 'labiba@mail.com', '1996-08-09', 'bca-ctis', '97410000002', 'female', '2684  moradabad', 'FB637BF3-101A-4B7F-B365-5645CDF14AE4.png'),
(14203072, 'ishaan', '123', 'ishaan@mail.com', '1995-10-10', 'bca-ctis', '3457854445', 'male', '1568  luckhnow', 'A048670B-178D-4D31-B802-B5B7DBF00E78.png'),
(15103023, 'areeba khan', '202cb962ac59075b964b07152d234b70', 'areeba@mail.com', '1996-08-09', 'bca-ctis', '7541112450', 'female', '3444  rampur', 'FFE697B5-F021-41FA-8267-53496890A002.png'),
(15103033, 'gufrana lon', '202cb962ac59075b964b07152d234b70', 'gufrana@mail.com', '1996-08-09', 'bca-ctis', '2145785550', 'female', '292  rampur', 'C6F031D6-2249-4CDC-B513-DC16D9F2325E.png'),
(15103052, 'Samayak jain', '123', 'samyak@mail.com', '1995-10-10', 'bca-ctis', '8542145780', 'Male', '272  muzafarnagar', 'C9E6BD3E-8306-4385-BFE1-517DF1ACC505.png'),
(15103053, 'nitisha', '202cb962ac59075b964b07152d234b70', 'nitisha@mail.com', '1996-08-09', 'bca-ctis', '1547854555', 'female', '1937  jwalanagar tanki,Rampur', '70C5DB91-B97E-44D0-9B5D-298105F3FBE4.png'),
(15103057, 'rahil', '347602146a923872538f3803eb5f3cef', 'rahil@gmail.com', '1996-04-12', 'bca-ctis', '7547854650', 'Male', '3435  rampur', '0AD69827-DDEF-485F-8721-E18F29C9A1DE.png'),
(15103058, 'rishabh kulshreshtha', '202cb962ac59075b964b07152d234b70', 'kulshreshtha@gmail.com', '1996-10-28', 'bca-ctis', '3124578450', 'male', '919  New delhi', '94E5BBB2-A0FF-4F19-BA12-C07F0C4C617A.png'),
(15103092, 'furkan khan', '123', 'rachhel@mail.com', '1995-10-10', 'bca-ctis', '3457856969', 'ale', '919  sambhal', '2112827E-7215-4CB3-BC87-590B2B848955.png'),
(16303053, 'ilma', '202cb962ac59075b964b07152d234b70', 'ilma@mail.com', '1996-08-09', 'bca-ctis', '7531598520', 'female', '431  Crpf, Rampur', 'F6417D01-7D58-406A-B781-867ED93BACC0.png'),
(17699619, 'naziya ', '5f4dcc3b5aa765d61d8327deb882cf99', 'naziya@gmail.com', '1995-04-01', 'naziya', '7410000058', 'Female', '2825 sambhal', 'E2EB3AB3-379F-49E2-A558-E7CE535778A0.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attn`
--
ALTER TABLE `attn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `at_student`
--
ALTER TABLE `at_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `st_info`
--
ALTER TABLE `st_info`
  ADD PRIMARY KEY (`st_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attn`
--
ALTER TABLE `attn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;
--
-- AUTO_INCREMENT for table `at_student`
--
ALTER TABLE `at_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

