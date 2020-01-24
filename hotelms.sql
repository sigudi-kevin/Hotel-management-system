-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2019 at 07:29 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotelms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `admin_id_num` int(11) NOT NULL,
  `admin_username` varchar(30) COLLATE latin1_bin NOT NULL,
  `admin_password` varchar(100) COLLATE latin1_bin NOT NULL,
  `admin_phone` varchar(20) COLLATE latin1_bin NOT NULL,
  `email` varchar(50) COLLATE latin1_bin NOT NULL,
  `admin_ppic` varchar(30) COLLATE latin1_bin NOT NULL,
  `login_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_id_num`, `admin_username`, `admin_password`, `admin_phone`, `email`, `admin_ppic`, `login_status`) VALUES
(1, 0, 'Kevin', '563922a9d1553e746b0f28bfaadf0ba0', '', 'siguk@gmail.com', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `c_id` int(11) NOT NULL,
  `Names` varchar(100) COLLATE latin1_bin NOT NULL,
  `id_no` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `cin` date NOT NULL,
  `cout` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`c_id`, `Names`, `id_no`, `phone`, `room_id`, `cin`, `cout`) VALUES
(1, 'Ann Ndungu', 43215645, 708076543, 3, '2019-01-15', '2019-02-13');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `Fname` varchar(20) COLLATE latin1_bin NOT NULL,
  `Lname` varchar(20) COLLATE latin1_bin NOT NULL,
  `tbed` varchar(30) COLLATE latin1_bin NOT NULL,
  `troom` varchar(30) COLLATE latin1_bin NOT NULL,
  `cin` date NOT NULL,
  `cout` date NOT NULL,
  `no.of_days` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

-- --------------------------------------------------------

--
-- Table structure for table `roombook`
--

CREATE TABLE `roombook` (
  `id` int(11) NOT NULL,
  `Lname` varchar(20) COLLATE latin1_bin NOT NULL,
  `Fname` varchar(20) COLLATE latin1_bin NOT NULL,
  `Email` varchar(50) COLLATE latin1_bin NOT NULL,
  `phone` varchar(30) COLLATE latin1_bin NOT NULL,
  `troom` varchar(30) COLLATE latin1_bin NOT NULL,
  `bed` varchar(30) COLLATE latin1_bin NOT NULL,
  `cin` date NOT NULL,
  `cout` date NOT NULL,
  `no.of_days` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `type` varchar(50) COLLATE latin1_bin NOT NULL,
  `number_of_bed` int(11) NOT NULL,
  `room_service` int(11) NOT NULL DEFAULT '1',
  `self_contained` int(11) NOT NULL DEFAULT '1',
  `hot_bath` int(11) NOT NULL DEFAULT '1',
  `reg_date` varchar(20) COLLATE latin1_bin NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `type`, `number_of_bed`, `room_service`, `self_contained`, `hot_bath`, `reg_date`, `status`) VALUES
(1, 'Single', 786, 1, 1, 1, 'Thu, 07 Mar 2019', 1),
(2, 'Double', 1, 1, 1, 0, 'Thu, 07 Mar 2019', 1),
(3, 'Double', 1, 1, 1, 0, 'Thu, 07 Mar 2019', 1),
(4, 'Single', -1, 1, 1, 1, 'Thu, 07 Mar 2019', 1),
(5, 'Single', 0, 1, 1, 1, 'Thu, 07 Mar 2019', 1),
(6, 'Single', 1, 1, 1, 1, 'Thu, 07 Mar 2019', 1),
(7, 'Single', 1, 1, 1, 1, 'Thu, 07 Mar 2019', 1),
(8, 'Single', 1, 1, 1, 1, 'Thu, 07 Mar 2019', 1),
(9, 'Single', 0, 1, 1, 1, 'Thu, 07 Mar 2019', 1),
(10, 'Single', 1, 1, 1, 1, 'Thu, 07 Mar 2019', 1),
(11, 'Single', 1, 1, 1, 1, 'Thu, 07 Mar 2019', 1),
(12, 'Single', 1, 1, 1, 1, 'Thu, 07 Mar 2019', 1),
(16, 'Single', 0, 1, 1, 1, 'Thu, 07 Mar 2019', 1),
(17, 'Single', 1, 1, 1, 1, 'Thu, 07 Mar 2019', 1),
(18, 'Single', -1, 1, 1, 1, 'Thu, 07 Mar 2019', 1),
(19, 'Single', 0, 1, 1, 1, 'Thu, 07 Mar 2019', 1),
(20, 'Single', 0, 1, 1, 1, 'Thu, 07 Mar 2019', 1),
(21, 'Single', 0, 1, 1, 1, 'Thu, 07 Mar 2019', 1),
(22, 'Single', 0, 1, 1, 1, 'Thu, 07 Mar 2019', 1),
(23, 'Single', 0, 1, 1, 1, 'Thu, 07 Mar 2019', 1),
(24, 'Single', 1, 1, 1, 1, 'Thu, 07 Mar 2019', 1),
(25, 'Single', 1, 1, 1, 1, 'Thu, 07 Mar 2019', 1);

-- --------------------------------------------------------

--
-- Table structure for table `roomtype`
--

CREATE TABLE `roomtype` (
  `id` int(11) NOT NULL,
  `roomtype` varchar(50) COLLATE latin1_bin NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `roomtype`
--

INSERT INTO `roomtype` (`id`, `roomtype`, `status`) VALUES
(1, 'Single ', 1),
(2, 'Double', 1),
(3, 'Guest House', 1),
(4, 'Deluxe', 1);

-- --------------------------------------------------------

--
-- Table structure for table `room_gallery`
--

CREATE TABLE `room_gallery` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `main_image_path` varchar(150) COLLATE latin1_bin NOT NULL,
  `other_image_path` varchar(150) COLLATE latin1_bin NOT NULL,
  `upload_date` varchar(20) COLLATE latin1_bin NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `room_gallery`
--

INSERT INTO `room_gallery` (`id`, `room_id`, `main_image_path`, `other_image_path`, `upload_date`, `status`) VALUES
(1, 2, './../../assets/img/rooms/c81e728d9d4c2f636f067f89cc14862c/b4d1236e50ee439b04a245dbcb0f416d.jpeg', './../../assets/img/rooms/c81e728d9d4c2f636f067f89cc14862c/', 'Thu, 07 Mar 2019', 1),
(2, 3, './../../assets/img/rooms/eccbc87e4b5ce2fe28308fd9f2a7baf3/fee1eb8468ab2c65869831eb00946f81.jpeg', './../../assets/img/rooms/eccbc87e4b5ce2fe28308fd9f2a7baf3/', 'Thu, 07 Mar 2019', 1),
(3, 4, './../../assets/img/rooms/a87ff679a2f3e71d9181a67b7542122c/87f19e0f05205f109e77dbef3a4a8ea3.', './../../assets/img/rooms/a87ff679a2f3e71d9181a67b7542122c/', 'Thu, 07 Mar 2019', 1),
(4, 5, './../../assets/img/rooms/e4da3b7fbbce2345d7772b0674a318d5/65a31a73339ff8909a1aba326e13edc4.', './../../assets/img/rooms/e4da3b7fbbce2345d7772b0674a318d5/', 'Thu, 07 Mar 2019', 1),
(5, 6, './../../assets/img/rooms/1679091c5a880faf6fb5e6087eb1b2dc/b13e135c24b0be3b99fd219df20be11c.jpg', './../../assets/img/rooms/1679091c5a880faf6fb5e6087eb1b2dc/', 'Thu, 07 Mar 2019', 1),
(6, 7, './../../assets/img/rooms/8f14e45fceea167a5a36dedd4bea2543/96f6a894e3336d42d4b3a4f5b6c765c2.jpg', './../../assets/img/rooms/8f14e45fceea167a5a36dedd4bea2543/', 'Thu, 07 Mar 2019', 1),
(7, 8, './../../assets/img/rooms/c9f0f895fb98ab9159f51fd0297e236d/9b3585c7953892775520fda2bc55b9fe.jpg', './../../assets/img/rooms/c9f0f895fb98ab9159f51fd0297e236d/', 'Thu, 07 Mar 2019', 1),
(8, 9, './../../assets/img/rooms/45c48cce2e2d7fbdea1afc51c7c6ad26/ba24f00954a53a271c90d3fa3d61e6e7.', './../../assets/img/rooms/45c48cce2e2d7fbdea1afc51c7c6ad26/', 'Thu, 07 Mar 2019', 1),
(9, 10, './../../assets/img/rooms/d3d9446802a44259755d38e6d163e820/713d57df65f1ae10aa0aa4b194782f76.jpg', './../../assets/img/rooms/d3d9446802a44259755d38e6d163e820/', 'Thu, 07 Mar 2019', 1),
(10, 11, 'assets/img/rooms/6512bd43d9caa6e02c990b0a82652dca/3993a0da45003881f2ee2a3a425b5703.jpg', 'assets/img/rooms/6512bd43d9caa6e02c990b0a82652dca/', 'Thu, 07 Mar 2019', 1),
(11, 12, 'assets/img/rooms/c20ad4d76fe97759aa27a0c99bff6710/99dd0d542cfc3787801b91a5d1ea1d8e.jpg', 'assets/img/rooms/c20ad4d76fe97759aa27a0c99bff6710/', 'Thu, 07 Mar 2019', 1),
(12, 16, 'assets/img/rooms/c74d97b01eae257e44aa9d5bade97baf/5a3a88c8238fe24673a7df5fa55367b3.jpeg', 'assets/img/rooms/c74d97b01eae257e44aa9d5bade97baf/', 'Thu, 07 Mar 2019', 1),
(13, 17, 'assets/img/rooms/70efdf2ec9b086079795c442636b55fb/75a9de07e1b074c1a3ac79ae060600c4.', 'assets/img/rooms/70efdf2ec9b086079795c442636b55fb/', 'Thu, 07 Mar 2019', 1),
(14, 18, 'assets/img/rooms/6f4922f45568161a8cdf4ad2299f6d23/2d1280ccd29e37f71b9ffc529fc0d80c.', 'assets/img/rooms/6f4922f45568161a8cdf4ad2299f6d23/', 'Thu, 07 Mar 2019', 1),
(15, 19, 'assets/img/rooms/1f0e3dad99908345f7439f8ffabdffc4/694cd0422fb38fc0ac345975815ab7fb.', 'assets/img/rooms/1f0e3dad99908345f7439f8ffabdffc4/', 'Thu, 07 Mar 2019', 1),
(16, 20, 'assets/img/rooms/98f13708210194c475687be6106a3b84/3760ef04652be1e527481a9180312ecb.', 'assets/img/rooms/98f13708210194c475687be6106a3b84/', 'Thu, 07 Mar 2019', 1),
(17, 21, 'assets/img/rooms/3c59dc048e8850243be8079a5c74d079/2f510e24de7e8e7ea671dc3604cce6a1.', 'assets/img/rooms/3c59dc048e8850243be8079a5c74d079/', 'Thu, 07 Mar 2019', 1),
(18, 22, './../../assets/img/rooms/b6d767d2f8ed5d21a44b0e5886680cb9/f8109ed21dbdb3735d854f13cccd5e2e.', './../../assets/img/rooms/b6d767d2f8ed5d21a44b0e5886680cb9/', 'Thu, 07 Mar 2019', 1),
(19, 23, 'assets/img/rooms/37693cfc748049e45d87b8c7d8b9aacd/86bbc4a9a2a22a1431c933cd1dd81d5f.', 'assets/img/rooms/37693cfc748049e45d87b8c7d8b9aacd/', 'Thu, 07 Mar 2019', 1),
(20, 24, 'assets/img/rooms/1ff1de774005f8da13f42943881c655f/c819cd4d36b0b180a7ac829ea3735c3d.', 'assets/img/rooms/1ff1de774005f8da13f42943881c655f/', 'Thu, 07 Mar 2019', 1),
(21, 25, 'assets/img/rooms/8e296a067a37563370ded05f5a3bf3ec/83c3973acf48dc5106405583f7513b21.jpeg', 'assets/img/rooms/8e296a067a37563370ded05f5a3bf3ec/', 'Thu, 07 Mar 2019', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roombook`
--
ALTER TABLE `roombook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `roomtype`
--
ALTER TABLE `roomtype`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roomtype` (`roomtype`);

--
-- Indexes for table `room_gallery`
--
ALTER TABLE `room_gallery`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `room_id` (`room_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roombook`
--
ALTER TABLE `roombook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `roomtype`
--
ALTER TABLE `roomtype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `room_gallery`
--
ALTER TABLE `room_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_ibfk_1` FOREIGN KEY (`type`) REFERENCES `roomtype` (`roomtype`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `room_gallery`
--
ALTER TABLE `room_gallery`
  ADD CONSTRAINT `room_gallery_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
