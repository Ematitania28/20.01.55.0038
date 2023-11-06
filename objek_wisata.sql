-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2023 at 04:54 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wisata`
--

-- --------------------------------------------------------

--
-- Table structure for table `objek_wisata`
--

CREATE TABLE `objek_wisata` (
  `id` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `lokasi` varchar(250) NOT NULL,
  `deskripsi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `objek_wisata`
--

INSERT INTO `objek_wisata` (`id`, `nama`, `lokasi`, `deskripsi`) VALUES
(1, 'Lawang Sewu', 'Jl. Pemuda, Sekayu, Kec. Semarang Tengah, Kota Semarang', 'Lawang Sewu merupakan salah satu objek wisata Semarang paling populer, dan terkenal dengan jumlah pintunya yang banyak hingga orang menyebutnya Lawang Sewu alias Seribu Pintu. Konon jumlah seluruh pintunya enggak sampai seribu kok, kamu bisa buktikan'),
(2, 'Saloka Theme Park', 'Jl. Fatmawati No.154, Gumuksari, Lopait, Kec. Tuntang, Semarang', 'Saloka Park merupakan taman bermain terbesar di Jawa Tengah. Wahana yang tersedia pun bervariasi, dari yang ramah anak sampai yang ekstrem seperti Bengak Bengok, sebuah wahana berbentuk lingkaran yang akan bergerak berputar dan maju-mundur secara cep'),
(3, 'Klenteng Sampokong', 'Jl. Simongan No.129, Bongsari, Kec. Semarang Bar., Kota Semarang', 'Sampokong  merupakan klenteng tertua di Semarang. Dikenal sebagai bekas tempat pendaratan dan persinggahan pertama Laksamana Cheng Ho asal Tiongkok yang beragama islam, Klenteng Sam Poo Kong dibangun di tempat ini untuk mengenang kedatangan Cheng Ho '),
(4, 'Kota Lama ', ' Jl. Letjen Suprapto No.31, Tj. Mas, Kec. Semarang Utara, Kota Semarang', ' Merupakan pusat perdagangan di kota Semarang pada Abad 19-20. Kota Lama Semarang dikenal dengan banyaknya gedung tua bergaya Eropa yang unik yang dipertahankan melalui proses konservasi dan revitalisasi, m');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `objek_wisata`
--
ALTER TABLE `objek_wisata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `objek_wisata`
--
ALTER TABLE `objek_wisata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
