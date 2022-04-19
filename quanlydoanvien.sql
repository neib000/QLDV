-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: quanlydoanvien
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `chidoan`
--

DROP TABLE IF EXISTS `chidoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chidoan` (
  `Machidoan` int NOT NULL,
  `Tenchidoan` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Makhoa` int DEFAULT NULL,
  `Trangthai` tinyint(1) DEFAULT '1',
  `Chidoantruong` char(10) DEFAULT NULL,
  PRIMARY KEY (`Machidoan`),
  KEY `FK_CHIDOAN_KHOA` (`Makhoa`),
  CONSTRAINT `FK_CHIDOAN_KHOA` FOREIGN KEY (`Makhoa`) REFERENCES `khoa` (`Makhoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chidoan`
--

LOCK TABLES `chidoan` WRITE;
/*!40000 ALTER TABLE `chidoan` DISABLE KEYS */;
INSERT INTO `chidoan` VALUES (1,'18DTHA1',1,1,'CNTT'),(2,'18DTHA2',1,1,'CNTT'),(3,'19DATA3',2,1,'CNTT'),(4,'19DDLA4',3,1,'ATTT'),(5,'17DKSA5',11,1,'ATTT'),(6,'17DTPA6',13,1,'ATTT'),(999,'Chi đoàn khoa',NULL,1,NULL),(1000,'Chi đoàn trường',NULL,1,NULL);
/*!40000 ALTER TABLE `chidoan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chucvu`
--

DROP TABLE IF EXISTS `chucvu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chucvu` (
  `Machucvu` int NOT NULL,
  `Tenchucvu` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Trangthai` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Machucvu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chucvu`
--

LOCK TABLES `chucvu` WRITE;
/*!40000 ALTER TABLE `chucvu` DISABLE KEYS */;
INSERT INTO `chucvu` VALUES (1,'BTDT',1),(2,'BTDK',1),(3,'BTCD',1),(4,'DV',1);
/*!40000 ALTER TABLE `chucvu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ct_hoatdong`
--

DROP TABLE IF EXISTS `ct_hoatdong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ct_hoatdong` (
  `MaHD` int NOT NULL,
  `MaTK` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `NgayThamgia` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NgayKetThuc` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`MaHD`,`MaTK`),
  KEY `FK_CT_HOATDONG_TAIKHOAN` (`MaTK`),
  CONSTRAINT `FK_CT_HOATDONG_HOATDONG` FOREIGN KEY (`MaHD`) REFERENCES `hoatdong` (`MaHD`),
  CONSTRAINT `FK_CT_HOATDONG_TAIKHOAN` FOREIGN KEY (`MaTK`) REFERENCES `taikhoan` (`MaTK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ct_hoatdong`
--

LOCK TABLES `ct_hoatdong` WRITE;
/*!40000 ALTER TABLE `ct_hoatdong` DISABLE KEYS */;
INSERT INTO `ct_hoatdong` VALUES (3,'1811063001','17/06/2020','01/07/2020'),(3,'1811063002','17/06/2020','01/07/2020'),(3,'1811063016','17/06/2020','01/07/2020'),(8,'1811063001','17/06/2020','01/07/2020'),(8,'1811063003','17/06/2020','01/07/2020'),(8,'1811063016','17/06/2020','01/07/2020'),(8,'1811063017','17/06/2020','01/07/2020'),(8,'1811063031','17/06/2020','01/07/2020'),(8,'1811063032','17/06/2020','01/07/2020'),(9,'1811063001','17/06/2020','01/07/2020'),(9,'1811063003','17/06/2020','01/07/2020'),(9,'1811063016','17/06/2020','01/07/2020'),(9,'1811063031','17/06/2020','01/07/2020'),(9,'1811063032','17/06/2020','01/07/2020'),(10,'1811063016','17/06/2020','01/07/2020'),(10,'1811063018','17/06/2020','01/07/2020'),(10,'1811063033','17/06/2020','01/07/2020');
/*!40000 ALTER TABLE `ct_hoatdong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diemdv`
--

DROP TABLE IF EXISTS `diemdv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diemdv` (
  `IdPhieu_TC` int NOT NULL,
  `MaTK` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Sodiem` int DEFAULT NULL,
  `Machucvu` int NOT NULL,
  PRIMARY KEY (`IdPhieu_TC`,`MaTK`,`Machucvu`),
  KEY `FK_DIEMDV_TAIKHOAN` (`MaTK`),
  CONSTRAINT `FK_DIEMDV_TAIKHOAN` FOREIGN KEY (`MaTK`) REFERENCES `taikhoan` (`MaTK`),
  CONSTRAINT `FK_DIEMDV_TieuChi_DiemRenLuyen` FOREIGN KEY (`IdPhieu_TC`) REFERENCES `tieuchi_diemrenluyen` (`IdPhieu_TC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diemdv`
--

LOCK TABLES `diemdv` WRITE;
/*!40000 ALTER TABLE `diemdv` DISABLE KEYS */;
INSERT INTO `diemdv` VALUES (1,'1811063001',9,1),(1,'1811063001',9,2),(1,'1811063001',9,3),(1,'1811063001',9,4),(2,'1811063001',8,1),(2,'1811063001',8,2),(2,'1811063001',8,3),(2,'1811063001',8,4),(3,'1811063001',9,1),(3,'1811063001',9,2),(3,'1811063001',9,3),(3,'1811063001',9,4),(4,'1811063001',7,1),(4,'1811063001',7,2),(4,'1811063001',7,3),(4,'1811063001',7,4),(5,'1811063001',8,1),(5,'1811063001',8,2),(5,'1811063001',8,3),(5,'1811063001',8,4),(6,'1811063001',6,1),(6,'1811063001',6,2),(6,'1811063001',6,3),(6,'1811063001',6,4),(7,'1811063001',9,1),(7,'1811063001',9,2),(7,'1811063001',9,3),(7,'1811063001',9,4),(8,'1811063001',8,1),(8,'1811063001',8,2),(8,'1811063001',8,3),(8,'1811063001',8,4),(9,'1811063001',7,1),(9,'1811063001',7,2),(9,'1811063001',7,3),(9,'1811063001',7,4),(10,'1811063001',9,1),(10,'1811063001',9,2),(10,'1811063001',9,3),(10,'1811063001',9,4),(11,'1811063001',6,1),(11,'1811063001',10,2),(11,'1811063001',3,3),(11,'1811063001',4,4),(11,'1811063002',3,1),(11,'1811063002',5,2),(11,'1811063002',3,3),(11,'1811063002',6,4),(11,'1811063016',4,2),(11,'1811063031',3,2),(11,'1811063032',4,3),(11,'1811063033',3,3),(12,'1811063001',6,1),(12,'1811063001',10,2),(12,'1811063001',5,3),(12,'1811063001',3,4),(12,'1811063002',4,1),(12,'1811063002',4,2),(12,'1811063002',4,3),(12,'1811063002',3,4),(12,'1811063016',4,2),(12,'1811063031',4,2),(12,'1811063032',2,3),(12,'1811063033',6,3),(13,'1811063001',6,1),(13,'1811063001',3,2),(13,'1811063001',6,3),(13,'1811063001',6,4),(13,'1811063002',5,1),(13,'1811063002',4,2),(13,'1811063002',5,3),(13,'1811063002',2,4),(13,'1811063016',4,2),(13,'1811063031',5,2),(13,'1811063032',3,3),(13,'1811063033',7,3),(14,'1811063001',3,1),(14,'1811063001',7,2),(14,'1811063001',6,3),(14,'1811063001',2,4),(14,'1811063002',6,1),(14,'1811063002',5,2),(14,'1811063002',6,3),(14,'1811063002',3,4),(14,'1811063016',3,2),(14,'1811063031',5,2),(14,'1811063032',5,3),(14,'1811063033',8,3),(15,'1811063001',4,1),(15,'1811063001',5,2),(15,'1811063001',6,3),(15,'1811063001',3,4),(15,'1811063002',7,1),(15,'1811063002',2,2),(15,'1811063002',7,3),(15,'1811063002',2,4),(15,'1811063016',2,2),(15,'1811063031',6,2),(15,'1811063032',6,3),(15,'1811063033',6,3),(16,'1811063001',5,1),(16,'1811063001',5,2),(16,'1811063001',6,3),(16,'1811063001',2,4),(16,'1811063002',5,1),(16,'1811063002',3,2),(16,'1811063002',8,3),(16,'1811063002',3,4),(16,'1811063016',4,2),(16,'1811063031',6,2),(16,'1811063032',4,3),(16,'1811063033',5,3),(17,'1811063001',5,1),(17,'1811063001',6,2),(17,'1811063001',6,3),(17,'1811063001',3,4),(17,'1811063002',5,1),(17,'1811063002',5,2),(17,'1811063002',6,3),(17,'1811063002',2,4),(17,'1811063016',5,2),(17,'1811063031',7,2),(17,'1811063032',2,3),(17,'1811063033',5,3),(18,'1811063001',5,1),(18,'1811063001',1,2),(18,'1811063001',6,3),(18,'1811063001',4,4),(18,'1811063002',5,1),(18,'1811063002',4,2),(18,'1811063002',4,3),(18,'1811063002',7,4),(18,'1811063016',6,2),(18,'1811063031',4,2),(18,'1811063032',4,3),(18,'1811063033',3,3),(19,'1811063001',1,1),(19,'1811063001',4,2),(19,'1811063001',6,3),(19,'1811063001',5,4),(19,'1811063002',4,1),(19,'1811063002',4,2),(19,'1811063002',7,3),(19,'1811063002',8,4),(19,'1811063016',2,2),(19,'1811063031',5,2),(19,'1811063032',6,3),(19,'1811063033',6,3),(20,'1811063001',3,1),(20,'1811063001',3,2),(20,'1811063001',6,3),(20,'1811063001',3,4),(20,'1811063002',3,1),(20,'1811063002',3,2),(20,'1811063002',6,3),(20,'1811063002',3,4),(20,'1811063016',3,2),(20,'1811063031',6,2),(20,'1811063032',4,3),(20,'1811063033',5,3);
/*!40000 ALTER TABLE `diemdv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doanphi`
--

DROP TABLE IF EXISTS `doanphi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doanphi` (
  `Maphieu` int NOT NULL,
  `Madoanvien` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Namhoc` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Trangthai` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Maphieu`),
  KEY `FK_DOANPHI_TAIKHOAN` (`Madoanvien`),
  CONSTRAINT `FK_DOANPHI_TAIKHOAN` FOREIGN KEY (`Madoanvien`) REFERENCES `taikhoan` (`MaTK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doanphi`
--

LOCK TABLES `doanphi` WRITE;
/*!40000 ALTER TABLE `doanphi` DISABLE KEYS */;
INSERT INTO `doanphi` VALUES (1,'1811063001','2020',1),(2,'1811063002','2020',1),(3,'1811063003','2020',1),(4,'1811063004','2020',1),(5,'1811063005','2020',1),(6,'1811063016','2020',1),(7,'1811063017','2020',1),(8,'1811063018','2020',1),(9,'1811063019','2020',1),(10,'1811063020','2020',1),(11,'1811063031','2020',1),(12,'1811063032','2020',1),(13,'1811063033','2020',1),(14,'1811063034','2020',1),(15,'1811063035','2020',1),(16,'1811063001','2021',1),(17,'1811063002','2021',0),(18,'1811063003','2021',1),(19,'1811063004','2021',0),(20,'1811063005','2021',1),(21,'1811063016','2021',0),(22,'1811063017','2021',1),(23,'1811063018','2021',0),(24,'1811063019','2021',1),(25,'1811063020','2021',0),(26,'1811063031','2021',1),(27,'1811063032','2021',0),(28,'1811063033','2021',1),(29,'1811063034','2021',0),(30,'1811063035','2021',1);
/*!40000 ALTER TABLE `doanphi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoatdong`
--

DROP TABLE IF EXISTS `hoatdong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoatdong` (
  `MaHD` int NOT NULL,
  `TenHD` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Ngaytao` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Trangthai` tinyint(1) DEFAULT '1',
  `Slug` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Hinhanh` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`MaHD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoatdong`
--

LOCK TABLES `hoatdong` WRITE;
/*!40000 ALTER TABLE `hoatdong` DISABLE KEYS */;
INSERT INTO `hoatdong` VALUES (1,'Mùa Hè Xanh',NULL,1,'hd-1',''),(2,'Hiến Máu Nhân Đạo',NULL,1,'hd-2',''),(3,'Hỗ Trợ Đồng Bào Miền Trung','15/06/2020',0,'hd-3',''),(4,'Phát Cơm Từ Thiện',NULL,1,'hd-4',''),(5,'Xây Nhà Tình Thương',NULL,1,'hd-5',''),(6,'Kéo Xe Tăng Chống Ngập Nước',NULL,1,'hd-6',''),(7,'Phân Làn Đường',NULL,1,'hd-7',''),(8,'Mua Cá Koi','15/06/2020',0,'hd-8',''),(9,'Tặng Sách Cho Thư Viện','15/06/2020',0,'hd-9',''),(10,'Gây Quỹ Từ Thiện',NULL,1,'hd-10',NULL);
/*!40000 ALTER TABLE `hoatdong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hocky`
--

DROP TABLE IF EXISTS `hocky`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hocky` (
  `MaHK` char(10) NOT NULL,
  `Namhoc` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TenHK` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`MaHK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hocky`
--

LOCK TABLES `hocky` WRITE;
/*!40000 ALTER TABLE `hocky` DISABLE KEYS */;
INSERT INTO `hocky` VALUES ('2020A','2020','Học Kì 1 2020'),('2020B','2020','Học Kì 2 2020'),('2021A','2021','Học Kì 1 2021');
/*!40000 ALTER TABLE `hocky` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khoa`
--

DROP TABLE IF EXISTS `khoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khoa` (
  `Makhoa` int NOT NULL,
  `TenKhoa` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `SDT` char(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Trangthai` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`Makhoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khoa`
--

LOCK TABLES `khoa` WRITE;
/*!40000 ALTER TABLE `khoa` DISABLE KEYS */;
INSERT INTO `khoa` VALUES (1,'Công nghệ thông tin','001',1),(2,'An toàn thông tin','002',1),(3,'Khoa học dữ liệu','003',1),(4,'Hệ thống thông tin quản lý','004',1),(5,'Robot & trí tuệ nhân tạo','005',1),(6,'Công nghệ kỹ thuật ô tô','006',1),(7,'Kỹ thuật điều khiển và tự động hóa','007',1),(8,'Kỹ thuật cơ khí','008',1),(9,'Kỹ thuật cơ điện tử','009',1),(10,'Kỹ thuật điện','010',1),(11,'Quản trị khách sạn','011',1),(12,'Dược học','012',1),(13,'Công nghệ thực phẩm','013',1),(14,'Công nghệ sinh học','014',1),(15,'Thú y','015',1);
/*!40000 ALTER TABLE `khoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loaidiem`
--

DROP TABLE IF EXISTS `loaidiem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loaidiem` (
  `Maloaidiem` int NOT NULL,
  `Tengoi` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`Maloaidiem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaidiem`
--

LOCK TABLES `loaidiem` WRITE;
/*!40000 ALTER TABLE `loaidiem` DISABLE KEYS */;
INSERT INTO `loaidiem` VALUES (49,'Yếu'),(50,'Trung Bình'),(70,'Khá'),(90,'Xuất sắc');
/*!40000 ALTER TABLE `loaidiem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieu_drl`
--

DROP TABLE IF EXISTS `phieu_drl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieu_drl` (
  `Maphieu` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Ngaytao` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `MaHK` char(10) DEFAULT NULL,
  PRIMARY KEY (`Maphieu`),
  KEY `FK_PHIEU_DRL_HOCKY` (`MaHK`),
  CONSTRAINT `FK_PHIEU_DRL_HOCKY` FOREIGN KEY (`MaHK`) REFERENCES `hocky` (`MaHK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieu_drl`
--

LOCK TABLES `phieu_drl` WRITE;
/*!40000 ALTER TABLE `phieu_drl` DISABLE KEYS */;
INSERT INTO `phieu_drl` VALUES ('dv01',NULL,'2020B'),('dv02',NULL,'2021A'),('dv03',NULL,'2020A'),('dv04',NULL,NULL),('dv05',NULL,NULL),('dv06',NULL,NULL),('dv07',NULL,NULL),('dv08',NULL,NULL),('dv09',NULL,NULL),('dv10',NULL,NULL);
/*!40000 ALTER TABLE `phieu_drl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sysdiagrams`
--

DROP TABLE IF EXISTS `sysdiagrams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sysdiagrams` (
  `name` varchar(160) NOT NULL,
  `principal_id` int NOT NULL,
  `diagram_id` int NOT NULL,
  `version` int DEFAULT NULL,
  `definition` longblob,
  PRIMARY KEY (`diagram_id`),
  UNIQUE KEY `UK_principal_name` (`principal_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sysdiagrams`
--

LOCK TABLES `sysdiagrams` WRITE;
/*!40000 ALTER TABLE `sysdiagrams` DISABLE KEYS */;
/*!40000 ALTER TABLE `sysdiagrams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taikhoan`
--

DROP TABLE IF EXISTS `taikhoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taikhoan` (
  `MaTK` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Machucvu` int NOT NULL,
  `Hoten` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Ngaysinh` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Gioitinh` tinyint(1) DEFAULT NULL,
  `Dantoc` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TheDoan` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `SoDoan` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Khaitru` tinyint(1) DEFAULT '1',
  `Machidoan` int DEFAULT NULL,
  `Diachi` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `SDT` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password` char(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`MaTK`),
  KEY `FK_TAIKHOAN_CHIDOAN` (`Machidoan`),
  KEY `FK_TAIKHOAN_CHUCVU` (`Machucvu`),
  CONSTRAINT `FK_TAIKHOAN_CHIDOAN` FOREIGN KEY (`Machidoan`) REFERENCES `chidoan` (`Machidoan`),
  CONSTRAINT `FK_TAIKHOAN_CHUCVU` FOREIGN KEY (`Machucvu`) REFERENCES `chucvu` (`Machucvu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taikhoan`
--

LOCK TABLES `taikhoan` WRITE;
/*!40000 ALTER TABLE `taikhoan` DISABLE KEYS */;
INSERT INTO `taikhoan` VALUES ('1811063001',4,'Trần Bảo Duy','27/12/2001',1,'Kinh','01',NULL,1,1,'Lô E2B4, Đường dD1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0945510931','$2a$10$XnJeaanihyyShsx0.1oC4OtnZevVYjWPhmJ3QWDgwjZYZoWbg4zju'),('1811063002',4,'Trần Văn Thanh','28/12/2001',1,'Kinh','02',NULL,1,1,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0945510831','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063003',4,'Lê Đức Anh','29/12/2001',1,'Kinh','03',NULL,1,1,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0945510931','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063004',4,'Nguyễn Minh Tuấn','18/02/2002',1,'Kinh','04',NULL,1,1,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0945010931','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063005',4,'Nguyễn Duy Dương','19/02/2002',1,'Kinh','05',NULL,1,1,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0945410931','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063006',4,'Phan Duy Tuấn','20/02/2002',1,'Kinh','06',NULL,1,1,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0845410931','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063007',4,'Trần Hân Nhi','21/02/2002',1,'Kinh','07',NULL,1,1,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0848410931','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063008',4,'Nguyễn Tuấn Khang','22/02/2002',1,'Kinh','08',NULL,1,1,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0848420931','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063009',4,'Nguyễn Hữu Sang','23/02/2002',1,'Kinh','09',NULL,1,1,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0848499931','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063010',4,'Tô Trung Hiếu','24/02/2002',1,'Kinh','10',NULL,1,1,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0648499931','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063011',4,'Trương Trần Lê Nam','25/02/2002',1,'Kinh','11',NULL,1,1,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0658499931','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063012',4,'Nguyễn Việt Hoàng','26/02/2002',1,'Kinh','12',NULL,1,1,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0658489931','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063013',4,'Nguyễn Gia Huy','27/02/2002',1,'Kinh','13',NULL,1,1,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0658789931','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063014',4,'Phan Văn Khải','28/02/2002',1,'Kinh','14',NULL,1,1,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0657789931','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063015',4,'Trương Hồng Thạch Châu','04/10/1999',1,'H\'Mong','15',NULL,1,1,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0657489931','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063016',4,'Nguyễn Bá Lâm','04/10/1998',1,'Kinh','16',NULL,1,2,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0657489931','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063017',4,'Huỳnh Kim Bảo Phúc','29/08/2002',1,'Kinh','17',NULL,1,2,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0657489931','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063018',4,'Nguyễn Khánh Thuận','03/02/2002',1,'Kinh','18',NULL,1,2,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0657489931','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063019',4,'Phạm Minh ThôngPhạm Minh Thông','10/08/2002',1,'Kinh','19',NULL,1,2,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0657489931','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063020',4,'Nguyễn Phú Hưng','10/09/2002',1,'Kinh','20',NULL,1,2,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0657489933','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063021',4,'Vũ Mai Kha\r\n','11/09/2002',0,'Kinh','21',NULL,1,2,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0657489934','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063022',4,'Nguyễn Cao Hoàng Thắng\r\n','11/09/2001',1,'Kinh','22',NULL,1,2,'366/31/31 Nguyễn Trãi\r\n','0981811006\r\n','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063023',4,'Nguyễn Vũ Huy Hoàng\r\n','30/07/2001',1,'Kinh','23',NULL,1,2,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0657489931','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063024',4,'Hồ Hoàng An\r\n','11/09/2002',1,'Kinh','24',NULL,1,2,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0657489933','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063025',4,'Phùng Quốc Đại\r\n','04/10/1999',1,'Kinh','25',NULL,1,2,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0657489931','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063026',4,'Nguyễn Văn Trường Vũ\r\n','25/02/2002',1,'Kinh','26',NULL,1,2,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0848410931','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063027',4,'Trà Quốc Huy\r\n','25/04/2002',1,'Kinh','27',NULL,1,2,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0658499931','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063028',4,'Bùi Phụ Hiếu\r\n','18/06/2002',1,'Kinh','28',NULL,1,2,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0945010931','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063029',4,'Phan Đình Ngọc\r\n','23/02/2002',1,'Kinh','29',NULL,1,2,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0848499931','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063030',4,'Lương Phúc Minh Duy\r\n','30/03/2002',1,'Kinh','30',NULL,1,2,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0658489931','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063031',4,'Lê Tuấn\r\n','19/02/1999',1,'Kinh','31',NULL,1,4,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0945460931','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063032',4,'Quàng Thanh Hà\r\n','27/12/2001',1,'Kinh','32',NULL,1,3,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0943310931','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063033',4,'Đào Khắc Vương\r\n','16/10/2002',1,'Tày','33',NULL,1,3,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0911643744\r\n','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063034',4,'Phạm Thị Phương Linh',' 14/02/2002',1,'Nùng','34',NULL,1,3,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0986788699','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063035',4,'Nguyễn Thanh Bão',' 14/07/2002',1,'Kinh','35',NULL,1,3,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0986788699','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063036',4,'Quàng Thanh Hà\r\n','26/05/2002',1,'Kinh','36',NULL,1,3,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0986788566','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063037',4,'Nguyễn Hà Thanh Ân\r\n',' 14/07/2002',0,'Kinh','37',NULL,1,3,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0984588699','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063038',4,'Nguyễn Mạnh Hùng\r\n','26/07/2001',1,'Kinh','38',NULL,1,3,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0986788699','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063039',4,'Lương Phúc Minh Duy\r\n',' 14/04/2002',1,'Kinh','39',NULL,1,3,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0945688699','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063040',4,'Nguyễn Khánh Thuận\r\n','16/02/2002',1,'Nùng','40',NULL,1,3,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0984598559','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063041',4,'Trà Quốc Huy\r\n',' 16/07/2002',1,'Kinh','41',NULL,1,3,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0986788699','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063042',4,'Lương Công Luật\r\n',' 22/09/2002',1,'Kinh','42',NULL,1,3,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0986784589','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063043',4,'Trần Hân Nhi\r\n','26/09/2002',0,'Kinh','43',NULL,1,3,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0986566699','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063044',4,'Nguyễn Quang Minh','1/02/2000',1,'Kinh','44',NULL,1,3,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0562223365','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('1811063045',4,'Nguyễn Thanh Tâm','26/07/2002',1,'Kinh','45',NULL,1,3,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0986788699','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('18DATA3',3,'Nguyễn Quang Minh','1/02/2000',1,'Kinh','44',NULL,1,3,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0562223365','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('18DTHA1',3,'Trần Bảo Duy','27/12/2001',1,'Kinh','01',NULL,1,1,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0945510931','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('18DTHA2',3,'Nguyễn Bá Lâm','04/10/1998',1,'Kinh','16',NULL,1,2,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0657489931','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('ATTT',2,'Nguyễn Thanh Nam','01/01/1998',1,'Kinh','ATTT',NULL,1,999,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0978793308','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('CNTT',2,'Nguyễn Thanh Đăng','11/03/1998',1,'Kinh','00',NULL,1,999,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','  0986788689','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi'),('HUTECH',1,'Nguyễn Gia Huy','01/01/1990',1,'Kinh','000',NULL,1,1000,'Lô E2B4, Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí Minh','0984332288','$2a$12$vpYK7rfdKeELO6RmDF73RusA3ltGgDv9kqhlWApqqO5oO4kCyDLEi');
/*!40000 ALTER TABLE `taikhoan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tieuchi`
--

DROP TABLE IF EXISTS `tieuchi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tieuchi` (
  `MaTC` int NOT NULL,
  `ND` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `MucDiem` int DEFAULT NULL,
  `Trangthai` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`MaTC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tieuchi`
--

LOCK TABLES `tieuchi` WRITE;
/*!40000 ALTER TABLE `tieuchi` DISABLE KEYS */;
INSERT INTO `tieuchi` VALUES (1,'Có tinh thần yêu nước, yêu trường lớp, tích cực trong hoạt động sinh hoạt lớp, sinh hoạt Đoàn',10,1),(2,'Chấp hành pháp luật, đồng thời vận động gia đình, bạn bè cùng thực hiện tốt; thực hiện tốt nội quy Nhà trường, điều lệ Đoàn.',10,1),(3,'Có thái độ học tập tích cực, đi học đúng giờ, đóng góp xây dựng bài, không vi phạm quy chế học tập, quy chế thi cử. (0 – 10 điểm)',10,1),(4,'Tích cực tham gia các hoạt động văn hóa, văn nghệ, thể dục thể thao',10,1),(5,'Tích cực tham gia các hoạt động tình nguyện (Mùa hè xanh, Xuân tình nguyện, Hiến máu tình nguyện, các hoạt động bảo vệ môi trường…); Không xả rác bừa bãi và tự nguyện nhặt rác',10,1),(6,'Tích cực chủ động trang bị những kỹ năng, nâng cao trình độ ngoại ngữ, tin  học; đăng ký tham gia phong trào “sinh viên 5 tốt”',10,1),(7,'Tham dự đầy đủ, tích cực và tham gia đóng góp ý kiến trong sinh hoạt chi đoàn và các hoạt động do tổ chức Đoàn các cấp tổ chức, đóng đoàn phí đầy đủ. Chấp hành sự phân công của Ban chấp hành chi đoàn và Đoàn cấp trên.',10,1),(8,'Rèn luyện về nhận thức về chính trị, đạo đức lối sống',10,1),(9,'Rèn luyện về chuyên môn, nghiệp vụ, tinh thần tình nguyện',10,1),(10,'Rèn luyện về sức khỏe, kỹ năng thực hành xã hội',10,1);
/*!40000 ALTER TABLE `tieuchi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tieuchi_diemrenluyen`
--

DROP TABLE IF EXISTS `tieuchi_diemrenluyen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tieuchi_diemrenluyen` (
  `IdPhieu_TC` int NOT NULL,
  `Maphieu` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MaTC` int NOT NULL,
  PRIMARY KEY (`IdPhieu_TC`),
  KEY `FK_TieuChi_DiemRenLuyen_PHIEU_DRL` (`Maphieu`),
  KEY `FK_TieuChi_DiemRenLuyen_TIEUCHI` (`MaTC`),
  CONSTRAINT `FK_TieuChi_DiemRenLuyen_PHIEU_DRL` FOREIGN KEY (`Maphieu`) REFERENCES `phieu_drl` (`Maphieu`),
  CONSTRAINT `FK_TieuChi_DiemRenLuyen_TIEUCHI` FOREIGN KEY (`MaTC`) REFERENCES `tieuchi` (`MaTC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tieuchi_diemrenluyen`
--

LOCK TABLES `tieuchi_diemrenluyen` WRITE;
/*!40000 ALTER TABLE `tieuchi_diemrenluyen` DISABLE KEYS */;
INSERT INTO `tieuchi_diemrenluyen` VALUES (1,'dv01',1),(2,'dv01',2),(3,'dv01',3),(4,'dv01',4),(5,'dv01',5),(6,'dv01',6),(7,'dv01',7),(8,'dv01',8),(9,'dv01',9),(10,'dv01',10),(11,'dv02',1),(12,'dv02',2),(13,'dv02',3),(14,'dv02',4),(15,'dv02',5),(16,'dv02',6),(17,'dv02',7),(18,'dv02',8),(19,'dv02',9),(20,'dv02',10);
/*!40000 ALTER TABLE `tieuchi_diemrenluyen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tintuc`
--

DROP TABLE IF EXISTS `tintuc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tintuc` (
  `Matin` int NOT NULL,
  `TenND` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Loai` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Ngaytao` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Ngaydang` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Noidung` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Hinhanh` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Trangthai` tinyint(1) DEFAULT NULL,
  `slug` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Nguoitao` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`Matin`),
  KEY `FK_TINTUC_TAIKHOAN` (`Nguoitao`),
  CONSTRAINT `FK_TINTUC_TAIKHOAN` FOREIGN KEY (`Nguoitao`) REFERENCES `taikhoan` (`MaTK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tintuc`
--

LOCK TABLES `tintuc` WRITE;
/*!40000 ALTER TABLE `tintuc` DISABLE KEYS */;
INSERT INTO `tintuc` VALUES (1,'Nhiều vấn đề “nóng” được sinh viên nêu lên tại diễn đàn “HUTECH Youth Speech 2022”','Tintuc',NULL,NULL,'Chiều 22/4 vừa qua, Đoàn viên, sinh viên Trường Đại học Công nghệ TP.HCM (HUTECH) đã có cuộc gặp gỡ, đối thoại cùng lãnh đạo Nhà trường trong khuôn khổ diễn đàn “HUTECH Youth Speech 2021” và Tuyên dương cán bộ Đoàn - Hội tiêu biểu tại Trụ sở 475A Điện Biên Phủ.\r\n\r\nChương trình do Đoàn Thanh niên - Hội Sinh viên HUTECH tổ chức nhằm tạo nhịp cầu đối thoại giữa cho các bạn cán bộ Đoàn - Hội, các bạn sinh viên đang phấn đấu, rèn luyện theo tiêu chí Sinh viên 5 tốt,... và các lãnh đạo Nhà trường, kịp thời lắng nghe tâm tư, nguyện vọng của sinh viên và có những biện pháp hỗ trợ phù hợp, thiết thực cho các bạn.','tin-tuc1.jpg',1,'tin-tuc-1','HUTECH'),(2,'MTV Bus đưa dàn ca sĩ, rapper được yêu mến đến với sinh viên HUTECH','Tintuc',NULL,NULL,'Tối qua (26/4), “MTV Skool Tour” đã “đổ bộ” Trường Đại học Công nghệ TP.HCM (HUTECH). Đây là chương trình do MTV Việt Nam tổ chức với sự tham gia của nhiều nghệ sĩ trẻ được yêu thích như Uni5, Ricky Star, Yuno BigBoi,...\r\n \r\nBên cạnh đó, chương trình MTV Skool Tour tại HUTECH tối qua còn có sự góp mặt của ca sĩ - nhạc sĩ Sỹ Luân - Giám đốc Trung tâm Văn hóa Nghệ thuật HUTECH. Ca sĩ - nhạc sĩ Sỹ Luân cũng là người mở đầu chương trình với các tiết mục acoustic kết hợp với thành viên CLB Thanh nhạc HUTECH và CLB Guitar HUTECH.\r\n ','tin-tuc2.jpg',1,'tin-tuc-2','HUTECH'),(3,'HUTECH’s Portrait - Những người bạn “giữ lửa” ở tập thể dẫn đầu công tác Đoàn toàn trường năm học 2021-2022','Tintuc',NULL,NULL,'HUTECH’s Portrait - Những người bạn “giữ lửa” ở tập thể dẫn đầu công tác Đoàn toàn trường năm học 2019-2020\r\n 01/04/2021\r\n   \r\n\r\nTrong Lễ kỷ niệm 90 năm ngày thành lập Đoàn TNCS Hồ Chí Minh vào ngày 26/3 của Trường Đại học Công nghệ TP.HCM (HUTECH), Đoàn Khoa Quản trị kinh doanh (QTKD) xuất sắc nhận Cờ thi đua Đoàn khoa dẫn đầu công tác Đoàn và phong trào sinh viên toàn trường năm học 2019-2020.\r\n ','tin-tuc3.jpg',1,'tin-tuc-3','HUTECH'),(4,'[SINH VIÊN 5 TỐT] LỚP TIẾNG ANH B1 VÀ LỚP CHUYÊN ĐỀ KỸ NĂNG DÀNH CHO NGUỒN \"SINH VIÊN 5 TỐT\" 2021 - 2022','Tintuc',NULL,NULL,'[SINH VIÊN 5 TỐT] LỚP TIẾNG ANH B1 VÀ LỚP CHUYÊN ĐỀ KỸ NĂNG DÀNH CHO NGUỒN \"SINH VIÊN 5 TỐT\" 2020 - 2021','tin-tuc4.jpg',1,'tin-tuc-4','HUTECH'),(5,'Sinh viên Viện Khoa học Xã hội & Nhân văn tìm hiểu nghệ thuật ngoại giao Đại Việt tại Bảo tàng Lịch sử Việt Nam','Tintuc',NULL,NULL,'Ngày 24/4 vừa qua, ngành Quan hệ quốc tế (Viện Khoa học Xã hội và Nhân văn Trường Đại học Công nghệ TP. HCM (HUTECH)) đã tổ chức chuyến tham quan Bảo tàng Lịch sử Việt Nam với chủ đề “Ngoại giao Đại Việt” dành cho các bạn sinh viên.\r\n \r\nBảo tàng Lịch sử Việt Nam tại TP. HCM tọa lạc tại số 2 đường Nguyễn Bỉnh Khiêm (quận 1), là nơi lưu trữ và trưng bày hơn 40.000 cổ vật trải dài suốt các triều đại phong kiến của nước ta.','tin-tuc5.jpg',NULL,'tin-tuc-5','HUTECH'),(6,'Sinh viên Viện Khoa học Ứng dụng HUTECH tích lũy kiến thức thực tế qua chuỗi hội thảo chuyên ngành bổ ích','Tintuc',NULL,NULL,'Vừa qua, sinh viên Viện Khoa học Ứng dụng Trường Đại học Công nghệ TP.HCM (HUTECH) đã có dịp tích lũy nhiều kiến thức thực tế thú vị qua các Hội thảo “Vi nhựa trong nước và trầm tích sông Sài Gòn - Đồng Nai nguy cơ đến sức khoẻ người dân” và “GRAC - Mô hình quản lý rác thải thông minh thời 4.0”.\r\n \r\nDiễn ra ngày 27/4 vừa qua, Hội thảo “Vi nhựa trong nước và trầm tích sông Sài Gòn - Đồng Nai nguy cơ đến sức khoẻ người dân” có sự tham gia của PGS.TS. Thái Văn Nam - Phó Viện trưởng Viện Khoa học Ứng dụng HUTECH và ThS. Huỳnh Thị Ngọc Hân - Viện Công nghệ Môi trường và Tài nguyên nước Phú Mỹ.','tin-tuc6.jpg',NULL,'tin-tuc-6','HUTECH');
/*!40000 ALTER TABLE `tintuc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'quanlydoanvien'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-18 10:28:53
