-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2023 at 08:59 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `121`
--

-- --------------------------------------------------------

--
-- Table structure for table `cer`
--

CREATE TABLE `cer` (
  `name` varchar(50) NOT NULL,
  `id` int(6) NOT NULL,
  `rate` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cer`
--

INSERT INTO `cer` (`name`, `id`, `rate`) VALUES
('omar', 55, 30),
('salem', 545, 50);

-- --------------------------------------------------------

--
-- Table structure for table `cer to cor`
--

CREATE TABLE `cer to cor` (
  `id cor` int(6) NOT NULL,
  `id cer` int(6) NOT NULL,
  `enroll date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cer to cor`
--

INSERT INTO `cer to cor` (`id cor`, `id cer`, `enroll date`) VALUES
(2, 55, '2023-07-19'),
(3, 545, '2023-07-18');

-- --------------------------------------------------------

--
-- Table structure for table `cor`
--

CREATE TABLE `cor` (
  `name` varchar(50) NOT NULL,
  `idcor` int(6) NOT NULL,
  `hour` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cor`
--

INSERT INTO `cor` (`name`, `idcor`, `hour`) VALUES
('Back-end', 2, '120'),
('Front-end', 3, '50');

-- --------------------------------------------------------

--
-- Table structure for table `stu 2 cor`
--

CREATE TABLE `stu 2 cor` (
  `corid` int(6) NOT NULL,
  `stuid` int(6) NOT NULL,
  `pr` int(5) NOT NULL,
  `enrolldate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stu 2 cor`
--

INSERT INTO `stu 2 cor` (`corid`, `stuid`, `pr`, `enrolldate`) VALUES
(2, 333, 5000, '2023-07-04'),
(3, 333, 4000, '2023-07-10'),
(2, 1255, 5000, '2023-07-28');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`name`, `address`, `id`) VALUES
('Ahmed', '12st', 333),
('omar', 'omar', 1255),
('omar', '44', 4151);

-- --------------------------------------------------------

--
-- Table structure for table `tech 2 cors`
--

CREATE TABLE `tech 2 cors` (
  `corid` int(6) NOT NULL,
  `idtech` int(6) NOT NULL,
  `seweek` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tech 2 cors`
--

INSERT INTO `tech 2 cors` (`corid`, `idtech`, `seweek`) VALUES
(2, 8545, 2),
(2, 12253, 3);

-- --------------------------------------------------------

--
-- Table structure for table `techers`
--

CREATE TABLE `techers` (
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `id` int(6) NOT NULL,
  `sid` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `techers`
--

INSERT INTO `techers` (`name`, `address`, `id`, `sid`) VALUES
('omar', '5411', 8545, 4151),
('omar', '51', 12253, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cer`
--
ALTER TABLE `cer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cer to cor`
--
ALTER TABLE `cer to cor`
  ADD UNIQUE KEY `id cor_2` (`id cor`),
  ADD UNIQUE KEY `id cer_2` (`id cer`),
  ADD KEY `id cor` (`id cor`),
  ADD KEY `id cer` (`id cer`);

--
-- Indexes for table `cor`
--
ALTER TABLE `cor`
  ADD PRIMARY KEY (`idcor`);

--
-- Indexes for table `stu 2 cor`
--
ALTER TABLE `stu 2 cor`
  ADD KEY `corid` (`corid`),
  ADD KEY `stuid` (`stuid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tech 2 cors`
--
ALTER TABLE `tech 2 cors`
  ADD UNIQUE KEY `idtech_2` (`idtech`),
  ADD KEY `idtech` (`idtech`),
  ADD KEY `corid` (`corid`);

--
-- Indexes for table `techers`
--
ALTER TABLE `techers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sid_2` (`sid`),
  ADD KEY `id` (`id`),
  ADD KEY `sid` (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cor`
--
ALTER TABLE `cor`
  MODIFY `idcor` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4152;

--
-- AUTO_INCREMENT for table `techers`
--
ALTER TABLE `techers`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12254;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cer to cor`
--
ALTER TABLE `cer to cor`
  ADD CONSTRAINT `cer to cor_ibfk_1` FOREIGN KEY (`id cer`) REFERENCES `cer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cer to cor_ibfk_2` FOREIGN KEY (`id cor`) REFERENCES `cor` (`idcor`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stu 2 cor`
--
ALTER TABLE `stu 2 cor`
  ADD CONSTRAINT `stu 2 cor_ibfk_1` FOREIGN KEY (`corid`) REFERENCES `cor` (`idcor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stu 2 cor_ibfk_2` FOREIGN KEY (`stuid`) REFERENCES `student` (`id`);

--
-- Constraints for table `tech 2 cors`
--
ALTER TABLE `tech 2 cors`
  ADD CONSTRAINT `tech 2 cors_ibfk_2` FOREIGN KEY (`idtech`) REFERENCES `techers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tech 2 cors_ibfk_3` FOREIGN KEY (`corid`) REFERENCES `cor` (`idcor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
