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

-- Dumping structure for table hopewelldb.managerapp_loginrecords
CREATE TABLE IF NOT EXISTS `managerapp_loginrecords` (
  `loginId` int(11) NOT NULL AUTO_INCREMENT,
  `loginTime` varchar(50) NOT NULL,
  `logoutTime` varchar(50) NOT NULL,
  `userId` varchar(50) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `mac_address` varchar(50) NOT NULL,
  PRIMARY KEY (`loginId`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table hopewelldb.managerapp_loginrecords: 1 rows
/*!40000 ALTER TABLE `managerapp_loginrecords` DISABLE KEYS */;
INSERT INTO `managerapp_loginrecords` (`loginId`, `loginTime`, `logoutTime`, `userId`, `ip_address`, `mac_address`) VALUES
	(1, '2019-10-22 14:00:07.180948', '', '', '192.168.80.1', '0x40b034be4d4b');
/*!40000 ALTER TABLE `managerapp_loginrecords` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
