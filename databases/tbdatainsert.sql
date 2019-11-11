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

-- Dumping data for table hopewelldb.auth_group: 0 rows
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

-- Dumping data for table hopewelldb.auth_group_permissions: 0 rows
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

-- Dumping data for table hopewelldb.auth_permission: 39 rows
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can add permission', 2, 'add_permission'),
	(5, 'Can change permission', 2, 'change_permission'),
	(6, 'Can delete permission', 2, 'delete_permission'),
	(7, 'Can add group', 3, 'add_group'),
	(8, 'Can change group', 3, 'change_group'),
	(9, 'Can delete group', 3, 'delete_group'),
	(10, 'Can add user', 4, 'add_user'),
	(11, 'Can change user', 4, 'change_user'),
	(12, 'Can delete user', 4, 'delete_user'),
	(13, 'Can add content type', 5, 'add_contenttype'),
	(14, 'Can change content type', 5, 'change_contenttype'),
	(15, 'Can delete content type', 5, 'delete_contenttype'),
	(16, 'Can add session', 6, 'add_session'),
	(17, 'Can change session', 6, 'change_session'),
	(18, 'Can delete session', 6, 'delete_session'),
	(19, 'Can add department', 8, 'add_department'),
	(20, 'Can change department', 8, 'change_department'),
	(21, 'Can delete department', 8, 'delete_department'),
	(22, 'Can add staff', 9, 'add_staff'),
	(23, 'Can change staff', 9, 'change_staff'),
	(24, 'Can delete staff', 9, 'delete_staff'),
	(25, 'Can add loginrecords', 10, 'add_loginrecords'),
	(26, 'Can change loginrecords', 10, 'change_loginrecords'),
	(27, 'Can delete loginrecords', 10, 'delete_loginrecords'),
	(28, 'Can add appointment', 11, 'add_appointment'),
	(29, 'Can change appointment', 11, 'change_appointment'),
	(30, 'Can delete appointment', 11, 'delete_appointment'),
	(31, 'Can add user role', 7, 'add_userrole'),
	(32, 'Can change user role', 7, 'change_userrole'),
	(33, 'Can delete user role', 7, 'delete_userrole'),
	(34, 'Can add user signup', 12, 'add_usersignup'),
	(35, 'Can change user signup', 12, 'change_usersignup'),
	(36, 'Can delete user signup', 12, 'delete_usersignup'),
	(37, 'Can add contact us', 13, 'add_contactus'),
	(38, 'Can change contact us', 13, 'change_contactus'),
	(39, 'Can delete contact us', 13, 'delete_contactus');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

-- Dumping data for table hopewelldb.auth_user: 1 rows
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$100000$A3k7qGPM2Vqn$g5CW7Sjyfo1ctwxGH6OyyBxRRj8Kj7RvHKSLQswyyTw=', '2019-11-11 03:09:23.865530', 1, 'hopewell', '', '', 'hopewell@gmail.com', 1, 1, '2019-10-01 12:27:41.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

-- Dumping data for table hopewelldb.auth_user_groups: 0 rows
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;

-- Dumping data for table hopewelldb.auth_user_user_permissions: 0 rows
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;

-- Dumping data for table hopewelldb.django_admin_log: 4 rows
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
	(1, '2019-11-11 03:10:19.385105', '1', 'UserRole object (1)', 1, '[{"added": {}}]', 7, 1),
	(2, '2019-11-11 03:10:33.295916', '2', 'UserRole object (2)', 1, '[{"added": {}}]', 7, 1),
	(3, '2019-11-11 03:10:41.412217', '3', 'UserRole object (3)', 1, '[{"added": {}}]', 7, 1),
	(4, '2019-11-11 03:10:48.498275', '4', 'UserRole object (4)', 1, '[{"added": {}}]', 7, 1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- Dumping data for table hopewelldb.django_content_type: 13 rows
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(2, 'auth', 'permission'),
	(3, 'auth', 'group'),
	(4, 'auth', 'user'),
	(5, 'contenttypes', 'contenttype'),
	(6, 'sessions', 'session'),
	(7, 'MyUserApp', 'userrole'),
	(8, 'managerapp', 'department'),
	(9, 'staffapp', 'staff'),
	(10, 'managerapp', 'loginrecords'),
	(11, 'staffapp', 'appointment'),
	(12, 'MyUserApp', 'usersignup'),
	(13, 'MyUserApp', 'contactus');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

-- Dumping data for table hopewelldb.django_migrations: 37 rows
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2019-10-01 14:58:39.909679'),
	(2, 'auth', '0001_initial', '2019-10-01 14:58:42.096838'),
	(3, 'admin', '0001_initial', '2019-10-01 14:58:42.513718'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2019-10-01 14:58:42.536658'),
	(5, 'contenttypes', '0002_remove_content_type_name', '2019-10-01 14:58:42.758062'),
	(6, 'auth', '0002_alter_permission_name_max_length', '2019-10-01 14:58:42.840870'),
	(7, 'auth', '0003_alter_user_email_max_length', '2019-10-01 14:58:42.955535'),
	(8, 'auth', '0004_alter_user_username_opts', '2019-10-01 14:58:42.971492'),
	(9, 'auth', '0005_alter_user_last_login_null', '2019-10-01 14:58:43.103140'),
	(10, 'auth', '0006_require_contenttypes_0002', '2019-10-01 14:58:43.108128'),
	(11, 'auth', '0007_alter_validators_add_error_messages', '2019-10-01 14:58:43.121101'),
	(12, 'auth', '0008_alter_user_username_max_length', '2019-10-01 14:58:43.180935'),
	(13, 'auth', '0009_alter_user_last_name_max_length', '2019-10-01 14:58:43.293631'),
	(14, 'sessions', '0001_initial', '2019-10-01 14:58:43.505098'),
	(15, 'managerapp', '0001_initial', '2019-10-17 03:51:02.902754'),
	(16, 'staffapp', '0001_initial', '2019-10-17 07:01:30.462291'),
	(17, 'staffapp', '0002_auto_20191017_1445', '2019-10-17 09:15:53.325362'),
	(18, 'staffapp', '0003_remove_staff_userdepartment', '2019-10-17 09:19:42.399866'),
	(19, 'managerapp', '0002_loginrecords', '2019-10-22 06:50:41.187972'),
	(20, 'staffapp', '0004_auto_20191023_1004', '2019-10-23 04:34:55.394336'),
	(21, 'managerapp', '0003_auto_20191023_1057', '2019-10-23 05:31:18.633513'),
	(22, 'staffapp', '0005_appointment', '2019-11-06 07:13:41.176313'),
	(23, 'staffapp', '0006_auto_20191106_1249', '2019-11-06 07:20:19.210219'),
	(24, 'staffapp', '0007_appointment_userage', '2019-11-06 07:41:14.394652'),
	(25, 'staffapp', '0008_auto_20191106_1319', '2019-11-06 07:49:53.841972'),
	(26, 'staffapp', '0009_auto_20191107_1343', '2019-11-07 08:14:13.730970'),
	(35, 'MyUserApp', '0001_initial', '2019-11-08 08:51:28.180431'),
	(36, 'MyUserApp', '0002_usersignup', '2019-11-08 08:51:28.721014'),
	(37, 'MyUserApp', '0003_auto_20191004_0927', '2019-11-08 08:51:30.048436'),
	(38, 'MyUserApp', '0004_auto_20191004_1143', '2019-11-08 08:51:32.902806'),
	(39, 'MyUserApp', '0005_auto_20191005_0956', '2019-11-08 08:51:33.107259'),
	(33, 'MyUserApp', '0007_contactus', '2019-11-08 08:34:29.202283'),
	(34, 'MyUserApp', '0008_auto_20191108_1402', '2019-11-08 08:34:29.208232'),
	(40, 'MyUserApp', '0006_usersignup_userimage', '2019-11-08 08:51:33.255863'),
	(41, 'MyUserApp', '0008_delete_contactus', '2019-11-08 09:01:19.448853'),
	(42, 'MyUserApp', '0009_contactus', '2019-11-08 09:05:12.012124'),
	(43, 'staffapp', '0010_auto_20191111_0907', '2019-11-11 03:37:22.229587');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- Dumping data for table hopewelldb.django_session: 131 rows
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('yg5tyh9awpry7597qlz603ztmkgxz24o', 'YmFlMjY2YTYyMmQyMTNjNTZjMzZiYzBjODNjYWZjYmFiOTBmZTU1NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwYzQ1MzEwMTNjMzdlZTkxYjdjZmMwNDIxNGZiOTJiN2EzYTI2OGYxIn0=', '2019-10-11 16:08:11.453789'),
	('ikdufegl3kaooqo2ble57x4gudeq4p8r', 'NTlkYzg1N2MyMjE3ZTczYmE0YzRiNzdhNzRmN2JjNWRkOWU2YzY1NTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ1cGFzbmFiaGF0MTdAZ21haWwuY29tIiwicm9sZWlkIjoxfQ==', '2019-10-10 07:19:04.391146'),
	('j7ygeyiwv42uc5qqvpaou24jevbdbx06', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-10 07:24:34.208705'),
	('vd8u3wtw7e7x4wdkktqcps4clwbsmjwn', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-10 07:31:35.505270'),
	('jp03p1bkl1cjt1ulr9ylk9na3hpdbjmg', 'NTlkYzg1N2MyMjE3ZTczYmE0YzRiNzdhNzRmN2JjNWRkOWU2YzY1NTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ1cGFzbmFiaGF0MTdAZ21haWwuY29tIiwicm9sZWlkIjoxfQ==', '2019-10-12 15:32:24.455121'),
	('y0m88ajfje1kczzfvihvkd58wz7l0dri', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-12 16:04:24.626387'),
	('5mhake2iyhmok4luhj6yohtqjnyddrx8', 'NWM5OWU4ZmI0MDk2NDE1OTgyODkwZTg4MDc0OWNhMzBjMGEyMTU2Nzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ1cGFzbmFiaGF0MTdAZ21haWwuY29tIiwicm9sZWlkIjoyfQ==', '2019-10-13 06:19:32.932795'),
	('rhj56if940ylop8aay8756vjina6gzp6', 'NWM5OWU4ZmI0MDk2NDE1OTgyODkwZTg4MDc0OWNhMzBjMGEyMTU2Nzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ1cGFzbmFiaGF0MTdAZ21haWwuY29tIiwicm9sZWlkIjoyfQ==', '2019-10-13 06:37:57.835511'),
	('zgw8u78o6ah09ymuus9nj30mc9qc5uax', 'NWM5OWU4ZmI0MDk2NDE1OTgyODkwZTg4MDc0OWNhMzBjMGEyMTU2Nzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ1cGFzbmFiaGF0MTdAZ21haWwuY29tIiwicm9sZWlkIjoyfQ==', '2019-10-13 06:43:24.296317'),
	('i8wcree0slyrtcp09odtluzw5hqwl07j', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-13 07:16:08.900363'),
	('0qj1551mvdu15dnyp8q8g6wymo4q9p7h', 'Nzg0Y2MwYmE1MDRkNWE1YjdmZDBhODkzMzY3MDAwM2JhZTdiZGEwYzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJyYWphbnlucnNhaW5pQGdtYWlsLmNvbSIsInJvbGVpZCI6MX0=', '2019-10-14 03:11:50.607461'),
	('iqcab9addcwqb0ajkue7m9tt4sw2mp8b', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-14 03:16:04.195418'),
	('gba7ogbgp5yncaon9yqs7rjxeaermnvw', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-14 03:18:30.689726'),
	('dooupmqtcqndba474i8096lg52f35hje', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-14 03:19:30.824934'),
	('nu6bwez2nd2o0ghof9hlktma42v7ceul', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-14 03:22:13.567309'),
	('zfp6ibhkj64hit4xci2wtc8nwti7g5cu', 'MTg5NmI1Yjg3MWNjODYyOTNkOGNlNzkzOGYzNjhmMTdmMzA4YzI4Mzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ0dXNoYXJzYWluaTUwM0BnbWFpbC5jb20iLCJyb2xlaWQiOjJ9', '2019-10-14 03:25:11.021831'),
	('s2aul09duf2sj87a0h27hxgjvtkdjytd', 'MTg5NmI1Yjg3MWNjODYyOTNkOGNlNzkzOGYzNjhmMTdmMzA4YzI4Mzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ0dXNoYXJzYWluaTUwM0BnbWFpbC5jb20iLCJyb2xlaWQiOjJ9', '2019-10-14 03:28:21.704986'),
	('97beyhz0kql108uh7u92z9uq3tksolzb', 'MTg5NmI1Yjg3MWNjODYyOTNkOGNlNzkzOGYzNjhmMTdmMzA4YzI4Mzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ0dXNoYXJzYWluaTUwM0BnbWFpbC5jb20iLCJyb2xlaWQiOjJ9', '2019-10-14 03:30:04.220909'),
	('jcjj9ptelatv3y85mfu3seql1pc8ng6n', 'MTg5NmI1Yjg3MWNjODYyOTNkOGNlNzkzOGYzNjhmMTdmMzA4YzI4Mzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ0dXNoYXJzYWluaTUwM0BnbWFpbC5jb20iLCJyb2xlaWQiOjJ9', '2019-10-14 03:33:57.235842'),
	('a9n27b3pygyyf8ipmdpm8vsg0x9wswj3', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-14 03:38:35.540711'),
	('5vbyeuhsoc9mzqulmv2em89h7z0ftoza', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-14 03:41:49.152034'),
	('7jffnrkjjt2r9wkg0bl8jyqgqevpkxlh', 'MTg5NmI1Yjg3MWNjODYyOTNkOGNlNzkzOGYzNjhmMTdmMzA4YzI4Mzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ0dXNoYXJzYWluaTUwM0BnbWFpbC5jb20iLCJyb2xlaWQiOjJ9', '2019-10-14 03:43:42.884937'),
	('zqctym4brccn9ax5sev7ix3qrwdkskhk', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-14 03:47:53.079967'),
	('71a6k3ifflyhdl9vaqguo2gw9a3nwbrg', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-14 03:51:55.124788'),
	('gg58hh6dawxlsnig6dk0b0xz7d2a8kqu', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-14 03:53:30.777034'),
	('acsxcgzjgrov57ysla7m74qiwkd1tf74', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-14 03:56:10.558858'),
	('o8r9gym5mgl88wt84eytbeqs0j29z96o', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-14 04:01:22.685301'),
	('ofgftp3ybl0go11rzzcmnnunzwgdz53z', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-14 04:09:06.810416'),
	('bwekllbn3g0mymy97cs6qhslnhhc6h65', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-14 04:13:39.611002'),
	('72bnrr6ayu5rzyd1p6xgem6jk0he0sah', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-14 04:15:39.376775'),
	('mj2krtp122p3e83sopk55nguyauvy4vl', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-14 04:19:43.097113'),
	('bstad587znvp5lefh19ue4b7nn165oc1', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-14 04:21:50.021746'),
	('q0018ikwj9c7l70salweiejx96bvgxws', 'MTg5NmI1Yjg3MWNjODYyOTNkOGNlNzkzOGYzNjhmMTdmMzA4YzI4Mzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ0dXNoYXJzYWluaTUwM0BnbWFpbC5jb20iLCJyb2xlaWQiOjJ9', '2019-10-14 04:24:54.428709'),
	('anh5fpx1gq4em53l42lsvfwhrnshxnjp', 'MTg5NmI1Yjg3MWNjODYyOTNkOGNlNzkzOGYzNjhmMTdmMzA4YzI4Mzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ0dXNoYXJzYWluaTUwM0BnbWFpbC5jb20iLCJyb2xlaWQiOjJ9', '2019-10-14 04:28:37.053424'),
	('egsnt7enarjzi4bux43m0fsckuncp4w2', 'MTg5NmI1Yjg3MWNjODYyOTNkOGNlNzkzOGYzNjhmMTdmMzA4YzI4Mzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ0dXNoYXJzYWluaTUwM0BnbWFpbC5jb20iLCJyb2xlaWQiOjJ9', '2019-10-14 04:38:05.685046'),
	('tj2rn5sj3v68vxq75fbot58ffpd177oa', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-14 04:42:04.703962'),
	('j5f501wl8tmmx3qm8ue01ljj7tqeqh57', 'MTg5NmI1Yjg3MWNjODYyOTNkOGNlNzkzOGYzNjhmMTdmMzA4YzI4Mzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ0dXNoYXJzYWluaTUwM0BnbWFpbC5jb20iLCJyb2xlaWQiOjJ9', '2019-10-14 04:48:09.333985'),
	('kcfv3pvgeec30tfzbm0v04sp348imk6x', 'MTg5NmI1Yjg3MWNjODYyOTNkOGNlNzkzOGYzNjhmMTdmMzA4YzI4Mzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ0dXNoYXJzYWluaTUwM0BnbWFpbC5jb20iLCJyb2xlaWQiOjJ9', '2019-10-14 05:43:30.913535'),
	('aoytjy59awqkrvu3c8x2kdsqj2asevpo', 'MTg5NmI1Yjg3MWNjODYyOTNkOGNlNzkzOGYzNjhmMTdmMzA4YzI4Mzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ0dXNoYXJzYWluaTUwM0BnbWFpbC5jb20iLCJyb2xlaWQiOjJ9', '2019-10-14 06:16:11.526253'),
	('c962tm5hdwz3livhbw2cktr8rtbagxpw', 'MTg5NmI1Yjg3MWNjODYyOTNkOGNlNzkzOGYzNjhmMTdmMzA4YzI4Mzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ0dXNoYXJzYWluaTUwM0BnbWFpbC5jb20iLCJyb2xlaWQiOjJ9', '2019-10-14 06:38:12.206107'),
	('e2frjmxdj8lk6b40crz0zr0c1xpd0fez', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-14 07:27:06.881381'),
	('i8h3oh2uciy9bi5jfk3mhn3j4ransexs', 'MTg5NmI1Yjg3MWNjODYyOTNkOGNlNzkzOGYzNjhmMTdmMzA4YzI4Mzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ0dXNoYXJzYWluaTUwM0BnbWFpbC5jb20iLCJyb2xlaWQiOjJ9', '2019-10-14 13:18:07.855745'),
	('6y166e2p3kzxx0xfri41rpr6u80ver27', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-14 14:44:46.652628'),
	('ym1nxadxb710get09tst4xkvw8kr1euz', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-14 16:25:49.309023'),
	('azxcmbcpfqanviic263u7kflrj9eh9o5', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-14 16:59:33.459854'),
	('qccm85t35sqkj5qrkw2e50pqvarsz8nw', 'MTg5NmI1Yjg3MWNjODYyOTNkOGNlNzkzOGYzNjhmMTdmMzA4YzI4Mzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ0dXNoYXJzYWluaTUwM0BnbWFpbC5jb20iLCJyb2xlaWQiOjJ9', '2019-10-15 04:05:57.813028'),
	('w0g2kiwge15ll0wfj51pyt21efmneor2', 'MTg5NmI1Yjg3MWNjODYyOTNkOGNlNzkzOGYzNjhmMTdmMzA4YzI4Mzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ0dXNoYXJzYWluaTUwM0BnbWFpbC5jb20iLCJyb2xlaWQiOjJ9', '2019-10-15 04:29:26.841855'),
	('rb7ok9kp966rejd2ikqn4omkog6gd93p', 'MTg5NmI1Yjg3MWNjODYyOTNkOGNlNzkzOGYzNjhmMTdmMzA4YzI4Mzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ0dXNoYXJzYWluaTUwM0BnbWFpbC5jb20iLCJyb2xlaWQiOjJ9', '2019-10-15 04:56:46.068894'),
	('n85rypqjtxgsrn5stwbp6py3zo64x9nj', 'MTg5NmI1Yjg3MWNjODYyOTNkOGNlNzkzOGYzNjhmMTdmMzA4YzI4Mzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ0dXNoYXJzYWluaTUwM0BnbWFpbC5jb20iLCJyb2xlaWQiOjJ9', '2019-10-15 05:53:58.545152'),
	('j7jtyv1seip0r0ou1xd7kjc19f47y35g', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-15 06:06:15.980770'),
	('4mdjduvbita3o6d0w12ef6cvk7vol6b3', 'MTg5NmI1Yjg3MWNjODYyOTNkOGNlNzkzOGYzNjhmMTdmMzA4YzI4Mzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ0dXNoYXJzYWluaTUwM0BnbWFpbC5jb20iLCJyb2xlaWQiOjJ9', '2019-10-15 07:38:21.680398'),
	('lw87x9mgadg89mfloirgvdr5gp29wcty', 'MTg5NmI1Yjg3MWNjODYyOTNkOGNlNzkzOGYzNjhmMTdmMzA4YzI4Mzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ0dXNoYXJzYWluaTUwM0BnbWFpbC5jb20iLCJyb2xlaWQiOjJ9', '2019-10-15 14:45:02.496390'),
	('q7j2icpu12m9k2sefmr4u0tmd1l9aqek', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-16 03:25:35.027243'),
	('4t4ss9q6uxy0d6ulzoq5y19y4m2t8vq5', 'NWM5OWU4ZmI0MDk2NDE1OTgyODkwZTg4MDc0OWNhMzBjMGEyMTU2Nzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ1cGFzbmFiaGF0MTdAZ21haWwuY29tIiwicm9sZWlkIjoyfQ==', '2019-10-16 03:38:09.971677'),
	('7vxvwagjbwrjmwic5hwhx4ynl4khd3ec', 'OGUzYjRjZDZhMGJlMzQwNTNjZmQ3OTdmMmM3YWZjNjQ4ZDRiYzY1Mzp7InVzZXJlbWFpbCI6InVwYXNuYWJoYXQxN0BnbWFpbC5jb20iLCJyb2xlaWQiOjIsIkF1dGhlbnRpY2F0aW9uIjp0cnVlfQ==', '2019-10-16 03:54:30.826069'),
	('1k979se06dbvusp3weg70k97qjsst388', 'NWM5OWU4ZmI0MDk2NDE1OTgyODkwZTg4MDc0OWNhMzBjMGEyMTU2Nzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ1cGFzbmFiaGF0MTdAZ21haWwuY29tIiwicm9sZWlkIjoyfQ==', '2019-10-16 04:31:29.088584'),
	('zzp17z8r9pk6w47x7dfethn5xtuwvhme', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-16 04:39:54.147160'),
	('ovs379i3ylo0on1wxdjcz44l9vo3lp5a', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-16 04:48:55.331144'),
	('82cnxeji5dxi1wehvmcb9d20io5d2vnz', 'NWM5OWU4ZmI0MDk2NDE1OTgyODkwZTg4MDc0OWNhMzBjMGEyMTU2Nzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ1cGFzbmFiaGF0MTdAZ21haWwuY29tIiwicm9sZWlkIjoyfQ==', '2019-10-16 05:11:26.103397'),
	('gnn9ly9xx1ppgpkprh60nfuigyzraxrf', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-16 05:22:55.462017'),
	('t7rt2a1x3bvovw079fu98t1n60xvkgs3', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-16 05:34:21.207124'),
	('ke38a4b0cdossk8j6v9g4q6tan4obvqo', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-16 05:57:27.816639'),
	('d3pn14qjdqrmz4l1aby4yk8rqqwzuhr3', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-16 06:10:31.609981'),
	('o07qipampwkbpczyxl9nqrfz5f4gtqvi', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-16 06:28:49.640820'),
	('6rncjntdqzvvbn7twpvr623wzoerw131', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-16 06:42:26.324695'),
	('afvd7htf6vzvoeay184wil2f87ulvchc', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-16 06:56:06.258397'),
	('y3f839lm1185lnazhgi1lmwfxfyk8mbl', 'NTlkYzg1N2MyMjE3ZTczYmE0YzRiNzdhNzRmN2JjNWRkOWU2YzY1NTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ1cGFzbmFiaGF0MTdAZ21haWwuY29tIiwicm9sZWlkIjoxfQ==', '2019-10-17 03:28:29.696048'),
	('1wgenkb0x433gmuoigbaxct2yjxsvwt4', 'NTlkYzg1N2MyMjE3ZTczYmE0YzRiNzdhNzRmN2JjNWRkOWU2YzY1NTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ1cGFzbmFiaGF0MTdAZ21haWwuY29tIiwicm9sZWlkIjoxfQ==', '2019-10-17 05:49:09.290491'),
	('fo3plr12j0ai0qhvvj4e3r9t8lk6bt43', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-17 06:19:21.673762'),
	('0dyvxjc61hg4ht5tge8vrswiuoxbey6e', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-17 08:01:40.194506'),
	('77kvf3f7kiy88dtglfbio2apfjq6dj9q', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-17 08:01:40.249355'),
	('y725y6eeophcshcxe1s8gxygie3kf5rz', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-17 08:01:40.263317'),
	('zby110rhuvuq79gwqfgad7v3p349zwl9', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-17 08:01:58.311061'),
	('42dntxqhje58nvj5m3e5o6cwd7jjzpon', 'NTlkYzg1N2MyMjE3ZTczYmE0YzRiNzdhNzRmN2JjNWRkOWU2YzY1NTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ1cGFzbmFiaGF0MTdAZ21haWwuY29tIiwicm9sZWlkIjoxfQ==', '2019-10-17 08:12:54.455877'),
	('5aohut4eblue4emqmow2fya3h07ggeoz', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-17 08:19:22.969074'),
	('yr39h1zq5xith8g65d9fx31d0j1bm15t', 'NTlkYzg1N2MyMjE3ZTczYmE0YzRiNzdhNzRmN2JjNWRkOWU2YzY1NTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ1cGFzbmFiaGF0MTdAZ21haWwuY29tIiwicm9sZWlkIjoxfQ==', '2019-10-17 12:17:44.888244'),
	('qtfoqq75rzhoaa9pyuqmtn06e7a7bwcy', 'NTlkYzg1N2MyMjE3ZTczYmE0YzRiNzdhNzRmN2JjNWRkOWU2YzY1NTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ1cGFzbmFiaGF0MTdAZ21haWwuY29tIiwicm9sZWlkIjoxfQ==', '2019-10-18 03:41:17.809479'),
	('c4u6rvjtme70ky2orfhml3vd49tx4na5', 'NTlkYzg1N2MyMjE3ZTczYmE0YzRiNzdhNzRmN2JjNWRkOWU2YzY1NTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ1cGFzbmFiaGF0MTdAZ21haWwuY29tIiwicm9sZWlkIjoxfQ==', '2019-10-18 03:50:54.116549'),
	('jw4jnfc6i3gdzcsib11u1gth8v2fccvm', 'NTlkYzg1N2MyMjE3ZTczYmE0YzRiNzdhNzRmN2JjNWRkOWU2YzY1NTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ1cGFzbmFiaGF0MTdAZ21haWwuY29tIiwicm9sZWlkIjoxfQ==', '2019-10-18 04:54:49.436317'),
	('e1p4o4plw661awijlgglc9o548aglmhb', 'NTlkYzg1N2MyMjE3ZTczYmE0YzRiNzdhNzRmN2JjNWRkOWU2YzY1NTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ1cGFzbmFiaGF0MTdAZ21haWwuY29tIiwicm9sZWlkIjoxfQ==', '2019-10-20 13:05:30.138967'),
	('ehq4zshw0mrozega1ut5zxv4dzaxvjfh', 'NTlkYzg1N2MyMjE3ZTczYmE0YzRiNzdhNzRmN2JjNWRkOWU2YzY1NTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ1cGFzbmFiaGF0MTdAZ21haWwuY29tIiwicm9sZWlkIjoxfQ==', '2019-10-22 04:27:56.687029'),
	('q51xr9j3g9e5wk2tin8vihbnjy152wr5', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-22 04:37:40.262450'),
	('1hhnta3ggz6cwdmoz51hrfhcvpmu909j', 'NTlkYzg1N2MyMjE3ZTczYmE0YzRiNzdhNzRmN2JjNWRkOWU2YzY1NTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ1cGFzbmFiaGF0MTdAZ21haWwuY29tIiwicm9sZWlkIjoxfQ==', '2019-10-22 08:27:38.099272'),
	('ox2xdeegwko4uf71t3fchpecqt9gfjdy', 'NTlkYzg1N2MyMjE3ZTczYmE0YzRiNzdhNzRmN2JjNWRkOWU2YzY1NTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ1cGFzbmFiaGF0MTdAZ21haWwuY29tIiwicm9sZWlkIjoxfQ==', '2019-10-22 08:35:09.581488'),
	('jpor4rmioggfvmfkrdaikc1lqd6nvi6m', 'NTlkYzg1N2MyMjE3ZTczYmE0YzRiNzdhNzRmN2JjNWRkOWU2YzY1NTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ1cGFzbmFiaGF0MTdAZ21haWwuY29tIiwicm9sZWlkIjoxfQ==', '2019-10-23 03:56:32.683998'),
	('3o1imjcroz2amnj4qvdzauogwlhr90za', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-23 04:25:05.515709'),
	('2e2xpdme0izuzp1c4o9674fa70thsumn', 'NTlkYzg1N2MyMjE3ZTczYmE0YzRiNzdhNzRmN2JjNWRkOWU2YzY1NTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ1cGFzbmFiaGF0MTdAZ21haWwuY29tIiwicm9sZWlkIjoxfQ==', '2019-10-23 04:53:02.872620'),
	('hbvbhbc4iak6ougdkji40bicl7j28jr6', 'NTlkYzg1N2MyMjE3ZTczYmE0YzRiNzdhNzRmN2JjNWRkOWU2YzY1NTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ1cGFzbmFiaGF0MTdAZ21haWwuY29tIiwicm9sZWlkIjoxfQ==', '2019-10-23 05:42:56.881701'),
	('37gmhv4gdpen8p3d2eire5z10z9trekk', 'NTlkYzg1N2MyMjE3ZTczYmE0YzRiNzdhNzRmN2JjNWRkOWU2YzY1NTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ1cGFzbmFiaGF0MTdAZ21haWwuY29tIiwicm9sZWlkIjoxfQ==', '2019-10-23 06:32:07.815030'),
	('daq3iei1nstgo7qr5fnymcs0wzlvrfop', 'NTlkYzg1N2MyMjE3ZTczYmE0YzRiNzdhNzRmN2JjNWRkOWU2YzY1NTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ1cGFzbmFiaGF0MTdAZ21haWwuY29tIiwicm9sZWlkIjoxfQ==', '2019-10-23 06:57:10.008754'),
	('dsfz66lpkhqn7hc1chrg9a91nc0ha7h0', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-23 07:06:27.551478'),
	('v0lb7h4hi20o7plv4qk6x8u7z7cuzcbu', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-23 07:20:18.462630'),
	('mmpqz3z9pzgvxjakudnyasneury16ils', 'NTlkYzg1N2MyMjE3ZTczYmE0YzRiNzdhNzRmN2JjNWRkOWU2YzY1NTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ1cGFzbmFiaGF0MTdAZ21haWwuY29tIiwicm9sZWlkIjoxfQ==', '2019-10-23 08:07:58.898830'),
	('ua9am95x11ixxp7e3hd9tbyz2tzcotuy', 'NTlkYzg1N2MyMjE3ZTczYmE0YzRiNzdhNzRmN2JjNWRkOWU2YzY1NTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ1cGFzbmFiaGF0MTdAZ21haWwuY29tIiwicm9sZWlkIjoxfQ==', '2019-10-23 08:15:44.998151'),
	('hz7x3ywax7amaju27m17iwihrdk6396u', 'NTlkYzg1N2MyMjE3ZTczYmE0YzRiNzdhNzRmN2JjNWRkOWU2YzY1NTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ1cGFzbmFiaGF0MTdAZ21haWwuY29tIiwicm9sZWlkIjoxfQ==', '2019-10-24 03:41:44.655166'),
	('v6kq6n7wriu8yjz82dmgegcbb52z2w8j', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-24 03:56:03.629369'),
	('zebfbkybat9dqgfla8gptgwua11tval6', 'NTlkYzg1N2MyMjE3ZTczYmE0YzRiNzdhNzRmN2JjNWRkOWU2YzY1NTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ1cGFzbmFiaGF0MTdAZ21haWwuY29tIiwicm9sZWlkIjoxfQ==', '2019-10-24 04:06:30.285861'),
	('yzvxlhmegweo474vm5royh1w0t37qyiu', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-24 04:11:37.257345'),
	('4nq3zc8ljphh4js1ign69tai1wmmrl2p', 'NTlkYzg1N2MyMjE3ZTczYmE0YzRiNzdhNzRmN2JjNWRkOWU2YzY1NTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ1cGFzbmFiaGF0MTdAZ21haWwuY29tIiwicm9sZWlkIjoxfQ==', '2019-10-24 04:30:05.262547'),
	('j9fdboxl62hyry9sfk63mvfk4lah5ccm', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-24 04:36:18.167222'),
	('hvs3cnxop60hc1o7ruyli2onp8sm2wne', 'NTlkYzg1N2MyMjE3ZTczYmE0YzRiNzdhNzRmN2JjNWRkOWU2YzY1NTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ1cGFzbmFiaGF0MTdAZ21haWwuY29tIiwicm9sZWlkIjoxfQ==', '2019-10-24 06:33:53.510982'),
	('cmuohiga6vzlta5dm4c0c0l1lm25whif', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-24 06:40:01.363042'),
	('18ip9ddaw4az1g9kfif7ddra58ku05or', 'NTlkYzg1N2MyMjE3ZTczYmE0YzRiNzdhNzRmN2JjNWRkOWU2YzY1NTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ1cGFzbmFiaGF0MTdAZ21haWwuY29tIiwicm9sZWlkIjoxfQ==', '2019-10-24 06:54:35.588759'),
	('p2cuoj1ougx9p10evsgzizcsbtt89i6x', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-24 07:23:31.730414'),
	('v2y148ldcvz9byvdqzk1jfrds0gw457w', 'NTlkYzg1N2MyMjE3ZTczYmE0YzRiNzdhNzRmN2JjNWRkOWU2YzY1NTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ1cGFzbmFiaGF0MTdAZ21haWwuY29tIiwicm9sZWlkIjoxfQ==', '2019-10-26 13:10:39.379393'),
	('xwddyh06l7zkle8uw01ebkfkwmaxtdil', 'NTlkYzg1N2MyMjE3ZTczYmE0YzRiNzdhNzRmN2JjNWRkOWU2YzY1NTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ1cGFzbmFiaGF0MTdAZ21haWwuY29tIiwicm9sZWlkIjoxfQ==', '2019-10-26 15:06:10.632208'),
	('mr3vnvnc6kv5i6f9zffoahf03anyaw0q', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-26 15:29:12.517872'),
	('cgmwghfgfcnm4balfglntyb7p271we11', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-28 13:02:43.993482'),
	('a2u2h6efj1gt6y0poxetxyzdjw0cy5hm', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-28 14:38:16.705967'),
	('6f7l2b6pmrt337npg3an0vbuaopiakm3', 'NTlkYzg1N2MyMjE3ZTczYmE0YzRiNzdhNzRmN2JjNWRkOWU2YzY1NTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ1cGFzbmFiaGF0MTdAZ21haWwuY29tIiwicm9sZWlkIjoxfQ==', '2019-11-06 04:12:40.184545'),
	('wote55k7e5fyevn2q3dzam9p671zt9jy', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-11-06 06:11:59.019815'),
	('qgv4sxdnbx7ba8tovok1pwd6mq2b7rp2', 'NTlkYzg1N2MyMjE3ZTczYmE0YzRiNzdhNzRmN2JjNWRkOWU2YzY1NTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ1cGFzbmFiaGF0MTdAZ21haWwuY29tIiwicm9sZWlkIjoxfQ==', '2019-11-06 06:29:58.091268'),
	('62u5iebjzsx323ixirh7ltohpsrd0d9l', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-11-06 06:43:52.161734'),
	('q1vodpvw0zehi7fwcllccme3w6tq62ug', 'YmM0Yjg3MzZjNDIxODU3NTg5MWVkYjVhNWY4ODVhNzkwZGRkZWFiYTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ0dXNoYXJzYWluaTUwM0BnbWFpbC5jb20iLCJyb2xlaWQiOjN9', '2019-11-07 04:30:31.437344'),
	('6h9owrvizeodi3o63p3lwq1f1v7mtryu', 'YmM0Yjg3MzZjNDIxODU3NTg5MWVkYjVhNWY4ODVhNzkwZGRkZWFiYTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ0dXNoYXJzYWluaTUwM0BnbWFpbC5jb20iLCJyb2xlaWQiOjN9', '2019-11-07 04:42:31.874770'),
	('3thczgaf9ht17mxvfrm9zkyn1tv0xmbc', 'YmM0Yjg3MzZjNDIxODU3NTg5MWVkYjVhNWY4ODVhNzkwZGRkZWFiYTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ0dXNoYXJzYWluaTUwM0BnbWFpbC5jb20iLCJyb2xlaWQiOjN9', '2019-11-07 05:05:58.083544'),
	('hvzbwjygt1xzt0pdmz5bmakke925g832', 'NTlkYzg1N2MyMjE3ZTczYmE0YzRiNzdhNzRmN2JjNWRkOWU2YzY1NTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ1cGFzbmFiaGF0MTdAZ21haWwuY29tIiwicm9sZWlkIjoxfQ==', '2019-11-07 05:49:33.277596'),
	('xtycax1o2bj00ncmj1i60tx7scsghx2g', 'YmM0Yjg3MzZjNDIxODU3NTg5MWVkYjVhNWY4ODVhNzkwZGRkZWFiYTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ0dXNoYXJzYWluaTUwM0BnbWFpbC5jb20iLCJyb2xlaWQiOjN9', '2019-11-07 06:02:55.860995'),
	('nbm9kgk9fqxgoodppklx4qcvn4015ksr', 'YmM0Yjg3MzZjNDIxODU3NTg5MWVkYjVhNWY4ODVhNzkwZGRkZWFiYTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ0dXNoYXJzYWluaTUwM0BnbWFpbC5jb20iLCJyb2xlaWQiOjN9', '2019-11-07 06:42:57.326990'),
	('gd6i9cn8mz6hktqavr8eur9xu3b7s3kb', 'YmM0Yjg3MzZjNDIxODU3NTg5MWVkYjVhNWY4ODVhNzkwZGRkZWFiYTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ0dXNoYXJzYWluaTUwM0BnbWFpbC5jb20iLCJyb2xlaWQiOjN9', '2019-11-07 06:57:24.028977'),
	('4xu17fj7wzkjagvpp64bsadjqmpb3s70', 'YmM0Yjg3MzZjNDIxODU3NTg5MWVkYjVhNWY4ODVhNzkwZGRkZWFiYTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ0dXNoYXJzYWluaTUwM0BnbWFpbC5jb20iLCJyb2xlaWQiOjN9', '2019-11-07 07:24:49.978777'),
	('n9zh8sjspucpjotzt69uusyiu6l8n34r', 'MjZjOTc5YzE4ZDMwMmQzY2M0ZjRiNjhlYjUwNzllYzNlNThiMzg4Mjp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ2YWlzaGFsaXNhaW5pMzQyMUBnbWFpbC5jb20iLCJyb2xlaWQiOjR9', '2019-11-07 07:36:50.708939'),
	('e9hxxu7xmaf6ixvh3ncqpztq9g51eznc', 'YmM0Yjg3MzZjNDIxODU3NTg5MWVkYjVhNWY4ODVhNzkwZGRkZWFiYTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ0dXNoYXJzYWluaTUwM0BnbWFpbC5jb20iLCJyb2xlaWQiOjN9', '2019-11-07 08:11:46.572389'),
	('loqkt7l811f5yj6io5fo1h0r7qszm0rp', 'YmM0Yjg3MzZjNDIxODU3NTg5MWVkYjVhNWY4ODVhNzkwZGRkZWFiYTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ0dXNoYXJzYWluaTUwM0BnbWFpbC5jb20iLCJyb2xlaWQiOjN9', '2019-11-07 08:24:14.117922'),
	('xawfbvfnqu6oo9t3l5yrmgu8bdzgqj3g', 'YmM0Yjg3MzZjNDIxODU3NTg5MWVkYjVhNWY4ODVhNzkwZGRkZWFiYTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ0dXNoYXJzYWluaTUwM0BnbWFpbC5jb20iLCJyb2xlaWQiOjN9', '2019-11-08 04:08:42.925294'),
	('2gkgg1da866hx4u4bbjvflqd70hl1n0g', 'NTlkYzg1N2MyMjE3ZTczYmE0YzRiNzdhNzRmN2JjNWRkOWU2YzY1NTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ1cGFzbmFiaGF0MTdAZ21haWwuY29tIiwicm9sZWlkIjoxfQ==', '2019-11-08 05:04:28.251012'),
	('bbldqehdsdv5mbimuhy6917v25m5u7f9', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-11-08 06:21:23.931620'),
	('ikkkisj8n3t268464mnac1btvmlxfuzl', 'NTlkYzg1N2MyMjE3ZTczYmE0YzRiNzdhNzRmN2JjNWRkOWU2YzY1NTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ1cGFzbmFiaGF0MTdAZ21haWwuY29tIiwicm9sZWlkIjoxfQ==', '2019-11-08 06:21:54.878885'),
	('4iee7rtirpd77xene7nyxzs5u0tfkloh', 'MDg3MDIzM2NmODMyZTllOWY4ZjJiNTllY2M0MjI0NTUyMzBiZWRiNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwYzQ1MzEwMTNjMzdlZTkxYjdjZmMwNDIxNGZiOTJiN2EzYTI2OGYxIiwiQXV0aGVudGljYXRpb24iOnRydWUsInVzZXJlbWFpbCI6InZhaXNoYWxpc2FpbmkzNDIxQGdtYWlsLmNvbSIsInJvbGVpZCI6M30=', '2019-11-11 03:29:10.782388'),
	('tmqml6wlcugzwk9o68egbdri9yoztf8z', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-11-11 03:35:14.407296'),
	('6cwujufsepe791fveebawnql12msyny9', 'MjZjOTc5YzE4ZDMwMmQzY2M0ZjRiNjhlYjUwNzllYzNlNThiMzg4Mjp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ2YWlzaGFsaXNhaW5pMzQyMUBnbWFpbC5jb20iLCJyb2xlaWQiOjR9', '2019-11-11 03:46:34.328603');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

-- Dumping data for table hopewelldb.managerapp_department: 4 rows
/*!40000 ALTER TABLE `managerapp_department` DISABLE KEYS */;
INSERT INTO `managerapp_department` (`depttId`, `depttName`, `isActive`) VALUES
	(1, 'Radiology', 1),
	(2, 'dermatology', 1),
	(4, 'Cardiology', 1),
	(5, 'Brain & Spine', 1);
/*!40000 ALTER TABLE `managerapp_department` ENABLE KEYS */;

-- Dumping data for table hopewelldb.managerapp_loginrecords: 59 rows
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
	(59, '2019-11-11 09:11:09.978699', '', 'vaishalisaini3421@gmail.com', '192.168.80.1', '0x40b034be4d4b');
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
	('vaishalisaini3421@gmail.com', 2, '2019-10-29', 1, 0, '');
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
