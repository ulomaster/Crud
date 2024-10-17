-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql207.infinityfree.com
-- Waktu pembuatan: 17 Okt 2024 pada 02.19
-- Versi server: 10.6.19-MariaDB
-- Versi PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_37225812_test`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(255) NOT NULL,
  `kd_brg` varchar(255) NOT NULL,
  `nm_brg` varchar(255) NOT NULL,
  `nm_penerima` varchar(255) NOT NULL,
  `asal_barang` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `satuan` varchar(255) NOT NULL,
  `tgl_diterima` date NOT NULL,
  `tgl_simpan` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `kd_brg`, `nm_brg`, `nm_penerima`, `asal_barang`, `jumlah`, `satuan`, `tgl_diterima`, `tgl_simpan`) VALUES
(2, 'INV-2024-002', 'Meja', 'bpk burhan', 'hibah', 5, 'unit', '2024-08-19', '2024-08-19 03:39:27'),
(10, 'IVN-2024-003', 'Kursi', 'bpk Suparman', 'Hibah', 5, 'Pak', '2024-08-20', '2024-08-19 05:24:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(4, 'AdminSuper', '$2y$10$EvRLMSGG1QBWewfxFN3adu31jlNpISb/XswRaoc4Zf1.7fbYZlG6O'),
(5, 'Admin', '$2y$10$kRBH.MbkyyWS2c81wSWJMO42tshTSmslYg5B5HUd/oqUkVjikL.ZK'),
(6, 'AdminSuper', '$2y$10$oo1Z9b3decFHOtkYRdoonOM.6R0PiSk1WnFfqA7o3FfcOxRv9PWw6'),
(7, 'root', '$2y$10$LvpDTFphMje.vI6EOeEnyOTwRnzF6Uf4oD/WdncnukrXCDAy0PHhS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(255) NOT NULL,
  `nim` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telp` varchar(255) NOT NULL,
  `fakultas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama`, `alamat`, `telp`, `fakultas`) VALUES
(1, 12345, 'Ard', 'ppazxy', '08981111111', 'saintek');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
