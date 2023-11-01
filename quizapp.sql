-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2023 at 10:05 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tech`
--

CREATE TABLE `tech` (
  `id` int(11) NOT NULL,
  `question` varchar(300) NOT NULL,
  `option1` varchar(300) NOT NULL,
  `option2` varchar(300) NOT NULL,
  `option3` varchar(300) NOT NULL,
  `option4` varchar(300) NOT NULL,
  `correct_option` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tech`
--

INSERT INTO `tech` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `correct_option`) VALUES
(1, 'Why is a firewall used in a computer?', 'Monitoring', 'Data Transmission', 'Authentication', 'Security', 'Security'),
(2, 'What is mean PNG?', 'Portable java file', 'Portable new group', 'Portable network graphic', 'Animation graphics', 'Portable network graphic'),
(3, 'Android is -', 'an operating system', 'a web browser', 'a web server', 'None of the above', 'an operating system'),
(4, 'Under which of the following Android is licensed?', 'OSS', 'Sourceforge', 'Apache/MIT', 'None of the above', 'Apache/MIT'),
(5, 'For which of the following Android is mainly developed?', 'Servers', 'Desktops', 'Laptops', 'Mobile devices', 'Mobile devices'),
(6, 'Which of the following is the first mobile phone released that ran the Android OS?', 'HTC Hero', 'Google gPhone', 'T - Mobile G1', 'None of the above', 'T - Mobile G1'),
(7, 'Android is based on which of the following languages?', 'Java', 'C++', 'C', 'Native react', 'Java'),
(8, 'APK stands for -', 'Android Phone Kit', 'Android Page Kit', 'Android Package Kit', 'None of the above', 'Android Package Kit'),
(9, 'What does API stand for?', 'Android Programming Interface', 'Android Page Interface', 'Application Page Interface', 'Application Programming Interface', 'Application Programming Interface'),
(10, 'Which of the following converts Java byte code into Dalvik byte code?', 'Dalvik converter', 'Dex compiler', 'Mobile interpretive compiler (MIC)', 'None of the above', 'Dex compiler');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tech`
--
ALTER TABLE `tech`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tech`
--
ALTER TABLE `tech`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
