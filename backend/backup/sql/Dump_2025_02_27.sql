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

DROP TABLE IF EXISTS `app_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_users` (
  `id` char(36) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password_hash` text NOT NULL,
  `role` enum('patient','admin','labTech','nurse','doctor','clerk') NOT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `last_login` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_users`
--

LOCK TABLES `app_users` WRITE;
/*!40000 ALTER TABLE `app_users` DISABLE KEYS */;
INSERT INTO `app_users` VALUES ('1846f2a6-e01c-11ef-a1d1-005056c00001','muluken.fantahunv','$2b$12$nyRCbRitY05c5Lwi./HUHuBKFhT3bYDumQe2oKbUiG49MSD5ZC0wq','doctor',0,NULL,'2025-02-01 00:41:14','2025-02-27 04:34:03'),('1907d2e1-d5d9-11ef-9523-005056c00001','girma.meskel37','123456','patient',1,NULL,'2025-01-18 23:16:27','2025-01-18 23:16:27'),('2713d745-d583-11ef-9523-005056c00001','jane.smith85','hashed_password_example','doctor',0,NULL,'2025-01-18 13:01:14','2025-02-24 22:54:35'),('357df13c-c77e-11ef-918a-005056c00001','lab_user','$2b$12$C6cMmpRphy7d1.X81lkhLeVbB26MbkM8x85XhG6zoGS..D9xRxwLS','labTech',1,'2024-12-01 08:30:00','2024-11-01 09:00:00','2025-01-05 17:16:43'),('3635532c-e026-11ef-a1d1-005056c00001','alemayew.girmaye52','$2b$12$xK3OX0bNNLt4PlYVkGJSAOPnmsKNxNTxksa68IErf3016dtDzod2.','doctor',0,NULL,'2025-02-01 01:53:39','2025-02-27 04:34:11'),('3b6bae46-e018-11ef-a1d1-005056c00001','samrawit_tilahun','$2b$12$DRFlqBSPnflAfuo4ju.x1OVsWNDxYIjxaoyoauwRlsqQqrE9flYOC','doctor',0,NULL,'2025-02-01 00:13:35','2025-02-27 04:34:21'),('4a8d34ed-d845-11ef-b188-005056c00001','selamit.gebremeskel21','123456','patient',1,NULL,'2025-01-22 01:15:58','2025-01-22 01:15:58'),('4ce2f962-d567-11ef-9523-005056c00001','john_doe','hashed_password_1','doctor',1,'2025-01-01 12:30:45','2025-01-18 09:41:52','2025-01-18 09:41:52'),('4de0b2e1-e028-11ef-a1d1-005056c00001','gebremeskel_haile87','$2b$12$P2pflRM0zntwctklyelaAub1SJSQnofGpGEgNqLtj8yai6yTMFmCe','doctor',1,NULL,'2025-02-01 02:08:38','2025-02-27 04:43:15'),('550e8400-e29b-41d4-a716-446655440000','doctor_user','$2b$12$ZJunvQ2iwxnjr.eWBDcfC.7Pp.WFGOIizHd/W1CqUk6GHENbqIsCG','doctor',1,'2024-12-01 08:30:00','2024-11-01 09:00:00','2025-02-13 02:45:05'),('550e8400-e29b-41d4-a716-446655440001','patient_user','$2a$10$8oIgqvZcxRyqYtwWkyl5oO9m24ieiS4WP.kLHDZ2KUxBP26Y.OiVi','patient',1,'2024-12-02 14:20:00','2024-11-15 10:45:00','2025-01-13 02:48:17'),('550e8400-e29b-41d4-a716-446655440002','nurse_user','$2a$10$8oIgqvZcxRyqYtwWkyl5oO9m24ieiS4WP.kLHDZ2KUxBP26Y.OiVi','nurse',1,'2024-12-03 18:10:00','2024-10-25 12:30:00','2024-12-31 16:51:07'),('550e8400-e29b-41d4-a716-446655440003','patient_user2','$2a$10$8oIgqvZcxRyqYtwWkyl5oO9m24ieiS4WP.kLHDZ2KUxBP26Y.OiVi','patient',0,NULL,'2024-11-10 14:00:00','2024-12-31 16:52:32'),('550e8400-e29b-41d4-a716-446655440004','admin_user','$2b$12$Cz6R5CnyCazFR85oDFk53OFBh6yEEWe6jurj9QQKpxnb2mnNPONpq','admin',1,'2024-12-04 09:15:00','2024-11-20 11:10:00','2025-02-26 20:28:30'),('550e8400-e29b-41d4-a716-446755440000','janedoe','$2b$12$KIXg3fOE.Qx6JvKfGQbyve3tIWU34x2./5myTNi/htF12Nw2B.n6i','patient',1,NULL,'2025-01-18 11:16:05','2025-01-18 11:16:05'),('5ba93b82-cb4c-4290-bc13-168a1d9b5de6','clerk_user','$2a$10$8oIgqvZcxRyqYtwWkyl5oO9m24ieiS4WP.kLHDZ2KUxBP26Y.OiVi','clerk',1,NULL,'2024-12-23 01:38:27','2024-12-31 16:51:34'),('6bff076f-d582-11ef-9523-005056c00001','john.doe14','hashed_password_example','patient',0,NULL,'2025-01-18 12:56:00','2025-02-27 04:31:09'),('78620103-e01c-11ef-a1d1-005056c00001','kaleb.abel16','$2b$12$6cGerLWytkDVWwb.4n.fge.o40RDBgpe2Y3DP3dnlMvJJ/WqQB7I2','admin',1,NULL,'2025-02-01 00:43:55','2025-02-01 00:43:55'),('7f266162-e014-11ef-a1d1-005056c00001','mahider.tesfaye43','$2b$12$dZw9c.NZuiTtPSlrudxKYuw.ywXz1yGPlVPMvjXVbO8QiNq06XIKy','doctor',0,NULL,'2025-01-31 23:46:50','2025-02-27 04:33:36'),('80b844be-e019-11ef-a1d1-005056c00001','mihret.edinit','$2b$12$gPAoQsDd0C74UoJY.Clgh.DbSwj96HjzqrcXbPp39RARsDEBwQc3.','nurse',0,NULL,'2025-02-01 00:22:41','2025-02-27 04:33:42'),('9d6f7f00-e00f-11ef-a1d1-005056c00001','muluken.tilahunq','$2b$12$8NzqGrP9pxRFWkX0VxIIx.iKygxTajlZe0BhcyGpbSDEXP7VMRZcS','doctor',0,NULL,'2025-01-31 23:11:54','2025-02-27 04:33:51'),('a6964ad4-d567-11ef-9523-005056c00001','john_doe2','hashed_password_1','doctor',1,'2025-01-01 12:30:45','2025-01-18 09:44:22','2025-01-18 09:44:22'),('a698b0b6-d567-11ef-9523-005056c00001','jane_smith','hashed_password_2','nurse',0,'2025-01-02 08:15:00','2025-01-18 09:44:22','2025-01-18 09:44:22'),('bc1deb04-d7d6-11ef-9523-005056c00001','derrtu_haile','$2b$12$wP3xYPa67Ksj8Paqiy09Fe6DdOvznDKBL2gJz2dn/0nDS55DGHlg.','doctor',1,NULL,'2025-01-21 12:04:35','2025-02-27 05:22:40'),('c4d29db6-d582-11ef-9523-005056c00001','john.doep','hashed_password_example','patient',1,NULL,'2025-01-18 12:58:29','2025-01-18 12:58:29'),('cc43f355-e01b-11ef-a1d1-005056c00001','almaz.hamza15','$2b$12$xWJOI8/ZQqaG/tyckmAlDOriPwIEUTWJ5MWO7lvNqeKE9gQbfv9ke','nurse',1,NULL,'2025-02-01 00:39:06','2025-02-01 00:39:06'),('cdc4f8a7-e020-11ef-a1d1-005056c00001','almaz.hamza34','$2b$12$TTc3HA0fi/rXc3kAlzSyReKpXBisAwb3QgC/gBa05OFSfv5CBa0tW','doctor',1,NULL,'2025-02-01 01:14:56','2025-02-01 01:14:56'),('cfb11070-d5d6-11ef-9523-005056c00001','edini .amare82','123456','patient',1,NULL,'2025-01-18 23:00:05','2025-01-18 23:00:05'),('db6db3d6-f2be-11ef-8b3a-005056c00001','zelalem.amarev','$2b$12$fmYXjblh2z9WJr17UBDNZeNA5mhiq9tuUaxWWAo4ttuq1zzXD3hFK','doctor',1,NULL,'2025-02-24 17:51:41','2025-02-24 17:51:41'),('e4086171-e013-11ef-a1d1-005056c00001','melate.eshetug','$2b$12$JJLPFN3k9kTY.8lj.ikYxOROwNkHCeA3eDLw01v.HcYZbJUiukH96','admin',1,NULL,'2025-01-31 23:42:30','2025-01-31 23:42:30'),('f3a56945-d7d6-11ef-9523-005056c00001','samrawit.eshetug','$2b$12$wgu4ytv.GF/IXxdkdv/Y.uE5.ZE4phmrD6emCOv3C.NMmX1Ad7Hsi','doctor',1,NULL,'2025-01-21 12:06:08','2025-01-21 12:06:08'),('f5db8f2b-d79a-11ef-9523-005056c00001','mihret.tilahune','123456','patient',1,NULL,'2025-01-21 04:56:42','2025-01-21 04:56:42');
/*!40000 ALTER TABLE `app_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization_staff`
--

DROP TABLE IF EXISTS `organization_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organization_staff` (
  `id` char(36) NOT NULL,
  `user_id` char(36) DEFAULT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `role` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(20) NOT NULL,
  `employment_type` enum('Full-time','Part-time','Contract') DEFAULT NULL,
  `date_of_joining` date DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `salary` decimal(10,2) DEFAULT NULL,
  `shift` varchar(50) DEFAULT NULL,
  `supervisor_id` char(36) DEFAULT NULL,
  `address` text,
  `emergency_contact` varchar(500) DEFAULT NULL,
  `profile_picture` blob,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `gender` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `supervisor_id` (`supervisor_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `organization_staff_ibfk_1` FOREIGN KEY (`supervisor_id`) REFERENCES `organization_staff` (`id`) ON DELETE SET NULL,
  CONSTRAINT `organization_staff_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `app_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_staff`
--

LOCK TABLES `organization_staff` WRITE;
/*!40000 ALTER TABLE `organization_staff` DISABLE KEYS */;
INSERT INTO `organization_staff` VALUES ('1847564c-e01c-11ef-a1d1-005056c00001','1846f2a6-e01c-11ef-a1d1-005056c00001','Muluken','Fantahun','doctor','medical','Kook@gmail.com','0900110085','Part-time','2025-01-29',0,25000.00,'day','650e8400-e29b-41d4-a716-446655440002','Addis Ababa','0900130082',_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0\0ÿ\á\0.Exif\0\0MM\0*\0\0\0\0@\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0ÿ\Û\0C\0\n	\n		\n$ &%# #\"(-90(*6+\"#2D26;=@@@&0FKE>J9?@=ÿ\Û\0C\r=)#)==================================================ÿÀ\0„„\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rðbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0¨—´•\Í\ì&)1O¤¤1 Râ–ŠL\â”\n8S¸)@¥´ c@¢Š)0IN¤9¦!´´R\ÓBbRóEC5\äV\Øó$U¦M%£šËº×­¡„È¤\ÈÁ\0ôü\êˆñb\í?º?LÓ³&\é-r’x¶GC²\\ô$æ£\Å8‚·¶1N\Ì9‘\×æ–¹øInH.[@\É“V\í<R²ü²D\ã ƒÖ¥¦4\Ñ\Ñ\Òb±Ç‰l¹Ì¥}F•\\·\Õmn\ÕÌ§\êqü\è³Cºe\Ê^´\ÐA\î1N\Í!‰HiÙ¤ \ÒS©(1IŠu\0\ÑÖ¤\ÊQ@˜§ñM\ë@†bœ)qH(M\Å>@\0¸¢–€¸¥\ìR¸\rS¨\Å;\Ð\r¢ŸŠ(”\ÜS¨ \ÒR\Ðh´b”S±HÓ… Si\Ô\Ú^hi´\Ñ@&)i\"\Æ	b\0$“BqT\îµ[k0|\É>`8Q\ÎkVñ+\Ãg‘“‚õ\Í<²¼\ÅÝ‹>rI9«Q¾\ä9v:™¼S†#gŠ\ç.¯&¹˜¼Ž[<Œœ\Õb\ç#§®Gz	\0öÀªI\"[l‘9ÝžzOþµ\'–\0%O‘Œ\Ó\ís\ÉÉ¥2c\â´ÀT\àŒ÷\ìGZh;ºö&•\Ülwp\'4Ó‡=q@‰<Î½3ô\ëH	\Æ29\Å1§§§&”–\Þ7g‘‘@\nCdu\É\ç\ëOI\ÇR3\È\é2!Œg4È¤ ò2=\Í5ô\Ýj[Iù\É\'~lWIˆ,\åÀóW\'\Ôb¸W™d$„T\áA\àS¢\Ï\'=y©i1©4zJH¯‚¤FA4\ê\á\ì5[›\\\ÜTžµ\Ð\Ùø’\Ú\ã\n\ê\È\çñ¨i¢Ô“6)1H’¬ˆ=§ŠE\r¢Š(1F\Êp¥ `\Ð)ôP!„R\n’šRbŸM¡ú(NhO¢—¥ ”\n9§\nb¸˜¢–Š\0ƒšJ“\Üu ŠL\Z\\R´i\Û(\ÙLŠ1N\Å ŠZ1E0\no­;=\ë\\Õ–\ÆØª\æ°À\éB\×@nÄº–±o`‡q\ÏE¹=G[¹º,¤ì‰†BŽõ›q3\Ü\ÈK³3ÔšŒ\î\é\ÏŒö­HÉ¶À“\ï€r8\éJ$\ç8=\Å3«€\ìp;Ó”dýMQ!\Çœg¥9\Â\àgò8§ý‰$(Àœ\ÓJCÐ•\ë@\rpz\äŠg\äqOx\ÆO\Î<Œt¦\ìd\È=Gl\ç4\0³€Á\ãRÇ·a\ÈlIRGr0{\ã\â‹\Ó<ƒ@¦Þ»\ZX¶óœŽs3Nò@?)\à”\èP\ï#×­\01\ÉÁü†\'\Í\È ú“Š’H‚`d\ç©j?/\äg\ÉÀ8<ÿ\0Ÿz\0t[rWŒž†°¡+\Ï’B‡\ç\\æ¦“\"b\Ù&€\äd8\ägƒ\Û4\ï0\Ç (Ì£•	\'ÛŽ\ãš\\’;d\r\0kiš´¶\Ó;4\Ça Œ\æºM/_Šÿ\0\ä \Ç(t÷®#\0Œ¯N\ã)ñ–ˆ¬Š\ÄH§\"¥¤\ÊM£\Ò\Æ)Ef\é\âú\Í}\ï\â†´\Ð\Z\ËcU¨‚ŸENi¼Ô‚ŒQqXebœ(`†\ÑN\"›Š`Š)ø ¤¦bž†\r( \Òb›@˜»\Å4R°1N\â£\Å/4¬ø¤ S©ƒŒQE\0ƒQE\0”TWklò¹Â¨\É4e-_WŽÁ\ne|\Ò25\Ã\Ý]Iu9’b[w4\Û\ë×ºº’V<±\ã5]g“\Åh•Œ›¸÷\ëžÀ\ã b£.A=vž†\Ç\'œv\Ï9¥Ou2ª$’Vb7d\Æ@ Æ‚bØ€x\Ïz7—Â…œSxrFp\çŠ\0—8\Ï,9\Å/•jYKd\ZG¸\áB\ã\n1‚3M‘\ÏRx y*\é–, ŸzY,ŽA\È\ã¿úô¨\ì\à\ç\æŒc8¢;Wr\Ç\ÐdZ.–\ãQoa\0T!\Ç\Ý\ÏB\\~8\'$gtiÒ’ió‚jc¥2WqqSÎ‘\\\ëc0’~n‘ƒŠlr„pp¤c½jÉ¦¶Áµ\rS¸°`I\nqŒ\à”)&\'…»Ç˜H\Ã\rWx•	\\ŒI©\ÄRyj¼\í=hòYÁ >aY•Ny\'·j_õƒ9\ç8\ÅHm¾\âr\0\ß%€\ÇË’p2:Sº0+üxO\0g4\Ì*œŒ\ã¨\ç5+€™ú;T|tÀÁ\îEŽÁ\ÆI\Æ)Ï€F$u#½D…zw=ý)Ns\Çnõ .h\éÚ”–2Sò“ó(\ï]Ý…\ìW¶\Ë,-•?¥y˜û„ƒœV·‡/\Ú\Æ÷aa\åHpsQ%sH\Ê\Úñ¤\Å58È©x¬\ÍR\Òs@i8ƒIŠb(\Åœ)!±»\r5 ¥\Å120*AIKŠ\0N)=iM6‹…ƒS¨ v ¥\â“Ö”t @)sM§PR\Ñ\Í-AE¥¤W\'\â\ë\æ%-Œcs\n\êfEc\Ðšó­bó\íwò8 ®p\r\\·\"oKø÷…(	“‘\Æ;\Z8\éž\Ø4¡NHÀ\é\ïZ${ž‡œR§9ô\éH\'Ž óVM¹\àpF3‘\Î)^\ÃJ\åm‡\'{T‘\Ä\Ù\r“\í\ÏJÓµÒ¥~JÁ§Ž¡\0\É\È9¢F‘¤\Ù\Ï%¬™\'g\âFj\í®œd\ä\àpk¤†\Ê(\Ó}ˆ©’$AÀ¬]n\Æñ –¬Å·Ò”g\r´·PFsZ0\Ø\Ç\Z¸t$f®\ìü*TŒ\Önm\în©¤U©üJ¤Ó’\Ôž0;UÄŒ\ç“N\Æ=y©\æer\"«Â¸húb«I§G\Ø\0sÁ­2?Jc¡÷\Å>f	ô2Ž”˜9Q\ï\ÅB4\Õ\Ûò\ã®µmöü\éžRö\Æ3È£\Ú2}’1ÿ\0²—’wQQM¤®	þ!\ÈÀ­²9#µFù9§\Ï!:h\å®4¡-ƒÀ¬É­Øž€\003]¤°«‚+*\ê\ÈsÀã±­¡S¹…J+¡\Ì\ã\Ë\ëŠNF}k^k@ùzUY¬Š—8ke$\ÎwŠƒ;;fÀ\à÷\ä\Zg)‘\Î3Ò”\äúúsTI\×øoV ·‘¾uROZ\éS8¯/µ\Å:6H*r\í^›c ¸³\ÖRV\Ô\Ò.ú\â”\nv(â¤±¤QŠZAEÀ1E8Q@\0¥\Í„M	‹š¤	K@!\r&)ih”R\ÑHE;µ \Z`&)ih \0bŠ)i\0”S°*9b˜ôQ\Í09\ïjfE´dor}q®8\Ï­jWF\êþYñ;\â«\ï\0sÒ´Š²1“»!	ô©Bt\ÆpFI\Æ1M$rq\éW-¢/ @8\Î:ži·`Š»%·µ2\'Ê¹\É\àõ­c¦®`@‰©ì¬„ r?Æ´’5ñ\Ï~kšuC²4µcDj Œ{S—?…8vg4ð3žÂ²f\éXf\â¥H³CBõ©Ö¤i\rH\çRñ\Çz’:~:þ¼R*\Ä.A§\ì\0ô\ÍM\åûsK\ås\Ïj\0‹ks\Ó4ÒŸYÚ¸¦ùy \n\à\×\ß,`ô\æ¬y{3\îsÈ¦x \n² \ç\ÏZˆŽµmÒ¢1Ž}E1X¦\àóÒ«\Ë|\Õ\Ç\ï\ìzTOZ¤\Éh\Ï6\ãœæ –\Ü`Œ\n\ÓtZ‰\ã÷¢f.\'1yfÉ“\ïÁ«8\äd{õº«¨”©\Èâ¹»¨¼¹\ë\Ð\×E9]Yœµ!gtW,}ò8®\Ó\Âz\ÃJ´„f5À\É\ä\×P;z\Õ\í\èY_$Œ3‚})\É]fzvsMÁ¨\í\åYc¤aGz›Š\Ä\Üf(\ê()9¥¢˜‚”IH)€\âh¤4™¤Þ¸Sy£š`¢’Š\0\\TdÔ¼RqHŒ\Ó\Å\'\á@¥§P\Õbe·\Ó\årÀc&¯Š\ÉñÙ’o+´ŽI\íÿ\0\×\Íq=>”‡rFpNA4ÀG^\ãµ4õ\í\Ï#\ì9kcTÛŒ÷\ÍjX${úñŽAB8™ÀŽ\'\"µ¬¢üÍžxz\Z\ÓZšöý\0•pcR\"N1V\ã\è|q\\¬îˆ£©~T\Å;Ú¡š!Á\'×§$b‘R †\äCS\"tü…,x\ã\Ô\ÔÈƒ\ÐúœÐ6F:\à.”\ï(ÿ\0x\àž€T\Â#øž£\Å/•ù÷\ÅU…r\0\0\Ï‚Ç¨©\nvÏ±É£\Ë\ã<P=\È<ô¨Š};U’ƒž¹¦l©°ðÄŸJG¦«nzc4apzt Ÿ\"uöª\Î:ÖŒ\Ø8\ÇZ¨\è	¦„\Ñ\\â£‘CëŠ˜\àTmŒJ´\Ì\Ú(Ks\íY\Z•˜\ØI8\à[\ÒƒY×‘™†9\íZ\ÅÙ˜\Í]Ï–S9\è;R\ä‚=*kˆ\Ú7=zƒÚ«‚G+¡jr=ó\Â×†\ëM\nz\Çò\â·q\\¿ƒfW‚Hû«d\nê¸¬¥¹¬uCh§S1H¡)h¢	IN\Å(€’¥\Å4\Óƒ\ZJZ`QE š u \Å/Jx¢€J)\Ç\Ñ@\Ås\Þ/*4£’ya€+ \Ís4•…¬qmc“\ïT·¶8 >\ÍO9\0À\ÆM@\0\ÇSŒñŽ\Õa\0Áò9­L<!½\Û8­f–2N\ß_J\ÉLˆòG\'\ïW¡—îª“´ôæ²š¹µ7fn\Â\é\ÜÕ¸ó‘\éTmNüÛ­_ \\\×4ŽØ“<T»­5©†3ú\â \Ô`A\ï‘\×*ñÉ¤$sNNIô\\’9=1ž€Õ„-\Î1\Æ}j¼hr\áV8\ë\ÎxÁ¦“‚ÜŒž:)y\ã§ò¨†ryúSøõ>\Ô\îHü@\Ï=q\ëšO¯N\Ô\áÐŠ\0k\Ç©\Í3NMJ?úÆ¢ò)Ds\Ï\\gŠg?HùÇ¹\ïPþ8¤žŸ‘ª\ïž\Õ4»Ž*	3ŒŽ\Ýi¡2#ÊšGó\äÓ¹\â£õô5H–G/|\ãB^\ã¯\Ëý*”½\rZ3g=~…$\'\ÛG§ÐšÖ¿A°·rp+!ó\Ðt\êtÁ\ÝU™\Ôø+t\Ø\ÚW\à\ÙDz«¡\è\É]\è\ÅD÷.(\Å\Z’†\àQŠp¢€P)E-0E\Ó@„À¢E0ER\0¥’ž)€œRfƒšAHhu‚Š2¹¯\íûdŽK\àWQ\\¿Œœ4<·ª;Š{^[Ç¸\Î*h¶œŒžFrOZ„q\ßð©\íÁ\ÉÊœ\ÐñZ3µ-$gh\Ïn\0\ëžÿ\0Ö§··&`¼\àrsÚ’ñ†=»W-¹˜Ž:œõ¬\ä\Í\á³R\Ý0:\ç5v3Ub\è3\Ô\Ôñ\ãŠ\ågdU‹#ùT¿\ÂjºÈ©\ã\È=ªK¹(\ß w©2TS>\\˜\Øf¦\×ñ¤4IGð«?Ltõ¨ÁQ\Çò\íS!SùP€`c¯ôüT¢0zS„\'Þš\Ñ\0Ï©¤\éøv«.¾”žW^˜\Å1dóQœþ=\êÈ„Ÿ\åš<ƒ\éJÌ«¢‘\ßÞ˜G\åÚ­\ÉBj»ƒ\Æ8Á©cEy#$\Z…\â85{o€`\Ð-©# ž¸ª\î1žµ¡.Ú§.9À\â­2Z)9#5ZLó\éVfB>•_$¥hŒ™Ÿz€\ÆOµ„\ãGzWIr?v}1\\\ä„eþ¿•oLå¬µ6<\'ÿ\0!o¢\â»\ä¯;ð\Æ\ï\íµ9ÁÏ½z\ZŠ\'¸SzŠJ)¹\ëRPñKMJ)\0RŠJu1\r \æ—4h¢F( ¢—S,\ÓÁ¦bœ)\0\ì\nm.i94LÓ³MÁ§Hbf¹ŸE›X\åî­ŒWSŠ\Åñ(\ÙR».â£UÈ–¨ó\Ô#Œ\ç\ØÕ¨s\æã‘€HªiŽqÖ­Åžy9ƒ\ëZ½Q’Ü¿_\ä\çs\ëZVv\ì>f\ï\éT,\È2\0>\è\àk~\Ü\Æq\\\Õ´:\éE=E\Ý\ß5\"d{\Òyg\'?…9öÆ„’0I5‘¾\Äð\àúf¤šH\á\Év\äEdý¾P·$ðŒ\Õ2.eròn\à\çb®0\î\Ès\ìY/‚¸\ÉA\Î\äÿ\0€§]yù›hô\Åeˆ¤Á_$rA\ëPJ“&[\ÉpÀg8\Íh£\'9-\Ô\Ö\× Võ\Â\ÕÈµ¤\É$zù\×\Z÷M\Îb;‰\àô\ÅF.ó»>ôù\"J©$zM¶«¿ò\ÐgÐŽ¿Ÿz½ö‚A\ÚG\áÚ¼\Ê\Ö\æDqµ\Û#\ßü\æº}+S’L©?69\Ïoþµg(¥±´&\Þ\çR’(<žI\è\rL.yS\ïX²L3òñÚŸý9t5•\ì\Í\íusXÊ™À\à˜=i¯\"\à\ãñ&³’L{}jI.ÓƒÀ\r‡(ù¥©\ãµR’\é\îF@\â«]]g\'\nk\"\æè™œdò@\Èÿ\0=\èJâ”¬w\ÔT!c\Ð‡Œ\Õ	µhÿ\0¼2:óšÂº\Ôvf0x\Îp9¬\é/›#¦\Ü\ädt­•4sº­\êª9\ÃZ\ïÛ’3´úÿ\0*Á{#\ç\nÄŒp1BGq#€®z\Z¿f‘Ÿµ“5N¦™\èq\ÜœT™W@\êAž+0\ØJ\à\î\nÎ§¶\ßn0\àmµ-.…)>¥‰Q½®Z\ç>{úfº\ÌŸB3\\­À\ÍËœUKvEm‘\Ðx6\Üý±\å#\åh>†»`+\ÃZq³°R\Ã\çq¸\äcº)\ÉÝ“d7šZ\\R\àÔ” ¢“šZ`>ƒŠAECiE%:€N\ìQŠ7Š(¢P\r8ŠŒf†=‡\ZQKE )2( \Ó\àES\Ô\âó¬¤NNTž*È¡\Ð9\èE4ò—O*GVŒ\Õ$oòv\ÏP}*÷ˆí…¾§\'O˜\îÀª\ãŽGJ\ÔÃ©©§œ}k¥„W3¤ÿ\0¯±5\Ô\Æ:n+–®\çm\r…\çÚ¡¸\È;G5o­3\å=ŽGCÒ²Zjn\ÕÄ‚\Ù\Þ\ë\ëV\Ò$\à•Ž¸8\ÍB’\nY/b	vP¹4œ\ÊQE¯)rPTt\È\Çò©D@‚\nŽ{cük=J\æèŸ²@Y3÷\Ü\íü\n³\r•ü\Î\âKø\á\Û\ÉP¸\Ç\ç\ÛÞ©&È“Šu¦A2Ê¼v\ÇOð¬k\Í\ÆIQ\ÐZWV7q}\ÍD\Èzm?ç¨¬ùe¿‹;$\ï\È\Û\íUi.¤^/¡M#0‘\çFñœ\Õ\Ëk„RJ\à1\Í@/•ÈŽx\Ê98?—Z`¨\â“o©I.†\Ä7‘“\ÓÓ½_Š]\ã\Ü\ZÅ·ƒÚ´\íƒ1ŒVOsd´.ù¥=> \Ô3KÁçŽ zT\æ\Þ@3‘Œt5J\ã cŽ<P\ÆP–Rw¯<óTn0I\É\ëS\\Lk:K‘\É=*\ãs)$\Ä6\Ë+ü‹Ï­X‡AYXó\èj;Qs6hª„\ãsÿ\0žkv\ßJ¼‰ôF¤g\î\àÎ´´Œ½Ò¬Z<õjO¸\ÍN-£NŠª=†*)~\Ùv\Þ+‘\×\0\åU^ö\îùˆ²QòŸþ½KR\îZ\å]¯ÿ\0w§AT\îm•\ã<Št7ñLÜ†<b•\ä\Îi&\ÓI¢•°>X\Ïn+-Œº\ÒDYqÆºTL\èyª\Z-±—Ä²9±j\è¦÷g%E²;HÀ\0T‚£\ÖOºÀ‘\ÔœTÀP\r;Š‰óNJ!üS)\Ô\n4¸4\áKŠ\0–ŸŠi \Í\Ú)€”S±E\"¤J˜ c1@©N) R\0\â\â”\Óx bŠ\ËtQ\ÍHzjÀ\Õï®’\á\Ñ\Ê1þ 3Q6\Ò\ÐÒ”›odSñF‘,ÀÜ ù”r+•…1»r+\Ò\ìn\Z\â\0—H70Á\ã­rúþ‚¶d\ÍeŒž„\ç\é\Õ{0­E%\Í;K\íxÀ\èk«t\é\\Î‹n†@\×N1¸Ò«¸\èè‡œR\Ø.{S\ã\çð\éV>]`\ÙÒ—S2IDhqŒö¬Ç’-\æ[\éPrÒ¶n-Z\\\íÀ\È\ì+\çE2É†rNzgqJú™É»hK­w}˜´\È>\ï%\É\éÚ¹\éµ©o\Ìw\×R¢\Ú\ìƒ8\íÓ½u\Ú*M¤¢º0ù•\ÆQÒ³5­\ß\Þ\É=šyF_™œó\ìEosT„ÙŸ\å\Û}ª\í\íµIá·Ž-Ð´ –•ð\Þ:kwLðö«s£C¨[\\y\Üd\Äõˆž½y€r9\Åw\ÖZ\ä¶:T6–¶j‘Æ»C;\ç?•S”I…9\îržt‚\éS)\å\\cðþ•£enLjwnRv\î\'§Ö¤˜}²a%ÍŒ’r\åsÿ\0\ê¦XYOc$›]”¶\ßÎ°•’º:c½‰~\Î\"™“\Ð\æ´lf³´—Dþ5¥eœ\àu¬\çD–5H_#\Í`\ê9\äsÒ¶\Î|³\È\Èõ¬+ôm\çô£p±ösu9NŠI¢\ê\Æ6\r;ÿ\0\nzÓ’F¶º\ØñŸJ³•\Ç\Ú^wH.›pf8\Åm+•&RJšö\Þ*¹ýO\ÐV\\Áu¦\\Mu}po·¨H\0á—¿#¡\è&úk‹²¸³…\ãu\Úv6\rp÷>¹ŽGhYv\ç€{~U\Ñ‘\Ë8M™v²\\\Ëu	pû¶ON\ßÊ·/¢\Ôô|}§÷\Ð\Ãg$TzN™&~—ù†>UAÀ\'ñ­MV\æ\ëTB¶$Â£4¥(°„$µ0\Òõ&e‘2OQÞ¶-‰”\íŠ\È\ZQø<æ¶¬\â0\Æ|VSµ´5§\ÌÞ¤†1Q\è1*j·N\ä*–Á8«©\Ü\Æû$hØ©\'3I;&‹Q¼“45V\Þ\Ú`Ápx\ÇjÚ†A,*ÿ\0\Þ®\Þ\×xW“%‹\â»{<}–0;.1N…Yh™! N¤­ S€ b—4\0\Z@\â”\Ôt\ÄI¸RdSy¤\Å\0:Ž(¥\Å\0%Q@\r\"¢rjSQ\ã­\r<TiR\nHdoM\ç\Í4PŽ6}kX\Ô\ß\È\Ì>\èÀ­‡\ÆÁ\ÏCž*œ–\íöò½ˆ\Ýõ¬*=QÙ‡WL·…x\Ç\Ì9Ò³õ2·š|€ŽJ\ã†µ«$0ŠÂ’óÎº‘vR2\0\ïY\Å\Ý\Ü\ÒiZ\Æ6J\Ät\ã¹“\í“\éT4\è\Ö)&Àþ*¼5¬\Ý\Ý\Îzj\É\"\Ì «I\Î>ö*¤Cüj\ä]údô“7B\ì8<UIl˜’À€@\È&µ¢Œ°\n°-\Æ:Ÿj4sBYa%]PPqOûpO\î@MnIj3þ­~¸¨þÊÿ\0Õ®O$\â­\Ó0\Þ\é\Ü#\Ø\"fš–\×7–£»9\Çò­\ï)S8\0\ïŠiBHÀüj®‘*-³6‹©,\ÝI5%\Æ8D\Î1\É5y\ã÷=I¨|±’}k9O±¤i\ÛVVŠ9\Å]„\0\Ô\\&=)cr\Ð\Z\ËZ\Z‡=ˆ¬«\è^+M$sùUK±”8uC\æ\Ü<e±M·,Skg#¡­]q\Ã\Õ]	\ìO¢v2j\á%¼\àn…ó\ìGZ‰\î.£À‘\à¸V²G”\är;\Ò8\Êó\Ó Us!4\Ìcx\ß\Ý_\Ë\ß5¤8QÏ·5°cˆv‚{)Ÿf]\ä¦W\'µ&ÁE³8Z¶rÀ\ç\Üb¤(ò­…»úwªòE\É©½\Çk-\nœ\ìüj[ku›~s‚1M)€jÅ\0\Ü\Z¶ô\";\ØÏ’\ÊF£€ùÀ®†\×þ=ûVu\Ô_\éªÞ‹’+RÀ«§Üš\ïD‰1\Å3jN\Õ­zÃ§Tc4\áHæ’Š=h¸…¥À¦ŒÓ©ŒZL\Ñ\Í7šqx¢“P1¦’”J1\Í\00w©(\0R)X6\ÒSriÙ ¿\Ü4\ìoÔ†;D))\Öd\É:nÙ¥cUXwº\"ºˆœŽæ¡“MŽ(l\Ý4‡$úS¾Ú¢ð+œ`\àƒZ\Òm.[ƒ‘Y%do\'­ŽE\â÷ò/c\È¥KQÔŠMK	©û2\â–:\Õ\ê®`´v-ÅŒÕ¸p\Ô\Õ8A\È<\äU¸\ë&kFdg5y\çµgÃžÝº\Õ\Øùø\æ„6c ëš¬CsÀÈ«˜\àúž\0¥ò‰\âª\ìE·ir2A>•\"[ñ\Å]\Ï ¦I¶4%ˆ\ç¯=iz‡¡I\ã\ÆH\éœ\Z\ÑS$‘šŠóRT \ê8\É5%\0¶Kz–ŠL|®¹\Ïj#‘\Ó›$,vŒM^†\ß\0z‘C\Ð\Ù$Q\áE2=\riCPq\íP\\\Û6¨©±W\ès\×#\Ë=ñUC\äsZñ1ú\ÕAm¾GQÞ´[5©~\ÕÁ\0À\ÕÏ³©³¬³Ž}\rj\Ä\ãÓ½O[¶!û2ó‘\Ô}(òqW‚qƒ€qQ¼xüó@X©$cJÏš0	\ÇsZRgžµF\ã> \â3>@9–r\ÝóÛ¥:L\à\Ô6À=\Èžµ¢\Õ-$‹\×\Ï:8\Æ?\Z\Ò\â³\Îß·Æ ’#\ã&¯ŠÖž\Æ5Ÿ½ai™\æ\Í ¡ˆ¢\Å\0SMŠ8¦ƒA¤ŒR&jAŠhb€*^)´E-«œP	¥\"œ3J{\Ð1Jh¸\æŒ\Ðs“II\î5°f¢wh¤‚Z3‡QüKÿ\0Ö©)¢O*@\Üm<\ZŠŠ\èÚŒ­\"®­b·\è—smbsJe½µ…ˆ”(\ät§I¶œIú¦9*9\ÅiF‘\\!\ì1\È5†\È\ê\ÜÀ\ÔdYDs¯F\Zd\'8©5(R1Ç¡²*µ¹\ã\éZ­Qƒ\ÒF”DqV\â=y¬ø\Í]„ý+mh\Ä~AÓŽõj_\Ç5ŸO~@\Æ3W­\Ü=zTÜ»b\ÛÕ€\É<T»\Âg“Ô“Ò³¤!Ð®\â¤£µ+\Üq·?\\U&&‰\å¹ƒŠ\Ä\Ôo™þE\'ŸJ’\ê\à\àò8\éœUtidzg©\âš\Ô…|r‹ÝŽMmZ\Çsc<Œ\â²õZ\"$Lü§8\Îk*\ãZ¹‹J©#ŽM6›Ø•$¯s·0\Ä9\Þ\æ\ÉEp\ã+\ë|,öE‡÷ƒVž½\æ\ÞZ6\';ŠN\r+\Øqœ[µ\Îò\ÎXeJe\Õ\ÌD++ñ°njŽ\æøl8aŠžgk•^÷\å\Ö\âB£Ö–+a\Z`\ã½sW^!KWh\àYI\Ç\0~5\0ñ¡¿\n„õ5|Ž\Ä9«›ò³Í¹z“\Î*ý½\ÑÀõ¬\ï\Ú\ç#Ô\Î*\ìs?¥K]\ËO±¼%\ë\ï\ß¥.Æ³\â˜`sëžµ ~¿1<c©l»—¹\à\Õ+‚pJ°\îy\çƒTer3œ;Ð„ö*Ëšm’/˜\îÀ\áNA¤•\Æ\r-ž\â’sò\îÀµ²Z\í\êX±s,‚CÔŒ“Zb©\Ù\07\ãqWkds\Ôw´fŠCVf(zCŠhœE\0(\Å.)¢–€)\ÔÔ§P\æŒ\Óih9¢–Š\0‹ŠR* jMüPdâ¾šFi¥a‰ÖŠ@i\Ù\0\ÃLp#±©\r6€\Õ’Ê¯C\ëW~X\Ðú‘À\ê s\Ïl\à\Õ\ØQ8r\ÄñÀ=«šj\Ì\í¦\îŒ}JÔ¤%Û¹\Ï5\é[ú´ˆm˜q\íXqƒ\ïU¡Vw&ô«I\ÎyªÂž™©eÅšp\Ê=\ê\ÚKÖ²¡p*Ï›Y3TË†Sƒëž¸¨d˜€xSPù£‘\ÅAspcŒô\Éh\Ôw\"¸˜\È\á}jÝ´d!ô5Ÿo\É\'œ\Z\ÒÈŠ>zU\ìM\î8\È$Lu>˜\éYsh°H\åùV\'<VŽõL\ã¿#ËJõ\Îi¦\Ö\Âi=\Ê#IŒ\\:÷)·:!•	t\ÅZy•\ã›\×Ú¬\Û\ã\Éc¹±ŒõªMõ!¥\Ð\ÄIn¡\Ìr#1(\\\\€2ƒ\×Þ·¬Â°qsÁ#4ùbŒ†\Æ…=7¶±\Ê\Çf±òƒ€qÖ²¬„eŽlâ´¦·>cœ½ªˆ\ï>¸¡\Èiµ·Š.©\êjé±‘Ò©\Æ\á*\ìR«Y»š&­`Žb=;\Õ:L}ES•9\Þ3y¤\Ð\äsCW\ì]yHóÚª\Í)¤2zß­Blcš·m ÷\É\'Þ¨“\Èô«qJ¾Lh¤#\0Z\êe}u4,“÷;¿¼sV©q„þ\è\Å-l´V9[»lZm:’™\"\n)i(ÂƒIE\0*\Óé‚–€IšJ(h¤¢€\"¢š\r;4†7šM:ŒP84`\Ô\ÃƒŠ\0‹’¥¦Pi0\È>V`=3N£‡÷\Z“[2´±	_-\ìy¬ô@“þ\é\Ål•twG\Üf¥\Å[B£&Þ¬x}#sK8©@9\íŒVêŽ£A#Ò¥Bx¨Ÿ#\éštyõ\à\Ô2\Ñ/\Ô%<Ù€\Ï§“\ÆhŽ3ŽN8\îE\Âô|\ç¨¨„\Í6\î\èz{\ÔfK’…¾U\ë\Û!¹··O—‡­]®Bz–b…ŸžB\ãŽqŠÈ‹9ÀV|º”’g“A\ÅU{¡Œ–QÛ“T ú\Í-ˆ\æ·\ç\äf=‰\ÍXG·\Ã\æ\'U#®{\ÍxÀfrò2\ÍlY\Ý!€ýÓž‡9ª\åHžfú|»sŸ&F@8\Ú\Ã?Ê¡y ‡;¤21\ê\ÝF‰\Ç\Þ\ÎOBM\Ò\åˆ;sE\ïm‘3\Ý+¹\Âp}\èûÛ”ŸZ«²!œÈ¸\ÇRØ¨\Ì\Ês±ƒpH9£‘0\æk¡u\íA£`\ÝÀ©ù²[L\äg€M$s0\Ã+S\Ìw2¦xÝŒb§–Ä¹_cB2%Nq’)\Ñ\ÆcŠ‚\Ìô8«qÇˆRr*Z±qw*J@\ÍV\äæ¦›û”\Ã\Ó\'§µ8‰\îDˆd™û\Ä[ð[E\Þ#]ø\ëŠÈ°Ì½A\Ù~c[\àV\ÐZµ%­„¤¥\"’¬\Ì\\\ÒRRf“Æ’“4”\Æ\ênh C©À\Ô`\Ò\æšüÑš4o§`$\Íh¢À%6ŸLæ¤¡â”š@\r.) !$Ñ¼Óˆ¦\ì4À\\\Òf—b\0¥¤\Å8PŠ\Í\Ô\ã?+ö«Š¥©&`üi=‡\Ê6\ïV‡MgDûñÁ«±¹#ñ®y+pz\nùæ˜‡­Jq¶  \ïÝŸ ¨44­±‘\È\ë\Å:\å\ngƒ\ÍT¶”¡Œžµz\\IsK¨\Þ\Ç7«™m\ã.‘³„Yö1^\ß\ÞGUQ \Ü7÷®º(ƒ¸\îT\çTw\Øq4@Hm®ŠmZ\Ì\ç’m\èÄƒ\Âw]»Hù‚Èž¿J\Ü>\n´–òÆ£h9`kõ-HY\í.U9\ë¿¯þ½\\¾ñ®¡m5Ÿ“§±X‰GÍ¸w\n½¾¦©\Æ\ïFú\èuZ‡-n¬•jG´lt[;[\à¦`œu®r\ç\â\r¡µo\ì\Û;«‰q€$MŠ¾¥i[x\ÏK–&à¤¥r\ÈQ†õ¡$ž¦o¥k‰{\à\í>\æòò•Ÿ˜/¦4K­„1Û E\àu\ïø\Ö4ž9\Óã¿†=\ìa`wËŽ\Óëš¶þ2\ÐÀ\ÏöŒG\ÙAo\åM4ô	*šnAe\á›K?;\äV,p23Y’hvv6{\Ða·’ÇµV»øŠ\é4\Ëžþ\í‹\í${ŒVšÆ¯©A$WW*\É/˜\çn\î\â¦\È\Ò1¨úþ¥Y¼p\Û\âVe\ÜI\ã¿Sšm”7OxŒÊ£h\ç±s‘Ã±\Ü\äq\Æ1þb\Êß•ô6’°\Ü\Zz±\Ñ\'“\ß\ânµ;Ÿ.½À§2z`p	^\å\Î9\ï\Íbõ4Ž…O˜\ÈI\Æ;RÉ‘ô\Æ)S\ëQ\Ê\äñ\ÜôÒ¹-\Ø\Ð\Ñb9’S\Ó\î\çZ•\r”?fµD?{5)®˜«#ŽN\î\ài¦”\Ó\r\0„¤¤&›E‚\â\æŒ\Ò\0ÇµH-\ØÓ°®3p¤\ßV‹\Zp°ji\n\åL\Ò\ä\Õô°ö©“NºSHW36n\Õ:Y±õ­ˆlTb­%°©Ø›˜aoCEt¿g_J(°\\\äø¦ñM\Í(5™©(£\Ì\Ò\ï¥a\Ü]´¤i\à\Ó›)qN¦\äP+‰Š\0¥È¥\0bª\ê)›W=\Ç5r£¹u´ƒ\ÕMT	\ês2Œ\Ã8\'š±o/¢‘\ïQ#˜\ßðk\rÕŽ¥£4‡À¦ð?\nŠ9?*Rù>\Õ\r\Z&K\ÇLg5¡o) †\Ç>½\ë/Nyj\ÞF\àt\ç&“CLÕ‡¹\äm#8§Kx\Ë.C\Ðw¨8\È<Žqš$\è8\ÏqM1Z\æb`;mûÀ\ç­!G‘ß®i.-\ÕÉ‘~÷zj\09‘\ÔV‰¦\\´,\Û\Å$e\äŒ°Ág5f\Æx·´\ÖH\Í\É$tü\êK¢ dŠ¼\æ#Ÿ»Ó“V“4|¯u÷¢\Z|N\Ïýœ„·8\' vª\ÓEfó4\ÙÂ„ƒŽŸ•Y1Eóv\â“÷<ýrZ5%F½™‘4\"B[\0z1Tn?v\n\É<[3J¡HÊŽ1ƒX·…I,\\\áA\ëJö\Ü%$–Š\ÅX„’\Èwv85­\Ø\Óh\ÇNIBß»t©|Ã‚3É¨n\æ\Ì|Ò€LªHI<÷\àR\Í)¨G$ZV’@úU6\Ü\Ü\Þ#ä’}j¦\ÈE\Éf8\0WKef-mBå­iõ1©;+8¦O~ô‘Û¼§€kk÷\"$\Òg\è\riÅ¥\â«q\é\Ê;S°¹ŒdµsS%‰ô­¤µZ[¨£”WfDv>\Õf;QZ^R\ÒùcÒ…r¢[\np·Z´c¤\Û@EJ\"üR\â„ Dð5©\04À8¢\åš(…4ƒ5&)\Ø‘°\ÊLT˜E€m.i( céŠQHh\0i\Ã4-<B4\ì|‡\Ó\à)ø G#ƒÎŸ\Ý$ô\â™4g9«\é\å\ês}\Ãù\ÓN?+£:\ãªED”ƒƒÖ§ñP\Ë~¢ ŽR„†¡«\ê$\ÚÑš	ƒ\ëVb\â©\Ç\"\ã¾«1:ú\Ô4h™¥°ÔŠ•$ €qU#~ŸÊ§Ä†\Ï8\àPReŽpýY¨h>†žt\çÞ›*I;\×+=áˆ“ƒ‘ÐƒM:\Ò\ÅÔ°ô<-\Ï\0\Õ9l\är~_¨õ­…y\"\Ïöúö‘¹õÖƒ\ç–\Î8\ÅTû¹\áW\Û9§.*uŽ;‹žD+\çjú“œRFŒr\Ò±æž–\Ì1sSùXô\Î8¨l5{‘ò½i²“´žqž*QÁ\Éüj¼®®8#¥–W.iF\0&›‘øRI(}*\ìE\ìjh‘¬—&C\ÎÑ\í]-€+žð\Þ|É³\í]M‘‰\'vžþ•\Ñ¡\ÉQ\ê\Ø3[¥iEn±€*Ï–»FASÐƒši\ÕZ\Æw¸ƒQE0\nZAE\0;4æ›Š1@9¨·š“µ3`\æ€\r\æœ	æ›Š|}\è\0\Zx\Ôe0M8P€—Ì¢£\æŠ\0\ã)sHi+#aÙ¥¦Šu\ÉÁ£48\æI\î48QE\Ä8T‚¢ðM\0J\r={\Ô)šj‰g7®G@7÷“\'ùUxù\Åix†1˜\ê\rgDðzW=EfuQwB<`\çÚ¨\ÜD{uƒZcüj9c=*±£W3!˜¡\Ú\Ù\ã¨5u%WN\â 	#¯cŠd2œ\àõþuvORkFm[\Ìy\ä\nÑ„üƒ8ùkžIOU\ë\éZ6\×A»©â¥¢“6\Óks\éNqUm\æÀ\éÜ‘V…\ÈÇ¸\ì;\ÔX\Õ2xí—“\Æ=\r(\ã\Î\íµ”ñ‚pI\ÏZj!p\Ù-“Ðšµ±7$C “Mx\ã\ç×©57“Œm ó““P¾FGŠ\äEö\Ïj€§OÖ§|c\'5’$c9\ë\×-\åyO\\c¨Lz\ã¬\Ë\'|pj„²rz\âª(\În\Ãz}j\'æƒ»8\îi\ÞY“Ö´z­MmO)&oq[\àH:Š\Ã\Òq†Œ\ä$©=ÿ\0ú\ã®+F rs\Ô[\Ç\áG4—¼\Ë\Ñ_\\[\çË‘°z€sWb×¥F¬q\Åg¤b¤H\é\Ü,¸µX%À%ûŠ¶’G [\èsXE\ÅYŽ\ÜñŒƒ\ê)’ÕŒ\n\\\Z\ÎF•3‡n;\Z³\Ëc\çQõXV\'\æŠT–7öÏ­H#SŒø\ZV<\ÐsSù`R\áiˆ¯ŠPNj-OJ_$\Z\0‹ƒBcœ\Ô\Â#N\æ€\"Ü¾†Š—É¢€8:9§\nk\ÖF\ÃA\àE0N bP(\Å-\n)h ¹¤«Il±i·÷;¼¨†UGøSJ\àÝˆ£\ÉÀ“\ÐUÈ¬§|\åv/r\ÜV>*SŸ%#·L\à°\ëùšuö½-\Ä&7n\ÏVÿ\0C’KPQob-~\êu‚/åœ³ú\Ö|}¹\â¢ þ9©¢\ÇkžnúTÕ•‰@\é\ÜzÓˆY9\Ü9„\Ú1×“Rösš\Î\æ¶(\\[ð}¹¬\Éb98\È÷®€¦;\â³\î-\É=Á\ì=jÓ±\r\\\ËIHÀl\äw«p\Üß¯¹¨f„\ç¿\ÔTrd‘W£3\Õ½\âžOQÒ¬}¥¹\é´ñ‘Ú¹¸nZ>™#9úU\Ø\î\Ô\ä\î\ç¸‹S[3j+\â‹÷¸=úÔ¿jø¸\'$g­s\æ\á\å:cE*\\I\ÉÀ\Çq\éG+27\Å\è\çs\Å4\ÝAaY	rÃŽ¸¦=\É\Æ\0\ë\×&•˜s#F[µ\'<\çŸZ¦÷%þ¤gª…Ø¹\ÏBx\éP™NH\Ï\'©5J7%\ÎÅ—”Œü\ß1<sPI>¤\Ô!\Ë÷9õ«!ü}jôDj\ØôN;Ó¶zõ\ÇOJz¡£œš‹–•‰¬.@Ÿ\ì,¿\ë~tp	!‡Ò·\áO64”©R\ß+©\Ã?¡ü«ŒÔ\\¡™Z6\Ü:Š\ít	¢¾«z·BU\Ü¦\Æq\Èü«¢›º±\ËQYÜ·\\U\Ë{“\éO¶·møa\È85»*`\â­\"[2\âÓ‚u©\Ò\ÙE_òøÿ\0\Z<º¢JF\Ùhû=^ò\èò(CÈ£\ÊúñW\ÌT\Ó\0SQüDýy§‰GFSõcÊ¨\ÌGš,‘\â=g\ÐñO\çµU0Òñôc\ØóE€µ\ÍÞ™\Ë¾ƒ¢¬\ÆROºF}:PHÌµ1CE\0y\ß4œÔ»)6V&\äx£üQŠ\0m&\rHR”‰ ñHJ§\\U¨¬g›\0÷5dh+\Öff>ƒŠ`gYƒ{x–ñý\æ<œg£\ãô\ÉTù­­MŠÌ‡D\Üuª¾;µ7\Z¸Àÿ\0VUÿ\0ñê¦¬®Jw’G–hºg–‚Y²ò„óŠÕ‘\0üx¥¶ B)\Î3Ÿj\är»;c‘\\§\'Ž•$kÞ•\Óô§\Æ*[¹iXcÓšpõýhA\È<ûŠ”t\ã½Iv¾HÀ?\\æ¢–!ƒžÆ®$jø\ã\æ\ÄF@\'=@#4\\M2\Å\× z§-¹ä¯§<\ÖÌŠ\Ø9SÇ¥W1#\ç\r\èERd4b›ž1Lù‡\Øñ[/kœ\á—>„T&\Ìó”?PjÔˆp3’ð&7nR=Fjd¾^Î¼úœb¥’Û®:ûŠ¨l²~\è\ä\Õ)&K‹Eµy\\ŸCL7‡\Õ@5_\ì\0gŽi\éjaÖÐ¹Xÿ\05NNKdv >€Âž!9÷©£ˆwÀ\ïJ\ãQ]\É8«‘§\r,q®8\É8©0\Ï\ÜcµCf‰EFF	\æ¬q\î\Ìþ42•\èùö\'¶|/4±Z‡û˜­\ßi¸C†QüC³®c\ß\ã§5g\ÃR­¾¥4jZ€¹[·\àkjo[UZ\\ô\ëh”•‘z0\É5¢‰\ÅfhŽ^\ÍŠ³(\ÚYO¶x\ìzÖ²\×A\Ê0¡÷¤\Ùõ©x9ÿ\0\Z8ü( :S±Ö°sI\Óñ¦b•\'Z1Öl¦”6)	ŒTF!V±M\Å\0Vò©…«{)<°ht\ê1¹¸÷¢œ\Ðòh 48Ò‚“a5lBOj±²Ž\Ã5™©™öY·,v,{ÖªEú\Ô\Ñ\Â;RcFtZ`þ\"jõ¾™\Z`\í\ç\Ô\Õ\è\âU„ŒS°\\®\"TQHŸ)\ÏnN3Uœ„ ž€‚hBòFj’\æ\Ú;›Y!‘AI«QÒ”Ò§NEha±\ãò\Ù>Ÿ{qi&wBûs\ê=ƒF\Ó]´¿-\â\ÔcN\î\å\Ç\è¥s>P<\×\rHò\ÈôiËš(«°Ó‘*scG—Ö³f©D÷0\í\Å1\Çz‘ÿ\0\nE!6‘\ÏQ\Ó\×\Â:zûÕ€”»ô> Ò¸\ìTdÆ«Iüõ\È\îiyc‘\È\ÏNj?(gñ§{\Êfyd}\ïÎ\åœ}óƒ\Ó<Ö„ëš‚KQ\Éó\ÜSLV*I\Ï \ç®EFmÀ\ÎT{\àU“\'\á\ë\Ïó¦\á¹\î3\Øÿ\0…;Š\ÅCn§8VúS\r¸ÁùE\\!‡c\Ü\æ›\å¶?‡ò§q4Tx5,q/l~Y©E»pI\çÖ¬Gl\Óùf†Á\"—\ëžÔƒv{rjÁ@>Þ”\Üc4®UˆH9=})»1\ëø\Ó\È\'\è5&\Êw%¢¼‰û·÷6+C\â„·EŒ¼{ñ\ÏoÏµý)º/ž|K\ÙeŠ9BL§\0N;Ö”Þ¨Ê¢Ñž¥	cyùD1\Üco\èzÖº\ZÄ³3%\ë	\áUvPw¤›Õ¿>„f¶#5\Øp’ñ\Ïc\íKšE\íN\æ\0\ïM8ü)ô‡ñ ¡\ÇcÒ¥ƒúS¢$ƒ\íLCñM\"–Š\0f)¦¥¦P)EÒ\Ð\Ð!0(¥¢˜\Îj02~µ\"\ÑEblN•<`QE1#«¥Sº\ZÎºÿ\0V\ÔQI\îR\Ø\ÙBJz‘š±J(­µc¸\ÓnU­ ×—\Ûÿ\0«\ÇQ\\Ø\Ñ×…Ù sH\0ýh¢¹Ž\Äµ$tQIŒ”SÀ9¢ŠCEPp\ïQ\È\0\É\0fŠ(\ïP².OúQE4&4ªóÀ¥¾”QT!\rÇ­ISE†„“¡¨%\ãõ¢Š25\ïR\ßZ(ª/\Ü5w>$E™\Ó\Ëf\Ú\Ã#4QZS\Ý\ÕøY\ÞZœjŠ ^T\0:v­¸è¢»ÀN)\âŠ)\r\ßO­R@´\Ôû\íE\Ä>Š( ›E\0\ßð¥\ì(¢˜\r$\æŠ( gÿ\Ù','2025-02-27 04:34:03','male'),('2714d0a6-d583-11ef-9523-005056c00001','2713d745-d583-11ef-9523-005056c00001','Jane','Smith','Doctor','Medical','jane.smith@example.com','+1234567890','Full-time','2023-01-10',0,150000.00,'Day',NULL,'123 Elm Street, City','{\"name\": \"John Doe\", \"phone\": \"+9876543210\"}',NULL,'2025-02-27 04:29:51',NULL),('36374a0f-e026-11ef-a1d1-005056c00001','3635532c-e026-11ef-a1d1-005056c00001','Alemayew','Girmaye','doctor','medical','alemayew@gmail.com','0900265856','Part-time','2025-01-27',0,6000.00,'day','650e8400-e29b-41d4-a716-446655440002','Addis Ababa','0900130082',NULL,'2025-02-27 04:34:11','male'),('3b6da8cb-e018-11ef-a1d1-005056c00001','3b6bae46-e018-11ef-a1d1-005056c00001','Samrawit','Tilahun','doctor','Medical','samrawit.tilahun@gmail.com','0900130083','Contract','2024-12-30',0,6000.00,'day','650e8400-e29b-41d4-a716-446655440003','Nifas Silk Lafto Kifle Ketema, Addis Ababa','0913313103',_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0\0ÿ\á\0.Exif\0\0MM\0*\0\0\0\0@\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0ÿ\Û\0C\0\n	\n		\n$ &%# #\"(-90(*6+\"#2D26;=@@@&0FKE>J9?@=ÿ\Û\0C\r=)#)==================================================ÿÀ\0\Ó\Ú\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rðbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0\Í$Ñ“\Å\æŠò\Îñ‡\ë@¥\"St\ÍH	õ¨\ã©EH\n	¥É¤\ê@.M.M6Š\0vM.M%-\04¹4”¸¤“FM&8¥\ï@M4b’˜M5\ät\çñ\Å0\Í\ë\Å;É·úš`”g\0þ•˜‡«d^Ô†Q\ëùS\å–|\ÒzŠ†Iˆ ŽÆ£ž¼\â«\Í.	 Ð•\Âö.}¤õ\Ç×”\ÈG<b«€v?Â©I~rQ#ù\Õ(6K•1r žI=i\É~©×¥cù§\Ê.äœm^*³\ÞE\ZC~\è\â¯\ÙÜžs§*ÿ\02·4ñr\ØùA#¹ô®Gû[c‚2\ç¾\ê±¸rC>=ˆ¤\é>\ÃS]Î›\Î$ó\ÓÖ—\Ì9\ëùV,:ª\È‰ó\Î*Ð™ß”*ø8\íY¸Xµ#AÜž•V\äô\ç½ š@@8É‰\0€{’8¤•‚\å´?  “ƒLÀ\0ô4\â}\r+PO\ìšbv§\Ò\0É£&ŠmšLšm:€ši&M bd\ÒfƒE\04h Süš2i( É¦\ä\Ò\ÑLÉ£&’Š\02hÉ¤¢€ša&ži†€\"$Ó²i1ÖL\îi){\Ðh†’@$u(¨ÓµH)\0ú)>\nZ@%-P\Ò\Ò\np4\0„pi\âx\ÅA$¾X\çR@\ÉI\ã5\Ê}*”Ú‹r}¬\éo¥|ñ_›¥i6C’F±¸\\ü\Íøf«\Éssóøô¬9oT\ä1R\Þ\Ü\ÕCt½}Mj©\æt©|ƒ#r‘\ê)þr¾0\Ãð®a.QqP=EIú6\îR}\éû{C£{ƒ;¹\ã·™-\ç\ï	\'\ä?Zªu&(C’{ŠËšó\0óœž”\ãJ\ÏR\\ï±«5\ãHr¤„4Ô—?ÅÞ²E\Ó?N\é\Â\çž8=l¢‘l\Õó@\'œQJKŸ@{\n«ö™M)‘\ÜrF1žM0%&I\0Œ(\ÆI\Æ*W¡g¡\âš\ä¸\È\Èt¨¶78-ÏµP\ä8z\Z»\r\ãGónb:z\ÖY‡C¨ 	#\Èß‘õ¤\âž\à¤\Ö\ÇK®\èü7¹\íW!½Ž\àœ9\ã \ë\\šI”Áb~ù©á•£#Aõ\Ídè§±¤j>§`%`:†#Ò§IAÁÇ¨®^+ùrˆ,8\ïøÖ­½\Ò\È\0c´Žþ•„©´h¦™®Œ\rø\Z’³c¼1’²|\Ã\ÔU¨®øV*\ÍÅš&‹›\é@\"Š‘…:Š)\0SqN¦\Ð\ZZ)´\0P( S\ê(¢€\n(¦\ÐES(¢Œ\Ð\Za§ši \Í:ŒS°)€\ÞôQE!Œ PiE1%<S@§R©\ÔÁKH\0Sé‚ž(`-¢@	ŠBBu¥\'šÏ¾¹\Ùò!Ëž€vªJ\ânÄ·©?7OJÇ¹º39\Ü[‘x\ÏÖ\ä³\åÜ’\Ù\ê{UK™#*¤³žÃµm®†mšR‚Œ`(¬û‹\à\0sŽý\0¥˜\ä…\ÜYðŽ)n3\Ëz1])XÉ»•œŒžüõ¦Xt^=MX“@\ï\ëU_\ïg‰«H–\Ä3gƒÂ„v$\ã9¦oL«Ÿ­4»pN=08§a\\™%`üô\ïP‘½\Ëtj\Ì0‰\\\ä\çŒ\Ðbo0§¡ü\ér²+rq× §\0A\É<\ç¿©Ž#Ï¨\êj¹”ƒÀâ˜‹õÂ‚ß…N0AÊŒöªQËž\ìl\Z±sŸ3¾x\Å–ãŒ¸\èÞœcT\'$~\'sF0<À}³ŒÔ…\Õñ’}9\Å;\n\ãq¹Ç˜G¿\\\Ó\r©9!þ”÷@ù\n9>¼Ur`€cE‡q\ÖA\È\0÷\â˜7¡úv«\Ø$\í\Å9d$\èô\â	\È8&sß¥\\ŠFòNW\Ðöª Bø\0\í>†¤18\ë×¨©qOq§\ØÔ†ð ºt9\æ­\ÄQÀ?u»kH–^TŽG¥H’‘Ê’¸\ê\"°•>Æ±Ÿsz;§Œ€\ãƒÑ‡CWbH2+D,òž¼d\ZÒŠU0Ÿ}¿\áXJ\Ö2FŽ(¨a˜8÷\î\rMÖ²z\Z¦Ó66M\"€”Q@ C¨¢Š`\Úu\0\Ú(¢€ŠZC@i¦œi¦˜	N\æ›K\Í\07½ôP1¦KJ( ©*1RT€‚–Šp ”QJ:P\Æ”¸\é\Õk‰V4&šWb^Ü˜`Œž\0¬\ÈÁ/\æHN	\È¿ýj	39g(\éžsP\Ít±’rF\0¼c\Ñ6-\Õ\ÃÀ#\0ö\íY2J\ÓHU~U\éIy& ¡9\ì)À,q³nGõ®˜Á#\î1#T±ÀI\êj¬·\r’#‰¢IL¼\à*	tóÖ®\Ä\Üd‡\å\Ë>\æ÷\íP”\'—8ô\ÍY¶\0\ät&£1\äÜž\ç5B+ñü4 g©ü¼\ä3@\0s\Éô\Å\0Z¶‹ |ÃŽrz\Ó\ä\ä³Ojµd\"òK¿\Û\"«\Ý:\Ù#ŽÞµK\èg\ÈwœÇ©¨° òqýjm/9<œv¤’\Ýb9ù»(\æ¨D9QŽ9÷§‹ƒ\Æ@8õ¤Ø€ü\Ù-\è;R‚¨zs\í\Å±b9œùcŸÂ­Ç·vJ¿J\ÏûF:\0¨ \Þ8)üI\Í1\Z¿»9Á\ç\×Ò£’ÜžO ÷¬¡s!û\ÎpO®*x\ïU;³fâ–£\Ð|¶\Ìú•	%8\èj\Üwñ¿z{Ä’ƒ\é‘@\Ò\\\à?>†¥I¢œCL’Ù†pp8¨\ÒB¿)\Ï^‡µ\0fÑ‡cÞ¦wh\Îøÿ\0Y °Á\'#µY·¹Pp\Ã+ÐŒÔ´ReÁ,o‚\0ê§š±­<·=9‘Y\ÒGÂ¶Pò	©bŸa\Ç‚k7“5\í\ï›xV\'w|\ÖÅ½\ÊÊƒŸ˜u\Î\È\Ü÷Vªxn$‰Á$q¸w¬\'Næ‘Ž‹4U;kÁ!Á?[ŠÁÅ£d\î-R\Z@\'jQF)EM§Sh\0¢Š)€Si\Ô\Ú\0))i(\r6œi´À)i)\Ü\Ð}\è¥\ïEN’œ(\áRSµ>¤EZ(¦d“\íü\è\0‘À¬\ë‡’9?Zµq ŒOMb\Ý\\oÀ\ÎO=«Zq¹•‡\Ü\\„Œ\ì¦3\éYg\'\æ9$ð=ÿ\0ú\Ôù&W*Œ\Î\ÚznŒùwqŠ\ì„lsÉ\ã\Ë@\ÌN\âyZ@d\ÎXm\ÏÖ¬0grN1œ’z\nO*\"r\í\Ç^8\Å^„‘\í\Z±©=©\Â`±\Ï \Ñ$À@¿V<Uv-\ÎzhB\Ípˆz:bª\Ét™\Î\Þµ+’z&;z\Ó|¡\Ý3ŸS@€\\©=	ö\éR‚#vfÔ¶Qó`ãŠ¿o8\È7Px\Å&\ìRW$¶Þ g)\ã¾)$¶ûD\äö=;\Õ\Ãl˜\ÄmÛ\ëI´ƒY†xÁ¨\æ[–¢ö(Fž\\ n\Ï<T?c`Ný\ÌORJ\è!\Óy2)\0þ5`Y¢“µ7m`TûDW³{œœ–ù8HAÔ‘É¨M´œ\à=k¬û¸8Œ\ç»K’©–`OrW´H=›g\",¥ ³g\0S~\ÄÀsÁ®©ô\æ\0ðß$ºc\n¡\ë\ÈS\çDû&rR[\ì#9\éœzÓ’Í¶y›&q‘\ÅnM§\ç\å\Ù\ïŒ\ÕYl\ÛT9±\â©I	Á™\áÿ\0ÄŠP\í\à÷õ§In\è\n\í\0:¯$eSœr=\ÈjÆŒW(\n\Ø\Ïbi“Z³\Ñò{ƒY\é)ŒÃŠ·oz\Ø=(µ‚\ä(\í!¿\éS¢,ƒ+\ÃNõ;ùwqÀsÀ5_cBpG õ\é1¢õ½¿\ÚaÙ»\çAžx\ÅB\âKrUùZb;!¦w(\äô\áq\æ¯\È=jM\r2\Ä2\à`\î\ÚzJµ›>÷>ýsTPÀ<>7ÁÁ\ëõ©j\ãF¬sœq…\'‚;VÍµ\ÂÈ€óW;À\â6\ÄúUÈ¥hH’;5s\Î°‘\Ð\ÑP[M\æ \ç*z\çj\Æ\ËP R\Z¥ \nm:›LAIŠZ)\0Si\Ô\Ú`”´PM4Ó%\Í7ÖŠ\0gz)q\Í\0\Úp))\â\êh§R\áKH)Ç\ï@\r\'<Æ‡\"1KŒU;Û€Ÿ ?3töªŠ»°›±Búä»•­c\Ý\\–|`pO{)Ž\äUA?{–?¥v\Â)#žR»\Ê\ÂÄ‘“ŽM9.¿1S ½W¸˜9ò\Ð\r«\×Þ¥óDP©\à?lö­+\à\r\Ã\ì\æ©\Ë3\Í&G`)	–\æPœžI5n+U;±Œe­1LnPñ\ÐZ<µ„eÀgnvƒŸÎ¦w\ÇÍ€	\à\Ç\åTä¡\Âõ=I¦K#¹G`)\'9?žx9\ÏV\Æj\äQd‚ª\Í\îy¤Ý†•Å†8\0ý{VŒVe\Ï\Þ\ã<*k+l\Å>Õ¯\rª¿&°•CxS¹Z\Ú\È\'RO¥h\Ãj„«\ë\ÜU˜­U\0\åãš´–Àr¤\ãÞ¹\å+*	\Ò\Ù@”\Ù-°2˜\ÏL\n¾\ç?ÖšñÁ\Û“*È¢‘Sp:TR§ª‘ZA  Û©\íŸZ¥\"leùLp0Gza‹=wö­9mx\Ü\0\È3Ö H\Ý\ÇøŠ|\Âq(Kl%\ê?•Sš\Èò\0\çù\ÖÐŒyú\äT2¦Oó¦¦\Ñ.	œ\ìºqþ\êóß­S›Jc‘Û¨\âºw\ÔÂ ’5~\0ú\æ­Td:h\ãn4\ã\Î\äu\Íg½»Dr2Ò»i­£\êW­f_Y«ôfµK˜ÊŒ(\æt\0c§\ëWc‘fLÿ\0Öª\ÒÛH\Î\ÓÖ›’P}+K\ÜÉ«L[1$}:U\åE\Æð\\j¹or¤leO\\\ÔWQ’(Ã‚?\ÏZ\"i\Â7~‡Ö¬\ä¯qY\Ú7$g\ÏÒ´\í\æó‘s\Ôw¤\Ð\Ñ<o‚9^µz;•—\Ç5œ#ƒŸ¯½X(y‘\äÖ¡«”™­gpÑ‘ƒœqÖµ\ã›8\È\àúW7\Ø\Ãzñ[V2‰S\ät®j‘¶¦°w/eN6žôò* €z0ô§‚ysX\ZŽ¢Þ—\0”\Úu6€\n(¢˜†\ÑE\0†›N4”\0”´”´ozZJZ\01N”¢‡\nx¦OQK\Ð{\Ð*)$\ÆpJ¸l2\æ\ã\Ë\ïX÷¯\å’X\å\È\ìzT\×W\n\\¶~\ïNõ,†g\É9ç¯­uRŒ\ØÀåºŠeÔ‹oKfFÚ¤r±¡,\Ü/\ëY72y¿0û\Äô®“\Ñ\ÈË–\ãý\ê@ZL–\Æ\äž\ÕHÏ´\0ŽÆ¬9P\08Ú¿­\0OoŒ‚Wjö3\î}ª\Ä\Ò	\Â7\Z«l\æl\àS\ëR;¨8{°\ì)ˆ‚]±¡fÝ¸Ž;\ãÿ\0¯T\È=ó–\èj±s·y\\\îU\äŸSNµ…¥;ÛœóI»*\â\ÚÚ´„rzŸJÞµ°c\îŽÞµ\r­¶\Ìt\Ëv«¡³·=ú\Ö&tÓ¦†CfF\0\'¨\Åi\Åj¨ž´B˜\Ëc\ØSŒžß­s¶\ÙÒ’C£F=\êT§ZTL˜þµ(O–\Èþ‚“gJ±²“a W*˜ñ\×ð§Æœ3øÔ¥?\Î)S¥9ýj-˜<U¼Jc¦ú\ÔJHI\ç¢x@Á\Å_)Q¼`ñŽ(¸rEÁ f«y+œ\ã\ëZž__Ê£0\ã\èiŠ\Æ[ÛŽA\Æ­SšØ€q\Èô­y!;úUi###§bZ9‹\ë.	ß¥dÈG§\"ºÛˆ\È\ÉÁ#¸\ëXw°©%r9\Åt\ÂW9ªC©ŸðÀ\0OQV_pboÒ©>c|Ž5n\ÞU”ln‡‚=+S\ÜXùÁ7CU¡”\Æù\íœZN<°\Ñ\È2¤\ã\éY\ÒG‰÷÷ \r8\ä cR\Ã!GŒõ“k)§\â+O>r\ïJVp Œ‚GQ\ïW,\î<·¼Vt2¬•<\ã”C1«p\ë\È#½g(\Ýfu°\È$\â¦ŸqY\ZuÉ™\0\è\Ë\ëÞµ\ÏÖ¸\å3x»¢lP(?ZN\Õ…6EHih AM§Q@\Æ\ZJSŠJ`%-%;Š\0ozZLsJ)\0KE-\0(\Í<SE§ù\æ€O8\íT/e\çbžOS\éVneò£ }\ìVÔ­*s\æ7_jÚœnÈ”¬Cs*¹Ú¤^	õª\ê\0z\Ò\Ç\'9ú\Ó.b°y\ï]qVV9Û¾¥+™¼\Éö/AÖ©ƒû\â\Äw\Æ=)¹\ÆI<“š–nqÓŸ­Y$\É# -À-\íQùu %V\"’Y\ä\ã<Ô¹@9\å†\0©·«\0ƒÀ\Ïù\ë@9\Üx,\Ç5#×¾	§Dzó×Ú„Kµ\È\0wü\ëB\Î‘Œ÷8\ÅR„y³öEl[E\æ:\áQ\ÍgQ›S‰¥cn\î\Çµ\ã@üªµªa\0ÿ\0Ö« 1€¥r7vu\ÅXš uöñV#\ÓÖ£‹•¥XAQr‡ ü\êdN:Æ˜1þ5*`ý) bž\Ã\ëF?Ï­<õ\éùPPöi\Ù	Ç·\âh\Ç\Óð©qŽ\Ãò\Í7ƒœqJÁq˜£·J~\ÏÆÖ‘œ\Z\ÅNA\ÅDh™\íQ:ûw«$c8æ™ŽiRDª\Ò «n¿?w5^aÁ¡¥4A>£µb\Þ[+\ç‘\Ç¸\îS­S¸@ù8«‹h‰+œ…\Ì[\ã5SýT€\ç¾3[º¸ œwâ±¥)ôæº¢\îŽI«2y\0‘2:9\æªIP¯F^†œ%1€rvž=©\Ò|ø9\0\ÕgÉ”!\Ç\\óZsc½~µ^d±\ë\íQB\æ9\0>¼\ZcZC\å\È&Sz\ã½:]¹Ž˜È¨\á‘dŒ\ÆzõBsºŽEK¡cu°Ž\Ì:{\×Gm2\Ë\áÖ¸\ØØ¤€gt­‹\Æ“ò“ƒXT‡TitHùÇ¯zw5d=O# \åG¨®V\ê(\éM¤0¢Š)ˆ)´\ê(†’”\ÒP0¥¤4´X¢›\ëN¤ÒŠJQ@ œ‘@\æª]\\\È“\ÅTUÝ„ÝŠ—W*Žx^ž\æ²F‘\Ë’\Ç<Ô³8’C\ÉÁ<\æ¡\âGùF@\é\ï]ŠFw$\0ŽF*†§\"¤qÆ¸,NZ­\ÊF0xp\í#–õ8ô­Q‰\0$ñ\ÎjI—\0PynOµ$h@-\ïL˜\ï \Ïjb\ny\ÒdýÁ\ØU\Ìù#h½n	þ\èÿ\0\Zd#•Žœ“\éQ\Ë&\ÚA\àZA\Ðqž\àpK\Â\ßZ©r=MYy\0.sÀ›\ZF…š@\0Ì’r}« ±„$`s\êO­g\é–\Ø@\ì\æ\îkz\Þ.œ~U\ËR]ºq\êZ†3€1\ÇZ´3Ç¿¥68ø:X3t‡F*tÏ°\0S1Œw©Pô\0\ä\Î:õ©Gÿ\09¤AÇ¿¯LSÀ\Ç™\ÅPÖ©4€‘œw£9\ÏZwƒ§JQŒbOÆ—Ö™\"ñŠCŽÔžžÔ´\0\Ò*:\Ô\ïQ>z\Ð2#M8\çž)\ç4\Ã\×ð\Å+¾:w\íPK\é\ÛÞ¬\É\Þ¸ªò\ë@™N`¤zU	‚ŸBkB@sU¤N\rZ%˜\×Q\ï\r¨°\æMŽGN\âºK”ý\rd\ß[ðHŽG¬´0œo©†H\ÊÃƒÁ \0Œ\ä¨ü\Å%\Ð\Øz\ÔH\à\ã=ns²Áéž Œz­\"\Õ$raÊžý)Hÿ\0>”¶\r\É-¤<q\Êõ«3a6Ì½GZÏ‰ü§ö\'š\ÐM²!C×¨¡‚!Àu<Aô«ò0M\ÙÁš©nv;D{ôö©O-öž™À5-h3¨\Óo2€1\Ï\Z\Ô3\\­«²rC\Èô®’\Öe’\Å\\•#forlò>½iÆ›\éN¬M\ÑE\0Si\Ô\ÓLBRR\ÒP0¥¤¥æ˜†÷¥ž´ê‘‡¥/ù\n	\Å0	dFOµb\\Ü\ä“\ÔUJç ô\ä\ÖI%\É-ŒÕ½8õfRdo \éÝ¹>\Õ$n25X#I&{{T\ÎU0=5Ó±ž\å{‰7†c\Â\ã³J6ü•=ªý\éÀ\n:ô5_œ\0¼c“T‰±€\ÜF3À\0\Û$„Àäš’YXF}[LŠ}ˆ\Ê\Ç&˜‰²FUN\Æ	^R¯ 0‹À\ÍM6L‡°AP QóŸ¯z@H00{žh\éÖ»\È\'\×J\Ö&’M\Ø\É\è=«¨\Óm\Ô Ý‚qÚ³›²4§²åºŽšÖŒ`UXSŽ\\«‘»³¶*È·MX@}ª(P ©\Ðã ¨±Bn½M\ZN´G\ÎqR€;u¦\r€OòiÜŠQšx\Æ)\ØW\">Çš:u§\àwíƒ­>P¹3Ò”g¿JP\'\ÔSý3M!23J)ý(\ÓBõ4\Â?ú\Õ!ú\Óp\Îh°È³‘\È\æ£\Ç_z˜Šø¥aÜŒŒæ ’<Õ‡\Î2¼ž\Ô\ÓÈ¦™œ\éœ\ÕYÖ› j¬¨3\Å4I“s 9k6T\àý+vT¾µ—unA>‡‘V™-\Õ\ä!ò¸\êr+\'”8=Ž\rt·\Ðü…×ªóXwñ!×¡­\ã+£–jÌ®\àû\Ë\È÷§£\ï@{ãšƒ;§#€x\éV\Ì\É0±\í\éV\íœ\àg‡CÏ½S$8þU4%·\ä\É\ÏzO7\Ë0`0CR\È	O\ÏÞ’Dó!˜¦\Û\È6\Øö¤Æ‹\ÖÒ‘\"œœ”\ÖÝ¬o \Éù3Çµsñt÷Ö­”¾`¹\ã±¨´¹pz!\Ô0\èy§\Õ[92»U\è*\Ýqµfn„4\ÓN¦šC\nm:›@‚’”\Òb˜Ä§~t\Úw\0ÁÖM\ïN¤1jeŒ\ç TŽp\re_\ÌO\np£ƒ\ïWvKv)\\\Êdr3óU.	8\0ü\ê\Ç2“Áf«F\âI\ÆþFk®(Á²kh›\Ë\àžy§KÃŒŽ9\ÍH\n¸=¹â ˜Ž\íŽ0*„P˜4‡<–\'©¨\îul\á–<\ãü÷§LY\Ý{œ\àUK\ç;\Ìyû~µh†W.\\€{\n»n\ï$\à*\íB¾@:u«`\ì\äcXñ\ïM‰Äœž§94\à2@=\Í2€÷#ø\Ç\Î ¤\ÊH¹l	`Œñ]EŒEcÚ°t\Ø|\ÉxQú\×OmŽž•\ÏQ\ßDt\ÓVWe´\0\ëV­þ¯òª«\É\0V•²\0=«“,Æ€R‚$Š£s{_/˜£±\ç¥g¾«|C(÷À¦ \Ø9£¡IA\àu©‹\Ø\äûs\\\á\Ö\âŒ}\ì\0>ñ8 ÿ\0„\Â\Úˆ\Î\âÃ“ž•j›d:‰x”ð;Wÿ\0	ŒXX\î#ž*S\â\Å(2\í\Ç?*ô«öljŽ¿Ž\"‡EpT‘\È\í\\t^(>×œ©\ìÀp*ü:ûFþL\î	<«¨\ê)84R¨™¿\å\à\0©\Å	\ÅUµ¾I\0!²z\àsš½Y1\Û4¹J½Èœc›=\Í\\(\'<œqQ\0¤‚y\Ç<Qa&@S\ÛÖƒ\ìjI0y3\ÐSI\0zRh«•\Üü\ê7ô©ˆ\'½A$ŠˆY¸\0õ4¹Gq˜\àb˜~£\ßFûZ‚\×\å\Î\æ=\0¬k¯E(ŠZC\Ø\Z¥\Èu:\Ç#5^Lr+šÿ\0„–\\“#|\Äp€g\èüU17ø\ÍW³d{Dj\Ì1Ue\Óð¨¿¶­.+2ƒ\èE@uI J„út£•¡ó§ÔŠh•ò§¸Á¬\Û|\Æ\é\×oJè‹¬™ ZÊ½M’gµPÑ™\ÏS™õ\èsI\Ôv«‘›#£Uqœ‘\ëÒ·9\Ù(Ã¦;\ÔðžÜ§\ÜUh‰Ï¸5j41\ÌøXw ¼ góŠ¬~I7„æ§‹£8\ÆEDüd„ñ\íIŽ«\ÜU«Z9[•›(Aô=*\Ðr’n=	\Íg%tR\Ð\ê!oIõŠ\Ò8>µƒbÀ \\\àõ³	\Ìc\é\\“V7‹%¦Ó»SMdXQE4\ÐIJi)€”´†–˜†ÿ\0§S1\Í:È®dò\â>§X’\æI¶\Ãqô­\é\Ì#†k,“36>fùŸÖ·¦´3“+\ÝH¾`TûƒŽôø‘2~ót¨\"FšA“\íVþ\áÁQ…\×M¬ŒwbKˆÀÁ\Ï>\ÕVc\æ§SŒâ¤–LŽx\Ür¦”	óÀ&…\Üo±S\ÈÊœzË—–$òO$šÓ¸˜ˆ\ÑS\î†\ÞA\ïŠÊ›©?\Þ9\â©\Ç[G¼’:\ãÞ§›qŒF;\n‚`F \â¦NgRA\à\ä\Õq@ƒ¤·ùÜŸ|S¤~]½h±\ÇÖ¢[Í½6<c\ë\ÍnB\çÖ³¬£Žµ¨…S“Ûš\æn\ìêŽˆ¹\0gÓ“š£¨\ë\Ë1A¸çŒƒŒ\Ömö¦\Ò?“,IÁ\ÅY²\Ð&º\n\Ò9\0ö8ªPKVK›z\"{›—ß¸*ƒÂ“ÖžtEþerU®\ÇN\Ñm,€Ê†p>ñæ´‘!La@ª\ç]©·¹\æW\Zf§ÿ\0-˜c¿5\n[\ËjC4@8\ät¯W)˜\Ê)¸ª·ZuµÀý\äJß…R¨K¤y\Âo€W¸\ÅC$mÞ„ð{Wu&ƒi“„\àð9\éT¦\Ðƒ\Û=\èöˆ^Íœ´DHv¶Fz0\íWb—a\\Ÿ”\á±\Æ?úÆ®ÿ\0a\Ë€®\ÖQÁŸ&\Ü0ä­>tÁA£_C¹)21?/Cšè„¦\'?\Ý\'#=«”±cÇ‚+ty³N„œ\"Œ}j4Š±¹mrH\0¨\äw¤w\è:\Õhœ‚9#ŠŸ\æ ñÛ’j¹iYH\ç$z \Ó<\Îzb–\à\àz§4¸C\Îx\ÅCe’\éQ\Ü3Œó\\Þµ«6Ã³\îžôš¬\Ò\ì2r8 w¬‹¤{\ÜR»GLõ5¬Ý™M½‘•sx\ÓMó1\'9\'=*p‰ó÷\'°ÿ\0\Z¹“\"I—÷\éSÇ¢9r\í\ÆNqZó¤a\ì\Û1\äv?(S“\êjg\0“\Øfº\È|<\ÎqZ6þ¶@\ËJ=ª+\Ù30\Ì_\00QÔŽi\ßg¹„ýGZôt\Òm¢ÿ\0–j\nI,\â#\îøTûQûyüWSÃ€Û€÷«Oz²¦\×\ë\Ô\Z\é\æ\Ó-\äB6ƒ\êMs·ú8‡,…€\êZ#$É”\\L›\Ô\ã#\îö¬ù2}*ð‘Žø\\ôªŽ9ü+Td\ÄC‚w\â´\0Y€]NEgE‡\ÊÖ®Ÿ‰#\Úp20½1\Ã(G\0ýÞ•4¡s\ïŸ­V–6\É\ìF*P\ä 2@\àúŠ\0{Ç„3ÁÁ©ú°G=3IÁŒŽ0\Ã£G`G¦x\rj\Ù8\Ç^WŸ¥n\Ø\ÊdCž¹®n\É\×\í%I\áºVÅŒ‚)\ÌGð®jˆ\Ö\Ø\ê)\ÔÁ\ÐR\×;6\nL\Ò\ÓM \nJZCL¥\â›KŠ\0?¥#¸ßµ3Q\Êv\rÇ¨\â®Ë¸›™û«Ïµf\Í\'\03\Æ:\Ô\Ò\Ì]¦l\ã=E@€It£þY§\'Þº\à¬a&On\Z‘\Æ+œ€\0ûÜ’{Ð¿sžwƒµE#\ã{vŠÑ‘­Ó—•@\ì01N˜þ\ì.s\Æj,g\ç’iÒ¹\'ð¥±I\\¥6NA=ª›œ\Ø\Í[¹Œgžj\0ˆnv¹*™Á gH†\é¾h”z\åM\"c\Ï\Ç4\Û4/<…z`‘ý)a\'{©<©Áª\\#c«zU­*\ä{\Õ;ƒû\Ð VÎ‹\àž€TM\Ù\ZSWfÍ¼x#\ØT:•\Ód[Á\ì>fª\Öñ\Z=©l,L’\ß%˜\çžÕ‚ijÎ†›\Ñ¢Œ‰$\É=I#­t\èV$\0`bªGˆ\Óò¦ùŒMK“e\Æ	R@{þ50\ëY\ÞpŒv÷¨N¦¹Ú€±ôÔ—±´\èqJ\ï \Î\Ó\í\Åb\Çuq!Â€¹õ\æ¦qt#\Ý\ç»U$\Ù\r–$”‚Z\åÉ¬{™¥G?¿lŸz®.\îA8u|v<fŽF\È\Ûy)RQŠË‹Q.v¸\Ú\ÝÁ«1Ê¯\Ðþt¬\Ð\ÓL¼\n’Eh\ÛH>¹ý+$Á®\Å!©m¢¬™­°9Ÿ”\äU\à\å\Ó³\"”\àU\è¤\0qM2\Zd\'\0Ž¦².$\ê+Jñ\Æ=+œ½¸!\Î\r±½„Ü¼\äsžMFLy\È\0U3sÁõ§Å—Á$óZjM‘i@$asV£…I\ÕCp|sM³I-BŒð\ÎqšV¸\\\Ö\ëŽ2i\Û1Y\Èn\Üq1õ\È\\b¡¸–\æ?ùn\Ù÷Á¦\à%#MÜŒŒð;\Ô/*y¬ƒ©\\\0\íp;Ž)WPG\ï†ô<TÙ•Ìº–¤,	#¥Sº\Ð\äf¤3]\ä\ê)\ÇBefŽWS„Es¸s“Š¡\×#€A\â·5d&a\ï\ÅaI‘‘\é\ÅuE\ÝrVdq—<q“ŠÒ±>T\Íôn~•—\È ûÖ‹¹\ÌRñ’0qTJ,^B7Éƒ\ÐqŠ\Ü\É\ÆÓƒô©\ãq&T’Y½jŽ0T\Ð\ç\î5\Ã\r>\à—µWôN*KÆ§¸5,h¹Œ\Äù\äœVÌŽ3\ê;`šÁ \çÓŠØ°“Í³T<\ç\å&±¨ºšE2o[±5f\é³ü†6\ê¼V‡¥r5fo†–Š‘¤¥4”\0”\êCK\Å0!\Ëdß“U\ï\äò\á<óŒ©«’I\ï\Ådê³”r?\Z\Ò\n\ìM\Ùa\Û#ü\Ø\ÍK\ZŒV\ãÒˆ\"\Ê\r\Äd\ÄS\Æ\ç“h\Æ3ƒ]‘9\Øøvp=NO¶*µ\Ñg„¨ nlqRM/—¼\ã¨\'\È\0ÿ\0¨ö\æ†$BGs\Û \àÓ¤QÏµWp\Ât\Ü1\ÆAb]ÀS\ÅLº¥;“óLcL¾B	éšµq’÷\æªA#ž•qØ‡¹rÌ´v\ì0a\Ç\"™gq×€I©m\ãd¶2dòJl93\àUt\'©ZS›’;t\Úb€^•\ÌÄže\Ö{]]¨\Ä(½cWd¨÷/E˜@#ßšØ·EéŠ¥g\ã¾*ä„x¥s¶t¤òO¥Fó,HOµB.6d+3R¾À8\é\éBM•tµ&’\á®	gl\'e­C6¥š\r\ì¢Š\çn59\ß*¹\Çl\n¨-\în$eb$\Öñ¦–\ç<ª·¢6¥ñ‹\Ä\à@˜\0\Ôpêº¾ª.\å·ódŽ\Ý|\×\ÚxŒt\Éö¬\é4\Ç2&<)n§Å£^\ÆdT”ÆŽ§v3Ï±\Åj”L[›µ\ë\çpo\ÇÖ¾¤\Ø\r<,ª\ß\Ä8¬Ø´K˜Fö\029®–\ÎñMŽ\Þ\â\Ï\Ì@1“Þ¥¤\\\\Ð‘¼W !€\î;U\È\ã)9b}=+\ì\äM#Û¤±‚rªqZ67SÅ´\Î\ã®5“VZ\Å÷4LnpAúUûY2ƒ\'ž†¢$y{£V Œb¤²N2EdõF«sRß¦	«¡ðeÛ¹ó8û¢¯\ïT!´V½“ƒJ\æ/\ä\ä\×Gt‚s\\Þ¥‘WÈ–\Æ`vy‚\æ´p\Ñ\Æ\0\rŸnõN\Å¼\ç­jj7‘YA\È%ñŠ\×K‘Ð®–\ç!\æ;ˆ\äx^\çZ²± ³o“\ãœUs=\îKË²2pUM?Vµ\ÓÎŸ\Ø\Ã!™[.]qº´Iu2œš\Ñ\0ñEý\ì\ævo’¨7óš\Ê\ÞHvHS\È\Å2\Þb\Â\è\Ýi\æH$*T4m‚\ãB*’Y\ÝFX´O×ž85¥£c\årúknù,¿‡Jµ£\È8c\ØñL³û °‘n\Ç\ï[ \ÆqX“F\ÂBSyA\Ó\"¦\É\èW3GS×–\0-¹OF\î*\È|òZ\äa¹–2N=\rl\Ù^Œ`š‡\Z—Ð“QLŒú\Ö\âlr{‘]\åeŒóÛX—\ÈJgÒª¡5S)r*ôd_=TdUÇ|U½\çZ³X†ll#\×9«\è$‘\ã$\rÀ‘š¡	\ê?ºx­|s/\0‘\ëB0\ÆRdËšŽ2Jj°N#9\Î2@öª\Äa\Í&4H¾1\×=+GJ”\çojÊ·|‚¾†­\Ø\È\ÑÏŒ÷\Åg5¡QgG1\\Ž˜nMjƒ•²2B§£Zv¯›pO®µrMu7‹%¢Š+\"ÆšJSE0\Ò\Ò\Z^(	u®s÷òù¹\0õ<Öµ\ÄÁ\ã\ïY2\Û\ä†ay5\ÑMYÜ™\ìGcM\Çð-¾7–\êG95	v–M¿À¼T·Ž¶¶¼p\Äg5Ð•ŒB\âO:÷\Ê\rò©\îh¸}\îp8\'¥S·\Üd\Þs¸Äž\Õh\à€:~”0D7»ƒ\ÎWš°dg\n}W½T˜\ã$c*{U˜¾t`1òŒý)=ŠŽ\ä2c\Ïj¢y \ãµhJƒx$\ç\"©\ÉÇ®)\Å\è\'¹z\Ö?9\n–\Çƒ0£5%®8<t\ëPj.RQ\Ü\à{UÔƒNý\ä\ã¾Mu¶\é\È•\Ë\è\é™\Óu\Ö\É\É5g©\ÑEhjZ ü8«O#‚\Ã>õºp*\â\Ç\\·:¬fKj\Ç<ŸÆ©K¤, ™	>‚ºA=¹¤6\ã¸ÏµR“[	¤÷9X´ˆ\í\Ú?*¿•\æµe\Ó\Øü\Â0>§”ñ{ðª\ço¨¹\èF4\ÅyC\ì(Àt§\"!ù°\Ã9\0g4\ás³‚ñ\Ó|\Ã )?AT¤\ÉqEw²QF\Ýòž8\ÅBm\ã\'<Õƒq4™\Â\ã\êi¾K?\ß|aE\ßR’H«±c>¤ö«Qñ‚UG \ÅK \'\ä\\ÿ\0´j\ÒX”Á\'5.I-\Ê\é ŸZ±Ø€Žõ!ˆ€\0\éÞ•\"<T\\\Ñ!aN\ç<Õ€05\0\ëO\É#Ö\ÆH©b±/\â\Î\ï¥m¸&³/GSUD‘\Îü\ÑLpA­˜^„\r2+Áš¡4}iö\Ù \à÷µ£3K¡q\â¶\å@ ôÀ\éR¤h\ãU²q\Ó\Ô*\ã\æýjC¡\ïO˜|£ÍªlmªzcU	l›ƒ&n*\ï›2P‘\ê9¦}¨óž;r(\æb\åFa\ÒW`ù@ ñŠŽm*2œŽÞ•ª÷\0ŽsÞª¼\'Y‰ô£‰Áü\ÚBŒ\à}1M‡N`¹Á\âºa4™\"0£\Ü\ÓÅ«E÷†j½£Øf¯tb%›t,Mg\ß\ÄF\äö®Žh±’+ù3\Î)\Å\ÝÜ‰++¶17\ãV½G4d\\·¦sRzWC9Ð¶øFzšÑ…Ç–¨z¦Tû\Ödë›Ž¢¯[“\Ëc‚2(Õº	-f¬`±Z>œ÷bo&?\å¤dTQ€rU8Ç­c`w\ëSFY$\ç\ïš‹coÜ¼9©e\á÷c¶~µE#¥¶Ä°‡±šÐ³?;!¬­L¦\Ó\ÎáŠ¿˜\ï\09\Î0A\ï\\’Z´o¡£\íM#š:’?\Zubh6™O¦\Ò\r/ô†–˜ù›\Ì\É$|¼\n¯¿b1cÓ€)F,}I^D;\Ã8ô®¸¤e!ö\Ä\ÊFFsTµk\Ñ,\Æ5ûª9©\înM±\ÆŒ0:V]¼m,\ß7;ŽI­—s\'Ø³h øœd\Ôñ³q=GJ‰–@\0\àU ôÀ¤\ÆQ|\å½ÛŠš\ÅÇœ\Ëý\å \Óf\Â\îp)–¸Ž\èŸZ7@´d¯’û\'ª\È68\ÇF9õq\ÇP;\Õg\åõ?JQch·nT \Ç\×5[RÇ’1\Î[­Ols1N Ž*­ø8\0ñ‡\éWÔŽ…3\ænô8\Ö\Û0+˜\Ñ\ç\ß&º›q\\Õž§U¡«l2hF=ê…©­ñ\Å`tÆœ\n›Ê¢!œqSâ„€€  ¨d\ï\Å])Q¼J,{\ÆNIÛŠ„\Ä}¿*\Ò0Ÿ\Ä\Ó·?Öª\í‘G\ì\Å\Ï==©ñ\Ù)<Š¿\å\Ôl \Ñv4ˆ„JjI\0¦<ñQ:r3R4Š\Ùn1\ïS\0§\ì	\É\ÅW–^ R¸\rs“R $T	\Î*\Â\'\0æ¡$Ö³o”5¦zd\Õ;”\'4Ðš0\ÜpF)‘ez±qFsŠ¯Ï½kº2\êhÛ “ƒSýœŽ•°<c¥iF2E\ìZÔ§\å¿­\'•ÁùzÖ——Ò(zb—3‘›öe=T~Tñn£8Aùb¯ˆ€\æ—`¢\ì,Š;pPÿ\0…A,`\äzt«ò¡\Èô^D\'¸\Ñ-u¬MF.=y®Žaœ\ÖM\ì9¶ƒ\ÔÂ¢\Ð\ãob\"e\'¿Â˜ü«CR‹(XuS\ÍT]	ö®”\îŽF¬È†D‘“Ñ¸«Q\æ9\0þpj-Ÿ»SŽTÕ¸cIa-žsƒLCpü½1P\ÈZ9œt=\èrIVGZmÁ\ÉG\ïŒzr~lðG5+º¸Œñò®;\Õxd(ÿ\0u†3\éS$j\\\Î\Üb¤h\Õ\Ó	p\éÁ­K‡\Ù<2öõõ¬k	6H°<\Ö\Ý\È&\Ôw\nwjæ¨¬Í£±¢„>w©\rAo\Ì*\àõ\êL}+šKSTôM\ïJi´†–’—B9“™Sœc*¨ÉôÚ½«fO.\Äe\Øð*¤¤Æ„Œ\ÜzWdWS)>†mü‚[’2H^ô\è\Ã$\'\0\ï<ý)©ù‹¸\'\'€8\ÍZ%P€y\Ï-\Û¡˜ûX\Øc\ÔsRH\æ9ì¸ª\Þn&D\Ï\Þ\äó\ÅN\ì\Ï68 ŒñE‚\å+\Çi=‰&›|\ìc¶EM2|„úR[òñ\çŽ1š’–¥­›\Ép2*Œ¾½²GÒ´ŒxœxÛŽ*¥\ÔK~ñ\Èµ%¸\Þ\Ã#}’+g¯š8\ïf¡ß€¤úÕ›\Âdƒv3ƒ“\íZ¢Î‰÷\Èô5\Ô\ÛW\'¡¾f?Z\ë­ø\"¹«nu\Ñ\ØÒ„\0­_‡‘T-ù\Åh\Ä+r\ÜG©C’j©Ð€;\Ó@<ÿ\0ú\é¸\Ï5 \\õ\éÖ¤ôý*¬+Ø‡\Ô`T\â<\Ó^-ŸSNÀš+½)y=\êb‡Î‡•\"‰©±W\ì0[3ü\ê9<¸\ÜFG5Æ¢@ùON˜¬›‹‰.$\0“\Í\Ï`W\êY¸¼W8Zƒ$¹\ä·À\Ò[¦d9\êMNƒeˆÓ€jtJ\0j•#\'šFGVD\ëZ3Ž•ZHÈ¦®d]D5ˆùŠcŠ\é.€\äzóX³D<\ÌÖ‘2‘¡§H®€\Z×‰®^\Z\Ú`y\ÚMt¶r‡Aœt©k©Qe€”©\Ñ”\Ç\í\ÇzV*\ålRSëŽ•)X.G\"\ç<UI“\0ñW$ªÒŽ	ªBfT£­Q¸B;Ö¤\È\Î?\nÌ¸\àÖ‘3‘\Î\ê1¨\ÏÈ¬l\áQŠ\èu 0x÷\ÍsR=\ë¢;SVdˆFS=ø5f\Ìó#\î§$Vy“O¿¡\ÂH®9¹d9Ä„sÁ¥”ð1\ÈŸp™Á\á†i¯òKc¡\ç˜\Ø|½õf\"\ÒFp9^j®òƒof\ã\éV¬²’\ì\ã\Ð2Ý»\âBA\ê2+¡‰\Ökb?\Ù\ÍsXhg\Ã\rl\ØJ\r³Ž\ê1XT]M Í›,‹T\Ó51\äTVüAz\í©Er=\Í\Ö\Ãs\×=E \éN#\Òv#ŸL¥¦1þ³Ÿ\áZ§u\É#<\Îj\éË€\n3’k:\é\Ã\Ü¤•^~µ\è%ds7vE•Bù²‚Kv\Æ1M›¸\é´dš¬\\d\Äf©\"[%G/0~ùü…h&\Ó$|õk4’ÀÀ<â­£“\09\æ3œ{Q\ÐH–\ãiŽAžs\Æ)¶\é„\ÙÀ\éQ\Â|\È\ä>‡&­C—µ\Æ*Y¢/¼^ZE&\Þ¨^¦ò21\Îj&\é-cN~P0*¦¢¸\è@\'Ö¥nSzò\'\0\äsSFþe³©\Ï#\ë”â¡·;\ÔóZ“ho‹À¤ûWgoœƒ\\5‰\ê£Ð¶+¸¶? ÷¬+-NŠCR#¡<Yq­_µž+™£©\ZF\Âz`T‘@5AR\ÆüMm;*µþB¨F\äj²’„÷\ïZE£9\'Ð¸ñ„\0ñAU&—\0\ïM–\äv\0q\ëÖ¨\ÜLO~j›]¾£¤¸ôªsLH<\Ô3\\‘žFj(³1\ïŠ\É\êk°\Üòjq¾bÇ±\ÅhT¡\çœOÙ§ ô<\Ñm4õ»4ð6Up0j#©Eù\Ø\ïPjÍŸh™3\îpi(\È\ÖFS€zV¥Ÿ2ŒŠ\æþÔ²}\Æ\àúU»{“Ðš¥£!\ê¬o_}Ÿg\îqøV4Ï³ž\Ô\ã6{ñT¯.\0CT\Ý\ÉZhUº”c“YÏ†5\Í\Ö\\\äñP‹\èü´\\úf©-\Ùi\ã9«v$ \Ý8ªhWLçŠ“Ns!vw8­\Üi\êt¶÷#¥[ó\Çb=+\r$1‘\ÏZÐ¶˜8\ëR‹-ž?…C&r*Bx\ëL$R`ˆß¡úUY3ƒVda\Ïz¬ýñBR˜b²\î…jL*Î¼\Ç¤L\ä`\ê\\!>\ÕË¹SŸS]6¦p\éŠ\å\Þ\åô®˜lqT\ÜB>@}*\ÚcC“òš¯\0ú\ç\ëS\Ây)\ÔµQ\×1“´€x,9p\Ê9\Ü1O@\Æ2Œr\Ê8¦C\à\Î;w dŒ\ì\Æ=\ÅX·Ä…}A\àžô90-÷Xc§J#\0;ƒŠC\'º|\Ì3éŠ¿¤É’TŸcT.c;	ô?M§>\Éõ\ëY\ÔWEGFu\è\ÅÇ¥<qP\Æ?v¥I\éR#‚=û\×:Si3À \ÓA\íR1Ô´\ÚZ\0\æ%+’*¤ˆ¨t\ÜsV.d+µBiG g`f½r²¥\É\'\'\å\êj\Ëzð=©.\\¹\Ú;š€\núV„Œó9\n8«\0ùaTÿ\0ò}*+x\É\Î8\\dû\Ó]\Û$ž\ÃRcD\Ö\çcºva\È\éW¬\ß÷8\î¹<V}©\ÌÀ·L`\Ô\Ñ\ÈcG ó´õ©)3¥ÒŠ\Ëe&~úž¨uO‘’8\ÎA\Òho”‘‡F\àÕ‹—>K!*sInSw0f€OB95Pu#¸9§4a\à/Ž\Åg\ÈHl\à\Ó\Äù/c~€°\Ívö§\ä\\w®&Aœ\ês]•‹\æ\Ú#\ê£5]R5££fœd\äcñ­jËˆ\â¯\Å&^+™£©3MF*@zU8ä©„ž´\ËHô¦@3U¼ÁMyj™,’õ\æ¨\Ü\\c¡¦\Ü\\„\î*¬(\×OþÀ<ŸZ‰m\ák§\Ü\ßpÎ´£ˆ À\n\"c@\0\è*_­&\Ãq …#¨\ßÚ‹‘\Ç±ªû\ãò¦z‡:,š9³0qÒ’m\Îó%¢\nÞ t­÷EôE\É\âŸ3+Ø²[Z\Î\Ã9%µ\ÔñI\å\\®ta\Ð\ÖÁ¶g\éTnm\åL»½*Ó¾\æo\Èy½Á\Åd\êÚ¯–02\Îx\n;\Ñ3\Ï\Î\"lý)X³¿™\"ü\Ç×µ=«2>\ÍuzwL\ÅTôQ\Æ*\ä61B˜òƒ?©¯\ä€1Œ~yc<\nm…‘F;7\0N\Ôþ\è«ð ˆ^\0\éNAŽ)\à\Ô7r’%}>9LDr@4\ØðE)©¹Fœ3dÓ‹\æ²\ã˜\Æpsƒ\ÐÕ¡.q@\"Ãž:þu^C\éŠžµ8£`dµ—t{VŒÏŠËº|ƒW9Z±\"6\'Ò¹«n\\ŽÙ®ƒX B\Ã=kÏ—9=²+ª;U>\"tŒùÃŽ3Šu¸	!oS­I\Z\ä\Ç\"ˆ\ã\àzn\ëTAa\ä\ÈN\å\àuZ7\Æ8 ñ\íIq ŽBÃ \àTnAù\ÇCI®Àa\ëÈ¨Á>paßš•Ï™=˜qU\ã\És\íÒ€/\É(0Ÿ\ï\0*Kd\Æt\ÍUùo‘Ú®\Û\rð\\dqQ-ŠGKdù„j²PpG¨i²O¥_®hÎˆ\ìE \ì\â›Sr‚–›N¦#ˆ¹“\Ìq\ÏAT®@\åV\å\0H û\Õ\â\íW ŽfU$g© ’IÔ‰\Ð\Zrg9õ« ·mƒ~Q­BH9Ï¯4ø\Ûd\'ý¦\ÍC/\æzžE\0Xˆc¿z@Ió?!š#‰\ê4H1»€T•\Ð\Ü\Ñ\åióü\Ë 8«R–y·6¸\È÷¬m6bU\Ï€E]û@“¹c\ÜR+ ·}–a\ÝAT¤\ÜøS¸ddUùP0þ÷9¨\á‹}²>>dùh\Ü™špPd`ô®¯H|\ÙFx®jhñ3€r	\È#µtz!ÿ\0E\Ð\Öu65§¹¬™À\éSE\'5c#¥\Æ\rsø\å<f§f¨¡\é\éS\ïŠL˜\Èy¨&¹4\Ùãš®‘›©±ƒ±zû\ÓCƒ\Þ>y\ç“\ëZðF±\0 pE\Z,@(§£ñ\éC\É\äûT¤ŒT\0Ò—ÀúÔ±ŠOz8\ëM\Ï\Ò\åq\É\×\Zÿ\0¥0{þ\ã,}7\nnc?\Ä?:,\ÂÄ±šWMø¡\"09÷©Ll³ž†­&‰²+<#¸qU\äŒß¥_\ç<\ÔA\Éj¦T£Ÿ¥BGqÚ¬\ÊñÀzT;\Ð\\Ph`9ý\è\ß\Û\'\È~\ë\ni’1šv\'T:9y©·ŽµGõ\"\Ë\Ø\Òhi–4\Ñ!Œ…\'ŽÆ£ò}¨?½ i5¹É¦¦\îœñJ\à“@\îA+\åk2\àõ­x\Íf\Í\ÉúUD\ÎL\çõ¯õ-ùV-†E\ÈEnkŸ\ê\Ï?ýzÀ³\'\íQÐœ\×T68§ñ\Æ#ó\ßS¢A\äO9\È\ç\á\ÔysMó\Ë\'n\Ô\Ñ,Í¹q\Ê\çœ\Ób#OLp})·€y\ÝðFj1 \È§J`‹ðc(\ß\ÃM’;ö¦¡ùŽ\ç­;~x\Ï%F~\Ì	\êx5n\Ù\È*3ÁZ¨ÔŽ{æ§‹¨ö\àT\Èh\èôÁ²§\ê+AjÍ°?tz­i\Æ*\ãž\æñ\ØSMõ¥\íEfX”\êCK\Å14„O\\qYw»ŸZÑ3õ=«>^d8ýk\ÐG,ˆ\Ð\ëÒ¤D\àž(9°«F1å™°Q\Ó\×5d•d;2?„p(‹‰‰\Æ}1\ß{\í\íŠ~v!s× ¤Áÿ\0xTt\ê}\é\Å3‚{óõ¨­\Ï\Î\Û&¦C÷A\èÀœŽÔ‹D–I„,N\Z•\ärOp\ç5Ëv“Œ\ã\éQ\ä&	=\èBY1\çŸ\çPEtÐ‘ƒò·jf\Þ_J­q!Àö9¤69$o´\Ìy\ç­uZ+\æ\îk\çR;œ\n\éô	Œƒ\Ø\ÔTZ\ZRz4C\å\â¤xþ\\\Ôv¤*\èN1\\N®…h¹e5\\ƒžÆ®D42¢/\ÙÄƒ\éM¶@™®j\ìj8ª\è\'`~´\\c%>X4Ä¹\Ï\åN½\åA=`^\êþ[ùQ\ä°\ì*¢®\Én\ÇGö”ˆ|\Ì?:©6±dH5\ËKs{p	P¹4[\Ø\ÞLx\ê	\ä¨kU·\Í\çÕ™ñŽ¦}¹Ÿ¹>µ^\"S€%9=ˆ­Hü9(Œ±“<zbŸºU\Ú*¥\Ë>*N\ÙÁÿ\0õTñh³‰0\Ì0zñVfðüñÂ²†]¬x4iÐ­{•\ÒV<n#•§mz¢¼§ŸQÒ³“Gº=[Û¥G-…\ÜOƒ8\î9ªº%«õ.\ßÜ˜œ„’8\â±å¹’KV\Î\åó˜˜œ\â 67\\Ÿ(­Kh¤¬·+¼­\×\Õi%“¡«/cy“ò¨õÉ¨Æ›<„\î\ì(\ÐN\é^iS¹\éRþTÀ\'?Z³s£\Ê#\ÜÒŸjÊ¸²¸Œ¦\ÇV-\ëÚš³3wfš_o\Ï<Š‘.wô®~t]þN\ã#½J’\\Dû›p\éCb.\Ö\æðrkF\Ìðp$`“Ú³lAšÕ¯[!\'³Y=\nŽ££ˆ\Ç\ÐþtÇ\0Ö•¼;-¹‘“U&¨LÑ£*\ã€Mf‘œš¿xx#Ö©òô\íZD\ÆG7¯=\ë\Ã\åI\è§5¥\â		\'>µnû	a\ØWZøN)=Mw—`“òò>•\Ì<“\ÆwUieÃ¡\ë‘\Í8òÁ¿\Ä2\à\î\n}±U\Ó ­M\Õ9\êO\Z!\'Š\0µ\Ü ÿ\0	È©#rG=)“\ÎGl“H:ŸÎ¤e\è“\Ì\Âú\n·Ž>•RØŒ§¸\"¯D3j\íŽA©‘H\Û\Ó9\n}jSñ¬m!òƒÒ¶#\èA\í\\sÑ›\Ç`4vP:Ve;›N\æ˜,¥J•¯^µ—/`õ\"´¶€„ÿ\003Y\Î¹S\Ø\ZôQ\ÈÉ‘0T	\ëVn‘c³@26~˜¨c LñK,‚C\Zº¹À \ÎO~\Þô\é?º¿­\0|üsƒšžy9\íLC\á#aõ50Á#ž•\nsž\ßÖ¤\ã\æ\ÇJ’º†\r˜#<’j¼\Øz\Ô\Ù?c$t\0z\Ôw6±\ä¸ ]þA\ë\Ð\Ò\æB[û¼\ZŽLo÷H˜“ž	\æ‹\n\â	`N\å9½ LrG¯=k^þ†­h·M\àR~V¢J\èqvg¢Y\È\nŠ\ÓNƒÒ°¬d\àsÖ¶\"z\ã’\Ôï‹¸³!\Æ}\r>\Ýú\n‘\Æô¨£B*JLÔˆŠŠ\é68qô4\Ûg\êyG˜˜\íI¡õ*L‰\\\å\îŽ\Ñ\Ï\ç \àžGZ\è†y_J’4WXpzUÁÙ’Ñe\n\ÜON0\×_u¢\Ûùj`Œ)Q÷«¸µkk‘$}\ç\ÖZ\êöo¥guQ\Z\á‹bºt’9\êsE¦¶2n4\ém’9€\Ê\ç’;VÁI\r˜eQÀ\ÉÀ\ëRG\"\\[Sº7\\ƒ\ëVa F\Ðb±µ™^Ù»7\ÐË²¶7NH\à´\ë\Ûimñœ”\Ï\íZ6Acy\0\0d\æ®^$of\Æ\î„SW\Ünµ¥\äSÓ´…x“	\ä\Æ)ºŽ˜!ŒºÀkb\Øj;b‹€{b®\×2u\îsšU‹_Hd\Ç\ÊT÷úP–O¼~µ­`‹kj¡F†\rm‘Ó‘G\"µú‡¶nW\èqvöM{#*®œ3\Z¯}b\Ö\ÓÆ¨2®qô®²\ÊHfq€ª\Ø>\ä\Õ9„ou2†\n\ÙÁ¤\Õ\Í=»¾›\Z“C§†\Æ_ „ú<’A–lJX\ì+²\Õ\åYk‚r@¬-nðX\Ù\É8PHQœfˆ®\äûgk#2ö\Él„a!†\rS1+‚\Ì:b‘\î\ÞñÄ¯\Â\íÀ$EŸ“\Âö÷¡´¶6„Z\ßRå…¾\Ä\0t\'¥mE÷D#Ž¦¨ØŽœf¶\íŸÕ‹Õh:LÇ¥c\Þ?ZÔº}€\×?s).Ni$6\Ê7’j¬Ï²Ú­‘\Üõ5&ú{\Ö\Ñ]d\ìŽKZ”¼\ä{\Örp¯ZŸP—Ìºlt\\œôô®¥¢8›»&\å\È\Ø\é$”_º¼z`8÷\éL\äþ&\Éz€GQÚ‘	\Èô™=}zS\ãÀ\ïv (>C\Ï8\Å$C;¿J;úS\í†ÿ\0\ÄÔŒš\Ìùr)\Ç\Ý9­H¶ý–B=IúV[‘\í\ZÒ…Á\ÓöóóqQ-Š‰¥¢‚€ƒ\éš\ÚNA\Íeidc\àfµ#ûµ\É=[7Žˆ^Ô‚”\Ò\Z‚‚\Å34¹ \æ\äó½j›Ÿ\Þ\è*\Ë\ÊJ\Ðù\ÕB~­z(\äd\ÑIÈ¤w\É\Ð\ÔqŸŸúT¡\È\È\Î3L±Á#µ4søT\Ø }j2\0\íùP‚„Ž?¥¹w\æ)\é\ÊwTIÁ\Çbpi¸\î*CM”“dðj7r‘¯ªœ}hx\Ù@\ÉŠ\0­¿|’SQ¦9\É8œ™>¼\ÔH\ä9õDd”¨£”\Ç a\ÔjBH88¨_¯½0¹\Ýi7^d1¸<]¼™\Åp>½Áò‰\éÈ®\Ê\Î`@®Z‘³;iJ\è\ÜC)vóU\âñVC\æ±5z<TjÕ¹¤R \î2:µ!Nr:i\×	\Î}(C‘\ìhA\"£óúŠÇ¼µI£h\ß%¶q[¸\â³\î£;½Z\Ö,I\ëc˜\Ôn5{d%Ô¿eUÀ\Ø\ÇÖ·´\Zµ–—7ó\Ë*ªÿ\0\Þú\Ô2\"žžj7·RWûªr]ô¢ž¨\×\Ó<Pö³\Ï&¡¹£”†]£\î{}*\å\ïŽ\íÍ¡û¼²\É\ÐTUFq—tOBsŠ–\Ç\Ãö\ÓBTHJB°=hI™8\Å?yXß³ñf4î¼Š)0#¸5lë–„m$‡¸\é¼*^mª\èWÔŒT^–ùZ&\Ï`qT/g\Ô\î­u»;«Xž	\ãmÀ\ç8¥šþ0…‹¨\êN+Ï“\ÂWDB½ð3Q\\øbð\'2«\ã \ÓW%Ó‡s¤>0\Ó#3BnV2­\Ë7F÷¬x\ê\Ú\ßoöwúL€äžŠ+9ü-+Ç¾i\Ù<\â¨G¢¬d‡Á\\ñŽô5m\ËT\Óøu,\Í\ã««¨¤X€Œœ\Ô÷O6£:\Ërt£¥UŽ\Æ8\\£Š³$À\0j†ú#XRKY@B8©b\Ë\Ê\0\è:\Õ@\ì\äœ\æ´-“`\Ô49\Î\î\ÆÍ€\Éð­|ycŠ\Ë\ÒFü“\ØÖ¤²\éPI™©\\`y\è+Ü¹«Z•\Æù\nû\Õ1\ÐÕ¥¡-\Üd€kŸ\Ö.Dp9\ÏjØº—\0J\ã5Û¿1\Ä@÷É­©£ž£²±’Iw$÷9¥zš:\ZU \Ö\Ç9!\ïG^(\éœ\Ð?úôT\èG¥Xˆaú\n>øýqVŠ\Ðr{T±¡	==¹÷©m²˜ö\ne\È\'Ö¬B	œZCC®NH>ø©`<\È\Õz`\æ¨^ ¯ú\Õ\Ý0\áòzQ=ŠŽ\æÝ˜1\Â\Äv&´!“÷##’;\Õ8N\Ë_v\äþ5u?Õ\í\\’fñ ž\rœQš’€\Ò\ÓI¥\Í\0pn#,¼0õ\ïTI\ì:\æ­É“ÇŠ¯\'<v\Íz\'!r„SV\ÂŠ\Þø5Q\Ç#\Ó5\Ë\Ì?/q‘C\ÆpON2*R{V•›«\ÆÑ²å“Ÿ¨ÿ\0\ëUƒG¸c\îŸÎ\ÆF{~\"¡“‡>¹§’8#8?¥6NGxS!r@\Ï\0ñN¶rqŽ>µILûÓ£\ëœóÚ\\k‚ŽHóP9\Ä\Äö&¯º	9\ÆªS \Øppi j\Ã\ÜÊœŽq\Æ*¹<‘\éR\Ç\Æ9\È5ˆA\'\Ô\ÓD±öÓµ¼\ÂE\ìk¶\Òï„±«\Ã\n\á\0\Íjh÷\Ío0\ÈO\Õ#tkNvv=\Ú|â¯¤•\Î\Ø\Ýn¶!“ ¹\ë\\Xì‹¹~9©\â“¨SE!9\ã¥C-3QÀ’?­W)ò·LñS\ÂAQ4c¤†\È\é’D%Niœ‘\ÜSÁÁ«Ø“\ê\ÎµXNµ½,+ >•Ÿ5™\ç­;\îkc\"N1W!ó!¸vB}8\ÍUD18ô­»9 xÀp>¾•V\ìSi­U\Êo{z„\ê\Äv#9©¿¶$xÈ’ßœu¯=”ŒH9\îj¤¶ª\Ú\ãù\Ó\Õ¸S—Bªj·#þY®LšI5+§ùW<p*Cn¡Ýž3AŽ@K\äõ9¢\î\Ú4©§{\Î\É,Äžù5ƒ‚:Õ©%L¿·³\î.@R-^\æ\Î\ÉY\æ|g\ëU†d|ñN!¥?=#\Æž\æ™\ÏRV&¶ŒdqÀ«`ãŠŠ$\ØIŒ¸´™‚}Mý(m€Z[ë‚¨y\íIlDV\Ê=«+U¹\à€k;]—{#>iZY\Éü)!\ÔQdþ5\í\ÈD<ö­bº7Ô¡ªÞ¬Q6Oj\ã&”\Í3;w5X½7m\å™]VG,\åv->:g¥Hƒ4\Ézø\Ð:¶}8§ž£Ž¢œù›@\éÖ‘DÖ°‡#ŸzuÀóß¥\\¶‰R\Är\Ü\æ¨\Ü\îO¾&cr¦­`#†÷ª€~ùlÕ©2^ù d!”(=¹«\Úw\Þ\æ³\Ó%	ô­Hb1Z‚:žk)½‰­œ*ž‚®¤\Ãôª(	\ØsŠp$q\\\ÏSd]óE7\ÍL\Èi¦SI ¹{\Ì\ï0z\Öy”\Ñ\ç\Zvœ›’ùª\íœÖŒ°ð{*ñUž\Ü\ã§»NfU~@\ëúV¥¨e\ØÀ\ïTDžzµ«cxT9\Æi¶	!h¦Œû\à\ÒL‹4dƒó/zS\æA–Pr¸ªÒ—…\Õÿ\0¼2G­!•£$f6­!\ïŒ\äUÙ£[„ƒ\ç^x\î*›‘\æ`ði¢X\ØÊ¾A\à‘Ú“\r\ãÔŸrSŽ†œû#·Z`O€\ã=~t\\[`9S×Ž•D8)œr§Ò­\Å.ü«u\0úÔ½µ\Ð\Î\Ú\Ãq\Ó*}i³g`<{ƒZD+Œ)<qŒTO\0w/AƒM14fœv\ã\Ø\Ó\íÁy€´ëˆŒx8\â™	\Ù =³U\ÐKs©\Óo\Z\"ºÿ\0:\é¬\î\à\äb¹ñ‡_¼£8õ­]:ó \ÎB\rsM_TuA\ÛFuˆI¥\Éª\Û\\	¯5;“\×Ò°h\Ý3V\ÊLŒgš½€\éX–R\á\ÅlFù¶+r¼±\à\äSG\ëVe\ç_fh¸€8\Î\r#€z\Ò\ÎH¤óT€¯,!þµUÑ¢&¯¾;\ÔO=\rZe)´V7Ž€u\àw\æ {\çô©\Þ\×9\äTbocUqó®\Äoz\Ø<ðz\Óð¸=3Sý\\~t\ä\Ó\ÔuùÒ¸{E\Ø\Îóûg4Ÿg.~lÖ·\Ø\Õü)’ u\Ø\Î1ˆ\Æ\0¤Ž>sÞ­<t‰;\Ø\ÅÝ½DŠt)¾q\íJ\àKoÁ,jn;\åœ$`Â°/&2IŒ÷«w—8²|Ì¹bi\Å&M$¡­szÆ¥´S–<U\ÝJøE$ñŠ\ä\î&i\ä.}x­\á¬\æ©.ˆŒ’I\'©¢Š+C!Ñƒš²@\0QI\n3Šò\àRcB\Þ\0\î§%º	’qÚ¤Š1™=B\äSE\'4\ÐRØ\â<\nÍòO\åV®sÑž£š¨\ç\ä-žIÀ€H\Î~•3¿A\ëP/\ßùœ\ÐÀ»d†R©ØžMm¾‘Æ½­e\é(H\Ý\é\ÍjÂ„\å\ÏV8„÷5‰¥ŒgÖ”\Æ(C„J\×>·6!x\éž]JM0‘T“\Ñ¥7oÖž\Î)»…;1]…¨ð£œz\Öm\ÈCƒ…«\ï©ya9+€=\ê-6\Û\í³\íp6(\ÜI®»˜X -\Ø`Ÿ\â==+@¿“T\\œðE\\š\ÍC½IÂ\ëôªSH\Ñ\ácù\ÓJg]\ìGv1\ëP9‡\\ò¸\"–\âTöy w5I$#{t$\æ‹b\ÖVG\Ð\ã¯Z[è•ˆtlg\ëL”\0Ž;ñNó·Ãµ†y\àúST‘€}84ó“=\Ç›ŽJ·^ÆŸ\0)\ïòš\0ˆ\îG×j\Ì2\ï\èpýÇ­Fb\ß~µö\ê=;\Ò\Ü65REr3Ž ñŠO0\ÆJ°ùO=\ê„w\ÜyþõYyI@qžx=hµ‡{Žš\ÕdŒ•\é\è{VQ¢$\ß úÖ¼3‘œt=\é²\Ç£\ÐúzRN\Ú0µõE»ö#§’·H¿tõöªº`hóƒ‘È­¡’<Ec\'fotKazx\â¶\ã”Hƒ\é\\–\Z\Îm­¤ðkf\Êóô©jú£D\í£5b“Ë”\nÛ·—zkž,nE^±¹\ìMf\Ñi›§;x¨±\ÔQ \éOs¸t©,ˆ¡JiN8>3ŠhhLv+ºgü)6“ëš·´zQ\åg‚©14g¼g<sM\Ú\Ãó­o\éÞ˜mú\Õ]Š\Å2\ZF}jÙŠ¦\Å+Ž\ÅGCŠ…\ã«n1Q¾9¥qr”ž:M›\0\'½M&\r2b\0\ÐS¸X¯)\Çq\Zg¶)\ä“To\î&\Ü\àžµQW3n\Åk«‚\ìFj„\×\"4<ãŠŽi¾bsXÚ•\éÁŒOZ\Þ19\å\"­ýÑ¸”Œü¢ªQEk±ƒw\nt`–\È&¬\ÛFö\éCIŒ!\Çð\ÒÁË®z“Cò\0d\ä\Ñ`{\nE‚tW<2š…	w\ìŒ\Ðd\ß?˜:c l\ß\ï\Å\0X¼s•\Õ\\œ\ã\ÐqK+—@OZŒ“Ò€¸ô\àjq\å\é€ÿ\0*|C|ƒ\Ü\â“N‹ƒ\ê9­\0b©\ÛüˆµO\æ\ÒT\\µ`\ê%¡t?\Ó&*§ži3\ZµA\"]f\Ë2ŠŒ\Ü\n¬I4•¢¤‘£\'3f“Í¨ipiû4/h\ÌÝŒ~g\ã½liƒN\íªG\'k\å28\ãÚ®}¥‚qÀô®c¥š‚Ey\ç;\Øm\àgh¬[\ë¥ò\'œ(=\é\ïqö{v\\ü\Ï÷˜\ßýzÉš\à\\H©\ÑŸ¥R%J\ç’I\äš$ \ìÇ§5¹.}:\nPr„zŠb,I\È#€\ã>Á¨PðW¿Qš~ðH\ç†\Ð¡÷€\Þf\ä©\èÜj‡zò?Z˜|ãŽ´i‰€=\Æq\ëT\î#h¦ €x#Š½.\ã¼\Ý\ÆTŸ¥:\âql%\Í!³/ƒ\ÇZtr\ìùNpi	À#‚\éQ\äœS;¸\'\å?NØ¥K“À9\ã½B~\àÁ\æ˜I#=\éX.nXL$uÁùºfºG\Çô®?Nù\ÊA\Ç<\×af\ê@\éù\Ö5™½\'tI-º\ÍVC\éY\È\Ïk&\Ç\à\Ö\Ð”Ë‹U¸M¤t\è}+4\ìj\ÕÄ¶¹\Èðjh\ç1Kx5ŽC\ÙÉ²AÁ\è}jôR+¦3O@W:k+ \è9\íZH\áÓ­r÷M€zz\Öõ\Ð|sYµcD\îiƒO\0Ulô5b\'Š‹˜£­H™ö ¦9\êH\ã<\ÅZ@\Ú°÷¦<mÁ«%1þz\ÓŽŸÎ®\ÄÜ¬\éòZ¬õxAªrjZ-2¬‡œT2\n´\êMTg>\Õey;b«\Ë&O\áV¥\ág\Ë j\Ò3“°\É$}9®zö\çÌóÀ\àU\ÍJð\"“X2Íœ\ÖðV\Ôåœ¯ “LNqXs1i˜ûÖ£œ\Ö\\\ß\ë›\ë[#¢Šri>4$U\ÈS\êN*\Æ*t}ˆy\çRcB\ÌAp¢Œ}j,\íB\Ç\Ó€œ\'½!;‡^	\Í$@D1ö\ÝÈ¨H ‘\ïS\ïÿ\0FE=TñM>¾´\0\Åù\Î=ª<ƒRŽ	¦gŠ\0rTÖ£}ÊŒ\ã&¡ô§E»;ƒ`ö¦#ªŽ PrsŽ†šð¸÷¬Xui­\ÎdzÖµ¶§À \Z\Ú-´ú9t¥«.Šã·¶*BœõjÌ–šŠ\\P0j@&\äx§\àÓ¶S°=i\Ø.`ñiP¶KÉœõ!c\Ücœ\ÔRÌ©\ÆztÃ¹\Þ2\âV|Œ\äõ8\íTI\Øx\åˆ\äÔ®\æLóQTŒ\Ø\ÓH\ÎCÁ¥4¾X\ë\ëÒ¨ Œ\îõ÷§úŽ=E9\è\È?yG\çM|qH¡\ÅÁE<e:to\È=9¨þ\\•ö\â–#ó`ý\r\0k\Å {)bo\á`\ëS\Ùl{i#n2x5J\Ûòœ|\Ã4\ëipQsÀm§Ú\ÊwVþL„f©‚2I\èMk\êHOÍŽA\Ú}\ë!Áô! ŸÊ˜9\È=\êHPž?\Zo\Ë\ÏlSö¹ŽAõ®²\ÆC°ø\×%ƒ\Øõ®“N\ìu½k*ˆÖ›¶‡C8\Ç~\Õc`\àû\Õ[b®\ZÐ`Š\ægR*Mj“! ƒ\ÐúV<±Ka&Lg¡®\ã\Ùô5°¬¨UÀ úÐ£*)–T\0ž\ÜU«[Æ·+;\ZÏ¹Ó¥³rðe“9Ç¥\\,\Ãkü­\é\Óz2v;[Õ•0H«i.\Îs\\u½\ãÚ¿\'rúŽÕ·m~² !\ãÖ¥®Å§\Üè¡¸WjW˜Ea\Çr \ç<\Z›\í*z6i&\ÑN\Ì\Ò{‚q\Ï•»š£çŽ”…\Î3ù\Õ]ŠÈºf\'ñ¦þµWó†zþU\ÌFNišOÊ«HT\Í5\î\êj\Å\Êúô¡+ƒc.¦ùqšÆ½½X$\ãÒ‹ýESw#=…s·—põ¬bs\Î}Û›–šBÄžMW\ç<\Ð5 CZ\\\Ê\ÄX\êk*S™\Ó5±(\ÂaX¤’\Äúš¸™\ÌJ’1\ÍGR!À\ÍQ\à\ã®s\Æy\êj sƒN$€[ò¤1®\ß\Â:´\nˆô§!4\År\Ð?»¹©1òŒ\Ô` Ô™\Ì wiGL\Ø©0Fi¯\ë@\r#·­=1L¤OÒ˜‹\éÏ¶bFz\Z{\é³$~| \í\Ï\ïU@#¥i\ØkgCË¹Ú©2Z ·\Ôdˆ\í˜zšÑŽ\éeôª÷0\Åzw[\ã\è*‰Š[g\î1\ëMI¡5sc>”ðk>\Úð>\È\ÝV²G5¬e}Ìœ{A§Tù©rj\È1&v\èÀƒÚ©‘Ôž¦¦‘\Êq’G½B\ï\\)¬Œž\Ý\é”óŒÑVI?\Zp)@\ëúR8\Æ\0üM\0\0A\é|Ž„f”}Îœö§Œ8 \à\ÒÀ\ç¿j\'\'­;c#€G¶}iû0\äuÈ 	‘\ÊBŒ*sL/‰:7\"žŽÃ½B\\\äzP‡œ&¶\ç9\èMgN˜~jX€+“ƒÈ¢@9\ê;ú\Ò\Ø{‹k\ã=1QH73:S\Úþµ¿$\Ì­0±|°·4\éHLúu¬>Ž8­m5ðJð­D\Õ\ÑTôgSjxt5«=kN“€§§O¥lEÚ¹%¹\Ù\\\0\Ú\Ý*\'a\ã¥M?…<¢¿Š’\Êe\ê*…æ”“|É…~¹¯,lž\â¡Áôâ‹Š\×9·Š\âØ•uÜ¾½i\"˜¡-{©®†H\Õ\Æ¨\\é‘¾J\r­\íV™-Å©°\áø«‘\ê*@\çõ¬y-g‡#n\åõ<\Ôrve>\ÕZ1]£¥\ã\Í(¾¿s&\á\Ôp\Çñ¨\Íì¾´\ÒfuBøzþ´~;°\ÅrFúoZc\ÜM\'W4ùP¹ÎŽ\çV‰8\Ü?X÷š»>B=k9Áü}MFERI\ÛbK+JI&£\Å;\ÔñÛ“‚iÜ‹\Ç5)\0U„ˆ\nd‚‹‰«nŽ!o¥a\Ö\Í\é\Ä.=«\ZµŽ\ÆS\Ü^”ñ\Î?*eY‰—½¸½\ê™g\Üñ\éQ\Èù\Å:B_ü©€r(H\àf•1‘K\'ABõŸ$m©\ÈrqŸ¥3ûb\äý8¤1NFy €A\'­=“\Î;S{\â€#8\è_$Œõ¤t¦\ÇòI\ÏJd–²9\ß(;ž	\Å\'~;Š3À\Õ!3¤\Ñ\ìV\É9\Í]¾Ó¢˜—ñ¬­&ü\0#c\Ïj\è\ÕÓ“Á\Æ^Zµ´ÄŒ\à\rOgy¿	\'^•¿{gÑ‘€=ë˜º¶kyQŽA¦„k\Ï+KóúU;\Âß» 5©ùU©\âŽrñB\ÝÌª0J®ÿ\0xQEs›~Ô‰ýh¢˜‡Ž´†Š(Qõ§\Ãþ¸}(¢€ÿ\0|Òõƒ\éE\r\'ú\ÓUj( LzwúS‡Uú\ÑE&4Mmþ³þQ\Íþ±¾´QH¤\ëøVŽþ°}(¢”¶*%Sõ­¸~\åW,·;#±z/¹R\í\éE™ ½A¨]@qE€„Ži¤J(ª\"u\è*…Â®>\èü¨¢©Ì«…\è:\ÕWž(¢­\Ä\Ú=)˜\æŠ*‘,GT/ED±b?\áW#Q@‰@•V\ëEDL\Ë\Ô?ÕšÉ¢Š\Þ;ó\ÜYþ;bŠ)’ˆ[¯\áH:\Z( ?DúP;QE!“z\Ò\Ç÷¿\Z( d\Ëþ°ý)v£Š( B?\Ý÷¢ŠhL•z¯ÒŸ/z(ªBCŽ{\×]§|Ð¦\îx¢Šb-ºŒt\íX\ZºŒŽ(¢pñ7µ\ÑÇ-xj(ª@ÿ\Ù','2025-02-27 04:34:21','Female'),('4de3277f-e028-11ef-a1d1-005056c00001','4de0b2e1-e028-11ef-a1d1-005056c00001','Gebremeskel','Haile','doctor','medical','jelo@gmail.com','0902366969','Full-time','2006-11-11',1,6000.00,'Day','650e8400-e29b-41d4-a716-446655440002','Addis Ababa','0900130085',NULL,'2025-02-25 05:43:47','male'),('650e8400-e29b-41d4-a716-446655440000','550e8400-e29b-41d4-a716-446655440002','Semeriya','Legesse','Nurse','Emergency','john.doe@example.com','555-1234','Full-time','2020-03-15',1,55000.00,'Day',NULL,'123 Main St, Springfield, USA','{\"name\": \"Jane Doe\", \"relation\": \"Spouse\", \"phone\": \"555-5678\"}',_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\Û\0C\0		\n\n	\r\r\r \"\" $(4,$&1\'-=-157:::#+?D?8C49:7ÿ\Û\0C\n\n\n\r\r\Z\Z7%%77777777777777777777777777777777777777777777777777ÿ\Â\0ö\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ú\0\0\0\0i×±4\"±r €rÔ°\ÖvŠ\0V78L\É\Õ\Ä\×ž\n€m¼\ÛHôð]„0\Ä\Õk”•Võ:YQI–\àn¦fŽ‘‘\Ížô~{==]+Uô\Ï@\ÔÖ;K76=341\"!%9\Ç\ÖÇ¢D‡Tq1Q\ê¹}cv{.\ÈTa\"7Bc9A\èk%À‘ÎŽˆ0\Z(ˆ[¥a\Ò³ƒ†\0°@-Õµs\ïS£5N®\Ël‹Ô­\é“\Ò\×y\ÏI\ç2\ÓÒ¨\ã\\ì¾µ–™›¥8JD·Šh\Ê\ÜÃ ‚Dø¸ôŽ‡\ç\É\ç\ì\î‚†«Å²jŒhHfÄµ‘¦\É&ª-R( !3e~i\ê:«\è]Ó”\Ä0\Ä\ÝKTŠÚ”²\ëZ¨\Ë\Ó\Ð–i‚`yÿ\0C\çò\Óx\ÓcL\æ\åÔ7J„4ñtTJ¤\ì=œj Hv™™\Z_H\ÂËŒ:5{+`A@=ðÁ\î7ÀeHh\r95§˜Ž°AV-\ÈS‹œ*l´hö\ä¶\æGG	ª¶©K•­d\ÒÐ \ZKjCB	zEs¤ƒ-5\íÑ¿y£G/R“)]¥žˆ€„ !d)\Æ6\Æ;\Ä:\ÉAEM®žO(\Ýk\r\ê½õ@%“Ao¨_Š<¸…˜ Àµ\Ôø.\ÂÀ9k–1ª${sñ¼—´?L÷!\æô\äÐ³žÁh\ÖµG;K4zµ\ì\×\r5\Zf¦-Ô•ƒ½…–·õ2vn3µ±õ\ê[N\å8ªý†¸žF¾3`µ™‹›}\Ý//\Òy\ïA\Ï\Ñsf•O™\ë*š(@¤D!‰†Y	\ä&X¦J\ì¬\ÞX˜¥C,ZN“¯\Ë(¶\á‰5\ÍT„\ÑnZ¦ml&\Äö+Ø«Rµš\ÚB\ìW³S_w-_½\çý\r\Æ>\Î&\ÝK+\ØTU>\è‚:E³cµŒ\Ä\ÏN³0Qsc»¥³S\ÇG\'W³\Êò¤ž¥EF¹ÙŠ\Ð™BY§œž½ša¢¥½>žZ\"±¶Ž\Ù7g§L–z€»ójM¥iqš9:c~+Z¼\ä†CMù\Zrö*Ú«R6kØ©F.\æ6Z¢ó~–\çwz¥©z!\Ñ\è\é£€1±õò^xµS\Õ\á\äü\ç3±Ú¸¹Œ\Öe•µ*¼P3šT\Ê\ÃAµ˜¨¢)oR¹4\ç%±³g53\Ä9h¹\Ï0Ù¤Q\ÌÜ¬\"z¹\Z\ápTUu3gªmq1\ém@\ã\ìe\åt½?•õT`ú?\èjMOL™\ã=5\Ó!\ÒNF¦[\Ñ:\ÏDõ&pr2@»\rÐ¶Ö¥®yZ\É\\xÁx JQ\Ã,òr©¾(<öcE²\å£%q§.S\Zy¦Z•®6öy>z\íißš,(i[\ÔÄ²/P\Ìû÷¡G*\Èõ~K\ÖQ‡\è|÷¡¨b\Úòúz*;¹‘\Ó^¾[)Lª;\Ètð±\å¨Ã \è[¯R\r‰e§S™«¡O‚À$DÁ1\Î\åKf­\n\íö{f¯¾­…n(%D`\ÔøŠB\'¸8J\0*\ÚB<ý-<­ù­E\Ã	Ö—£ò\Û\î-U²‰~{\Öù\\\Ì_Cƒ¿PB]/&{¢†bBc¹Ÿ¥š¢\'U&¦T—#\Ïq–[©/K—\ÉBs\ÕÍ£\á†9@HWp_¶nÕ´¾4¾Vó¯M[!1ƒª)\Î\Éfi·\áMba4´:º2±õòw\æ3[®#Â½v3Ô‚l)ó¿\Èz\à\Ë\Þ\ÂÝ¸\é—“Q\ÑÁ2<‰Î¿D3¦TMŠ”ôò0\'U8\íANU+\rN¨m=r°¨$\ä¹7Ù«§7R\×15¹ameú,¶¹žª²S-s\ËB n\×Y	µ]KtE™ŸqµmU³R¡%†„	µ£³\åw¥\âú\ï#\ë\\\æ\î\án\\s\Ùya\Ü\È\Zw)†i\ê‚\Â\Òû¸\0y¶£V\Í}Q:© f\"‘t\"]\0·sLoeÑ\ÚC5F-5§m&\Ñuñµs‘Šð·yö–¼\ç~\Í\ç«x\âZihV<«”º9k°WR\ê\î¬\Í#S…)ô\Ó}g“õN3÷0ö\î%©j2D£;\é‰„\r;•,¢tK²†\Ò_/šÄ‹–É™\áwu«\Ö$|	´›µÖ‘¥7©j³ò\éjÊ¨…kÁt]\\cSEn|±i\Òz\î‹6õ¡M²–º\Ö*>\ÆoO\',¢%Vr\ÅK˜0NÇ¨ó•\ÍMœm›\Î^\Ê1ø\Ã;\èAD@uKôƒ$†tKbÎtsY\Æc\ÑT.\ÔhmVx¢f­n™\ÔÝ©\n{y\éz\Å;ô>‰\Ó®žŠ­Tgj)6´W5‚ÀKLK]\'\Ó\'¾½\Íùü\Ý?K„æµº÷*\"Á·ˆ±\èp7\\£cbó\ëU-#/Š\ÖwDL\ÐVAt}k~[Šm$\Öu*\î\æ±Ø¾Ç –R\Ð]©\"·\\ \"\ÂôÖ™\é\Ð\Ë%úù:²\ÝV5xÃ‡\Zu\íª[®ˆ\ê,Ð\Ë,Â®t2d\ZÍ©$P¸šŠgN\åN^~\r2‡\Þp\Ó:D\Óf\Þ6º•k\åjir\ÄgÞ£k:«\Z\ë\Ý^{\nA¡ó\êö\êÐ’‰©_G5Šô7-[V\å@SU`;˜#+\Ôn\ç\ÞyZ\Ù\ï\"·M¦\Zô¬ŒkA¦\Úv\î\ä¹i\è\Ï\Ï\è44(Aiôlª¸\ê­ \0^@˜1mNb¬\æT \ÔÝ¹\È\ÖNd\0“si6j\å\èZY\Ú\ZA]§m\Öz¤-e-½\ÑÉ\Ó^}4P‚À*U\Ó\ÍbF\Ñ\åx\Õ=<«ò\Å\ê\È^PýT³­\Êózþ3I\0]/@H³–\Èl‰wm\ç[z\ÝY<œ\Ìÿ\0CEE[u\í\ÍXbN[W(T\ä^{\ê\n·žfp³\\¬˜ƒN€€†,‘f\Åv§:¹\Zbn•·›`\Ð+\ãfJ·¹U®\Õ\Î\Ò780\á‹lE‚\Ò{º•®\åØ»¤&FBc¤;¦ƒ)\æµQ\Ñ.tv<÷¥\Ïu\Ë\Ë=B\ÐYˆM	U……B(\Zy3@¢¡>j\âº9½]Q\Ó1$Ø–ð%Ž\ÂZ%9 ûy—‚\Í\ì\Ë2o7>õMªö\äÜŽÃ²È²\ÏGýJY\Ù^\Æ	t\Ñ0\Øô\ÅJºz¥…Ë¹H\Ê&`ƒ»¡‡¡Ÿ¢¦™eÈ²xq\é|ÖŒ\é\èMe–\æ\Úö¥½)¥eTLRSI\éBÜ¶„U\Ó.§\\Tm×³^\Â¶pJ[ÁDÊ·i\ÙÙ®\äkX\Ç\Õ¨—)!LYKm9£6)…i·^]w&\ésy‡GT\Ù ž>†pJC€†a™t/\æ\ê’\Â]\"ž\0f®¿”\Ò\Ë_As\Ïözú*Ø„PS\Òk_Ï¥^»ªé‡4ªUQ«N£\Ôö\\ž\àY#¹‹b,\ÐÂfŒò\Û\ÑË´\"C\éË²(‚t:±š6»º_Ÿª\äz\"¡\\=sjFxú\nF@º%1]•sthj”¢‘€0(‰\èg]Š»\Ü\Ìõ\ç-é™‰„÷\0E+U.3\Ü\Ò\Û\Ï:ÁjQXN\ZºP\Ö\Þ\äØ‡ D\å´nSC¯º\ç­.ü•\ÔÑŠ°	¹< \äCE†«´R-W\î\í3´B\\]3\ÝÁ%\Â×žšzÍ ClZ\Ì\"\Õ8\Åw\ÍhX©g-ZÕš¦’\ÒUB­\Å\ä¬\î	EqÌ¬\áhTª³«Xú¶©Ž\ÇI\0%\Èz,!‹s:ø\Ú7>¢ž‰AÁ\Ú9kNŽ¾rª¬b«%¢Ñµ\çÓ£I\Ò[\Ä\æ‡i’«o“§¤pÚ±™1¼DL˜ªel¬Ë°\Â|h«H8»d¨T9zTo6>³ªf°×¨)h *4ª§b½¡[DÊ«Q\ÐR\ÅV¬=Mê‰³Y´½\Ô×³)ùq}\Ânf\n\n1¨h\çª\"j—k›[_;— j\Ïm1-0B#¹1rž8Sˆz\\lR\Ô\ÏU×¼™°Ó¨±XL\îPµ] \î\áG5YvøvbE4Ø­u !¼”`©5¹`(©¬œ‘3\Ô\ê\ào\Ê*–*K.“cI“€\Ç\Ì\Ô\ÊW&¦\Ó:Õ¹9\é%1hA€†@.g€\\–¦i¶¥Jp—Ò¦¬©2\Ý-Eµ˜JÜ´\Öùjk#Â‚\Ã8‹)`V@\Ñ ciœTñ¹) 6jz¿\íŠ\Z!ñ¯‚\ÛiWz³C/\Ñy\å@\å¸y½Ý¦y“ej”Y`‰ˆƒbjD˜’v½\Ô\éÉ‹&NV,\æ,‹‘\Ü$3b-M°J ¶Â€\Î8a++&!¡‰Š’0!D“\í|O­Jö~†~t1\"\Ý\Ð)Ü®54M<¾\Ó\ëœ\Z\Ö*\ÒS	²&\"S«\Ú\Z\Ô\ä\Ïrl¿F\êuFxK\éŠ]\00PˆŽZmz\í*Yu„V_Vhž»MJ…£Z\Ý\\O5YN\êt\r$BLg¤ó[©zýL\Ì\écÀ‡ª\Í4\æ\"Z\Ô\ÕTyHfs»Lók\Ír¬+œr*÷+Z\Z\Óa\0nS“Uú¬Mr`Òºy¨‰ˆ‘ñ\\—§}Q TXR\ã%&6i\ÝEª\Ã^–6\àV«z›Rk6ˆ†@Š$E0L=L›¡\îòvò1ªB\ÑEš\Íb(\Ã@+M`\Å.\î\Ò1øI»\03Ï«h:½”J\rUŠO¬‹õ\ìUhza¨!ˆ0A¨ž–\ë\ÃUP®¥%\Ï*a•\ïÐ¹-‰z‡F\íµ+\Õ&H\æ$€\ÄSô}*……\åT%Š“­Sh-M[)×½ž\ÉK\Ý>ž¸Â’†OqAˆU»Fð\É\Ô9lNTÅ¢õG%œ$\"\ã\é\Z\ÄÀ!«½,óž‘¼‘i\Íg¥\ÃX˜5Z\ÕkiØ¯i	\æ\Çq:‘]ƒILR2\ÊbDLY³\ÞòU[. €¹F\Ýd\êT¹›L\Åf\Ê\Ý\Ýq‚rL‚\â[@*]£u6¡É¤e\é\á±d7\ÐB…‰@£B£•$\n+˜>\0b\Õ{U­\"\Â\Ü\n² —\ÞÍ¼5u)1 9‰˜‘¬\Ù\ì­S¹‹ª§c›\"\Å\Ì\Þóö\ä†Fž\î¹\ÃOsR}Áe]ÁJ\çrnOu#.\äGwƒ¸R\Î\æ\Æ;’Yw\r±Ü…\Çs\"{‚\Äw\'\îi6û‘h;•b\Çq\'g¹“\Ý\Ì\"\îGpw\nO¹ž»C»Y]\Òã»˜\Û}\Õ4ü\×sp\Î\åUûº£ÿ\Ä\0,\0\0\0\0\0!123 \"A40B#C$Dÿ\Ú\0\0¹gË—\Ê\ä\Êu5ÁI8\Ú\Í\årâ›‰\ë\Ès¹|ð¾z\âD\Êý0}j˜0\\Ž·z¾7\æÁø)\Å.²\áõ\Í\äËŸR\ç/ò~/\Â\È\Ô\Ù\Ê\îùÜ¸\ä\\Œ\Ü%r§\É\\¾w.\\¹¨\Ôaÿ\0G¾<H™Y|0eS\â\Æu§\ÓW\ïW\Å?>\Åù?’\ãü¾N›\ç/ócñwôõ/ý¡;>Õò¹r\åý˜_\Ø÷Ç‰*u\ÂsT\Ãøñ~:]0½ñ\Ôð\Ôó\à|_“ðP\é.WÏµ£•.\Ç\ßù0#•Ñ©\Z\Ñ\ê#\ÔG¨z†³[\ÙJ¦¸·©6\\¿¿ÿ\0\ï\ï‡Y*uÁ÷¬a¼xŸö1ü5|\Ø\äÿ\0[\r\ã—«\ç;Ž\Ö9*¿ú\\m\Ý?øù\èDr¹|®\\¹|\á-\ÔTö\\K\Ë\åEÿ\0\×\ßO¬‰“\ã\äªaúWð\áüT¿oO\Ç[\ÍøþŸ‘ý\\/Ž\\G¬¹>\Ë!\åÂ©¼\ÆD±†\à…\ï¦G§3Ñ¨gñ¤Ÿ\Æ?Ð\è\Ó=*f˜’CØ¹u/\"\ã\ÝK«&L\Ãyª˜nµ¼8_?{Ä¼Uü¿\ãú¸?\âgÍ³¾\\eS¶K*m³\Ü\Ü\ß-H\×Lõiµ#ùÇˆ‰ü“ùM~×¶p\æ=}Ôº²d\Êj†Ÿ‡	\áÿ\0÷\âzÿ\0\å‰\ïøóú¸/\âjr_\'•ò©´†G*¯\åLX‰¹*µe:¸D)k‘v–h‘\é\Èô¤zLôOHô‘\é£B4¢\Ë*^1ûip\É\n^j†—‹\ã—\ï\â:¯+·\ãù\Æ~¶\Äø§Ö§l—¶§e’\Ë±\éHT¥wI\ë~¤—¥Ó‰¢&”m•\ÍH\×\\OR#¨‘\ê!N\æ¡\Èu\æî›¼]\Õ\ÇY­	û)p\É)ùªq…\çÿ\0<JŸ½ˆ\â>,Q€\ï‰ð`<_Tº\Õ\í\íyT\ì1e@õQ\Ø\ã!É¢UZvõ&|\ÍRF¶Í‹¡\Î\'\Êú$Ši^\Ã\Ò(´ZE¬p•yR5HU&Šx©¥O	¬mJ¼Gˆ\ê)š§n\ëÇ„\â¿\îWâŸ\Æ½o\ãüTº\Õ\î?u^\ë(å†µð\éú´Ñ¤ü\Óù%»=6\Æ\È\î4-4DpG\ÉE\Í\î}žú‹\ä®%òô\Åñ%Q\ß\Ôbz„Bl…U#ÿ\0Jœaû®˜Sû5ø£\ã\ÅõÀù*xÿ\0Ð£\Å~þú\Ý\ÖQ\ä\Ãö\Ã?úBVÑŒi\ÒH¹¨l\ÔÑ­š¤…RM»–²z­O\'+&¬›¸…Br#‡±¥\Z¢4K—¸\Ö\ê\âw_Qbdú\áü‘\ë…\ï‹óV(t\ÆtÁye\×ñüJýýÈ¯\Ýe~¨v£\ZD]8“­J\ÕkSdôL…‹¡\Üwj;½­\'¾¦\ÈKRnÄ˜ø’z\ZN¡NŒ`¬X±¤±aÀ”	¦ˆI_alXŒŠUv¡\å.3½^0ý1}0~G\Ç\ãò¢b;d‡Ÿ\Ö#²\Ê<”{\rNÜzM{\ê5š\Ív=CQ¬½\È	\ã\Ód\äP¥\ê5°½¶,h\n´IGK§R\Å\Îˆ³þq(yñ\ÅN0¼c:\á<ŒÀö(˜Ž}\Ì\Är†G’—mg¨ÇºBL\Ò\ÏNLô\Ù\éšm/N#‚4ØŠFÈµ\ÝG¥B:\å£ï°‘¤”J\ÔnN:Jr¶Q•²Œ­,=Mq¥û\î“\ëƒ1¼a<†\ÈR1\å¶XŽ\Ë(òS\íéŽ˜ÕŠ=\Ð\åv\é¡6Y›±uk‹•s{\Ë\r1KØ„%“$Šô\î5¥\Æ[L‹\Úÿ\0\ZU4º/U|Š]0|\ãŒ/s\æE#ýŽ\Ë%\ÉX“´…\Ú:ZJÆ”% LvµY]®\ÄlŠTõL^Åš³d\Ñ^-š7ŒµY\Å\Ù\ág¦®;ÀüXN\Ø\îp½Œ?\ì\"—8Ÿ\è\ÄvY.D+\âK„\Å-ýBu{‹exù±‘_7²L•\â¨F\Ð½\ë\Ú\Ê\ë\ãQ| î¥º[«üSº_Wÿ\0ŽÉŽ\ç\rØ£ûH¥\ÛÇ¿!‹œ¬\â¢Þª¹Á\îŠnÄ¤Z\é¦nÔ™o—V˜þSH°²Y¯\èeEu^$6b A”\ÙËŽ\í‡\å¿p¥\ßÇ¿Gv\Èò¹Ÿ7Û¶Å‘ñG¨z§¨zŒ\Ö\Íl\ÔÏ»Ø•ŠJ\Í\ÎÇ®\È\Î\âdsB÷²F%\ß\éò¶|K\î„õR\Ãy±½¨r¸§û\Å>øŽ¾üNO…\ÏúœF³U\Ù-i/Wˆ\ÜD\Ïôô”\ãqSD©#Mˆ‘W \Å\îdŒG\æ<1ö|ýPž™a¼\Ø\Þôyý\âLG_~\'\'—ú{šM­\'\Íþ7ºÝ–H\Ói¶NHùR•¢®$Ù¡Ÿ8›5¼†jh…r2‹4\æò™Uü¦@h‘!o\Ì¯<oj\\Ã¯ÿ\0¼‡“\×ß‰/qe%º“F©\Z›r\æ-[Y–V\×G6@Š±\ÎU ©F–\"q*8²/\ç‰\r•†\Ó4¶G\\JU˜¥q\çP©\Ík²”·\Ôø*º*bù‡j}%ûÈ’¿O~\'¯\Û\á\éò\È)^~Yv‚Zv9YFZ(<\ßøPJ:,Tÿ\0¬cJª4ú%*w«N’´\ìj¹ª$gc¸¥q\åP“Ù³k\Ü]j”Å´\ï¦ZýJQ\íK\ÇS÷¼•ú?~\'ª\ÉŸ»\"\Å]¥>\Ð\Z¸þ2\Ø\Øs¾vg\Ö:ž›–’>F\ã»(SÒ©\ÆÊ¤Š«\ãb2HX‘§F³8o*¨œl\ÜwŸh¿…¾2\Þp&OŒ4ö]\èø\êþ\ìx^J\Ý¿\ÕC\ìùõ)ž­2£Rr±±¨\Ô\\\Ô&\ÍL¼–T¡¦*&ƒ\Ó\Z(\Ãzp#±¥\Ú*ùi\ÊT\Ä\ãZ)_6‰ñW¶¯•V)½E²ž\ç1§´¿\ÝÛ\î¯O~#®_S\äÜ»7$B\å\îYeõ÷*f\è\\á£ª¤E”ˆ\ÇS‚Ñ¸\ÑVRƒ‹[ž’‘\ZRŠ\ÓVœ\ã»É’+v|É¡l\Û)÷¾\Ì]W(\Ãø±?³z¾¿Q\å<·vKˆ,“ÿ\0(ŠÚµ£½\îŒ*ø\ÄYT)qK´¸YJÖ«\Ó#ª$&riLž\Ë÷“\ËdŠ¿\Ã\â9GŒ;ÿ\0–+\Í¯´ú?v—¦½´)d²\Ü}a\Ê\ÔnÛˆˆ;,V\Ä,Y\"1e9oIeö{9H\×|´š\Ó4û$V\ëRò~›d¨TŽtö_L_´¬°\Þ,gxu|Ï«,\íì—©8Ô…\à<¥’\ÒZ$”lúÃµ\Î[\Äe¥Ô›œˆ«º]™9(\È\×e\\Tî¤ª11re³»Õˆ{F•Ö¨SO½t•Dˆ¬¬G¿¬/\Ì:Ë™õ\ÊR¡l’!I³þºjR©>~‡\ÆZ\Ú?\ÌyR\É]·h:Ž­;=#œ:—–q‰µ*zŠwŠ–H‹/›Uw#ò%Gý\ÕÞ¤V\Û\íqmÙ„ñcŠ|H—ò8¶ª-Ó¦£N¦‰Q«­BZ”•\ÕejŒ{OcR5\Z\ÍLõ$k‘ªF©\î\Ý7(Ó’!\éõ|JvHŠ¹b‘b\Äö„G\Ù&7“È­5*?ƒØŒu	YF\"ˆ\Æ\"\\\àúcºS\ë#\ém7?Ž¿,54($¡\Ä;\Öcù\Å&­e”U\Í;¥¼9DüVÜ¢þ1â¢»\Ý™\n·Pš#$òª-šžw$óúœ~U6\'¼¬‹n\É;D|¬°qþ\Z]d}>cU\Åz’f¦z±?‘*±q´·m-µ‰‹±O²\ïr¡øú\åAü¢I~š©\ÍR!V\Ä+Ü¨\îž\ä$&&\\¸\Éet\Å©W©¤§ñ\\E¬\ïb=–\Ã\ç\n\Ìw‚Yðº¸\êO–\ÞP†¡\Â\ÄUŠl\ßRT\ä(N#”½7\ÉsqF\äaa$iŠRŒ“)»Tˆ\ÆE‘dY{š :,œeJJ[ÀB\ÊLyGh\ÍüjT3|Ÿ-’¹\â_R—\Ëc?Z‡Iñ	¶\Ò\'J\ä¢\â\ÊMÙ·”­l¾ŸSøô\ÏJ¥Lô)•3LK\"Æ‘E\ÉÕ©®M\åNZ£õcHµ¹šFUŽ£O\Íd‹’ce|F™\á¥\ë¼n#Z?\èû©\ÌÈ²\å¬3\n÷\Å\Æôpþ9ñOº\Ó&¬‹Œd­ Q”\ã\ÔgñfÆ´\ÈC\ãÙ¾[\"´ö“\Ï\r!qb\ÂDEœ‹XY¶6b*úp{˜7£	QüJ|Ä¾\äù–ñ¾\Ð\â\â0\Ï\ç[zXn’\â\Þ\Ò×´S8\éšø\êe:\î$\'Ne]ª\åþK2\Ï+F\ÆÅ–XŠ\ÖR~\Ê.\Õ!Â‰b(BÍŠù¶6JEyz“Óµ\ZÒ¹rŸ÷\Ëú} Ï¤\È;KÔ½</IqómjIï±©)ÖŽ\ã\Ï\ëüûn_-‰2_9I\î%’æŒ®²YEfòlr%\"¬È¢¬…\\<–_k±oŒQOxð\'f´\Îi;^\ê=ª¥x\Ôô\ÅRjNrŒ®\Ü}MT\Ù^µ½AŸ\ç=³\Ø\Ø\Ä\ÊÐŸÆ€£•²\ÂÕ±	dˆ¡”‰Lr‡!²S\ÊRBWq[Ë•\Ê\í\ÂKô³E>Hü£\Ì;Œ£¼JqL¬·ô\ÚTik5R¢çˆ‹,Ë£Nõw˜Ä¾%‹\ZQbÅ²f)üñ\å‘Wtq\"ž¢\"\ê$J¹*¨uMm\çQ\å’ù;e.\"ùTD~B-¼K(ügZ¡Jö§W\ãµY4\åRS#U¢\êN1\ÔZõ‰\È|\å‹ö\\¿³ä©¼¸\Êû>rE7·«#Õ™ªLF“I¤°\ÑSš’Û„G\ËzŠœ5¼{\ÒÙ¾½a™%ò¶ö„«gJ^I+zŸ\Zü\ç\èM#RG*®\Ó\Êÿ\0f\Æ\Æ\ÙlbVó\ìòlY}”óBBE‹d\É\ìI]ÂŽI]ýµr²´¡\Ý/‹#¸¹C³\à„=j8:Ž-\Ç\Óry¤\äF6_\ê¤SŽ\äü‡\××¶Å²u i©§\Ãº˜²Bö666r\\©P¢·\\•;R\ÞC\íMZ†ö|¢9M\åøþ¸š?<,ýJn›ƒŒ[~œo(\é#\Û\íA³\àŠ\ïUL¸B\ã\Ý(¥+ŸCö!”\Ä!69YJªf«\åVZb\ÙG˜ó>\Õ9£\Ýp÷©\Ö	|e\ÆH¸\Ç\Ï\ã\ßýjGP©\Ê$mZžŠˆp*´GŸ„IM¼ªv³\ï%ñÊ•£®\"S5	Üób#”H;“¯’®\ÙvÄ™q\Ê\ÄÞ¦÷)²+\åW™¥ò{F$¸Ý´\'»\ìa«ÿ\0\áQN,sŠM&\Ú4\Z©\Ä\Å$¦}Ë¨³½•lM\Æó2{Ÿy!\Ù/•Wð‹,˜‡2S°\Øöˆ™\r\É\î=ŠJÊ£ø-\Æ}±óò\ã:n\Ò)m*\Ë\à›m\Ì[ùÜ‹ùK‚ŽM\éU«:Ø¹—9KŒ¾¢‹\r\Ê\ä¸qH‰½	½„r-Ž\n;¦}\Ò\íQ\ïÂ¹–PVQ/¾H\Ã\Ë]\n}§Ñ¬\ìX¶Xµò#\Ú|2NJ«U\Ôy?c\ä‡,}¾ ®’\Z\Z³C%;\Zœœ>“mÇŒ’\ÏöcØ¢¬K\å$þOˆ«\æ5\\“¿±•\èÃ´½\Ö4˜\Õf.\Ò,Sv¥^z\å“¹tžH—Zs±5bHu#Sr,ˆ»º®\Òb•#ˆ¢Š\\\Èbø\Â;Õ’%¹Jù/o\ãeòz¹ÜŒ\àk¬\Ôcyg\Ã*J\Ô~³]²y­\ã1qôú­š›‰üŠƒ›–WÊŸÄ©\Ë\â+d·Ø»e‰H£\Ë#[\Êb>¡¼¦Ï¿v\Û»\Ö\ã$&+–4ø\Ùc*»‘Å”…Àó¦I	möòk\ÙbnóG\Ò-q$‡P”„®/Œ_[–\Ù;\Ê÷w·µ:\Õz¼esXª³\×x«	R>òP’*G\ã·\Ø\Èp4DdH\Ê\éGis.¾øò¹ˆ\ì‰\Î\âW4#\å{»\é\"E\ï-ª>\Ïú\"RwUx~úù}*¢Ù(ò1ÿ\01\â#\Ý=\×ô-Å¸Ú‰ò£b\ç•\Ü\"I‘Ü–ù5¥\Õÿ\0\Ó+Ñ«\Õû\ëõ	\Óq%»’)±\ä»\\±\ìpqòö÷\ÞÆ¢%\ì(m±bR±\ËQÝŸtû.ñ\ëT•´_kûVHG\ã\åx\Õ\âY\É{+c\ÉòöYp\Ö\éŸ\ë/±|§>\Õ:D¨}{^T‘´M\ÙU©¿\"V#ñŠ{Ë²*ù#\Ì\Õ\×0ú¾\ëÞÆ¿ú\ÖDó’¼3ž\æ”4²”Q.¶\ÊHƒþ†}”ö9•QqWŸzÛµ$š\"®T{D~R”·/—±Y˜Š}þ¿§+bkô©\ÆT\Ý\ã%¾S\ä|©\Ç\É\nfÌ”l\'u5º\áŸd¶(\ïV_/ª½Ö»K\Ñ;:q*\ÎÊ§\Ê?\Z\\«\â¯T÷/yv\Éf½˜w¦«Wel¬S\ÚU\"X±<žS\å\î\ìX³B•\Í:[\Þ+†2š¸þS‡\Æ/y\í\î‡\Â-¶\é\Æ\îoB‡\Êu|ŸI9%\ÌóW¢æ„¾U9©\äúö¬\á\Ì_\Ç·Q¹¡–9‹C±S6T\í\ì”E\"[\á\åh\ÓØ›»}\Ç\ïnùC\ã\Z²(-\ç\ä!\Û)‡Ä·„{A\Ø\åVòf½È ï‡­b\å\ÍE9²i\ßIU%\ç\ÛR6f“sS¤=ˆpÇ’\Év}¢œu9½+\î‘[±\ÄF2—\'ù\\”\áQ_Ø¯b0NøJ¥óNÎ§\åN2úŸk\ZK4jf¤\ÉDd8ck¼ÿ\0¦‰QÝ¾!³«¸‰c(òùú¾\æ\Úuv|ûK4~9ÿ\0òVö\ÃxËš½G\Â\ëS›779\Z°\Èucq\í>r^î´˜ò½\ãO³\äc(’\ìöRäƒ´«\î—?Ð\Æ~µm7iUEN·º\ÏÛ¸\Ø\Ê|•œvoŸ|\Ûw>òDxÉŒ¢K‹l\Þq•\â/\èG\â¿^¿³A qMT‚Ó”IòóB&2Ÿb\Ï\íä½²\æŸ\Î<£\ìc\æW\ãÿ\02\ì\"Ÿ\"\Ï\ï\ë4~\'\Ã[Úˆõ«\×(ñSŸÿ\Ä\0#\0\0\0\0\0\0\0\0\0\0 01!@A2Pÿ\Ú\0?\ÙJô±½/]ŒES8œN\"ø}/~Ì¿}6Yg\"\Æ\'\Ðð\Ç\èü\Â¾‡Š\Åµ—«\Ã?\Ì!û\Â\Ù÷ÞŒü?0‡\ïG‡\ÛÅœiù”?xZ1\æ2¡ù/K\Ö1(¢‡\Çd?x[=kh­*\ÉFµCºY{%{V$‡¢%…³\ËÅ–^Q\È[\Ï-Å³\Ú\Ë\Ê(X³‘xdõ\ÅÜ„Š‘\Ï|õ\ÅÜˆ¢Š\Ã\Ì_8dµ\Å\Ýò,\Äx\â%Y–²º(hZxý\áˆY¼\È\ád£ZHb\è\ä7e–C\Ä\åòNHe	\æ³,OI·\ÃýO:#\ìb\Å´\rÞ’\Ï\"ö¦QÄ¡JHm¿e\á3\Ø\Æ,\ÊDüŠ#w«\Zl7l”¬’½Ø\"NvÁ\Ó\Ö\Ç\"R\éxl¡¡{%»\Ò9²\Éu²\ÅE®:¶>†^+üMa½ù¢[\éxB“GòZù/k\Ý,¾—„^÷ª\Ìp\æ‡+\Ùi}/U¥õ¾•ôk½b»\ïWõZú¯\ë.\ä?ô,Bûñ\Ïÿ\Ä\0 \0\0\0\0\0\0\0\0\0\0 01A@!ÿ\Ú\0?\Ñ8l\ßW\Øú¾C°\ÔFmZµh\äá¨¦¦ú¾\Ç\Ô<‡a°Š\îo°\Ô=_c\êC°\Ô þ\ÃPõ}‚‡\ì6=¼Ä¦\ÃW\Õö\no\ì6=œ‚\ä¹b—\Õö\no\ì6J{9&ÿ\0\í\Å*U’f\Ð(#û.M‡a²fÕ«ÀN(È‹@\åÉ°p\Ù3ZóV­ÁMƒ†û‘4ªJ\â«mœ›t©WE*–\à¦ÁÀ\Å\Ë¤«ED\Ú(!‚›\ÜRj\å\Æ.Œ„2\Ø8GäŒŒ¶Ž ©’¼6a(ô5hÀ†\ÉMöH—z‚3[°UM\ã˜\\\×5\ÍZ\n¦\×%x3üË‘?Â«¨ !û5´˜xƒ\Ò\ÓEYG¥²\ášTš:Â´\ÛE7mÃš¸®2\í.06\Ü;-ê¨º\\¢µVƒ2Q\"\n-µ\ÃE5¶€­oXƒ\Ðe·@j\r®ª“\Ð:k¬`ôWuõ\ß\é=\ã°h÷\Ädlt;L\Ìé­3°gÿ\Ä\04\0\0\0\0\0\0! 01q2AQa\"@r‘b‚¡#PRñB±\áÿ\Ú\0\0?Ê¾§µâ´¯fE/$2‹òˆ¥\é~YW“\Â÷•\Ê\äT÷#Ý—dR{ˆG¨¿·ö”—Ñ‹]s=¯2È¥¡=o\È[\ËÄ—\å—q\ÏÌ¢IVó\Ô\×†˜;”Êƒ|\Ç(¥	\ë\î-\å\àg‘d\ÞN˜b¤ž\Ùu*Š\á\Ó\çE(OZhc\Þf\æ\ä\ç£8Y¤µG\Äj\Îf†™p\ï‘\êÉŒˆ[g93CCCIñh\ãG©\Ì\ág	ÂG‘f\Å$E°\ÆB21m–\æ\ä\Í•j‹˜\ãþ®‹C‰þ\Íqhhi=Mpi8v\ËRŠ\Ú1\ìB21M\å¹9·\î¥\ÊE\ê\Æ\Ö\ç3C„\Ñ§©®WiC\ÎÆ’¾B”R{þ#<\î2=…7–ö“–’¹cAw.\åy\é?”F¶5—RÒ¼©\î8™©\Æÿ\0eË•©ª55’“”[žž\Ã<yG¶–ö”U>SMkS„¼\"¾’©s´´\ZGYX­N)Ø¼þR¹|6(\Å\'(÷=,1mŸ\âOW\Òv¡\Â?‰¡¬¬Wœ\Ú*\Ùi\ß\"\ÞN\Åyœ£=,{\É\ç3\ãC‘ÈµÄ¹dV^\ÙVv–§ý\Òþ=K,®¥R•a\Ò^Ø´\ä9Fz;Íˆc\ÞO;Á©©®e\Û+*”*øKeZTj\Çi{”¯¬¢=/\ÈRˆR‹ò“úz\ZOR‘3ˆ¶¥DQfö;Jó\î2\ÈC#!””ŸÕªt)J\ËC¶G»›úŠÊ¢h¯T/È„‹r2zŸ”˜³õð<\Z—¥þ9\nDy!##!—©¼˜³µ)\rð|Š&Q\Z\n¨¬8~(¿3§Y\ÛTT„ŒŒ†^¦òb\ËSù!:X\Òw,E^r¹TðØ…}f¥<¢½I1gü£\\ÏŽ§¹ý5Šœ\Ñ·—©œ²C\\Á¯×¬¡\è_¦=‡°·\Ù\ÈrÐ²§I]þ‹?\Ùy{¹`Hø\Ùl½Ê¬Z\ä¬*Iõ<\"\Ù\ïð7?w8p){ŠTN#\åH‘ýOO\Î;dVTš“B<qÛž\æ\ê=\å¡t>\ÓkþL¶\î+	GD\Ñð‰iAV½\ËN\Ø-\Í\ä…8v\"\ÜB\ÚK5\à‹yk;x4^JV4•0T¹£ýgº~Ç¶?Ü«\É\"	Ð‹qm%š\ËH\âR\Ð\Ð\Ð\Ñ\Z`\ÖIa®\n¢\Å\È\È\\‚«þŠEª\È\Þky&XˆG§%ô\Ë\á¬2º6\ÃW‘tž\ç\Â\Ý\ïW®¥txY\Ü\Öhó4\Æ#Ò’}ä§ æ©¯2\ìÔ¯_«Y\ß^˜|\ÍŽòC\Ç\îÂ¥­±\\\Öp\ì|‹\ê3R”©_lÜ”Ô½-ä‡COŠlip¿\Ù\ÃþNï‚³±X§\å“g¶:\Âû\æ:\é\ÊW)\n)A\Òu\Ö\Òô¿),vLö¨HŸ·\ÛÁd\Í%D¥\ÈX\îŠ%›g:ÉŠJKiz–kb—…¸ŠûGj\"¥÷š—\n8Q¢ž¦¦¦¥™\înW\×o¤¯:Mm(,>\n§w©sBˆ¤¢\ÞW\'¤ž-™lV/+N™T\ë$j\ÑjP\ØXPÅ¾\ZF«ö^$jk&æ°¼qÜšÁ\ÜÒ§—\Ë2\íú\Íÿ\0‚¯\'±\çz-+š€x¹¶\rNf¬\ÔÕœ\Êûo$ñju8Qhš+Vú‹¾MOô¸º•%\Ë1ö©\È\âh³œS¾.fŸ\ä\Ð\àG8¢—)6ôGi§;KL;cK’Ô¿\æ8 JdˆG\ÔBšÀÅ¶H\æhˆ\ÑdhR\ÃXµ5Á¬¿ý•?x=¿B¼ùJ&“«EeR=Å‚“\ÝlO”N¥}Æµ:%TZ\"+\ã\Ö\\°h[\nÊ¾>ç·“šÜ§F9Dp!\ÃW°§rÎƒ£(vGº–yZ\à\ÒmòXkž\ÊÕ”\Ó(o¸\Ï$LC\ÞLò*Ve¦‹]•-\ÜZž\×\Ê_-½¶Ÿ™ëº\Ä\çiû^u\Ë*—“\é²\ä{Ÿ±øö›(¸Žü\Ê?\Ù{®§º²­W¡G¯c\ãw>v(”ž^²H¢\ä±\Ò,Z–\ÃyT¦Pú)Tþ\á`¨Ÿq\äz\Ü{ý;õ„\ìUK\ä\åò?Ó†\ÝOœ^\æRRE–f¦²s¡L–¥\ÞCôZ›\à‹ôl1~Å\ê?N.\áýHWþ\Èþ8i[\'\Ó/Ys9ýM\å¿\ìö/\"’ž\ìˆ}()))»\È\Ïr\àzŠvE\"jK\å\n5±y¼ž\"\Â)ôjt,X¼¼Êƒ!ò\Æ\æðR[2¨i\êµG·“\á•*\êR¢—c®k¿Ò½%b§|p¢.Š\Âš•%beý_O‰jº•HV*XGW›Õ»}O„>Y­g~E\\\Ð\å\à\Ù{Î’\ì\å\Þpo(r\àzššË‘©©©i¼5zƒO¤\ÎH½\Ê\"ˆ¶\r>óR¯Rš²…ù\Í99S–u^‡ñÍ¦M9ÿ\0ð¶\ÉÏ°§µ¥RüðÀû1Î±Ó§\Öo˜\ê=±97?l¼žJ´‹hS¦º1ä©²¢m¹}\nÃ‚\Ç\ÉþŠ@¨(Q\\\Ëðw*\Æúž%\ÙXâ‡¶+–Gý,VŸ‰CÑ³¡\Ä]\à©\äep\ÑUe%\à[J\Ù÷¶N¢xkŸZ\å9\"Œ\ÜX8¿ÁlÁD>\Ù¾ø´48K¦%¾/v.‚ú¤”¡\îW.\Õg\Ó2²\ï†\Å\çAö©Ô¨¢]ùPv¶j÷5˜”«Ø ²¬V/ó+–\Êw(m(úG“\ÆC]òµú+½†òi+—*QJ¥y¼	ÿ\0\ÈòDT\Ê\Ó?\Ý%´–\Ù)V\æžJ²\Ó\í5*”\á\ìxŸŒp\ÉN™4•\å\\iu•2«s±auz\á…Ê²¦òó‘\å\ncY(\Î\Æ\Ø\êÅ‘\î\æU”)\'\Ø\ï*tÀœ¨\È_Ix<ä§ƒ–\r2©lTY\ÙE\'*ôÀr \Ç\r2.k;¬Š\É÷É¤\ÞGÏº*²\à\Û>\Ì\Ó)	d¶m*‰Ê˜¢Ü¬©.óóŽf\ë‚\ÙÊ§<\Ç\àŽu\è&y\Êóþ\Èð¼1	‘`¡\ç*/\Ë¦²\ì\ÌðE‡\ÎT[\ä<?ÿ\Ä\0(\0\0\0\0\0\0!1AQaq‘¡ ±Á\Ñð\áñ0ÿ\Ú\0\0?!©:˜doð\Ä\Zmea”\ÍLJ¤\ÈlXôH~-,|Idð?\É\è´J\Ç\Ü\'ë˜¿e—Á‰\Çò\Óýò¾!\èez_¤n$\rµl\ró\r\Ê;\ì!\Ó\\6\Ê\'‘J;	Ð’uX0¢¸ÜºAQ3£\Èl3Ù	ñE š&c`S\è¾\ÆøJõ7\ïJû\0\ç7€ô\ÒÏ¡\Í¸¶%$™x’+<@“•n&‘2aÀbz$’Y$\èôZtðL\ËcÁ±‰e\éI$ò~MiW6¹÷‘…ŸHª»~ôltsá¡‹Æ‡\è2Tˆ¤7ÆŒ\ÞFXsG!&\Ýô{nI*\ì|\r3\ç\Ñ|h7\á¨“)™w\\—¬¢\ZbI\ÖI\"\Õ=^—bd0z%\Z§\ÄU0ý\Æ0\åúOh\ã3“biÖO\ÉÜ¹l¤”[‰”\Óq‘\Ð\Ùdö©?ˆ61°±¹hÀÄ¸\r’Nˆ!»V‰>ù1‰ ¢Ø£ø\Ñõ‡ŸTö`¼£!õFŸ*|KCö„\ì¶\"²%o\"tDNxn\àº\"…±)ºK8/Mþ¢P˜®‘n‚\ÞO.\íñ¢s\Ë\Ùýl\"P°EJ\Ñ6‡©$’I#|ÁŒch¡‹?@”}R\Ï\àq¢9_Áü:Á´»|-,[É„%CJ\ZLrÒ¾\ç%š³\Ø\ì‚\ãô\'†ø%ò\'ÿ\0B8£\Ðn2ˆi\Ï\È5g\æ\Z‹\æ?C\ØM\èÙƒM¾\ã\Úù‡d’I%\éD}¿¢zÕŒbÊ ´c\àË·ÁWz\è\Ð}±\Ï\ÐLc2­J\Ä&\ÆeBÁ‘‡†Ÿ =ƒf\Z&\ã=\çDÛ»m\È=\ß:z,²—q>òq\àù;\Ñ.Oc<£Ÿop!GFWBS\Üú!=\ÏÛ¡hL•üúO\ÚS\Í© dö9_À7\Âd\Ó[5€\Øù(Nž¹\ä\ÏÀy(tþŽŸ±dr©®\áFÇ‹\é±\Ü;\ß\'CF„\Û\àWD9\ä|s‰\è&½ô’“¥)	o¢	ý\r\æƒdc\éM¸›„ò)¢lD¼	\â\Ì\é—WyO&‡\ïõ0\ÈúE\ØfÁÁ$\Ïð#ö~C¡ZHLC\ÚÅ cW¡\Â\"šX\Ê<‘\Ì\Óh’–7U(.^¤L6ÿ\0dF©\ì˜f}‹¤‹Œn—Áfk\rîŠŽÁ\é×–\Ìi9b¢†¤\ÊG49G?dU!?Ÿ²|7Éœ”gW\Ù@\ÐÍ™iÏ©‘)ƒd†L¯“JúANóõ‹iQ%]\Ì\Èý\ÚÆ¤µÁ4nd.6”\r0†7C\ÑE	`[V@À4\n¢FˆlA’\Z6˜…w¨\\1¡	\ÆÁq?‘%‰4‘C‘9dV	9/\Ý$\Çþ‰[±]„\ß/±L¬V\Ô=%\Ö\Ê;}\n²A1——\æ˜\í–4<9\ìK\'òs§\'\î\×\Ù\Ì\ÐQý3\'‚Þ¦?#›ùCýÙ±—ÈŠGfV¬lD01ÖŽF\Èú$µ\Ä\nB\r±\Æ\Ú&’È—\Ùdn4)3¸Û»\"i’Ebl\Î\0Då–„<‘K\ï±p¬¸j<ž@\êº2(V®.bV¬`T–•°\Ê7\í,\Éeòä™³{–§\Þ2}•wlJõ£û¡tô\Ìn\Úa\äQ†\É&KÑˆ´WDúh¯€Œ¦U[—\É›¡%`´Mº2\ä÷ \ÌlT\×\"UYYµ’’dõ_D\ä\Û\Æß”.–g\ã\àl\ì\\²kö7­a\rø»RF:–V+dFÿ\0“1}ž9\È\Ò#\\\ßùŽ¾\â3-ˆ¦vx\Êc™ƒ‚\á~M7\Ô2ó›^Z\é	\ZXôJ;‹	­>‚\ÄEñžIX-´»vZ¼Š!²\Æ6`\Ù%=”\Â$„\Ì#—\r¯¦A;_‘[H\ê\ïÀ\Üv(\È\\ö*T’µF ‹¥\rkC­‡º¬„¤?$\Z\ç‘-\å{\Òö\Å\Å7ö1~J>‘ŸÈ¿&Ÿ\àûc3\ÆU.(–&“Á,\Ù\ÚM[\Z\Ãü\ÛÐ·\ïBw°k@\Ñ`´öp“7qFõI\n\Û\àÏŸ}û^f)cKBbÑ‰	\n„¬z82†3_½·IMS%p\à¤\ër\"5hC>Cüfo\n}s/#÷¹U-œ×\Æ’2¡ø\àj’fð)·,O,BA\ê4)‘‹Qc¬Dœ\ä[¢\\¨C‰\ßHxjð3Àn#i-È«\Ã08.\ßÔ…¥hZ$\'\";\Zt“\Ì!\'\í°° I\\¬£+$\Â“\ÂKDO\Û]UhfG\à\È\ÒRg\Ã*£\Ühõs#¬\çL”[‘\á-ú)„ñ#4»vJr\Ô{+b4b\Ê\Ñ8@œ \ÜI³ƒ~\Õlb‰\n„!\Zg¥É­.H´WŸ!\åHY[#s«»Le<t}*[À}\í+\Z(|ø*žF…v$3‘™\n\Ô\Øn“\ÍA‘°ªù–P\Ð\Û]\àq²\Ñ³à´‹Ø¨&\È)«ð%\ån\Ú\ÛQv\ÑtÁB Ha2F\èÈ¥¡iˆUqdgÚŒ\r<C¦\'ØŽB‰Ó ] °ŒþD\r¦,9;!¾afù\nØ™\à@ºÙªP<Ý½xbBù23«“L,•&È›\\‹y\n\Ü\îõ‰.$A€‘-w\Ñ @4‰q\"øoKL¸f\Ó}2;z»×¿®}£)-@yµhe I<\n \Ü\Ì\Ôô\Ù\r·û%4kža\î#˜\íb\àb‚©&9CjÉ‡¦IBÄŒ\Ï`dÂ„s‡$X\Ó6•)¡dÁ\êAö(3±|ðQ»±\Æo[\Ø\ÜWÈµËú\ÂüZV|\Æ#qþ3h\Ø}„:c³\Ë-“(­[&IØ¢F\ÈË•b‰Jð\Ú\ÈTd¡\ÜŸ\Æ*\à\Ü\Ã2±˜Ó¦ {D5‘\ÈÐˆ\Ñ\èÀ¸KY‚mœF]Á»³°\Ö|°ºúE°~£“qþ\n\È\ì\\\Ãp\Ä|ŽØ­¢m\nO‘ðY)2£\ÙId#p\Ïd‰‡t!¢J]‹#Ñ¡¸PÖ¢Ê¸\'v-¹‰ÀK\ÖF\Äa&–cw/’:jW‘j†´@ô61?±.H\ã›‚\ÃWF_\ê\Êör2.Ð´´¦:\í+\Z;ð“r0™‚H\Â$³K²!Ç˜9a‘…žˆ\ÆQ%À\Ö\Ë0µ”Lû\Ë\'m1ð¼Áv\Î)%hryBÀž\ËS8¤nL†•c`:U†\Ì£~¡‹cð‡§$\Â^\nµ\Ô\r2da÷nQ˜™X\Ã,š\'\ê•,„ý\Ã\Èÿ\0%«ù\r…¿`\îPþ„Œ$½\r°Ã‰F\ÈD\à¥»^vU\Ë\"7.¬k1\ä\Å8¬a¸ÎŽú{	\à±\à`Ô‡B(­rX¹\'\Â7ò¼¦G²b\æ`£”\í\n\\Þ–<\"evf^‚ä›Š0nž4p^\Æú˜{<Š\ìSCEúº^ÿ\0ˆLÁ¡¸X9p7°r˜lWbE±u¢}ª&\Ò\äiHl’é˜¼\"ÄªˆK!ð\Î\à\Òh\Ä2\à\éT¶PKŒ\Û2™y;()z¯\è­^€Ë•\Ï\r\â“p\Ý\ßnD¡ªK%†„¼\à‘_hk—|È˜5\í\r\ÄIW:Y\ë\Ê\r³³-\ÙYyß¾2¥Á \ÈeªG!®’€òL&G‰)±¥jDÁ2\Å\ËB%\ÑU%ðS±\Ú6	8Ä¶\Å-÷ Õ”‰gôMàªg\"SaC,—ƒƒ»sq\Ém\É\ì\á/„aS\ãv„4EQ@’\ÅY¯¢[=•&²žI—L\"\É\êIB\å£\ÐY9i\èjþS0i\æ\Z¿Á\è\ÈG“„:VDJw;\è|¤)a}\r¸µ\àP\Ê+“’\Îˆ¬}	(D\n¨Q?¡\ÍF\Ó\å“Å„Ö„8\àZ¤R¢Å¤¿gˆ\ê\Ï\ÕÐ€¤Šä”‰v	\nö!9ü6…r†Jþ‰™qh{¥Q+¡g\È*ð÷”bÀfl±¢\Í1ŸgI–©’=8‰³\Z6<\"`˜d°RbK°[bV\Õ\rb†o,žBN\ì/0w\'\æ\Ð\Ä\Ð\Æ\ÖT†N£)%-\Ê,“\Ê†Š\r\nhi&\Ã÷~\å\äI‡\â\",…„E\ÚŸb\"S\Øû\n£8b>ùpK\Ñ\êÈ¦Tð\ÆÈ¯0bRŒ<‚ó¸³,}ŒFj„û¢/\íQC‘F`b5y\è6e\ÓCüzMCtIž‚A™Z;<¨¢Æ©u®CÀ$8/\"Íp#W\ÐôY…\ÂM#Cöü4@º,…qxú\Æt+Œô3a)¡•¥ \Z†›\é…ö7W$¡Dò\r-µ‘M‘M’‡’³=(6>°\âM™,J£aM´\è‡?\\¦™µ¢\ÆbL³0\Z%eU\á\å\n\rWÒ©¶\ìmv`\\·%ŸQc\ÎK’\Þ~tr#\ì\ÂB*x—\Í\Ö\Ä*±Š\È\è„Zñ\Ùx*9\å°\×\à¤\Ö\ìIÀ\áX”S‰ô:Q½\å™\0I\×(d-5›<_%Áüª7&f†«$RD\äa;‹\'y/\Â\ÃzOd‚Pj‰r4”™ˆ.r±b™ðû%~H‡ø)!%¨·É§šò$¿>BÔ‰#gñ\"\Ï&°HTBŒ Cð2ªÐ˜\r\á\àih\Ñ\Ø\çÿ\01:]WGrø\Ñ>hÛ¼\Ê|‰F»\è¶i¯‚/&BBCH$³3LºD\ì”\àj\Ðø•1\äé¥¥µÁÅ’ÿ\0\nl¾\ß\Ö­Æ›p„‰\Ä\äGô­²\Ë^‰(l\åùÕ‰o±”\Ï\áF\Ý”\Û1‰›Bv\íB\Îf\ág0ò7¦$‰œŒ!v\Äj\ÄR$–\Èk‘¸vJbBH_\Ëð\Ó[á’œò,%ˆ§›\Él\\\\1§O.\Òœ±X›U¤\Z‘vc\Ø‡1‘Žƒr\Æ\ÊU\Þ\â\âO24}Ã±\"©WŠ~JEù\Çx*\\¨˜ \Ú÷`vü\n K8S‰üE°ƒÀ§ ”\í%û_pùo“\ÊA¶\Ä&!¡\æT²‹\n\Ñ\ZQ\ÃTý™G£\Ã0l\",ó\å#\Ñ`©\Èürâœ§+ý£1\æ…\Ó\ä\"»!]\Ç5yZÒ®‡­I—M®F\í\å \ÉLp –Yý“\å\å”Sþ¡žnX\í\æ7K¦d*b\í\"_~±‡ÆƒUô9ŠºH®\äD¬/b7^Ë„‹\ÉJ{\ÒðbÖ›9!ž\Ò\î™H’\äM³|ÿ\0]\0¦\Èþ”\'Ý²FgÙ–>)`.\åb¹#\r3K\Èn\Ú}}C!^\é–eŒ?\0\Ãb+ø\Z\Ë4‰\îq\ä\ÒÛ¶Ù…6òÆ¶Uð:-Õ„¿\àzCØ²tNÝ· YLi›,‹ø\nŽð\"¨œJ&6e}\r½\èb\Ì*yeòDôg#,#‡±!v}‰{‚Š0\îÄ¯\è \Ç\Æ-¿€|\çþCÿ\0k‘Ž™x-op¥ IaŽ3À‘#TF\n‹C\ÔP\îKò-p\æ\ìWHŒ\r¤\åx&\Òù3vU\Éy¼ xö\Ì{/\ÌA[ªŠ-]\ïÀ•Ê¾K\ë5Ë…1ú­,…¹\àÀ¹Š;1\0ù<Aü9‰\î4\í7Å¡˜X’±\Ë\Z&ZØ‹x)r_%-\ç\Ñ?ú\'ƒ\Ñ\ìü¸#ƒ4·è¸™\ìJú1¦oat®\Ç\"t,ŒbP¢Ð™:¤Ž\àv\ÒòGb%Zt6L\ïˆqÁ\0ÿ\0bû§eoŸ&\ç‰\ÑH–FN\Ë$˜\Ó2)A¿À ±zÜ•xdq>ñn{2Tð9\éú\r\ãø#eŸX\nV=\í§g\Ùð!ý \Ü\"\×6.F\Ê[>E50\ç\Ì$\Ù\ä´$™4\Ð*\ÑB	\n©\èÁ`\Üc!\ÊT”8\ÈJ\Ñ n	½\Ì\ZT„Ï†*˜Z\Þy´\Ã3ôL¼eÔ›Tå”ÍŠ.\é©\ÌMŒ!\Ý\É\ãB<h`’QO+&-š~6Ú’bt‹E¦<²0ÿ\0m\\žõy2\äP˜\á.\Æo(nNr#ú(œ¤>H†>‡FpT5Zv±a9«ÀÇ„&–\ãqlXNÐ·\ÇWò5ò(”·y’\\|?BO¾IŽ\êL%\è‚F€-Ý†öÄ„(\àI%o\Ê\"NO=ˆW\ÊD\î\Ù=™ôH\Ëd\È:\rÀÎ‘‘\Z’	\Ò&Fx¬Ž\ã\ÑcØ•\Ëø\\|“¹#	³	R7x?FNbv‡¶:3\Z±\Â\Ã\Öb0…£Ù®R>j†\å\ØC\â65¥ä•§wo£#±åƒ\ÂTŠ\Ã\ä\\\'˜}°\'¬þƒRü„–	Ÿ\r°\Ö\r\î#ˆ£¥É¶T\Ãq¤ð„ct„0øt¢.X¶†Sa\Ä\ÐH¤‚\Í\à‘CMÞ ³\Í\Ä\á\rO<’+aE::À»/\ç«bmšDËHMôJ\án\ÎC·[u±|¢’S3² È­Ö”Á-\È\èj›K;¥\n\äO¯\àÞ˜\Ú\Èy¬¤\Ù@¥¤rY(‚¼\n\Ü:\ËgÈ±¥8ÿ\0\ÊOn\Ò\ë˜!(iO¡\à2D\ãüˆ›\Æm\Ñ%&|\å\nx¯Hæ–¸Ã´9\Çô†%w\ÙÀ„‹ÀHSd÷\Ñ\àr%™|´\è{|Ÿ\ì”™/ ˆPØ¨½\\›V4\ÈbI	++\ào\á\è“h“tp28*?\"!b¥\n…L\Æ>ˆO\ê«!1œ²·²bJLQ£&¡\\\"¬»o÷¢wd\Í\ÆÇª\Ë{‰\É{`P6‡	\ì\È\ì\ÍO±³”*DA«o”n-÷\Òôw±\ÐP\Ô_’›„\à6\Ò \Ä2i™<“vGh­\ßÁ\à\Ï/¢?ð[/²8E¥Àƒ~\Ç\\‰Y}\Ål\ÈX^F\n$ ‡$UH\ÉJ¯Ÿ\Ú\"WûH€b„ðÝ‘ûAB\Ö[‘š„D³R›o\ËRLv[µ§\0–Ó±‹o¢É’\éÒ¢>Q$×¡(Ã•ÉºlXá“¨a\é%$\Ì{5´Ž˜h¦8ln“`÷º°´“¤OD™\Ñ\à\È{\"f†F\Ò]›ÁxF\âÁ\"V:CJZ\"JiB ¥û#[|œÁ/\0¨\Ö;²9\\ ‘\äY>$uÍ—•o\"\É\r\çì‰“]‘\ì‘Ý¥\ä¥v¢hB?¶CN y¿f½¸?¬7Hie¾D­¼4!]`-Ò¹¿‚:\Ô\à`\ÌÝ2M\ÄnlöÆ±¸EÁÁ¤²\ËòV\ì[\Â\'k0c¡‡\ÛÒ†\Í\Ì8\Z\æ\Z‰\"†\àD\Å\ÈA&¢]‰\Æð\ÖÚ–\Ç3ö<3\èHI\\\äª{\ÐG\äKš\Øþ€ÿ\0z\"4\ÚMµ\Û\"Ç°•¶ü\rÅ¹h\\$J_ÀkR\ä\åO’6–RþxtœA\í\Ï\ÉJ\Íòj\ÞÅ»aX\áýFwl6\Ås¢¬	°\\ñ¦-=2zo«®PLp \ßa­lö5øÎ–¡\Ä!*(]\Ä\î„MË—¢´\Ð\ÕRMˆ]À×ƒ¶–\"\å\Ã&D‹ñ!¥\ÖZƒ)?\èg\Ú?2\ÂJ÷’mô‹¹\\9 ½\ÛbS5x:\ÜØ„vL¼¤\Äì—ˆü>D4ƒ¦^	\ì|³´_&%cz\Ä>qÞŠ\Ð\ÓYc´\Ân\ÇI\Þ[±:AM>†\Z©cXŽ\Z7<\é\Â:·	#\ä\ËQù\r1ð),¿Éº^\ä\í\Ý~\Ê	¬\Ø\Ó/\Âv#.\ÆGÄ¡¥±yQ„÷¢)ˆ¿¡i{+/P!\å°øZŒF\\‰\Øÿ\0É²ø\Ñ\ê¶r\')>K!·Q±\çY{	\ë3q¼C´Ë¡ÂK\Ê\ÓvF•&\á&\î![Á[#ŽŽ„!mO#-)÷¸®\Ñ\Ä_0$\Ë\Ð\íK\ä¬Fù~Ä‘Ô¸„D’\rÐ™d£R•=\Ú.\èvÅ‘n4D\ÞF´\å!÷sa•˜›“À0†Y¨“·b¹™òAfD‚”\àôHò<ˆ!-ˆR^¡›Á‰­\Ì*F\Ö&\Õ­°™Œ,	)‘/})Àj\r\ã(\Ñ\Ûô8\Z\ÆËœÂžIœ.‡\ïÀ\Ó\åÿ\0FX2¦ü	\â`W”[Ä“E…’x\àä¼‡xz	m\ÐRº?ü”’þKnI‘pÿ\0ùƒjFú$–Y\"\\™8Ùˆ\ÃÀM\r9PbK&c¸\Ä\ZQ\à|+Ñ‹0\Ì^Ete	¥¬d¾%WbŒ\Ë\è\ß\Ét)1õf`!¸™² B_d]°ÿ\0ff¾…\Ý\Òú%¡Ÿ¡	EÑ‡“ø–›\Ù\'¬MûdÏš£‰G7\ì‚m\Ñ\à\n$S‰\ä\å\àÀ¾„\ÅNˆ¹\Ò?F\É\ìŠ\Ý\nª\Ë\èn\Ëðt#vvÑ±€\ÌòŸFC62$@n¡i–•’\ädJB\Ø\Ê-“!\Ñ6N\è\Í\Í\ÑX}.~Y$’„Å‘(\ê‰.ü†Á\É#Aÿ\0eiJ\ì”mß£&“\è¦H­¾Œ’û\ç„M¹¸ó	\Ì,&J#€—‘|Ø¾$³\ÙJVXDE8¢i‹øf~M…‘2Cõ‘\\\áh0°\Ã/PN|\Þ$ú,T£\r-RkF‡ü®²HÏ¸DPZIá‹½d\ÄŸñ•Ä‡M¹§µY´3\å\\¬ô…\áH—!!i|¬¢K¡î›‹¢YUØ¸ù<÷\èN›{\Úò/\àYö`§„PX\ÑH`\ÐdŠ\"u°C`¹}°2hB3\á#yQòg	 DteEÁGa,ÍµH»0$$r}d[\ÓY\èô$Ûº%mI`\ß(¼`wjD­F8{\r\å\èSòKBS—/\ÉIHf\Ün0\ÚH\'1’\é›:°\Ù5Ž\ÙwŒÊ”\Çs6/\å{?\áµpôB(Î™4ò\Ñ\â¤O:,dHj,n\Òz˜¥´“‡:\ÉlÈ‘\ß%þa${·\"È”[ô20Aµ,˜\ÚË“\Ý…«vÆ¯t„\Ù\Û$\ë­a\ÑR\é)xD’žÅƒ+Œ?\r!K2F\ÈþD¼²pƒ_rmðÅŸbÇ¡gØ¬L_€¡Ÿ\á#\Ò\Ð!\î±!s£N3&\ËFÐ‚òC2\ÐC\Ô5^ù#ð¡	\Îü¨$°—\Ë3!p\ÆÍ\Ý\Õp)~…ª\\ŠŠW\É^¬‘û²*	vtÇ˜ZnM9N e\Ø$A\ì#ù$ó°XûBþ\Åý=i‘À\êIj™¹\ê\Çp£I’!-+­i¶“XQ	\Ôxr,¤8%AòDµ\àZ©	4Za—pE·|\r6k;	J\Ø&qS\å‚\ã,¯ÑŽe*¶\ßû_±£ˆ²ÁxqnP¤!±dØºf\Ï\Â}‹ø\"¦W\ÉÖ«ïº’\Ê@ÞzYrMˆ¥#™\È*Éˆ\ÜmM„Ó´\n¤\Ë}²‰8ý\çJHzù01\ÊK,H!—’jO‘+iU\É,ñ¹8ž¢g\Z¾Š?ˆ+ž\×\ìÁ¸É¿afÿ\0BÃœ¨\Ù\äÁeyf\Ãþ÷EÎ•°¨¸t$³Z\å”E¡˜4\Ì,@¶\ÇqWd‡P\Ð\çø\"V·\Ô>Sù\0c›?rÄ¡WfZ²\'‰Z\íÁ÷–5µ\nD³\ålb\áp¶1³¤ð\æ™½„•\î	\Ü\Êh\Ìß‘¡K\Ú\ï‘ |\î$7†\Ï\Â*\älöm\éû6OBÀ„HøQ3@F‰ø\Üaa\èÁ“F_#]¡«Éš\Â\ÊÚ¬‹v1hÈ”>\r”	p\Îz\Ø\Õ@ýKðC	`\È\Æ9	¸˜\ã’H›±\ç…(›KvF¼PŽFqCÊŽQ3Ð–@‰*\ÞIdf›[\ÝFžwoCp²¼±cÐ³\íýòd¿ÛŠ„4+\á¦M\ÈZ`ŽJòWq\àj\Ì\rf‡¡!¼…<”A-¬ŽD©\çb0gbeÈŠM\ä€šaR\ç\nXò\Ù\È\ÍÈ‘,stGºüÄP‘H\í’±W@v\Û\æÇƒ4×²Ñ‹HM¼˜\é¯\èÀø%Hš·R\ìþŽ}1dlö\Ãþ˜‘\î„ö\Ñ\Ý\ÈI44ÝP\Ä\às‡¡(›$lv…–½\Ép Y†@«´3Ž&\Éð°…¾\æ%<ôŒ\èØ‘\'Š“dO&-xFdÆ´…‰ò¨YžX‹s¥ˆ¡p\ã\èªvw±O±nE\na\'\Ú=ù(\ÔòÅ»­ˆE‰X‡Ø‘\ËM\r\ÈW¥ŸÀ{|ˆ3!t¼ˆjK\Ün²\r^\Í²%Z1™b\Ö\ÊP‰Õµ°o£`¿ðg\Ã\í’Û°“!¾µ(\n†v®([öO±LzÏ¡;\Ø_Ñ³Ð±¤ä›©½-†HÆ¬Hm‚R³ôhÇ–\"I7$F\ä>\Ï\èyvbÑ˜•ª\Ô~‘\èš1\é¹J_\"	¿z&þ²3°±>%–·Y·Å““[Ÿ{\ã‘\0­\r¯\ÐÐ°¯<\Ò7ö!:ø?\ßz-/,»›4hCE&\áŸBQ\Ä,\Ú#[\Ð\èÁ‘„€e7‘‰jò1‹¿\Èb(V\Zþ2öS˜Ý‘¨²Ÿ¨1|AoÉ‚\äLw=)CP\å`lö,z?\à³\ìÚ¸6oÎ‹KOø`Áy bB–U	S“•³?f\ìØ¢%ñ\Òô\ÏF\ÈÅ£?\ÆÍŒ\ÃF=2y2>™ü°ýj`ü!\çð_õ\Òfò34aÿ\0n,³³Ø±\è{øF\Ï\"ý\í,\Ùy7\ç\è\Øl<é¾«\ê,\ÛCƒÿ\Ú\0\0\0\0\0\0ø\á€ºš\Î\Ó~\ï\ZŸÐ†ÓŠ¾ßŽ\ÇÆƒ\Âð¯ž\ç\è$IOb¤…ùHžXl\nE»\Ü\åk~òñ›\Öô„\\\ÞM¯Ú‹‰$\â§n¢\Ü}¿t\Þ\é(„¡\r&Šˆó[–²ƒ\ê\Ó~\Ó{\ÌþRÀ/R\Ý\ï‚z\0Ÿ\ÏÝ¯ÖŒ„¦.²N\ë”$X¸AúV÷5%F‰—ŠÀ\Â1ZH%<:ã‡¶Ë˜;\0\ÊÎ»0¦,Rô}Á‡7§\Ì…dI¹ð¼\"(¸S\ç-]·‚ÝŠ\n¥\0­À¬P¸\Ö\Â\åŠQ\ÍNû\ì7\Ì/7\çNƒŠ˜\"~[u¡)ú\0<(\à”ü\n?O:Û\ì\ÂiJç±®úÉƒ©L`|¢\ë3˜•l#\Í\äO=óHU3œ¾(¤’\î§S5\Êü)%,°/¦«ül5–\áCþe˜6+½Ž\ïzf²p\"7”±]¥t©’o/ ‘GG6²õ\r\0\àO´/@Ï¡0m%\çi	5B\Ï\Ó`‚\í\Ï!`z™†L-ug\ï¤Jd”S\Öo?˜ÖœAðùñO¯	\Ûå¬\åÈ²kž4sWe\á\ä]ñ]Ü©Àw®\í¯\ë\Þ\\\n\ZT°w\Óxò\Ê\È\ÙÀ\Æô¥ø!Y\Æ\âÕ”JR*‚\Öû\Åw«´\Óþv4‡\Ô/ÿ\0”\×+r—\åþ6ù\Ôh´\\ùókõûB]\ÂV@S^\í´$¿Zsv\r›j.i&\ìX@¯Ó\ÉË¯tn|î¦¤u¯‘£„ñb.¹`ƒó\àS˜¿}‹\á)#pIR…‘Á­ÂŒV\êxñ±\åq	Aeh\ÅM}ÄL!õ¹±¹JC\ïpŽ[]\íN»\çpü‚~ð“\Ý_<|\Ê<\Zú\ÔOˆ¬s…,><F·Á\î\å\0àµ¼Ž\ì\ËZ1Ì“¢g \Ð\ìŠ3ù¯L\Î\Ïq\é‚BÚŽ\Û\á\"2\Ï\Ï$gñp\Í˜Ž\îð\ß]‡\Ë\Ì\r¹ý\Ä\Ï\Ój\Ãú\å\Ð2\í5ü†\Ô\Ì,+cL\ß#±ŸUJH¨þ>\Ê50³o\É-ºšo\âznŸ4ð\Ê=Ç°x0þøƒ?ƒ‰Àž~\'a‡\çƒwø €?ÿ\Ä\0\0\0\0\0\0\0\0\01! Aa0Qÿ\Ú\0?ùÞ½ˆ[Ÿ`<>]`_\ìr{ƒ$É‡\Ö\×ò…mm8Ý¹ø\ÞFS\Äv9\É2\à[--d\ÚI½870\ê\ß\Ç\Ë\Ü`ý‹V¢g-¥×™5h´^\çþ8Œn09n&p-²n÷\ZµjÕ«V®[\Ãr\Å\Ä\Ï\Ôw9\îZÂœ	þNÿ\0s¿¯m–ö\Ä\é\Û\Ü\Ï\Æ;œ÷-\ÆF%ü\ÚZ\Õ\Ëv\æC|‚\êLLÄ‘o\Ëñ‰\â{–¢g\0/q¬5j\æ\×\ìC…/²§Ra;‡v]}Œ-0>lDE¹7i¼†­Iäš»º\'¿G\à \ÖF\á„\Ëqòò\êqÿ\0+»³\ìp\Õ\ìß–ð\ÛPÆ˜Ÿ¶Ô³¬\Ô‚[pÝƒOøb\Ó&·ƒ2¤n=\Â\È1n~N&-{»±˜\Â[òÕ«Pö\Öa\êþGZ$·¨\È5—‡ƒ—c1«S\È\å¬\È4K½zö\Ö\ä·\ä\Ã\É·w#Ï£òfò­D<µoòÜ \Ê^Zr\×\äøN\Ì¥\älö\×\Ù.r\àf	ƒ\é\"öòË¨öñ“¶–µ2µ3Ar\Ü\\\ÜDc\Ü$\à˜‹\Í\Ü§¢,{\Ñr·X¹»¶¢O.EÙ•\"dµý½eCt†–®\Þ6\ä°’uƒ\Ì<|»>L\Úú[³\Ùk±\í\Ët~“dtC\Ó\0I\ÛZ\"f_–\ëú[‚Ô·Œ.ÁCe¯f|Ý«\Û\ËS\Ð\Ü\ÅòÁ¼/$·–\ÛÛ‰Gö\ä|¶\íB!ý]^¦\ßÀ,\ïörýÀg\Êôá¢‹°Öˆ]°‚A»¦®¯<½vgÈ¼²\ÆÃ¸vLvc6¥2üð´B!·~_–\Ü:J¸0\Ã\Þ-\à\Ç\à\Çp¶ü–:<œœžZ	w\åÉ—„I#G!ó³¶N\Î57\äÿ\0€Ã©njðÉ…–þ?r«Œ=·¼±g$rÝ¼?/c\àyƒ\'aŒ™fñ\Ëó\'.V£‘\ì÷/¸\"~DK’e?,s\à\äO~H–Vþ	ŽË¸˜u\'\Ë\ÊÞ¢{ò`\ìÁð[ø\'˜~\Ë{½Á“ß’\ÜOÁ\æ\\\Éð\à\äcIn\ê{ðä˜˜žeÁÜœ¸9‡.®¯ÿ\Ä\0\0\0\0\0\0\0\0\0\01! A0Qaqÿ\Ú\0?ùKE¨5v\Ô<ø\Éq€\êy~¢\Ëw“«vð\Ò\Ó\0%¯\æB\ïF<œ\à·q´\á¨-A„µy~ü\Â<œ#\àö\ïºþG–£OÀ<¼8‚]Fcv\å·nÝ¼n\Ù>Â•!~\Í\ÔO\Ä\Ý\à9ðn\ã­Æž[µiµŽ\çAhƒhÃ²Õ¢ò\ì\ÃñŽî‘—\ä\Ý\Ä]Zz][ž˜\ÛY<¹Žmö\í\ÂÃ¾t_¦:.\çÁºˆn­–ü\ÈM\Ä\Ãmø|†µx!·o\Ó‰x\Ç>-\ÔE\ÔG\'\àat\Ü\ãXb\íjm†G\çÁÀDö=Á“vñ9^[jtÆ­Zµ½\áB\áŽ|[¸‰m‘n‘Ÿ%m²»¼ƒxºK‘\Ïeú‹u0R\'\Æ\×ö&üµ3i¯/ók\Ø\Ù$¨û™Ž.£\â\Ü0N\í®$ö;vÜ¶\Æ@Žm½+‘©tË¿e¦\ç¨ø7Q.­\îÕ­ODã®§§XoP¹-\Ì\Ç\Ì\în¢\âp\ÝDdº·\í«W3´¶cY{1öH[šr\ÝGn\'\'b-Úµ\"Ú´\È\ÜCw0ŽWeü\ï\È;q1¡†òe6œ#\Æñ´‘\Îð`\Ëh1¹\Äv\ât¼„ˆ1†\0Z\ßój\Éc\ÄøÛ#X:Ë¼“óòƒxaöa&\éÝ°ˆ·ñ\ì6\Úa§[˜-–¤ \×~u~Ã¶x\Í;$¬\ê#\ÛY\Þa“x[p,CSo$¸<g–„°òý-ÝÑ¦5ò\\|Kfh¼ú5‚bOeò/ö\à$À›Ì–\Úø\ãD=-ü9&2&¯–·‹V¡q1\ÛAñ\Î@¼Ã£\ãv\í\ä_{y|-Dv\Ô4È \ãpL§\ÛXe·€µ\ì/\Ì5jÕ©\ìw	\é\0k\áŒ?©X!–g&\ØøLooØŽŒ\êI0ZÝ¦[q8}ÀCY#‘-“­\Ë\í»B$‰œ™e\Üa\ÛV°ñ\Ä\äp\Û\ç±$\à\îY\È|‘ñÄº·n\Ü2û’Û#³1\r\å™òw)ðò\î\Ôö\"c˜\Ö\ÌÁðf\ëkS“¿?“Õ¶Hn\æ|u8y\Ç\Ñð˜\Ýûô}\Æ\åvyø\êbc\áöÕ¨þ\"\ëmk]˜|ùŸ†;ðü—X\"\æyÿ\Ä\0\'\0\0\0\0\0\0!1AQaq‘¡±Á\Ñð\áñ ÿ\Ú\0\0?E-Á(¦YVS\ËüW\Ã\éF\à‘+7D]C¡[Š!#ªqs¸2£\r0¤º¥úŽ\ZO1n1rmXP³2jP=Á‰$H\"K8\Ô\Ã3\n—ø °\à‰gÁ\è˜òùŸ\'ú\Ì;g\å{\Ørô´Áöaùzr£ªW)%Y{”á˜–\0ˆs0\ÔpN˜j©S\Z½‹yq\Ôy²\ßÄ¶%…§\Ä:\ÖL‘2g†7\ÄW¶¥¢bH†3|\ÅCj’ù˜\ä¨8„*\rp\Ük\Ì|¿‡	Nˆ,Šk\é]\Ù*$H‘\"DŸF›!±•+\ã›\é\Ó\ï>;ö–yÁ$¾\\\ç\Ù³\æC\è²\Äð~\"Ÿ¹{!•“\æ\"a?%\Å_JÔ¬š—7ö…ª‚ Ý¬€›Ç¨!±„mb\ëˆÃR\Ý\ÝûŠ^%\åûtoQX™\ê^3¿\Ü.™o1šžb_\Ì^\çcˆ‰\ÜsŽ_ÂŸ$H‘??Œ`\Ã\r\Í\ÙxrúŸz}á¾³¿„>]ÄŒž0W´]\àHr@¯\ÔüL\Ü\Ì\Ãú‘\r2Jdm\êb Kr0 ‚‡q…\Ó\0\Ói¶P Åˆ.ýe¥\Ïs‘\né›œ\Z¶?”Ÿ7)\Ùõ…0.\à·õ\" {|G\Éô–pÓ„¾X¼¯ð\î->%DÈ†¢ŸR?s\àBZi®\âÜ²3he‰Q\Ê1bñ#™PJ‰LÆ\ÔÁP\Ü\Õ:r+©j\Ñù†\Ìø|„þst úL5\çý¥Áü,þ	ºg\è˜{XVVPu;–!þƒP±U¸‡\ÚŒJ\Z)…\çTEN¿\ä¨\èh®9¨¶_;Š6%\ÍFü²\ÔI\Ûø=\Ø\ÍcGq·?À¯ƒ,¶qº SK¿\áe–0T^à´‘\Øf6c5¼\r¥D‰\áP{ƒ\n}K\0=¿\Ì\×Eb—\r·\×\êy•&\rÍ¾\Ä$¯ª\Ï\Ì4ü¨˜ŸR\Ç\×\æŸ\èÚ™9\Òå£–7\æ9M£ubU=\Ê\Ú\Ì\0~¢‰n‹l…¬¤±6r\ê ¥¸‚ªR¦j¤œ=2œk|\Ä\Ç\ÚDå¯¶ Â”>\Ê?G@gÁP/ÈŠ–ýP\ä}ùzµ\Ðe;–\æµ\r1:¸ÑŠ–þ\å\Ìf‡½7\Þdü\"LDƒø–Rœ0\Ø\ÌO¨**‘\Úþ!PóüÁsüÄ³\×=``dùý ´ê£¯h—ñ\rüo\Þ]þLMó9¹l:\ÜÁQÀ\Û\æ\rs2M_I-®8B-¶7ˆ–ù€šò\"ù‹¸E)š¹Iƒ\âkMP\ß\Èù–qf(~²Ž\Ó*Y^\Âi·\Æo«D3BÁ˜õ\rý™…W’Y\Ê{†i\â4*Ž\ãii\ïh;YÂ¥½KQ¥‡Ü–\0[?‰g—^£\Ã4yƒ\Õþ/\ÍYü˜\Z_\î%ž˜\Ç\ÚðSüˆi¼¦‡‰Ÿ ý\ç\Ò\Ñ\å2ƒE\æ6F\Î&Æ²\ÄúLWwUÀ¦\r9—¥30u§A,ª~c€¦dºˆ\Ñ÷l)UÝ“\Zî£’\ÌL`3F\×kl¯É‹~c_øž˜õ3p0x\Z_I€?!\0pù˜3HeóHg\è!\Ë\ìk\Ï\æómÂ‡\Ñ\0c\é@S¨–Ù–~“ ¢œ\n\Öö):Ž¯ù«r3 *’h;‰3&´2S^‡ø\\3+hÄœ†\nswð\æŽ\î\ÌX«\ê`‰s™R½L¯„pUœ†R¦ú,˜\'%J½·\æ §\ÄH	Í ü„Q\rúa,K6\Êø†^>—tù›\Üù\Ö`¾&¡ñEðÁ.Ÿh!\0-úð\\\Úx‰µhù!eWn˜KÕ‘Xª\Z¦Rl@ùBj]t¸M€2¦¿mW¨\Ëm„°\Õ*-\ÕH³\ÝJ@-²\à­\"Z¼1móˆ¾5	ƒ¸11[þ ?dKw„r«¬¿3Õƒ\ï\r”ÿ\0©\Ô\ÇÀL¹V{²\Ïð\ßñ3ù¦—ñVkŒnln-™b\î2XEmCU\ãq\Ì\0I§\Ê\åÂ¨yy&\ä¼S\0\n\Çs…ø„\ÖM\\ r\ÔzB\Z1uQ\Ç\ã7\Äk\Ô* e6\ámVŽq u¸\Z¸„óZAqD>n°þ¥ñ8	t\ZhKy#‡\È+gumF®.¢µyƒ\Ðf\Ï\ÝU²„²\Æp^–#p@V!›\Úm\ÕK5\Þ_v\à\éF\æÖ¦¤¨hô\æJ´@ú\Ço•‡\ì·‘IYm‘U\Ës#\ãüD	\Íþ&Oü\Üi\Ös)\áû\Ã~g3|¯\Ä9<\"\Å?\ÖŽÏ«>ó\ì&\Ïhl.ªµ\Ü€W\ßø\Ö\â\Ú\Â9	†À²ˆ¸a¬U7	rü‘\àa”T§¼Ê‡)GR\Ø-\æˆHV±Ðr\é\ÐÎ˜\"Š®\Ü\"j8‰³0\Ë\Üdh\"4¸Wº¡q\Ì[”z±3yµ…¥^\ê.R>f3Ã²^\ÂYµ\Ô\ËÖ¸@*Sn\à2®S\Ì\ÊQ\ç¸tò\Ô\ì6\Þx\åN±ê¡²–«\Ã_˜ä‚€C\Ö%0\à·Û£/À¬®\×\Ä\r/”–\Ø\æ(8^‚V”ûö^\Þ.\×\Ö€%yF\Æñš_Ÿ3\r‡†c\ç\'»‡\Þ9‚yÁ—£(ö‚‡Š`¼[sE\áA2u(,vnS°~bY:D\Éx€¾+\Ì6~“os&\ÝTñ(dõ~\à»za÷1\ÈR\Ì\Ê%e¹K”L{„³9eY\Úø„@r\à‚…njT¿¨è¨“xa†÷.•Å’¾PŒŽ\à\ÜbS¶\à¹\ÐdX |\â4ˆ<w/Á]St%úÀA·h¼7•d\0šž	[C(x•\ãc”¸\Æ\ÇB\0´J}}—sE.‚’¡±J™¯R\ÕSb/\Ò+a\æ\Ù\ê2\è‹ÑtO»²\0\ËQ²ß‰Ç¦P\Õx1\Ñÿ\0˜¹c\Ø\Ëx\"Y~\Ù“\ÂA’p?2!ú•\í?~ý\ã§\Ô\Ô\î+h±	b†\â.ùø•Gq\Ò.e\"3\n+\Ö3d\ÆC|õVx”\Zÿ\0\\K\ÎI÷ŠP!Ë˜¼  \ê¥ 6\ß\â:\Øynbª¸©C›‹^V1\ÄiB\Æ)¶YytDqZiRq\Ð\ÅøK\0û\Ó@›³*W>	ˆi¶š™|!\êTx¨\í\æ\âàµˆ8%¬\Ã\ÛÔ¦f\åeeKÔªª)Áü\ÍK}cp\Ë\Æ\Ç\æ*\Ö9DF”t+ÿ\0!Ÿpü\ÊÊ§ƒP\ãªõ\Ðþ\à–\Þ=D9oMñˆ­®¼,\Çýµ,Ió!¯6}¦~\Ä\n\ÖQH\á&¿h\ë\ÖNW\ÄT\å\ê\Z®\Ì!Á9ÀA°%\Å`›\â7p‰v™\ÒmüÀ§A·,T.N=A\îcª]~\ÐT=R\Z•£¹‡4D\Î#µ—¢\áSÈ«\Â\Æ\Ïx†Vd¸\Ã&”\ÝJ¡Àå†½F|5Ô›\í-3»V®Q5«V\Ôl[¯Bb\àt%¬”³›Œ\ÈnG.¡T@`,\êU$¼IIfê ½\×Qú/9”dûŒk\"K%„\ÅN\0\"*\ê\0R³‹\äð\Ç}+\Ë~\åD“gú–#_=~ª4rÆŸ”Àv\×F¿Q•[¸8wOó\Z§·\æ:ò‡ð\Í¨zšÑŠw\à\Â\ës\ÎS&³Î€¢e_,8o¸•-4‰£\Íb (­7ˆ\Ð\n?ìŠ¢lŠ•lù>\î]Z_D¬³qf ‹q	³&w	R¨€¬\ä.^¾ ›`\ßŒ’\âlpY®b«\æb¬]Šd%O«\Üx•r„\Ûs—£¸[UÏ˜®»•Q3„æ£ˆ5Rˆ;[,­\Ü\Â\Ö6f\Z5\Ñ\Ô<\É÷”±vB¬j–3–»J\â7|Nû˜o	‡™GŸø \É{ý ß¡þ`úŸ”«\ÖMGˆü™£¸3°•ü¨«\ÄU ÙŠŠF\Ñ\Õ\ÆTpøjó†€²Y€»ýE65™¬ÿ\0$¨\'Œ@ˆ%By\Õó\n2¥2; a(žòÒŸ‡-\ä\ÅN\nûÌ®ª\Æ\×l°\à¨gB@?I‹\Ê\á‘º¶0±N&TVCRôV\Üzœ<ýÕ‚^a,²¬ŽaP|ˆñ(­•€?hB¥z>\ÑÀ½DK\ì\ân‹ Z\íþú\Ä%°i;:þ¢µ¹¿ñ,O¦•@p\×~%÷Ø‚µÿ\01Ÿ”§¦/‚$õ6Mg\Ä\Ú\ÇðY2 ‚%ø‚XÆ˜ó.|“3|Fl\Üwe{†\æ\Z\Øøš\Ú#\Õ)K\0jY\æ\Îm™R%Z\\üÀ\ÒýE\ìß‚¦f,·˜]ƒ\ë5×»˜ ¯\Õ\Â8UùŒ<\ÜF±3E˜\ÃPLQ€Þµšªñ0 Ö¥Œk†Ó˜r\ÄqXƒ“\Ä\\W\Ì\Ê_Ç»\ë`=ªud5!H\îYZ|y—9\ï\æ9}He¢&ÈŠ¬õ‚b÷ùrF/\ÉûÌùˆñ{A]yüL\'¨¬=L·ð}¹q¸ü$ºvG¨–\Ñ\r\âeÏˆ\Z\ÜVgH\\•l!T\ã¸n\ê5v½ŒÞ½žbõ/M\á1QòM4Å´1ÁŸˆ…\ÆV	g3*œ˜\ÆRnµS1d”/©R]©\æ\"”\\¹AºyÀÁ\Ù\î4G@\Ê%F·®	Y\ÔË‚\0K\Üð™f0Ãœ\æ\ÉÓ©A\Ô\n)\Ì]U¤³\Ò)‡\Þp\ÍA¦\\f]Ç¼\ÖvfÚ³a¼B<ŽB€tõ^~b\ÔzFX•v\'M“6Œ\É>lýGO\Óû‹\'‚a\â\Z\"ñI¥š.Å¹Y—MÀ5ž\á‡tß¨\Õû%\n\ë3±hš)A\"\ÐUZn=ðÀ¸gºe\æ\å\Õ\Âgø¬]ž Ž5Œ\\Ta®ˆº·`õk\ÖrÊ˜*\ã¨zVf˜	ƒ»vl\ÔT\ä.ú€lû\ã=a’\Ùb\è˜Îª‚8\ê%-2‚‰\ÅŒ®q\ÛH·[\Ûþ*¬jbjª¥>’óšQìŽ”\ì]Ç²‹ÁW\Ö!\0\ãûÿ\0ˆ\Ûß¸ck†„X\Ü\Ð~#£7C\rÿ\0¶¢¯hûÌ­\è”‘û\Í\è<AõŸ\à\Ò,.`×˜)—I\Ö?¡uV\Ì™Ë˜=i¢©ˆo\r\í{‚\Ð¬\Z!\ÄMu‘+[“\âV‘\á¬£\Ôò\'¨’\ÄN\á0‹•MGvCOQ¬W\Þ+	gQªª\Ó\à\ÑÍœÂ’R´	Ò¼T\Í>MÍ›Ñ \â\\\Ó\á˜«\î\\-\Ù*‹†\à	\æPW¨f³£˜\Å&§9&õ\rM%iP\ß\"2\0ž\ØÎ–û\Ëw\è>•ž³d.¦Ps·˜…|à¯™˜Cã¸ª¾L\ÝrW~f~´«\Ð`}‘W–,v‹0–Ç´ª]±\ã‰Á$t\×BY~_\É*œ6®3•°Z\ÊE¿\Z(\Ð@\'¨\ä\Ë]Gp8,\á•O)ÀR˜*w7TP´)LL°\Ò8º¦Z„\0¯—u›C–¾\ä\É5øœ‚\â\n^<\ÂA(®s&V\êV675œ¸º…\Üè™ŒUO80\Ü\â\æ\Ì .ª\Ãû‰Q›R´¿ RSX6$\Ø@l‚/Àd\ã©b¥”x¸\é†\è¨Ï”KùŽýi‚\ì±XõT\åCiÿ\0\Â\àÁ¦GƒI\Â3wlt	bQ^ad1V¦ÁlNa-T4\Ã%l˜\Èf\ægu³¤q\ÚoL°\"\ÛAÜ»™Ïƒ\æ5Jx\å.(‰/œC˜¥\ß\Ò</Q“C\ì\å‰m¼pGoÀ¼Þ ‚\Ç\n\í)ù\Ý+\è—\ç\é(\ÈD«\Ü\ÅnV\àP\Þ!\rH\î—e¯\ï~b+	L\Z\â3‰”	z”5Éª„©Šµ‹‰4T’\Ë\Ï\'1\Ý\ÞWŒŽ±~ñ£S‹¨\"ŠÀ¯\"F\ë€\Ý\Ç\íc\ê¦i\ã¤¿ˆqõ1(1÷¦Ÿ\Ëj-\Ù\Ù,P\ê­/2\È\0®eV\äg¬Ì’2\Åú¸/ÎŒK\Ûy%óõI\ÌiY‚Œ\îXm\ÃK5nN.*7?,6³ó\Ý\ä…M~Ž\âd«…°J¶»‚¨„õ\Õ&Q³T\Æh­\"\0\Ò,•\ÌÀfm‘uƒ–B†ö\á•xJ\ÔrñZ1‹\Ö%\ÌÌ¶ñj:\Z~°”v~\à·[[!4\êD\ÜKõ!¿RÃ–¦8\áq+gVS\é(Å¢{ÿ\0“)){ð‘_ µ‰q\å\ÒúŽ`8\î\r¸¸\ëþEgC\Åc¦f¼f4p\â\Í\á>g/T\Ã\Òÿ\0ò†\ãü.q2Ÿ¢U±\Éø%ó}y@\âÓŽXŽ*ƒ\ÂV.¯‘\î\Óë¹Œ›>c[\È)@;¨£Š«ûœáŸ˜\ãh\' «…\Ã\Ì\Ã;†\ÊX\à+Ü¦¶Ü°¡J<»‡N\à\ßDÓŠ¬GöÊ¢ßƒ/öƒg’5)\ß(AŸRˆ†¹€P|K›C!e\Ò?ˆ0y7\êR!øl~‘•Q9\"€æ’³,ú6=Í£\Ìó\n\Ùp»\0}`\ç <-¸² 6\n}’\ëh\âô˜„B¨÷ˆŠ†ó”QQöˆº\Ð\"Ö±øŠ9I³“\Ä]º–»\Ó1‘\\\n«\å\Åô¢\Ñ\æ~IQ¢?Á*Ø•hw\r¸\ËNeEL\æYr#\ë8†\Öb²mÔ©””,,µ–²\ZŽä‰¢f]\ÅAž\Î9&v\ÕBª\ãÚ±˜\Ðp€¼Kõô!iø!3³£¼F*\Ë9)\Ó3,=\Å\Zq–D\Ö\å\"/2€Ž¥L\r\Ç(Z\ã›(¥][?IAI\ä•P\Ñ\É=0\Z¯dÃŽ¶¿«,2}¡\Z+iþ\nG-\×¯34¢·eß»\ÔÜ\ìunŒW\ì\åójUS\ÍJ bõ±\Ì®\ßd¦F›/³O\âV\ëºUcÿ\0‘]˜¿\Ú`\ÎN—”L½Sû™{%yfTJ‡¹† ÷È¢–(G\ÎÙš«Tbª\Ê\Ûx\Ë\æ^¿½³ð33²1(ƒÁ`O\Ì?\'´d“\æu}-z581m„ü\'µ}`‰\Ñ]·‰½€ù<\ÍWpš\É\Û\âby–\áU\Ò5\ZÃ™’h–*0\Ö<L”+´r1E·5(Caj\Õy¨\Í7)¢ü\Ä\Ê\Ór½ˆ\è³S\ç\Ìu(QbR·\ã¸e­P\æVô\é‹ø„—ZT$kk\î°UK\ZYŒbùÀ>Ð—J|“D ptŸñ”6dø\Ü8¨2õC\à”JYóO£eÎ§1\Ä¯þöm.\Êuy\î5\Ä\ÕbVÁ\ÅbÎ²?¨©\äM\ç}EQ±\ê â¦½J0\ç)+f9©<¨r\î5aw²Pc6f\0CKº\êÀŽ\×!<ñˆ(—\Ø\êc\Ö\ï`‡Y¨,,#Lcƒh\î*L±pkˆ[O1\ìñ*)¥F8r¨J—\ä©k®§\'\Ô\Ì\ä€Áu°tù–ð±÷÷øq\âf—7Š¨\'*\Ì=¾@Ye²À\rR-”\ÑcþÐ‚\Ö_1nMP}¥\Òû\Ëhf\îQ`¤_³\ÍG\\\Ê\\eU]D\ÞE]»&^¹öHq\Íþ\áA¬Å”E\Åq…O”-\ì\Æ\ä\æÓ…–•7\â\0f\àqZŒ™¸\áI\ÑK0Ó¨Füj0\0\Þ1\ÄieA\Ã\Ëõ”¥µR^\Â.X¢!€(¸r–$5î¯‚kvK\Ê\×ñf-\æ\ê!\Ä\âm\ç\Ô\Í\Z\Ü\Ä)dQ\Ù\n¥\î3¯1ðÁXy”ŠHrK\\…ú–®ª¡en\ÄorñmB\rþ\à\éŒ‰Qi²*Œ–\"Õ®&C†O£,0Aq\ç˜\rf\î=ú±ˆ:\"òž¥…±ó6-@€9\êH©<eBu0fŽ†dRxµ	DÉ À\È\ãqbF\î\åŒ*»þ¨©Áo™vpÜ©B>xŒœ¥\×wk‰*i\n¤Žš‰-p\Ä¥J#=\×Ô¨\Z\Ë m·\â\×¥ [T»\Ä|7m„\Ü\nº\Ë/úK‚µó¸6â“’j±h\Ê!_d­÷µ=K \æj±]ÀG-L•0\Úh#Cw>o\Ò&Œ\Êÿ\0±0±\àF\Þw\ÌY‰j\Ú_8e¡.\Òal_L\Í(¨µ\ÝDaŒ™T\Õ\Ý™[1\íHŽ]MŸ«\ÍH—Ä°\n\"Q˜\\g2\é\Û\ÍJ±öó/Z¶s.\Ã3ñ\n#j\Ò\êøžP\æ\r\ïü#q³w\Ö[6U}aQ0\ÔT‡™ET¨®\ÇLLÔ RL9ó5)‡Qê´²ËŒõ\î\Ä\âZ‘™@º3&þ%\0°‚aw»‚w\ì/q]ë¬\á¤Zù\"8G\"A(5¶£:‰….d7\ÜqmòD‘£Š„K-\î\"\Ü\ÛÌ¯d¨\ÄR\0	\ìVf	´¨ùuM•R]<Ÿ²\0šW˜J˜_h”¥m^a°»72§³Ì±¶\Ç\\\ËYH\Û\ì‚³\ÂXJ\ÄÇ¬\'\ØE“\Â$c‚\âJ°	±\Ú2ZÁœ\ê+\ÌFn‡D\\P7 \Êqrq¾\Þ\ryˆ¶\ëPk¸\Þc¿Pˆ\Ö÷Œ\Ã¥!\r¯\â;² ¸bQ\à¾\Æ	EüŒTÀ\äµE~\ÍÒ‹Z¬¶Yªr•l>ÄµVvš\Ø:3\É\ê(–\\±/^b^™c\Ô[¼W\ÆkZ•D0R\0mQÉœ\å\Ø\\\Ì\ZY2x\Æe†®žeÚºess[fw’UjÂ€¾\Ö¢¬Ì¡¢½\Ü\r­óR¢ÁG¡¸‚\â£r\Ü\Î)G+úýD²Í¯\Ä\ÝP®(\ÏÝ‚†\Ö\Ù|B°c\\\ZVÕ½K(ó0\åEgª›§OÌ w	=K¹‚´ð\Ë	Š®\×ò@„\ëb—\ê‡`‚$¡\Ô@&Ä²2CÔ¶ÀL–ø˜4{X>Š\å-R\æ\Ê½\0=w/¡«ý\Â¾.l\ê8\Èb­n8õ\Ù\\Ñ¯*Ž^Ù­\r‹Í²ôqƒ\ë@\Ö#t[ˆR™/p©§©P+y•\ÝL¨TVö1-D\Õ\íå’LV…\Ç~\æo\ÜP \äF™¶P\Ä8ºûE¿!U¦Ž6¯R¢\Å\Í×Ž¼OJ\0\ÆeÁdR¬ U‚Í¨3(#\')¹Ve2o¹sh*ø €F\Õ\Ó	wÿ\0L_J[/39½M$[¨\ÔXAd¡\Ôw·šbd[\È\'\ÄpC½\Ò\Ûb)”…¹÷Š«\Ô\çsq¦È \ã1\Þò\à\"!\â#Ý±q¨µ®zWðù«f‰„º6u-\'‡*%K¦oƒ3ÿ\0©ÿ\0\" ]Q†k^\Ùu«W\â\àd‡EJHh\0\äˆg\Èx¤n\ãò0ñ7\Ä&MA·Œý˜˜\Èýf<2\Ç,ÀlÚ‘\àg+/OkYZ#\Ö,a,½ª3Q\Ë\Øõ÷™–*ñ-\ÃÜ®B\ÎÏ¿\Ä)[«\r@]\ršñzù\×Ä´ˆ¨=µq“LbøªŽÎž\Ó\'\\ºƒ¤4øž\è~ñ[x&¯pl°…\Â[aC@m`\å1r\Ù\îò˜«\Þ-1ˆ¸l¡\"ð\Ö V\ÆBC’\ÃF‡ó\í/˜Û\ÌBô…±\Ékù_\Ü\"$7xuL^-G2\ä9†ª÷3IFñ†‹ó7a\à\î4kI®¥„òL\ã¨U{ Þ¦@&u–qmòiš$x¨o\Ä*R|5Y†\"4´~¤BTJH%\'19ˆÅ®]b¢.&;NVd™|Tˆ\Ë/¹ý\Â[y-\ç\Ò\äwô1Z¾‹qÀóÿ\0fz°¸¿ ¬e\nšÿ\0nbEK‚ˆ¼ó¾fÿ\0}-Ã¡FòEuý¡\Ë\Ç\äŽýhÜ‰P\åµÜ¸‚œdxfÚrð•W0?\çQ;wm<ñÁ–\å–c|Fùü§3*šC®C \È\Ë\í0#U-š\à€\Í\Ç\Ô*8:¨ÿ\0¶s|’\ÍuöMJ<ù8\áP~\Òø€Àü@BñX`úeMLƒ\æg9‘\éÌ¦R%m¾¬:	÷–¨Æ¥õ_kˆ^\î\à\Í\Ì,\Æ	ë˜ƒHõ˜¡	ˆ5w.%Œ+\Þ7~%²‡–\0h€ƒ\ÅÚ°õ\Û\ê%\ì]þe\Þ\njs|\Åp¬˜û·…\èýÌ\n=¥–3WWpYp8<B0¼\î{€F‡—Qp#¯\Ç\ÞRŸ£‡,‡e\î;O\'ñüC© +2\à\Ú\É\0šø´\ÌH?¢\å[\r»*77Âˆ»ó\ÆøS\íb…q,Z	™l\ÂÈº—5\æšù‡¦\Ð\åd¼µ³w%ñºØŸ\Â=büÿ\0p\Ô?\ÄcÒ¨£\0D\'e<“ñ0B}\'ó>óU˜•\á&J£ww\êw—¾c{°k\ë¶?˜AH@\ÄøE	G¹še”(C]H\äT{•\ç\Ìhb>\ÙQ-À\ÊB¸\Ü5£Šr\ë\â4m_õN¸€.X\Åwm&²N4)\çý\Ät\ÅÒ­\Ór-•µW÷†^@\ê«þÇ“m\Ü\Z!¤Ý’º\ÌÁ²\Ô@Y·xUpk9U\î*µÁ¾{–z\"ppý` ñN\nÿ\0sN\èwM‘\Ú\íýP\\þ|9ÄµT>ò¬b†H¾^‰m\Ø\àC-‹B6S\ã‰‹\æo\ÈS\Ö2(šR_™[ðˆ?\0ˆ‘¹Ã·\Þ\"nu/…H\'%\îðw?HÇ£¥ð¿Ô·µÿ\0\Ã\å!äŠŠ¬ºó-\Õ4×•Á\ê=G¡Žo˜\ÈÎš~\åúñ\n\'R¶0!©g\" ©J\Ä*³\"Œ\Ì\Èg˜Ñ»–&k\Ô\Ç3\Ï-µh†Àûø›ü²\æ¨\ÃP‰É»\Ï\Ú Š°]?HZ‚\Ü`ö\ËFöY¹h¬û¿slUô\áH£A\ã·5Wtš~s\rq	\æPT(\ë;\r­e ˜Ã¼{û@°\nY^ óLtÜ£\ÆÅ»\ê+ô!·\r?¹Dµ\È!‹]\Ä„9xŽF,ø@*2ðD‹\Î0CŠs\n\Õÿ\0…WhólV\å`4\ÓL¥*® 7w4b\Æ@\î\à9i\à`†)ùNAx\Ë\å}bt\Ïq¥ž›P3…\î\ì¡>\Çh\ÍÛ¥\Ä6\Ül\ãø›µÐ­(‰2ú:ŒJ¸ cjƒ\ë\âg˜[\ÌC¡oJ0C\Z”Œ\âñ·@-‰´Š^eJž\n.ƒ\Ì@¶\ÉMž˜Ý…\ß\àŠ\ÆaYl–L±j\Ý	ÿ\0 l¥\á\rJ\ï?¨¸=Œ:UŸ²\Ã(Ã“$™,\Ç\ÌaQÉ‰J\Ë\"ô%‘[˜\à:\Ì\r£p¬q=\ínñ~\â\\/r«üOª°ˆš\êX\\¹AT\ê)•CY¼˜\î7‰Hh>y.\ê^\Æ\Ãd¶ó/5+š›ó\Z6\Ô\ã?Rž	\îX\ì¿))3g\Æf8}(C¯\ì™\ï\ä³…®\ÙJÓ”yß·\à„ gG‚\"\Îå¹Š\ãeô‰\ë„!°B»»x•Ë¸4…lÄ´J\ÔJ˜p\Ä@·p%®Ú±D\n\Ö\ê—\ÝR\×\Û,°ôW•ˆ–¤[×ˆÅ‹U¯¥®5ód\Ýq\î2JÆ Á\Ì}ô¨d¼LFKôˆ\'f‚òª?sÁu·ýqg$‡š$LûF“E£«\áñ’&™`ë¯¼\\M˜\ÃcT_\Ü\'¦4\ä~¿¨µ¡;}7:Žaú\íz2\Ê\á†\ê(.¶ù€(¯\\¹2J–,PdL\Ñg°j\àmŠFeŽža9s¢À¾\îTsôþ\Ðù|0o„¡\çþ\"\îGû\ÜlƒCR”_\ÖX#ir³Rs¨÷©@\Ó üw0+7\Ë\í9\è\î&t0‹\\°ì²‰@V!·98+C\í€áŒ´ý\ØboQT¼·˜\ä/QB\Ô\í«~ªdè‰½½JmLý\ß\Ö%¡j­­x‘S>b7K/¥ƒ¼ý\æ…üD‚£\á?¨JÚ„\ÉË¯\Ü\Æv£•µJm\Úû\Ãa‘m\ÍSRš-UN\Ùkô£z½KpP<\Â)˜¿U?\Ù\\Œ z™h«?0\Êp,A(°\ÛÁ€³E\êõCL\×G\Ö\0š\ëþ\æ\í\Ê\Ì\ä»Äµ­7Iz@§Q!Œ\ì\Ü@|\é26ß˜Ž\å\ÄC–Þ‹aA+=\\.\ßÍ–ºo>\ÆÐ¥\n<\Ìqt\å\êQ\r¾3\n\ÇQ¿¬¾¹.\"B¹fG$ó\êS	u\nœ¬ŽWýÀ\àøbA›…pˆl…3\Ú\Ñ,b^†t}±·\â\æX[sSšß¹vñ³KOX\"\ÒÄ¬­¾ M	@e}ù–\Ëvž\\¿H\ÛÖ‚ñ\Û\Ó¸6\àO­q\'\0`¢„p\È\î\Ûý‰\Ñ/wþa-S±Y ¼]\r\Î8)û\ÜÀ“=w,-\èÝ¿HRU\\EªRŸŒF\ÞQV\ÔF–‚»ûq¹\Êe\àx+‹w¯?¨m…s\æ¬¢(˜>#Í³Z‡\Äi ¢±\r\ãDºü+—¢\ÆG„\nXý\ÏN›Œ\ÞSq\Ý\Ó$Q‘\ì\Þå‚’‚µ\æŒüa\\‡«a\ä‚\\ª2\î\Â0Óƒ\Z7\Þ\0\Ü+^\Ãw\â\ZŠ†V\Ö×™Q+.q.Â£H\æDZ-\Ú\ÇC¥—\à|\ÂÀž\ãL}!´O‹\Äÿ\0Ò€­J\î˜a¨ðC-~p\ÅXm1:“%ñ,úºÿ\0!‚‡\à{\æ\â-B\Øx:ù¯™\×C«À|T€\Ð\ÝüW\Ä\ØX\Ô\ài\'ÁhõNbÀ\Ú-^ô} a³µÿ\0‘×¡O\Î¯º6o,+ŽjT\Zc»¿\Ô=Fý_ù€j\nAõ\Ó3ªk·½\Ë]SG“”~\âgX˜˜·\Z“§ó…ºoP\Øk4\Zf\âyG\Ý@€\í£ˆ\åYµn;.Õ·pð¤.d5§Ë­y™c_LŒºE,5\êuÔ°õ¡],s/B¾60O)óýG‚\ßö0 A7™ƒA®±8¹.WWÄ¢\\ù‡—\ÄTpu0EŠ\0`²`\ÍQ[ 9e­³¡q&C…õ¸\\“šŽ\Õ\î¥\ç™UªhX]x” \Æh¬þ‚âª¬\Ùþ‚\å)×ƒ.=\ËH\á6ÿ\0\Ó2¢öÜ¶ÀiW•‡cn¤\Ñö™{`S\Ñÿ\0!\r-ò\ÑÍ’^À\ë[Q\Õ\Ä[ª@8\Ýþg<\ã\Ãp\r\Ä=«–(†\êÓŸ™FŠ\Zcl½¯…p&\á\æ\ËTÑ«Æ­—†<ª´9;+¯ý€‚\ÌT,bÖ¢—ª?3\ÏÅ˜\\9\â\ZYœ•‚¯;”öUbpPÐ \ß,\Ðô\Íó7J:‡Aô–¼Á£\ç\éýhwQ•{\ß\æ$$ »U¯\Ï\×Yw^±\é\Ü\Â\Ï\Z…u\Ì\Ê{&l¼x\"S)‰¼§3€mñ3€{] *+ÁhE\Ü…¤¬Ð­^2\ßk¹n™Ì„TV¨)ª\ëý\êhcNo3„¢\è·S5Ø¥}\rþ	Vš\Ýg3R©¬\Ü\Ø[þ\áU€¨\êÛ¯\Ô\äR°¿l¿HCYP\Ý1’‹³W9\ÌhU\nX\î_·…\ËW	,\Æ~QBDi_¡\\·~˜\Z¡,/W/ò\è=‰€y\æ¦\Ì\ç\áŽYo\ß\Ìuv\Ã\ço\'\Þ_­Ey’ùøC9\\Md\ïse\Í0Q§¥‚xÔ €H¦€ÀG¡¨EF˜\äuD¬…pq\Ô?Ø\r|\Ô/\Ûñp4ZöÁ\äúÀ\à¼1²…²€5\\\Ô\å\Z\Ôq;\Þõ	XYv8&ö†Êºš)WŠ\\b[”Œ\Ù\Ø>’¼ }Gul\Öô\Ñ-X\Ï\ÄÔ»E\ËP6ƒŽ?p\Ä«,\Ú,g•c_‹ðXÀ\r\\o€\ÔR\æsñ	m·F»j\àHv¬\Þ\×\é-¡@\í\ï\è \ÓY\í ý]D\'\ï9„GþOó5Z!E\Î4˜!\à”<?ù1\æmkŒ\Ägi\î®YuÁo¹E¨8E5Z—j\ÞH”4l\ä¢E±ô¾¬—‚sý\Ó;\Ú#l\Ô{96B­[a\Z­ºˆ·œ\îK\r>\"[bÔ°1L Hµ\Ä\èAr·\â¬n > ¦I_{XF\ßD\Ï<º\Ã\Ú5WÀ\ß=\ËVNML7Œ\Ôó\00J‚ô\ÔD¸\Í\ÃJü\Ît·µd`¸÷ r¬Ô¾µð¯«–†M\äþ#\ÑKnóR¨ÁŒ\â\â\'\r”ýûfYW3´‚ßµ\"#aT\r\á\à^\ë t N±\0­XQp„R…#®?\ìF£0ƒ_*E\Þ\ÇwlšG\Ü6òÁ÷x ²´C·2i\Ôh¨òrË‰ÁgŽs÷{p£ð\êV³7l*{Ž™—Ó§¹Mu¿§œt2]ÂŠv±\ÑûO´´Á|\Æ\Õª ò´m©R\Ùy\Z€²\å¸\ë\æ7Ž%ŸB!\Ç\Ú$>’ü…¸úb\\1\à¢“ÁU\Í\î¦÷l©@\íB0‹\âˆ4\Ï)\Î\Èiº\âR›z%ù•…„4L\Äpb3\Â2¢\Û’¡ñ²|ú‰@tpuó\ÜÖ”.¢´lhñ\æ)n¦ý»˜ùyžkþ²\Å\Öóˆ940{e–\\6b¯1`	d¿<\Â\ä§«ÿ\0².ªt[ýJ¨ea[\"f¥x6~£3E\ç-þ\à^Ò—fÁÊ‹\ÑÄµ…]³œý¾’•¨=wö…;_ªjQC^-ý1\Ê3\î¡x¶X:FQ|/\ë/†SŸ0Ú­1,\Ñ\æ\"1uÌ•…U\Ëk\"\ÊdBöTA±Æ¥\ÑPS d`ˆ•yœ…Ype\íU\Ü\Ã.¢R\Ô\Äp\ë¶\åòÊ¾bE¨\Ô\Í\ì¡\Ìeu\æ\Z\ÔMEª\àx\êTV=Ê–^h¹j§\"†\â¼GVS,A\ÄQÌ´\nº\Ä:\ÍVzA\ÅQ@\ìø\æ_Ó’\ã\ë\ÜF\è\Ê?ØŽŒ«ÀT³#.j2\Û{WD[\n®\È®x€ƒÈ·u“\ì\Åwk²X…a4m4]\êR—O-¦\Ü…±­­o÷_S¨-Cð~e¸‰Þ¥\n¨¼\×ý‰bÕ™oy#\â\à6ê¡©è¿÷r\ß1\Ø=\Ó2A\Õø\Ä«\Ö+óÚ±\Îe@Ú“\Ø\Ä8Þ®<\ÆB\Ä\âU+x€®\Ó´\Úÿ\0¬÷ûM\ì\Ù\ÌÞŒ\nñ\0\0÷ˆƒ\ÈCV¢CUµ\è™cq\ç\Ë3Ì­.¢£3Ž`\Þ4s3iª—Ó™²\ï\Íx¸\Ô\Ú`¹U}F–±ŠØ¹\ÜfŒË•K…\Î6\à\è\Ü\ÚA¯/¨@2«·ˆ\Ï{Vó÷‡\É4=2ñ˜\0¬Q“\Ë\nX\Ã`—97¸r<\Ü0¦Š·TS\Ä[\É)ò/ƒPÀl*®1G\î ò`\Çx+\éù–£`©\×q\nY\Â\é+\Õ9ÖŒGÒ€Û…Ÿ2²K£þ\éH\"­zõ\â¤\nÃ›«}`öÊ·\ì¹B\ä>ùþ\âFŒuE\"\Â[\ëœ%ÿ\0sTp\Þ`\Z5g\Õzú\ÏD-¤–›%»—^vGA¸³\\cQ\Î)¤¡ö\\\Ês\Ô\ê-\Ôoº\Ã`Ì¨²k\Ì>xŒv\Ë57¨Er@–\ßÁ	nó*\ä8‰]lµ,rw—9€@nA\âf¢ƒ—\ãJTz÷\0m|\ê -G\ÏUŒ\n >¥¤¡_%DŠ\Ìó‚Ûµk£\é,°.D!©¼öüÁÙ¦\Ý8Xˆ 1¼—÷ŒqrsFX9Qx\æ[dlõ¨JWˆ¾C3P\äYa|òJ—ú_ù\n–ps{>\Ð\ÝTy\ÄH¡EŒ/\Ô0/Œ}û…8}ÿ\0\ìD¬\ç,m\Ø$\Ì6½\ì4ˆ\r\ÚþbX3?+2\ËÈšOóS\Û\é\Îø\Üj4G*[\éWQ<}Ayv¥N°ù©¬³Å±\nóENL‘\ÈBV’¢Ø•pw}Ä·!\r[ˆb\0{«\rnÐ¨\ï	Ü¤>G¹š­\ÅMnc™¹uî‹‹{%²Á•w\\GV\Åm¸\0ö\ï¹•jÒ‚<K\Ñö1Q°\Ø}(\Ð&·‹üÅ¡²8\Úö\ÌQ*Uóˆ\"£à †­\æ\ßO\ÌEZ\Ë\Ûj¯ÿ\0e\Ó\íŸ2À@\Å\ãŽe”°¼\ço\êQÈ²µË‚)\ã„?ö1(•lön\r‚ŠO4\ï\ïµJ\ÝÑ¨Y[\Ï\àJ…Â’k‡\É=[\ã:¿\Ôòbÿ\0ß˜©•õ@Kò\0²!\Èý`u} ûQ¸Ç¢(\ÛP£9ù‚ƒoDP°TÌ¡C…¸Š[z‰`óüL˜—ó6 ›ˆQþ:\È\æ%8•\r“#\â+ˆL™Ku‹¯ˆ\î™L½§	A¢}b\Ña©þ÷1*\Þ\ÇT\r»U‘ŒŒz \Ã%½A·ˆ5}\Åb°@;ÿ\0\ÊÌ€\Û[ùe$VYu\Âýb5,\ÛFU)“&I²—%‚\Äcbs›óy÷·«\å§ÙŠ¨¥Ò®X¾Xœ@¶\"§¹Z­y~\Ë;A^qr\Ìv\ê\Ì}Ï¼¥®\è\Ø?¬ýcÁ/¬\ÌD.RT¯©õƒ1¬\Þ*2­\Åþ,\Ï<Ÿ±bÿ\0‚“@œ\åù¯\Ü\Ï&°?\êY^q\ÜË»O\Ö\"ÁÆ¦¿qƒžùÁZRŠñ@÷,™š©ÁƒpKy\â¥\å	z,ú„	w/“q¶d†Ê¨-\\*9TÄ¹\à\ÇP\ãð—+(‹A^\áÒ–•q:¯]²¬\æc´W\Ö`2m²v|Qky0\ìD<*!E?¿pQ\çh8²ŸŽg\áV–Ü•ø rÜ£:€¢\åAkÄ§®7J¾\Ñ-¾0@v\ËoC(´\à–ø{„AŒ\Ç,	\Ê6\ëxý\Å`”	+KP\Z)Â‡÷%:gô\Ü\î\È\Æññˆ…y¸œÝ´\×\î	^ƒV•`¾ñ\nžA\\\Ìç¼¿†7±k\ï*µ\Å\â*),w3\ÆUSO‡ø(\Ø\Ï\Â1‹\r\æOTj\r>Ÿ\Ägv²cd\Ä\à–\Æ®P\Þ D\Ì8¸øÜ­ybV>&ü\á…\ËwkgR\Ø\Ïp#¡Xf$*ò@¶y!Šûr\Ê\Þ\îr…¼ji¹ù#‹\r5\ÔY†Ÿù^c„\Ó\Ù\0¸\ÉSf—?HzŽ\ÆôBû\ËEF¦—H2‚—\âýC@P\Ú\Ý\ÌSˆl\ÉF¹GD\ÕO¨¹KoZ¸€S\Èx–\Þp\é\Ï\â0	IswEõ…‡\"\n&¹ƒ•8O¡4\Ü\×dµó›¿FQB\á_r,:£ñ5Sþ\Ã{\ÔBù\Ý\Ë%¶~³\ßð:–/¸Ñ¸Ž\â‹$’\Ý\Ê\nyc¹¬S³^fGl:±™Z\Û8j`Aƒ\ÌGe\æX]ÀZXP»\å/Z\ÆKòs(2[G\ã®óF	´u,¾ô®\â+k«Ž_\î¥#\âj¾\"\è\"è”µH\Ç(’\nyw=¤«¢*ª‹ic\àˆd<¹J\éë´®\\1¬º\è–\æ\ÛÂƒŠ•¥°~\Ò\Ç…«Šý°¢\à`Öð¿öWu˜TŸ]Á1{\ïý\æ6„]å¨¤©U+¡ ¯/Pj\Ï\r¤Ç“\ÚúQÂ¨ýj\0VZ¢þ‰ú—ll±c}\Ä\È\ã£\ä–Xw1JšA)že\Â8\ê,IŠ¦<¨r\í{•Ý‹n6\ì¡³ŒDº–\Ú`ar ¼O,¥º—¨°\Ü`¢\\¾79’Ž\â¦÷C\î\Ì\0­Nƒ,²Ùµüq\ã-*®\é?·^e·¸–¡Ÿü\ìL—‹Wpi(·j(\Ò\ïr­‹iU¬.™¬nOs(U\ã\í\0…Q»¶P/)‚*\Ée›­Aˆ¡\Ûgý@r\n-¸QR\Ô\Ú(*öc\Õ(&\âQž…5‰B‚-Mø¿˜\äxvªŒ\Ãb\â\Ð5q\àx\Ó\æŠŠ\rsˆ\ZðòV\Ú>8þ\äX/t~Œ(–\Æ\Ûm\áŸ\Ïýƒt\ØP~´Ve\Ø@¶\é˜þ\r\Ì¸‰6\Ê\ë8‚—¾\"ö•#q2(Ã¶§©uKŒ\Ú3\Ü \Í6¦\í•q‰^Í„[Î °\ÝYgd3œÁ4œÁVe†¨R­ù…wµõgŸ½ÿ\0\í{\\x\"E\ØøEf—ó\ëû*\Ç\Ó¥¾\ã•\åÿ\0\"¹ö\Ä\Zˆ¬@\Z\r0K­®d8~°\è^H÷\r8 ²¶w\"›.ª\n\0_`hf&1UMq§j\ê\ìc\ÕõŸ\è–®O\Þ\0 \ß\Ê~£)s4\Â|Œ£~.—A\âþ•ñ5´=šT‚¶Y€¾s-\íP×ª…£@Ò¯*€Ö³@øb-¯+÷\"\ÃOõ9÷‰a¤§i.3c—˜BpC\Üc˜\"\ì‰4ƒ\ä!UÐ˜Ü¨º^f\ì\r°\Ñ\Éj§¸²ˆ\Z¸Heµ\Î@±sˆEÛœ\\².ùŠ¥\ìôJ€\Ô$­ž4J(E%C³‚™:ÿ\0\\r»ŽCý\ÌX¹mû…\æ<³‰£›<{”\Ã_3¨R\çŸùPk+°÷¬y—2»*úA[¼ýe®±ú‰QW\Ñ\Ø‰J—(fX®HY€šh\ßaŸ\Ü\ÈwrøÄ²\ÐP~ñÁ€2\r\Ä\Z ûo\å¹W³Uú\\!3ópZ–L\n †r\îƒ\ÛHûL½ß…G`z?	\Õð\æUsµ\íñ·þ\ÆE„˜\à3.\è`Ã†]D 8crDS¨Ï¶†\îx°(Üº†x¹‡1Eª\Ü\Zu˜\Ñ\ÏeqÓ°CŠô;aã¨Šñƒ\â4J!ª”ouò\Ã VƒÁ1‚‹\Ï\Öeµ\Ð_\Ä,?\ÝKº÷1Y‚Ú¨1óã¸©£’¼f)EË¦K³\å˜3\É\Ù\Ó\Ô|¿\ê‚aÁ/\Æ\åWº\'&·jc\ÓQŽD\ï˜øiŠEe_X„D°À}T¶š^sQñ\\©\ê\ëú˜Œ\Ýw˜¥Z÷7K‹ôþf47‘ÿ\0\Ù@²©žx~eC¸{4n;\í\Ê¦\âÀôhA\àOó\ë\çòb‚c\Ä\Ë]§„€S~\ÐR\ëû1\Ü\r°\Ô\ÍaV›\Üq\Êk˜\Þ\"¹u\Ë*ˆ¥rÅ§Ì¯1c†•”´©ST¨*²Lm»52B¼!•X\â\Ùa.øóE[4có!kñ!\rÁ£\ëœ\ê;¶³ø‚¾Ÿ©º£¶¡\Ë\â\Zú2½J™¢\à9uÄ»3ƒ˜;‚\0\Â/~_˜@´\0ªñY›\ÔU‡\ÖP\Ûe{—O—\Ý\äO \nô!`Vz¨ø¬X:\ËýF;³#º\Ôx\"\Ñ[ô\Âí”¾H-W‘/¾`\Ì\Ó\éÿ\0au“™ô–\à0\Æÿ\0\æ&¢ºA\Ã\éªJÿ\0)z¾\Ì\Z3_ö>\ÕWwQ^]\Í#iûD\re7Á	j$F‘Œ([U3*¯¶\r2˜\Å\'„ª]}beˆ”W;š¯”0T°²tGœg˜&¾bSp<·²„É¼K¹™\'Zñ§Œ_¸H\ì¶\Øñ˜#…X®#Le\ç\Û8¾w÷Œ”ù©šýF˜÷üRv™”k\ÄÄ–d®¡\0f‰\à¶šU\à¦\"Á•Gz`1\î\ËýM€\Î’*J¶ª\ë§q\ÚûIù\"¶u\Ì\Ç	GÔƒB*\éùšm­«\áhÈ·\èÀ)Jx˜Ž\Õy°‹\ä37ƒD\ß\Öiô3Ðú_¼\ä8WñO&þ–{ÿ\0‘%5¯\ê\\QœA¾ºû™«Qµ1\æ[\\ ¹\â\×1$\ßH«¥‰R«¸i\ÄM4LÙ„\ÂVeŒZ+u† M•zŸ•ˆ€ZºŒQòK\r*û‹šY.\á\ÒYy#\Z\Ç\à˜¡\Ñú”\0\ç\é\Ð*ªG¥5Ã¯û2¯OÚ¥xô\\K[ó4‹\ry€P¸1Ô±v²‰ZQ\å\æ@RŸ¥E¬öúX!oIZ4\íºˆp\Óý\æ\æO\Ã\í_¶±¹@„g\ãû—#÷?0²™\Ì:¦Xi¦‚¼THK\Â\Ó4%^óˆŠƒ\Ýb\Z…	ZD¿\Ý3µ”¸ö+§¿¸”Ã£òIŠ\Å\ØWŒÉ›Á55Y†#‡÷—rŽ(\Ä‡2¬¦#’¡oš‰-\ßql.»˜\ÊFMC!\Ä*\Å\Ñx[©€>¸	¯\"‡R\Å\'”EE<Å€\ãÃP÷¸\ä=[õ‰\Èi£\Ë3 \Ý\Ó9}bó\æ\æ*­®~ ðM¾Xù®\é=ÃrGl\"\Ñ\åÿ\0\ÉsÂ®œGoª>Ð½‚‹·\â#{@§±Ô¬Zhþ>ñ$\í_T\î\r¼\ë]}l‘	\'²7W£ÆŸ»*$´\ä\Äl§s)\×nñ8{T\r”ŒnèŠƒ²\á§\Ý;\×q’€ð[\ï¬—ö€\Í]\ë2ø™*a\Ý\ë	\ÂT©`ÇŸ\à\Ø1\Í\ÙQQ\Ã13¾\à\Ñ[OÐ_\ÒûnU	f7™\Þx\îR\ÖeeG\Ö]»Ž\ÛU˜*ž§9\ÄÌƒ³SMŒc´ðÅœº\íg©fx\ß\ÞU4v\Ê\Æøƒ\îfŸ5e#ný@XxOQ%X´Ç²\"\Û\ÆQ\ÃÅ¿X\èÕµùM\Õop¦\Îß¼µUñ+™ŠÄ´ #ýñ3 (/H\\2\È[\á¹wjL{‚,\îf(ä¨½]\çPF\ÅX~&7Be§\ßMGœª\Íþ0\Ê<+\ï,¶ÿ\0\Ù&\0\èº/\Ñ\ß%’¡È¿aXÄ¥·k,\ØðCp\0\È\è™[bV\Û\Ã(¶E²9–\Z1’*‘|q4ùœý\Ç_Á©>Ñ›\'Ý“g\Üü³O“ó>?3\Ü?Ï¤û\Çõ6øþ§\ã?3ûgôšü\Ã_¹÷O\Äüy¾ÿ\0˜\éô\Ï\Õü˜\Ñ\îp÷?$û»ý`Ÿù?Ž\á>øüÏ°…m\r¤‘ù†Ÿñ‰þ~\Ï\ãm\í?\Ï\á4öa=\ÎXF¿Á÷/\âšO\ÊÏ°Oÿ\Ù','2025-02-27 01:42:42',NULL),('650e8400-e29b-41d4-a716-446655440001','550e8400-e29b-41d4-a716-446655440000','Edini','Amare','Doctor','Medical','sarah.johnson@example.com','0900120082','Part-time','2018-06-01',1,120000.00,'Day',NULL,'Addis Ababa','0913313103',_binary 'ÿ\Øÿ\à\0JFIF\0\0`\0`\0\0ÿ\Û\0C\0\n	\n		\n$ &%# #\"(-90(*6+\"#2D26;=@@@&0FKE>J9?@=ÿ\Û\0C\r=)#)==================================================ÿÀ\0\0\0\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rðbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0ò\ê(¢‘B\ÑE\0¢ŠAK@\n;\ÑH;\Ò\ÐŠ(PEPN¦\Ò\â€–“P\Ð))E0\nQIJ(hP(h¢ŠQI@¢ŠJ\0uQ@EPEPŠ).({\ÑIÞ–€ŠJZ\0)\Ô\Úu0\n(¤ S‡Jm8t E€Š( B\æ“<RQL\0sO\ÂÁzS“Ò€%\Í¦`Ñƒ@\Ý\Í(zð)ÁE\Ò\ÜÒ‚\r8 ¤\àQpœv§”‹ƒšSõ\0c\Í\0\ÓAÁ\ç¥;\"€4\áL¥§f™šPi€ü\ÓóQ\æÚ€šBi)	 @M†“4\0¤\ÓI \ÓI RRfŒ\Ð©)( ¢’Š\0ZZm\0\êJJ(ÀÑšni3@\Í¦fŒ\ÐóIšni3@\Í¦fŒ\ÐóIšni3@\Í!<\ÓsIžhù¤&›šBhü\ÒM\Í!4\0ü\ÐOh\Í\0?4f™š3@\ÇfŒ\Ôy¥\Í\0;4™¦fŒ\Ò\âi	¦“HM\0<)	¦ƒ\Å!4\0\ì\ÒM\Í!4€vi	¦æš\0viS	¦– cóIšf\êij@<µ&i…©»¨\ä\ÒL-M-\Í\0<ši4\Ò\Ô\Ü\Ò%Q@EPŠ)-\0(\ïE \ïK@\n(¤´\0QE\0S©´¸ ¥¦â–€IJ)€R\ÒQ@@\ëIJ:\Ð\ÑEZ(¤ QE%\0:Š( Š( P( ´\ÑKŠ\0Z(\Ç4P\Ð)(p¥¤´\ÄRR\Ð\Ð:RRŠ\0Z\Å%\ÇZ\0prM\çQ³À¥\0\ì\í\ÓI-Ò\ÇÚ¦PjŸÞ§«Ú† u5¹‰zœ\Ðª	\ïO\Æ*ŒšŠ»Ušù\ØðhTÊ«\ÔóQµ\ÎxQYffcÉ¤ó™z\ZC±¥ºW\ä)\Â9V¬£s\'÷±G\Ú\ä\Äi\\,l-»Ÿ\â¾CŽõ‹ö\éWî±©ST•}\éŠÆ¯”Ô»U\Ö_ø×Šx\Õ\Ôö¦.\ÔðO¥R]Y	*\êžô‹`RŠ®/!#­ò<u V,Ž´µX^G\ëR,\ê\Ý\é h˜PNy¦’ )ˆSIHM&h\04‡¥¦“@E%&x RRfŒ\Ð\ÑIš3@E74¹ ¢“4f€õ¤¤\'š3@E&h\Í\0)\éIHM€ZL\ÒRf€š\\\Ó3Fhù¤=i¹¤-\Í0HO4\ÝÔ…¹¤³HM74…¨ù ž*=\Ô f—4\ÌÑšCM!4\ÒiP³HO½74…¨ù¤&›ž)	 fšn\êBÔ†8ši>ô\ÒiP‹{\ÓKZi4„\Ð1Û½\é	¦M-@\Í!4\Í\Ô\Ý\Ô\0òi3L-F\ê\0Ri	\æšM!4\0¤\ÒfšM\0\Ò\Ö)1KE\n(¢€K@¢€Þ–ÞŠ\0)hPEP §Siq@Å¢ŒRb€”SiE\0-”¢€\nQE­\0-Q@…¤¥¢€Ñš( b\äÑ“IE\08\Z(( Œ\ÑE\0(4¹4\ÑKL–(\'4¹¦÷¥ ¢’–€&—&›KHÉ¥)´\áÒ˜@¢¶)œ½7$š•9 oZM¥›Úœ\Ì;\Õinv‚ªy e¦‘b_˜Š©.¡\ÔGT\årÜ³\Z‹q<(\â€\'’\å˜|Æ .OCF1Ö¹\éH&“š6špC@\r\ËR€OZ\\\ãƒC5\0(¸<R\à¸¨·FsÖ€$b¼c\Ò\ÃÚ›³CÒ”D;š\07\éI¸{S\ÄkJ#ö Ë¯¥\"¿¥L\"9û™¥ ùgúP\Äw©’\í?ˆT{7uJMŠ\ÝE+¡\ÛI\ßr;u\à£f°š,}\ÒEK\r\Ì\Ð‚H\ÓFøx\"—8\ã½R·\ÕD€,ƒš¸ŽŽ2\rU\Å`É¤­y¤\éLVšm\Òf‹€´”™£<Qp\n)3Fh\0\Í¦\Ò\Ð\æŒ\ÓihsFi¹\æ“4\0\âNhÉ¦“\Í&hù£u0ž)3@\â“4\Âx¤\Ý@\Í¦n£u\0?4™¦\î¤\Í\0?4„óM\Í4žhù¤\'šni	 æšni	¤³A<SwRâŽ\Í©™¤\Í\0?u&i›¨\Ý@\Üi3L\ÝF\êCšBi»©¤\ÐóHM74„\Ð‰¦“IšBi€“HM!4„\Òci	¤\Í!4\0SM¤&š\04›!4™ C³M=h\Í&y B\ÑÒ“4f—(¥\Å¤11F)Ø£\0”R\âŒP\0;\Ò\â€( Š.(”R\âŒPS±IŠub–Š\0LR\âŠ\0£¥´\0™¥h P\ÑE…¢Š(	E-À(¢–€Ñš)(z\Ò\Ò”´\0\nZAK@€u§S{\Ò\Ð\ÑIK@.i( b”~”‚‚p9\é@\ì\â£f\ËR4 œ\nX\×\æ ¨QÞ•¤\0S\ÕZ©5\È#\nh\Ó\Ï\ØUR\ÄóžižacHNN(\Ü¼ÑŸCM\Å dz\Òq\ØÑ´Rm\0þñf”1ô¨¼£\ëF\Ö^ô1M\ÜçšŒ®\Ó\Í\";\æ¥­\0G\Å.Õ¥tÁ\â¡ ƒ@®qK‘P\ä\Ò\ä\Ð …æž²\â«òx¥\nh\ÒÜ•9©E\á?À\rQÁ¡\Êõ8˜¾ÕŸùf(Ybn0j²Î§FMZHc\ÌD/­@R#\Ô\àTM\0þÁ\éW–\Ú\Þ/Y›û‚‰#‘×ˆö/`zŠb†Ý‡\îþ5f	0\Ã\rò\Ó\ã\0ý\áæ£”D¹\Ã`\Ñq\Z!ƒŠv\Ö=«.+,ðsSÿ\0hFU\Ä\ËD\ãb M@¹ÁJ‘œ0\Êò}(¸¬?Ò›Ï§µ]®\'\r(‘R\Æ\î\ßyH\\,?>ô›©HÓŠb\nZnh\ÍawQº›š3@X]\ÜÑ»Ú˜O4™ \ç4SsFhI\â“4Œx¦\æ€šL\ÓsFhÙ£4\Ì\ÐM\0;u¨É¥\Í\0;u4·4\Ü\Ò\Í º·4\Ü\Ò@\ÝHM74„\Ð;\Í!<S3A4‡fŒ\ÓsFhš3M\Í ,£4\ÜÑšC4i3FhÒ’š):Rö \Ò\Z\0L\æ‚h¤4Bi¤ÒšC@	ši4´†š	¤ \Ò\Ð!)(4P ¢’–€/\ÑKŠLR,Z)qF(QJ€J)h ´KŠcŠ\\QŠ\0JZ1KŠ\0J)qF((—¢\r\Å(¥¢€\n(¢…RŽ´\0RR\Ñ@Q@Š1KEb–Š\0\0£\nZQE\0­- \ëKš\0Z)3K@.))WŽMzu¨%±*½©erNB\î#\\ž´À‘BÆ¹c\ÍC%\Ø\Îj‘\å>Ô„\ëÖ»¿~*E+¾ú`\Í¸\ìŠS\Ç4McL..\ê7S3FhŽ\Üh\Üi´P+ŽZR\ãÞ™Eqû³J§5iÀ\Òa[\"˜\ãÒšRu d œ\Ò\æ¤eMG‚zP\'p\Î)U‹t\Ð[†\ÚM™\Æ v±© °yyc\ïV-\í±\ÃµylŒoaý\î)\Ë}?g\Ý@=Ú­-¨^daÒ¡{§Q´#w°¨ö\Ü\Ïþ³\äÔ†M-\Ìqpý®õJmC²n\'Ö­.Y	­H\Ö[”\ã\0v fCI,Ç¦)\n*}òI­d\ÑeüÍ´U…ðô}^BM1X\ç\ÄÈ§S\Çs~a[\é¡\Û/U\rõ©?²mS¬j(©$m\éRyc\ï+Ö±³±_¼¡~”ÆŠÁG\äúP(,Ž§\åH\Ç94ùM°û¯Q\ï‹ûüP )L+ÚžH$mjz²óšwŠýñEN|¢j7<©¢\áb3\Å&\á\ëF\Öi„`\å‡\Ä/\Þ9™ m\ÆGJN”\0¹£4\Ðh&€šL\Ósš(I\â“4\Å74\0\ì\Òn™¤\Í\0.iwSsIš\0\\\ÒfŒ\Ò\Í °¹¤\'š3HM4„ÑšBhsA4\Ü\ÐO\0¹£4\Ú)\0´RQ@\Ã4f“4f€ŠLÑš\0\rQ@\Ã4”¦ŒPi\r8Ž) C)\r8Šn(´˜§b’\r\"“4¦›šb\n(\Í¦ ¢ŒÑš@i`ÑƒKŠ1RXb“\ìQŠ\0AKJ.(´”üQŠ\0h¥\Å(b€b—b€´¸¤\Å`¢—b\ØJP8££¥b–Š\0LQŠZ(1F)Ô”\0QE\0bŒS±F)€\ÜQŠ\\R\â€Š1KŠ1@\0¢ŒQŠ\0(\Å(´\0\ÑÖE\0QE(\0”Ž\ÃiX\Õy¤\ÂÞ€$›O>ce©º\î¥\ÈQ¹»Ð„+²Æœuª¥‹ž´¬\åÛž”\Üw¦  Ÿjró\Ôt¤\ÐN(\Í!ýi3\Í\r÷©€b“#§zPŒ\Ô\áh”dT¸QÒ—>Š)ˆph«9ön_\îŠ\ÅP	<\nv6õ«K2t+zvØž‹Œ¦qÒ¥S\Æj\ävð7­Z\Z\\M\ÊØ¢\å\ìŽª½jFP£bòþ•£Š\è	Œƒšy·([\0\È}hm\íR(ü\Éøö§´’KòÆ¸_Z.s‚O§aR;Eh9o1½µ\0:2\ç u©%xT|\í¹º:\Õ/^PwÚ óW\×4€\ÖK°«û˜ð=\éEÀ_½ ¬v\ÝÈ on´¶5×¾\êQ« 8T9Ž«Žµ*mNM4ŸY˜ðœS?µ®ˆ\ÅTó\Ðv¤7$•ih\ê7\ÄM!\Ô$oV¨#F–­ElpIÂ\Ø÷¦\0·ÿ\0}±OHf=M<W¤µH¥\år‘¨\ïHŒC\ïfœ,#aò\æ¬,H>ù-ô©7SŒ÷¦u\Ó\Ðc\æ\Å+ZF§$\æ‰n¢QËŠ©> ˜!y D\ïD}ð*’\Çú\áš\ÎyL\Ã4Ä¶l\çù\Ð¸ˆò\Zxš9 cÖ²\ZÄŒ\ã\éN\ØÐ\å±?Z`jIj\0\Üô¨$P£ƒU%»™œdü¾•aI‘A\r74¥\È8*h\ë\Û\0\Ð\r©\Äsšt°\ì\àQp!>””ö\á}\ê2h\0¤£4„\Ð\æ“4„Ñš.æ“½¤\'š.\Ò´fš.\æÑš3EÀ(\íFi	¥p\n(\Í bf—4\Ú(i)i)\0´RQ@XQÒ–t¥¦0´‚–€\Ò\Zu!\0\Úm;\ÚBbS)ô\Â)¡\r4˜§IM\Æ\ÑJi)€QFi\r 66Ñ¶¤\Å¨5°\ÌQŠ“mhŒTh\Û@Xb¤\ÛF\Ú\Ä`RâŸŠ1@\Å§\âŒR˜£üQ¶˜\Å%I¶´\\\é@§\í£m\ÌQŠ~)\nÓ¸Xn(\Å;m\0Qp°\ÜQŠ~(\Å\Å§\âŒQp°\Ú)Ø£\\,6Šv(\Å\r£\ìQŠ.+\r\Å\ìQŠ.QKŠ1@XJ)qKŠ\ÃiiqHü­†=P¸m\Í\Å\\”\á*\å³LAŽæ¢šO0\í:V\Ï§bn ô ž\Ô\Zw\\-1UùsQ\ç,E>SÀZj\Z\0\0\æÂ¶MšC\Â\Ð–ô£u7£8 gÚ\ÇÖ›žôc½+\Ço÷£\Ì\Ê(°\\˜;Ž)ñ-\×ù¿\nU]\Ç\'µ\Íž^øñ­B—S†\ÛP‰Xœ)5b\Ýw1¢Ã¹§krQ7Jøo\á´\Çcs!–s±©4\é¿2rW\î\Ô\Ü\Ësò¯He‹K9Ks´7z\ÕL<”Rúw©\"Ž¼©þ\Ô@\Û\Z\àP\"$°’A™p¾Ã½L,Uó¤»\Èùª\'ºy9¦¾JŽ Q\åúP	³÷©\ÂT\ìh\ín\ÍÒœ–Ž\ÝhY½\rH.ð)1¡>Ë³¯5\"F½:TDÈ½Z€\í\Ð\Ð2\ê\Æ\Ãý^3JÖ·RòxÇ¥R\rùsS&§\"ƒóq@®ZŽ\ÂeåšœW\Ë?8\ÝP.«‘‚j9.\Ër­@wnRˆ\É1>Õ’\Ûßô$oŽ_ŠsQ…‰’M£•O\â+=KA\Î\Ü\Ð÷·(v\Ñ`¹¦ …:(üh‘ #–Qô¬œ\Ï*ü\Ò\ZAl\Ø\å\Íšf\Þ\Ø\'iŒGŒTU1€MH<÷\à´™´Ø±Ì”\è4À	+6Ö û,¼os\Í9”¢\ì\äŠ\0”ZD·\Í\È=2fXøKUwò×€§?Z#ž@	\0Pˆ\×\îÅ¶‘\Ò9Ü¤ý*Å½\ã7¡\ÏZ¿g}RŸ\Ýdý)Š\æ#¼NAFjÞ¥ ’\áS=ªž\í\Ç 4\ZùºPii¢Š(\0¤&\Ñ@X\\\ÒE¥`¢—4‡µ`¤4Q@X(¢Š\Â\ÑIEai)i)R\ÑL)i \Ò\æ\n(¤\Í \ZL\Òf\ni´´”\0˜¦O¦\Ð!¦™R\Zm4!†’œi;\Ó”\ZZC@ûh\ÛS\ì£ecsr-´m©¶ûQ·Ú‹\Ú]µ.\ßj6ûS¸ˆ±IŠ˜/µ.\ßj.2R\í©¶gµ)\\6Ñ¶§\ÙF\Ê\0‡mjm”›((\ÅK²“m<Q¶¤\ÛF\Ú`E¶‚µ.\Ú6\Ð\"-´b¥\Û\íHWÚ€±(\ÅK¶“m\0GŠ1Rm£m\0GŠ1O\ÙF\Êaa˜£ý´b€°\ÌQŠ~\Ú1@Xf(\Å<ŠLPqF)\àQŠ.¤\ÅHG€QpŠa©\\qQ¯Þ \n\×Š£œWnÿ\0\ÖU\ïT‰c	\Ï4ƒšQIÐš¢D5\"sQ÷§\çcœ±4\å\éši\ëO<%\0šF©D(4\Ìü\ÄP3Š1šC÷©Oµ\0!6)\Ìp1@¦·4\0QHi{P\éJ\Ç\nAÒ”\æ\n\09\æ¤YH^MFH\Å*¯4o%Žy\ÍLˆ\Ê)ªBŽh2û\Ð2a´žM)e=0*¯™ž”…\àT?{¤ÂŠ¥œŸ¼i\áŠôjCE¡\Z½G–ž•ž\ÝÀ4õ˜P¾JÓ…³· ñL½J›\Ç~(¢)ÿ\0{ö,W;9©A\"œ²|\Ü\Ð1q‡LSþ\Íy59!‡˜\Ð\ï@XAo\0\ëNh­Uršb\Ù\î<¹§ýG,r=¨ŠrÆœ\ìj€n\ÄkTXF;œSž\Ú:\n\ÆX’oÂöœŒmÉ«¬ˆÿ\0\"Ê˜m–0p¹&Xª\×«\Æ)‹zþ•#Ú‘÷¸úS# €°\è\ïaW­\çfa“š¤-‹\áH\Û\ïW`h\í\ÜÞ¦€,²4ŒN«I SÖ¢’\âgcƒT\æ|pI\Í\0M4¡9\æ¢m\ät5\0F—¿¦iG°ŸZ\0\\¶ \á‡Z¿e©\"\nkS-—9\'½ii¦8\ä\ÚT1>µD³~\Ò8\'pó(Á+3SÓ±1ku;kF\ÚØ¤‚v$ þ\ZÐžú\ÖT\n)\ØW8¶V°\â›Zú„Bw&5\â²dVŒ\á…K)¢”Ž3IHcM\Z(\0¤4´†€\n(¢€\n(¢…Q@Q@E”†-Q@x¢ŠJ-\Ü\Òæ˜…¢›š3@ \ÓsFhM6—4”CM§\Ó;šhB\ZozSE1	A \ÒP]\åRyUl\Æhš\ç7+¨òª×•G•@|ª<ªµ\åRùT\\eQUZRùt\\\n†,\no–já‹ŠO*\ÄTò\ÍY«~UU§–i<º¹\åRyt\\\nž]*ÑŽ“\Ê”[e*ÁŠ.€+\ì¤d«(òóN\áb¶\Ê\nUƒ\'—E\Â\Ä)6U.“g4\\6Q²§\Ø)6\ÐMMLVƒE\ÄC¶µ7—I\å\Ñp\"\ÛFÚ—e&\Ê\0ˆ­&Ú˜/­!Z`E·b¤\Ú;\Ò\0\Â8¤žE(€\"qPž\rZaP2óLF}\ÑÌ•Eºš»yÄœU#T‰cE#Rô¤nsTH/4¤\ÐÉšnI AÞ¤#L\Ç\"ž\Ýµ%vÚª*\â\Ïz‘\ÎPõq\È\ë@zÒŽh<ŸjU\Ð):Òµ  @9¤\Í/AJ£<š\0P(&‚\ÄjLgš@%M\Â\ZbòzT¤N{\ÐQ\æšEJ‘ñ“LeÀ¦&F84¤æ”€¿ZCŠ\0n=\è\ã\Ô\ÑÓš\ÏQ@Ÿz9¥\â€}\0(vZ±\Ë/\Þ<T!Y»PTž¤Á–û\r\È\â¬\Çs¸-Á¬\åC\éR,Ž\0¤R5•co¸\ãó©nŒú\Ödzd\Ìr¤Æ­Ç¥]õI\nýM\"ßGjQ˜\ÊÔX]®7H\r]Š\Ö^ŒÂ\Ì\ï\"g\ïJ–$ý÷8­…†8\Ç\Ì\â¢y-P\åœm\ïHv(-¨\î®i»\îõ«¯y	‹š®\ÒJ\ÝŠ.\"´AÌ„TL#\é\Zf¦h¼Ã—$UˆU#\n.%³fÁ\"•\ìUF\ãÖ´\Ëÿ\0«Œ©õ¨¤·y?\Ö7\Åc\ä€\äF2õ\\[H~ix¹%ºFO–œÿ\0z¨\Ílò™¸ô¦+³7ðD>´À›W,y«ÿ\0e*p‹J\Úq\Èfl\Z.3~bG³¥Y`d=*´²\Ü*÷õ¨n\ïI>]¹\Ú;Ó¹-\Z\ßð¬\Ñ\íÜ£Š­÷\Ún8\Ö)\n¼1\É=j{yü¢??j¤\Éhê…¹hÀE\É5©\ÚH’|ËŠ\Þ\Ón¤†8Ý™I=i\ÚÂ­\ÚP3\íCW\Î@®™W\rŒ¬HªÌa‡5.\äfŠ\\Rc‡`¤4´”\ÂÁE¢€\n(¢€\n(¢•À(¢Š.\ÒR\ÒP1h¢\æ€i¤\ÐI¦œ\Ó¹£4\Ü\Ò\æš3M$Ñ“@\Í¦\ä\Ò\æ‹\\\ÑIš2i\Ø¦´\ìšJ4\ÒSˆ¤\Å1\r4”\â)1@Š`ö A\íZ†Úm\\|\Ç_)›\ä{RyÒ´þ\Ï\Íg£˜|¦o‘\íG‘\íZ_g£\ìþ\Ôùƒ”\Íò}©<Ÿj\Óû?µ\'\Ùý¨\æS4\Ã\íI\äûVŸ\Ù\è6\Ôù…\Êfy>ÔžOµi›zo\Ù\è\æS;\Éö¤òO¥hù†\n9„\âf˜O¥\'”}+K\ìô\Ã;Š\ÆyˆúRyF´žM;…Œó:¼bö¦ù^\Ô\\,R1\Òy~\Õt\ÅI\åQqX¤c¤òýªáŽ›\åö§qXªc¦ùup\ÅM1QqØªc¦˜\êÙŽšc¥qX­²­Y\ÙHR‹…Š\Ûi\nÕ‚žÔ…}©_e!J±²šR€+”¦\ÅZ\ÚD\àb˜ûQŠ1\ÜsH_h­\ÅE#Œ{\Ó\ÝÁ\éUÊ³1\Í4&R»\äâ¨š»p1\'5RE\Ú\ÜU\"¦ž†ž\ÜSq‘T@£\îS<}\ÜSqŠ`/qRc\"£\'¡§†8\Í‚*6\éOS‚i¤u´\0³J´˜\ã½1@Ô‚”œ\Ós@€òiý)sN`:\æ€\Z¼iv’r:R¸ûT˜\ÂdR©\Ë\0:\n˜\Ædq\è)‰ò¨ rjñA¸=Xõö eYˆAÖ¡\nI\ëF\Ó-\Æ3\Â\ÒN\ß>\Ñ\ÐS!f\É\Í%M9FO\Ë\ÍƒOÉ§·žô›˜ûP1p‰Ö¼vGÖÔ€“\Í#µ/˜qÒ¢,znòhq#Ô©;§j¦zÑ½ÁûÔ¬5£¾“˜\n»\r\á?z_Ö¹\Ý\ä÷£{ö4\çX\æøøñ¥û)ù|\0}k’Y?|Š•|\Ã\ÖF4s©ûc™.ò?Þ¥\ÛaÞ”1§Š\æV9ø\Î>µf;!&7\ëR;›M}n‡?Jr\Ê\Ót\àJ£keg’?:Õ…\âŒ\04ã¡…ºÆ­ˆxùP­5.¸ùF)\Íuób€¸ðŒ\0¨Z1ƒ“\ÍC.¦\Éô\Ô2\\œ”zšaq²(^üúTin\Ò\í8«Mö{S™™Yþµº¢·\ËŸÊ€¸\Ù\"\n0©ó{µT¸\Â\Þ|\ç¶Ê°E\ÍÀ\Î@Nâ‡³\n´ûP#\Ztž\ã\å\Î\È\ÇAÞ©µ›©\ÂrkvTG-“YóH´\Ée²²ŸœsN$M–¥yY›¯5Ff ¶súS¹ap« \'\ÊG\Ð[Ml‘fF¸´Œ@Á·o>•·}¢Ý…Z¤Kò\ížóm¬d®z\â¬\ÜhþtA\Ü\0qš°·6¶\n¡;\ÔZ\Í\Ä\è<±€GAC\Î~\æ\Ó\É\'Ú©Mi\ä*\ëÇ­Q™6J@¨h´È¨¥aƒŠ)J\r-! ¢–Š\0(¢ŠC–Š(\0¢ŒÑšb\nCKšBh¦Ò“HM0\Zh\ÍšCA,	\âŒ\ÒRS\ì\Ò\æ›E\0:–“´À(£P!\r%.(\Å\04\ÒR‘IŠ\0ö\ão\í@·ö­‡‚,W™\Ìz\\¦Ù¹\éJ-½«GÉ¥\Ñ\Ì¦wÙ½¨û7µiˆi|Š9‡c,\Û{R}›Úµ<Š<¥Ác/\ì¾Ô†\ÛÚµ|ŠC£˜,dý—Ú›öoj\×òE4ÁG0¹LŸ³{SM¿µkù\Ó5 q2~\Í\íL6\ÞÕ¯\äSM½>ar™&\ÛÚšmý«XÁLh9ªR‰mý©>\Ï\íZ†\no‘O˜\\¦SA\íM0{V©‚£h1G0¹L³µ0ÃŽÕ¨a¦4<S\æ)šb¦˜½«@\ÃL1ûS¸r”<ºO*®˜qL)Š«‘b‘Žšc«¦:a@(™JaZ¸\È*#j‰*·™‘\ÍX’>*\ÆbRK\n\0I&T\Ï\"«€ùæ³§”\Ê\Ø\ÝÀªò\ÈxnkDˆoS[\ÍÂ ™û†¬_´>î¦“\í2Ö…sMnvžjAr¦²þ\ÐH\éH%\Ï•‚å›—\ÙZLšB\Ä\ÓI sT„\Æ74©Gh4\Èi¦”\Z\r0ô©e*2jX\È Š384\ZH9£\0œ\Ñ\Í\íGJ\0¤\"žz\ëM=\è©Häž” \àPƒ\'\'¥\0(\Û\êjÁM€Zd»s€\Ô\Ç\æ“\éHa{®\Õ{MOpü¸\0¦Y\ÞJ\Ç\Ó›&|žz“@\ÆÚ¦ gnµMŽ\\šÐ‘„v¬gžô\Ä\ÄU-Ò¥\â1\Ô\Óa\àfžpsP!‡–\êi›‰8¡˜¿ô©\0Lž´Œ®\Ú@R\î.qOP­ \åúÑ8ô¡ÜŸ»B!o­\0ö¤\ÚMJSÊ€(³O\ã½)8¥_’p\Z¡3Œd\Ô\Ë=(3CÂ®\æ¦‰¦\à(ô ‘FœnqWc†289¬M¸ ³Õ”¼ò†óJ\Ã5£‹þY’jDšR?w¨G¬t€ûÕƒ¬+.\Êiå—šX\×.qY\Ó\ê,X¨jŽgš\å¹~)\"³P\Ü\äš\0’Àœª’\Ô\ã¨Ý¹\Ã\åSÚ¦†\Øù—ò­­\"a‡{\Ð2Œ[Í‡2Ç®Mh$h«… Ô‹£B\Ãt,=©¦\ÝC\ÎCj\02©Áýj¼÷F1´©¥g–‡G\ÍVžE½‘@\Ë1nA\ÅS‘òzÓ¥Š7c‰Z®\Ð`ü¯šd²6·\Æ¿u¹©Š•û\Ý*2€¼\Ó$µo(W‘»\Ö\ÄE$Uð+9\Ê\Úæ¤‚fCòœB ’Kk%2UKmXù¬d\Æ\Ó\È•Tj\å\ÆÂƒZÍ”\æS\É«Ü“©†\ê€øQ“YWZ\\Ä´¡N\ÚM\"\å\"\çk¯{\Û;½<¬i†\Å&€\à0A!ºŠo­Z¼\Ò\å†8\'­V#\ë>¦ˆJCKƒAô\\«	EP ¢Š(QE\0QIš3@…4\ÓJM!4\0†ši\Ô\ÓL¤4´†‚X”QE4&\n(u-%.)€¢’”\n1@	IN\Å!\ë@\r4”¦’€>Šx\Æi<±VE&Á^Iê„¡K²œ€#1ÒƒÒ¦	\Å(ƒÒƒÒ¦\ÙF\Ê\0‡`ô¤1ŠŸh£h¤,R\ÅX\Ú)\n\n\0¯\åŠo–*\Î\ÊiAM®cÒ‚¬•Ò”ÀªÑŠo”\rY)M\ÛEÀªbÆŒU²¢˜ÉšwŠ¦4ch¥1“Šw\nJaŒU¢”Â¢©2J¨\Ê\n¶\ÉQ²\n¤\ÄTd¨\ÙZe¨\Ùj„\ÑU’¢d«L¦¢aL–Š\ìµŒ\n°õZV\â©2lR»”D»j\æõ\rG\ÍÊ©­}^L@\Ü\×Y„„ö­b®e&=\Ç<óQ±-\ÔÔó×¥# =\r]¬gq¥4õ¥Á˜sš`?µ\"ži9¥^\rO4Œh8\Í! ƒF\r˜)M%/Q@†÷§§\Î©d;P1O\"™\ÐÒŒþ¤w€a\Òõ¥=(_Nô\0\Ô\Ó\×\ëJG‡\ï/¥ŒRŸ”RÏ\"\í\ïHy p&\Ø>´Ò¾{T¹ý\Ôdt\Ç5\\4„PU‰\í:\È=j90¾ôY¿\ïO½-ÀÄ¢€rvÖ©°Ë…«sØ¨6û±Ç­x¨\äb[h©¡\'ð¦D…›$SbLOj|\ä*zœ¨/¯Z«?\Í(_\á‚\Â\0#]Ç½\'Þ§½€þNŽ”†$|óRô\àR $n#\å Y‡\Ë\Ø\Ð\Ça»1ó\Z¤…\ëJ\ì\Îp½)ñB¨o¼{RØ“w-C9rUz\nYN_jõ¤8L(\êh»D\\“šF—#Ž)\ÜÐªI\ásL,4‚Ì¼\Ô\ÞY‚8¥Xÿ\0x¼`\Ó\åvw9†\nqŠrC¼\Ò,$7=j\ÌP;w¤‹[mƒ,\Õ(uW\ÆEG¶\Ó\'4ÿ\0±.rd eø¥\r€\ØÚ­\Æ#\ì\Ùú\Õ;{qµ\Ç\çV¾\Å\"÷ñ©i þU:\ÎqŽ1Y\Æ)‘r«Q™§O½\Å\0iM±þö\rg]YB\ã<SMÚ•\Ç ý*	&\'\îµB\æ\ÅA;EPx]§+\Ê9=*¤“üÂ\Éh¤\é \Î}¨elEJÍ¿Ö£%\É\Ãt¦M‚B¥F4\Ñ#D´ óNnzŽ)ˆtGz–<R<žn\Õ\ÆqOD\rÐ± \Ã3ô¢ö‹\Ïb¶ñ\ÄÁ°Zº‹{xlƒ\É \é\Ü\×)ö„”¨-´Ë‹¹&”F%+±«½\Åc¨¼†\ÒXFA>\Õ\Ë\ÜÀ¨\çnG5\Ôh«ik\æÉ¸{\Óu›K[Z\ÕFGaR\ÐÔŽKsœŠF ô4\éch¤*\ÇÒ‚qY´Zch£ŠhŠ(\Í\0RdQ‘@	š3KE1¦šRi(\0¦šZC@	Hii	 LJ(¢šP(¥ BÒŠJQ@QKT€LSH\æŸHG4†ži¦€>”qM\Å+šnk\È=QØ¥›šPh\àQŠ@h\Í SI¤\Í\0:Š@h\Í\0-%\âšM0\nCIºšZM4n¦“@S\r+\Za4\0\Ze)4\Ì\ÕX.\rL4LcNÁq\Z¢4ö5\ZiF\ÅDi\ìj\"\ÕI5ª&§¨Ùª‰lkTMOv¨XñL–È¤\â©\Îx8«rŠ£u:Â„’:U¤L™\Í\ë’8\Êú\×?õ­]VüO!\Çj\ËÛº·‰\Î\Ä\Í8\Zf0Ô¢¨C\è+šnh\Ý@\r#—Šv\ÝÔ›())\ÞY£m!§ñL\"˜\r¥µu B°§Dy#Ö›œÓ—‚\rC±\É‹\È4÷\ã‘Þ˜ÖÀŽ\'ñS\È\ä\ÒÒ€i4ö\èi‘÷\Í\0T\Óñ„\ÝI(ý\Þi\ä¢Þ€,øôSPƒ\ÃÖ¦ƒ\ç²>¢ ?z„GËœU»¤Ê‡LŽ7zUø›m\ÏjUl˜óQ·\ëW<\ÆERnf+\ØP!’@ö§\Ä0)¤e‰=ªHúP\Øü\äûUlnrjÌƒ}\ÅD\rH,\n¤S\Êpª>÷z•S\å\Í:%ý\ã9P;\r‘0UW¡\ëQ\\7D^\Õj1ò»7\áU\ã‡t¹4\Äq\Æx©ˆ¯QS¬Ar}*S3¹\é@¬@ª>i\Z¢$“ß¥O2ñ\åŠUˆp\é@\ìD!\ÈÉ§Ž©\â¤(L€­)~^þÔ€T„;z\ÈO\éN(-±’	5:‘oš\Ç\'\ÅP“\æ\ËH\ÜPƒt§Œ\ÔBYKµ”¨Cy¥wa„S$$Í‚Õ\ï€Í’j¤i3±\ÚH7\Ì\ÌN=(\í÷DœM\Ûôº¾Œü²I¨>\è&§Y‰?sô¤ýµ¨\Ç\Ôd\nžN>Iað¨\\y™ƒU%M‡¦hd\ë8ù\í÷g¸){¦\Ë÷•\Ö<nš¬3Žƒ4X.h³\äN£\ëU\ä¶f\ä2·Ò¨´H½	J@Ò§Ý“zv’¼\Ü ú\ÔLŒ½Mh“w\ÌÄŠk¸~ôÀk‘\é@sç´ôAƒ“\Í.[n1ŠDˆq\Ñx¦\ì\Ú0M!b8>\Ì\ÌI=1ó»\å©!Œ\Îi0XzS \Ês\È f‚^…ÀS€+kK¼†F!\à\×)‚]°8«v÷g5¢Ô†tzž†—_¼ƒŸ¥s6\ïi)F\Ï\ÛhŽ\Ë\Z¬™?Z\Éñd¬Á—5E\Ä\æó\Æi	\â“?.)Oj‚\Ä\Í¢Š\0m-%\0´RRS´”Q@¦šq¦\ÐR\Z_ZC@˜‚–R\ÓB\np¦ÒŠ\0p¥S\Å\0)h\ê¤i§\â\ÐDSqRM\Å\0}\Ì(*³I@“ŠòN\å­ôoª\âZ<\Ú\åô…ê¹–še A\è\ßU<\ìQ\ç\ÑaÜ¶^“}U3\Òyô\ì-\ï¤\ßU|þ)¦z,+–·\ÓK\Õo>›\ç\Ñ`¹k}!zªg¤3Ó°\\²\ÏL/UŒô\Ó=;\Ë%\ê6’«™\é5;\n\åƒ%1¤ª\í50\ÍNÂ¹a¤¨šJ¦¨\Ì\ÕV\É\ÚJˆ\ÉQ4µ–…rv’¢g\æ¢2\ÔM-RD¶J\ÒTm\'IQ´œU\"[	d\æ³\î\âóT\ç¥[g­e\ß\Î\ã!zUD™þ¥PË…\êk3sd\ã¥_»]òÇš \ça­‘ƒ[žiÀƒQc<ÒŒŠb%\Ú¤\ÛL\rŠw™@§óMŠ]æŽÉ¦\Í\'™I¹M\0)£ \â“¤\é\Å1i1N£@)q\Í(½À¡²’W€v©qC®5#°\Ö\éB\Þ-H«¹i‹÷À ,6Oõ\ÇÒš\ËógµK \Üp:\Ðá·½aª<\Èv÷ M\Ðc¸¢0½©\ê›±\èh‚Å±¹Z‹ˆöŠv\Ü8e\èjl	F;\Ð)!\çªÍ£lr‡¡¨^&VùGJp-\Ãc‘@\ìZ$,¤•RT\nIõ«$Œ?¥1\Ð8´®+\ÙsƒO*C^;fž#\Ë\Ñq\ØFÁô¥T\É\Î*T\\†ö©c^Ø¥q\Øj.F1K³*ÀL”\è\áÊœ\ÑqØ€G›~j1}k@Eº<\ng\Ùú\nW)\"³®\èÈ¨v­%·ù˜Ts[œœP2ž#æ†©Jc±«^A+J!\Ü=\è&\Å\"	Ú‘÷Àvq`>´y;FGZw.d\ËŠ¬\Ña‘‘WeA¿‘\Í,q;8Àâ‹…ˆ%* /¢\Ý\æ\ïO˜»«Ú«\ì—?1\éLV,†\Ê\í+º§†·1U\"F<\î­\Å\çºwPˆ¬cs\Ç\Ê{Õ¥Òû²óTþ\Ò\ÑuˆŸZµm}YOÖÄ—H•AmÀ\Ölö’&q[\Ì\É&v\ËÏ¥e\Ü	ŽNE™/jTžµ·”¡«²\Æ\Ø$šT‰\Ê|´\ÄUP\Ù\ÃsHñæ­µ¡`	l\Z‘m£3‚iˆ\Ï[rOZO³óÀÉ­e´F\èi\â\ãô&€2…œ˜\Ý\Ó*x\í$‘7Hx«\"¼cµUš\é\åý\Üc•¤UjŒ\ÒÛŒLHû˜\æš\ÊW‚~jgœ\ÊqŒ“Ö\nP¼­·…­=3M\Ý³tn†©[B\×w5\ãÖ¶e`X\íb<§SM­šK\Ý_´²U=:T_l\ÚBžµ¥j\ë\"\åi¡2w•mm·\î\Æ+š\Õ/\r\á¶@­]M$h¶\0y®~h^†}h`Š´´”•€M4\ÐM&y¦HR\ÑE\06Š( Š( µ%-! ¤4´†)i-1(¤§\n\n)\ËM \Ä\ÅŸÚ\n}1\r¤#š}4õ¦F’žÂ›ŠC=\Ô\É\ïK\æñU\ZQšiŸÞ¼\ÎSÐ¹s\Î÷¦™½ê‰ŸÞšg÷£”.hyþô\Ó8õ¬ó>;\Ó\r\Å5\æ4\ZzŒ\ÜsÖ³\Þ\â kŸz¥s\Z\æ\äc­\'\ÚG­d}«Þ“\í^ôù\Ìl}¤z\ÒŸz\ÈûW½!º÷£\\Æ·\Ú}\é>\Ñ\ïYj÷ \Üû\Ñ\ÈÆ¯\Ú=\é>\Ñ\ïYF\çÞ´\ÓPsP\ÜZŒ\ÜsÖ³MÏ½4\Üdõ£”9#q\ïM7õšg¤óý\éò‹˜\Ñ7ôÇ¸\ã­P3{\ÓZl÷§\Ê.b\éŸÞšg\â©i¦_zv1s\Î÷¦™ª™–“\Í÷§asL”\Ã%@d¦)\ØW,)¦JƒÌ¦\ïÉžJË¾Á«Œ\â«N7SŒ\Ðy¬Ë„!\ëvddSX\×Y\Ý\Í\\H’+´´g\"Š²ŠCÒ’€\Å8Ž3š4rOµwqF\Òyô©ÖšI<\n\0h\Ë\Zw—\ÆI©\íNœ\Ôl\Ü`õ¦„\Ãp\ÝÙ£niU=)0B¨&¦Ž<ö§Cj\äpb¥³X¢Šžb«\",Rù|\Ôó\ÊSÒ˜}ªð‡Úœ°f—0r™\âJ-¥j%·µN¶žÔ¹Š\ä2E©n\ÔñlO\âµÅ§<\n™l\Æ:sG0ùO²1ŽÜ¯J\Ýûx\Å1¬1ÚŽ`\ä1šS§5­¶²c\Î8¨š\Ä\ç¥\Â\å2Q	\îjVŒ³d\n\Óû	ô¥ûÒ‹‡!– %³Ö¤\ÌMiEhW\ï\n™-ž!›0È©þ\ÌI8­#¥H¶$gŠM‡!•±š° ,x -8©\Ò\Ô\í\Æ9¢\ã\å3™0§¥ \',+f\ÞÁ\Ü\àŠ¿’r:Rl¥›[,¿ŠIlñ\ÐdWPšr‚F\Ú–n)s\äÆœ[œb˜lp+­m;iÀ\é¤dm\É4s\rÀåŽœN\nŽkB\Ä,cžõ\Ö&˜Ç‚)ë£\Ü/4s\Èq\Òi‡+•¡\ìv)\0c5\Ùÿ\0d‚\áÈª²i\ã8+ø\Ñ\Ì‡-¾Á¼ú\Öt¶\îI\ë]µÆ–2x¬‹½=\àU)	À\å^)S¹© ˜§\Þb+R\âÑ€\éT\ZßžEZ‘“‰j9Ð€²0 úT©nU²£({\Öi‹iÁü\ÅXŽ[ˆqµ‹§¡ Eö/Ë¿†¡b\Î\n‘\ëA\Þ*†ùu§½¦\à<·\àP\"›¬ˆq\Ô\nr\r\ã*}ªÑ…\Õ>jA\0e\ÏCLV*µ«\ËGm½±B\Û*r	?Zº›£ûË¼v\Í™@X¨CôSùS2u-V>\Ï.~UÁ¨Í„ò™ð)ˆ¬\àwqšƒ\ÌenœûU\æ\Ó°%óN{x\Ðg© Ò®Í»\Ôöö-,»#¼=j\Ò[—\é€)\æõ-s\\Ë½@™mQ4ø|¸‚™[\ï1\ê*cÜ¯\Ì}Mfù\ÓN\ç’u>µv9üˆò:š¤H×\ÚlœÖ±ò×©U.•–\à\ÒGs–\Û\ëM	š±LZd\Ï#Þ©x—`*P\0OjÐ²€ Jx¬v\å&º+\È”0F_ð\Ó_µÔ„\Ô\Z	ES$?\Z(¢€\n(¢€\n(¢€Š\r\0‡µ%+v¤¦ ¢Š(S…6œ(@<R­ §¨¦&=iø¦¨©1LCqHE>\Ó\")µ#\ni†z\ËM\ïLi}\ê«IL2q\\6;.Z2Za›Þ«¦3Ó°®Yi½\êŸ\ê“\ÉM!6YiÏ­@óû\Ô-Wyj\Ò&\å¿<ú\Ñöƒ\ëT<\Ú<\Úb¹\Ï>´yþõCÍ£Í ._ó½\é<ó\ëT|\Ú<\ÊAr÷I\çŸZ¥\æRùžô\Â\å\Ï8ú\Òy\ÞõS\Ì÷¤/\Írß\ïA›Þ©\ï¥\ßE€µ\æ\Òx\ëU·û\Ò÷ >aõ¤/\ïU÷\Òo ý\é7û\Ô\é7\Ð\Þa=\é7T;\è\ß@\ï£x¨wQº€$\'½4µ0½0½0	~aŠÆ¾ˆñZû²k7R`§Y“À\â\Ò\æŒÖˆÍÉ {\Ð=h¦\í§dcŠ@p)´\0 y«£J‰y©¡9zCÿ\0*±n\Ý*žrwsVoz\ÔVñ\î5\0Æ•\Î6\Ô\ÑÅ‚\0\éHF­Á TÉ•I8Š´ªE*&Hf\Ù\Ó¬\â…\\ž”\ìS\Ñy©ªœt©cˆdqNE«”‡a«=*\ÔpŒt¢5æ¬¢â‚’\"XqÚ¦H¥J©S*R)\"¿“\íK\äJ¶œ•\Â\Å#o\ÇŠ\ì£=+H\')»9\éE\Â\ÆqµS¾\È=+@EºŸ\ä\Ñp\å3\Ö\ÍOU©\ã³Q\Ñj\ìp\àÕ„‹ÚŽb”Jik\íS­Šž\Õv8\ÅZXb¥\È|¦jiˆOJt\Å0+E\"\0\Ô\É¥\Ì¥x,B€{\Ô\Â\â¥ÛŽôl¡\Èv! =(1(¤*sH\Ü\n›Ž\Ä-\Zõ\Å&\Ñ\×#t¦\Ñr¬3`\ÎqF\Üt©@§E\ÂÈ®b\Ï8æ¡’\0\ÃV†ÑŠa4\\,ŒY¬\É\íY·6˜\Ï\Ë]<‘‘U%€6r*”‰q8»›v¬¹ì‡¥v\×@ö¬»›\éZ)¸œ›[y`ñ\Å5``2¼JÞ–È¯qUdµe<+K‘\Êe\íB1Œ\ZO.Dû‡ŠÐ’\Ï\äÊ¯5F_2,\äqL\ÎQ;yƒN+t\é\éU¾\Ð7aˆÞ•®bFa\ÍQ›,™‰	¤^ƒ5[\Î@ùf{b\ç«•…\É~\Ñ.\ì\í¦4Ž\Ç\æ8¡J²\nk\Ü[G÷Ÿ&š`[“H~E\Ý+zTj=¢LZ¬\âI\Ï\Ì\Ø\ÄK5\ËI\Ä\' Hü¬\î;‰©#ùP~5<6»r\\\æ€\r»È \ãL’9Œ§\å8«ð;(ÂŽ*Ò\àeE2L´²–BAZözJ¨ü@¸U!p3O°„°“\Ó4„Cª^$i\å#b¹‰Hi	\ÎMX¼fó\Éf\ÍT\'\'8\Å\ÒPM%\0´”P0¥¤¢€\n(¢€Š( 4Ph ¤\"–’1(¢Šb\np¦Ó…Š‘j1R¨¦&=jJbŠ\n¡\0„S€ Šb# S©SH g M!\âŠ9®°oµ1Ž)ô\Ç\éT\"\'$óP953ž*»š	#vª\Ò9\ÍK#bªH\Ü\Õ\"G4o5	n)7S}\æÆ \ÝJ\Z€\'Ï½ª\Ô\í\Ô.\ê]\Õ\ê\\š\0—u&\ê&Œ\Ð\"LÒ†¨³J\r0$\ÝF\ê4f’n£}Gš3@‡\ï4n4\ÜÑš.isM\Í &ŒšLÑš\ÓM)<\ÓI aÒ²u7&µz\Öf¡i¢Y’(\ëŽ\ÔƒOQÞ´ G­\0\n\\gšBq@„4\î\ÔÞ´¦€«´g5-¹ý\à~Z!b4Š$»§\0SÀ\Û#­G\Ë\Üdô©Y°:T¶4,–|Ö”Q€*+h¶\Å\\Aš†Í£\Ê8§)@¤#¥A°c=jDô¦R(\æ€,F*\ÌkU\ãj1Ò‘Hž1Š²ƒ5kVQiô©\Õi‘­XU¤R@ŠxJz¯ž¦\ã±\ÜRyb¦)J‹…ˆvÒž5*¥8%Kc°ÔŽ§D¡V¥E4ŠC–>*dZjƒR ¤Q\"ñÚ¤QH¢žaŒPx¤\âšÇŠ	\Zy=j7\ëJI¦š4ŒŠNø§”\Üd\Ð1\Ë\×&)Š½\êUZ\0\0£fi\áiv\Ð6T/«$SJf€3\äƒwð\Õ9­v­¢œT/i\ÜV9¹¬úŒU,ñš\ê\ä¶tª’ÙƒÚ´S#”å±SÒ©\ÞX‡Š\êf°\ïT§³5jFR‰Ájð0EQ1oeP¸\î+°\Ô,w#0ûÂ¹yŠb²Ö©œ\ÓE)SŒ\ä{\Òyc<1ü*Ô©@Aù[ô¥Ž%E\Û\Üz¤Ì¬WòTñ¿“H\ÖÁ9\Æ\ãN’Éƒ\æ92;\Ò7\éš`4$ŸÂ˜¢9Y±Œ\n‘oe\æ\\\nr\ÊHÜ´\0\ä\Â|¸Áõ©\ã‘%;IÁ¨VEnOZ–\ß=\r!3F\Ú¤\Z·-©J†\Ü\0À\ä\nÓ€‰!;º\ã¥XŽbi69\ÜpEQ¸¾$\íW8«zº±Ò±YNjFH\í¸gq¨³N\ä/Jns@ƒ4”Q@š3IK@\Ã4f’–€\n(¢€Š( ”½©(\0¤4£½%11(¢Š\é\àSZx¡\0ð*E&£*Šbd«RLQRTHA PE0#\"˜EHÂšE\0wtf™š7W\rŽÁM1\éÙ¨\ä§`!sP9©^«½Q,†^j¤jÔ•VA\ÍR%‘ö¢Š)ˆ1F(¢€KšJ\0;fF(\0\Í.i1J(\0\Í\0\ÑJ0\Ð(\Å(\0qE£\0QF(\Å\0QŠ1@\r¢—b€\Zi)\ÄsIŠ\0AUorœU°*9Sp ~U\Ú\Ô\Ñ\È\Åh\Ü\ÛqœV{\r­V™\r*\ZŒœšVlñF)ˆAFr)	 PºŒR¥ § \æ†4L‹\ÎjÕ¼X9<\Ô1.j\ì)À¬¤\Íb‰\ÕA\Æ*U\\STT€T!Ø¤\Æ)Ø¤\Å\"€qR É¨±SD2i\r#n%\éU\ãn!Ò‘HYE¨sVPPR&Œb§^j$ZC-\Æ1Rª\äSTT€sRX*f·ð´EÀh¥\Å.\Ú)T<\Ô\Ê\rD£œÔ«@\Ñ*ƒ\ëR ¨\â¤CHd\ê)ý*44ªs@˜\ãóRÚ”\ÑÚ\ÛMa\éRHs@Jœi\áFh\ÄUÀ\ÅH”/J.Eq˜¢¥\n1HR…r\"3J\â)1Ht¦‘šŠLP26\\Š£µX\"šV\\¨öáª´ökŽ•¦TQ²†\î&®s7vC\â¸ýoJRKm\æ½.\æŒb°5m7\ÎBTsZ\ÂG=H£\Í\âq˜ÿ\0•X\nb]\Ñÿ\0ª=j\Õ\í¤–\Óe\×1ƒóT#|Î°‚º\Ì\ÑBfS=zc	\0\ÃÕ‰#hþa\Î\ï»\íH’\ÃÐ™%\"Ûž)…Y‘\ÊzU›ˆ\Ð7\épvõ\ÍP†B«7\Ì1Ú­C<U¶½¼\à\ã\å5¥f\ã\Ì\0Ž´\Ä\Ëö{€\ä\àz\Z¸\ÛB\ç¦i«8#¥±=úP#›\ÖØ«ð8õ¬V‘»ŠÖ¼—|­¿…e\È6’\éÒó2:Ssš3š@9 Š( Š)h(¢Š\0Z(¢‹EPHii\r\0ƒ\Í%\Ä\Å¥¢˜)Â›N\Ä<v©–¡2\nbdªjaÚ¡AS\Å1\n)qš\0§cŠb\"+M\Æ*F\Ò(¶ò\Øv£\ÊcÚ·[Nö¤\Zµy\Ü\ç¡\ÊbùmŽ•‘7¥t\Ùþ\Ô\ÇÓ½©ó‡)\Í<m\éP<m\é]+\é¼ôª\ï¦{U)\âsOzTzWLún:\n®\Úqþ\íR™.\'4caÚ›‚;W@úyþ\íB\Ö\ì\Õs\Êb{R\âµZ\Çýš¬½©\ÜV3\éjÑ´5…;‚#¥¥*Gj\0 aŒ\Ò\ãb”\n%— S(\êJ\0(¥¤ ¢–Š\0(¢–€E-\0\Â9£ò9¤\Å\0 \Æ©1HE\0W’=\ËX×±bq[øª\Z„;”‘M1X\ÆNMpiH(i½MR!†	¥\0\ÑÒ”P Á©\Zh©c\ëC.(±\0Á\æ¯\Æ8µS„U\ä²‘¼Q(©TkR¥C4C°ii\âš\Ã4ŠsÒ§ˆje\0‹Šµ\éU\ãj!Ò‘Hž55e\ÔQÕˆ\Å&Z&AS¥F‚¥Z‚\Ñ(•*-1G¤SRP\à¥\"\Í)\ë@	Ú™´\æžh @)\â™J\r\"‰TÔ©UÁ©R€,¨5&Ú…jp8 C”z\ÐE u¤-@€)¥½)¬i;f€šxO=\éˆNjP¹\"€Jœu¦ªô§ö¦M\Ä9\'ŠpôJx¦++QjL\æ“‡q„RbžE7\ã9£Š1H\Å4ŠŠaðGZ£{oòœt­2j7Q‚5Qv&J\ç©\Û.N\ázŠ\çe³ò‹m\åOðúWyªÙ«F\Äk“¸\Ë,\Zº\"\ÎI\Ä\Æ\Ñe\Ý¥E*m`}j\Ü\è±\ëT\\4\'\Ë~s\ÐÖˆÉ’ü\Ô8\êWF\ØÁO\ßô«6ÿ\0+\0zz\Ó\ï­w\á\âª$š\Ö\á6\È>zšb’\ã¤³Œ¬Yþ*\ÑD \Ó%\'l`öªw³—€œýÞ•fi ZÆ¿›b°\í@Œ{¹Á,?\Ö\nª\Ío¾)²9\ëM\Ü\Ì)\0\Ö]­Žô:Ò“ži¹\Í\0.E¤ u ¥¤¥ ¥¤¢€Š( b\ÑE\0RPh ¥ \ÑA\"QEÀZQM\íNZb$\0\Ô\ÉQ\n•)‰“ 50\íQ¥J2EŒ\n\0¥¦\"2)¦¤\"˜h\îj=)Ÿe•ªñS<šñT\Ì£Òƒj=+KÉ£É¦KYƒÚ¢k%ô­£0\ÛÓ¸ŒF°µ@úwµt?g¦5½>f+\Ó\é¾\Õ\é¾\Õ\Ô5®zô¨ž\Ñj\Ô\Ä\àŽQô\ßj®úh¥u¯f*»ÙJ¥2E\ìqž*«\Ù`t®º[!\éT¦±À«U	p9W¶\0ýÚ¬ö¤q]Ö˜ª3AŠ\Õ;ÕŒGŒ­4{\Õùb\ÅUhð\Ô\É#\ÅŒQŠ\0J)qJ(¸ö£\Ôú)€\Ì{Qj}%\07\ÔcÚŸE\02ŠZ1@\r=h\Å)ÑŠ\0@(\"‚(\Å\04Š‰\ãóT\Ì2)€1nmv±Àª.»MtRÃ»šÅ¾‹c\ÓL–Š”¢“¨¥^•D4u\n\Ôñ©$T²\â^€U¡U SVEd\Ù\ÓE©R¢Z•\r\"\Ñ ¤§fŒR¨9©\ÐT)VP4‰\ã\Õn!Ò«\ÇV£¤REˆ\ê\Ìb«\ÇV£,´‰T\Ê)‘¯50^EC-ô©VšH!‡JSGJL\Ð\0hÏ½›Š\0SÒ“4¢ŒP1W“S¢š‰z\Ô\è)*©©°qQ©\éR3PŽ!¤-\Å&ñ´\ÐHu¥”\Õ\éÖ\Ðõ ¨\ÅJ9=*%\æ¥F\Å\0\É3N_zh\ëšv\ì\Õ\"\áN\Æi€\Òõ¦H»E4Ó°i0ia”óM ¡˜¢Ú\ÒÆž”\Êy¦5\04œqQŒçš‘†i§¥!™7\êv“ƒŠ\äõ(÷\ä\ã»[\Î\ë\\¶ª˜\ÉQ[Áœõ\ÊL¤·¡ªÿ\0\ësœ7bjý\Ùdš«\íY1\ë[£‘‚,«#pGC\ëR\Ä\Å\×=!$Œö\éS\É\È\ÕX–XH°ŠÀqV#MŠqÞ ™P)û¦­3*Fq\éL“#T˜\Ç\È<\Ö\ÍÙ•y©u‹¶óÊŠ\Ìv\È\ç­ \Z\Ü\Ó\ãý\ÜS(LR)M%\0´Q@G\ãIE\0-Q@Å¢Š(h¢Š\0CEŠ\0))i($(¢Š`©\ËM\íNZb%2T\"§Jbd\ÉS/AQ%LQ#…:S»S\ÓR\Za¢À}\Z\É@Ž¬ %y;ùÊ¾]]Y\Ù\Í&Ê«9[e]Y\ÙHR•†¤Vh\é¦*µ²¥+˜¦\ÑqL0ŠºR\ÇE‡\Ìg´[Š\Ó1\Ô.žÔ‡s*[q\éT§·ö­·Oj©,t]Ž\Ç;=µf\\AŒ\×Iqe\\\Ç×Š\Ú3q9\É\á\æ©I3[W)Ö³&&¶L\ÊH\Ïa\Í§¿ZeQŠ\0¢”PŠ1KE0bŠ(\0\Å¥¢\Å§Rf€E-! BF)E!4\0M\Æ)\ÔPI\â²uT\ã5®zV^©÷hBf/jrô¦Ž´\ê²-Z„Šªj\ìš™\ì@\â¥j8\êQY1µ\"ži«OŠ%\êjÓ½)r\n°ƒ¥B•:i\r#j1U\ã«Q\Ò-\Æ*\Üb«\ÇV#¤\ËE¨ú\Ô\Ý\ÅWNjeâ ¢\\óOSLA=)<ži3GZ:PÒM<\âœE ~õ.)@¥€£‘S-BJ\ÑÖ¢`h-Q–8\âšòP\"R\ÜR8¨|\Úhƒ@‹C ©Šª¼óR†aô 1ô§N*Ó†OC@2Ào›ñÁ¨U\ç5 =©\É¥\Í6ž:S$MÆŒšZ)€†›N4Ú’ƒµ4Ó»SM \Ôf¤\"šÂŒ\Ç©=©§Š`VACº¹\ÝIQU”žMt—	\æ%sz¢\ì5¬j¥\Üf\ëÁª­\ÆÈ­+•\êÃ­T\0?\rÁ®”qÈ’\ÕKšœÈ­nÑŸ¼µ³\Î\ßZ•\âÁ$U\ÇÚ¦ø†i/•4\èŽ\Ô\ÍS\Ôn7B\Ô2NcRý\ä\å…R<ššv\ß!¨ A \Ò\Z\0CIKA\í@	EP £ÒŠ=(\ZŠ)hQE\0´QE\0!¢”\ÒPEPH”PzP)€v§-%=iˆx«(*S¥4\"t(TÂ¨‘ÀSñ\Å4S»S\Â)¤S\Í6€>—\"€)M &¼\Û!Š1N`P+\ÛM+O4”‡q»i\n\Ó\Í&)\Øw#+M+R\âÒ±Im¨œU†TDI£H²«­T•jü€zU9A©4Fe\Â\Öe\Êpkb\àV]\Ð\ëU3\n\éz\ÖL\ã“[}Mc\Üfº\"a#>^´Á\Í=ù4€\n²£\ì\n(1F)h \Å&)Ô”\0\ÚZ)3@\Ä4”L,hÔ„\Ònâµ°\áHi…½\è\Ý\ï@Xu\ÜÑšÃe\êŸr´³Yú\Ìd\ÓBh\Ãi\â›Ò‘VH\ä\ëWm×š«ƒZ\ë\ÍD™¤Qf1R´\ÑÀ§\n\Ì\Ý-H)‹OZE-?Ò˜*OJC$ŒU€8ª\èjt$ži‹1Õ¨\ê¬uf3AH·XŽ«FÂ¬F\Õ´YŠ˜sP¯Ö¦J–Z%C”€ŸZq¤ô¤\ëJ9õ§*ûR\Õ\\šv\ÓN\ÇLS¨›N(\nj`¹\ÞüQp´\â—o\Z	=\à\ÓX…\é@$¨\ëQ4™¦4§š‡yõ§a\\³œÔ±•\Ç5UÞ¥)\r^:T\Ê\ß.1Uccš°­\Ïð d\Ê*E TA¥8GzBd\ÊsRv\ëQƒŽ•\"tÉ¦C)â™šp5D6-œ\Ñ\Í\0›JI¦\æÃµ!£4™¤0\Ï\Òiri¦™CO­1¹©;SV„&C/Ü¬\rUC)õ­ùòªH¬‹\ÄYÐ€0kh˜\Ô\Ô\ä&>\\¼ô¨$Ú²ƒŒf¯^ÀRS\ÆESu}\áÈ­\â\ÎI+\n¼9©\á;£Á\ëP \ÈÀ\àŠ–ƒƒVf\Ç(\n5‹ª¸õ­©¾U\Ís\ZÔ¤ž´„c?}é†œy\ëM4\0†ÒšJ\0Jj\r%\0QE\0QE\0-Q@Å¢Š(h¢Š\0CEŠ\0))h ‘J¥˜OZeH¢˜‡Š°•\Ôñ\Õ!2t©× ¨PUÒš$P)ø\â\nZbÂ›Šy¤4ô©¦Ó4WštR\nZbõ¤¥4R\r%;¦ž(E ¦µ-4š†7JŒ\Ó\Ø\ÔdÔ³H‘IÖª\ÍV$j©;Ôš\"Á\â²n›­i\\\È+\îA\Í\\P›2\îÛ“X·-É­;©z\ÖE\Ãü\ÇÒº\"ŒdÊ§­“©§b¨\Å&)h ´bŠ\0\r%\Òf€4\Ú\r4š\0Bi„Ò“Q– \ÝHZ›º˜Z€$\ÝIº¢\ßFú\0›u&\ê‹}(j\0“uU»ù¢56\êŠ~c\"š0Û‚išY\Ò\Æ9d\à5¡b¡·ˆ®*Š\ÊFñAJ(#f¤\Õ-H½j%&¥\ÉH;T@Ô«ƒÖ‘D‰S\'Z…p\rL´€³XŒ\ÕX\ÍYŒ\ÑaÜµYŒŠ¤‡¬D\Ü\Òh´Ë‹õ©–ª«\Z±\Ü:\Ô4h™:š~\êŒbŸ¸Rôçš”\Z‰n\Õ\"ŽizŠzŒ\Ò(\íS,dr)\0\Â\0¦#­N\Ê\ç½B‰\é@¶q“P;\àT\ï’pj¬‡\0\Ó@D\Óc5úI \æ¢\rTIi$©\ÕD«QóRR,\ÆsS§\Þ÷¨b@\rZTš\0z†\ïÒ¥@;R\"f¬$@š,&\Æ*f¦AJ\à¼fˆlŠv)\0¥\è)Ø€\Å&)sMÝš4\ÒSˆô¤ TŒm%.)§4Š½! “šLæˆh\r(ÉªBcYA#­Tš\Ì8`¼\Z\Ð\0qLx\Î\íÃ½m	]ý«G#¬‹ˆv8aÒ»}N\Ë(\ÎMr·Q0\ïZ\Äç™šy;–¦„w5Á\Ï\'\"¤„\Íh`\Ç\\¾\"5\É\ên¬Çš\ê\ï1öcô®&ô\æR3\Æi+Ÿja§ŠC\Í\Zi)M%\ÒRšJ\0(¢Š\0(¢Š\0ZZJ(h¢Š-Q@h \Ñ@RPH”\nCÒL\n‘j:‘iˆ‘*x\ê©\ãH–XŽ§b§H‘\âH SºS\Â)\r8\ÓM >”4‚†4‚¼\ÛC…- ¥ªB\ÒPM&ê‘¡Àõ¤&›ºšZ¤)4\Æj\n˜Re$!nj743b«\É&*YªWªb¤š\\Vm\Ô\Ø\Ò+\ÝMŽõ‰w?^j\Í\Ý\ÇZÆ¸›9­# ¸“9¬\é[,jyŸ5TŒ÷­‘“P(\Å(À9 R\âŒPIKŠ šo­8\Ó	ö “L&œMFZ€\ZÆ¢cNcQ3P\0Z˜\ÏMf\ëQ³P\ËÑ¾¡/Fú\0›}(zƒ~iw\Ðû\éŽr†™¾“w!32\ã‰\ròÂt>bi¶\ç\æd\ÛSfû±VG\n\â1O”Žˆ\ì)¤§`ô\Þ3Š’\Ñ\"Ô‚¢\\Ž\Õ\"œö\Å%Z•j!\Îh2\\b•‡r\ÊÔ€\âª-\Ât\Ï5*6NzŠbº.#T\èøªj\ãjUz\n¹y½NŠ¢’\àca[\"•ŠL»œT\ÑËŠ ¬EJ²db¥¢\Ó4\ã|óKœµTð¸\ÍK¾\Õ6-2\â6*u5N7\È\çƒV‘†K)2\Ò.\îOj™O\ÍAdc0GL\Ò\â\ïMc´S‘~l\çð ®OÒ\\ªý\ê”\ßt\Õù“$j”ñðy¦™óEF§š|ªK})¨3TI<ur\ã5V!W\à“©h¤Y‰r«h˜¡€aE[\à‘@›‹RŽ*5=}©wt÷¦Cd€“š\\ñQ‚WÞ—’)ˆ~\ê\\\æ£\æŒ\àdô¦I)S)3ž‡5|ž´†J\Å­W.@$ñŠ`ËœÒ°\É\Í0\Ó|\Üö \Ü\n’„=i\r8ð1Þ˜y bu5\"\ÓTv§ªóÖ©\Ø\ä\\\æž\Ã1ñÖ‘:‘R*\í\ïš\Ú(\ÂEWˆ´,q\\^¯“;c¡®úQ¾2\Åk‰û\æ\'µjŒ$s®˜~;\Ô\Ñ.2)ˆs)\Ïjx8rjÌ™SP“d&¸»†\Ý+}k­\Ö÷&¸ö\å›\ëHC{\ÓM<SH cM%)¤ 4”¦’Q@Q@EP\ÑEZ(¢€\ÑA¢€\n(¢‚D=( ô S{T‹Ò£©¥1¥O@•<uH–YŽ¦u8HD‹N¦¨§S$i„S! £¨\r\Å@\Ï@zò\îwò7Qº«\ï4y”\\9	É¤&¡ó)¦J.„Å±M-P™)†JW)D˜µD\ÏQ´•\Èi\\«¼žõRYi’MŒóTf¸½!Ž¸›žµ•yq\ÇZ}\Í\È\çšÆ»¹\Ü:Ö±DÉ]\Üg<\Öl\Óg4\é\å\ÎyªNù­’1lóQ\Ò\Ð)ˆJQF)@¦@¢@HzR\Ò”€i\éQš\Ôdõ É¨‰©\Z¡f˜v¨Y©\ÏP±\Å\05ž¢g¤v\æ£cLC·Ñ¾¡\Í¦Á\éw\Ô±Kš,+“o¥šƒ4ŠVËœ\ÔPœ:\Ôò|À\Õu8U\èaÿ\0T)\Ô\Ø>kpGJq¬Ù¼v\ZA )\íMf\"£{³\íJÀ\åb\Ê\å~õ+Lªz\ÖT—²?~*13ÖŸ)<æ¤—xj»\\\î\êjžö=M\"\É\Î\0Ï­>Qsš1\\óÒ¯\Ã?#š\ÄYQ9$\æ¦K¶<Ç­#}$^¤\ÓüÜž„“\ÈO\'Š°—0	¥\ÊW9·\ÃÖ¬¬\Ãk\r/\Ð\Z³ú{R±jf\ÂHÆ¥IqÖ²üwý*\Äw+\'CJ\Å)šþj0y©Uº`\Ö\\SvãŠ²³Žõ-\Z©\ZhzsV¢|V4W8\Ï~\ÍfÑ¢fªIÈ«[ò+66\ÈµN%Á¦\Å\\Ñšw&™lAL\Ñ#a=)  ~[\éU¦\ÍJ$Rúô¨ðI¦32a‡5\ZñV\'n{\Õpi’Y‡šÒ·›\0\ç ’ªãž”1Ü¿\0©Qò~•R)G\\ñOS“×¥!ði»ŽER[ §\æ8©\rÊ“\Ã\nv±x6E\"¹\ÜESz\Ód¸$|§‰lº\Ò\Ô\ÔM4}¸¬·½d<\æ«I©€ÜŠv!³gí‘©ùZ˜ÚŠg°~Ø„’\Ç\Ü\ï\'\ËqÓ¹ª\å1ºo1\ÚßVþ\Ð/&\Þ\Þ\Õ\Î=\ì\Ð7#p¡/‹’C\'ÒŽQsLWŒ9È«p^\Æ\Ã\à\×—\Ï8r}sSÅ©–e\Ù\Ôu\Í.B”\Î\Ô7\ëL,£œ\Ö5¦¬KñÚ®\Åx\Ø5.%)”\Ð\ç4ôû\ÕOœd}1S·ši\Ù(\àÔª$óÚ¦^kh£1@À5\Æxˆm¸>õ\ÚpT\×\â°PÃ¥hŒ›9–M®M$mœ\Ò\ïßœt¦#\È5FL\Ç\Ö\ç\Â\\\É<š\ÛÖ›.Ebbi¦œx¦\ã=(¦’”\ÒP\ZJSI@‚Š( Š( ¢–Š\0(¢Š-Q@h¥¢€Š( ‘J¥˜Ú¤^•j‘zS*Tñ\Ô	V#ªD²\Äu8¨#8ªB%Zu5i\Ô\É\Zi)Æ\n\0÷Æ“Þ“Ìª/?½\'\Ú=\ëÆ¹\ëX¿\æ\ÓL¾õG\Ï÷¦™ý\è¸\Ì\Þô\Ó7½P7õ¦›zh™½\ê#7½R7j¸÷¦\çŸÞ«Ip}j“\Ü\ã½V–\ïÞ©!\\µ-Ï½g\Ü]{\Õi®òO5Fk‚{\Õ\Æ$6>\â\èó\ÍfO99\æ–isÞ¨\Ë&ke6\ÆK!5hcšJ³1hQ@\Å´‚–…%-\0RR\ÒR­Q5J\ÕPoUÞ¬=Wz`DçŠ­!«Ug \ÔEªG¨R$nh\Í ¥¦!sB«9\â“\Åh\ÙÁ‘’)6REQnØ¦´ekNPp*œ§=ªn[Ž…R85>aV\Ê\äZ¬\à©ª3±»fsj)\í\ÇAQXôj™²=\êYªØ«<œc85Ÿ\"–\'œÖ„ö\á\ÆsŠ¨a#€zSB‘[GJh9Œ\Z±±‡QO‚pWšw\"\Åe w©T—\ÎÓŠ‘\íOP§\Í÷{u¢\â³h^X\æƒ+ò­F\êÃ¨4‰w\n\0˜Ný\é)õ¨\Û>´\Ìõ¦¿haR-\Û\n¬w\ZQš,	³J\æ\ïf§‹Su˜qXû€û¹<R\ã4¬>c ‹P•°j\Ô7Ž-‘\\ül¸\à>µn sÒ¥£E3£†\ï>\ãÖ´ Oë˜†\àÇŸ–´\í\î²À\çZÍ£h\Ì\ê!Ÿl|Õ¸d8¬K[€\Êù`jõ¼¿8\Åg$ms ¶¥Gu(X½Gü™\ÍVÔ¦+Á©±¨Ä›œ\n”’WšÎŽBG\'­+2sL®J÷ª¹\"§¸q\È\ÆMVf\â‚4rm9©c“q<\Ö{HBû\ÓRð!9â‚\æ²\Üa±šY¯V$\rÕ«o	‘Ò\æ³\r\Îq\ìi¨™¹ä¹’C½›Ò£SYG\'\×5‘uu$ŽTª;\Öt÷“\ædJµ7P\êc\Ö-ºLQ6»Á;óŠ\â\ä\Ô\åi¿\Úr/5\\¦n¡\ÖK\â&W5JMj0\Øný\ë®Ý»`šŒ—fý\äŠÒŸ*\'œ\Þ\Z¼np$r«œ\îýkžYm\Ð\ãvOµOš\ç) Uô4\ì\Ì\ÚkÏ·\Îü1@.€¾k1nZ.6q\êi–;\Óy?Z,5ŒÀ¤óUT\"’yÌ˜§ùR“ó)X«š\Î\áƒÊš°º¤±ùOÖ°\Ã\È\nr½9o\æ$©\\\Ò\å3;-7^1³\ä–\é]%¥Ðœð¯7±½˜õ|ÐŽk²\ÒuE‘I/½+1Ñƒ#‘…\íR€T\Õx›\n\n’A\íV\æ<úU¢Y&0¦¸oI™ö\×p¤óšóÿ\0¾.ú÷ªD3€«š‚R«l\ÓÝ²\0ª:œ¾\\*Œ\ÎwQ¸/9ªY\'5f+9n§$Fkv\Ó\Ã,\ëóT65\Îg\'½4\äô®Í¼#”\È\Ï\êz4¶.~SEÁÅ­Ì¶À\ÓqŽ”\ãóqŽi;S$i¤¥4”À(¢Š\0(¢Š\0Z(¥ Š( aEPEPEPH‡¥ƒÒL\íR/JŽž½)ˆ™*\Äu]*\ÄuH–YŽ¦u0ªD’­>˜´úb\Zh \Ñ@¦÷\Üõ¦ý·Þ°^ôú\Ó>\ÚqÖ¼®C\Ó\æ:{\ïMk\ßö«\í¾ôy\ïO\\\Æ\á½÷¨þ\Ûþ\Õa›\Ïz\íœõ§\Ê.c¡7¹\Ç4Æ¼ÿ\0j°\Åß½\èz\Õr‡1¨÷~õV[œ\Õs\ïQ´õI\äY’~j¬“f¢yª“&­\"$•Y9ž£cTMÀQH){\ÐŠZAK@(¤¥Z(¢€\n(¢€\Õ©Z¢4\ÔS½@ô^J®õbJ®ôYºš‰ªV\ëQ5R%¢Š)ˆ|C/Z\Ö\çjVT\'ç«¯.\È\ÅD [|8ª\ÒEM·Ÿ{c5k¨6(˜\È5V\épEk4u|¸5i˜\É\Z:üz\n‘‡½G§ÿ\0Ç­M´b“A!>™¨\Â\àdŽMXž”\ásJ\åX…c\rO[P\Ç9Á«+Zš4P:QqòGlzEL¶‰\Ù@\ÍYAOùe˜\nW\ZE\Òc”rj\áøó\×õv]F\Þ.\Éöª\íªg\îÎ\Ù2H„x}3÷)ðú÷©Í¨¾:Î£:„˜\'4\îÈ²\"}\0ÿ\0\Õi4Ic=jà¿ÿ\0)\â\ì¿\Þj ²2š\ÊxúÇŸÂ™\å¿BŒ?\n\Þ&I\Êùªò,©÷—4sX=šeu\à‡\Ïµ*–ƒ\Å?ÏŒqR\ìŽ`\Z3ŠW(+>\áW •›\0tª\äJ•7(\ÊÔ²¢kip	Ç­l\ÙÏ±Àc\\\Üƒœb´\ínT°$\Ô3h\èu‘N¡x<\Õ\rF\ãpª­\æmª\ÒO\æJFj,l™zÝŠÐˆn\ÅfÙœ•­\ÛxL\Òl´g]¦Óš\Ï|†­Û»Bñ\çÒ±fB\r%¢»“š­!ù¶‘Ö­2œ\Ô3©<úU&CD[‚p1U¦¹•\É\Ç#Ö¤•\çšg\Ù\Ù[\å\Î=*“3q)¼\äœ\Ö\\\ï(c°.\rmIa$­÷qPMeº\î¸qžÂª\ä8\\\Âh$s’\Ä})¦P\Ò\ÄzV³\\\ÂWEº…˜ª\äD«LžDŒ\Èm\î\'oº\Ã(Ò§‘¾|ÖŠÝ¸9ž—LÏ»JL\\¨¤š+)j_\ì‰\Üõaô­2J\Ãl˜ö©Z;\àw† vEô	Š­cõ«Qi’Â¸<ý)\Æ\îúý\ìYA­®\ìJ\n~®>DH¶Ó¶)\ãÖ§]*\æcóôö«VÚ‚Jp²W£wa•|R¸\ÔL\ØôU€|\Ìw¢§])T‚‰Z\Ñ\Æ+9\ÞOz°…„„h\æ‰ŒmmŸP+^\Â@7;g\ÐÔŠ²œù|/z± „’dŸJ¤\Èh×²pÀ(;Õ¶\0z\Õkv,¹	´õa¹\0\Ó%’¢€˜ö¯8ñk\í{×£\Ärú\nó7üMÖ©%te’Y€ÖŸ-\Éi\Åhivÿ\0h”qš\êaÓ•Tey¨”¬]*IœÖ—¡”^~•\ÐC`qŠ\ÒK`¸À§ù@sšÅ»±§\Ê\Êq[€\áH\âªø—@Š{\r\ê>lU\é®c‡\Ì*i\î\âÁ¹\Ïqdb!tx^£jm.\Ù{fª}+\Å1m»s\ïX\â¶Gk!\r4Ó4\ÓQE\0QE\0´QE\0-Q@Å¢Š(\r\Z(\0¤¥¤ =(”\n`(§¯Ze=iˆ™j\Äu]j\ÄuH–YŽ§Z‚:œvªD’­?µFµ\'jb\Zi)M%\0mšO´\ÖwM3W\rŽÛš\äSZ\ìc­g4\Õ—´\ì+š/w\ÏŠAt}k\Î\Ä\ä\ZrJÞ´\ìMÍ¡u\êiE\Èõ¬‘#w4õsNÁsP\Ü)\ÕEXÓ²i\ØF\\Šaj‡š\\\ÐóE&)hE- ¥ ¥\ïIKÞ€R\Ò\nZQE\0QI@\rjªF¨Ú€!z\êw¨€+\ÉUž¬IUÞ€+7SQµH\ÝMD\ÕD±´QE1‹ïŠ·\')U\"ûõpŒ­C\Ü\Öbm²V´\r•¬qþ·«j>J–l‰«;P\ê+Dðk>û™ˆ²&‹\ÖCm ©)°°/ÒC\nzŽ)•\"ô©,rõ©\×=EV\r\Í>IŒqñÖŠB^jkl»a’³\çº¥b¢–BŠ\ÆFåª¤²K>H\ÈQ\éT‘œ™`\Í\r¸ù>w§\Å\Åä€•Ú”ºe¼o‚\ã\'ÞºlG`\ÇAV’3mœ\Å\ä&)¼”lšwØ¤\nK¶Õ›X_K\æò\àñVµh˜Y6Á\Î+D‘„›0¤d.\0j‘\êû•	Z\Ï\r°gÂ½#\Â\ZtzŽ’Y\ãŸ—4(‹œmµ\ä’Iµ2H\íZð\\,„G0\ÇÖ£Ô´\ì¥ºŒ«œ\ã\ë]§¢#Û‡Œmr*eXM˜w1°m€`\ÖT=»eI\Åh\Çr\Örù\0p	©\ä†9Ae9²73!½Þ¸nµef\â³nm\Ì3¼\nt3gŠ™©\Øj·\r\Ç5’dÕˆ¤æ¥—sr;Ÿ–¥‹\æl\ÖT/»ŠÕ³ù˜\n†im\éË’+£µ‹+š\Å\Óc\é]-¢\0 VM›^\ÄR@YqY7vŠ\éY\0^xC”®+œ‹Yj#jy\ÏJ\èf¶µRž\"©13­\ÂúTr\0ª\nŽ{Ö„žõ—©J-\âù~ñ«L“3SÔž/’Xõ¬Ÿ!Ý¼Ù‰f=‰­(¬ŽMÄ‡9¨dC;•ŒòOJ¢YBiv€–\ëóŸjŠ\áfH~cÚº;FHc2Ì¹p3Y\r\Ûu‚¸ùGj\Ö(\å©&Œ•·¼‘~\\„õ¤ÎŠB6}kW\Ä7-¦À#„‘Ö¹»).¢Bå”žqW\Êc\ÎÍ‹{k÷>nX2ŽIg©j\\´J¬e^\Õ\è¶Z\\cF·»\Ú>`3š\â5t:gŠ!¸·#\ça•JûF>\r}\áÅ¨[2û‘ZJ,uH\Ã.ÌŽÂº\Ë\Ý&\ÏU²Œ\Íe\\±\á›\Í\å®lX˜‡8¬\çhM²;\Ý*k\æÚ’{\â¬iú«ð¬~~\à\Ôz^¸e`—+\É\àÕ«\Í9‹‹QœòÀVM17l\î’U\ÆkB\Îsš|O\Èxô®Š\È\áR\Í\rKu\Ø99\Í[\0>*¬h\0ršd4X‹R¿AQ\àqŠ“\ï\n´e$K1Ÿ¥y‡‹ÿ\0\ä$\Õ\é\ê0„W™x\É\n\êSZ-Œš¹w\Âvû£ÝŠ\êB\ÖW†­ü5_Öµ³XLé¢¬ªº…Ç‘{U’\ÕGUˆ\É	\àô¨H\èR\Ô\á5=Rw»X\ã5\Òi33\Ùü\ä\ç\×1{\0C\×5\Òi\ë\åY\çÚše\Í^\'\â\Óþ”\ßZ\æ»Vÿ\0Š%v\ßZÁ=+¢\'‘SIXi¦šq¦š¢BŠ( Š( ¢Š(h¢Š-Q@h \Ñ@RPHQEÀZ‘zTU\"ô¦\"d«\Õt«\Õ\"Yf:œv¨#©\Çj¤I*\Ó\ÇJjAÒ˜€\ÒPh Lžô\Ó/½S7\"£k€{\×%Ž²\ã\Ì=j³ËžõMšE\É4\ÄL†¦Z…*e 	–¥Z‰*U d«J)( C…(¤\áÖ˜\n)i-\0(¥¤´\0´´”´€QKH)h\0¢Š\0-!¥¤=(Æ¨Ú¤jŒ\Ð/P=Nõ\Ð2¼•^J³%Vz	+7SQ5JýMD\ÕDŒ¢Š)€\ä8aWsûº¢:\Õ\È\ÎW,\Òp¿½«n1ªJŸ½¢ƒŠƒ¡l!F\äjù<\Z¨ûŠ‘uF~”w¥\'¤¤p\Å(¤ \Ò(œõ4ö&E0*Jž¬\Ú\Ç\Ý |\Ô\Ó:Ð 8\Å1X¼4Ö‰ƒ\Ç\Ó\ÐVŒZ«kxT\ÔVŠ]F\ã\çQŠ¤É”Nvô}‹Só³ò“\Íh›¨.m\Ëezt­\ìm5°\Ø©¢#›¢š1t›9\é¬aß¿ŒÒ·l<F\ÚM™··P=«\á…`L³ƒƒÀ«¡YùD\Ü\âŸ8{giV÷^\"\×\Ö\îñøSÆ»k\É _²ü£Ö± ²ÚžU¸ÙŽ\â‡\Ó\Ì\ÊC1\Êû\Ô9–¨3\Äv\\B\ÒF\Ãx\éŠ\å\íu`>[\äÞº«\í(óµ\Ï=«\ëIeSµrj.h£a\'–;¨w&3Y\àlc=½œ\Ð>XzT¯˜\Ù\Æ(¸4B†¬Fj»XRGÖ“š6\Ý:\ÖõŒ}+OM\ÄWMe³‘\Óm\Ø(x®Š\ÛE`Z®Ðµ³jý+6jÖ†ƒ€PT2ô©3•¨\ÏJ’\"S‘A\íU\ä·\ï\ÛÒ¯2sM`¡h¸4a_*Á3\n\ç\âµ7\×\r,Ÿ\êœžõ\Ôj\Öÿ\0jUE\éÞ³/R\r:\Þ;v?#}\ê´\Ä\Ñ\Ë\ë7Ñ«yVœ¯N*}Â†`ž¤\Õ;û47‡ì€•<æ¤´·™\Ì\Ä\Z\Ñ2nuC\Æ\Ê1’+—·\×[a À\ÏSZ\Ö\Í(\ä7J§ª\éwx–¼9âµ‹9§M‘x‡LKõ/\È\Çj\äì´™\à¾XÙŠ\Æ[“]ZÍ¨[Cµ -Y÷\ÜK ÿ\0G*\ßJ\ÕH\çt\Ù\×\Üx…—\rœ#1‚kXŸU\×\á	\ÎdûPòU\Ùd\í]o…ô«}*3suÌ¬8•|\è…MIŒ$kp\0›¨Ê†”Žµ\æ°e%#Z¤a¸¹\à“Þ°©#²•3*\ïB…\Ô\É½©¶=®b™~^æµ£µh¤\Û2­X“Iß‡B6úV.GZ‰V\Ùa$4G\nkbÛ Áª‘\é\ê¸\Åh\ÛA·›c±f0qVb¦\"qR \Å+’\Ñd\n–3\ÅA»S\Ç÷kX\Í§\Ý>µÀx\Î\Ü5\Ôg\î®ú3\Î+•ñm¡g€\ï[t1\êZÒE¦F¸À\ÛSn\Çz‚\ßä²ˆJ’	#ópO5„ŽˆlÀ\ÉË¥Í³gÒ®>Ò£*µ\Î~\ÎÂ‘´w8\Èw\ß\ã\ëmÀ†Àö\âªrú‘\ã½X\Ö\å\Ùc¾(KSZÒ´O5×œ5\Ëw9¬“\ÐU\ÝIüË–ú\Õ#]\Øñå«¸\ÓIJi*‰\nJ(=((¢Š\0Z(¥ Š( b\ÑE\0†Š\r\0QE%QL\ày¦Šp\ëLD\ÉVcª\ÉÚ¬\ÇT‰e˜\ê\Â\Õx\ê\Â\Õ\"IVž)‹O¦!(4´†€9Æ—­6œ+š\ÇMÇ¥N† J™:\Ð2t2Š…je¤ª*U¨Ö¤ZJ´\à)«Nv)E%˜´”´\0¢—‚@\n.)- \n\\R\nZ\01EPHzR\Ò”cTf¤jŒ\ÐN*;\Ô@\ÊòUi:U™*´($¬ãš…Hõª\ÌQŠ(¦ j\ÔªÕˆ\rK.%ÔˆÕŒ\àcµG\"£’L\Zƒ¡lJ\í\ÅAn394\Ã.jKA—&‚Yq¹4”¦R<\n]¢S©ƒm\n1\Å8\nv(7P{Tƒ#Š¶WŠaNE1m[@\Õ|`p*X\ßmE¸\Õ\É\ãr5È¤“ŽõR—Š¿\è4ŠÐ•—/•\Ïfrû\È\æ¡I\Ðö©V\ã(¸\ËxŽ*¥\Ä\ÅyZf5©~´‚\åY%,Nj¶ð\äU©#\ëT&	5D¶Ax\è¹8¬™f\Ã|µ5\ä\Ä\äUEóA€\ä\çÖŸ\æŽôô^hcH\×ÓÖº‹%\à\n\æ4\Ãó\n\ê,œVR:`x8´\ísÁ¬¸\ÎH\ÅjÚœ¨¨5kBþp¼S	\Í(-%&DFšc¯a\Ð\Ó\Íp3I‡R¥Â¬p“Žk\Z{xn”ù\Ã5·wxN+šV‹*j¢§sP¨TP\0\ïY¬\äM\íZR.j¤¶‡¨\ëZ\"H\Ñ\ÙNðj\Â\Í\"©MUP\ÈpEMd\ã¥]\Ä\Òd\éx\é€\Ê\rX[È²”™>\Õq\îÀ\Æj\ÂÙ£vò)óéŽ¶”\íc\å\'·±–”Â¯A\n®*X\áT˜ñÁ£˜=š Š\ÑSh*z\æ¬,+œ( J°\Èp½8\'GSY·r’±Qc;ˆ##Þ¬$;zT\ëT…j¹_\ÊRzS\Ö0½*`œ\æ—mH\\AœS—­(RSBd Š±LUh\'5:u­`c2u\æ³u\ØDÐ¦GJ\Ó^œ\Õ\rP\î!Eo\Ðç¶¦M\Ì\ÂAžÂ°b\Ô]\ï\Ó\ÆkC\\s;}«\È”1®ypŽ‡kk9‘&¤Ÿ\æˆ\ÖE­\Ö1ƒZ1K\æPh•™“¸Løæ°¼QrV\"¼WW:ˆ·5yßŠ¯7HÀ\Z¸£,Dô8ù\Û|\ÌjŽ\Ôó\Î\ãQ\ã²<\í\Ä4”¦’˜¥”\0”QE\0--%\0¹£‚œ(QE\0†Š\r\0QE%…QL\áÖ˜)\ã­1%YŒ\Õd\íV#ªBe¨ù«U\ã«T‰$SR\ni\â™\"â“­8ô¦\Ð/N\íM§VA\"ñŠ™j\íS¥ID\ÉS-B•2\Òe\éR(¨×¥J´‘E8SE<P!i@¤¢˜‡b€(¥\0§R\nZ\0QKÞR\ÐŠZAKHŠ( Ž´Q@\È\Øv¨\Øb¥nµP/P=Nõ\Ði*¼*Ì•Y\è³õ¨Ú¤nµU2Š( \0T±œQ\nzœ\Zã¹¥qš¯;\áªXOËŠ†\àVf\é\èD¯“W¬ø¬\ÑÁ­CMˆ¸h„ÒŽ•%!\Ë\ÍH£Nµ2ŠL¤(Zv\Þi\ê´ýœ\Ð{i\É\ç5&Ê‘R€dBOj\Äq\æ§H†hEh\íFsV’Û¥XH\ÅNŠ8 ´ˆ¢ƒÚ¬¬ ”õ\íN$ŠE˜…F\à\n•W•±LL­3c<V]\ãðkFcÁ¬›žI¦fÑ–ë¸œ\ÓÚ¬È¸5u ,1FMJ£À1O“)\ì¥\Ø\àbºK93·\ÊB\Øa[º|¤sPÑ´\ÕÚœ¯=kVÓ‚bYM»±lÿ\00¬Ù·C_ ¨\È\ÅHû±Qµ;j7¦\í\àŒÓ»Ò·J†RT0\Å`j¶d,§\"º\ëMž*cHÇªm\ÎjQ\â¸\äVÝ†\ÂH!SŠ»’\ÑT\Ù+?JF\Ò70+ùV¢\"–\Ïz°‘œ\äQqlb}‚t9Z–8\çSÊš\ÝHýEJ#RpV€¹\Ë\ÝMYHŸ½iSÒž!_J5”R6«qØŠ°#µ8\0)\n\ä\">sN+š~(\Û@\íæŠ—\ÓH©\Î\Ôb”ŒRv¤1\ë\Æ=\ê\Ì#5]:\n³Z\Ú3%ÀÚ²oÜ½\Øµ¡¬Í»\î\Î{V\Ïc¦>µl\Ò\ÇÒ°&6\Åw·v\Ë$\'Š\å\ïm\Ärp+žL\í§±³•8­‹&%À¬ˆ\rZ\Ö<¾hFY\\]]„v\ì\Ù\í^M\â	¼\É\Øû×¥øšq«×“jrï•‡½myµfÛ³(‘\Ç^´\Æ\íNji­FšJSILAEPz1E-\0%R\Ð\np¦Šp aEP\Z3A\ëI@šJ( –QE4NšJ˜‹j\Äf«\'J±R%–\ã5aj¼uaj‰ž)‹RS$3IKE\0r\Ý)Ãši§-`t’/j™j©V¤d\è*e¨S¥N”2*E\ZT«@\É\0§Mú\Å\ÅŠJ))ER\Ò\nZ\0QKŠAN\0R\ÒP(i)i)\0´QE\Ýj6©­F\Ô\ÔS½@ôZJ®õbJ®ôYº\ÔmR7Zª‰EPŠPpi\'z©~\Ù\ÆE>x‰^Ý°Â´B†QPme4lJ¹jvõ©\Ú\ÇJ‰°‡•Ë±kŒŠPi¨wGJ)	/<l0*¸©\ã\è)\Z\"\Üc5.\Îj8ªÂŒš\0M”õý´¤\ÏJ°£¢Œb§Q\ÍH•5*ŒS¤\Í\"’$‚i€\Ò hG5VSR»UYZ˜™^w8 V|Ç­\\•º\Õ	š¨‹$8\'=j¹\É5,§&¢€°½)@\Í6œ\r!¡\Åké¯–\éX\Êy­	6°¤\Í`vV8\0Ò·l\×$\Z\çô\ÆÞ¢·\í[\n\Å\ît-p@AM<ÒŽPS3L\Í\î.(\Í&h# œ\Ð)E4!’Ä²EQ–\Ì/ V¦)Œ£¡¦)‹\r\ÅHŽ\r\\–Ú«°y¢\ã&‹>µep\rPi©Ñ½è¸¹K€)\éN¨ª]õW\"\Â\â”\nLÓ¢\â°\Ú)h¤1)¦Mj‘Œ~i6’)Ç¥ 4ƒ\0U˜¸¨PejX\ëx\Ìt§b’zV\\$´\ìÝªý\ìa5ŸúÖ’v1Š».\È\ã\É9®cQkb\îR±c<š\È6m3f¹ž\ç|‘Z[Š×²]¨Iªði\Å[šµw\"\Û[\ÜU\ÅRvG!\ã\à¨<×œ\Ì\Û\ä-]‰\ïL\×3Þ¹–­¢6n\ìi<\æšÜž)M6¬¦Ó! ¢Š(\0¢Š(\0¢Š(\0\Å-P1h¢Š\0CÖ’”õ¤ ¥\ZJ	b\æŠJZhœ4S‡Zb&CV\"ª\ÉÒ¬\ÅT‰e¨\êÂš¯N½j‰TÔ‚¢^µ(\éL‘h¢Š\0\å9i¦œµ\ÐHµ2TKÚ¦N•%§J*©Ò€&J•j$©V€$úb\Ó\è¢@§PJ”P\0)h¢€\0)h´\0”¢Š’–Š\0(¢ŠC\Ýj6©[¥Dh¨§z\è´•]\êÄ•^N”Yº\ÔmR7Zª‰E(¥ ÒšZ(¶°­[vÜ¢²´,\ä\éRË‹/2|µJe5£\ËU\ä5&\ËT2\Ý\Î\ÜT¢¢v5Hh\'© \"¥CÒ«­KÁ¤j™~#V\Õ(š¬\Æ\Ù\"\\¶§Òš¯\Å=y¤1\ãÚ¤^”Å©TR)SN\É8¦t¥\ÝH¡ù¦;R¨\äj`#½U–LÔ²5U‘©’\Ù­Áª35Y™º\Õ)\Z¨’¨\Å=ŽM0š(¥¦KœP!\Ã9­>¢³†I¥f„ºâ¥š@\ë4’B­tv¼‘\\öž0‹Š\è,ñÁ¬¤t\Çca>\å34\äm\ÉQšW!¡Ô¢‘ii@\ëM§\Å\Å\ÓA§uª%‘\ÍA$g=*\Ó.)Ž¿.i\r2‹DI¤\0Š²W­G§&‚\îœu«\n\Ù\éUˆ\ç=©\èsÓŠW&ÅœZp5\\g5 \ÎsE\ÅbJZ4\í\Ô\îM…4Ö¤f\æšZ‚¬•FE0¶N)\ëòÐ‰d±œpje\à{\Ô#±©`]0G<\ÙBúB\\/jddbª]\Üf\ç9\àS\à”?CJ£\ÔT•Êš…\Ã	vŠ³`ÅºŠG²ó$.\Õ=¤[$\â²J\ì\ím$Zu¹<W+\â]@E\0\Ø5\Ójw¾[Ò¼³\Äú§˜\ì\ï]\n\'ZŒ\æõ	ŒÓ±&©*Gm\ìI¨\ÍY\Î4\ÓiÔ†€¸\ÓHiM! BQE\0QE\0QE\0´QEŠ( =i)OZJ\0CEµ­- \ëKL\0S…6œ)ˆ•*\ÌuY*\ÌuH–ZŒ\Ô\ëU\ã©Ö©J½jQÒ¢Z‘zS´´”\n\0\æ\r*\ÓM9k •jd¨R¦Z’‰’¦J‰*e 	R¥Z*U ­>‘iÂ\0§RQ@¢RŠ\0QJ)( ´‚–€\n\n\0Z( u Š\r! ¡\Z¢4ö¨\Í\0Dõ\Ô\ïP= +\ÉU¤\éV$ªòt \n\ÍÖ£j•\êª$AKH)h\0¤¥¤ ©­\ßk\n‚œ‡•†™½\å)¬\ß5S·˜\0j\Ór3RÍ¢Æ¿Zwj˜\ã\ä9€zÔ©Ö¢^)\ëÖ“-’­Fj’\Z³\â‘E\Ån•:\Z¦\Z§©\rTÔª\Õµ<iLiqMS\ÅóH`j9)\Ìj64Á\Èj¬†¬Jjœ¦™¯1\ëT¤5bSÖª¹ª$Œši¡¹¦g\Î§c$Ty©c^E!–bŒZöm\ÇŸoH\ÍoZ\'\0Rf‘5,\ÜZÛ·l+\Ñ6ýkR=\ë&tGcf6\ÂRª±\ÈÝªEcÞ¤m«T£¥@¸4ð\ÛÖ™–Ò˜<RÂœ))¦C\Ó[¦)i\Í\0D\ãšc\0g¥LTSvƒ@\îDSÓ¥0\çøjV)¬¹¤PÑœT‹œu¦H€%\Í&\êg½#5°\âi	¨\ËR 	TóSj¸\äT\Ñô«Š3™dš†\î]–\ÌG¥<p3\éYz­\ÖÈŠú\×B\Ñ\ÏVc´­3¿=\êÝd\äÓ­,¿q»¹©\Ä[+)\ê\Íi«\"\Øm\ÑñN„ˆÁcQFBŽjž«©%´3U*hex§W	\0×—\êFyO=\ëW_Õ¾\Ñ+5\Ï_Z\Ø\ár»ñIGzCL4†ƒI@i\r)¤4\0”QE\0´”P ¥¤¢€Š( b\ÑE\0‡­%)¤ @{RQILBŽ´´ƒ­-\0-8SE(¦\"T«1\Õe\éS\ÇT‰e¸\êuª±Õ•\íT‰&Z‘zT+R\nb@£µ  `Ó–’œµ\ÐH•*\ÔkÖ¦Z’‰R§Z‰*e 	R¥ZjE 	V”SE8P!\ÔP)hE(¤\n\0p¥\ÑK@´\ÑN\0P( P\Ð:\Ñ@\ë@¤¥4†ŒjŒÔQš\0‰\ê©Þ zC+IU\ä\éVdª\Òt \n\ïPµLõU ¥¦\Ñ@E–€–Š(ñ¹R¥hCq¼b³)ñË·¾)5r\ã+\Z¬¼f™\ËUe¹\ã“RC&MM‹\æ.t4\å?5E¸\Ó\Ôçš’\âXJN*²\Z™‹E•jž6ª\Êjd<\Òi\Z¤Væ««sS!\â‘W,©âžEDŽ´¡¨°\î9FÆœçŠ\Ï\È%5RSVœ\Õ92J“µU\ÍO1\ëTÝ½\êˆb3bsQ’Ku©c^(\ã•ye¨Uy«zR)#F\Ùr+~\Ê<šÄ±\ÅoZ°\àT¶k_…ñŠÓ‚<õª–‰È­˜#\0k\'©º\Ø#„ö©dU¨1©\Ú\0Ã¥W).¢(\"ÔW>”²E°\Ôð¨t\Å5[)\î\à\n™9Pi$‹kš_nCC,ŠSH¼Ó½h±,J(¤ @qM\Æh¤4Àx\ëLojSM=*J\ZÆ˜Â”\ÓKS(qM\Îi©¡±@\'\Zil\ÒLL˜jX\Ï5\0æ§„c­icQ\èJ\ÒSžõ\Îjn\Ò\Þ\"™­«©@S\\\Í\Õ\ê\Û\Üns\Ínö9vgI\í·Q\ÜR6&°¢ñAyqUo<U\Z)Á\n&¼\ê\ÆÆ£¨\Çl‡\ØWŸ\ëúÿ\0›•\rUõ½Ë°V8<W9<¦Vçš¤Ži\Ê\ãf\È\äžô\ÓF\Þ:\Ó\Z´g`=i\r-!¦1¦’”\Ò\Z\0CHh4”(¢ƒÒ€\n)( ¢ŠZ\0(¢Š-”P\0i\r)¤ Ch¥4S´´ƒ­-\0œ:\ÒR­1¥O@*hê™f:²½ª´u:}j‘,™jAQ%J)’?µ  R\Ð1NZn)ÃŠÀ\è%^µ2õ¨WµL•%¥LµT\Èhu©¢SR) 	E:˜\r;4p§S¥\Ý@\n@Ô¨â–š\Z—4\0\áNÀis@ RK@@\ë@¥\â€\ÒRšC@\Æ5FjF¨Ú€\"z\êwª\îh•ZN•bCU¤4\Ô-S5B\Ô\É\Zz\ÑA\ëE\0(¥¤´\0QE\0RbŠ(f®[7\"©\àTð}\î)1£Ha…8q\ÅD„ŒT£­Aªd\Èjd5š‘M#DYCS)\æ«)©T\Ò(°­\ÍLò\ÕU52±\éÚ7qJ\Z¡\ÝNÝŠH\íQ»qH_4\ÒA¤26n*œ\Í\ÍXrj´¢™%Û“TÝª\ÔÃ“T\ä©!¨r\â®*ñT¢ÿ\0Z+D.N6L@p)TÒ•\È\Åp8¤hi\ØJ€kzÌ‚À\æ¹[i°\Ío\ØNÔ´\\duVxÈ­H\Ï#Ò¹\ëY\Ê\ãšØ·Ÿv+&Ö¨Ø€€F\r[iTµ—»{\ÓfºØ¹\r\Å4\Ì\ÜrÈ¬jKvß­a›\Ã#pp*\Ü72sŠ¤Á£NDW5Vh¶EI»ªY•L#¹¤Ð¯b8ÛO¨c\Î*e\ç5\0%4Ó©(\Ì\ÒNÀ¦(†šzRša&‘Cª3\Í9†)§Š0°¦3Ct¨\Ø(wæœ­Q¢ñ\íO@3\íT‘d\èI\"­)À¨!Án:T¬@\ÍmsM•®ˆÁ\Íp~\"˜¬„]¥\Ù- ô¯>ñ\äH}kS³{©—;X\ÕW¹•øf5$“oN\ÕXŽi\ä#g©¦Òµ4“M!É¤£8¤¦1i\r\Z\0i¤4¦\Ó\ÓIJi(\0 ô¢Š\0J)p(À –’Š\0Z)§P1(¢Š\0\r%-%IE\Ä­-\'JZ\0;S–“Šr\Ó ©£¨GJ™*‹Õ„¨#©”\Õ\"Y2T¢¢J”t¦H\áKM–€9€iÙ¦S…`t)\éS#UqR«b•†XV©‘ª²œŠ•M!–UªEj®­O@CÒ‡¨ÓƒŠO¾€õñFñ@7\Ò¨|\ÊP\â€\'\ßO\rU\Ã\npj\0œ585B­šplP¡©À\ÔjsN 4£šh§9 \0\ÓiÙ¤ c\Z£j‘DÆ€\"n•u©\Ü\â z\0­%W’¬\ÉU¤ \Z¡j•D\Ô\Ä4õ¢”\ÒPŠ(´\0RR\Ñ@	KIE0\n–†¨©\È~j–4h£g05VÆ¬+dÔ³X“©§ƒ\ÍD)\ês\ÍI¢,RƒUÁ©óH¢Âš6*8©È¤ûºP\ÍÒ˜R3f-HZ¡/F\ì\Ò\æ¨d1j†G¦\"„\ëÖ©2\ZÑg&«H•H–S_–\á}+Z“‘Yr\Ç\ÓEZ´¾H\Æ\Ù84\ÉZ\Z/Ö¢›Ë‹\ï0¦ú0„©±o\æûC»Â…93Enaß…pMkY\Ï\È ñ\\|6å›†#Þ·4ÛŸ#þt4L^§gmr^kf\Ö\ã§5\È\ÚËœñZÖ·\\Žj\Z:TŽ˜H\Äõ§IºU\ìeÁr\îÀj\ÍßœmðƒÖ¢\Åó6Cqykj\Ûe™Wñ§[jp?ú¹\Ç5\Êk:\'š\Û\ÙÙ³Ö¨X\Û\ÜZ¾\Ôv8û¢˜/3\Ó\í\ï€æ´–@ñ€Eqº,W—©Öº\ëh|¨ÀÝ“I±4J«Šz÷¢€qQa¦‘šwZN”a˜§æŠ0ŠŒŠ”\Ób‘DOQ0©Šû\Ó er3QµOŽµ\'=hDÜ‘\ÅL‹MÀü\î•¢3‘,!ú\ÒO \nM4Hc½S¹vß·±­bs\Èl²m!ô\ç:\ì\ÂI\ë^ƒ<¢+\'È¯;\ÔÂ¼\Ïõ­ŒŒ#\ëQ“\ÍK*\ÛÚ¡4a\Ò\ZS\Í!¡	¤¥¤ª˜¢–ƒ@\r4†”\Ò\Z\0i¤¥4”(¢Š\0(¢–€Š( \0S…&(\Í\n(¢€\nJ\\\ÓI BR\ÒfŠ`-(¦Ó…S–›NSLC\ÅN•2U!c\éS-@‡Š9ªD²d©J*L\ãŠbS© Ó‡4\å³N™KšÀ\è\r<5D)\à\Ð\Ê\Ø*½Vž­Š@YOUƒ\æœ€-\Í(j¬—Ì ;¨\ÝUÄ´¾e\0X\ÝJ\Z«y”\íø A©\áêª¿½H­He¥zxl\Õez•Z€,)©¨Ô€\â€&SN¨\ÔÓ R”dPH 5DjV54\ÔS9\Ð2´•]\êÄ•]\è»TG­J\ÕBõ¤¥=i(E\n)\0´”´”\0QE\0P¼5¸\É˜\"\ìG\å\ÍKsPG\Ê\â¤O—­&kØ§¯¢ƒt©jM 4õ54õ5%ƒR\Å@\r<76x¦3TfJŒ¾h(”½9M@5\"šArV\â |šs1¦÷ .1ºT,*W\êj\'li‰¿¥U’%~O¬<ê´“J¤e&Wp\ëÀ\'Ð»yzbG#ž\Ô\Õ†\\ñW\Ð\ÉÈ·\Ç=«Bs)½«6\ÝYˆ\0|µ»§ð:`\nL¸2Í¡qò\ã¥lYA$®8\âªÛ˜¸8\Åh­ôvÉ•<\Ô4t&tzm¤q\ãZš\êt]È¢¹‹mu‹\äž3N»Õ‰‘˜raJ\Ås\ZN\ä´|g\Û&(¦ódÁ¬£p\Î\ÂX›ö«¶zÃ–)p¸E\ï\ëR\ÑJW:»vX”2(\0Õ¸ð ¹\æ±,ï£¸\â5mƒÖµRPp?JÍ–\\†˜².\í¤\àû\Ó\è$J1š	\ÇZPqH\"šiæ›Š0Ša©N1L\Å+0ŠŒŠ”ŠaX.D\ëQ°\â¬\ÍBËšh›•\ÎwTŠ0)„#=\é\Ü\È5¢\"LŠGw\ÕFk‚\Òn\Ç—ó`\í¡•¶Z/BO¥i	_Íº±\\ª\Þ\\\äZ\îoñöÿ\0p:‹†‘³\ëZ2„\Ò¨\r8\ä÷\âšh”\Úu74\Ä%\'4¹¤¦!9¢–\Ò\r!¥&šNi€†’”\ÒPEPEP ¢Š(h£4f…fŒ\Ð\ZCJM! BQEÀ)Â›NZU¤¥Zb%*TK\ÍJ•HL°•:T	S¡¦I2Ô\ê45%P‡\nQH)Gzr¹£4™£5°üÒƒQÒƒ@†§¨sJ\r&\rN\ßPn¥\Ý\ï@Ñ¾ \Þ=h\Ý\ï@‡§oªÁ©wû\Ðôo÷ªûý\é<\Ïz\0¸¯R£š¢²Tñ\É@“S¡ªhü\Ô\êô†‹j\Õ(9ª\Êjt<P2u4ðj%5  RQE\05ª3R5Fi\ÔORµD\Ô¯%Vz³%V’€+·ZŒ\ÓÛ­0\Õa\ëE­\0¢–R\Ò\0¢Š(\0¤¢Š\0ZAÖŠS€i0Eˆe0WÞªÇŒT±¾ƒÒ“4‰f#†©\Éæ«§\'\"¥\ÍI¢%œ\rDz\ÓóÒ¤¢\\Ó·qQf”Ÿ–€š™ºµ3v\r&Ri\áWÒ‰=y¦+–c¥5Ÿ\"ªý£oSL{°ü)\æ‹\Ë*c\æ«;u¨\ZU9\ç½Eö€ü(\ÍRD94ø8\Ôf}¨“s\É\é\íQ%°¼\Õ$dØ¬N\îE8&H\íI’¸9=jXÐ·^´\ÉJ\å»b§	ž•©<m\éTm X\Èf1\ã©#ˆ¢P‹óT³d¬K,¦(‡µg__°•\0n´\ë‡vBY±\íY\×‡e|ô¡!¹\Z–·E\ßnjÙ\ã@ù$¯Þ¬[&Ì¹\'­Uf*\ì\Íò¿_jV\ZdK$Ny*Æ®›Áƒq,¦³­þD+!ùOCS}ŸÎˆû1\ßÖ•‹»GAm|«.b3Ú¶b\ÕZ5R§ŸZ\â`€\ä\rüžZ¦T-opý9\ëY\Ê&‘‘\Û&£\0ò6XÖ´\í\"sß¥pp\Êö¬‡rz\ÖÝ¦¬\Ç3œt\rs¥óƒ¤sR\ãÚ²­ut*Z\à=_Š\é`°\ç‘R2zJM\êFs\Å9F\îF\r\07\ÜS\É\0\ã½! .FS¤lL/ž\Ô\Æ?JˆÓ\Ôô4\Âi¢FJ—5VY\n!æ¦•ö®s\Åg]ÏŒ(\äžÕ¢\"L£0yI\Ï\\Ô„lU©g\'j>a\ÔSaýü£wAVŒ™SW—m˜\Åp7­ºFú\×u¬ª…d\'\é\\&¡II\íš\ÐÅ”\Ê\ãšCNcÒ˜hž´\Î\ÔóÞ™Ú˜„4™¥4S™ \Ò\Ò´\0\ÓIJi(\r%)¤ Š( –’–	KIE\0QE\n(¢€\ÑJE%\ÑA¢˜8SiÂÚœ½)½©\Ê8¦\"E©’¡Z™R\'J{T	S­2I’¤*%\"¤*„<RŠh§@ŽNŠ(¬M…\Í¢Š\03FiZ1@š3IŠ1@…—u4R\Ð\î¥\ÝM¤ \î¦æ’‚(Ej–6ªÂ¥Œ\Ð2\ìoV\æ©\Æj\ÌfËˆjÂš¨†¬§JN•2\Ô	S-\0:Š))\0‡¥0Ó0\ÐMÒ¡nµ+t¨[­!IUž¬\ÉUž€+·ZŒ\ÓÛ­0\Õ\0\ÓÖ’Š(E- ¥¤EPE%\0´†–Š\0’3R\ã½VC\ÍZ•\ZLh³\Ý\ëN-ƒŠŽ%8©\n\àf \ÙB*^\ÕU\æ\ÅYHc¥\Í4\Z^Ô™Wõ¨Ý€œ\ÇJ\âB\Ñ-Ž–\çŒ%F$\0d·5Tž*d	\Í!\Éô«±Ÿ0²\Î	ŸÆ™½±šV]ü°£Tù±\Î=\é“q ¿½NPF\0QÉ¥T+\ÐU¨W™i\\¤Š\ÞQ S|¿,“\ÜÖ—‘\æ!À©#\Óò µ+’\æH€©\r\ëVm£aÚ´\ÓNó.8­KM\Æ\áIÈ¸\Ó3\ìôùfufûµ·ˆ\îK2\äZºuœ(ø\'\Ø\×EQ-³`‘Y\Ü\ÝS<«U\ÒF\0pµœ‘´‰Ò½RÐ¼ù(\á5œž*À\Æió\éjr–P8•†\ÜÖŠ[N[c!\Ûô®¶\ËÃ‹\ÜW<\Ö\äzL!@ešNe*Gšc˜Cm\Î;T!.7•U~•\è\ÙJˆU@Áªðh¡K£&—1n™Ã¶\åtW\ãa‰óQ\Ënˆñ[ú¾\å*¸@\ßJÅ’\ÉÕ‹¨;H\àv§rl@þ|R3+\æ#\Ð\Z|ev¾J‘Ö¤k:\ß2n{\nAje‡v0;R$Ò‚ôN|¾Â®AvT\îI.3X1\îƒ\æi<Ç‰÷n\ë\ÏXw:\ÅÔsµ­ou»Y\î³\\M­\æ\ì‰Š¿ir–\ÇjV1Ý²–Œ9¨J‘Ö³4]VI¤ò¤\äŠ\Öfý\é\r\ÅK@™\ë\ÍBË—ö©\îl\n…\äù¶þ´$6È¤Â¿ŒA\â–W\'#Š¨g\ê{SHMŒ»o\Ýyª0+;‡~‚¬Ó«\ÕG–Tuö«D2´ò™\'8<\n¹i\0H÷š…,ðr;Ó¥˜\Å\Ê\ÑH\ÅñH\í\\e\Ä\ÂRs]Fµ6Q³Þ¸\Ù\Î\Ü÷ª2cZšiO\ÚD±zojq\ïL\íT!\r \ÑL4”´‡­\04\ÒRšJ\0CE’€\nZJ(h¤¥ AE%\0´”Q@E%\0´\ÓKHh”QE0”SiÂ„\ÓÖ™OZ¡-L•\n\Ô\ÉLL*aP¥L)’Hµ*ô¨–¤*„<RŠh§\nr”QEbl-F(\0\ÍbŒR\0¢ŒQŠb\n(\Å!…¢Šv\0¢Š(S’›Šru¤2\Ìuj3\ÅUŽ¬¥!–Õ”5U*\ÂP2Êš”t¨¦Z\0x¤4¢\Ò¦˜jCQš\0‰\ê\'©^¢zC+\ÉUž¬\ÉUž€+7Za§·Zaª´´”´\0QE€(¢Š\0J(¢€’–\Ð{ÕˆŸP0\ã4#RcF¤\"ž\ÜUki*\Ã5#D1T\æ§\rP¬‚•›¥!“+sRgŒ\Õ`\Õ:Ÿ–¥”˜\Çc‚k:bdc\íZOÐŠ!$ô¦‰e/,ª\î^µ4V»¾w\ëRy,eùzV„VŒTn\éUryJ\Ü\ÌrF1OÀEj‹p\Ë\éLò\Ñ=\é\\|¥X\ìÕ…Y[a·\à\á÷§ù€\ZE¤I¸Š³\Z MRûNÁM3Ãž´\Z#M$Ž,bœ/™°\éY¡óœš— ¢Å¦^\Z£u­[`€æ¹¬…;j	X\Æýi8š\ÆG¢ÁªÁ?R2jSwž¢¸[X&\í\ÜÕ©n™q–¨\å4GW&ª‘ð¤TC[\Úr\rs;Jø¬ð¨7Q\ÊG¾…¾cW#\Öbv\Æ\à+Ž•\0©¦ne †\éG(nwždS\ÄF\àsQ\"6Q\ëš\â\á\Õf¸bq[\Þ%\Ü\Ì0}h±F…Þ“\Z\Ä|³X\Íj\Ð\åsÕ®5Hg5$žL\Ã=H \ÊQ0$EŽLõ¨¶,›€\Ïz·vŠ¬M@¡I98À¢\äX¬b½ªP%G¡ùS¨«I\01†jž\Ökr­Ú™&¾Š¾y\Â\Ø~õ\ÐüÌ€\È~j\ç4„÷dGßµtŠ\ÊÀŒeªZ\ZdR¸‹†©]M°CV®q \Ú:ŠÀ¿¹a&\Î\âšCl›xi	o»Ud—s^ª?´bû\ÄÒ¤{¶m\ê:Ó°®Oy\'SUƒ*GzK\é·\Ì\0¡c\ÚF\ê¢KVòBÇµg^L¦SV\ÚP¿\"t=kQo-‰ªFr05»†k\'q5¥ª¹y¥eôª1b\Zi§7\Þ\Ó@i½©Æ›Ú˜„4fƒF)€fõ¥\Å!\ë@\r4”¦’€\ÒRšJ\0(¢Š\0)i)h”QE\0QE\0QE\0#u¤¥=i(QEÀ)Â›N ž´\Êz\ÕT\ËPŽ\Õ2\Ó&Z™{T+S/jd’­<S¤*„(§\nAJ(\ÊQKEblQE\0QE!\0¥¤¸¦E£À(£b€\n(\Å AOJf)\ÉÖ“a\rYŽª¥YŽ‘H´•e*ª\Z²(:T\Êj5*š\0˜R\ZAA ša§ša ž¡z™\ê¤Uy*Ì•ZJ\0¬\Ýi†ž\Ýi†˜\Æ\ÑKE\0%´PQKE\0%´PR\ÑE \Ó3†§šCŒPˆŸŽ*Cœ€Iªñ6*Vp\Ã#­&Re€@\Å0A\Í@§‘š‘›¬Zd¨ÀÕ…éŠ¥A\ÍYI•qÎ´ª2(l•¢0I©f\Î]…3\Ïj¨€•«1>\Þ)0±4Û•~QXwwò\Ã\'	š\Þ/òóT§%\çšŒcªŽ¬¼\Óµ»`Õ™´\àXµ°ù¾\ïJ°±\ÔôRsR}¶S°\æ¬\Ãf\Z@6Œ\n»ž\é2qAq‰ö«‚\Øjh\î/Pý\Âkn\Þ\Ì9h\ÍjE§®TQseL\åI\Ô$9cð§4\Ò˜ÿ\0J\îFž7ª…f=xp2)\\×\à–;\è6‡\æûl\ÊWw-´Kkó \É\é\Å$[ù| ${T\Üj\'® ‡r©«§*©\Ù\Åw)„ð«J±ùd×ŠW)#€[=I•~Z“û?Rcþ®»¨`(u«f4…ÇšË§\êÇ•úTZ\êQs\åd}+\Ò\Þp~Qš‡\ì\à©R£Š.KG™ýºú\ÞA˜\åV#\ÖõØŽ,\çÖ»·\Òb¸\ëüªh48-\ÆJš.f\Ñ\ç¦mZbY¡8úU›In\âd\ë^Š\Ö\Ðùx?*È»±‰‰@\"¡\È\Í\ÄÇ‚7*98ô­`cÀÛ’zS?$r*Â¿—µñBd4h\Ù@a˜\ÈN+S\ÍPwªv\Ó\0À\ã9aö£n_\ÄPIWP›j\äp}«Ž\âÅºúš\Ó\Õ\']„ƒ\Ås÷7L!\äÕ¢Y$m¹ˆûÔ‹+DH“U\"\â\Ï&ˆ\Üù„±æ˜‘<d½\Ç\ÍR\Ê\å\'\äUI®|¯›½D.Œ¿1ªH—\"\Ä÷[šÄ¾»ßœš±u)lœ\Ö§1_ºz\Õ·©Ÿx\åœ\ä\ÕSRHI\ä\Ôf„4\ÓN¦šl4\Þ\Ô\ãM\íLB\Zm8\Ói€QE\0†›N4\Ó@Š\r\0%ŠJ\0J(¢E´\0”R\ÒPEP´”§­%\n(¢˜(¤§\nR-GR-P‰¥J‰jd¦„\ÉR¦\nTÂ©Hµ \éQ­H:S¢œ;\ÓE={\Ð+E•‰¨\ìQE\0`QF(\Å!bŒSQF(\Å1bŒPE Š©Ö’„<\Òc,%YŽª¡«1šE\"\ÒU”ª¨j\Â\ZXZ™zT\nje4( \ÓA£½\0!4\ÃO4\Ã@·J³S7J…©\Õw«UÞ€+¸\æ£j‘ú\ÔmLcE- ¥ Š)(h¢’€ŠJ)\0´RR\ÐR1KGZ‘ŒƒR\ÆrisLC@“,–\Æ(w\Î\ÜTóNO½EŠ¹c,Z’9CQ‘òõ§F\ê8\Ç5,´\Ë\Èw-=2§Ú¢C•\âœ\Z’\Ñn6\'îšF9=jœ2m«jÛ…&U\Ç&›¸Š)¤\ÒC¸n\ÉÁT¢\Ç\Ê*\"G\á)W\ãnT’:Ô1ˆô\ëÖ–)A\ëS”´\\\Ö,¹hAp`V¸“\çAÚ°\à,’Ö’>\â¥&Î˜³i0³+J•C3–cÖ³\à–n9‹pjnhX’?11\Ô/AQ\"yr€8œ’`0˜\ä\î4®5¡d“°€EMn}\áÖª\Ä\àœV‘\Ûp¢\â,B\àGCR;\0	\ÇZ‚&\ÇQÞžC»{PK\Ð#bM8D\Í.\ïZxP£42*[!²e*‹‚9¦“Gj[?zœ\Ò1RÙ›cŽ•ZxÃ©$r*\É9¨\ßMHÌ‹µbœu¨\Û\åI9=«FU\rUfˆ	\ÇQTŒ\äj&Q—ƒŽi³\\6HŒ`‘Œ\Ôo7š‹\ÛCS¾!Ub\àŽ¦µF,†\îo½OCY\ËLùœžÆŸ4¿j•9ù©n[j\ì\'jˆ\"Y_I\éÒ™\Z\ïF‘\Ç\"&0¾µ\íÁ6¯z¤…&Eq/›Q	\Â.\æ«\Çq°’çŠ†\r\×\×ûb«F-\Ü[»†\nsÒ°\ï\'\Z\é5«i©\É9ùBi¦”œ\ÓMHsHh4†˜sI\Í’˜„9¤¥4”À)	9¥¦ž´\0Ph¤4\0Ph \ÐQE\0bŒQE\nZJ(i(¢€š9¢Š\0\r%ŠQE0\np¦Ó…©£\"\Õ•jT¨…H”Ð™2TÂ¡J”U\"IVŸÚ˜´þ\Ô\Ä8f”M\á@½QXš‹E\Ñ\Í\0Q\Í\Ò\0¢Žhæ˜‚Š9£šhŠ9£š\0(£š9 …\Ñ\Í*õ¤•*\Äf«­O ¢\ÒU”5U\rXCH+S•\Z˜t 	\æGz\0\rFM<\Óz\0ºT-S7J…¨\ÔS½Wz\0®ýj3R?ZŒ\ÐE-%-\n))i\0QE\0QIE0Š( ŒRRö \'\ÌqS=¦\å\Ê\Ôpžµ!»\ÅKe¨˜	C\Í\"·5¥y`p+4\ÄÑ¶Zšd4\Ñ1cŽµ4-UCgŠ±éž”2¢Ë¡²¼t¦nÁ\ä\Ò\nµ\ä°=ª¹~&\È95r&\È\çŠÉ…Ê¿µ_‰·\ZLi—\0\ÏZk{R#n§c&Š\Âc=i¬9§n\Å\Ï4À@\ÅN*\Ìr5Xó\Í7q\ÍXn‚“»©\éW ºP~cXNA\'¥X†a#u¢Åª\ãQŠ&\Ë)_]†1\ÇZç§•UñœT\çºAQÒ‹Û³¥>!Ž.[#54~\"ŠLs\Åqws´\ê00Z-fùBš9C\ëômn\ÝÛŽµvMYZ\ám¤8÷­{y\Ø.A\àT´R¬Î¹/w)©’fa\ËW+\ãg óZpÞ’\0\ïP\î_´l\Ý\r\ÛvsBZ¡\å°jÀbNjX&Zf\âšœ\Ô`\äR¨\Î*J%\Ý\Å5\Û(i›¾n\r5¤\Æxâ›+—\ÚH5ŸupHlpÃ¥:övRX\n¡¹¥9a[EÉšqN\Z\ÙY›“\ÅE¨\ÂDk´µg	ü™À\æ®_^¬£‚¼V–2¹›4mpÂ¥3¤v¥™²\äwª—3»>\âx5Ÿ<Äžz\n¤ŒÜ‰þ\ÒK\ç=\rEx¥A\È5]§QnÂªY\ÚMª^Œ™ªz\î\Äý\å\ä óÒ»\ßhIešeÌ„t#¥I£øn%YŠ\åÏ­tH /LTó\Z*zjp~1\å\Û\é\\Mwþ1v¯?o¼jŒ^\âfš;\Ò\Z\0L\Ðh¤4\0”\ÓKHiˆCIJi´\Ä-4õ§SOZ\0(\ÅPQA¤ Š( Š)h”QE\0QE\0%Q@‚’–’\0¢w¥¦N\ÑN ½HµHµB%*ŠˆT«LD\È*QQ/J”S$‘iý©‹Oª\áJ)¢œ(—¤¥¤¬MGf“4RP³E ¥\Í\0Qš3@‚Š3Fi \n(\Í Š3Fh\0¥ZJQH\"°\ÍXŽª§Z³e”e*²\Z°§¥!–¦ CS”*š;\Ò--\0\Ôd\ÓÚ˜hŒx¨Z¥j‰©…\ê©Þ«½\0Wq\ÍFjG\ëQµ0\Z)i-\0%R\ÒRR\ÒPKŠ( bŠ)€bŒ\âŠ\r\0K	\Ã\nÔ‡\îYQ}\áZ\Ð}\ÑY³HŽa‘ƒUe¶\r[a\Í4Š4j\èÅž¸¢6\'\0Ö”ð†+>E1ôª¹‹V$sÀ\æ†$¯Þªû\ËqFO¯\ìM\Ë1Ê zšµù\è+9H\ÝW#pKE&i¤€\n™X“Y»n\äñWReRÑªdü7Jr¨\éL\Îy«œ\Ò(yLR\Í<S€ eg„\äõ¦d\áz\Õ\í´¢,ž”\î.[”\n¾\ÎFX\Ô^YPA\äš\Ö0ú\ng\ÙT6H\ÍCXš59\ïO¶‡+Œõ\Í_»·.ÀÀ«vÖ¡“!{Qq{2šD\ÂE\ÉÈ­(``RH©\í\ìwJÖœ¢4\Ø&¥\È\Ö0+\Ú\Û\â0{\Õøb\Ú\Ù4\è­Jgšµ³r5Q°\è¸«h~P*LSóµªÉ·m¦¼«·Þ˜\ÒgŠi\êM+É·\\\Õv¸,8\Å:I6®\ãÒ³§•qDÉ‰wtr\ÊH¦«£lp@C\ÔU	®™\ÉCÒ«}¥À1Ç­msJF…ùUý\ê\ÅP34\ëœ\áGQH\Ê\ì¸-Ö (\Ðu<\Z´Œ\Û&‘‘£\Ü8ú\Ö=\åÁ	\ÍO<\î\ä¢\Õ\ÝÃ­¨\Ëû\ÆÀ5W±6¹GM\Ò/5\0\n©O9¯B\Ðü?™\n\áAr95oN\ÓV\Â\ÜD\0\ã¥_\0	5”¦oXa\0gð¡3ƒž˜¡ûÐŸtý*b\îk;X\àübs#WŸ·\Þ5\ßx\ÇýcW\ßx\Ö\È\à{\ïHi\Ô\ÓABRE! Bfš)\rP„&’”\ÒP ¤=iiZ\0(\éE\0”˜¥ \ÐPh ô 4f’Š-Q@Q@	EP&)(4P!:R\ÒÔ¢˜)Â’”P€Zz\Ó)\ëÖ¨’e©V¢Z•iˆ™zT TKÒ¥Zb$^)Ù¦\npªðiA¦Šp\ï@\Å%-‰¨RR\Ñ@\04¹¤¢€4R\n\\\Ò\0¢ŒÑš`Qš3@X(£4f€°RŠLÒ­\09:Õ„¨­N‡š\0²•aj²\Z°§¥!–¦^•\ZzPªE-0SûPL4\ãL4TLEJõ\Ð2\'5š\ê\é@ß­F\Õ#u¨Ú€\Z)i-\0QE!…Q@Q@.\r%;4\0˜4„\Z\\\ÒúP¢ûÂµ­þ\íeE÷\Åj\ÛýÚ–\\IOZasO=i¦ \Øa^x7)Àæ¬‘IÒ©2\Z¹‹$lŒx¦)\'<V¤\Ño\ÎSkf\\œt«LÉ«©Ö¥Y€¨	>”(­;¼²(^¼Ô‘Hs–ª‘«\ÍJ¨Ä‚NC4‹4¢—\'h\ZÏ†qŽ\ê\Ú7=j\rnXž\ÍD§œ¤©\äf–@<qS‚û\ÕU”žµb\"\à\Ò\Z,CñV\ÜdŒj²¾\×\n;\Õø“?&pOzE¢?\ì\åI\0u«öZ8\nrp1Þ’4X\Ý#gÀ\ïW¼\Ã#ls¶5\Z–ZH|ZZ\0žjÀ\Ò]\0eæ¦³˜À#\ä\Z®¤…›%¾Z†3<Zm9a\Í/”WŒV§™€ñœRy\n\Ãv:ÔŒ\Ë1°\íG–Mh´C*¤ÙŒ\î^G¥	J`#\ëH„²þ\ZKÀV3&*•­\ë~o”pEZW!±÷r\â\éXs°\'\åcZ·ò”_»Õ‡,\Ør˜\ëZE\ÊCw\Õ<Ž´4f9F[\å5[£s\ïRJ\Â\Ü\ç\"¶H\ç“\Ì†O\ËYÚ•\Ñ\ÜN~•,·hñ\ázž•Bð\ì÷“‰f»\ë\ÏzrvW\Ãú4—½™HCÐš\î4\Ý-mFEKof!‰Q\0=*\àÂ®+6o4‡“Ö—4\Âk\'©«\Ç9õ§\'\Ý4\Æ\ïON†®\Íhp¾.BY«€’6ñ^‰â‘™W!-¦\å\Íu(\Ý\\ó\å/x\Ä<i	«V\åªƒƒƒQfZwÔ™ ži\r4JCKHj¬!)3KM¤\\ŠNôQ@‚õ¥¤=h\0 \ÑA bPzQA\é@„¢Š(h¢Š\0(¥¤ bQE	ˆh \Ñ@‚Š(¦ÒŠh§\nO^´ÁR-Q$«R­D*e¦«Ò¥¢^• ¦I §\njÓ…P‡J\r4S…9šJZ+@¤¥¢€\n(¢€K\Å%\0¼Q\Å%\0´R\nZ\0(\âŠJ\0ZQM¥\0ô\ëS©\æ ,ti\rX^\ÕY*\ÂRa*t¨¦^”(ú\Óûu¨…>˜¦\Zq¦\Z\0c\Ô/R½Bô†Dõô©Ÿ¥@ôu¨Úž\Ô\Ã@\r´Q@QHaE(\ëKš\0m\ìÑš\0m:ŒÑŠ\0(4bŒP\âû\âµmþ\íe\Ç÷…j[ýÊ–\\IOZNô½\éÆ ×¡\Ò*B)1Li84\É”\"¥aMÇ¥;’Ñ‹(e—b“!O5£w\å\ÏñVk\Â\é\Ët«LÅ«¬˜Z˜€Y¿\nª$Ò”vÈ¡¢S4£”Á<N9.k:’ýj]\æV\Æ0*lj¤_Ÿ\à<U„˜ˆNN[Ò³•À\Õ\ÕUq\ëSb“\'…Ù—\'Š—\Î)‚§5LHN\0<w©\ã‘Ö•Š¹¥¤(s÷5£À Va¾±–eg\\ð£¡«\êZáÒ•‹LØŒ,\î7\åv÷=\ê÷\Úc#tƒX\Ð\Ë&q\'\áS¥\Ðd+Á \Òh´Í«[÷6F>\0½ju¿Cj\'=\ë#\æÚŒ1Q\ÝÏŒ…ùA©°ùŽ—L½Ù•\ÈP{š¾Ó¬|+^Ø®>\ÂFšu…N\àkt0·B¯‘·Š—©\Þ\è7­T‘³r1T¥ºP\áÕ:+\Å\Ë\r\ä:R\å1×›yr¥f\â\nÒ© “Ò¬\Í}Ñ¶\n\Öy»Ž@Àm\â´Q3”‡\Ët\ÛBð\ÊzVl¬¥Ê‘óz\ÓfwEÂž¨e“bù„óZEJD›\ÕL‚\ÕF\îR¬TœƒÚ«4\íÇ™ŽZ´­t\É.çˆ =]\ìgf\É4­\Þ\ír\n\à×¢iö\ÂDF0*¶•¦%´‘’+Sax”¤oN\ÜL‘œ\Zz’\0\'šf)k;›1M0Ó³L&“1»Ô‰\Ð\Ôdòi\Êx5¤	ž\Ç\â–\ÄÆ¹\è\ÈeÁ­\ïÿ\0­5\Ì\Å&Wm=.§\Ä\Ç\ÜÚ†+\î\Óa$]*\ë\ÍA=°u5¤ šdr„`óÖŠÑ»±\ÆH\Öl‘4f¹œZ6RHh¤4\âRPh AE”\0´‡­PA¢ƒ@Ä ô¢Š\0J)ih”QK@	E-%Š( LCE-%\n)zZ`œ)¢œ(@-Hµ=z\ÕL*U¨–¤Zb\'^• ¨–¤\ÄH´\áLñT!Â–R\Ð3š¤¥\Å¬M’—PEb\\(£b€¸QE- ¥ ›N¤\Å\0¢“\0s@\n–:‰EM 	Ò¬¥WAVP2\ÂT\ËÒ Z™(E§\ÓŸ@i†žj3@µDõ3t¨Z\\…úTS¿J\èu¦\Z‘ª#Ö€\n(¢€ER½\éiZu\0%RÒ¸	KE(\\bP\Ç\0S‰¨ª–¢z¾qZ\Ö\Ç)X‘\È+n\Û\îT2\âÉ»\Ó×œ\ÓH¿v \ÔB)1O£\ä,)¸©ˆ¦š	d2\0\Ë\ïY÷J\Ì1Š\Ó\Î{TR\Æ\rRbj\æ;\ÄR£l«ò@<²;\Õ‰£\Õ\Ü\Å\Æ\Â\î\Ãg­J’4’aG[ \ãÖŸ–‹	3F\'Û€9©D†G+T\ÖrP95-¸tl·¥+\Z&[\ÜBŽI©F\Þx5[w\×53’\Ò½1JÅ“[È¬¥I\É´¢lG“Á¬‹e*\Ç$\éZ0’\Å}IIšQ°4‡ŠCÃ‰\0\áW–e2ª“\ÅG=\áùdü¹â•Š\æ6\åIE<qU®n²\Öt“üˆ3Ç­4\ÎS\ëEƒ˜Ü±˜\ÛJdN\nŠÕ—T3¢ƒÕ†k–IdùJš›\íg\Ì)X9‹·Ws!À\è)ð]	‡#\r\ëY­p\Ó\ÄU\Î¦Ar¨dOn´$\ÅÛ’rY_>Õur\ÐÃ¸ŒjÌ³¤v¡Áå¸¬›\ÂdŒŒ\ä-ZFr‘r+9pOAQI* \ä\ã¥R†}‹•\ê*Í…¬šÒ¬Hwg“Ž\Õ{^\ì-,§»¾‰d©>•\éQiŠÆ¡\0e“O\ÓR\ÂÚª[œsZ½;õ¬%#ªœz„a£zÔ´\ÊuC5b\ÒR\ÑJÄˆM0\Ó\ÍFÆŒ\'“NS\Å0š\\ñZD™jq^,?½5Ê§]G‹\Îk•S]\Øó\ê­K±IV£`Â³¢l\n´[£™Žš\Ý_<VmÖŸ»\'¬Ž	\Å+ jn5#¸µh\Éöªý«ª¸´\ržd]X`p+@\Ö22²£FzSA\Ådi{‹IFM\0QE€\n\r%(¢Š\0)i( AKM¢€III@Å¢Š(\nJ\rAÞ–Š)€\np¦ÒŠ§¯ZŽžµD“­HµÔ«L	–¥Ô‚™#\ÅH:TbŸÚ˜´\ÑNÀ\ç1IŠv)B\ÖƒqIŠ“e(<QŠ“e&\Ú`3bŒu£€E;b€\n\\QŠ\04\0Q¶—m;i m¥O\ÙNLB*\Ô\È)*T^(\"\n™E1zT\Ê)\0õ2Ž*5\"\ÐÖM\àh\ZŒ\ÓÉ¦@n•T­Ò¡c\Í \"~•\Ô\ÎMB\Ý(TG­H\Ô\Ã@	ER\0¢Š(£­:š:Ó¨\0¤¥¥\Å\0%;8¦R¢ÁqñP³fœ\Ç5ªDÉ’À3 ­\Ëq„‰m÷\ÅmÁ÷D L:\ZzôÊ‘EA°\à3OMQR\n@1–£+S‘M\Û@™@¨œU‡_j‰\Å0+)“ e\ÅN\È=)¬£*®D‘”ñmb1M\nHc\Íi²+ö\æ«\Ïd\ÜMU\ÌùH-\Ûd\Çp\Î{Õ6f<ñŠ¨\Ë$kóRÇ“†\ÇÖ\Z6\ÒR}(’\è‡!MWó\0\\\"\à\nj\ã#ŠL¤\Í8aPr\ät«\ÜO8¬\äÂ€G\Þ\ÇZ–\'6\ß÷½iX|\Ä\ÓÝŸ0.z÷¨\Ús8+Ÿ»Þ©‹\ÈÖ–9B».3švc^Õƒ\Æ|\ÓÂŽ*6Ÿxñ\Íg›†h¼±\Ç572À^§Ö‹1¨³ )\éR‰\à{\ãš\Êˆ\å\Êý\Üt©¥¹1D9\å\éEƒ˜•\îO˜vž)\Âc–\äaI\ç5N\æ\áb€².ô5\\I(X\ä9„ƒ˜\Ð{€Û•ºuQ\î2\ÝE:0ò±‰W-\ÐJ\Ý\Òü%3˜\Þ\ë•\î)¶’›(iz\rÎ¨<\ÅùS=Mwº5„z\\!µ[†\Æ{EŠ\naS\Ã\Ñ\ïY9¦=·\ã¨5`(S\Çz‰~ZVOS[X~)@¦ƒN\0QA¤É B5D\Õ!¨Ú‹\r4\Ö<R±æ£‘°§\éUdqž)?9®Y+¦ñA\ËW/\Íu\Ó\Øà«»&CÀ«\nN*©T\×Bg3&Gæž¯P‚(\Ï4\î\"Á`AªÒ aC9\ÇZˆ¾;\Ò\Üe›PÇ¥d\Í!5\Òe[­U¸·V*%\ã#\0di3šÒ’\ÌzUW´#8¬\ÜMŠô¢†FN´\Ðþ\Õ\r2®‡QE\Ü(¢ƒ@‚ŠLš9 Š( ’Š0(”QEb\Z(=h AES\0 QJ(@-=i¢žµD’­JµÔ«L	–¥\nš”\Zbc\Å?µF)\ã¥1¢R“LF\ÚpZxZpJÀ\Üf\ßjM¾\Õ8J_.˜Šûi\nš³\å\Òö \n¥(\ÙV\Z:o—@\í£mK²”\ÄE¶”%I²œ€#	J¥	NLvÔŠ• AO(Š•*§\åZx€i\àRª\Ó\ÂHEH´@§¨\0\np¤\Å/JqJa§L&€\Õu©˜ñP±\æ=B\Ý*W5\ZB\Ô\ÃOn´\Ã@	E%-\0QFh£­:˜4¹¤©R\à\ÔEÉ¦®8¿4\Âi4S±-&ƒÒ–‚)’Km÷\ÅmÁ÷cZ¨.+j.VR7‚%©£4õ5&Ä«Oj5©€Š6ñJ)\Ô]Ö¢u«N¢¡e \n\Ø\Í0Š˜Œt¦m\Ð‰¡\ÈÈ¤E#\ïT‡ Òª\æ‚lE<(\Ù6Ý¨+A#\éS\"\à\æ\É\å0…¬‘†ó8\ÏJ0‹\0\Z\ßû2;\ã58°\×c\éN\á\Êso½aN1\ÏZVœ\"º9t¨§ŒF8\ÇzX<=\n1\ïŸZ|\È\\¬\æ¢À†F#¥#v²\ÕÔ·‡bv\ÆH^ø©cð\äc„<{\ÑÌƒ‘œ~9\É<\Õ\ÐÛ¡X\Èù»š\Þo¢Éµ†rkB\Ó\Â*¤´\ïÖ•Ã‘œzšf F)’;\ÝH)Wrž¶Iòž¤Uñ\á›fT€s$\n›gž\Çasq*HJ\Û\Ó<=%Ì ²g5\ÝY\èööp:R©«#‰6C\×e*l\Â\Ð<5>d“`°lŠ\è\Ñ<°GcÒX§‘\È\â¡\Ê\æñŠC£A\ÔÓ†2iW\0RjYBcš‘F\"Šv{RCN\Ú\\\ÓŠi´¤\Ós@„&¢cO&˜i°Dly¨e?)úT¯Áªò±\ÚhBg\âS’k™ŠºoŽµ\Ì\Âu\Ó\Øá«¹8\éNš)3[£’†¤\Ý\Í4\ZBi\ÜV\ÍP»R³\ZfI©+\â¤\Î\áQšr\ÕW5—šo’\Z \Ç4\Õ~ih-H\ä´V*Œ¶89QZ\ê\Ô\rÒ†“´s¯\ÇÚ›¸žÕ½5¨aÒ³\æ°\î \Ô8–¤Q\Í§I¡\éQ‚sŠ\ÍÅš)!\ÔRsNÀ¬1(£Š(Ô”Q@\\J(=i3@€õ¤\Å)¤ \0R\ÑE\0¢’€i¡\"\Ôy4õ&¨	V¥Z„S-1/JTJx©¦&H)\Ô\Ðiiˆx¥¦ŠZ\0\Ï	O	J*@+a¡iBÔ qN\n*„E¶­O¶¥1\ÊfšR¬\í¤*(©J6Õ‚£›E\0@”%L”-\0Dœ#©vÒ… \éÁ*P´»()Á)\áiÀPUiÀS€¥\Æ(\0”P)G4\0Rv§bŽ)	\r4\ÃN4\ÃAC\Z¡j•h¨›¥J\æ¡c\Å\0BÇ“L&ž\ÝsQ·†&h\Í7>\Ônö¢À;4f›»Ú\Þ\Ô\n\ã\æ‚\Ô\Â\Ù\ÚqÅ©))i¡QLŠ1A 	\í~ø­”û¢±­^¶Pü¢²‘¼	H•5\"w©4$Z•j%©W­;‚Š\0c\n–§\Æi¥q@Šl´\ÌsVj J¢ƒJ¦€$)ñƒšbóS\'2©\ÅM9¨\ã>µe\0X‰y©U\ê‰3ž*\Ôg½!¢Xõ©¸\íÁ¦\ÆH©\ÕCH\æ•\ËH-\áò\ã5e»\àŠtC«\n?:Wp`©•Bñž”(ü\é\Ø\É4¯q¥a\àóRFû£$B¥\nÖ¤`Š@¥”\æ›ÖzxŠ)\ØÀ¦0M\Å.h´RfŒ\Ð &“4\ZJ\0i4\ÂiÆ˜h`†5V—¡«z\ÕyFA¦„\ÎC\Ä}\rrðžk¨ñ\'\n\Õ\ÊBy5\Õ\rŽ*»²\Õ!4¢šk¡\Ìp4„\ÒHM\0!4˜¢”\Ðb•iqIŠ\0F¨¶óS\ÔMÁ4\0¢ž¤Šˆ6iá¶ŒP\"`Ù¤(\Z£\Þi\Ê\æž\â!–\Ñ_µQ›O\ë´sZ\Êþ¢…=¨\åcš’\Ý\ã=*>GQ],–\Êýª”\Ö \ç¡\Óe©˜ûÁ\íFj\ë\ØUg¶pk7Z\ÌÑšF{RgÚ•™WŠ3GjCõ¢Œ\æ“4\ÅqE- 9¥\Í\0!¥†”P„-=i”õªAS­@*u4\Ä\ÉVž\rF¦¤4\ÄÇƒN\Í4\nZb\r(¦Šp\ï@À©T`Ô«X›§…¦¯jx¦ \ÛHVŸIƒLC6\Ò§‘ŠC@•¤\ÛO#ŠLR»i\Óñ@\0›iÁi@§@\0à´ S¨¡iqNcš` \ê)h(´PHzR\æô¤!†˜i\ä\Ó	 ¢6\éP7Z™q@½B\Ý*g¨›¥\0@Æ£cOsÉ¨˜\Ó\Æ\æŒ\ÒQ@\\Z)-””´”)i)h\0 QJ c€¦½J«\ÅE/ZOi÷«]>è¬‹Có\n\×CÀ¬\ät@T‰Þ£\"T\Z­Jµš•M$\êj\Ó\Å\0(\ÖüSZ2\Ô,*\Ë\n…\èR¨¤c\Í*š\0‘G52ŠzÕ„ 	\Ñj\Ò/^>j\Ú\0H‚¬ ¨‘MXE4‹D\ÉÒ¬GP â§Ž¥–ZŽ¦\\\Ô1ö«+Šµ0STf¤€\Å(4 S‚þT\0cŠ\0§ŒR\Z@(¥\'Šni(¹£4”P1Ù£4ÜŠ(¤\Òf‚i(\r0\Ó\Í0\ÐÀ‰û\Ôðµ;µü¥4&q~&~H®^\Ít\'y¤f¹\Ø5\ÕOcŠ¦\åñÒšE9>\è¤\"º\Ì\Ä\Å4Š}! BŠSŠU4\0F)\Ø\Í%\0&*)&¦¦H§­\0@:\Ó\ê2pi\àŠ\0p¥\éH)E`ÝƒO\ß\Ç½)\ÜV\'I=iùµV\rOU\Ì+h”ö¨š\ÙOjp–ž‹‹S:]<zUI,H\í[™\Í5‘[µ\'5&s\ÏlÀt¨J2ö®‰ R:Uy-ô©y\ÅV›ØŽ¸\æ«IhGAP\â\ÇÌŠ£Ž”´ÿ\0%\×<SJ‘Ö•ŠLJ\Í†:œ¦™ž)\Ê)(52š€T\ËM	’©©A¨TÔ€ŠbdªiÙ¨Á§f˜‡ƒJ\r0\ZPh52µVSS+u¬‹\0\Ó\ÃT!‡­=O½26h\ÍGŸz\\\Ó\ä\æšh­!¡\r%)¤¤0 Q@ RŠJp ŠZAK@…´”´À3Fh¢€Ñš( ô¥ ô¤\rFjCQš\0ˆƒQIRH\á{\Õ9nf¦\ÈÀ\n«$½j)f\'¡¨²OZ\0y|\ÓI¤£\Ä 4¹£¥\0fŒ\ÑE\0£4Q@Š(Âžƒ4Ê–!@‰\áj´½j\á-S›­6–\ÔüÂµ\â9±­\Ï\Ì+bòŠ\ÆF\Ð,\nz\Ó=j\r‰¥Z‰jU>ô\"Ô¢¢Z”P…!\åÒ”Š\0……Wu«l=ª\ÔU—“H85#µz\0‘:Õˆ\êºUˆ\è\ÔUv!T\â«ðö 	\ãZ²‹QÄ¹5e¥–‡\"ñSÆ”ˆ•:¥C,X\ÅN¢˜‹S(ö 	¥¢8\è)\0N(PHii®}\è.h\Í7#ÖŒZ\nšBx¤Ï½\0™§\Å&)GJQE\0!¦´óL4\Ä\Æ•5V\é¶\Äj\Ù\èk7R}°¶N8¦¤ô8Mº\àŠÈƒ¨«:Ü›®\Ï=\ê´xWT68jn_O¹A\Íô§[#GIO8õ¦‘L\Å\0Q\ÜS\è%-\'4\0S_¥;š\â€)?\rNSš%4ˆx\ë@\nQH½( 4”PzP\n^Ô€ûÓ»P! ÓƒSqAú\ÐÛ¨\ÝQfŒ\Õ\\D…\Å4°¤$S¨¸|¤Tm\Z·jhjv\ê.\"6¶SÚ ’\È‚®n\Í.E&®4Ì—± d\n¯$½«x€F)l¯S\ÈW9‚:ÒƒZ’Yxª’\Ú\è*\\JR!^je5Ò½H‡Þ§b¯re5 5\nÔ¢\ÅbE4\àj1O\ÍP¬<\ZPi‚œ\r*§†¨S\ÃqY\Z–ªUj¨\Z¥V¦C,†§¨SƒSm\Ôf£\rÖ—4†‡\æŒ\ÓA\æ—4†.iA¦\æ€hù§ƒQ\æ@\Í?<Ty§gŠ:Œ\ÒfŒ\ÓsJ\r34 \Ð³FqIHy u¦œ\Ð_hª\ÒÝ…\Ï4€˜¸Z«=\Ð\\óT\î/Nj›\Ê\Òw 	\æ».*©bM¤\éT!1N\Å¥8¢Ž)¦nM’”P\ÑE\0QE\0RR\Ð(\è*x–£ŒU˜Ö¨@\Ã\åª2˜Ö“–³\æ\êh`‚¼+ZòŠÈˆüÂµ <\n\ÂF\Ð/)©B†¦\Èp©­F*@hU©Tò*5*õaM8\Ó¤\Å\01…C\"Õ’*7Z\0¦\Ë\ÅBG5iÖ«°\æ€\Z½j\Ägšjd<\Ð\Ø\ÎqWa\íYñµ]…ºP”&­¡ª5[ªYh¹NµZ6©ÕªYd\ËS¯J¬¦§V¤‚¥¡\rO\Í\0J\r!<\ÓA£4\0\ì\Ó_µ¤j@%QABŠQH)EŠZJbIA4™ \Ò\ÒP)\rn•ƒ®M¶úVä¯¶:\ä|Asò°\Í\\Qz6¡&û¢}\è„t¨nt\äû\ÔðŽtÀ\ã‘~3òŠ{t¨ü¢¥=+Tb\ÈÈ£\ìRS);ÖPŠL\ÒÑŠ\0L\ÒZv)@\ç\Ï5g\0\Õ\ÇL­Sq±ñ@)©¨#50 \ÍñIE\0%85i½\r M0Šu fŒ\Ò\âŒS\Zm8\ÓM+€\n3HMªŒbÆ“4„\Ñp°ÿ\00\Ó\ÖOZ„74…ñG0X·iJ\â«+š™&§¸lE%˜9ªojS+[xjB€ŽEKˆ\Ó1‚°\ëO­	-\ÔôY­\È&¦\Å\\ˆSÁ\â\ÆE\'#ŠC¹ 4¹¨Á¥\Í0*RŠe8VF£Á§ƒPgšx4aO\"š®­O\r@ƒN¡SO\É3J\rF\r8\Z\0}(¦f”\Z\0}?5is@J\rF\r.i¡N\Ý\ÅD\r85½?µF\\\n‰\îBŠ\0œ°\ê.GZ¡5\ïP\rS’wsÁ¦·=ñ\É©<\ÆC\Ô\Ô|“\Í8E2D¢Š1@	Š1N£\0˜£\ìQŠ\0N\Ô\Æ4\æ8¨³“@\Å\á@§@\0¤4´†€Š( ”RS\Ôs@‰PU¸– x«ð§\ËV‰!—\îVl¿xÖ¤\ã³e1©‘HHþð­(z\nÏŒ|Â´b\íY3X–Ò¦Z…*t©5´\îô(§\Í!Šµ*õ§@R¦J­«1\ÒØ¦²Ô PV‚Š.¼š®\ëZj¬«ŠT#š–:B9§-\0N•n.1U#«‘Œ\â˜\ânj\äm\ÅSE\ÅZŒT²\Ñi¬\ÆüU5Uˆ\Ç%\"Ò½J¦«/ZiaM:£Z}!Ž\áM\á@4\Ü\Ð\Ç˜Z\0}›šU ŠQH)hM6‚i¹ C¨¦\æŒ\Ð\0{\Ð¸\â˜Ïµh@T½“df¸mv|†æº½V\ãj\Z\àõ™÷fµF20\\î”š±	\Î*©?7Ö®[­tGc–eÔ“\nK\ÔUtBMNjd(ô ŒR)\æœNh¹¥\ÜS…\0óJi½(:SO­8œÓ‘r(€¦³\îWZL±©—,»\É4\0øø8\äUTlŠ€Rô¦†¥\'\"€ši<ÒHE\0.h\ÝL¥ 	3M4J\0%4\ÓñHE\0Fz\ÑN#šLPM6œ\Ô\Ó@)\r-0š\0\ZSA\âšM\0L¯\ïR$\ÕP\Z\\‘M12ÿ\0š¥\à\Õ\Ó\ÄÆ\ÄXhÁ¨\Ú\0M ˜\Ó\ÖaŽh\Ü\Z\na‹op4 JÃ¹…FMW9\Ð8S…4v§\n`8\ZTbž´€‘M<Tj)\â‘D‹N˜)A \æ€i½©\0Kº–£§p;\Ð!\ÜúÓ¨·Þ˜÷GZ¤\"ÁlTopš£-\Þz\Z¬ó±&š$¹5\á\ìj›\Îò¼izÑÚ€$õ {S±@\Ä ¥\Å8-.)€\ÜRNKŠ\0n¥”\ìQŠ@%%)¨É s’i Qœµ<-j1J.(´†œE4\Ð\ZAJi\08TŠ*1SÆ¹ E˜wr\Z­\nÕ¨…Z$‚\ëÚ³\ä\\Ö\Â\æ¨È¼\ÔÌ¸ÆœŠ¿\àf«F¼Š»ð+&l‘:Šž1Qª\ÔÑŠ’\ÉR\ãšrŠ]¼\Ò\ÊQÖ”ŠoJ\0±«š©«µ -®iø¦!©€ ¢^µVU\ã¥h2UiSŠg0\æ…+§4\Ð1@GW\"=*œ}j\Ü]©q2EZˆ\Z­\\†¥–‰”T\è*5\íS¥IHz\n*$©V¥H*5(4†8Ñž)	¦\æ€šNô\ÒhSš\0’œ¢›O€u-%/j\0CM§\Zm1	EPº«\\I´\ZˆQYwó€4ÐŒm^\ãƒ\Íq:Œ»œ\×Cª\Ügw5\ÊÝ¶\ç5ª1™W\ï5]¶\ÍSN3W­«xœ\Ó-¨5!SV¥\ã©‘4¢–ñ@¦\Ó7sJ[&€M5¸ ŒŠ{µ\0\n3Lšq\n{\Ón.„cY\ÒJÒ’[¡ YšV\'<TGš\\\éI@\n™8b;\ÕpqR¤Á<\Z€\Z\Z\0™ZœHÁ¨E?4\0QE\0¹§\ne8Pši4\ãM4\0c4RƒM<\Ð7\"£4ò)†€R=)ÀfŠ\04JE7\0\ÞiI£4„\ÐœQ“M&Œ\Ð¿y•\Z4\'`±ed÷©\Ø\ïT÷\ZPôù‚\ÅZ\\R\â”\n\Â\æÀ)ÀRO‘@<\n@)\ê*F*Šx€S…\0.\r.(,\0\ëQ´ÀQaÜ—\ëÒ²Š¬\×<b¡3\Z¤‰lºf¡kŸz¨e4\Í\ÕV%²\Ã\\ŸZ…¤f\ëM\àÑŠ,MÄ¥\Í4 qM\0u£\éN—Àh S€¥\Å\0 ¸ \nv)€”f—b!\âMjC\ZÆ¡\'5#šˆš@(^ý\êP8¨Ñ±O\'4p\æƒ\Å\'CA¦E4š“S \ã4t§IHQšµ\Õu«Hx¦\"\ÄX«‘¨¬ônj\ì,M2X“ ª\ÍE\\l±¦4|RžÆ+FœÕ¸“=j4Nj\ÔKY\\\Õ\"EAR \Å(ZxZ’\ÅSN€)\àPl)„T\Ì)„P/\ËÒ§ª¹\àÔ±šCF„\\Õ€S…ª\ì|\Ò)¨eAŠ¹²¢•8 \ÉP\ã®Êœ\Õb¼\Óˆ*\Ô|b AV€,\Æ\ÄU¸X\Õ4j#RZ.«t©\Ð\ÕElT\Èô™H¶†¥Q¥R2À\Å<>*¸jvú@O¼\Ò¨wÑ»š\0—9§/\ZšzóHd«\ÍH Tj*@)ˆZMÔ””\0»¨¢Š\0LPx§f¢•ñL’‰p¦°5	ø<Ö•\Ü\ØS\\Þ¡qÁ\æ­\"$\Ì]Jl\çÖ¹ù˜–É­+\érMf:–\æ´H‰l5jý°ª‚*ý¯J\Þ;’Ü¸”üœSRŸT@Þ”u¥=)0Â‘y\æœi»\Â\Z\0qrµ·$‚¦f*³\ÐfR[-Lj°\ä\Z…… \"\Ç˜\â¥\Ç\Ð8 ñO^ù¤\"–€\rH¨€¥V\æ€\'ž\rB\r<\Z\0~\áF\ên(\Å\0?4¡²i©W­\0?<\â‚(\ïJh†Œ\ÒÑŠ\0i¦)\äR\Z\0`\â‚iqA\0\ÃL\"¤¤4Z\nŠ“\ÃÖ*)„T§¥FE E(\éJi():ÒšAHdt¢›šBØ¬G\äfœ\n†œS°\\²\Zp\n©¸Ñ¸\Ñ`\æ-´\Ý1L3š­¸\Òh°s<äŠŒ\ÈM0g4´\Ò`M¢€*‰`R\Ð\0h\Å8\n1@\r\Å(¸¥€\0´¸¥”\n\0J:ö¥\ÛJ\0&)qJ;n\ßz6ûÓ©)€\Ü{\ÓZŸMj\0‰‡½B\Ã;TL*F0z\æ¥F¨ˆ¥˜ðs@lö¦†È¥Ày8\ÃKE\0£R\âUÈ©:\ÓT«LD‘Š¿	\Â\çªQ\Õ\Ûqò\Ó%–\"O2@\0\ëVnlš;\rvŠ}k®¼\ÓVk @\íJJè¸»8:%I4&Š‘B©\ïXµcx»ŽU§m§*Ó¶\ÐP\Ð)\ÔN\Å \Zy¦•\â¤\Åq@\ØR«bœÂ™He\È[&´!jÊ‰±Z\íšE#A>aM’<Ž´\èy?—‘HfT\Ñ\à\Õ6NkV\â<T$\\\ZB¢¦C\íQŽõ\"\ÓaÚ¬FØª\ÉVR-³S-@œT¡…!“©\ÅH\Z«‡§¤2Àzvú®\ZÔ†Y\Ü)CsUƒTˆ\Ü\Ò\Ò\Z*²\Z³!“(§Žiœ(„SqO4\Ú\0n)3N4\Ú`!8Z\âL\Ô\Ò\nÎº“Ö™&}\ì\ß)®gP›­k\ßK€y®rþ]ÄZ#)³2rd|iò[yvûZµch\\\ïqN\Õpm¢3oCrýkJ\Ùp5›\0ùÖµ`\n\Ùls²È ñ@¡ªˆ9£8 Pi€\ÓP°\æ¦5Š\0Br8¨=sS\ZŽ).5lœT&\î)1É r7w$‡\'›\åqš\0h\\Ò• fŒ\àVž1\ä@A\âÖšzšr\ÐÖž*1N‘@u\ïJ=é¹£u\0I‘@ \Zn(\Å\0<7=)\Ä\ÔbŸš\0L\ãŒS©\éý¨)ŠZC\Í\05y¥#ÞŽ”\Z\0iô\Ò=\éô\ÓÖ€G½0õ©\r#âÛ‘M+\ïO\íM4€aZi!\Ò9 È \nq€P0ôð3LU§Ž*,]Àž\Ô\ÂM¹4™¦ƒFh—\0”sJ.(´¸4¸ \n\0M¦”\nv(€\0(\Å;P	KE.)€˜¥Š1J\0\0S‡F(E(J8 ”ž)(=(R(¦µ\0%4ŒÒ“M\Í!\"˜T\Ó\é\r\0FV˜T\Ô\Ø\Í4©¤2#jT<SJ\Z‘G\Ë@h4ƒšp\ÄM.\ÓKš\\ñ@š‘A¨\ÔT\Ê(ñƒZ\ÊHª1Š¿n\Ø©_Ó—ý5>µ\èÖˆ\ÝUºb¼ûL\æñ>µ\èVm¶5úU¤\çu\Ý+c—E¬\r„6Zô«‹t»€‚9\ÅqÚ¦–\Ö\Ó£Š\çšf\ÐfX\\QŠ~Ì¯½\0qQ\Ð\Ý\Å-;mi\0\Ú;S¶Ñ¶“SP·\Êy«DqPH”\0ˆÕ¡lõ˜§r\Ý\é\æ\å±y\"³-8­xEK4Ei\à\'=+*x¶“‘]Ç‘Y·Pu\â„\ÄÑŒ\Ë\Ï«jycÁ¨ö\Õ=Z¦G¨\0\"¤ZE\"Ò¿\à\Õ\0jvú\0œ5/™Po¤\ß@\Ë>m8IU<\ÊQ%&‚\åÁ%Jƒ\Íg¬‡5f\'\Î*l;šQ6j\ìCŠ¡o\Î+F.”¬;“ªÒ‘J\ìq@‘M\ÅJE4Š\0\Æ8¤\'B	Ÿ\å\Íd^KÁ\æ¯]K´šÃ½›ƒ\ÍZH†\Ì\Û\épMe\Ã\\\ÏÀ\â­0{©ö¯<\ÖÝ®œ ‡qÖ±\Ì&Ì·ˆA\0V&¬\ÙJ\è/ys\\þ°0•[}¨95©\àV]¨æµ¢\í[-Œ\ä€Ò’)1ƒA¦HA¤š^´\0•Œ\ÓÛŠš€j7Á§1¦5\0FT\nh$ñO=) w \0¥4±\Ü\0¥bi±®÷€%t&¦”\ÖùH+f:\0¥ŒM&@4¦\Ð³š3Š\0\àÙ§Ži‹R@\n	4s@4™\æ€:Ó³šnhS@\Æ)w\nBh\0¤\Ò:\Ó\Æ)	\0\ÓHiI¤\Í\0&)1KšL\ÐMFÀÔ¹¦0 ƒJh‘¨i\nóN“­\00ƒ@SN\"\Å )…\ÇZkûS\Ü\Ô}\êKNŒsJ\0( Ži@ \0QŠ\\RH\Å\0S±F)€”¢€)q@¸¤\Å-\0¥¤\Å( AJ(¥˜)h\Å\æ€Rž”Gj\0J(4ƒ­\0-1©\Ä\Ó	 ¦š7\ZP	¤1´˜&´\Ó\Õh0¥Hw§\ïNUÈ \äPŽµ=ªi88¨q“@QN\ÅŠZ\0a?8S1óS…\0Hµ*\ÔB¤SŠ\0š<\n»n£Ejõ¿AT‰64„\Íò}k¾L`q\Æ+…\Ñúj}k\Ðü¼Ä¿J´\"Hd\ã\Ë\ë$¹„ñ\Í1	CV£|õ¡¤T]Ž\Zÿ\0Oki\n©·]\íý„WQž9®N÷O{i:½«–p\ÔéŒŒ\â1HEN7^´Ò¿FÆ«RQR¤\ÛE\Ä\Ñ8¨\Ý}ª\Æ\Úc- (0\ÅMnÀM6eæ˜œ5\0nY¸\È\æ·mH\"¹‹I9\ÑX¶qR\Í¤#Èª—Pd\nÒ‰r¢›,9¦\ãh\å\ç‹i\äUr¢¶o-«-“i5IŠ\Ä8\à)\Ûx¥\ÛL@(\Å.1Iš†“L\Í90š\Å\ÝFúˆšcIƒ@®YW\æ­À\ÙaYk&H­S’*YHÚ¶\ç¥œV}¨\éZ‘*nZ$œzP8 ž)\0\Òi¤ñHÍŠ…\ä\Å`‘±T\æ”ô³M×šÎ¹Ÿ­0d7sòy\æ°nf2HU9>•fò\à“€~cWô-\ÜJ%VÑ\Ì\'+\Ñt^’:`žy­;¸FF8­¨­„Q\àvª\éû¶®µ#–R»8«õÃš\æõ¦@\Íu\Zš\árZ\Ãe«\'¸ú-‡JÒ†³\íV´ ­\Æ/rc\íM4\êniˆm<4\Æ4½E\05¹\éL#=*L\0\rVip\ÜP\0\Ã˜\ÄS‰\ÉÉ¨\Ë\Ð”\Ò\Ø\æ`Wi2\ÄP‹ƒR@2j•<š\0² ¦]œ\0Jƒæ¨®0H \n q\Í1º\ÔÍŒT\\n Z(4‡4\0\àsK“L^)ù\Í\0*µ=y¨ñFH 	MŠjš	\æ€%\È\Å3ž\Ô”\á@	\ïKÖ”\Ó@ \0ŒRS±\Í \ÒÓ±HÂ€H\Ô\à)¬¸ F9¥\rŠR;\ÐcŠn)s\Å0¶\r(g4£Š@g±¦ŠP)qRX”\áKE\0!\ëJ))Â€”\nZQ@	E:Š\0AK@\ëKL¥\Å€P!iE\0QŠ\0QN€QŠ\0ZP(œ\Ñ@\rjN\Ô\âsHh¦\ÐM0š\0	¦JZ˜Z•\Ça7TñsU×–«J0´-@SŠ@¹¥¥\Å;\n\áŽ1J8 )Ø¢ÁrW-Q0\ÅY~µŠ\0`<Ó–˜:\Ò\Ò§­Š(AÚž\r1zS\Ôq@\Ã\Í_€qY\Ñu­(xQT‰5ôV\Åò}k\Ñ\à;‘Gµy¶\Ã\í¨O­zµŽ„U¡$Òš\Þjx\Ü:ñL’<PÀT˜Sn-#º\Ô=\rO›\ZM_BÓ±\Ìj\ZQ¶rTqY\Åy\Çz\ï^\Þ;˜Šœf¹OJkv.£#5\Ï8\Ø\é§3­4¯>\Üw¡¢\ÇZ\Ä\Þ\×+ãŠ…Z)M)N\äØ£2UV\\5j4u^Xr(\Ûc‚+¡Ó›‘\Ís±¬m\é\íó\n–\\Nž\Ü\åEY*ªv‡ U\à3PQ›w`x¬i\àÁ5\ÒL™¬»˜¹4À\Ä+¶Õ¹b\ÅW+T+INn\rF\Í\Í0\Øk\Zc\ZV5µ¶1@\í\ÏZt­\ÅVw¦Ib#–­g÷…bÀrÂ·´õ\éQ\"‘»h8¤œ\nÏµ\Å_GÂšÍš\"\\\Ôløjn@\ã5RKž:Ð‡bÄ“UYg\ëUä¹ª²\Üðj¬;ž\â²\î®<Ô“\ÌB’j;+\'¾”p\ri\ÜÊ¤¬\ZV–÷·\Øg½w6vko\n:S4\Ë‚>•¢\×òœ3•\È\Ø\0µ“|‚j\Ìù\â©MTš³4Ž\'YM„Š\áõc™Ewþ\"] šó\ÝD\æSY[R\ï \ëAò\ÕÈº\ÕKUù\\Œ`Ö†l”ô¦w§\Zi COZPi*2y W# UQ÷²j\Ö{T2¡ \ËdñQ\É\Å¦‘Wbi€|\Õ+c4™\Å\09MO\nsS¨À\Í\0YŒõªÓ’^¬E\È9¨$\åÈ ¶\äSLtò)­Ò€·¼R…\Í!\â€\Zx¥ZoSJx \ão™Öœ\Z\0p9\æŽô)A \Å(4\Ñ\ëN\r@ƒJ78üiÇŠ\0™¥\Ç¦\Ðæ‘<)¹\æ€\Z\r+\ZqZc\n\0e9\Ê)1KŠ\0jóH\ËóSŠ\Óz\Z&1@§u¤m 3±NŠ*\nJv)1@	N\npúS)E@IN£\0ƒ­-\0PE\nP)@§b˜\r—˜4 PKŠ­\0(š\ÐO„Òškt &˜iM!¤1Ò¡&¦c\Å@Æ\É-þi*\ëb©Ú¯\ï*\ë©\È\æ©n)qKŠ)ˆQÒšJJš…\ÅJiŒ´†C\Ð\ÑN+ŠAHaÞŽô§­%\0H½*UT\nqR¦M0\'ˆsW\â8QT#\â¯Dr´\Ñ&Žžž¤Wm§\Þ\ìÚ’ž;W¥ô¤ú\×iueû…‘8\íT„k\Æ\Ûp\Ë÷MZ:\Ö™¨c÷RžG­l\Æûy\íLbIz‹<v«\Ã\Õy\"ô¤Æ†£9\ÍOˆ\îSc€sT\Û\"Ÿ\í9£–\ã\æ³2uM£ˆV9R§Ö»„t˜m`\rejz>\ì\ÉñXNU)œ\áÝµe\àdl8Á¦À5\ÎÕŽ•f@c¦<<U\Ï.—\Ê\Í	‰\Ä\Ì0`\æ®Yü®*o#9\âŸ\r¾¥&Á#r\Ä\åEi È¬‹<®k^3*F\ÆÈ™ª7\ç5¨W\"«KA¦#\nhyª’GŠØžj£,tÀË‘9ª\î1W\åLf©\È)¡2³¶*j–AU\ä4\ÈdRµUóR\Ì\ÇÖª–$õ¦Iz\Ìe…t–	ŒVœ½	½¡\0©f±6£” ¤–ø\nË’ðcª\Ær\Ç\ïTXÓ¡¡%\Ö\ãQ<ÿ\0-Vžô\ÒÔ¬$i2j=\ÏJw@Y¸j÷’ˆ“8=\ëH\Æ\äJvBÁ\ßNzfºý3L[h”\Ïz‹H\Ò\Ö¨\Ý\ë[J›zWTacŠs¸\äEN#¶\Ú\\€¹5]˜\Ê\Ø¶±\Î\Ø\Þô“¨X\ÍXE\0c\Õ{£¶3šCG\â—\Ú¯;»ù¦5\ÝxÉ‘¹\â¸;“™\ÍgÔ¢\å°ùZQ\ÍU€þ\ìU”\ÍY›z\ÓM<S\Z€\ZzTDŒÔ§¨Š\å¨\0$\n‰\ä&ž\ã\Ì\ÐNMFA1EBÆ€\"9\Í).iE½ 3\ÍZO^\ÕV1\ÍX@\n`Nœô¨.jr@Ž\rV\çq9 aQ0\È\ÅJy¦\Æ(£ RI§ŠG4CJy ZS@	F\r*ñÖ\ï@\r§M¥ Ú”\nfqO^E\0=Hü©\Í\È\â£QŒ\Ó\Å\0*ƒÒ\Ò\ç„\æ€ñF\Þôb\ÔPCgŠ1šN†•¨¤R¯\ÍM\É4¸À\à\ÐƒŠFZF\ãš@\0¥#4‡­ž1Hú)M ¨4¥¢˜	J(\Å-\0! RÒ@\0¥\Å–˜€u \ÑI@\\RƒM¢€F(f€@ š;Pt¤&†&›“@\nM\'ZCH	\Í\0)\ÖR’i94†DÂ¡aVX\n¯\'€ž\Ì\Õq/U¬&¬\î;\é š3HzÒ‘\ÅQ#I¥ž´ @\ÖžXŽ0±¤22)\êS\ÏZŒšCO4 fš2E\0:¦Š„sR®ia9«–ü\Õ8ª\ìr)¢M]1±{÷¯HŒ·LŒ‚+\Ì\ì?\ãò3\ï^iƒnŸJh¨Y´Rù±v«º^¤&M’Ÿ˜qW&‡r‘Ž+\êÕ­eóbc­P\ìt\Ê\ä0\ÇÝ©†5‘¦\êB\æ Œ@aZI#!\ç¥14\Æ\ËµBWV†\×\" ’,|Ã¥KLI•FS‘V œ8\Ã\Ô1Q\ão\"R\Ó}	5\r-.#.˜\Ís“@\Ð9¼WOø\àž)o,R\í2š\Ætï±½:–\Ü\å@©\ÔóÙ½³a‡*g ®I\'º\rHj&j\Ìpw\Å\Æ3Ò®Äœt©l«Â›kF\ÅW\n<c\"Z,“‘Q8\Îi\à\Ò52\n3G\ÅPž:\Öqœ\æ¨\Î94Ç™:\ÕVµn`\Öd\ÕH–Q”UIncT¥<U\Ês¶*¼3Ô“±\Í$\æÁhkYª*\ÛOŽ3U\";SŠŽYH\ç<\Ò\Ë&\à–\ëR\Æ\ä\Öb\ÈKV…¿#Ž”¬Rz–Ð“RŽOjH”c\' ¨e˜³\ã\êM8\Æ\â”\ÒY\î\å\Æ8®—GÒ–\Ã\æ¨4]+\ËGš\è\ã‹b\×T!cŽs¸\ä]¸¤+ƒL\ÉÈ¢I0=\ëC\"9\\“Ò¤†-¿52(\Ë‘\ÅX\'°\é@†\Îj•\ënCŠ·#`Uó\åµH\à|J>f®Aº\à\×y\âŽ7z\×n\Z³\ê6\\ˆ`V\ÐqU£¬© U™°\'\Òi\Ì8É¦š\0c53qòZcP’j6~x©\rG€(¤’9¨úÔŽÂ£>\Ô\0‡ŠilS‡=iŽ¸>\Ô$um\0\Æ*¤x5j=\ÝhGùR \êi\ÉóT\nÞ”\0¸\Å4Ž\âœ[4\n\0‹<óN \ZLe©YqÒ€#n)¹§žz\Óp\0) \çŠ\\qM\Z\0^”fòs@ \0ŒœÔ‹À¦\ã)T\Ð³KšEóJx<Pž”)i\â€9âž¼\nbŒóJI nM#\ZLšv8 Ži2ri\àq@\\\Ð1šB9¥e§*Š\0ŒŠrñJÀSg4Xfa¤5\Ô\"\Þs;€\ïQƒŠÌ±\ÔRf–˜ Qzbœ(\ïKz@–€(Ç½0\nP(”\n\01N\Åš\r\0&i3Jh\Û\ï@	šPh+Žô”\0SM?\Ó\Í\0&(n(¤~F(3IF\ßzZC#j¯%YaU\ä€š\Ë\ïU\ÌsT\í8l\Õ\Õ;©¡	JzRcšVãŠ¡:R\Z\0\É\Å8ŒR3Öši\í\Ï4\Ò;\Ð1†£=j^´\Æ\à\Ò\Z#=i)Æ›@N¢¬\n®µ:ò)4f®Bj”k\ïWa™&™\Å\ÔZô\ëš\Ú3\í^ai\Í\ÌZõ\r1\Ñ#\çµ4°\ÕVxƒðÃŠ»°u¤x\ç?…QG3ulö²‰ \È­§\ê+q—\'*i\íÕ²\rc\\\ÛýšO27 úR¥1cœƒV0$Õ™¥Üµ\ÔqŒw«ñ©G\ë‘TC,>•]”Ž+S\Ëz\Ô\Â:æ¥¬0x«6÷Ex4\É\"\Îj0¿5¹z\â\Ù/<f±¦µhñ\Ål[1«RÚ¤ñð}k\Â\çM*­ôk\ÐÕ¸\È’Kq4\Ð9\Åq\ÉXï‹º&\'\'5\"\ZŽ4\ã­J\êP4H­N\'ŠŒ/½?oi‘b\'\éT¦jû\'j¤\É\ïL{“Œ\Öd\æ´\ïóYr§½R%”gJcÁ«\Óð\rPœU”$\äÔ/4\Ç\\63SÀ1Þ˜\Ëö­C#\æ ¨“@‰bÖ·JÎ…3Þ­(¸Z\á{\æ¹c„ˆdŸJ\Ú\Ñ4b\ÄO(\ë\ëU¼?§G3	²}+´¶¶UPÀ«zq9\êLX`(ƒ\ÐT\Ù\Ï>”\íœc4lÀ\ë[\Ú\Ç=\Æ\0MDŠdnzS\Ê\ïn¸«T\à\ÒqQ;\à{ÔŒ6÷ª\ì™l\æ€\Z[5\Ã÷F§\Ù\ß5\éû²3H¤y×‹Nëƒ™Ú»¿ü¥ë„„þõB\ÜLÑ„µ>\rC+R\çµhH§8 ŒŠ1\ïH[¶(œSi_š1\Å \"cQ‘Š{õ¨\Ê\çœ\Ð\rG\Ô\Ó\Ç£š\0ZcœSÛŠf;\Ð\ã]¼Õ˜ŸœUt\éV L¿Z\0YŽx¨±³ñ©f_›­1‡J\0f\êP\Ü\Ò\ì\ÐI\æ—9\í¹¤\Æ8 M\"¤\Û\ïL\'\0/i­É¥\Îid\Ð\ãŠAÖœOjn=\è\ÙùióIŠr¯h\àƒMf;©\0\Ãu©qš\0U\ÇZi4(\Ï9§…Á\ë@§R\Ò0Á@\r\Å;øiq\Í`P”@=©6u\æ€Œ\Òw£o½(\Ð1J)Y}\éð\Ã\çJ¶3Þ€?ÿ\Ù','2025-02-27 04:35:30','Male'),('650e8400-e29b-41d4-a716-446655440002','6bff076f-d582-11ef-9523-005056c00001','Admin','User','Administrator','Administration','emily.clark@example.com','555-2345','Contract','2021-01-10',0,40000.00,'Night','650e8400-e29b-41d4-a716-446655440003','789 Pine St, Springfield, USA','{\"name\": \"Mark Clark\", \"relation\": \"Husband\", \"phone\": \"555-3456\"}',_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0\0ÿ\á\0.Exif\0\0MM\0*\0\0\0\0@\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0ÿ\Û\0C\0\n	\n		\n$ &%# #\"(-90(*6+\"#2D26;=@@@&0FKE>J9?@=ÿ\Û\0C\r=)#)==================================================ÿÀ\0\Ú\Ú\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rðbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0Nirh\"Š\ê9\ÅÉ§i¢”R\ìšvM2Ÿ@\Þh\Þi´P™4»2”PÁ5(\â¡´€—y¦—4Ìž™Àõ¨\ä †\é\×5-”·yQäŸ™º\nÄ½¾ŽFs#ƒœU]GUgœü\à*œVa–IŸs8	Ÿ\\f²•G\Ð\Ú0\îOsu`2òu •U\"š\ã÷ò!U^rx§£©*)f\ÎI{,¥L\ØnE`Þ¦ñŽ†|Žõm¹\ã9¨¤˜G\Ä{Kõ\ëÒzV\Ô\Éùˆ\É\Ç$\Õ/\ÞòêŠ‹ý\æ\íMk¨=4#žW›;\Øu\ì*Œûš‘÷?v?\íœ\Ôg\Ð}xª3džX9Ï§T\\¦N?\nSµ:0ZD\É\ï“\ëL@#=\Ïûˆ\ØHü©¸	ôô§y°óÀö 	69SŒ\à\à\Óñ\Ç1\ÈO\Ýn)¤\'’\ß\Ã\Ï ö¨2˜+\ÓE\0:Xž7!ÔƒÚ‹ˆþDuê½©a¸\Ç\Ê\ÌJžªFjy\È\0\\õ\àR¸\Ò ‹§4±…$8Ò„]ŽO@N)Ò£ò†#¯â‹…†IB@úæ„†8éŠ±l\ê\èN™Á>”²Ú´D°\ÃFNF(½´uE\Û-Tq\êG<0\ã¶’¬Ñ˜\Ô7J\æc‰ft.N:©\íR\Ù\Ü\Ëm0P:\ã¦k)E=£6·:!:©\Ï\Ó\í\ï$ˆ” \'\æC\Æ~•N\ßSW}¤˜\ä\'·«\ÈñN\ä]Ž:y±ŽŸ…d\î·5V{\ï4\è%\íÙ”“§œV\\šd¹/™\ÎTf·f³–.Œ$¹¦˜.“\n“‚W\ÔqŠ¥&\'\ÔÉ·…ý\Ü\ê2{ŠÑ’\Öö\Üy‡k)\Î1š´,¢‘\Û99\Ãw«6\Â\â<\Æ\ã\rœƒù\Ð\åq(™‚ÿ\0÷{X÷\Ô\Ñ}šð,c”p	4—\Öv\é!fŒ\Û\àuO™j”–2HÀ)\Æ(Vz¦´\'’û92»]3÷€\Í^¶¿?)p3‚Â³­õ\Í9„w›e‡qZŸg†\â?6\ÝÁ\È\Ï=\r\Z¡hÑ¨…vS\æ\ÄF	E=\"%r§#Î¥\ÓY\È6»¨¤t®‚\Úe¸@ñÈ§Ž‚¶§>†!mK\ÖW¡C÷—ƒS;šËŠVŽó›ƒZ9\çš\éOC•«0$\Ó	4\ãšmP\r$\ÓI4¦’˜„É¤$\Ði¦€M&M\Ó@É§\ï>µ>•\Â\Ä­¥=h­\nZJ}!…(¤§\n\0Z1E\0R\âK@8RTs\\$Y\àŸNÔ›\ZC$—\ã_Z\çu½pFh\ç\'‚\ÃúU\ÍcR†\ÞÔ\Ø\Ü8½q7W\âL\à“ža)tFÑq\Û\å¸%ò\ÙcÇ½_ŠÙ£‡?7V?Ò™g·O2l\ÆBõ\ÅXG’õ\Ñ	Ø„õôƒf\é\íŒ0FX¿mq7ú\ÆA»ÿ\0\×5fur#\êªxç¹¬ýZS\æ|ƒ´\äâ²½Ùµ¬Œ\â\Ì-\'\ï%n}\0¨e\ã\Î\æ\'\nƒüñN´Y*~c\Ü\Ô–±\å†ô­¬b\Ù³8B€*\çŽ*¡\áFO>\Õ;\Ë‡­G\Ù\çÖ©±¸&¦q\Î{ñIžGMM½7‚~\ïqŒ\æ†\Ça¾Q¿\î\èj\ÊaH`}jÔ—ƒ•D:\0Ni¢O0gŸaF¡ ol`… ñ’3H2\Ý\\t#)\ß/÷rzñ\ÅY‰\Ú\à`ž	<ŠM\Øi\\\Ïr¨HòÔŸ\Äb­D3Œ \äŒ\Ô\Ò\Ú(%‰%	\è;Se\Î\Ä?0\Ú3I»+\É;—\æ\ÎFGZ\ÉC„lðiÿ\0gš¥y\Újy\"Y£2ªx$Œ\Z/`¶…PNI™	\ãb®[J®<½Û”Žðjb\æzçŒšŒ\Ç,$6w`÷¦\ìô`®µ-=³\Â|\è	äŽ´ø\åŠ\ìlw\Ë[“\ï×‘R\\Z—u¸\É\àµi\Ø\Ò\×WB4R\ÄB\Î<\Ä\Ïÿ\0CZvEŒeB\Ñõ\ÃpV©Y\Þ˜ü‰\ãŽ\Ç\ÔT©›W\Ü~ƒ\ëS+µ\æTlŸ‘¤.fµ;¾fN‡h\Î>¢Ÿ)¶¼@\ÊV7\ÆNx\Ïÿ\0^¬\ØI\æa\Ðg™}~•b[\Îø\Õ#\Ï¥bž¦­\\ÄŽI¬\\üŒÑ±þkV\ÛSKˆ\ÊO\Îa‚µFö\Ë\í²”Á^Œ§ª\Úi¼†v·i˜2ý\Ý\Ü\æ®É¢i›3Y±B\âþ~R*‰Í½\Â(%#\'\Çÿ\0X\ÕÄ¸¸„‘w\ã²ô?…6Qou¹a&9Wœ\ÃRI­Ê“O`º\Öð’T4.rF3ƒÿ\0×ª1C%©2i²\Í\Ö\ä0ÿ\0\Zp3\ä\Ì‚§œ\Ól\åŽ\'6³ñ“˜Øžø\Z¢=Gý©/ùùr¨ù\ã?\Óü)ö¯-\Èe\Ë\'œvª÷²47;n\ìò²/Æ¤MAˆ¶²\ã±ýziktUfn<™¼·taƒƒÖ¶{W-gt‰4~saAÊž\ÕÔ‚®R#‚9\ÍuS•\Ñ\ÇR6cy¤§‘M5ª2i¦œi”\Ä!¤¥¤¦i¦A¤EK\ÍGRR	\Òb”žM¦¤S¨´¢’Š\0u\Úu\0\á\ßù\ÒTH\Òd.vú\ÐÆµ%ÐŒ1ŒŽ,{V-\Õð(ò–\Ç?\ÄjMZ\æ1·F\Ã“\ï\\ö£x²¢Dƒ\äN w®z’\Ö\ÇD#mJ·S=Ó—›«pª;UhÐ¬Ÿ.ÁÀö©J9BOõþ•£§Y¤p\æDÌ„ñŽÕƒ•‘´cv5!yvF8\Ëu­K[jª]\È8ö–\ëÏ–€nY\È\áGøÖ ‰mm~\ÐO(05„\ætF)\Çv¾a\r\Ä@\äúš\æ.Ížgn<ŸjÚ¿”Ã¦\É\Éf”ý1\\üÀ¸ŽðY½j©«\êÉ¨\í¢#·¶kÙ‰`\ÞX\è(¹Ü’1q\Ót†\Ü@ƒ÷Œ2{`z\Õ;\ÈL}ŠF:g½i{³&¬Œ\Ù–Bp}”v¦º,xŒöQR\Ép ™üê°‘ƒò\çz\â´I™¶‰“%:\0¹\èx¦Xò=)F89oÆ‰ˆ\É\nK}iˆD*N~aŸÆ¬$j~ëŒ·QÒ«Dc ¯jIKG0# \Í¥,‡\çö\î\r8‰2U\Ï\Ê\Ç!½*+;¦‡\Î\è‰\Ç#‘Z\Ä/‘\æ\"‡‰Q\Îk&\Úf\É&´3\ãó\àù&\\¡\à\Z_Þ‡\"0­\Ûo¥j\Åµ\ê*œ¹\ÏJ§{£\Ëm òðÌ§\'¤¤¯f-lCMƒ½dñÁ\Å-¼H$E˜†\\üÂ¥‹Ì¸…£¸Õ”\à†©U<­¢h\È\Ð\ç4®U¶1eŠ{w.®Lm\èzS\í\îZL£·\ÊÃ‚y\Å\\\ÔcXg\Ìe@e\åI\ÍTò¡pAVGp(sZ\'tdÕ˜®Ý´ž\ïZ6¼#œx\ÏŸ±„Â–nä“Š˜K\ç\åp{sÒ¦J\êÆ‘ij{\í(¿\ï\á8~§\Õkm\Îþ\\ÿ\0»t998«–w-²2£!³ŸÎ´¤†\ÚõG˜¡2t\'ÿ\0¯XÝ­\Ílž¨¥b\ïet²¨Ü©Ê¶„2H\ZH>a\Ô\àÿ\0žk!\á’)–	ò#a˜¤\Æs\ê+J\Ê_²•\Ì7½:ð5³\Õ´V„¹#G32‘€\ß\ài³Xyq†p\Ís\ÇU5v\ãNŽä‰£b\0\äú¯ÿ\0\\Qö†Ž9#¸¤i€\àôo¯jI’Ñž\Ã\"Ep|\Ûy\Ñ \á“>¾¢©\êZeÍ–fP\Ï\è\é\Î>¾Ô—›¢\Ã!ý\ÎpÁ¹+ÿ\0Ö­MUY£kiC \Æ£­h\î•\Ð-tf:Hnaˆ,‡8úúV]\Å\ÓUÀ\É\ï\×5³\â\rM2sqk¸@Üœ•úúŠÃ¸+0\'Ž¹\ãµ\\l\ÈwD\âð\Ë†\á¹£G\áN<\'q\rµ½Eeg“1÷sÞ¯é—ªò{† 7\0žqUk!^å—ŒŒrJú}+cJÔ¤±q¾2­\×N[=™,‹\È\ÇqP\Û\â7\Ús\Ï*Þ”\â\í±2WV;h\æŽdGjq®v\Ê\é\ã%‘rœ\"µ-µ8®\\ Ê¸©®˜»œ’‹L´E0\Ó\Í0Ö„ˆi)i(\Ú)\Ô\Ó@	RTtúC \'“E©¢¶2N¦\n} \nZJ)ZQÖ’š\çbß ¦e¹½SU¯n–\Ú£‡#…©„‹o	w\çh\Ï<d\Ö\×K\'™spp\0â²›iY\ZÁ_s7S¹T\à130ùˆ9\ë\Ûðª\ÐÂ± -\Ë÷j¬·l\í\'Lž=ªõ€\àÉŒ\08\Ír\É\ÛS¦*\ä\ÃóŒ¹\çžÕ±D‘\ì ™H\ãªµ•¾Hr@\\\ç$\ÕøŠG™\0a…b;z\Ö•Îˆ\ÆÚ¶¶òÝªw1\ë“T\ïoš\êc–ùÀ¥G}~\ÒbcóœqŠ¤û†B…\ëšJ=XÜº\"mJ\ä\É\n®r þu½“H7\È\ê\ÏzŽgŠ$œ:wª\Þ\Ê\ç\n\Ì8À\ïZ\Å]YI\ÙÝ—\æºX¦e¶\É|r\ÎsšÈ¸yn&-#\î9ÀïŠ±½#¶y\ne‰\ÆCTP\Æ&7¯\'5iY·vU¸]ˆO¨¨¢ˆrNOAV¦\Ü!\ï\Í$’˜‰Ž5U	“U}{Œ<qŽœ\ç\É‘“ƒž\r8džø<T¾Q!±œ\Æ(½‡k¢\ÜI\'=A©\ä‹\ÍBù€\ÈµeÜ€\ä²ôÁ\íV‡\î\Än*p}\é7a¥ \Û0²‚¤ò:J³krúlþT\Ãu´¼ŒŸ\å\èj)aò&Y£+²AžOÿ\0UM)\Ì<¡1qŽŸJ–\ÓÜ´š\ØÔ’Å„-ya™b8\rƒœõ\é,uo6	\"¹\Ú\ã VŠ¥c-°aoœ’£Žž£¸«\ÖñZ\ê\à\É	:\ÅSŒoZ†´Ô¨½G¿“‚\ê˜\Z°#\Þ š7F#+œU?&H\Ã8R0TŒƒKd\"¸…ÁR’\0J¶1Ò¢\×[š^\Ïb¿ˆ-\äŽ\å[h\Æ9b1Š\ÊŒ½3\Î}+¥Ô¢gL(\Î\å\äñX“B+Ê“ŒŽ+X=”Ö¬¥$f²£ŒŒz´‡#?tŽ§%ü,a†DÁÁõ\ët\r€T\á‡qM»¡%gbkk‡ˆô\ìGÿ\0\ZÛ¶¼Wƒ+´dò¤t?\àk ‰ñœÁV™!u—ø\ÞQÚ²’¹¬]Ž¦\Êò\ÝÉµ¼¢r6¶q´ú¥Z¸±Y#h\Ãe9\ã?ýzÀ\ßÍ·÷\\‚+GI\Ô\Ý!X§˜¾P\Ù\éÿ\0Ö¬\\^\è\Ñ>…\Û	M¶ô¹8RpôË¨Ë–‹¶r\ÕMZ¹H¦Äƒ‡$sT\"™’\ç\Ëfý\Ù\\)##ž\ÇÚ’]FÊ’I$‰\"0\\¨\Úù{\ßñ¬\Ã%Œñ\Ïðœó\ï]Qˆvó’¤œV=Å›–©8Á\íZ\Å÷\"HÚ¶\ÔbÔ´¤Wp\\.‰ý\rr—±‹yh\Â\îÃ¯¥O¦#[LclùLv°<cÿ\0\ÕK«\Â\â1ppS¶Pù\ãÞª*Ì™;£%Âƒµ\Æc\'*Þ•c\ì¹(Û‚œ\ã~3š`ˆù&H\Î\èúŒ\Õ\í%\ãºý\Ó(]\Ç\"­»–òN!X\æÇšƒ*Àd0ÿ\0\nŠkx¤!\Ó*Xr§ŒQ¾]#M—µoC’¾â¤¹ˆK¸³u•GVS\×ÿ\0¯P›L»&‚\ÞF‰Ç¨\á»f¬\Ël%q*|²¯!‡z­\Z%\Äþó£)<®:§jž\ÊR\ØWù[<\Z\è§+\è\Îj‘¶¥ûk¦ $\Ã8Ï­Z#½R)¿¯QÐŽ\ÕbIM­÷—ƒ]\çc\é)Ø¤4\Ä2Š( §\Óiô†W=h¤=h­™\áKM´\0ú)´\ê\0AMs—\Çe§gª\\M\å$ŒNúÔ²–¥-b`G»9\Æk–Õµ”S\î¯Z“U\ÔZK“\Ï\ïXò>I$rO\Ï)]VD†’@£’N+¤¶·iDv\è=\Û«/Gµ`\Z\âE!T`]˜	C&[ ôQÔŸj\æ¨ú#¦š\ê\Ë6\Ö\é4\ÞJŸ\Ý/\ß>¸þ•¥t\Ñ\0\r½?•\\y•-KÂ˜óx\0qôÖ¨\Íj\Ï2\ÆHÂŒ³\Ó\Ôÿ\0Jç¾º››ñ—c·=Xóš¡s{°žI\àu\ÅX\Õnc‰ð¤¼\0;õ\Íd\ÒÅ†I\Ï¥uF7Õœò•´D‚U\åØ€=³šra\ß\ä*I\àcŠ‡\Ë\ä/|ð\0\ëZV\Ö\r\Z‡À\É\àgµSi“lI¢\Ùh@\àgÚ¬\ÙÛ!\äNcŒS®¢.?‡®+M-…¾ŽÀœ©`~µ›–†ª6\ÔÀH\Ö\â\æGuF1ô¬âŒ“36FN@5¯[[Y_¼Ûž½+¤\Ü\ìI\'ƒš¸³)-‡! Ž8<ý*ô)\Ô\äg­P.RB¿€­OF\Â9¡„J\×nvv°\È#Šž4\àŒ0\ÛR\ÝD%@§\âVª8£dz²ðA¥{¢’³om$2\êw©\ëõ¼­cl°==ÿ\0úõf3¶E™\Î\Ì(½³^f„‚	\åq§ü\rM\ÖÌ«=\Ð\ÑG™a]\ÛU†OQ‘Um¾Ibcª3‘\Ôþ½i\é£\Ì,’vœ\çŒ}iœ\èIE\ÃgqB’Ù‡+\Ý\ZVW_n@Q*ŒÈ€c>ÿ\0:Kdˆ»\íeB0\Ø\çiÿ\0YD\\Y\È&O–hù\ÚxÏ¨­‹[•¹O9NU†A\é\íY5gu±¢wVd‡t¡v\ßÄ¹\0s»Û«”}b¹8À\çkÿ\0J–bc‘\r»a„ƒc\ÞßŸ–w…/9“\\²&>\ëzCE\ÚZ“*\Ëd\ËˆÀ\å:‚:­U³Ê½H¤FW\Ð\×O5¬»g{\à)a\Æ\áY\×6;ìŒª\Ê$·?+t\Ïÿ\0\\P¥}\ãmG\ß\é\ä¡D\á†F{õb$²\ÄJaY3\ÂI\Î>†º\ë;¨\ït\Ø÷rñŒI\ÏQ\ëøZÄ¿Ó–G&<\r\ç\å\ÏCÿ\0×¢-\ìÁ¤õE[t\ÉòKF\Ì3\å¸\è}ª\ë»C\å\ÌWdª¿¼\\p\ÃÖ²€hÀÝž9\íZa\å–0\×1Œ\í~\â‰+l³\ÜØ³˜CeLLx?\Ýÿ\0\ëUK\Ùs;ôx\ÎAú\Õ]:QjJœý\Ï(\ßÀ}>•j\å0±˜\É\ÎwþELw)\ì\\2¬\Ñ\ÆñœHW \ç¿ú\â¢\Ôc\ÉÚ‚7\0Xxÿ\0YzdÁ·Z;\Ê\Ç\Ëbzõ«~\Õ\ãx.T¹\\\ZMY‚wF=ô+†P€‰\0f¡÷Æ¤!%¶R€:†¸÷úT—0‹pmYþem\Öòxî†³\è\ØÞ˜\Ø2–9\ÛÙ‡·­Z»WD;\'fUK,/È·\ËD\Ã8<®\r	\Û]+Æ¡7•CÁúzj·t\ë4d)mŒr	?wÿ\0­U\émux›”=Ç­_5÷\'–\Û©\å\ß\Û4L„…ë‚¿‡¥f\Íe6“?f\ZX$\à¨?¥X\Í“wo  ó¹Nwñ«’\\Csm \Ç$\á—\Ú}Gµ-\Û\Í\Ò~þü\ÝW¸ö«V÷+$ÄªwcÐŠÇ¾9,\ÙW9T‚\å¢)t‡\å\æ\Ç8«ŽŽ\è‰Y«m³‰cS\ÆH\ÍLPõ\ÅgXJ²!h\Èõ«\É!|sšì‹º8\ä¬\ÉsIJI¤ª LR\Zu6˜	O¦\Ó\éª~õ¦Š\Ø\Èu-6–€)\Ô\Ê\\\ÒN1\ÍsZ\Ý\×\\	\àVõÜ¾T-\êx¸]^\é¤<ž‡•GecZjú™——rO,M>\Ö\ßÍ™KdŒô\ê\É®9>õµcj\ß\'3s\éŠæ“²:b®\ìk‰“l£h\ëjX\ß\í)”\Èiœ QÀ(tû<˜r~PMM¤34„|–\êH\'Ö¹\äô¹Ð»\Z’\Å\Ðù3º\äsŒ\ÈÀW?­\êfL1\àK)ù\È\ì=?­njR-•”l\Ù\ÞÀ\ÌÃ®}pw·,ò\È\ì2\ç–\'œõ\êiÇ™\Ý\ì…RVV)\È\ZI7ò„÷ÿ\0õÕ›+f™\Â(fv8€¦\Ø\Û=Ì„õ\Ú2sÞ·´«_/{–\0¨\È’s]2vF1WeqxH*žp3€+j\ê6µƒ\Í)ò€q\Çj½g§‹kd8\"F\àP\ëA\å!%›b¨u®iM\É\é±\Ó(­w3-Ñ!v\\¤¹Áô5­r\â]*\Ú²•lzŠÄ\ÍK\'bO\î\å\0c¶kn=·6H\Èýp=i\ËKW¹\Í\Ü\Ò\Ãn˜‚GµPŽ4“\åI¯qŠ½«#	\Ä\'\îäŠ©\å,D€UrMl¶0–\åicd”Ÿ”OCš»eÃ\ã\ÝsP¼Le0É§\Î9ÀÞ†\î¬	YÜ½ ò\á¹U8Úª$\äÀrN¨ÿ\0Vþi­Y†Qž+?`—@ÝŒ*QL¸°ü\Ãn\î2;\Õ\ÈÁ™8`F\×Z\ÉI$˜r3\ÎkJ\Ê÷.\Ñ:,N\ã\nÃ¡ü=\é4Rd†?(	&&8-Žž\ÇÚ­\ÂLo‚w\ÄGq’>ž\ÕNWÖ¬Q™\Óÿ\0­RZÉ;W \ÏCY´\ÊM\ZòX\èÄ±Ò¯8?\Ä?Æ°^	ôK¼^\ÒS\Ãø¶\Ï5\ÐYÊ Ÿ-ŒRùg\×ñ¢’WŠô˜\ä\0HN€ÿ\0ý~ô£&´{\r\Å5p\Â\Ü[<À¨v`Go§×­:ú\Ç\í9—pVÀ@:ž\Ùú\Ô_b–(\Ú<‘†Py\Îq\Ðÿ\0J|{\ã˜,²¬\n2ûŠo\ÈQó-\é\×R\Éa$3/\ïb;\ÒG4ø\ÚLRÀ=h\Ú\ÛD0\ÅN{\à\çw½b^D\Öop\ì¹Um\åsÀSÁ#Û¥BÔ¶Q€\Ëe©I\Z6c\ã\äzVƒ\Ü\Ç–\n«Z\Î~R½+=÷#¤œ°#ô?Ò®L‹kw ”\äcnyÚª÷&\Ös`L\ÅQ”ˆ\Ç-Ôñ\\\Û7Ù„¨1*œ=>ž þ•>“|‘\Þ<7`©1±\çw½i\ÞÛ·‘#HUc\Æ0:B?\Ïjmô\ÜÊ·ò\åƒvWw\Ý$ž¾\Ç\ßÞ˜€\\G%±r§=\rf_H\Ö7H\à\æ9Fzþ½Kò£\ï\'®0GPE¶¨¾Œ¬—e¿Žnz\á¸\Åt\×!	¸O™J‚Àwÿ\0\ë\Ö±|Ÿu\È`G8\ÏZ·¦;\Éo oœ)ƒþ})µuq&Ó±=ý\Ê\Ü\Û.\Ö;”rGoFÊ²\Í\ÒÞ£Yß¯Îœ\Æ\àr\r9\äû-\éŒg\åœ\çüŒU-J&889\Èojp\Ñ\ØS\Õ\\·\ÒÙ‚f‹\í\ã“\ï¨«2[Ewm\æ[È¯p29_­Q\Ðu\0nDs¸ðsÞµ5m9\í\Ð\ÞØƒ\Çƒ\Ôz¥}w\Ú\æ]½\ÕÎŠ\ä:·s‚¤p>•¡\ç-\ÔbX+¯§z¤fYSü¬3ƒÞ ‹Ì²„\'\r\ê:Ó·\Þ?@¿-*b7¨\àz\Ö}µ\Ë\r\Ñ 0\Ç5£$‰!=\Ës‘Ú³¯-\ØI½G\×¤uV2–÷6¼?©˜\\\Å\'#8\ãµu\Ñ•l‚¥y¤w\r\r\Ìnðk¼Ó¦i`ŽPG=W=+zo¡…E\ÔÖ¢‘8÷\ïN\Ålb6›O4\Ó@„§fšisHes÷¨¤=h\Íld:–›J(\ÔP(¯9KU°Â¸‹\Ì\â<ó\Îk±ñ&~Àq\Øó\\•÷88\ã¹\êntSØ†\Æ\Ä\\]\"–\n¤\å‰\ì+¦ý\Ò}\ÅÛž<\àVv•\Z$;™~vëš¶7\Êv…\ÆNÒ¸\ê;\èu\ÒV\Ô/\ä\"ù‰\É\Üs\è+KJCý˜€ž$;›¬}Jhˆ!œ*´3[RÑQòy`þ½e%hš­Ì½sSLpA#€>Ÿý|\×.\àº<…l±=\Í]¼&YÝœ÷ ˆ\äò\âAÿ\0-9oó\é[\ÓJ10›m—-|›-0I&^Y[G@¿¯J\Ö\Ð\"&\0\ï’fl\í\é\Åg\ÞD&{[h\Ð.;\ëøV¹‘mQ\"…”„TŽyÿ\0<\ÖS•Õ©«;—\Òù|\ï—$ ,^z\nŠl¾¡l€‚ ‰ˆ>\çüšÏ·•K\Í \ãn\'¶?\Äÿ\0*dw\r\æF\Ç9a´û\Öi\Z6C\Z÷ª–RyJµ\n<®qŒQ‡û6 ÀubAüEX·po`qÄ©öoþ½T–š\n/S?[·sÈ †Sµ°+;`’øù°÷®ª\é\ì\Æ}\å7\Ë&y\Û\ïøVQµX\Ý\áp¼\È\Ë\ÈaD\' N\Z¶gù-‚vô¨eµf@Ê§,21[QBl\0­]†\Å\Ï2„Œž¾\ÕNVÔ”“\Ðæ­‹§\Þ\Æ§”n\ãnqÚ¥–I‹Ld\à•o\ì\Ã~8ù”0\ÏznZ	GSXNp£8<\â¯Y…ÀÜ›ŠŒƒ\Ðÿ\0ú\Å8¢\Æ7\ã\îõ£½Z­À $]ñ°=Gø\Òrº-µCe\Ó+¦¸‚C¼œ°gùƒJmZ\êö\èª\ëþ¶5=?\Ú\ÇÒ§¥’7^&8\Î?¨¦\Û]E\×Ï˜\å\Ç?{üúRwhJÉ“\\\Û*•\Ä\ès\ÃOÆ”&6‘2‡î·¡þ\é­³¥Å²\Ü\Û\ÊZ0\Ù+\è¡¢H×—P0ÄŠx\Æz§oj…©w¶Ä–\Ó*$i0VY§\çþb«j0ˆ¤Ã²Ÿ0\î;žßGr‰\á\É\Ú72ŸQ\Ç\çŠt’ý¢\Ø\Ç!m˜Ê¶9SEšw\î‹\Úuú¼*¬¼Œ…\ç;TZœ‹4n?(ÁÇ¡þx¬{{å³˜		Ù¸3Úº\'¶[„–4\Úh’{ú¥&¬\îRf¬K5‘Qƒ\"¸\'­^º·ûFŸ‚0ñŒg=G_\ê*‚K%þÒ¼G\ÆðB?úÕ³*,‘\Ç ?»e\É\Çþ½6\îMúT\Î\Ð\ÊRA»i\è˜ô­;]]¤¶hg$€6‚zŠ“S´DP H§\ïr?Éª	¦JøR¤\î\È¥Vj\Z¢+\ÉVA¶LeÀ\Ç5B“v\nŒœ÷-\Ô2D\ïzsŒõªñL²8*\ÒÐ†õ5REtò\\ü…rcô\íI§^5­áŽ^\éP\ï\ØUXd\"€Yy¦\\\Æ\×	¹q\æ)À¥\ä\Ç\æ‹Zš\r\ä \Ë/\ÜT	,^XK‚|¦;Kc;OøR\Û\\}¦I0²/\0ž9ô¦\É3‡óÒ‹t•.¬¼\È1SA®ª\Âÿ\0\í–`¹\Ô\0Ç®?úÆ¹a+Û¸‰\ã`ÿ\0«z\r\ìBñ£Ÿ\ä\Ü;¿þªm6¯Ø”\Òv,jVbÜ÷lr8\ÚjšM˜Ds\í8OOjß½¶ó\ä\ïU\0u\ê½?J\æ®b)!F\âEúôÖº\ÓT,Ñµ»¬ f6E#\ã Ÿ—¯½6)w\ÂQËœ&¢\Äûñ\Øú\ÓD±\Æ5Án¸9ú\×W\á\ç[\ÎBœö\Ír©&\ÂWª‘Á«c\Ãw>]Ï—ü/Áö­`\ìÌ¦®Ž¹9Aý\áÁ©ú\ÔHH,=y§ñŽk¥\ìy\Å4\Òf›šd§\æ›KE€®z\ÑA\ëI[‹J)´\ê@:Œ\ÒR(ž­\Úl\åNø\â¸û\È\Î#\ê\nðA\Ù\ÝH®fò?2\ë=9\È\íÿ\0×®z–J\æô®ô¦ýÃ½œñŠ»}p\"€\Ç\\‘ó0\í\íUJB:ŽO\\U™[ˆ3\Ç$\×Wgl]‘\Î>\Ä]\ÉË“Šè¬‹±Ï“¸-sWG…Uû©\ÇÒ·4\ÙL±\Égp‹ƒJkDn\ìÁ”,•\ä8\Ã7pj]5\Ôq\ãžI\'ŒT6\É\È§\×ÿ\0¯Z\ÚRG²\âüd\"G´¡8Á?\ãVÝ‘)]–>\Ò&Ô¦PTD‡‡p*	®±å‘€NH:ú\él-›\ì\Þoe$óŒú«.k0±\nFÑŸóÞ²²l\ÖöExÀ*gÛš\Ù\Ó%]Z¡\Ç\'\è+–9]¹\Ðt\Ími\× º¸O˜ŽzU¸\ÙvZ¾\Þó»\ËW¹¦\Ç1û)#…~zó\ëõ­K‹~bùG9\ãð¬©\Â7˜\Ø\á\Ôv÷õ	§¡­š\Ô×²½gŽX¦\Ã$‹†=s\ïøô¬ $±ºò\Üƒ“\' =¿\nŠ\Ú\á\í¦„==ÿ\0Ï¥j8MF\0ª\ê²c÷lxúJ–¬ü‡{¡\ÐÙ£\ÂZ\ä\Óð¨¼\ÐaŸ)Ž}}ÿ\0\n¦.\Z\"qG^/\Å2KÙŒ…§Er?\å¢¿QN\ÌWF‚Z\Æ\è\ÈIe\ÎAÓ®-‚CF2|°\Ã>\ÇB\Úà£‡µ‘\\“\Ìy\Æ*ô·,[»!VP\êPœpjvÔ„Ú©p$«Œdv©l\Ð\0l\ß\âm\Ñ1\íÿ\0Ö¦\År§0¿@\Ù=)÷€ùžt8R¼’?‡ÿ\0¬iyBI\íü\ÛYJ¯€c=jý¯\Ú#,\ÇkmÜ§¦Oô5§o*]@\ÜbB¸qŸ\Èû\â©	&Û“˜˜\à:SM‰¢\rW{;“\r\ÆA\Ï\Ünúûû\Öö¤ñ\ì[»P\Û2D‘Ÿ\áÿ\0\\þ§bDbL¬‘‘˜\ÙF\n‚\×\\h@Ù™ºœ{úŠ¦¯ª%h\ìË“]7\ïF\ÎG¡÷z–$\'smž”^E{vE \ËF*}EcJ˜O\ÊÀc>\ÇÞšW\Ü¶¨Ö¼\ç%Fca’:þU¯¢\ë$v¨\äy‘1ˆû©Z\å\â½hÇ”HzÚˆ¯<« FQ¯©8ôõ:\Û\éZ\ÆöDÀ1N¸ ÷?\ãRX\Þ\ì„Û§!”‘¸\ç›­]¯&a¼{ñ¬\è®[\å‘Xö\r\ìjRºÑ›\Ö÷˜f‘Áaþ8©\ã\Ûs¢“–\Îq‚:V]¸S$‘\É÷\ä¶:{\Ô?jhuŠJ–•³\ÐÒµ\Ç{µ«5Að\0¯Eô\ìÆ¹\ÝF\Ë\ì÷‡hù\'\Üz\×VnE\Éd ¥L8\"³\r©›Mh\Û\æ’\Ü7ªú~T\Óh–®c}¤\Ã$n§*\Ëó_þ¸­TM\É§‹4\'(~eQÇ¸5oN¸Ä£|\Ä`ƒœnSýjä®®‰N\ÎÌš\æ.\0»Žÿ\0ýzQ7™‰\ÇÎ§r±©\Ý\Óaùr\É\ãw¸÷•\î1Ÿ•À\È9\ëK^¥\èö*\Þ0‰B\í‘x`Egœ‰–d\à©\É\Ç­C¹°Áïš§4E3‡SQdI\ZúN¦‰¾)·4}õÀ?\áK©[#\ÌT_•‰\Æ\êÆ²™¡ºbT\áF9\í\Ít\Z\Ô-o´®\Z&\ão@zÀ\ÐÕž‚N\ê\Ç8%h\æ\Ã(Á\àŒQxŸ&F9R;\Ó/\n\Ë™\ê@\éRD>\ÑG]~e#½_™>D6ÒÀZºi1])\èIñ¬X$\ç¨8­+Wo:žsŽjº“\Ðï¡”H~u>e\ÙH\Ùt\î\05¦P7AŠê‹¹\Ë$4¿ZJ:~<\ÒU§f™O\Å!‘½IJ~õµ3)i®:J\0~E•\É\ãÜ‚*9dX\árr0	\âŸA—×¹™’’	¬Y	wû\êI?w4\×w¸™\Ù23\ïJ–¼w\n§©\Ï5\ÃQ¶õ;©«\"H@$dm\'Ö³â‰i˜$\n\Ô\Å\áUT\ÚðO§½:kPSÉž6ƒ\ëÿ\0Ö®{¤tZ\æ9„ý•dcÄš±\ÃYL\'cÂ¼w©\ïcTx\í\ã\Ãyc\ë?S =t&šjZ14Òº—2`’œõÿ\0=kHBmô\È\â,\Ê\ÙÀïŠ¡§D·F0\ä\ì}1Þµµ;•†\æ]‘GOóÖ”ž© ŠVm‘jr-ž”‘‡PH\Úpk™2’\ë\éÞ­\Ü\Êng’=\Ùqžy\ëTN\îzú÷ª„lµ&n\îä€€~‚´´\Â|\ä\Ï œVW$„žõ¯f<¬`x\å°Cs«Ž\à\Ê\0\'¤`j©$C.1\Ðô¦\é¯\æ…\Ï\\`š³‚÷$Ž;W3vgdUÖ¦UÅ“DD\Ðu•<æ¢Š\é\ÐF\ß\ãOOzé…·\îAQó/\'Œ\ÖF£§4s­†\Æ#%H\È?ýj¥4ôbtú£.[\àÀ>\Ð1\Ç_zIeó\0#r808\Í)H¤\Ê0\Ù\'÷OCôª±\ÌŸ±Àö«^FOÌ‘6žrÝ™Ú·oy&\Ã\ß:ÿ\0s’?\Zªˆ¸\È\è:ñV\ã…f‘óÃ½&\×R”o°\Ï22U÷4m§x\È?YK—\à[Sœ\ÕYbûËŸ•Ž@ô5H\Æð\Ê?OJI&\èÝŠ\âK9X\ã/\Zœ²F>•jYmþ\Ô\ê>O0nM\ç\å`{CÚ¹\È\åprÁ\"´ü×¼³$\Ú\Ò  3‘\éýiµÜ’ý½À¶¬®`c–ˆŒ´^\ã\ÔV&·¦,/ö‹_õNyQ\ØúcI\r\ì¶\ça$ªý\ÐOO§§Ò™-Ç˜Œaf\éóDO\ê(Šiƒ³E+[\ém\\/ð‚jœ\ÜDA9Áþ4#5Bbý\ÐA\äi<\Åq¹r®œù­“\Ô\ÆöÐ·2G&<¶\È\à\Ô/˜Uƒ/žôœ:½\Ôö¨v4d’Fx4$6%-ö(Ê±*\0%}\r2\Îð\Â\å™\Ò@A«X\Ül¡a‘œ‚jÕœ(dò#fÀ#œT\Ú\Úvõ5­®„Q\Â\Ìs–*XúS5\"ºÊ:O¡ªf)-®f×©£\×\×4W+ x®NT¼;ÿ\0“MjOF>¦	»\'rœ•oN¼\"ô¯\Ê|\ÃÀ=Ï§\ãÒ²å‰­ˆ0’6:óŸ¯¡ª\Â\ãdŠT÷\È9§k zõ»&B\Ò\Â>Uù—#ªŸð\éYc\çµ/ŽU€\ã¶kª’ò;\ÛŠ\î\n}øaýk˜(Ð™¢n—§ùôªƒ\Ò\Ä\ÍkrH¥2Bs‚Ã’­Do%$\\\Äv¨_-ö9À=v«f(®@W\Â1\àÈ¼ƒWn\äk\ÐH\î˜c’\Ê8\ÜqR” o—ÐŠ\Îp\Öry\ê;Õ‹$e\Ã\ã\Âz\â—*;¶¢\É$C¤¤`\ä©\ç5±o|·ZaYð\ÞCn\ÎrB·_\È\â¹y@|\ìnGU<U\Ý\ã\ì÷L§²FASÞ©\ÇK§©j\æ\Øy`\ã(\Ý\æ¨[;[Í‘\Ø\×GoJn¹\Û \ß\'8\ï\éøV.«lÖ²GC:\ä‚1Rž¶-­.W|%\äˆ~\ër¥_¶R^ý\åqzÏ¼ Kw*+_N‹\Ì\ØqV‹[½.u6xJOsŠ\Ñ( v›fNžO\"µH\à\n\ê‰\ÊÈ%:Š¢©*:4†B~õ½Ejf-%-Z\à´ º©a\Ü\n§-üRÁ\"“†\ÚNy\æ\0”\'\æ\ê3Þ³µ+4™\Õ@†\êd\ßB¢—SšK€Žv’\09v©þ\Ùœ\È\ì\í\Ù@\Åf¼o;eN	\éV\á6Ï†#×Ž\Õ\Ã4v\Ä\Ö{\ÏÜ¦\ï”B\Óaw–B~\ì_\ÄÆ©Kum‡\É_AOû{J‰\n\Î\'ŠÉ£d\É,P<wDd)ùA\ïYº¨a:\Æ\ÄŒ‚=\ëhFm´´P0\ß5—s¼\àJ¶F{ûR‹W\ïkÚ¹´„)¿_¥U¾¸2_\ç\'`\ÕûŸ\Þ dJ\ÈÀ~½GC\éVµw!\è¬3\Ì`KpJž´\éLn\åòT·#½2D(=	\Î}iR3\"\r¤6\Þ\rYûm2rF	\É>‚´£8‘\èOOjŠ(‚F	\ã8õ©m¿y0$t¬\ä\îkm\r½5Û \à··n-„Q\Å!Æ³4›~U±ß]]\å±ûbLŒ\×,Þº°VV+[ Án1´T·\Zq1l*\nžTúQc$“\Ï\"µ!,øŒŒ€8µE\Æpºž‚d$¯9\ãüš\å\î\í¥†R$RkØ¤µY2&ŒG^µ\Íx“H,\ÚE\Âó‚9­aQ¢\'MMhpÖ²—t¾ñ\ã5¾–e#¯\Ý\'Ÿz£©hl‹qf€€CJ}}ª\æ›eI6†S‚qœ\ÕI\ßTM4ÖŒ¦ð‡šD\ÎPz\â¨\\29zõ«j8VIË©\ÔU[û\0\É\èq‚zR‹\×Q\Î7WFP&<\ã¸\ïW¢¸CŒq ;”ƒÒ©\à§+\Îz‚)0ðž:\í\ëŠ\×Faf‹ryD™?‡\Ì8ÿ\0\ëU[ˆš<4l6“A\éQ¤,œgªš³is6\ç“	8\Ýô÷ö¡h\'©E\Â\È0¸\rœbK¡y€®EL\à=U\èx\Å7#z³NC+D\Ì\Ú²¼LJœqœ\r?\Ì\ÞÈ¸n›ºf­\\ùbb¡\Ø\Æ\Ê	\Æy¦yd¦2õ\Å+÷»\ÇndÏ—Ã¯#=\rZ°Wx	++\rÉ“üB¡ˆIn\á\Ó8\ÏNµr\æ4%\Â²ƒ¸0â¥²’.[J%pf·.\Ð[­U\î-\Ê9u\Î†S\ÎiO\ßY£8W\Æ\á\è\ßýzÐ³–\'›Ë¹ÿ\0T\Ç‡ðû\Ô^Ú–•ô1Yl§h\ØL`©Gø\Ô2\"8-cŸLVÎ¯¦µ¼\Ä8\Ô\ä0\ä:ú\Ö9·-`ž¼\ÓM=D\ÓZ	ñAƒ\Ã)\âŸsp³\0ø\0¨Á¨\Î\"\ÔvªÏº>P\îSÈ«K±\r\ÛF=\ãóc grœ\Ôq\ÜIo\Ót ÷¥…Ï˜?0 \Ó\\1ù\×ñ_ZµÙû¢St·PðO÷†qô«Vºt\×\0*9*ÍŒVc\ÄH\ß	\äu\é[zI¹q—\å^œ\í\Ç\ãI\è´\î\ì\Ê÷º\rÅ´{\Ý6ó\Ð\Õkx¶M\È<æº§º´0ySÞ¬M\Äý9yˆ\ç)¨P\ïÿ\0\ê¡6÷’Ø³eu’C$›\Ë\Î1\Î3F·¶\â\Î9\Ç%Ÿ;‰û\ÙÒ³b~\è89ô§Mt\Íf¶‡`v*Gpjmªc½•Šw\Ñ\ã\ì\ä\Õ\Ñh©”v9\Åd\Ü[y±«/EPÕ¹£…rg>µ¤^\ÄMnoZÃ™Ä‡¢¯tòj+¹ô©uD\äc8¢–’¨‘´úe>€+ž¦Œ\Ò´V¦c³I\Í%€3õ4Ya<• d˜®nM^X÷F\ïÓŒõ\Íu\ZŽß³Ž@\á½+¹ˆLŒ[\0\êk*šloOmJ\×,Ž	m\Ô\Í\áe f«¼ g$\çª<‘œ“\\­Ü™¤\É=3“\ïWl\ä>bv\È=k12H\éŒ\ã5z\Ô=	û ô=\éI+\ît\×f\Ö%<m\nH«bp[šLŒU¹.Ž#Ý·pÀ\'±¬ù&_=C’6õ\Ïc\\ñMi‹q(tp‡pES·2j–Ø«ÜºÇŒw©-\ÑR\êHÏ½ik\"/vUy\Z2\Ü+\0~\é§\Ãr£;\"En\ä/Jm\Ê1ö\ëL¶O‘»œSÑ¡ZÌœ?šO\Ì\Üœbµt\ërøP8\Ï8\éT­mšR\ç‚}+µ\ÐtP#G5I$Žšp¾¬µ¥Y6c%p3Ž+_R\Ü ÿ\0tr}j\ìv‹mn§¸9ª:“þ\âF\î\Ý3\\Û³u«e\Z‚\Êx\Èô«ñ\Æ>R:Š©fT\Ý‚ƒ­h*‚IÚ—Q“\é\\÷‰\ä²\Øg?tzV\Ý\Å\ÄVPI,„`z\ä¢s©j^Lq\\’N0úÂš\î•\Â\Ã<–vu\Íb\êzEµ¼k-³˜¥#-ö­È›¾\à©\ÑI«:óý&m‰\Ë€sŠ´\Ø\ÜS1D\Ò\ÄûdAý\ÒG«\Ð\Ï°œ€\Ø\Ç\"´¾À±¼qœ8@Iœ’*«\é\Ë4\ÅcBŒœq\Í\r¦+4e^XŒ‚£Ž@\ä\Z©%‹\æAœ\ÊúVÌ–sF0\Äðx$b‘,e?2…;º¨¦¤\Ñ.šg7-¹9\ã\Üõ!\È`x=+ª—Ng1qù\â³\å°©SùVŠk©‹¢÷FD¥f ¿‚Ç½Vt`H\Æ}E]¹¶d\008ª“‡©+\ë\éZ\Å\ßcÅ­Á$Þ›XŸ—€zâ¥†\ëØŽõ\Zcq\Ý\È#b$\Ìx	¿\ÓE6J¹f\Þ\"\î»\\~5vKsœ•+\ê+.;‰\"qœ\ì@+b\Î\éncI\åy¬Ñ´l\ÊÈ€¯(x#¨5n(–lù,RE\ä¡\ïô4 l›Ëqô\Æjpc\Ë)#¥KeZ\Û+\Èö»X· =«\ZhvbT\à‚¦·-®„³|\ê6ž	\é×ºrÇœG!\â’vvWW0¥¶W„?÷Ž9¬™3‡¸\Î+e\Ñ\í\äx[„þ\ëTn­\Ð˜0\'¸9­`õ±ŒÖ—(o †BÁ\Í;\íDq“\×\"˜SÁ\Èú\Ôgi$\î\rjµ2nÅ‘pÑ¾\åHÁ=ni’\Ü\Í.\á#±=Gl~S\ß(A\ÏU<\æ´\Ý ¼¶GòJƒk(\íÿ\0\ê¦\ìˆW{žQø,3z\Ô\ép\ØMä—Œ\àŸQTÜ±\á½8©\âýð½\ÇzMXi\ßBxd\Èu?yyr~•‡Ê˜\Ô\nX\æÄ>S\È\Å0¹¹¦H¯\Ç#p\0zUý0´d|£¯µ`G0GV\Ï^*ô\"^D.Bõ¢*\Ì¨\ía‘vŒx©²+›\Óf¸ˆ„‘I^£\ÐDþbúWDY\Ì\Ðúe<Ša« CO¦Kšb!=i)¤óEjf;4\ÓE&h®¤7Ù¸¶:\n\âü\Ã\í¿$\ÓÒ»‹¢|’2G9®b\ê\Ö	_¦;nõ¬*+½Š{ja\Ìù\'\0e»\Ô&\'žs\ÜV­Õ„p\Å\Ï*„²ÁÆ°wL\ÙX\0#\n½\Í:\'m\áú\ÕP\È\Ò:«qÚ­F\ã\Ì\0÷â¡=KR\È]7÷Sš‚\êQ6øñ\×\×ÿ\0¯O˜údñT\å2Tò\ê9¥Sd\Ö\îRE`sƒùU\ÉC	ƒ\Îy\Ç¬\ëny½Z¾r6u\É\Ò{•¥Ç¸<©\Æ\Å6\Õ3&Á\É<Q\ÃÊƒŽM_²ŒEzw.FEK\Ò\è\Ò:´Î‹GÓ)Àæ»«V8À\às\í\\þŠ€(ý+[Q¿KR\ÙF\árq\\\ÒWg]\ÒVF…Äª\î±\î\é\×‘¬\\Æ‘¶d]ªzž3XxŠH\Ï\ÊH\0÷\ïT5a¯6+\å€9r6.dŽ®\Ú\æ(\äò…\È\çž\Ôû\Ù\Ã	\n\å˜\àsš\à%¿”¾\Öv\0ðJž\Ûlóu\ä\Óöa\ÏsCR\Ö.ui€ªƒÂŽ\ßýzµmk)Ž8\ß>P\ço@}\ÍA±‘\Ã!‰GSŽÕ¥“\\€9\Ù\èœRj\ÅÅ¢;«¡Å½¹°\ã\Ø}jå…‹C`	r2XŽ¦´¬t«k`<´½H­\í\Ò1“×·µMºÌŒo°°\É\Ç$uª\Ñ\ÂÑ»9–­÷~Fzþµ\Ù/O^)$\îaÌ\"\Ç8\Î\ëU’3\Ìg‚yS[RÚ¶1Ž?½\éUM“d¯n´0Z„I˜ó\Ä\Ø\ÆzƒT/,Q\'oF\èk ··$ã°¨î¬šH\ÇN8\àQ¨Õ®r7¶\nˆH\0\äö\Ís·:t€–UÇ®;× Ë¦¶õ\ç5{bÉ‘³\0ž‡œÖ“DN	£‡x˜‘‚j™?t\âH\Î\íZóiØ–\ç·\"³\å‡\Ê~œV\ÊW9\\,ô&I£¹\'r\rÇ‚:T£Lh¤\ÚËŽ\à1U…ºI‡F*q\Î;\Ôö×“\Û/Î»“8\Î3I§\Ðq·SJ[ˆ/ ò\äý\Å\â€Ã†>\ßZ†\"\Ò[\0z6{\Z%š+„‘yw\ÅTG6»€bcsƒ\íR–…7m‹ö\ÒDø$\ía÷—\ÐyI{§€q^‡+Ž’C=\ÔðÂ­\Øj\Ò\Û†\Ê÷¦P{¢£5³¨Ã¾\Ü|\êpsT/S|e8Ü¼qWo®„\Ò£[¿½e\\\ÊIÝ’	õª‚w&mX \0\ÎSÀ÷ª\î6ú\Z±\'$úg9¨¥ë¿±û\Ë]\ä‘PðIŽ\â­X\Ì\Ñ\Ìðžj7‰y*\á\Ù=\êXbÁ\å—gƒœ\Õ6¬DosB\çMm‚hd;Xdÿ\0ž}ªŒ9Ža\ëÞ´\ìunRbXa”Žž\ã\ÜU{Í°\ÈI@ñõVdT&öe´·At u\0r*c#$g¥^ŒA4#7€\ÜUY\ÆB:œ™\íB\ì¸ÐŽF\Ì:ñÚ¯XÜ˜\ÝU¸ƒ\íTC\ì\Ã)#½ZŠ\ád8`þuD…Œ« Á \à`\ØÖ”9\È²\ã#=«’²¼[i‚9É­»mN#–Þ¹=k¢2MI4\Ír\ãó¦T~ÞŽ\Ü8f=y©\ã,ø,•i\ßb\Ñ>sN\Å0SóL’©<\ÒfšLÖ¦c³E%%(\ên\ÞK\ê5‹¶È¼öö­›—ÁosX\Æ\à\ÛÏ¹\Æô\Ï¬¥½Îˆl3R\Ùn+ó7*=kŸt\Ç^¸­Ë›:@XðOJÈ•“\Ó\Û5\ÏS{›Gb¬\\\çµ>7\Ì\Ëõ\â‰\0\0(üH¨¹õ¨\Ü{¦uõ¨®B¾]yV\êQR‰\Ô\èz\ãµC,E:;Þ’Ü¶ \'ù§¾%\áF÷\"™q“\ÂûŠb\â^…NEK\Þ\å-¬>\Ä\0õ\Ðé¶ªó®õYpA\ïY\Z-³M6\0\áF@®¹-\Ö\Û\Ê}§8\Åg\'©´6-D\ëabIU\è$ý+úò[É™\Î<\Üü«œ\í\çÖ©\ÜM)\Ø7tPzU8ü\Ì-A òGj›u.\íŒ\ÚÑ¡$|\í\ÎIÝŠ¯(\\œr\Ù\ê{Ö„’0‡\Ë)‚\ÝX\æ©}•\\³\Ù>ô\ÓBi‘\Ë T!•vþy¨#™xÀe\ìi\ÆÔœ‚ÇZ‰Ð¦@ù€=\êô\"Ì½\è‹˜þ\'5­e\âL.[#¾85Ê˜ó\ìsRÆ’†¡\Å2\ã&G°\Ö\â—\0¹zƒ\ÅmCt“ cÞ¼®\Ú\âHˆ\ÏLð}+£±\Õ\Ù6\á‡LVmX\Ù;™\×\éRG2ò	\×9&§¼ƒžHõ«1_©\0~u\Z%sd• úØ¨^%rðŠ.”\Ï\áRo\È\Îx «X·Xð£¡•qTD\ã$i²\ÝüT\Ñ,\Ó,d–#Ê³/o-ñ½ðx\Ï9ªÚ•\ï\î\Î>öp+›¾Ÿ<of>¹«Š3“\Ð\ÔÔ¯\ìŠŒþñºñÒ².c†T\0:ž=qŠÌšV\É?€•X¹\'¹ö­2m–Std\í\Úq\ÐjX\ïšß†L\ägƒ\ÅR\âG¦(‘	#\Þ\Ä\Z«#7~…‰n£†ˆõ\Î2\rW’\êQ\×¸\ê;Ó‚„1§½W=º\æši\nÍ–­®b’b)²<NB£(€§ŒVy‰£rB>´\Þc<6p}¨²³D\Ë$q\íÀ*ˆsTn¤\àž•,v³\ì$6Ðœf™ƒ°ƒ÷½jV›}\ÊO’…{ƒšƒyŽ¤r3Þ®MGqÈª®ÁÀ­\"Ì¤¬# 1‡T3\Ï?t\Ó\ícg …\Æ9\â™\Í	m¸;\×ÿ\0®+N\Æ-ˆ}\æ\0ý*›²&*\ì­,f3€9#$T¡ñIQÁ5,\Ñï›§ð“P\ÜQÿ\0\"§rž‚\ÅKi`0qIor3a¶Ÿ”žõ8 i’\ÆXqY»	„8\ê½i\Ç[‰\écF8£rL\'ºó\Í8[\Äügk/j\ÉI˜ÁˆaWR\ê^\ån1\È\ëN\ÍtÍ»h‰Ê¸õ<V\Ü:Eœ€LýOJå¬µ&I•\ÚŒ\×_c*\Ée|ñ\È\Æ1[\ÓkfŒª+j‹ö°[qJ=\êb}©-lb\ì\Zm:ŠG­´V¦B\Ò\ÒR\æ˜Ú¯›\ï\nJw¬k‹„=?#Ú»	dM¤=\ê…Æ‘¹;FOJ‰A½#4·8\â\ì\äDÖ²\Ç\0‘\nzWRš<¬[éš­©Û‰¡l.F\0Œ©;\\\Ú5\ìrG/À\ïQ¶Q0zö)>T‡\×<Sž(Ü„g*k\rw™\àÓ¼\æ\Ï@ü\é€lyõ\éBFI\Å&R¹8v‘œÓ¢%]‚=i¥KfÀS\È5=\nI\Þ\ÇG\á»\\NX«Š\ën,÷À#‘Š\Íð\åÁˆ\àò=«§ò—\Ë\0ô\Ås\É\êuEYX\â\ï\ì°NHÁš¢–01\Çfº[û=\è\Üg\ÓÚ¹[\ß2®\ÓBw)Dl—KK\ãô¬ù/\Ý\Ï\î‘M(Ò¸y\Ï\î\Çð\ç­2[’\ä\Å\nQ\Ç\ê\ÒL™;hˆ¥¸¸=Y@5VK†Cþ´Ÿ¥hÉ¤¿ö|“œ£#Š\Çx\Øu\Z\Ù%cšRi’ý¡ø;XŠ\æ^\ÄUä¹–Xaˆ)!\0\ÆYµ³—\Ì\î:u¤\ÒA	¶Z†õN¦¯G*ðAZ\Î0œ•q†\ížô±£\Æ9\ÉO\åY4ºQ“[›±\Ý9\Î+ON‘\î$ÀÏ¥sLQÀ9\Úk°ðôYpq‘Ö²’±´es~\ÞÅ¶ƒq-‚ \Ü3\ÅYŠ2\àpx\écd¥g s7¡ƒ~<¬•\ãÒ¹û›÷\äd\×O¨Û¼ˆx?\ã\\Nªž¼\Zh»\è2\êü¸!e\ËsœóPMp\ÄóÒª\È\ìü/\ç[(˜J}‰$¸DûÆ¡7 tŒŸ¯Go\Ï –=*Ôº<¿`’sg\0u­F2rJ\å¿sÀ\0zw¦\Ç{\'BG\â*\Þdv@À•aÁö>Æ4‹-\Ã\ÈSsd*ú{Vœª\Ç;¨\î^\\c…R;b¤ŽùþñJŸqT­Ä¡ð¹9*\ìw\0\ådLö9\íR\Ò5Œ‹ò)@\Ü2}EW\ãy#£\ZW³\ãtGƒ\Í,q¶°úqSdŠÕ–¢””\n{)\æ\ß\ä\r\Ø\n[{V”8#Ú­Y@*A\Æ>µ\Ñ+™2GŒ\ç¡\æ¨I!#°­\ém\Ù#§µR¼ˆ\\SŒ‰œt2cBò;\à\nÛ¶‹	‚X\àgŠÏ·@¸ö\æ®C#I1ž8•R\Ô\Æ*\Ã$\'\Î`N*tÛ‡\Ü\Î?\nžHÌ’HÀü\ä\àqPÉ¶´\Çùú\Õ!42\ê_\Üm^™\Å2\ØF^=ª)¤\àçš’\0¯Z«Y{²„\äÖˆ¤dÁô<Jš\\¤\Ù÷¥þÿ\0•a‘M;Õh¡KˆVx~ð2\×A¤\ç`À v5…¤\ÄÐ¸|¤\ã5\Ô\ÙÇ°qƒÈ­ ®\îg7eb\Ø\'ñ¥¤¥­ŒD§\Óiô€¢O4RFkc!\Ôf›š3@¤\'ŠL\Ò98\ã­\0W¹|`¤òMPº¹Q‰\Z–Œ\0jô–\Í!Ë±ú\nAn‘¡\n£ž¼u©’oÈ¸´?ºãœ‰>þyÁ#FAŠ\Ñ\ÕQ¥¿™\Ê7`U)”;€F0+«\\\êN\ã\Ñ\Þ@A§€7…\ÎIëŠP\"¤\ç½,X·e\éY³DM0\Æhi\Ö\Ù(£©\ëY\ÈL³(÷®H„›Ø”	\æ¢Z+\Z\ÓWw;M\"/.\ç²#\ÊcÚ©Y \n+N.\ÜW,™\×k·6L\èv…?^+¿\Ñó÷\Ã(\ì\Îk·0ùñô¦¥¬Hw\É\îO5)²“GœI K!Ç²5VaÒ¬˜ö²}\â3“]n£m½\Ã\"‚;ZÎ†\Â#3vS\Èö­ÁG©z*\Åfbx·E*\à0\ç?J\ã¯|?%¬Ì’DLYÂ°Ez\n[\Íƒ±ž9«|$’?:\Þ,ƒ–qš¾w\Ü\É\ÑM\Ý#Ë­´M„K\ä1\\\àqœ\×M¤øx\0n&Rdq…Œ‘]—öºlX\á´EˆH\Æ~•\ÜJó‰@TlqŽÆ“š\îT(´µV8{\ßù²39*œ#¥g\Û\Ø4xó¶¼L\ÛJ\ç\æÿ\0Jôycù¸(\Ù\ìx©VŽøPñ\Åf\æ\ícu¥v:¸\Ð)Â¢„dµ\Õø~\×\ÉD\ã·5©ueF \0qŒt¢(\Ä.\0\éž\Õ.M«2R]\r‹P\ãWLJc\É¥Q¶\ÉÁ­<$ñ\ÐuªKC\èÌ‹\ÈÔ©W¯Y™f)û\Ç&»Û®Aõ¬-•\ç\É\Ç\'7³5KC‡_\Í#œ/\'¦EG{¡\ËlV8Ñ‰c‚H\é^ŸkBrƒrò\r[I6\îA•\è\ÄU)»‰%\Õcc¢Oö“º6`§‚GZ\ëm´\è^\É\áÜ¸9­\Ç1\É#ºVn7Ò£\"RB««*¹\Ý\î9AIXóM[\Ã\ím3!‰Šƒ\Ãœ\Õt…C\È$ž™¯^7#f·C‚3\×ÿ\0\×U\ÍÕ·œ\í‚!<€W5¢›]L»\Øá´Ÿžd%\ØaP\n¯á§Š2A´7aÚ»‹«™e‘F#B¸ qU\Þ\ÞMŽ&bÀœ®{Rö…ªIzh÷>¸\ÏZXô\éQö6\Ö\ÇBx\ÍwvVJ!B@\rŒdTÏ¦[\Ì>hÀ=ˆ\â¡É”¢“9[Œóaº\ã‘Z	d\Äü\ÈBû\×BšbG÷‡\ãšIm˜u$\àzT¹‘\ÎM¦«“\ÇúW7«\ÛÏ–z\î¦Lg5\ÊkV\å\äfªR$®ŽR\ç¨Iõ«6hRùùÛ\íPs%\Ñ8“\éSMta\Ê\ÆW¥nõ\Ñ\ËF\îK#­¬e™Ir8\ÏŒei&.Ç’xqK+µÁ\Þ\îry\Ã\ZbFG\ã\éV•ˆn\ày\É>µz\Ö2\Ølq\ïUD`‘š¹Ÿ E8\É÷§\ÐJ\×!»9Ç®)À\"cž)’‚\ç>¦Ÿ \ÃÀƒœH¦‘zu„*ðŒdd{V¬d\0\íT\ì—lƒÂŽµsƒ]qZ\Òwv&OzZ„NS(úˆ\Z“4@õ¦\æÑš\Ô\Ì	¥\Í74Rô™¤\Í\Ä:£qiI¤4‹«[lk–\ÎFfG§$i#\Ü°®  \'$sŠ\ÂÖ£$\0™\ë\Îc8¥vo	7¡ŽcS`{\àT|$gÞ¯%«7fR1\È\ÍR\Ær=9®Fšvg\\uZ²:Ÿz\ëô\Í\È<`µ\É\ÛÇ§z\êü>Wñ\Íe3jz½¨­…f\Ù°cšÒˆô®YH²S|²{ñÞžœŠ‘\0\"\È>Î¤\nÎº\Ò—¶·\\u\ÍnñÀ\éN1Œb…\Ì\Ó\Ðã¤–ö\Ôüð1\Çñ/5ö‹œ\æ6<\äb»·Sœ…üªn¡º/>¢Ž_2\ÕE\Ø\æ\æI1„s\Ø`U¸£¸|e=\Ínu\àŽ\ã©~\ÎI\àô\âŸ\'™N¯dg%¨O¼rzñS\Çm° c®1W…¸À\È\éQ\ÌpBŽ”‘m•0\ë\È\Æ\rBP>Æ§.C\Z‹¿¹¨Ü´¬^³?^+G-\åœzuª6 1×½_ yJ\Ò;Os*\èGzÊ‘?x>µ±795› \ç¥CF±Ø’7\äg\Ó+\Ù	\åþUW$W\íf\Î\éD]™3MjŠRX1\ã\Ç9Iâº‰² 0\Ò<9ƒ\ÔTf~a\Çn+GJ¨\í©Ë¾§,G÷ñ:•ã‘š‰õˆß¸ú+«6\Êx\Ú¨L¶ü\Ð\ÇøI\ÇÌ¯hº£š:¬g®zu©-ü\Û\Çùp=\Ít	¢Ú¡È…?*°– \â5AJÀ\ê.ˆÏ†\Îx‡b>µe|cŠ´#T\Î\îsHO\Ñb/r€s\Ç\ÔTrƒRñÚ¢’¥±XÈ¼lW?©\ÆŠ\ênP~•\Í\ê<\ã·¤\Î2@#vc\ÑN@õ¬¹¹ñZºžwx\çŠ\ÌÙ¿Ô»œ’\Þ\Ã|±ø”Ž‚1\Ïö«h9-\ë\éIöbù!I\'¹4\Ó\î>[­\nQ£H\à`\â®\Æ#ŒÇœUÁ¦ù6Fyº\Æ+*Y3…^pi§}‰’q\Ü÷Í\Ðv­\r*Í¦½\ÜeGAQ\éºd·2Û…\îÆºhl\Ò\Ü\Æ	\ëhA½NyI-\È*@j?zp®Žm\ÉE¦ƒKšCš“}AOÏµ )“KM\ïEh@\ê)´\ê\0L\Ò\Òf’€M4Pi€Ú¯$+!\Ë\n±II«;®¬Á¶coz\æ’\Ùö9Á\Êóõ®Ä€TƒÏµV\Zr\Ém$C‰Q·)õ­q\âU¬\ÑÛ…÷™\Ì&Q=«¥\Ð·8óY³X\èzÕ)rúƒŒ\×3wGW+Lô0¥i¦H¬kÀõ±®vµ:bô,\Æx©£“œTŸž•#µËˆ\âŸ\Çj«þu!\ä\0=©¦\'\ïu¦˜˜N=jd<{ñR‡^\çƒUk“{#‡=zÕ‚1\Óò\íO\Îq\éM—¸þTZ\È/vV‘À\ïYó\'9ïš½7C\íT$95œb¬0\à\ã\ÜS9\È4üZw—=ŽE\"“-\Ùg‚S¥hK”Œñ\ÔsT\ì“«\×\êqßµj–†3~ñ‘pr8üj™\ç5n\ã#5M\Î¬¬n¶Ž~•4/\ÍA“­M\0ö4¡ô\ë\ÆjÀ\Úü\ã&ªÛƒ×°«H¹¢1’WadS|¬ý­XB\ÆiÃ§Ó¨§k“vˆ¼1ú\Ò\á@8\ç#ó\éPI&)lldŽ1\ÅVw$\ÒI+ù€c\å=M\'Z›\Ü\Õ+\ãQHýA\ïK!	P\Èr!5Ô¯rx?J\ç5\"Nqú÷­\ë—\àŒ\×7©\ÊO÷FkJkS»#‘Õœ\Çz©B÷\ÅKtZiò&¤2<\ß( )\Æk§Dµ0I·qÜ»€úÖµŸ\Éó¥[Ó­cˆbAøÕ½›\æŒ(=»\Ô7vt\Å#WI\åŽ;t\à\ÐSmtHÏ˜w;Œv5³<kö£Ž‹À§Fz{]”©®[³\Î\ÄT´\ÚC-QE²ô\Êðp1V1\Ó\Ø\Ócv\àò)ø®ˆ­,rIÝŽ}*AQO\Ä>Œ\ÒQH§\Ó)ô†R\Í†Š²¢’Š\0Z(¢€\n\r”À(¤¢€¦¥/ ‰‡nõ\ÓNCØŽŠÎ¤\â\Ó5¥7	&‰\ï¬\ÒHÃ ûÂ±¡·kk\Õ,F	\ä\n\é-À{`£œqYZ»Fñ1\ÎIæ¼¥cÚ’R2:7\á}\â¶-ßŠ\çl%&5\ç¥m[Éœs\ÏzRA¡¤‡Š•xª\ÈOaJÍ£DXDô{\ç4\Ä~)\àŠjZ‹QS\åN;\ã­TI1ƒ\ÅK\æ\ã\ïVŒ¥õ	o\0ŠG\äv\ëMrX\çùw¦¹\0Rnãµ¬W¸\È\ÍR8\nj\ÕË„w\åYSJ\Åö­d÷6Šm\ï\ê\ÂÞ•Ewo\ëV\â|¸\Ð\ìiCÚ¬LFÊ‚\Ø\Z±\"e;þ5ª\ØÁ\Ú\æEÁ$ð;\Õ)G8\ïZR¦	p0sY´n¶+ù˜jµo\"¾\0>õœQ\ä\Î\È<S¡,®GP)k£~\'\ÓùÕF>ž•—ÀýE]I1\Ç\'\Øö¦™›E¤\Æsœ“\×¤\ß\Î\ÐUdf‚=ù8\Í<>\ìÕ¦f\Ð\ç\ïƒß€j¬ óõ©Ì \ç×¨ªò>IúÔ½KŠ±\Í0Œfšg<óHl‚N§Ú ‘ð*i\\ú\Õ‰O4$&Ê—’uô®WX˜“´\ÏZßº—9\â¹}Mÿ\0x\0\Ï\'Jè¦Žj®\Ú\é	I2yÈ­›d\'­T†Ý\É…¹kl$€H\äQ7¨SZs&\ì:¶!¤`>Q\Å>\Ù×Š£¨\Ü	d\Æ~U<\ã½:i\Í\Ù\ZTš§\Ù^0I.z±\Ï5 \ÒÆƒô4\ïZô¢’V<i\ÉÉ¶\ÃúsOš;þT\ê´f(¥‚@¢’Š8T•§\Ò‘¤ \ÒU--%\0´RQL¢’Š\0))i)€ž”¹=}:Sh9¤\"HošØ“\ÕOQ\éW%¸†ú ©À\à\æ²\Ý1\Ïù5›x\ïe xØ¤npÀW#›\æG¡C\Ò\äz-™ò\Î3\í[v²Œu®WE¸3[bK©\ÇÖ·!—Á\çÒ¹dŽºr¾¦ôrŽ*\ÔgŽµ¥\ÈÁÇ®kJ)\0\ÍbÎ”]B*TqÖª‡\íø\çµH\ì[\Þ0A\ïJ`\0zU_3Ó­n(¸Xµ\çc9?Ö£7\0sš­$\Ë\Üöª²I\æp¹ü\é65÷&¹¹\ÎqU¢\ä\Éô¾K`ž§\Ð\Ó\"˜#œðs‚)+õ/E±<˜G¬B‹Â³\înF3O±¿WI…ZB{ht¶È£œñS\Ê]ÄŽ+^\0\Ïÿ\0·d:®ek\î›n\ä\Ó\\Ž8\ï\ëY×˜Á\ÏJt· d\æ²nµX\ÉÛ¼dö©6E\Ë`¤\Zw•û\ìô“U¬\îfwjI.W g½&†™~-£Š\Ï~\"¡Hò\ÅH#=@ýh…\í\ïù\æ\äõ\ÏLu\éUòÃ¨\'\ß4‚]üf‹ŠÄ¿\êó\ï\ÏZŒ¸\ç…ý\é™4]ù\Í1ÜŠar2\0¨e\ÍdWu5™sqŽ3Ö¦¹ŸƒX÷\äžzU\Å\ØK&I\æ°\î“3“\ØŠ\Õ$ˆòFy\ëY\Ó\Î}:\×L4G%Gv-•\Ê\Ä\åH“ƒ[)¨\Å |¡@ü«\Ï/u‹{\ÙV6\Üfª\\jWW	µ¥m§ªƒ\ÅK¤Û½Æ±ŠµŽ\ËQñ\Z\É)ŠÔ†$\à°\íN°v•w§5\ÆiÒ•™y\Ç5\Ú\Ç`®‡k0\É\Çz\ê£¡\ÉZ£šÔ¸6„\àñM2t\Ø2OS\éMH€\ä’~µ\'ò®›>§+hSé‚–¨‘sKE&hù¥¦R\Ð\ÅIš‡5&iLõ¢ƒÖŠ`´”PKIE1EPIE\0SI=¨¢˜†„éš§¬[™\ì¨\åy\"¯R\n#†\ÅL•ÕŠ‹³¹—\áyXº\Ç5\Òo\Ù =:V…Ÿ\Øõåƒ±º{V\é\Ï¾3^eEiYž¥ut^·¸õkJ+Ž•Í¤¤?·S\Å_†\èq“\ß„‘\Õt	.@©ñYðÍž™©Œ¤:šÅ›-K;ñ\Ð\ÓL§_{;Swv\ã\ÐR-™ÿ\0V!‰¸¨m\ã.A\Æ­hF0?­r[°¾X#®95\ÈkWRX^0$…nAõ®¼¾?*\ä|o’Y£(\ès‘Ú­%q\'¡\Ï\\ø¡¡|\Ì=©ö^ [‚ÃŽªx5\ÊK»\'p&ˆFt%Xw«¡AXÁ\Ôiž‘ˆP p\ßZy×tqô®\Z;\Ý\à	Vúfö‘Ÿ¾\ãPé–ª£¨\Ôu\Çò\ÈV\çùW)s¯¬s¥¤~\äb«\ßÞ´\Ë\å£qüDw¬ñ\ë\íZFšKS)Vm\Ù\r¯‰\îNÝ£\ë[VZ³M$cw9\ÃF\ì³¤»˜\Î	 ôõ©”\Õ\ZS¨ÞŒöWS\n’{sS’q\ÇOz¡fY-‘\ÉYq\Ï\åX6]µ¦s\É\æšBŒ9\èy1Q\Ïqù\Ô\\¤/š2wS]\ê9\åP<Œq\Î\0\ë\ïBce‡|\n£sq\Æ	¥–\à $\çŠÏšRÉ»¹\è*\Ò3l†\ê\ä\ëÇ­e\È\í&\núóš±uó•_NMFƒ®j•Œ\Û\Ï\îÇ°ü\ë6\áö#±þšÑ”lOcXÚ›²\Ù\Èr:`f¶Ž\Ç=C‘ó4ž§½Fi\Û	ripx\Íms–\Ã\íÀó{\×q\Ù\Zm$ð®.·\Í\ZŽ¬x®\Æ\Å\Ë@ªxt\"´£«dUVE°s\Î)i”\ê\é9\ÇR\æš)h\ê)( c\è¦Ñš>ŸQO\Í+œSizRP¨¦\Ñ@¢›E1¢Š(Sh¢QL—¯Ò’”c¥&!Q˜¸5xƒƒžxôª`\à{\Õ\ä\ËŽp+ƒ¬\Ó=#ºh­\Z1$úñŠ‘–\ãÖ§Hø2(–.ž£¥q¶w¢õ³€ú\Õ\èð@ô™fÿ\0\ÂkR1YKsX½\0Nj0L„u#=)$ÝŠ2\Ì*·\rªÆƒø‰\ê}j½‰!=\0\íVCñ\Å5#P3\Å,g/ŠiX–\î9\È?Z‚ö\Å/!1H¹R?*´N\Ìcô\àAñT+³‰ºð0$˜\Ø`žâ³®|%¼e”\Ðµ\è\î{\n‚XüÀx\ÍW3]E£\Ý-yD\åX`ƒŠ _»\èŒó4°§|;\×\"ör‚§ò®ˆM4sÔƒOB¸9\Å]µ³{‚\0R~”û\r&{©\Â\"1$ö+\Ñô\rEg\n¼\Ê\ZB:zQ:‰h‚&õgg\á[‹Œ¸âº½\Âij\ë$\Ä1Š\é\á¶H\Ó\îô©8\íX9¶n’[ P:Š>^}ª@3\Å4…¢À\ÙJP\Î~ZÄƒ†\éZ`Ï­U–^1·\'8\àRi™XW5’z\Z–X™Á÷ª´@\ï9Ž*P\Þ\Ã%{þµRQŠ·q»${UIObkX™È§$9 DÀŒŽüu©öe\É\ìi\î8ÿ\0\n\Ñ™×˜\0û\×=­œB<Mo^‘À\ï\\Ÿˆe>z(?tdâ·Š\Ð\ç¨\Ì\Ï$&Ns\è*<€\Äõo\å@\Ý\'~´¾V:õ\ë\ÅV¦…­6&šñGe\äŸJ\ê£BŽzw¬\ße#©â¶‡PGj\ë£+˜U•Ý‰Á4´\ÑN­L¢’–‹š3IE\0:Šm-\0.iÙ¦Sø 3\ÍQ@Q@Q@Q@QL4”¦’RSô$\Z½	\Ì|f³\Å[³~H\í\\¸•xß±×„•§nå¸²œT\æ<Žµc?Ö®F›Àö\ë^dQÃ€\ã\ØÖ˜uÀÞ¬\ârBjô.¥\îc\"\â98œgŠ\Ú\î\0\ïš`q\Z\ê{÷¬\Ëù˜G\"Ù¡s«$	\Ù=\0\ÍMg©$‘Œ\ã$f¼\çR\Ô\åI6\äðz\ÖÎƒ©G\"3ôô5|®\×&\é\èŽö9D€\Õ/ð¬˜µ;P€,‹\í\ÍIý³þ%?CI«\rE³Sfs\Î3Úœ‘d\\\äÞ±ÿ\0·\"!¹<P5\ÄC\Ù\ãŠömš\ZbJ`9<ñY²øb\ÞG\'b\çéšµo¯F\ä\ã=*è¾€®wßš¥b\\$ž\ÅM;AŠ\ÔÚ ö U\ÃŒp*Î½@ª0<\Õ\'ñ$`a±\É\ëI´R§.¦\Ërœw\âš;ô\ëY?\Ûð0\àv\r^#\Îñù\ÐK‹F¬’0\'\r\Æ+2\ëQh²¤œŽF*7Õ¢ÿ\0žƒ§­s\ÚÖ¹o9‘CcŽhµö&\Ö\Ü\Øþ\Ú\\a˜g>µ\"j¨H†+ÎŽ´\×µ3Œðk[LvwßL\Ópkr“Oc¼¬‰•Á\È\íQ¢sœ{óUt\Ù\"\0¢\ã#Ö­\Ìû¬–\ãeK¢:ñYóHû‰I${\Ôqqš\Ú(Í“ ÂŠd\Ä\0ELƒ=ûU©9# V±Wd=ŠfLúWª\Èe¼cØœWSu.ŒO@k˜\ïrI\ï]9*1¢3ô\íR[\Ä\×_\â5/\Çoz\Ü\ÑlŠ5\Ç=³ZB<\Ì\ÆN\Êæ•¼K1 ½YA\Éô¦8§¦q]©[C’Nä‚L¥ §Sh c©i(¤\ÑIK@:›N ii¦–‹E%-\0QE\0QE\0QE0\n(¢€\nJZJ->7 ŒTt\àjd”¢\Ó*\r\ÆI£J\'\'û½óZ0¸#¬kyx\ÆFE^†Lœ\çñ¯qiÙž\Ô$šM®\0<\Í>\Ú@z\Zar\ÉÁ\éÖ¢.ÉŒt¬Z¹{\Z# =*»\ÙŒ\ç<öûi·€+F\à\Z\ÏSDÌ¸|5i\ËOr{š«y\á6\ã˜#ky;4g\Ô&Hæ¡–y^¾\Õi´\nÍœEÏ…¯-Áû5Á“ñY§NÖ£$7¨ôlW¡’Áö¶0}j‹Q\ÈpÃš\ÑN\è\ÞÙ³\Ï\Äz¤dy–“|\Ü\09©¾\Ùqnv\ÏªA\è\Êx®\Ín\Ê‹÷O¥]¶½·–2.#Vv?xŒÓº{š4ÒºW8\íp÷Š·lñM¸ñ¾S\ÌAÀ\Ç9¯Bš\×L¸¹$QI\êvõªñhú,gsZ\'<ô4„¥\Ý3€“Zi0ª€;\æ˜o.$O–\ÞvòžkÒŒzt1§“aŒu¦\\\ÞÁ°ˆcUÁ\ã¥=µ—C\Ì\êN,\ç\0zŒSj\Í\Â[8\Ï|\æ½\å™ÁõŸZx…9\Å4\×a8%\Ôóˆ´\íj\ä…\àt\É\â´m|\rus\'™y(QžFrMv3\\\Çn˜\É8\0TöA¥ù˜\Ïz‡6¶1q]L\ë?X\ÃÚƒ8\êy« ZÅŒ&zV\ØÀ J‚\à‚\ÄvMe&Þ¤«-Švö«l2 \ëQ^L9ÁúÔ·7\n+ö\ë€N(„n\Ä\åm\Å2o\nÂ ›l\äÉ¸ÖƒŸ\ZÝ«§q\ï(Hù\ëŠÆ½¸ö\æ­]M±zÆ–BI\'¯aZAu&oK\\œ\ÛH{\Ås2Oûšê¥6D\â¬ûm!]÷¶H\ÏC]PƒkCŠ¤’z™ö6M,Ë‘…þu\Ó\ÇŒ\0£ŒR$)¨\éS\n\ê§S’¤ï°›(\éO¦Ö¬\È)\Ô\Úu Š(¤0¢Š(\ÔSi\Ô\0´\êe:€!4´´R”´Q@Q@Q@RP\ÒQE\0Sh QM¢˜!Á\Ó\ßr)†~V\Î:ûV~M	\'–}\é\\XŠW÷‘Û†­ou›\ÑL§‚p+¿VTr‘‚Gj¸’—þªóš±\è\'rÍ´ƒx\ç©æ¶­\ä\ã+œ\ÄÁ—¡\íZÐ¹ s\È«6¬\Í¦\Â>G=©K/\çU-\ä!0Äš²Ž”\\vqŽ½ê¡¸h\É\ÜN*ÔŽb³\î\çŠ\ÓhY.\"”a±\Ç ô¨‰Œtnzõª“=­e\Ý\\4y\ÃûÕ­M£Y­\Íø¤ ý\áùÔqÀƒƒ\Åq\æò~0\Øõ5\Û\ç\Éù\Î\Ñ\ïT®‹u\âõh\ë$˜ƒ“\Ó<sQ”	Qø\×.5	föÉ©Rñ²~\æIx…\Ñ8½Hñ\ÍA6¬ ¼š\Å<ž¼Õ«k6r	/S\'QÈµn^\âpïž¼\n\è­ñ\Zk2\Ú/\ÕÜ·ùT=H-} œý*¬²ž¹\ã½4†L\ç\ëUnœwÒ’W\Ê÷3\Ï5•(.\æ­ÍœžMC°df¶Š±“Õ¶9\"¤–\à4\Ðp=«>\æc\Ï?RÕ‰h†]M¼\àtöª‡$\ë\Å’I©m\Ð\É2NkE¡›Ô°\è\n\r4`U‹À-V½\Z\ä¹\æb\çh)ÂR\Ö\Æ\è¦Ó¨\0¢Š(h¤¢€ŠJZ¹¤¢‹švi”úGKIKRPRR\ÒP\ÑIE\0-”PE\Ú\0u6Š(\0\Í%S\0¢Š(\0¤#<ô´”Y5f	´î„ŽR‡\rŒ•~\Þ`€1Tv\Þ)±J\ÈHo¡¼ªôùd\Ò=Z9¢›7ƒ þ9\êý°\ç Ž{V2œsŽ™­«^ü“\ÐW$‘\ÕcIFðL#ù9¨	l©ç¸«\Ñ|À\ÌTr°BHxõ¨ž\Ø>}+K\ËžWµ0¹5€Z\Î´„“¸\äð+¬H‡qVc…zc­5~tp\Í\á†=½À¨\Âò0\Ã\Û¯D¯<(Ø¾ƒŠ­EÌ—C\Î\ãðŒ§\ïŸ¦*tð\Ò\Æ>\ëq\×\"»³·ÓµB@\Å\'~ã¿‘\ÇÇ¤ÿ\0†®\Çg°`-m¼*y\ã­Da¥¶=\n1B:²!3ŽjdŒiHM”¦ŒóT.0ˆq×½h\\9\ëšÇ½“¯^}*\â‰l§6zçŠƒ\Ì\Ç<ƒ‘Þ«<»	Á­Q$²\Üc\Øb³¦“y4³LO­W/\É\Ç5qÇ­^°\\¾k<\àc­l\ØFS\ì9¦Þ†}G_Ýc\ÍR¥|™„5š+\Ð\Ã;Àóq*\Ó”RR\Ö\ç8´\ênh\Í0E6Š\0u\Úu\0QE\nZJ(i\Ô\Ê}\0Fii´T–\êmu6Š(\Ô\Ú( Š)(\0¢ŠJ\0)i( Š(¦EP£8p}ù¤¾ˆ\Ä\âU+u¤­\Ñn \Ø\Ü\äb¸±j\ÍH\î\Â;§:\È ƒ\ÅkY\Ý;z\Z\ç\ä\Ýk9úgŠ·o69Œôæ¸¤¯©ÜŸC²³•¥$c?•hE\"¡# æ¹«+õ\à`0qÞµ\ã”pzñ\Î+¬Z6£q­)©\Å/‘j°%R¸gµ!¡\É ƒV\Î=*·\ÎE/N\ëMhR\Ösžx¥þUXI\Ðg\ëN2u\Å;€ù¨\íP’O~*7˜‡\çühó¯\åI±¤<úS­&þô\ÒùoÖ•ÀW \n¥4¸Ï½K4œ\ZÌšF\É\ç\åT•\ÄÅš_Žõ‡}p<óW/\ï49\àâ¹»«¯0œdŒñš\Ñ\"[${3\ë\ß5Y\æ\ëUÌŒ\çœ\Ò\'\éTRO?Î„\ÜT‘£H\áGz¤ž\Î/6a\í\Îk~\Ö 2Ý€\ïT­!XÀU\ë\ÜÖ™!œcó¤\ÝÈ±\Ç\ï#eö¬œbµ¹\è~¦¨\Ü\Ã\å\ÈOðžk³5¬YÃ‹ƒv’ ¤¥<Rf»N!h¢Šb\nZJ(h¢’EP¨¦\ÒP\éri™¥\Í\0!¤¢Š’ÂŠ( AEPEPEPIKI@Q@Q@R\â˜	Wl\Ïô5Sb\Ì\á\Èõ®|ToNýŽœ$­Q.\ãu«Q,\"U2õ‰\ÄpzW`ñ	a õ\"¹KûV¶¹#‘^l]ô=F­©n\Ú\áH#°\'³g~¸á³“\\ ûgù\Ô\ÑÜ²F÷4œn8³»†ø\"’GµX†\ä>?ýj\ãa\Ô[\'’jõ¾­³\0·Ê²phµc®8>Ô¿i5\Î\Ûj¨\äü\ç$ð\rZKòI©±V5þÕ³Òy¿ŒþU‡-\Óc;¿ú\Õº<\á‰#¨ªH†o<Á\é\Þp®ûKž½ù¥}G§\Ì:P\â5sjK°€ó\ÍV7\ÌI\â±.5.\Ò:wªoª‘Þ…:	oIf¨\Ë|[œòk\ï\Î7n9\ìª3]4™;Õ¤&M|\×¹\ÅP\í“JpI¤\É§µ]\Ån\âŒ\â”\nAA\Í\Øx\ÅhX\ÛpŽµ^\Ê\Ø\Ì\ã°¹ mU8ü©·bwo\\=}jW\ê}ªtˆ\Úp95˜\Éö©ORYzY\"G´þÒ„\ä\ÔÁ2*¹œ]\ÑªJ\ÌÇ–&ŒE@k¡{U‘0\Ã5—u§´Ye\É^õ\ÝK¥£\Üá©…q\ÕjŠ€\ÒóI°Ô©\Îk©I=ŽW·ŠP*aôü\é¥\Ñ:œý*gR0Wl¨RœÝ¢ˆ±E?)!\ÂCÞ“8TSWL™Ó”¨m%-%YIKHh\0§S3N\Í\0QEAaES\0¢Š(QE\0QIK@%PEPE-\0\nZ)\ÔÀLT\Öø÷\â£\ä\â@}\ê*+Á¢\é;M?3bÒ«j¶)u	8ù€\È5=¹\èj\ÙA$d~F¼Gt\Ïstp2Dc«pT\ãšis[zÅ‘G-·\èEc\ì\Ål\ÕÈµ´tê¢ž$a‚Œx\ç\éHF)?\Ï\ì;“¥Ôˆr	\Ïó«	©·9Ü¤Ž \Övö}v(¸8©q¸Ô¬jj\È;\çŽ\Õö›“íŽ˜=«?\í*:£~t†\æ>\ê\Ôr…\×rû^°pC\ä×¥#Ü±\çw_z¢.\"\ç†\éJ.\"þóc\ÜQa\Ýw,™› ò}h’Er\n) öªÿ\0i„qó7\Ðb“\í,Õ \ÔóE†\Ú\îX\Ã?\Ìq\îz\nˆÊ£„\äú\Ô[\ÚO¾\Ä\ÓÀ¥û\n\'$\äÓ…&h\ëH.;5,q— õµt\ÛR\îŒŽ\Ôl+Ý—\ìmDh2>¼VœP\àg¡=)\"@º/AZB0ú‘œzVm”•Š\æ<GÀ\ë\ÍRqZsd\äö\ì*‰Nsú\ÓL†ˆ¶c®jT©¦\à9?­X·3g\ÐqCz	-KI\È*¼\Ö\àö«\Ã\æ³\ïõ8m\0‡~À\ZQ½Êµ\Ì\ë‹xÀ\çž*¸XÝ†~Àt·:Œ÷D†$(þ\Û\ëTö\ä\n\ÝTiZ\ä{\Ý\ÚK§”\ã={\nvÁžý©\Ç\æH\Ý¦;Õ¤Œc#\×5]Í”l´)¤ƒu\àg­[C\æ þõD\á@ ‘Òˆ¤\Â>¼\ÕÓ¨\à\ÓF5(©¦˜\ïjJts\ëL\ÍzÐš’Lñg\ÐRR\ÑTH\Úu6\Å+ŽÁE%#Š(¦KIEŠJZ\0(¢Š\0JZ( Š(¦Eú \à(\ÅM\r&Hû£©¥)$®ÊŒ\\‘À¤Œ«\È sÞ \Ôî¢³„ž„z\Ö>,º®ª›Iò\Ð\äš\åž!´ùQ\Õ:Ms=N\ÚŽ\Õz.™GQUcª\Â˜¯6Zž¤H¯a[ˆ\ÎG8®R\ê\Ü\Å!\Ç5\Ü\á\\r0Oz\ÅÕ¬w‚@ç¨¢³°5s•)Ï·jafT*pG\" <\ÖÄ‘\Zi\ïRQ‘@š#8¤8\ãÖœA\íÚ›‚iŠ\Â`QNÁ£\n\Âm§\0(§´ŠHZp4˜¥\ÇiÂš)\èœ\n\äö±4\Ò®¢\Ê\×d@\0\ëYúE˜L;Mt0\ÂN?J\Êl´ºŽµ·\Ãò©\à\Z½\ÉoÆ–8\Â À\éÒšù9e¸\Ê÷|\à`U#\Î@zl·={U7u	n½Rbh`\\Sú+\\\å†\ã\ÑG9¬\ë\ÝU³²:à±¬\ÜùÛ·u\ï“ücV\n7\ÜÑºÖ§¸\Ê&\ä¨^Oÿ\0ª¨d\äo8-Ñ»\ZŠ\0ŽBC‚*x\Ó 	!Ž7cù\Ñ{¢0$ƒøH\Ç8\î?\ÄSdM\ï\Ï2^@\Æ=Š\Ê8\'šÏ¿¸	\ã„\î\Êj\ÈKG2\ä¤qŠ±$¥#$q\ê+M—l\åI?0\Ï©\å\Ëp…#Bõc\ÅSVd_B³Í€N3¸\äb\Ë,mó2*ýž’±\å¦p\ï\Ù@Àf\Ì^(º[\nÍ˜\Å.x\Â}A\â¤<‰\ÊÃ¨­‡#=1Q~\ì—ªiGc9a\ã7vfw\ì)¦7Nª*\Ö7\ÎoN)§q?\ê\Ï\ã[\Ç%º0žfd\ÒñZŸfó‹?öT\Üýk_®.\Ç;ÀË¹‡IN“ïŸ­ \í]g™¥¢@\r¥¥S(§Q@„¢–J\0m--( \ÒÓ©iˆeHH…Imþ¹i7dÊŠ»E˜mWnN:S„\Ë)\Æ*\Ì_\ë\éY·?\ë›\ë^eJŽOSÖ¥N0J\È\ä|Or\ï!\\|¹\âºi¢\×Mó\Ø~ñ\ÆEszÿ\0ü|¯û\Õ\Ýh\ßò\r‹\è)K\àD\ÇZŒº*\Äa_­3µIQX3¦%¸\Ó\åÁü)—ù€Žõ4])\Ò\Öl´r\Z¶œ\È\å€\àúV¨ÑœWq¨ôü+¿ÿ\0X~µ¤$É’±@¸\éŠi#œS›ú\Ó=kRF\Ò\ÑÞ–XN\rR\ÒzP\Å&E8w¨\è@E\ê:p\ê(T\É#Š\ÖÓ¬Zg\ZÎ·û\â» úTM\Ù©v\Ê\Åc@\äV”q\0=±\Í5z\n›þY¥s\Þæ¬‰\ß<\Ýý*2qšw¨\ä\êh+\Í\" .\Ä\09$ñ\\Î¥©4\ÌU@òI\Æ\àq“Zþ ÿ\0%ú\×7ü´úU HŒ†9`\ÝNFqMDd ž=;\çÿ\0­R\'Tÿ\0xÔ²\Ç\ÌZ¢¬Oq\\¦$Á\\p{Ô¡\Ä s¼ý\ïþ½Akþ°ÿ\0½R\\}\Ãõ¨\êjË›Ä†?6ò“ÊžÕ’!“Wº”ˆžI©\çû’U\íï¥^\È\Îe‹=&2G–\Äy\Í^p±œ\0=qV“ý`úU)\Ö~57l[nÿ\0”;Op\Û\Æ1D]ªJ†<>`\ã½U{P\ïó(ö#Š\Ô?p}*!Ú„\ÆTŠ\Û\Ë œ\ÔÏ¶4,\Äw©\ã\ïôª:—\Ü_¥C \à\Ú=3ûJ\ã\Ð~B©\Ç\Û\éRU¤Kgÿ\Ù','2025-02-27 04:31:09',NULL),('650e8400-e29b-41d4-a716-446655440003','550e8400-e29b-41d4-a716-446655440004','Muluken','Gizaw','Administrator','Manager','michael.brown@example.com','555-6543','Full-time','2015-09-25',1,75000.00,'Day',NULL,'321 Oak St, Springfield, USA','{\"name\": \"Lisa Brown\", \"relation\": \"Daughter\", \"phone\": \"555-7654\"}',NULL,'2025-02-27 02:28:36','male'),('677e8400-e29b-41d4-a716-446655440043','357df13c-c77e-11ef-918a-005056c00001','Helen','Bedelu','Laboratory Technician','Laboratory','helen.brown@example.com','555-6543','Full-time','2015-09-25',1,75000.00,'Day',NULL,'321 Oak St, Springfield, USA','{\"name\": \"Lisa Brown\", \"relation\": \"Daughter\", \"phone\": \"555-7654\"}',_binary 'https://example.com/profiles/michael_brown.jpg','2025-02-27 04:09:44',NULL),('78621cdb-e01c-11ef-a1d1-005056c00001','78620103-e01c-11ef-a1d1-005056c00001','Kaleb','Abel','admin','administrative','kaleb@gmail.com','0900130082','Part-time','2025-01-30',1,5000.00,'night','650e8400-e29b-41d4-a716-446655440002','Addis Ababa','0900130082',NULL,'2025-02-01 00:43:55','male'),('7f26a855-e014-11ef-a1d1-005056c00001','7f266162-e014-11ef-a1d1-005056c00001','Mahider','Tesfaye','doctor','medical','hilcoe2@gmail.com','0900125689','Part-time','2025-01-03',0,3000.00,'night',NULL,'Addis Ababa','0900130082',_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0\0ÿ\á\0.Exif\0\0MM\0*\0\0\0\0@\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0ÿ\Û\0C\0\n	\n		\n$ &%# #\"(-90(*6+\"#2D26;=@@@&0FKE>J9?@=ÿ\Û\0C\r=)#)==================================================ÿÀ\0Áe\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rðbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0ô\Z:…\ëùÑŽŸÖ´1»ÿ\0_4d\ÑIú\nbQGÔ¿  ÿ\0\"—ÿ\0\×I\é\ëG·¶)€¿‡4¹\ãÞ›þsGZ,\Ò\ÒzÑšqisIž”g§jqsüú\Òæ›Ÿð£Òš=\ésJ\ÃÚ”S;žþ˜\íNi;úÒÖ“4£ÛŸzC”RRþµ!‹Š;R¯jJ‘…E\éK\ÛÖˆ?­/§ò¤õü©Þ´\0\ÚZNø£\ëõ\Å–S\én0¥\nZ`‚ƒÖŠ1HŠ)j-”ú…\ç¬\0;ú\Ñ\Óüh¢€¸\Ú)\n)›œó\ÓQõ\Å\Ôs‡­Î\å\é@\ë\Æh¢^üPþ}(“G\ëL@J(ÿ\0<Q\ë\é@ƒÖó\ÅzP\0{úJ(\Å\0~‡Öþf›Ú@\ë\ÅŸ§µ( ¡sN\ß\çJ8©\êx¦S©‡úR\ÓE/¥H\î={RÎ“ŸÆ”~b‘I‡j?ZZ\r _J^Ý¨R°\r£ùR\Ñ@Â”sE(ý(Â’Z(°‡Qüè¥¤0ýi1Ö—üñEŠ\\\Z=;­÷¥ ÷ô ER<þ”±ß¥8ô¦úWQ\Ì¥\Ë~¢\å@®ÖŠ( ¤=\èj?J\0=(¤4´À?È¢\Û\×¿Ö^ôzÒŸóš\'ù\âŠ?\Î(?­¸gñ£ú\çÖÖŒ\ÑaŽý>´\ïJ`\ï\éKú\Ò(x\ë\ïOý)\ãò¨ñJ;*oó§~´ŠúRòi¿\Ë4£­!¡ôQü\è¤P¢Ó©¸\ä\Ò=)E;ôúRb‹\0q@£ñúR\0þ´\ßð§Sh\Z8úÒŠAý)Þ”\0*=}ÿ\0Z(þ´†%´¿…µ)jSø\Ó)€QN¢´ž”\êi\í\ÛÖºŽQýTœqKú\ÒSB¸R\ÒQ@\Ã\ëÓ¥½¾´~£ù\ÑF\â¸~´žhõ\ã­Ê€\åK\éÚ“ô¢˜®\éŠ(£µ Ÿ¥/¯§j(úæ‚‚J( üi—Ò“¿½(\íE€p4\ï¥0uñÿ\0\ë©\Z)\ßÎ˜8÷§Š–P\ïÒ\Û\Ô\Ò\nZEú`\Í?ò©(Ojw\éII\×ò¡Ž\ãÿ\0–i6ý)h¤À?Ozm:Š\0Jþª?!‡ò§RzÒŠ\áúQúR\ÑH”ži}}Eþt”w÷£õ Z)p(¤m\'\éÚ—Ò“ùWV‡(ZJ_Ò@	\Ó\éE\ß\ç4÷$;Nô*?É¢€~ž\ÔQ\×Ú\×Ö˜!i=()z\Ó@!ú\ã\Ð\Ñú\ãñ¢Ž8\Í \n\r.}i¥\ÔwÀõ4´\ì~4T~r\ç\å9\Çqš†K£“Ž£§ÿ\0^€,’<üª	oR\"<\ç\0\n\ç5Yi ù’‰\æˆ‘³¯ÿ\0^¸[ÿ\0jZ¬\ég<c ý3ùRrH¥\ÏC\Ôücm¥}ù\"\Ð!\É\'\éó\î+\r>&\\K9Š\ÛK3\à\ãj1\É\ç\Ø5qöÏ¤[\Èf¾žK\é’Ll@ú|\Ë\×\ß?JØ‡WÓŽ\Å\ÖÝ€\ã\0¡üy\Çó÷¬CX\Â\Çk¦x\ê\Îþ\émd‚[K¦$ø\\ž\Øç¿¾:ô®‡Î—þy‚1U³ŸÒ¼§Xy/-qrˆYF\è¦SŒŸñ\ÆG5{AñÌ¶°}Žy\Zu\\yr¸Á\Ðý:g\ØóŠjiƒ…IŠõI\0†V\Î0E[\ä\ã½r‘k~nÇ‘¡’7\É6\ä\Ç~ý8?ýzØ±¿‰Â²>Q\ÆJút\ä{{Qqr³TS¿¥0FA\È#ŒS…!¡x§×½7¿¨¥ô¤\ÊC€£×½¨ýOj…ö¦Ó¿É ¼~4”´{ò(\0ý(ô¢ŠKúSE-\Ò\Å/ó¤4†6—Š=~´P\ÑIƒE3üóIùRž3\èG4\ß_j\ê9¹¤¢“Ö‹\0¿¥\'½¿Ê“õªDŽ£ü\âv£ù\nAq{ŸjO_­”f˜\\w\ãžhÿ\0&“×ž(õ¤\ëýi¤ŒžhwÁ\0·aþ{SxŒsÁ=\r\0/\Ìø\Æ\0\îj)\nÇ–, \ânqX\Ú×‰â²„\ìh\Ôc™°^ƒ©={~u\ç:ßŽ\ïndh\í.c`T•P3ô\ã?Ci¶wšÿ\0lô¤(…d”ŽpOÿ\0[ü\ç=<÷Sñ~§ª’<\á=E\Ç\ç\î¥sß½¹s#–b\Ç%$ýi_pÀ\èf\äÙ²‚E2>|\Çb{“QI\"ÿ\0\Ë0Hõ\ê€dž	\éžô†m\ä\Ï=j°ç•Ž=zsJ\Çù\Ôy ó\ÍH.#¯¸\íEÆ‹°\Ý:F\"g`¹\È\â\Üù$ÔŽ\0ªJe\Æ:\çŽ\Õ…‰9oz©­­s\Í\ÎH\rŒýkcKñL°¹:Œd\éŸqž‡¯üzr\éž7&G\éV#D›F\Ö\è¸·\á¿D\äGw8\ØÍ€\Äýß§·_ÿ\0UwqÈ² *A\Ï9\×\Í\Ñù–\ä`“\ì;ý+Ð¼\r\ãV…ã°¾\ÝµY¿‡žþ\Ã\Ô\Õ\'Ü—¨õ1úR\Óc8ã¯ju1þsKúR~´´†‚ƒýhô~´h\0?*_\Ó4˜¥õõ¤E§ùR\0ü)E §*\0)zZm\ßÞ—ùRþ±¥¤n\Û\Å~\Ìý)¦Z+¨\äbzv¦Ó³M¦!JQú\nO\Ð\Ñ\éT =¾´t\Í ž±×½!E\'¥¯µ\0-!<\çKÛŸ¯Zò\äÄ#¥~\ë\ì\0A5\Ó$\Æ8Ì—>‹õÿ\0#§\á\\Š|Tºd²Ldºq…D8õ÷U\ï\ê\Ëcjö\Ð\Ê¬»¦sü+ÜŸ¯ ù\ï\ß\Èu[ß·Þ¼ƒpŒ(<Ÿ\Ç\Üõ¬\æ\ìmN7Õ’jZ\ÅÎ­022„\\…DUú\nm¬J2\í\ÐrÂ¢·„¿9À\Ï$\Õøø\0òŽ¤÷¬÷Õ›m°\Ð\ï)\éµ;\0qšŽR#\É=qÛµJó,y\Ç-\ë\éT¤\Ý+ž\àž‡µ&a-!>™\æ—\åN¯Òž\ã\Êþ,dû\Ó#…\ÎÜƒøT•¸£\æ ÿ\0]XHG÷L\æ¬Z\Ú\ï\äs€=kR\ÞÁe Hª\\’)E³%-[ \íÀ\ê1U&…‘\É9Á=«¯K‚\ã<\Õ+\Í5Ÿ†^\Ø\È\niš:n\×9”‘G]\Ø\Ï~\Õr(\Õ\ÎT’zñEÍƒFO\ÍWM\Ñ8Á#ô­¹“M\Z[2ƒw#\Z\0x¤§9§¿\çD%eOC\Ü\n›g\ÈTñŽs\éF\Â=KÀ¾\'kûagrs<@OV\â:WnŽg±«\ç\í\'R—M\Ô#™N$‰²q\Üwý+\Ût=V=V\Â;ˆ\È€b£œoc\×ñ¦ô]Q«\éN¦@\íOªP(þ”\n\0\\õúQ‘E½)X”ÿ\0:N˜¥¤\0)Â›J(i§¿ju!¤0¢Žxþtb‰E-ÀÉ¤ý=\Í\'Z_Z\ê±É¸n¦úû\Òÿ\0ž´”\Ñ,?Ÿz=;\Òzö¢˜…þT~´ž”f€ÖŽ„ž¿JL÷\í\ÛÚ£s’Fp1\É\r	,ÊˆX°TI\ïôÿ\0\n\Ç\Ôo~\Ë—W\ÆpNŸ\×üô©µ\è\âË·1\Ä7L\ã<û¼{cž+\ÎüO¯\Ë4†i\Ôy\nHŠ&9\ÞÞ§\Øq\Çù0Ý‹Œnaø—U{©¶Al4€s\éŸ\çøšÂ‚##Û©4M+\\H\Ò9Ë±\É&§ŒˆaõvÇ¥c»:²$s´¨?Hd.DkÀ\é‘U\Æ@\ÉûÇ ªhƒE‡n8‹€’&¸¥H‚\í\×úT»3\Ïnþô\×MøLõ\êhA^k—~G½XDód¢ŽOä”p0;\n\Ò\Ñ,\Ì\ÆfÀŠ3’O\çúZ\ÊNÆ‘\Ùb\ÚÀ\ÛÆ¹;ŽŸ\á[V:—\Ï\Ü\çÒ¥·³ó§¸ù@Â©\ãüš\Õòp8\ãô®i»\ìuF6(\ÇjSŽi’Ùƒ\Û8\Î	\íZžZ\äq\Î1\Å;\Ê\Îp8\ïš\Â\í\ZZ\èä¯´\ì¡zŽq\\\Õõ‰L•{u¯Eº³\È8ö\é\\¾§fc\Üq€sz\n\è¥S¡HÕ›˜\ß¨\ê=kEð1\"µ†\Ç\×üþFD\Ù1\ì1À«v\Ò}¢3p\Äd\Æ+§s—a%ˆ\È\'9R;ý}úþu\Ùü=×¼\æ\Õ\Û\Çr\ç\ë‚?¿qÄ°O9Ô¶WMe\Âdmm\Ø¿\àEJÑ•¹ô\"?C\Ô0\ïÚ¥æ±´;õ¾\Ó\ãum\Øô\Ík§\Ý÷­V¦oF;ú\Òñ\Å´\n\0_\åJ)=h \éš)=}=¨©E-\'ÿ\0ª–€qþzRzÒ¯z?•!‰Gù4¸ ÿ\0õ¨¼QF(¦3ñM\î)\ÔW]\Î ô¤ýsG \í\éA<P\r‡ó4gñ4\Ú=}{SB»ú…!`ƒž¾ƒš	\í\Ô\Ôn~r½;“\éH23\ä \ã$ö¬\ÝNñmc$\îf €£¡>þ\Ø\Éæ§½¼û:ƒ.x¹-^õK\íyp£&V\Ï8\à_òiIØ¨«²Ž¯ª¬–\Í5\Ëm·ˆþ\íA\ÌnO{ò}\Ï~k€\Ôo¦\ÔnL³œ0p}°­\rsQkû’rDQœF§Œ\n\Éy9\àN{\Ö\r\Ü\êQ²\ãÏ¹©üµ\0³t­,I“\Ç*;™rƒ:‘Þ€$’s“À50&Bs\Ç&«G\Éý1Þ¯\Â<¤,zuÁ\ïH,;Œˆ\Æx\ÅIn\Ìq÷A\çÞª<Ÿ\ân­\r:21\ß`xö¡²’¹<‘3Š9a\Ðvÿ\0\ëš\êô7Ê¶H¸òÀÌœcqÿ\0\Åghºs^]_ˆ\Ð\à‘\Î~•Ö¢* U€=+šnú„Ž.‡¿ò©1@¥\'ô¬Y²þºwNôƒ\ê{ŸZ+\'¹c\\g=ý«#V²ó#b9\'§Z\Ù\ÍCpždeqŸn´¢\ì\î&5½·Án0A¬ô•¡\Î\ÒÖº­^\ËË™»n\é\\\Å\ÜB2qÚ»\á+£Ž¢³/H|\Âvý\Ç—\ëþ•0t;¾ð\êz†\ÎmÖ­R§ \Ô\É\'›\Ï\0¯\ZoBQ\èu/6\ì\ÙU\ä\Ï>•\éžFWÖ¼E¿m;RŽD;QŽ\Ò}ù\ãñ¯d\Ñ\ï\Ö\êðr\n\ä^ß˜\ä~\â\Å%\Ô\Úô£óÀr=û\Ó\Åh@R\ÒRŽôh\ÑI\ëGó ¥ÿ\08Ÿ­/øT€¢ÒÃŠ\é@\Å\Å!¥¢\r¢Ž( _\å\ëA£\ÓÖŒuþuØŽ0†’ŠÄ¤\Ï\È=…)¨\Ü\ã±8ª\Çg=Oòª\ÓL!„\Êy$\à™©\É\É°\äŸz\Æ\Ô\î~\"Q’ô\É<~^§\ëRÆ•\Ê:ÑŒ|\ÓJp3ù’}€\Î>‡Þ¸o\ê\ndh`¸\ã\Ìrs¹½½‡SZ\Û\×\ïMªHˆ\ìò\ÈA\0}\â=‡#ð®\Z\âA,‡h;A\ã<\Ö—C¦¶¤2¾~¿Î™\Ó:\ç\'\è\ãŸÆ‹qó™eG=:Ô£Bs\'“n®\Üj O>¤õ4û‰|\Ç>€\à\njsŒsÚ-c%þ•<¯’z/\\w¤a€g\ïriœ„ô$\äf¡\Ãùül\Ù\Â\É\0\â\ìŒzú‘\ì=~•OH²ûT†I8‚!ºB{ý=\ë¥\Ñ\í\Úúü\Ý2\â$b^˜?_\éYI\ØÖš:6\Ùmm£Š>ŽO­^\Ç\0\Ó!Œ\0;\åSc5Žú¿µ/ò\'\á5.Á\Æ~¼ö©h¤3aü\é\Û:\Ó\Æ)’\ÍHX²€=N+>Vö’@S©\éP¸9\ëT&ñ\rœ\'\r(\Ïò¢\Û\Äs8`=MK¥!{D\Èu{O62\à`ûW«Ç²C‘\È\'5\ê7“[B\àƒš\à¼Ce\å¹q\È# Ö´dÓ³3¨®®Žj\ÚO.a\è\Ü\Zµ¸\Å0\î\äUMŽGL*\Ó\È\n+õ8Áµ\Ô\Îer\Û\ã‡(\Ü\ç¦+\Ð|­!\Ò>eFÇ¨üŽ\ç^um\"\ì(\ã#÷­?\ß}ƒSM\Ç(\Çi>\ß\ãKbz†Et½f¦¬õf¶\nO=·ù­oó\ÅZ\Ô\ËaÂŒ\Òqõ¥¦\Ñü©(¡‚š\åEò¤¸¢\åGó¢\ã\×Þ“ô¥ÿ\0\"\â€Ÿj)x¢]?ž´g§½v#Œò¤ô£Û¥!4\Éb÷¨¤#¶)ÿ\0çšðKúŒs\ëLCwùh\Î\Çÿ\0\á\\\á¸û\×=7c\ïžú\àþ«{#J|\ØÇ®ýx\ë\\\îµ+X\éð \0”p{Ÿð\Î+9\èi«œN¿u\æ\Ý2©;Pm\0ö\çù“Y\Ò\"\Ç\0~\ç\0{ý)\×|\Ì[‘š‚\êR\é\Zt\n0q\\\Û\êu%b±ý\áû£’*IŠ\Å\0Q÷&„À öóUe—\Ìr!\éT†GÖ¯YÇ’I\àc9ôª‘‚\î_AW¤*‹\Ì2}¨óe=\Õzg½6C\æ>N‚G$ž}\ê\è\Ñ\åò\ãbG™ %P`Ÿ\Çùþ~õ-¤4¯±a/’;h\í#\á2‡û\Õ\Õéšµœq\ì¨\0\Ûük\nK.\çP\îq\Ç8ÿ\0\ëS¤ðä±ž$\ï\Î;ý+7$\Í\"¤Ž\â+øe\Æ\×RCšµ\æ¸kx®-p	\É‚8®¢\Âé¤„n98Á÷¬Ýº\ZÅ¾¦°#¯\çP\Ü\\,HXœô\èùJý	”ðÁ÷›‘­¯ª15o\Ü!)mò¯MÇœ\×?%\æ©Áó\n“Ž3\Ít2EUY”w\íQ‰˜¨:gj§dC§}Y•oá‹›\ZGò\Éõ\æ´ƒe\0ºÁ¦?úõ£\Îø&[ßµ\\IncM\åTJGø\ÒsšN&\"&­¢Ióa\Ï$s¨¥½–=NÀºõOj\è\âš;˜\Ë.H\èA\Åg\ßi±G™#lt?Z\Ç\Ú]\êZ…•7º‹d\î=0)‘ó?ºH«º”a/2NsÚ³\íÿ\0\Ö?wGX\Üã’³±<G.p3ò“\Ûÿ\0\×VOÏ†^\nõöªo\Üv\Ï\Ób)	‰\È\Æ\çHRð6°o-„nÙ’?”\çŒð1øG\á]ô2e­x_†5&°\Ö$…n8\Ü3þE{Np³@s#ô\Å	\ÛBZ\êig¥µ1:g¯­?ò\â´%\nM’HR\ÒQü¨\ÔQE!‡ø÷£ŸÆƒŽ=hþT?\n)8¢X\Â=¿­4ž½\é3G­v£ˆ=z\â\ÔgŠJL\Ó%‹PJ\â2IéŒ“S\Õ\rX”²m¿yˆPx\ã\é’\n\\‚1þ‹%\Ãpòó\Ù}>ÿ\0\Z\ä<Q7\Ü\r÷T“‘ß©\çó®¶\ã\Ìò\Ê| 0ÀQ\Î?Æ¸_†\0±e\Æ\ÐpµeSczkS‘;\ÏrÇ€;\Ó.\Ë;I\Éò§\Ã&&x\0w\ïUneó$\'¶z\×9\ÒG,¸s\×Ò ô¤s“Jƒ$zf„ZµË·© $›Ö‡8Uzž¾ô \á÷\rŒµm·\ÌRF\áú\×Am/\ÙÈ–OšfçµKHµQša’\Ô\ÉR\æ\æf\Ú0„ö¨z—\r¨õe.^{…Q\Ð(\ãfkûm‹û\ì9\çqõ¬‰­b–\Ê8£‡Ë•8,y\Ýõ÷\ïR\Ú\é3É±¤Á\0Xœ.síœž=jZ‰i³@;J™C¸g‚;Ô¶\Í\Â7\à\çÞ§xd–C.Ø¡$Œ„g·ùúUK¤ÿ\0I>ð<‘Þ¥¢\î\Ù\×\Ù?˜=r*-i zõ\Í3L“ô«Z´fXW\Óa%fo¡\ÍK\Z\Å‘\Ï<õZ\Þ\ÖÔ‘¦ºXØ©1¢¶3\Çsýj&\í†6@1\ÐTY+žc^½G¬\ZB’rV8\×K‚\Z›;³»“Ž¼©\ç<ôô­{1wm§\Ç%½ÔŸh,sAù\è~žÕºšrœ¤2Z·Ó£ò¨Á÷¢uV\Ö3T­\Ô\Î\Ónn]\Ë\ÏF\ç‚GCõÿ\0\Z\Û\ÞÚ‘\Æ@\ÈqS¥ºöP ©\Ä[PŽ¢¹®\æ\ëka\âKb—R7¾\áùˆ5\Ï\ï\Ù0|pO\"»\ß\Ùf2ãŽªx\ë\ßü:\á®\"\ÂsŠ\î£+\Äâª¬\ËrÆ®¯F\0ý*$ÜŸ2ô\Ï5-·\ïl\Ý?‰áŠ‹Ñº\Ôu­,\ÛË’¬œ:\í=¿ú\Õ\ë\Þ\ÕV\ê\Ú5Ý€Ã…<c¾\Ð\çS^1¿Ë8\à÷#½u¾\Ö\Â\ê%\ÜLR\á9þTžŽ\ã\ÝÒ‡òïšwª6WK4!ð@aœõ\ç\ëW‚9÷i\Ü\Ëaýýi\Ãò¦ÒÖ€¿Ö—Òš)\Ô\0\ê;RR\Ña 4*( aE\'\ÔRŸþTŸ­†»<={\Ò~”RøÓ°úœ\Õk\Ð$\n§¨9Ò¬}OÁ\è:\Ð%¹™\æ6òÍ´Æ‹œóÖ¸O\É,\É\"66\Ä\0,9\ä‘À÷\Çj\ì5{‘b02\îwý~ƒ¯\á^u\â`\\\â\Ê\ÓsB–œ\ï~\íùæ°¨t\ÓZ\ÜÂ¸—…\äp*«¹\çßŸZ{ðy\ëP—ÿ\0\ëV:©#8úÿ\0*Š»ÿ\0\ÕE‚Åý	\ïRB\ZY2@\éU{dý*Í‘ýüc¶\áœQ`:\ëVòs\Æ1Z\Öö\0sP\Ø\ã\é€kn\Þ?z\â¹\æ\Ýô:)­\nb\ÉF2ªH\Ï5*[7\Ðg<U\ág\'¥HaÀ¨Išú^%ž~µ™qÏž™5«s1\ÐVt¸<u\æª\ì\Î\ÆÎ÷¶d‹Ìs\È#¦`\"Œr9­\Í\ß õjÊ¡\Ñ\rŒ\ãk‚NqŽ˜=\ê\ä…@$šˆ>\ã5“\Ø|½J¥6gÊ–0O®*×•Ó¸§±ŽÆ­‚A|SŸŽ:T©\Ç\åQK\ëßµa\"¬sþ …d³›>›=«\Íä·2öZô\ßœi7¡ù\ãŠó¸L’)•\àúÿ\0ž*\ê\Ã\ìrb¥K\'ò¦\\ð¼©\âžYd?\Âx\íQ°\ØH\ês\ÅO\'\ïQe\ÆXŽqþ\Î+¤\ç\"Ù–#¯¦+gN	-©pU€ö\É\Ç>Àþ’ƒ‘\íZzhÈ’<\à1?\çüñS=#¹\é^	\Õ\Ú[e†C’£qÿ\0\ëÿ\0\Z\íP¯\Ðý+\Ê<=3Et3\Æ\âXõ\Ç\èAü\ë\Õ-dó!¸É¢›¾„TV\ÕúÓ©¸ÿ\0\"Z³1Ãµ(üþ”\Êp÷¤©i8¥¿aü\èýh¢Ãš)ÖŠ\0\æóG¥Ÿ¯Ö»¬y\àM\'ù\âƒ\Û\ë\Í7\×ò¦ õ\'õ¨f~v\'!\èj7ñ\Û(y\çŒ.§ûQCdùd/R¹\ç^ÿ\0€®.\ë&0Bª(\0¾¾\æ»\Æ\ß\Úp¯$\'\Æ	\'ù\àš\å¯HŠ\æ\è[ƒš\å¨õ±\ÛMhb¿_S\ïL\ÇNõ`¦2OÒ™\Û=‡J\ÌÐct\êjx\í¾¸‘\ç×žM]·Á$õ\n:\ÕN\ç\ä!@À5-¡Tuõ\È\çò¨®d\' \Ï•7!y\Å=LË…\ì0+£µ^Ò¹PÑ£z\Ç5\ÓC&@ô®ZŽ\Ìê§ª. €\ïI#¨\'\Î#N¸â³¥•¦\'$…\'€;\Ö|\Æü¤z\ÒòžÀŠ£n›\Ï\'5fh\×ŽµrGœž=*Óº3kSb\Ã Ž;ŸJÕ‹/€:Í±– 9f¯=\äq&G8\ç>•”Ñ¼vX\\’½Gb++Í–ðœ\Zµý«$‡\åCŽ\Äñš„ƒ#–n¬rk%¡C¢\Ôy\Ã\ØñW£¹WžMd\ËOLú\Z‰.$·|?ž\r]Å¥Î„=ù¿Ò³£º\È9©\Ä\ÙQú\ÖR(\Çñ)Í€‹¼²ýs\\ôgv }û\×O\ã\Ëù-m­|–Ã™wy\ìk’Žó\íV²´ü\Í\æÇ´Ž\0]¯Ÿ\×o\å]¸xû·8q\Ö\Ä/û\Ì2HÉ©­v¼%^\ÇÒ¡#ö<{Š|G\Ür+sœyúö­=;ý`\î\Îù\éT½z\Õý8\àŽ\Ç#Š‰lZ\Ü\è´t?jNÁe*{v\rþ?­zm‰`¦6û\Ë\È=3\Ûüýk\Ëô\Í\ÃSU=CA\ÄW§Å‡—“\Ôwÿ\0?ýjŠ{„ö4GOj_Jˆ\ÞüûT€ôô­Ì‡Ó…6\Í}iÃ§¥6”R\Ô‘G\éE\0.3E\'4P3›þtž´”\Ó]\Èó€þ”\ï\éÚ—ùSI>\Ø\íM\0’=9\Æ}9¦gzR¶q×Œöâ£‘\Ô!,pS\éOQ_\âi„sÆŒ<¬«7LŽß—?pWd^ù¯A\×\ï…\Ñx#ÉF$a\Ðý?\Ïjó»\Ïõ\Î\È\Ï÷®J‹S¶–\Å9H¨I\ÉRŸ¿\ëŠh¼•™©\"\0‰\îx«q\r–Ç±cŠ«Ÿ@\äg9«$ô_O\çT€«*`¯4c\åö©%Öšq\åŸN”\é¼=u›m…°P\àŠê­¦$v¯<\Ð\ï7X\á\å$öÿ\0?Ö»»|­\Æzc½sVSªŒ¬¬[’Vw\nx\é«Ž9Ç¥Z1)‡8þu©Û´.\Í2ƒ\Ï«\nz»6i—C\Ç\éQ\É\n¿A‘Ö°´ç¹º3 ™¼\È\È\Ú\0n_ñ­\á¢\êI1Œ)a·v\àzý=\ëwM£%5{6>8¥X\É\ì	\Æ*\ìqL\àö\àþ5^\ÏI\Ô&€MÜ¤œ\0y\ëZ–~\Ô/\áß¸D¸À\Ï$\Ô8š¦—R-€\0IP=ø¦=\ÄQõ‘AúŠÑ³ðœ“YI$Ž\Ë($*Ÿo_Æ¡\Ôt Œ\ä•X˜¶{Ÿþ·øT*wcu º™SjÖˆBù\ÈXŒ€sUþÔ·±ˆ\îzb³®![«õktQ(@}z\ÖÍ²\Ã\ã$òM9ÁAwW¡d\Ó8«ÑŒ\0\r=#\éü\é\Ç	\íŠ\æl\Ñ3€ø….n­£„ž>•\Î\'\î\í¡\Î\Ð[/~›Iük ñ\Ê\êItˆ¥[\Ø\ãVö\Úù\0\ç¦qùW9ò›–#\îŽ\à/\ç^•5\Ë:£¼™lsnø\Æ:jvõ\ÆI§GÍ·¾E*&¿L\Z¢	\ã9=AW-O—:ú§ñªq”zŽ¾\Õn3‡ó“\Æ;T3H%©Ùª\Â\Ý\Øn>ü\nôm4\æ8×±\çüÿ\0ž+Î­Ž5wÁ\Úr¤§ÿ\0\\W¡i\\B[³a¨§¸L\×P0GANqÛµ \è)}}+s\ã·ju0S\è°¥<Tbž)\0ú)¢–‹š)?\Z(\ÍRþ½õÄ¡$ñ]\Ûp\éAü²:Š9\ZNz\×5&:zû\Õh!9\èH¬Z\à\Ä<…$3òI\ãüñøÖ«ð¯\\š\æu\Ëõ·ŽIde\'\0÷=±ø\â¢r².»9\ß\ß\Åej\"˜J\Çs0\ï\ÇüûW\åŽu\ëW¦-;\ÜHr/¯¿Ò«\Ü\æ\Ð+–N\çlU‘PŽ¾¹¥\Ç\ãJ{ú\æðÓ½IB\'\ß\'·Z”?>\ÜTC¿sOè¹¦€”\à\ÆO¡T=§^*hð\è\Ê	=\Å1£\á\Ïaž¥vº¢·¶\Â7 JƒÖ¸Í™\'±\ë\ÍYK³§^¤\Öû‚u\Þ\\ÿ\0‘ø\Z‰Ç™Yž£o\'™B~`?:«xžt$=ê–™ªGul“F\ÝzJ½+\ç,:\Î+™G•<\×1£-€©\ÚÁ·]Fâ•‰\í\Ä\èÀ(\Ë\ÈOn\çX\Â$“Ðžõ\"Z°#¸­\ÕN\à\é\Æn\ì\ît\ÝsOx\äd™Q\äõ«V~#\ÓÀlÜ ùˆÁ w==ºt®\Þ\ÝxÜ¹¢´cµ³]•Ù‡@8\ÏÖ•\Ó)PK©º|ceQ˜n%H\ã<\çž+ò[IÑ§|Áõ÷<tô¨|¦\Èò\Ó\0‘œv«1[ÿ\0\ÏFÏ ö¬eR\ÆÊŒ£l\ì…\ÂpO«f/œS\ÇAý)\Û8$\×<¦Þ¬c2\0õ\ÅcøT]3L’BxÀªSŠÑ¸•bFv *Œ’{W˜x§WmORQÏ’™\Ú=}\éÒ‡<Œ\êO•iòù’,R?\r¾V-\Ð6Ó´psùŽJ„Æ¨\í·$d€HÁ?­-‹¤iqº-\Ï*…ŒŸ\áù\È÷ øšžP¦y\"$(9\Ç=°¯Gcƒq\"\èW·~5(¿L\Ó\"OŒ\äžÀt>´ŠH±N‚Ÿƒ‚{Jl}	\ïŽ\0«\0,úc$T2–†å›™’Ü«ÀÀ\Ï÷ý+\Ñ4y3j™ã‚+\Ëô\É9y\È\È¾\Õ\è^\Z¹ûD\r\çaÜ¬y\Ï>£‘\Çó\ÍL7	\ìu ÿ\0‘KÞ C\Æ}ªD9\Çn\äV\æ(”S¦ƒGÖþy§\Ôt \âÇƒø\Ò\æ›\ïK@¢›\Í\æsTµW\Ùm\Ñ|À	ôÿ\0<U\ÂzUmFÝ®¬¤~þ7/l°\ägÛ¥v³nGý×™\Øôö« ü™S’G~õ›¦],\ÖÁs’	RX(Ñ¾A\Êö^”\Ó\Ðmj-Ô¿¸n\ì\0W›ø\Æû\í:˜¶‡\"b;výxü\ë¹Õ¯¢µ²–M\Ø}¤l<d\ã·\ã^\\ò}¦i$s‡‘³1þ{V5e\ÐÖŒz„1„@\Ì>P8N\ã\äôö«wR\ì@£®0*|ƒÞ°GI	\äŸ@*9:~8©N\0$ñP¿<ö4ÀH\ÎI\íŽj~\Þ\âª\Åß·j—\Ì\é\ëŽh@In\äIø÷§:yr0\ê:‚*!\×#­LNF{Š\0µ§B×—?,8XÝ°£$ü¿\Ï?\ç\ÝV\Û\É\Ó\ì1\"º²³Á\Êü\Ø\çò=j¬R\É‚X]£‘O§}+¡–\Ê_h]\ÄX\ÝX\ÊZXW\î˜Ê¼{§q>\Ý;²^†‡&xw€\Ù\\òµ\×Y\Ü	)9ô®?CÀ™—§5¾¢!×•‘\éYM#XJ\ÆÁN}½ª\Ä=¿­Wµ™fŒ\ÌU”JÁ}I\Î\Þ2}j\ÌaqƒÏ¥C%ñõ«ñ\Ûp01\ëH\Ö\äh?ýtÿ\0(9\æ%N}*a Œu\íXÌµ°G5Ä:zÓ¦¸XP’p\0\êx®cR\Ôd¹&8Nõo_¥gk…Êºö¦n­¡b\"_¼Ã¿°®.ò3%\à\Ç\È\í]\Ä*ˆNH\0dš\ç®&\Ø\å\Ç$t¿Zì¢’Zµ\ÉBx\ËðXð«Œ\ã\ëM<€;O–h\Ìp${‹*\îv<e_Ë§\áÛ¥D\ã:fºrTû‡œ{Ò§oZg&3Žx©#Œñ\Ç8¤R,¡\äv«\É\Ç\0g\Õ^˜=ˆ\ã5$_|`\ä„TÖ·¼J‡kÃŒq\ÛÞ½@†(m£(1Ž+\Ïl%\\€ü`‚¡\Ïÿ\0Z»-UHÏ“1R§•#·×Ÿ\åùT\ÃIö;\ÏE9=¹©“óª1^A.z˜\è2qV£•@?0ÀI®ƒ\rK\"–£GŒt=\éÿ\0\ç¥&1iE\'ò¢\ÇfL\Í-\0?š)¹¢˜ô9¯Zi~¾ž\Ý\éO<úTgùWmŽU·ž\Æg½²B\ê\Ç2\Ä?\àC\ß\Ûú\Ò[x–\Î\æ0*$¹ÁG;XVñ\ÜAô\î:\×=­xr¤iDHN:ü¿J‰]l\\Z–\æŠ5XfŒ\Åo*¸\Î6¯9l\ã\Ãù\×*b1\r\Ó0\Û\éõ®†òÁ´ $Ž‡\ç·\ë\\\å\ì\Ì]•Ždc“\\\Òm½N¨$–…¤óúw¨óþzPã“žž¢˜O_Ò‘M\ç$Ž€v “\ßÞ\Ûõ ž\ÔÀ‡9ü©qßµ\ïZp\Î\ßl\Ñ`c\ã9 {U‘\Ó\ØUT\ë\éWcC\è8¦0AÖ†‘­]\è7¦\æÑ“s)B®+\ÏO®#°\ëTyŒñ\ØSd\ê;j=M\r7\ç¹\Î9#$Š\é¡¹\Æ\rrúDŸ\éJ¹Á&º¨zLuõ¬ª	º\Ù÷®vžHô­K;…”sŸÖªÊœgb ²\Ð6\Ó\é\Ô\Z\Ä\Ú:$.Š´“c\ÏEys¡b:dsŸÂ¦Òž.8\ëŒVm›D\Þ/sQ\Ü_G%›\0v=\ë%¼”€`=\Í<Yÿ\0\Ì]‡<ö¬Y¡\ÍÄ·¤“•ˆr\×\ëUDc\éÚ®K‘\ëÚ«\ÜI\äÚ»ô*§\æœQ,çµ»ó#\å¸\ÜÃ·ù\ëùV\r\Ç\îÁ\Ç,SZb6“tŸ\ÄÄ‚\ë\Óðª×°\0a\Ü\à\×]=49¦¯©^\ÝŒ÷\ëõ§“‡\'¸\àŸóÖŸn?wž‚˜=z\ç\ëÿ\0\ê­L	r0®I÷âœž½r1M“’8ÀªH\Æq\Û\ÛÖ“d@\êqÒ–€}q\Í@N\Ç¤ò¥JŸ^0jJ-\Ç/–A\è	\ëZ\Ö\×C\nc\ÍÔŒ?Z\ÃOºA\î03[\Zd|61\Ç?Ê¡\é©K]\Í\ë+Û™‡ÍµvòIÀa×¯<Š\ÝÓ¯:\à#œô<ÃŽ¿Z\ç¡\r*%IC‚A?\ëøV½´^l!\ãºŒN¯J#&\Èi#°·q$a³\Ç\\1VGjÀ\Ð\î¼\Ðc\èW~H\ãñþuº\ç\Ð\Ö×¹\ê?JL\Òþ´\Æ;\ßÒŠm.zPñE%€\æ\ÍDxqùÔ´\Çõük¼ó\Ã<‘\Ðb¨\ßJ¨„4˜ô?\×Û¯\åV¤|!\'Ž3š\ã¼K«d}š\ã;K\éúgü*dì‹Œn\Ì\ÍsUk«’”Rpß \ãð®Z\ã\ï“\Ô÷>µ§\'u!G,‹\éøð>••p\ß9\îGz\ãn\î\çtU‘ZCøúcµEÏµ<òs\Ô\ÓOó ƒ$\Ô\ÓÔŸS\Å;Âš{úŠ`§¾8§D:÷ö4\Ô\çý\êD Jƒg\áV\"pŠ€œ¸ô#‘ÒŒ”>Ù§°ÉŽ	\ÏN\Ô\ì\Çn8¨³Ÿj‘0>„v¤cû»øÿ\0\Þ\0Wm\áOCÒ¸¸Q^\ê3\ï“]‘%\0#\'k:†”\Ñt§¨\éQù{ \íVb ýi“\'\á\é\\÷6µ‰a<zû\Z¹\éŸÊ¨\Û\ç¿<\Õ\Ô‘¨‘H—*¡ö¨œõõ?­I³9þµƒ¯\ã\Ô3D\ÊrIô\éš\É\Ö%g†;hòS€Gÿ\0<V´§\0ö\É=+\"ö­d¹\áb\\(=³þ#4ºƒd&\Åa€®0p\0¬Y<°¨;€Hô®šû¯|\ãúW5ªü\î;–9\ì:q[\ÓÕ˜\ÔØ©úž=)\Ðó\ì>ü\ÒD‡‘\íŒQ\ØpxúV\ç8\ï_qÁ£ø\0\ßÚœFGZAžGC\ëHb¸\Þ¸ü©¨[88#¦E?\Çašaöõ\Å\0Y·<úVÎ™sŽ:‘\×\ë¸<5^ŠFˆƒœ`ðEK]›:\á\ÐÊ£ °?Lóõ\éø\ÖÎœ\ê›\ÝyV\'\0\à\ç¥r6w\Ìc ¶s\Ðzÿ\0ž\á[º,¬@ˆ\äôú~=\ê¶€\Íûýµ\\pm#\×üò\Z\èc<þÚ²\ì!¸\0q\Î:¿€g=ø\ç5²2ešpû¾´Às\íõ§S\ê2)?-4RQE†s]¨\Ï$g·J\\\ÒW y¦n«(Š½>üÿ\0‘^{«\\y·®T\à*\à°\ãŽ>½?\n\í<Q;GfJ.X)\Ç\çŸñ¯>½@\'…xÁ ½ù÷<š\ç­.‡UÔ†[ŸÝ’¼dŠ\Ï<£1\ë\ØU«Ž#^™a’jƒ\Ë\àúc5\ÎtlU¨\ïA¯ \æœ“\ëš$\ãøü\é\Î@¨õ©¿Ò˜G\çL@isùóÞœ½G\Ó4\0o9Æ¦“\Ôdwª„õþU<o˜\È<‘ÓšM€©\'J•#\ß8ªþ½©Ñ“¼u\ç¥E\Ûs‡\àõ»\r*C$\Ø\ÏcŠ\â\ã8qž¹\ä\n\ëô_õdÀ0µ•M®mOsr\é\Î(˜\åBÃ¿Ò¦#zzóÖ¹®jCnG>õ£¾†³@(x\é\ëV£˜¦?•\rŽ\Å\ßÒ “¿§QHn3\Û’\Åf\ÊH¥tr\á‡˜ú(ÿ\0ñªºP.&ð|\Â\0üªI‰0\È\Ù\æV€xÀ\ïn§ñ£L<\\/B²“¯?•Z\ÕX÷\Èûù\×7}\Ä\áOE8®“S\è‹Ý˜gß­s\×\Ã}Ô§¨ZÚ‘Œö „to~ô\×NOcž3O·ÿ\0R}G?J–Hƒ¡#†ñ[¶cb$ÜŽ\ÝiGÏ‚ ‘œ\Ô\Â5t/Q\Ê{õ\éH\Æp9Á÷©¹VŒûôª\Æ7G#\\ð\Õd?^€;S.‘¸`zž=\é¦Iœð*\Är\0Ÿ\'<š©$¸Á\êzNI…÷¦Ð¯coM\Ú\ä†é‘[7¿a¼\Û#`‚^‡üþ?J\ä\"™¶‚»€¨5f\æ\Þ7¶qß¦+\'nŠO¹\é¿h¹¸L’´h9\Ùþgü+V\Î\Ë\ÌE3,\Ã$™	?žk€\Ó<A\0¹Xu²DÀb2\Ôg¯\×ÿ\0­]¾•d’BZ±®IV@FG\àz~}*“d»t5|›ˆ~d°=A%³ùÿ\0B*\äR—pÁj„3Km Š\ç”c…”\0??óþ5#x\Ýj‘,—õ§S(\íT!Ù¢Š(œ\ÎFOÒš_\0ú‘\Å£=1œŒ\â»\Ï8¥¨\Û«g\\\à\ã Ÿóô¯0ºGµ¹š\Î~£\î±=9ÿ\0\"½:þ\äE\ì\0$±ÀÇ¿\ÐWšø’\â+«À\è9–<güúšçªµ:\è\ìc\Ë7ð\ã¿óH’¶\0==)|±Õº\ã5žúø¬loqò>8\í\ê*794\Ãùb˜OÓµ7üþ½€§ž‚«gœõ\ÍL‡(} 	“”öÁ8¦?B*XÊ“ô”9\îO€)ºv\çšýjÜ±p;’*£‚\ã@qŽ*\æXi&þš¦§®z|v\Ò\Ü‹»op(*Å˜÷\\\Ý3 ùz\àqŠ\ì4\\l·`\â8\ï\Ï\çÞ±´\Ý9m g“†\0ñþ>\ç+¡\ÒcX\ã¸\È8ÿ\0?ZÂ£\ìkM\Z»0Ö•7qùTG¯½*Fsø\Ö£g\è(\èzU”\ÇNž´™H„\Z]™\É?½;\Ê\ç\ÛùT8MMŠ\Ð\ÊC\çppB\ÆX\ã·Aþ5\0ÿ\0C¿9ÿ\0W/\ÊI\ìÀ\ä~g¯µXÓ†&d=R5Cúÿ\0õ\é\×\ë.\åaGN”\â¬\r•¯\Ð~\ìöÝŸÖ¹»ƒó\Ïë¸Œþ&·o$–‰g\Ë\"œ‡þ¾\â°\å*L¸\åK+¢ž†e{R7²ôcò«q\Þ÷\"³#.pk@»¥A9<š\ÒFk\Ès\Ã\×iÁõõ¨e|\00Cw#ñ\ëWR|±ú\àqK-¨\Ù\È\ÆF*.‹\å¹IG<ŒgŠ{6Ù³\Ã/\"¬=“D›×Œú\æ«Fy#ð#¥T]È”lgŒú\çŒ\ÓÛ\Óª{˜°ür3\ÍV\ÄV†L”JÈ‡“\ëM3`Ž=E\ä¡\Ç4\ÉP§;\Ñ`¹f9C‘»;\Z\ì¼7\âË\ät\å]¬@÷÷®<`~F§ŽVB1A\ê;Rq\ì	÷=\ÂÆš-“\ÈF	 ñÞ®\Ù\ÌÀ\ä\çi\ÚóŸLýx¯=ð¯‹£;m5\Ãpª\í\ÐûzôP0W À=\È÷ý%t=¥¼z\Óý*¼gzt©\Î=*®!Ù¢Ž‡¥X`\ÔR‘ƒ\Ü\Í<¾Nk\Ä\Zª\é\ÖR1p$`B¨\ê[Ó­w7evpE]\Ø\È\×õx¡GyV3¶(\Ç;\Ü½ô^Ÿ‡Ò¸e2¹y>ñ9\Í>öö[—\Û!F\ÕöPu\äŸJä”®vB6DŸ1°\íQ¾\ÜúT\Ä\á2zžµVg\ë\Ç>õ%|¹bšý=\Ç\\S\Ó8,y=½©1¼~<“@c\0þ´ø\Î?J$@\ß\éM¨\ï\Î(bÿ\0\éJ$\Ôò)²G°\ã¶:Ð”e$8\ÏSÒ¡‘€z±\äJ|`c\É\êjÁ„$ \ã\æ\'½!\îV^d‹¿¡#Šé¢·Š8B¯@A8\0gš‡EÓ¥’mŒŒŒÿ\0Z\Ü\ZsI\ï\æf\0¨\à¨½«6Í£#z\ÜO\Æ<µ<üg\Ð{u<úzðum¾Hò’ÄüªÄšrG6xŒú‡<{ñV¡·1ŽFNõ”™i$=`vŽ•:O ”F*tˆÔ•bQ\Èõô§\0´À1L.GN¾µ%t$1/8\â£p\0Ï¥!•¿JŒ»`ž§5ZXnP¶EK\Ù\ÇbIŸÿ\0®§”Ž{\éU¹K¥“¢\äƒ\î?ú\ÜU\ç‹#ð©+\ÔÉ¿ý\ät#¦k¸O»\É\Çj\ê\ï-¾C\Üñ\\\Ì\Éû\Ãõ V°fSFI¼ôúö­«ü\ë ?ˆ6Ö²&O\Þ\Ù=\rm\è§÷a{y‚´›\Ò\ä\ÓZ–-vœ\çiŸþ®G\áD\ÄùþGP§w\çüóO¼­\æ2/B\Ù#Ò›/½\Ï.W#5…\ît=\nÚ\â\ÃUnX\ãµe	7\"œ‘Á«0’r:éš­k.\Ó\Ððy\é[\ÅY³•\ÙrhüÀ¶z\Õ	8žA\ÍhCÔ¡\äcz©u\Ç-Ž3Ž+Df\ÈRfÙž§½V z`\0ey\Èô¤\ì;‘úS°‰cpx<sO=I\èj\Ï\è*O¿žy\Ïl\Ñ\Ø{k¿ð7‹q2\é\×ò¯\ÄR\Çû§\Øúý?<\ädt\í\ÍM…H \äÚžŒ“\è¤\0ô\è*A\íÛ­s^\×ÿ\0¶ôA\æsq	&Ns\Ç~¼þFº@z\Ô\í¡D{QMP)q(†2O%Fq\ï^i\â;¦¹tü¬ŒR/p:·\ã]—ˆoZd\ÅAa€IÇ·\é\×üšó½j\én&Ž(\ÙDP¨QŽÿ\0\çúWEYt9\èÇ©˜Fó\è\ëH‘õ©P¨<nô\âý\Æ\0¯­`t¹8=€}j±Ãœv©%œ÷\ç“Ò£‚OQ\Ð\Ðsô·JT\ÇaH9\'žÂœx\ã½\0C)\ÎGn•c\çûT’ú…ŒzŽô`Ç¼P0j0›ž*[fó\È#š’Hø$t0\Ô,“ªõ\É\n·{þ±cÊŒ;UK$S1bq´ž˜©£,\Å\Æ[s`ZL¥\Ø\î4\Ø|«;q\ë\éô\Í_$ŒŽƒ9&¡µ¸Žh\ÕS‚€¤`¯Ö¦#\Í%„“\ë\\ò:#µ‡ óc\É\åqÀ5b\Ù÷ r\Ø’A\Ï$sõÁ?ˆ\ëÖ¢H°8ö¢=\Ñ\ÈFx?6	\Æ:Ï¦\0ô4„Ë¡\×#&¥Ls\éP¡ÿ\0\ëÔ¢\â>}½j3jœô¦b‹\Z\\®bü©¦<\Ã Uœõé‡¡§bngF€H7©8 ó\Ûÿ\0\ÕV£\ïr\ëÁ\'¸ÿ\09ýj7O¾1\Îr­M/(%C‚\Í\î?ú\Ýj\Z(©xvB\Ý\Éb¹›\è„n¤r\à\â\íúðk¥¹ur‚zó\Ïù\ìyô¬]I	¶\ã`\éW	j\æ\r\Ìd|\Ü\äf´ô<;•\ês’*•\ÊoLŽ\ã5k@“ºŒe†æ´Ÿ\ÂD>#t\Û}©\Ï¬g\'<\ç\×ô¬­Tµƒ§\ä\å\'òEu\"¯œd\Z\â|[~%x\à^~föÿ\0=YRMŽ¬¬`J\ì\î\ÎNKæ˜Ž2;\ßÖ&F\\ö ±ŽõÔŽ[š¾ð˜sZl\Î9V\çüý9¨bqŽ\"¤|\Ïsž1þ}hœ™BqéŠ‡=*Á%{\ã\"«¿\ê3M \àg¡\íR#þ<ñQ‡ÚcÛµ0/M\Z˜Q\×;[\â¢C€=ùûy¾Gø\\tô5þO=)\×|?\Ö?³|C\Z;\Ç\î˜§\ëø×µ\r¹ö\Æs_7\Ù\Ê\Ö÷	\"}\å!ük\è-2\éo4øf\ïPxúf¥\î‡¿•ÀEXñ9·²’G{‹†\à18U\à§\ç\\L’³žx\É\ÍnxŽeò-\â$Br£¸=?ˆü>•\Ïs\ëÚ´›»\"\Z\"D\r!õa\Ð\"rFq“UP°\Ç8úSœ\äzúT–#’\ä\Ðw¤\åÓ\î\Ðù\éL2p~þô\0ø\Æz\ÒÉ€Sž”‘ƒÀ\é\ëŠ$CÏ±\æ€#ši\ëÊž€\ïŸ\Æ{“@!Ø¹\çRy\ÛÁ8\æ£tù®*\àúz\ÐÀž){\Çv\Ími±š\Õ{\î‘\Î+\r>ÿ\0\ë\Ít~?h½<…_j™l\\w:Ù­¼À?’aÀa\ß\ë\íRÚ\à˜p\Ê{ð©‚d\Ó\ÃÊºŽE\àH6?ñ•`l‹Yüó\Å1\Î\ÇW?w$1\ÆpÁüG\'ðŽ´Ÿ7¨÷\íO\ê<ñŠÉ†\îAVV‚ ŽqÏ¸ô©Gj‚\ßnÀh*\0 g\éÏ¹\ëÇ¯•`Q°\â8)@ü\Í \è?\ÎiÂ‚†Ö“ô\çÿ\0&™\Øý8¤Y?\Ö\ÄôþTBø„)þŠS\Ë\Ü\Z€€‘\é\Æ9¬\Þ\å\"Ý½\Ç\Ìœ€N\ê=;r?:§yx\åùs€p~+IÑ¼®He\Ï·SÇ¶sTe|$ž\ã¥)#˜›(€\0gÃŽ£TŒ7!†r{S5(ü¬¯pG>•Z\Ê_³j¹ã‘œ\Ö\é]l\Î\ÛU¿Ž\Â\ÊI˜\áUN­y•\Í\Ó\\\Îó?.ä±­k\Ú3,PœBƒ\â>¿‡ø\ÖúÖ´\ãdc96\Å;{q\Å\'\éIN}j\É‘ßŽõn\ß\çG\ì@\ÈG¿§<\Õ\Û#Ä™ã©©`·\"<H:ò;\Õy$\"¬\ã|þ\È\Ïôª\Ó\ÌxÀ\Í8ƒxþt\Üÿ\0…8ž=3Þ™\ë\íU ‡G!C\è3Ò¦|0\èy¨Jr1\Ô\n‘–¢\É#\Øòk\Úü\rx.tpÄ•Ny\Æ8üÿ\0ú\Õ\âp‚ù\ä/|š\ì|\r\âE\Òu%µ¸‹Y\ÈR\Äð§×žÇR\×PLõýÿ\0SEH£#\å\Æ(¥p¹óU\åôš•\ÓM9ÌŽHúcô\0UYcò\È\'ô¦d‡yô©\åJ€ÿ\0:\n¶$Wþ!ßš\r5\Î)\ï\ß\éù\ÑaJrýx¥>4±\ä\çŠf\Â_\ß8Ç­O½W°\0z÷>Ô²lõ©FÑ»#!†2{Uy\à\090A\ç\ß=)˜ÃŽ2:ý(ñùt§?\ßL}h\Â\0Pú‘ÒªH˜\Ïlœb§ó0=sD\Ñl@\ç®86QŽ½ø\Å]²\Ôd\Óg†xO òñz§ú²qÁ\"‹’¼\Ð\n\çªi·\Ñ_Ú¤ð£‘\Ü}}Á©/#&1\ê¬?øf¼û\Ãz\ÛiW#q>CH¾²>•\è†X®m‘\á`\Ê\Ä0#Ea8´\îm	!ý‡~)©\×\ÐûT\ÞYÀ\ãŒSBu\íYš\è–\íùŽ\àH\099ã¿¯°\íÈ²ÿ\0®ª¸ «¼„0#?‘©ƒ\'o*NFx\ë\éôôúS¹+r\È\í\éAÿ\08¨ƒ~Ÿ¾‹—`\'ó¤4\Âø\ÏÒ£ó\n›…†¿Võ\ï\ïU\0b\ê¸b3’Go¯±\àq\ëR\Ë&7x\Ç\å—#\æc€}¿.‡ú~R?!e<·€?*Î4Ó€£\0u>½ª\ì\Ò`Ns\ëY——m™8f÷\Çÿ\0\\ÒŽ®Æš$cjEeºr§*wÿ\0õõ¬\Ã\ÔCŒ\Ó\ï/‚oƒ#žG\\z~5R97œ\çŸzê‚²8\æ\î\ÊR\îŽF±¦\Ô÷C÷\ç¿B=û\ÕÒ¶‰½N¤þT£©õ§¸ƒÒ¯B<¸N=\ê¤c\çéš¹p\á \ã\ÓJ–8‘D\êI\ê0*£œ¹\ì<Õ‡;-Tt$“U¶7q€zf„SÀ÷¦€{õ\ïN\à‘“\ßÓ¿w‚Ilý?úõBZQ\ÇÖ—·CKüóH¡\éüªhßŸ×š€v\ãš\ßð¶&¯x$‘Hµˆ‚\Í\Ów|¯ù÷‰5v8«³\Öü\'©Èž\Z²K\×\ß*\Æ>b¹;{~Cð¢¯i¶!,\×zž@ö¢°\çf¼¨ù\Ô \Ï4„cðô¦ü\Èy\í\Ôt§p\ã\Ôö5\Òd,@—Ï©\äS\î\0÷4[Œ8\ã¡\ä\Z.Ÿ$zh\èh2\àõŸ­;˜õ\Æg“\íNr§\n\Ç9ú\Ò\é´\Û~ö8ª²?_\\\Ô\âpN2¸\ê*¤€\äñ\ÎqŠhC\ÍNO\Ê=\0\ÅVõúsS!ý\ÉÏ¦(D=óN–MñäœƒÀ¨sòc¡¥“¢­D\â1\ÏSš‚^d>ŸÊ¦wÀÓµC\Üý{\Ó@<ö=«s@ñšk¬–{ryªõ\éþ‚{R\ÏøP\Õ÷´\îf³ºŠú’	ÐŒ‚?¯½JSž8\äšVµw¤É¾\ÚBžTòÖ»½#\ÆVW\Èå…¼½\Ã}\Óô?\ãX:}Q¬jw:,MDm€|\Ä)\Úr\Ç9Ÿ#ŸN½©ð\ËÀ<n¬‡£)\È?J{¢‰;H#nOnŸQ\Îzžj9K\æ[‘¾\áÓ‘J;ÔŽÓ¶*3µ3“\Ågfh¤†¿8÷¨ˆ\ë\Øz\ÓÌ«‘\ÏV\ëQ¶·O\ÞNŠO@[ýi(É‡:D3\äöU$“\×ó\ç­\\b\ÄA‚Cd~ÐœŸÆ±\"\×m\ã†[˜\äwû03 \Î8\\û\Ç\åXþ.ž\å<¨TEqžMh©·¡¢7õZ4ri po¯øW-ª\ê¬\ä…lŸQþz\Ö|·\ÌrweV<\ÕG“\Ì$““\êkZt\ìg*\è?\Ì\ëÜŸ^õ-³\á‡qU}zš.üñZ\Ø\Êä·£÷€ö b«õúÕ›”ùó\Óú\ÕaB(£?Ÿjÿ\0®“š¡G\×\Ðv©d“\'o^\æ C\Í;þZPRµ†\Êù~A\íþNiŽI=sN8\Éõ=\é„uþtÐ„\ÏJqýi R\Õn!@§sÏ¨¤\éJ$\02x\Òv\Z\'µ†K›˜\áwH\Ä\0þµ{„tÈ­`Ž×¨\\³üF¹/\è\Â\ß\íw+‰\äü#üMwÿ\0?Ò¸jURšŠ:U>X]@m¼(\âŠ?\ÏZ+¤\ç<›\Å~¶¸…\ï,qˆ¹*\çS[\Él\å$R¬=xü«Û¯SÌ²OFR+Ï®l¢¼B³&Nx#ŒVÕ½\ÆeE¹-NN\ÖF»<ô4³¿¶pz\Õ\ë\â\ÕÌ‘259\ã¨B\àuZ›§±§-‚\Ýò\äÇ¯Q\Ó4@>§\ëD¼@(ö\×2[6\àx\î­]V\×8\Ü0Þ‡\Ö_ðT\ç\ì4fò\Ð±¯\ÔU7sÞ™–\äd\Ð9\ë\Í+,@?•>N$<c\n.\Â\ÞôË“û\ãŽFz\Ð\0üûd\ÔcŒ\Ð9úg¸ª\Äô÷£M/\èhþ´X¡ðO8£Ö“ð\â‹j\Þþ\â\Ù\ÃA3¡‚­Š\Ñ(Õ\í’Aœ\ã¿\ç\ïX Sÿ\0Â‹\Õ\ë#\Ô\"ž9m®JAqÊ¨0vö#§bü¸Tž$\Ôß­Û\è8\ÇÓŠu¾\íG\Ãs@ldóÔ‚\0°ó\îLc[¯lc\îjl»¥\Éu;™¿\Ö\\J\ßV&«Y\È\Ë\ÏS\ÍGø÷©\ì­Zòòt\Æù(\ÉÀ¹öõ4ô@Z™\Ö\ÛJŽ5\Ød¸c#œ¨\0\Ø<ž3\ÔU…\ÆG>µgQ¹[›\É=\â;cW9*ƒ€@À\íL†EŒö õŠFCÊŽ\Øÿ\0\ëU£\n\ÈIŒdg \ëU\Üc?®xª@2§„®x*rG¯oð¨l~„\àþ‡Þ˜+„WHäŽµ@ð}óZV¥d€¯^0sþ~•J\â-Ž{J”2?CHh\çŽ\Ôs\Í;ˆ\Æ)\ÎIšg\é\Ü\Z|c~GC\ß=\é1ëƒœ\à\à\ÓzvdƒÒ™““\éÞ€t¥®)^zÓ1 ’N\0\é\ÞÀ€u÷®\Ï\Âþò\Â\ÞÞ¯\Ï÷£C\Û\Üû\Òxs\ÂþVÛ½A~~±\Ä{{Ÿð®´qô\ì=+‡_\ì\Ä\ì£F\Þô…~‡ò­O\Ç\Ï\ç\Ï\áYñ\×\"¶ü6˜O±?\ÈW-fki¥\âŠO\Çô¢½C\Ï\Ô\åe\æ6r1\\110H\ÇNõ\Þúöú\×z5…!\Åm‰\Ù36\í\Ä3\ïØƒ\\Ÿˆ,þ\Ïu¼#‚+«…øzU]n\Ë\íZ{`|\Ê2\0\í\\Q“L\íqº8Ç²–8Ä e¡\ã\ëU\Ü\àŸN¸­K	‰­\Ü\à\î\ÆnqVn4˜üð¯”IU‡c[§©—/c	þ;\Í$Ñ€\Ù^GqW¯´ß±\È6K¸‘‘ŒTDÈƒ¸\Çj»“n\åC\Øt=\éz~t \Í+ûv E¨]|‚=óQÜœ Œ\æ£Y8ô©_\çŒ¤p{Ð€„R“õ\ÚQžj„(ü\éÃµ7<Röþt\Äõþtÿ\0U\êW\0õ£&óšo4\\f–‰|¶\Z¬2É·\Ê\'d™]À+Žøžs\ÐTz­‹iÚÅ©\Î#o•ˆÁe\ÆT\ã=Á\ã=G5K§Ö·5!öý\×RR\ZhÇ‘sŒ–8û¬x\èWÿ\0=ú€bzÖž•þe{|c\'d~Lm´ý}¶	\Ô­fŽ£¾kWU\Ýeae§\Z0g•JC¸¢ªþf>¿^‚ŽþÔ£¯µ¿¯z\0TvŒ‚\èA©M×š1\"‚GF\ïø\Õn!@<zcÒ’j\ëÒž?Z==h{Na²A\É$dSî¶¾r¬2*3\å¸ÿ\0h€*À\É	\á”\î\\÷\ç=@¥\é\éC\à\Ò\È\'°Ÿ\ãù\Õh!¿­\'\Ü Ž£ž;S\ÎH¦\ãŸnù©\Â\\[J\0¸Œ«Œ|\é\Æ~´\Óm?»•H=3\Æ>µ=Ž\×yiªž?k\ÚøZ\Ûx2H\ì3\Ð\03Y\Êj&Ð¦\äbE¦\Ï)\Âc\ìA\Åtþ\Ò`±\Ä\ÓDòO\Ð^\é\ï\ïùVÝ…½¤a ‰Tcœ¿Z¾@\èö®J•\Û\ÑT\è(\êÆ‡c\Ô`š	\çÚžq\é\Î)ž¾•\Æ\î\Í\Ð‘õ®›\Ã\Ñ\â2\Þ\Øú÷®gp;“\é]~—f÷«|:¼®aˆzX\ÒÞŠ3Ez\'§*\Õ\Ä\ß\ÈJ\çþº\Z(­±;#7\Ä\ÇÁ\Ð}*køõ—\éEÁ\Ôô\Çmÿ\0!\'ÿ\0®¿û5t7\ßz\Ó\êh¢º:™-Œ\Ícýbý*\Ïú±ô¢Š¤DŠ\Ò†Š*ˆUˆÿ\0ÕŸ­P€†—ÖŠ*„©\Ã\îš( AÞ”t¢Š\0^ß…\'ñ\ÑEõ»cÿ\0\"¦©ÿ\0]cþtQ@ŒEû\Ë[^.ÿ\0‘’÷Sÿ\0@Z( 1N=MP¥ \èh¢’ŠO\âQ@\É\áûñÿ\0¼*\ëÿ\0\ÈIÿ\0\ÝÒŠ*zV\ãø¾µø\ÑE@)¯ÞŠ(`tz?ú˜þ•¿EúQEq\Ö;¨\Zýóô©\ÇZ(®N§P\ãý)Ÿ\Âh¢ Hýrý­všgüƒÒŠ+£\r¹ÍˆØ·EWq\Èÿ\Ù','2025-02-27 04:33:36','female'),('80ba0d30-e019-11ef-a1d1-005056c00001','80b844be-e019-11ef-a1d1-005056c00001','Mihret','Edini','nurse','medical','mahider@gmail.com','0900130082','Part-time','2024-12-31',0,2000.00,'night','650e8400-e29b-41d4-a716-446655440003','Addis Ababa','0900130082',_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0\0ÿ\á\0.Exif\0\0MM\0*\0\0\0\0@\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0ÿ\Û\0C\0\n	\n		\n$ &%# #\"(-90(*6+\"#2D26;=@@@&0FKE>J9?@=ÿ\Û\0C\r=)#)==================================================ÿÀ\0\Ó\Ú\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rðbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0\Í$Ñ“\Å\æŠò\Îñ‡\ë@¥\"St\ÍH	õ¨\ã©EH\n	¥É¤\ê@.M.M6Š\0vM.M%-\04¹4”¸¤“FM&8¥\ï@M4b’˜M5\ät\çñ\Å0\Í\ë\Å;É·úš`”g\0þ•˜‡«d^Ô†Q\ëùS\å–|\ÒzŠ†Iˆ ŽÆ£ž¼\â«\Í.	 Ð•\Âö.}¤õ\Ç×”\ÈG<b«€v?Â©I~rQ#ù\Õ(6K•1r žI=i\É~©×¥cù§\Ê.äœm^*³\ÞE\ZC~\è\â¯\ÙÜžs§*ÿ\02·4ñr\ØùA#¹ô®Gû[c‚2\ç¾\ê±¸rC>=ˆ¤\é>\ÃS]Î›\Î$ó\ÓÖ—\Ì9\ëùV,:ª\È‰ó\Î*Ð™ß”*ø8\íY¸Xµ#AÜž•V\äô\ç½ š@@8É‰\0€{’8¤•‚\å´?  “ƒLÀ\0ô4\â}\r+PO\ìšbv§\Ò\0É£&ŠmšLšm:€ši&M bd\ÒfƒE\04h Süš2i( É¦\ä\Ò\ÑLÉ£&’Š\02hÉ¤¢€ša&ži†€\"$Ó²i1ÖL\îi){\Ðh†’@$u(¨ÓµH)\0ú)>\nZ@%-P\Ò\Ò\np4\0„pi\âx\ÅA$¾X\çR@\ÉI\ã5\Ê}*”Ú‹r}¬\éo¥|ñ_›¥i6C’F±¸\\ü\Íøf«\Éssóøô¬9oT\ä1R\Þ\Ü\ÕCt½}Mj©\æt©|ƒ#r‘\ê)þr¾0\Ãð®a.QqP=EIú6\îR}\éû{C£{ƒ;¹\ã·™-\ç\ï	\'\ä?Zªu&(C’{ŠËšó\0óœž”\ãJ\ÏR\\ï±«5\ãHr¤„4Ô—?ÅÞ²E\Ó?N\é\Â\çž8=l¢‘l\Õó@\'œQJKŸ@{\n«ö™M)‘\ÜrF1žM0%&I\0Œ(\ÆI\Æ*W¡g¡\âš\ä¸\È\Èt¨¶78-ÏµP\ä8z\Z»\r\ãGónb:z\ÖY‡C¨ 	#\Èß‘õ¤\âž\à¤\Ö\ÇK®\èü7¹\íW!½Ž\àœ9\ã \ë\\šI”Áb~ù©á•£#Aõ\Ídè§±¤j>§`%`:†#Ò§IAÁÇ¨®^+ùrˆ,8\ïøÖ­½\Ò\È\0c´Žþ•„©´h¦™®Œ\rø\Z’³c¼1’²|\Ã\ÔU¨®øV*\ÍÅš&‹›\é@\"Š‘…:Š)\0SqN¦\Ð\ZZ)´\0P( S\ê(¢€\n(¦\ÐES(¢Œ\Ð\Za§ši \Í:ŒS°)€\ÞôQE!Œ PiE1%<S@§R©\ÔÁKH\0Sé‚ž(`-¢@	ŠBBu¥\'šÏ¾¹\Ùò!Ëž€vªJ\ânÄ·©?7OJÇ¹º39\Ü[‘x\ÏÖ\ä³\åÜ’\Ù\ê{UK™#*¤³žÃµm®†mšR‚Œ`(¬û‹\à\0sŽý\0¥˜\ä…\ÜYðŽ)n3\Ëz1])XÉ»•œŒžüõ¦Xt^=MX“@\ï\ëU_\ïg‰«H–\Ä3gƒÂ„v$\ã9¦oL«Ÿ­4»pN=08§a\\™%`üô\ïP‘½\Ëtj\Ì0‰\\\ä\çŒ\Ðbo0§¡ü\ér²+rq× §\0A\É<\ç¿©Ž#Ï¨\êj¹”ƒÀâ˜‹õÂ‚ß…N0AÊŒöªQËž\ìl\Z±sŸ3¾x\Å–ãŒ¸\èÞœcT\'$~\'sF0<À}³ŒÔ…\Õñ’}9\Å;\n\ãq¹Ç˜G¿\\\Ó\r©9!þ”÷@ù\n9>¼Ur`€cE‡q\ÖA\È\0÷\â˜7¡úv«\Ø$\í\Å9d$\èô\â	\È8&sß¥\\ŠFòNW\Ðöª Bø\0\í>†¤18\ë×¨©qOq§\ØÔ†ð ºt9\æ­\ÄQÀ?u»kH–^TŽG¥H’‘Ê’¸\ê\"°•>Æ±Ÿsz;§Œ€\ãƒÑ‡CWbH2+D,òž¼d\ZÒŠU0Ÿ}¿\áXJ\Ö2FŽ(¨a˜8÷\î\rMÖ²z\Z¦Ó66M\"€”Q@ C¨¢Š`\Úu\0\Ú(¢€ŠZC@i¦œi¦˜	N\æ›K\Í\07½ôP1¦KJ( ©*1RT€‚–Šp ”QJ:P\Æ”¸\é\Õk‰V4&šWb^Ü˜`Œž\0¬\ÈÁ/\æHN	\È¿ýj	39g(\éžsP\Ít±’rF\0¼c\Ñ6-\Õ\ÃÀ#\0ö\íY2J\ÓHU~U\éIy& ¡9\ì)À,q³nGõ®˜Á#\î1#T±ÀI\êj¬·\r’#‰¢IL¼\à*	tóÖ®\Ä\Üd‡\å\Ë>\æ÷\íP”\'—8ô\ÍY¶\0\ät&£1\äÜž\ç5B+ñü4 g©ü¼\ä3@\0s\Éô\Å\0Z¶‹ |ÃŽrz\Ó\ä\ä³Ojµd\"òK¿\Û\"«\Ý:\Ù#ŽÞµK\èg\ÈwœÇ©¨° òqýjm/9<œv¤’\Ýb9ù»(\æ¨D9QŽ9÷§‹ƒ\Æ@8õ¤Ø€ü\Ù-\è;R‚¨zs\í\Å±b9œùcŸÂ­Ç·vJ¿J\ÏûF:\0¨ \Þ8)üI\Í1\Z¿»9Á\ç\×Ò£’ÜžO ÷¬¡s!û\ÎpO®*x\ïU;³fâ–£\Ð|¶\Ìú•	%8\èj\Üwñ¿z{Ä’ƒ\é‘@\Ò\\\à?>†¥I¢œCL’Ù†pp8¨\ÒB¿)\Ï^‡µ\0fÑ‡cÞ¦wh\Îøÿ\0Y °Á\'#µY·¹Pp\Ã+ÐŒÔ´ReÁ,o‚\0ê§š±­<·=9‘Y\ÒGÂ¶Pò	©bŸa\Ç‚k7“5\í\ï›xV\'w|\ÖÅ½\ÊÊƒŸ˜u\Î\È\Ü÷Vªxn$‰Á$q¸w¬\'Næ‘Ž‹4U;kÁ!Á?[ŠÁÅ£d\î-R\Z@\'jQF)EM§Sh\0¢Š)€Si\Ô\Ú\0))i(\r6œi´À)i)\Ü\Ð}\è¥\ïEN’œ(\áRSµ>¤EZ(¦d“\íü\è\0‘À¬\ë‡’9?Zµq ŒOMb\Ý\\oÀ\ÎO=«Zq¹•‡\Ü\\„Œ\ì¦3\éYg\'\æ9$ð=ÿ\0ú\Ôù&W*Œ\Î\ÚznŒùwqŠ\ì„lsÉ\ã\Ë@\ÌN\âyZ@d\ÎXm\ÏÖ¬0grN1œ’z\nO*\"r\í\Ç^8\Å^„‘\í\Z±©=©\Â`±\Ï \Ñ$À@¿V<Uv-\ÎzhB\Ípˆz:bª\Ét™\Î\Þµ+’z&;z\Ó|¡\Ý3ŸS@€\\©=	ö\éR‚#vfÔ¶Qó`ãŠ¿o8\È7Px\Å&\ìRW$¶Þ g)\ã¾)$¶ûD\äö=;\Õ\Ãl˜\ÄmÛ\ëI´ƒY†xÁ¨\æ[–¢ö(Fž\\ n\Ï<T?c`Ný\ÌORJ\è!\Óy2)\0þ5`Y¢“µ7m`TûDW³{œœ–ù8HAÔ‘É¨M´œ\à=k¬û¸8Œ\ç»K’©–`OrW´H=›g\",¥ ³g\0S~\ÄÀsÁ®©ô\æ\0ðß$ºc\n¡\ë\ÈS\çDû&rR[\ì#9\éœzÓ’Í¶y›&q‘\ÅnM§\ç\å\Ù\ïŒ\ÕYl\ÛT9±\â©I	Á™\áÿ\0ÄŠP\í\à÷õ§In\è\n\í\0:¯$eSœr=\ÈjÆŒW(\n\Ø\Ïbi“Z³\Ñò{ƒY\é)ŒÃŠ·oz\Ø=(µ‚\ä(\í!¿\éS¢,ƒ+\ÃNõ;ùwqÀsÀ5_cBpG õ\é1¢õ½¿\ÚaÙ»\çAžx\ÅB\âKrUùZb;!¦w(\äô\áq\æ¯\È=jM\r2\Ä2\à`\î\ÚzJµ›>÷>ýsTPÀ<>7ÁÁ\ëõ©j\ãF¬sœq…\'‚;VÍµ\ÂÈ€óW;À\â6\ÄúUÈ¥hH’;5s\Î°‘\Ð\ÑP[M\æ \ç*z\çj\Æ\ËP R\Z¥ \nm:›LAIŠZ)\0Si\Ô\Ú`”´PM4Ó%\Í7ÖŠ\0gz)q\Í\0\Úp))\â\êh§R\áKH)Ç\ï@\r\'<Æ‡\"1KŒU;Û€Ÿ ?3töªŠ»°›±Búä»•­c\Ý\\–|`pO{)Ž\äUA?{–?¥v\Â)#žR»\Ê\ÂÄ‘“ŽM9.¿1S ½W¸˜9ò\Ð\r«\×Þ¥óDP©\à?lö­+\à\r\Ã\ì\æ©\Ë3\Í&G`)	–\æPœžI5n+U;±Œe­1LnPñ\ÐZ<µ„eÀgnvƒŸÎ¦w\ÇÍ€	\à\Ç\åTä¡\Âõ=I¦K#¹G`)\'9?žx9\ÏV\Æj\äQd‚ª\Í\îy¤Ý†•Å†8\0ý{VŒVe\Ï\Þ\ã<*k+l\Å>Õ¯\rª¿&°•CxS¹Z\Ú\È\'RO¥h\Ãj„«\ë\ÜU˜­U\0\åãš´–Àr¤\ãÞ¹\å+*	\Ò\Ù@”\Ù-°2˜\ÏL\n¾\ç?ÖšñÁ\Û“*È¢‘Sp:TR§ª‘ZA  Û©\íŸZ¥\"leùLp0Gza‹=wö­9mx\Ü\0\È3Ö H\Ý\ÇøŠ|\Âq(Kl%\ê?•Sš\Èò\0\çù\ÖÐŒyú\äT2¦Oó¦¦\Ñ.	œ\ìºqþ\êóß­S›Jc‘Û¨\âºw\ÔÂ ’5~\0ú\æ­Td:h\ãn4\ã\Î\äu\Íg½»Dr2Ò»i­£\êW­f_Y«ôfµK˜ÊŒ(\æt\0c§\ëWc‘fLÿ\0Öª\ÒÛH\Î\ÓÖ›’P}+K\ÜÉ«L[1$}:U\åE\Æð\\j¹or¤leO\\\ÔWQ’(Ã‚?\ÏZ\"i\Â7~‡Ö¬\ä¯qY\Ú7$g\ÏÒ´\í\æó‘s\Ôw¤\Ð\Ñ<o‚9^µz;•—\Ç5œ#ƒŸ¯½X(y‘\äÖ¡«”™­gpÑ‘ƒœqÖµ\ã›8\È\àúW7\Ø\Ãzñ[V2‰S\ät®j‘¶¦°w/eN6žôò* €z0ô§‚ysX\ZŽ¢Þ—\0”\Úu6€\n(¢˜†\ÑE\0†›N4”\0”´”´ozZJZ\01N”¢‡\nx¦OQK\Ð{\Ð*)$\ÆpJ¸l2\æ\ã\Ë\ïX÷¯\å’X\å\È\ìzT\×W\n\\¶~\ïNõ,†g\É9ç¯­uRŒ\ØÀåºŠeÔ‹oKfFÚ¤r±¡,\Ü/\ëY72y¿0û\Äô®“\Ñ\ÈË–\ãý\ê@ZL–\Æ\äž\ÕHÏ´\0ŽÆ¬9P\08Ú¿­\0OoŒ‚Wjö3\î}ª\Ä\Ò	\Â7\Z«l\æl\àS\ëR;¨8{°\ì)ˆ‚]±¡fÝ¸Ž;\ãÿ\0¯T\È=ó–\èj±s·y\\\îU\äŸSNµ…¥;ÛœóI»*\â\ÚÚ´„rzŸJÞµ°c\îŽÞµ\r­¶\Ìt\Ëv«¡³·=ú\Ö&tÓ¦†CfF\0\'¨\Åi\Åj¨ž´B˜\Ëc\ØSŒžß­s¶\ÙÒ’C£F=\êT§ZTL˜þµ(O–\Èþ‚“gJ±²“a W*˜ñ\×ð§Æœ3øÔ¥?\Î)S¥9ýj-˜<U¼Jc¦ú\ÔJHI\ç¢x@Á\Å_)Q¼`ñŽ(¸rEÁ f«y+œ\ã\ëZž__Ê£0\ã\èiŠ\Æ[ÛŽA\Æ­SšØ€q\Èô­y!;úUi###§bZ9‹\ë.	ß¥dÈG§\"ºÛˆ\È\ÉÁ#¸\ëXw°©%r9\Åt\ÂW9ªC©ŸðÀ\0OQV_pboÒ©>c|Ž5n\ÞU”ln‡‚=+S\ÜXùÁ7CU¡”\Æù\íœZN<°\Ñ\È2¤\ã\éY\ÒG‰÷÷ \r8\ä cR\Ã!GŒõ“k)§\â+O>r\ïJVp Œ‚GQ\ïW,\î<·¼Vt2¬•<\ã”C1«p\ë\È#½g(\Ýfu°\È$\â¦ŸqY\ZuÉ™\0\è\Ë\ëÞµ\ÏÖ¸\å3x»¢lP(?ZN\Õ…6EHih AM§Q@\Æ\ZJSŠJ`%-%;Š\0ozZLsJ)\0KE-\0(\Í<SE§ù\æ€O8\íT/e\çbžOS\éVneò£ }\ìVÔ­*s\æ7_jÚœnÈ”¬Cs*¹Ú¤^	õª\ê\0z\Ò\Ç\'9ú\Ó.b°y\ï]qVV9Û¾¥+™¼\Éö/AÖ©ƒû\â\Äw\Æ=)¹\ÆI<“š–nqÓŸ­Y$\É# -À-\íQùu %V\"’Y\ä\ã<Ô¹@9\å†\0©·«\0ƒÀ\Ïù\ë@9\Üx,\Ç5#×¾	§Dzó×Ú„Kµ\È\0wü\ëB\Î‘Œ÷8\ÅR„y³öEl[E\æ:\áQ\ÍgQ›S‰¥cn\î\Çµ\ã@üªµªa\0ÿ\0Ö« 1€¥r7vu\ÅXš uöñV#\ÓÖ£‹•¥XAQr‡ ü\êdN:Æ˜1þ5*`ý) bž\Ã\ëF?Ï­<õ\éùPPöi\Ù	Ç·\âh\Ç\Óð©qŽ\Ãò\Í7ƒœqJÁq˜£·J~\ÏÆÖ‘œ\Z\ÅNA\ÅDh™\íQ:ûw«$c8æ™ŽiRDª\Ò «n¿?w5^aÁ¡¥4A>£µb\Þ[+\ç‘\Ç¸\îS­S¸@ù8«‹h‰+œ…\Ì[\ã5SýT€\ç¾3[º¸ œwâ±¥)ôæº¢\îŽI«2y\0‘2:9\æªIP¯F^†œ%1€rvž=©\Ò|ø9\0\ÕgÉ”!\Ç\\óZsc½~µ^d±\ë\íQB\æ9\0>¼\ZcZC\å\È&Sz\ã½:]¹Ž˜È¨\á‘dŒ\ÆzõBsºŽEK¡cu°Ž\Ì:{\×Gm2\Ë\áÖ¸\ØØ¤€gt­‹\Æ“ò“ƒXT‡TitHùÇ¯zw5d=O# \åG¨®V\ê(\éM¤0¢Š)ˆ)´\ê(†’”\ÒP0¥¤4´X¢›\ëN¤ÒŠJQ@ œ‘@\æª]\\\È“\ÅTUÝ„ÝŠ—W*Žx^ž\æ²F‘\Ë’\Ç<Ô³8’C\ÉÁ<\æ¡\âGùF@\é\ï]ŠFw$\0ŽF*†§\"¤qÆ¸,NZ­\ÊF0xp\í#–õ8ô­Q‰\0$ñ\ÎjI—\0PynOµ$h@-\ïL˜\ï \Ïjb\ny\ÒdýÁ\ØU\Ìù#h½n	þ\èÿ\0\Zd#•Žœ“\éQ\Ë&\ÚA\àZA\Ðqž\àpK\Â\ßZ©r=MYy\0.sÀ›\ZF…š@\0Ì’r}« ±„$`s\êO­g\é–\Ø@\ì\æ\îkz\Þ.œ~U\ËR]ºq\êZ†3€1\ÇZ´3Ç¿¥68ø:X3t‡F*tÏ°\0S1Œw©Pô\0\ä\Î:õ©Gÿ\09¤AÇ¿¯LSÀ\Ç™\ÅPÖ©4€‘œw£9\ÏZwƒ§JQŒbOÆ—Ö™\"ñŠCŽÔžžÔ´\0\Ò*:\Ô\ïQ>z\Ð2#M8\çž)\ç4\Ã\×ð\Å+¾:w\íPK\é\ÛÞ¬\É\Þ¸ªò\ë@™N`¤zU	‚ŸBkB@sU¤N\rZ%˜\×Q\ï\r¨°\æMŽGN\âºK”ý\rd\ß[ðHŽG¬´0œo©†H\ÊÃƒÁ \0Œ\ä¨ü\Å%\Ð\Øz\ÔH\à\ã=ns²Áéž Œz­\"\Õ$raÊžý)Hÿ\0>”¶\r\É-¤<q\Êõ«3a6Ì½GZÏ‰ü§ö\'š\ÐM²!C×¨¡‚!Àu<Aô«ò0M\ÙÁš©nv;D{ôö©O-öž™À5-h3¨\Óo2€1\Ï\Z\Ô3\\­«²rC\Èô®’\Öe’\Å\\•#forlò>½iÆ›\éN¬M\ÑE\0Si\Ô\ÓLBRR\ÒP0¥¤¥æ˜†÷¥ž´ê‘‡¥/ù\n	\Å0	dFOµb\\Ü\ä“\ÔUJç ô\ä\ÖI%\É-ŒÕ½8õfRdo \éÝ¹>\Õ$n25X#I&{{T\ÎU0=5Ó±ž\å{‰7†c\Â\ã³J6ü•=ªý\éÀ\n:ô5_œ\0¼c“T‰±€\ÜF3À\0\Û$„Àäš’YXF}[LŠ}ˆ\Ê\Ç&˜‰²FUN\Æ	^R¯ 0‹À\ÍM6L‡°AP QóŸ¯z@H00{žh\éÖ»\È\'\×J\Ö&’M\Ø\É\è=«¨\Óm\Ô Ý‚qÚ³›²4§²åºŽšÖŒ`UXSŽ\\«‘»³¶*È·MX@}ª(P ©\Ðã ¨±Bn½M\ZN´G\ÎqR€;u¦\r€OòiÜŠQšx\Æ)\ØW\">Çš:u§\àwíƒ­>P¹3Ò”g¿JP\'\ÔSý3M!23J)ý(\ÓBõ4\Â?ú\Õ!ú\Óp\Îh°È³‘\È\æ£\Ç_z˜Šø¥aÜŒŒæ ’<Õ‡\Î2¼ž\Ô\ÓÈ¦™œ\éœ\ÕYÖ› j¬¨3\Å4I“s 9k6T\àý+vT¾µ—unA>‡‘V™-\Õ\ä!ò¸\êr+\'”8=Ž\rt·\Ðü…×ªóXwñ!×¡­\ã+£–jÌ®\àû\Ë\È÷§£\ï@{ãšƒ;§#€x\éV\Ì\É0±\í\éV\íœ\àg‡CÏ½S$8þU4%·\ä\É\ÏzO7\Ë0`0CR\È	O\ÏÞ’Dó!˜¦\Û\È6\Øö¤Æ‹\ÖÒ‘\"œœ”\ÖÝ¬o \Éù3Çµsñt÷Ö­”¾`¹\ã±¨´¹pz!\Ô0\èy§\Õ[92»U\è*\Ýqµfn„4\ÓN¦šC\nm:›@‚’”\Òb˜Ä§~t\Úw\0ÁÖM\ïN¤1jeŒ\ç TŽp\re_\ÌO\np£ƒ\ïWvKv)\\\Êdr3óU.	8\0ü\ê\Ç2“Áf«F\âI\ÆþFk®(Á²kh›\Ë\àžy§KÃŒŽ9\ÍH\n¸=¹â ˜Ž\íŽ0*„P˜4‡<–\'©¨\îul\á–<\ãü÷§LY\Ý{œ\àUK\ç;\Ìyû~µh†W.\\€{\n»n\ï$\à*\íB¾@:u«`\ì\äcXñ\ïM‰Äœž§94\à2@=\Í2€÷#ø\Ç\Î ¤\ÊH¹l	`Œñ]EŒEcÚ°t\Ø|\ÉxQú\×OmŽž•\ÏQ\ßDt\ÓVWe´\0\ëV­þ¯òª«\É\0V•²\0=«“,Æ€R‚$Š£s{_/˜£±\ç¥g¾«|C(÷À¦ \Ø9£¡IA\àu©‹\Ø\äûs\\\á\Ö\âŒ}\ì\0>ñ8 ÿ\0„\Â\Úˆ\Î\âÃ“ž•j›d:‰x”ð;Wÿ\0	ŒXX\î#ž*S\â\Å(2\í\Ç?*ô«öljŽ¿Ž\"‡EpT‘\È\í\\t^(>×œ©\ìÀp*ü:ûFþL\î	<«¨\ê)84R¨™¿\å\à\0©\Å	\ÅUµ¾I\0!²z\àsš½Y1\Û4¹J½Èœc›=\Í\\(\'<œqQ\0¤‚y\Ç<Qa&@S\ÛÖƒ\ìjI0y3\ÐSI\0zRh«•\Üü\ê7ô©ˆ\'½A$ŠˆY¸\0õ4¹Gq˜\àb˜~£\ßFûZ‚\×\å\Î\æ=\0¬k¯E(ŠZC\Ø\Z¥\Èu:\Ç#5^Lr+šÿ\0„–\\“#|\Äp€g\èüU17ø\ÍW³d{Dj\Ì1Ue\Óð¨¿¶­.+2ƒ\èE@uI J„út£•¡ó§ÔŠh•ò§¸Á¬\Û|\Æ\é\×oJè‹¬™ ZÊ½M’gµPÑ™\ÏS™õ\èsI\Ôv«‘›#£Uqœ‘\ëÒ·9\Ù(Ã¦;\ÔðžÜ§\ÜUh‰Ï¸5j41\ÌøXw ¼ góŠ¬~I7„æ§‹£8\ÆEDüd„ñ\íIŽ«\ÜU«Z9[•›(Aô=*\Ðr’n=	\Íg%tR\Ð\ê!oIõŠ\Ò8>µƒbÀ \\\àõ³	\Ìc\é\\“V7‹%¦Ó»SMdXQE4\ÐIJi)€”´†–˜†ÿ\0§S1\Í:È®dò\â>§X’\æI¶\Ãqô­\é\Ì#†k,“36>fùŸÖ·¦´3“+\ÝH¾`TûƒŽôø‘2~ót¨\"FšA“\íVþ\áÁQ…\×M¬ŒwbKˆÀÁ\Ï>\ÕVc\æ§SŒâ¤–LŽx\Ür¦”	óÀ&…\Üo±S\ÈÊœzË—–$òO$šÓ¸˜ˆ\ÑS\î†\ÞA\ïŠÊ›©?\Þ9\â©\Ç[G¼’:\ãÞ§›qŒF;\n‚`F \â¦NgRA\à\ä\Õq@ƒ¤·ùÜŸ|S¤~]½h±\ÇÖ¢[Í½6<c\ë\ÍnB\çÖ³¬£Žµ¨…S“Ûš\æn\ìêŽˆ¹\0gÓ“š£¨\ë\Ë1A¸çŒƒŒ\Ömö¦\Ò?“,IÁ\ÅY²\Ð&º\n\Ò9\0ö8ªPKVK›z\"{›—ß¸*ƒÂ“ÖžtEþerU®\ÇN\Ñm,€Ê†p>ñæ´‘!La@ª\ç]©·¹\æW\Zf§ÿ\0-˜c¿5\n[\ËjC4@8\ät¯W)˜\Ê)¸ª·ZuµÀý\äJß…R¨K¤y\Âo€W¸\ÅC$mÞ„ð{Wu&ƒi“„\àð9\éT¦\Ðƒ\Û=\èöˆ^Íœ´DHv¶Fz0\íWb—a\\Ÿ”\á±\Æ?úÆ®ÿ\0a\Ë€®\ÖQÁŸ&\Ü0ä­>tÁA£_C¹)21?/Cšè„¦\'?\Ý\'#=«”±cÇ‚+ty³N„œ\"Œ}j4Š±¹mrH\0¨\äw¤w\è:\Õhœ‚9#ŠŸ\æ ñÛ’j¹iYH\ç$z \Ó<\Îzb–\à\àz§4¸C\Îx\ÅCe’\éQ\Ü3Œó\\Þµ«6Ã³\îžôš¬\Ò\ì2r8 w¬‹¤{\ÜR»GLõ5¬Ý™M½‘•sx\ÓMó1\'9\'=*p‰ó÷\'°ÿ\0\Z¹“\"I—÷\éSÇ¢9r\í\ÆNqZó¤a\ì\Û1\äv?(S“\êjg\0“\Øfº\È|<\ÎqZ6þ¶@\ËJ=ª+\Ù30\Ì_\00QÔŽi\ßg¹„ýGZôt\Òm¢ÿ\0–j\nI,\â#\îøTûQûyüWSÃ€Û€÷«Oz²¦\×\ë\Ô\Z\é\æ\Ó-\äB6ƒ\êMs·ú8‡,…€\êZ#$É”\\L›\Ô\ã#\îö¬ù2}*ð‘Žø\\ôªŽ9ü+Td\ÄC‚w\â´\0Y€]NEgE‡\ÊÖ®Ÿ‰#\Úp20½1\Ã(G\0ýÞ•4¡s\ïŸ­V–6\É\ìF*P\ä 2@\àúŠ\0{Ç„3ÁÁ©ú°G=3IÁŒŽ0\Ã£G`G¦x\rj\Ù8\Ç^WŸ¥n\Ø\ÊdCž¹®n\É\×\í%I\áºVÅŒ‚)\ÌGð®jˆ\Ö\Ø\ê)\ÔÁ\ÐR\×;6\nL\Ò\ÓM \nJZCL¥\â›KŠ\0?¥#¸ßµ3Q\Êv\rÇ¨\â®Ë¸›™û«Ïµf\Í\'\03\Æ:\Ô\Ò\Ì]¦l\ã=E@€It£þY§\'Þº\à¬a&On\Z‘\Æ+œ€\0ûÜ’{Ð¿sžwƒµE#\ã{vŠÑ‘­Ó—•@\ì01N˜þ\ì.s\Æj,g\ç’iÒ¹\'ð¥±I\\¥6NA=ª›œ\Ø\Í[¹Œgžj\0ˆnv¹*™Á gH†\é¾h”z\åM\"c\Ï\Ç4\Û4/<…z`‘ý)a\'{©<©Áª\\#c«zU­*\ä{\Õ;ƒû\Ð VÎ‹\àž€TM\Ù\ZSWfÍ¼x#\ØT:•\Ód[Á\ì>fª\Öñ\Z=©l,L’\ß%˜\çžÕ‚ijÎ†›\Ñ¢Œ‰$\É=I#­t\èV$\0`bªGˆ\Óò¦ùŒMK“e\Æ	R@{þ50\ëY\ÞpŒv÷¨N¦¹Ú€±ôÔ—±´\èqJ\ï \Î\Ó\í\Åb\Çuq!Â€¹õ\æ¦qt#\Ý\ç»U$\Ù\r–$”‚Z\åÉ¬{™¥G?¿lŸz®.\îA8u|v<fŽF\È\Ûy)RQŠË‹Q.v¸\Ú\ÝÁ«1Ê¯\Ðþt¬\Ð\ÓL¼\n’Eh\ÛH>¹ý+$Á®\Å!©m¢¬™­°9Ÿ”\äU\à\å\Ó³\"”\àU\è¤\0qM2\Zd\'\0Ž¦².$\ê+Jñ\Æ=+œ½¸!\Î\r±½„Ü¼\äsžMFLy\È\0U3sÁõ§Å—Á$óZjM‘i@$asV£…I\ÕCp|sM³I-BŒð\ÎqšV¸\\\Ö\ëŽ2i\Û1Y\Èn\Üq1õ\È\\b¡¸–\æ?ùn\Ù÷Á¦\à%#MÜŒŒð;\Ô/*y¬ƒ©\\\0\íp;Ž)WPG\ï†ô<TÙ•Ìº–¤,	#¥Sº\Ð\äf¤3]\ä\ê)\ÇBefŽWS„Es¸s“Š¡\×#€A\â·5d&a\ï\ÅaI‘‘\é\ÅuE\ÝrVdq—<q“ŠÒ±>T\Íôn~•—\È ûÖ‹¹\ÌRñ’0qTJ,^B7Éƒ\ÐqŠ\Ü\É\ÆÓƒô©\ãq&T’Y½jŽ0T\Ð\ç\î5\Ã\r>\à—µWôN*KÆ§¸5,h¹Œ\Äù\äœVÌŽ3\ê;`šÁ \çÓŠØ°“Í³T<\ç\å&±¨ºšE2o[±5f\é³ü†6\ê¼V‡¥r5fo†–Š‘¤¥4”\0”\êCK\Å0!\Ëdß“U\ï\äò\á<óŒ©«’I\ï\Ådê³”r?\Z\Ò\n\ìM\Ùa\Û#ü\Ø\ÍK\ZŒV\ãÒˆ\"\Ê\r\Äd\ÄS\Æ\ç“h\Æ3ƒ]‘9\Øøvp=NO¶*µ\Ñg„¨ nlqRM/—¼\ã¨\'\È\0ÿ\0¨ö\æ†$BGs\Û \àÓ¤QÏµWp\Ât\Ü1\ÆAb]ÀS\ÅLº¥;“óLcL¾B	éšµq’÷\æªA#ž•qØ‡¹rÌ´v\ì0a\Ç\"™gq×€I©m\ãd¶2dòJl93\àUt\'©ZS›’;t\Úb€^•\ÌÄže\Ö{]]¨\Ä(½cWd¨÷/E˜@#ßšØ·EéŠ¥g\ã¾*ä„x¥s¶t¤òO¥Fó,HOµB.6d+3R¾À8\é\éBM•tµ&’\á®	gl\'e­C6¥š\r\ì¢Š\çn59\ß*¹\Çl\n¨-\în$eb$\Öñ¦–\ç<ª·¢6¥ñ‹\Ä\à@˜\0\Ôpêº¾ª.\å·ódŽ\Ý|\×\ÚxŒt\Éö¬\é4\Ç2&<)n§Å£^\ÆdT”ÆŽ§v3Ï±\Åj”L[›µ\ë\çpo\ÇÖ¾¤\Ø\r<,ª\ß\Ä8¬Ø´K˜Fö\029®–\ÎñMŽ\Þ\â\Ï\Ì@1“Þ¥¤\\\\Ð‘¼W !€\î;U\È\ã)9b}=+\ì\äM#Û¤±‚rªqZ67SÅ´\Î\ã®5“VZ\Å÷4LnpAúUûY2ƒ\'ž†¢$y{£V Œb¤²N2EdõF«sRß¦	«¡ðeÛ¹ó8û¢¯\ïT!´V½“ƒJ\æ/\ä\ä\×Gt‚s\\Þ¥‘WÈ–\Æ`vy‚\æ´p\Ñ\Æ\0\rŸnõN\Å¼\ç­jj7‘YA\È%ñŠ\×K‘Ð®–\ç!\æ;ˆ\äx^\çZ²± ³o“\ãœUs=\îKË²2pUM?Vµ\ÓÎŸ\Ø\Ã!™[.]qº´Iu2œš\Ñ\0ñEý\ì\ævo’¨7óš\Ê\ÞHvHS\È\Å2\Þb\Â\è\Ýi\æH$*T4m‚\ãB*’Y\ÝFX´O×ž85¥£c\årúknù,¿‡Jµ£\È8c\ØñL³û °‘n\Ç\ï[ \ÆqX“F\ÂBSyA\Ó\"¦\É\èW3GS×–\0-¹OF\î*\È|òZ\äa¹–2N=\rl\Ù^Œ`š‡\Z—Ð“QLŒú\Ö\âlr{‘]\åeŒóÛX—\ÈJgÒª¡5S)r*ôd_=TdUÇ|U½\çZ³X†ll#\×9«\è$‘\ã$\rÀ‘š¡	\ê?ºx­|s/\0‘\ëB0\ÆRdËšŽ2Jj°N#9\Î2@öª\Äa\Í&4H¾1\×=+GJ”\çojÊ·|‚¾†­\Ø\È\ÑÏŒ÷\Åg5¡QgG1\\Ž˜nMjƒ•²2B§£Zv¯›pO®µrMu7‹%¢Š+\"ÆšJSE0\Ò\Ò\Z^(	u®s÷òù¹\0õ<Öµ\ÄÁ\ã\ïY2\Û\ä†ay5\ÑMYÜ™\ìGcM\Çð-¾7–\êG95	v–M¿À¼T·Ž¶¶¼p\Äg5Ð•ŒB\âO:÷\Ê\rò©\îh¸}\îp8\'¥S·\Üd\Þs¸Äž\Õh\à€:~”0D7»ƒ\ÎWš°dg\n}W½T˜\ã$c*{U˜¾t`1òŒý)=ŠŽ\ä2c\Ïj¢y \ãµhJƒx$\ç\"©\ÉÇ®)\Å\è\'¹z\Ö?9\n–\Çƒ0£5%®8<t\ëPj.RQ\Ü\à{UÔƒNý\ä\ã¾Mu¶\é\È•\Ë\è\é™\Óu\Ö\É\É5g©\ÑEhjZ ü8«O#‚\Ã>õºp*\â\Ç\\·:¬fKj\Ç<ŸÆ©K¤, ™	>‚ºA=¹¤6\ã¸ÏµR“[	¤÷9X´ˆ\í\Ú?*¿•\æµe\Ó\Øü\Â0>§”ñ{ðª\ço¨¹\èF4\ÅyC\ì(Àt§\"!ù°\Ã9\0g4\ás³‚ñ\Ó|\Ã )?AT¤\ÉqEw²QF\Ýòž8\ÅBm\ã\'<Õƒq4™\Â\ã\êi¾K?\ß|aE\ßR’H«±c>¤ö«Qñ‚UG \ÅK \'\ä\\ÿ\0´j\ÒX”Á\'5.I-\Ê\é ŸZ±Ø€Žõ!ˆ€\0\éÞ•\"<T\\\Ñ!aN\ç<Õ€05\0\ëO\É#Ö\ÆH©b±/\â\Î\ï¥m¸&³/GSUD‘\Îü\ÑLpA­˜^„\r2+Áš¡4}iö\Ù \à÷µ£3K¡q\â¶\å@ ôÀ\éR¤h\ãU²q\Ó\Ô*\ã\æýjC¡\ïO˜|£ÍªlmªzcU	l›ƒ&n*\ï›2P‘\ê9¦}¨óž;r(\æb\åFa\ÒW`ù@ ñŠŽm*2œŽÞ•ª÷\0ŽsÞª¼\'Y‰ô£‰Áü\ÚBŒ\à}1M‡N`¹Á\âºa4™\"0£\Ü\ÓÅ«E÷†j½£Øf¯tb%›t,Mg\ß\ÄF\äö®Žh±’+ù3\Î)\Å\ÝÜ‰++¶17\ãV½G4d\\·¦sRzWC9Ð¶øFzšÑ…Ç–¨z¦Tû\Ödë›Ž¢¯[“\Ëc‚2(Õº	-f¬`±Z>œ÷bo&?\å¤dTQ€rU8Ç­c`w\ëSFY$\ç\ïš‹coÜ¼9©e\á÷c¶~µE#¥¶Ä°‡±šÐ³?;!¬­L¦\Ó\ÎáŠ¿˜\ï\09\Î0A\ï\\’Z´o¡£\íM#š:’?\Zubh6™O¦\Ò\r/ô†–˜ù›\Ì\É$|¼\n¯¿b1cÓ€)F,}I^D;\Ã8ô®¸¤e!ö\Ä\ÊFFsTµk\Ñ,\Æ5ûª9©\înM±\ÆŒ0:V]¼m,\ß7;ŽI­—s\'Ø³h øœd\Ôñ³q=GJ‰–@\0\àU ôÀ¤\ÆQ|\å½ÛŠš\ÅÇœ\Ëý\å \Óf\Â\îp)–¸Ž\èŸZ7@´d¯’û\'ª\È68\ÇF9õq\ÇP;\Õg\åõ?JQch·nT \Ç\×5[RÇ’1\Î[­Ols1N Ž*­ø8\0ñ‡\éWÔŽ…3\ænô8\Ö\Û0+˜\Ñ\ç\ß&º›q\\Õž§U¡«l2hF=ê…©­ñ\Å`tÆœ\n›Ê¢!œqSâ„€€  ¨d\ï\Å])Q¼J,{\ÆNIÛŠ„\Ä}¿*\Ò0Ÿ\Ä\Ó·?Öª\í‘G\ì\Å\Ï==©ñ\Ù)<Š¿\å\Ôl \Ñv4ˆ„JjI\0¦<ñQ:r3R4Š\Ùn1\ïS\0§\ì	\É\ÅW–^ R¸\rs“R $T	\Î*\Â\'\0æ¡$Ö³o”5¦zd\Õ;”\'4Ðš0\ÜpF)‘ez±qFsŠ¯Ï½kº2\êhÛ “ƒSýœŽ•°<c¥iF2E\ìZÔ§\å¿­\'•ÁùzÖ——Ò(zb—3‘›öe=T~Tñn£8Aùb¯ˆ€\æ—`¢\ì,Š;pPÿ\0…A,`\äzt«ò¡\Èô^D\'¸\Ñ-u¬MF.=y®Žaœ\ÖM\ì9¶ƒ\ÔÂ¢\Ð\ãob\"e\'¿Â˜ü«CR‹(XuS\ÍT]	ö®”\îŽF¬È†D‘“Ñ¸«Q\æ9\0þpj-Ÿ»SŽTÕ¸cIa-žsƒLCpü½1P\ÈZ9œt=\èrIVGZmÁ\ÉG\ïŒzr~lðG5+º¸Œñò®;\Õxd(ÿ\0u†3\éS$j\\\Î\Üb¤h\Õ\Ó	p\éÁ­K‡\Ù<2öõõ¬k	6H°<\Ö\Ý\È&\Ôw\nwjæ¨¬Í£±¢„>w©\rAo\Ì*\àõ\êL}+šKSTôM\ïJi´†–’—B9“™Sœc*¨ÉôÚ½«fO.\Äe\Øð*¤¤Æ„Œ\ÜzWdWS)>†mü‚[’2H^ô\è\Ã$\'\0\ï<ý)©ù‹¸\'\'€8\ÍZ%P€y\Ï-\Û¡˜ûX\Øc\ÔsRH\æ9ì¸ª\Þn&D\Ï\Þ\äó\ÅN\ì\Ï68 ŒñE‚\å+\Çi=‰&›|\ìc¶EM2|„úR[òñ\çŽ1š’–¥­›\Ép2*Œ¾½²GÒ´ŒxœxÛŽ*¥\ÔK~ñ\Èµ%¸\Þ\Ã#}’+g¯š8\ïf¡ß€¤úÕ›\Âdƒv3ƒ“\íZ¢Î‰÷\Èô5\Ô\ÛW\'¡¾f?Z\ë­ø\"¹«nu\Ñ\ØÒ„\0­_‡‘T-ù\Åh\Ä+r\ÜG©C’j©Ð€;\Ó@<ÿ\0ú\é¸\Ï5 \\õ\éÖ¤ôý*¬+Ø‡\Ô`T\â<\Ó^-ŸSNÀš+½)y=\êb‡Î‡•\"‰©±W\ì0[3ü\ê9<¸\ÜFG5Æ¢@ùON˜¬›‹‰.$\0“\Í\Ï`W\êY¸¼W8Zƒ$¹\ä·À\Ò[¦d9\êMNƒeˆÓ€jtJ\0j•#\'šFGVD\ëZ3Ž•ZHÈ¦®d]D5ˆùŠcŠ\é.€\äzóX³D<\ÌÖ‘2‘¡§H®€\Z×‰®^\Z\Ú`y\ÚMt¶r‡Aœt©k©Qe€”©\Ñ”\Ç\í\ÇzV*\ålRSëŽ•)X.G\"\ç<UI“\0ñW$ªÒŽ	ªBfT£­Q¸B;Ö¤\È\Î?\nÌ¸\àÖ‘3‘\Î\ê1¨\ÏÈ¬l\áQŠ\èu 0x÷\ÍsR=\ë¢;SVdˆFS=ø5f\Ìó#\î§$Vy“O¿¡\ÂH®9¹d9Ä„sÁ¥”ð1\ÈŸp™Á\á†i¯òKc¡\ç˜\Ø|½õf\"\ÒFp9^j®òƒof\ã\éV¬²’\ì\ã\Ð2Ý»\âBA\ê2+¡‰\Ökb?\Ù\ÍsXhg\Ã\rl\ØJ\r³Ž\ê1XT]M Í›,‹T\Ó51\äTVüAz\í©Er=\Í\Ö\Ãs\×=E \éN#\Òv#ŸL¥¦1þ³Ÿ\áZ§u\É#<\Îj\éË€\n3’k:\é\Ã\Ü¤•^~µ\è%ds7vE•Bù²‚Kv\Æ1M›¸\é´dš¬\\d\Äf©\"[%G/0~ùü…h&\Ó$|õk4’ÀÀ<â­£“\09\æ3œ{Q\ÐH–\ãiŽAžs\Æ)¶\é„\ÙÀ\éQ\Â|\È\ä>‡&­C—µ\Æ*Y¢/¼^ZE&\Þ¨^¦ò21\Îj&\é-cN~P0*¦¢¸\è@\'Ö¥nSzò\'\0\äsSFþe³©\Ï#\ë”â¡·;\ÔóZ“ho‹À¤ûWgoœƒ\\5‰\ê£Ð¶+¸¶? ÷¬+-NŠCR#¡<Yq­_µž+™£©\ZF\Âz`T‘@5AR\ÆüMm;*µþB¨F\äj²’„÷\ïZE£9\'Ð¸ñ„\0ñAU&—\0\ïM–\äv\0q\ëÖ¨\ÜLO~j›]¾£¤¸ôªsLH<\Ô3\\‘žFj(³1\ïŠ\É\êk°\Üòjq¾bÇ±\ÅhT¡\çœOÙ§ ô<\Ñm4õ»4ð6Up0j#©Eù\Ø\ïPjÍŸh™3\îpi(\È\ÖFS€zV¥Ÿ2ŒŠ\æþÔ²}\Æ\àúU»{“Ðš¥£!\ê¬o_}Ÿg\îqøV4Ï³ž\Ô\ã6{ñT¯.\0CT\Ý\ÉZhUº”c“YÏ†5\Í\Ö\\\äñP‹\èü´\\úf©-\Ùi\ã9«v$ \Ý8ªhWLçŠ“Ns!vw8­\Üi\êt¶÷#¥[ó\Çb=+\r$1‘\ÏZÐ¶˜8\ëR‹-ž?…C&r*Bx\ëL$R`ˆß¡úUY3ƒVda\Ïz¬ýñBR˜b²\î…jL*Î¼\Ç¤L\ä`\ê\\!>\ÕË¹SŸS]6¦p\éŠ\å\Þ\åô®˜lqT\ÜB>@}*\ÚcC“òš¯\0ú\ç\ëS\Ây)\ÔµQ\×1“´€x,9p\Ê9\Ü1O@\Æ2Œr\Ê8¦C\à\Î;w dŒ\ì\Æ=\ÅX·Ä…}A\àžô90-÷Xc§J#\0;ƒŠC\'º|\Ì3éŠ¿¤É’TŸcT.c;	ô?M§>\Éõ\ëY\ÔWEGFu\è\ÅÇ¥<qP\Æ?v¥I\éR#‚=û\×:Si3À \ÓA\íR1Ô´\ÚZ\0\æ%+’*¤ˆ¨t\ÜsV.d+µBiG g`f½r²¥\É\'\'\å\êj\Ëzð=©.\\¹\Ú;š€\núV„Œó9\n8«\0ùaTÿ\0ò}*+x\É\Î8\\dû\Ó]\Û$ž\ÃRcD\Ö\çcºva\È\éW¬\ß÷8\î¹<V}©\ÌÀ·L`\Ô\Ñ\ÈcG ó´õ©)3¥ÒŠ\Ëe&~úž¨uO‘’8\ÎA\Òho”‘‡F\àÕ‹—>K!*sInSw0f€OB95Pu#¸9§4a\à/Ž\Åg\ÈHl\à\Ó\Äù/c~€°\Ívö§\ä\\w®&Aœ\ês]•‹\æ\Ú#\ê£5]R5££fœd\äcñ­jËˆ\â¯\Å&^+™£©3MF*@zU8ä©„ž´\ËHô¦@3U¼ÁMyj™,’õ\æ¨\Ü\\c¡¦\Ü\\„\î*¬(\×OþÀ<ŸZ‰m\ák§\Ü\ßpÎ´£ˆ À\n\"c@\0\è*_­&\Ãq …#¨\ßÚ‹‘\Ç±ªû\ãò¦z‡:,š9³0qÒ’m\Îó%¢\nÞ t­÷EôE\É\âŸ3+Ø²[Z\Î\Ã9%µ\ÔñI\å\\®ta\Ð\ÖÁ¶g\éTnm\åL»½*Ó¾\æo\Èy½Á\Åd\êÚ¯–02\Îx\n;\Ñ3\Ï\Î\"lý)X³¿™\"ü\Ç×µ=«2>\ÍuzwL\ÅTôQ\Æ*\ä61B˜òƒ?©¯\ä€1Œ~yc<\nm…‘F;7\0N\Ôþ\è«ð ˆ^\0\éNAŽ)\à\Ô7r’%}>9LDr@4\ØðE)©¹Fœ3dÓ‹\æ²\ã˜\Æpsƒ\ÐÕ¡.q@\"Ãž:þu^C\éŠžµ8£`dµ—t{VŒÏŠËº|ƒW9Z±\"6\'Ò¹«n\\ŽÙ®ƒX B\Ã=kÏ—9=²+ª;U>\"tŒùÃŽ3Šu¸	!oS­I\Z\ä\Ç\"ˆ\ã\àzn\ëTAa\ä\ÈN\å\àuZ7\Æ8 ñ\íIq ŽBÃ \àTnAù\ÇCI®Àa\ëÈ¨Á>paßš•Ï™=˜qU\ã\És\íÒ€/\É(0Ÿ\ï\0*Kd\Æt\ÍUùo‘Ú®\Û\rð\\dqQ-ŠGKdù„j²PpG¨i²O¥_®hÎˆ\ìE \ì\â›Sr‚–›N¦#ˆ¹“\Ìq\ÏAT®@\åV\å\0H û\Õ\â\íW ŽfU$g© ’IÔ‰\Ð\Zrg9õ« ·mƒ~Q­BH9Ï¯4ø\Ûd\'ý¦\ÍC/\æzžE\0Xˆc¿z@Ió?!š#‰\ê4H1»€T•\Ð\Ü\Ñ\åióü\Ë 8«R–y·6¸\È÷¬m6bU\Ï€E]û@“¹c\ÜR+ ·}–a\ÝAT¤\ÜøS¸ddUùP0þ÷9¨\á‹}²>>dùh\Ü™špPd`ô®¯H|\ÙFx®jhñ3€r	\È#µtz!ÿ\0E\Ð\Öu65§¹¬™À\éSE\'5c#¥\Æ\rsø\å<f§f¨¡\é\éS\ïŠL˜\Èy¨&¹4\Ùãš®‘›©±ƒ±zû\ÓCƒ\Þ>y\ç“\ëZðF±\0 pE\Z,@(§£ñ\éC\É\äûT¤ŒT\0Ò—ÀúÔ±ŠOz8\ëM\Ï\Ò\åq\É\×\Zÿ\0¥0{þ\ã,}7\nnc?\Ä?:,\ÂÄ±šWMø¡\"09÷©Ll³ž†­&‰²+<#¸qU\äŒß¥_\ç<\ÔA\Éj¦T£Ÿ¥BGqÚ¬\ÊñÀzT;\Ð\\Ph`9ý\è\ß\Û\'\È~\ë\ni’1šv\'T:9y©·ŽµGõ\"\Ë\Ø\Òhi–4\Ñ!Œ…\'ŽÆ£ò}¨?½ i5¹É¦¦\îœñJ\à“@\îA+\åk2\àõ­x\Íf\Í\ÉúUD\ÎL\çõ¯õ-ùV-†E\ÈEnkŸ\ê\Ï?ýzÀ³\'\íQÐœ\×T68§ñ\Æ#ó\ßS¢A\äO9\È\ç\á\ÔysMó\Ë\'n\Ô\Ñ,Í¹q\Ê\çœ\Ób#OLp})·€y\ÝðFj1 \È§J`‹ðc(\ß\ÃM’;ö¦¡ùŽ\ç­;~x\Ï%F~\Ì	\êx5n\Ù\È*3ÁZ¨ÔŽ{æ§‹¨ö\àT\Èh\èôÁ²§\ê+AjÍ°?tz­i\Æ*\ãž\æñ\ØSMõ¥\íEfX”\êCK\Å14„O\\qYw»ŸZÑ3õ=«>^d8ýk\ÐG,ˆ\Ð\ëÒ¤D\àž(9°«F1å™°Q\Ó\×5d•d;2?„p(‹‰‰\Æ}1\ß{\í\íŠ~v!s× ¤Áÿ\0xTt\ê}\é\Å3‚{óõ¨­\Ï\Î\Û&¦C÷A\èÀœŽÔ‹D–I„,N\Z•\ärOp\ç5Ëv“Œ\ã\éQ\ä&	=\èBY1\çŸ\çPEtÐ‘ƒò·jf\Þ_J­q!Àö9¤69$o´\Ìy\ç­uZ+\æ\îk\çR;œ\n\éô	Œƒ\Ø\ÔTZ\ZRz4C\å\â¤xþ\\\Ôv¤*\èN1\\N®…h¹e5\\ƒžÆ®D42¢/\ÙÄƒ\éM¶@™®j\ìj8ª\è\'`~´\\c%>X4Ä¹\Ï\åN½\åA=`^\êþ[ùQ\ä°\ì*¢®\Én\ÇGö”ˆ|\Ì?:©6±dH5\ËKs{p	P¹4[\Ø\ÞLx\ê	\ä¨kU·\Í\çÕ™ñŽ¦}¹Ÿ¹>µ^\"S€%9=ˆ­Hü9(Œ±“<zbŸºU\Ú*¥\Ë>*N\ÙÁÿ\0õTñh³‰0\Ì0zñVfðüñÂ²†]¬x4iÐ­{•\ÒV<n#•§mz¢¼§ŸQÒ³“Gº=[Û¥G-…\ÜOƒ8\î9ªº%«õ.\ßÜ˜œ„’8\â±å¹’KV\Î\åó˜˜œ\â 67\\Ÿ(­Kh¤¬·+¼­\×\Õi%“¡«/cy“ò¨õÉ¨Æ›<„\î\ì(\ÐN\é^iS¹\éRþTÀ\'?Z³s£\Ê#\ÜÒŸjÊ¸²¸Œ¦\ÇV-\ëÚš³3wfš_o\Ï<Š‘.wô®~t]þN\ã#½J’\\Dû›p\éCb.\Ö\æðrkF\Ìðp$`“Ú³lAšÕ¯[!\'³Y=\nŽ££ˆ\Ç\ÐþtÇ\0Ö•¼;-¹‘“U&¨LÑ£*\ã€Mf‘œš¿xx#Ö©òô\íZD\ÆG7¯=\ë\Ã\åI\è§5¥\â		\'>µnû	a\ØWZøN)=Mw—`“òò>•\Ì<“\ÆwUieÃ¡\ë‘\Í8òÁ¿\Ä2\à\î\n}±U\Ó ­M\Õ9\êO\Z!\'Š\0µ\Ü ÿ\0	È©#rG=)“\ÎGl“H:ŸÎ¤e\è“\Ì\Âú\n·Ž>•RØŒ§¸\"¯D3j\íŽA©‘H\Û\Ó9\n}jSñ¬m!òƒÒ¶#\èA\í\\sÑ›\Ç`4vP:Ve;›N\æ˜,¥J•¯^µ—/`õ\"´¶€„ÿ\003Y\Î¹S\Ø\ZôQ\ÈÉ‘0T	\ëVn‘c³@26~˜¨c LñK,‚C\Zº¹À \ÎO~\Þô\é?º¿­\0|üsƒšžy9\íLC\á#aõ50Á#ž•\nsž\ßÖ¤\ã\æ\ÇJ’º†\r˜#<’j¼\Øz\Ô\Ù?c$t\0z\Ôw6±\ä¸ ]þA\ë\Ð\Ò\æB[û¼\ZŽLo÷H˜“ž	\æ‹\n\â	`N\å9½ LrG¯=k^þ†­h·M\àR~V¢J\èqvg¢Y\È\nŠ\ÓNƒÒ°¬d\àsÖ¶\"z\ã’\Ôï‹¸³!\Æ}\r>\Ýú\n‘\Æô¨£B*JLÔˆŠŠ\é68qô4\Ûg\êyG˜˜\íI¡õ*L‰\\\å\îŽ\Ñ\Ï\ç \àžGZ\è†y_J’4WXpzUÁÙ’Ñe\n\ÜON0\×_u¢\Ûùj`Œ)Q÷«¸µkk‘$}\ç\ÖZ\êöo¥guQ\Z\á‹bºt’9\êsE¦¶2n4\ém’9€\Ê\ç’;VÁI\r˜eQÀ\ÉÀ\ëRG\"\\[Sº7\\ƒ\ëVa F\Ðb±µ™^Ù»7\ÐË²¶7NH\à´\ë\Ûimñœ”\Ï\íZ6Acy\0\0d\æ®^$of\Æ\î„SW\Ünµ¥\äSÓ´…x“	\ä\Æ)ºŽ˜!ŒºÀkb\Øj;b‹€{b®\×2u\îsšU‹_Hd\Ç\ÊT÷úP–O¼~µ­`‹kj¡F†\rm‘Ó‘G\"µú‡¶nW\èqvöM{#*®œ3\Z¯}b\Ö\ÓÆ¨2®qô®²\ÊHfq€ª\Ø>\ä\Õ9„ou2†\n\ÙÁ¤\Õ\Í=»¾›\Z“C§†\Æ_ „ú<’A–lJX\ì+²\Õ\åYk‚r@¬-nðX\Ù\É8PHQœfˆ®\äûgk#2ö\Él„a!†\rS1+‚\Ì:b‘\î\ÞñÄ¯\Â\íÀ$EŸ“\Âö÷¡´¶6„Z\ßRå…¾\Ä\0t\'¥mE÷D#Ž¦¨ØŽœf¶\íŸÕ‹Õh:LÇ¥c\Þ?ZÔº}€\×?s).Ni$6\Ê7’j¬Ï²Ú­‘\Üõ5&ú{\Ö\Ñ]d\ìŽKZ”¼\ä{\Örp¯ZŸP—Ìºlt\\œôô®¥¢8›»&\å\È\Ø\é$”_º¼z`8÷\éL\äþ&\Éz€GQÚ‘	\Èô™=}zS\ãÀ\ïv (>C\Ï8\Å$C;¿J;úS\í†ÿ\0\ÄÔŒš\Ìùr)\Ç\Ý9­H¶ý–B=IúV[‘\í\ZÒ…Á\ÓöóóqQ-Š‰¥¢‚€ƒ\éš\ÚNA\Íeidc\àfµ#ûµ\É=[7Žˆ^Ô‚”\Ò\Z‚‚\Å34¹ \æ\äó½j›Ÿ\Þ\è*\Ë\ÊJ\Ðù\ÕB~­z(\äd\ÑIÈ¤w\É\Ð\ÔqŸŸúT¡\È\È\Î3L±Á#µ4søT\Ø }j2\0\íùP‚„Ž?¥¹w\æ)\é\ÊwTIÁ\Çbpi¸\î*CM”“dðj7r‘¯ªœ}hx\Ù@\ÉŠ\0­¿|’SQ¦9\É8œ™>¼\ÔH\ä9õDd”¨£”\Ç a\ÔjBH88¨_¯½0¹\Ýi7^d1¸<]¼™\Åp>½Áò‰\éÈ®\Ê\Î`@®Z‘³;iJ\è\ÜC)vóU\âñVC\æ±5z<TjÕ¹¤R \î2:µ!Nr:i\×	\Î}(C‘\ìhA\"£óúŠÇ¼µI£h\ß%¶q[¸\â³\î£;½Z\Ö,I\ëc˜\Ôn5{d%Ô¿eUÀ\Ø\ÇÖ·´\Zµ–—7ó\Ë*ªÿ\0\Þú\Ô2\"žžj7·RWûªr]ô¢ž¨\×\Ó<Pö³\Ï&¡¹£”†]£\î{}*\å\ïŽ\íÍ¡û¼²\É\ÐTUFq—tOBsŠ–\Ç\Ãö\ÓBTHJB°=hI™8\Å?yXß³ñf4î¼Š)0#¸5lë–„m$‡¸\é¼*^mª\èWÔŒT^–ùZ&\Ï`qT/g\Ô\î­u»;«Xž	\ãmÀ\ç8¥šþ0…‹¨\êN+Ï“\ÂWDB½ð3Q\\øbð\'2«\ã \ÓW%Ó‡s¤>0\Ó#3BnV2­\Ë7F÷¬x\ê\Ú\ßoöwúL€äžŠ+9ü-+Ç¾i\Ù<\â¨G¢¬d‡Á\\ñŽô5m\ËT\Óøu,\Í\ã««¨¤X€Œœ\Ô÷O6£:\Ërt£¥UŽ\Æ8\\£Š³$À\0j†ú#XRKY@B8©b\Ë\Ê\0\è:\Õ@\ì\äœ\æ´-“`\Ô49\Î\î\ÆÍ€\Éð­|ycŠ\Ë\ÒFü“\ØÖ¤²\éPI™©\\`y\è+Ü¹«Z•\Æù\nû\Õ1\ÐÕ¥¡-\Üd€kŸ\Ö.Dp9\ÏjØº—\0J\ã5Û¿1\Ä@÷É­©£ž£²±’Iw$÷9¥zš:\ZU \Ö\Ç9!\ïG^(\éœ\Ð?úôT\èG¥Xˆaú\n>øýqVŠ\Ðr{T±¡	==¹÷©m²˜ö\ne\È\'Ö¬B	œZCC®NH>ø©`<\È\Õz`\æ¨^ ¯ú\Õ\Ý0\áòzQ=ŠŽ\æÝ˜1\Â\Äv&´!“÷##’;\Õ8N\Ë_v\äþ5u?Õ\í\\’fñ ž\rœQš’€\Ò\ÓI¥\Í\0pn#,¼0õ\ïTI\ì:\æ­É“ÇŠ¯\'<v\Íz\'!r„SV\ÂŠ\Þø5Q\Ç#\Ó5\Ë\Ì?/q‘C\ÆpON2*R{V•›«\ÆÑ²å“Ÿ¨ÿ\0\ëUƒG¸c\îŸÎ\ÆF{~\"¡“‡>¹§’8#8?¥6NGxS!r@\Ï\0ñN¶rqŽ>µILûÓ£\ëœóÚ\\k‚ŽHóP9\Ä\Äö&¯º	9\ÆªS \Øppi j\Ã\ÜÊœŽq\Æ*¹<‘\éR\Ç\Æ9\È5ˆA\'\Ô\ÓD±öÓµ¼\ÂE\ìk¶\Òï„±«\Ã\n\á\0\Íjh÷\Ío0\ÈO\Õ#tkNvv=\Ú|â¯¤•\Î\Ø\Ýn¶!“ ¹\ë\\Xì‹¹~9©\â“¨SE!9\ã¥C-3QÀ’?­W)ò·LñS\ÂAQ4c¤†\È\é’D%Niœ‘\ÜSÁÁ«Ø“\ê\ÎµXNµ½,+ >•Ÿ5™\ç­;\îkc\"N1W!ó!¸vB}8\ÍUD18ô­»9 xÀp>¾•V\ìSi­U\Êo{z„\ê\Äv#9©¿¶$xÈ’ßœu¯=”ŒH9\îj¤¶ª\Ú\ãù\Ó\Õ¸S—Bªj·#þY®LšI5+§ùW<p*Cn¡Ýž3AŽ@K\äõ9¢\î\Ú4©§{\Î\É,Äžù5ƒ‚:Õ©%L¿·³\î.@R-^\æ\Î\ÉY\æ|g\ëU†d|ñN!¥?=#\Æž\æ™\ÏRV&¶ŒdqÀ«`ãŠŠ$\ØIŒ¸´™‚}Mý(m€Z[ë‚¨y\íIlDV\Ê=«+U¹\à€k;]—{#>iZY\Éü)!\ÔQdþ5\í\ÈD<ö­bº7Ô¡ªÞ¬Q6Oj\ã&”\Í3;w5X½7m\å™]VG,\åv->:g¥Hƒ4\Ézø\Ð:¶}8§ž£Ž¢œù›@\éÖ‘DÖ°‡#ŸzuÀóß¥\\¶‰R\Är\Ü\æ¨\Ü\îO¾&cr¦­`#†÷ª€~ùlÕ©2^ù d!”(=¹«\Úw\Þ\æ³\Ó%	ô­Hb1Z‚:žk)½‰­œ*ž‚®¤\Ãôª(	\ØsŠp$q\\\ÏSd]óE7\ÍL\Èi¦SI ¹{\Ì\ï0z\Öy”\Ñ\ç\Zvœ›’ùª\íœÖŒ°ð{*ñUž\Ü\ã§»NfU~@\ëúV¥¨e\ØÀ\ïTDžzµ«cxT9\Æi¶	!h¦Œû\à\ÒL‹4dƒó/zS\æA–Pr¸ªÒ—…\Õÿ\0¼2G­!•£$f6­!\ïŒ\äUÙ£[„ƒ\ç^x\î*›‘\æ`ði¢X\ØÊ¾A\à‘Ú“\r\ãÔŸrSŽ†œû#·Z`O€\ã=~t\\[`9S×Ž•D8)œr§Ò­\Å.ü«u\0úÔ½µ\Ð\Î\Ú\Ãq\Ó*}i³g`<{ƒZD+Œ)<qŒTO\0w/AƒM14fœv\ã\Ø\Ó\íÁy€´ëˆŒx8\â™	\Ù =³U\ÐKs©\Óo\Z\"ºÿ\0:\é¬\î\à\äb¹ñ‡_¼£8õ­]:ó \ÎB\rsM_TuA\ÛFuˆI¥\Éª\Û\\	¯5;“\×Ò°h\Ý3V\ÊLŒgš½€\éX–R\á\ÅlFù¶+r¼±\à\äSG\ëVe\ç_fh¸€8\Î\r#€z\Ò\ÎH¤óT€¯,!þµUÑ¢&¯¾;\ÔO=\rZe)´V7Ž€u\àw\æ {\çô©\Þ\×9\äTbocUqó®\Äoz\Ø<ðz\Óð¸=3Sý\\~t\ä\Ó\ÔuùÒ¸{E\Ø\Îóûg4Ÿg.~lÖ·\Ø\Õü)’ u\Ø\Î1ˆ\Æ\0¤Ž>sÞ­<t‰;\Ø\ÅÝ½DŠt)¾q\íJ\àKoÁ,jn;\åœ$`Â°/&2IŒ÷«w—8²|Ì¹bi\Å&M$¡­szÆ¥´S–<U\ÝJøE$ñŠ\ä\î&i\ä.}x­\á¬\æ©.ˆŒ’I\'©¢Š+C!Ñƒš²@\0QI\n3Šò\àRcB\Þ\0\î§%º	’qÚ¤Š1™=B\äSE\'4\ÐRØ\â<\nÍòO\åV®sÑž£š¨\ç\ä-žIÀ€H\Î~•3¿A\ëP/\ßùœ\ÐÀ»d†R©ØžMm¾‘Æ½­e\é(H\Ý\é\ÍjÂ„\å\ÏV8„÷5‰¥ŒgÖ”\Æ(C„J\×>·6!x\éž]JM0‘T“\Ñ¥7oÖž\Î)»…;1]…¨ð£œz\Öm\ÈCƒ…«\ï©ya9+€=\ê-6\Û\í³\íp6(\ÜI®»˜X -\Ø`Ÿ\â==+@¿“T\\œðE\\š\ÍC½IÂ\ëôªSH\Ñ\ácù\ÓJg]\ìGv1\ëP9‡\\ò¸\"–\âTöy w5I$#{t$\æ‹b\ÖVG\Ð\ã¯Z[è•ˆtlg\ëL”\0Ž;ñNó·Ãµ†y\àúST‘€}84ó“=\Ç›ŽJ·^ÆŸ\0)\ïòš\0ˆ\îG×j\Ì2\ï\èpýÇ­Fb\ß~µö\ê=;\Ò\Ü65REr3Ž ñŠO0\ÆJ°ùO=\ê„w\ÜyþõYyI@qžx=hµ‡{Žš\ÕdŒ•\é\è{VQ¢$\ß úÖ¼3‘œt=\é²\Ç£\ÐúzRN\Ú0µõE»ö#§’·H¿tõöªº`hóƒ‘È­¡’<Ec\'fotKazx\â¶\ã”Hƒ\é\\–\Z\Îm­¤ðkf\Êóô©jú£D\í£5b“Ë”\nÛ·—zkž,nE^±¹\ìMf\Ñi›§;x¨±\ÔQ \éOs¸t©,ˆ¡JiN8>3ŠhhLv+ºgü)6“ëš·´zQ\åg‚©14g¼g<sM\Ú\Ãó­o\éÞ˜mú\Õ]Š\Å2\ZF}jÙŠ¦\Å+Ž\ÅGCŠ…\ã«n1Q¾9¥qr”ž:M›\0\'½M&\r2b\0\ÐS¸X¯)\Çq\Zg¶)\ä“To\î&\Ü\àžµQW3n\Åk«‚\ìFj„\×\"4<ãŠŽi¾bsXÚ•\éÁŒOZ\Þ19\å\"­ýÑ¸”Œü¢ªQEk±ƒw\nt`–\È&¬\ÛFö\éCIŒ!\Çð\ÒÁË®z“Cò\0d\ä\Ñ`{\nE‚tW<2š…	w\ìŒ\Ðd\ß?˜:c l\ß\ï\Å\0X¼s•\Õ\\œ\ã\ÐqK+—@OZŒ“Ò€¸ô\àjq\å\é€ÿ\0*|C|ƒ\Ü\â“N‹ƒ\ê9­\0b©\ÛüˆµO\æ\ÒT\\µ`\ê%¡t?\Ó&*§ži3\ZµA\"]f\Ë2ŠŒ\Ü\n¬I4•¢¤‘£\'3f“Í¨ipiû4/h\ÌÝŒ~g\ã½liƒN\íªG\'k\å28\ãÚ®}¥‚qÀô®c¥š‚Ey\ç;\Øm\àgh¬[\ë¥ò\'œ(=\é\ïqö{v\\ü\Ï÷˜\ßýzÉš\à\\H©\ÑŸ¥R%J\ç’I\äš$ \ìÇ§5¹.}:\nPr„zŠb,I\È#€\ã>Á¨PðW¿Qš~ðH\ç†\Ð¡÷€\Þf\ä©\èÜj‡zò?Z˜|ãŽ´i‰€=\Æq\ëT\î#h¦ €x#Š½.\ã¼\Ý\ÆTŸ¥:\âql%\Í!³/ƒ\ÇZtr\ìùNpi	À#‚\éQ\äœS;¸\'\å?NØ¥K“À9\ã½B~\àÁ\æ˜I#=\éX.nXL$uÁùºfºG\Çô®?Nù\ÊA\Ç<\×af\ê@\éù\Ö5™½\'tI-º\ÍVC\éY\È\Ïk&\Ç\à\Ö\Ð”Ë‹U¸M¤t\è}+4\ìj\ÕÄ¶¹\Èðjh\ç1Kx5ŽC\ÙÉ²AÁ\è}jôR+¦3O@W:k+ \è9\íZH\áÓ­r÷M€zz\Öõ\Ð|sYµcD\îiƒO\0Ulô5b\'Š‹˜£­H™ö ¦9\êH\ã<\ÅZ@\Ú°÷¦<mÁ«%1þz\ÓŽŸÎ®\ÄÜ¬\éòZ¬õxAªrjZ-2¬‡œT2\n´\êMTg>\Õey;b«\Ë&O\áV¥\ág\Ë j\Ò3“°\É$}9®zö\çÌóÀ\àU\ÍJð\"“X2Íœ\ÖðV\Ôåœ¯ “LNqXs1i˜ûÖ£œ\Ö\\\ß\ë›\ë[#¢Šri>4$U\ÈS\êN*\Æ*t}ˆy\çRcB\ÌAp¢Œ}j,\íB\Ç\Ó€œ\'½!;‡^	\Í$@D1ö\ÝÈ¨H ‘\ïS\ïÿ\0FE=TñM>¾´\0\Åù\Î=ª<ƒRŽ	¦gŠ\0rTÖ£}ÊŒ\ã&¡ô§E»;ƒ`ö¦#ªŽ PrsŽ†šð¸÷¬Xui­\ÎdzÖµ¶§À \Z\Ú-´ú9t¥«.Šã·¶*BœõjÌ–šŠ\\P0j@&\äx§\àÓ¶S°=i\Ø.`ñiP¶KÉœõ!c\Ücœ\ÔRÌ©\ÆztÃ¹\Þ2\âV|Œ\äõ8\íTI\Øx\åˆ\äÔ®\æLóQTŒ\Ø\ÓH\ÎCÁ¥4¾X\ë\ëÒ¨ Œ\îõ÷§úŽ=E9\è\È?yG\çM|qH¡\ÅÁE<e:to\È=9¨þ\\•ö\â–#ó`ý\r\0k\Å {)bo\á`\ëS\Ùl{i#n2x5J\Ûòœ|\Ã4\ëipQsÀm§Ú\ÊwVþL„f©‚2I\èMk\êHOÍŽA\Ú}\ë!Áô! ŸÊ˜9\È=\êHPž?\Zo\Ë\ÏlSö¹ŽAõ®²\ÆC°ø\×%ƒ\Øõ®“N\ìu½k*ˆÖ›¶‡C8\Ç~\Õc`\àû\Õ[b®\ZÐ`Š\ægR*Mj“! ƒ\ÐúV<±Ka&Lg¡®\ã\Ùô5°¬¨UÀ úÐ£*)–T\0ž\ÜU«[Æ·+;\ZÏ¹Ó¥³rðe“9Ç¥\\,\Ãkü­\é\Óz2v;[Õ•0H«i.\Îs\\u½\ãÚ¿\'rúŽÕ·m~² !\ãÖ¥®Å§\Üè¡¸WjW˜Ea\Çr \ç<\Z›\í*z6i&\ÑN\Ì\Ò{‚q\Ï•»š£çŽ”…\Î3ù\Õ]ŠÈºf\'ñ¦þµWó†zþU\ÌFNišOÊ«HT\Í5\î\êj\Å\Êúô¡+ƒc.¦ùqšÆ½½X$\ãÒ‹ýESw#=…s·—põ¬bs\Î}Û›–šBÄžMW\ç<\Ð5 CZ\\\Ê\ÄX\êk*S™\Ó5±(\ÂaX¤’\Äúš¸™\ÌJ’1\ÍGR!À\ÍQ\à\ã®s\Æy\êj sƒN$€[ò¤1®\ß\Â:´\nˆô§!4\År\Ð?»¹©1òŒ\Ô` Ô™\Ì wiGL\Ø©0Fi¯\ë@\r#·­=1L¤OÒ˜‹\éÏ¶bFz\Z{\é³$~| \í\Ï\ïU@#¥i\ØkgCË¹Ú©2Z ·\Ôdˆ\í˜zšÑŽ\éeôª÷0\Åzw[\ã\è*‰Š[g\î1\ëMI¡5sc>”ðk>\Úð>\È\ÝV²G5¬e}Ìœ{A§Tù©rj\È1&v\èÀƒÚ©‘Ôž¦¦‘\Êq’G½B\ï\\)¬Œž\Ý\é”óŒÑVI?\Zp)@\ëúR8\Æ\0üM\0\0A\é|Ž„f”}Îœö§Œ8 \à\ÒÀ\ç¿j\'\'­;c#€G¶}iû0\äuÈ 	‘\ÊBŒ*sL/‰:7\"žŽÃ½B\\\äzP‡œ&¶\ç9\èMgN˜~jX€+“ƒÈ¢@9\ê;ú\Ò\Ø{‹k\ã=1QH73:S\Úþµ¿$\Ì­0±|°·4\éHLúu¬>Ž8­m5ðJð­D\Õ\ÑTôgSjxt5«=kN“€§§O¥lEÚ¹%¹\Ù\\\0\Ú\Ý*\'a\ã¥M?…<¢¿Š’\Êe\ê*…æ”“|É…~¹¯,lž\â¡Áôâ‹Š\×9·Š\âØ•uÜ¾½i\"˜¡-{©®†H\Õ\Æ¨\\é‘¾J\r­\íV™-Å©°\áø«‘\ê*@\çõ¬y-g‡#n\åõ<\Ôrve>\ÕZ1]£¥\ã\Í(¾¿s&\á\Ôp\Çñ¨\Íì¾´\ÒfuBøzþ´~;°\ÅrFúoZc\ÜM\'W4ùP¹ÎŽ\çV‰8\Ü?X÷š»>B=k9Áü}MFERI\ÛbK+JI&£\Å;\ÔñÛ“‚iÜ‹\Ç5)\0U„ˆ\nd‚‹‰«nŽ!o¥a\Ö\Í\é\Ä.=«\ZµŽ\ÆS\Ü^”ñ\Î?*eY‰—½¸½\ê™g\Üñ\éQ\Èù\Å:B_ü©€r(H\àf•1‘K\'ABõŸ$m©\ÈrqŸ¥3ûb\äý8¤1NFy €A\'­=“\Î;S{\â€#8\è_$Œõ¤t¦\ÇòI\ÏJd–²9\ß(;ž	\Å\'~;Š3À\Õ!3¤\Ñ\ìV\É9\Í]¾Ó¢˜—ñ¬­&ü\0#c\Ïj\è\ÕÓ“Á\Æ^Zµ´ÄŒ\à\rOgy¿	\'^•¿{gÑ‘€=ë˜º¶kyQŽA¦„k\Ï+KóúU;\Âß» 5©ùU©\âŽrñB\ÝÌª0J®ÿ\0xQEs›~Ô‰ýh¢˜‡Ž´†Š(Qõ§\Ãþ¸}(¢€ÿ\0|Òõƒ\éE\r\'ú\ÓUj( LzwúS‡Uú\ÑE&4Mmþ³þQ\Íþ±¾´QH¤\ëøVŽþ°}(¢”¶*%Sõ­¸~\åW,·;#±z/¹R\í\éE™ ½A¨]@qE€„Ži¤J(ª\"u\è*…Â®>\èü¨¢©Ì«…\è:\ÕWž(¢­\Ä\Ú=)˜\æŠ*‘,GT/ED±b?\áW#Q@‰@•V\ëEDL\Ë\Ô?ÕšÉ¢Š\Þ;ó\ÜYþ;bŠ)’ˆ[¯\áH:\Z( ?DúP;QE!“z\Ò\Ç÷¿\Z( d\Ëþ°ý)v£Š( B?\Ý÷¢ŠhL•z¯ÒŸ/z(ªBCŽ{\×]§|Ð¦\îx¢Šb-ºŒt\íX\ZºŒŽ(¢pñ7µ\ÑÇ-xj(ª@ÿ\Ù','2025-02-27 05:14:58','female'),('9d72994a-e00f-11ef-a1d1-005056c00001','9d6f7f00-e00f-11ef-a1d1-005056c00001','Muluken','Tilahun','doctor','administrative','muluken.inbox@gmail.com','0900130082','Part-time','2025-01-05',0,2000.00,'day',NULL,'Addis Ababa','0913313103',NULL,'2025-02-27 04:33:51','male'),('bc1e5a81-d7d6-11ef-9523-005056c00001','bc1deb04-d7d6-11ef-9523-005056c00001','Derartu','Haile','doctor','medical','123456@gmail.com','123456','Full-time','2025-01-02',1,2000.00,'day',NULL,'123456','123456',NULL,'2025-02-27 05:22:23','female'),('cc44f676-e01b-11ef-a1d1-005056c00001','cc43f355-e01b-11ef-a1d1-005056c00001','Almaz','Hamza','nurse','medical','almza@gmail.com','0900130059','Part-time','2025-01-31',1,3000.00,'day','650e8400-e29b-41d4-a716-446655440002','Addis Ababa','0900130082',NULL,'2025-02-01 00:39:06','male'),('cdc6c59d-e020-11ef-a1d1-005056c00001','cdc4f8a7-e020-11ef-a1d1-005056c00001','Almaz','Hamza','doctor','medical','uiare@gmail.com','0900258963','Part-time','2024-02-06',1,5000.00,'day','650e8400-e29b-41d4-a716-446655440002','Addis Ababa','0900130082',NULL,'2025-02-01 01:14:56','female'),('db6f12f8-f2be-11ef-8b3a-005056c00001','db6db3d6-f2be-11ef-8b3a-005056c00001','Zelalem','Amare','doctor','medical','zelalem@gmail.com','0900130082','Full-time','2025-02-12',1,3000.00,'day','650e8400-e29b-41d4-a716-446655440002','Nifas Silk Lafto','0900130082',NULL,'2025-02-24 17:51:41','male'),('e40a03a1-e013-11ef-a1d1-005056c00001','e4086171-e013-11ef-a1d1-005056c00001','Melate','Eshetu','admin','administrative','hilcoe@gmail.com','0900130085','Full-time','2025-01-18',1,3000.00,'night',NULL,'Addis Ababa','0985856978',NULL,'2025-01-31 23:42:30','female'),('f3a57ee1-d7d6-11ef-9523-005056c00001','f3a56945-d7d6-11ef-9523-005056c00001','Samrawit','Eshetu','doctor','medical','samreawi@gmail.com','0913008256','Part-time','2025-01-17',1,2000.00,'day',NULL,'Nifas Silk Lafto','09110802451',NULL,'2025-01-21 12:06:08','female');
/*!40000 ALTER TABLE `organization_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `id` char(36) NOT NULL,
  `user_id` char(36) DEFAULT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` char(10) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `marital_status` varchar(20) NOT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `nationality` varchar(50) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `profile_picture` blob,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `app_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `patient_chk_1` CHECK ((`gender` in (_utf8mb4'Male',_utf8mb4'Female')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES ('190a4330-d5d9-11ef-9523-005056c00001','1907d2e1-d5d9-11ef-9523-005056c00001','Girma','Meskel','2222-02-12','female','0900130082','married','J','j',NULL,NULL),('27fa02aa-b5a4-11ef-970a-005056c00001','550e8400-e29b-41d4-a716-446655440001','Eden','Dereje','2002-05-11','Female','0912 345 678','Single','Senior Accountant','Ethiopia',NULL,NULL),('27fa1576-b5a4-11ef-970a-005056c00001','550e8400-e29b-41d4-a716-446655440003','Abel','Birhanu','1999-05-11','Male','0912 345 678','Single','Forex Trader','Ethiopia',NULL,NULL),('4a8f2b6c-d845-11ef-b188-005056c00001','4a8d34ed-d845-11ef-b188-005056c00001','Selamit','Gebremeskel','3333-03-23','female','0900130082','single','yuyyu','hhhhh',NULL,NULL),('6c002f6e-d582-11ef-9523-005056c00001','6bff076f-d582-11ef-9523-005056c00001','John','Doe','1985-07-15','Male','+1234567890','Single','Software Engineer','USA',NULL,NULL),('c4d4e549-d582-11ef-9523-005056c00001','c4d29db6-d582-11ef-9523-005056c00001','John','Doe','1985-07-15','Male','+1234567890','Single','Software Engineer','USA',NULL,NULL),('cfb2590f-d5d6-11ef-9523-005056c00001','cfb11070-d5d6-11ef-9523-005056c00001','Edini ','Amare','2025-01-07','male','0900130082','single','Job','Ethio',NULL,NULL),('f5deec2a-d79a-11ef-9523-005056c00001','f5db8f2b-d79a-11ef-9523-005056c00001','Mihret','Tilahun','2025-01-08','male','0900130082','married','Engineer','Ethiopian',NULL,NULL);
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'e-doctor'
--

--
-- Dumping routines for database 'e-doctor'
--
/*!50003 DROP FUNCTION IF EXISTS `GetPatientAgeByDiagnosis` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPatientAgeByDiagnosis`(diagnosisId CHAR(36)) RETURNS int
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
/*!50003 DROP PROCEDURE IF EXISTS `ActivateUserById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ActivateUserById`(IN p_staff_id CHAR(36))
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
/*!50003 DROP PROCEDURE IF EXISTS `AddOrganizationStaff` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddOrganizationStaff`(
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
/*!50003 DROP PROCEDURE IF EXISTS `ChangeAddressOrganizationUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangeAddressOrganizationUser`(
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
/*!50003 DROP PROCEDURE IF EXISTS `ChangeDepartmentOrganizationUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangeDepartmentOrganizationUser`(
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
/*!50003 DROP PROCEDURE IF EXISTS `ChangeEmailOrganizationUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangeEmailOrganizationUser`(
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
/*!50003 DROP PROCEDURE IF EXISTS `ChangeEmergencyContactOrganizationUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangeEmergencyContactOrganizationUser`(
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
/*!50003 DROP PROCEDURE IF EXISTS `ChangeEmploymentTypeOrganizationUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangeEmploymentTypeOrganizationUser`(
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
/*!50003 DROP PROCEDURE IF EXISTS `ChangeFullNameOrganizationUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangeFullNameOrganizationUser`(
    IN p_staff_id CHAR(36),
    IN p_new_first_name VARCHAR(100),
    IN p_new_last_name VARCHAR(100)
)
BEGIN
    UPDATE organization_staff
    SET first_name = p_new_first_name,
        last_name = p_new_last_name
    WHERE id = p_staff_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ChangeGenderOrganizationUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangeGenderOrganizationUser`(
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
/*!50003 DROP PROCEDURE IF EXISTS `ChangePhoneNumberOrganizationUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangePhoneNumberOrganizationUser`(
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
/*!50003 DROP PROCEDURE IF EXISTS `ChangeProfilePictureOrganizationUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangeProfilePictureOrganizationUser`(
    IN p_staff_id CHAR(36),
    IN p_new_profile_picture BLOB
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        -- Log the error
        GET DIAGNOSTICS CONDITION 1 @p1 = MESSAGE_TEXT;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = @p1;
    END;

    -- Update the profile picture
    UPDATE organization_staff
    SET profile_picture = p_new_profile_picture
    WHERE id = p_staff_id;

    -- Check if any rows were updated
    IF ROW_COUNT() = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No rows updated. Invalid staff_id.';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ChangeRoleOrganizationUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangeRoleOrganizationUser`(
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
/*!50003 DROP PROCEDURE IF EXISTS `ChangeSalaryOrganizationUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangeSalaryOrganizationUser`(
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
/*!50003 DROP PROCEDURE IF EXISTS `ChangeShiftOrganizationUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangeShiftOrganizationUser`(
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
/*!50003 DROP PROCEDURE IF EXISTS `ChangeUsernameOrganizationUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangeUsernameOrganizationUser`(
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
/*!50003 DROP PROCEDURE IF EXISTS `DeactivateUserById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeactivateUserById`(IN p_staff_id CHAR(36))
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
/*!50003 DROP PROCEDURE IF EXISTS `GenerateUniqueUsername` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GenerateUniqueUsername`(
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
/*!50003 DROP PROCEDURE IF EXISTS `GetAdminUsers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAdminUsers`()
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
/*!50003 DROP PROCEDURE IF EXISTS `GetAllActiveOrganizationUsers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllActiveOrganizationUsers`()
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
        os.profile_picture,
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
/*!50003 DROP PROCEDURE IF EXISTS `GetAllInactiveOrganizationUsers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllInactiveOrganizationUsers`()
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
         os.profile_picture,
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
/*!50003 DROP PROCEDURE IF EXISTS `GetOrganizationUserById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetOrganizationUserById`(IN p_staff_id CHAR(36))
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
/*!50003 DROP PROCEDURE IF EXISTS `Insight_GetPatientCountByGender` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insight_GetPatientCountByGender`()
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
/*!50003 DROP PROCEDURE IF EXISTS `RemoveUserProfilePicture` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `RemoveUserProfilePicture`(
    IN p_staff_id CHAR(36)
)
BEGIN
    UPDATE organization_staff
    SET profile_picture = NULL
    WHERE id = p_staff_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ResetOrgUserPwdById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ResetOrgUserPwdById`(
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
/*!50003 DROP PROCEDURE IF EXISTS `UpdateUserCredentials` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateUserCredentials`(
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

-- Dump completed on 2025-02-27  6:55:09
