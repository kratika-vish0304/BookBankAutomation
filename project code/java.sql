-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2023 at 06:03 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `java`
--

-- --------------------------------------------------------

--
-- Table structure for table `approved`
--

CREATE TABLE `approved` (
  `sno` int(10) NOT NULL,
  `name` text NOT NULL,
  `add_no` varchar(5) NOT NULL,
  `course` varchar(50) NOT NULL,
  `reciept_date` datetime NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `parent_mob` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_of_books` int(50) NOT NULL,
  `bank` varchar(50) NOT NULL,
  `ifsccode` varchar(50) NOT NULL,
  `reciept` int(50) NOT NULL,
  `amount` int(50) NOT NULL,
  `acc_no` varchar(50) NOT NULL,
  `bookname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `approved`
--

INSERT INTO `approved` (`sno`, `name`, `add_no`, `course`, `reciept_date`, `mobile`, `parent_mob`, `email`, `no_of_books`, `bank`, `ifsccode`, `reciept`, `amount`, `acc_no`, `bookname`) VALUES
(34, 'palak vish', '48185', 'Bcom', '2023-03-16 22:13:12', '7024958234', '2412412411', 'palak@gmail.com', 2, 'state bank of india,panhera branch', 'IFDS0SBI567', 24242, 50, '98098', 'palak vish'),
(35, 'kratika', '46492', 'bca', '2023-03-16 22:25:44', '7024958234', '2412412411', 'kratikavishwakarma03@gmail.com', 3, 'state bank of india,panhera branch', 'IFDS0SBI567', 77777, 40, '23456789098', 'kratika ');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `sno` int(11) NOT NULL,
  `username` varchar(23) NOT NULL,
  `password` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`sno`, `username`, `password`) VALUES
(1, 'liabrary', 'liabrary');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `add_no` varchar(5) NOT NULL,
  `course` varchar(20) NOT NULL,
  `reciept_date` datetime(6) DEFAULT current_timestamp(6),
  `mobile` varchar(20) NOT NULL,
  `parent_mob` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `no_of_books` int(3) NOT NULL,
  `bank` varchar(40) NOT NULL,
  `ifsccode` varchar(12) NOT NULL,
  `reciept` int(50) NOT NULL,
  `amount` int(50) NOT NULL,
  `acc_no` varchar(12) NOT NULL,
  `bookname` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Triggers `registration`
--
DELIMITER $$
CREATE TRIGGER `approvel` AFTER DELETE ON `registration` FOR EACH ROW INSERT INTO approved(sno,name,add_no,course,reciept_date,mobile,parent_mob,email,no_of_books,bank,ifsccode,reciept,amount,acc_no,bookname) VALUES(old.sno,old.name,old.add_no,old.course,CURRENT_TIMESTAMP,old.mobile,old.parent_mob,old.email,old.no_of_books,old.bank,old.ifsccode,old.reciept,old.amount,old.acc_no,old.bookname)
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `approved`
--
ALTER TABLE `approved`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
