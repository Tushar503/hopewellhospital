-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.21 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for hopewelldb
CREATE DATABASE IF NOT EXISTS `hopewelldb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `hopewelldb`;

-- Dumping structure for table hopewelldb.staffapp_appointment
CREATE TABLE IF NOT EXISTS `staffapp_appointment` (
  `userEmail` varchar(200) NOT NULL,
  `userName` varchar(200) NOT NULL,
  `userMobile` varchar(200) NOT NULL,
  `userAddress` varchar(500) NOT NULL,
  `userCity` varchar(10) NOT NULL,
  `userState` varchar(200) NOT NULL,
  `userDisease` varchar(200) NOT NULL,
  `Department` varchar(200) NOT NULL,
  `DoctorName` varchar(200) NOT NULL,
  `AppointmentDate` varchar(200) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `isQueue` tinyint(1) NOT NULL,
  `userAge` varchar(10) NOT NULL,
  PRIMARY KEY (`userEmail`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
