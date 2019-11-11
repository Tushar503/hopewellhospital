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

-- Dumping data for table hopewelldb.managerapp_department: 4 rows
/*!40000 ALTER TABLE `managerapp_department` DISABLE KEYS */;
INSERT INTO `managerapp_department` (`depttId`, `depttName`, `isActive`) VALUES
	(1, 'Radiology', 1),
	(2, 'dermatology', 1),
	(4, 'Cardiology', 1),
	(5, 'Brain & Spine', 1);
/*!40000 ALTER TABLE `managerapp_department` ENABLE KEYS */;

-- Dumping data for table hopewelldb.managerapp_loginrecords: 61 rows
/*!40000 ALTER TABLE `managerapp_loginrecords` DISABLE KEYS */;
INSERT INTO `managerapp_loginrecords` (`loginId`, `loginTime`, `logoutTime`, `userId`, `ip_address`, `mac_address`) VALUES
	(1, '2019-10-22 14:00:07.180948', '', '', '192.168.80.1', '0x40b034be4d4b'),
	(2, '2019-10-23 09:17:28.666558', '', '', '192.168.80.1', '0x40b034be4d4b'),
	(3, '2019-10-23 09:20:20.231945', '', '', '192.168.80.1', '0x40b034be4d4b'),
	(4, '2019-10-23 09:21:32.080611', '', 'upasnabhat17@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(5, '2019-10-23 10:17:30.236222', '', 'upasnabhat17@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(6, '2019-10-23 11:03:26.327876', '', 'upasnabhat17@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(7, '2019-10-23 11:56:01.186157', '', 'upasnabhat17@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(8, '2019-10-23 12:04:26.823630', '', 'upasnabhat17@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(9, '2019-10-23 12:07:03.418030', '', 'upasnabhat17@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(10, '2019-10-23 12:16:46.311977', '', 'upasnabhat17@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(11, '2019-10-23 12:21:51.148167', '', 'upasnabhat17@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(12, '2019-10-23 13:24:54.979350', '', 'upasnabhat17@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(13, '2019-10-23 13:29:21.742311', '', 'upasnabhat17@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(14, '2019-10-23 13:32:53.420472', '', 'upasnabhat17@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(15, '2019-10-23 13:38:33.283039', '', 'upasnabhat17@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(16, '2019-10-23 13:40:41.902425', '', 'upasnabhat17@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(17, '2019-10-24 09:06:14.470881', '', 'upasnabhat17@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(18, '2019-10-24 09:29:58.385174', '', 'upasnabhat17@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(19, '2019-10-24 09:54:50.099946', '', 'upasnabhat17@gmail.com', '192.168.80.1', '0x3ea067df4f8d'),
	(20, '2019-10-24 11:51:20.976591', '', 'upasnabhat17@gmail.com', '192.168.80.1', '0x3ea067df4f8d'),
	(21, '2019-10-24 11:56:49.600428', '', 'upasnabhat17@gmail.com', '192.168.80.1', '0x3ea067df4f8d'),
	(22, '2019-10-24 11:58:48.404591', '', 'upasnabhat17@gmail.com', '192.168.80.1', '0x3ea067df4f8d'),
	(23, '2019-10-24 12:19:32.522955', '', 'upasnabhat17@gmail.com', '192.168.80.1', '0x3ea067df4f8d'),
	(24, '2019-10-26 18:35:37.040646', '2019-10-26 18:35:47.201477', 'upasnabhat17@gmail.com', '192.168.80.1', '0x3ca067df4f8d'),
	(25, '2019-10-26 20:31:10.129550', '', 'upasnabhat17@gmail.com', '192.168.80.1', '0x3ca067df4f8d'),
	(26, '2019-10-26 20:54:08.927470', '2019-10-26 20:54:12.499918', 'upasnabhat17@gmail.com', '192.168.80.1', '0x3ca067df4f8d'),
	(27, '2019-10-28 18:27:16.124000', '2019-10-28 18:27:43.974532', 'upasnabhat17@gmail.com', '192.168.80.1', '0x3ca067df4f8d'),
	(28, '2019-10-28 19:58:49.449589', '2019-10-28 19:59:27.769090', 'upasnabhat17@gmail.com', '192.168.80.1', '0x3ca067df4f8d'),
	(29, '2019-10-28 20:01:27.534859', '2019-10-28 20:01:33.251574', 'upasnabhat17@gmail.com', '192.168.80.1', '0x3ca067df4f8d'),
	(30, '2019-10-28 20:03:13.726923', '2019-10-28 20:03:16.686013', 'upasnabhat17@gmail.com', '192.168.80.1', '0x3ca067df4f8d'),
	(31, '2019-11-06 09:37:37.577540', '2019-11-06 09:37:44.565855', 'upasnabhat17@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(32, '2019-11-06 11:32:35.757962', '2019-11-06 11:36:58.998870', 'upasnabhat17@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(33, '2019-11-06 11:54:53.075845', '', 'upasnabhat17@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(34, '2019-11-06 12:07:05.993052', '2019-11-06 12:08:52.155725', 'upasnabhat17@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(35, '2019-11-07 09:55:29.488552', '', 'tusharsaini503@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(36, '2019-11-07 10:06:27.900677', '', 'tusharsaini503@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(37, '2019-11-07 10:30:20.397292', '', 'tusharsaini503@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(38, '2019-11-07 11:14:27.274681', '', 'upasnabhat17@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(39, '2019-11-07 11:22:23.438682', '', 'tusharsaini503@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(40, '2019-11-07 11:57:32.922253', '', 'tusharsaini503@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(41, '2019-11-07 12:00:19.857974', '', 'tusharsaini503@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(42, '2019-11-07 12:04:51.155695', '', 'tusharsaini503@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(43, '2019-11-07 12:16:35.468805', '', 'tusharsaini503@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(44, '2019-11-07 12:48:29.225627', '', 'tusharsaini503@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(45, '2019-11-07 12:58:38.976570', '', 'upasnabhat17@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(46, '2019-11-07 13:00:53.178740', '', 'vaishalisaini3421@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(47, '2019-11-07 13:36:43.470679', '', 'tusharsaini503@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(48, '2019-11-07 13:45:16.445307', '', 'tusharsaini503@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(49, '2019-11-08 09:20:38.769669', '', 'tusharsaini503@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(50, '2019-11-08 09:25:59.073374', '', 'tusharsaini503@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(51, '2019-11-08 09:31:30.591083', '', 'upasnabhat17@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(52, '2019-11-08 09:33:09.764944', '', 'tusharsaini503@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(53, '2019-11-08 10:29:22.976111', '', 'upasnabhat17@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(54, '2019-11-08 11:46:43.333783', '', 'upasnabhat17@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(55, '2019-11-11 08:53:25.898379', '', 'vaishalisaini3421@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(56, '2019-11-11 09:10:03.246132', '', 'rajanynrsaini503@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(57, '2019-11-11 09:10:10.804892', '', 'rajanynrsaini503@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(58, '2019-11-11 09:10:32.093980', '', 'vaishalisaini3421@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(59, '2019-11-11 09:11:09.978699', '', 'vaishalisaini3421@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(60, '2019-11-11 12:42:47.044072', '', 'vaishalisaini3421@gmail.com', '192.168.80.1', '0x40b034be4d4b'),
	(61, '2019-11-11 12:50:30.879052', '', 'vaishalisaini3421@gmail.com', '192.168.80.1', '0x40b034be4d4b');
/*!40000 ALTER TABLE `managerapp_loginrecords` ENABLE KEYS */;

-- Dumping data for table hopewelldb.myuserapp_contactus: 0 rows
/*!40000 ALTER TABLE `myuserapp_contactus` DISABLE KEYS */;
/*!40000 ALTER TABLE `myuserapp_contactus` ENABLE KEYS */;

-- Dumping data for table hopewelldb.myuserapp_userrole: 4 rows
/*!40000 ALTER TABLE `myuserapp_userrole` DISABLE KEYS */;
INSERT INTO `myuserapp_userrole` (`roleId`, `rolName`, `isActive`) VALUES
	(1, 'Manager', 1),
	(2, 'Doctors', 1),
	(3, 'patients', 1),
	(4, 'Staff', 1);
/*!40000 ALTER TABLE `myuserapp_userrole` ENABLE KEYS */;

-- Dumping data for table hopewelldb.myuserapp_usersignup: 4 rows
/*!40000 ALTER TABLE `myuserapp_usersignup` DISABLE KEYS */;
INSERT INTO `myuserapp_usersignup` (`userFullName`, `userEmail`, `userPassword`, `userMobile`, `userAge`, `userAddress`, `userCity`, `userState`, `isActive`, `roleId_id`, `isVerified`, `userConfirmationlink`, `userOtp`, `userOtptime`, `isAvailable`, `isQueue`, `userToken`, `userImage`) VALUES
	('upasna', 'upasnabhat17@gmail.com', 'pbkdf2_sha256$100000$2bOEIUmnMQmX$zvybA+8ohU5bZNmFhK9Y9xK8mfmAiwjsITp0RZh44UI=', '3445', '22', 'ergtr', 'grgt', 'hgdd', 1, 1, 0, 'http://127.0.0.1:8000/verified/?email=upasnabhat17@gmail.com&token=g47625Q', 'g47625Q', '2019-11-11 08:46:10.108414', 1, 0, 'g47625Q', 'dwnldpic1.jpg'),
	('tushar', 'tusharsaini503@gmail.com', 'pbkdf2_sha256$100000$QsWxHTKQUXC0$0RzqeYjMOFoluUwHLH1ycZuloCVNJRrpRbGzGnK19Oc=', '45676', '23', 'reffhyj', 'jhgvjdfh', 'fghd', 1, 2, 0, 'http://127.0.0.1:8000/verified/?email=tusharsaini503@gmail.com&token=u95479y', 'u95479y', '2019-11-11 08:48:46.464442', 1, 0, 'u95479y', 'dwnldpic4.jpg'),
	('vishul', 'vaishalisaini3421@gmail.com', 'pbkdf2_sha256$100000$vzmJNBKEzwiN$/Od6Mjq1c+wMgiCWA5L2VHofe4uocwXf+zR4WOgDano=', '5748', '32', 'fwe', 'trf', 'efrf', 1, 3, 0, 'http://127.0.0.1:8000/verified/?email=vaishalisaini3421@gmail.com&token=w53802u', 'w53802u', '2019-11-11 08:50:45.659756', 1, 0, 'w53802u', 'dwnld pics.jpg'),
	('rajan', 'rajanynrsaini503@gmail.com', 'pbkdf2_sha256$100000$Jv7bsUUD0t0V$XIqADvM6011iubQJgBW4ov+jY49SH3XiafSOs84ebZw=', '344', '22', 'frsc', 'fvnr', 'gr', 1, 4, 0, 'http://127.0.0.1:8000/verified/?email=rajanynrsaini503@gmail.com&token=u27398u', 'u27398u', '2019-11-11 08:51:38.448634', 1, 0, 'u27398u', 'dwnldpic4.jpg');
/*!40000 ALTER TABLE `myuserapp_usersignup` ENABLE KEYS */;

-- Dumping data for table hopewelldb.staffapp_appointment: 2 rows
/*!40000 ALTER TABLE `staffapp_appointment` DISABLE KEYS */;
INSERT INTO `staffapp_appointment` (`userEmail`, `Department_id`, `AppointmentDate`, `isActive`, `isQueue`, `DoctorEmail_id`) VALUES
	('tusharsaini503@gmail.com', 4, '2019-10-29', 1, 0, ''),
	('vaishalisaini3421@gmail.com', 1, '', 1, 0, 'rajanynrsaini503@gmail.com');
/*!40000 ALTER TABLE `staffapp_appointment` ENABLE KEYS */;

-- Dumping data for table hopewelldb.staffapp_staff: 4 rows
/*!40000 ALTER TABLE `staffapp_staff` DISABLE KEYS */;
INSERT INTO `staffapp_staff` (`userFullName`, `userEmail`, `userPassword`, `userMobile`, `userAge`, `userAddress`, `userCity`, `userState`, `userImage`, `isActive`, `userOtp`, `userOtptime`, `userToken`, `isAvailable`, `isQueue`, `isVerified`, `depttId_id`, `roleId`, `isBooked`) VALUES
	('tushar', 'tusharsaini503@gmail.com', 'pbkdf2_sha256$100000$mfoSvbLSYgJ6$j4aD1S6ke1sYZ8FJV8+1nKQASYxGchwhX8nmPn6ZY+0=', '33', '22', 'jhkhkhxd', 'smh', 'dgsgsg', 'img5.jpg', 1, '', '', '', 1, 0, 0, 1, '', 0),
	('VISHUL', 'upasnabhat17@gmail.com', 'pbkdf2_sha256$100000$08HWIOp5rXTV$XhWSf7dQTb1KbOJMpSbpz8na0ap33qkUmoTJYWQwVRw=', '433', '22', 'drgjnd', 'djfdj', 'kjfnkj', 'img6.jpg', 1, '', '', '', 1, 0, 0, 1, '', 0),
	('vishul', 'vaishalisaini3421@gmail.com', 'pbkdf2_sha256$100000$blJbb7gkovSQ$Bht2IZp5/mBXdrTeMtynDKCtOcghxkbmdJjTHyhG79E=', '3456', '33', 'tgrsgttrg', 'rgtgr', 'fr', 'dwnldpic1.jpg', 1, '', ' ', '', 1, 0, 0, 1, '4', 0),
	('rajan', 'rajanynrsaini503@gmail.com', 'pbkdf2_sha256$100000$fx3UOn9AyL70$MHeUAXPdvb/aOK9QYRdLqT0sEjypCvzTuvvCVfECENo=', '4566', '22', '6trgeff', 'gddfgh', 'hntgrf', 'dwnldpic4.jpg', 1, '', ' ', '', 1, 0, 0, 2, '2', 0);
/*!40000 ALTER TABLE `staffapp_staff` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
