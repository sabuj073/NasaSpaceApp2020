-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2019 at 10:58 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

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
  `neo_id` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `diameter` text DEFAULT NULL,
  `date` text DEFAULT NULL,
  `time` text DEFAULT NULL,
  `velocity` text DEFAULT NULL,
  `distance` text DEFAULT NULL,
  `report` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `approach`
--

INSERT INTO `approach` (`neo_id`, `name`, `diameter`, `date`, `time`, `velocity`, `distance`, `report`) VALUES
('3856728', '(2019 ST4)', '113.57634843894999', '2019-Oct-06', '22:51', '27634.0271826173', '34057956.739960387', 'This asteroid poses no threat to planet Earth!'),
('3831892', '(2018 UE1)', '25.73285078445', '2019-Oct-06', '17:30', '25611.592438281', '29860691.769735242', 'This asteroid poses no threat to planet Earth!'),
('3704267', '(2015 BU4)', '42.7059022529', '2019-Oct-06', '16:36', '54248.2364073316', '55929141.039266299', 'This asteroid poses no threat to planet Earth!'),
('3752516', '(2016 HT6)', '40.78382003085', '2019-Oct-06', '04:12', '71800.6162258537', '45923241.02425809', 'This asteroid poses no threat to planet Earth!'),
('3873201', '(2019 TH)', '41.408347730100004', '2019-Oct-06', '23:47', '41323.9221380419', '5618203.852734871', 'This asteroid poses no threat to planet Earth!'),
('3781246', '(2017 QG33)', '112.32796776075', '2019-Oct-06', '07:05', '37560.3845167829', '19552656.985053439', 'This asteroid poses no threat to planet Earth!'),
('2470975', '470975 (2009 SC15)', '295.4526581957', '2019-Oct-06', '20:35', '26442.7594938059', '64743346.994937872', 'This asteroid poses no threat to planet Earth!'),
('3831213', '(2018 TA2)', '22.412376099', '2019-Oct-06', '22:53', '37132.693771369', '26926579.243490059', 'This asteroid poses no threat to planet Earth!'),
('3842870', '(2019 LX4)', '236.31315675780002', '2019-Oct-06', '17:17', '28951.5082104606', '18491108.135887093', 'This asteroid could be dangerous to planet Earth!'),
('3856731', '(2019 SZ4)', '39.4900698296', '2019-Oct-06', '22:52', '23371.2027609458', '7165797.51295226', 'This asteroid poses no threat to planet Earth!'),
('3137844', '(2002 TZ66)', '37.19528593845', '2019-Oct-07', '05:46', '40743.379895346', '34537423.179155411', 'This asteroid poses no threat to planet Earth!'),
('3602705', '(2012 HF2)', '64.63799872945', '2019-Oct-07', '15:09', '79636.7841619824', '54464170.970800112', 'This asteroid poses no threat to planet Earth!'),
('3638287', '(2013 JL14)', '70.8741562492', '2019-Oct-07', '12:14', '74804.3040352583', '72460232.737481883', 'This asteroid poses no threat to planet Earth!'),
('3655761', '(2014 AE29)', '18.64180246345', '2019-Oct-07', '19:15', '21520.2287688267', '14761282.699058109', 'This asteroid poses no threat to planet Earth!'),
('3843825', '(2019 RO2)', '51.13142562275', '2019-Oct-07', '01:05', '25974.5559874625', '8748553.943076131', 'This asteroid poses no threat to planet Earth!'),
('3874057', '(2019 TK1)', '85.2879943737', '2019-Oct-07', '18:27', '38275.973173939', '8316269.90912997', 'This asteroid poses no threat to planet Earth!'),
('3843303', '(2019 NT6)', '408.40203900095', '2019-Oct-07', '21:00', '12569.050839289', '41884658.793241027', 'This asteroid poses no threat to planet Earth!'),
('3873328', '(2019 TC1)', '19.20825451835', '2019-Oct-08', '11:40', '47193.716422098', '1339810.461630026', 'This asteroid poses no threat to planet Earth!'),
('3873318', '(2019 TS)', '45.633933132500005', '2019-Oct-08', '14:36', '27935.6173865006', '3229682.313072123', 'This asteroid poses no threat to planet Earth!'),
('3869346', '(2019 SV6)', '92.3608458747', '2019-Oct-08', '08:20', '38392.1431087943', '24350882.359821798', 'This asteroid poses no threat to planet Earth!'),
('3632550', '(2013 EX89)', '61.7288095619', '2019-Oct-08', '14:56', '33305.9679167696', '19372304.859737774', 'This asteroid poses no threat to planet Earth!'),
('3761735', '(2016 UR36)', '17.80278314265', '2019-Oct-08', '14:07', '110398.0925995326', '63312324.707357388', 'This asteroid poses no threat to planet Earth!'),
('3843858', '(2019 RU3)', '1330.1110508662', '2019-Oct-08', '06:11', '158505.1238787037', '70383725.336028594', 'This asteroid poses no threat to planet Earth!'),
('3873207', '(2019 TM)', '60.6859146134', '2019-Oct-08', '12:03', '46567.0145006132', '3610796.320785849', 'This asteroid poses no threat to planet Earth!'),
('3856705', '(2019 SY3)', '125.1088124396', '2019-Oct-08', '14:00', '56895.0023911396', '12802119.612516441', 'This asteroid poses no threat to planet Earth!'),
('3844021', '(2019 SG3)', '30.96619909245', '2019-Oct-08', '03:37', '23415.623758975', '8755208.475207767', 'This asteroid poses no threat to planet Earth!'),
('2252558', '252558 (2001 WT1)', '513.4378742686999', '2019-Oct-08', '04:44', '88693.7133281648', '61967165.897478057', 'This asteroid poses no threat to planet Earth!'),
('2334412', '334412 (2002 EZ2)', '513.4378742686999', '2019-Oct-08', '21:17', '24190.0559737494', '33170226.927528936', 'This asteroid poses no threat to planet Earth!'),
('2469219', '469219 Kamo`oalewa (2016 HO3)', '77.7119669972', '2019-Oct-08', '04:44', '15592.7967417348', '22620945.277041174', 'This asteroid poses no threat to planet Earth!'),
('3838865', '(2019 DR1)', '100.71354935835001', '2019-Oct-08', '17:35', '26070.2786495902', '56880851.541929765', 'This asteroid poses no threat to planet Earth!'),
('3873321', '(2019 TU)', '33.9694020086', '2019-Oct-08', '06:13', '35417.1544577316', '1683933.792983314', 'This asteroid poses no threat to planet Earth!'),
('3743606', '(2016 CW193)', '257.32850784415', '2019-Oct-08', '14:03', '46529.4842253198', '13213104.425324547', 'This asteroid could be dangerous to planet Earth!'),
('3843767', '(2019 RK)', '48.005157808', '2019-Oct-08', '11:25', '10969.9554891918', '6397802.933470131', 'This asteroid poses no threat to planet Earth!'),
('3869331', '(2019 SB6)', '25.3097526987', '2019-Oct-08', '12:03', '28223.0981454408', '2979748.882386957', 'This asteroid poses no threat to planet Earth!'),
('3873161', '(2019 SV9)', '47.4337982087', '2019-Oct-12', '21:51', '48890.6673689563', '3309073.423967939', 'This asteroid poses no threat to planet Earth!'),
('3843785', '(2019 RH1)', '56.6614783785', '2019-Oct-12', '11:49', '14441.5918291441', '9802421.151054995', 'This asteroid poses no threat to planet Earth!'),
('3389197', '(2007 UY1)', '148.07710042895', '2019-Oct-12', '19:57', '59046.7667927886', '53489262.820108717', 'This asteroid poses no threat to planet Earth!'),
('3843706', '(2019 QK6)', '128.9697629799', '2019-Oct-12', '23:41', '25916.5495747783', '16878450.981094842', 'This asteroid poses no threat to planet Earth!'),
('3856709', '(2019 SH4)', '166.68169250845', '2019-Oct-12', '09:57', '94570.7749901478', '8346599.53089164', 'This asteroid poses no threat to planet Earth!'),
('3786458', '(2017 UG)', '17.80278314265', '2019-Oct-12', '05:34', '25586.5842337966', '29119715.358443824', 'This asteroid poses no threat to planet Earth!'),
('3844023', '(2019 SJ3)', '89.967965928', '2019-Oct-12', '05:02', '18347.1221636503', '28148328.48729585', 'This asteroid poses no threat to planet Earth!'),
('2424965', '424965 (2009 AM15)', '978.3357005335499', '2019-Oct-12', '03:09', '82732.5564243113', '69124082.278561388', 'This asteroid poses no threat to planet Earth!'),
('3831612', '(2018 TJ3)', '61.7288095619', '2019-Oct-12', '22:11', '75023.2124497476', '51687218.801038956', 'This asteroid poses no threat to planet Earth!'),
('3253645', '(2004 ST2)', '81.374419168', '2019-Oct-12', '07:15', '42257.8299332106', '54280674.103779816', 'This asteroid poses no threat to planet Earth!'),
('3387792', '(2007 TJ19)', '371.9528593847', '2019-Oct-12', '01:26', '90613.1975632672', '57654482.310922866', 'This asteroid poses no threat to planet Earth!'),
('3843925', '(2019 SE2)', '86.2755828035', '2019-Oct-12', '22:19', '36754.8806014816', '7367837.185556926', 'This asteroid poses no threat to planet Earth!'),
('3872638', '(2019 SK8)', '32.635321971850004', '2019-Oct-12', '21:32', '30391.0298244394', '4025555.951607452', 'This asteroid poses no threat to planet Earth!'),
('3843155', '(2019 NY2)', '302.4738969908', '2019-Oct-13', '17:23', '49134.0773139556', '38666677.442128611', 'This asteroid could be dangerous to planet Earth!'),
('3873320', '(2019 TT)', '57.8479404819', '2019-Oct-13', '00:09', '27802.4631313788', '10473478.539785387', 'This asteroid poses no threat to planet Earth!'),
('3727066', '(2015 RZ35)', '978.3357005335499', '2019-Oct-13', '04:32', '60188.7242129983', '20862221.435171338', 'This asteroid poses no threat to planet Earth!'),
('3730330', '(2015 TX178)', '89.22527634155', '2019-Oct-13', '23:33', '31300.3086867921', '33037293.228021633', 'This asteroid poses no threat to planet Earth!'),
('3740664', '(2016 BQ)', '24.574681716249998', '2019-Oct-13', '01:03', '13996.728351394', '22760018.278656046', 'This asteroid poses no threat to planet Earth!'),
('3825828', '(2018 OZ)', '58.95055547555', '2019-Oct-13', '06:14', '24177.5586055673', '39111424.23526788', 'This asteroid poses no threat to planet Earth!'),
('2204131', '204131 (2003 YL)', '617.2880956188501', '2019-Oct-13', '10:31', '63910.6860942115', '71560214.806410762', 'This asteroid poses no threat to planet Earth!'),
('3836177', '(2018 VZ6)', '37.19528593845', '2019-Oct-13', '05:17', '27963.4571831064', '43223933.604737731', 'This asteroid poses no threat to planet Earth!'),
('3825086', '(2018 LK)', '257.32850784415', '2019-Oct-13', '07:14', '37302.6200295528', '49054991.275863615', 'This asteroid could be dangerous to planet Earth!'),
('3841981', '(2019 KY)', '31.73130267505', '2019-Oct-13', '04:22', '14541.9186972439', '35697746.894268361', 'This asteroid poses no threat to planet Earth!'),
('3873205', '(2019 TL)', '85.9979109789', '2019-Oct-14', '06:59', '23971.2717984127', '13328090.479413488', 'This asteroid poses no threat to planet Earth!'),
('3838824', '(2019 DD)', '24.405510797250002', '2019-Oct-14', '03:49', '32268.2762806386', '73440580.072249247', 'This asteroid poses no threat to planet Earth!'),
('3596682', '(2012 BL77)', '123.16516746674999', '2019-Oct-14', '19:33', '54071.421583369', '53629897.429009158', 'This asteroid poses no threat to planet Earth!'),
('2339714', '339714 (2005 ST1)', '468.2609066689', '2019-Oct-14', '09:47', '48502.3329861059', '19134877.870823756', 'This asteroid poses no threat to planet Earth!'),
('3670139', '(2014 HM178)', '1231.65167466715', '2019-Oct-14', '19:57', '77966.1587250011', '48750323.051301784', 'This asteroid poses no threat to planet Earth!'),
('3611402', '(2012 TR231)', '93.43033406495', '2019-Oct-14', '13:27', '82057.356095107', '61785896.408103978', 'This asteroid poses no threat to planet Earth!'),
('3557530', '(2011 CE50)', '128.9697629799', '2019-Oct-10', '00:20', '47700.1499605279', '42298637.119266981', 'This asteroid poses no threat to planet Earth!'),
('3873208', '(2019 TO)', '281.89534328795', '2019-Oct-10', '21:34', '45775.1062169608', '41419109.997404222', 'This asteroid poses no threat to planet Earth!'),
('2143527', '143527 (2003 EN16)', '1123.27967760725', '2019-Oct-10', '16:56', '53279.4862374091', '48974730.552549489', 'This asteroid poses no threat to planet Earth!'),
('3546798', '(2010 SZ3)', '18.64180246345', '2019-Oct-10', '01:12', '25684.940789801', '24450922.599351797', 'This asteroid poses no threat to planet Earth!'),
('3117420', '(2002 EY2)', '777.1196699725001', '2019-Oct-10', '19:57', '47694.79942196', '42041087.182306931', 'This asteroid could be dangerous to planet Earth!'),
('3759642', '(2016 RH40)', '77.7119669972', '2019-Oct-10', '17:20', '30034.2746955687', '31666086.481897263', 'This asteroid poses no threat to planet Earth!'),
('2085770', '85770 (1998 UP1)', '447.18569419245', '2019-Oct-10', '08:39', '59273.1283975384', '45113227.634406953', 'This asteroid poses no threat to planet Earth!'),
('2475534', '475534 (2006 TS7)', '309.3769129943', '2019-Oct-10', '23:14', '118024.0522062473', '71055003.426496597', 'This asteroid could be dangerous to planet Earth!'),
('3831728', '(2018 TU4)', '44.718569419299996', '2019-Oct-10', '18:04', '58438.6071822058', '36351395.878062593', 'This asteroid poses no threat to planet Earth!'),
('3869330', '(2019 SX5)', '130.2230616337', '2019-Oct-10', '23:06', '78633.9948176597', '6781312.496755528', 'This asteroid poses no threat to planet Earth!'),
('3836942', '(2018 YH)', '245.7468171631', '2019-Oct-10', '09:09', '31488.4034268258', '69928194.675711866', 'This asteroid could be dangerous to planet Earth!'),
('3856735', '(2019 SC5)', '65.14602201225', '2019-Oct-11', '07:05', '41902.4872590455', '12303654.737504388', 'This asteroid poses no threat to planet Earth!'),
('2002059', '2059 Baboquivari (1963 UA)', '3894.82457590875', '2019-Oct-11', '13:08', '26427.6926460773', '70947635.82345485', 'This asteroid poses no threat to planet Earth!'),
('3663467', '(2014 EA4)', '617.2880956188501', '2019-Oct-11', '04:26', '128173.3372301746', '74308195.329075173', 'This asteroid poses no threat to planet Earth!'),
('3735684', '(2015 XQ1)', '117.6218217868', '2019-Oct-11', '08:50', '37372.5387588751', '70307738.758498451', 'This asteroid poses no threat to planet Earth!'),
('2477719', '477719 (2010 SG15)', '51.3437874269', '2019-Oct-11', '12:49', '17555.8730414797', '13761580.945382264', 'This asteroid poses no threat to planet Earth!'),
('3799787', '(2018 EB)', '245.7468171631', '2019-Oct-11', '08:37', '56364.6800880385', '16326037.793088075', 'This asteroid could be dangerous to planet Earth!'),
('3843716', '(2019 QR6)', '583.8320088493', '2019-Oct-11', '08:52', '50132.0282024671', '51197590.522609933', 'This asteroid poses no threat to planet Earth!'),
('2211871', '211871 (2004 HO)', '978.3357005335499', '2019-Oct-11', '05:39', '74738.0127668342', '49598338.129838393', 'This asteroid poses no threat to planet Earth!'),
('3843547', '(2019 PR2)', '885.7025635594', '2019-Oct-11', '04:05', '50461.3676024834', '51600525.444113765', 'This asteroid poses no threat to planet Earth!'),
('3841532', '(2019 HM)', '38.23736015825', '2019-Oct-11', '22:08', '11512.3014804255', '7789468.295341239', 'This asteroid poses no threat to planet Earth!'),
('3607528', '(2012 PZ19)', '70.8741562492', '2019-Oct-11', '10:21', '23505.586208101', '12503758.673510402', 'This asteroid poses no threat to planet Earth!'),
('3842589', '(2019 KE2)', '76.0130049971', '2019-Oct-09', '06:23', '24909.3071905271', '49850068.245902046', 'This asteroid poses no threat to planet Earth!'),
('3873324', '(2019 TY)', '156.49047244685', '2019-Oct-09', '05:11', '44335.0495537934', '17447137.574998079', 'This asteroid poses no threat to planet Earth!'),
('3873311', '(2019 SO10)', '249.9700066109', '2019-Oct-09', '09:40', '22582.8440570962', '52972976.335883777', 'This asteroid poses no threat to planet Earth!'),
('3872622', '(2019 SL7)', '34.4261060044', '2019-Oct-09', '14:25', '61482.7929878024', '543475.29870596', 'This asteroid poses no threat to planet Earth!'),
('3556963', '(2011 CA4)', '21.40365300965', '2019-Oct-09', '23:38', '61711.6067951843', '57279185.954936422', 'This asteroid poses no threat to planet Earth!'),
('3578828', '(2011 SG16)', '339.2250394883', '2019-Oct-09', '10:10', '12573.3387648898', '41107165.497003248', 'This asteroid poses no threat to planet Earth!'),
('3079950', '(2001 OT)', '269.45602679105', '2019-Oct-09', '01:06', '27674.1457122213', '49290430.393321286', 'This asteroid poses no threat to planet Earth!'),
('3841900', '(2019 JD7)', '193.77060787885', '2019-Oct-09', '04:23', '44567.1815663063', '46170987.094727264', 'This asteroid poses no threat to planet Earth!'),
('3873326', '(2019 TZ)', '25.685492753250003', '2019-Oct-09', '10:14', '41766.4462979408', '3069671.09989908', 'This asteroid poses no threat to planet Earth!');

-- --------------------------------------------------------

--
-- Table structure for table `asteroidinfo`
--

CREATE TABLE `asteroidinfo` (
  `name` text DEFAULT NULL,
  `absolute_magnitude_h` text DEFAULT NULL,
  `diameter` text DEFAULT NULL,
  `date` text DEFAULT NULL,
  `time` text DEFAULT NULL,
  `velocity` text DEFAULT NULL,
  `distance` text DEFAULT NULL,
  `epoch_date_close_approach` text DEFAULT NULL,
  `orbiting_body` text DEFAULT NULL,
  `orbit_id` text DEFAULT NULL,
  `orbit_determination_date` text DEFAULT NULL,
  `first_observation_date` text DEFAULT NULL,
  `last_observation_date` text DEFAULT NULL,
  `data_arc_in_days` text DEFAULT NULL,
  `observations_used` text DEFAULT NULL,
  `orbit_uncertainty` text DEFAULT NULL,
  `minimum_orbit_intersection` text DEFAULT NULL,
  `jupiter_tisserand_invariant` text DEFAULT NULL,
  `epoch_osculation` text DEFAULT NULL,
  `eccentricity` text DEFAULT NULL,
  `semi_major_axis` text DEFAULT NULL,
  `inclination` text DEFAULT NULL,
  `ascending_node_longitude` text DEFAULT NULL,
  `orbital_period` text DEFAULT NULL,
  `perihelion_distance` text DEFAULT NULL,
  `perihelion_argument` text DEFAULT NULL,
  `aphelion_distance` text DEFAULT NULL,
  `perihelion_time` text DEFAULT NULL,
  `mean_anomaly` text DEFAULT NULL,
  `mean_motion` text DEFAULT NULL,
  `equinox` text DEFAULT NULL,
  `orbit_class_type` text DEFAULT NULL,
  `orbit_class_description` text DEFAULT NULL,
  `orbit_class_range` text DEFAULT NULL,
  `is_sentry_object` text DEFAULT NULL,
  `report` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asteroidinfo`
--

INSERT INTO `asteroidinfo` (`name`, `absolute_magnitude_h`, `diameter`, `date`, `time`, `velocity`, `distance`, `epoch_date_close_approach`, `orbiting_body`, `orbit_id`, `orbit_determination_date`, `first_observation_date`, `last_observation_date`, `data_arc_in_days`, `observations_used`, `orbit_uncertainty`, `minimum_orbit_intersection`, `jupiter_tisserand_invariant`, `epoch_osculation`, `eccentricity`, `semi_major_axis`, `inclination`, `ascending_node_longitude`, `orbital_period`, `perihelion_distance`, `perihelion_argument`, `aphelion_distance`, `perihelion_time`, `mean_anomaly`, `mean_motion`, `equinox`, `orbit_class_type`, `orbit_class_description`, `orbit_class_range`, `is_sentry_object`, `report`) VALUES
('2018 TA2', '27.0', '22.412376099 meters', '1900-May-12', '01:57', '22355.3840877878 km/h', '11468739.645247939 km', '-2197663380000', 'Earth', '2', '2018-10-10 06:26:05', '2018-10-05', '2018-10-10', '5 days', '26', '5', '.0192319', '6.168', '2458600.5', '.1728454048301414', '.9784636815019087', '5.287045293899156', '6.392557965219336', '353.5212239631375', '.8093407303611208', '120.2064449158781', '1.147586632642696', '2458491.810955466949', '110.6809248770261', '1.018326413232655', 'J2000', 'ATE', 'Near-Earth asteroid orbits similar to that of 2062 Aten', 'a (semi-major axis) < 1.0 AU; q (perihelion) > 0.983 AU', 'False', 'This asteroid poses no threat to planet Earth!');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
