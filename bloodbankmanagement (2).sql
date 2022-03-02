-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2022 at 03:35 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloodbankmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood_stock`
--

CREATE TABLE `blood_stock` (
  `Hospital_Id` int(3) DEFAULT NULL,
  `Hospital_Name` varchar(100) DEFAULT NULL,
  `A_pos` int(4) DEFAULT NULL,
  `A_neg` int(4) DEFAULT NULL,
  `B_pos` int(4) DEFAULT NULL,
  `B_neg` int(4) DEFAULT NULL,
  `AB_pos` int(4) DEFAULT NULL,
  `AB_neg` int(4) DEFAULT NULL,
  `O_pos` int(4) DEFAULT NULL,
  `O_neg` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_stock`
--

INSERT INTO `blood_stock` (`Hospital_Id`, `Hospital_Name`, `A_pos`, `A_neg`, `B_pos`, `B_neg`, `AB_pos`, `AB_neg`, `O_pos`, `O_neg`) VALUES
(2, 'Khawja Yunus Ali Medical College and Hospital', 2, 0, 1, 2, 0, 0, -1, 0),
(1, 'Dhaka Medical College Hospital', 6, 1, 1, 2, 0, 0, 4, 0),
(2, 'Khawja Yunus Ali Medical College and Hospital', 2, 0, 1, 2, 0, 0, -1, 0),
(3, 'Dhaka Community Hospital', 1, 0, 0, 0, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `donate`
--

CREATE TABLE `donate` (
  `Sl_No` int(3) NOT NULL,
  `Donor_Id` int(3) DEFAULT NULL,
  `Donor_Name` varchar(50) NOT NULL,
  `Request_Id` int(3) DEFAULT NULL,
  `Request_Name` varchar(50) NOT NULL,
  `Donate_Blood` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donate`
--

INSERT INTO `donate` (`Sl_No`, `Donor_Id`, `Donor_Name`, `Request_Id`, `Request_Name`, `Donate_Blood`) VALUES
(1, 1, '', 3, '', 'O+'),
(2, 4, 'Zidan', 2, 'Ifti', 'A-');

-- --------------------------------------------------------

--
-- Table structure for table `donate_hospital`
--

CREATE TABLE `donate_hospital` (
  `SL_NO` int(3) NOT NULL,
  `Donor_Id` int(3) DEFAULT NULL,
  `Donor_Name` varchar(50) DEFAULT NULL,
  `Hospital_Id` int(3) DEFAULT NULL,
  `Hospital_Name` varchar(50) DEFAULT NULL,
  `Donate_Blood` varchar(4) DEFAULT NULL,
  `Date` date NOT NULL DEFAULT current_timestamp(),
  `Time` time NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donate_hospital`
--

INSERT INTO `donate_hospital` (`SL_NO`, `Donor_Id`, `Donor_Name`, `Hospital_Id`, `Hospital_Name`, `Donate_Blood`, `Date`, `Time`) VALUES
(1, 3, 'Rashadujjaman Rafi', 2, 'Khawja Yunus Ali Medical College and Hospital', 'A+', '2022-02-20', '07:50:50'),
(2, 3, 'Rashadujjaman Rafi', 2, 'Khawja Yunus Ali Medical College and Hospital', 'A+', '2022-02-21', '08:18:42'),
(3, 2, 'Ifti', 1, 'Dhaka Medical College Hospital', 'O+', '2022-02-21', '08:25:11'),
(4, 5, 'Wanda Jackson', 1, 'Dhaka Medical College Hospital', 'B+', '2022-02-21', '09:01:50'),
(5, 3, 'Rashadujjaman Rafi', 1, 'null', 'A+', '2022-02-22', '08:04:08'),
(6, 3, 'Rashadujjaman Rafi', 1, 'null', 'A+', '2022-02-22', '08:16:14'),
(7, 3, 'Rashadujjaman Rafi', 1, 'null', 'A+', '2022-02-22', '08:20:49'),
(8, 3, 'Rashadujjaman Rafi', 1, 'null', 'A+', '2022-02-22', '09:00:40'),
(9, 3, 'Rashadujjaman Rafi', 1, 'Dhaka Medical College Hospital', 'A+', '2022-02-22', '09:10:58'),
(10, 6, 'Carol', 2, 'Khawja Yunus Ali Medical College and Hospital', 'B-', '2022-02-22', '09:26:25'),
(11, 6, 'Carol', 1, 'Dhaka Medical College Hospital', 'B-', '2022-02-23', '06:41:24'),
(12, 6, 'Carol', 1, 'Dhaka Medical College Hospital', 'B-', '2022-02-23', '06:44:33'),
(13, 4, 'Zidan', 2, 'Khawja Yunus Ali Medical College and Hospital', 'A-', '2022-02-23', '06:49:16'),
(14, 4, 'Zidan', 1, 'Dhaka Medical College Hospital', 'A-', '2022-02-23', '06:57:02'),
(15, 1, 'Rubayet', 1, 'Dhaka Medical College Hospital', 'O+', '2022-02-23', '07:01:31'),
(16, 5, 'Wanda Jackson', 2, 'Khawja Yunus Ali Medical College and Hospital', 'B+', '2022-02-23', '07:09:53'),
(17, 2, 'Ifti', 1, 'Dhaka Medical College Hospital', 'O+', '2022-02-23', '07:13:24'),
(18, 6, 'Carol', 1, 'Dhaka Medical College Hospital', 'B-', '2022-02-23', '07:15:30'),
(19, 3, 'Rashadujjaman Rafi', 1, 'Dhaka Medical College Hospital', 'A+', '2022-02-23', '07:18:16'),
(20, 6, 'Carol', 2, 'Khawja Yunus Ali Medical College and Hospital', 'B-', '2022-02-23', '07:26:55'),
(21, 2, 'Ifti', 1, 'Dhaka Medical College Hospital', 'O+', '2022-02-27', '07:06:41'),
(22, 1, 'Rubayet', 3, 'Dhaka Community Hospital', 'O+', '2022-02-27', '07:21:43'),
(23, 3, 'Rashadujjaman Rafi', 3, 'Dhaka Community Hospital', 'A+', '2022-02-27', '07:47:44');

-- --------------------------------------------------------

--
-- Table structure for table `donor_details`
--

CREATE TABLE `donor_details` (
  `Id` int(3) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Address` varchar(150) NOT NULL,
  `Phone` varchar(11) NOT NULL,
  `Sex` varchar(6) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Blood_Group` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donor_details`
--

INSERT INTO `donor_details` (`Id`, `Name`, `Address`, `Phone`, `Sex`, `Email`, `Password`, `Blood_Group`) VALUES
(1, 'Rubayet', 'Sirajganj', '01744196827', 'Male', 'rubayetislam16@gmail.com', '85231', 'O+'),
(2, 'Ifti', 'Dhaka', '01642889275', 'Male', '19201103052@cse.bubt.edu.bd', '52', 'O+'),
(3, 'Rashadujjaman Rafi', 'Rajshahi', '01685711629', 'Male', 'gh', '23', 'A+'),
(4, 'Zidan', 'Dhaka', '852321456', 'Male', 'zidan@gmail.com', 'zid', 'A-'),
(5, 'Wanda Jackson', 'New York', '852123654', 'Male', 'wanda22@gmail.com', '2022', 'B+'),
(6, 'Carol', 'Connecticut', '456321', 'Female', 'gf', '85', 'B-');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `hospital_id` int(3) NOT NULL,
  `hospital_name` varchar(50) DEFAULT NULL,
  `City` varchar(50) NOT NULL,
  `hospital_email` varchar(50) DEFAULT NULL,
  `hospital_password` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`hospital_id`, `hospital_name`, `City`, `hospital_email`, `hospital_password`) VALUES
(1, 'Dhaka Medical College Hospital', 'Dhaka', 'dmc@gmail.govt.bd', 'dmc1234'),
(2, 'Khawja Yunus Ali Medical College and Hospital', 'Sirajganj', 'khawja@gmail.com', 'khawja12'),
(3, 'Dhaka Community Hospital', 'Dhaka', 'dch@gmail.com', 'dch1234');

-- --------------------------------------------------------

--
-- Table structure for table `request_hospital`
--

CREATE TABLE `request_hospital` (
  `SL_NO` int(3) NOT NULL,
  `Request_Id` int(3) DEFAULT NULL,
  `Request_Name` varchar(50) DEFAULT NULL,
  `Hospital_Id` int(3) DEFAULT NULL,
  `Hospital_Name` varchar(100) DEFAULT NULL,
  `Request_Blood` varchar(4) DEFAULT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request_hospital`
--

INSERT INTO `request_hospital` (`SL_NO`, `Request_Id`, `Request_Name`, `Hospital_Id`, `Hospital_Name`, `Request_Blood`, `Date`, `Time`) VALUES
(1, 6, 'Carol', 1, 'Dhaka Medical College Hospital', 'B-', '2022-02-26', '07:27:29'),
(2, 4, 'Zidan', 2, 'Khawja Yunus Ali Medical College and Hospital', 'A-', '2022-02-26', '08:36:01'),
(3, 2, 'Ifti', 2, 'Khawja Yunus Ali Medical College and Hospital', 'O+', '2022-02-27', '07:06:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood_stock`
--
ALTER TABLE `blood_stock`
  ADD KEY `Hospital_Id` (`Hospital_Id`);

--
-- Indexes for table `donate`
--
ALTER TABLE `donate`
  ADD PRIMARY KEY (`Sl_No`),
  ADD KEY `Donor_Id` (`Donor_Id`),
  ADD KEY `Request_Id` (`Request_Id`);

--
-- Indexes for table `donate_hospital`
--
ALTER TABLE `donate_hospital`
  ADD PRIMARY KEY (`SL_NO`),
  ADD KEY `Donor_Id` (`Donor_Id`),
  ADD KEY `Hospital_Id` (`Hospital_Id`);

--
-- Indexes for table `donor_details`
--
ALTER TABLE `donor_details`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`hospital_id`);

--
-- Indexes for table `request_hospital`
--
ALTER TABLE `request_hospital`
  ADD PRIMARY KEY (`SL_NO`),
  ADD KEY `Request_Id` (`Request_Id`),
  ADD KEY `Hospital_Id` (`Hospital_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donate`
--
ALTER TABLE `donate`
  MODIFY `Sl_No` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `donor_details`
--
ALTER TABLE `donor_details`
  MODIFY `Id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `hospital_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blood_stock`
--
ALTER TABLE `blood_stock`
  ADD CONSTRAINT `blood_stock_ibfk_1` FOREIGN KEY (`Hospital_Id`) REFERENCES `hospital` (`hospital_id`) ON DELETE SET NULL;

--
-- Constraints for table `donate`
--
ALTER TABLE `donate`
  ADD CONSTRAINT `donate_ibfk_1` FOREIGN KEY (`Donor_Id`) REFERENCES `donor_details` (`Id`) ON DELETE SET NULL,
  ADD CONSTRAINT `donate_ibfk_2` FOREIGN KEY (`Request_Id`) REFERENCES `donor_details` (`Id`) ON DELETE SET NULL;

--
-- Constraints for table `donate_hospital`
--
ALTER TABLE `donate_hospital`
  ADD CONSTRAINT `donate_hospital_ibfk_1` FOREIGN KEY (`Donor_Id`) REFERENCES `donor_details` (`Id`) ON DELETE SET NULL,
  ADD CONSTRAINT `donate_hospital_ibfk_2` FOREIGN KEY (`Hospital_Id`) REFERENCES `hospital` (`hospital_id`) ON DELETE SET NULL;

--
-- Constraints for table `request_hospital`
--
ALTER TABLE `request_hospital`
  ADD CONSTRAINT `request_hospital_ibfk_1` FOREIGN KEY (`Request_Id`) REFERENCES `donor_details` (`Id`) ON DELETE SET NULL,
  ADD CONSTRAINT `request_hospital_ibfk_2` FOREIGN KEY (`Hospital_Id`) REFERENCES `hospital` (`hospital_id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
