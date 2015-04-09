-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Apr 07, 2015 at 12:51 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `sisak`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `tb_coa`
-- 

CREATE TABLE `tb_coa` (
  `id` int(3) NOT NULL auto_increment,
  `nomor` varchar(15) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `parent` varchar(15) NOT NULL,
  `tingkat` int(1) NOT NULL,
  `klarifikasi` int(3) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=134 ;

-- 
-- Dumping data for table `tb_coa`
-- 

INSERT INTO `tb_coa` VALUES (1, '111', 'Kas', '', 1, 1);
INSERT INTO `tb_coa` VALUES (2, '111.01', 'Kas Besar', '111', 2, 1);
INSERT INTO `tb_coa` VALUES (3, '111.02', 'Kas Kecil', '111', 2, 1);
INSERT INTO `tb_coa` VALUES (4, '112', 'Bank', '', 1, 1);
INSERT INTO `tb_coa` VALUES (5, '112.01', 'BNI (No. Rek : 8578589168)', '112', 2, 1);
INSERT INTO `tb_coa` VALUES (6, '112.02', 'BCA (No. Rek : 836 009 279 9)', '112', 2, 1);
INSERT INTO `tb_coa` VALUES (7, '112.03', 'BTN (No. Rek : 010060130 000016 3)', '112', 2, 1);
INSERT INTO `tb_coa` VALUES (8, '112.04', 'BANK MANDIRI (No. Rek : 135-00-0030030-9)', '112', 2, 1);
INSERT INTO `tb_coa` VALUES (9, '112.05', 'BRI 308', '112', 2, 1);
INSERT INTO `tb_coa` VALUES (10, '112.06', 'BANK MANDIRI 5000', '112', 2, 1);
INSERT INTO `tb_coa` VALUES (11, '113', 'Piutang Usaha', '', 1, 2);
INSERT INTO `tb_coa` VALUES (12, '113.01', 'Piutang Usaha', '113', 2, 2);
INSERT INTO `tb_coa` VALUES (13, '117', 'Piutang Pemegang Saham', '', 1, 2);
INSERT INTO `tb_coa` VALUES (14, '118', 'Piutang Lain-lain', '', 1, 2);
INSERT INTO `tb_coa` VALUES (15, '119', 'Persediaan Barang', '', 1, 3);
INSERT INTO `tb_coa` VALUES (16, '119.01', 'Persediaan Apartement', '119', 2, 3);
INSERT INTO `tb_coa` VALUES (17, '120', 'WIP', '', 1, 4);
INSERT INTO `tb_coa` VALUES (18, '120.01', 'Apartement, Diponegoro 38A', '120', 2, 4);
INSERT INTO `tb_coa` VALUES (19, '120.01.01', 'Tanah Apartement Diponegoro 38A', '120.01', 3, 4);
INSERT INTO `tb_coa` VALUES (20, '120.01.02', 'Bangunan Apartement Diponegoro 38A', '120.01', 3, 4);
INSERT INTO `tb_coa` VALUES (21, '120.02', 'Hotel, Diponegoro 24 B', '120', 2, 4);
INSERT INTO `tb_coa` VALUES (22, '120.02.01', 'Tanah Hotel, Diponegoro 24B', '120.02', 3, 4);
INSERT INTO `tb_coa` VALUES (23, '120.02.02', 'Bangunan Hotel Diponegoro 24B', '120.02', 3, 4);
INSERT INTO `tb_coa` VALUES (24, '122', 'Biaya Dibayar Dimuka', '', 1, 4);
INSERT INTO `tb_coa` VALUES (25, '122.01', 'Sewa Bangunan Jl. Pandanaran no. 48', '122', 2, 4);
INSERT INTO `tb_coa` VALUES (26, '122.02', 'Sewa Bangunan Jl. Diponegoro no. 34', '122', 2, 4);
INSERT INTO `tb_coa` VALUES (27, '122.10', 'Biaya Dibayar Dimuka Lain-lain', '122', 2, 4);
INSERT INTO `tb_coa` VALUES (28, '123', 'Pajak Dibayar Dimuka', '', 1, 4);
INSERT INTO `tb_coa` VALUES (29, '123.01', 'PPN', '123', 2, 4);
INSERT INTO `tb_coa` VALUES (30, '123.02', 'PPh Final', '123', 2, 4);
INSERT INTO `tb_coa` VALUES (31, '123.03', 'PPh 3%', '123', 2, 4);
INSERT INTO `tb_coa` VALUES (32, '124', 'Beban Pra Usaha', '', 1, 4);
INSERT INTO `tb_coa` VALUES (33, '124.01', 'Beban Pra Usaha Apartement', '124', 2, 4);
INSERT INTO `tb_coa` VALUES (34, '124.01.01', 'Beban Pra Usaha Beban Umum dan Administrasi', '124.01', 3, 4);
INSERT INTO `tb_coa` VALUES (35, '124.01.01.01', 'Beban Pra Usaha Gaji', '124.01.01', 4, 4);
INSERT INTO `tb_coa` VALUES (36, '124.01.01.02', 'Beban Pra Usaha Notaris', '124.01.01', 4, 4);
INSERT INTO `tb_coa` VALUES (37, '124.01.01.03', 'Beban Pra Usaha APHT', '124.01.01', 4, 4);
INSERT INTO `tb_coa` VALUES (38, '124.01.01.04', 'Beban Pra Usaha IMB dan Perijinan', '124.01.01', 4, 4);
INSERT INTO `tb_coa` VALUES (39, '124.01.01.05', 'Beban Pra Usaha Iuran', '124.01.01', 4, 4);
INSERT INTO `tb_coa` VALUES (40, '124.01.01.06', 'Beban Pra Usaha Administrasi Kantor', '124.01.01', 4, 4);
INSERT INTO `tb_coa` VALUES (41, '124.01.01.07', 'Beban Pra Usaha Sewa Kantor', '124.01.01', 4, 4);
INSERT INTO `tb_coa` VALUES (42, '124.01.01.08', 'Beban Pra Usaha Keperluan Kendaraan', '124.01.01', 4, 4);
INSERT INTO `tb_coa` VALUES (43, '124.01.01.09', 'Beban Pra Usaha Kesejahteraan Karyawan', '124.01.01', 4, 4);
INSERT INTO `tb_coa` VALUES (44, '124.01.01.10', 'Beban Pra Usaha Pemeliharaan Kantor dan Inventaris', '124.01.01', 4, 4);
INSERT INTO `tb_coa` VALUES (45, '124.01.01.11', 'Beban Pra Usaha Pemeliharaan Telepon, Fax, Interne', '124.01.01', 4, 4);
INSERT INTO `tb_coa` VALUES (46, '124.01.01.12', 'Beban Pra Usaha Listrik', '124.01.01', 4, 4);
INSERT INTO `tb_coa` VALUES (47, '124.01.01.13', 'Beban Pra Usaha Air', '124.01.01', 4, 4);
INSERT INTO `tb_coa` VALUES (48, '124.01.01.14', 'Beban Pra Usaha Perjalanan Dinas', '124.01.01', 4, 4);
INSERT INTO `tb_coa` VALUES (49, '124.01.01.15', 'Beban Pra Usaha PPh 21', '124.01.01', 4, 4);
INSERT INTO `tb_coa` VALUES (50, '124.01.01.16', 'Beban Pra Usaha Penyusutan', '124.01.01', 4, 4);
INSERT INTO `tb_coa` VALUES (51, '124.01.01.25', 'Beban Pra Usaha Lain-lain', '124.01.01', 4, 4);
INSERT INTO `tb_coa` VALUES (52, '124.01.02', 'Beban Pra Usaha Pemasaran', '124.01', 3, 4);
INSERT INTO `tb_coa` VALUES (53, '124.01.02.01', 'Beban Pra Usaha Promosi', '124.01.02', 4, 4);
INSERT INTO `tb_coa` VALUES (54, '124.01.02.01', 'Beban Pra Usaha Komisi', '124.01.02', 4, 4);
INSERT INTO `tb_coa` VALUES (55, '124.01.03', 'Beban Pra Usaha Pendapatan Luar Usaha', '124.01', 3, 4);
INSERT INTO `tb_coa` VALUES (56, '124.01.03.01', 'Beban Pra Usaha Pendapatan Luar Usaha Jasa Giro', '124.01.03', 4, 4);
INSERT INTO `tb_coa` VALUES (57, '124.01.03.10', 'Beban Pra Usaha Pendapatan Luar Usaha Lain-lain', '124.01.03', 4, 4);
INSERT INTO `tb_coa` VALUES (58, '124.01.04', 'Beban Pra Usaha Beban Luar Usaha', '124.01', 3, 4);
INSERT INTO `tb_coa` VALUES (59, '124.01.04.01', 'Beban Pra Usaha Beban Luar Usaha Pajak Atas Bunga ', '124.01.04', 4, 4);
INSERT INTO `tb_coa` VALUES (60, '124.01.04.02', 'Beban Pra Usaha Beban Luar Usaha Biaya Bunga Bank', '124.01.04', 4, 4);
INSERT INTO `tb_coa` VALUES (61, '124.01.04.03', 'Beban Pra Usaha Beban Luar Usaha Biaya Provisi', '124.01.04', 4, 4);
INSERT INTO `tb_coa` VALUES (62, '124.01.04.10', 'Beban Pra Usaha Beban Luar Usaha Lain-lain', '124.01.04', 4, 4);
INSERT INTO `tb_coa` VALUES (63, '124.02', 'Beban Pra Usaha Hotel', '124', 2, 4);
INSERT INTO `tb_coa` VALUES (64, '211', 'Aset Tetap', '', 1, 5);
INSERT INTO `tb_coa` VALUES (65, '211.01', 'Tanah', '211', 2, 5);
INSERT INTO `tb_coa` VALUES (66, '211.02', 'Bangunan', '211', 2, 5);
INSERT INTO `tb_coa` VALUES (67, '211.03', 'Inventaris Kantor', '211', 2, 5);
INSERT INTO `tb_coa` VALUES (68, '211.04', 'Kendaraan', '211', 2, 5);
INSERT INTO `tb_coa` VALUES (69, '212', 'Akumulasi Penyusutan Aset Tetap', '', 1, 5);
INSERT INTO `tb_coa` VALUES (70, '212.02', 'Bangunan', '212', 2, 5);
INSERT INTO `tb_coa` VALUES (71, '212.03', 'Inventaris Kantor', '212', 2, 5);
INSERT INTO `tb_coa` VALUES (72, '212.04', 'Kendaraan', '212', 2, 5);
INSERT INTO `tb_coa` VALUES (73, '311', 'Hutang Usaha', '', 1, 6);
INSERT INTO `tb_coa` VALUES (74, '311.01', 'Hutang Usaha', '311', 2, 6);
INSERT INTO `tb_coa` VALUES (75, '312', 'Hutang Biaya', '', 1, 6);
INSERT INTO `tb_coa` VALUES (76, '312.01', 'Hutang Biaya Listrik', '312', 2, 6);
INSERT INTO `tb_coa` VALUES (77, '312.02', 'Hutang Biaya Air', '312', 2, 6);
INSERT INTO `tb_coa` VALUES (78, '312.03', 'Hutang Biaya Telepon', '312', 2, 6);
INSERT INTO `tb_coa` VALUES (79, '312.04', 'Hutang Biaya Bunga Bank', '312', 2, 6);
INSERT INTO `tb_coa` VALUES (80, '313', 'Hutang Pemegang Saham', '', 1, 6);
INSERT INTO `tb_coa` VALUES (81, '314', 'Hutang Pajak', '', 1, 6);
INSERT INTO `tb_coa` VALUES (82, '314.01', 'Hutang Pajak PPh 21', '314', 2, 6);
INSERT INTO `tb_coa` VALUES (83, '314.02', 'Hutang Pajak Pasal 4 Ayat 2', '314', 2, 6);
INSERT INTO `tb_coa` VALUES (84, '314.03', 'Hutang PPN Keluaran', '314', 2, 6);
INSERT INTO `tb_coa` VALUES (85, '314.04', 'Hutang Pajak PPh Pasal 23', '314', 2, 6);
INSERT INTO `tb_coa` VALUES (86, '317', 'Hutang Lain-lain', '', 1, 6);
INSERT INTO `tb_coa` VALUES (87, '317.01', 'Hutang Karyawan', '317', 2, 6);
INSERT INTO `tb_coa` VALUES (88, '317.02', 'Hutang lain-lain', '317', 2, 6);
INSERT INTO `tb_coa` VALUES (89, '318', 'Hutang Uang Muka Penjualan', '', 1, 6);
INSERT INTO `tb_coa` VALUES (90, '319', 'Hutang Uang Muka Lain-lain', '', 1, 6);
INSERT INTO `tb_coa` VALUES (91, '320', 'Hutang Bank', '', 1, 7);
INSERT INTO `tb_coa` VALUES (92, '320.01', 'Hutang BTN', '320', 2, 7);
INSERT INTO `tb_coa` VALUES (93, '320.02', 'Hutang BNI', '320', 2, 7);
INSERT INTO `tb_coa` VALUES (94, '321', 'Hutang Pihak Ketiga', '', 1, 7);
INSERT INTO `tb_coa` VALUES (95, '411', 'Modal Disetor', '', 1, 8);
INSERT INTO `tb_coa` VALUES (96, '412', 'Laba (Rugi) Ditahan', '', 1, 8);
INSERT INTO `tb_coa` VALUES (97, '413', 'Laba (Rugi) ', '', 1, 8);
INSERT INTO `tb_coa` VALUES (98, '511', 'Pendapatan', '', 1, 9);
INSERT INTO `tb_coa` VALUES (99, '511.01', 'Penjualan Apartement', '511', 2, 9);
INSERT INTO `tb_coa` VALUES (100, '511.02', 'Pendapatan Jasa', '511', 2, 9);
INSERT INTO `tb_coa` VALUES (101, '611', 'Beban Pokok Penjualan', '', 1, 10);
INSERT INTO `tb_coa` VALUES (102, '611.01', 'Beban Pokok Penjualan', '611', 2, 10);
INSERT INTO `tb_coa` VALUES (103, '711', 'Beban Administrasi dan Umum', '', 1, 10);
INSERT INTO `tb_coa` VALUES (104, '711.01', 'Beban Gaji', '711', 2, 10);
INSERT INTO `tb_coa` VALUES (105, '711.02', 'Beban Notaris', '711', 2, 10);
INSERT INTO `tb_coa` VALUES (106, '711.03', 'Beban APHT', '711', 2, 10);
INSERT INTO `tb_coa` VALUES (107, '711.04', 'Beban IMB dan Perijinan', '711', 2, 10);
INSERT INTO `tb_coa` VALUES (108, '711.05', 'Beban Iuran', '711', 2, 10);
INSERT INTO `tb_coa` VALUES (109, '711.06', 'Beban Administrasi Kantor', '711', 2, 10);
INSERT INTO `tb_coa` VALUES (110, '711.07', 'Beban Sewa Kantor', '711', 2, 10);
INSERT INTO `tb_coa` VALUES (111, '711.08', 'Beban Keperluan Kendaraan', '711', 2, 10);
INSERT INTO `tb_coa` VALUES (112, '711.09', 'Beban Kesejahteraan Karyawan', '711', 2, 10);
INSERT INTO `tb_coa` VALUES (113, '711.10', 'Beban Pemeliharaan Kantor dan Inventaris Kantor', '711', 2, 10);
INSERT INTO `tb_coa` VALUES (114, '711.11', 'Beban Telepon, Fax, Internet', '711', 2, 10);
INSERT INTO `tb_coa` VALUES (115, '711.12', 'Beban Listrik', '711', 2, 10);
INSERT INTO `tb_coa` VALUES (116, '711.13', 'Beban Air', '711', 2, 10);
INSERT INTO `tb_coa` VALUES (117, '711.14', 'Beban Perjalanan Dinas', '711', 2, 10);
INSERT INTO `tb_coa` VALUES (118, '711.15', 'Beban PPh 21', '711', 2, 10);
INSERT INTO `tb_coa` VALUES (119, '711.16', 'Beban Penyusutan', '711', 2, 10);
INSERT INTO `tb_coa` VALUES (120, '711.25', 'Beban Lain-lain', '711', 2, 10);
INSERT INTO `tb_coa` VALUES (121, '712.', 'Beban Pemasaran', '', 1, 10);
INSERT INTO `tb_coa` VALUES (122, '712.01', 'Beban Promosi', '712.', 2, 10);
INSERT INTO `tb_coa` VALUES (123, '712.02', 'Beban Komisi', '712.', 2, 10);
INSERT INTO `tb_coa` VALUES (124, '714', 'Pendapatan Luar Usaha', '', 1, 9);
INSERT INTO `tb_coa` VALUES (125, '714.01', 'Pendapatan Luar Usaha Jasa Giro', '714', 2, 9);
INSERT INTO `tb_coa` VALUES (126, '714.10', 'Pendapatan Luar Usaha Lain-lain', '714', 2, 9);
INSERT INTO `tb_coa` VALUES (127, '715', 'Beban Luar Usaha', '', 1, 10);
INSERT INTO `tb_coa` VALUES (128, '715.01', 'Beban Luar Usaha Pajak Atas Bunga Bank', '715', 2, 10);
INSERT INTO `tb_coa` VALUES (129, '715.02', 'Beban Luar Usaha Biaya Bunga Bank', '715', 2, 10);
INSERT INTO `tb_coa` VALUES (130, '715.03', 'Beban Luar Usaha Biaya Provisi', '715', 2, 10);
INSERT INTO `tb_coa` VALUES (131, '715.10', 'Beban Luar Usaha Lain-lain', '715', 2, 10);

-- --------------------------------------------------------

-- 
-- Table structure for table `tb_dedi`
-- 

CREATE TABLE `tb_dedi` (
  `id` int(10) NOT NULL auto_increment,
  `jenis_trans` int(5) NOT NULL,
  `buku` varchar(20) NOT NULL,
  `tipe` int(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

-- 
-- Dumping data for table `tb_dedi`
-- 

INSERT INTO `tb_dedi` VALUES (1, 1, '111', 1);
INSERT INTO `tb_dedi` VALUES (2, 1, '112.01', 1);
INSERT INTO `tb_dedi` VALUES (3, 1, '111.02', 2);
INSERT INTO `tb_dedi` VALUES (4, 1, '112.02', 2);
INSERT INTO `tb_dedi` VALUES (5, 2, '112.02', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `tb_jenis_transaksi`
-- 

CREATE TABLE `tb_jenis_transaksi` (
  `id` int(11) NOT NULL auto_increment,
  `nama` varchar(200) character set utf8 default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `tb_jenis_transaksi`
-- 

INSERT INTO `tb_jenis_transaksi` VALUES (1, 'Pengeluaran Tunai');
INSERT INTO `tb_jenis_transaksi` VALUES (2, 'Pengeluaran Non Tunai');

-- --------------------------------------------------------

-- 
-- Table structure for table `tb_karyawan`
-- 

CREATE TABLE `tb_karyawan` (
  `id` int(5) NOT NULL auto_increment,
  `nama` varchar(25) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `hp` varchar(15) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

-- 
-- Dumping data for table `tb_karyawan`
-- 

INSERT INTO `tb_karyawan` VALUES (5, 'Amran Yobioktabera', 'Perul Dolog Pasadena No.106', '085640202763');
INSERT INTO `tb_karyawan` VALUES (28, 'Administrator Megatama', 'jl.singosari', '081');
INSERT INTO `tb_karyawan` VALUES (30, 'Nur Annisa Ariyani', 'Tlogo RT 001/RW 008 Pucang Gading Semarang', '089667964137');

-- --------------------------------------------------------

-- 
-- Table structure for table `tb_klarifikasi`
-- 

CREATE TABLE `tb_klarifikasi` (
  `id` int(3) NOT NULL auto_increment,
  `nama` varchar(50) NOT NULL,
  `sub` int(1) NOT NULL,
  `tipe` int(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `tb_klarifikasi`
-- 

INSERT INTO `tb_klarifikasi` VALUES (1, 'Kas dan Setara Kas', 1, 1);
INSERT INTO `tb_klarifikasi` VALUES (2, 'Piutang', 1, 1);
INSERT INTO `tb_klarifikasi` VALUES (3, 'Persediaan', 1, 1);
INSERT INTO `tb_klarifikasi` VALUES (4, 'Aktiva Lancar Lainnya', 1, 1);
INSERT INTO `tb_klarifikasi` VALUES (5, 'Aset Tetap', 1, 1);
INSERT INTO `tb_klarifikasi` VALUES (6, 'Hutang Lancar', 2, 1);
INSERT INTO `tb_klarifikasi` VALUES (7, 'Hutang Jangka Panjang', 2, 1);
INSERT INTO `tb_klarifikasi` VALUES (8, 'Ekuitas', 3, 1);
INSERT INTO `tb_klarifikasi` VALUES (9, 'Pendapatan', 4, 2);
INSERT INTO `tb_klarifikasi` VALUES (10, 'Beban', 5, 2);

-- --------------------------------------------------------

-- 
-- Table structure for table `tb_tanggal`
-- 

CREATE TABLE `tb_tanggal` (
  `id_tgl` int(5) NOT NULL auto_increment,
  `tgl` varchar(25) NOT NULL,
  `s_id` int(5) NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY  (`id_tgl`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=166 ;

-- 
-- Dumping data for table `tb_tanggal`
-- 

INSERT INTO `tb_tanggal` VALUES (1, '2014-03-29', 35, 0);
INSERT INTO `tb_tanggal` VALUES (2, '2014-03-29', 35, 0);
INSERT INTO `tb_tanggal` VALUES (3, '2014-04-16', 35, 0);
INSERT INTO `tb_tanggal` VALUES (4, '2014-05-02', 35, 0);
INSERT INTO `tb_tanggal` VALUES (5, '2014-04-30', 35, 0);
INSERT INTO `tb_tanggal` VALUES (6, '2014-04-30', 35, 0);
INSERT INTO `tb_tanggal` VALUES (7, '2014-04-30', 35, 0);
INSERT INTO `tb_tanggal` VALUES (8, '2014-05-09', 37, 0);
INSERT INTO `tb_tanggal` VALUES (9, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (10, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (11, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (12, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (13, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (14, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (15, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (16, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (17, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (18, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (19, '5-10-4--20', 37, 0);
INSERT INTO `tb_tanggal` VALUES (20, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (21, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (22, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (23, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (24, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (25, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (26, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (27, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (28, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (29, '5-10-4--20', 37, 0);
INSERT INTO `tb_tanggal` VALUES (30, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (31, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (32, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (33, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (34, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (35, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (36, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (37, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (38, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (39, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (40, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (41, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (43, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (44, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (45, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (46, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (47, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (49, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (50, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (51, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (52, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (53, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (54, '2014-05-10', 37, 0);
INSERT INTO `tb_tanggal` VALUES (56, '2014-05-19', 37, 0);
INSERT INTO `tb_tanggal` VALUES (57, '2014-05-19', 37, 0);
INSERT INTO `tb_tanggal` VALUES (58, '5-19-4--20', 37, 0);
INSERT INTO `tb_tanggal` VALUES (59, '2014-05-19', 37, 0);
INSERT INTO `tb_tanggal` VALUES (60, '2014-05-19', 37, 0);
INSERT INTO `tb_tanggal` VALUES (61, '2014-05-19', 37, 0);
INSERT INTO `tb_tanggal` VALUES (62, '2014-05-19', 37, 0);
INSERT INTO `tb_tanggal` VALUES (63, '2014-05-31', 35, 0);
INSERT INTO `tb_tanggal` VALUES (64, '2014-05-31', 37, 0);
INSERT INTO `tb_tanggal` VALUES (65, '2014-05-31', 37, 0);
INSERT INTO `tb_tanggal` VALUES (66, '2014-05-31', 37, 0);
INSERT INTO `tb_tanggal` VALUES (67, '2014-05-31', 37, 0);
INSERT INTO `tb_tanggal` VALUES (68, '2014-05-31', 37, 0);
INSERT INTO `tb_tanggal` VALUES (69, '2014-05-31', 37, 0);
INSERT INTO `tb_tanggal` VALUES (70, '2014-05-31', 37, 0);
INSERT INTO `tb_tanggal` VALUES (71, '2014-05-31', 37, 0);
INSERT INTO `tb_tanggal` VALUES (72, '2014-05-31', 37, 0);
INSERT INTO `tb_tanggal` VALUES (73, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (74, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (75, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (76, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (77, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (78, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (79, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (80, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (81, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (82, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (83, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (84, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (85, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (86, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (87, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (88, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (89, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (90, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (91, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (92, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (93, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (94, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (95, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (96, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (97, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (98, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (99, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (100, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (101, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (102, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (103, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (104, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (105, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (106, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (107, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (108, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (109, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (110, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (111, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (112, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (113, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (114, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (115, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (116, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (117, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (118, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (119, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (120, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (121, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (122, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (123, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (124, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (125, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (126, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (127, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (128, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (129, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (130, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (131, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (132, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (133, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (134, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (135, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (136, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (137, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (138, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (139, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (140, '2014-06-02', 37, 0);
INSERT INTO `tb_tanggal` VALUES (141, '2014-07-03', 37, 0);
INSERT INTO `tb_tanggal` VALUES (142, '2014-07-03', 37, 0);
INSERT INTO `tb_tanggal` VALUES (143, '2014-07-03', 37, 0);
INSERT INTO `tb_tanggal` VALUES (144, '2014-07-03', 37, 0);
INSERT INTO `tb_tanggal` VALUES (145, '2014-07-03', 37, 0);
INSERT INTO `tb_tanggal` VALUES (146, '2014-07-03', 37, 0);
INSERT INTO `tb_tanggal` VALUES (147, '2014-07-03', 37, 0);
INSERT INTO `tb_tanggal` VALUES (148, '2014-12-15', 35, 0);
INSERT INTO `tb_tanggal` VALUES (151, '2015-03-06', 35, 0);
INSERT INTO `tb_tanggal` VALUES (152, '2015-03-06', 35, 0);
INSERT INTO `tb_tanggal` VALUES (155, '2015-03-10', 35, 0);
INSERT INTO `tb_tanggal` VALUES (156, '3-10-5--20', 35, 0);
INSERT INTO `tb_tanggal` VALUES (157, '2015-03-10', 35, 0);
INSERT INTO `tb_tanggal` VALUES (158, '2015-03-10', 35, 0);
INSERT INTO `tb_tanggal` VALUES (159, '2015-03-10', 35, 0);
INSERT INTO `tb_tanggal` VALUES (160, '2015-03-10', 35, 0);
INSERT INTO `tb_tanggal` VALUES (161, '3-10-5--20', 35, 0);
INSERT INTO `tb_tanggal` VALUES (162, '2015-03-10', 35, 0);
INSERT INTO `tb_tanggal` VALUES (163, '2015-03-10', 35, 0);
INSERT INTO `tb_tanggal` VALUES (164, '2015-03-10', 35, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `tb_transaksi`
-- 

CREATE TABLE `tb_transaksi` (
  `id` int(10) NOT NULL auto_increment,
  `transaksi` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `nominal` double NOT NULL,
  `urut` int(3) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- 
-- Dumping data for table `tb_transaksi`
-- 

INSERT INTO `tb_transaksi` VALUES (8, 2, '2015-04-07', 'Percobaan kesekian kali', 500000, 6);
INSERT INTO `tb_transaksi` VALUES (2, 1, '2015-04-07', 'Percobaan 2', 500000, 2);
INSERT INTO `tb_transaksi` VALUES (4, 2, '2015-04-09', 'non tunai 2x', 900000, 4);
INSERT INTO `tb_transaksi` VALUES (5, 1, '2015-04-07', 'Percobaan 3', 400000, 3);
INSERT INTO `tb_transaksi` VALUES (6, 1, '2015-04-07', 'Percobaan 4', 300000, 4);
INSERT INTO `tb_transaksi` VALUES (7, 2, '2015-04-08', 'Percobaan 38', 800000, 5);

-- --------------------------------------------------------

-- 
-- Table structure for table `tb_user`
-- 

CREATE TABLE `tb_user` (
  `id_user` int(5) NOT NULL auto_increment,
  `nama` varchar(20) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` int(1) NOT NULL,
  `waktu` datetime NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY  (`id_user`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

-- 
-- Dumping data for table `tb_user`
-- 

INSERT INTO `tb_user` VALUES (37, '30', 'Annisa', '2cae57c3ddc4a8e3e204593b4ba14ff3', 2, '0000-00-00 00:00:00', 1);
INSERT INTO `tb_user` VALUES (8, '5', 'amrano', '21232f297a57a5a743894a0e4a801fc3', 1, '0000-00-00 00:00:00', 1);
INSERT INTO `tb_user` VALUES (34, '28', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, '0000-00-00 00:00:00', 1);
INSERT INTO `tb_user` VALUES (35, '28', 'tikasir', 'c7911af3adbd12a035b289556d96470a', 2, '0000-00-00 00:00:00', 1);
