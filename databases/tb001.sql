-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.48 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5222
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for hopewelldb
CREATE DATABASE IF NOT EXISTS `hopewelldb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `hopewelldb`;

-- Dumping structure for table hopewelldb.myuserapp_userrole
CREATE TABLE IF NOT EXISTS `myuserapp_userrole` (
  `roleId` int(11) NOT NULL AUTO_INCREMENT,
  `rolName` varchar(200) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table hopewelldb.myuserapp_userrole: ~3 rows (approximately)
/*!40000 ALTER TABLE `myuserapp_userrole` DISABLE KEYS */;
INSERT INTO `myuserapp_userrole` (`roleId`, `rolName`, `isActive`) VALUES
	(1, 'Manager', 1),
	(2, 'Doctors', 1),
	(3, 'patients', 1);
/*!40000 ALTER TABLE `myuserapp_userrole` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
