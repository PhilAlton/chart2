-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2016 at 10:57 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chart001`
--

-- --------------------------------------------------------

--
-- Table structure for table `ch001`
--

CREATE TABLE `ch001` (
  `Field01` bigint(20) NOT NULL,
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
  `Field19` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1313, '2015-07-10', '20:20:00', 38, 88, '60%', 36, 98, 52, 115, 'A', NULL, NULL, '1', 'NULL', 'MET', 'NULL', 'NULL', 13);

-- --------------------------------------------------------

--
-- Table structure for table `ch010`
--

CREATE TABLE `ch010` (
  `Field01` varchar(26) NOT NULL,
  `Field02` varchar(45) NOT NULL,
  `Field03` bigint(20) NOT NULL,
  `Field04` bigint(20) NOT NULL,
  `Field05` text,
  `Field06` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ch010`
--

INSERT INTO `ch010` (`Field01`, `Field02`, `Field03`, `Field04`, `Field05`, `Field06`) VALUES
('0omjd3a3la5pe5ru0i8rmdhqi3', '2130706433', 1457820185, 1457832753, '{"lock":"admin","key":"admin","patId":"000000000"}', ''),
('eihkna9rh7f31s5866o4afhte1', '2130706433', 1457906118, 1457906192, '{"lock":"admin","key":"admin","patId":"000000008"}', ''),
('i51gf6jg7bkp29kr6anal45b73', '2130706433', 1457888555, 1457893049, '{"lock":"admin","key":"admin","patId":"000000003"}', '');

-- --------------------------------------------------------

--
-- Table structure for table `ch011`
--

CREATE TABLE `ch011` (
  `Field01` varchar(13) NOT NULL,
  `Field02` varchar(20) NOT NULL,
  `Field03` varchar(12) NOT NULL,
  `Field04` text NOT NULL,
  `Field05` text NOT NULL,
  `Field06` varchar(10) NOT NULL,
  `Field07` text NOT NULL,
  `Field08` text NOT NULL
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

CREATE TABLE `ch012` (
  `Field01` varchar(11) NOT NULL,
  `Field02` varchar(9) NOT NULL,
  `Field03` bigint(20) NOT NULL,
  `Field04` text NOT NULL,
  `Field05` text NOT NULL,
  `Field06` text NOT NULL,
  `Field07` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ch012`
--

INSERT INTO `ch012` (`Field01`, `Field02`, `Field03`, `Field04`, `Field05`, `Field06`, `Field07`) VALUES
('00000000000', '000000000', 1455478695, 'ward 10', 'Side Room 1', 'Dr.Example', 'ch001'),
('00000000001', '000000001', 1452290400, 'ward 10', 'Side Room 1', 'Dr.Test', 'CT1'),
('00000000002', '000000002', 1465410600, 'ward 10', 'Side Room 1', 'Dr.Example', 'CT2'),
('00000000003', '000000003', 0, 'ward 10', 'Side Room 1', 'Dr.Test', 'CT3'),
('00000000004', '000000004', 0, 'ward 10', 'Side Room 1', 'Dr.Example', 'CT4'),
('00000000005', '000000005', 0, 'ward 10', 'Side Room 1', 'Dr.Specialist', 'CT5'),
('00000000006', '000000006', 0, 'ward 10', 'Side Room 1', 'Dr.SomeName', 'CT6'),
('00000000007', '000000007', 0, 'ward 10', 'Side Room 1', 'Dr.Specialist', 'CT7'),
('00000000008', '000000008', 1473325200, 'ward 10', 'Side Room 1', 'Dr.SomeName', 'CT8'),
('00000000009', '000000009', 1467783000, 'ward 10', 'Side Room 1', 'Dr.Test', 'CT9'),
('00000000010', '000000010', 0, 'ward 10', 'Side Room 1', 'Dr.Test', 'CT10'),
('00000000011', '000000011', 0, 'ward 10', 'Side Room 1', 'Dr.Specialist', 'CT11');

-- --------------------------------------------------------

--
-- Table structure for table `ch013`
--

CREATE TABLE `ch013` (
  `Field01` varchar(9) NOT NULL,
  `Field02` varchar(10) NOT NULL,
  `Field03` varchar(8) NOT NULL,
  `Field04` date NOT NULL,
  `Field05` text NOT NULL,
  `Field06` text NOT NULL,
  `Field07` text NOT NULL,
  `Field08` text NOT NULL,
  `Field09` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ch013`
--

INSERT INTO `ch013` (`Field01`, `Field02`, `Field03`, `Field04`, `Field05`, `Field06`, `Field07`, `Field08`, `Field09`) VALUES
('000000000', 'T000000000', '0000000A', '1952-06-02', 'Test', 'Data', '27 Example Street\nSome District\nSomecity\nSomecounty\nT1 1AA', 'Male', 'ch001'),
('000000001', 'T5580805A', '5580805A', '1989-01-05', 'Test1', 'Data', '1 Example Street, Some District, Somecity, Somecounty, T1 1AA', 'Female', 'CT1'),
('000000002', 'T6188604N', '6188604N', '1976-10-25', 'Test2', 'Data', '2 Example Street, Some District, Somecity, Somecounty, T1 1AA', 'Male', 'CT2'),
('000000003', 'T6964705K', '6964705K', '1979-03-28', 'Test3', 'Data', '3 Example Street, Some District, Somecity, Somecounty, T1 1AA', 'Male', 'CT3'),
('000000004', 'T12713306V', '12713306', '1971-12-27', 'Test4', 'Data', '4 Example Street, Some District, Somecity, Somecounty, T1 1AA', 'Female', 'CT4'),
('000000005', 'T19469901A', '19469901', '1985-12-02', 'Test5', 'Data', '5 Example Street, Some District, Somecity, Somecounty, T1 1AA', 'Male', 'CT5'),
('000000006', 'T23860700H', '23860700', '1963-01-21', 'Test6', 'Data', '6 Example Street, Some District, Somecity, Somecounty, T1 1AA', 'Female', 'CT6'),
('000000007', 'T27162809X', '27162809', '1953-05-25', 'Test7', 'Data', '7 Example Street, Some District, Somecity, Somecounty, T1 1AA', 'Male', 'CT7'),
('000000008', 'T34298009A', '34298009', '1982-10-29', 'Test8', 'Data', '8 Example Street, Some District, Somecity, Somecounty, T1 1AA', 'Female', 'CT8'),
('000000009', 'T36236301K', '36236301', '1967-04-25', 'Test9', 'Data', '9 Example Street, Some District, Somecity, Somecounty, T1 1AA', 'Male', 'CT9'),
('000000010', 'T38237609X', '38237609', '1953-09-02', 'Test10', 'Data', '10 Example Street, Some District, Somecity, Somecounty, T1 1AA', 'Male', 'CT10'),
('000000011', 'T43026503W', '43026503', '1960-02-20', 'Test11', 'Data', '11 Example Street, Some District, Somecity, Somecounty, T1 1AA', 'Female', 'CT11');

-- --------------------------------------------------------

--
-- Table structure for table `ct`
--

CREATE TABLE `ct` (
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
  `Field19` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ct1`
--

CREATE TABLE `ct1` (
  `Field01` bigint(20) NOT NULL,
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
  `Field19` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ct1`
--

INSERT INTO `ct1` (`Field01`, `Field02`, `Field03`, `Field04`, `Field05`, `Field06`, `Field07`, `Field08`, `Field09`, `Field10`, `Field11`, `Field12`, `Field13`, `Field14`, `Field15`, `Field16`, `Field17`, `Field18`, `Field19`) VALUES
(1, '2016-08-01', '22:00:00', 18, 96, 'RA', 37.6, 106, 77, 94, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(2, '2016-08-02', '06:40:00', 0, 97, 'RA', 0, 110, 75, 85, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(3, '2016-08-02', '10:10:00', 14, 0, 'NULL', 36.8, 101, 65, 86, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ct2`
--

CREATE TABLE `ct2` (
  `Field01` bigint(20) NOT NULL,
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
  `Field19` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ct2`
--

INSERT INTO `ct2` (`Field01`, `Field02`, `Field03`, `Field04`, `Field05`, `Field06`, `Field07`, `Field08`, `Field09`, `Field10`, `Field11`, `Field12`, `Field13`, `Field14`, `Field15`, `Field16`, `Field17`, `Field18`, `Field19`) VALUES
(1, '2016-08-06', '19:30:00', 16, 99, 'RA', 36.3, 105, 50, 68, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(2, '2016-08-06', '21:00:00', 16, 96, 'RA', 36.2, 131, 76, 69, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(3, '2016-08-07', '06:00:00', 16, 96, 'RA', 36.2, 109, 70, 89, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ct3`
--

CREATE TABLE `ct3` (
  `Field01` bigint(20) NOT NULL,
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
  `Field19` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ct3`
--

INSERT INTO `ct3` (`Field01`, `Field02`, `Field03`, `Field04`, `Field05`, `Field06`, `Field07`, `Field08`, `Field09`, `Field10`, `Field11`, `Field12`, `Field13`, `Field14`, `Field15`, `Field16`, `Field17`, `Field18`, `Field19`) VALUES
(1, '2016-07-24', '15:05:00', 18, 98, 'RA', 36.4, 130, 58, 71, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(2, '2016-07-24', '22:20:00', 16, 98, 'RA', 36.2, 104, 55, 71, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(3, '2016-07-25', '09:30:00', 18, 99, 'RA', 36.2, 92, 60, 70, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(4, '2016-07-25', '13:37:00', 18, 97, 'RA', 36.2, 111, 55, 85, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(5, '2016-07-25', '18:00:00', 18, 97, 'RA', 36.3, 111, 63, 77, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(6, '2016-07-26', '08:30:00', 17, 98, 'RA', 36.1, 129, 64, 81, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(7, '2016-07-26', '13:25:00', 18, 98, 'RA', 36.2, 99, 54, 81, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(8, '2016-07-26', '22:00:00', 19, 98, 'RA', 36.2, 122, 52, 78, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(9, '2016-07-27', '09:50:00', 18, 98, 'RA', 36.4, 122, 57, 80, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(10, '2016-07-27', '14:25:00', 17, 98, 'RA', 36.6, 125, 66, 77, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(11, '2016-07-27', '20:22:00', 18, 98, 'RA', 35.7, 104, 55, 68, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(12, '2016-07-28', '08:10:00', 18, 99, 'RA', 36, 143, 74, 82, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(13, '2016-07-28', '15:25:00', 19, 96, 'RA', 36, 112, 62, 82, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(14, '2016-07-28', '20:08:00', 18, 97, 'RA', 36.6, 112, 53, 82, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(15, '2016-07-29', '08:30:00', 18, 97, 'RA', 36.4, 116, 60, 79, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(16, '2016-07-29', '14:15:00', 18, 95, 'RA', 36.2, 107, 55, 80, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(17, '2016-07-29', '21:03:00', 18, 98, 'RA', 36.8, 119, 58, 71, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(18, '2016-07-30', '08:20:00', 19, 98, 'RA', 35.8, 122, 68, 85, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(19, '2016-07-18', '15:30:00', 18, 99, 'RA', 36.1, 119, 55, 0, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(20, '2016-07-18', '21:30:00', 19, 98, 'RA', 36.4, 126, 61, 65, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(21, '2016-07-19', '08:00:00', 18, 99, 'RA', 36.1, 127, 63, 84, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(22, '2016-07-19', '13:00:00', 18, 99, 'RA', 35.7, 119, 62, 81, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(23, '2016-07-19', '22:00:00', 19, 99, 'RA', 36.3, 120, 55, 80, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(24, '2016-07-20', '08:40:00', 20, 99, 'RA', 36, 125, 64, 101, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(25, '2016-07-20', '14:45:00', 19, 97, 'RA', 36.4, 135, 64, 71, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(26, '2016-07-20', '21:08:00', 20, 96, 'RA', 36.2, 109, 58, 84, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(27, '2016-07-21', '08:20:00', 17, 97, 'RA', 36.1, 123, 68, 86, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(28, '2016-07-21', '13:15:00', 18, 96, 'RA', 36.1, 130, 60, 75, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(29, '2016-07-21', '22:12:00', 18, 100, 'RA', 36.6, 115, 57, 69, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(30, '2016-07-22', '08:30:00', 16, 98, 'RA', 36.5, 138, 69, 81, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(31, '2016-07-22', '20:36:00', 16, 97, 'RA', 36.2, 111, 60, 69, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(32, '2016-07-23', '08:20:00', 17, 100, 'RA', 36, 141, 71, 77, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(33, '2016-07-23', '17:45:00', 16, 98, 'RA', 36.7, 162, 59, 84, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(34, '2016-07-23', '21:20:00', 18, 97, 'RA', 36.2, 125, 60, 65, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(35, '2016-07-24', '08:00:00', 17, 98, 'RA', 36.2, 126, 65, 73, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(36, '2016-07-06', '16:50:00', 19, 99, 'RA', 36.1, 133, 62, 77, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(37, '2016-07-06', '20:15:00', 20, 96, 'RA', 36.7, 129, 59, 87, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(38, '2016-07-07', '09:30:00', 18, 95, 'RA', 36.6, 115, 55, 80, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(39, '2016-07-07', '14:20:00', 18, 96, 'RA', 36.4, 107, 54, 84, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(40, '2016-07-07', '21:50:00', 18, 97, 'RA', 36.2, 118, 58, 82, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(41, '2016-07-08', '09:45:00', 17, 98, 'RA', 37, 110, 58, 84, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(42, '2016-07-08', '15:00:00', 16, 98, 'RA', 36.8, 122, 56, 76, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(43, '2016-07-08', '20:30:00', 18, 99, 'RA', 36.9, 115, 56, 90, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(44, '2016-07-09', '08:05:00', 20, 98, 'RA', 36.6, 125, 66, 80, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(45, '2016-07-09', '13:25:00', 16, 97, 'RA', 36.1, 96, 63, 83, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(46, '2016-07-09', '13:30:00', 0, 0, 'NULL', 0, 108, 69, 0, 'A', 0, 0, 'NULL', 'L.Arm BP', 'NULL', 'NULL', 'NULL', 0),
(47, '2016-07-09', '22:00:00', 20, 97, 'RA', 36.3, 129, 58, 72, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(48, '2016-07-10', '09:55:00', 20, 98, 'RA', 36.2, 108, 50, 72, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(49, '2016-07-10', '14:35:00', 18, 97, 'RA', 36.2, 118, 61, 70, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(50, '2016-07-10', '21:00:00', 19, 96, 'RA', 36.5, 137, 73, 75, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(51, '2016-07-11', '08:40:00', 19, 96, 'RA', 36.5, 125, 65, 80, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(52, '2016-07-11', '14:08:00', 20, 98, 'RA', 36, 105, 58, 86, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(53, '2016-07-12', '08:10:00', 19, 96, 'RA', 36.4, 109, 59, 72, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(54, '2016-07-12', '13:30:00', 19, 97, 'RA', 36.3, 119, 56, 74, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(55, '2016-07-13', '09:30:00', 18, 98, 'RA', 0, 111, 56, 80, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(56, '2016-07-13', '14:30:00', 18, 98, 'RA', 37.1, 118, 57, 73, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(57, '2016-07-13', '20:24:00', 18, 99, 'RA', 36.6, 108, 61, 75, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(58, '2016-07-14', '09:50:00', 18, 99, 'RA', 35.8, 105, 58, 78, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(59, '2016-07-14', '15:00:00', 18, 100, 'RA', 36.5, 102, 52, 72, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(60, '2016-07-14', '21:12:00', 18, 97, 'RA', 36.6, 121, 57, 67, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(61, '2016-07-15', '08:40:00', 19, 98, 'RA', 36.2, 120, 50, 70, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(62, '2016-07-15', '14:50:00', 18, 100, 'RA', 36.3, 118, 61, 73, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(63, '2016-07-15', '20:20:00', 18, 98, 'RA', 36.5, 111, 58, 81, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(64, '2016-07-16', '08:00:00', 18, 97, 'RA', 36.3, 112, 56, 86, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(65, '2016-07-16', '14:30:00', 18, 99, 'RA', 36.1, 111, 57, 72, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(66, '2016-07-16', '20:21:00', 18, 97, 'RA', 36.1, 100, 56, 75, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(67, '2016-07-17', '09:00:00', 19, 96, 'RA', 36, 107, 69, 85, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(68, '2016-07-17', '18:30:00', 18, 96, 'RA', 36, 110, 50, 0, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(69, '2016-07-17', '22:10:00', 18, 97, 'RA', 36.1, 107, 57, 89, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(70, '2016-07-18', '08:40:00', 18, 96, 'RA', 36.1, 107, 56, 90, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(71, '2016-06-25', '23:05:00', 16, 95, 'RA', 36.4, 105, 48, 72, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(72, '2016-06-26', '06:00:00', 18, 97, 'RA', 35.3, 108, 50, 68, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(73, '2016-06-26', '07:45:00', 18, 96, 'RA', 36.1, 131, 65, 79, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(74, '2016-06-26', '18:30:00', 18, 97, 'RA', 36.9, 106, 55, 70, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(75, '2016-06-27', '06:30:00', 18, 96, 'RA', 36.2, 122, 60, 63, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(76, '2016-06-27', '14:25:00', 17, 97, 'RA', 36.9, 144, 61, 78, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(77, '2016-06-27', '19:40:00', 17, 97, 'RA', 36.9, 142, 50, 85, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(78, '2016-06-28', '06:00:00', 18, 97, 'RA', 37.4, 150, 72, 80, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(79, '2016-06-28', '12:20:00', 18, 97, 'RA', 38.2, 140, 71, 84, 'A', 0, 0, 'NULL', '1 hr temps', 'NULL', 'NULL', 'NULL', 0),
(80, '2016-06-28', '13:30:00', 0, 0, 'NULL', 38.9, 0, 0, 0, 'NULL', 0, 0, 'NULL', '1 hr temps', 'NULL', 'NULL', 'NULL', 0),
(81, '2016-06-28', '15:15:00', 0, 0, 'NULL', 38.7, 0, 0, 0, 'NULL', 0, 0, 'NULL', '1 hr temps', 'NULL', 'NULL', 'NULL', 0),
(82, '2016-06-28', '16:35:00', 0, 0, 'NULL', 38, 0, 0, 0, 'NULL', 0, 0, 'NULL', '1 hr temps', 'NULL', 'NULL', 'NULL', 0),
(83, '2016-06-28', '18:25:00', 20, 96, 'RA', 38.7, 165, 72, 95, 'A', 0, 0, 'NULL', '1 hr', 'NULL', 'NULL', 'NULL', 0),
(84, '2016-06-28', '19:20:00', 18, 96, 'RA', 36.3, 135, 58, 82, 'A', 0, 0, 'NULL', '1 hr', 'NULL', 'NULL', 'NULL', 0),
(85, '2016-06-28', '21:00:00', 19, 96, 'RA', 36.3, 146, 68, 81, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(86, '2016-06-29', '06:30:00', 19, 96, 'RA', 35.5, 142, 68, 77, 'A', 0, 0, 'NULL', 'Rpt Temp', 'NULL', 'NULL', 'NULL', 0),
(87, '2016-06-29', '07:00:00', 0, 0, 'NULL', 37.5, 0, 0, 0, 'NULL', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(88, '2016-06-29', '12:20:00', 18, 96, 'RA', 37.2, 125, 68, 64, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(89, '2016-06-30', '08:00:00', 16, 99, 'RA', 36.6, 150, 80, 69, 'NULL', 0, 0, '1', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(90, '2016-06-30', '13:40:00', 16, 97, 'RA', 37.5, 115, 58, 85, 'A', 0, 0, '1', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(91, '2016-06-30', '21:00:00', 18, 96, 'RA', 36.5, 111, 53, 86, 'A', 0, 0, '1', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(92, '2016-07-01', '08:00:00', 19, 98, 'RA', 36.6, 146, 66, 72, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(93, '2016-07-01', '14:45:00', 19, 98, 'RA', 37.5, 110, 55, 92, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(94, '2016-07-01', '21:05:00', 18, 95, 'RA', 37.4, 117, 57, 78, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(95, '2016-07-02', '08:45:00', 19, 97, 'RA', 36.2, 120, 61, 68, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(96, '2016-07-02', '15:20:00', 19, 97, 'RA', 36.7, 118, 62, 72, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(97, '2016-07-02', '20:40:00', 18, 97, 'RA', 36.8, 113, 54, 81, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(98, '2016-07-03', '08:45:00', 18, 97, 'RA', 36.7, 115, 58, 78, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(99, '2016-07-03', '18:00:00', 16, 96, 'RA', 0, 120, 58, 0, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(100, '2016-07-03', '20:50:00', 16, 97, 'RA', 36.9, 133, 63, 81, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(101, '2016-07-04', '09:20:00', 18, 97, 'RA', 36.4, 122, 57, 74, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(102, '2016-07-04', '20:30:00', 17, 98, 'RA', 36.6, 150, 70, 69, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(103, '2016-07-05', '09:20:00', 18, 98, 'RA', 36.2, 136, 63, 74, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(104, '2016-07-05', '15:00:00', 16, 99, 'RA', 36.8, 115, 52, 75, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(105, '2016-07-05', '22:00:00', 18, 97, 'RA', 36.6, 154, 72, 85, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(106, '2016-07-06', '09:15:00', 17, 98, 'RA', 36.2, 105, 53, 88, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(107, '2016-08-04', '19:15:00', 18, 98, 'RA', 36.4, 105, 59, 69, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(108, '2016-08-05', '07:20:00', 19, 94, 'RA', 36.8, 82, 40, 64, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(109, '2016-08-05', '19:00:00', 16, 98, 'RA', 36.9, 105, 64, 69, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(110, '2016-08-06', '06:10:00', 19, 97, 'RA', 36.1, 129, 74, 79, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ct4`
--

CREATE TABLE `ct4` (
  `Field01` bigint(20) NOT NULL,
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
  `Field19` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ct4`
--

INSERT INTO `ct4` (`Field01`, `Field02`, `Field03`, `Field04`, `Field05`, `Field06`, `Field07`, `Field08`, `Field09`, `Field10`, `Field11`, `Field12`, `Field13`, `Field14`, `Field15`, `Field16`, `Field17`, `Field18`, `Field19`) VALUES
(1, '2016-07-27', '20:00:00', 18, 97, 'RA', 36.8, 147, 67, 80, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(2, '2016-07-28', '09:00:00', 19, 100, 'RA', 36.5, 143, 77, 98, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(3, '2016-07-28', '13:15:00', 18, 97, 'RA', 36.3, 164, 80, 86, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(4, '2016-07-28', '20:15:00', 18, 95, 'RA', 36.7, 162, 72, 94, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(5, '2016-07-29', '08:50:00', 18, 95, 'RA', 36.7, 153, 81, 94, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(6, '2016-07-20', '05:30:00', 18, 98, 'RA', 36.5, 142, 65, 96, 'NULL', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(7, '2016-07-20', '08:45:00', 17, 97, 'RA', 36.8, 118, 61, 88, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(8, '2016-07-20', '12:05:00', 24, 98, 'RA', 0, 149, 75, 102, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(9, '2016-07-20', '13:40:00', 19, 98, 'RA', 37.1, 137, 75, 96, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(10, '2016-07-20', '14:30:00', 18, 98, 'RA', 37.2, 141, 60, 92, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(11, '2016-07-20', '20:30:00', 20, 97, 'RA', 37.1, 142, 70, 96, 'A', 0, 0, 'NULL', '4 hrly', 'NULL', 'NULL', 'NULL', 0),
(12, '2016-07-20', '23:00:00', 18, 96, 'RA', 36, 140, 70, 90, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(13, '2016-07-21', '10:15:00', 15, 98, 'RA', 36.2, 164, 87, 96, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(14, '2016-07-21', '12:30:00', 30, 97, 'RA', 36.3, 142, 76, 97, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(15, '2016-07-21', '16:15:00', 23, 97, 'RA', 36.7, 144, 71, 92, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(16, '2016-07-21', '18:30:00', 30, 98, 'RA', 36.8, 164, 83, 101, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(17, '2016-07-21', '19:00:00', 24, 98, 'RA', 37, 163, 88, 95, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(18, '2016-07-21', '20:15:00', 28, 98, 'RA', 36.7, 148, 78, 97, 'A', 0, 0, 'NULL', '2 hrly', 'NULL', 'NULL', 'NULL', 0),
(19, '2016-07-21', '23:45:00', 20, 98, 'RA', 36.4, 146, 70, 90, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(20, '2016-07-22', '10:10:00', 33, 96, 'RA', 36.2, 157, 77, 98, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(21, '2016-07-22', '14:30:00', 24, 92, 'RA', 36.9, 156, 74, 97, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(22, '2016-07-22', '00:00:00', 24, 95, 'RA', 37.1, 168, 75, 87, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(23, '2016-07-23', '09:30:00', 19, 97, 'RA', 36.1, 164, 80, 92, 'NULL', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(24, '2016-07-23', '13:30:00', 19, 97, 'RA', 36.7, 157, 74, 96, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(25, '2016-07-23', '15:44:00', 22, 95, 'RA', 36.8, 106, 63, 89, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(26, '2016-07-23', '18:30:00', 20, 97, 'RA', 36.5, 141, 70, 79, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(27, '2016-07-23', '21:10:00', 20, 98, 'RA', 36.8, 127, 63, 80, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(28, '2016-07-24', '07:30:00', 20, 98, 'RA', 36.4, 159, 75, 85, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(29, '2016-07-24', '13:38:00', 20, 97, 'RA', 36.4, 121, 58, 78, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(30, '2016-07-24', '16:00:00', 20, 100, 'RA', 36.4, 163, 72, 75, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(31, '2016-07-24', '18:00:00', 0, 0, 'NULL', 0, 0, 0, 0, 'NULL', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(32, '2016-07-24', '20:45:00', 19, 98, 'RA', 36.4, 150, 70, 79, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(33, '2016-07-25', '07:30:00', 18, 98, 'RA', 36.4, 128, 74, 76, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(34, '2016-07-25', '13:40:00', 18, 98, 'RA', 36.2, 145, 65, 54, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(35, '2016-07-25', '21:10:00', 16, 99, 'RA', 37.3, 140, 66, 84, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(36, '2016-07-26', '08:40:00', 16, 96, 'RA', 36.5, 150, 70, 95, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(37, '2016-07-26', '14:45:00', 16, 98, 'RA', 37, 128, 66, 94, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(38, '2016-07-26', '18:00:00', 16, 0, 'NULL', 0, 0, 0, 0, 'NULL', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(39, '2016-07-26', '20:30:00', 17, 98, 'RA', 36.9, 124, 67, 88, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(40, '2016-07-27', '09:00:00', 19, 96, 'RA', 36.2, 113, 52, 85, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(41, '2016-07-27', '14:45:00', 18, 96, 'RA', 36.6, 111, 66, 78, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(42, '2016-07-16', '12:20:00', 18, 97, 'RA', 36.4, 146, 75, 89, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(43, '2016-07-17', '07:30:00', 18, 97, 'RA', 36.2, 173, 83, 98, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(44, '2016-07-17', '12:50:00', 18, 95, 'RA', 36.2, 150, 73, 96, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ct5`
--

CREATE TABLE `ct5` (
  `Field01` bigint(20) NOT NULL,
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
  `Field19` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ct5`
--

INSERT INTO `ct5` (`Field01`, `Field02`, `Field03`, `Field04`, `Field05`, `Field06`, `Field07`, `Field08`, `Field09`, `Field10`, `Field11`, `Field12`, `Field13`, `Field14`, `Field15`, `Field16`, `Field17`, `Field18`, `Field19`) VALUES
(1, '2016-07-25', '19:00:00', 17, 96, 'RA', 0, 120, 70, 87, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(2, '2016-07-26', '06:10:00', 17, 99, 'RA', 0, 149, 90, 84, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(3, '2016-07-26', '20:55:00', 18, 95, 'RA', 36.7, 138, 85, 98, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(4, '2016-07-27', '06:50:00', 16, 96, 'RA', 36.1, 158, 80, 85, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(5, '2016-07-27', '12:30:00', 17, 100, 'RA', 36.5, 154, 87, 95, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(6, '2016-07-27', '21:45:00', 18, 97, 'RA', 36.8, 142, 89, 90, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(7, '2016-07-28', '07:20:00', 17, 96, 'RA', 37.1, 140, 79, 88, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(8, '2016-07-28', '13:00:00', 17, 96, 'RA', 36.4, 122, 73, 87, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(9, '2016-07-28', '20:55:00', 17, 96, 'RA', 36.3, 132, 85, 88, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(10, '2016-07-29', '12:30:00', 17, 96, 'RA', 36.4, 143, 92, 81, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(11, '2016-07-29', '20:00:00', 18, 97, 'RA', 36.1, 112, 74, 91, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(12, '2016-07-30', '01:10:00', 18, 96, 'RA', 36.7, 136, 76, 91, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(13, '2016-07-30', '12:20:00', 17, 100, 'RA', 35.8, 128, 82, 86, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(14, '2016-07-30', '18:40:00', 16, 100, 'RA', 36.6, 135, 90, 120, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(15, '2016-07-31', '06:45:00', 17, 97, 'RA', 36.6, 141, 90, 95, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(16, '2016-08-31', '19:00:00', 18, 0, 'NULL', 36.1, 150, 90, 100, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(17, '2016-08-01', '07:40:00', 18, 99, 'RA', 36.4, 141, 83, 99, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(18, '2016-08-01', '13:40:00', 20, 99, 'RA', 36.9, 115, 74, 108, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(19, '2016-08-02', '06:30:00', 18, 95, 'RA', 36.6, 145, 62, 95, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(20, '2016-08-02', '12:30:00', 17, 96, 'RA', 36.1, 129, 78, 99, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(21, '2016-08-02', '21:00:00', 17, 94, 'RA', 38.7, 142, 80, 130, 'A', 0, 0, 'NULL', '1 hrly', 'NULL', 'NULL', 'NULL', 0),
(22, '2016-08-02', '21:35:00', 18, 96, 'RA', 38.8, 155, 83, 133, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(23, '2016-08-03', '03:30:00', 16, 97, 'RA', 36.3, 110, 70, 107, 'A', 0, 0, 'NULL', '4 hrly', 'NULL', 'NULL', 'NULL', 0),
(24, '2016-08-03', '06:35:00', 16, 92, 'RA', 36.8, 121, 78, 96, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(25, '2016-08-03', '12:30:00', 16, 91, 'RA', 37.7, 137, 82, 120, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(26, '2016-08-03', '16:35:00', 19, 95, 'RA', 37.3, 131, 79, 144, 'A', 0, 0, 'NULL', '2 hrly', 'NULL', 'NULL', 'NULL', 0),
(27, '2016-08-03', '18:00:00', 19, 95, 'RA', 37.4, 91, 60, 129, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(28, '2016-08-03', '19:00:00', 18, 97, 'RA', 36.7, 102, 62, 110, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(29, '2016-08-03', '20:45:00', 19, 97, 'RA', 36.6, 121, 74, 109, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(30, '2016-08-04', '08:30:00', 18, 97, 'RA', 37.1, 133, 86, 109, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(31, '2016-08-04', '11:45:00', 18, 96, 'RA', 36.9, 114, 76, 102, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(32, '2016-08-04', '19:00:00', 17, 97, 'RA', 37.6, 109, 69, 108, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(33, '2016-08-05', '07:00:00', 18, 96, 'RA', 37, 131, 85, 104, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(34, '2016-08-05', '11:25:00', 17, 97, 'RA', 36.1, 140, 90, 98, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(35, '2016-08-05', '20:00:00', 18, 99, 'RA', 37.3, 135, 88, 85, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(36, '2016-08-06', '06:30:00', 17, 100, 'RA', 36.9, 156, 94, 90, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(37, '2016-08-06', '11:00:00', 17, 98, 'RA', 36.1, 109, 66, 95, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(38, '2016-08-06', '14:30:00', 14, 100, 'RA', 36.1, 152, 91, 95, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(39, '2016-08-06', '17:20:00', 14, 95, 'RA', 36.4, 153, 92, 99, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(40, '2016-08-06', '18:15:00', 16, 100, 'RA', 36.5, 115, 76, 100, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(41, '2016-08-06', '19:15:00', 15, 96, 'RA', 36.6, 79, 55, 70, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(42, '2016-08-06', '20:15:00', 16, 95, 'RA', 37, 98, 66, 90, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(43, '2016-08-07', '06:00:00', 15, 78, 'RA', 36.8, 124, 73, 107, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(44, '2016-08-07', '12:20:00', 16, 97, 'RA', 37, 123, 77, 106, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(45, '2016-08-07', '20:15:00', 18, 97, 'RA', 37.2, 117, 78, 108, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(46, '2016-08-08', '06:20:00', 18, 96, 'RA', 36.9, 149, 83, 109, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(47, '2016-08-08', '11:40:00', 18, 96, 'RA', 36.5, 104, 61, 114, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(48, '2016-08-08', '19:00:00', 17, 0, 'NULL', 37, 0, 0, 106, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(49, '2016-08-08', '23:16:00', 17, 95, 'RA', 36.8, 109, 63, 104, 'A', 0, 0, 'NULL', '4 hrly', 'NULL', 'NULL', 'NULL', 0),
(50, '2016-08-09', '02:15:00', 18, 97, 'RA', 35.7, 111, 65, 100, 'NULL', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(51, '2016-08-09', '06:15:00', 18, 95, 'RA', 35.7, 159, 90, 103, 'A', 0, 0, 'NULL', '4 hrly', 'NULL', 'NULL', 'NULL', 0),
(52, '2016-08-09', '11:00:00', 17, 97, 'RA', 36.8, 130, 82, 107, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(53, '2016-08-09', '12:00:00', 18, 97, 'RA', 36.1, 153, 95, 99, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(54, '2016-08-09', '20:10:00', 22, 97, 'RA', 37.3, 135, 86, 109, 'A', 0, 0, 'NULL', '4 hrly', 'NULL', 'NULL', 'NULL', 0),
(55, '2016-08-09', '20:30:00', 20, 98, 'RA', 36.2, 139, 79, 117, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(56, '2016-08-10', '06:30:00', 24, 91, 'RA', 37.1, 171, 102, 104, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(57, '2016-08-10', '12:58:00', 15, 97, 'RA', 36.6, 140, 85, 100, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(58, '2016-08-10', '20:00:00', 18, 98, 'RA', 38.5, 135, 79, 96, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(59, '2016-08-11', '07:20:00', 26, 0, 'RA', 37.3, 0, 0, 134, 'NULL', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(60, '2016-08-11', '08:15:00', 28, 96, 'RA', 37.4, 0, 0, 137, 'NULL', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(61, '2016-07-14', '13:25:00', 18, 97, 'RA', 37.8, 112, 73, 87, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(62, '2016-07-15', '00:40:00', 18, 98, 'RA', 37.4, 109, 69, 84, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(63, '2016-07-15', '02:30:00', 17, 97, 'RA', 37.7, 136, 88, 83, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(64, '2016-07-15', '07:20:00', 17, 97, 'RA', 37.6, 140, 93, 85, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(65, '2016-07-15', '19:30:00', 17, 97, 'RA', 37.6, 132, 80, 92, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(66, '2016-07-16', '06:00:00', 18, 97, 'RA', 37.7, 135, 77, 98, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(67, '2016-07-16', '12:20:00', 23, 95, 'RA', 38.1, 151, 98, 90, 'A', 0, 0, 'NULL', '2 hrly', 'NULL', 'NULL', 'NULL', 0),
(68, '2016-07-16', '13:40:00', 0, 0, 'NULL', 37.5, 0, 0, 0, 'NULL', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(69, '2016-07-16', '20:30:00', 18, 98, 'RA', 36.9, 121, 77, 88, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(70, '2016-07-17', '06:35:00', 17, 99, 'RA', 36.9, 152, 96, 89, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(71, '2016-07-17', '14:20:00', 16, 97, 'RA', 36.8, 160, 90, 91, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(72, '2016-07-17', '21:00:00', 17, 96, 'RA', 36.2, 182, 104, 87, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(73, '2016-07-18', '07:00:00', 17, 97, 'RA', 36.2, 178, 98, 98, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(74, '2016-07-18', '12:00:00', 19, 98, 'RA', 36.4, 128, 84, 97, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(75, '2016-07-18', '21:00:00', 20, 96, 'RA', 37, 155, 87, 104, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(76, '2016-07-19', '06:30:00', 18, 98, 'RA', 37, 137, 83, 105, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(77, '2016-07-19', '13:20:00', 16, 95, 'RA', 36.2, 105, 66, 94, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(78, '2016-07-19', '20:40:00', 16, 96, 'RA', 36.4, 108, 68, 88, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(79, '2016-07-20', '06:50:00', 17, 96, 'RA', 36.2, 154, 93, 97, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(80, '2016-07-20', '16:55:00', 19, 95, 'RA', 36.6, 128, 83, 100, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(81, '2016-07-20', '21:20:00', 17, 96, 'RA', 36.5, 146, 82, 105, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(82, '2016-07-21', '06:45:00', 18, 97, 'RA', 36.2, 168, 105, 90, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(83, '2016-07-21', '13:45:00', 18, 97, 'RA', 37.1, 134, 84, 100, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(84, '2016-07-21', '21:00:00', 18, 96, 'RA', 37.5, 170, 94, 102, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(85, '2016-07-22', '12:40:00', 20, 96, 'RA', 37.5, 160, 100, 99, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(86, '2016-07-22', '22:40:00', 18, 98, 'RA', 37.7, 170, 101, 94, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(87, '2016-07-22', '04:30:00', 18, 95, 'RA', 36, 168, 97, 104, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(88, '2016-07-22', '19:10:00', 18, 96, 'RA', 37.2, 142, 86, 96, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(89, '2016-07-23', '06:10:00', 16, 99, 'RA', 35.8, 164, 100, 99, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(90, '2016-07-23', '12:00:00', 18, 96, 'RA', 36.1, 149, 97, 99, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(91, '2016-07-23', '20:00:00', 18, 95, 'RA', 36.6, 166, 92, 92, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(92, '2016-07-24', '06:15:00', 17, 98, 'RA', 36.3, 163, 99, 94, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(93, '2016-07-24', '15:00:00', 16, 97, 'RA', 36.5, 150, 80, 95, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(94, '2016-07-25', '01:00:00', 17, 86, 'RA', 36.1, 150, 90, 92, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(95, '2016-07-25', '10:00:00', 16, 97, 'RA', 36.4, 161, 97, 83, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(96, '2016-07-25', '12:00:00', 16, 100, 'RA', 36.4, 145, 80, 83, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ct6`
--

CREATE TABLE `ct6` (
  `Field01` bigint(20) NOT NULL,
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
  `Field19` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ct6`
--

INSERT INTO `ct6` (`Field01`, `Field02`, `Field03`, `Field04`, `Field05`, `Field06`, `Field07`, `Field08`, `Field09`, `Field10`, `Field11`, `Field12`, `Field13`, `Field14`, `Field15`, `Field16`, `Field17`, `Field18`, `Field19`) VALUES
(1, '2016-08-28', '06:15:00', 16, 95, 'RA', 36.2, 115, 78, 75, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(2, '2016-08-28', '08:00:00', 16, 94, 'RA', 36.2, 123, 71, 82, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(3, '2016-08-22', '10:30:00', 22, 94, 'RA', 37.5, 118, 76, 105, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(4, '2016-08-22', '13:45:00', 0, 0, 'NULL', 0, 0, 0, 0, 'NULL', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(5, '2016-08-22', '13:45:00', 20, 96, 'RA', 37.4, 112, 65, 85, 'A', 0, 0, 'NULL', '4 hrly', 'NULL', 'NULL', 'NULL', 0),
(6, '2016-08-22', '18:00:00', 18, 96, 'RA', 36.4, 112, 62, 88, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(7, '2016-08-22', '21:55:00', 19, 95, 'RA', 36.2, 109, 55, 89, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(8, '2016-08-23', '06:40:00', 17, 95, 'RA', 36.2, 105, 68, 75, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(9, '2016-08-23', '10:35:00', 16, 97, 'RA', 36.6, 101, 69, 89, 'A', 0, 0, 'NULL', '4 hrly', 'NULL', 'NULL', 'NULL', 0),
(10, '2016-08-23', '13:50:00', 16, 96, 'RA', 37.1, 122, 78, 94, 'A', 0, 0, 'NULL', '4 hrly', 'NULL', 'NULL', 'NULL', 0),
(11, '2016-08-23', '17:00:00', 19, 96, 'RA', 36.9, 99, 54, 84, 'A', 0, 0, 'NULL', '4 hrly', 'NULL', 'NULL', 'NULL', 0),
(12, '2016-08-23', '19:00:00', 18, 96, 'RA', 36.5, 117, 77, 87, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(13, '2016-08-23', '20:53:00', 16, 96, 'RA', 36.8, 115, 75, 97, 'A', 0, 0, 'NULL', '4 hrly', 'NULL', 'NULL', 'NULL', 0),
(14, '2016-08-24', '06:00:00', 18, 98, 'RA', 36.2, 105, 60, 82, 'A', 0, 0, 'NULL', '4 hrly', 'NULL', 'NULL', 'NULL', 0),
(15, '2016-08-24', '10:00:00', 17, 98, 'RA', 36.2, 95, 55, 87, 'A', 0, 0, 'NULL', '4 hrly', 'NULL', 'NULL', 'NULL', 0),
(16, '2016-08-24', '13:20:00', 17, 98, 'RA', 36.2, 114, 77, 95, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(17, '2016-08-24', '18:20:00', 17, 95, 'RA', 37.1, 130, 75, 96, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(18, '2016-08-24', '21:00:00', 17, 97, 'RA', 37.5, 115, 65, 95, 'A', 0, 0, 'NULL', '4 hrly', 'NULL', 'NULL', 'NULL', 0),
(19, '2016-08-25', '06:10:00', 18, 96, 'RA', 36.5, 112, 65, 88, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(20, '2016-08-25', '10:30:00', 0, 0, 'NULL', 0, 0, 0, 0, 'NULL', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(21, '2016-08-25', '18:30:00', 18, 98, 'RA', 36.6, 110, 70, 82, 'A', 0, 0, 'NULL', '4 hrly', 'NULL', 'NULL', 'NULL', 0),
(22, '2016-08-25', '21:00:00', 18, 98, 'RA', 36.1, 102, 78, 78, 'A', 0, 0, 'NULL', '4 hrly', 'NULL', 'NULL', 'NULL', 0),
(23, '2016-08-26', '01:10:00', 17, 96, 'RA', 36.8, 130, 80, 88, 'A', 0, 0, 'NULL', '3 hrly', 'NULL', 'NULL', 'NULL', 0),
(24, '2016-08-26', '01:30:00', 16, 95, 'RA', 36.9, 120, 75, 78, 'A', 0, 0, 'NULL', '3 hrly', 'NULL', 'NULL', 'NULL', 0),
(25, '2016-08-26', '02:00:00', 16, 95, 'RA', 36.2, 122, 82, 82, 'A', 0, 0, 'NULL', '3 hrly', 'NULL', 'NULL', 'NULL', 0),
(26, '2016-08-26', '02:45:00', 17, 95, 'RA', 36.2, 120, 78, 83, 'A', 0, 0, 'NULL', '1 hrly', 'NULL', 'NULL', 'NULL', 0),
(27, '2016-08-26', '03:45:00', 17, 96, 'RA', 36.3, 115, 70, 82, 'A', 0, 0, 'NULL', '1 hrly', 'NULL', 'NULL', 'NULL', 0),
(28, '2016-08-26', '04:45:00', 17, 95, 'RA', 36.7, 105, 60, 78, 'A', 0, 0, 'NULL', '4 hrly', 'NULL', 'NULL', 'NULL', 0),
(29, '2016-08-26', '06:00:00', 18, 96, 'RA', 36.6, 96, 58, 70, 'A', 0, 0, 'NULL', '4 hrly', 'NULL', 'NULL', 'NULL', 0),
(30, '2016-08-26', '10:45:00', 18, 95, 'RA', 36.6, 103, 65, 86, 'A', 0, 0, 'NULL', '4 hrly', 'NULL', 'NULL', 'NULL', 0),
(31, '2016-08-26', '13:15:00', 18, 97, 'RA', 36.3, 102, 60, 87, 'A', 0, 0, 'NULL', '4 hrly', 'NULL', 'NULL', 'NULL', 0),
(32, '2016-08-26', '19:00:00', 19, 96, 'RA', 37.1, 113, 72, 98, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(33, '2016-08-27', '04:00:00', 16, 95, 'RA', 37, 110, 60, 80, 'A', 0, 0, 'NULL', '4 hrly', 'NULL', 'NULL', 'NULL', 0),
(34, '2016-08-27', '06:00:00', 16, 94, 'RA', 37, 111, 76, 90, 'A', 0, 0, 'NULL', '5 hrly', 'NULL', 'NULL', 'NULL', 0),
(35, '2016-08-27', '08:00:00', 18, 94, 'RA', 36.7, 108, 86, 86, 'A', 0, 0, 'NULL', '4 hrly', 'NULL', 'NULL', 'NULL', 0),
(36, '2016-08-27', '14:00:00', 18, 97, 'RA', 36.6, 112, 68, 86, 'NULL', 0, 0, 'NULL', '4 hrly', 'NULL', 'NULL', 'NULL', 0),
(37, '2016-08-27', '19:00:00', 18, 96, 'RA', 36.7, 117, 70, 86, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(38, '2016-08-27', '21:00:00', 16, 90, 'RA', 36.5, 120, 79, 86, 'A', 0, 0, 'NULL', '5 hrly', 'NULL', 'NULL', 'NULL', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ct7`
--

CREATE TABLE `ct7` (
  `Field01` bigint(20) NOT NULL,
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
  `Field19` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ct7`
--

INSERT INTO `ct7` (`Field01`, `Field02`, `Field03`, `Field04`, `Field05`, `Field06`, `Field07`, `Field08`, `Field09`, `Field10`, `Field11`, `Field12`, `Field13`, `Field14`, `Field15`, `Field16`, `Field17`, `Field18`, `Field19`) VALUES
(1, '2016-06-30', '01:30:00', 17, 98, 'RA', 36.4, 122, 80, 92, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(2, '2016-06-30', '05:30:00', 18, 98, 'RA', 36.5, 108, 72, 79, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(3, '2016-06-30', '14:00:00', 19, 98, 'RA', 36.5, 102, 52, 105, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(4, '2016-06-30', '20:00:00', 18, 96, 'RA', 36.5, 131, 88, 98, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(5, '2016-07-01', '08:00:00', 18, 95, 'RA', 36.7, 102, 65, 72, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(6, '2016-07-01', '14:00:00', 19, 96, 'RA', 37.1, 103, 62, 82, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(7, '2016-07-01', '20:20:00', 12, 95, 'RA', 36.6, 130, 81, 88, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(8, '2016-07-02', '07:20:00', 17, 97, 'RA', 36.4, 122, 72, 95, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(9, '2016-06-29', '17:10:00', 19, 97, 'RA', 36.5, 130, 94, 79, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(10, '2016-06-29', '22:00:00', 18, 95, 'RA', 36.2, 125, 85, 97, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(11, '2016-06-30', '08:00:00', 18, 95, 'RA', 36.5, 105, 68, 97, 'NULL', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ct8`
--

CREATE TABLE `ct8` (
  `Field01` bigint(20) NOT NULL,
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
  `Field19` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ct8`
--

INSERT INTO `ct8` (`Field01`, `Field02`, `Field03`, `Field04`, `Field05`, `Field06`, `Field07`, `Field08`, `Field09`, `Field10`, `Field11`, `Field12`, `Field13`, `Field14`, `Field15`, `Field16`, `Field17`, `Field18`, `Field19`) VALUES
(1, '2016-08-09', '10:00:00', 19, 99, 'RA', 36.4, 130, 80, 59, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ct9`
--

CREATE TABLE `ct9` (
  `Field01` bigint(20) NOT NULL,
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
  `Field19` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ct9`
--

INSERT INTO `ct9` (`Field01`, `Field02`, `Field03`, `Field04`, `Field05`, `Field06`, `Field07`, `Field08`, `Field09`, `Field10`, `Field11`, `Field12`, `Field13`, `Field14`, `Field15`, `Field16`, `Field17`, `Field18`, `Field19`) VALUES
(1, '2016-06-07', '06:30:00', 19, 99, 'RA', 36.4, 130, 80, 59, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(2, '2016-06-07', '13:30:00', 19, 97, 'RA', 35.9, 0, 0, 59, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(3, '2016-06-07', '18:30:00', 19, 96, 'RA', 36.1, 112, 77, 62, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(4, '2016-06-08', '06:40:00', 18, 97, 'RA', 36.2, 135, 88, 71, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(5, '2016-06-08', '18:30:00', 20, 96, 'RA', 35.3, 122, 78, 66, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(6, '2016-06-09', '07:00:00', 18, 97, 'RA', 35.7, 118, 73, 62, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(7, '2016-06-09', '12:10:00', 20, 96, 'RA', 35.3, 132, 63, 67, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(8, '2016-06-09', '18:50:00', 19, 97, 'RA', 35.5, 120, 66, 79, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(9, '2016-06-09', '19:50:00', 0, 0, 'NULL', 0, 0, 0, 0, 'NULL', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(10, '2016-06-10', '06:00:00', 18, 98, 'RA', 36.2, 108, 60, 58, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(11, '2016-06-10', '12:10:00', 18, 96, 'RA', 35.4, 115, 80, 62, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(12, '2016-06-10', '18:45:00', 18, 97, 'RA', 35.3, 125, 78, 76, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(13, '2016-06-11', '06:10:00', 18, 96, 'RA', 35.2, 118, 76, 71, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(14, '2016-06-11', '12:25:00', 18, 99, 'RA', 35.2, 108, 66, 68, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(15, '2016-06-11', '18:40:00', 19, 97, 'RA', 35.7, 108, 69, 73, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(16, '2016-06-12', '06:35:00', 20, 97, 'RA', 35.6, 122, 80, 69, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(17, '2016-06-12', '12:30:00', 20, 97, 'RA', 35.2, 117, 65, 80, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(18, '2016-06-12', '18:50:00', 20, 97, 'RA', 36.6, 128, 62, 82, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(19, '2016-06-12', '15:20:00', 18, 97, 'RA', 35.7, 116, 64, 83, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(20, '2016-06-12', '16:42:00', 14, 94, 'RA', 36.1, 114, 72, 77, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(21, '2016-06-12', '17:42:00', 18, 95, 'RA', 36.2, 114, 82, 76, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(22, '2016-06-12', '18:42:00', 19, 94, 'RA', 36.1, 119, 83, 79, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(23, '2016-06-13', '07:10:00', 17, 97, 'RA', 35.2, 119, 88, 69, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(24, '2016-06-13', '14:45:00', 18, 96, 'RA', 36.4, 103, 63, 76, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(25, '2016-06-13', '19:00:00', 18, 96, 'RA', 36.3, 93, 69, 78, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(26, '2016-06-14', '07:05:00', 18, 95, 'RA', 35.4, 123, 85, 82, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(27, '2016-06-14', '12:20:00', 18, 95, 'RA', 35.9, 98, 55, 69, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(28, '2016-06-14', '18:40:00', 18, 96, 'RA', 36.5, 98, 54, 74, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(29, '2016-06-15', '06:30:00', 19, 99, 'RA', 35.4, 108, 76, 62, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(30, '2016-06-15', '13:00:00', 19, 97, 'RA', 36.1, 104, 69, 73, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(31, '2016-06-15', '18:50:00', 19, 96, 'RA', 36.3, 98, 70, 74, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(32, '2016-06-16', '06:24:00', 18, 98, 'RA', 35.8, 101, 60, 60, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(33, '2016-06-16', '13:00:00', 18, 97, 'RA', 35.8, 92, 62, 72, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(34, '2016-06-16', '19:15:00', 18, 93, 'RA', 36.3, 116, 81, 79, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(35, '2016-06-17', '06:35:00', 17, 99, 'RA', 34.5, 113, 89, 63, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(36, '2016-06-17', '12:10:00', 18, 99, 'RA', 35.5, 120, 60, 79, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(37, '2016-06-04', '06:10:00', 17, 97, 'RA', 35.2, 129, 83, 60, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(38, '2016-06-04', '12:00:00', 16, 98, 'RA', 35.4, 111, 75, 67, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(39, '2016-06-04', '19:10:00', 17, 97, 'RA', 35.7, 112, 72, 65, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(40, '2016-06-05', '07:45:00', 16, 95, 'RA', 35.6, 114, 73, 69, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(41, '2016-06-05', '12:00:00', 22, 96, 'RA', 35.6, 105, 70, 59, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(42, '2016-06-05', '18:30:00', 18, 96, 'RA', 35.7, 125, 85, 71, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(43, '2016-06-06', '06:00:00', 19, 99, 'RA', 35.8, 121, 78, 69, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(44, '2016-06-06', '13:45:00', 18, 98, 'RA', 36.1, 113, 78, 67, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(45, '2016-06-06', '19:00:00', 18, 94, 'RA', 35.4, 107, 73, 70, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(46, '2016-05-22', '17:45:00', 19, 96, 'RA', 36.2, 101, 50, 70, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(47, '2016-05-22', '19:30:00', 18, 96, 'RA', 36.5, 101, 68, 68, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(48, '2016-05-23', '08:30:00', 18, 97, 'RA', 36.1, 140, 82, 69, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(49, '2016-05-23', '14:10:00', 18, 95, 'RA', 0, 109, 58, 59, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(50, '2016-05-24', '09:30:00', 20, 98, 'RA', 35.9, 94, 55, 64, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(51, '2016-05-24', '14:10:00', 19, 98, 'RA', 36.5, 93, 59, 66, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(52, '2016-05-24', '21:30:00', 19, 97, 'RA', 36.5, 109, 73, 68, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(53, '2016-05-25', '08:30:00', 17, 98, 'RA', 35.6, 106, 62, 67, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(54, '2016-05-25', '14:00:00', 18, 97, 'RA', 36.5, 94, 63, 62, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(55, '2016-05-25', '20:45:00', 18, 98, 'RA', 36.4, 108, 69, 63, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(56, '2016-05-26', '09:30:00', 18, 0, 'RA', 36.4, 89, 69, 79, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(57, '2016-05-26', '13:30:00', 17, 96, 'RA', 35.9, 94, 61, 60, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(58, '2016-05-26', '20:45:00', 18, 96, 'RA', 36.2, 101, 70, 80, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(59, '2016-05-27', '09:00:00', 18, 96, 'RA', 36.3, 108, 68, 78, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(60, '2016-05-27', '13:00:00', 17, 95, 'RA', 35.7, 104, 63, 66, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(61, '2016-05-27', '20:20:00', 18, 99, 'RA', 36, 117, 69, 72, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(62, '2016-05-28', '00:00:00', 18, 92, 'RA', 36.1, 120, 65, 73, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(63, '2016-05-28', '13:00:00', 18, 95, 'NULL', 35.9, 100, 68, 70, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(64, '2016-05-28', '21:22:00', 18, 96, 'RA', 35.4, 132, 78, 72, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(65, '2016-05-29', '09:50:00', 19, 96, 'RA', 35.1, 136, 73, 78, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(66, '2016-05-29', '14:18:00', 18, 95, 'RA', 35.5, 121, 86, 69, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(67, '2016-05-29', '22:20:00', 17, 97, 'RA', 36.1, 142, 76, 80, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(68, '2016-05-30', '09:00:00', 18, 94, 'RA', 35.4, 136, 89, 66, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(69, '2016-05-30', '15:50:00', 20, 97, 'RA', 35.3, 120, 73, 66, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(70, '2016-05-30', '21:35:00', 16, 97, 'RA', 36, 130, 70, 60, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(71, '2016-05-31', '07:00:00', 16, 97, 'RA', 36.3, 147, 90, 66, 'A', 0, 0, 'NULL', 'TDS', 'NULL', 'NULL', 'NULL', 0),
(72, '2016-05-31', '16:00:00', 16, 97, 'RA', 35.1, 136, 98, 64, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(73, '2016-05-31', '18:30:00', 17, 96, 'RA', 35.2, 122, 72, 76, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(74, '2016-06-01', '06:20:00', 20, 98, 'RA', 35.8, 124, 83, 60, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(75, '2016-06-01', '21:20:00', 18, 99, 'RA', 35, 112, 73, 66, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(76, '2016-06-01', '18:00:00', 19, 96, 'RA', 35.2, 121, 84, 70, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(77, '2016-06-02', '06:40:00', 18, 98, 'RA', 36.2, 133, 88, 61, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(78, '2016-06-02', '18:30:00', 18, 97, 'RA', 35.8, 130, 90, 72, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(79, '2016-06-03', '06:36:00', 19, 94, 'RA', 35.1, 122, 80, 66, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(80, '2016-06-03', '13:00:00', 18, 93, 'RA', 35.9, 103, 57, 67, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(81, '2016-06-03', '19:00:00', 18, 96, 'RA', 35.1, 129, 87, 65, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ct10`
--

CREATE TABLE `ct10` (
  `Field01` bigint(20) NOT NULL,
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
  `Field19` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ct10`
--

INSERT INTO `ct10` (`Field01`, `Field02`, `Field03`, `Field04`, `Field05`, `Field06`, `Field07`, `Field08`, `Field09`, `Field10`, `Field11`, `Field12`, `Field13`, `Field14`, `Field15`, `Field16`, `Field17`, `Field18`, `Field19`) VALUES
(1, '2016-07-14', '15:15:00', 0, 95, 'RA', 36.1, 156, 85, 74, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(2, '2016-07-14', '20:45:00', 0, 99, 'RA', 0, 208, 93, 86, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(3, '2016-07-14', '20:55:00', 0, 0, 'NULL', 0, 158, 86, 76, 'NULL', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(4, '2016-07-15', '07:15:00', 18, 97, 'RA', 35.8, 134, 78, 78, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(5, '2016-07-15', '16:15:00', 17, 96, 'RA', 0, 144, 68, 76, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ct11`
--

CREATE TABLE `ct11` (
  `Field01` bigint(20) NOT NULL,
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
  `Field19` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ct11`
--

INSERT INTO `ct11` (`Field01`, `Field02`, `Field03`, `Field04`, `Field05`, `Field06`, `Field07`, `Field08`, `Field09`, `Field10`, `Field11`, `Field12`, `Field13`, `Field14`, `Field15`, `Field16`, `Field17`, `Field18`, `Field19`) VALUES
(1, '2016-07-31', '12:55:00', 19, 96, 'RA', 36.1, 128, 75, 86, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(2, '2016-07-31', '22:05:00', 17, 96, 'RA', 36.1, 116, 68, 91, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(3, '2016-08-01', '02:00:00', 18, 97, 'RA', 36.2, 146, 91, 89, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(4, '2016-08-01', '06:15:00', 18, 97, 'RA', 36.4, 119, 81, 90, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0),
(5, '2016-08-01', '12:45:00', 18, 99, 'RA', 35.9, 115, 71, 89, 'A', 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ch001`
--
ALTER TABLE `ch001`
  ADD PRIMARY KEY (`Field01`);

--
-- Indexes for table `ch010`
--
ALTER TABLE `ch010`
  ADD PRIMARY KEY (`Field01`);

--
-- Indexes for table `ch011`
--
ALTER TABLE `ch011`
  ADD PRIMARY KEY (`Field01`),
  ADD UNIQUE KEY `Field03` (`Field03`);

--
-- Indexes for table `ch012`
--
ALTER TABLE `ch012`
  ADD PRIMARY KEY (`Field01`);

--
-- Indexes for table `ch013`
--
ALTER TABLE `ch013`
  ADD PRIMARY KEY (`Field01`);

--
-- Indexes for table `ct`
--
ALTER TABLE `ct`
  ADD PRIMARY KEY (`Field01`);

--
-- Indexes for table `ct1`
--
ALTER TABLE `ct1`
  ADD PRIMARY KEY (`Field01`);

--
-- Indexes for table `ct2`
--
ALTER TABLE `ct2`
  ADD PRIMARY KEY (`Field01`);

--
-- Indexes for table `ct3`
--
ALTER TABLE `ct3`
  ADD PRIMARY KEY (`Field01`);

--
-- Indexes for table `ct4`
--
ALTER TABLE `ct4`
  ADD PRIMARY KEY (`Field01`);

--
-- Indexes for table `ct5`
--
ALTER TABLE `ct5`
  ADD PRIMARY KEY (`Field01`);

--
-- Indexes for table `ct6`
--
ALTER TABLE `ct6`
  ADD PRIMARY KEY (`Field01`);

--
-- Indexes for table `ct7`
--
ALTER TABLE `ct7`
  ADD PRIMARY KEY (`Field01`);

--
-- Indexes for table `ct8`
--
ALTER TABLE `ct8`
  ADD PRIMARY KEY (`Field01`);

--
-- Indexes for table `ct9`
--
ALTER TABLE `ct9`
  ADD PRIMARY KEY (`Field01`);

--
-- Indexes for table `ct10`
--
ALTER TABLE `ct10`
  ADD PRIMARY KEY (`Field01`);

--
-- Indexes for table `ct11`
--
ALTER TABLE `ct11`
  ADD PRIMARY KEY (`Field01`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ch001`
--
ALTER TABLE `ch001`
  MODIFY `Field01` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1314;
--
-- AUTO_INCREMENT for table `ct`
--
ALTER TABLE `ct`
  MODIFY `Field01` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ct1`
--
ALTER TABLE `ct1`
  MODIFY `Field01` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ct2`
--
ALTER TABLE `ct2`
  MODIFY `Field01` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ct3`
--
ALTER TABLE `ct3`
  MODIFY `Field01` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT for table `ct4`
--
ALTER TABLE `ct4`
  MODIFY `Field01` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `ct5`
--
ALTER TABLE `ct5`
  MODIFY `Field01` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT for table `ct6`
--
ALTER TABLE `ct6`
  MODIFY `Field01` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `ct7`
--
ALTER TABLE `ct7`
  MODIFY `Field01` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `ct8`
--
ALTER TABLE `ct8`
  MODIFY `Field01` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ct9`
--
ALTER TABLE `ct9`
  MODIFY `Field01` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `ct10`
--
ALTER TABLE `ct10`
  MODIFY `Field01` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ct11`
--
ALTER TABLE `ct11`
  MODIFY `Field01` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
