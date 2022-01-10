-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2021 at 08:24 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rapot`
--

-- --------------------------------------------------------

--
-- Table structure for table `m_admin`
--

CREATE TABLE `m_admin` (
  `id` int(4) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` enum('admin','guru','siswa') NOT NULL,
  `konid` varchar(10) NOT NULL,
  `aktif` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_admin`
--

INSERT INTO `m_admin` (`id`, `username`, `password`, `level`, `konid`, `aktif`) VALUES
(1, 'admin', '010438e6515e45aeaea0ac5303dbf9c2806eb0d0', 'admin', '0', 'Y'),
(11, 'hjfifi', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '1', 'Y'),
(12, '85555945', 'eba73ffdb7c06d566e6c5ae6819d1fd4717fa12d', 'siswa', '1', 'Y'),
(13, '111111', '89235a5c7afee61a8e03161ce64db1edcf0ec8dc', 'siswa', '2', 'Y'),
(14, 'aminah', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '2', 'Y'),
(15, 'drahjn', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '3', 'Y'),
(16, 'sumarn', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '4', 'Y'),
(18, 'lisbid', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '6', 'Y'),
(19, 'tugass', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '7', 'Y'),
(20, 'meilan', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '8', 'Y'),
(21, 'rusmiy', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '9', 'Y'),
(22, 'kintok', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '10', 'Y'),
(23, 'maryat', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '11', 'Y'),
(24, 'hennyt', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '12', 'Y'),
(25, 'winart', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '13', 'Y'),
(26, 'husnis', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '14', 'Y'),
(27, '151601008', '88ac8acdbdd0557d6d8ec54860eb7c01d1f93286', 'siswa', '3', 'Y'),
(28, '151601009', '5bc7a65946241a4ec6c0593bc26e459ca976deae', 'siswa', '4', 'Y'),
(29, '192005130', '51de6b480d4c2f0f55089acccf3d5a6371172b35', 'siswa', '5', 'Y'),
(30, '151601028', '064566ff69373fec6f2bf41c95635706bd3eeb1f', 'siswa', '6', 'Y'),
(31, '151601033', '23752982441f6d96a28b455f6ea46ff2734856eb', 'siswa', '7', 'Y'),
(32, '181904091', 'ecd8b08ecfc9f64ded264119498957f3dfb40807', 'siswa', '8', 'Y'),
(33, '151601040', '82de96e150f0ebfaef09f839bf1a677a03dc598c', 'siswa', '9', 'Y'),
(34, '151601042', 'b8e1d8804dc447cd2cbabf88620730234fc8c474', 'siswa', '10', 'Y'),
(35, '151601044', '40dc9c8185c853598d771326cfee10a30a2ec891', 'siswa', '11', 'Y'),
(36, '151601058', 'a3869ea18979cdde8ed42783bdc26abdb57de09a', 'siswa', '12', 'Y'),
(37, '151601059', 'a0d8b25a7bc6c59ba1e63d26021e1f9c70f249e8', 'siswa', '13', 'Y'),
(38, '151601066', 'dff4a286cc01ed85ddb27ab0c33de915af594294', 'siswa', '14', 'Y'),
(39, '151601069', 'e87888efbf63a71e199fa93a97b8ea0587142254', 'siswa', '15', 'Y'),
(40, '151601070', '3b02d127e80954824cdcfa9f15457a85a45fb2c4', 'siswa', '16', 'Y'),
(41, '192005121', '9c90099916b652c757c4b794bcfc1bfbb77a0355', 'siswa', '17', 'Y'),
(42, '151601076', '59a09cbd7b64fbf75d0925ed051caf4661a33021', 'siswa', '18', 'Y'),
(43, '151601078', '149fdce6fdfdd3584b0e894da5cfaeb3bf35a0ee', 'siswa', '19', 'Y'),
(44, '151601080', '226a571cb81c2017e31187835437934113ea86e9', 'siswa', '20', 'Y'),
(45, 'khaidi', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '15', 'Y'),
(46, 'zufria', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '16', 'Y'),
(47, '151601082', 'bec3fbc8a08ef53d846a649b7193368050f71a9f', 'siswa', '21', 'Y'),
(48, '181903110', 'c68bd5b6b9951183688124f7ad5529cf34076993', 'siswa', '22', 'Y'),
(49, '151601088', 'dd0f56938f8d0697c4c57407f0030cefe741fca7', 'siswa', '23', 'Y'),
(50, '151601093', '3cf42f74e7192af171e799df15730b6a1e319a6a', 'siswa', '24', 'Y'),
(51, '151601094', 'bf650cac09e8b4400b3e66bc7322e2cd06922d5c', 'siswa', '25', 'Y'),
(52, '151601099', '6d4228afe94d183f79da8de13f3856729f4cb61f', 'siswa', '26', 'Y'),
(53, '151601101', '7f199d317a50bb5bfa1305eb54d7c26f3545d15f', 'siswa', '27', 'Y'),
(54, '151601115', '6e6d84b8ce86c78953bc4621510a596f7f582f2e', 'siswa', '28', 'Y'),
(55, '151601121', '24408eaafc091694f0ff80d64b80ccb5f1488732', 'siswa', '29', 'Y'),
(56, '151601138', '4a8c69f2c801e2ed676cb2e41b8c684e22851af8', 'siswa', '30', 'Y'),
(57, '181903099', '5f656cffed98861c9aaf1b1ecec26a140b999e09', 'siswa', '31', 'Y'),
(58, '151601143', '8285562fd81cc3110c8753d59fa8dcaefc6cdbed', 'siswa', '32', 'Y'),
(59, 'endang', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '17', 'Y'),
(60, 'ikahik', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '18', 'Y'),
(61, 'danisa', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '21', 'Y'),
(62, 'nur’', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '20', 'Y'),
(63, 'hjanas', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '5', 'Y'),
(64, 'oliyah', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '19', 'Y'),
(65, 'fannyl', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '22', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `m_ekstra`
--

CREATE TABLE `m_ekstra` (
  `id` int(2) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_ekstra`
--

INSERT INTO `m_ekstra` (`id`, `nama`) VALUES
(1, 'Pramuka'),
(2, 'Bahasa Inggris'),
(3, 'Angklung'),
(4, '	Paduan Suara'),
(5, '	Marching Band'),
(6, 'Futsal'),
(7, 'Silat');

-- --------------------------------------------------------

--
-- Table structure for table `m_guru`
--

CREATE TABLE `m_guru` (
  `id` int(3) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `jk` enum('L','P') DEFAULT NULL,
  `stat_data` enum('A','P','M') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_guru`
--

INSERT INTO `m_guru` (`id`, `nama`, `nip`, `jk`, `stat_data`) VALUES
(1, 'Hj. Fifih Rahmiasih, S.Pd', '19630613198305201','2', 'A'),
(2, 'Aminah, S.Pd.MM', '196205161983052011', '1', 'A'),
(3, 'Dra. Hj. Neni Kurniawati', '196201301982042006', '2', 'A'),
(4, 'Sumarni, S.Pd', '19650708198610 2005', '2', 'A'),
(5, 'Hj. Ana Sumanah, S.Pd', '19640709198410 2004', '2', 'A'),
(6, 'Lisbidawati, S. Pd', '196312171992122001', '2', 'A'),
(7, 'Tugas Setiyawati, S.Pd', '197206201999032005', '2', 'A'),
(8, 'Meilani Rajmeiyanti, S.Pd', '198105112010012009', '2', 'A'),
(9, 'Rusmiyati, S.Pd.', '197608182008012011', '2', 'A'),
(10, 'Kintoko, S.Pd.', '198301032014121001', '2', 'A'),
(11, 'Maryati, S.Pd.', '19640304200212 2002', '2', 'A'),
(12, 'Henny Thantawi, S.Pd.', '197706192014122001', '2', 'A'),
(13, 'Winarti, S.Pd.', '196104172007012002', '2', 'A'),
(14, 'Husni, S. Pd. ', '-', '2', 'A'),
(15, 'Khaidir Rozi, S.Pd.I', '-', '2', 'A'),
(16, 'Zufri Ahmadi, S.Pd.', '-', '2', 'A'),
(17, 'Endang Mulyaningsih', '196202261982042005', '2', 'A'),
(18, 'Ika Hikmawati. R, S.Pd', '-', '2', 'A'),
(19, 'Oliyah Mirna Lestari, S.Pd', '-','2', 'A'),
(20, 'Nur’aini,SP.d', '-','2', 'A'),
(21, 'Danisah Ramadani, S.Pd.', '-','2', 'A'),
(22, 'Fanny Listia Putri, S.Pd', '-','2', 'A'),
(23, 'Meilinda Utami, S.Pd', '-','2', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `m_kelas`
--

CREATE TABLE `m_kelas` (
  `id` int(3) NOT NULL,
  `tingkat` int(11) DEFAULT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_kelas`
--

INSERT INTO `m_kelas` (`id`, `tingkat`, `nama`) VALUES
(1, 1, '1.1'),
(2, 1, '1.2'),
(3, 1, '1.3'),
(4, 1, '1.4'),
(5, 2, '2.1'),
(6, 2, '2.2'),
(7, 2, '2.3'),
(8, 2, '2.4'),
(9, 3, '3.1'),
(10, 3, '3.2'),
(11, 3, '3.3'),
(12, 4, '4.1'),
(13, 4, '4.2'),
(14, 4, '4.3'),
(15, 4, '4.4'),
(16, 4, '5.1'),
(17, 5, '5.2'),
(18, 5, '5.3'),
(19, 5, '5.4'),
(20, 6, '6.1'),
(21, 6, '6.2'),
(22, 6, '6.3'),
(23, 6, '6.4');

-- --------------------------------------------------------

--
-- Table structure for table `m_mapel`
--

CREATE TABLE `m_mapel` (
  `id` int(3) NOT NULL,
  `kelompok` enum('A','B') NOT NULL,
  `tambahan_sub` enum('NO','PAI','MULOK') NOT NULL,
  `kd_singkat` varchar(5) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `is_sikap` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_mapel`
--

INSERT INTO `m_mapel` (`id`, `kelompok`, `tambahan_sub`, `kd_singkat`, `nama`, `is_sikap`) VALUES
(1, 'A', 'NO', 'PAI', 'Pendidikan Agama & Budi Pekerti', '0'),
(2, 'A', 'NO', 'PPKN', 'Pendidikan Pancasila dan Kewarganegaraan', '0'),
(3, 'A', 'NO', 'BINDO', 'Bahasa Indonesia', '0'),
(4, 'A', 'NO', 'MTK', 'Matematika', '0'),
(5, 'A', 'NO', 'IPA', 'Ilmu Pengetahuan Alam', '0'),
(6, 'A', 'NO', 'IPS', 'Ilmu Pengetahuan Sosial', '0'),
(7, 'A', 'NO', 'SBDP', 'Seni Budaya & Prakarya', '0'),
(8, 'A', 'NO', 'PJKES', 'Pendidikan Jasmani, Olahraga, dan Kesehatan', '0'),
(9, 'B', 'MULOK', 'BSUN', 'Bahasa Sunda', '0');

-- --------------------------------------------------------

--
-- Table structure for table `m_siswa`
--

CREATE TABLE `m_siswa` (
  `id` int(6) NOT NULL,
  `nis` varchar(10) NOT NULL DEFAULT '0',
  `nisn` varchar(10) NOT NULL DEFAULT '0',
  `nama` varchar(100) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `tmp_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `agama` varchar(10) NOT NULL,
  `status` varchar(2) NOT NULL,
  `anakke` int(2) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `notelp` varchar(13) NOT NULL,
  `sek_asal` varchar(30) NOT NULL,
  `sek_asal_alamat` varchar(50) NOT NULL,
  `diterima_kelas` varchar(5) NOT NULL,
  `diterima_tgl` date NOT NULL,
  `diterima_smt` varchar(2) NOT NULL,
  `ijazah_no` varchar(50) NOT NULL,
  `ijazah_thn` varchar(4) NOT NULL,
  `skhun_no` varchar(50) NOT NULL,
  `skhun_thn` varchar(4) NOT NULL,
  `ortu_ayah` varchar(50) NOT NULL,
  `ortu_ibu` varchar(50) NOT NULL,
  `ortu_alamat` varchar(50) NOT NULL,
  `ortu_notelp` varchar(13) NOT NULL,
  `ortu_ayah_pkj` varchar(30) NOT NULL,
  `ortu_ibu_pkj` varchar(30) NOT NULL,
  `wali` varchar(20) NOT NULL,
  `wali_alamat` varchar(50) NOT NULL,
  `notelp_rumah` varchar(13) NOT NULL,
  `wali_pkj` varchar(13) NOT NULL,
  `inputID` int(2) NOT NULL,
  `tgl_input` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tgl_update` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `stat_data` enum('A','K','M','L') NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_siswa`
--

INSERT INTO `m_siswa` (`id`, `nis`, `nisn`, `nama`, `jk`, `tmp_lahir`, `tgl_lahir`, `agama`, `status`, `anakke`, `alamat`, `notelp`, `sek_asal`, `sek_asal_alamat`, `diterima_kelas`, `diterima_tgl`, `diterima_smt`, `ijazah_no`, `ijazah_thn`, `skhun_no`, `skhun_thn`, `ortu_ayah`, `ortu_ibu`, `ortu_alamat`, `ortu_notelp`, `ortu_ayah_pkj`, `ortu_ibu_pkj`, `wali`, `wali_alamat`, `notelp_rumah`, `wali_pkj`, `inputID`, `tgl_input`, `tgl_update`, `stat_data`, `foto`) VALUES
(3, '151601008', '85555945', 'AISYAH BILQIS HUMAIRO', 'L', 'Bekasi', '2008-11-28', 'Islam', 'AK', 1, '', '', '', '', 'VI', '2020-12-18', 'VI', '', '', '', '', 'Taryono', '', '', '', '', '', '', '', '', '', 0, '2021-06-24 13:08:28', '0000-00-00 00:00:00', 'A', ''),
(4, '151601009', '0085133586', 'ALANDRA RAYYA RABANI', 'L', 'Bekasi', '2008-11-11', 'Islam', 'AK', 1, '', '', '', '', 'VI', '2020-10-07', 'VI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2021-06-24 03:04:11', '0000-00-00 00:00:00', 'A', ''),
(5, '192005130', '0093501173', 'ANKA OKTARIANTI', 'P', 'Bogor', '2009-09-23', 'Kristen', 'AK', 1, '', '', '', '', 'VI', '2020-10-07', 'VI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2021-06-24 03:16:53', '0000-00-00 00:00:00', 'A', ''),
(6, '151601028', '0093267587', 'ATHALARIQ FAUZAN DWI YUNIAR', 'L', 'Bandung', '2009-02-04', 'Islam', 'AK', 1, '', '', '', '', 'VI', '2020-10-07', 'VI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2021-06-24 03:56:48', '0000-00-00 00:00:00', 'A', ''),
(7, '151601033', '151601033', 'AULIYA SHAFA ANNISA', 'P', 'Jakarta', '2008-08-28', 'Islam', 'AK', 2, '', '', '', '', 'VI', '2020-10-07', 'VI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2021-06-24 03:14:09', '0000-00-00 00:00:00', 'A', ''),
(8, '181904091', '0083495246', 'BEN JUAN ATTARYA', 'L', 'Bandung', '2008-09-12', 'Islam', 'AK', 0, '', '', '', '', 'VI', '2020-10-07', 'VI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2021-06-24 03:16:41', '0000-00-00 00:00:00', 'A', ''),
(9, '151601040', '0089506316', 'CHARISSA ANGELINE NOVALETA BILLY', 'P', 'Bekasi', '2008-11-16', 'Kristen', 'AK', 2, '', '', '', '', 'VI', '2020-10-07', 'VI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2021-06-24 03:21:49', '0000-00-00 00:00:00', 'A', ''),
(10, '151601042', '0084123748', 'CRISTIANO ABRAHAM RAFAEL KAWUWUNG', 'L', 'Bekasi', '2008-12-18', 'Kristen', 'AK', 2, '', '', '', '', 'VI', '2020-10-07', 'VI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2021-06-24 03:57:23', '0000-00-00 00:00:00', 'A', ''),
(11, '151601044', '0098018105', 'DAFFA RAFI AZ ZAHRAN', 'L', 'Bekasi', '2009-03-02', 'Islam', 'AK', 1, '', '', '', '', 'VI', '2020-10-07', 'VI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2021-06-24 03:25:57', '0000-00-00 00:00:00', 'A', ''),
(12, '151601058', '0086406141', 'DZUBYAN CHESTA ARKANA SAKHI', 'L', 'Jakarta', '2008-11-11', 'Islam', 'AK', 2, '', '', '', '', 'VI', '2020-10-07', 'VI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2021-06-24 03:27:26', '0000-00-00 00:00:00', 'A', ''),
(13, '151601059', '0093672906', 'EBEN HAEZER POLIN NAIBORHU', 'L', 'Surabaya', '2009-06-09', 'Kristen', 'AK', 3, '', '', '', '', 'VI', '2020-10-07', 'VI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2021-06-24 03:29:37', '0000-00-00 00:00:00', 'A', ''),
(14, '151601066', '0092093790', 'FAIQOH DZAKIYYATUL ALIFAH', 'L', 'Bekasi', '2009-04-19', 'Islam', 'AK', 2, '', '', '', '', 'VI', '2020-10-07', 'VI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2021-06-24 03:32:08', '0000-00-00 00:00:00', 'A', ''),
(15, '151601069', '0096214533', 'FARHAN ALDIANSYAH ASSIDIQ', 'L', 'Bekasi', '2009-01-12', 'Islam', 'An', 2, '', '', '', '', 'VI', '2020-10-07', 'VI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2021-06-24 03:34:07', '0000-00-00 00:00:00', 'A', ''),
(16, '151601070', '0082341251', 'FARSHA GHASSANA ZALIANTY', 'P', 'Bekasi', '2008-12-05', 'Islam', 'AK', 2, '', '', '', '', 'VI', '2020-10-07', 'VI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2021-06-24 03:58:10', '0000-00-00 00:00:00', 'A', ''),
(17, '192005121', '0087903870', 'FAZZA ADHIMAS RACHMAN', 'L', 'Jakarta', '2008-05-07', 'Islam', 'AK', 1, '', '', '', '', 'VI', '2020-10-07', 'VI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2021-06-24 03:58:36', '0000-00-00 00:00:00', 'A', ''),
(18, '151601076', '0098639850', 'HANIFA TIARA SATURI', 'P', 'Banjarmasin', '2009-07-14', 'Islam', 'AK', 2, '', '', '', '', 'VI', '2020-10-07', 'VI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2021-06-24 03:41:56', '0000-00-00 00:00:00', 'A', ''),
(19, '151601078', '0091757132', 'HOSHEA MANEIN BANGUN', 'L', 'Bekasi', '2009-03-23', 'Kristen', 'AK', 2, '', '', '', '', 'VI', '2020-10-07', 'VI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2021-06-24 03:43:27', '0000-00-00 00:00:00', 'A', ''),
(20, '151601080', '0082521232', 'INTAN KHALIZA PUTRI', 'P', 'Bekasi', '2008-11-03', 'Islam', 'AK', 2, '', '', '', '', 'VI', '2020-10-07', 'VI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2021-06-24 04:20:20', '0000-00-00 00:00:00', 'A', ''),
(21, '151601082', '99276982', 'JIHAN ALMIRA RAMADHANI', 'P', 'Bekasi', '2009-09-30', 'Islam', 'AK', 3, '', '', '', '', 'VI', '2020-10-07', 'VI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2021-06-24 04:37:26', '0000-00-00 00:00:00', 'A', ''),
(22, '181903110', '181903110', 'JOHANES ABYSALI NAILIU', 'L', 'Boor', '2009-02-08', 'Islam', 'AK', 2, '', '', '', '', 'VI', '2020-10-07', 'VI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2021-06-24 04:40:22', '0000-00-00 00:00:00', 'A', ''),
(23, '151601088', '0091533963', 'KHANSA ADNI ADI', 'P', 'Padang', '2009-06-20', 'Islam', 'AK', 2, '', '', '', '', 'VI', '2020-10-07', 'VI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2021-06-24 04:59:14', '0000-00-00 00:00:00', 'A', ''),
(24, '151601093', '0097206718', 'LEVANA MIA AURORA', 'P', 'Bekasi', '2009-07-16', 'Islam', 'AK', 2, '', '', '', '', 'VI', '2020-10-07', 'VI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2021-06-24 05:08:51', '0000-00-00 00:00:00', 'A', ''),
(25, '151601094', '0081079144', 'M. ASWA RAMADHAN', 'L', 'Jakarta', '2008-09-21', 'Islam', 'AK', 4, '', '', '', '', 'VI', '2020-10-07', 'VI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2021-06-24 05:11:51', '0000-00-00 00:00:00', 'A', ''),
(26, '151601099', '0083508251', 'MAURA GIFTY KANAHAYA DIYANTINO', 'P', 'Jakarta', '2009-12-16', 'Islam', 'AK', 2, '', '', '', '', 'VI', '2020-10-07', 'VI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2021-06-24 05:17:31', '0000-00-00 00:00:00', 'A', ''),
(27, '151601101', '95929785', 'MOCH. RAKA RAMADHAN FITRIAN', 'L', 'Bekasi', '2009-09-19', 'Islam', 'AK', 1, '', '', '', '', 'VI', '2020-10-07', 'VI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2021-06-24 05:29:17', '0000-00-00 00:00:00', 'A', ''),
(28, '151601115', '0089194747', 'MUTIARA HAYDEE KALILA', 'P', 'Bekasi', '2008-12-12', 'Islam', 'AK', 5, '', '', '', '', 'VI', '2020-10-07', 'VI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2021-06-24 05:35:37', '0000-00-00 00:00:00', 'A', ''),
(29, '151601121', '0099517313', 'NAILA HUMAIRA SANTOSO', 'P', 'Bekasi', '2009-04-06', 'Islam', 'An', 2, '', '', '', '', 'VI', '2020-10-07', 'VI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2021-06-24 05:44:38', '0000-00-00 00:00:00', 'A', ''),
(30, '151601138', '0091700426', 'RAIHAN ATHALLAH IQBAL', 'L', 'Bekasi', '2009-05-14', 'Islam', 'AK', 2, '', '', '', '', 'VI', '2020-10-07', 'VI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2021-06-24 05:46:35', '0000-00-00 00:00:00', 'A', ''),
(31, '181903099', '0094263472', 'REGA JULIANA PUTRA', 'L', 'Kuningan', '2009-07-11', 'Islam', 'AK', 2, '', '', '', '', 'VI', '2020-10-07', 'VI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2021-06-24 05:53:18', '0000-00-00 00:00:00', 'A', ''),
(32, '151601143', '0083819566', 'RR. ANGGITA DEWINA FEBRIANI', 'P', 'Bekasi', '2008-02-06', 'Islam', 'AK', 3, '', '', '', '', 'VI', '2020-10-07', 'VI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2021-06-24 05:57:01', '0000-00-00 00:00:00', 'A', '');

-- --------------------------------------------------------

--
-- Table structure for table `m_tumbuh`
--

CREATE TABLE `m_tumbuh` (
  `id` int(2) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_tumbuh`
--

INSERT INTO `m_tumbuh` (`id`, `nama`) VALUES
(1, 'Tinggi Badan'),
(2, 'Berat Badan'),
(3, 'Pendengaran'),
(4, 'Penglihatan'),
(5, 'Gigi');

-- --------------------------------------------------------

--
-- Table structure for table `tahun`
--

CREATE TABLE `tahun` (
  `id` int(3) NOT NULL,
  `tahun` varchar(5) NOT NULL,
  `semester` enum('0','1','2') NOT NULL,
  `aktif` enum('Y','N') NOT NULL,
  `nama_kepsek` varchar(50) NOT NULL,
  `nip_kepsek` varchar(30) NOT NULL,
  `tgl_raport` date NOT NULL,
  `tgl_raport_kelas3` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tahun`
--

INSERT INTO `tahun` (`id`, `tahun`, `semester`, `aktif`, `nama_kepsek`, `nip_kepsek`, `tgl_raport`, `tgl_raport_kelas3`) VALUES
(1, '20201', '0', 'Y', 'Endang Mulyaningsih, S.Pd.M.Si', '19620226 198204 2 005', '2020-12-18', '2020-12-18');

-- --------------------------------------------------------

--
-- Table structure for table `t_guru_mapel`
--

CREATE TABLE `t_guru_mapel` (
  `id` int(6) NOT NULL,
  `tasm` varchar(5) DEFAULT NULL,
  `id_guru` int(3) NOT NULL,
  `id_kelas` int(3) NOT NULL,
  `id_mapel` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_guru_mapel`
--

INSERT INTO `t_guru_mapel` (`id`, `tasm`, `id_guru`, `id_kelas`, `id_mapel`) VALUES
(4, '20201', 14, 23, 2),
(5, '20201', 14, 23, 3),
(6, '20201', 14, 23, 5),
(7, '20201', 14, 23, 6),
(8, '20201', 15, 23, 1),
(9, '20201', 15, 16, 1),
(10, '20201', 15, 17, 1),
(11, '20201', 15, 18, 1),
(12, '20201', 15, 19, 1),
(13, '20201', 15, 20, 1),
(14, '20201', 15, 21, 1),
(15, '20201', 15, 22, 1),
(16, '20201', 16, 1, 8),
(17, '20201', 16, 2, 8),
(18, '20201', 16, 3, 8),
(19, '20201', 16, 4, 8),
(20, '20201', 16, 5, 8),
(21, '20201', 16, 6, 8),
(22, '20201', 16, 7, 8),
(23, '20201', 16, 8, 8),
(24, '20201', 16, 20, 8),
(25, '20201', 16, 21, 8),
(26, '20201', 16, 22, 8),
(27, '20201', 16, 23, 8),
(28, '20201', 14, 23, 9),
(29, '20201', 14, 23, 4),
(30, '20201', 17, 1, 7),
(31, '20201', 17, 2, 7),
(32, '20201', 17, 3, 7),
(33, '20201', 17, 4, 7),
(34, '20201', 17, 5, 7),
(35, '20201', 17, 6, 7),
(36, '20201', 17, 7, 7),
(37, '20201', 17, 8, 7),
(38, '20201', 17, 9, 7),
(39, '20201', 17, 10, 7),
(40, '20201', 17, 11, 7),
(41, '20201', 17, 12, 7),
(42, '20201', 17, 13, 7),
(43, '20201', 17, 14, 7),
(44, '20201', 17, 15, 7),
(45, '20201', 17, 16, 7),
(46, '20201', 17, 17, 7),
(47, '20201', 17, 18, 7),
(48, '20201', 17, 19, 7),
(49, '20201', 17, 20, 7),
(50, '20201', 17, 21, 7),
(51, '20201', 17, 22, 7),
(52, '20201', 17, 23, 7);

-- --------------------------------------------------------

--
-- Table structure for table `t_kelas_siswa`
--

CREATE TABLE `t_kelas_siswa` (
  `id` int(5) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `id_siswa` int(5) NOT NULL,
  `ta` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_kelas_siswa`
--

INSERT INTO `t_kelas_siswa` (`id`, `id_kelas`, `id_siswa`, `ta`) VALUES
(3, 23, 3, 2020),
(4, 23, 4, 2020),
(5, 23, 5, 2020),
(6, 23, 6, 2020),
(7, 23, 7, 2020),
(8, 23, 8, 2020),
(9, 23, 9, 2020),
(10, 23, 11, 2020),
(11, 23, 12, 2020),
(12, 23, 13, 2020),
(13, 23, 14, 2020),
(14, 23, 15, 2020),
(15, 23, 18, 2020),
(16, 23, 19, 2020),
(17, 23, 10, 2020),
(18, 23, 16, 2020),
(19, 23, 17, 2020),
(20, 23, 20, 2020),
(21, 23, 21, 2020),
(22, 23, 22, 2020),
(23, 23, 23, 2020),
(24, 23, 24, 2020),
(25, 23, 25, 2020),
(26, 23, 26, 2020),
(27, 23, 27, 2020),
(28, 23, 28, 2020),
(29, 23, 29, 2020),
(30, 23, 30, 2020),
(31, 23, 31, 2020),
(32, 23, 32, 2020);

-- --------------------------------------------------------

--
-- Table structure for table `t_kkm`
--

CREATE TABLE `t_kkm` (
  `id` int(5) NOT NULL,
  `ta` int(4) NOT NULL,
  `jenis` enum('np','nk') NOT NULL,
  `kelas` int(2) NOT NULL,
  `kkm` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_mapel_kd`
--

CREATE TABLE `t_mapel_kd` (
  `id` int(6) UNSIGNED NOT NULL,
  `id_guru` int(6) UNSIGNED NOT NULL DEFAULT 0,
  `id_mapel` int(6) NOT NULL,
  `tingkat` int(2) NOT NULL,
  `semester` enum('0','1','2') NOT NULL,
  `no_kd` varchar(5) NOT NULL,
  `jenis` enum('P','K','SSp','SSo') NOT NULL,
  `bobot` int(2) NOT NULL,
  `nama_kd` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_mapel_kd`
--

INSERT INTO `t_mapel_kd` (`id`, `id_guru`, `id_mapel`, `tingkat`, `semester`, `no_kd`, `jenis`, `bobot`, `nama_kd`) VALUES
(1, 0, 0, 0, '0', '', 'SSo', 0, 'jujur'),
(2, 0, 0, 0, '0', '', 'SSo', 0, 'disiplin'),
(3, 0, 0, 0, '0', '', 'SSo', 0, 'tanggung jawab'),
(4, 0, 0, 0, '0', '', 'SSo', 0, 'santun'),
(5, 0, 0, 0, '0', '', 'SSo', 0, 'peduli'),
(6, 0, 0, 0, '0', '', 'SSo', 0, 'percaya diri'),
(7, 0, 0, 0, '0', '', 'SSp', 0, 'ketaatan dalam beribadah	'),
(8, 0, 0, 0, '0', '', 'SSp', 0, 'berperilaku syukur		'),
(9, 0, 0, 0, '0', '', 'SSp', 0, 'berdoa sebelum dan sesudah melakukan kegiatan		'),
(10, 0, 0, 0, '0', '', 'SSp', 0, 'toleransi dalam beribadah \r\n	'),
(21, 14, 2, 6, '1', '4.1', 'K', 0, 'menyajikan hasil analisis pelaksanaan nilai-nilai Pancasila dalam kehidupan sehari-hari'),
(22, 15, 1, 6, '1', '3.1', 'P', 0, 'memahami makna Q.S. Al-Kafirun, Q.S. Al-Maidah/5:2-3 dan Q.S. al- Hujurat/49:12-13 dengan benar\r\n'),
(24, 15, 1, 6, '1', '3.2', 'P', 0, 'memahami makna al-Asmau al- Husna: As-Samad, Al-Muqtadir, Al- Muqaddim, dan Al-Baqi\r\n'),
(25, 15, 1, 6, '1', '3.3', 'P', 0, 'memahami hikmah beriman kepada hari akhir yang dapat membentuk perilaku akhlak mulia\r\n'),
(26, 15, 1, 6, '1', '3,4', 'P', 0, 'memahami hikmah beriman kepada qadha dan qadar yang dapat membentuk perilaku akhlak mulia\r\n'),
(27, 15, 1, 6, '1', '3.1', 'K', 0, 'membaca al-Asmau al-Husna: As- Samad, Al-Muqtadir, Al-Muqaddim, dan Al-Baqi dengan jelas dan benar'),
(28, 15, 1, 6, '1', '3.2', 'K', 0, 'menunjukkan contoh hikmah beriman kepada hari akhir yang dapat membentuk perilaku akhlak mulia'),
(29, 14, 2, 6, '1', '3.1', 'P', 0, 'menganalisis penerapan nilai- nilai Pancasila dalam kehdupan sehari-hari\r\n'),
(30, 14, 2, 6, '1', '3.2', 'P', 0, 'menganalisis pelaksanaan kewajiban, hak, dan tanggung jawab sebagai warga negara beserta dampaknya dalam kehidupan sehari-hari\r\n'),
(31, 14, 2, 6, '1', '3.3', 'P', 0, 'menelaah keberagaman sosial, budaya, dan ekonomi masyarakat\r\n'),
(32, 14, 2, 6, '1', '3.4', 'P', 0, 'menelaah persatuan dan kesatuan terhadap kehidupan berbangsa dan bernegara beserta dampaknya\r\n'),
(33, 14, 3, 6, '1', '3.1', 'P', 0, 'menyimpulkan informasi berdasarkan teks laporan hasil pengamatan yang didengar dan dibaca\r\n'),
(34, 14, 3, 6, '1', '3.2', 'P', 0, 'menggali informasi penting dari buku sejarah menggunakan aspek: apa, di mana, kapan, siapa, mengapa, dan bagaimana\r\n'),
(35, 14, 2, 6, '1', '4.2', 'K', 0, 'menyajikan hasil analisis pelaksanaan kewajiban, hak, dan tanggung jawab sebagai warga masyarakat beserta dampaknya dalam kehidupan sehari-hari'),
(36, 14, 3, 6, '1', '4.1', 'K', 0, 'menyajikan hasil penggalian informasi  dari teks penjelasan (eksplanasi) ilmiah secara lisan, tulis, dan visual dengan menggunakan kosakata baku dan kalimat efektif '),
(37, 14, 4, 6, '1', '4.1', 'K', 0, 'menyelesaikan masalah yang berkaitan operasi hitung campuran yang melibatkan bilangan cacah, pecahan dan/atau desimal dalam berbagai bentuk sesuai urutan operasi'),
(38, 14, 4, 6, '1', '4.2', 'K', 0, 'mengidentifikasi prisma, tabung, limas, kerucut, dan bola'),
(39, 14, 4, 6, '1', '3.1', 'P', 0, 'menjelaskan dan melakukan operasi hitung campuran yang melibatkan bilangan cacah, pecahan dan/atau desimal dalam berbagai bentuk sesuai urutan operasi\r\n'),
(40, 14, 4, 6, '1', '3.2', 'P', 0, 'menjelaskan bangun ruang yang merupakan gabungan dari beberapa bangun ruang, serta luas permukaan dan volumenya\r\n'),
(41, 14, 5, 6, '1', '3.1', 'P', 0, 'membandingkan cara perkembangbiakan tumbuhan dan hewan\r\n'),
(42, 14, 5, 6, '1', '3.2', 'P', 0, 'menganalisis cara makhluk hidup menyesuaikan diri dengan lingkungan\r\n'),
(43, 14, 5, 6, '1', '4.1', 'K', 0, 'menyajikan karya tentang perkembangangbiakan tumbuhan'),
(44, 14, 5, 6, '1', '4.2', 'K', 0, 'menyajikan karya tentang berbagai cara melakukan penghematan energi dan usulan sumber alternatif energi listrik'),
(45, 14, 6, 6, '1', '3.1', 'P', 0, 'mengidentifikasi karakteristik geografis dan kehidupan sosial budaya, ekonomi, politik di wilayah ASEAN.\r\n'),
(46, 14, 6, 6, '1', '3.2', 'P', 0, 'memahami makna proklamasi kemerdekaan, upaya mempertahankan kemerdekaan, dan upaya mengembangkan kehidupan kebangsaan yang sejahtera.\r\n'),
(47, 14, 6, 6, '1', '4.1', 'K', 0, 'menyajikan hasil identifikasi karakteristik geografis dan kehidupan sosial budaya, ekonomi, dan politik di wilayah ASEAN'),
(48, 14, 6, 6, '1', '4.2', 'K', 0, 'menyajikan laporan tentang makna proklamasi kemerdekaan, upaya mempertahankan kemerdekaan, dan upaya mengembangkan kehidupan kebangsaan yang sejahtera'),
(49, 17, 7, 6, '1', '3.1', 'P', 0, 'memahami reklame\r\n'),
(50, 17, 7, 6, '1', '3.2', 'P', 0, 'memahami patung\r\n'),
(51, 17, 7, 6, '1', '4.1', 'K', 0, 'membuat reklame'),
(52, 16, 8, 6, '1', '3.1', 'P', 0, 'memahami variasi dan kombinasi gerak dasar lokomotor, non- lokomotor, dan manipulatif dengan kontrol yang baik dalam permainan bola kecil sederhana dan atau tradisional'),
(53, 16, 8, 6, '1', '4.1', 'K', 0, 'mempraktikkan variasi dan kombinasi gerak dasar lokomotor, non-lokomotor, dan manipulatif dengan kontrol yang baik dalam permainan bola kecil sederhana dan atau tradisional'),
(54, 14, 9, 6, '1', '3.1', 'P', 0, 'mengenal, memahami, dan mengidentifikasiteks informasi yang diperoleh dari berbagai media berbahasa daerah secara lisan/ tulis\r\n'),
(55, 14, 9, 6, '1', '4.1', 'K', 0, 'menyampaikan dan menanggapi informasi yang diperoleh dari berbagai media berbahasa daerah secara lisan dan tulisan.');

-- --------------------------------------------------------

--
-- Table structure for table `t_naikkelas`
--

CREATE TABLE `t_naikkelas` (
  `id` int(6) NOT NULL,
  `id_siswa` int(6) NOT NULL,
  `ta` char(5) NOT NULL,
  `naik` enum('Y','N') NOT NULL,
  `catatan_wali` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_naikkelas`
--

INSERT INTO `t_naikkelas` (`id`, `id_siswa`, `ta`, `naik`, `catatan_wali`) VALUES
(1, 3, '20201', 'Y', 'Alhamdulillah, ananda selama satu semester ini sudah banyak peningkatan dalam  prestasi belajarnya. Jangan lupa sholat lima waktu dan selalu berdoa.'),
(2, 4, '20201', 'Y', '-'),
(3, 5, '20201', 'Y', '-'),
(4, 6, '20201', 'Y', '-'),
(5, 7, '20201', 'Y', '-'),
(6, 8, '20201', 'Y', '-'),
(7, 9, '20201', 'Y', '-'),
(8, 11, '20201', 'Y', '-'),
(9, 12, '20201', 'Y', '-'),
(10, 13, '20201', 'Y', '-'),
(11, 14, '20201', 'Y', '-'),
(12, 15, '20201', 'Y', '-'),
(13, 18, '20201', 'Y', '-'),
(14, 19, '20201', 'Y', '-'),
(15, 10, '20201', 'Y', '-'),
(16, 16, '20201', 'Y', '-'),
(17, 17, '20201', 'Y', '-'),
(18, 20, '20201', 'Y', '-'),
(19, 21, '20201', 'Y', '-'),
(20, 22, '20201', 'Y', '-'),
(21, 23, '20201', 'Y', '-'),
(22, 24, '20201', 'Y', '-'),
(23, 25, '20201', 'Y', '-'),
(24, 26, '20201', 'Y', '-'),
(25, 27, '20201', 'Y', '-'),
(26, 28, '20201', 'Y', '-'),
(27, 29, '20201', 'Y', '-'),
(28, 30, '20201', 'Y', '-'),
(29, 31, '20201', 'Y', '-'),
(30, 32, '20201', 'Y', '-');

-- --------------------------------------------------------

--
-- Table structure for table `t_nilai`
--

CREATE TABLE `t_nilai` (
  `id` int(6) NOT NULL,
  `tasm` varchar(5) NOT NULL DEFAULT '0',
  `jenis` enum('h','t','a') NOT NULL,
  `id_guru_mapel` int(6) NOT NULL,
  `id_mapel_kd` int(6) NOT NULL,
  `id_siswa` int(6) NOT NULL,
  `nilai` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_nilai`
--

INSERT INTO `t_nilai` (`id`, `tasm`, `jenis`, `id_guru_mapel`, `id_mapel_kd`, `id_siswa`, `nilai`) VALUES
(0, '20201', 'h', 8, 22, 3, 93),
(0, '20201', 'h', 8, 22, 4, 87),
(0, '20201', 'h', 8, 22, 5, 0),
(0, '20201', 'h', 8, 22, 6, 0),
(0, '20201', 'h', 8, 22, 7, 0),
(0, '20201', 'h', 8, 22, 8, 0),
(0, '20201', 'h', 8, 22, 9, 0),
(0, '20201', 'h', 8, 22, 10, 0),
(0, '20201', 'h', 8, 22, 11, 0),
(0, '20201', 'h', 8, 22, 12, 0),
(0, '20201', 'h', 8, 22, 13, 0),
(0, '20201', 'h', 8, 22, 14, 0),
(0, '20201', 'h', 8, 22, 15, 0),
(0, '20201', 'h', 8, 22, 16, 0),
(0, '20201', 'h', 8, 22, 17, 0),
(0, '20201', 'h', 8, 22, 18, 0),
(0, '20201', 'h', 8, 22, 19, 0),
(0, '20201', 'h', 8, 22, 20, 0),
(0, '20201', 'h', 8, 22, 21, 0),
(0, '20201', 'h', 8, 22, 22, 0),
(0, '20201', 'h', 8, 22, 23, 0),
(0, '20201', 'h', 8, 22, 24, 0),
(0, '20201', 'h', 8, 22, 25, 0),
(0, '20201', 'h', 8, 22, 26, 0),
(0, '20201', 'h', 8, 22, 27, 0),
(0, '20201', 'h', 8, 22, 28, 0),
(0, '20201', 'h', 8, 22, 29, 0),
(0, '20201', 'h', 8, 22, 30, 0),
(0, '20201', 'h', 8, 22, 31, 0),
(0, '20201', 'h', 8, 22, 32, 0),
(0, '20201', 'h', 8, 24, 3, 94),
(0, '20201', 'h', 8, 24, 4, 0),
(0, '20201', 'h', 8, 24, 5, 0),
(0, '20201', 'h', 8, 24, 6, 0),
(0, '20201', 'h', 8, 24, 7, 0),
(0, '20201', 'h', 8, 24, 8, 0),
(0, '20201', 'h', 8, 24, 9, 0),
(0, '20201', 'h', 8, 24, 10, 0),
(0, '20201', 'h', 8, 24, 11, 0),
(0, '20201', 'h', 8, 24, 12, 0),
(0, '20201', 'h', 8, 24, 13, 0),
(0, '20201', 'h', 8, 24, 14, 0),
(0, '20201', 'h', 8, 24, 15, 0),
(0, '20201', 'h', 8, 24, 16, 0),
(0, '20201', 'h', 8, 24, 17, 0),
(0, '20201', 'h', 8, 24, 18, 0),
(0, '20201', 'h', 8, 24, 19, 0),
(0, '20201', 'h', 8, 24, 20, 0),
(0, '20201', 'h', 8, 24, 21, 0),
(0, '20201', 'h', 8, 24, 22, 0),
(0, '20201', 'h', 8, 24, 23, 0),
(0, '20201', 'h', 8, 24, 24, 0),
(0, '20201', 'h', 8, 24, 25, 0),
(0, '20201', 'h', 8, 24, 26, 0),
(0, '20201', 'h', 8, 24, 27, 0),
(0, '20201', 'h', 8, 24, 28, 0),
(0, '20201', 'h', 8, 24, 29, 0),
(0, '20201', 'h', 8, 24, 30, 0),
(0, '20201', 'h', 8, 24, 31, 0),
(0, '20201', 'h', 8, 24, 32, 0),
(0, '20201', 'h', 8, 25, 3, 93),
(0, '20201', 'h', 8, 25, 4, 0),
(0, '20201', 'h', 8, 25, 5, 0),
(0, '20201', 'h', 8, 25, 6, 0),
(0, '20201', 'h', 8, 25, 7, 0),
(0, '20201', 'h', 8, 25, 8, 0),
(0, '20201', 'h', 8, 25, 9, 0),
(0, '20201', 'h', 8, 25, 10, 0),
(0, '20201', 'h', 8, 25, 11, 0),
(0, '20201', 'h', 8, 25, 12, 0),
(0, '20201', 'h', 8, 25, 13, 0),
(0, '20201', 'h', 8, 25, 14, 0),
(0, '20201', 'h', 8, 25, 15, 0),
(0, '20201', 'h', 8, 25, 16, 0),
(0, '20201', 'h', 8, 25, 17, 0),
(0, '20201', 'h', 8, 25, 18, 0),
(0, '20201', 'h', 8, 25, 19, 0),
(0, '20201', 'h', 8, 25, 20, 0),
(0, '20201', 'h', 8, 25, 21, 0),
(0, '20201', 'h', 8, 25, 22, 0),
(0, '20201', 'h', 8, 25, 23, 0),
(0, '20201', 'h', 8, 25, 24, 0),
(0, '20201', 'h', 8, 25, 25, 0),
(0, '20201', 'h', 8, 25, 26, 0),
(0, '20201', 'h', 8, 25, 27, 0),
(0, '20201', 'h', 8, 25, 28, 0),
(0, '20201', 'h', 8, 25, 29, 0),
(0, '20201', 'h', 8, 25, 30, 0),
(0, '20201', 'h', 8, 25, 31, 0),
(0, '20201', 'h', 8, 25, 32, 0),
(0, '20201', 'h', 8, 26, 3, 91),
(0, '20201', 'h', 8, 26, 4, 0),
(0, '20201', 'h', 8, 26, 5, 0),
(0, '20201', 'h', 8, 26, 6, 0),
(0, '20201', 'h', 8, 26, 7, 0),
(0, '20201', 'h', 8, 26, 8, 0),
(0, '20201', 'h', 8, 26, 9, 0),
(0, '20201', 'h', 8, 26, 10, 0),
(0, '20201', 'h', 8, 26, 11, 0),
(0, '20201', 'h', 8, 26, 12, 0),
(0, '20201', 'h', 8, 26, 13, 0),
(0, '20201', 'h', 8, 26, 14, 0),
(0, '20201', 'h', 8, 26, 15, 0),
(0, '20201', 'h', 8, 26, 16, 0),
(0, '20201', 'h', 8, 26, 17, 0),
(0, '20201', 'h', 8, 26, 18, 0),
(0, '20201', 'h', 8, 26, 19, 0),
(0, '20201', 'h', 8, 26, 20, 0),
(0, '20201', 'h', 8, 26, 21, 0),
(0, '20201', 'h', 8, 26, 22, 0),
(0, '20201', 'h', 8, 26, 23, 0),
(0, '20201', 'h', 8, 26, 24, 0),
(0, '20201', 'h', 8, 26, 25, 0),
(0, '20201', 'h', 8, 26, 26, 0),
(0, '20201', 'h', 8, 26, 27, 0),
(0, '20201', 'h', 8, 26, 28, 0),
(0, '20201', 'h', 8, 26, 29, 0),
(0, '20201', 'h', 8, 26, 30, 0),
(0, '20201', 'h', 8, 26, 31, 0),
(0, '20201', 'h', 8, 26, 32, 0),
(0, '20201', 't', 8, 1, 3, 93),
(0, '20201', 't', 8, 1, 4, 0),
(0, '20201', 't', 8, 1, 5, 0),
(0, '20201', 't', 8, 1, 6, 0),
(0, '20201', 't', 8, 1, 7, 0),
(0, '20201', 't', 8, 1, 8, 0),
(0, '20201', 't', 8, 1, 9, 0),
(0, '20201', 't', 8, 1, 10, 0),
(0, '20201', 't', 8, 1, 11, 0),
(0, '20201', 't', 8, 1, 12, 0),
(0, '20201', 't', 8, 1, 13, 0),
(0, '20201', 't', 8, 1, 14, 0),
(0, '20201', 't', 8, 1, 15, 0),
(0, '20201', 't', 8, 1, 16, 0),
(0, '20201', 't', 8, 1, 17, 0),
(0, '20201', 't', 8, 1, 18, 0),
(0, '20201', 't', 8, 1, 19, 0),
(0, '20201', 't', 8, 1, 20, 0),
(0, '20201', 't', 8, 1, 21, 0),
(0, '20201', 't', 8, 1, 22, 0),
(0, '20201', 't', 8, 1, 23, 0),
(0, '20201', 't', 8, 1, 24, 0),
(0, '20201', 't', 8, 1, 25, 0),
(0, '20201', 't', 8, 1, 26, 0),
(0, '20201', 't', 8, 1, 27, 0),
(0, '20201', 't', 8, 1, 28, 0),
(0, '20201', 't', 8, 1, 29, 0),
(0, '20201', 't', 8, 1, 30, 0),
(0, '20201', 't', 8, 1, 31, 0),
(0, '20201', 't', 8, 1, 32, 0),
(0, '20201', 'a', 8, 1, 3, 93),
(0, '20201', 'a', 8, 1, 4, 0),
(0, '20201', 'a', 8, 1, 5, 0),
(0, '20201', 'a', 8, 1, 6, 0),
(0, '20201', 'a', 8, 1, 7, 0),
(0, '20201', 'a', 8, 1, 8, 0),
(0, '20201', 'a', 8, 1, 9, 0),
(0, '20201', 'a', 8, 1, 10, 0),
(0, '20201', 'a', 8, 1, 11, 0),
(0, '20201', 'a', 8, 1, 12, 0),
(0, '20201', 'a', 8, 1, 13, 0),
(0, '20201', 'a', 8, 1, 14, 0),
(0, '20201', 'a', 8, 1, 15, 0),
(0, '20201', 'a', 8, 1, 16, 0),
(0, '20201', 'a', 8, 1, 17, 0),
(0, '20201', 'a', 8, 1, 18, 0),
(0, '20201', 'a', 8, 1, 19, 0),
(0, '20201', 'a', 8, 1, 20, 0),
(0, '20201', 'a', 8, 1, 21, 0),
(0, '20201', 'a', 8, 1, 22, 0),
(0, '20201', 'a', 8, 1, 23, 0),
(0, '20201', 'a', 8, 1, 24, 0),
(0, '20201', 'a', 8, 1, 25, 0),
(0, '20201', 'a', 8, 1, 26, 0),
(0, '20201', 'a', 8, 1, 27, 0),
(0, '20201', 'a', 8, 1, 28, 0),
(0, '20201', 'a', 8, 1, 29, 0),
(0, '20201', 'a', 8, 1, 30, 0),
(0, '20201', 'a', 8, 1, 31, 0),
(0, '20201', 'a', 8, 1, 32, 0),
(0, '20201', 't', 4, 2, 3, 96),
(0, '20201', 't', 4, 2, 4, 96),
(0, '20201', 't', 4, 2, 5, 0),
(0, '20201', 't', 4, 2, 6, 0),
(0, '20201', 't', 4, 2, 7, 0),
(0, '20201', 't', 4, 2, 8, 0),
(0, '20201', 't', 4, 2, 9, 0),
(0, '20201', 't', 4, 2, 10, 0),
(0, '20201', 't', 4, 2, 11, 0),
(0, '20201', 't', 4, 2, 12, 0),
(0, '20201', 't', 4, 2, 13, 0),
(0, '20201', 't', 4, 2, 14, 0),
(0, '20201', 't', 4, 2, 15, 0),
(0, '20201', 't', 4, 2, 16, 0),
(0, '20201', 't', 4, 2, 17, 0),
(0, '20201', 't', 4, 2, 18, 0),
(0, '20201', 't', 4, 2, 19, 0),
(0, '20201', 't', 4, 2, 20, 0),
(0, '20201', 't', 4, 2, 21, 0),
(0, '20201', 't', 4, 2, 22, 0),
(0, '20201', 't', 4, 2, 23, 0),
(0, '20201', 't', 4, 2, 24, 0),
(0, '20201', 't', 4, 2, 25, 0),
(0, '20201', 't', 4, 2, 26, 0),
(0, '20201', 't', 4, 2, 27, 0),
(0, '20201', 't', 4, 2, 28, 0),
(0, '20201', 't', 4, 2, 29, 0),
(0, '20201', 't', 4, 2, 30, 0),
(0, '20201', 't', 4, 2, 31, 0),
(0, '20201', 't', 4, 2, 32, 0),
(0, '20201', 'a', 4, 2, 3, 96),
(0, '20201', 'a', 4, 2, 4, 96),
(0, '20201', 'a', 4, 2, 5, 0),
(0, '20201', 'a', 4, 2, 6, 0),
(0, '20201', 'a', 4, 2, 7, 0),
(0, '20201', 'a', 4, 2, 8, 0),
(0, '20201', 'a', 4, 2, 9, 0),
(0, '20201', 'a', 4, 2, 10, 0),
(0, '20201', 'a', 4, 2, 11, 0),
(0, '20201', 'a', 4, 2, 12, 0),
(0, '20201', 'a', 4, 2, 13, 0),
(0, '20201', 'a', 4, 2, 14, 0),
(0, '20201', 'a', 4, 2, 15, 0),
(0, '20201', 'a', 4, 2, 16, 0),
(0, '20201', 'a', 4, 2, 17, 0),
(0, '20201', 'a', 4, 2, 18, 0),
(0, '20201', 'a', 4, 2, 19, 0),
(0, '20201', 'a', 4, 2, 20, 0),
(0, '20201', 'a', 4, 2, 21, 0),
(0, '20201', 'a', 4, 2, 22, 0),
(0, '20201', 'a', 4, 2, 23, 0),
(0, '20201', 'a', 4, 2, 24, 0),
(0, '20201', 'a', 4, 2, 25, 0),
(0, '20201', 'a', 4, 2, 26, 0),
(0, '20201', 'a', 4, 2, 27, 0),
(0, '20201', 'a', 4, 2, 28, 0),
(0, '20201', 'a', 4, 2, 29, 0),
(0, '20201', 'a', 4, 2, 30, 0),
(0, '20201', 'a', 4, 2, 31, 0),
(0, '20201', 'a', 4, 2, 32, 0),
(0, '20201', '', 4, 2, 3, 96),
(0, '20201', '', 4, 2, 4, 96),
(0, '20201', '', 4, 2, 5, 0),
(0, '20201', '', 4, 2, 6, 0),
(0, '20201', '', 4, 2, 7, 0),
(0, '20201', '', 4, 2, 8, 0),
(0, '20201', '', 4, 2, 9, 0),
(0, '20201', '', 4, 2, 10, 0),
(0, '20201', '', 4, 2, 11, 0),
(0, '20201', '', 4, 2, 12, 0),
(0, '20201', '', 4, 2, 13, 0),
(0, '20201', '', 4, 2, 14, 0),
(0, '20201', '', 4, 2, 15, 0),
(0, '20201', '', 4, 2, 16, 0),
(0, '20201', '', 4, 2, 17, 0),
(0, '20201', '', 4, 2, 18, 0),
(0, '20201', '', 4, 2, 19, 0),
(0, '20201', '', 4, 2, 20, 0),
(0, '20201', '', 4, 2, 21, 0),
(0, '20201', '', 4, 2, 22, 0),
(0, '20201', '', 4, 2, 23, 0),
(0, '20201', '', 4, 2, 24, 0),
(0, '20201', '', 4, 2, 25, 0),
(0, '20201', '', 4, 2, 26, 0),
(0, '20201', '', 4, 2, 27, 0),
(0, '20201', '', 4, 2, 28, 0),
(0, '20201', '', 4, 2, 29, 0),
(0, '20201', '', 4, 2, 30, 0),
(0, '20201', '', 4, 2, 31, 0),
(0, '20201', '', 4, 2, 32, 0),
(0, '20201', 'h', 4, 29, 3, 96),
(0, '20201', 'h', 4, 29, 4, 0),
(0, '20201', 'h', 4, 29, 5, 0),
(0, '20201', 'h', 4, 29, 6, 0),
(0, '20201', 'h', 4, 29, 7, 0),
(0, '20201', 'h', 4, 29, 8, 0),
(0, '20201', 'h', 4, 29, 9, 0),
(0, '20201', 'h', 4, 29, 10, 0),
(0, '20201', 'h', 4, 29, 11, 0),
(0, '20201', 'h', 4, 29, 12, 0),
(0, '20201', 'h', 4, 29, 13, 0),
(0, '20201', 'h', 4, 29, 14, 0),
(0, '20201', 'h', 4, 29, 15, 0),
(0, '20201', 'h', 4, 29, 16, 0),
(0, '20201', 'h', 4, 29, 17, 0),
(0, '20201', 'h', 4, 29, 18, 0),
(0, '20201', 'h', 4, 29, 19, 0),
(0, '20201', 'h', 4, 29, 20, 0),
(0, '20201', 'h', 4, 29, 21, 0),
(0, '20201', 'h', 4, 29, 22, 0),
(0, '20201', 'h', 4, 29, 23, 0),
(0, '20201', 'h', 4, 29, 24, 0),
(0, '20201', 'h', 4, 29, 25, 0),
(0, '20201', 'h', 4, 29, 26, 0),
(0, '20201', 'h', 4, 29, 27, 0),
(0, '20201', 'h', 4, 29, 28, 0),
(0, '20201', 'h', 4, 29, 29, 0),
(0, '20201', 'h', 4, 29, 30, 0),
(0, '20201', 'h', 4, 29, 31, 0),
(0, '20201', 'h', 4, 29, 32, 0),
(0, '20201', 'h', 4, 30, 3, 94),
(0, '20201', 'h', 4, 30, 4, 0),
(0, '20201', 'h', 4, 30, 5, 0),
(0, '20201', 'h', 4, 30, 6, 0),
(0, '20201', 'h', 4, 30, 7, 0),
(0, '20201', 'h', 4, 30, 8, 0),
(0, '20201', 'h', 4, 30, 9, 0),
(0, '20201', 'h', 4, 30, 10, 0),
(0, '20201', 'h', 4, 30, 11, 0),
(0, '20201', 'h', 4, 30, 12, 0),
(0, '20201', 'h', 4, 30, 13, 0),
(0, '20201', 'h', 4, 30, 14, 0),
(0, '20201', 'h', 4, 30, 15, 0),
(0, '20201', 'h', 4, 30, 16, 0),
(0, '20201', 'h', 4, 30, 17, 0),
(0, '20201', 'h', 4, 30, 18, 0),
(0, '20201', 'h', 4, 30, 19, 0),
(0, '20201', 'h', 4, 30, 20, 0),
(0, '20201', 'h', 4, 30, 21, 0),
(0, '20201', 'h', 4, 30, 22, 0),
(0, '20201', 'h', 4, 30, 23, 0),
(0, '20201', 'h', 4, 30, 24, 0),
(0, '20201', 'h', 4, 30, 25, 0),
(0, '20201', 'h', 4, 30, 26, 0),
(0, '20201', 'h', 4, 30, 27, 0),
(0, '20201', 'h', 4, 30, 28, 0),
(0, '20201', 'h', 4, 30, 29, 0),
(0, '20201', 'h', 4, 30, 30, 0),
(0, '20201', 'h', 4, 30, 31, 0),
(0, '20201', 'h', 4, 30, 32, 0),
(0, '20201', 'h', 4, 31, 3, 98),
(0, '20201', 'h', 4, 31, 4, 0),
(0, '20201', 'h', 4, 31, 5, 0),
(0, '20201', 'h', 4, 31, 6, 0),
(0, '20201', 'h', 4, 31, 7, 0),
(0, '20201', 'h', 4, 31, 8, 0),
(0, '20201', 'h', 4, 31, 9, 0),
(0, '20201', 'h', 4, 31, 10, 0),
(0, '20201', 'h', 4, 31, 11, 0),
(0, '20201', 'h', 4, 31, 12, 0),
(0, '20201', 'h', 4, 31, 13, 0),
(0, '20201', 'h', 4, 31, 14, 0),
(0, '20201', 'h', 4, 31, 15, 0),
(0, '20201', 'h', 4, 31, 16, 0),
(0, '20201', 'h', 4, 31, 17, 0),
(0, '20201', 'h', 4, 31, 18, 0),
(0, '20201', 'h', 4, 31, 19, 0),
(0, '20201', 'h', 4, 31, 20, 0),
(0, '20201', 'h', 4, 31, 21, 0),
(0, '20201', 'h', 4, 31, 22, 0),
(0, '20201', 'h', 4, 31, 23, 0),
(0, '20201', 'h', 4, 31, 24, 0),
(0, '20201', 'h', 4, 31, 25, 0),
(0, '20201', 'h', 4, 31, 26, 0),
(0, '20201', 'h', 4, 31, 27, 0),
(0, '20201', 'h', 4, 31, 28, 0),
(0, '20201', 'h', 4, 31, 29, 0),
(0, '20201', 'h', 4, 31, 30, 0),
(0, '20201', 'h', 4, 31, 31, 0),
(0, '20201', 'h', 4, 31, 32, 0),
(0, '20201', 'h', 4, 32, 3, 97),
(0, '20201', 'h', 4, 32, 4, 0),
(0, '20201', 'h', 4, 32, 5, 0),
(0, '20201', 'h', 4, 32, 6, 0),
(0, '20201', 'h', 4, 32, 7, 0),
(0, '20201', 'h', 4, 32, 8, 0),
(0, '20201', 'h', 4, 32, 9, 0),
(0, '20201', 'h', 4, 32, 10, 0),
(0, '20201', 'h', 4, 32, 11, 0),
(0, '20201', 'h', 4, 32, 12, 0),
(0, '20201', 'h', 4, 32, 13, 0),
(0, '20201', 'h', 4, 32, 14, 0),
(0, '20201', 'h', 4, 32, 15, 0),
(0, '20201', 'h', 4, 32, 16, 0),
(0, '20201', 'h', 4, 32, 17, 0),
(0, '20201', 'h', 4, 32, 18, 0),
(0, '20201', 'h', 4, 32, 19, 0),
(0, '20201', 'h', 4, 32, 20, 0),
(0, '20201', 'h', 4, 32, 21, 0),
(0, '20201', 'h', 4, 32, 22, 0),
(0, '20201', 'h', 4, 32, 23, 0),
(0, '20201', 'h', 4, 32, 24, 0),
(0, '20201', 'h', 4, 32, 25, 0),
(0, '20201', 'h', 4, 32, 26, 0),
(0, '20201', 'h', 4, 32, 27, 0),
(0, '20201', 'h', 4, 32, 28, 0),
(0, '20201', 'h', 4, 32, 29, 0),
(0, '20201', 'h', 4, 32, 30, 0),
(0, '20201', 'h', 4, 32, 31, 0),
(0, '20201', 'h', 4, 32, 32, 0),
(0, '20201', 'h', 5, 33, 3, 96),
(0, '20201', 'h', 5, 33, 4, 0),
(0, '20201', 'h', 5, 33, 5, 0),
(0, '20201', 'h', 5, 33, 6, 0),
(0, '20201', 'h', 5, 33, 7, 0),
(0, '20201', 'h', 5, 33, 8, 0),
(0, '20201', 'h', 5, 33, 9, 0),
(0, '20201', 'h', 5, 33, 10, 0),
(0, '20201', 'h', 5, 33, 11, 0),
(0, '20201', 'h', 5, 33, 12, 0),
(0, '20201', 'h', 5, 33, 13, 0),
(0, '20201', 'h', 5, 33, 14, 0),
(0, '20201', 'h', 5, 33, 15, 0),
(0, '20201', 'h', 5, 33, 16, 0),
(0, '20201', 'h', 5, 33, 17, 0),
(0, '20201', 'h', 5, 33, 18, 0),
(0, '20201', 'h', 5, 33, 19, 0),
(0, '20201', 'h', 5, 33, 20, 0),
(0, '20201', 'h', 5, 33, 21, 0),
(0, '20201', 'h', 5, 33, 22, 0),
(0, '20201', 'h', 5, 33, 23, 0),
(0, '20201', 'h', 5, 33, 24, 0),
(0, '20201', 'h', 5, 33, 25, 0),
(0, '20201', 'h', 5, 33, 26, 0),
(0, '20201', 'h', 5, 33, 27, 0),
(0, '20201', 'h', 5, 33, 28, 0),
(0, '20201', 'h', 5, 33, 29, 0),
(0, '20201', 'h', 5, 33, 30, 0),
(0, '20201', 'h', 5, 33, 31, 0),
(0, '20201', 'h', 5, 33, 32, 0),
(0, '20201', 'h', 5, 34, 3, 95),
(0, '20201', 'h', 5, 34, 4, 0),
(0, '20201', 'h', 5, 34, 5, 0),
(0, '20201', 'h', 5, 34, 6, 0),
(0, '20201', 'h', 5, 34, 7, 0),
(0, '20201', 'h', 5, 34, 8, 0),
(0, '20201', 'h', 5, 34, 9, 0),
(0, '20201', 'h', 5, 34, 10, 0),
(0, '20201', 'h', 5, 34, 11, 0),
(0, '20201', 'h', 5, 34, 12, 0),
(0, '20201', 'h', 5, 34, 13, 0),
(0, '20201', 'h', 5, 34, 14, 0),
(0, '20201', 'h', 5, 34, 15, 0),
(0, '20201', 'h', 5, 34, 16, 0),
(0, '20201', 'h', 5, 34, 17, 0),
(0, '20201', 'h', 5, 34, 18, 0),
(0, '20201', 'h', 5, 34, 19, 0),
(0, '20201', 'h', 5, 34, 20, 0),
(0, '20201', 'h', 5, 34, 21, 0),
(0, '20201', 'h', 5, 34, 22, 0),
(0, '20201', 'h', 5, 34, 23, 0),
(0, '20201', 'h', 5, 34, 24, 0),
(0, '20201', 'h', 5, 34, 25, 0),
(0, '20201', 'h', 5, 34, 26, 0),
(0, '20201', 'h', 5, 34, 27, 0),
(0, '20201', 'h', 5, 34, 28, 0),
(0, '20201', 'h', 5, 34, 29, 0),
(0, '20201', 'h', 5, 34, 30, 0),
(0, '20201', 'h', 5, 34, 31, 0),
(0, '20201', 'h', 5, 34, 32, 0),
(0, '20201', 't', 5, 3, 3, 96),
(0, '20201', 't', 5, 3, 4, 0),
(0, '20201', 't', 5, 3, 5, 0),
(0, '20201', 't', 5, 3, 6, 0),
(0, '20201', 't', 5, 3, 7, 0),
(0, '20201', 't', 5, 3, 8, 0),
(0, '20201', 't', 5, 3, 9, 0),
(0, '20201', 't', 5, 3, 10, 0),
(0, '20201', 't', 5, 3, 11, 0),
(0, '20201', 't', 5, 3, 12, 0),
(0, '20201', 't', 5, 3, 13, 0),
(0, '20201', 't', 5, 3, 14, 0),
(0, '20201', 't', 5, 3, 15, 0),
(0, '20201', 't', 5, 3, 16, 0),
(0, '20201', 't', 5, 3, 17, 0),
(0, '20201', 't', 5, 3, 18, 0),
(0, '20201', 't', 5, 3, 19, 0),
(0, '20201', 't', 5, 3, 20, 0),
(0, '20201', 't', 5, 3, 21, 0),
(0, '20201', 't', 5, 3, 22, 0),
(0, '20201', 't', 5, 3, 23, 0),
(0, '20201', 't', 5, 3, 24, 0),
(0, '20201', 't', 5, 3, 25, 0),
(0, '20201', 't', 5, 3, 26, 0),
(0, '20201', 't', 5, 3, 27, 0),
(0, '20201', 't', 5, 3, 28, 0),
(0, '20201', 't', 5, 3, 29, 0),
(0, '20201', 't', 5, 3, 30, 0),
(0, '20201', 't', 5, 3, 31, 0),
(0, '20201', 't', 5, 3, 32, 0),
(0, '20201', 'a', 5, 3, 3, 96),
(0, '20201', 'a', 5, 3, 4, 0),
(0, '20201', 'a', 5, 3, 5, 0),
(0, '20201', 'a', 5, 3, 6, 0),
(0, '20201', 'a', 5, 3, 7, 0),
(0, '20201', 'a', 5, 3, 8, 0),
(0, '20201', 'a', 5, 3, 9, 0),
(0, '20201', 'a', 5, 3, 10, 0),
(0, '20201', 'a', 5, 3, 11, 0),
(0, '20201', 'a', 5, 3, 12, 0),
(0, '20201', 'a', 5, 3, 13, 0),
(0, '20201', 'a', 5, 3, 14, 0),
(0, '20201', 'a', 5, 3, 15, 0),
(0, '20201', 'a', 5, 3, 16, 0),
(0, '20201', 'a', 5, 3, 17, 0),
(0, '20201', 'a', 5, 3, 18, 0),
(0, '20201', 'a', 5, 3, 19, 0),
(0, '20201', 'a', 5, 3, 20, 0),
(0, '20201', 'a', 5, 3, 21, 0),
(0, '20201', 'a', 5, 3, 22, 0),
(0, '20201', 'a', 5, 3, 23, 0),
(0, '20201', 'a', 5, 3, 24, 0),
(0, '20201', 'a', 5, 3, 25, 0),
(0, '20201', 'a', 5, 3, 26, 0),
(0, '20201', 'a', 5, 3, 27, 0),
(0, '20201', 'a', 5, 3, 28, 0),
(0, '20201', 'a', 5, 3, 29, 0),
(0, '20201', 'a', 5, 3, 30, 0),
(0, '20201', 'a', 5, 3, 31, 0),
(0, '20201', 'a', 5, 3, 32, 0),
(0, '20201', '', 29, 39, 3, 92),
(0, '20201', '', 29, 39, 4, 0),
(0, '20201', '', 29, 39, 5, 0),
(0, '20201', '', 29, 39, 6, 0),
(0, '20201', '', 29, 39, 7, 0),
(0, '20201', '', 29, 39, 8, 0),
(0, '20201', '', 29, 39, 9, 0),
(0, '20201', '', 29, 39, 10, 0),
(0, '20201', '', 29, 39, 11, 0),
(0, '20201', '', 29, 39, 12, 0),
(0, '20201', '', 29, 39, 13, 0),
(0, '20201', '', 29, 39, 14, 0),
(0, '20201', '', 29, 39, 15, 0),
(0, '20201', '', 29, 39, 16, 0),
(0, '20201', '', 29, 39, 17, 0),
(0, '20201', '', 29, 39, 18, 0),
(0, '20201', '', 29, 39, 19, 0),
(0, '20201', '', 29, 39, 20, 0),
(0, '20201', '', 29, 39, 21, 0),
(0, '20201', '', 29, 39, 22, 0),
(0, '20201', '', 29, 39, 23, 0),
(0, '20201', '', 29, 39, 24, 0),
(0, '20201', '', 29, 39, 25, 0),
(0, '20201', '', 29, 39, 26, 0),
(0, '20201', '', 29, 39, 27, 0),
(0, '20201', '', 29, 39, 28, 0),
(0, '20201', '', 29, 39, 29, 0),
(0, '20201', '', 29, 39, 30, 0),
(0, '20201', '', 29, 39, 31, 0),
(0, '20201', '', 29, 39, 32, 0),
(0, '20201', 'h', 29, 40, 3, 92),
(0, '20201', 'h', 29, 40, 4, 0),
(0, '20201', 'h', 29, 40, 5, 0),
(0, '20201', 'h', 29, 40, 6, 0),
(0, '20201', 'h', 29, 40, 7, 0),
(0, '20201', 'h', 29, 40, 8, 0),
(0, '20201', 'h', 29, 40, 9, 0),
(0, '20201', 'h', 29, 40, 10, 0),
(0, '20201', 'h', 29, 40, 11, 0),
(0, '20201', 'h', 29, 40, 12, 0),
(0, '20201', 'h', 29, 40, 13, 0),
(0, '20201', 'h', 29, 40, 14, 0),
(0, '20201', 'h', 29, 40, 15, 0),
(0, '20201', 'h', 29, 40, 16, 0),
(0, '20201', 'h', 29, 40, 17, 0),
(0, '20201', 'h', 29, 40, 18, 0),
(0, '20201', 'h', 29, 40, 19, 0),
(0, '20201', 'h', 29, 40, 20, 0),
(0, '20201', 'h', 29, 40, 21, 0),
(0, '20201', 'h', 29, 40, 22, 0),
(0, '20201', 'h', 29, 40, 23, 0),
(0, '20201', 'h', 29, 40, 24, 0),
(0, '20201', 'h', 29, 40, 25, 0),
(0, '20201', 'h', 29, 40, 26, 0),
(0, '20201', 'h', 29, 40, 27, 0),
(0, '20201', 'h', 29, 40, 28, 0),
(0, '20201', 'h', 29, 40, 29, 0),
(0, '20201', 'h', 29, 40, 30, 0),
(0, '20201', 'h', 29, 40, 31, 0),
(0, '20201', 'h', 29, 40, 32, 0),
(0, '20201', 'a', 29, 4, 3, 93),
(0, '20201', 'a', 29, 4, 4, 0),
(0, '20201', 'a', 29, 4, 5, 0),
(0, '20201', 'a', 29, 4, 6, 0),
(0, '20201', 'a', 29, 4, 7, 0),
(0, '20201', 'a', 29, 4, 8, 0),
(0, '20201', 'a', 29, 4, 9, 0),
(0, '20201', 'a', 29, 4, 10, 0),
(0, '20201', 'a', 29, 4, 11, 0),
(0, '20201', 'a', 29, 4, 12, 0),
(0, '20201', 'a', 29, 4, 13, 0),
(0, '20201', 'a', 29, 4, 14, 0),
(0, '20201', 'a', 29, 4, 15, 0),
(0, '20201', 'a', 29, 4, 16, 0),
(0, '20201', 'a', 29, 4, 17, 0),
(0, '20201', 'a', 29, 4, 18, 0),
(0, '20201', 'a', 29, 4, 19, 0),
(0, '20201', 'a', 29, 4, 20, 0),
(0, '20201', 'a', 29, 4, 21, 0),
(0, '20201', 'a', 29, 4, 22, 0),
(0, '20201', 'a', 29, 4, 23, 0),
(0, '20201', 'a', 29, 4, 24, 0),
(0, '20201', 'a', 29, 4, 25, 0),
(0, '20201', 'a', 29, 4, 26, 0),
(0, '20201', 'a', 29, 4, 27, 0),
(0, '20201', 'a', 29, 4, 28, 0),
(0, '20201', 'a', 29, 4, 29, 0),
(0, '20201', 'a', 29, 4, 30, 0),
(0, '20201', 'a', 29, 4, 31, 0),
(0, '20201', 'a', 29, 4, 32, 0),
(0, '20201', 't', 29, 4, 3, 93),
(0, '20201', 't', 29, 4, 4, 0),
(0, '20201', 't', 29, 4, 5, 0),
(0, '20201', 't', 29, 4, 6, 0),
(0, '20201', 't', 29, 4, 7, 0),
(0, '20201', 't', 29, 4, 8, 0),
(0, '20201', 't', 29, 4, 9, 0),
(0, '20201', 't', 29, 4, 10, 0),
(0, '20201', 't', 29, 4, 11, 0),
(0, '20201', 't', 29, 4, 12, 0),
(0, '20201', 't', 29, 4, 13, 0),
(0, '20201', 't', 29, 4, 14, 0),
(0, '20201', 't', 29, 4, 15, 0),
(0, '20201', 't', 29, 4, 16, 0),
(0, '20201', 't', 29, 4, 17, 0),
(0, '20201', 't', 29, 4, 18, 0),
(0, '20201', 't', 29, 4, 19, 0),
(0, '20201', 't', 29, 4, 20, 0),
(0, '20201', 't', 29, 4, 21, 0),
(0, '20201', 't', 29, 4, 22, 0),
(0, '20201', 't', 29, 4, 23, 0),
(0, '20201', 't', 29, 4, 24, 0),
(0, '20201', 't', 29, 4, 25, 0),
(0, '20201', 't', 29, 4, 26, 0),
(0, '20201', 't', 29, 4, 27, 0),
(0, '20201', 't', 29, 4, 28, 0),
(0, '20201', 't', 29, 4, 29, 0),
(0, '20201', 't', 29, 4, 30, 0),
(0, '20201', 't', 29, 4, 31, 0),
(0, '20201', 't', 29, 4, 32, 0),
(0, '20201', 't', 6, 5, 3, 96),
(0, '20201', 't', 6, 5, 4, 0),
(0, '20201', 't', 6, 5, 5, 0),
(0, '20201', 't', 6, 5, 6, 0),
(0, '20201', 't', 6, 5, 7, 0),
(0, '20201', 't', 6, 5, 8, 0),
(0, '20201', 't', 6, 5, 9, 0),
(0, '20201', 't', 6, 5, 10, 0),
(0, '20201', 't', 6, 5, 11, 0),
(0, '20201', 't', 6, 5, 12, 0),
(0, '20201', 't', 6, 5, 13, 0),
(0, '20201', 't', 6, 5, 14, 0),
(0, '20201', 't', 6, 5, 15, 0),
(0, '20201', 't', 6, 5, 16, 0),
(0, '20201', 't', 6, 5, 17, 0),
(0, '20201', 't', 6, 5, 18, 0),
(0, '20201', 't', 6, 5, 19, 0),
(0, '20201', 't', 6, 5, 20, 0),
(0, '20201', 't', 6, 5, 21, 0),
(0, '20201', 't', 6, 5, 22, 0),
(0, '20201', 't', 6, 5, 23, 0),
(0, '20201', 't', 6, 5, 24, 0),
(0, '20201', 't', 6, 5, 25, 0),
(0, '20201', 't', 6, 5, 26, 0),
(0, '20201', 't', 6, 5, 27, 0),
(0, '20201', 't', 6, 5, 28, 0),
(0, '20201', 't', 6, 5, 29, 0),
(0, '20201', 't', 6, 5, 30, 0),
(0, '20201', 't', 6, 5, 31, 0),
(0, '20201', 't', 6, 5, 32, 0),
(0, '20201', 'a', 6, 5, 3, 96),
(0, '20201', 'a', 6, 5, 4, 0),
(0, '20201', 'a', 6, 5, 5, 0),
(0, '20201', 'a', 6, 5, 6, 0),
(0, '20201', 'a', 6, 5, 7, 0),
(0, '20201', 'a', 6, 5, 8, 0),
(0, '20201', 'a', 6, 5, 9, 0),
(0, '20201', 'a', 6, 5, 10, 0),
(0, '20201', 'a', 6, 5, 11, 0),
(0, '20201', 'a', 6, 5, 12, 0),
(0, '20201', 'a', 6, 5, 13, 0),
(0, '20201', 'a', 6, 5, 14, 0),
(0, '20201', 'a', 6, 5, 15, 0),
(0, '20201', 'a', 6, 5, 16, 0),
(0, '20201', 'a', 6, 5, 17, 0),
(0, '20201', 'a', 6, 5, 18, 0),
(0, '20201', 'a', 6, 5, 19, 0),
(0, '20201', 'a', 6, 5, 20, 0),
(0, '20201', 'a', 6, 5, 21, 0),
(0, '20201', 'a', 6, 5, 22, 0),
(0, '20201', 'a', 6, 5, 23, 0),
(0, '20201', 'a', 6, 5, 24, 0),
(0, '20201', 'a', 6, 5, 25, 0),
(0, '20201', 'a', 6, 5, 26, 0),
(0, '20201', 'a', 6, 5, 27, 0),
(0, '20201', 'a', 6, 5, 28, 0),
(0, '20201', 'a', 6, 5, 29, 0),
(0, '20201', 'a', 6, 5, 30, 0),
(0, '20201', 'a', 6, 5, 31, 0),
(0, '20201', 'a', 6, 5, 32, 0),
(0, '20201', 'h', 6, 41, 3, 96),
(0, '20201', 'h', 6, 41, 4, 0),
(0, '20201', 'h', 6, 41, 5, 0),
(0, '20201', 'h', 6, 41, 6, 0),
(0, '20201', 'h', 6, 41, 7, 0),
(0, '20201', 'h', 6, 41, 8, 0),
(0, '20201', 'h', 6, 41, 9, 0),
(0, '20201', 'h', 6, 41, 10, 0),
(0, '20201', 'h', 6, 41, 11, 0),
(0, '20201', 'h', 6, 41, 12, 0),
(0, '20201', 'h', 6, 41, 13, 0),
(0, '20201', 'h', 6, 41, 14, 0),
(0, '20201', 'h', 6, 41, 15, 0),
(0, '20201', 'h', 6, 41, 16, 0),
(0, '20201', 'h', 6, 41, 17, 0),
(0, '20201', 'h', 6, 41, 18, 0),
(0, '20201', 'h', 6, 41, 19, 0),
(0, '20201', 'h', 6, 41, 20, 0),
(0, '20201', 'h', 6, 41, 21, 0),
(0, '20201', 'h', 6, 41, 22, 0),
(0, '20201', 'h', 6, 41, 23, 0),
(0, '20201', 'h', 6, 41, 24, 0),
(0, '20201', 'h', 6, 41, 25, 0),
(0, '20201', 'h', 6, 41, 26, 0),
(0, '20201', 'h', 6, 41, 27, 0),
(0, '20201', 'h', 6, 41, 28, 0),
(0, '20201', 'h', 6, 41, 29, 0),
(0, '20201', 'h', 6, 41, 30, 0),
(0, '20201', 'h', 6, 41, 31, 0),
(0, '20201', 'h', 6, 41, 32, 0),
(0, '20201', 'h', 6, 42, 3, 95),
(0, '20201', 'h', 6, 42, 4, 0),
(0, '20201', 'h', 6, 42, 5, 0),
(0, '20201', 'h', 6, 42, 6, 0),
(0, '20201', 'h', 6, 42, 7, 0),
(0, '20201', 'h', 6, 42, 8, 0),
(0, '20201', 'h', 6, 42, 9, 0),
(0, '20201', 'h', 6, 42, 10, 0),
(0, '20201', 'h', 6, 42, 11, 0),
(0, '20201', 'h', 6, 42, 12, 0),
(0, '20201', 'h', 6, 42, 13, 0),
(0, '20201', 'h', 6, 42, 14, 0),
(0, '20201', 'h', 6, 42, 15, 0),
(0, '20201', 'h', 6, 42, 16, 0),
(0, '20201', 'h', 6, 42, 17, 0),
(0, '20201', 'h', 6, 42, 18, 0),
(0, '20201', 'h', 6, 42, 19, 0),
(0, '20201', 'h', 6, 42, 20, 0),
(0, '20201', 'h', 6, 42, 21, 0),
(0, '20201', 'h', 6, 42, 22, 0),
(0, '20201', 'h', 6, 42, 23, 0),
(0, '20201', 'h', 6, 42, 24, 0),
(0, '20201', 'h', 6, 42, 25, 0),
(0, '20201', 'h', 6, 42, 26, 0),
(0, '20201', 'h', 6, 42, 27, 0),
(0, '20201', 'h', 6, 42, 28, 0),
(0, '20201', 'h', 6, 42, 29, 0),
(0, '20201', 'h', 6, 42, 30, 0),
(0, '20201', 'h', 6, 42, 31, 0),
(0, '20201', 'h', 6, 42, 32, 0),
(0, '20201', 't', 7, 6, 3, 94),
(0, '20201', 't', 7, 6, 4, 0),
(0, '20201', 't', 7, 6, 5, 0),
(0, '20201', 't', 7, 6, 6, 0),
(0, '20201', 't', 7, 6, 7, 0),
(0, '20201', 't', 7, 6, 8, 0),
(0, '20201', 't', 7, 6, 9, 0),
(0, '20201', 't', 7, 6, 10, 0),
(0, '20201', 't', 7, 6, 11, 0),
(0, '20201', 't', 7, 6, 12, 0),
(0, '20201', 't', 7, 6, 13, 0),
(0, '20201', 't', 7, 6, 14, 0),
(0, '20201', 't', 7, 6, 15, 0),
(0, '20201', 't', 7, 6, 16, 0),
(0, '20201', 't', 7, 6, 17, 0),
(0, '20201', 't', 7, 6, 18, 0),
(0, '20201', 't', 7, 6, 19, 0),
(0, '20201', 't', 7, 6, 20, 0),
(0, '20201', 't', 7, 6, 21, 0),
(0, '20201', 't', 7, 6, 22, 0),
(0, '20201', 't', 7, 6, 23, 0),
(0, '20201', 't', 7, 6, 24, 0),
(0, '20201', 't', 7, 6, 25, 0),
(0, '20201', 't', 7, 6, 26, 0),
(0, '20201', 't', 7, 6, 27, 0),
(0, '20201', 't', 7, 6, 28, 0),
(0, '20201', 't', 7, 6, 29, 0),
(0, '20201', 't', 7, 6, 30, 0),
(0, '20201', 't', 7, 6, 31, 0),
(0, '20201', 't', 7, 6, 32, 0),
(0, '20201', 'a', 7, 6, 3, 94),
(0, '20201', 'a', 7, 6, 4, 0),
(0, '20201', 'a', 7, 6, 5, 0),
(0, '20201', 'a', 7, 6, 6, 0),
(0, '20201', 'a', 7, 6, 7, 0),
(0, '20201', 'a', 7, 6, 8, 0),
(0, '20201', 'a', 7, 6, 9, 0),
(0, '20201', 'a', 7, 6, 10, 0),
(0, '20201', 'a', 7, 6, 11, 0),
(0, '20201', 'a', 7, 6, 12, 0),
(0, '20201', 'a', 7, 6, 13, 0),
(0, '20201', 'a', 7, 6, 14, 0),
(0, '20201', 'a', 7, 6, 15, 0),
(0, '20201', 'a', 7, 6, 16, 0),
(0, '20201', 'a', 7, 6, 17, 0),
(0, '20201', 'a', 7, 6, 18, 0),
(0, '20201', 'a', 7, 6, 19, 0),
(0, '20201', 'a', 7, 6, 20, 0),
(0, '20201', 'a', 7, 6, 21, 0),
(0, '20201', 'a', 7, 6, 22, 0),
(0, '20201', 'a', 7, 6, 23, 0),
(0, '20201', 'a', 7, 6, 24, 0),
(0, '20201', 'a', 7, 6, 25, 0),
(0, '20201', 'a', 7, 6, 26, 0),
(0, '20201', 'a', 7, 6, 27, 0),
(0, '20201', 'a', 7, 6, 28, 0),
(0, '20201', 'a', 7, 6, 29, 0),
(0, '20201', 'a', 7, 6, 30, 0),
(0, '20201', 'a', 7, 6, 31, 0),
(0, '20201', 'a', 7, 6, 32, 0),
(0, '20201', 'h', 7, 46, 3, 93),
(0, '20201', 'h', 7, 46, 4, 0),
(0, '20201', 'h', 7, 46, 5, 0),
(0, '20201', 'h', 7, 46, 6, 0),
(0, '20201', 'h', 7, 46, 7, 0),
(0, '20201', 'h', 7, 46, 8, 0),
(0, '20201', 'h', 7, 46, 9, 0),
(0, '20201', 'h', 7, 46, 10, 0),
(0, '20201', 'h', 7, 46, 11, 0),
(0, '20201', 'h', 7, 46, 12, 0),
(0, '20201', 'h', 7, 46, 13, 0),
(0, '20201', 'h', 7, 46, 14, 0),
(0, '20201', 'h', 7, 46, 15, 0),
(0, '20201', 'h', 7, 46, 16, 0),
(0, '20201', 'h', 7, 46, 17, 0),
(0, '20201', 'h', 7, 46, 18, 0),
(0, '20201', 'h', 7, 46, 19, 0),
(0, '20201', 'h', 7, 46, 20, 0),
(0, '20201', 'h', 7, 46, 21, 0),
(0, '20201', 'h', 7, 46, 22, 0),
(0, '20201', 'h', 7, 46, 23, 0),
(0, '20201', 'h', 7, 46, 24, 0),
(0, '20201', 'h', 7, 46, 25, 0),
(0, '20201', 'h', 7, 46, 26, 0),
(0, '20201', 'h', 7, 46, 27, 0),
(0, '20201', 'h', 7, 46, 28, 0),
(0, '20201', 'h', 7, 46, 29, 0),
(0, '20201', 'h', 7, 46, 30, 0),
(0, '20201', 'h', 7, 46, 31, 0),
(0, '20201', 'h', 7, 46, 32, 0),
(0, '20201', 'h', 52, 49, 3, 93),
(0, '20201', 'h', 52, 49, 4, 92),
(0, '20201', 'h', 52, 49, 5, 0),
(0, '20201', 'h', 52, 49, 6, 0),
(0, '20201', 'h', 52, 49, 7, 0),
(0, '20201', 'h', 52, 49, 8, 0),
(0, '20201', 'h', 52, 49, 9, 0),
(0, '20201', 'h', 52, 49, 10, 0),
(0, '20201', 'h', 52, 49, 11, 0),
(0, '20201', 'h', 52, 49, 12, 0),
(0, '20201', 'h', 52, 49, 13, 0),
(0, '20201', 'h', 52, 49, 14, 0),
(0, '20201', 'h', 52, 49, 15, 0),
(0, '20201', 'h', 52, 49, 16, 0),
(0, '20201', 'h', 52, 49, 17, 0),
(0, '20201', 'h', 52, 49, 18, 0),
(0, '20201', 'h', 52, 49, 19, 0),
(0, '20201', 'h', 52, 49, 20, 0),
(0, '20201', 'h', 52, 49, 21, 0),
(0, '20201', 'h', 52, 49, 22, 0),
(0, '20201', 'h', 52, 49, 23, 0),
(0, '20201', 'h', 52, 49, 24, 0),
(0, '20201', 'h', 52, 49, 25, 0),
(0, '20201', 'h', 52, 49, 26, 0),
(0, '20201', 'h', 52, 49, 27, 0),
(0, '20201', 'h', 52, 49, 28, 0),
(0, '20201', 'h', 52, 49, 29, 0),
(0, '20201', 'h', 52, 49, 30, 0),
(0, '20201', 'h', 52, 49, 31, 0),
(0, '20201', 'h', 52, 49, 32, 0),
(0, '20201', 'h', 52, 50, 3, 92),
(0, '20201', 'h', 52, 50, 4, 0),
(0, '20201', 'h', 52, 50, 5, 0),
(0, '20201', 'h', 52, 50, 6, 0),
(0, '20201', 'h', 52, 50, 7, 0),
(0, '20201', 'h', 52, 50, 8, 0),
(0, '20201', 'h', 52, 50, 9, 0),
(0, '20201', 'h', 52, 50, 10, 0),
(0, '20201', 'h', 52, 50, 11, 0),
(0, '20201', 'h', 52, 50, 12, 0),
(0, '20201', 'h', 52, 50, 13, 0),
(0, '20201', 'h', 52, 50, 14, 0),
(0, '20201', 'h', 52, 50, 15, 0),
(0, '20201', 'h', 52, 50, 16, 0),
(0, '20201', 'h', 52, 50, 17, 0),
(0, '20201', 'h', 52, 50, 18, 0),
(0, '20201', 'h', 52, 50, 19, 0),
(0, '20201', 'h', 52, 50, 20, 0),
(0, '20201', 'h', 52, 50, 21, 0),
(0, '20201', 'h', 52, 50, 22, 0),
(0, '20201', 'h', 52, 50, 23, 0),
(0, '20201', 'h', 52, 50, 24, 0),
(0, '20201', 'h', 52, 50, 25, 0),
(0, '20201', 'h', 52, 50, 26, 0),
(0, '20201', 'h', 52, 50, 27, 0),
(0, '20201', 'h', 52, 50, 28, 0),
(0, '20201', 'h', 52, 50, 29, 0),
(0, '20201', 'h', 52, 50, 30, 0),
(0, '20201', 'h', 52, 50, 31, 0),
(0, '20201', 'h', 52, 50, 32, 0),
(0, '20201', 't', 52, 7, 3, 93),
(0, '20201', 't', 52, 7, 4, 0),
(0, '20201', 't', 52, 7, 5, 0),
(0, '20201', 't', 52, 7, 6, 0),
(0, '20201', 't', 52, 7, 7, 0),
(0, '20201', 't', 52, 7, 8, 0),
(0, '20201', 't', 52, 7, 9, 0),
(0, '20201', 't', 52, 7, 10, 0),
(0, '20201', 't', 52, 7, 11, 0),
(0, '20201', 't', 52, 7, 12, 0),
(0, '20201', 't', 52, 7, 13, 0),
(0, '20201', 't', 52, 7, 14, 0),
(0, '20201', 't', 52, 7, 15, 0),
(0, '20201', 't', 52, 7, 16, 0),
(0, '20201', 't', 52, 7, 17, 0),
(0, '20201', 't', 52, 7, 18, 0),
(0, '20201', 't', 52, 7, 19, 0),
(0, '20201', 't', 52, 7, 20, 0),
(0, '20201', 't', 52, 7, 21, 0),
(0, '20201', 't', 52, 7, 22, 0),
(0, '20201', 't', 52, 7, 23, 0),
(0, '20201', 't', 52, 7, 24, 0),
(0, '20201', 't', 52, 7, 25, 0),
(0, '20201', 't', 52, 7, 26, 0),
(0, '20201', 't', 52, 7, 27, 0),
(0, '20201', 't', 52, 7, 28, 0),
(0, '20201', 't', 52, 7, 29, 0),
(0, '20201', 't', 52, 7, 30, 0),
(0, '20201', 't', 52, 7, 31, 0),
(0, '20201', 't', 52, 7, 32, 0),
(0, '20201', 'a', 52, 7, 3, 93),
(0, '20201', 'a', 52, 7, 4, 0),
(0, '20201', 'a', 52, 7, 5, 0),
(0, '20201', 'a', 52, 7, 6, 0),
(0, '20201', 'a', 52, 7, 7, 0),
(0, '20201', 'a', 52, 7, 8, 0),
(0, '20201', 'a', 52, 7, 9, 0),
(0, '20201', 'a', 52, 7, 10, 0),
(0, '20201', 'a', 52, 7, 11, 0),
(0, '20201', 'a', 52, 7, 12, 0),
(0, '20201', 'a', 52, 7, 13, 0),
(0, '20201', 'a', 52, 7, 14, 0),
(0, '20201', 'a', 52, 7, 15, 0),
(0, '20201', 'a', 52, 7, 16, 0),
(0, '20201', 'a', 52, 7, 17, 0),
(0, '20201', 'a', 52, 7, 18, 0),
(0, '20201', 'a', 52, 7, 19, 0),
(0, '20201', 'a', 52, 7, 20, 0),
(0, '20201', 'a', 52, 7, 21, 0),
(0, '20201', 'a', 52, 7, 22, 0),
(0, '20201', 'a', 52, 7, 23, 0),
(0, '20201', 'a', 52, 7, 24, 0),
(0, '20201', 'a', 52, 7, 25, 0),
(0, '20201', 'a', 52, 7, 26, 0),
(0, '20201', 'a', 52, 7, 27, 0),
(0, '20201', 'a', 52, 7, 28, 0),
(0, '20201', 'a', 52, 7, 29, 0),
(0, '20201', 'a', 52, 7, 30, 0),
(0, '20201', 'a', 52, 7, 31, 0),
(0, '20201', 'a', 52, 7, 32, 0),
(0, '20201', 't', 27, 8, 3, 87),
(0, '20201', 't', 27, 8, 4, 0),
(0, '20201', 't', 27, 8, 5, 0),
(0, '20201', 't', 27, 8, 6, 0),
(0, '20201', 't', 27, 8, 7, 0),
(0, '20201', 't', 27, 8, 8, 0),
(0, '20201', 't', 27, 8, 9, 0),
(0, '20201', 't', 27, 8, 10, 0),
(0, '20201', 't', 27, 8, 11, 0),
(0, '20201', 't', 27, 8, 12, 0),
(0, '20201', 't', 27, 8, 13, 0),
(0, '20201', 't', 27, 8, 14, 0),
(0, '20201', 't', 27, 8, 15, 0),
(0, '20201', 't', 27, 8, 16, 0),
(0, '20201', 't', 27, 8, 17, 0),
(0, '20201', 't', 27, 8, 18, 0),
(0, '20201', 't', 27, 8, 19, 0),
(0, '20201', 't', 27, 8, 20, 0),
(0, '20201', 't', 27, 8, 21, 0),
(0, '20201', 't', 27, 8, 22, 0),
(0, '20201', 't', 27, 8, 23, 0),
(0, '20201', 't', 27, 8, 24, 0),
(0, '20201', 't', 27, 8, 25, 0),
(0, '20201', 't', 27, 8, 26, 0),
(0, '20201', 't', 27, 8, 27, 0),
(0, '20201', 't', 27, 8, 28, 0),
(0, '20201', 't', 27, 8, 29, 0),
(0, '20201', 't', 27, 8, 30, 0),
(0, '20201', 't', 27, 8, 31, 0),
(0, '20201', 't', 27, 8, 32, 0),
(0, '20201', 'a', 27, 8, 3, 87),
(0, '20201', 'a', 27, 8, 4, 0),
(0, '20201', 'a', 27, 8, 5, 0),
(0, '20201', 'a', 27, 8, 6, 0),
(0, '20201', 'a', 27, 8, 7, 0),
(0, '20201', 'a', 27, 8, 8, 0),
(0, '20201', 'a', 27, 8, 9, 0),
(0, '20201', 'a', 27, 8, 10, 0),
(0, '20201', 'a', 27, 8, 11, 0),
(0, '20201', 'a', 27, 8, 12, 0),
(0, '20201', 'a', 27, 8, 13, 0),
(0, '20201', 'a', 27, 8, 14, 0),
(0, '20201', 'a', 27, 8, 15, 0),
(0, '20201', 'a', 27, 8, 16, 0),
(0, '20201', 'a', 27, 8, 17, 0),
(0, '20201', 'a', 27, 8, 18, 0),
(0, '20201', 'a', 27, 8, 19, 0),
(0, '20201', 'a', 27, 8, 20, 0),
(0, '20201', 'a', 27, 8, 21, 0),
(0, '20201', 'a', 27, 8, 22, 0),
(0, '20201', 'a', 27, 8, 23, 0),
(0, '20201', 'a', 27, 8, 24, 0),
(0, '20201', 'a', 27, 8, 25, 0),
(0, '20201', 'a', 27, 8, 26, 0),
(0, '20201', 'a', 27, 8, 27, 0),
(0, '20201', 'a', 27, 8, 28, 0),
(0, '20201', 'a', 27, 8, 29, 0),
(0, '20201', 'a', 27, 8, 30, 0),
(0, '20201', 'a', 27, 8, 31, 0),
(0, '20201', 'a', 27, 8, 32, 0),
(0, '20201', 'h', 27, 52, 3, 87),
(0, '20201', 'h', 27, 52, 4, 0),
(0, '20201', 'h', 27, 52, 5, 0),
(0, '20201', 'h', 27, 52, 6, 0),
(0, '20201', 'h', 27, 52, 7, 0),
(0, '20201', 'h', 27, 52, 8, 0),
(0, '20201', 'h', 27, 52, 9, 0),
(0, '20201', 'h', 27, 52, 10, 0),
(0, '20201', 'h', 27, 52, 11, 0),
(0, '20201', 'h', 27, 52, 12, 0),
(0, '20201', 'h', 27, 52, 13, 0),
(0, '20201', 'h', 27, 52, 14, 0),
(0, '20201', 'h', 27, 52, 15, 0),
(0, '20201', 'h', 27, 52, 16, 0),
(0, '20201', 'h', 27, 52, 17, 0),
(0, '20201', 'h', 27, 52, 18, 0),
(0, '20201', 'h', 27, 52, 19, 0),
(0, '20201', 'h', 27, 52, 20, 0),
(0, '20201', 'h', 27, 52, 21, 0),
(0, '20201', 'h', 27, 52, 22, 0),
(0, '20201', 'h', 27, 52, 23, 0),
(0, '20201', 'h', 27, 52, 24, 0),
(0, '20201', 'h', 27, 52, 25, 0),
(0, '20201', 'h', 27, 52, 26, 0),
(0, '20201', 'h', 27, 52, 27, 0),
(0, '20201', 'h', 27, 52, 28, 0),
(0, '20201', 'h', 27, 52, 29, 0),
(0, '20201', 'h', 27, 52, 30, 0),
(0, '20201', 'h', 27, 52, 31, 0),
(0, '20201', 'h', 27, 52, 32, 0),
(0, '20201', 't', 28, 9, 3, 84),
(0, '20201', 't', 28, 9, 4, 0),
(0, '20201', 't', 28, 9, 5, 0),
(0, '20201', 't', 28, 9, 6, 0),
(0, '20201', 't', 28, 9, 7, 0),
(0, '20201', 't', 28, 9, 8, 0),
(0, '20201', 't', 28, 9, 9, 0),
(0, '20201', 't', 28, 9, 10, 0),
(0, '20201', 't', 28, 9, 11, 0),
(0, '20201', 't', 28, 9, 12, 0),
(0, '20201', 't', 28, 9, 13, 0),
(0, '20201', 't', 28, 9, 14, 0),
(0, '20201', 't', 28, 9, 15, 0),
(0, '20201', 't', 28, 9, 16, 0),
(0, '20201', 't', 28, 9, 17, 0),
(0, '20201', 't', 28, 9, 18, 0),
(0, '20201', 't', 28, 9, 19, 0),
(0, '20201', 't', 28, 9, 20, 0),
(0, '20201', 't', 28, 9, 21, 0),
(0, '20201', 't', 28, 9, 22, 0),
(0, '20201', 't', 28, 9, 23, 0),
(0, '20201', 't', 28, 9, 24, 0),
(0, '20201', 't', 28, 9, 25, 0),
(0, '20201', 't', 28, 9, 26, 0),
(0, '20201', 't', 28, 9, 27, 0),
(0, '20201', 't', 28, 9, 28, 0),
(0, '20201', 't', 28, 9, 29, 0),
(0, '20201', 't', 28, 9, 30, 0),
(0, '20201', 't', 28, 9, 31, 0),
(0, '20201', 't', 28, 9, 32, 0),
(0, '20201', 'a', 28, 9, 3, 84),
(0, '20201', 'a', 28, 9, 4, 0),
(0, '20201', 'a', 28, 9, 5, 0),
(0, '20201', 'a', 28, 9, 6, 0),
(0, '20201', 'a', 28, 9, 7, 0),
(0, '20201', 'a', 28, 9, 8, 0),
(0, '20201', 'a', 28, 9, 9, 0),
(0, '20201', 'a', 28, 9, 10, 0),
(0, '20201', 'a', 28, 9, 11, 0),
(0, '20201', 'a', 28, 9, 12, 0),
(0, '20201', 'a', 28, 9, 13, 0),
(0, '20201', 'a', 28, 9, 14, 0),
(0, '20201', 'a', 28, 9, 15, 0),
(0, '20201', 'a', 28, 9, 16, 0),
(0, '20201', 'a', 28, 9, 17, 0),
(0, '20201', 'a', 28, 9, 18, 0),
(0, '20201', 'a', 28, 9, 19, 0),
(0, '20201', 'a', 28, 9, 20, 0),
(0, '20201', 'a', 28, 9, 21, 0),
(0, '20201', 'a', 28, 9, 22, 0),
(0, '20201', 'a', 28, 9, 23, 0),
(0, '20201', 'a', 28, 9, 24, 0),
(0, '20201', 'a', 28, 9, 25, 0),
(0, '20201', 'a', 28, 9, 26, 0),
(0, '20201', 'a', 28, 9, 27, 0),
(0, '20201', 'a', 28, 9, 28, 0),
(0, '20201', 'a', 28, 9, 29, 0),
(0, '20201', 'a', 28, 9, 30, 0),
(0, '20201', 'a', 28, 9, 31, 0),
(0, '20201', 'a', 28, 9, 32, 0),
(0, '20201', 'h', 28, 54, 3, 84),
(0, '20201', 'h', 28, 54, 4, 0),
(0, '20201', 'h', 28, 54, 5, 0),
(0, '20201', 'h', 28, 54, 6, 0),
(0, '20201', 'h', 28, 54, 7, 0),
(0, '20201', 'h', 28, 54, 8, 0),
(0, '20201', 'h', 28, 54, 9, 0),
(0, '20201', 'h', 28, 54, 10, 0),
(0, '20201', 'h', 28, 54, 11, 0),
(0, '20201', 'h', 28, 54, 12, 0),
(0, '20201', 'h', 28, 54, 13, 0),
(0, '20201', 'h', 28, 54, 14, 0),
(0, '20201', 'h', 28, 54, 15, 0),
(0, '20201', 'h', 28, 54, 16, 0),
(0, '20201', 'h', 28, 54, 17, 0),
(0, '20201', 'h', 28, 54, 18, 0),
(0, '20201', 'h', 28, 54, 19, 0),
(0, '20201', 'h', 28, 54, 20, 0),
(0, '20201', 'h', 28, 54, 21, 0),
(0, '20201', 'h', 28, 54, 22, 0),
(0, '20201', 'h', 28, 54, 23, 0),
(0, '20201', 'h', 28, 54, 24, 0),
(0, '20201', 'h', 28, 54, 25, 0),
(0, '20201', 'h', 28, 54, 26, 0),
(0, '20201', 'h', 28, 54, 27, 0),
(0, '20201', 'h', 28, 54, 28, 0),
(0, '20201', 'h', 28, 54, 29, 0),
(0, '20201', 'h', 28, 54, 30, 0),
(0, '20201', 'h', 28, 54, 31, 0),
(0, '20201', 'h', 28, 54, 32, 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_nilai_absensi`
--

CREATE TABLE `t_nilai_absensi` (
  `id` int(6) NOT NULL,
  `tasm` varchar(5) NOT NULL,
  `id_siswa` int(6) NOT NULL,
  `s` int(3) NOT NULL,
  `i` int(3) NOT NULL,
  `a` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_nilai_absensi`
--

INSERT INTO `t_nilai_absensi` (`id`, `tasm`, `id_siswa`, `s`, `i`, `a`) VALUES
(0, '20201', 3, 0, 0, 0),
(0, '20201', 4, 0, 0, 0),
(0, '20201', 5, 0, 0, 0),
(0, '20201', 6, 0, 0, 0),
(0, '20201', 7, 0, 0, 0),
(0, '20201', 8, 0, 0, 0),
(0, '20201', 9, 0, 0, 0),
(0, '20201', 11, 0, 0, 0),
(0, '20201', 12, 0, 0, 0),
(0, '20201', 13, 0, 0, 0),
(0, '20201', 14, 0, 0, 0),
(0, '20201', 15, 0, 0, 0),
(0, '20201', 18, 0, 0, 0),
(0, '20201', 19, 0, 0, 0),
(0, '20201', 10, 0, 0, 0),
(0, '20201', 16, 0, 0, 0),
(0, '20201', 17, 0, 0, 0),
(0, '20201', 20, 0, 0, 0),
(0, '20201', 21, 0, 0, 0),
(0, '20201', 22, 0, 0, 0),
(0, '20201', 23, 0, 0, 0),
(0, '20201', 24, 0, 0, 0),
(0, '20201', 25, 0, 0, 0),
(0, '20201', 26, 0, 0, 0),
(0, '20201', 27, 0, 0, 0),
(0, '20201', 28, 0, 0, 0),
(0, '20201', 29, 0, 0, 0),
(0, '20201', 30, 0, 0, 0),
(0, '20201', 31, 0, 0, 0),
(0, '20201', 32, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_nilai_ekstra`
--

CREATE TABLE `t_nilai_ekstra` (
  `id` int(6) NOT NULL,
  `tasm` varchar(5) DEFAULT NULL,
  `id_ekstra` int(3) DEFAULT NULL,
  `id_siswa` int(6) DEFAULT NULL,
  `nilai` char(2) DEFAULT NULL,
  `desk` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_nilai_ekstra`
--

INSERT INTO `t_nilai_ekstra` (`id`, `tasm`, `id_ekstra`, `id_siswa`, `nilai`, `desk`) VALUES
(0, '20201', 1, 3, 'A', 'Memuaskan, aktif megikuti kegiatan Pramuka minggua'),
(0, '20201', 1, 4, '-', '-'),
(0, '20201', 1, 5, '-', '-'),
(0, '20201', 1, 6, '-', '-'),
(0, '20201', 1, 7, '-', '-'),
(0, '20201', 1, 8, '-', '-'),
(0, '20201', 1, 9, '-', '-'),
(0, '20201', 1, 11, '-', '-'),
(0, '20201', 1, 12, '-', '-'),
(0, '20201', 1, 13, '-', '-'),
(0, '20201', 1, 14, '-', '-'),
(0, '20201', 1, 15, '-', '-'),
(0, '20201', 1, 18, '-', '-'),
(0, '20201', 1, 19, '-', '-'),
(0, '20201', 1, 10, '-', '-'),
(0, '20201', 1, 16, '-', '-'),
(0, '20201', 1, 17, '-', '-'),
(0, '20201', 1, 20, '-', '-'),
(0, '20201', 1, 21, '-', '-'),
(0, '20201', 1, 22, '-', '-'),
(0, '20201', 1, 23, '-', '-'),
(0, '20201', 1, 24, '-', '-'),
(0, '20201', 1, 25, '-', '-'),
(0, '20201', 1, 26, '-', '-'),
(0, '20201', 1, 27, '-', '-'),
(0, '20201', 1, 28, '-', '-'),
(0, '20201', 1, 29, '-', '-'),
(0, '20201', 1, 30, '-', '-'),
(0, '20201', 1, 31, '-', '-'),
(0, '20201', 1, 32, '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `t_nilai_ket`
--

CREATE TABLE `t_nilai_ket` (
  `id` int(6) NOT NULL,
  `tasm` varchar(5) NOT NULL,
  `id_guru_mapel` int(6) NOT NULL,
  `id_mapel_kd` int(6) NOT NULL,
  `id_siswa` int(6) NOT NULL,
  `nilai` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_nilai_ket`
--

INSERT INTO `t_nilai_ket` (`id`, `tasm`, `id_guru_mapel`, `id_mapel_kd`, `id_siswa`, `nilai`) VALUES
(41, '20201', 8, 27, 3, 92),
(42, '20201', 8, 27, 4, 0),
(43, '20201', 8, 27, 5, 0),
(44, '20201', 8, 27, 6, 0),
(45, '20201', 8, 27, 7, 0),
(46, '20201', 8, 27, 8, 0),
(47, '20201', 8, 27, 9, 0),
(48, '20201', 8, 27, 10, 0),
(49, '20201', 8, 27, 11, 0),
(50, '20201', 8, 27, 12, 0),
(51, '20201', 8, 27, 13, 0),
(52, '20201', 8, 27, 14, 0),
(53, '20201', 8, 27, 15, 0),
(54, '20201', 8, 27, 16, 0),
(55, '20201', 8, 27, 17, 0),
(56, '20201', 8, 27, 18, 0),
(57, '20201', 8, 27, 19, 0),
(58, '20201', 8, 27, 20, 0),
(59, '20201', 8, 27, 21, 0),
(60, '20201', 8, 27, 22, 0),
(61, '20201', 8, 27, 23, 0),
(62, '20201', 8, 27, 24, 0),
(63, '20201', 8, 27, 25, 0),
(64, '20201', 8, 27, 26, 0),
(65, '20201', 8, 27, 27, 0),
(66, '20201', 8, 27, 28, 0),
(67, '20201', 8, 27, 29, 0),
(68, '20201', 8, 27, 30, 0),
(69, '20201', 8, 27, 31, 0),
(70, '20201', 8, 27, 32, 0),
(71, '20201', 8, 28, 3, 88),
(72, '20201', 8, 28, 4, 0),
(73, '20201', 8, 28, 5, 0),
(74, '20201', 8, 28, 6, 0),
(75, '20201', 8, 28, 7, 0),
(76, '20201', 8, 28, 8, 0),
(77, '20201', 8, 28, 9, 0),
(78, '20201', 8, 28, 10, 0),
(79, '20201', 8, 28, 11, 0),
(80, '20201', 8, 28, 12, 0),
(81, '20201', 8, 28, 13, 0),
(82, '20201', 8, 28, 14, 0),
(83, '20201', 8, 28, 15, 0),
(84, '20201', 8, 28, 16, 0),
(85, '20201', 8, 28, 17, 0),
(86, '20201', 8, 28, 18, 0),
(87, '20201', 8, 28, 19, 0),
(88, '20201', 8, 28, 20, 0),
(89, '20201', 8, 28, 21, 0),
(90, '20201', 8, 28, 22, 0),
(91, '20201', 8, 28, 23, 0),
(92, '20201', 8, 28, 24, 0),
(93, '20201', 8, 28, 25, 0),
(94, '20201', 8, 28, 26, 0),
(95, '20201', 8, 28, 27, 0),
(96, '20201', 8, 28, 28, 0),
(97, '20201', 8, 28, 29, 0),
(98, '20201', 8, 28, 30, 0),
(99, '20201', 8, 28, 31, 0),
(100, '20201', 8, 28, 32, 0),
(101, '20201', 4, 21, 3, 96),
(102, '20201', 4, 21, 4, 0),
(103, '20201', 4, 21, 5, 0),
(104, '20201', 4, 21, 6, 0),
(105, '20201', 4, 21, 7, 0),
(106, '20201', 4, 21, 8, 0),
(107, '20201', 4, 21, 9, 0),
(108, '20201', 4, 21, 10, 0),
(109, '20201', 4, 21, 11, 0),
(110, '20201', 4, 21, 12, 0),
(111, '20201', 4, 21, 13, 0),
(112, '20201', 4, 21, 14, 0),
(113, '20201', 4, 21, 15, 0),
(114, '20201', 4, 21, 16, 0),
(115, '20201', 4, 21, 17, 0),
(116, '20201', 4, 21, 18, 0),
(117, '20201', 4, 21, 19, 0),
(118, '20201', 4, 21, 20, 0),
(119, '20201', 4, 21, 21, 0),
(120, '20201', 4, 21, 22, 0),
(121, '20201', 4, 21, 23, 0),
(122, '20201', 4, 21, 24, 0),
(123, '20201', 4, 21, 25, 0),
(124, '20201', 4, 21, 26, 0),
(125, '20201', 4, 21, 27, 0),
(126, '20201', 4, 21, 28, 0),
(127, '20201', 4, 21, 29, 0),
(128, '20201', 4, 21, 30, 0),
(129, '20201', 4, 21, 31, 0),
(130, '20201', 4, 21, 32, 0),
(131, '20201', 4, 35, 3, 95),
(132, '20201', 4, 35, 4, 91),
(133, '20201', 4, 35, 5, 87),
(134, '20201', 4, 35, 6, 85),
(135, '20201', 4, 35, 7, 84),
(136, '20201', 4, 35, 8, 82),
(137, '20201', 4, 35, 9, 81),
(138, '20201', 4, 35, 10, 89),
(139, '20201', 4, 35, 11, 82),
(140, '20201', 4, 35, 12, 86),
(141, '20201', 4, 35, 13, 85),
(142, '20201', 4, 35, 14, 83),
(143, '20201', 4, 35, 15, 81),
(144, '20201', 4, 35, 16, 88),
(145, '20201', 4, 35, 17, 89),
(146, '20201', 4, 35, 18, 91),
(147, '20201', 4, 35, 19, 98),
(148, '20201', 4, 35, 20, 97),
(149, '20201', 4, 35, 21, 96),
(150, '20201', 4, 35, 22, 99),
(151, '20201', 4, 35, 23, 100),
(152, '20201', 4, 35, 24, 94),
(153, '20201', 4, 35, 25, 93),
(154, '20201', 4, 35, 26, 100),
(155, '20201', 4, 35, 27, 96),
(156, '20201', 4, 35, 28, 100),
(157, '20201', 4, 35, 29, 100),
(158, '20201', 4, 35, 30, 93),
(159, '20201', 4, 35, 31, 98),
(160, '20201', 4, 35, 32, 95),
(161, '20201', 5, 36, 3, 94),
(162, '20201', 5, 36, 4, 0),
(163, '20201', 5, 36, 5, 0),
(164, '20201', 5, 36, 6, 0),
(165, '20201', 5, 36, 7, 0),
(166, '20201', 5, 36, 8, 0),
(167, '20201', 5, 36, 9, 0),
(168, '20201', 5, 36, 10, 0),
(169, '20201', 5, 36, 11, 0),
(170, '20201', 5, 36, 12, 0),
(171, '20201', 5, 36, 13, 0),
(172, '20201', 5, 36, 14, 0),
(173, '20201', 5, 36, 15, 0),
(174, '20201', 5, 36, 16, 0),
(175, '20201', 5, 36, 17, 0),
(176, '20201', 5, 36, 18, 0),
(177, '20201', 5, 36, 19, 0),
(178, '20201', 5, 36, 20, 0),
(179, '20201', 5, 36, 21, 0),
(180, '20201', 5, 36, 22, 0),
(181, '20201', 5, 36, 23, 0),
(182, '20201', 5, 36, 24, 0),
(183, '20201', 5, 36, 25, 0),
(184, '20201', 5, 36, 26, 0),
(185, '20201', 5, 36, 27, 0),
(186, '20201', 5, 36, 28, 0),
(187, '20201', 5, 36, 29, 0),
(188, '20201', 5, 36, 30, 0),
(189, '20201', 5, 36, 31, 0),
(190, '20201', 5, 36, 32, 0),
(191, '20201', 29, 37, 3, 94),
(192, '20201', 29, 37, 4, 0),
(193, '20201', 29, 37, 5, 0),
(194, '20201', 29, 37, 6, 0),
(195, '20201', 29, 37, 7, 0),
(196, '20201', 29, 37, 8, 0),
(197, '20201', 29, 37, 9, 0),
(198, '20201', 29, 37, 10, 0),
(199, '20201', 29, 37, 11, 0),
(200, '20201', 29, 37, 12, 0),
(201, '20201', 29, 37, 13, 0),
(202, '20201', 29, 37, 14, 0),
(203, '20201', 29, 37, 15, 0),
(204, '20201', 29, 37, 16, 0),
(205, '20201', 29, 37, 17, 0),
(206, '20201', 29, 37, 18, 0),
(207, '20201', 29, 37, 19, 0),
(208, '20201', 29, 37, 20, 0),
(209, '20201', 29, 37, 21, 0),
(210, '20201', 29, 37, 22, 0),
(211, '20201', 29, 37, 23, 0),
(212, '20201', 29, 37, 24, 0),
(213, '20201', 29, 37, 25, 0),
(214, '20201', 29, 37, 26, 0),
(215, '20201', 29, 37, 27, 0),
(216, '20201', 29, 37, 28, 0),
(217, '20201', 29, 37, 29, 0),
(218, '20201', 29, 37, 30, 0),
(219, '20201', 29, 37, 31, 0),
(220, '20201', 29, 37, 32, 0),
(221, '20201', 29, 38, 3, 93),
(222, '20201', 29, 38, 4, 0),
(223, '20201', 29, 38, 5, 0),
(224, '20201', 29, 38, 6, 0),
(225, '20201', 29, 38, 7, 0),
(226, '20201', 29, 38, 8, 0),
(227, '20201', 29, 38, 9, 0),
(228, '20201', 29, 38, 10, 0),
(229, '20201', 29, 38, 11, 0),
(230, '20201', 29, 38, 12, 0),
(231, '20201', 29, 38, 13, 0),
(232, '20201', 29, 38, 14, 0),
(233, '20201', 29, 38, 15, 0),
(234, '20201', 29, 38, 16, 0),
(235, '20201', 29, 38, 17, 0),
(236, '20201', 29, 38, 18, 0),
(237, '20201', 29, 38, 19, 0),
(238, '20201', 29, 38, 20, 0),
(239, '20201', 29, 38, 21, 0),
(240, '20201', 29, 38, 22, 0),
(241, '20201', 29, 38, 23, 0),
(242, '20201', 29, 38, 24, 0),
(243, '20201', 29, 38, 25, 0),
(244, '20201', 29, 38, 26, 0),
(245, '20201', 29, 38, 27, 0),
(246, '20201', 29, 38, 28, 0),
(247, '20201', 29, 38, 29, 0),
(248, '20201', 29, 38, 30, 0),
(249, '20201', 29, 38, 31, 0),
(250, '20201', 29, 38, 32, 0),
(251, '20201', 6, 43, 3, 95),
(252, '20201', 6, 43, 4, 0),
(253, '20201', 6, 43, 5, 0),
(254, '20201', 6, 43, 6, 0),
(255, '20201', 6, 43, 7, 0),
(256, '20201', 6, 43, 8, 0),
(257, '20201', 6, 43, 9, 0),
(258, '20201', 6, 43, 10, 0),
(259, '20201', 6, 43, 11, 0),
(260, '20201', 6, 43, 12, 0),
(261, '20201', 6, 43, 13, 0),
(262, '20201', 6, 43, 14, 0),
(263, '20201', 6, 43, 15, 0),
(264, '20201', 6, 43, 16, 0),
(265, '20201', 6, 43, 17, 0),
(266, '20201', 6, 43, 18, 0),
(267, '20201', 6, 43, 19, 0),
(268, '20201', 6, 43, 20, 0),
(269, '20201', 6, 43, 21, 0),
(270, '20201', 6, 43, 22, 0),
(271, '20201', 6, 43, 23, 0),
(272, '20201', 6, 43, 24, 0),
(273, '20201', 6, 43, 25, 0),
(274, '20201', 6, 43, 26, 0),
(275, '20201', 6, 43, 27, 0),
(276, '20201', 6, 43, 28, 0),
(277, '20201', 6, 43, 29, 0),
(278, '20201', 6, 43, 30, 0),
(279, '20201', 6, 43, 31, 0),
(280, '20201', 6, 43, 32, 0),
(281, '20201', 6, 44, 3, 94),
(282, '20201', 6, 44, 4, 0),
(283, '20201', 6, 44, 5, 0),
(284, '20201', 6, 44, 6, 0),
(285, '20201', 6, 44, 7, 0),
(286, '20201', 6, 44, 8, 0),
(287, '20201', 6, 44, 9, 0),
(288, '20201', 6, 44, 10, 0),
(289, '20201', 6, 44, 11, 0),
(290, '20201', 6, 44, 12, 0),
(291, '20201', 6, 44, 13, 0),
(292, '20201', 6, 44, 14, 0),
(293, '20201', 6, 44, 15, 0),
(294, '20201', 6, 44, 16, 0),
(295, '20201', 6, 44, 17, 0),
(296, '20201', 6, 44, 18, 0),
(297, '20201', 6, 44, 19, 0),
(298, '20201', 6, 44, 20, 0),
(299, '20201', 6, 44, 21, 0),
(300, '20201', 6, 44, 22, 0),
(301, '20201', 6, 44, 23, 0),
(302, '20201', 6, 44, 24, 0),
(303, '20201', 6, 44, 25, 0),
(304, '20201', 6, 44, 26, 0),
(305, '20201', 6, 44, 27, 0),
(306, '20201', 6, 44, 28, 0),
(307, '20201', 6, 44, 29, 0),
(308, '20201', 6, 44, 30, 0),
(309, '20201', 6, 44, 31, 0),
(310, '20201', 6, 44, 32, 0),
(311, '20201', 7, 47, 3, 93),
(312, '20201', 7, 47, 4, 0),
(313, '20201', 7, 47, 5, 0),
(314, '20201', 7, 47, 6, 0),
(315, '20201', 7, 47, 7, 0),
(316, '20201', 7, 47, 8, 0),
(317, '20201', 7, 47, 9, 0),
(318, '20201', 7, 47, 10, 0),
(319, '20201', 7, 47, 11, 0),
(320, '20201', 7, 47, 12, 0),
(321, '20201', 7, 47, 13, 0),
(322, '20201', 7, 47, 14, 0),
(323, '20201', 7, 47, 15, 0),
(324, '20201', 7, 47, 16, 0),
(325, '20201', 7, 47, 17, 0),
(326, '20201', 7, 47, 18, 0),
(327, '20201', 7, 47, 19, 0),
(328, '20201', 7, 47, 20, 0),
(329, '20201', 7, 47, 21, 0),
(330, '20201', 7, 47, 22, 0),
(331, '20201', 7, 47, 23, 0),
(332, '20201', 7, 47, 24, 0),
(333, '20201', 7, 47, 25, 0),
(334, '20201', 7, 47, 26, 0),
(335, '20201', 7, 47, 27, 0),
(336, '20201', 7, 47, 28, 0),
(337, '20201', 7, 47, 29, 0),
(338, '20201', 7, 47, 30, 0),
(339, '20201', 7, 47, 31, 0),
(340, '20201', 7, 47, 32, 0),
(341, '20201', 7, 48, 3, 92),
(342, '20201', 7, 48, 4, 0),
(343, '20201', 7, 48, 5, 0),
(344, '20201', 7, 48, 6, 0),
(345, '20201', 7, 48, 7, 0),
(346, '20201', 7, 48, 8, 0),
(347, '20201', 7, 48, 9, 0),
(348, '20201', 7, 48, 10, 0),
(349, '20201', 7, 48, 11, 0),
(350, '20201', 7, 48, 12, 0),
(351, '20201', 7, 48, 13, 0),
(352, '20201', 7, 48, 14, 0),
(353, '20201', 7, 48, 15, 0),
(354, '20201', 7, 48, 16, 0),
(355, '20201', 7, 48, 17, 0),
(356, '20201', 7, 48, 18, 0),
(357, '20201', 7, 48, 19, 0),
(358, '20201', 7, 48, 20, 0),
(359, '20201', 7, 48, 21, 0),
(360, '20201', 7, 48, 22, 0),
(361, '20201', 7, 48, 23, 0),
(362, '20201', 7, 48, 24, 0),
(363, '20201', 7, 48, 25, 0),
(364, '20201', 7, 48, 26, 0),
(365, '20201', 7, 48, 27, 0),
(366, '20201', 7, 48, 28, 0),
(367, '20201', 7, 48, 29, 0),
(368, '20201', 7, 48, 30, 0),
(369, '20201', 7, 48, 31, 0),
(370, '20201', 7, 48, 32, 0),
(371, '20201', 52, 51, 3, 94),
(372, '20201', 52, 51, 4, 0),
(373, '20201', 52, 51, 5, 0),
(374, '20201', 52, 51, 6, 0),
(375, '20201', 52, 51, 7, 0),
(376, '20201', 52, 51, 8, 0),
(377, '20201', 52, 51, 9, 0),
(378, '20201', 52, 51, 10, 0),
(379, '20201', 52, 51, 11, 0),
(380, '20201', 52, 51, 12, 0),
(381, '20201', 52, 51, 13, 0),
(382, '20201', 52, 51, 14, 0),
(383, '20201', 52, 51, 15, 0),
(384, '20201', 52, 51, 16, 0),
(385, '20201', 52, 51, 17, 0),
(386, '20201', 52, 51, 18, 0),
(387, '20201', 52, 51, 19, 0),
(388, '20201', 52, 51, 20, 0),
(389, '20201', 52, 51, 21, 0),
(390, '20201', 52, 51, 22, 0),
(391, '20201', 52, 51, 23, 0),
(392, '20201', 52, 51, 24, 0),
(393, '20201', 52, 51, 25, 0),
(394, '20201', 52, 51, 26, 0),
(395, '20201', 52, 51, 27, 0),
(396, '20201', 52, 51, 28, 0),
(397, '20201', 52, 51, 29, 0),
(398, '20201', 52, 51, 30, 0),
(399, '20201', 52, 51, 31, 0),
(400, '20201', 52, 51, 32, 0),
(401, '20201', 27, 53, 3, 88),
(402, '20201', 27, 53, 4, 0),
(403, '20201', 27, 53, 5, 0),
(404, '20201', 27, 53, 6, 0),
(405, '20201', 27, 53, 7, 0),
(406, '20201', 27, 53, 8, 0),
(407, '20201', 27, 53, 9, 0),
(408, '20201', 27, 53, 10, 0),
(409, '20201', 27, 53, 11, 0),
(410, '20201', 27, 53, 12, 0),
(411, '20201', 27, 53, 13, 0),
(412, '20201', 27, 53, 14, 0),
(413, '20201', 27, 53, 15, 0),
(414, '20201', 27, 53, 16, 0),
(415, '20201', 27, 53, 17, 0),
(416, '20201', 27, 53, 18, 0),
(417, '20201', 27, 53, 19, 0),
(418, '20201', 27, 53, 20, 0),
(419, '20201', 27, 53, 21, 0),
(420, '20201', 27, 53, 22, 0),
(421, '20201', 27, 53, 23, 0),
(422, '20201', 27, 53, 24, 0),
(423, '20201', 27, 53, 25, 0),
(424, '20201', 27, 53, 26, 0),
(425, '20201', 27, 53, 27, 0),
(426, '20201', 27, 53, 28, 0),
(427, '20201', 27, 53, 29, 0),
(428, '20201', 27, 53, 30, 0),
(429, '20201', 27, 53, 31, 0),
(430, '20201', 27, 53, 32, 0),
(431, '20201', 28, 55, 3, 86),
(432, '20201', 28, 55, 4, 0),
(433, '20201', 28, 55, 5, 0),
(434, '20201', 28, 55, 6, 0),
(435, '20201', 28, 55, 7, 0),
(436, '20201', 28, 55, 8, 0),
(437, '20201', 28, 55, 9, 0),
(438, '20201', 28, 55, 10, 0),
(439, '20201', 28, 55, 11, 0),
(440, '20201', 28, 55, 12, 0),
(441, '20201', 28, 55, 13, 0),
(442, '20201', 28, 55, 14, 0),
(443, '20201', 28, 55, 15, 0),
(444, '20201', 28, 55, 16, 0),
(445, '20201', 28, 55, 17, 0),
(446, '20201', 28, 55, 18, 0),
(447, '20201', 28, 55, 19, 0),
(448, '20201', 28, 55, 20, 0),
(449, '20201', 28, 55, 21, 0),
(450, '20201', 28, 55, 22, 0),
(451, '20201', 28, 55, 23, 0),
(452, '20201', 28, 55, 24, 0),
(453, '20201', 28, 55, 25, 0),
(454, '20201', 28, 55, 26, 0),
(455, '20201', 28, 55, 27, 0),
(456, '20201', 28, 55, 28, 0),
(457, '20201', 28, 55, 29, 0),
(458, '20201', 28, 55, 30, 0),
(459, '20201', 28, 55, 31, 0),
(460, '20201', 28, 55, 32, 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_nilai_sikap_so`
--

CREATE TABLE `t_nilai_sikap_so` (
  `id` int(6) NOT NULL,
  `tasm` varchar(5) DEFAULT NULL,
  `id_guru_mapel` int(6) DEFAULT NULL,
  `id_siswa` int(6) DEFAULT NULL,
  `is_wali` enum('Y','N') DEFAULT NULL,
  `sangat_baik` varchar(50) DEFAULT NULL,
  `perlu_bimbingan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_nilai_sikap_so`
--

INSERT INTO `t_nilai_sikap_so` (`id`, `tasm`, `id_guru_mapel`, `id_siswa`, `is_wali`, `sangat_baik`, `perlu_bimbingan`) VALUES
(1, '0', 0, 0, 'Y', '0', 'SB'),
(2, '0', 0, 0, 'Y', '0', 'PB'),
(5, '20201', 23, 3, 'Y', '1,2,3,4,5,6,', ''),
(6, '20201', 23, 4, 'Y', '1,2,3,4,5,6,', ''),
(7, '20201', 23, 5, 'Y', '1,2,3,4,5,6,', ''),
(8, '20201', 23, 6, 'Y', '1,2,3,4,5,6,', ''),
(9, '20201', 23, 7, 'Y', '1,2,3,4,5,6,', ''),
(10, '20201', 23, 8, 'Y', '1,2,3,4,5,6,', ''),
(11, '20201', 23, 9, 'Y', '1,2,3,4,5,6,', ''),
(12, '20201', 23, 11, 'Y', '1,2,3,4,5,6,', ''),
(13, '20201', 23, 12, 'Y', '1,2,3,4,5,6,', ''),
(14, '20201', 23, 13, 'Y', '1,2,3,4,5,6,', ''),
(15, '20201', 23, 14, 'Y', '1,2,3,4,5,6,', ''),
(16, '20201', 23, 15, 'Y', '1,2,3,4,5,6,', ''),
(17, '20201', 23, 18, 'Y', '1,2,3,4,5,6,', ''),
(18, '20201', 23, 19, 'Y', '1,2,3,4,5,6,', ''),
(19, '20201', 23, 10, 'Y', '1,2,3,4,5,6,', ''),
(20, '20201', 23, 16, 'Y', '1,2,3,4,5,6,', ''),
(21, '20201', 23, 17, 'Y', '1,2,3,4,5,6,', ''),
(22, '20201', 23, 20, 'Y', '1,2,3,4,5,6,', ''),
(23, '20201', 23, 21, 'Y', '1,2,3,4,5,6,', ''),
(24, '20201', 23, 22, 'Y', '1,2,3,4,5,6,', ''),
(25, '20201', 23, 23, 'Y', '1,2,3,4,5,6,', ''),
(26, '20201', 23, 24, 'Y', '1,2,3,4,5,6,', ''),
(27, '20201', 23, 25, 'Y', '1,2,3,4,5,6,', ''),
(28, '20201', 23, 26, 'Y', '1,2,3,4,5,6,', ''),
(29, '20201', 23, 27, 'Y', '1,2,3,4,5,6,', ''),
(30, '20201', 23, 28, 'Y', '1,2,3,4,5,6,', ''),
(31, '20201', 23, 29, 'Y', '1,2,3,4,5,6,', ''),
(32, '20201', 23, 30, 'Y', '1,2,3,4,5,6,', ''),
(33, '20201', 23, 31, 'Y', '1,2,3,4,5,6,', ''),
(34, '20201', 23, 32, 'Y', '1,2,3,4,5,6,', '');

-- --------------------------------------------------------

--
-- Table structure for table `t_nilai_sikap_sp`
--

CREATE TABLE `t_nilai_sikap_sp` (
  `id` int(6) NOT NULL,
  `tasm` varchar(5) DEFAULT NULL,
  `id_guru_mapel` int(6) DEFAULT NULL,
  `id_siswa` int(6) DEFAULT NULL,
  `is_wali` enum('Y','N') DEFAULT NULL,
  `sangat_baik` varchar(50) DEFAULT NULL,
  `perlu_bimbingan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_nilai_sikap_sp`
--

INSERT INTO `t_nilai_sikap_sp` (`id`, `tasm`, `id_guru_mapel`, `id_siswa`, `is_wali`, `sangat_baik`, `perlu_bimbingan`) VALUES
(93, '20201', 23, 3, 'Y', '7,8,9,10,', ''),
(94, '20201', 23, 4, 'Y', '7,8,9,10,', ''),
(95, '20201', 23, 5, 'Y', '7,8,9,10,', ''),
(96, '20201', 23, 6, 'Y', '7,8,9,10,', ''),
(97, '20201', 23, 7, 'Y', '7,8,9,10,', ''),
(98, '20201', 23, 8, 'Y', '7,8,9,10,', ''),
(99, '20201', 23, 9, 'Y', '7,8,9,10,', ''),
(100, '20201', 23, 11, 'Y', '7,8,9,10,', ''),
(101, '20201', 23, 12, 'Y', '7,8,9,10,', ''),
(102, '20201', 23, 13, 'Y', '7,8,9,10,', ''),
(103, '20201', 23, 14, 'Y', '7,8,9,10,', ''),
(104, '20201', 23, 15, 'Y', '7,8,9,10,', ''),
(105, '20201', 23, 18, 'Y', '7,8,9,10,', ''),
(106, '20201', 23, 19, 'Y', '7,8,9,10,', ''),
(107, '20201', 23, 10, 'Y', '7,8,9,10,', ''),
(108, '20201', 23, 16, 'Y', '7,8,9,10,', ''),
(109, '20201', 23, 17, 'Y', '7,8,9,10,', ''),
(110, '20201', 23, 20, 'Y', '7,8,9,10,', ''),
(111, '20201', 23, 21, 'Y', '7,8,9,10,', ''),
(112, '20201', 23, 22, 'Y', '7,8,9,10,', ''),
(113, '20201', 23, 23, 'Y', '7,8,9,10,', ''),
(114, '20201', 23, 24, 'Y', '7,8,9,10,', ''),
(115, '20201', 23, 25, 'Y', '7,8,9,10,', ''),
(116, '20201', 23, 26, 'Y', '7,8,9,10,', ''),
(117, '20201', 23, 27, 'Y', '7,8,9,10,', ''),
(118, '20201', 23, 28, 'Y', '7,8,9,10,', ''),
(119, '20201', 23, 29, 'Y', '7,8,9,10,', ''),
(120, '20201', 23, 30, 'Y', '7,8,9,10,', ''),
(121, '20201', 23, 31, 'Y', '7,8,9,10,', ''),
(122, '20201', 23, 32, 'Y', '7,8,9,10,', '');

-- --------------------------------------------------------

--
-- Table structure for table `t_nilai_tumbuh`
--

CREATE TABLE `t_nilai_tumbuh` (
  `id` int(6) NOT NULL,
  `tasm` varchar(5) DEFAULT NULL,
  `id_ekstra` int(3) DEFAULT NULL,
  `id_siswa` int(6) DEFAULT NULL,
  `nilai` char(2) DEFAULT NULL,
  `desk` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_nilai_tumbuh`
--

INSERT INTO `t_nilai_tumbuh` (`id`, `tasm`, `id_ekstra`, `id_siswa`, `nilai`, `desk`) VALUES
(5, '20201', 1, 3, '-', '137'),
(6, '20201', 1, 4, '-', ''),
(7, '20201', 1, 5, '-', ''),
(8, '20201', 1, 6, '-', ''),
(9, '20201', 1, 7, '-', ''),
(10, '20201', 1, 8, '-', ''),
(11, '20201', 1, 9, '-', ''),
(12, '20201', 1, 11, '-', ''),
(13, '20201', 1, 12, '-', ''),
(14, '20201', 1, 13, '-', ''),
(15, '20201', 1, 14, '-', ''),
(16, '20201', 1, 15, '-', ''),
(17, '20201', 1, 18, '-', ''),
(18, '20201', 1, 19, '-', ''),
(19, '20201', 1, 10, '-', ''),
(20, '20201', 1, 16, '-', ''),
(21, '20201', 1, 17, '-', ''),
(22, '20201', 1, 20, '-', ''),
(23, '20201', 1, 21, '-', ''),
(24, '20201', 1, 22, '-', ''),
(25, '20201', 1, 23, '-', ''),
(26, '20201', 1, 24, '-', ''),
(27, '20201', 1, 25, '-', ''),
(28, '20201', 1, 26, '-', ''),
(29, '20201', 1, 27, '-', ''),
(30, '20201', 1, 28, '-', ''),
(31, '20201', 1, 29, '-', ''),
(32, '20201', 1, 30, '-', ''),
(33, '20201', 1, 31, '-', ''),
(34, '20201', 1, 32, '-', ''),
(35, '20201', 2, 3, '-', '31'),
(36, '20201', 2, 4, '-', ''),
(37, '20201', 2, 5, '-', ''),
(38, '20201', 2, 6, '-', ''),
(39, '20201', 2, 7, '-', ''),
(40, '20201', 2, 8, '-', ''),
(41, '20201', 2, 9, '-', ''),
(42, '20201', 2, 11, '-', ''),
(43, '20201', 2, 12, '-', ''),
(44, '20201', 2, 13, '-', ''),
(45, '20201', 2, 14, '-', ''),
(46, '20201', 2, 15, '-', ''),
(47, '20201', 2, 18, '-', ''),
(48, '20201', 2, 19, '-', ''),
(49, '20201', 2, 10, '-', ''),
(50, '20201', 2, 16, '-', ''),
(51, '20201', 2, 17, '-', ''),
(52, '20201', 2, 20, '-', ''),
(53, '20201', 2, 21, '-', ''),
(54, '20201', 2, 22, '-', ''),
(55, '20201', 2, 23, '-', ''),
(56, '20201', 2, 24, '-', ''),
(57, '20201', 2, 25, '-', ''),
(58, '20201', 2, 26, '-', ''),
(59, '20201', 2, 27, '-', ''),
(60, '20201', 2, 28, '-', ''),
(61, '20201', 2, 29, '-', ''),
(62, '20201', 2, 30, '-', ''),
(63, '20201', 2, 31, '-', ''),
(64, '20201', 2, 32, '-', ''),
(65, '20201', 3, 3, '-', 'Baik, Normal'),
(66, '20201', 3, 4, '-', ''),
(67, '20201', 3, 5, '-', ''),
(68, '20201', 3, 6, '-', ''),
(69, '20201', 3, 7, '-', ''),
(70, '20201', 3, 8, '-', ''),
(71, '20201', 3, 9, '-', ''),
(72, '20201', 3, 11, '-', ''),
(73, '20201', 3, 12, '-', ''),
(74, '20201', 3, 13, '-', ''),
(75, '20201', 3, 14, '-', ''),
(76, '20201', 3, 15, '-', ''),
(77, '20201', 3, 18, '-', ''),
(78, '20201', 3, 19, '-', ''),
(79, '20201', 3, 10, '-', ''),
(80, '20201', 3, 16, '-', ''),
(81, '20201', 3, 17, '-', ''),
(82, '20201', 3, 20, '-', ''),
(83, '20201', 3, 21, '-', ''),
(84, '20201', 3, 22, '-', ''),
(85, '20201', 3, 23, '-', ''),
(86, '20201', 3, 24, '-', ''),
(87, '20201', 3, 25, '-', ''),
(88, '20201', 3, 26, '-', ''),
(89, '20201', 3, 27, '-', ''),
(90, '20201', 3, 28, '-', ''),
(91, '20201', 3, 29, '-', ''),
(92, '20201', 3, 30, '-', ''),
(93, '20201', 3, 31, '-', ''),
(94, '20201', 3, 32, '-', ''),
(95, '20201', 4, 3, '-', 'Baik,Normal'),
(96, '20201', 4, 4, '-', ''),
(97, '20201', 4, 5, '-', ''),
(98, '20201', 4, 6, '-', ''),
(99, '20201', 4, 7, '-', ''),
(100, '20201', 4, 8, '-', ''),
(101, '20201', 4, 9, '-', ''),
(102, '20201', 4, 11, '-', ''),
(103, '20201', 4, 12, '-', ''),
(104, '20201', 4, 13, '-', ''),
(105, '20201', 4, 14, '-', ''),
(106, '20201', 4, 15, '-', ''),
(107, '20201', 4, 18, '-', ''),
(108, '20201', 4, 19, '-', ''),
(109, '20201', 4, 10, '-', ''),
(110, '20201', 4, 16, '-', ''),
(111, '20201', 4, 17, '-', ''),
(112, '20201', 4, 20, '-', ''),
(113, '20201', 4, 21, '-', ''),
(114, '20201', 4, 22, '-', ''),
(115, '20201', 4, 23, '-', ''),
(116, '20201', 4, 24, '-', ''),
(117, '20201', 4, 25, '-', ''),
(118, '20201', 4, 26, '-', ''),
(119, '20201', 4, 27, '-', ''),
(120, '20201', 4, 28, '-', ''),
(121, '20201', 4, 29, '-', ''),
(122, '20201', 4, 30, '-', ''),
(123, '20201', 4, 31, '-', ''),
(124, '20201', 4, 32, '-', ''),
(125, '20201', 5, 3, '-', 'Baik'),
(126, '20201', 5, 4, '-', ''),
(127, '20201', 5, 5, '-', ''),
(128, '20201', 5, 6, '-', ''),
(129, '20201', 5, 7, '-', ''),
(130, '20201', 5, 8, '-', ''),
(131, '20201', 5, 9, '-', ''),
(132, '20201', 5, 11, '-', ''),
(133, '20201', 5, 12, '-', ''),
(134, '20201', 5, 13, '-', ''),
(135, '20201', 5, 14, '-', ''),
(136, '20201', 5, 15, '-', ''),
(137, '20201', 5, 18, '-', ''),
(138, '20201', 5, 19, '-', ''),
(139, '20201', 5, 10, '-', ''),
(140, '20201', 5, 16, '-', ''),
(141, '20201', 5, 17, '-', ''),
(142, '20201', 5, 20, '-', ''),
(143, '20201', 5, 21, '-', ''),
(144, '20201', 5, 22, '-', ''),
(145, '20201', 5, 23, '-', ''),
(146, '20201', 5, 24, '-', ''),
(147, '20201', 5, 25, '-', ''),
(148, '20201', 5, 26, '-', ''),
(149, '20201', 5, 27, '-', ''),
(150, '20201', 5, 28, '-', ''),
(151, '20201', 5, 29, '-', ''),
(152, '20201', 5, 30, '-', ''),
(153, '20201', 5, 31, '-', ''),
(154, '20201', 5, 32, '-', '');

-- --------------------------------------------------------

--
-- Table structure for table `t_prestasi`
--

CREATE TABLE `t_prestasi` (
  `id` int(6) NOT NULL,
  `id_siswa` int(6) NOT NULL,
  `ta` char(5) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_prestasi`
--

INSERT INTO `t_prestasi` (`id`, `id_siswa`, `ta`, `jenis`, `keterangan`) VALUES
(0, 3, '20201', 'Membaca alquran', 'Sangat Baik');

-- --------------------------------------------------------

--
-- Table structure for table `t_walikelas`
--

CREATE TABLE `t_walikelas` (
  `id` int(3) NOT NULL,
  `tasm` varchar(5) DEFAULT NULL,
  `id_guru` int(2) DEFAULT NULL,
  `id_kelas` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_walikelas`
--

INSERT INTO `t_walikelas` (`id`, `tasm`, `id_guru`, `id_kelas`) VALUES
(4, '2020', 5, 1),
(5, '2020', 4, 2),
(6, '2020', 5, 3),
(7, '2020', 4, 4),
(8, '2020', 18, 5),
(9, '2020', 13, 6),
(10, '2020', 18, 7),
(11, '2020', 1, 8),
(12, '2020', 11, 9),
(13, '2020', 7, 10),
(14, '2020', 3, 11),
(15, '2020', 19, 12),
(16, '2020', 20, 13),
(17, '2020', 21, 14),
(18, '2020', 21, 15),
(19, '2020', 2, 16),
(20, '2020', 23, 17),
(21, '2020', 8, 18),
(22, '2020', 6, 19),
(23, '2020', 12, 20),
(24, '2020', 9, 21),
(25, '2020', 10, 22),
(26, '2020', 14, 23);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `m_admin`
--
ALTER TABLE `m_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_ekstra`
--
ALTER TABLE `m_ekstra`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_guru`
--
ALTER TABLE `m_guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_kelas`
--
ALTER TABLE `m_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_mapel`
--
ALTER TABLE `m_mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_siswa`
--
ALTER TABLE `m_siswa`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `m_tumbuh`
--
ALTER TABLE `m_tumbuh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tahun`
--
ALTER TABLE `tahun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_guru_mapel`
--
ALTER TABLE `t_guru_mapel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_mapel` (`id_mapel`);

--
-- Indexes for table `t_kelas_siswa`
--
ALTER TABLE `t_kelas_siswa`
  ADD PRIMARY KEY (`id_kelas`,`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indexes for table `t_kkm`
--
ALTER TABLE `t_kkm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_mapel_kd`
--
ALTER TABLE `t_mapel_kd`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_guru` (`id_guru`);

--
-- Indexes for table `t_naikkelas`
--
ALTER TABLE `t_naikkelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_nilai_ket`
--
ALTER TABLE `t_nilai_ket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_nilai_sikap_so`
--
ALTER TABLE `t_nilai_sikap_so`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_nilai_sikap_sp`
--
ALTER TABLE `t_nilai_sikap_sp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_nilai_tumbuh`
--
ALTER TABLE `t_nilai_tumbuh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_walikelas`
--
ALTER TABLE `t_walikelas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `m_admin`
--
ALTER TABLE `m_admin`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `m_ekstra`
--
ALTER TABLE `m_ekstra`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `m_guru`
--
ALTER TABLE `m_guru`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `m_kelas`
--
ALTER TABLE `m_kelas`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `m_mapel`
--
ALTER TABLE `m_mapel`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `m_siswa`
--
ALTER TABLE `m_siswa`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `m_tumbuh`
--
ALTER TABLE `m_tumbuh`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tahun`
--
ALTER TABLE `tahun`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `t_guru_mapel`
--
ALTER TABLE `t_guru_mapel`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `t_kelas_siswa`
--
ALTER TABLE `t_kelas_siswa`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `t_kkm`
--
ALTER TABLE `t_kkm`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_mapel_kd`
--
ALTER TABLE `t_mapel_kd`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `t_naikkelas`
--
ALTER TABLE `t_naikkelas`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `t_nilai_ket`
--
ALTER TABLE `t_nilai_ket`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=461;

--
-- AUTO_INCREMENT for table `t_nilai_sikap_so`
--
ALTER TABLE `t_nilai_sikap_so`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `t_nilai_sikap_sp`
--
ALTER TABLE `t_nilai_sikap_sp`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `t_nilai_tumbuh`
--
ALTER TABLE `t_nilai_tumbuh`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `t_walikelas`
--
ALTER TABLE `t_walikelas`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `t_guru_mapel`
--
ALTER TABLE `t_guru_mapel`
  ADD CONSTRAINT `FK_t_guru_mapel_m_guru` FOREIGN KEY (`id_guru`) REFERENCES `m_guru` (`id`),
  ADD CONSTRAINT `FK_t_guru_mapel_m_kelas` FOREIGN KEY (`id_kelas`) REFERENCES `m_kelas` (`id`),
  ADD CONSTRAINT `FK_t_guru_mapel_m_mapel` FOREIGN KEY (`id_mapel`) REFERENCES `m_mapel` (`id`);

--
-- Constraints for table `t_kelas_siswa`
--
ALTER TABLE `t_kelas_siswa`
  ADD CONSTRAINT `t_kelas_siswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `m_kelas` (`id`),
  ADD CONSTRAINT `t_kelas_siswa_ibfk_2` FOREIGN KEY (`id_siswa`) REFERENCES `m_siswa` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
