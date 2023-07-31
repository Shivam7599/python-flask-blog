-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2023 at 07:48 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wecode`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone`, `msg`, `date`) VALUES
(1, 'firstpost', 'firstpost@gmail.com', '1234567890', 'first post kiya hai ', '2023-07-06'),
(4, 'Shivam Kumar', 'shivambadshah000@gmail.com', '+918882608704', 'r8itytyty       ivvvvvvvvvvvvvvvvvvvvvvvvvvvvvv', '0000-00-00'),
(5, 'shivam', 'shivambadshah000@gmail.com', '+918882608704', 'hii this is shivam kumar', '2023-07-06'),
(6, 'Shivam Kumar', 'shivambadshah000@gmail.com', '+918882608704', '1212121212121121212122212121\r\n', '2023-07-11'),
(7, 'Shivam Kumar', 'shivambadshah000@gmail.com', '+918882608704', '1212121212121121212122212121\r\n', '2023-07-11'),
(8, 'Shivam Kumar', 'shivambadshah000@gmail.com', '+918882608704', '1212121212121121212122212121\r\n', '2023-07-11'),
(9, 'Shivam Kumar', 'shivambadshah000@gmail.com', '+918882608704', '1212121212121121212122212121\r\n', '2023-07-11'),
(10, 'Abc', 'Abc@gmail.com', '1234567890', 'Abcdefghijklmnopqrstuvwxyz', '2023-07-11'),
(11, 'Abc', 'Abc@gmail.com', '1234567890', 'Abcdefghijklmnopqrstuvwxyz', '2023-07-11'),
(12, 'Shivam Kumar', 'shivambadshah000@gmail.com', '+918882608704', 'dgdfh', '2023-07-11'),
(13, 'Shivam Kumar', 'shivambadshah000@gmail.com', '+918882608704', 'dgdfh', '2023-07-11'),
(14, 'Abc', 'Abc@gmail.com', '01234567890', ' fxdytdyrt', '2023-07-11'),
(15, 'Abc', 'Abc@gmail.com', '01234567890', 'Sfsghdfshfghfghg', '2023-07-11'),
(16, 'Abc', 'Abc@gmail.com', '01234567890', 'FRSGD', '2023-07-11'),
(17, 'Ashish Ojha', 'ashishojha7534@gmail.com', '09528522436', 'dghfgjhf', '2023-07-11'),
(18, 'Ashish Ojha', 'ashishojha7534@gmail.com', '09528522436', '', '2023-07-11'),
(19, 'Abccdefghijklmnopqrst', 'Abc@gmail.com', '01234567890', 'Abccdefghijklmnopqrst', '2023-07-13'),
(20, 'Abccdefghijklmnopqrst', 'Abc@gmail.com', '01234567890', 'Abccdefghijklmnopqrst', '2023-07-13'),
(21, 'Abccdefghijklmnopqrst', 'Abc@gmail.com', '01234567890', 'Abccdefghijklmnopqrst', '2023-07-13'),
(22, 'shivam', 'shivambadshah000@gmail.com', '+918882608704', '        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n', '2023-07-18'),
(23, 'shivam', 'shivambadshah000@gmail.com', '+918882608704', '        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n', '2023-07-18'),
(24, 'Abc', 'Abc@gmail.com', '01234567890', '        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n        return render_template(\"login.html\", params=params)\r\n', '2023-07-18');

-- --------------------------------------------------------

--
-- Table structure for table `sample_post`
--

CREATE TABLE `sample_post` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `sub_heading` text NOT NULL,
  `img_file` varchar(25) NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sample_post`
--

INSERT INTO `sample_post` (`sno`, `title`, `sub_heading`, `img_file`, `slug`, `content`, `date`) VALUES
(4, 'varaibles', 'mast wala variable', 'contact-bg.jpg', 'forth-post', 'This category includes television programs that have regularly aired their first-run episodes on Hoichoi. It does not include programs which first appeared on a different network.\r\n', '2023-07-14 20:50:36'),
(5, 'variablaaaa', 'mast wala vbariablaaa', 'about-bg.jpg', 'fifth-post', 'This category includes television programs that have regularly aired their first-run episodes on Hoichoi. It does not include programs which first appeared on a different network.', '2023-07-14 20:51:26'),
(6, 'hii', 'bye', 'contact-bg.jpg', 'sixth-post', 'hii bye \r\nhii bye hii bye hii bye hii bye hii bye hii bye hii bye hii bye hii bye hii bye hii bye hii bye hii bye hii bye hii bye hii bye bye bye bye bye bye bye bye bye bye bye bye bye bye bye bye bye bye', '2023-07-14 20:52:37'),
(7, 'return ', 'how', 'a.png', 'basket', '              slugslugslugslugslugslug', '2023-07-17 22:44:19'),
(8, 'hiii', 'how', 'a.png', 'basket', '              Until now it was just sending data from HTML and telling the flask app that post request can be made on this end point but what to do when post request is made? We need to tell/code that. We will use if else for that. Code is:', '2023-07-17 22:49:51'),
(9, 'news', 'newspaper', 'a.png', 'n-paper', 'NEwspaper  NEwspaper  NEwspaper  NEwspaper  NEwspaper  NEwspaper  NEwspaper                ', '2023-07-17 22:53:57'),
(10, 'Add/Edits Posts', 'Add/Edits Posts', 'Add/Edits Posts', 'Add/Edits Posts', 'Add/Edits PostsAdd/Edits PostsAdd/Edits PostsAdd/Edits Posts', '2023-07-18 00:28:36'),
(11, 'how are you', 'Add/Edits Posts', 'back.png', 'nww-paper', 'Add/Edits PostsAdd/Edits PostsAdd/Edits Posts', '2023-07-18 00:34:48'),
(12, 'news', 'Descriptionss', 'about-bg.jpg', 'nww-paper', 'DescriptionssssssssssssssssDescriptionssssssssssssssssDescriptionssssssssssssssssDescriptionssssssssssssssss', '2023-07-19 22:56:20'),
(15, 'news', 'Add/Edits Posts', 'about-bg.jpg', 'nwww-paper', 'DescriptionssssssssssssssssDescriptionssssssssssssssssDescriptionssssssssssssssss', '2023-07-18 00:39:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `sample_post`
--
ALTER TABLE `sample_post`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `sample_post`
--
ALTER TABLE `sample_post`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
