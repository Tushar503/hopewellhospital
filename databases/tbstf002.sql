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

-- Dumping structure for table hopewelldb.staffapp_staff
CREATE TABLE IF NOT EXISTS `staffapp_staff` (
  `userFullName` varchar(200) NOT NULL,
  `userEmail` varchar(200) NOT NULL,
  `userPassword` varchar(200) NOT NULL,
  `userMobile` varchar(200) NOT NULL,
  `userAge` varchar(10) NOT NULL,
  `userAddress` varchar(500) NOT NULL,
  `userCity` varchar(10) NOT NULL,
  `userState` varchar(200) NOT NULL,
  `userImage` varchar(200) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `userOtp` varchar(10) NOT NULL,
  `userOtptime` varchar(200) NOT NULL,
  `userToken` varchar(200) NOT NULL,
  `isAvailable` tinyint(1) NOT NULL,
  `isQueue` tinyint(1) NOT NULL,
  `isVerified` tinyint(1) NOT NULL,
  `depttId_id` int(11) NOT NULL,
  `userPost` varchar(200) NOT NULL,
  PRIMARY KEY (`userEmail`),
  KEY `staffapp_staff_depttId_id_c5de3f3b` (`depttId_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table hopewelldb.staffapp_staff: 1 rows
/*!40000 ALTER TABLE `staffapp_staff` DISABLE KEYS */;
INSERT INTO `staffapp_staff` (`userFullName`, `userEmail`, `userPassword`, `userMobile`, `userAge`, `userAddress`, `userCity`, `userState`, `userImage`, `isActive`, `userOtp`, `userOtptime`, `userToken`, `isAvailable`, `isQueue`, `isVerified`, `depttId_id`, `userPost`) VALUES
	('tushar', 'tusharsaini503@gmail.com', 'pbkdf2_sha256$100000$mfoSvbLSYgJ6$j4aD1S6ke1sYZ8FJV8+1nKQASYxGchwhX8nmPn6ZY+0=', '33', '22', 'jhkhkhxd', 'smh', 'dgsgsg', 'img5.jpg', 1, '', '', '', 1, 0, 0, 1, '');
/*!40000 ALTER TABLE `staffapp_staff` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
