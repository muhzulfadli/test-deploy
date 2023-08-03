-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3317
-- Generation Time: Jul 26, 2023 at 09:12 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-05-13 11:18:49'),
(2, 'admin1', 'admin1', '2023-06-26 14:54:15');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(12, 1, 'user@gmail.com', '2023-06-28', '2023-06-30', '-', '2023-06-26 14:49:17', 2, 'u', '2023-07-06 14:19:44'),
(13, 1, 'user@gmail.com', '2023-06-28', '2023-06-30', '-', '2023-06-26 15:44:59', 2, 'a', '2023-07-10 14:40:56'),
(14, 4, 'user@gmail.com', '2023-07-19', '2023-07-21', 'asdfgh', '2023-07-10 14:41:39', 2, 'a', '2023-07-10 14:43:22'),
(15, 1, 'useer@gmail.com', '2023-07-26', '2023-07-28', 'Zoro', '2023-07-24 14:18:13', 1, NULL, '2023-07-24 14:18:38'),
(16, 3, 'useer@gmail.com', '2023-07-26', '2023-07-28', 'udin', '2023-07-25 12:39:17', 0, NULL, NULL),
(17, 1, 'zoro@gmail.com', '2023-07-27', '2023-07-28', 'Zoro', '2023-07-26 07:02:56', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(15) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(7, 'zoro', 'zoro@gmail.com', '27', 'Gili Air', '16.00 WITA', '2023-07-24 14:19:18', 1),
(8, 'udin', 'udin@gmail.com', '27 april 2023', 'Gili Air', '09.00 WITA', '2023-07-25 13:06:31', NULL),
(9, 'zoro', 'zoro@gmail.com', '30 juli 2023', 'Gili Air', '16.00 WITA', '2023-07-26 07:05:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(11, 'user@gmail.com', 'Booking Issues', 'tidak dapat boking', '2023-06-27 15:44:19', NULL, NULL),
(12, 'user@gmail.com', 'Booking Issues', 'qwyuas', '2023-06-27 15:53:09', NULL, NULL),
(13, NULL, NULL, NULL, '2023-07-26 06:56:11', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '<p style=\"text-align: justify;\">Saat mengunjungi dan menggunakan situs \r\nini, termasuk setiap fitur dan layanannya, Setiap Pengguna wajib untuk \r\nmematuhi ketentuan Pengguna Situs berikut ini:</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<ol style=\"text-align: justify;\"><li>Pengguna minimum berusia 17 Tahun, atau yang telah memiliki \r\npersyaratan yang diakui secara hukum termasuk dalam kategori Pengguna \r\nyang sudah dewasa / terlepas dari Hukum Perlindungan Anak.</li></ol><ol style=\"text-align: justify;\" start=\"2\"><li>Setiap Pengguna sepakat untuk tidak menyalin, menggunakan atau \r\nmengunduh semua informasi, tulisan, gambar, rekaman video, direktori, \r\ndokumen, database atau iklan yang ada di situs ini.<br></li></ol><ol style=\"text-align: justify;\" start=\"3\"><li>Saat mengunjungi dan menggunakan situs ini, termasuk setiap fitur dan layanannya, Setiap Pengguna tidak perkenankan untuk :</li></ol>\r\n<ul style=\"text-align: justify;\"><li>melanggar setiap hukum yang berlaku (termasuk tetapi tidak terbatas \r\npada peraturan mengenai pengawasan ekspor, perlindungan konsumen, \r\npersaingan tidak sehat, anti diskriminasi atau iklan palsu), hak-hak \r\npihak lain baik hak intelektual, asasi, dan lainnya, dan aturan-aturan \r\nyang diatur pada Perjanjian ini.</li><li>memberikan informasi dan konten yang salah, tidak akurat, bersifat \r\nmenyesatkan, bersifat memfitnah, bersifat asusila, mengandung \r\npornografi, bersifat diskriminasi atau rasis.</li><li>mengambil tindakan yang dapat mengacaukan sistem saran atau masukan \r\ndan atau peringkat (seperti menampilkan, mengimpor atau mengekspor \r\ninformasi atau masukan dari situs luar atau menggunakannya untuk tujuan \r\nyang tidak terkait dengan situs ini).</li><li>memberikan account di situs ini(termasuk saran atau masukan) dan nama account kepada pihak lain tanpa sepengetahuan Kami.</li><li>menyebarkan spam, hal-hal yang tidak berasusila, atau pesan elektronik yang berjumlah besar, pesan bersambung.</li><li>menyebarkan virus atau seluruh teknologi lainnya yang sejenis yang dapat merusak dan/atau merugikan situs ini, afiliasinya dan pengguna lainnya.</li><li>memasukkan atau memindahkan fitur pada situs ini tidak terkecuali tanpa sepengetahuan dan persetujuan dari Kami.</li><li>menyimpan, meniru, mengubah, atau menyebarkan konten dan fitur termasuk cara pelayanan, konten, hak cipta dan intelektual yang terdapat pada situs ini.<span style=\"color: rgb(0, 141, 231);\"><br></span></li><li>mengambil atau mengumpulkan informasi dari pengguna lain, termasuk alamat email, tanpa sepengetahuan pengguna lain.</li></ul>\r\n<ol style=\"text-align: justify;\" start=\"4\"><li>Kami berhak membatasi atau tidak memberikan akses, atau memberikan akses yang berbeda untuk dapat membuka situs <a href=\"http://www.diklikaja.com/\">www.diklikaja.com</a>\r\n dan fitur di dalamnya kepada masing-masing Pengguna, atau mengganti \r\nsalah satu fitur atau memasukkan fitur baru tanpa pemberitahuan \r\nsebelumnya. Setiap Pengguna sadar bahwa jika situs <a href=\"http://www.diklikaja.com/\">www.diklikaja.com</a>\r\n tidak dapat digunakan seluruhnya atau sebagian karena alasan apapun, \r\nmaka usaha atau kegiatan apapun yang dilakukan Pengguna dapat terganggu.\r\n Setiap Pengguna dengan ini sepakat bahwa karena alasan apapun \r\nmembebaskan Kami dari segala bentuk pertanggungjawaban terhadap Pengguna\r\n atau terhadap pihak ketiga jika yang bersangkutan tidak dapat \r\nmenggunakan Situs <a href=\"http://www.diklikaja.com/\">www.diklikaja.com</a>\r\n (baik karena gangguan, dibatasinya akses, dilakukannya perubahan fitur \r\natau tidak dimasukkannya lagi fitur tertentu atau karena alasan lain); \r\natau jika komunikasi atau transmisi tertunda, gagal atau tidak dapat \r\nberlangsung; atau jika timbul kerugian (secara langsung, tidak langsung)\r\n karena digunakannya atau tidak dapat digunakannya situs <a href=\"http://www.diklikaja.com/\">www.diklikaja.com</a> atau salah satu fitur di dalamnya.</li></ol><ol style=\"text-align: justify;\" start=\"6\"><li>Pengguna mengetahui dan menyetujui bahwa harga yang tercantum pada situs ini dapat mengalami perubahan secara sewaktu-waktu dan tanpa pemberitahuan terlebih dahulu.</li></ol><ol style=\"text-align: justify;\" start=\"7\"><li>Akses situs ini hanya diperkenankan untuk keperluan dan kepentingan berbelanja dan informasi terkait dengan layanan situs ini.</li></ol><ol style=\"text-align: justify;\" start=\"8\"><li>Pengguna tidak diperkenankan untuk mereproduksi, mendistribusikan, \r\nmemajang, menjual, menyewakan, mengirimkan, membuat karya turunan, \r\nmenerjemahkan, memodifikasi, merekayasa balik, membongkar, mengurai atau\r\n mengeksploitasi situs ini.</li></ol><ol style=\"text-align: justify;\" start=\"9\"><li>Pengguna tidak diperkenankan untuk memuat dan menerbitkan konten yang:</li></ol>\r\n<ul style=\"text-align: justify;\"><li>Melanggar hak cipta, paten, merek dagang, merek layanan, rahasia dagang, atau hak kepemilikan lainnya.</li><li>Mengancam, tidak senonoh, pornografi atau bisa menimbulkan segala \r\nkewajiban Hukum perdata atau pidana Indonesia atau hukum internasional.</li><li>Mengandung bug, virus, worm, pintu perangkap, trojan horse atau kode dan properti berbahaya lainnya.</li></ul>'),
(2, 'privacy', '<div>Kebijakan Privasi (<em>Privacy And Policy</em>)</div><div><br></div><div><p><em><span style=\"font-weight: bold;\">Log Files</span></em><br>\r\nSeperti kebanyakan situs Web lain, <em>situs ini</em> juga menggunakan<em> log files</em>. Informasi dalam <em>log files</em> meliputi alamat <em>internet protocol</em> (IP), jenis browser, <em>Internet Service Provider</em> (ISP), jejak tanggal / waktu, <em>refferering</em> atau <em>exit pages</em>\r\n dan klik-klik yang dilakukan pengunjung untuk menganalisis \r\nkecendrungan, mengelola situs, melacak aktifitas pengguna pada situs, \r\ndan untuk mengumpulkan informasi demografis. Alamat IP dan informasi \r\nlainnya tersebut tidak terkait dengan informasi yang bersifat pribadi.</p>\r\n<p><em><strong>Cookies dan Web Beacons<br>\r\n</strong>Situs ini</em> menggunakan <em>cooki</em>es untuk \r\nmenyimpan informasi tentang preferensi pengunjung, merekam informasi \r\npengguna tertentu pada halaman yang dikunjungi, menyesuaikan halaman <em>Web content based</em>\r\n berdasarkan&nbsp; tipe browser yang digunakan pengunjung atau informasi \r\nlainnya yang pengunjung kirimkan melalui browser yang digunakan.</p></div>'),
(3, 'aboutus', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Gili Air merupakan pulau kecil yang menjadi objek wisata yang sangat menarik di bagian Utara Pulau Lombok dan tepatnya berada di Desa Gili Indah, Kecamatan Pemenang, Kabupaten Lombok Utara. Gili Air adalah tempat liburan favorit bagi mereka yang mencari ketenangan dan lebih banyak interaksi sosial dengan penduduk asli pulau ini. Kedatangan wisatawan ke pulau ini akan disambut suasana yang damai, cahaya matahari, pasir putih dan air yang sangat biru.</span>'),
(11, 'contact', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address------Test</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Ombak Paradise', 'Hotel', 'Penginapan dengan nuansa moder yang  membuat para pengunjung nyaman', 950000, 'Kolam Renang, wifi, sower, dll', 'Hotel Ombak Paradise Lombok adalah akomodasi bintang 3 yang memiliki kolam renang outdoor serta area pantai pribadi yang sangat menawan. Saat bermalam di sini, Anda bisa menikmati teh gratis yang disajikan menjelang pukul empat hingga pukul 6 petang setiap hari. Sementara tempat parkir dan wifi yang tersedia dapat digunakan secara cuma-cuma oleh seluruh tamu yang tengah menginap. Hotel Ombak Paradise Lombok menawarkan sejumlah kamar terbaik yang bisa dipesan berdasarkan kebutuhan Anda. Dengan AC dan TV satelit layar datar, setiap kamar menampilkan desain yang trendi serta suasana menyenangkan. Untuk memberikan kesan lebih mendalam, area tempat duduk juga tersedia pada beberapa kamar. Sedangkan kamar mandi dalamnya disediakan di setiap unit lengkap dengan shower air panas, sandal kamar dan perlengkapan mandi gratis. Booking Hotel Ombak Paradise Lombok sekarang juga. Anda tak hanya bisa menemukan resepsionis yang buka 24 jam, tapi juga sejumlah sarana pendukung seperti toko souvenir, fasilitas binsis, pertokoan lain di akomodasi, layanan kebersihan, jasa menyetrika, cuci kering, hingga laundry. Jika datang dari Bandara Internasional Lombok, layanan transfer bandara tersedia dengan harga yang terjangkau. Selain itu, pihak pengelola juga menyediakan sejumlah layanan lain seperti concierge, check in dan check out ekspress, penitipan bagasi serta layanan kamar. Hadir dengan beragam keunggulan yang memanjakan, Hotel Ombak Paradise Lombok memang merupakan tempat yang sempurna bagi Anda yang ingin berpergian dengan bujet terjangkau.', 'ombak paradise.jpg', '2023-06-26 14:23:44', '2023-07-21 14:20:27'),
(2, 'Manta Dive', 'resort', 'Bangunan modern tetapi masih menampilkan bangunan yang nyaman dengan nuansa klasik.', 850000, 'Kolam renang outdoor, Tepi pantai, WiFi gratis, Kamar bebas rokok, Layanan kamar, Bar, Sarapan. ', 'Tempat peristirahatan tropis menanti Anda di Manta Dive Gili Air Resort, yang berjarak dekat dengan pantai berpasir putih di pulau Gili Air. Dikelilingi oleh pohon-pohon kelapa dan tanaman hijau subur, resor ini menawarkan 3 kolam renang untuk pelatihan dan berenang, serta restoran.\r\nUnit-unit ber-AC di Manta Dive Gili Air menawarkan lantai keramik atau kayu. Unit dilengkapi brankas pribadi dan seprai bersih. Masing-masing dilengkapi dengan teras yang menghadap ke kolam renang atau taman. Kamar mandi dalam semi terbukanya menyediakan shower air panas.\r\nResor ini memiliki sekolah menyelam untuk pemula dan penyelam tingkat tinggi. Anda dapat meminta pengaturan penjemputan bandara dan perjalanan wisata. Akses Wi-Fi gratis tersedia di area umumnya.\r\nPulau Gili Air berjarak 25 menit naik perahu dari pelabuhan Bangsal, yang dapat dicapai dengan berkendara 2 jam dari Bandara Internasional Lombok.', 'manta dive.jpg', '2023-06-26 15:24:26', '2023-07-21 14:20:09'),
(3, 'Fantastic Gili', 'Hostel', 'Bangunan dengan nuansa alami yang sebagian besar terbuat dari bambu yang menciptakan kesan tempat ti', 300000, 'WiFi, Fasilitas anak,  Resepsionis 24 Jam, dll', 'Saat Anda menginap di Fantastic Hostel Gili di kota Gili Air, Anda akan berada di pantai, hanya beberapa langkah dari Dermaga Gili Air dan Zone Spa. Hostel yang pantai ini berada 4 mi (6,5 km) dari Pelabuhan Bangsal', 'gili hostel.jpg', '2023-06-26 16:00:58', '2023-07-21 14:19:15'),
(4, 'Vyaana Resort', 'Resort', 'Nuansa alami dengan atap dari palem kering yang membuat suasanya jadi nyaman', 800000, 'Kolam Renang, WiFi,  Parkir,  Resepsionis 24 Jam, dll', 'Vyaana Resort Gili air adalah akomodasi dengan pantai pribadi dan kolam renang luar ruangan, serta menampilkan pemandangan pulau yang tenang di sebelah barat Pulau Gili Air. Wi-Fi dapat diakses secara gratis di seluruh area akomodasi. Berbagai tempat bersantap berada dalam jarak berjalan kaki dari akomodasi.\r\nSemua bungalow di akomodasi ini ber-AC serta memadukan gaya tradisonal dengan fasilitas modern. Kamar-kamarnya dilengkapi dengan tirai anti tembus pandang. Kamar mandinya memiliki shower air panas/dingin, handuk bersih, dan perlengkapan mandi gratis. Anda dapat bersantai di teras yang menghadap ke kawasan hijau di sekitarnya.\r\nSarapan kontinental atau sarapan lengkap ala Inggris/Irlandia dapat dinikmati di akomodasi.', 'vyaana.jpg', '2023-06-26 22:39:37', '2023-07-21 14:18:59'),
(5, 'De\'coco', 'Villa', 'Penginapan dengan nuansa alami yang digabungkan dengan nuansa modern yang mempunyai kolah renang.', 990000, 'Free wifi, bathub, TV Smart, Kolam renang, Dll', 'De\'Coco Villa and Suites terletak di tepi pantai di Gili Air, dan memiliki sebuah taman. Resor bintang 4 ini memiliki teras, dan menyediakan Wi-Fi gratis. Anda dapat memilih dari antara vila pribadi dan 2 bungalow pribadi.\r\nSemua bungalow ber-AC, dan memiliki area duduk serta kamar mandi pribadi dengan shower air panas/dingin. Vila memiliki kolam renang pribadi, ber-AC, dan dilengkapi dengan TV kabel layar datar. Terdapat juga sebuah dapur, ruang makan, dan kamar mandi pribadi dengan hot tub.', 'decoco.jpg', '2023-06-26 22:42:10', '2023-07-21 14:18:43'),
(6, 'Scallywags', 'Hotel', 'Hotel dengan nunsa yang adem yang cocok untuk mengnap bagi yang menyukai sunyi.', 500000, 'Frree wifi, AC, Sower dll', 'Resor ini dekat dengan Penangkaran Penyu Gili dan Pelabuhan Gili Meno.Kamar Buat diri Anda seperti di rumah sendiri di kamar, bungalo, dan vila ber-AC kami yang menampilkan minibar dan televisi LCD. Kamar memiliki teras pribadi. Akses Internet nirkabel gratis siap menjamin koneksi Anda, dan program satelit disediakan untuk hiburan Anda. Kamar mandi mempunyai pancuran dan perlengkapan mandi gratis.Fasilitas Nikmati pemandangan di taman, pantai, dan manfaatkan fasilitas seperti akses Internet nirkabel gratis dan layanan concierge.Bisnis, Fasilitas Lainnya Meja resepsionis melayani jam tertentu.', 'scallywags.jpg', '2023-06-27 08:01:08', '2023-07-21 14:17:38'),
(7, 'Villa Ombak', 'Villa', 'Villa estetik dan tentunya nyaman', 900000, 'Kolam renang outdoor, Tepi pantai, WiFi gratis, Kamar bebas rokok, AC, Pembuat teh/kopi di semua kamar, Area pantai pribadi, Sarapannya sangat enak.', 'Menampilkan arsitektur khas Lombok, Vila Ombak menawarkan kamar-kamar indah bergaya Indonesia dengan interior modern yang mewah di tengah taman tropis di pulau surga Gili Trawangan. Menghadap ke Gunung Rinjani, vila ini memiliki kolam renang outdoor besar dan restoran tepi pantai.\r\nKamar-kamar yang luas dilengkapi dengan penuh selera dengan karya kerajinan dan perabotan kayu klasik. Menampilkan teras yang luas untuk berjemur, kamar-kamar dilengkapi dengan brankas dan TV kabel.\r\nAnda dapat mengunjungi perairan biru jernih untuk menikmati olahraga air seperti snorkeling dan bermain kano. Vila Ombak menyediakan Wi-Fi gratis di area umumnya, layanan spa lengkap, dan meja layanan wisata.\r\nAngin laut yang sejuk dan pemandangan yang menakjubkan menemani Anda saat menyantap makanan Indonesia halal. Setelah bersantap, Anda dapat menikmati koktail yang disajikan di lounge dan bar tepi kolam renang.', 'vila ombak.jpg', '2023-06-27 17:23:21', '2023-07-02 11:57:27');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(12, 'user1', '123456', 'user@gmail.com', '24c9e15e52afc47c225b757e7bee1f9d', '2023-06-26 14:48:04', NULL),
(13, 'useer1', '1234567', 'useer@gmail.com', '5ecc1951ee7f5fc75d5216fddc588d10', '2023-06-27 14:26:06', '2023-07-25 13:15:41'),
(17, 'zoro marimo', '1234567891', 'zoro@gmail.com', 'c554a8c2d2d4e60f10d601f869881d85', '2023-07-26 06:56:11', '2023-07-26 07:10:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
