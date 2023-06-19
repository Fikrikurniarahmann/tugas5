-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Jun 2023 pada 12.08
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `kode` varchar(50) DEFAULT NULL,
  `kode_kategori` varchar(50) DEFAULT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `pengarang` varchar(100) DEFAULT NULL,
  `penerbit` varchar(100) DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  `tanggal_input` date DEFAULT NULL,
  `harga` decimal(10,3) DEFAULT NULL,
  `file_cover` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `buku`
--

-- INSERT INTO `buku` (`id`, `kode`, `kode_kategori`, `judul`, `pengarang`, `penerbit`, `tahun`, `tanggal_input`, `harga`, `file_cover`) VALUES
-- (1, 'RAS001', 'NAR001', 'Harry Potter', 'J.K. Rowling', 'Gramedia Pustaka Utama', 2000, '2023-07-08', 250.000, NULL),
-- (2, 'RAS002', 'NAR002', 'The Alpha Girl\'s Guide', 'Henry Manampiring', 'Gagas Media', 2015, '2015-06-03', 85.000, NULL),
-- (3, 'RAS003', 'NAR003', 'Pesta Bunuh Diri', 'Daniel Ahmad', 'Gagas Media', 2022, '2022-06-10', 100.000, NULL),
-- (4, 'RAS004', 'NAR004', 'Gelap', 'Tere Liye', ' Gramedia Pustaka Utama', 2020, '2020-06-13', 75.000, NULL),
-- (5, 'RAS005', 'NAR005', 'Laskar Pelangi', ' Andrea Hirata', ' Bentang Pustaka', 2005, '2013-06-08', 50.000, NULL),
-- (6, 'RAS006', 'NAR006', 'Ketika Cinta Bertasbih', 'Habiburrahman El Shirazy', 'Republika Penerbit', 2002, '2013-06-08', 50.000, NULL),
-- (7, 'RAS007', 'NAR007', 'Negeri Para Bedebah', 'Tere Liye', 'Gramedia Pustaka Utama', 2014, '2014-06-05', 80.000, NULL),
-- (8, 'RAS008', 'NAR008', 'Revolusi: 45 Tahun yang Mengubah Indonesia', 'J.J. Rizal', 'Gagas Media', 2015, '2015-06-10', 75.000, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `kode` varchar(50) DEFAULT NULL,
  `kategori` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

-- INSERT INTO `kategori` (`id`, `kode`, `kategori`) VALUES
-- (1, 'NAR001', 'Fantasi'),
-- (2, 'NAR002', 'Ilmiah'),
-- (3, 'NAR003', 'Horror'),
-- (4, 'NAR004', 'Thriller'),
-- (5, 'NAR005', 'Drama'),
-- (6, 'NAR006', 'Romance'),
-- (7, 'NAR007', 'Aksi'),
-- (8, 'NAR008', 'Sejarah');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode` (`kode`),
  ADD KEY `kode_kategori` (`kode_kategori`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode` (`kode`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`kode_kategori`) REFERENCES `kategori` (`kode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
