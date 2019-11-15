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

-- Dumping structure for table hopewelldb.myuserapp_usersignup
CREATE TABLE IF NOT EXISTS `myuserapp_usersignup` (
  `userFullName` varchar(200) NOT NULL,
  `userEmail` varchar(200) NOT NULL,
  `userPassword` varchar(2000) NOT NULL,
  `userMobile` varchar(200) NOT NULL,
  `userAge` varchar(3) NOT NULL,
  `userAddress` varchar(500) NOT NULL,
  `userCity` varchar(100) NOT NULL,
  `userState` varchar(200) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `roleId_id` int(11) NOT NULL,
  `isVerified` tinyint(1) NOT NULL,
  `userConfirmationlink` varchar(200) NOT NULL,
  `userOtp` varchar(10) NOT NULL,
  `userOtptime` varchar(200) NOT NULL,
  `isAvailable` tinyint(1) NOT NULL,
  `isQueue` tinyint(1) NOT NULL,
  `userToken` varchar(200) NOT NULL,
  `userImage` varchar(200) NOT NULL,
  PRIMARY KEY (`userEmail`),
  KEY `MyUserApp_usersignup_roleId_id_f3ef3ccb_fk_MyUserApp` (`roleId_id`),
  CONSTRAINT `MyUserApp_usersignup_roleId_id_f3ef3ccb_fk_MyUserApp` FOREIGN KEY (`roleId_id`) REFERENCES `myuserapp_userrole` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table hopewelldb.myuserapp_usersignup: ~6 rows (approximately)
/*!40000 ALTER TABLE `myuserapp_usersignup` DISABLE KEYS */;
INSERT INTO `myuserapp_usersignup` (`userFullName`, `userEmail`, `userPassword`, `userMobile`, `userAge`, `userAddress`, `userCity`, `userState`, `isActive`, `roleId_id`, `isVerified`, `userConfirmationlink`, `userOtp`, `userOtptime`, `isAvailable`, `isQueue`, `userToken`, `userImage`) VALUES
	('Hopewell', 'rajanynrsaini@gmail.com', 'pbkdf2_sha256$100000$jSOXfqynFbFh$iFRlTpvTid+/mBqq+VmNXrczPRLs3e/0l9dfnUkmKc0=', '9518837699', '20', 'SARSWATI GALI V.P..O-MUSTAFABAD', 'YAMUNANAGAR', 'HARYANA', 1, 2, 0, 'http://127.0.0.1:8000/verified/?email=rajanynrsaini@gmail.com&token=H10363u', 'H10363u', '2019-10-15 23:53:15.615019', 1, 0, 'H10363u', 'photo'),
	('jyuyy', 'sainimanraj01@gmail.com', 'tyuryyuru', '9518837699', '45', 'MUSTAFABAD', 'YAMUN', 'HARYANA', 1, 1, 0, 'http://127.0.0.1:8000/verifyuser/?email=sainimanraj01@gmail.com&token=j89654X', 'j89654X', '2019-10-09 11:48:06.145232', 1, 0, 'j89654X', ''),
	('', 'tusharsaini503@gmail.com', 'pbkdf2_sha256$100000$3J5jHmgb4Aam$hP4dKL7kW0QbW5i/fmCv6rkd/YVEatIuxIobi0iqwiM=', '9518837699', '23', 'SARSWATI GALI V.P..O-MUSTAFABAD', 'YAMUNANAGAR', 'HARYANA', 1, 2, 0, 'http://127.0.0.1:8000/verified/?email=tusharsaini503@gmail.com&token=P76509G', 'P76509G', '2019-10-15 23:52:30.697635', 1, 0, 'P76509G', 'photo'),
	('hdff', 'upasnabhat17@gmail.com', 'pbkdf2_sha256$100000$A3k7qGPM2Vqn$g5CW7Sjyfo1ctwxGH6OyyBxRRj8Kj7RvHKSLQswyyTw=', '9518837699', '25', 'SARSWATI GALI V.P..O-MUSTAFABAD', 'YA', 'HARYANA', 1, 1, 0, 'http://127.0.0.1:8000/verifyuser/?email=upasnabhat17@gmail.com&token=J31638F', 'J31638F', '2019-10-09 21:14:45.240649', 1, 0, 'J31638F', ''),
	('vaishali', 'vaishalisaini3421@gmail.com', 'vaishali@123', '9518837699', '34', 'SARSWATI GALI V.P..O-MUSTAFABAD', 'YAMU', 'HARYANA', 1, 3, 0, 'fbfbb', '123', '23', 1, 0, '23', ''),
	('hopewell', 'vishul.chauhan000@gmail.com', 'pbkdf2_sha256$100000$mKUUy7vg7L84$z+7cxpUrR4QkBESHSrJFGPTMOuatNfDDD3aRN9rBHpA=', '9518837699', '23', 'SARSWATI GALI V.P..O-MUSTAFABAD', 'YAMUNA', 'HARYANA', 1, 1, 0, 'http://127.0.0.1:8000/verifyuser/?email=vishul.chauhan000@gmail.com&token=a49776i', 'a49776i', '2019-10-10 08:23:17.424822', 1, 0, 'a49776i', '');
/*!40000 ALTER TABLE `myuserapp_usersignup` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
myuserapp_usersignupstaffapp_staffmanagerapp_loginrecordshopewelldbauth_user