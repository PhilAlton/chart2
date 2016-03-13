-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2016 at 10:49 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `chart001`
--

-- --------------------------------------------------------

--
-- Table structure for table `ch001`
--

CREATE TABLE IF NOT EXISTS `ch001` (
  `Field01` bigint(20) NOT NULL AUTO_INCREMENT,
  `Field02` date NOT NULL,
  `Field03` time NOT NULL,
  `Field04` int(11) DEFAULT NULL,
  `Field05` int(11) DEFAULT NULL,
  `Field06` text,
  `Field07` float DEFAULT NULL,
  `Field08` int(11) DEFAULT NULL,
  `Field09` int(11) DEFAULT NULL,
  `Field10` int(11) DEFAULT NULL,
  `Field11` text,
  `Field12` float DEFAULT NULL,
  `Field13` int(11) DEFAULT NULL,
  `Field14` text,
  `Field15` text,
  `Field16` text,
  `Field17` text,
  `Field18` text,
  `Field19` int(11) DEFAULT NULL,
  PRIMARY KEY (`Field01`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1315 ;

--
-- Dumping data for table `ch001`
--

INSERT INTO `ch001` (`Field01`, `Field02`, `Field03`, `Field04`, `Field05`, `Field06`, `Field07`, `Field08`, `Field09`, `Field10`, `Field11`, `Field12`, `Field13`, `Field14`, `Field15`, `Field16`, `Field17`, `Field18`, `Field19`) VALUES
(1213, '2015-06-19', '01:10:00', 19, 99, 'RA', 35.6, 112, 58, 87, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 1),
(1214, '2015-06-19', '06:00:00', 17, 99, 'RA', 35.4, 104, 55, 77, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 2),
(1215, '2015-06-19', '13:00:00', 18, 100, 'RA', 35.4, 106, 52, 67, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 2),
(1216, '2015-06-19', '20:25:00', 18, 98, 'RA', 35.7, 104, 58, 88, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 2),
(1217, '2015-06-20', '07:00:00', 16, 99, 'RA', 35.6, 97, 52, 75, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 3),
(1218, '2015-06-20', '15:30:00', 18, 99, 'RA', 36.1, 94, 46, 98, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 3),
(1219, '2015-06-20', '20:10:00', 18, 100, 'RA', 35.7, 123, 68, 101, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 2),
(1220, '2015-06-21', '00:35:00', 18, 99, 'RA', 35.6, 123, 69, 92, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 2),
(1221, '2015-06-21', '11:20:00', NULL, NULL, 'NULL', 35.1, NULL, NULL, NULL, 'A', NULL, NULL, NULL, 'temp only', 'No', 'NULL', 'NULL', 1),
(1222, '2015-06-21', '16:40:00', 16, 100, 'RA', 36.1, 125, 67, 95, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 1),
(1223, '2015-06-21', '20:10:00', 18, 100, 'RA', 35.8, 129, 71, 92, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 2),
(1224, '2015-06-22', '07:15:00', 18, 99, 'RA', 36.5, 125, 65, 94, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 1),
(1225, '2015-06-22', '16:15:00', 18, 99, 'RA', 36.3, 115, 52, 92, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 1),
(1226, '2015-06-22', '21:30:00', 18, 99, 'RA', 36.8, 141, 71, 91, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 1),
(1227, '2015-06-23', '06:30:00', 17, 99, 'RA', 35.8, 121, 67, 87, 'A', NULL, NULL, NULL, 'TDS', 'No', 'NULL', 'NULL', 1),
(1228, '2015-06-23', '15:50:00', 18, 100, 'RA', 36.2, 136, 65, 98, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 1),
(1229, '2015-06-23', '20:50:00', 19, 99, 'RA', 36.7, 123, 62, 82, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', NULL),
(1230, '2015-06-24', '06:00:00', 19, 100, 'RA', 36.2, 121, 63, 82, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', NULL),
(1231, '2015-06-24', '14:45:00', NULL, 100, 'RA', 36.3, 126, 65, 85, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', NULL),
(1232, '2015-06-24', '20:25:00', NULL, 99, 'RA', 36.6, 126, 60, 81, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', NULL),
(1233, '2015-06-25', '02:30:00', NULL, 99, 'RA', 36.2, 121, 60, 81, 'A', NULL, NULL, NULL, 'TDS', 'No', 'NULL', 'NULL', NULL),
(1234, '2015-06-25', '13:45:00', NULL, 100, 'RA', 36.7, 114, 62, 99, 'A', NULL, NULL, NULL, 'TDS', 'No', 'NULL', 'NULL', 1),
(1235, '2015-06-25', '21:30:00', NULL, 99, 'RA', 36.6, 123, 62, 82, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', NULL),
(1236, '2015-06-26', '06:00:00', 17, 100, 'RA', 36.1, 112, 65, 85, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', NULL),
(1237, '2015-06-26', '14:40:00', NULL, 99, 'RA', 36.4, 115, 60, 75, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', NULL),
(1238, '2015-06-26', '20:30:00', 17, 99, 'RA', 37.1, 126, 65, 89, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', NULL),
(1239, '2015-06-27', '06:00:00', 16, 98, 'RA', 36.7, 121, 54, 79, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', NULL),
(1240, '2015-06-27', '20:15:00', 16, 98, 'RA', 36.7, 102, 49, 90, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 1),
(1241, '2015-06-28', '05:00:00', 18, 98, 'RA', 36.7, 113, 50, 92, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 1),
(1242, '2015-06-28', '13:50:00', 18, 100, 'RA', 36, 110, 62, 90, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 2),
(1243, '2015-06-28', '20:15:00', 18, 100, 'RA', 36, 118, 54, 81, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 1),
(1244, '2015-06-29', '06:00:00', 16, 99, 'RA', 36.5, 90, 47, 90, 'A', NULL, NULL, NULL, 'NULL', 'Esc', 'NULL', 'NULL', 3),
(1245, '2015-06-29', '14:20:00', 17, 98, 'RA', 36, 70, 41, 88, 'A', NULL, NULL, NULL, 'NULL', 'MET', 'NULL', 'NULL', 4),
(1246, '2015-06-29', '15:07:00', 17, 98, 'RA', 36.2, 78, 48, 90, 'A', NULL, NULL, NULL, 'NULL', 'MET', 'NULL', 'NULL', 3),
(1247, '2015-06-29', '16:10:00', 18, 100, 'RA', 36.5, 102, 52, 98, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 2),
(1248, '2015-06-29', '19:30:00', 18, 98, 'RA', 36.4, 100, 55, 80, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 2),
(1249, '2015-06-30', '06:00:00', 18, 100, 'RA', 36.2, 93, 54, 85, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 2),
(1250, '2015-06-30', '14:15:00', 18, 99, 'RA', 36.6, 101, 50, 95, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 2),
(1251, '2015-06-30', '20:30:00', 18, 99, 'RA', 37.6, 102, 57, 86, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 1),
(1252, '2015-07-01', '00:00:00', 18, 97, 'RA', 37, 87, 54, 103, 'A', NULL, NULL, NULL, 'NULL', 'MET', 'NULL', 'NULL', 4),
(1253, '2015-07-01', '14:00:00', 19, 100, 'RA', 36.2, 119, 69, 88, 'A', NULL, NULL, NULL, '8 hrly', 'No', 'NULL', 'NULL', NULL),
(1254, '2015-07-01', '20:00:00', 20, 99, 'RA', 36.1, 96, 51, 91, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 3),
(1255, '2015-07-02', '05:00:00', 17, 97, 'RA', 36.4, 97, 48, 88, 'A', NULL, NULL, NULL, 'TDS', 'No', 'NULL', 'NULL', 2),
(1256, '2015-07-02', '13:00:00', 19, 100, 'RA', 35.9, 118, 59, 87, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 1),
(1257, '2015-07-02', '21:00:00', 18, 99, 'RA', 36.5, 108, 54, 84, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 1),
(1258, '2015-07-03', '06:10:00', 18, 96, 'RA', 36.4, 124, 54, 85, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', NULL),
(1259, '2015-07-03', '12:45:00', 19, 97, 'RA', 36.1, 103, 58, 103, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 2),
(1260, '2015-07-03', '13:00:00', 20, 95, 'RA', 35.9, 95, 48, 108, 'A', NULL, NULL, NULL, 'NULL', 'Esc', 'NULL', 'NULL', 5),
(1261, '2015-07-03', '13:15:00', 18, 98, 'RA', 36.1, 106, 54, 99, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 2),
(1262, '2015-07-03', '13:30:00', 18, 100, 'RA', 36.3, 107, 57, 98, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 2),
(1263, '2015-07-03', '13:45:00', 18, 96, 'RA', 36.2, 112, 52, 93, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 1),
(1264, '2015-07-03', '14:45:00', 17, 100, 'RA', 36.2, 105, 60, 103, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 2),
(1265, '2015-07-03', '15:15:00', 18, 100, 'RA', 36.5, 87, 60, 104, 'A', NULL, NULL, NULL, 'NULL', 'MET', 'NULL', 'NULL', 4),
(1266, '2015-07-03', '16:10:00', 17, 99, 'RA', 36.6, 99, 54, 115, 'NULL', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 4),
(1267, '2015-07-03', '18:40:00', 18, 99, 'RA', 36.8, 99, 56, 109, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 3),
(1268, '2015-07-03', '20:50:00', 20, 98, 'RA', 37.1, 148, 75, 115, 'A', NULL, NULL, NULL, '2 hrly', 'No', 'NULL', 'NULL', 2),
(1269, '2015-07-03', '23:15:00', 18, 97, 'RA', 37.9, 115, 65, 101, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 1),
(1270, '2015-07-04', '06:30:00', 19, 99, 'RA', 36.7, 92, 56, 96, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 3),
(1271, '2015-07-04', '14:00:00', 18, 99, 'RA', 37.2, 109, 52, 115, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 3),
(1272, '2015-07-04', '17:00:00', 18, 99, 'RA', 37.3, 124, 60, 109, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 1),
(1273, '2015-07-04', '20:50:00', 20, 94, 'RA', 38, 135, 63, 110, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 2),
(1274, '2015-07-05', '05:55:00', 20, 99, 'RA', 37.2, 121, 56, 104, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 1),
(1275, '2015-07-05', '14:00:00', 18, 97, 'RA', 37.4, 113, 56, 109, 'A', NULL, NULL, NULL, '8 hrly', 'No', 'NULL', 'NULL', 1),
(1276, '2015-07-05', '18:00:00', 18, 98, 'RA', 37.2, 90, 57, 133, 'A', NULL, NULL, NULL, '30 minutes', 'MET', 'NULL', 'NULL', 6),
(1277, '2015-07-05', '18:30:00', 18, 98, 'RA', 36.3, 103, 57, 104, 'A', NULL, NULL, NULL, '30 minutes', 'No', 'NULL', 'NULL', 2),
(1278, '2015-07-05', '20:45:00', 20, 99, 'RA', 36.1, 101, 48, 85, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 1),
(1279, '2015-07-05', '20:47:00', 24, NULL, 'NULL', 36.1, 75, 43, 118, 'A', NULL, NULL, NULL, 'NULL', 'MET', 'NULL', 'NULL', 7),
(1280, '2015-07-05', '21:05:00', 20, 100, 'NULL', NULL, 105, 51, 84, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 1),
(1281, '2015-07-06', '05:35:00', 20, 98, 'RA', 36.3, 98, 57, 83, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 2),
(1282, '2015-07-06', '11:15:00', 20, 98, 'RA', 37.5, 150, 71, 137, 'A', NULL, NULL, NULL, 'NULL', 'MET', 'NULL', 'NULL', 3),
(1283, '2015-07-06', '11:30:00', NULL, NULL, 'NULL', NULL, NULL, NULL, 147, 'NULL', NULL, NULL, NULL, 'Pulse only', 'MET', 'NULL', 'NULL', 3),
(1284, '2015-07-06', '19:20:00', 20, 92, 'RA', 38.2, 82, 50, 128, 'A', NULL, NULL, NULL, 'NULL', 'MET', 'NULL', 'NULL', 8),
(1285, '2015-07-06', '20:30:00', 20, 93, 'RA', 37.8, 115, 59, 152, 'A', NULL, NULL, NULL, 'NULL', 'MET', 'NULL', 'NULL', 5),
(1286, '2015-07-06', '23:00:00', 30, 95, '2L', 38.5, 127, 61, 121, 'A', NULL, NULL, NULL, 'NULL', 'MET', 'NULL', 'NULL', 9),
(1287, '2015-07-07', '00:30:00', 21, 98, '2L', 37.5, 85, 42, 105, 'A', NULL, NULL, NULL, 'NULL', 'MET', 'NULL', 'NULL', 8),
(1288, '2015-07-07', '05:35:00', 20, 98, '2L', 37.1, 103, 60, 102, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 4),
(1289, '2015-07-07', '15:10:00', 20, 100, '2L', 36.6, 101, 50, 105, 'A', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 4),
(1290, '2015-07-07', '20:45:00', 26, 97, '2L', 37.4, 118, 50, 114, 'A', NULL, NULL, '1', '2 hrly', 'Esc', 'NULL', 'NULL', 7),
(1291, '2015-07-07', '21:35:00', 20, 97, '2L', 36.9, 94, 48, 96, 'A', NULL, NULL, NULL, 'NULL', 'Esc', 'NULL', 'NULL', 5),
(1292, '2015-07-08', '00:20:00', 22, 99, '2L', 36.7, 88, 49, 88, 'A', NULL, NULL, NULL, 'NULL', 'MET', 'NULL', 'NULL', 7),
(1293, '2015-07-08', '09:40:00', 20, 100, '2L', 35.7, 92, 47, 92, 'A', NULL, NULL, NULL, 'NULL', 'Esc', 'NULL', 'NULL', 6),
(1294, '2015-07-08', '20:30:00', 20, 95, '2L', 38.7, 118, 63, 94, 'A', NULL, NULL, NULL, 'NULL', 'Esc', 'NULL', 'NULL', 5),
(1295, '2015-07-09', '00:00:00', NULL, 89, '2L', 36.6, 118, 58, NULL, 'A', NULL, NULL, NULL, 'NULL', 'Esc', 'NULL', 'NULL', 5),
(1296, '2015-07-09', '06:20:00', 24, 90, '2L', 36.6, 118, 59, 122, 'A', NULL, NULL, NULL, 'NULL', 'MET', 'NULL', 'NULL', 9),
(1297, '2015-07-09', '07:10:00', 20, 94, '2L', 36.7, 115, 57, 126, 'A', NULL, NULL, NULL, 'NULL', 'Esc', 'NULL', 'NULL', 5),
(1298, '2015-07-09', '08:30:00', 22, 88, '2L', 36.2, 107, 57, 138, 'A', NULL, NULL, NULL, 'NULL', 'MET', 'NULL', 'NULL', 11),
(1299, '2015-07-09', '10:25:00', 21, 94, '2L', 35.9, 108, 53, 112, 'A', NULL, NULL, NULL, 'NULL', 'MET', 'NULL', 'NULL', 9),
(1300, '2015-07-09', '17:30:00', 26, 88, '7L', 37.4, 106, 61, 126, 'A', NULL, NULL, NULL, 'NULL', 'MET', 'NULL', 'NULL', 11),
(1301, '2015-07-09', '20:15:00', 29, 95, '9L', 37.6, 102, 54, 110, 'A', NULL, NULL, NULL, 'NULL', 'MET', 'NULL', 'NULL', 8),
(1302, '2015-07-09', '22:00:00', 37, 94, '9L', 37.2, 100, 51, 102, 'A', NULL, NULL, NULL, 'NULL', 'MET', 'NULL', 'NULL', 9),
(1303, '2015-07-09', '22:40:00', 31, 94, '40%', 36.8, 116, 61, 106, 'A', NULL, NULL, NULL, 'NULL', 'MET', 'NULL', 'NULL', 7),
(1304, '2015-07-10', '01:20:00', 30, 88, '40%', 36.7, 135, 68, 119, 'A', NULL, NULL, NULL, 'NULL', 'MET', 'NULL', 'NULL', 10),
(1305, '2015-07-10', '02:15:00', 34, 92, '60%', 36.4, 125, 67, 121, 'A', NULL, NULL, NULL, 'NULL', 'MET', 'NULL', 'NULL', 9),
(1306, '2015-07-10', '04:20:00', 32, 92, '60%', 35.8, 118, 58, 124, 'A', NULL, NULL, NULL, 'NULL', 'MET', 'NULL', 'NULL', 10),
(1307, '2015-07-10', '05:20:00', 31, 92, '60%', 35.6, 119, 65, 128, 'A', NULL, NULL, NULL, 'NULL', 'MET', 'NULL', 'NULL', 10),
(1308, '2015-07-10', '07:20:00', 34, 91, '60%', 35.6, 125, 60, 122, 'A', NULL, NULL, NULL, 'NULL', 'MET', 'NULL', 'NULL', 11),
(1309, '2015-07-10', '09:45:00', 32, 63, '60%', 35.6, 102, 51, 123, 'A', NULL, NULL, NULL, 'NULL', 'MET', 'NULL', 'NULL', 12),
(1310, '2015-07-10', '09:50:00', NULL, 92, '60%', NULL, NULL, NULL, NULL, 'NULL', NULL, NULL, NULL, 'NULL', 'No', 'NULL', 'NULL', 4),
(1311, '2015-07-10', '10:50:00', 28, 91, '60%', 36.6, 111, 62, 108, 'A', NULL, NULL, NULL, 'NULL', 'MET', 'NULL', 'NULL', 9),
(1312, '2015-07-10', '15:20:00', 26, 90, '60%', 36.4, 112, 68, 111, 'A', NULL, NULL, NULL, 'TDS', 'MET', 'NULL', 'NULL', 10),
(1313, '2015-07-10', '20:20:00', 38, 88, '60%', 36, 98, 52, 115, 'A', NULL, NULL, '1', 'NULL', 'MET', 'NULL', 'NULL', 13),
(1314, '2016-03-08', '22:13:00', 24, 96, '8L', 36.5, 120, 71, 79, 'A', NULL, NULL, NULL, 'NULL', 'NULL', 'NULL', 'NULL', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ch010`
--

CREATE TABLE IF NOT EXISTS `ch010` (
  `Field01` varchar(26) NOT NULL,
  `Field02` varchar(45) NOT NULL,
  `Field03` bigint(20) NOT NULL,
  `Field04` bigint(20) NOT NULL,
  `Field05` text,
  `Field06` varchar(20) NOT NULL,
  PRIMARY KEY (`Field01`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ch010`
--

INSERT INTO `ch010` (`Field01`, `Field02`, `Field03`, `Field04`, `Field05`, `Field06`) VALUES
('4910b4p8d4bq10gfsn80v0vvn2', '2130706433', 1457366182, 1457477818, '{"lock":"admin","key":"admin","patId":"000000000"}', ''),
('d9acjahppoebe6cualnpvafvl2', '2130706433', 1457549292, 1457549292, '{"lock":"admin","key":"admin","patId":"000000000"}', ''),
('rhf0tji58huhff6juhkggoahe2', '2130706433', 1457517475, 1457519799, '{"lock":"admin","key":"admin","patId":"000000000"}', '');

-- --------------------------------------------------------

--
-- Table structure for table `ch011`
--

CREATE TABLE IF NOT EXISTS `ch011` (
  `Field01` varchar(13) NOT NULL,
  `Field02` varchar(20) NOT NULL,
  `Field03` varchar(12) NOT NULL,
  `Field04` text NOT NULL,
  `Field05` text NOT NULL,
  `Field06` varchar(10) NOT NULL,
  `Field07` text NOT NULL,
  `Field08` text NOT NULL,
  PRIMARY KEY (`Field01`),
  UNIQUE KEY `Field03` (`Field03`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ch011`
--

INSERT INTO `ch011` (`Field01`, `Field02`, `Field03`, `Field04`, `Field05`, `Field06`, `Field07`, `Field08`) VALUES
('AD00000000MIN', 'admin', 'admin', 'Admin', 'Minda', '0000000000', 'Admin', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `ch012`
--

CREATE TABLE IF NOT EXISTS `ch012` (
  `Field01` varchar(11) NOT NULL,
  `Field02` varchar(9) NOT NULL,
  `Field03` bigint(20) NOT NULL,
  `Field04` text NOT NULL,
  `Field05` text NOT NULL,
  `Field06` text NOT NULL,
  `Field07` varchar(100) NOT NULL,
  PRIMARY KEY (`Field01`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ch012`
--

INSERT INTO `ch012` (`Field01`, `Field02`, `Field03`, `Field04`, `Field05`, `Field06`, `Field07`) VALUES
('00000000000', '000000000', 1455478695, 'ward 10', 'Side Room 1 Bed 11', 'Dr.Example', 'ch001');

-- --------------------------------------------------------

--
-- Table structure for table `ch013`
--

CREATE TABLE IF NOT EXISTS `ch013` (
  `Field01` varchar(9) NOT NULL,
  `Field02` varchar(10) NOT NULL,
  `Field03` varchar(8) NOT NULL,
  `Field04` date NOT NULL,
  `Field05` text NOT NULL,
  `Field06` text NOT NULL,
  `Field07` text NOT NULL,
  `Field08` text NOT NULL,
  `Field09` varchar(100) NOT NULL,
  PRIMARY KEY (`Field01`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ch013`
--

INSERT INTO `ch013` (`Field01`, `Field02`, `Field03`, `Field04`, `Field05`, `Field06`, `Field07`, `Field08`, `Field09`) VALUES
('000000000', '0000000000', '0000000A', '1952-06-02', 'Test', 'Data', '27 Example Street\r\nSome District\r\nSomecity\r\nSomecounty\r\nT1 1AA', 'Male', 'ch001');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `Field01` bigint(20) NOT NULL,
  `Field02` date NOT NULL,
  `Field03` mediumint(20) NOT NULL,
  `Field04` int(11) DEFAULT NULL,
  `Field05` int(11) DEFAULT NULL,
  `Field06` text,
  `Field07` float DEFAULT NULL,
  `Field08` int(11) DEFAULT NULL,
  `Field09` int(11) DEFAULT NULL,
  `Field10` int(11) DEFAULT NULL,
  `Field11` text,
  `Field12` float DEFAULT NULL,
  `Field13` int(11) DEFAULT NULL,
  `Field14` text,
  `Field15` text,
  `Field16` text,
  `Field17` text,
  `Field18` text,
  `Field19` int(11) DEFAULT NULL,
  PRIMARY KEY (`Field01`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
