-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Bulan Mei 2023 pada 13.44
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pemirapemira`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_admin`
--

CREATE TABLE `t_admin` (
  `id_admin` tinyint(1) NOT NULL,
  `username` varchar(35) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_admin`
--

INSERT INTO `t_admin` (`id_admin`, `username`, `fullname`, `password`) VALUES
(1, 'admin', 'administrator', '$2y$10$5ok3rcIOv/yNIlPIGo49a.cXRAiA5ZsnxbpijFoyy5EuuYyVrZetu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_kandidat`
--

CREATE TABLE `t_kandidat` (
  `id_kandidat` smallint(4) NOT NULL,
  `nama_calon` varchar(50) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `visi` varchar(255) NOT NULL,
  `misi` varchar(255) NOT NULL,
  `suara` smallint(4) NOT NULL DEFAULT 0,
  `periode` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_kandidat`
--

INSERT INTO `t_kandidat` (`id_kandidat`, `nama_calon`, `foto`, `visi`, `misi`, `suara`, `periode`) VALUES
(4, 'Achmad Jazuli Utsman', '12814409_251522388516088_1284515540919034534_n.jpg', 'Maju bersama', 'Menghidupkan kegiatan ekstra Pramuka', 1, '2016/2017'),
(5, 'Paijo', 'emoticon-under-stress.png', 'meningkatkan ketakwaan siswa', 'menghidupkan kedisiplinan', 0, '2016/2017'),
(6, 'zulfa', 'avril-lavigne-photoshoot-42.jpg', 'smart', 'choise', 2, '2016/2017'),
(8, 'Aina Sabela, Zamijar, Diah Utami', 'paslon 1 resmi - Copy.jpg', 'Meningkatkan Kualitas SMA Negeri 1 Timang Gajah membentuk keperibadian siswa-siswi  yang smart ( Sigap, Musyawarah, Adil, Religius dan Teliti).', '1. Mengutamakan keimanan dan ketuhanan dalam segala aspek.\r\n2. Memperkuat rasa kekeluargaan antar siswa dan Guru.\r\n3. Menambahkan sikap disiplin pada semua siswa.\r\n4. Memajukan prestasi sekolah dalam segala bidang\r\n5. Pengembangan  Bakat dan potensi siswa', 83, '2021/2022'),
(9, 'ZUHRI, NASYWA, TEUKU FARHAN', 'zuhri z.jpg', 'Menjadikan SMA Negeri 1 Timang Gajah lebih kreatif,inovatif, aktif, bertanggung jawab, serta berahlak mulia dan berbudi pekerti luhur.\r\n\r\n', 'Menjadikan SMA Negeri 1 Timang Gajah lebih kreatif,inovatif, aktif, bertanggung jawab, serta berahlak mulia dan berbudi pekerti luhur.\r\n\r\n1. meningkatkan keimanan dan ketaqwaan kepada tuhan yang maha esa\r\n2. mengaktipkan dan memajukan organisasi-organisas', 63, '2021/2022');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_kelas`
--

CREATE TABLE `t_kelas` (
  `id_kelas` varchar(3) NOT NULL,
  `nama_kelas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_kelas`
--

INSERT INTO `t_kelas` (`id_kelas`, `nama_kelas`) VALUES
('K01', 'X IPS 1'),
('K02', 'X IPS 2'),
('K03', 'X MIA 1'),
('K04', 'X MIA 2'),
('K05', 'X Bahasa'),
('K06', 'XI MIA'),
('K07', 'XI IPS'),
('K08', 'XI BAHASA'),
('K09', 'XII MIA'),
('K10', 'XII IPS'),
('K11', 'XII BAHASA'),
('K12', 'GURU DAN T');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_pemilih`
--

CREATE TABLE `t_pemilih` (
  `nis` varchar(10) NOT NULL,
  `periode` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_pemilih`
--

INSERT INTO `t_pemilih` (`nis`, `periode`) VALUES
('2155', '2016/2017'),
('3788', '2021/2022'),
('1267', '2021/2022'),
('240495', '2021/2022'),
('19731512', '2021/2022'),
('19621101', '2021/2022'),
('19640806', '2021/2022'),
('19730313', '2021/2022'),
('19690614', '2021/2022'),
('19810422', '2021/2022'),
('19801012', '2021/2022'),
('19621008', '2021/2022'),
('19611231', '2021/2022'),
('19761203', '2021/2022'),
('19901110', '2021/2022'),
('19780715', '2021/2022'),
('19650412', '2021/2022'),
('19860703', '2021/2022'),
('19780720', '2021/2022'),
('19910131', '2021/2022'),
('56790', '2021/2022'),
('19860303', '2021/2022'),
('1234567', '2021/2022'),
('0044196421', '2021/2022'),
('19840923', '2021/2022'),
('0041797495', '2021/2022'),
('0041797491', '2021/2022'),
('0044196134', '2021/2022'),
('0041797494', '2021/2022'),
('19700321', '2021/2022'),
('0037305157', '2021/2022'),
('0057870649', '2021/2022'),
('0041797489', '2021/2022'),
('0044196433', '2021/2022'),
('0044196434', '2021/2022'),
('0043521504', '2021/2022'),
('0035087529', '2021/2022'),
('0044196417', '2021/2022'),
('0041371885', '2021/2022'),
('0041531709', '2021/2022'),
('0037896284', '2021/2022'),
('0035148386', '2021/2022'),
('0032277877', '2021/2022'),
('0042162678', '2021/2022'),
('0032444589', '2021/2022'),
('0044013256', '2021/2022'),
('0033864107', '2021/2022'),
('0043492645', '2021/2022'),
('0048373399', '2021/2022'),
('0032278789', '2021/2022'),
('0041016593', '2021/2022'),
('0045230074', '2021/2022'),
('0045240851', '2021/2022'),
('0032896290', '2021/2022'),
('0044196424', '2021/2022'),
('0035599601', '2021/2022'),
('0041531715', '2021/2022'),
('0043658206', '2021/2022'),
('0032278177', '2021/2022'),
('0069750437', '2021/2022'),
('0068954902', '2021/2022'),
('0066425051', '2021/2022'),
('0066833814', '2021/2022'),
('0064542311', '2021/2022'),
('0063060386', '2021/2022'),
('0051590550', '2021/2022'),
('0063174920', '2021/2022'),
('0066632839', '2021/2022'),
('0069235724', '2021/2022'),
('0037024362', '2021/2022'),
('0061075650', '2021/2022'),
('0068377554', '2021/2022'),
('0054748031', '2021/2022'),
('0068017035', '2021/2022'),
('0062622062', '2021/2022'),
('0068256134', '2021/2022'),
('0058633611', '2021/2022'),
('0050779329', '2021/2022'),
('0041961485', '2021/2022'),
('19690416', '2021/2022'),
('0051272697', '2021/2022'),
('0043493107', '2021/2022'),
('0049305233', '2021/2022'),
('0058816783', '2021/2022'),
('0043139174', '2021/2022'),
('0041188981', '2021/2022'),
('0065928098', '2021/2022'),
('0067336906', '2021/2022'),
('0062694020', '2021/2022'),
('0049632626', '2021/2022'),
('0048470070', '2021/2022'),
('0054733649', '2021/2022'),
('0056090593', '2021/2022'),
('0065447767', '2021/2022'),
('0067590844', '2021/2022'),
('0061797945', '2021/2022'),
('0069471209', '2021/2022'),
('0066813091', '2021/2022'),
('0067193708', '2021/2022'),
('0067514369', '2021/2022'),
('0054750443', '2021/2022'),
('19790817', '2021/2022'),
('0049710046', '2021/2022'),
('0056744040', '2021/2022'),
('3039001077', '2021/2022'),
('0055977276', '2021/2022'),
('0052770424', '2021/2022'),
('0042701416', '2021/2022'),
('0032062654', '2021/2022'),
('0041614106', '2021/2022'),
('0052440304', '2021/2022'),
('0056779438', '2021/2022'),
('0042840591', '2021/2022'),
('0049587521', '2021/2022'),
('3053102924', '2021/2022'),
('0053694919', '2021/2022'),
('0050779434', '2021/2022'),
('0045399427', '2021/2022'),
('0045479876', '2021/2022'),
('0052170107', '2021/2022'),
('0048248653', '2021/2022'),
('0042642446', '2021/2022'),
('0049475899', '2021/2022'),
('0051673008', '2021/2022'),
('0045479881', '2021/2022'),
('0045755376', '2021/2022'),
('0057093052', '2021/2022'),
('0063238604', '2021/2022'),
('0066311974', '2021/2022'),
('0064816696', '2021/2022'),
('0062862008', '2021/2022'),
('0042418774', '2021/2022'),
('0054026793', '2021/2022'),
('0056805044', '2021/2022'),
('0057481432', '2021/2022'),
('0057694688', '2021/2022'),
('0068447371', '2021/2022'),
('0051969453', '2021/2022'),
('0058190026', '2021/2022'),
('0061300089', '2021/2022'),
('0061578613', '2021/2022'),
('0069210492', '2021/2022'),
('56789', '2021/2022'),
('0062431068', '2021/2022'),
('0058180871', '2021/2022'),
('0063894643', '2021/2022'),
('0051532619', '2021/2022'),
('0055153327', '2021/2022'),
('0053729500', '2021/2022'),
('0069936150', '2021/2022'),
('0059131809', '2021/2022'),
('0067821656', '2021/2022'),
('0055556581', '2021/2022'),
('0059359614', '2021/2022'),
('0061649862', '2021/2022'),
('0057875736', '2021/2022'),
('0068873018', '2021/2022'),
('0064705369', '2021/2022'),
('0069332639', '2021/2022'),
('0055800912', '2021/2022'),
('0065673289', '2021/2022'),
('0066464094', '2021/2022'),
('0041981620', '2021/2022'),
('0064074527', '2021/2022'),
('0046862664', '2021/2022'),
('0064495401', '2021/2022'),
('0058158087', '2021/2022'),
('0064679686', '2021/2022'),
('0061551302', '2021/2022'),
('0069390817', '2021/2022'),
('0069516874', '2021/2022'),
('0046140366', '2021/2022'),
('0069060832', '2021/2022'),
('0066992694', '2021/2022'),
('3757', '2021/2022'),
('0066968949', '2021/2022'),
('84273', '2021/2022'),
('257675', '2021/2022'),
('954573', '2021/2022'),
('368475', '2021/2022'),
('2373', '2021/2022'),
('643572', '2021/2022'),
('654000', '2021/2022'),
('0050753978', '2021/2022'),
('0043491894', '2021/2022'),
('18435', '2021/2022'),
('734526', '2021/2022'),
('0059800377', '2021/2022'),
('212121', '2021/2022'),
('0044979201', '2021/2022'),
('0059311857', '2021/2022'),
('0041797485', '2021/2022'),
('0050719777', '2021/2022'),
('0044142015', '2021/2022'),
('0057946226', '2021/2022'),
('0032278931', '2021/2022'),
('0048716852', '2021/2022'),
('0059516608', '2021/2022'),
('0051123177', '2021/2022'),
('0047981341', '2021/2022'),
('0022379947', '2021/2022'),
('0047651494', '2021/2022'),
('0050779443', '2021/2022'),
('0044716886', '2021/2022'),
('0035599360', '2021/2022'),
('0046443859', '2021/2022'),
('0045736855', '2021/2022'),
('199524', '2021/2022'),
('0032278854', '2021/2022'),
('0046826600', '2021/2022'),
('0040531465', '2021/2022');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_user`
--

CREATE TABLE `t_user` (
  `id_user` varchar(10) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `id_kelas` varchar(3) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `pemilih` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_user`
--

INSERT INTO `t_user` (`id_user`, `fullname`, `id_kelas`, `jk`, `pemilih`) VALUES
('0022379947', 'LUTFHI HUSAINI', 'K11', 'L', 'Y'),
('0022957227', 'HARDIAN SYAH PUTRA', 'K09', 'L', 'Y'),
('0032062654', 'HADIYANTO', 'K06', 'L', 'Y'),
('0032277877', 'IWAN PUTRA GAYO', 'K10', 'L', 'Y'),
('0032278177', 'AGUS RIANDI', 'K09', 'L', 'Y'),
('0032278789', 'UMIA JAFA RISKA', 'K10', 'P', 'Y'),
('0032278854', 'LISTA RINA', 'K09', 'P', 'Y'),
('0032278931', 'RAHMADY SYAHPITRA', 'K09', 'L', 'Y'),
('0032444589', 'MUHAMMAD NAVALLIANDI', 'K10', 'L', 'Y'),
('0032896290', 'RAHMATDANI', 'K09', 'L', 'Y'),
('0033864107', 'GUSTI INDRAWAN', 'K10', 'L', 'Y'),
('0035087529', 'JUNI ARTY', 'K11', 'P', 'Y'),
('0035148386', 'SILVIA JURISKA INTAN', 'K10', 'P', 'Y'),
('0035599360', 'HAIRUN', 'K10', 'L', 'Y'),
('0035599601', 'SISMA WATI', 'K09', 'P', 'Y'),
('0037024362', 'YULIA TIARA', 'K04', 'P', 'Y'),
('0037305157', 'AGNES NOVIA YUVITA', 'K11', 'P', 'Y'),
('0037896284', 'WIRDA', 'K10', 'P', 'Y'),
('0040531465', 'ZULKARNAIN', 'K11', 'L', 'Y'),
('0040974353', 'QANA\'AH TUAH MIKO', 'K06', 'L', 'Y'),
('0041016593', 'FADLY SYAHPUTRA', 'K10', 'L', 'Y'),
('0041188981', 'RISTA NANTIANAMI', 'K08', 'P', 'Y'),
('0041371885', 'NAKITA AGUSTINA', 'K11', 'P', 'Y'),
('0041531709', 'RIZA', 'K10', 'L', 'Y'),
('0041531715', 'IMANDA PUTRI', 'K09', 'P', 'Y'),
('0041614106', 'ZAMIJAR', 'K06', 'L', 'Y'),
('0041797485', 'RISTIYA ADLIANA', 'K09', 'P', 'Y'),
('0041797489', 'SUKMA RAHMALIA', 'K11', 'P', 'Y'),
('0041797491', 'RESTI LUSIANA', 'K11', 'P', 'Y'),
('0041797494', 'PUTRI JULIANA', 'K11', 'P', 'Y'),
('0041797495', 'ELISA GUSTIANI', 'K11', 'P', 'Y'),
('0041961485', 'ALFITRA', 'K08', 'L', 'Y'),
('0041981620', 'NADIATUL RAHMI', 'K05', 'P', 'Y'),
('0042162678', 'YUNI YULISTIKA', 'K10', 'P', 'Y'),
('0042418774', 'MIFTAH ABRAR', 'K02', 'L', 'Y'),
('0042642446', 'SAPRIANDI PUTRA', 'K07', 'L', 'Y'),
('0042701416', 'ZUHRI', 'K06', 'L', 'Y'),
('0042840591', 'MUHAMMAD HEKAL', 'K06', 'L', 'Y'),
('0043139174', 'SURYA KEUMALA', 'K08', 'L', 'Y'),
('0043491894', 'MELI IQLIMA', 'K09', 'P', 'Y'),
('0043492645', 'ANDIKA DATA KUSUMA', 'K10', 'L', 'Y'),
('0043493107', 'IRFAN CONTESA', 'K08', 'L', 'Y'),
('0043521504', 'ERA FAZIRA', 'K09', 'P', 'Y'),
('0043658206', 'SUTIKA TRI REZEKI', 'K09', 'P', 'Y'),
('0043801358', 'MAHREZA.S', 'K09', 'L', 'Y'),
('0044013256', 'TAWAR NATE', 'K10', 'L', 'Y'),
('0044142015', 'ABADI SIMAHATE', 'K06', 'L', 'Y'),
('0044196134', 'HAJAR AGUSTINA', 'K11', 'P', 'Y'),
('0044196417', 'SURAHMAN DIKA', 'K11', 'L', 'Y'),
('0044196421', 'LUCYA AFRIDA', 'K11', 'P', 'Y'),
('0044196424', 'ASGI YUDHA', 'K09', 'L', 'Y'),
('0044196433', 'LENYTA MAWADDAH', 'K11', 'P', 'Y'),
('0044196434', 'EVI ZURAIDA', 'K11', 'P', 'Y'),
('0044716886', 'NIA RAMADINA', 'K08', 'P', 'Y'),
('0044979201', 'ARI APRIANDI', 'K07', 'L', 'Y'),
('0045230074', 'M.REZA', 'K09', 'L', 'Y'),
('0045240851', 'EFRI TAMARA', 'K09', 'P', 'Y'),
('0045399427', 'DESI SUSANTI', 'K07', 'P', 'Y'),
('0045479876', 'ABDUL GANI', 'K07', 'L', 'Y'),
('0045479881', 'NOVIA WARDANA', 'K07', 'P', 'Y'),
('0045493248', 'MAWADDAH', 'K08', 'P', 'Y'),
('0045736855', 'RINI SYAHPUTRI', 'K10', 'P', 'Y'),
('0045755376', 'WIDYA PUTRI', 'K07', 'P', 'Y'),
('0046140366', 'WAHYNI  KENARA', 'K05', 'P', 'Y'),
('0046443859', 'JASMAWATI', 'K06', 'P', 'Y'),
('0046826600', 'NANDA PUTRA', 'K07', 'L', 'Y'),
('0046862664', 'HARYANI', 'K05', 'P', 'Y'),
('0047651494', 'REZEKI MAHBENGI', 'K08', 'P', 'Y'),
('0047981341', 'SURIA DARMA', 'K10', 'L', 'Y'),
('0048248653', 'M.BAGAS PRATAMA', 'K07', 'L', 'Y'),
('0048373399', 'HARIS WANDI', 'K10', 'L', 'Y'),
('0048470070', 'NIRFAN DEVI', 'K01', 'L', 'Y'),
('0048716852', 'SULIS PRISTIANI', 'K08', 'P', 'Y'),
('0049305233', 'UMMI SHAKIRA', 'K08', 'P', 'Y'),
('0049475899', 'FATMAWATI', 'K07', 'P', 'Y'),
('0049587521', 'SURIANI', 'K06', 'P', 'Y'),
('0049632626', 'SALWA NOFIANTI', 'K01', 'P', 'Y'),
('0049710046', 'AINA SABELA', 'K06', 'P', 'Y'),
('0050719777', 'EKO SANTOSO', 'K07', 'L', 'Y'),
('0050753978', 'MIFTAHUL RISKI', 'K01', 'L', 'Y'),
('0050779329', 'DIKI ARAMI', 'K08', 'L', 'Y'),
('0050779337', 'MUTIA', 'K06', 'P', 'Y'),
('0050779434', 'ILHAM SYAH', 'K07', 'L', 'Y'),
('0050779443', 'LENA AFRIYANTI', 'K06', 'P', 'Y'),
('0051123177', 'RIZKY FAHMIYUMA', 'K06', 'L', 'Y'),
('0051272697', 'NASYWA', 'K08', 'P', 'Y'),
('0051532619', 'FINA ANISA DARA', 'K03', 'P', 'Y'),
('0051590550', 'KETIARA WARAHMAH', 'K04', 'P', 'Y'),
('0051673008', 'MIRA MAULITA', 'K07', 'P', 'Y'),
('0051969453', 'RAHMAT YASIN', 'K02', 'L', 'Y'),
('0052170107', 'KASNAINI', 'K07', 'P', 'Y'),
('0052440304', 'SALWAN TABRANI', 'K01', 'L', 'Y'),
('0052592515', 'NANDA RAMAZAN', 'K01', 'L', 'Y'),
('0052770424', 'LILIS SUNDARI', 'K06', 'P', 'Y'),
('0052772437', 'HAIKAL ZIKRI', 'K02', 'L', 'Y'),
('0053694919', 'ANIS ALWINA', 'K06', 'P', 'Y'),
('0053729500', 'M.ALFIN RASYA', 'K03', 'L', 'Y'),
('0054026793', 'KELVIN ALFIQRA', 'K02', 'L', 'Y'),
('0054733649', 'KHAIRU SA\'BAN', 'K01', 'L', 'Y'),
('0054748031', 'NADILA', 'K04', 'P', 'Y'),
('0054750443', 'TEUKU FARHAN', 'K01', 'L', 'Y'),
('0055153327', 'JULIANA', 'K03', 'P', 'Y'),
('0055556581', 'FITRIANI', 'K03', 'P', 'Y'),
('0055800912', 'FIRNA DIAZ SYAFIRA', 'K03', 'P', 'Y'),
('0055977276', 'MIKHIAL', 'K06', 'P', 'Y'),
('0056090593', 'ALFI KURNIA RIZKY', 'K01', 'L', 'Y'),
('0056633976', 'NIA RISTI MAHARA', 'K05', 'P', 'Y'),
('0056744040', 'INTAN MAULANA', 'K06', 'P', 'Y'),
('0056779438', 'LAODE DAFFA', 'K06', 'L', 'Y'),
('0056805044', 'ALIMUL HAIBI', 'K02', 'L', 'Y'),
('0057093052', 'ANISAH', 'K04', 'P', 'Y'),
('0057481432', 'SALAMUDDIN', 'K02', 'L', 'Y'),
('0057611145', 'DIRA AMALIA', 'K03', 'P', 'Y'),
('0057694688', 'RISKI', 'K02', 'L', 'Y'),
('0057870649', 'TRI YUSNITA', 'K11', 'P', 'Y'),
('0057875736', 'MITA HARTISA', 'K03', 'P', 'Y'),
('0057946226', 'FERDIANSYAH', 'K08', 'L', 'Y'),
('0058158087', 'SHELA HAMIDAH', 'K05', 'P', 'Y'),
('0058180871', 'DERA NOVIA KRISTIANA', 'K03', 'P', 'Y'),
('0058190026', 'JOHAN AULIA ROBI', 'K02', 'L', 'Y'),
('0058633611', 'ARISMANDRI IRDIANSYAH.K', 'K08', 'L', 'Y'),
('0058816783', 'SUKMA DEWI', 'K08', 'P', 'Y'),
('0059131809', 'MASWANDI', 'K03', 'L', 'Y'),
('0059311857', 'M.AIDIL MURSALIN', 'K07', 'L', 'Y'),
('0059359614', 'AFNA TASYA', 'K03', 'P', 'Y'),
('0059516608', 'MAULIZA FITRI', 'K08', 'P', 'Y'),
('0059800377', 'MUZAIRI', 'K07', 'L', 'Y'),
('0061075650', 'DEA FEBRI YANTI', 'K04', 'P', 'Y'),
('0061300089', 'SUKMA AYU TIARA', 'K02', 'P', 'Y'),
('0061551302', 'RENATA', 'K05', 'L', 'Y'),
('0061578613', 'SYAHRI RAMADHAN', 'K02', 'L', 'Y'),
('0061649862', 'SUHAILANI', 'K03', 'P', 'Y'),
('0061797945', 'JUFRI SAPUTRA', 'K01', 'L', 'Y'),
('0061938871', 'LEO TANUJAYA', 'K01', 'L', 'Y'),
('0062431068', 'ADE NOPITA PUTRI', 'K03', 'P', 'Y'),
('0062622062', 'MULIA DARMA', 'K04', 'L', 'Y'),
('0062694020', 'ALIF MAHYASIN', 'K01', 'L', 'Y'),
('0062862008', 'DARNILA', 'K02', 'P', 'Y'),
('0063060386', 'HESTI PEBRIYANTI', 'K04', 'P', 'Y'),
('0063174920', 'ANGGUN HARCELINA', 'K04', 'P', 'Y'),
('0063238604', 'DERI SUKMA WIJAYA', 'K02', 'L', 'Y'),
('0063894643', 'DHEA YONIVA PUTRI', '#', 'P', 'Y'),
('0064074527', 'NADZIRA BALQIS', 'K05', 'P', 'Y'),
('0064495401', 'SASTRI DALILA', 'K05', 'P', 'Y'),
('0064542311', 'DINDA SUFARA', 'K04', 'P', 'Y'),
('0064679686', 'SRI MAGFIRA', 'K05', 'P', 'Y'),
('0064705369', 'M. ULUL AZMI', 'K03', 'L', 'Y'),
('0064816696', 'ELYIANI', 'K02', 'P', 'Y'),
('0065058368', 'YANSEN CHANDRA', 'K02', 'L', 'Y'),
('0065447767', 'ILHAM ANDIKA', 'K01', 'L', 'Y'),
('0065510497', 'NAZLA MAHARA', 'K01', 'P', 'Y'),
('0065673289', 'MARINA SINANTIN', 'K05', 'P', 'Y'),
('0065928098', 'WILDA NURMAHARA', 'K01', 'P', 'Y'),
('0066311974', 'AMRITA SALINI', 'K02', 'P', 'Y'),
('0066425051', 'RAHMAT KURNIADI', 'K04', 'L', 'Y'),
('0066464094', 'MUHAMMAD RIZKWANSYAH', 'K05', 'L', 'Y'),
('0066632839', 'ALFINA MAWADDAH', 'K04', 'P', 'Y'),
('0066813091', 'LILIK PRIADI SETIAWAN', 'K01', 'L', 'Y'),
('0066833814', 'SITI NUR ANNISA', 'K04', 'P', 'Y'),
('0066968949', 'FITRIA RAMADANI', 'K03', 'P', 'Y'),
('0066992694', 'SELVI MAULIA', 'K05', 'P', 'Y'),
('0067193708', 'ASMAUL HUSNA', 'K01', 'P', 'Y'),
('0067336906', 'IKHSAN MULYADI', 'K01', 'L', 'Y'),
('0067514369', 'REZA SAPUTRA', 'K01', 'L', 'Y'),
('0067590844', 'MASIGIT PRAYUDA', 'K01', 'L', 'Y'),
('0067821656', 'INDAH TIARA', 'K03', 'P', 'Y'),
('0068017035', 'TASYKIA ANANDA', 'K04', 'P', 'Y'),
('0068256134', 'REZA MUHKHLISIN', 'K04', 'L', 'Y'),
('0068377554', 'FIFA ALIDA', 'K04', 'P', 'Y'),
('0068447371', 'RAFI PALEGA', 'K02', 'L', 'Y'),
('0068873018', 'SYIFA NURDIANA', 'K03', 'P', 'Y'),
('0068954902', 'SULVIA DARMINTA', 'K04', 'P', 'Y'),
('0069060832', 'AFRIANI', 'K05', 'P', 'Y'),
('0069210492', 'DIAH UTAMI', 'K02', 'P', 'Y'),
('0069235724', 'ANISA FITRI SIAGIAN', 'K04', 'P', 'Y'),
('0069332639', 'RATNA SARI', 'K03', 'P', 'Y'),
('0069390817', 'HAIRA SELVIANA', 'K05', 'P', 'Y'),
('0069471209', 'DAHRINA ULANDARI', 'K01', 'P', 'Y'),
('0069516874', 'DINDA AULA AZMI', 'K05', 'P', 'Y'),
('0069750437', 'ZASKIA AREISKY', 'K04', 'P', 'Y'),
('0069936150', 'MELISA PUTRI', 'K03', 'P', 'Y'),
('0463769670', 'SITI JANUAR', 'K12', 'P', 'Y'),
('0605976866', 'RISMAYANA PUTRI', 'K12', 'P', 'Y'),
('080289', 'Firdaus', 'K12', 'L', 'Y'),
('107486', 'DONI AGIANO NAINGGOLAN', 'K01', 'L', 'Y'),
('123456', 'Hahmi', 'K12', 'P', 'Y'),
('1234567', 'auria', 'K12', 'P', 'Y'),
('123456789', 'jojo', 'K04', 'L', 'Y'),
('1267', 'badut', 'K12', 'P', 'Y'),
('1535764665', 'RUMAINI', 'K12', 'P', 'Y'),
('1557758659', 'NURHAYATI', 'K12', 'P', 'Y'),
('18435', 'Zulhamsyah', 'K12', 'L', 'Y'),
('190123', 'evi maryanti', 'K12', 'P', 'Y'),
('19611231', 'SALBIAH', 'K12', 'P', 'Y'),
('1961123119', 'SALBIAH', 'K12', 'P', 'Y'),
('19621008', 'DRA WARDAH', 'K12', 'P', 'Y'),
('1962100819', 'DRA WARDAH', 'K12', 'P', 'Y'),
('19621101', 'DRA SURYATI', 'K12', 'P', 'Y'),
('1962110119', 'DRA SURYATI', 'K12', 'P', 'Y'),
('19640806', 'SITI KATIJAH', 'K12', 'P', 'Y'),
('1964080619', 'SITI KATIJAH', 'K12', 'P', 'Y'),
('19650412', 'Nurfidha', 'K12', 'P', 'Y'),
('1965041220', 'Nurfidha', 'K12', 'P', 'Y'),
('19690416', 'BUTET ITAWARI', 'K12', 'P', 'Y'),
('1969041620', 'BUTET ITAWARI', 'K12', 'P', 'Y'),
('19690614', 'Nurkayah Adam', 'K12', 'P', 'Y'),
('1969061419', 'Nurkayah Adam', 'K12', 'P', 'Y'),
('1969062720', 'RAZALI', 'K12', 'L', 'Y'),
('19700321', 'ismadi', '#', 'L', 'Y'),
('19730313', ' Hammaddin', 'K12', 'L', 'Y'),
('1973031320', ' Hammaddin', 'K12', 'L', 'Y'),
('19731512', 'SITI SANISAH', 'K12', 'P', 'Y'),
('19761203', 'TUTI AMALIA', 'K12', 'P', 'Y'),
('1976120320', 'TUTI AMALIA', 'K12', 'P', 'Y'),
('19770208', 'Rudi Darma Putra Rangkuti', 'K12', 'P', 'Y'),
('1977020820', 'Rudi Darma Putra Rangkuti', 'K12', 'L', 'Y'),
('19780715', 'JULIANA', 'K12', 'P', 'Y'),
('1978071520', 'JULIANA SPD', 'K12', 'P', 'Y'),
('19780720', ' Ijmayati AlI', 'K12', 'P', 'Y'),
('1978072020', ' Ijmayati AlI', 'K12', 'P', 'Y'),
('19790817', 'Armi Ultari', 'K12', 'P', 'Y'),
('1979081720', 'Armi Ultari', 'K12', 'P', 'Y'),
('19801012', 'Muriya Ningrum', 'K12', 'P', 'Y'),
('1980101220', 'Muriya Ningrum', 'K12', 'P', 'Y'),
('19810422', 'Eriya Putri', 'K12', 'P', 'Y'),
('1981042220', 'Eriya Putri', 'K12', 'P', 'Y'),
('19820202', 'HERIANA', 'K12', 'P', 'Y'),
('1982020220', 'HERIANA', 'K12', 'P', 'Y'),
('19830616', 'Zulhamsyah', 'K12', 'L', 'Y'),
('1983071620', 'Zulhamsyah', 'K12', 'L', 'Y'),
('19840923', 'kusnaini', 'K12', 'P', 'Y'),
('19860303', 'Amna Sari A.Rasyidi', 'K12', 'P', 'Y'),
('19860703', 'RUMAINI', 'K12', 'P', 'Y'),
('19890802', 'Firdaus', 'K12', 'P', 'Y'),
('19900727', 'RISMAYANA PUTRI', 'K12', 'P', 'Y'),
('19901110', 'Nova Diani Pinte Nine', 'K12', 'P', 'Y'),
('19910131', 'SITI JANUAR', 'K12', 'P', 'Y'),
('199524', 'Sulaiman Panji', 'K12', 'L', 'Y'),
('199802', 'sasmsul hudaya', 'K12', 'L', 'Y'),
('212121', 'DONI AGIANO NAINGGOLAN', 'K01', 'L', 'Y'),
('2373', 'MURNI SELVANI', 'K09', 'P', 'Y'),
('240495', 'Sulaiman Panji', 'K12', 'L', 'Y'),
('257675', 'harmita', '#', 'P', 'Y'),
('2948766667', 'MULYADI', 'K12', 'L', 'Y'),
('3039001077', 'BAMBANG SAHPUTRA', 'K06', 'L', 'Y'),
('3053102924', 'PUTRI SIMAHARANI', 'K06', 'P', 'Y'),
('3634', 'DEWIN QADRI', 'K11', 'L', 'Y'),
('3648', 'EGO', 'K10', 'L', 'Y'),
('3682', 'HARMITA', 'K06', 'P', 'Y'),
('368475', 'NAZLA MAHARA', 'K01', 'P', 'Y'),
('3739', 'MURNI SELVANI', 'K09', 'P', 'Y'),
('3743', 'DHEA YONIVA PUTRI', 'K03', 'P', 'Y'),
('3757', 'NADIA FITRI', 'K05', 'P', 'Y'),
('3817', 'GALISHA FARADILA', 'K04', 'P', 'Y'),
('3830', 'SUDIA FIKRI', 'K01', 'L', 'Y'),
('3831', 'DONI AGIANO NAINGGOLAN', 'K01', 'L', 'Y'),
('44013848', 'SIGIT NANDA PRATAMA', 'K10', 'L', 'Y'),
('4442768669', 'Nova Diani Pinte Nine', 'K12', 'P', 'Y'),
('56789', 'sudarsono', 'K12', 'L', 'Y'),
('56790', 'rasidah', 'K12', 'P', 'Y'),
('643572', 'ERA FAZIRA', 'K09', 'P', 'Y'),
('654000', 'mulia gustian', 'K03', 'L', 'Y'),
('734526', 'GALISHA FARADILA', 'K04', 'P', 'Y'),
('84273', 'ego', 'K10', 'L', 'Y'),
('954573', 'sigit nanda', 'K12', 'L', 'Y'),
('9635764665', 'Amna Sari A.Rasyidi', 'K12', 'P', 'Y'),
('9857759661', 'MahyunI', 'K12', 'P', 'Y');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `t_admin`
--
ALTER TABLE `t_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `t_kandidat`
--
ALTER TABLE `t_kandidat`
  ADD PRIMARY KEY (`id_kandidat`);

--
-- Indeks untuk tabel `t_kelas`
--
ALTER TABLE `t_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `t_admin`
--
ALTER TABLE `t_admin`
  MODIFY `id_admin` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `t_kandidat`
--
ALTER TABLE `t_kandidat`
  MODIFY `id_kandidat` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
