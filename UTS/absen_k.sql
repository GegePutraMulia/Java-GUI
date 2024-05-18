-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Bulan Mei 2024 pada 14.29
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absen_k`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `gender`
--

CREATE TABLE `gender` (
  `kode_gender` int(11) NOT NULL,
  `jGender` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `gender`
--

INSERT INTO `gender` (`kode_gender`, `jGender`) VALUES
(1, 'Laki-laki'),
(2, 'Perempuan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hadir`
--

CREATE TABLE `hadir` (
  `kode_hadir` int(11) NOT NULL,
  `kode_karyawan` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `masuk` datetime NOT NULL,
  `keluar` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `hadir`
--

INSERT INTO `hadir` (`kode_hadir`, `kode_karyawan`, `nama`, `masuk`, `keluar`) VALUES
(1, 1, 'jihan', '2024-05-18 18:32:08', '2024-05-18 18:32:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE `jabatan` (
  `kode_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(50) NOT NULL,
  `date_create` datetime NOT NULL,
  `date_modify` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jabatan`
--

INSERT INTO `jabatan` (`kode_jabatan`, `nama_jabatan`, `date_create`, `date_modify`) VALUES
(1, 'Kaprodi', '2024-03-25 02:43:22', '2024-03-25 02:43:22'),
(2, 'Rektor', '2024-03-25 02:43:22', '2024-03-25 02:43:22'),
(3, 'Dekan', '2024-03-25 02:43:22', '2024-03-25 02:43:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `kode_karyawan` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `tgl_lahir` varchar(20) NOT NULL,
  `tlp` int(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `kode_jabatan` int(11) NOT NULL,
  `kode_status` int(11) NOT NULL,
  `kode_prodi` int(11) NOT NULL,
  `kode_gender` int(11) NOT NULL,
  `date_create` datetime NOT NULL,
  `date_modify` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`kode_karyawan`, `nama`, `alamat`, `tgl_lahir`, `tlp`, `email`, `kode_jabatan`, `kode_status`, `kode_prodi`, `kode_gender`, `date_create`, `date_modify`) VALUES
(1, 'jihan', 'rt rw', '22', 344, 'jihan@gmail.', 1, 1, 1, 1, '2024-05-13 22:08:23', NULL),
(2, 'ee', 'jjj', '12', 1234, 'gg', 2, 1, 1, 1, '2024-05-18 18:31:42', '2024-05-18 18:31:51'),
(22, 'miklai', 'rt rw', '32', 877, 'miklai@gmail.', 2, 2, 2, 2, '2024-05-13 22:08:59', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
('2', 'bayu', 'bayu'),
('AD002', 'gege', 'gege'),
('AD003', 'hayam', 'hayam'),
('AD004', 'aam', 'aam'),
('AD005', 'gege', 'gege'),
('AD006', 'huut', 'huut'),
('AD007', 'hayam', '1234'),
('AD008', 'fauzi', '1234');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prodi`
--

CREATE TABLE `prodi` (
  `kode_prodi` int(11) NOT NULL,
  `nama_prodi` varchar(50) NOT NULL,
  `date_create` datetime NOT NULL,
  `date_modify` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `prodi`
--

INSERT INTO `prodi` (`kode_prodi`, `nama_prodi`, `date_create`, `date_modify`) VALUES
(1, 'Informatika', '2024-03-25 02:41:14', '2024-03-25 02:41:14'),
(2, 'Industri', '2024-03-25 02:41:14', '2024-03-25 02:41:14'),
(3, 'Sipil', '2024-03-25 02:41:14', '2024-03-25 02:41:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status`
--

CREATE TABLE `status` (
  `kode_status` int(11) NOT NULL,
  `nama_status` varchar(50) NOT NULL,
  `date_create` datetime NOT NULL,
  `date_modify` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `status`
--

INSERT INTO `status` (`kode_status`, `nama_status`, `date_create`, `date_modify`) VALUES
(1, 'Pekerja Tetap', '2024-03-25 02:42:32', '2024-03-25 02:42:32'),
(2, 'Honorer', '2024-03-25 02:42:32', '2024-03-25 02:42:32');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`kode_gender`);

--
-- Indeks untuk tabel `hadir`
--
ALTER TABLE `hadir`
  ADD PRIMARY KEY (`kode_hadir`),
  ADD KEY `kode_karyawan` (`kode_karyawan`);

--
-- Indeks untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`kode_jabatan`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`kode_karyawan`),
  ADD KEY `kode_jabatan` (`kode_jabatan`),
  ADD KEY `kode_status` (`kode_status`),
  ADD KEY `kode_prodi` (`kode_prodi`),
  ADD KEY `kode_gender` (`kode_gender`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`kode_prodi`);

--
-- Indeks untuk tabel `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`kode_status`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `gender`
--
ALTER TABLE `gender`
  MODIFY `kode_gender` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `hadir`
--
ALTER TABLE `hadir`
  MODIFY `kode_hadir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD CONSTRAINT `karyawan_ibfk_1` FOREIGN KEY (`kode_jabatan`) REFERENCES `jabatan` (`kode_jabatan`),
  ADD CONSTRAINT `karyawan_ibfk_2` FOREIGN KEY (`kode_prodi`) REFERENCES `prodi` (`kode_prodi`),
  ADD CONSTRAINT `karyawan_ibfk_3` FOREIGN KEY (`kode_status`) REFERENCES `status` (`kode_status`),
  ADD CONSTRAINT `karyawan_ibfk_4` FOREIGN KEY (`kode_gender`) REFERENCES `gender` (`kode_gender`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
