-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 17, 2015 at 08:07 PM
-- Server version: 5.6.14-log
-- PHP Version: 5.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `testci`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `client_id` varchar(36) NOT NULL,
  `client_name` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_id`, `client_name`) VALUES
('80000027-1307115736', 'D-Company A'),
('80000061-1338999187', 'Z/LC-Company B');

-- --------------------------------------------------------

--
-- Table structure for table `invoicelineitems`
--

CREATE TABLE IF NOT EXISTS `invoicelineitems` (
  `invoice_num` varchar(11) NOT NULL,
  `product_id` varchar(200) NOT NULL,
  `qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `price` decimal(10,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoicelineitems`
--

INSERT INTO `invoicelineitems` (`invoice_num`, `product_id`, `qty`, `price`) VALUES
('DCT1000', 'DICT 12YR', '1.00', '0.00'),
('DCT1001', 'DICT 12YR', '1.00', '0.00'),
('10795', 'DICT 20YR', '10.00', '191.50'),
('10795', 'DICT 12YR', '20.00', '124.00'),
('DCT1003', 'DICT 20YR', '10.00', '191.50'),
('DCT1003', 'DICT 12YR', '20.00', '124.00'),
('DCT1002', 'DICT 12YR', '1.00', '0.00'),
('DCT1002', 'DICT 20YR', '1.00', '0.00'),
('DCT1004', 'DICT 20YR', '1.00', '0.00'),
('DCT1004', 'DICT 12YR', '1.00', '0.00'),
('DCT1005', 'DICT 20YR', '1.00', '0.00'),
('DCT1005', 'DICT 12YR', '1.00', '0.00'),
('BN1006', 'DICT 20YR', '0.33', '0.00'),
('BN1006', 'DICT 12YR', '0.33', '0.00'),
('DCT1005A', 'DICT 20YR', '1.00', '0.00'),
('DCT1005A', 'DICT 12YR', '1.00', '0.00'),
('DCT1008', 'DICT 20YR', '0.17', '0.00'),
('DCT1008', 'DICT 12YR', '0.17', '0.00'),
('DCT1007', 'DICT 20YR', '0.17', '0.00'),
('DCT1007', 'DICT 12YR', '0.17', '0.00'),
('DCT1006', 'DICT 20YR', '0.17', '0.00'),
('DCT1006', 'DICT 12YR', '0.33', '0.00'),
('DCT1009', 'DICT 20YR', '0.17', '0.00'),
('DCT1009', 'DICT 12YR', '0.17', '0.00'),
('DCT1010', 'DICT 20YR', '0.17', '0.00'),
('DCT1010', 'DICT 12YR', '0.17', '0.00'),
('DCT1012', 'DICT 20YR', '0.50', '0.00'),
('DCT1012', 'DICT 12YR', '0.50', '0.00'),
('DCT1011', 'DICT 20YR', '0.17', '0.00'),
('DCT1011', 'DICT 12YR', '0.17', '0.00'),
('DCT1013', 'DICT 20YR', '25.00', '177.60'),
('DCT1013', 'DICT 12YR', '12.00', '114.60'),
('DCT1014', 'DICT 20YR', '2.00', '191.50'),
('DCT1014', 'DICT 12YR', '10.00', '124.00'),
('DCT1015', 'DICT 20YRWBOX', '40.00', '186.00'),
('DCT1015', 'DICT 12YR', '80.00', '114.00'),
('DCT1017', 'Z DCTSINSERT', '0.08', '0.00'),
('DCT1017', 'Z DICTLINSERT', '0.00', '0.00'),
('DCT1017', 'Z DCTBASEHOLDER', '0.04', '0.00'),
('DCT1016', 'Z DCTSINSERT', '0.88', '0.00'),
('DCT1016', 'Z DICTLINSERT', '0.00', '0.00'),
('DCT1016', 'Z DICTLINSERT', '1.00', '0.00'),
('DCT1016', 'Z DCTBASEHOLDER', '0.44', '0.00'),
('DCT1015A', 'Total Gallons= 142.65288', '0.00', '0.00'),
('DCT1015A', 'FEIN# 371601874', '0.00', '0.00'),
('DCT1015A', '', '0.00', '0.00'),
('DCT1015A', 'DICT 20YRWBOX', '3.00', '0.00'),
('DCT1015A', 'DICT 12YR', '6.00', '0.00'),
('DCT1015A', 'DICT 20YRWBOX', '37.00', '186.00'),
('DCT1015A', 'DICT 12YR', '74.00', '114.00'),
('DCT1020', 'DICT 20YR', '0.33', '0.00'),
('DCT1020', 'DICT 12YR', '0.33', '0.00'),
('DCT1021', 'DICT 20YRWBOX', '4.00', '0.00'),
('DCT1021', 'DICT 12YR', '4.00', '0.00'),
('DCT1022', 'DICT 20YRWBOX', '3.00', '0.00'),
('DCT1022', 'DICT 12YR', '3.00', '0.00'),
('DCT1023', 'DICT 20YRWBOX', '0.33', '0.00'),
('DCT1023', 'DICT 12YR', '0.33', '0.00'),
('DCT1025', 'DICT 20YRWBOX', '60.00', '192.00'),
('DCT1025', 'DICT 12YR', '120.00', '126.00'),
('DCT1026', 'DICT 20YRWBOX', '0.17', '0.00'),
('DCT1026', 'DICT 12YR', '0.17', '0.00'),
('DCT1024', 'ZDICT 20YRBOX', '0.04', '0.00'),
('DCT1027', 'DICT 20YRWBOX', '0.33', '0.00'),
('DCT1027', 'DICT 12YR', '0.33', '0.00'),
('DCT1025A', 'DICT 20YRWBOX', '60.00', '192.00'),
('DCT1025A', 'DICT 12YR', '120.00', '126.00'),
('DT0001', 'DICT 20YRWBOX', '0.33', '0.00'),
('DT0001', 'DICT 12YR', '0.33', '0.00'),
('DT0002', 'DICT 20YRWBOX', '0.17', '0.00'),
('DT0002', 'DICT 12YR', '0.17', '0.00'),
('DT0003', 'DICT 20YRWBOX', '0.17', '0.00'),
('DT0003', 'DICT 12YR', '0.17', '0.00'),
('DT0004', 'DICT 20YRWBOX', '0.50', '0.00'),
('DT0004', 'DICT 12YR', '0.50', '0.00'),
('DCT1006A', 'DICT 20YR', '0.17', '0.00'),
('DT0005', 'DICT 20YRWBOX', '0.17', '0.00'),
('DT0005', 'DICT 12YR', '0.17', '0.00'),
('DT0006', 'DICT 20YRWBOX', '0.50', '0.00'),
('DT0006', 'DICT 12YR', '0.50', '0.00'),
('DT0007', 'DICT 20YRWBOX', '3.00', '0.00'),
('DT0007', 'DICT 12YR', '3.00', '0.00'),
('DT0008', 'DICT 20YRWBOX', '0.50', '0.00'),
('DT0008', 'DICT 12YR', '0.50', '0.00'),
('DT0010', 'DICT 12YR', '20.00', '114.60'),
('DT0012', 'DICT 12YR', '0.17', '0.00'),
('DT0013', 'DICT 20YRWBOX', '1.00', '0.00'),
('DT0013', 'DICT 12YR', '1.00', '0.00'),
('DT0014', 'DICT 20YRWBOX', '2.00', '0.00'),
('DT0014', 'DICT 12YR', '4.00', '0.00'),
('DT0014', 'DICT 20YRWBOX', '40.00', '192.00'),
('DT0014', 'DICT 12YR', '80.00', '126.00'),
('DT0015', 'DICT 20YRWBOX', '1.00', '0.00'),
('DT0015', 'DICT 12YR', '1.00', '0.00'),
('DT0016', 'DICT 20YRWBOX', '9.00', '198.70'),
('DT0016', 'DICT 12YR', '21.00', '132.70'),
('DT0017', 'DICT 20YRWBOX', '1.00', '0.00'),
('DT0017', 'DICT 12YR', '1.00', '0.00'),
('DT0018', 'DICT 20YRWBOX', '0.33', '0.00'),
('DT0018', 'DICT 12YR', '0.33', '0.00'),
('DT0019', 'DICT 20YRWBOX', '60.00', '132.00'),
('DT0019', 'DICT 12YR', '60.00', '78.00'),
('DT0020', 'DICT 20YRWBOX', '0.33', '0.00'),
('DT0020', 'DICT 12YR', '0.33', '0.00'),
('DT0016A', 'DICT 20YRWBOX', '1.00', '0.00'),
('DT0016A', 'DICT 12YR', '1.00', '0.00'),
('DT0019A', 'DICT 20YRWBOX', '60.00', '132.00'),
('DT0019A-1', 'DICT 12YR', '60.00', '78.00'),
('DT0019AA', 'DICT 20YRWBOX', '60.00', '152.58'),
('DT0019AA', 'DICT 12YR', '60.00', '96.90'),
('DT0023', 'DICT 20YRWBOX', '4.00', '191.50'),
('DT0014A', 'DICT 20YR', '2.00', '0.00'),
('DT0014A', 'DICT 20YR', '40.00', '192.00'),
('DT0014A', 'DICT 12YR', '4.00', '0.00'),
('DT0014A', 'DICT 12YR', '80.00', '126.00'),
('DT0016AA', 'DICT 20YR', '1.00', '0.00'),
('DT0016AA', 'DICT 12YR', '1.00', '0.00'),
('DT0016AAA', 'DICT 20YR', '1.00', '0.00'),
('DT0016AAA', 'DICT 12YR', '1.00', '0.00'),
('DT0023A', 'DICT 20YRWBOX', '2.00', '0.00'),
('DT0023A', 'DICT 12YR', '2.00', '0.00'),
('DT0024', 'DICT 20YRWBOX', '0.17', '0.00'),
('DT0024', 'DICT 12YR', '0.17', '0.00'),
('DT0025', 'DICT 20YRWBOX', '0.33', '0.00'),
('DT0025', 'DICT 12YR', '0.33', '0.00'),
('DT0026', 'DICT 20YRWBOX', '3.00', '0.00'),
('DT0026', 'DICT 12YR', '3.00', '0.00'),
('DT0027', 'DICT 20YRWBOX', '1.00', '0.00'),
('DT0027', 'DICT 12YR', '1.00', '0.00'),
('DT0029', 'DICT 20YRWBOX', '4.67', '0.00'),
('DT0030', 'DICT 20YRWBOX', '1.00', '251.96'),
('DT0030', 'DICT 12YR', '1.00', '167.96'),
('DT0031', 'DICT 20YRWBOX', '0.33', '0.00'),
('DT0031', 'DICT 12YR', '0.33', '0.00'),
('DT0032', 'DICT 20YRWBOX', '2.00', '251.96'),
('DT0032', 'DICT 12YR', '1.00', '167.96'),
('LC0001', 'LC-VDK-750', '20.00', '165.00'),
('DT0033', 'DICT 20YRWBOX', '3.00', '192.00'),
('DT0033', 'DICT 12YR', '10.00', '126.00'),
('DT0034', 'DICT 20YRWBOX', '0.17', '0.00'),
('DT0034', 'DICT 12YR', '0.17', '0.00'),
('LC0002', 'LC-VDKPASS-750', '0.08', '0.00'),
('LC0002', 'LC-VDK-750', '0.08', '0.00'),
('LC0002', 'LC-VDKPASS-750', '1.00', '0.00'),
('LC0002', 'LC-VDK-750', '1.00', '0.00'),
('DT0035', 'DICT 12YR', '0.17', '0.00'),
('LC0003', 'LC-VDK-750', '25.00', '123.75'),
('LC0004', 'LC-VDK-750', '28.00', '150.00'),
('LC0004A', 'LC-VDK-750', '28.00', '150.00'),
('LC0005', 'LC-VDK-750', '112.00', '151.79'),
('DT0036', 'DICT 20YRWBOX', '60.00', '192.00'),
('DT0038', 'DICT 20YRWBOX', '1.00', '0.00'),
('DT0038', 'DICT 20YRWBOX', '5.00', '178.00'),
('DT0038', 'DICT 12YR', '1.00', '0.00'),
('DT0038', 'DICT 12YR', '15.00', '115.80'),
('DT0039', 'DICT 20YRWBOX', '0.17', '0.00'),
('DT0039', 'DICT 12YR', '0.17', '0.00'),
('DT0040', 'DICT 20YRWBOX', '0.17', '0.00'),
('DT0040', 'DICT 12YR', '0.17', '0.00'),
('DT0041', 'DICT 20YRWBOX', '2.00', '251.96'),
('DT0043', 'DICT 20YRWBOX', '1.00', '269.94'),
('DT0043', 'DICT 12YR', '1.00', '176.94'),
('GF-20120921', 'Some Description', '1.00', '600.00'),
('DT0044', 'DICT 20YRWBOX', '0.33', '0.00'),
('DT0044', 'DICT 12YR', '0.33', '0.00'),
('DT0045', 'DICT 20YRWBOX', '14.00', '178.00'),
('DT0045', 'DICT 12YR', '14.00', '115.80'),
('DT0046', 'DICT 20YRWBOX', '0.17', '0.00'),
('DT0046', 'DICT 12YR', '0.17', '0.00'),
('DT0047', 'DICT 20YRWBOX', '1.00', '0.00'),
('DT0047', 'DICT 12YR', '1.00', '0.00'),
('DT0048', 'DICT 20YR', '0.17', '0.00'),
('DT0048', 'DICT 12YR', '0.17', '0.00'),
('DT0049', 'DICT 20YRWBOX', '1.00', '0.00'),
('DT0049', 'DICT 20YRWBOX', '3.00', '275.94'),
('DT0049', 'DICT 12YR', '1.00', '0.00'),
('DT0049', 'DICT 12YR', '3.00', '179.94'),
('DT0051', 'DICT 20YRWBOX', '0.50', '0.00'),
('DT0051', 'DICT 12YR', '0.50', '0.00'),
('DT0052', 'DICT 20YRWBOX', '0.50', '0.00'),
('DT0052', 'DICT 12YR', '0.50', '0.00'),
('DT0054', 'DICT 20YRWBOX', '1.00', '0.00'),
('DT0054', 'DICT 20YRWBOX', '14.00', '177.60'),
('DT0054', 'DICT 12YR', '1.00', '0.00'),
('DT0054', 'DICT 12YR', '14.00', '114.60'),
('DT0049A', 'DICT 20YRWBOX', '1.67', '0.00'),
('DT0049A', 'DICT 20YRWBOX', '0.83', '275.94'),
('DT0049A', 'DICT 12YR', '1.33', '0.00'),
('DT0049A', 'DICT 12YR', '0.83', '179.94'),
('DT0049A1', 'DICT 20YRWBOX', '1.50', '0.00'),
('DT0049A1', 'DICT 12YR', '1.83', '0.00'),
('DT0055', 'DICT 20YRWBOX', '0.50', '44.99'),
('DT0055', 'DICT 12YR', '0.50', '29.99'),
('DT0055A', 'DICT 20YRWBOX', '0.50', '269.94'),
('DT0055A', 'DICT 12YR', '0.50', '179.94'),
('DT0049AA', 'DICT 20YRWBOX', '1.50', '0.00'),
('DT0049AA', 'DICT 12YR', '1.83', '0.00'),
('DT0056', 'DICT 12YR', '0.17', '0.00'),
('DT0056', 'DICT 20YR', '0.17', '0.00'),
('DT0057', 'DICT 20YRWBOX', '0.17', '0.00'),
('DT0057', 'DICT 12YR', '0.17', '0.00'),
('DT0058', 'DICT 20YRWBOX', '0.50', '269.94'),
('DT0058', 'DICT 12YR', '0.50', '179.94'),
('OR59543LC', 'LC-VDK-750', '1.00', '149.93'),
('DT0059', 'DICT 20YRWBOX', '1.00', '251.96'),
('DT0054A', 'DICT 20YRWBOX', '1.00', '0.00'),
('DT0054A', 'DICT 20YRWBOX', '13.00', '177.60'),
('DT0054A', 'DICT 12YR', '1.00', '0.00'),
('DT0054A', 'DICT 12YR', '15.00', '114.60'),
('DT0060', 'DICT 12YR', '1.00', '167.96'),
('DT0061', 'DICT 20YRWBOX', '1.00', '269.94'),
('DT0061', 'DICT 12YR', '1.00', '176.94'),
('DT0062', 'DICT 20YRWBOX', '0.50', '269.94'),
('DT0063', 'DICT 20YRWBOX', '2.00', '251.96'),
('DT0063', 'DICT 12YR', '2.00', '167.96'),
('LC0007', 'LC-VDK-750', '70.00', '60.00'),
('DT0064', 'DICT 12YR', '1.00', '176.94'),
('DT0065', 'DICT 20YRWBOX', '1.00', '269.94'),
('DT0066', 'DICT 20YRWBOX', '2.00', '251.96'),
('DT0066A', 'DICT 20YRWBOX', '0.17', '0.00'),
('DT0067', 'DICT 20YRWBOX', '13.00', '198.70'),
('DT0067', 'DICT 12YR', '22.00', '132.70'),
('DT0068', 'DICT 20YRWBOX', '1.00', '0.00'),
('DT0068', 'DICT 12YR', '1.00', '0.00'),
('DT0071', 'DICT 20YRWBOX', '0.50', '269.94'),
('DT0068A', 'DICT 12YR', '1.00', '0.00'),
('DT0068B', 'DICT 20YRWBOX', '0.50', '0.00'),
('DT0072', 'DICT 20YRWBOX', '0.17', '0.00'),
('DT0072A', 'DICT 20YRWBOX', '1.00', '0.00'),
('DT0068BB', 'DICT 20YRWBOX', '0.50', '0.00'),
('DT0073', 'FEIN #3', '0.00', '0.00'),
('DT0073', '', '0.00', '0.00'),
('DT0073', '67.76 Gallons', '0.00', '0.00'),
('DT0073', 'DICT 20YRWBOX', '40.00', '186.00'),
('DT0073', 'DICT 12YR', '17.00', '0.00'),
('LC0010', 'LC-VDKPASS-750', '200.00', '160.00'),
('DT0075', 'DICT 20YRWBOX', '22.00', '132.00'),
('DT0075', 'DICT 12YR', '30.00', '114.00'),
('DT0076', 'DICT 20YRWBOX', '2.00', '132.00'),
('DT0076', 'DICT 12YR', '6.00', '108.00'),
('DT0078', 'DICT 20YRWBOX', '40.00', '192.00'),
('DT0078', 'DICT 12YR', '20.00', '126.00'),
('DT0079', 'DICT 20YRWBOX', '0.17', '0.00'),
('DT0079', 'DICT 12YR', '0.17', '0.00'),
('DT0076A', 'DICT 20YRWBOX', '2.00', '132.00'),
('DT0076A', 'DICT 12YR', '6.00', '114.00'),
('DT0080', 'DICT 20YRWBOX', '0.17', '0.00'),
('DT0080', 'DICT 12YR', '0.17', '0.00'),
('LC0011', 'LC-VDK-1750', '100.00', '85.00'),
('LC0011A', 'LC-VDK-1750', '104.00', '85.00'),
('LC0012', 'LC-VDKPASS-750', '200.00', '160.00'),
('DT0081', 'DICT 20YRWBOX', '7.00', '132.00'),
('DT0081', 'DICT 12YR', '17.00', '114.00'),
('LC0013', 'LC-VDK-750', '56.00', '151.79'),
('LC0014', 'LC-VDK-1750', '52.00', '85.00'),
('LC0015', 'LC-VDKPASS-750', '5.00', '150.00'),
('LC0015', 'LC-VDK-750', '7.00', '150.00'),
('LC0016', 'LC-VDK-50', '10.00', '0.00'),
('DT0082', 'DICT 20YRWBOX', '10.00', '178.02'),
('DT0082', 'DICT 12YR', '10.00', '115.80'),
('LC0017', 'LC-VDK-750', '56.00', '151.79'),
('LC0018', 'LC-VDK-1750', '104.00', '85.00'),
('LC0019', 'LC-VDKPASS-750', '14.00', '150.00'),
('DT0084', 'DICT 20YRWBOX', '7.00', '177.60'),
('DT0084', 'DICT 20YR', '8.00', '177.60'),
('DT0084', 'DICT 12YR', '3.00', '114.60'),
('LC0020', 'LC-VDK-50', '5.00', '120.00'),
('LC0023', 'LC-VDK-750', '55.00', '72.00'),
('LC0023', 'LC-VDK-1750', '15.00', '90.00'),
('DT0086', 'DICT 12YR', '0.33', '0.00'),
('DT0086', 'DICT 20YRWBOX', '0.33', '0.00'),
('LC0021', 'LC-VDK-750', '0.17', '0.00'),
('LC0021', 'LC-VDKPASS-750', '0.17', '0.00'),
('DT0087', 'DICT 12YR', '2.00', '0.00'),
('DT0087', 'DICT 20YRWBOX', '2.00', '0.00'),
('LC0022', 'LC-VDK-750', '0.17', '0.00'),
('LC0022', 'LC-VDKPASS-750', '0.17', '0.00'),
('DT0088', 'DICT 20YRWBOX', '4.00', '191.50'),
('LC0023A', 'LC-VDK-750', '55.00', '72.00'),
('LC0023A', 'LC-VDK-1750', '14.83', '90.00'),
('LC0023B', 'LC-VDK-1750', '0.17', '0.00'),
('DT0092', 'DICT 12YR', '24.00', '114.00'),
('DT0092', 'DICT 20YRWBOX', '24.00', '192.00'),
('LC0026', 'LC-VDK-750', '56.00', '151.79'),
('DT0094', 'DICT 12YR', '10.00', '114.00'),
('DT0094', 'DICT 20YRWBOX', '10.00', '172.00'),
('DT0094A', 'DICT 12YR', '10.00', '114.00'),
('DT0094A', 'DICT 20YRWBOX', '10.00', '172.00'),
('LC0027', 'LC-VDK-1750', '104.00', '85.00'),
('DT0098', 'DICT 12YR', '19.00', '132.70'),
('DT0098', 'DICT 20YRWBOX', '16.00', '198.70'),
('DT0098A', 'DICT 12YR', '19.00', '132.70'),
('DT0098A', 'DICT 20YRWBOX', '16.00', '198.70'),
('DT0096', 'DICT 12YR', '60.00', '122.00'),
('DT0096', 'DICT 20YRWBOX', '120.00', '183.00'),
('DT0096A', 'DICT 12YR', '60.00', '117.00'),
('DT0096A', 'DICT 20YRWBOX', '120.00', '178.00'),
('LC0028', 'LC-VDK-50', '25.00', '8.00'),
('DT0101', 'DICT 12YR', '1.00', '179.96'),
('DT0101', 'DICT 20YRWBOX', '2.00', '269.96'),
('DT0101', 'DICT 12YR', '0.17', '0.00'),
('DT0101', 'DICT 20YRWBOX', '0.33', '0.00'),
('LC0029', 'LC-VDK-750', '56.00', '151.79'),
('LC0030', 'LC-VDK-1750', '52.00', '85.00'),
('DT0102', 'DICT 20YR', '5.00', '192.00'),
('DT0103', 'DICT 12YR', '60.00', '94.80'),
('DT0104', 'DICT 12YR', '1.00', '179.96'),
('DT0104', 'DICT 20YRWBOX', '1.00', '269.96'),
('DT0105', 'DICT 20YRWBOX', '12.00', '192.00'),
('DT0105A', 'DICT 20YRWBOX', '20.00', '192.00'),
('DT0108', 'DICT 12YR', '60.00', '114.00'),
('DT0108', '', '0.00', '0.00'),
('DT0108', 'Total Wine Gallons: 71.32644', '0.00', '0.00'),
('DT0108', 'FEIN: 3', '0.00', '0.00'),
('DT0109', 'DICT 12YR', '0.33', '0.00'),
('DT0109', 'DICT 20YRWBOX', '0.33', '0.00'),
('DT0110', 'DICT 20YRWBOX', '1.00', '269.96'),
('DT0111', 'DICT 12YR', '24.00', '122.00'),
('LC0031', 'LC-VDK-750', '46.50', '120.00'),
('LC0031', 'LC-VDK-750', '3.50', '0.00'),
('DT0112', 'DICT 12YR', '0.33', '0.00'),
('DT0112', 'DICT 20YR', '0.33', '0.00'),
('DC0169', 'DICT 20YR', '1.00', '269.96'),
('DT0113', 'DICT 20YR', '1.00', '269.96'),
('LC0031A', 'LC-VDK-750', '75.00', '120.00'),
('LC0031A', 'LC-VDK-750', '25.00', '0.00'),
('DT0115', 'DICT 20YRWBOX', '24.00', '192.00'),
('DT0114', 'DICT 20YRWBOX', '1.00', '269.96'),
('DT0118A', 'DICT 20YRWBOX', '3.00', '269.96'),
('DT0119', 'DICT 20YRWBOX', '5.00', '192.00'),
('DT0120', 'DICT 20YRWBOX', '1.00', '269.96'),
('LC0032F', 'LC-VDK-1750', '52.00', '85.00'),
('DT0121', 'DICT 20YRWBOX', '0.50', '0.00'),
('DT0122', 'DICT 12YR', '0.50', '0.00'),
('DT0122', 'DICT 20YRWBOX', '0.50', '0.00'),
('LC0031AA', 'LC-VDK-750', '75.00', '120.00'),
('LC0031AA', 'LC-VDK-750', '25.00', '0.00'),
('DT0123', 'DICT 20YRWBOX', '1.00', '269.96'),
('DT0124', 'DICT 12YR', '0.17', '0.00'),
('DT0124', 'DICT 20YRWBOX', '0.17', '0.00'),
('LC0033F', 'LC-VDK-1L', '55.00', '110.00'),
('DT0125', 'DICT 20YRWBOX', '1.00', '269.96'),
('LC0034F', 'LC-VDK-1750', '52.00', '85.00'),
('DT0126', 'DICT 20YRWBOX', '2.00', '0.00'),
('LC0035F', 'LC-VDK-1750', '104.00', '85.00'),
('DT0127', 'DICT 20YRWBOX', '1.00', '269.96'),
('DT0128', 'DICT 20YRWBOX', '8.00', '31.00'),
('DT0128', 'DICT 12YR', '9.00', '22.00'),
('LC0037F', 'LC-VDK-1L', '56.00', '110.00'),
('LC0036F', 'LC-VDK-1750', '56.00', '85.00'),
('DT0128A', 'DICT 12YR', '16.00', '132.00'),
('DT0128A', 'DICT 12YR', '1.00', '0.00'),
('DT0128A', 'DICT 20YRWBOX', '8.00', '186.00'),
('DT0128A', 'DICT 20YRWBOX', '0.50', '0.00'),
('LC0038', 'LC-VDK-750', '146.00', '69.53'),
('LC0038', 'LC-VDK-1750', '5.00', '0.00'),
('LC0038', 'LC-VDK-1L', '18.00', '48.00'),
('LC0039', 'LC-VDK-50', '9.00', '53.34'),
('DT0131', 'DICT 20YRWBOX', '1.00', '269.96'),
('DT0132', 'DICT 12YR', '84.00', '94.80'),
('DT0133', 'DICT 12YR', '36.00', '94.80'),
('DT0134', 'Z-DICT12YRLCBOSTICK', '800.00', '0.00'),
('DT0138', 'DICT 20YRWBOX', '1.00', '269.96'),
('DT0138', 'DICT 12YR', '1.00', '179.96'),
('DT0135', 'DICT 20YRWBOX', '15.00', '186.00'),
('DT0135', 'DICT 12YR', '5.00', '132.00');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE IF NOT EXISTS `invoices` (
  `invoice_date` date NOT NULL,
  `client_id` varchar(36) NOT NULL,
  `invoice_num` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`invoice_date`, `client_id`, `invoice_num`) VALUES
('2015-03-18', '80000027-1307115736', 'DCT1000'),
('2014-03-15', '80000027-1307115736', 'DCT1001'),
('2014-03-15', '80000027-1307115736', '10795'),
('2014-03-15', '80000027-1307115736', 'DCT1003'),
('2014-03-15', '80000027-1307115736', 'DCT1002'),
('2014-03-15', '80000027-1307115736', 'DCT1004'),
('2014-03-15', '80000027-1307115736', 'DCT1005'),
('2014-03-15', '80000027-1307115736', 'BN1006'),
('2014-03-15', '80000027-1307115736', 'DCT1005A'),
('2014-03-15', '80000027-1307115736', 'DCT1008'),
('2014-03-15', '80000027-1307115736', 'DCT1007'),
('2014-03-15', '80000027-1307115736', 'DCT1006'),
('2014-03-15', '80000027-1307115736', 'DCT1009'),
('2014-03-15', '80000027-1307115736', 'DCT1010'),
('2014-03-15', '80000027-1307115736', 'DCT1012'),
('2014-03-15', '80000027-1307115736', 'DCT1011'),
('2014-03-15', '80000027-1307115736', 'DCT1013'),
('2014-03-15', '80000027-1307115736', 'DCT1014'),
('2014-03-15', '80000027-1307115736', 'DCT1015'),
('2014-03-15', '80000027-1307115736', 'DCT1017'),
('2014-03-15', '80000027-1307115736', 'DCT1016'),
('2014-03-15', '80000027-1307115736', 'DCT1015A'),
('2014-03-15', '80000027-1307115736', 'DCT1020'),
('2014-03-15', '80000027-1307115736', 'DCT1021'),
('2014-03-15', '80000027-1307115736', 'DCT1022'),
('2014-03-15', '80000027-1307115736', 'DCT1023'),
('2014-03-15', '80000027-1307115736', 'DCT1025'),
('2014-03-15', '80000027-1307115736', 'DCT1026'),
('2014-03-15', '80000027-1307115736', 'DCT1024'),
('2014-03-15', '80000027-1307115736', 'DCT1027'),
('2014-03-15', '80000027-1307115736', 'DCT1025A'),
('2014-03-15', '80000027-1307115736', 'DT0001'),
('2014-03-15', '80000027-1307115736', 'DT0002'),
('2014-03-15', '80000027-1307115736', 'DT0003'),
('2014-03-15', '80000027-1307115736', 'DT0004'),
('2014-03-15', '80000027-1307115736', 'DCT1006A'),
('2014-03-15', '80000027-1307115736', 'DT0005'),
('2014-03-15', '80000027-1307115736', 'DT0006'),
('2014-03-15', '80000027-1307115736', 'DT0007'),
('2014-03-15', '80000027-1307115736', 'DT0008'),
('2014-03-15', '80000027-1307115736', 'DT0010'),
('2014-03-15', '80000027-1307115736', 'DT0012'),
('2014-03-15', '80000027-1307115736', 'DT0013'),
('2014-03-15', '80000027-1307115736', 'DT0014'),
('2014-03-15', '80000027-1307115736', 'DT0015'),
('2014-03-15', '80000027-1307115736', 'DT0016'),
('2014-03-15', '80000027-1307115736', 'DT0017'),
('2014-03-15', '80000027-1307115736', 'DT0018'),
('2014-03-15', '80000027-1307115736', 'DT0019'),
('2014-03-15', '80000027-1307115736', 'DT0020'),
('2014-03-15', '80000027-1307115736', 'DT0016A'),
('2014-03-15', '80000027-1307115736', 'DT0019A'),
('2014-03-15', '80000027-1307115736', 'DT0019A-1'),
('2014-03-15', '80000027-1307115736', 'DT0019AA'),
('2014-03-15', '80000027-1307115736', 'DT0023'),
('2014-03-15', '80000027-1307115736', 'DT0014A'),
('2014-03-15', '80000027-1307115736', 'DT0016AA'),
('2014-03-15', '80000027-1307115736', 'DT0016AAA'),
('2014-03-15', '80000027-1307115736', 'DT0023A'),
('2014-03-15', '80000027-1307115736', 'DT0024'),
('2014-03-15', '80000027-1307115736', 'DT0025'),
('2014-03-15', '80000027-1307115736', 'DT0026'),
('2014-03-15', '80000027-1307115736', 'DT0027'),
('2014-03-15', '80000027-1307115736', 'DT0029'),
('2014-03-15', '80000027-1307115736', 'DT0030'),
('2014-03-15', '80000027-1307115736', 'DT0031'),
('2014-03-15', '80000027-1307115736', 'DT0032'),
('2015-03-15', '80000061-1338999187', 'LC0001'),
('2014-03-15', '80000027-1307115736', 'DT0033'),
('2014-03-15', '80000027-1307115736', 'DT0034'),
('2012-08-17', '80000061-1338999187', 'LC0002'),
('2014-03-15', '80000027-1307115736', 'DT0035'),
('2012-08-28', '80000061-1338999187', 'LC0003'),
('2012-09-07', '80000061-1338999187', 'LC0004'),
('2012-09-07', '80000061-1338999187', 'LC0004A'),
('2012-09-07', '80000061-1338999187', 'LC0005'),
('2014-03-15', '80000027-1307115736', 'DT0036'),
('2014-03-15', '80000027-1307115736', 'DT0038'),
('2014-03-15', '80000027-1307115736', 'DT0039'),
('2014-03-15', '80000027-1307115736', 'DT0040'),
('2014-03-15', '80000027-1307115736', 'DT0041'),
('2014-03-15', '80000027-1307115736', 'DT0043'),
('2012-09-21', '80000061-1338999187', 'GF-20120921'),
('2014-03-15', '80000027-1307115736', 'DT0044'),
('2014-03-15', '80000027-1307115736', 'DT0045'),
('2014-03-15', '80000027-1307115736', 'DT0046'),
('2014-03-15', '80000027-1307115736', 'DT0047'),
('2014-03-15', '80000027-1307115736', 'DT0048'),
('2014-03-15', '80000027-1307115736', 'DT0049'),
('2014-03-15', '80000027-1307115736', 'DT0051'),
('2014-03-15', '80000027-1307115736', 'DT0052'),
('2014-03-15', '80000027-1307115736', 'DT0054'),
('2014-03-15', '80000027-1307115736', 'DT0049A'),
('2014-03-15', '80000027-1307115736', 'DT0049A1'),
('2014-03-15', '80000027-1307115736', 'DT0055'),
('2014-03-15', '80000027-1307115736', 'DT0055A'),
('2014-03-15', '80000027-1307115736', 'DT0049AA'),
('2014-03-15', '80000027-1307115736', 'DT0056'),
('2014-03-15', '80000027-1307115736', 'DT0057'),
('2014-03-15', '80000027-1307115736', 'DT0058'),
('2012-11-02', '80000061-1338999187', 'OR59543LC'),
('2014-03-15', '80000027-1307115736', 'DT0059'),
('2014-03-15', '80000027-1307115736', 'DT0054A'),
('2014-03-15', '80000027-1307115736', 'DT0060'),
('2014-03-15', '80000027-1307115736', 'DT0061'),
('2014-03-15', '80000027-1307115736', 'DT0062'),
('2014-03-15', '80000027-1307115736', 'DT0063'),
('2013-01-29', '80000061-1338999187', 'LC0007'),
('2014-03-15', '80000027-1307115736', 'DT0064'),
('2014-03-15', '80000027-1307115736', 'DT0065'),
('2014-03-15', '80000027-1307115736', 'DT0066'),
('2014-03-15', '80000027-1307115736', 'DT0066A'),
('2014-03-15', '80000027-1307115736', 'DT0067'),
('2014-03-15', '80000027-1307115736', 'DT0068'),
('2014-03-15', '80000027-1307115736', 'DT0071'),
('2014-03-15', '80000027-1307115736', 'DT0068A'),
('2014-03-15', '80000027-1307115736', 'DT0068B'),
('2014-03-15', '80000027-1307115736', 'DT0072'),
('2014-03-15', '80000027-1307115736', 'DT0072A'),
('2014-03-15', '80000027-1307115736', 'DT0068BB'),
('2014-03-15', '80000027-1307115736', 'DT0073'),
('2013-01-23', '80000061-1338999187', 'LC0010'),
('2014-03-15', '80000027-1307115736', 'DT0075'),
('2014-03-15', '80000027-1307115736', 'DT0076'),
('2014-03-15', '80000027-1307115736', 'DT0078'),
('2014-03-15', '80000027-1307115736', 'DT0079'),
('2014-03-15', '80000027-1307115736', 'DT0076A'),
('2014-03-15', '80000027-1307115736', 'DT0080'),
('2013-02-05', '80000061-1338999187', 'LC0011'),
('2013-02-05', '80000061-1338999187', 'LC0011A'),
('2013-02-14', '80000061-1338999187', 'LC0012'),
('2014-03-15', '80000027-1307115736', 'DT0081'),
('2013-02-26', '80000061-1338999187', 'LC0013'),
('2013-03-04', '80000061-1338999187', 'LC0014'),
('2013-03-13', '80000061-1338999187', 'LC0015'),
('2013-03-18', '80000061-1338999187', 'LC0016'),
('2014-03-15', '80000027-1307115736', 'DT0082'),
('2013-03-22', '80000061-1338999187', 'LC0017'),
('2013-03-31', '80000061-1338999187', 'LC0018'),
('2013-03-26', '80000061-1338999187', 'LC0019'),
('2014-03-15', '80000027-1307115736', 'DT0084'),
('2013-04-04', '80000061-1338999187', 'LC0020'),
('2013-04-23', '80000061-1338999187', 'LC0023'),
('2014-03-15', '80000027-1307115736', 'DT0086'),
('2013-04-09', '80000061-1338999187', 'LC0021'),
('2014-03-15', '80000027-1307115736', 'DT0087'),
('2013-04-10', '80000061-1338999187', 'LC0022'),
('2014-03-15', '80000027-1307115736', 'DT0088'),
('2013-05-01', '80000061-1338999187', 'LC0023A'),
('2013-05-08', '80000061-1338999187', 'LC0023B'),
('2014-03-15', '80000027-1307115736', 'DT0092'),
('2013-05-24', '80000061-1338999187', 'LC0026'),
('2014-03-15', '80000027-1307115736', 'DT0094'),
('2014-03-15', '80000027-1307115736', 'DT0094A'),
('2013-06-12', '80000061-1338999187', 'LC0027'),
('2014-03-15', '80000027-1307115736', 'DT0098'),
('2014-03-15', '80000027-1307115736', 'DT0098A'),
('2014-03-15', '80000027-1307115736', 'DT0096'),
('2014-03-15', '80000027-1307115736', 'DT0096A'),
('2013-06-19', '80000061-1338999187', 'LC0028'),
('2014-03-15', '80000027-1307115736', 'DT0101'),
('2013-07-11', '80000061-1338999187', 'LC0029'),
('2013-07-10', '80000061-1338999187', 'LC0030'),
('2014-03-15', '80000027-1307115736', 'DT0102'),
('2014-03-15', '80000027-1307115736', 'DT0103'),
('2014-03-15', '80000027-1307115736', 'DT0104'),
('2014-03-15', '80000027-1307115736', 'DT0105'),
('2014-03-15', '80000027-1307115736', 'DT0105A'),
('2014-03-15', '80000027-1307115736', 'DT0108'),
('2014-03-15', '80000027-1307115736', 'DT0109'),
('2014-03-15', '80000027-1307115736', 'DT0110'),
('2014-03-15', '80000027-1307115736', 'DT0111'),
('2013-09-01', '80000061-1338999187', 'LC0031'),
('2014-03-15', '80000027-1307115736', 'DT0112'),
('2014-03-15', '80000027-1307115736', 'DC0169'),
('2014-03-15', '80000027-1307115736', 'DT0113'),
('2013-09-01', '80000061-1338999187', 'LC0031A'),
('2014-03-15', '80000027-1307115736', 'DT0115'),
('2014-03-15', '80000027-1307115736', 'DT0114'),
('2014-03-15', '80000027-1307115736', 'DT0118A'),
('2014-03-15', '80000027-1307115736', 'DT0119'),
('2014-03-15', '80000027-1307115736', 'DT0120'),
('2013-09-18', '80000061-1338999187', 'LC0032F'),
('2014-03-15', '80000027-1307115736', 'DT0121'),
('2014-03-15', '80000027-1307115736', 'DT0122'),
('2013-09-26', '80000061-1338999187', 'LC0031AA'),
('2014-03-15', '80000027-1307115736', 'DT0123'),
('2014-03-15', '80000027-1307115736', 'DT0124'),
('2013-10-02', '80000061-1338999187', 'LC0033F'),
('2014-03-15', '80000027-1307115736', 'DT0125'),
('2013-10-02', '80000061-1338999187', 'LC0034F'),
('2014-03-15', '80000027-1307115736', 'DT0126'),
('2013-10-02', '80000061-1338999187', 'LC0035F'),
('2014-03-15', '80000027-1307115736', 'DT0127'),
('2014-03-15', '80000027-1307115736', 'DT0128'),
('2013-10-23', '80000061-1338999187', 'LC0037F'),
('2013-10-23', '80000061-1338999187', 'LC0036F'),
('2014-03-15', '80000027-1307115736', 'DT0128A'),
('2013-11-11', '80000061-1338999187', 'LC0038'),
('2013-11-13', '80000061-1338999187', 'LC0039'),
('2014-03-15', '80000027-1307115736', 'DT0131'),
('2014-03-15', '80000027-1307115736', 'DT0132'),
('2014-03-15', '80000027-1307115736', 'DT0133'),
('2014-03-15', '80000027-1307115736', 'DT0134'),
('2014-03-15', '80000027-1307115736', 'DT0138'),
('2014-03-15', '80000027-1307115736', 'DT0135');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product_id` varchar(70) NOT NULL,
  `client_id` varchar(36) NOT NULL,
  `product_description` varchar(252) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `client_id`, `product_description`) VALUES
('DICT 12YR', '80000027-1307115736', 'Blah Rum 12 Yr 6/750mL 40%'),
('DICT 20YR', '80000027-1307115736', 'Blah Rum 20 Yr 6/750mL 40%'),
('ZDICT 20YRBOX', '80000027-1307115736', 'Blah 750ml 20YR Outer Boxes(1cs=1Pallet)'),
('ZDICT 20YRHOLDER', '80000027-1307115736', 'Blah 750ml Cardboard Bottle Holder (1 cs = 1 Pallet)'),
('SDICT12YRSAMPLES', '80000027-1307115736', 'Blah Rum 12 Yr Samples No Box 6/750mL 40%'),
('DICT 20YRWBOX', '80000027-1307115736', 'Blah Rum 20 Yr Box 6/750mL 40%'),
('DCTZ Base Holder', '80000027-1307115736', 'Blah Rum Cardboard Base Bottle Holder'),
('Z DCTBASEHOLDER', '80000027-1307115736', 'Blah Rum Cardboard Base Bottle Holder'),
('Z DCTLINSERT', '80000027-1307115736', 'Blah Long Insert'),
('Z DCTSINSERT', '80000027-1307115736', 'Blah Short Insert'),
('LC-VDK-750', '80000061-1338999187', 'Widget Kosher Vodka 12/750mL 40%'),
('LC-VDKPASS-750', '80000061-1338999187', 'Widget Kosher Vodka for Passover 12/750mL 40%'),
('LC-VDK-1L', '80000061-1338999187', 'Widget Kosher Vodka 12/1L 40%'),
('LC-VDK-1750', '80000061-1338999187', 'Widget Kosher Vodka 6/1750mL 40%'),
('LC-VDK-50', '80000061-1338999187', 'Widget Kosher Vodka 120/50 40%'),
('Z-DICT12YRLCBOSTICK', '80000027-1307115736', 'Blah Labels (LCBO)');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
