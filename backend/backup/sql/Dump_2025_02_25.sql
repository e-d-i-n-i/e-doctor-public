-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: e-doctor
-- ------------------------------------------------------
-- Server version	9.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `app_users`
--

DROP TABLE IF EXISTS app_users;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE app_users (
  id char(36) NOT NULL,
  username varchar(100) NOT NULL,
  password_hash text NOT NULL,
  `role` enum('patient','admin','labTech','nurse','doctor','clerk') NOT NULL,
  is_active tinyint(1) DEFAULT '1',
  last_login datetime DEFAULT NULL,
  created_at datetime DEFAULT CURRENT_TIMESTAMP,
  updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  UNIQUE KEY username (username)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_users`
--

LOCK TABLES app_users WRITE;
/*!40000 ALTER TABLE app_users DISABLE KEYS */;
INSERT INTO app_users VALUES ('1846f2a6-e01c-11ef-a1d1-005056c00001','muluken.fantahunv','$2b$12$nyRCbRitY05c5Lwi./HUHuBKFhT3bYDumQe2oKbUiG49MSD5ZC0wq','doctor',1,NULL,'2025-02-01 00:41:14','2025-02-01 00:41:14'),('1907d2e1-d5d9-11ef-9523-005056c00001','girma.meskel37','123456','patient',1,NULL,'2025-01-18 23:16:27','2025-01-18 23:16:27'),('2713d745-d583-11ef-9523-005056c00001','jane.smith85','hashed_password_example','doctor',0,NULL,'2025-01-18 13:01:14','2025-02-24 22:54:35'),('357df13c-c77e-11ef-918a-005056c00001','lab_user','$2b$12$C6cMmpRphy7d1.X81lkhLeVbB26MbkM8x85XhG6zoGS..D9xRxwLS','labTech',1,'2024-12-01 08:30:00','2024-11-01 09:00:00','2025-01-05 17:16:43'),('3635532c-e026-11ef-a1d1-005056c00001','alemayew.girmaye52','$2b$12$xK3OX0bNNLt4PlYVkGJSAOPnmsKNxNTxksa68IErf3016dtDzod2.','doctor',1,NULL,'2025-02-01 01:53:39','2025-02-25 03:13:54'),('3b6bae46-e018-11ef-a1d1-005056c00001','samrawit.tilahunb','$2b$12$DRFlqBSPnflAfuo4ju.x1OVsWNDxYIjxaoyoauwRlsqQqrE9flYOC','doctor',1,NULL,'2025-02-01 00:13:35','2025-02-01 00:13:35'),('4a8d34ed-d845-11ef-b188-005056c00001','selamit.gebremeskel21','123456','patient',1,NULL,'2025-01-22 01:15:58','2025-01-22 01:15:58'),('4ce2f962-d567-11ef-9523-005056c00001','john_doe','hashed_password_1','doctor',1,'2025-01-01 12:30:45','2025-01-18 09:41:52','2025-01-18 09:41:52'),('4de0b2e1-e028-11ef-a1d1-005056c00001','gebremeskel.haile86','$2b$12$9GAD6FCXEicOLuMMujvBTul2/Nya5Ad6qvC/Yb10w3k1txel/dlxu','doctor',1,NULL,'2025-02-01 02:08:38','2025-02-01 02:08:38'),('550e8400-e29b-41d4-a716-446655440000','doctor_user','$2b$12$ZJunvQ2iwxnjr.eWBDcfC.7Pp.WFGOIizHd/W1CqUk6GHENbqIsCG','doctor',1,'2024-12-01 08:30:00','2024-11-01 09:00:00','2025-02-13 02:45:05'),('550e8400-e29b-41d4-a716-446655440001','patient_user','$2a$10$8oIgqvZcxRyqYtwWkyl5oO9m24ieiS4WP.kLHDZ2KUxBP26Y.OiVi','patient',1,'2024-12-02 14:20:00','2024-11-15 10:45:00','2025-01-13 02:48:17'),('550e8400-e29b-41d4-a716-446655440002','nurse_user','$2a$10$8oIgqvZcxRyqYtwWkyl5oO9m24ieiS4WP.kLHDZ2KUxBP26Y.OiVi','nurse',1,'2024-12-03 18:10:00','2024-10-25 12:30:00','2024-12-31 16:51:07'),('550e8400-e29b-41d4-a716-446655440003','patient_user2','$2a$10$8oIgqvZcxRyqYtwWkyl5oO9m24ieiS4WP.kLHDZ2KUxBP26Y.OiVi','patient',0,NULL,'2024-11-10 14:00:00','2024-12-31 16:52:32'),('550e8400-e29b-41d4-a716-446655440004','admin_user','$2b$12$.pq2S.pgHxypyZ7/hsu4..y0WIoButE6csTN3wp.k8n8sKvfmJst2','admin',1,'2024-12-04 09:15:00','2024-11-20 11:10:00','2025-02-24 15:09:57'),('550e8400-e29b-41d4-a716-446755440000','janedoe','$2b$12$KIXg3fOE.Qx6JvKfGQbyve3tIWU34x2./5myTNi/htF12Nw2B.n6i','patient',1,NULL,'2025-01-18 11:16:05','2025-01-18 11:16:05'),('5ba93b82-cb4c-4290-bc13-168a1d9b5de6','clerk_user','$2a$10$8oIgqvZcxRyqYtwWkyl5oO9m24ieiS4WP.kLHDZ2KUxBP26Y.OiVi','clerk',1,NULL,'2024-12-23 01:38:27','2024-12-31 16:51:34'),('6bff076f-d582-11ef-9523-005056c00001','john.doe14','hashed_password_example','patient',1,NULL,'2025-01-18 12:56:00','2025-01-18 12:56:00'),('78620103-e01c-11ef-a1d1-005056c00001','kaleb.abel16','$2b$12$6cGerLWytkDVWwb.4n.fge.o40RDBgpe2Y3DP3dnlMvJJ/WqQB7I2','admin',1,NULL,'2025-02-01 00:43:55','2025-02-01 00:43:55'),('7f266162-e014-11ef-a1d1-005056c00001','mahider.tesfaye43','$2b$12$dZw9c.NZuiTtPSlrudxKYuw.ywXz1yGPlVPMvjXVbO8QiNq06XIKy','doctor',1,NULL,'2025-01-31 23:46:50','2025-02-24 23:42:40'),('80b844be-e019-11ef-a1d1-005056c00001','mihret.edinit','$2b$12$gPAoQsDd0C74UoJY.Clgh.DbSwj96HjzqrcXbPp39RARsDEBwQc3.','nurse',1,NULL,'2025-02-01 00:22:41','2025-02-01 00:22:41'),('9d6f7f00-e00f-11ef-a1d1-005056c00001','muluken.tilahunq','$2b$12$8NzqGrP9pxRFWkX0VxIIx.iKygxTajlZe0BhcyGpbSDEXP7VMRZcS','doctor',1,NULL,'2025-01-31 23:11:54','2025-01-31 23:11:54'),('a6964ad4-d567-11ef-9523-005056c00001','john_doe2','hashed_password_1','doctor',1,'2025-01-01 12:30:45','2025-01-18 09:44:22','2025-01-18 09:44:22'),('a698b0b6-d567-11ef-9523-005056c00001','jane_smith','hashed_password_2','nurse',0,'2025-01-02 08:15:00','2025-01-18 09:44:22','2025-01-18 09:44:22'),('bc1deb04-d7d6-11ef-9523-005056c00001','123456.123456d','$2b$12$wP3xYPa67Ksj8Paqiy09Fe6DdOvznDKBL2gJz2dn/0nDS55DGHlg.','doctor',1,NULL,'2025-01-21 12:04:35','2025-01-21 12:04:35'),('c4d29db6-d582-11ef-9523-005056c00001','john.doep','hashed_password_example','patient',1,NULL,'2025-01-18 12:58:29','2025-01-18 12:58:29'),('cc43f355-e01b-11ef-a1d1-005056c00001','almaz.hamza15','$2b$12$xWJOI8/ZQqaG/tyckmAlDOriPwIEUTWJ5MWO7lvNqeKE9gQbfv9ke','nurse',1,NULL,'2025-02-01 00:39:06','2025-02-01 00:39:06'),('cdc4f8a7-e020-11ef-a1d1-005056c00001','almaz.hamza34','$2b$12$TTc3HA0fi/rXc3kAlzSyReKpXBisAwb3QgC/gBa05OFSfv5CBa0tW','doctor',1,NULL,'2025-02-01 01:14:56','2025-02-01 01:14:56'),('cfb11070-d5d6-11ef-9523-005056c00001','edini .amare82','123456','patient',1,NULL,'2025-01-18 23:00:05','2025-01-18 23:00:05'),('db6db3d6-f2be-11ef-8b3a-005056c00001','zelalem.amarev','$2b$12$fmYXjblh2z9WJr17UBDNZeNA5mhiq9tuUaxWWAo4ttuq1zzXD3hFK','doctor',1,NULL,'2025-02-24 17:51:41','2025-02-24 17:51:41'),('e4086171-e013-11ef-a1d1-005056c00001','melate.eshetug','$2b$12$JJLPFN3k9kTY.8lj.ikYxOROwNkHCeA3eDLw01v.HcYZbJUiukH96','admin',1,NULL,'2025-01-31 23:42:30','2025-01-31 23:42:30'),('f3a56945-d7d6-11ef-9523-005056c00001','samrawit.eshetug','$2b$12$wgu4ytv.GF/IXxdkdv/Y.uE5.ZE4phmrD6emCOv3C.NMmX1Ad7Hsi','doctor',1,NULL,'2025-01-21 12:06:08','2025-01-21 12:06:08'),('f5db8f2b-d79a-11ef-9523-005056c00001','mihret.tilahune','123456','patient',1,NULL,'2025-01-21 04:56:42','2025-01-21 04:56:42');
/*!40000 ALTER TABLE app_users ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization_staff`
--

DROP TABLE IF EXISTS organization_staff;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE organization_staff (
  id char(36) NOT NULL,
  user_id char(36) DEFAULT NULL,
  first_name varchar(100) NOT NULL,
  last_name varchar(100) NOT NULL,
  `role` varchar(100) DEFAULT NULL,
  department varchar(100) DEFAULT NULL,
  email varchar(255) DEFAULT NULL,
  phone_number varchar(20) NOT NULL,
  employment_type enum('Full-time','Part-time','Contract') DEFAULT NULL,
  date_of_joining date DEFAULT NULL,
  is_active tinyint(1) DEFAULT '1',
  salary decimal(10,2) DEFAULT NULL,
  shift varchar(50) DEFAULT NULL,
  supervisor_id char(36) DEFAULT NULL,
  address text,
  emergency_contact varchar(500) DEFAULT NULL,
  profile_picture blob,
  updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  gender varchar(10) DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY email (email),
  KEY supervisor_id (supervisor_id),
  KEY user_id (user_id),
  CONSTRAINT organization_staff_ibfk_1 FOREIGN KEY (supervisor_id) REFERENCES organization_staff (id) ON DELETE SET NULL,
  CONSTRAINT organization_staff_ibfk_2 FOREIGN KEY (user_id) REFERENCES app_users (id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_staff`
--

LOCK TABLES organization_staff WRITE;
/*!40000 ALTER TABLE organization_staff DISABLE KEYS */;
INSERT INTO organization_staff VALUES ('1847564c-e01c-11ef-a1d1-005056c00001','1846f2a6-e01c-11ef-a1d1-005056c00001','Muluken','Fantahun','doctor','medical','Kook@gmail.com','0900110085','Part-time','2025-01-29',1,25000.00,'day','650e8400-e29b-41d4-a716-446655440002','Addis Ababa','0900130082',NULL,'2025-02-01 00:41:14','male'),('2714d0a6-d583-11ef-9523-005056c00001','2713d745-d583-11ef-9523-005056c00001','Jane','Smith','Doctor','Cardiology','jane.smith@example.com','+1234567890','Full-time','2023-01-10',0,150000.00,'Day',NULL,'123 Elm Street, City','{\"name\": \"John Doe\", \"phone\": \"+9876543210\"}',NULL,'2025-02-24 22:54:35',NULL),('36374a0f-e026-11ef-a1d1-005056c00001','3635532c-e026-11ef-a1d1-005056c00001','Alemayew','Girmaye','doctor','medical','alemayew@gmail.com','0900265856','Part-time','2025-01-27',1,6000.00,'day','650e8400-e29b-41d4-a716-446655440002','Addis Ababa','0900130082',NULL,'2025-02-25 03:13:54','male'),('3b6da8cb-e018-11ef-a1d1-005056c00001','3b6bae46-e018-11ef-a1d1-005056c00001','Samrawit','Tilahun','doctor','medical','niguse@gmail.com','0900130082','Full-time','2024-12-30',1,3000.00,'day','650e8400-e29b-41d4-a716-446655440003','Addis Ababa','0900130082',NULL,'2025-02-01 00:13:35','male'),('4de3277f-e028-11ef-a1d1-005056c00001','4de0b2e1-e028-11ef-a1d1-005056c00001','Gebremeskel','Haile','doctor','medical','jelo@gmail.com','0902366969','Full-time','2006-11-11',1,6000.00,'Day','650e8400-e29b-41d4-a716-446655440002','Addis Ababa','0900130085',NULL,'2025-02-25 05:43:47','male'),('650e8400-e29b-41d4-a716-446655440000','550e8400-e29b-41d4-a716-446655440002','Semeriya','Legesse','Nurse','Emergency','john.doe@example.com','555-1234','Full-time','2020-03-15',1,55000.00,'Day',NULL,'123 Main St, Springfield, USA','{\"name\": \"Jane Doe\", \"relation\": \"Spouse\", \"phone\": \"555-5678\"}',_binary 'https://example.com/profiles/john_doe.jpg','2025-01-10 23:41:55',NULL),('650e8400-e29b-41d4-a716-446655440001','550e8400-e29b-41d4-a716-446655440000','Edini','Amare','Doctor','Diagnosis','sarah.johnson@example.com','555-9876','Part-time','2018-06-01',1,120000.00,'Day',NULL,'456 Elm St, Springfield, USA','{\"name\": \"Paul Johnson\", \"relation\": \"Brother\", \"phone\": \"555-8765\"}',_binary 'https://example.com/profiles/sarah_johnson.jpg','2025-01-10 23:41:12',NULL),('650e8400-e29b-41d4-a716-446655440002','6bff076f-d582-11ef-9523-005056c00001','Admin','User','Administrator','Administration','emily.clark@example.com','555-2345','Contract','2021-01-10',1,40000.00,'Night','650e8400-e29b-41d4-a716-446655440003','789 Pine St, Springfield, USA','{\"name\": \"Mark Clark\", \"relation\": \"Husband\", \"phone\": \"555-3456\"}',_binary 'https://example.com/profiles/emily_clark.jpg','2025-01-20 22:47:23',NULL),('650e8400-e29b-41d4-a716-446655440003','550e8400-e29b-41d4-a716-446655440004','Michael','Brown','Administrator','Manager','michael.brown@example.com','555-6543','Full-time','2015-09-25',1,75000.00,'Day',NULL,'321 Oak St, Springfield, USA','{\"name\": \"Lisa Brown\", \"relation\": \"Daughter\", \"phone\": \"555-7654\"}',_binary 'https://example.com/profiles/michael_brown.jpg','2025-02-24 22:54:46',NULL),('677e8400-e29b-41d4-a716-446655440043','357df13c-c77e-11ef-918a-005056c00001','Helen','Bedelu','Laboratory Technician','Laboratory','helen.brown@example.com','555-6543','Full-time','2015-09-25',0,75000.00,'Day',NULL,'321 Oak St, Springfield, USA','{\"name\": \"Lisa Brown\", \"relation\": \"Daughter\", \"phone\": \"555-7654\"}',_binary 'https://example.com/profiles/michael_brown.jpg','2025-01-05 03:14:22',NULL),('78621cdb-e01c-11ef-a1d1-005056c00001','78620103-e01c-11ef-a1d1-005056c00001','Kaleb','Abel','admin','administrative','kaleb@gmail.com','0900130082','Part-time','2025-01-30',1,5000.00,'night','650e8400-e29b-41d4-a716-446655440002','Addis Ababa','0900130082',NULL,'2025-02-01 00:43:55','male'),('7f26a855-e014-11ef-a1d1-005056c00001','7f266162-e014-11ef-a1d1-005056c00001','Mahider','Tesfaye','doctor','medical','hilcoe2@gmail.com','0900125689','Part-time','2025-01-03',1,3000.00,'night',NULL,'Addis Ababa','0900130082',NULL,'2025-01-31 23:46:50','female'),('80ba0d30-e019-11ef-a1d1-005056c00001','80b844be-e019-11ef-a1d1-005056c00001','Mihret','Edini','nurse','medical','mahider@gmail.com','0900130082','Part-time','2024-12-31',1,2000.00,'night','650e8400-e29b-41d4-a716-446655440003','Addis Ababa','0900130082',NULL,'2025-02-01 00:22:41','female'),('9d72994a-e00f-11ef-a1d1-005056c00001','9d6f7f00-e00f-11ef-a1d1-005056c00001','Muluken','Tilahun','doctor','administrative','muluken.inbox@gmail.com','0900130082','Part-time','2025-01-05',1,2000.00,'day',NULL,'Addis Ababa','0913313103',NULL,'2025-01-31 23:11:54','male'),('bc1e5a81-d7d6-11ef-9523-005056c00001','bc1deb04-d7d6-11ef-9523-005056c00001','123456','123456','doctor','medical','123456@gmail.com','123456','Full-time','2025-01-02',1,2000.00,'day',NULL,'123456','123456',NULL,'2025-01-21 12:04:35','female'),('cc44f676-e01b-11ef-a1d1-005056c00001','cc43f355-e01b-11ef-a1d1-005056c00001','Almaz','Hamza','nurse','medical','almza@gmail.com','0900130059','Part-time','2025-01-31',1,3000.00,'day','650e8400-e29b-41d4-a716-446655440002','Addis Ababa','0900130082',NULL,'2025-02-01 00:39:06','male'),('cdc6c59d-e020-11ef-a1d1-005056c00001','cdc4f8a7-e020-11ef-a1d1-005056c00001','Almaz','Hamza','doctor','medical','uiare@gmail.com','0900258963','Part-time','2024-02-06',1,5000.00,'day','650e8400-e29b-41d4-a716-446655440002','Addis Ababa','0900130082',NULL,'2025-02-01 01:14:56','female'),('db6f12f8-f2be-11ef-8b3a-005056c00001','db6db3d6-f2be-11ef-8b3a-005056c00001','Zelalem','Amare','doctor','medical','zelalem@gmail.com','0900130082','Full-time','2025-02-12',1,3000.00,'day','650e8400-e29b-41d4-a716-446655440002','Nifas Silk Lafto','0900130082',NULL,'2025-02-24 17:51:41','male'),('e40a03a1-e013-11ef-a1d1-005056c00001','e4086171-e013-11ef-a1d1-005056c00001','Melate','Eshetu','admin','administrative','hilcoe@gmail.com','0900130085','Full-time','2025-01-18',1,3000.00,'night',NULL,'Addis Ababa','0985856978',NULL,'2025-01-31 23:42:30','female'),('f3a57ee1-d7d6-11ef-9523-005056c00001','f3a56945-d7d6-11ef-9523-005056c00001','Samrawit','Eshetu','doctor','medical','samreawi@gmail.com','0913008256','Part-time','2025-01-17',1,2000.00,'day',NULL,'Nifas Silk Lafto','09110802451',NULL,'2025-01-21 12:06:08','female');
/*!40000 ALTER TABLE organization_staff ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS patient;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE patient (
  id char(36) NOT NULL,
  user_id char(36) DEFAULT NULL,
  first_name varchar(100) NOT NULL,
  last_name varchar(100) NOT NULL,
  date_of_birth date NOT NULL,
  gender char(10) NOT NULL,
  phone_number varchar(15) NOT NULL,
  marital_status varchar(20) NOT NULL,
  occupation varchar(100) DEFAULT NULL,
  nationality varchar(50) NOT NULL,
  email varchar(255) DEFAULT NULL,
  profile_picture blob,
  PRIMARY KEY (id),
  UNIQUE KEY email_UNIQUE (email),
  KEY user_id (user_id),
  CONSTRAINT patient_ibfk_1 FOREIGN KEY (user_id) REFERENCES app_users (id) ON DELETE SET NULL,
  CONSTRAINT patient_chk_1 CHECK ((`gender` in (_utf8mb4'Male',_utf8mb4'Female')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES patient WRITE;
/*!40000 ALTER TABLE patient DISABLE KEYS */;
INSERT INTO patient VALUES ('190a4330-d5d9-11ef-9523-005056c00001','1907d2e1-d5d9-11ef-9523-005056c00001','Girma','Meskel','2222-02-12','female','0900130082','married','J','j',NULL,NULL),('27fa02aa-b5a4-11ef-970a-005056c00001','550e8400-e29b-41d4-a716-446655440001','Eden','Dereje','2002-05-11','Female','0912 345 678','Single','Senior Accountant','Ethiopia',NULL,NULL),('27fa1576-b5a4-11ef-970a-005056c00001','550e8400-e29b-41d4-a716-446655440003','Abel','Birhanu','1999-05-11','Male','0912 345 678','Single','Forex Trader','Ethiopia',NULL,NULL),('4a8f2b6c-d845-11ef-b188-005056c00001','4a8d34ed-d845-11ef-b188-005056c00001','Selamit','Gebremeskel','3333-03-23','female','0900130082','single','yuyyu','hhhhh',NULL,NULL),('6c002f6e-d582-11ef-9523-005056c00001','6bff076f-d582-11ef-9523-005056c00001','John','Doe','1985-07-15','Male','+1234567890','Single','Software Engineer','USA',NULL,NULL),('c4d4e549-d582-11ef-9523-005056c00001','c4d29db6-d582-11ef-9523-005056c00001','John','Doe','1985-07-15','Male','+1234567890','Single','Software Engineer','USA',NULL,NULL),('cfb2590f-d5d6-11ef-9523-005056c00001','cfb11070-d5d6-11ef-9523-005056c00001','Edini ','Amare','2025-01-07','male','0900130082','single','Job','Ethio',NULL,NULL),('f5deec2a-d79a-11ef-9523-005056c00001','f5db8f2b-d79a-11ef-9523-005056c00001','Mihret','Tilahun','2025-01-08','male','0900130082','married','Engineer','Ethiopian',NULL,NULL);
/*!40000 ALTER TABLE patient ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'e-doctor'
--

--
-- Dumping routines for database 'e-doctor'
--
/*!50003 DROP FUNCTION IF EXISTS GetPatientAgeByDiagnosis */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=root@localhost FUNCTION GetPatientAgeByDiagnosis(diagnosisId CHAR(36)) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE dateOfBirth DATE;
    DECLARE age INT;

    -- Retrieve the patient's date of birth using the diagnosis ID
    SELECT p.date_of_birth
    INTO dateOfBirth
    FROM diagnosis d
    INNER JOIN patient p ON d.patient_id = p.id
    WHERE d.id = diagnosisId;

    -- Calculate the age if dateOfBirth is not NULL
    IF dateOfBirth IS NOT NULL THEN
        SET age = TIMESTAMPDIFF(YEAR, dateOfBirth, CURDATE()) 
                  - IF(DATE_FORMAT(dateOfBirth, '%m-%d') > DATE_FORMAT(CURDATE(), '%m-%d'), 1, 0);
    ELSE
        SET age = NULL; -- Return NULL if the diagnosisId is not found
    END IF;

    RETURN age;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS ActivateUserById */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=root@localhost PROCEDURE ActivateUserById(IN p_staff_id CHAR(36))
BEGIN
    DECLARE v_user_id CHAR(36);

    -- Get the corresponding user_id from organization_staff
    SELECT user_id INTO v_user_id 
    FROM organization_staff 
    WHERE id = p_staff_id;

    -- Deactivate the user in app_users
    UPDATE app_users
    SET is_active = 1
    WHERE id = v_user_id;

    -- Deactivate the staff in organization_staff
    UPDATE organization_staff
    SET is_active = 1
    WHERE id = p_staff_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS AddOrganizationStaff */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=root@localhost PROCEDURE AddOrganizationStaff(
    IN p_first_name VARCHAR(100),
    IN p_last_name VARCHAR(100),
    IN p_password_hash TEXT,
    IN p_role VARCHAR(100),
    IN p_department VARCHAR(100),
    IN p_email VARCHAR(255),
    IN p_phone_number VARCHAR(20),
    IN p_employment_type ENUM('Full-time', 'Part-time', 'Contract'),
    IN p_date_of_joining DATE,
    IN p_salary DECIMAL(10, 2),
    IN p_shift VARCHAR(50),
    IN p_gender VARCHAR(10),
    IN p_supervisor_id CHAR(36),
    IN p_address TEXT,
    IN p_emergency_contact VARCHAR(500)
)
BEGIN
    -- Declare variables for generated username and user ID
    DECLARE v_username VARCHAR(100);
    DECLARE v_user_id CHAR(36);

    -- Generate a unique username
    CALL GenerateUniqueUsername(p_first_name, p_last_name, @generated_username);
    SET v_username = @generated_username;

    -- Insert into app_users table
    INSERT INTO app_users (id, username, password_hash, role)
    VALUES (UUID(), v_username, p_password_hash, p_role);

    -- Get the ID of the newly added user
    SET v_user_id = (SELECT id FROM app_users WHERE username = v_username);

    -- Insert into organization_staff table
    INSERT INTO organization_staff (
        id,
        user_id,
        first_name,
        last_name,
        role,
        department,
        email,
        phone_number,
        employment_type,
        date_of_joining,
        is_active,
        salary,
        shift,
        supervisor_id,
        address,
        emergency_contact, gender
    )
    VALUES (
        UUID(),
        v_user_id,
        p_first_name,
        p_last_name,
        p_role,
        p_department,
        p_email,
        p_phone_number,
        p_employment_type,
        p_date_of_joining,
        TRUE, -- Default is_active to TRUE
        p_salary,
        p_shift,
        p_supervisor_id,
        p_address,
        p_emergency_contact,
        p_gender
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS ChangeAddressOrganizationUser */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=root@localhost PROCEDURE ChangeAddressOrganizationUser(
    IN p_staff_id CHAR(36),
    IN p_new_address VARCHAR(255)
)
BEGIN
    UPDATE organization_staff
    SET address = p_new_address
    WHERE id = p_staff_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS ChangeDepartmentOrganizationUser */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=root@localhost PROCEDURE ChangeDepartmentOrganizationUser(
    IN p_staff_id CHAR(36),
    IN p_new_department VARCHAR(50)
)
BEGIN
    UPDATE organization_staff
    SET department = p_new_department
    WHERE id = p_staff_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS ChangeEmailOrganizationUser */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=root@localhost PROCEDURE ChangeEmailOrganizationUser(
    IN p_staff_id CHAR(36),
    IN p_new_email VARCHAR(255)
)
BEGIN
    UPDATE organization_staff
    SET email = p_new_email
    WHERE id = p_staff_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS ChangeEmergencyContactOrganizationUser */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=root@localhost PROCEDURE ChangeEmergencyContactOrganizationUser(
    IN p_staff_id CHAR(36),
    IN p_new_emergency_contact VARCHAR(255)
)
BEGIN
    UPDATE organization_staff
    SET emergency_contact = p_new_emergency_contact
    WHERE id = p_staff_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS ChangeEmploymentTypeOrganizationUser */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=root@localhost PROCEDURE ChangeEmploymentTypeOrganizationUser(
    IN p_staff_id CHAR(36),
    IN p_new_employment_type VARCHAR(50)
)
BEGIN
    UPDATE organization_staff
    SET employment_type = p_new_employment_type
    WHERE id = p_staff_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS ChangeGenderOrganizationUser */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=root@localhost PROCEDURE ChangeGenderOrganizationUser(
    IN p_staff_id CHAR(36),
    IN p_new_gender VARCHAR(10)
)
BEGIN
    UPDATE organization_staff
    SET gender = p_new_gender
    WHERE id = p_staff_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS ChangePhoneNumberOrganizationUser */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=root@localhost PROCEDURE ChangePhoneNumberOrganizationUser(
    IN p_staff_id CHAR(36),
    IN p_new_phone_number VARCHAR(15)
)
BEGIN
    UPDATE organization_staff
    SET phone_number = p_new_phone_number
    WHERE id = p_staff_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS ChangeProfilePictureOrganizationUser */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=root@localhost PROCEDURE ChangeProfilePictureOrganizationUser(
    IN p_staff_id CHAR(36),
    IN p_new_profile_picture BLOB
)
BEGIN
    UPDATE organization_staff
    SET profile_picture = p_new_profile_picture
    WHERE id = p_staff_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS ChangeRoleOrganizationUser */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=root@localhost PROCEDURE ChangeRoleOrganizationUser(
    IN p_staff_id CHAR(36),
    IN p_new_role VARCHAR(50)
)
BEGIN
    UPDATE organization_staff os
    JOIN app_users u ON os.user_id = u.id
    SET os.role = p_new_role,
        u.role = p_new_role
    WHERE os.id = p_staff_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS ChangeSalaryOrganizationUser */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=root@localhost PROCEDURE ChangeSalaryOrganizationUser(
    IN p_staff_id CHAR(36),
    IN p_new_salary DECIMAL(10, 2)
)
BEGIN
    UPDATE organization_staff
    SET salary = p_new_salary
    WHERE id = p_staff_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS ChangeShiftOrganizationUser */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=root@localhost PROCEDURE ChangeShiftOrganizationUser(
    IN p_staff_id CHAR(36),
    IN p_new_shift VARCHAR(50)
)
BEGIN
    UPDATE organization_staff
    SET shift = p_new_shift
    WHERE id = p_staff_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS ChangeUsernameOrganizationUser */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=root@localhost PROCEDURE ChangeUsernameOrganizationUser(
    IN p_staff_id CHAR(36),
    IN p_new_username VARCHAR(50)
)
BEGIN
    UPDATE app_users u
    JOIN organization_staff os ON u.id = os.user_id
    SET u.username = p_new_username
    WHERE os.id = p_staff_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS DeactivateUserById */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=root@localhost PROCEDURE DeactivateUserById(IN p_staff_id CHAR(36))
BEGIN
    DECLARE v_user_id CHAR(36);

    -- Get the corresponding user_id from organization_staff
    SELECT user_id INTO v_user_id 
    FROM organization_staff 
    WHERE id = p_staff_id;

    -- Deactivate the user in app_users
    UPDATE app_users
    SET is_active = 0
    WHERE id = v_user_id;

    -- Deactivate the staff in organization_staff
    UPDATE organization_staff
    SET is_active = 0
    WHERE id = p_staff_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS GenerateUniqueUsername */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=root@localhost PROCEDURE GenerateUniqueUsername(
    IN p_first_name VARCHAR(50),
    IN p_last_name VARCHAR(50),
    OUT p_generated_username VARCHAR(100)
)
BEGIN
    DECLARE is_unique BOOLEAN DEFAULT FALSE;
    DECLARE temp_username VARCHAR(100);
    DECLARE random_suffix VARCHAR(10);

    WHILE is_unique = FALSE DO
        -- Generate a random suffix (2-digit number or random letter)
        SET random_suffix = CASE 
            WHEN RAND() < 0.5 THEN LPAD(FLOOR(RAND() * 100), 2, '0') -- Random 2-digit number
            ELSE CHAR(FLOOR(97 + (RAND() * 26)))                    -- Random lowercase letter
        END;

        -- Concatenate first name, last name, and random suffix
        SET temp_username = CONCAT(LOWER(p_first_name), '.', LOWER(p_last_name), random_suffix);

        -- Check if the generated username already exists
        IF NOT EXISTS (
            SELECT 1 FROM app_users WHERE username = temp_username
        ) THEN
            SET is_unique = TRUE;
        END IF;
    END WHILE;

    -- Set the generated unique username as the output
    SET p_generated_username = temp_username;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS GetAdminUsers */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=root@localhost PROCEDURE GetAdminUsers()
BEGIN
    -- Select the id and concatenated full name of users with the role 'admin'
    SELECT 
        id, 
        CONCAT(first_name, ' ', last_name) AS full_name
    FROM 
        organization_staff
    WHERE 
        role = 'Administrator';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS GetAllActiveOrganizationUsers */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=root@localhost PROCEDURE GetAllActiveOrganizationUsers()
BEGIN
    SELECT 
        os.id,
        os.first_name,
        os.last_name,
        os.gender,
        os.role,
        os.department,
        os.email,
        os.phone_number,
        os.employment_type,
        os.date_of_joining,
        os.is_active,
        os.salary,
        os.shift,
        os.supervisor_id,
        os.address,
        os.emergency_contact,
        u.username,
        u.is_active AS user_is_active,
        u.created_at
    FROM 
        organization_staff os
    JOIN 
        app_users u ON os.user_id = u.id
	WHERE os.is_active = 1;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS GetAllInactiveOrganizationUsers */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=root@localhost PROCEDURE GetAllInactiveOrganizationUsers()
BEGIN
    SELECT 
        os.id,
        os.first_name,
        os.last_name,
        os.gender,
        os.role,
        os.department,
        os.email,
        os.phone_number,
        os.employment_type,
        os.date_of_joining,
        os.is_active,
        os.salary,
        os.shift,
        os.supervisor_id,
        os.address,
        os.emergency_contact,
        u.username,
        u.is_active AS user_is_active,
        u.created_at
    FROM 
        organization_staff os
    JOIN 
        app_users u ON os.user_id = u.id
	WHERE os.is_active = 0;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS GetOrganizationUserById */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=root@localhost PROCEDURE GetOrganizationUserById(IN p_staff_id CHAR(36))
BEGIN
    SELECT 
        os.id AS id,
        os.first_name,
        os.last_name,
        os.role,
        os.gender,
        os.department,
        os.email,
        os.phone_number,
        os.employment_type,
        os.date_of_joining,
        os.salary,
        os.shift,
        os.supervisor_id,
        os.address,
        os.emergency_contact,
        os.profile_picture,
        u.username,
        u.is_active AS user_is_active,
        u.created_at,
        u.last_login
    FROM 
        organization_staff os
    JOIN 
        app_users u ON os.user_id = u.id
    WHERE 
        os.id = p_staff_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS Insight_GetPatientCountByGender */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=root@localhost PROCEDURE Insight_GetPatientCountByGender()
BEGIN
    SELECT 
        gender,
        COUNT(*) AS number_of_patients
    FROM 
        patient
    GROUP BY 
        gender;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS ResetOrgUserPwdById */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=root@localhost PROCEDURE ResetOrgUserPwdById(
    IN p_organization_staff_id CHAR(36), -- ID from organization_staff table
    IN p_new_password VARCHAR(255)  -- New password to set
    )
BEGIN
    DECLARE v_user_id CHAR(36);

    -- Get the user_id from organization_staff table
    SELECT user_id INTO v_user_id
    FROM organization_staff
    WHERE id = p_organization_staff_id;

    -- Check if the user_id exists
    IF v_user_id IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'User not found in organization_staff table';
    ELSE
        -- Update the password_hash in app_users table
        UPDATE app_users
        SET password_hash = p_new_password
        WHERE id = v_user_id;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS UpdateUserCredentials */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=root@localhost PROCEDURE UpdateUserCredentials(
    IN p_current_username VARCHAR(100),
    IN p_new_username VARCHAR(100)
)
BEGIN
    DECLARE v_user_id CHAR(36);
    
    -- Fetch user ID
    SELECT id INTO v_user_id
    FROM app_users
    WHERE username = p_current_username;
    
    -- If no user found, exit procedure
    IF v_user_id IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'User not found';
    END IF;
    
    -- Check if the new username already exists
    IF EXISTS (SELECT 1 FROM app_users WHERE username = p_new_username) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Username already taken';
    END IF;
    
    -- Update username
    UPDATE app_users
    SET username = p_new_username
    WHERE id = v_user_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-25  5:54:30
