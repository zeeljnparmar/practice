-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2022 at 08:06 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
--
-- Database: `ebook_maker_db`
--
-- --------------------------------------------------------
--
-- Table structure for table `admin_data`
--
CREATE TABLE `admin_data` (
  `admin_id` int(11) NOT NULL,
  `admin_first_name` varchar(20) NOT NULL,
  `admin_last_name` varchar(20) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_data`
--

INSERT INTO `admin_data` (`admin_id`, `admin_first_name`, `admin_last_name`, `admin_email`, `admin_password`) VALUES
(1, 'Super', 'Admin', 'admin@gmail.com', 'admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `author_data`
--

CREATE TABLE `author_data` (
  `author_id` int(11) NOT NULL,
  `author_first_name` varchar(20) NOT NULL,
  `author_last_name` varchar(20) NOT NULL,
  `author_email` varchar(100) NOT NULL,
  `author_phone_no` bigint(11) NOT NULL,
  `author_password` varchar(20) NOT NULL,
  `author_gender` varchar(10) NOT NULL,
  `author_city` varchar(20) NOT NULL,
  `author_state` varchar(20) NOT NULL,
  `author_pincode` int(11) NOT NULL,
  `author_email_status` int(1) NOT NULL,
  `author_verified` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `author_data`
--

INSERT INTO `author_data` (`author_id`, `author_first_name`, `author_last_name`, `author_email`, `author_phone_no`, `author_password`, `author_gender`, `author_city`, `author_state`, `author_pincode`, `author_email_status`, `author_verified`) VALUES
(1, 'abc0', 'def', '', 0, '', '', '', '', 0, 1, 0),
(2, 'abc1', 'def', 'a@a.a', 0, '', '', '', '', 0, 1, 0),
(4, 'abc3', 'def', 'a@a.a', 2147483647, 'a44', '', 'amd', 'guj', 100001, 0, 1),
(5, 'abc4', 'def4', 'a@a.a', 5555555556, 'a33', 'Female', 'Amd', 'Guj', 100001, 0, 1),
(6, 'asd5', 'sdf', 'a@m.d', 2147483647, 'a55', 'Female', 'aaa', 'bbb', 100004, 0, 1),
(7, 'har', 'dik', 'mrhardikdeveloper@gmail.com', 5555555556, '222', 'Male', 'aaa', 'aaa', 100002, 1, 1),
(8, 'parshwa', 'shah', '202112097@daiict.ac.in', 9833444444, '@*#mihir08', 'Male', 'gandhinagar', 'gujarat', 382007, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ebook_data`
--

CREATE TABLE `ebook_data` (
  `book_id` int(11) NOT NULL,
  `book_title` varchar(100) NOT NULL,
  `book_description` text NOT NULL,
  `book_data` text NOT NULL,
  `book_cover` text NOT NULL,
  `book_status` int(1) NOT NULL,
  `book_varified` int(1) NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ebook_data`
--

INSERT INTO `ebook_data` (`book_id`, `book_title`, `book_description`, `book_data`, `book_cover`, `book_status`, `book_varified`, `author_id`) VALUES
(1, 'Book One', 'Description One\r\nDescription Two', '', 'cover1', 1, 1, 7),
(3, 'Book Three', 'Description One\r\nDescription Two', '', 'cover1', 0, 0, 7),
(8, 'gfdgfdgdfg', 'dfgdfg', '<p>aasdasdasd asd a sd asd</p>\r\n', 'cover1', 1, 0, 8),
(9, 'dfgfd', 'dfgf', '', 'cover1', 0, 0, 8),
(10, 'dfdgdg', 'dgfdg', '', 'cover1', 0, 0, 8);
--
-- Indexes for dumped tables
--
--
-- Indexes for table `admin_data`
--
ALTER TABLE `admin_data`
  ADD PRIMARY KEY (`admin_id`);
--
-- Indexes for table `author_data`
--
ALTER TABLE `author_data`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `ebook_data`
--
ALTER TABLE `ebook_data`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `fk_authorid_ebook` (`author_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_data`
--
ALTER TABLE `admin_data`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `author_data`
--
ALTER TABLE `author_data`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ebook_data`
--
ALTER TABLE `ebook_data`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ebook_data`
--
ALTER TABLE `ebook_data`
  ADD CONSTRAINT `fk_authorid_ebook` FOREIGN KEY (`author_id`) REFERENCES `author_data` (`author_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
