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

-- Dumping structure for table hopewelldb.staffapp_appointment
CREATE TABLE IF NOT EXISTS `staffapp_appointment` (
  `userEmail` varchar(200) NOT NULL,
  `AppointmentDate` varchar(200) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `isQueue` tinyint(1) NOT NULL,
  `Department_id` int(11) NOT NULL,
  `DoctorEmail_id` varchar(200) NOT NULL,
  `isDiagonal` tinyint(1) NOT NULL,
  PRIMARY KEY (`userEmail`),
  KEY `staffapp_appointment_Department_id_8dc97477_fk_managerap` (`Department_id`),
  KEY `staffapp_appointment_DoctorEmail_id_2ab74763_fk_staffapp_` (`DoctorEmail_id`),
  CONSTRAINT `staffapp_appointment_Department_id_8dc97477_fk_managerap` FOREIGN KEY (`Department_id`) REFERENCES `managerapp_department` (`depttId`),
  CONSTRAINT `staffapp_appointment_DoctorEmail_id_2ab74763_fk_staffapp_` FOREIGN KEY (`DoctorEmail_id`) REFERENCES `staffapp_staff` (`userEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table hopewelldb.staffapp_appointment: ~2 rows (approximately)
/*!40000 ALTER TABLE `staffapp_appointment` DISABLE KEYS */;
INSERT INTO `staffapp_appointment` (`userEmail`, `AppointmentDate`, `isActive`, `isQueue`, `Department_id`, `DoctorEmail_id`, `isDiagonal`) VALUES
	('tusharsaini503@gmail.com', '2019-10-29', 1, 1, 4, '', 1),
	('vaishalisaini3421@gmail.com', '2019-11-13', 1, 1, 4, 'tusharsaini503@gmail.com', 1);
/*!40000 ALTER TABLE `staffapp_appointment` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
