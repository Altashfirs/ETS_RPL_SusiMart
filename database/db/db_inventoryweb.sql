/*
SQLyog Professional
MySQL - 10.4.22-MariaDB : Database - db_rpl_sps
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_rpl_sps` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_rpl_sps`;

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2019_08_19_000000_create_failed_jobs_table',1),
(2,'2019_12_14_000001_create_personal_access_tokens_table',1),
(3,'2022_10_31_061811_create_menu_table',1),
(4,'2022_11_01_041110_create_table_role',1),
(5,'2022_11_01_083314_create_table_user',1),
(6,'2022_11_03_023905_create_table_submenu',1),
(7,'2022_11_03_064417_create_tbl_akses',1),
(8,'2022_11_08_024215_create_tbl_web',1),
(9,'2022_11_15_131148_create_tbl_jenisbarang',2),
(10,'2022_11_15_173700_create_tbl_satuan',3),
(11,'2022_11_15_180434_create_tbl_merk',4),
(12,'2022_11_16_120018_create_tbl_appreance',5),
(13,'2022_11_25_141731_create_tbl_barang',6),
(14,'2022_11_26_011349_create_tbl_customer',7),
(16,'2022_11_28_151108_create_tbl_barangmasuk',8),
(17,'2022_11_30_115904_create_tbl_barangkeluar',9);

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

/*Table structure for table `tbl_akses` */

DROP TABLE IF EXISTS `tbl_akses`;

CREATE TABLE `tbl_akses` (
  `akses_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submenu_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `othermenu_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akses_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`akses_id`)
) ENGINE=InnoDB AUTO_INCREMENT=568 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Table structure for table `tbl_appreance` */

DROP TABLE IF EXISTS `tbl_appreance`;

CREATE TABLE `tbl_appreance` (
  `appreance_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `appreance_layout` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appreance_theme` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appreance_menu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appreance_header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appreance_sidestyle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`appreance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tbl_appreance` */

insert  into `tbl_appreance`(`appreance_id`,`user_id`,`appreance_layout`,`appreance_theme`,`appreance_menu`,`appreance_header`,`appreance_sidestyle`,`created_at`,`updated_at`) values 
(2,'1','sidebar-mini','light-mode','light-menu','header-light','default-menu','2022-11-22 09:45:47','2022-11-24 13:00:20');

/*Table structure for table `tbl_barang` */

DROP TABLE IF EXISTS `tbl_barang`;

CREATE TABLE `tbl_barang` (
  `barang_id` int(255) NOT NULL AUTO_INCREMENT,
  `jenisbarang_id` varchar(255) DEFAULT NULL,
  `satuan_id` varchar(255) DEFAULT NULL,
  `merk_id` varchar(255) DEFAULT NULL,
  `barang_kode` varchar(255) NOT NULL,
  `barang_nama` varchar(255) NOT NULL,
  `barang_slug` varchar(255) DEFAULT NULL,
  `barang_harga` varchar(255) NOT NULL,
  `barang_stok` varchar(255) NOT NULL,
  `barang_gambar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`barang_id`,`barang_kode`,`barang_nama`,`barang_harga`,`barang_stok`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;


/*Table structure for table `tbl_barangkeluar` */

DROP TABLE IF EXISTS `tbl_barangkeluar`;

CREATE TABLE `tbl_barangkeluar` (
  `bk_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bk_kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barang_kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bk_tanggal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bk_tujuan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bk_jumlah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`bk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Table structure for table `tbl_barangmasuk` */

DROP TABLE IF EXISTS `tbl_barangmasuk`;

CREATE TABLE `tbl_barangmasuk` (
  `bm_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bm_kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barang_kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bm_tanggal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bm_jumlah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`bm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


/*Table structure for table `tbl_customer` */

DROP TABLE IF EXISTS `tbl_customer`;

CREATE TABLE `tbl_customer` (
  `customer_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_notelp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Table structure for table `tbl_jenisbarang` */

DROP TABLE IF EXISTS `tbl_jenisbarang`;

CREATE TABLE `tbl_jenisbarang` (
  `jenisbarang_id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `jenisbarang_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenisbarang_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenisbarang_ket` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`jenisbarang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Table structure for table `tbl_menu` */

DROP TABLE IF EXISTS `tbl_menu`;

CREATE TABLE `tbl_menu` (
  `menu_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_redirect` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_sort` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1669390642 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tbl_menu` */

insert  into `tbl_menu`(`menu_id`,`menu_judul`,`menu_slug`,`menu_icon`,`menu_redirect`,`menu_sort`,`menu_type`,`created_at`,`updated_at`) values 
(1667444041,'Dashboard','dashboard','home','/dashboard','1','1','2025-04-15 10:51:04','2025-04-15 10:51:04'),
(1668509889,'Master Barang','master-barang','package','-','2','2','2025-04-15 10:58:09','2025-04-15 11:03:15'),
(1668510437,'Transaksi','transaksi','repeat','-','4','2','2025-04-15 11:07:17','2022-04-25 15:37:36'),
(1668510568,'Laporan','laporan','printer','-','5','2','2025-04-15 11:09:28','2022-04-25 15:37:28'),
(1669390641,'Customer','customer','user','/customer','3','1','2025-04-25 15:37:21','2025-04-25 15:37:36');

/*Table structure for table `tbl_merk` */

DROP TABLE IF EXISTS `tbl_merk`;

CREATE TABLE `tbl_merk` (
  `merk_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `merk_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk_keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`merk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Table structure for table `tbl_role` */

DROP TABLE IF EXISTS `tbl_role`;

CREATE TABLE `tbl_role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tbl_role` */

insert  into `tbl_role`(`role_id`,`role_title`,`role_slug`,`role_desc`,`created_at`,`updated_at`) values 
(1,'Super Admin','super-admin','-','2022-11-15 10:51:04','2022-11-15 10:51:04'),
(2,'Admin','admin','-','2022-11-15 10:51:04','2022-11-15 10:51:04'),
(3,'Operator','operator','-','2022-11-15 10:51:04','2022-11-15 10:51:04'),
(4,'Manajer','manajer',NULL,'2022-12-06 09:33:27','2022-12-06 09:33:27');

/*Table structure for table `tbl_satuan` */

DROP TABLE IF EXISTS `tbl_satuan`;

CREATE TABLE `tbl_satuan` (
  `satuan_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `satuan_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `satuan_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `satuan_keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`satuan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Table structure for table `tbl_submenu` */

DROP TABLE IF EXISTS `tbl_submenu`;

CREATE TABLE `tbl_submenu` (
  `submenu_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submenu_judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submenu_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submenu_redirect` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submenu_sort` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`submenu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tbl_submenu` */

insert  into `tbl_submenu`(`submenu_id`,`menu_id`,`submenu_judul`,`submenu_slug`,`submenu_redirect`,`submenu_sort`,`created_at`,`updated_at`) values 
(9,'1668510437','Barang Masuk','barang-masuk','/barang-masuk','1','2022-11-15 11:08:19','2022-11-15 11:08:19'),
(10,'1668510437','Barang Keluar','barang-keluar','/barang-keluar','2','2022-11-15 11:08:19','2022-11-15 11:08:19'),
(17,'1668509889','Jenis','jenis','/jenisbarang','1','2022-11-24 12:06:48','2022-11-24 12:06:48'),
(18,'1668509889','Satuan','satuan','/satuan','2','2022-11-24 12:06:48','2022-11-24 12:06:48'),
(19,'1668509889','Merk','merk','/merk','3','2022-11-24 12:06:48','2022-11-24 12:06:48'),
(20,'1668509889','Barang','barang','/barang','4','2022-11-24 12:06:48','2022-11-24 12:06:48'),
(21,'1668510568','Lap Barang Masuk','lap-barang-masuk','/lap-barang-masuk','1','2022-11-30 12:56:24','2022-11-30 12:56:24'),
(22,'1668510568','Lap Barang Keluar','lap-barang-keluar','/lap-barang-keluar','2','2022-11-30 12:56:24','2022-11-30 12:56:24'),
(23,'1668510568','Lap Stok Barang','lap-stok-barang','/lap-stok-barang','3','2022-11-30 12:56:24','2022-11-30 12:56:24');

/*Table structure for table `tbl_user` */

DROP TABLE IF EXISTS `tbl_user`;

CREATE TABLE `tbl_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_nmlengkap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tbl_user` */

insert  into `tbl_user`(`user_id`,`role_id`,`user_nmlengkap`,`user_nama`,`user_email`,`user_foto`,`user_password`,`created_at`,`updated_at`) values 
(1,'1','Super Administrator','superadmin','superadmin@gmail.com','undraw_profile.svg','25d55ad283aa400af464c76d713c07ad','2022-11-15 10:51:04','2022-11-15 10:51:04'),
(2,'2','Administrator','admin','admin@gmail.com','undraw_profile.svg','25d55ad283aa400af464c76d713c07ad','2022-11-15 10:51:04','2022-11-15 10:51:04'),
(3,'3','Operator','operator','operator@gmail.com','undraw_profile.svg','25d55ad283aa400af464c76d713c07ad','2022-11-15 10:51:04','2022-11-15 10:51:04'),
(4,'4','Manajer','manajer','manajer@gmail.com','undraw_profile.svg','25d55ad283aa400af464c76d713c07ad','2022-12-06 09:33:54','2022-12-06 09:33:54');

/*Table structure for table `tbl_web` */

DROP TABLE IF EXISTS `tbl_web`;

CREATE TABLE `tbl_web` (
  `web_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `web_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `web_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `web_deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`web_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tbl_web` */

insert  into `tbl_web`(`web_id`,`web_nama`,`web_logo`,`web_deskripsi`,`created_at`,`updated_at`) values 
(1,'Inventoryweb','default.png','Mengelola Data Barang Masuk & Barang Keluar','2022-11-15 10:51:04','2022-11-22 09:41:39');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
