-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: nest_music_app
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `forgot_password`
--

DROP TABLE IF EXISTS `forgot_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forgot_password` (
  `id` varchar(255) NOT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `email` varchar(255) NOT NULL,
  `otp` varchar(255) NOT NULL,
  `expiredAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_e193e226d1b1295f32ccec5114` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forgot_password`
--

LOCK TABLES `forgot_password` WRITE;
/*!40000 ALTER TABLE `forgot_password` DISABLE KEYS */;
/*!40000 ALTER TABLE `forgot_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,1743382724662,'DbV11743382724662'),(2,1747818543363,'FixDescriptionLyricToTypeText1747818543363'),(3,1747826681663,'TypeRefreshTokenText1747826681663');
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `id` varchar(255) NOT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `orderId` varchar(255) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `resultCode` varchar(255) NOT NULL,
  `status` enum('init','done') NOT NULL DEFAULT 'init',
  `message` varchar(255) NOT NULL,
  `shortLink` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES ('3285f256-2b1a-4fc7-816d-fe56bcae5416','2025-05-21 13:38:47.245537','2025-05-21 13:53:49.000000','MOMO1747809527005','','0','done','Thành công.','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xNT01PMTc0NzgwOTUyNzAwNQ&s=ba45490d5d2a9b267cb901dcd9f04787992e8e4fbefab65f63fa81c21ff77ab4'),('33bd1118-2bb4-443c-a1e2-9379ea47f69e','2025-05-22 17:51:51.636114','2025-05-22 17:52:45.000000','MOMO1747911111408','98542df7-8be8-4051-a902-2092970cc592','0','done','Thành công.','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xNT01PMTc0NzkxMTExMTQwOA&s=3206e053f709e41f2ccf78b9fd0fc6def5b06d9d06053327a2bcf7e46e8accd4'),('34c30b7e-3419-4d6a-a188-1f4607dd73a6','2025-05-22 17:14:12.019840','2025-05-22 17:15:07.000000','MOMO1747908851825','0598588c-cf06-4efb-9ff9-74f87961a22d','0','done','Thành công.','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xNT01PMTc0NzkwODg1MTgyNQ&s=309bca7658c73d71a9f6df2362e5694e63e694b0f925eae4a7b4030acbd62e57'),('4ffd1566-310f-497c-a316-8b1019053f42','2025-05-22 15:55:09.665136','2025-05-22 15:56:03.000000','MOMO1747904109406','548998f5-c5c8-4013-b103-58d88a57fd9c','0','done','Thành công.','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xNT01PMTc0NzkwNDEwOTQwNg&s=dacf9a7b440ec507ea4eaa8802b961e9d68d586ba422d4bd8fe8af4b008ffd57'),('a7a9fd27-6de9-47cd-a073-52484f457a80','2025-05-22 17:00:39.161569','2025-05-22 17:01:30.000000','MOMO1747908038927','955a7615-ed12-4fb1-96df-60174bc719ef','0','done','Thành công.','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xNT01PMTc0NzkwODAzODkyNw&s=9607e83f534e6aed57ccd405f99b88d9bda08e972e15cc72880de049d3aef4b5'),('afc26d4d-c6d9-42c3-a111-d554bccb25f0','2025-05-22 16:17:11.724125','2025-05-22 16:18:04.000000','MOMO1747905431492','542c2a56-a1c7-4051-8d5a-19c6b4c38dc3','0','done','Thành công.','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xNT01PMTc0NzkwNTQzMTQ5Mg&s=d22edd5355f27c4563c9ba13454882181be39738f0a6e84af0c6d596cf21e7dd'),('e7425fcf-2c29-408b-bb50-5c0aeb2f170c','2025-05-21 20:29:45.308440','2025-05-21 20:36:41.000000','MOMO1747834185089','28c4e597-1a29-42a1-a632-b12f14f4dcdc','0','done','Thành công.','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xNT01PMTc0NzgzNDE4NTA4OQ&s=d11b8c7b2303fd5c8fb4292ee3efbdf7a557621749ab460b1cf36e9a0a820ca3');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission` (
  `id` varchar(255) NOT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `name` varchar(255) NOT NULL,
  `pathName` varchar(255) NOT NULL,
  `method` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES ('07e696db-f3ee-46e8-8f29-8fc35b088c5b','2024-11-20 02:15:46.000000','2024-11-20 02:16:20.000000','Đổi trạng thái ca sĩ','/api/v1/singers/changeStatus/:id','PATCH'),('19ff9854-d67b-4146-9bd4-9d917b962c7a','2024-11-20 09:05:40.000000','2024-11-20 09:05:40.000000','Phân vai trò cho người khác','/api/v1/change-role/:idUser/:idRole','PATCH'),('1e43fdd6-0005-4954-b306-d87f31280d19','2024-11-20 02:27:51.000000','2024-11-20 02:27:51.000000','Thêm chủ đề','/api/v1/topics/create','POST'),('1e4d00f3-8b8f-4cd5-9af0-c14d71efe919','2024-11-20 02:18:10.000000','2024-11-20 02:18:10.000000','Thêm bài hát vào danh sách đề cử','/api/v1/song-for-you/add/:songId','POST'),('2f0df29c-3ba7-4334-9aac-ce344436c2cd','2024-11-20 01:12:50.000000','2024-11-20 01:12:50.000000','Thêm quyền','/api/v1/permissions','POST'),('35d1447f-44f7-4d2d-9986-523bebf7d018','2024-11-20 02:03:26.000000','2024-11-20 02:03:26.000000','Xem vai trò','/api/v1/roles','GET'),('3835cab8-68e9-4543-b31a-f7c7bf96d980','2024-11-20 02:26:11.000000','2024-11-20 02:26:11.000000','Đổi trạng thái cho bài hát','/api/v1/songs/changeStatus/:id','PATCH'),('4b1f4ee2-9e5c-4676-8027-a7b9219ecd46','2024-11-20 02:38:58.000000','2024-11-20 02:38:58.000000','Xóa tài khoản','/api/v1/users/:id','DELETE'),('53f3667d-3b0d-41ea-8a9c-ea43f9c3b4af','2024-11-20 02:06:50.000000','2024-11-20 02:06:50.000000','Phân quyền','/api/v1/roles/:id','PATCH'),('568b6029-7fd3-412e-883e-77d64fb885f9','2024-11-20 01:43:17.000000','2024-11-20 01:43:17.000000','Xem chi tiết quyền','/api/v1/permissions/detail/:id','GET'),('5cc4bfae-7829-4d23-9eda-f0805c717836','2024-11-20 02:16:10.000000','2024-11-20 02:16:10.000000','Xóa ca sĩ','/api/v1/singers/:id','DELETE'),('620c4749-aaac-46c1-93f1-b64ed8df31de','2024-11-20 02:33:33.000000','2024-11-20 02:33:33.000000','Đổi trạng thái cho tài khoản','/api/v1/users/change-status/:id','PATCH'),('63be1c63-b264-4b7b-93fe-e0c156aef945','2024-11-20 02:28:34.000000','2024-11-20 02:28:34.000000','Sửa chủ đề','/api/v1/topics/editTopic/:id','PATCH'),('648807e0-4210-48e5-a934-be6ab9facbb8','2024-11-20 02:19:42.000000','2024-11-20 02:19:42.000000','Xếp hạng các bài hát trong danh sách đề cử','/api/v1/song-for-you/update-order','PATCH'),('6ffd6a73-a089-4e81-b483-0c0f1c61f565','2024-11-20 02:07:54.000000','2024-11-20 02:07:54.000000','Xóa vai trò','/api/v1/roles/:id','DELETE'),('7a795c10-4a7a-4689-b065-d23341b001f9','2024-11-20 02:06:20.000000','2024-11-20 02:06:20.000000','Thêm vai trò','/api/v1/roles','POST'),('96c970da-b442-4c40-b617-0d3b9190db82','2024-11-20 02:18:56.000000','2024-11-20 02:18:56.000000','Bỏ bài hát ra khỏi danh sách đề cử','/api/v1/song-for-you/remove/:songId','DELETE'),('a287d4c4-204f-4bd4-816e-9a3bb00244a0','2024-11-20 01:43:42.000000','2024-11-20 01:43:42.000000','Sửa quyền','/api/v1/permissions/:id','PATCH'),('a74f055d-3d6a-42b2-8813-d4028623cd45','2024-11-20 02:30:59.000000','2024-11-20 02:30:59.000000','Xóa chủ đề','/api/v1/topics/:id','DELETE'),('bdd7fac1-a229-46db-bc9e-6a03625d3545','2024-11-20 01:44:13.000000','2024-11-20 01:44:13.000000','Xóa quyền','/api/v1/permissions/:id','DELETE'),('e6309c40-61e6-4dfb-bfb1-a083ceab301c','2024-11-20 01:01:01.000000','2024-11-20 01:01:01.000000','Xem quyền','/api/v1/permissions','GET');
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `play_list`
--

DROP TABLE IF EXISTS `play_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `play_list` (
  `id` varchar(255) NOT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `title` varchar(255) NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `deletedAt` datetime DEFAULT NULL,
  `userId` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fd872a93c13bfaecc18111a47e6` (`userId`),
  CONSTRAINT `FK_fd872a93c13bfaecc18111a47e6` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `play_list`
--

LOCK TABLES `play_list` WRITE;
/*!40000 ALTER TABLE `play_list` DISABLE KEYS */;
INSERT INTO `play_list` VALUES ('1d83efc5-18a1-4dd2-bd7f-533684d62643','2025-05-22 17:50:10.002245','2025-05-22 17:50:26.000000','testes',0,NULL,'98542df7-8be8-4051-a902-2092970cc592');
/*!40000 ALTER TABLE `play_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `play_list_list_song_song`
--

DROP TABLE IF EXISTS `play_list_list_song_song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `play_list_list_song_song` (
  `playListId` varchar(36) NOT NULL,
  `songId` varchar(36) NOT NULL,
  PRIMARY KEY (`playListId`,`songId`),
  KEY `IDX_5b4de4286f3e9797a88a1c0246` (`playListId`),
  KEY `IDX_b50ac82ad316b81d7c482aa4e2` (`songId`),
  CONSTRAINT `FK_5b4de4286f3e9797a88a1c02463` FOREIGN KEY (`playListId`) REFERENCES `play_list` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_b50ac82ad316b81d7c482aa4e2a` FOREIGN KEY (`songId`) REFERENCES `song` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `play_list_list_song_song`
--

LOCK TABLES `play_list_list_song_song` WRITE;
/*!40000 ALTER TABLE `play_list_list_song_song` DISABLE KEYS */;
INSERT INTO `play_list_list_song_song` VALUES ('1d83efc5-18a1-4dd2-bd7f-533684d62643','1c6c433a-586d-48b3-94ec-370d3c49661a'),('1d83efc5-18a1-4dd2-bd7f-533684d62643','48680179-1047-42e2-8641-8c994f4f1184'),('1d83efc5-18a1-4dd2-bd7f-533684d62643','4ad3835d-48ac-494a-80c9-47913b31bc5d');
/*!40000 ALTER TABLE `play_list_list_song_song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` varchar(255) NOT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `roleName` varchar(255) NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_a6142dcc61f5f3fb2d6899fa26` (`roleName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES ('02d63450-f2ee-5b25-94df-cd52080c3798','2024-09-13 13:37:01.000000','2025-04-30 13:19:15.000000','User',0,NULL),('5550569a-cfb1-55d8-ac90-5fc77f489857','2024-10-04 02:29:25.000000','2025-04-30 13:19:21.000000','Admin',0,NULL);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_permissions_permission`
--

DROP TABLE IF EXISTS `role_permissions_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_permissions_permission` (
  `roleId` varchar(36) NOT NULL,
  `permissionId` varchar(36) NOT NULL,
  PRIMARY KEY (`roleId`,`permissionId`),
  KEY `IDX_b36cb2e04bc353ca4ede00d87b` (`roleId`),
  KEY `IDX_bfbc9e263d4cea6d7a8c9eb3ad` (`permissionId`),
  CONSTRAINT `FK_b36cb2e04bc353ca4ede00d87b9` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_bfbc9e263d4cea6d7a8c9eb3ad2` FOREIGN KEY (`permissionId`) REFERENCES `permission` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_permissions_permission`
--

LOCK TABLES `role_permissions_permission` WRITE;
/*!40000 ALTER TABLE `role_permissions_permission` DISABLE KEYS */;
INSERT INTO `role_permissions_permission` VALUES ('5550569a-cfb1-55d8-ac90-5fc77f489857','07e696db-f3ee-46e8-8f29-8fc35b088c5b'),('5550569a-cfb1-55d8-ac90-5fc77f489857','19ff9854-d67b-4146-9bd4-9d917b962c7a'),('5550569a-cfb1-55d8-ac90-5fc77f489857','1e43fdd6-0005-4954-b306-d87f31280d19'),('5550569a-cfb1-55d8-ac90-5fc77f489857','1e4d00f3-8b8f-4cd5-9af0-c14d71efe919'),('5550569a-cfb1-55d8-ac90-5fc77f489857','2f0df29c-3ba7-4334-9aac-ce344436c2cd'),('5550569a-cfb1-55d8-ac90-5fc77f489857','35d1447f-44f7-4d2d-9986-523bebf7d018'),('5550569a-cfb1-55d8-ac90-5fc77f489857','3835cab8-68e9-4543-b31a-f7c7bf96d980'),('5550569a-cfb1-55d8-ac90-5fc77f489857','4b1f4ee2-9e5c-4676-8027-a7b9219ecd46'),('5550569a-cfb1-55d8-ac90-5fc77f489857','53f3667d-3b0d-41ea-8a9c-ea43f9c3b4af'),('5550569a-cfb1-55d8-ac90-5fc77f489857','568b6029-7fd3-412e-883e-77d64fb885f9'),('5550569a-cfb1-55d8-ac90-5fc77f489857','5cc4bfae-7829-4d23-9eda-f0805c717836'),('5550569a-cfb1-55d8-ac90-5fc77f489857','620c4749-aaac-46c1-93f1-b64ed8df31de'),('5550569a-cfb1-55d8-ac90-5fc77f489857','63be1c63-b264-4b7b-93fe-e0c156aef945'),('5550569a-cfb1-55d8-ac90-5fc77f489857','648807e0-4210-48e5-a934-be6ab9facbb8'),('5550569a-cfb1-55d8-ac90-5fc77f489857','6ffd6a73-a089-4e81-b483-0c0f1c61f565'),('5550569a-cfb1-55d8-ac90-5fc77f489857','7a795c10-4a7a-4689-b065-d23341b001f9'),('5550569a-cfb1-55d8-ac90-5fc77f489857','96c970da-b442-4c40-b617-0d3b9190db82'),('5550569a-cfb1-55d8-ac90-5fc77f489857','a287d4c4-204f-4bd4-816e-9a3bb00244a0'),('5550569a-cfb1-55d8-ac90-5fc77f489857','a74f055d-3d6a-42b2-8813-d4028623cd45'),('5550569a-cfb1-55d8-ac90-5fc77f489857','bdd7fac1-a229-46db-bc9e-6a03625d3545'),('5550569a-cfb1-55d8-ac90-5fc77f489857','e6309c40-61e6-4dfb-bfb1-a083ceab301c');
/*!40000 ALTER TABLE `role_permissions_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `singer`
--

DROP TABLE IF EXISTS `singer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `singer` (
  `id` varchar(255) NOT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `fullName` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL,
  `slug` varchar(255) NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_14331e0743dc31c1638650bebb` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `singer`
--

LOCK TABLES `singer` WRITE;
/*!40000 ALTER TABLE `singer` DISABLE KEYS */;
INSERT INTO `singer` VALUES ('0f49b49d-25c4-49ef-9efc-75343c76e821','2025-05-22 17:52:45.267117','2025-05-22 17:56:38.000000','singer','https://res.cloudinary.com/dsi9ercdo/image/upload/v1747911164/tqtzzgtobe8xxh6jaati.jpg','active','singertest',0,NULL),('2cf161df-36d8-42ac-9042-51c886c0c1aa','2025-05-21 14:00:00.000000','2025-05-21 17:57:19.000000','TLong','https://backend.daca.vn/assets/images/tlong.jpg','active','tlong',0,NULL),('97248106-2c48-457b-8927-32054cef8873','2024-09-16 13:55:42.000000','2024-11-24 06:57:18.000000','Sơn Tùng MTP','https://res.cloudinary.com/dsi9ercdo/image/upload/v1726553401/ms2xghgneahbbilptmi4.jpg','active','son-tung-mtp',0,NULL),('9a608fc2-0214-4337-91c7-223f002c9c68','2024-12-06 12:49:08.000000','2025-05-21 18:45:55.000000','Nobi Nobita','https://res.cloudinary.com/dsi9ercdo/image/upload/v1733489348/i8okozeag8zitj4m7za5.jpg','inactive','nobi-nobita',0,NULL),('b26a7ee2-0bac-4783-bb61-7c4783af9401','2024-10-10 11:38:35.000000','2025-05-22 17:57:17.000000','Admin','https://res.cloudinary.com/dsi9ercdo/image/upload/v1728560314/wczyby2pbmwlsopwhjjj.png','active','youtube',0,NULL),('bf52c009-8c96-4ec4-b1c9-69eb0588008b','2025-05-21 14:00:00.000000','2024-11-30 05:48:01.000000','Cao Thái Sơn','https://backend.daca.vn/assets/images/cao-thai-son.jpg','active','cao-thai-son',0,NULL),('c0a54fa7-3a73-475c-bf78-62986572f5c2','2025-05-21 14:00:00.000000','2025-05-21 17:57:21.000000','Tăng Duy Tân','https://backend.daca.vn/assets/images/tang-duy-tan.jpg','active','tang-duy-tan',0,NULL);
/*!40000 ALTER TABLE `singer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song`
--

DROP TABLE IF EXISTS `song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `song` (
  `id` varchar(255) NOT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `title` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `like` int(11) NOT NULL DEFAULT 0,
  `listen` int(11) NOT NULL DEFAULT 0,
  `audio` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL,
  `slug` varchar(255) NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `deletedAt` datetime DEFAULT NULL,
  `singerId` varchar(36) DEFAULT NULL,
  `topicId` varchar(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `lyrics` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_c311b415cb9f62143604b60aab` (`slug`),
  KEY `FK_f2343efcc33d8bdbcffda2a777a` (`singerId`),
  KEY `FK_8579bf9bed238198c2349c217c2` (`topicId`),
  CONSTRAINT `FK_8579bf9bed238198c2349c217c2` FOREIGN KEY (`topicId`) REFERENCES `topic` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `FK_f2343efcc33d8bdbcffda2a777a` FOREIGN KEY (`singerId`) REFERENCES `singer` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
INSERT INTO `song` VALUES ('1132fb4c-769a-4070-98e0-e52275cb1a18','2024-10-10 11:48:11.000000','2025-05-22 18:02:15.000000','Anh sai rồi - Lofi','https://res.cloudinary.com/dsi9ercdo/image/upload/v1728560879/ysxmkeybevuteyjshxor.jpg',1,0,'https://res.cloudinary.com/dsi9ercdo/video/upload/v1728560890/jqcuaffyxvarfojmpr0u.mp3','active','anh-sai-roi-lofi',0,NULL,'97248106-2c48-457b-8927-32054cef8873','8c82c7bb-4bd0-4e6c-96de-8dd443cc79e3','',''),('18aa056b-20e7-4573-8673-fe3a533f075c','2024-10-10 11:57:55.000000','2025-05-22 18:02:03.000000','Anh không theo đuổi em nữa - lofi','https://res.cloudinary.com/dsi9ercdo/image/upload/v1728561472/rewe5pld90zw7sillmbh.jpg',0,0,'https://res.cloudinary.com/dsi9ercdo/video/upload/v1728561474/sgxbjipxszd3n4udi9n9.mp3','active','anh-khong-theo-duoi-em-nua-lofi',0,NULL,'b26a7ee2-0bac-4783-bb61-7c4783af9401','8c82c7bb-4bd0-4e6c-96de-8dd443cc79e3','',''),('1c6c433a-586d-48b3-94ec-370d3c49661a','2024-10-10 12:01:55.000000','2025-05-22 18:02:00.000000','Đảo không người - lofi','https://res.cloudinary.com/dsi9ercdo/image/upload/v1728561709/hxh2edafemek4nrxfxpn.jpg',2,7,'https://res.cloudinary.com/dsi9ercdo/video/upload/v1728561714/pllqs2dk4gpdn4qdeq3y.mp3','active','dao-khong-nguoi-lofi',0,NULL,'b26a7ee2-0bac-4783-bb61-7c4783af9401','8c82c7bb-4bd0-4e6c-96de-8dd443cc79e3','',''),('2d183446-5f6a-4306-9edb-8ce7498736ce','2024-10-10 11:52:06.000000','2025-05-22 18:02:09.000000','Chỉ là muốn nói - Lofi','https://res.cloudinary.com/dsi9ercdo/image/upload/v1728561122/udorrzkc0hfl0ogzmua1.jpg',0,0,'https://res.cloudinary.com/dsi9ercdo/video/upload/v1728561125/gr52az96ftrcuk9zqxnc.mp3','active','chi-la-muon-noi-lofi',0,NULL,'b26a7ee2-0bac-4783-bb61-7c4783af9401','8c82c7bb-4bd0-4e6c-96de-8dd443cc79e3','',''),('4008530f-ef08-4438-b5db-5a3d62757104','2024-10-10 11:53:23.000000','2025-05-22 17:56:40.000000','Nếu tình yêu đã lãng quên - nhạc Trung','https://res.cloudinary.com/dsi9ercdo/image/upload/v1728561199/yit26b4tj3cwqbir3l7t.jpg',0,1,'https://res.cloudinary.com/dsi9ercdo/video/upload/v1728561202/zjimcrqfnzs0wsjjxtdq.mp3','inactive','neu-tinh-yeu-da-lang-quen-nhac-trung',0,NULL,'b26a7ee2-0bac-4783-bb61-7c4783af9401','ba8722b6-23f4-4b8d-bbc7-19d24f50fdb5','',''),('48680179-1047-42e2-8641-8c994f4f1184','2024-10-10 11:59:30.000000','2025-05-22 18:02:02.000000','Người có thương - lofi','https://res.cloudinary.com/dsi9ercdo/image/upload/v1728561564/agvahnm1ccibkjpjjl1q.jpg',1,0,'https://res.cloudinary.com/dsi9ercdo/video/upload/v1728561569/jgd859mwqjamaislntgj.mp3','active','nguoi-co-thuong-lofi',0,NULL,'b26a7ee2-0bac-4783-bb61-7c4783af9401','8c82c7bb-4bd0-4e6c-96de-8dd443cc79e3','',''),('4ad3835d-48ac-494a-80c9-47913b31bc5d','2024-10-10 12:02:33.000000','2025-05-22 18:01:59.000000','Anh đâu đấy - lofi','https://res.cloudinary.com/dsi9ercdo/image/upload/v1728561747/bfjrvplljpvs0604225e.jpg',2,14,'https://res.cloudinary.com/dsi9ercdo/video/upload/v1728561752/qisr2s92g0g5fiaf3mer.mp3','active','anh-dau-day-lofi',0,NULL,'b26a7ee2-0bac-4783-bb61-7c4783af9401','8c82c7bb-4bd0-4e6c-96de-8dd443cc79e3','','[00:17.88] Sài Gòn 2h đêm dòng tin\r\n[00:21.80] Anh đâu đấy\r\n[00:25.31] Người ta đã đi rồi\r\n[00:27.32] Bỏ em một mình nơi này\r\n[00:32.83] Từng dòng ký ức về đây\r\n[00:34.91] Ngày chia tay em đâu như thế\r\n[00:40.43] Đâu một giọt nước mắt nào\r\n[00:42.44] Đầu quan tâm anh ra sao\r\n[00:46.94] Vậy mà giờ đây phải khóc\r\n[00:51.46] Phải yếu mềm như thế này\r\n[00:54.98] Là người em đã chọn thay anh\r\n[00:57.91] Để bước cùng ngày sau đấy\r\n[01:02.48] Có lẽ vì anh vẫn ngu ngơ\r\n[01:06.51] Vẫn cố chấp tin vào yêu\r\n[01:10.02] Dù cho đớn đau ngàn lần\r\n[01:12.62] Dù trái tim đã buồn bao nhiêu\r\n[01:16.62] Nhìn em nước mắt nhạt nhoà bên ai\r\n[01:20.15] Mà chẳng thể cạnh bên\r\n[01:22.64] Chở che lúc này\r\n[01:24.67] Cứ nghĩ em vẫn còn\r\n[01:26.68] Yên vui cùng người em yêu\r\n[01:29.09] Để lại niềm đau\r\n[01:30.61] Mình anh giữ thôi\r\n[01:32.61] Trách anh chẳng thể níu lấy\r\n[01:36.16] Để em phải đau vì ai đến vậy\r\n[01:39.66] Không biết khi người bỏ ra đi\r\n[01:42.20] Để lại buồn trên mi\r\n[01:44.20] Một lần em có nhớ đến tôi\r\n[01:47.76] Em còn nhớ tôi\r\n[02:21.24] Vậy mà giờ đây phải khóc\r\n[02:25.29] Phải yếu mềm như thế này\r\n[02:28.82] Là người em đã chọn thay anh\r\n[02:31.39] Để bước cùng ngày sau đấy\r\n[02:35.91] Có lẽ vì anh vẫn ngu ngơ\r\n[02:40.58] Vẫn cố chấp tin vào yêu\r\n[02:43.60] Dù cho đớn đau ngàn lần\r\n[02:46.08] Dù trái tim đã buồn bao nhiêu\r\n[02:50.61] Nhìn em nước mắt nhạt nhoà bên ai\r\n[02:53.64] Mà chẳng thể cạnh bên\r\n[02:56.21] Chở che lúc này\r\n[02:58.70] Cứ nghĩ em vẫn còn\r\n[03:00.22] Yên vui cùng người em yêu\r\n[03:02.61] Để lại niềm đau\r\n[03:04.14] Mình anh giữ thôi\r\n[03:06.15] Trách anh chẳng thể níu lấy\r\n[03:10.09] Để em phải đau vì ai đến vậy\r\n[03:13.61] Không biết khi người bỏ ra đi\r\n[03:16.13] Để lại buồn trên mi\r\n[03:18.14] Một lần em có nhớ đến tôi\r\n[03:21.15] Em còn nhớ lấy một ngày bão giông\r\n[03:25.15] Bỏ mặc lại anh\r\n[03:26.65] Với tiếng mưa trong lòng\r\n[03:28.67] Ngày hôm ấy ánh mắt kia\r\n[03:32.23] Đâu buồn thế\r\n[03:38.25] Nhìn em nước mắt nhạt nhoà bên ai\r\n[03:41.80] Mà chẳng thể cạnh bên\r\n[03:43.29] Chở che lúc này\r\n[03:45.30] Cứ nghĩ em vẫn còn\r\n[03:47.30] Yên vui cùng người em yêu\r\n[03:49.71] Để lại niềm đau\r\n[03:51.23] Mình anh giữ thôi\r\n[03:53.23] Trách anh chẳng thể níu lấy\r\n[03:56.64] Để em phải đau vì ai đến vậy\r\n[04:00.19] Không biết khi người bỏ ra đi\r\n[04:03.27] Để lại buồn trên mi\r\n[04:04.76] Một lần em có nhớ đến tôi\r\n[04:08.29] Em còn nhớ tôi\r\n[04:12.30] Một lần em có nhớ đến tôi\r\n[04:17.32] Em còn nhớ tôi'),('4daa99c7-731c-4d4d-90fa-5f9a6ddf4aa8','2024-10-10 14:02:28.000000','2025-05-22 18:01:59.000000','Kẻ mộng mơ','https://res.cloudinary.com/dsi9ercdo/image/upload/v1728568943/ljw0n8t9gymjsns4vasf.jpg',2,26,'https://res.cloudinary.com/dsi9ercdo/video/upload/v1728568947/im9jsrjvoaaqargu6yon.mp3','active','ke-mong-mo',0,NULL,'b26a7ee2-0bac-4783-bb61-7c4783af9401','8c82c7bb-4bd0-4e6c-96de-8dd443cc79e3','',''),('6384f7a8-c523-4723-95c7-1750936506a6','2024-10-10 11:55:05.000000','2025-05-22 18:02:06.000000','Nắng có mang em về - lofi','https://res.cloudinary.com/dsi9ercdo/image/upload/v1728561300/fgxywfjh0jhhfa0vn9we.jpg',0,0,'https://res.cloudinary.com/dsi9ercdo/video/upload/v1728561304/g3zasglmbgxc4cmqjjhj.mp3','active','nang-co-mang-em-ve-lofi',0,NULL,'b26a7ee2-0bac-4783-bb61-7c4783af9401','8c82c7bb-4bd0-4e6c-96de-8dd443cc79e3','',''),('6a0180a3-f14b-4256-aee5-af8c42debe48','2024-10-10 11:46:15.000000','2025-05-22 18:02:15.000000','3107-2 lofi','https://res.cloudinary.com/dsi9ercdo/image/upload/v1728560769/amzmg32uax6oeeknixcj.jpg',0,0,'https://res.cloudinary.com/dsi9ercdo/video/upload/v1728560774/txtf76900pzmlt5nsfvk.mp3','active','3107-2-lofi',0,NULL,'b26a7ee2-0bac-4783-bb61-7c4783af9401','8c82c7bb-4bd0-4e6c-96de-8dd443cc79e3','',''),('7c85744e-5720-407e-8c67-e0b969697906','2024-10-10 11:55:49.000000','2025-05-22 18:02:05.000000','Lỗi tại anh - lofi','https://res.cloudinary.com/dsi9ercdo/image/upload/v1728561344/yhxmf0qwirjjbloqpxzo.jpg',0,0,'https://res.cloudinary.com/dsi9ercdo/video/upload/v1728561348/q7wmzozydbdikgatvahh.mp3','active','loi-tai-anh-lofi',0,NULL,'b26a7ee2-0bac-4783-bb61-7c4783af9401','8c82c7bb-4bd0-4e6c-96de-8dd443cc79e3','',''),('87b4ba7f-515a-4362-ac18-593bedfaf287','2024-10-10 11:50:00.000000','2025-05-22 18:02:10.000000','Mây x gió x đom đóm - Lofi','https://res.cloudinary.com/dsi9ercdo/image/upload/v1728560994/j0aabahaenc5m1asizaa.jpg',0,0,'https://res.cloudinary.com/dsi9ercdo/video/upload/v1728560998/qvy7nkvc4t9jygdcchxk.mp3','active','may-x-gio-x-dom-dom-lofi',0,NULL,'b26a7ee2-0bac-4783-bb61-7c4783af9401','8c82c7bb-4bd0-4e6c-96de-8dd443cc79e3','',''),('9d7bd6bd-f588-4e7c-ad09-233714d44240','2024-10-10 11:54:19.000000','2025-05-22 18:02:08.000000','Nếu ngày ấy - lofi','https://res.cloudinary.com/dsi9ercdo/image/upload/v1728561254/o1x8wgzgqoccmfmea7cw.jpg',0,0,'https://res.cloudinary.com/dsi9ercdo/video/upload/v1728561257/fxh0gpknpcbgmnv6dn1e.mp3','active','neu-ngay-ay-lofi',0,NULL,'b26a7ee2-0bac-4783-bb61-7c4783af9401','8c82c7bb-4bd0-4e6c-96de-8dd443cc79e3','',''),('b7fdfefa-e06d-430a-8fe4-3b1760719b36','2024-10-10 11:56:32.000000','2025-05-22 18:02:04.000000','Tháng năm - lofi','https://res.cloudinary.com/dsi9ercdo/image/upload/v1728561382/lmufcrkvaxjj3tn3utof.jpg',0,2,'https://res.cloudinary.com/dsi9ercdo/video/upload/v1728561391/kaqrtwhlywkdjkz7srro.mp3','active','thang-nam-lofi',0,NULL,'b26a7ee2-0bac-4783-bb61-7c4783af9401','8c82c7bb-4bd0-4e6c-96de-8dd443cc79e3','',''),('bd886ac3-dea9-4918-8424-df1366b242c1','2024-10-10 11:57:19.000000','2025-05-22 18:02:04.000000','Kẻ điên tin vào tình yêu - lofi','https://res.cloudinary.com/dsi9ercdo/image/upload/v1728561425/obkif1i2bxyttrxrstky.jpg',0,0,'https://res.cloudinary.com/dsi9ercdo/video/upload/v1728561437/xink27jn6w9aivqd309r.mp3','active','ke-dien-tin-vao-tinh-yeu-lofi',0,NULL,'b26a7ee2-0bac-4783-bb61-7c4783af9401','8c82c7bb-4bd0-4e6c-96de-8dd443cc79e3','',''),('c703c8cd-907a-48bb-a4c7-1928adfea526','2024-10-10 11:51:08.000000','2025-05-22 18:02:09.000000','Dẫu có lỗi lầm - Lofi','https://res.cloudinary.com/dsi9ercdo/image/upload/v1728561058/j0374jdvmx7etwilspin.jpg',0,0,'https://res.cloudinary.com/dsi9ercdo/video/upload/v1728561067/mabwnyxevpnwwzyxppau.mp3','active','dau-co-loi-lam-lofi',0,NULL,'b26a7ee2-0bac-4783-bb61-7c4783af9401','8c82c7bb-4bd0-4e6c-96de-8dd443cc79e3','',''),('c7aa0703-ce61-4d5b-a5ad-2a66453afe9f','2024-09-16 13:56:32.000000','2025-05-22 18:02:16.000000','Âm thầm bên em','https://res.cloudinary.com/dsi9ercdo/image/upload/v1726494991/zgmsfz7vo3xnv4v4nijk.jpg',1,0,'https://res.cloudinary.com/dsi9ercdo/video/upload/v1726494989/ncrqymoweohwt7ehqqxr.mp3','active','am-tham-ben-em',0,NULL,'97248106-2c48-457b-8927-32054cef8873','8c82c7bb-4bd0-4e6c-96de-8dd443cc79e3','',''),('cede9c78-4a29-419e-9612-816a97346752','2024-10-10 12:00:06.000000','2025-05-22 18:02:01.000000','Chờ đợi có đáng sợ - lofi','https://res.cloudinary.com/dsi9ercdo/image/upload/v1728561600/ueridglfvv2qaq5ucoye.jpg',1,0,'https://res.cloudinary.com/dsi9ercdo/video/upload/v1728561605/rwh1rlw3uzfbvnt8itl4.mp3','active','cho-doi-co-dang-so-lofi',0,NULL,'b26a7ee2-0bac-4783-bb61-7c4783af9401','8c82c7bb-4bd0-4e6c-96de-8dd443cc79e3','',''),('d4ad8b1b-a82f-41c3-bc8f-85fe74a6a2c3','2024-09-17 06:12:58.000000','2025-05-22 18:02:16.000000','List nhạc Sơn Tùng lofi','https://res.cloudinary.com/dsi9ercdo/image/upload/v1726553556/k2sdnz97trtu2fpczg6c.jpg',1,0,'https://res.cloudinary.com/dsi9ercdo/video/upload/v1726553577/h7yjuaf49olwntilgq5q.mp3','active','list-nhac-son-tung-lofi',0,NULL,'97248106-2c48-457b-8927-32054cef8873','8c82c7bb-4bd0-4e6c-96de-8dd443cc79e3','Link nhạc từ youtube:\r\nhttps://www.youtube.com/watch?v=jejc5qMsDxY&ab_channel=Nguy%C3%AAnPMSD%3Fyer-1608',''),('d5db5b16-3e78-4eaf-b404-0d875fa689dd','2024-10-10 11:58:42.000000','2025-05-22 18:02:03.000000','Nợ ai đó lời xin lỗi - lofi','https://res.cloudinary.com/dsi9ercdo/image/upload/v1728561514/cbgryd0kid1lwczh24tq.jpg',0,0,'https://res.cloudinary.com/dsi9ercdo/video/upload/v1728561521/zkotkm91yhhz2x6ki1fr.mp3','active','no-ai-do-loi-xin-loi-lofi',0,NULL,'b26a7ee2-0bac-4783-bb61-7c4783af9401','8c82c7bb-4bd0-4e6c-96de-8dd443cc79e3','',''),('d9a53cf4-e224-477f-bc31-76f05f1c5a34','2024-10-10 12:00:48.000000','2025-05-22 18:02:00.000000','Như anh đã thấy em - lofi','https://res.cloudinary.com/dsi9ercdo/image/upload/v1728561641/xycdblpwzcrk5goqjdlc.jpg',2,4,'https://res.cloudinary.com/dsi9ercdo/video/upload/v1728561647/convijrfavkuxnljslut.mp3','active','nhu-anh-da-thay-em-lofi',0,NULL,'b26a7ee2-0bac-4783-bb61-7c4783af9401','8c82c7bb-4bd0-4e6c-96de-8dd443cc79e3','','');
/*!40000 ALTER TABLE `song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song_for_you`
--

DROP TABLE IF EXISTS `song_for_you`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `song_for_you` (
  `id` varchar(255) NOT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song_for_you`
--

LOCK TABLES `song_for_you` WRITE;
/*!40000 ALTER TABLE `song_for_you` DISABLE KEYS */;
INSERT INTO `song_for_you` VALUES ('c2125818-523d-4a80-8dc0-42564222d288','2024-11-17 02:53:01.000000','2025-04-30 13:17:17.000000');
/*!40000 ALTER TABLE `song_for_you` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song_for_you_list_song_song`
--

DROP TABLE IF EXISTS `song_for_you_list_song_song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `song_for_you_list_song_song` (
  `songForYouId` varchar(36) NOT NULL,
  `songId` varchar(36) NOT NULL,
  PRIMARY KEY (`songForYouId`,`songId`),
  KEY `IDX_8fe35e1c26f46b3f960d4123f2` (`songForYouId`),
  KEY `IDX_7c65b8b0c131a9e3dffdf74cd8` (`songId`),
  CONSTRAINT `FK_7c65b8b0c131a9e3dffdf74cd8f` FOREIGN KEY (`songId`) REFERENCES `song` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_8fe35e1c26f46b3f960d4123f2e` FOREIGN KEY (`songForYouId`) REFERENCES `song_for_you` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song_for_you_list_song_song`
--

LOCK TABLES `song_for_you_list_song_song` WRITE;
/*!40000 ALTER TABLE `song_for_you_list_song_song` DISABLE KEYS */;
INSERT INTO `song_for_you_list_song_song` VALUES ('c2125818-523d-4a80-8dc0-42564222d288','1c6c433a-586d-48b3-94ec-370d3c49661a'),('c2125818-523d-4a80-8dc0-42564222d288','4ad3835d-48ac-494a-80c9-47913b31bc5d'),('c2125818-523d-4a80-8dc0-42564222d288','4daa99c7-731c-4d4d-90fa-5f9a6ddf4aa8');
/*!40000 ALTER TABLE `song_for_you_list_song_song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topic`
--

DROP TABLE IF EXISTS `topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topic` (
  `id` varchar(255) NOT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `title` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL,
  `slug` varchar(255) NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `description` text NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_b4f72509919eef20d3f54eedc3` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topic`
--

LOCK TABLES `topic` WRITE;
/*!40000 ALTER TABLE `topic` DISABLE KEYS */;
INSERT INTO `topic` VALUES ('0c39c42f-6c62-4df9-8b7f-c577b7727f9a','2025-05-21 14:00:00.000000','2025-05-21 14:00:00.000000','Acoustic','https://backend.daca.vn/assets/images/acoustic.jpg','active','acoustic',0,''),('51f96747-6d5b-41f7-9a44-3fcf1b6b30e4','2025-05-21 14:00:00.000000','2025-05-21 14:00:00.000000','Remix','https://backend.daca.vn/assets/images/remix.jpg','active','remix',0,''),('5eac7d0e-4521-41ce-b4c4-42c19816f9d3','2025-05-21 14:00:00.000000','2025-05-21 14:00:00.000000','Bolero','https://backend.daca.vn/assets/images/bolero.jpg','active','bolero',0,''),('8c82c7bb-4bd0-4e6c-96de-8dd443cc79e3','2024-12-04 07:57:56.000000','2025-05-22 18:01:51.000000','Nhạc trẻ','https://res.cloudinary.com/dsi9ercdo/image/upload/v1733299075/wn5ir7y3dkd8jawnbt1k.png','active','nhac-tre',0,''),('9c5e1320-c460-43c3-89d7-3aeab64cb35a','2025-05-21 14:00:00.000000','2025-05-21 14:00:00.000000','Hip-Hop','https://backend.daca.vn/assets/images/hip-hop.jpg','active','hip-hop',0,''),('ba8722b6-23f4-4b8d-bbc7-19d24f50fdb5','2025-05-21 14:00:00.000000','2025-05-22 17:17:19.000000','Rock','https://backend.daca.vn/assets/images/rock.jpg','inactive','rock',0,'');
/*!40000 ALTER TABLE `topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` varchar(255) NOT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `fullName` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL DEFAULT 'https://res.cloudinary.com/dsi9ercdo/image/upload/v1731207669/oagc6qxabksf7lzv2wy9.jpg',
  `type` enum('SYSTEM','GITHUB','GOOGLE') NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `deletedAt` datetime DEFAULT NULL,
  `roleId` varchar(36) DEFAULT NULL,
  `singerIdId` varchar(36) DEFAULT NULL,
  `refreshToken` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_d72ea127f30e21753c9e229891` (`userId`),
  KEY `FK_c28e52f758e7bbc53828db92194` (`roleId`),
  KEY `FK_c79b947bd74e21899903bdda128` (`singerIdId`),
  CONSTRAINT `FK_c28e52f758e7bbc53828db92194` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_c79b947bd74e21899903bdda128` FOREIGN KEY (`singerIdId`) REFERENCES `singer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('98542df7-8be8-4051-a902-2092970cc592','2025-05-22 17:49:17.543544','2025-05-22 17:54:20.000000','Toàn Phạm dz',NULL,'phamductoan220704@gmail.com','GG_phamductoan220704@gmail.com','https://res.cloudinary.com/dsi9ercdo/image/upload/v1747911081/lnwstuyg6upydgbsmoyo.jpg','GOOGLE','active',0,NULL,'02d63450-f2ee-5b25-94df-cd52080c3798','0f49b49d-25c4-49ef-9efc-75343c76e821',''),('e691c4e7-1182-486b-8dd3-fe1ac352205f','2025-05-22 17:25:36.109360','2025-05-22 18:01:24.000000','Admin','$2a$10$e5U5kcxgbijwYcqT4sIhg.NB6cSlH3YzNjGLDBD5lErai1znCLmPq','abc@abc.com','admin','https://res.cloudinary.com/dsi9ercdo/image/upload/v1731207669/oagc6qxabksf7lzv2wy9.jpg','SYSTEM','active',0,NULL,'5550569a-cfb1-55d8-ac90-5fc77f489857','b26a7ee2-0bac-4783-bb61-7c4783af9401','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJ0b2tlbiBsb2dpbiIsImlzcyI6ImZyb20gc2VydmVyIiwidXNlcm5hbWUiOiJhYmNAYWJjLmNvbSIsInR5cGUiOiJTWVNURU0iLCJpYXQiOjE3NDc5MTE2ODQsImV4cCI6MTc0Nzk5ODA4NH0.8X3iowAmSzg-voEvbta6TZrBQtK0EvRuhZyNzfpaxWI'),('e85cd93d-d627-4140-978e-8e23bb2c4fb7','2025-04-23 11:20:29.101169','2025-05-22 17:59:32.000000','user A','$2a$10$L770TUq1daE0dQ.vY8zRaeisfaUM4DKlHKdm.8fhTsKo71mBjkml.','a@a.comm','a_a','https://res.cloudinary.com/dsi9ercdo/image/upload/v1731207669/oagc6qxabksf7lzv2wy9.jpg','SYSTEM','active',0,NULL,'5550569a-cfb1-55d8-ac90-5fc77f489857',NULL,'');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_list_favorite_song_song`
--

DROP TABLE IF EXISTS `user_list_favorite_song_song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_list_favorite_song_song` (
  `userId` varchar(36) NOT NULL,
  `songId` varchar(36) NOT NULL,
  PRIMARY KEY (`userId`,`songId`),
  KEY `IDX_af8584d5e047f815ae38194e07` (`userId`),
  KEY `IDX_333de6f16d2dcab090ebc86681` (`songId`),
  CONSTRAINT `FK_333de6f16d2dcab090ebc86681a` FOREIGN KEY (`songId`) REFERENCES `song` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_af8584d5e047f815ae38194e076` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_list_favorite_song_song`
--

LOCK TABLES `user_list_favorite_song_song` WRITE;
/*!40000 ALTER TABLE `user_list_favorite_song_song` DISABLE KEYS */;
INSERT INTO `user_list_favorite_song_song` VALUES ('98542df7-8be8-4051-a902-2092970cc592','1c6c433a-586d-48b3-94ec-370d3c49661a'),('98542df7-8be8-4051-a902-2092970cc592','48680179-1047-42e2-8641-8c994f4f1184'),('98542df7-8be8-4051-a902-2092970cc592','4ad3835d-48ac-494a-80c9-47913b31bc5d'),('98542df7-8be8-4051-a902-2092970cc592','4daa99c7-731c-4d4d-90fa-5f9a6ddf4aa8'),('98542df7-8be8-4051-a902-2092970cc592','cede9c78-4a29-419e-9612-816a97346752'),('98542df7-8be8-4051-a902-2092970cc592','d9a53cf4-e224-477f-bc31-76f05f1c5a34');
/*!40000 ALTER TABLE `user_list_favorite_song_song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_list_playlist_play_list`
--

DROP TABLE IF EXISTS `user_list_playlist_play_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_list_playlist_play_list` (
  `userId` varchar(36) NOT NULL,
  `playListId` varchar(36) NOT NULL,
  PRIMARY KEY (`userId`,`playListId`),
  KEY `IDX_8addf0c0b6f1e2c39e61b81d1d` (`userId`),
  KEY `IDX_a2dbfcd65dbd2370fdf4b61072` (`playListId`),
  CONSTRAINT `FK_8addf0c0b6f1e2c39e61b81d1d1` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_a2dbfcd65dbd2370fdf4b610720` FOREIGN KEY (`playListId`) REFERENCES `play_list` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_list_playlist_play_list`
--

LOCK TABLES `user_list_playlist_play_list` WRITE;
/*!40000 ALTER TABLE `user_list_playlist_play_list` DISABLE KEYS */;
INSERT INTO `user_list_playlist_play_list` VALUES ('98542df7-8be8-4051-a902-2092970cc592','1d83efc5-18a1-4dd2-bd7f-533684d62643');
/*!40000 ALTER TABLE `user_list_playlist_play_list` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-24 22:18:55
