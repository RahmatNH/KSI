-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 25 Jun 2019 pada 19.01
-- Versi Server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `penyewaan mobil`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `konsumen`
--

CREATE TABLE IF NOT EXISTS `konsumen` (
  `no_identitas` int(12) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `no_telp` int(12) NOT NULL,
  `alamat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `konsumen`
--

INSERT INTO `konsumen` (`no_identitas`, `nama`, `no_telp`, `alamat`) VALUES
(1212547698, 'Harno', 98879097, 'Jl.DIPanjaitan'),
(1232447676, 'Hana', 93376621, 'Dongkelan'),
(1234132111, 'Beno', 98987676, 'Prayan Raya'),
(1235432324, 'Hasno', 87867890, 'Gedong Kiwo'),
(1245132131, 'Bejo', 87878890, 'Gedong Tengen'),
(1274132765, 'Risna', 87878744, 'Depok'),
(1342547686, 'Resna', 90170007, 'Depok');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE IF NOT EXISTS `mobil` (
  `no_plat` varchar(8) NOT NULL,
  `jenis_mobil` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`no_plat`, `jenis_mobil`) VALUES
('AB1234DF', 'Toyota Alphard'),
('AB1254DF', 'Toyota Avanza'),
('AB1341DE', 'Honda Jazz'),
('AB2121FD', 'Nissan Grand Livina'),
('AB2132DE', 'Honda Jazz'),
('AB2321FE', 'Toyota Alphard'),
('AB3124DF', 'Daihatsu Grand Max'),
('AB3241FD', 'Toyota Avanza'),
('AB3245FE', 'Toyota Avanza'),
('AB4324FF', 'Daihatsu Grand Max');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengemudi`
--

CREATE TABLE IF NOT EXISTS `pengemudi` (
  `no_pengemudi` int(8) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `no_telp` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengemudi`
--

INSERT INTO `pengemudi` (`no_pengemudi`, `nama`, `alamat`, `no_telp`) VALUES
(12123113, 'Kholil Azhari', 'Prayan Raya', 87878654),
(12123114, 'Taufik Hidayat', 'Jl.Wonosari KM 3', 89763542),
(12123115, 'Rahmat Nur Hidayat', 'Mantrijeron', 87878898),
(12123116, 'Muhamad Ali Ma''mun', 'Depok ', 98876634),
(12123117, 'Hery Ardiansyah', 'Gejayan', 89769090),
(12123118, 'Cevin Figri', 'Babarsari', 98870987);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `no_transaksi` int(5) NOT NULL,
  `no_identitas` int(12) NOT NULL,
  `no_pengemudi` int(8) NOT NULL,
  `lama_menyewa` int(2) NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `no_plat` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`no_transaksi`, `no_identitas`, `no_pengemudi`, `lama_menyewa`, `tanggal_kembali`, `no_plat`) VALUES
(12344, 1212547698, 12123114, 2, '2019-05-09', 'AB1254DF'),
(12345, 1245132131, 12123113, 3, '2019-05-11', 'AB1254DF'),
(12346, 1212547698, 12123116, 4, '2019-05-21', 'AB1254DF'),
(12347, 1274132765, 12123118, 2, '2019-05-19', 'AB1234DF'),
(12348, 1234132111, 12123117, 4, '2019-05-21', 'AB1341DE'),
(12349, 1274132765, 12123116, 2, '2019-05-15', 'AB3124DF'),
(12350, 1245132131, 12123115, 4, '2019-05-27', 'AB4324FF'),
(12351, 1342547686, 12123113, 2, '2019-05-28', 'AB3241FD'),
(12352, 1234132111, 12123115, 3, '2019-05-26', 'AB3245FE'),
(12353, 1212547698, 12123117, 4, '2019-05-30', 'AB1254DF'),
(12354, 1274132765, 12123116, 2, '2019-05-29', 'AB3124DF');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `konsumen`
--
ALTER TABLE `konsumen`
 ADD PRIMARY KEY (`no_identitas`);

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
 ADD PRIMARY KEY (`no_plat`);

--
-- Indexes for table `pengemudi`
--
ALTER TABLE `pengemudi`
 ADD PRIMARY KEY (`no_pengemudi`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
 ADD PRIMARY KEY (`no_transaksi`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
