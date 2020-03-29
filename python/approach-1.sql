-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2019 at 09:26 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asteroid`
--

-- --------------------------------------------------------

--
-- Table structure for table `approach`
--

CREATE TABLE `approach` (
  `name` text,
  `diameter` text,
  `date` text,
  `time` text,
  `velocity` text,
  `distance` text,
  `report` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `approach`
--

INSERT INTO `approach` (`name`, `diameter`, `date`, `time`, `velocity`, `distance`, `report`) VALUES
('326777 (2003 SV222)', '1623.63311968425', '2019-Sep-23', '23:42', '42832.1142339318', '55173920.741581766', 'This asteroid poses no threat to planet Earth!'),
('(2016 EW1)', '51.3437874269', '2019-Sep-23', '11:58', '54912.0699025052', '19542898.850631422', 'This asteroid poses no threat to planet Earth!'),
('(2019 QK4)', '419.07128301355', '2019-Sep-23', '01:24', '102686.1667099463', '42908739.718922061', 'This asteroid poses no threat to planet Earth!'),
('(2019 SH)', '236.53090948205', '2019-Sep-23', '12:21', '93728.4937473913', '7819588.240728317', 'This asteroid could be dangerous to planet Earth!'),
('(2007 TQ24)', '214.0365300967', '2019-Sep-23', '03:00', '50232.0841732343', '9217701.136158342', 'This asteroid could be dangerous to planet Earth!'),
('(2016 PC2)', '148.07710042895', '2019-Sep-23', '14:31', '75963.411533817', '56382052.734552298', 'This asteroid poses no threat to planet Earth!'),
('(2019 JP2)', '684.9957890158', '2019-Sep-23', '14:39', '56079.4249782068', '67380384.540427323', 'This asteroid poses no threat to planet Earth!'),
('(2014 QQ266)', '427.0590225287', '2019-Sep-23', '08:06', '96245.6102569854', '24265737.17629345', 'This asteroid poses no threat to planet Earth!'),
('(2016 FL14)', '37.19528593845', '2019-Sep-27', '03:34', '41749.510640827', '68545655.142945646', 'This asteroid poses no threat to planet Earth!'),
('467475 (2006 RG7)', '978.3357005335499', '2019-Sep-27', '11:41', '42994.2156502097', '36373735.103592888', 'This asteroid poses no threat to planet Earth!'),
('(2014 NU64)', '282.1550980972', '2019-Sep-27', '18:49', '18132.9384079347', '24925324.881371155', 'This asteroid poses no threat to planet Earth!'),
('(2006 MB)', '170.01525911825001', '2019-Sep-27', '10:55', '16207.128694959', '50602516.39033697', 'This asteroid poses no threat to planet Earth!'),
('(2016 SG17)', '257.32850784415', '2019-Sep-27', '09:43', '66224.9740577256', '56029571.549719554', 'This asteroid poses no threat to planet Earth!'),
('(2006 QV89)', '49.0329363309', '2019-Sep-27', '03:54', '14855.1191307561', '6927624.314902895', 'This asteroid poses no threat to planet Earth!'),
('354030 (2001 RB18)', '1123.27967760725', '2019-Sep-28', '22:51', '23159.2663640241', '13864577.986812813', 'This asteroid poses no threat to planet Earth!'),
('442243 (2011 MD11)', '1350.4792065157499', '2019-Sep-28', '00:24', '31488.0018846894', '55665422.419177012', 'This asteroid poses no threat to planet Earth!'),
('(2017 UH1)', '33.92250394885', '2019-Sep-28', '01:18', '131053.0935108859', '74663982.103242372', 'This asteroid poses no threat to planet Earth!'),
('(2009 KY1)', '102.44432416065', '2019-Sep-28', '07:46', '24622.6099675019', '56454708.859581992', 'This asteroid poses no threat to planet Earth!'),
('137084 (1998 XS16)', '2954.52658195695', '2019-Sep-28', '08:29', '63140.3019641876', '67526705.7832405', 'This asteroid poses no threat to planet Earth!'),
('140333 (2001 TD2)', '892.2527634155', '2019-Sep-28', '03:02', '48922.597254055', '52909899.27662571', 'This asteroid poses no threat to planet Earth!'),
('(2000 EU70)', '978.3357005335499', '2019-Sep-28', '21:37', '65971.8252063058', '56280383.793092035', 'This asteroid could be dangerous to planet Earth!'),
('(2009 BK2)', '49.0329363309', '2019-Sep-28', '03:08', '69193.8644249128', '61854282.187135587', 'This asteroid poses no threat to planet Earth!'),
('(2019 OV2)', '428.83270717385', '2019-Sep-28', '04:43', '18569.2528737627', '34261992.691421694', 'This asteroid poses no threat to planet Earth!'),
('(2019 HF3)', '530.7474322027', '2019-Sep-25', '16:35', '66412.0630323274', '62884730.686314023', 'This asteroid poses no threat to planet Earth!'),
('(2017 BU93)', '135.04792065155002', '2019-Sep-25', '04:48', '72820.907408614', '68541322.429595558', 'This asteroid poses no threat to planet Earth!'),
('(2019 QE6)', '307.1057173263', '2019-Sep-25', '17:25', '55623.9991783849', '26664177.114576346', 'This asteroid poses no threat to planet Earth!'),
('(2019 RU2)', '76.928612891', '2019-Sep-25', '23:34', '17943.0293496952', '15592917.124985245', 'This asteroid poses no threat to planet Earth!'),
('(2019 FR1)', '53.937138422000004', '2019-Sep-25', '10:02', '64645.5927091374', '61489453.05947496', 'This asteroid poses no threat to planet Earth!'),
('(2011 SY120)', '128.9697629799', '2019-Sep-25', '09:16', '56621.9610069494', '59339338.569251961', 'This asteroid poses no threat to planet Earth!'),
('(2014 QN433)', '186.41802463480002', '2019-Sep-25', '12:16', '74179.8672712549', '37101633.220295296', 'This asteroid poses no threat to planet Earth!'),
('(2019 SV)', '90.1338457799', '2019-Sep-25', '16:42', '43641.4218207941', '9123600.650137119', 'This asteroid poses no threat to planet Earth!'),
('(2019 QY3)', '62.847484812999994', '2019-Sep-26', '07:35', '30121.017462642', '5335165.580282091', 'This asteroid poses no threat to planet Earth!'),
('(2017 YR3)', '49.0329363309', '2019-Sep-26', '13:30', '65402.3268613055', '60077431.900473165', 'This asteroid poses no threat to planet Earth!'),
('87684 (2000 SY2)', '3392.2503948826497', '2019-Sep-26', '23:50', '119408.348871796', '56962256.629110243', 'This asteroid could be dangerous to planet Earth!'),
('(2006 BA9)', '162.3633119684', '2019-Sep-26', '04:06', '53190.4662041447', '61629787.993922217', 'This asteroid poses no threat to planet Earth!'),
('(2008 TC2)', '123.16516746674999', '2019-Sep-26', '13:48', '26751.4080344604', '15463919.869030187', 'This asteroid poses no threat to planet Earth!'),
('(2017 KP27)', '38.948245759049996', '2019-Sep-26', '19:36', '16939.8444467498', '1621033.797764179', 'This asteroid poses no threat to planet Earth!'),
('(2016 RK17)', '49.0329363309', '2019-Oct-01', '03:23', '65528.100148338', '54714488.120021828', 'This asteroid poses no threat to planet Earth!'),
('(2000 SF8)', '490.3293633092', '2019-Oct-01', '05:27', '68709.1222986185', '72460271.64788787', 'This asteroid poses no threat to planet Earth!'),
('(2013 FL9)', '135.04792065155002', '2019-Oct-01', '23:21', '65194.78101916', '21918259.009048162', 'This asteroid poses no threat to planet Earth!'),
('(2013 UC1)', '64.63799872945', '2019-Oct-01', '10:55', '59111.5271757354', '65285928.476290156', 'This asteroid poses no threat to planet Earth!'),
('(2019 RX)', '76.9994994013', '2019-Oct-01', '00:57', '18281.1661178383', '19580757.748149979', 'This asteroid poses no threat to planet Earth!'),
('(2018 FK5)', '12.3165167467', '2019-Oct-01', '22:56', '37713.5413522888', '5093435.707833263', 'This asteroid poses no threat to planet Earth!'),
('(2019 RD3)', '202.90273528310001', '2019-Oct-01', '12:07', '39711.9200630533', '42738603.931344436', 'This asteroid poses no threat to planet Earth!'),
('(2018 WM2)', '74.2143523275', '2019-Oct-01', '03:50', '34785.3763336399', '66942045.039019941', 'This asteroid poses no threat to planet Earth!'),
('(2015 KN120)', '468.2609066689', '2019-Sep-29', '18:20', '51880.6759213534', '16725845.715194658', 'This asteroid poses no threat to planet Earth!'),
('(2016 TK)', '128.9697629799', '2019-Sep-29', '18:09', '19196.5561814956', '42191337.732853954', 'This asteroid poses no threat to planet Earth!'),
('(2018 MA5)', '30.9376912994', '2019-Sep-29', '19:48', '27007.8644136365', '18206195.536761296', 'This asteroid poses no threat to planet Earth!'),
('(2014 TC36)', '56.29734342095', '2019-Sep-29', '14:24', '39856.71124579', '24905413.659190534', 'This asteroid poses no threat to planet Earth!'),
('468909 (2014 KZ44)', '468.2609066689', '2019-Sep-29', '06:32', '99637.0598810837', '72849417.625081044', 'This asteroid poses no threat to planet Earth!'),
('(1999 AJ39)', '295.4526581957', '2019-Sep-29', '15:26', '32529.7844309809', '24819425.895578985', 'This asteroid poses no threat to planet Earth!'),
('(2006 RJ1)', '204.4032993801', '2019-Sep-29', '16:21', '25805.4908932839', '33618962.717952181', 'This asteroid poses no threat to planet Earth!'),
('(2011 LT17)', '269.45602679105', '2019-Sep-29', '00:01', '31129.0773841774', '58066717.507607793', 'This asteroid could be dangerous to planet Earth!'),
('(2015 SO2)', '93.43033406495', '2019-Sep-29', '12:09', '29547.0156967079', '20643774.496496126', 'This asteroid poses no threat to planet Earth!'),
('(2018 TC5)', '32.3957397704', '2019-Sep-29', '14:14', '41904.3233458156', '54813582.467179604', 'This asteroid poses no threat to planet Earth!'),
('523971 (1999 AJ39)', '295.4526581957', '2019-Sep-29', '15:26', '32529.7842885103', '24819425.910538772', 'This asteroid poses no threat to planet Earth!'),
('530520 (2011 LT17)', '269.45602679105', '2019-Sep-29', '00:01', '31129.0788400269', '58066701.06680188', 'This asteroid could be dangerous to planet Earth!'),
('537342 (2015 KN120)', '468.2609066689', '2019-Sep-29', '18:20', '51880.6768987224', '16725846.717500387', 'This asteroid poses no threat to planet Earth!'),
('(2014 XX7)', '646.3799872944501', '2019-Sep-30', '20:32', '77819.9608113296', '35745960.582353643', 'This asteroid poses no threat to planet Earth!'),
('405212 (2003 QC10)', '1414.1253306917001', '2019-Sep-30', '08:26', '71823.2093541331', '21114890.23298988', 'This asteroid could be dangerous to planet Earth!'),
('(2011 TO)', '30.9376912994', '2019-Sep-30', '18:39', '43611.6860922895', '17664407.058758095', 'This asteroid poses no threat to planet Earth!'),
('(2015 FJ35)', '85.20947739185', '2019-Sep-30', '19:46', '43292.2536000547', '28124927.984556201', 'This asteroid poses no threat to planet Earth!'),
('(2019 SP)', '73.12870818350001', '2019-Sep-30', '21:34', '53115.8512568864', '2560401.907680739', 'This asteroid poses no threat to planet Earth!'),
('333510 (2005 MD)', '1024.443241606', '2019-Sep-30', '04:09', '70427.0389602398', '42622527.308783195', 'This asteroid poses no threat to planet Earth!'),
('(2014 TL17)', '148.07710042895', '2019-Sep-30', '11:21', '23641.6004981459', '51405041.135212712', 'This asteroid poses no threat to planet Earth!'),
('481542 (2007 RF5)', '1176.218217868', '2019-Sep-24', '19:21', '77049.8041694432', '39134328.102998703', 'This asteroid poses no threat to planet Earth!'),
('162162 (1999 DB7)', '589.5055547552499', '2019-Sep-24', '06:00', '31072.7884182956', '67128065.233152675', 'This asteroid could be dangerous to planet Earth!'),
('(2001 PH9)', '323.9573977041', '2019-Sep-24', '02:44', '16927.1866497126', '66280554.314397753', 'This asteroid poses no threat to planet Earth!'),
('293726 (2007 RQ17)', '170.01525911825001', '2019-Sep-24', '05:23', '10453.0797604905', '66190675.465308143', 'This asteroid poses no threat to planet Earth!'),
('(2018 VH5)', '18.64180246345', '2019-Sep-24', '07:22', '16499.6606379029', '28708664.498176113', 'This asteroid poses no threat to planet Earth!'),
('(2013 RV73)', '46.8260906669', '2019-Sep-24', '02:56', '85340.7968345402', '44767706.146400858', 'This asteroid poses no threat to planet Earth!'),
('(2019 QO6)', '197.37307244344998', '2019-Sep-24', '06:25', '48039.7147074655', '15008682.585096316', 'This asteroid poses no threat to planet Earth!'),
('(2016 QR44)', '128.9697629799', '2019-Sep-24', '09:37', '65809.6852688291', '55184579.61973884', 'This asteroid poses no threat to planet Earth!'),
('(2017 NB7)', '117.6218217868', '2019-Sep-24', '07:18', '51240.2141670523', '44047253.904642812', 'This asteroid poses no threat to planet Earth!'),
('(1998 FF14)', '407.8382003084', '2019-Sep-24', '07:27', '80142.1925081512', '4158715.184863567', 'This asteroid could be dangerous to planet Earth!'),
('361538 (2007 JZ20)', '1072.7237641434501', '2019-Sep-24', '20:54', '82701.724164066', '54686597.721450082', 'This asteroid poses no threat to planet Earth!'),
('(2014 AT51)', '204.4032993801', '2019-Sep-24', '09:51', '52732.4560653622', '46836282.856132689', 'This asteroid poses no threat to planet Earth!'),
('(2018 FB4)', '17.80278314265', '2019-Sep-24', '15:27', '56507.3841275752', '53519481.500089995', 'This asteroid poses no threat to planet Earth!'),
('523934 (1998 FF14)', '407.8382003084', '2019-Sep-24', '07:27', '80142.1925000389', '4158715.184863567', 'This asteroid could be dangerous to planet Earth!');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
