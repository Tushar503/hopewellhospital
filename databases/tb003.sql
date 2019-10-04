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

DROP TABLE myuserapp_usersignup

-- Dumping structure for table hopewelldb.myuserapp_usersignup
CREATE TABLE IF NOT EXISTS `myuserapp_usersignup` (
  `userFullName` varchar(200) NOT NULL,
  `userEmail` varchar(200) NOT NULL,
  `userPassword` varchar(200) NOT NULL,
  `userMobile` varchar(200) NOT NULL,
  `userAge` varchar(10) NOT NULL,
  `userAddress` varchar(500) NOT NULL,
  `UserCity` varchar(10) NOT NULL,
  `UserState` varchar(200) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `roleId_id` int(11) NOT NULL,
  `isVerified` tinyint(1) NOT NULL,
  `userConfirmationlink` varchar(200) NOT NULL,
  `userOtp` varchar(10) NOT NULL,
  `userOtptime` varchar(200) NOT NULL,
  PRIMARY KEY (`userEmail`),
  KEY `MyUserApp_usersignup_roleId_id_f3ef3ccb_fk_MyUserApp` (`roleId_id`),
  CONSTRAINT `MyUserApp_usersignup_roleId_id_f3ef3ccb_fk_MyUserApp` FOREIGN KEY (`roleId_id`) REFERENCES `myuserapp_userrole` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
