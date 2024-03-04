-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2024 at 08:35 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `code` varchar(25) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `degreeofaffection` int(11) DEFAULT 7
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`code`, `name`, `degreeofaffection`) VALUES
('0521', 'Cyberthreat', 2),
('0543', 'Robbery', 4),
('0567', 'Fraud', 1),
('0590', 'Assault', 2),
('PUBLIC', 'Social Security Threat', 7);

-- --------------------------------------------------------

--
-- Table structure for table `crimereport`
--

CREATE TABLE `crimereport` (
  `ID` varchar(25) NOT NULL,
  `status` varchar(25) NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `City` varchar(25) DEFAULT NULL,
  `Street` varchar(25) DEFAULT NULL,
  `Apartment` varchar(25) DEFAULT NULL,
  `Description` varchar(100) NOT NULL,
  `Rssn` char(9) DEFAULT NULL,
  `Ccode` varchar(25) DEFAULT NULL,
  `Pssn` char(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `crimereport`
--

INSERT INTO `crimereport` (`ID`, `status`, `date`, `time`, `City`, `Street`, `Apartment`, `Description`, `Rssn`, `Ccode`, `Pssn`) VALUES
('22134', 'UnderProcess', '2023-01-26', '08:34:00', 'Beirut', 'Hamra', 'Apartment29', 'A teenager stole a car', '2178', '0543', '4424'),
('22195', 'pending', '2022-11-08', '04:36:00', 'Jbeil', 'ByblosStreet', 'Apartment25', 'receives threatning messages online', '2178', '0521', '4424'),
('22345', 'pending', '2023-10-03', '03:18:00', 'Beirut', 'Achrafieh', 'Apartment5', 'A masked man robbed an apartment', '2178', '0543', '4421'),
('22765', 'InaBreak', '2023-10-14', '12:45:00', 'Tripoli', 'Azmi', 'Apartment65', 'An anonymous stole a credit card', '5215', '0567', '4401'),
('22785', 'FinishInvestigation', '2024-01-02', '04:47:00', 'Tripoli', 'RiadElsoleh', 'Apartment205', 'ANn old man stole cellphones', '3465', '0543', '4445'),
('22875', 'UnderInvestigation', '2023-09-27', '06:57:00', 'Batroun', 'Bitron', 'Apartment9', 'Anonymousassaultedgroupfgirls', '3465', '0590', '4445'),
('22975', 'UnderInvestigation', '2024-01-08', '10:23:00', 'Batroun', 'Bitron', 'Apartment9', 'Anonymousassaultedgroupfgirls', '3465', '0590', '4445');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `Cid` char(9) NOT NULL,
  `images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`Cid`, `images`) VALUES
('22134', 'image1.jpg'),
('22195', 'image1.jpg'),
('22345', 'image1.jpg'),
('22765', 'image1.jpg'),
('22765', 'image2.jpg'),
('22765', 'image3.jpg'),
('22785', 'image1.jpg'),
('22785', 'image2.png'),
('22875', 'image1.jpg'),
('22875', 'image2.jpg'),
('22975', 'image1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `policeman`
--

CREATE TABLE `policeman` (
  `ssn` char(9) NOT NULL,
  `FirstName` varchar(25) NOT NULL,
  `MiddleName` varchar(25) NOT NULL,
  `LastName` varchar(25) NOT NULL,
  `ContactNumber` varchar(25) DEFAULT NULL,
  `City` varchar(25) DEFAULT NULL,
  `Street` varchar(25) DEFAULT NULL,
  `Apartment` varchar(25) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `policeman`
--

INSERT INTO `policeman` (`ssn`, `FirstName`, `MiddleName`, `LastName`, `ContactNumber`, `City`, `Street`, `Apartment`, `Date`, `Salary`) VALUES
('112233', 'Walaa', 'Karim', 'Omari', '79/284947', 'Beirut', 'Hamra', 'apartment897', '2021-11-10', 2000),
('4401', 'Farouk', 'Mounir', 'Mayyass', '89/098329', 'Batroun', 'Bitron', 'Apartment05', '2023-12-13', 20300),
('4421', 'Fouad', 'Mohamad', 'Mayanne', '98/267329', 'Beirut', 'Achrafieh', 'Apartment45', '2022-09-20', 50000),
('4424', 'Yara', 'Hamid', 'Jaber', '79/289237', 'Beirut', 'Hamra', 'Apartment495', '2019-05-23', 90000),
('4434', 'Darine', 'Mouin', 'Azouri', '78/493522', 'Tripoli', 'Mina', 'Apartment445', '2020-11-20', 19000),
('4445', 'John', 'Omar', 'Smith', '74/493329', 'Tripoli', 'Bahsas', 'Apartment875', '2023-12-27', 60000),
('4467', 'Lara', 'Maroun', 'Hamdan', '79/384993', 'Jbeil', 'Byblosstreet', 'Apartment215', '2016-01-12', 85000);

-- --------------------------------------------------------

--
-- Table structure for table `resident`
--

CREATE TABLE `resident` (
  `ssn` char(9) NOT NULL,
  `FirstName` varchar(25) NOT NULL,
  `MiddleName` varchar(25) NOT NULL,
  `LastName` varchar(25) NOT NULL,
  `ContactNumber` varchar(25) DEFAULT NULL,
  `City` varchar(25) DEFAULT NULL,
  `Street` varchar(25) DEFAULT NULL,
  `Apartment` varchar(25) DEFAULT NULL,
  `Gender` char(1) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resident`
--

INSERT INTO `resident` (`ssn`, `FirstName`, `MiddleName`, `LastName`, `ContactNumber`, `City`, `Street`, `Apartment`, `Gender`, `DateOfBirth`) VALUES
('2134', 'Wessam', 'Talal', 'Jabali', '71/234356', 'Beirut', 'Achrafieh', 'Apartment101', 'M', '1998-06-03'),
('2178', 'Noora', 'Wared', 'Karam', '81/284521', 'Beirut', 'Hamra', 'Apartment645', 'F', '1985-08-11'),
('3465', 'Assil', 'Wassim', 'Halewe', '78/238532', 'Batroun', 'Bitron', 'Apartment432', 'F', '1997-05-10'),
('5215', 'Rana', 'Khalil', 'Sankari', '72/543098', 'Tripoli', 'Azmi', 'Apartment2', 'F', '1983-06-04'),
('5273', 'Hilal', 'Tarek', 'Kalawoun', '70/416586', 'Tripoli', 'RiadElSoleh', 'Apartment225', 'M', '1991-06-04'),
('8795', 'Sara', 'Karim', 'Sankari', '80/876321', 'Jbeil', 'ByblosStreet', 'Apartment32', 'F', '1992-12-09');

-- --------------------------------------------------------

--
-- Table structure for table `response`
--

CREATE TABLE `response` (
  `name` varchar(100) NOT NULL,
  `Date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `description` varchar(100) NOT NULL,
  `target` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `Pssn` char(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `response`
--

INSERT INTO `response` (`name`, `Date`, `time`, `description`, `target`, `status`, `Pssn`) VALUES
('responsetoafraud', '2020-12-24', NULL, 'the respond study the fraud and make a strategy to follow the fraudster', 'a financial fraud', 'UnderProcess', '4421'),
('responsetoarobbery', '2021-03-12', NULL, 'the respond follows the strategy of the plan A', 'an anonymous group of robberies', 'UnderProcess', '4401'),
('responsetocyberthreat', NULL, NULL, 'cooperate with people who work in cybersecurity to get better result', 'an anonymous cyberbullies', 'UnderProcess', '4424');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`code`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `crimereport`
--
ALTER TABLE `crimereport`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Rssn` (`Rssn`),
  ADD KEY `Ccode` (`Ccode`),
  ADD KEY `Pssn` (`Pssn`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`Cid`,`images`);

--
-- Indexes for table `policeman`
--
ALTER TABLE `policeman`
  ADD PRIMARY KEY (`ssn`);

--
-- Indexes for table `resident`
--
ALTER TABLE `resident`
  ADD PRIMARY KEY (`ssn`);

--
-- Indexes for table `response`
--
ALTER TABLE `response`
  ADD PRIMARY KEY (`name`),
  ADD KEY `Pssn` (`Pssn`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `crimereport`
--
ALTER TABLE `crimereport`
  ADD CONSTRAINT `crimereport_ibfk_1` FOREIGN KEY (`Rssn`) REFERENCES `resident` (`ssn`),
  ADD CONSTRAINT `crimereport_ibfk_2` FOREIGN KEY (`Ccode`) REFERENCES `category` (`code`),
  ADD CONSTRAINT `crimereport_ibfk_3` FOREIGN KEY (`Pssn`) REFERENCES `policeman` (`ssn`);

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`Cid`) REFERENCES `crimereport` (`ID`);

--
-- Constraints for table `response`
--
ALTER TABLE `response`
  ADD CONSTRAINT `response_ibfk_1` FOREIGN KEY (`Pssn`) REFERENCES `policeman` (`ssn`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
