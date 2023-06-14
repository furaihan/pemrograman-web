-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2023 at 09:49 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if8_zhafar_profil_manual`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `id_category` int(4) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`id_category`, `nama`, `deskripsi`) VALUES
(1, 'Tentang Kami', 'Kategori tentang kami '),
(2, 'Produk', 'Kategori produk'),
(3, 'Berita', 'kategori berita'),
(4, 'Event', 'Kategori event');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penulis`
--

CREATE TABLE `tb_penulis` (
  `id_penulis` int(4) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `foto` varchar(220) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_penulis`
--

INSERT INTO `tb_penulis` (`id_penulis`, `nama`, `foto`, `deskripsi`) VALUES
(1, 'Lorem Ipsum', 'https://asset-a.grid.id/crop/14x50:1023x655/700x465/photo/2023/04/30/000_33e47bfjpg-20230430121831.jpg', 'Karim oper anaa');

-- --------------------------------------------------------

--
-- Table structure for table `tb_post`
--

CREATE TABLE `tb_post` (
  `id_post` int(10) NOT NULL,
  `judul` varchar(220) NOT NULL,
  `category` int(4) NOT NULL,
  `konten` text NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(220) NOT NULL,
  `penulis` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_post`
--

INSERT INTO `tb_post` (`id_post`, `judul`, `category`, `konten`, `tgl_posting`, `gambar`, `penulis`) VALUES
(1, 'Lorem Ipsum Dolor Sit Amet', 1, 'Get ready to immerse yourself in the thrilling world of GTA Online as we embark on an epic adventure with the highly anticipated Dr. Dre VIP Contract DLC. Join us in this gameplay video as we showcase the captivating story, heart-pounding missions, and exclusive content that awaits you.\r\n\r\nBut before we delve into the action, let\'s address a common concern that plagues public lobbies: modders crashing the game and disrupting the experience. That\'s why we invite you to join us in the secure and uninterrupted environment of an invite session lobby. Say goodbye to those frustrating encounters and embrace a seamless gaming experience where you can fully immerse yourself in the world of GTA Online.\r\n\r\nNow, let\'s dive into the gripping tale of the Dr. Dre VIP Contract. The story begins at the Los Santos Golf Club, where Franklin Clinton introduces us to the legendary Dr. Dre, DJ Pooh, and Jimmy Iovine. However, their meeting is interrupted by two disrespectful golfers who insult Dre and his music. It\'s up to us to help Franklin deal with them, unleashing our wrath and sending their golf carts into oblivion.\r\n\r\nSoon, we discover that Dre\'s phone, containing unreleased music from the man himself, has been stolen by Johnny Guns\' men during the Cayo Perico Heist. Determined to recover the phone and the precious music, we embark on a series of thrilling missions that will test our skills and bravery.\r\n\r\nThe journey begins with the Data Recovery setup mission, where we must hack into Johnny Guns\' network and trace the signal of the stolen phone. From there, we gain access to three mission series: Nightlife Leak, High Society Leak, and South Central Leak. Each series consists of setup missions and a finale, offering different challenges and encounters that will keep you on the edge of your seat.\r\n\r\nIn Nightlife Leak, we infiltrate a nightclub and chase down an associate attempting to escape on a yacht. High Society Leak takes us to a country club and a star-studded hotel party, where we must eliminate celebrities and retrieve the stolen phones. South Central Leak leads us to a warehouse and a Ballas territory, where we engage in intense firefights to recover the prized possessions.\r\n\r\nAfter completing the three mission series, we unlock two thrilling finales: Studio Time and Don\'t Fuck With Dre. In Studio Time, we protect Dre, Anderson .Paak, and Busta Rhymes from Johnny Guns\' relentless assault while assisting Dre in completing his album. In Don\'t Fuck With Dre, we storm Johnny Guns\' mansion, confront him head-on, and decide his fate.\r\n\r\nThroughout the video, we want to highlight that certain segments of the gameplay may contain copyrighted material, showcasing the incredible music and talent of Dr. Dre. It\'s an exclusive experience that adds depth and immersion to the already exhilarating GTA Online universe.\r\n\r\nSo, grab your friends, gear up, and join us in this captivating journey as we play the Dr. Dre VIP Contract DLC. Experience the excitement, the action, and the immersive storytelling that sets GTA Online apart. Say goodbye to modder disruptions and embrace the secure environment of an invite session lobby.\r\n\r\nAre you ready to make a name for yourself in Los Santos? Join us now and let\'s conquer the world of GTA Online together.\r\n\r\n#GTAOnline #TheContractDLC #DrDreVIPContract #InviteSessionLobby #SecureGamingExperience #ActionPackedMissions #ImmersiveStorytelling #ExclusiveContent #ConquerLosSantos #NoModderInterference #JoinTheAdventure', '2023-06-07', 'https://static.wikia.nocookie.net/gtawiki/images/1/17/SanAndreasMercenaries-GTAO-Artwork.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `tb_penulis`
--
ALTER TABLE `tb_penulis`
  ADD PRIMARY KEY (`id_penulis`);

--
-- Indexes for table `tb_post`
--
ALTER TABLE `tb_post`
  ADD PRIMARY KEY (`id_post`),
  ADD KEY `category` (`category`),
  ADD KEY `penulis` (`penulis`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `id_category` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_penulis`
--
ALTER TABLE `tb_penulis`
  MODIFY `id_penulis` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_post`
--
ALTER TABLE `tb_post`
  MODIFY `id_post` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_post`
--
ALTER TABLE `tb_post`
  ADD CONSTRAINT `category` FOREIGN KEY (`category`) REFERENCES `tb_category` (`id_category`) ON DELETE NO ACTION,
  ADD CONSTRAINT `penulis` FOREIGN KEY (`penulis`) REFERENCES `tb_penulis` (`id_penulis`) ON DELETE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
