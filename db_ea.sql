-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2022 at 03:05 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ea`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'Ferdi Maulana', 'Ferdi', 'dcfd3b460c0c489a6ed6029ef753a4a4', '+6281932082739', 'ferdimaulana107@gmail.com', 'Jl. KRT Radjiman Widyodiningrat, Rawa Terate, Cakung, Jakarta Timur 13920.');

-- --------------------------------------------------------

--
-- Table structure for table `tb_buyer`
--

CREATE TABLE `tb_buyer` (
  `buyer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `buyer_name` varchar(100) NOT NULL,
  `buyer_status` tinyint(1) NOT NULL,
  `date_creared` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_buyer`
--

INSERT INTO `tb_buyer` (`buyer_id`, `product_id`, `buyer_name`, `buyer_status`, `date_creared`) VALUES
(2, 25, 'wilberg', 1, '2021-07-08 06:45:22'),
(3, 18, 'William', 0, '2021-07-08 12:48:25'),
(4, 34, 'Arden', 1, '2021-07-10 14:07:49'),
(5, 14, 'Chimi', 1, '2021-07-11 07:20:18'),
(6, 35, 'Maulana ', 1, '2021-07-25 13:53:44');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(1, 'Medal Of Honor'),
(2, 'Need For Speed'),
(3, 'Battlefield'),
(4, 'Burnout'),
(5, 'SimCity'),
(6, 'Dead Space'),
(7, 'The Saboteur');

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `data_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `data_created`) VALUES
(12, 2, 'Need For Speed most wanted 2005', 109999, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p>adalah game besutan dari publisher EA black box dan seri lanjutan dari Underground 2.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'produk1625575283.jpg', 1, '2021-07-06 12:41:23'),
(13, 2, 'Need For Speed most wanted black edition ', 109999, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p>adalah DLC dari game most wanted, tidak seperti game originalnya di versi ini ada penambahan, seperti :</p>\r\n\r\n<p>1. beberapa track di challenge mode</p>\r\n\r\n<p>2. penambahan mobil</p>\r\n\r\n<p>3. perbaikan optimalisasi.</p>\r\n', 'produk1625575409.jpg', 1, '2021-07-06 12:43:29'),
(14, 3, 'Battlefield Bad Company 2', 200999, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p>adalah lanjutan dari series game bad company 1</p>\r\n', 'produk1625628471.png', 0, '2021-07-06 13:48:40'),
(15, 3, 'Battlefield Bad Company 2 Vietnam', 109999, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>DLC dari game bad company 2 dengan menambahkan beberapa fitur, seperti :</p>\r\n\r\n<p>1. maps</p>\r\n\r\n<p>2.multiplayer</p>\r\n\r\n<p>3.weapons</p>\r\n\r\n<p>4.character</p>\r\n\r\n<p>5. vehicle</p>\r\n', 'produk1625579498.png', 1, '2021-07-06 13:51:38'),
(16, 3, 'Battlefield Bad Company 1', 149999, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>adalah series pertama dari game batlefield bad company yang di-develop oleh DICE</p>\r\n', 'produk1625579583.png', 1, '2021-07-06 13:53:03'),
(17, 1, 'Medal Of Honor Allied Assault', 109999, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>adalah game buatan dari dev EA Los Angeles dan merupakan game pertama yang ditampilkan di PC.</p>\r\n', 'produk1625579740.jpg', 1, '2021-07-06 13:55:40'),
(18, 7, 'the Saboteur', 149999, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>adalah game terakhir besutan dari dev Pandemic games sebelum dev-nya ditutup oleh EA.</p>\r\n', 'produk1625580515.jpg', 1, '2021-07-06 14:08:35'),
(19, 1, 'Medal Of Honor Allied Assault BREAKTHOUGH', 75999, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>adalah Expansion pack atau bisa disebut dengan DLC pada masa sekarang adalah seri dari Allied assault, dengan adanya beberapa penambahan, seperti :</p>\r\n\r\n<p>1. campaign mode</p>\r\n\r\n<p>2. maps</p>\r\n\r\n<p>3. multiplayer</p>\r\n\r\n<p>4. vehicle</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'produk1625580680.jpg', 1, '2021-07-06 14:11:20'),
(20, 1, 'Medal Of Honor Allied Assault SPEARHEAD', 75999, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>adalah Expansion pack atau bisa disebut dengan DLC pada masa sekarang adalah seri dari Allied assault, dengan adanya beberapa penambahan, seperti :</p>\r\n\r\n<p>1. campaign mode</p>\r\n\r\n<p>2. maps</p>\r\n\r\n<p>3. multiplayer</p>\r\n\r\n<p>4. vehicle</p>\r\n', 'produk1625580714.jpg', 1, '2021-07-06 14:11:54'),
(21, 2, 'Need For Speed Undergound 1', 109999, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>seri pertama Need for speed dengan penambahan storyline dan awal mulai pengembangan karakter dengan nama &quot;player&quot;.</p>\r\n', 'produk1625580809.jpg', 1, '2021-07-06 14:13:29'),
(22, 2, 'Need For Speed Undergound 2', 109999, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>adalah seri besutan dari EA black box dan juga lanjutan dari Underground 1 dengan penambahan, seperti :</p>\r\n\r\n<p>1. open world maps</p>\r\n\r\n<p>2. vehicle</p>\r\n\r\n<p>3. night mode</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'produk1625580935.jpg', 1, '2021-07-06 14:15:35'),
(23, 1, 'Medal Of Honor Pacific Assault', 149999, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Adalah seri game selanjutnya&nbsp;dari Medal of honor yang mengambil sudut pandang dari karakter &quot;Thomas Conlin&quot; pada pasukan 2nd Marine Battalion dan kemudian dipindahkan ke 1st Marine Battalion, latar tempat diambil pasca Jepang menyerang Pearl Harbour.</p>\r\n', 'produk1625670653.jpg', 1, '2021-07-07 15:10:53'),
(24, 1, 'Medal Of Honor Vanguard', 109999, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Adalah seri selanjutnya dari game Medal of Honor yang mengambil peran satu orang&nbsp;dari 82nd Airborne Division yang bernama &quot;&nbsp;Frank Keegan&quot; yang mengambil latar&nbsp;di perang dunia 2 dan game ini hanya ada di PS2 dan Wii, mengambil latar operasi&nbsp;seperti :</p>\r\n\r\n<p>1.Husky</p>\r\n\r\n<p>2.Neptune</p>\r\n\r\n<p>3.Market Garden</p>\r\n\r\n<p>4.Varsity</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'produk1625671123.jpg', 1, '2021-07-07 15:18:43'),
(25, 1, 'Medal Of Honor Airborne', 89999, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Adalah seri selanjutnya dari game Medal of Honor yang mengambil latar perang dunia kedua dan mengambil satu orang&nbsp;dari 82nd Airborne Division yang bernama &quot;Boyd Travers&quot;.&nbsp;</p>\r\n', 'produk1625671412.jpg', 0, '2021-07-07 15:23:32'),
(26, 1, 'Medal Of Honor European Assault', 75999, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Adalah seri game selanjutnya dari Medal of honor mengambil sudut pandang seorang letnan &quot;William Holt&quot; yang bertugas sebagai OSS (Office of Strategic Services) yang mengambil latar di perang dunia kedua.</p>\r\n', 'produk1625671848.jpg', 1, '2021-07-07 15:30:48'),
(27, 2, 'Need For Speed Carbon', 75999, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Adalah Seri lanjutan dari need for speed&nbsp;sekaligus berakhirnya cerita karakter &quot;Player&quot; di seri ini.</p>\r\n', 'produk1625748467.jpg', 1, '2021-07-08 12:47:47'),
(28, 6, 'Dead Space 3', 279999, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Adalah game besutan dari developer Viseral games yang melanjutkan seri sebelumnya, mengambil latar tempat di luar angkasa yang penuh dengan alien-alien, mutasi manusia dan lain-lain.</p>\r\n', 'produk1625805655.jpg', 1, '2021-07-09 04:40:55'),
(29, 6, 'Dead Space 2', 249999, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Adalah game sequel dari seri pertama-nya,&nbsp;mengambil latar tempat di luar angkasa yang penuh dengan alien-alien, mutasi manusia dan lain-lain.</p>\r\n', 'produk1625805844.jpg', 1, '2021-07-09 04:44:04'),
(30, 6, 'Dead Space 1', 200999, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Adalah game besutan dari developer Viseral games, mengambil latar tempat di luar angkasa yang penuh dengan alien-alien, mutasi manusia dan lain-lain.</p>\r\n', 'produk1625805897.jpg', 1, '2021-07-09 04:44:57'),
(31, 4, 'Burnout 3 takedown', 109999, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Adalah game buatan dari developer criterion games, mengambil tema balapan dengan menyikut mobil lawan.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>game ini hanya bisa dimainkan di PS2 dan Xbox.</p>\r\n', 'produk1625806403.jpg', 1, '2021-07-09 04:53:23'),
(32, 4, 'Burnout Revenge', 109999, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Adalah game buatan dari developer criterion games melanjutkan seri sebelumnya, mengambil tema balapan dengan menyikut mobil lawan.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>game ini hanya bisa dimainkan di PS2 dan Xbox.</p>\r\n', 'produk1625806461.jpg', 1, '2021-07-09 04:54:21'),
(33, 4, 'Burnout Paradise Remastered', 279999, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Adalah game buatan dari developer criterion games, melanjutkan dari seri-seri sebelumnya dengan peningkatan seperti =</p>\r\n\r\n<p>1. grafik</p>\r\n\r\n<p>2. mobil</p>\r\n\r\n<p>3. open world maps</p>\r\n', 'produk1625806629.jpg', 1, '2021-07-09 04:57:09'),
(34, 5, 'SimCity ', 200999, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Adalah game buatan dari developer Maxis Games.</p>\r\n', 'produk1625806912.jpg', 1, '2021-07-09 05:01:52'),
(35, 3, 'battlefield 3', 199999, '<p>Adalah sekuel dari battlefield dan besutan dari developor DICE&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'produk1625924548.jpg', 0, '2021-07-10 13:42:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_buyer`
--
ALTER TABLE `tb_buyer`
  ADD PRIMARY KEY (`buyer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_buyer`
--
ALTER TABLE `tb_buyer`
  MODIFY `buyer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
