-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 01, 2023 lúc 02:57 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ecommerce_php`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attribute`
--

CREATE TABLE `attribute` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `attribute`
--

INSERT INTO `attribute` (`id`, `name`, `display_name`) VALUES
(20, 'rom', 'Dung lượng'),
(21, 'ram', 'Ram'),
(23, 'color', 'Màu sắc'),
(32, 'pin', 'Dung lượng pin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attribute_value`
--

CREATE TABLE `attribute_value` (
  `id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `value_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `attribute_value`
--

INSERT INTO `attribute_value` (`id`, `attribute_id`, `value_name`) VALUES
(16, 20, '64GB'),
(17, 20, ' 256GB'),
(18, 20, ' 512GB'),
(19, 21, '4GB'),
(20, 21, ' 8GB'),
(21, 21, ' 16GB'),
(22, 23, 'Màu trắng ngà'),
(23, 23, ' Màu xanh lá'),
(24, 23, ' Màu hồng'),
(25, 23, ' Màu tím'),
(26, 23, 'Titan xanh'),
(27, 23, ' Titan đen'),
(28, 23, ' Titan tự nhiên'),
(29, 23, ' Titan trắng'),
(30, 20, '1TB'),
(31, 20, ' 2TB'),
(32, 21, '32GB'),
(33, 21, ' 64GB'),
(34, 21, ' 128GB'),
(35, 21, ' 2GB'),
(36, 21, ' 1GB'),
(37, 21, ' 512MB'),
(38, 21, '16GB'),
(39, 23, 'Màu xám'),
(40, 23, ' Màu bạc'),
(41, 23, ' Màu xanh dương'),
(42, 23, 'Màu vàng nhạt'),
(43, 23, 'Màu đen'),
(44, 23, 'Màu trắng'),
(45, 32, '10000 mAh'),
(46, 32, '5000 mAh'),
(47, 32, ' 3000 mAh'),
(48, 32, ' 2000 mAh'),
(49, 32, ' 20000 mAh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `title`, `description`, `cate_id`, `create_at`, `update_at`) VALUES
(1, 'Thị trường Điện Thoại lớn nhất', 'Khám phá, sưu tập và bán Điện thoại đặc biệt', 29, '2023-11-22 14:07:45', '2023-11-22 14:07:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`id`, `name`) VALUES
(1, 'Apple'),
(2, 'Asus'),
(3, 'Acer'),
(4, 'Samsung'),
(5, 'Dareu'),
(20, 'Binance'),
(21, 'Lenovo'),
(22, 'HP'),
(23, 'MSI'),
(25, 'Dell'),
(26, 'LG'),
(28, 'Anker'),
(29, 'Samsung'),
(30, 'Xiaomi'),
(31, 'Oppo'),
(32, 'Nokia'),
(33, 'Tosiba'),
(40, 'Casio');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `totalPrice` int(11) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `totalPrice`, `create_at`, `update_at`) VALUES
(17, 10, 3690000, '2023-11-26 10:43:12', '2023-11-26 10:43:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_item`
--

CREATE TABLE `cart_item` (
  `id` int(11) NOT NULL,
  `product_variant_id` int(11) NOT NULL,
  `quantity` smallint(6) NOT NULL,
  `cart_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cart_item`
--

INSERT INTO `cart_item` (`id`, `product_variant_id`, `quantity`, `cart_id`) VALUES
(39, 26, 1, 17);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `image`, `name`) VALUES
(1, 'elec-8.png', 'Gaming'),
(2, 'elec-7.png', 'Mạng'),
(3, 'elec-1.png', 'Đồng hồ '),
(4, 'elec-9.png', 'Tai nghe'),
(6, 'elec-10.png', 'Camera & Photo'),
(9, 'elec-11.png', 'Phụ kiện'),
(10, 'elec-6.png', 'Laptops'),
(24, 'elec-2.png', 'Màn hình'),
(29, 'elec-4.png', 'Điện thoại'),
(30, 'elec-5.png', 'PC'),
(31, 'nft.jpg', 'Tranh kĩ thuật số'),
(32, 'google-tivi-hisense-4k-40-inch-40a4200g.jpg', 'TV'),
(33, 'TAB-S7-FE-12.4_T733_MCBLK_1.jpg', 'Máy tính bảng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupon`
--

CREATE TABLE `coupon` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `thumb` varchar(500) NOT NULL,
  `title` varchar(50) NOT NULL,
  `value` varchar(50) NOT NULL,
  `min_amount` int(11) NOT NULL,
  `expired` datetime NOT NULL,
  `quantity` smallint(6) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `coupon`
--

INSERT INTO `coupon` (`id`, `code`, `thumb`, `title`, `value`, `min_amount`, `expired`, `quantity`, `status`) VALUES
(1, 'WINTER23', 'https://kachabazar-store-nine.vercel.app/_next/image?url=https%3A%2F%2Fi.ibb.co%2FwBBYm7j%2Fins4.jpg&w=128&q=75', 'Winter Gift Voucher', '400000', 500000, '2023-11-30 20:00:26', 10, 1),
(4, 'TNNC001', 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700142289/uploads_WEB2041_Ecommerce/phpBC56_ezkikk.jpg', 'Ma giam gia moi', '10%', 900000, '2023-11-17 20:43:00', 12, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images_product`
--

CREATE TABLE `images_product` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL,
  `prod_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `images_product`
--

INSERT INTO `images_product` (`id`, `image`, `prod_id`) VALUES
(1, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700490495/uploads_WEB2041_Ecommerce/phpF4D6_plpzym.jpg', 83),
(2, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700490497/uploads_WEB2041_Ecommerce/phpF4D7_tgqwe2.jpg', 83),
(3, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700490503/uploads_WEB2041_Ecommerce/phpF4D8_vebojj.jpg', 83),
(4, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700490508/uploads_WEB2041_Ecommerce/phpF4D9_ar8wyl.jpg', 83),
(5, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700490515/uploads_WEB2041_Ecommerce/phpF4DA_l0ktkq.jpg', 83),
(6, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700490529/uploads_WEB2041_Ecommerce/phpF4EC_rfezxn.jpg', 83),
(7, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700490532/uploads_WEB2041_Ecommerce/phpF4ED_tpjuca.jpg', 83),
(8, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700490534/uploads_WEB2041_Ecommerce/phpF4EE_lyikid.jpg', 83),
(9, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700490537/uploads_WEB2041_Ecommerce/phpF4EF_caiokp.jpg', 83),
(10, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700491212/uploads_WEB2041_Ecommerce/phpEE79_og9dve.jpg', 84),
(11, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700491226/uploads_WEB2041_Ecommerce/phpEE7A_cvhawg.jpg', 84),
(12, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700491229/uploads_WEB2041_Ecommerce/phpEE8B_lhjlzj.jpg', 84),
(13, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700491243/uploads_WEB2041_Ecommerce/phpEE8C_sbgwig.jpg', 84),
(14, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700491248/uploads_WEB2041_Ecommerce/phpEE8D_oq3r2l.jpg', 84),
(15, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700491254/uploads_WEB2041_Ecommerce/phpEE8E_yh09de.jpg', 84),
(16, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700491901/uploads_WEB2041_Ecommerce/php8E25_c6uip9.jpg', 85),
(17, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700491904/uploads_WEB2041_Ecommerce/php8E26_jy34nv.jpg', 85),
(18, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700491907/uploads_WEB2041_Ecommerce/php8E27_fcmsyd.jpg', 85),
(19, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700491910/uploads_WEB2041_Ecommerce/php8E38_fq20ty.jpg', 85),
(20, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700491922/uploads_WEB2041_Ecommerce/php8E39_llutqj.jpg', 85),
(21, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700491926/uploads_WEB2041_Ecommerce/php8E3A_hxhd8p.jpg', 85),
(22, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700491942/uploads_WEB2041_Ecommerce/php8E3B_tlnrgv.jpg', 85),
(23, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700491956/uploads_WEB2041_Ecommerce/php8E3C_wlmwff.jpg', 85),
(24, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700491967/uploads_WEB2041_Ecommerce/php8E3D_lrjw1n.jpg', 85),
(25, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700491992/uploads_WEB2041_Ecommerce/php8E4D_tqkkcw.jpg', 85),
(26, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700492846/uploads_WEB2041_Ecommerce/php206B_urgton.jpg', 86),
(27, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700492860/uploads_WEB2041_Ecommerce/php207B_uslk3j.jpg', 86),
(28, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700492863/uploads_WEB2041_Ecommerce/php207C_khwpxh.jpg', 86),
(29, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700492866/uploads_WEB2041_Ecommerce/php207D_cumji0.jpg', 86),
(30, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700492868/uploads_WEB2041_Ecommerce/php207E_dcumii.jpg', 86),
(31, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700492883/uploads_WEB2041_Ecommerce/php207F_witrwv.jpg', 86),
(32, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700492885/uploads_WEB2041_Ecommerce/php2080_txxjjm.jpg', 86),
(33, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700492888/uploads_WEB2041_Ecommerce/php2081_lju9rn.jpg', 86),
(34, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700493425/uploads_WEB2041_Ecommerce/phpCBF8_mfft79.jpg', 87),
(35, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700493435/uploads_WEB2041_Ecommerce/phpCC09_e0ipkp.jpg', 87),
(36, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700493454/uploads_WEB2041_Ecommerce/phpCC0A_azev2i.jpg', 87),
(37, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700493470/uploads_WEB2041_Ecommerce/phpCC0B_r8i0kc.jpg', 87),
(38, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700493476/uploads_WEB2041_Ecommerce/phpCC0C_un6eu0.jpg', 87),
(39, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700493485/uploads_WEB2041_Ecommerce/phpCC0D_kugfiv.jpg', 87),
(40, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700493492/uploads_WEB2041_Ecommerce/phpCC0E_pjxwfe.jpg', 87),
(41, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700493510/uploads_WEB2041_Ecommerce/phpCC1E_fsuqat.jpg', 87),
(42, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700493521/uploads_WEB2041_Ecommerce/phpCC1F_wgjiho.jpg', 87),
(43, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700493924/uploads_WEB2041_Ecommerce/php2878_xwevhf.jpg', 88),
(44, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700493947/uploads_WEB2041_Ecommerce/phpEA81_ilekld.jpg', 88),
(45, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700493969/uploads_WEB2041_Ecommerce/phpEA92_rq7bys.jpg', 88),
(46, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700493983/uploads_WEB2041_Ecommerce/phpEA93_pwawp6.jpg', 88),
(47, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700493987/uploads_WEB2041_Ecommerce/phpEAA3_xq6znd.jpg', 88),
(48, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700493996/uploads_WEB2041_Ecommerce/phpEAA4_uyfta0.jpg', 88),
(49, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700494003/uploads_WEB2041_Ecommerce/phpEAA5_z0yffc.jpg', 88),
(50, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700494007/uploads_WEB2041_Ecommerce/phpEAA6_neb3fk.jpg', 88),
(51, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700494017/uploads_WEB2041_Ecommerce/phpEAA7_dqplma.jpg', 88),
(52, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700494376/uploads_WEB2041_Ecommerce/php3B3D_eo2c6x.jpg', 89),
(53, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700494392/uploads_WEB2041_Ecommerce/php3B3E_zdeerj.jpg', 89),
(54, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700494396/uploads_WEB2041_Ecommerce/php3B4F_fdxbia.jpg', 89),
(55, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700494458/uploads_WEB2041_Ecommerce/phpC2DA_trn4dl.jpg', 89),
(56, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700494482/uploads_WEB2041_Ecommerce/phpC2DB_kv6vbk.jpg', 89),
(57, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700494497/uploads_WEB2041_Ecommerce/phpC2EC_fzwzun.jpg', 89),
(58, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700494505/uploads_WEB2041_Ecommerce/phpC2FC_lsm7uc.jpg', 89),
(59, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700494515/uploads_WEB2041_Ecommerce/phpC2FD_bunqw7.jpg', 89),
(60, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700494529/uploads_WEB2041_Ecommerce/phpC2FE_yf2die.jpg', 89),
(61, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700494537/uploads_WEB2041_Ecommerce/phpC2FF_wfz3pp.jpg', 89),
(62, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700495424/uploads_WEB2041_Ecommerce/php54DD_rx0aie.jpg', 90),
(63, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700495431/uploads_WEB2041_Ecommerce/php54DE_zhfpva.jpg', 90),
(64, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700495435/uploads_WEB2041_Ecommerce/php54DF_wwx28n.jpg', 90),
(65, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700495450/uploads_WEB2041_Ecommerce/php54E0_brqsnk.jpg', 90),
(66, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700495454/uploads_WEB2041_Ecommerce/php54F1_phmuuw.jpg', 90),
(67, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700495502/uploads_WEB2041_Ecommerce/phpAEB5_r4xk77.jpg', 90),
(68, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700495506/uploads_WEB2041_Ecommerce/phpAEB6_enqswt.jpg', 90),
(69, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700495516/uploads_WEB2041_Ecommerce/phpAEB7_pyezub.jpg', 90),
(70, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700495521/uploads_WEB2041_Ecommerce/phpAEC8_bkxa58.jpg', 90),
(71, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700495535/uploads_WEB2041_Ecommerce/phpAEC9_ya2cxf.jpg', 90),
(72, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700495541/uploads_WEB2041_Ecommerce/phpAECA_snmo7f.jpg', 90),
(73, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700559868/uploads_WEB2041_Ecommerce/php3052_wub5dn.jpg', 91),
(74, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700559871/uploads_WEB2041_Ecommerce/php3053_ldvtyc.jpg', 91),
(75, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700559875/uploads_WEB2041_Ecommerce/php3054_nj1t0q.jpg', 91),
(76, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700559879/uploads_WEB2041_Ecommerce/php3065_d6d0rm.jpg', 91),
(77, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700559882/uploads_WEB2041_Ecommerce/php3066_sqg2db.jpg', 91),
(78, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700559885/uploads_WEB2041_Ecommerce/php3067_ri7bfz.jpg', 91),
(79, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700559889/uploads_WEB2041_Ecommerce/php3068_sd7x03.jpg', 91),
(80, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700559893/uploads_WEB2041_Ecommerce/php3069_tjdxig.jpg', 91),
(81, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1701428695/uploads_WEB2041_Ecommerce/phpDC2D_bwytwc.jpg', 92),
(82, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1701428701/uploads_WEB2041_Ecommerce/phpDC2E_ig8ea9.jpg', 92),
(83, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1701428715/uploads_WEB2041_Ecommerce/phpDC2F_pgbjsm.jpg', 92),
(84, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1701428718/uploads_WEB2041_Ecommerce/phpDC40_gralg0.jpg', 92),
(85, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1701428721/uploads_WEB2041_Ecommerce/phpDC41_uuhvt8.jpg', 92),
(86, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1701428723/uploads_WEB2041_Ecommerce/phpDC42_esyjdq.jpg', 92),
(87, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1701429056/uploads_WEB2041_Ecommerce/php650B_tx7me0.jpg', 94),
(88, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1701429058/uploads_WEB2041_Ecommerce/php650C_xozgnj.jpg', 94),
(89, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1701429060/uploads_WEB2041_Ecommerce/php650D_bah2ts.jpg', 94),
(90, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1701429062/uploads_WEB2041_Ecommerce/php650E_vrqtkl.jpg', 94),
(91, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1701429065/uploads_WEB2041_Ecommerce/php650F_khvve9.jpg', 94),
(92, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1701429067/uploads_WEB2041_Ecommerce/php6510_ih3xk3.jpg', 94),
(93, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1701429070/uploads_WEB2041_Ecommerce/php6511_vm8j4i.jpg', 94),
(94, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1701429502/uploads_WEB2041_Ecommerce/php3BC5_kmdwdn.jpg', 96),
(95, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1701429506/uploads_WEB2041_Ecommerce/php3BD6_zqjwdq.jpg', 96),
(96, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1701429509/uploads_WEB2041_Ecommerce/php3BD7_kfv9f6.jpg', 96),
(97, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1701429512/uploads_WEB2041_Ecommerce/php3BD8_lulkii.jpg', 96),
(98, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1701429515/uploads_WEB2041_Ecommerce/php3BD9_d4fzr2.jpg', 96),
(99, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1701429732/uploads_WEB2041_Ecommerce/phpBBCA_nvqtgg.jpg', 97),
(100, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1701429734/uploads_WEB2041_Ecommerce/phpBBCB_kvqzln.jpg', 97),
(101, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1701429736/uploads_WEB2041_Ecommerce/phpBBDC_krgeqe.jpg', 97),
(102, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1701429738/uploads_WEB2041_Ecommerce/phpBBDD_eozygo.jpg', 97),
(103, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1701429741/uploads_WEB2041_Ecommerce/phpBBDE_qysjh4.jpg', 97),
(104, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1701429743/uploads_WEB2041_Ecommerce/phpBBDF_yckum6.jpg', 97),
(105, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1701435404/uploads_WEB2041_Ecommerce/php410C_wpginy.jpg', 98),
(106, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1701435407/uploads_WEB2041_Ecommerce/php410D_uihxdc.jpg', 98),
(107, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1701435422/uploads_WEB2041_Ecommerce/php410E_llbmtl.jpg', 98),
(108, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1701435433/uploads_WEB2041_Ecommerce/php411F_qmixjh.jpg', 98),
(109, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1701435440/uploads_WEB2041_Ecommerce/php4130_kuo7t9.jpg', 98),
(110, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1701435444/uploads_WEB2041_Ecommerce/php4131_shbd91.jpg', 98),
(111, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1701435450/uploads_WEB2041_Ecommerce/php4132_mx3gyc.jpg', 98);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `view` smallint(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `user_id`, `title`, `content`, `thumb`, `slug`, `view`, `status`, `create_at`, `update_at`) VALUES
(1, 4, 'Poco C65 - điện thoại bộ nhớ 256 GB giá 3 triệu đồng', '<p>C65 có cấu hình tốt, màn hình lớn 6,74 inch so với tầm giá nhưng chất lượng camera và loa ngoài chưa tốt.</p><p><picture><source srcset=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4520-1699960658.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Az8CLAOOjo-A9LsnPKEw3g 1x, https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4520-1699960658.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=NwCcNk2AiOMNDovTGZZcQw 2x\"><img src=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4520-1699960658.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Az8CLAOOjo-A9LsnPKEw3g\" alt=\"\"></picture></p><p>Poco C65 là điện thoại giá rẻ mới nhất từ thương hiệu con của Xiaomi với điểm mạnh truyền thống là cấu hình so với các đối thủ cùng phân khúc. Đây là model rẻ nhất trang bị bộ nhớ 256 GB, RAM 8 GB với giá 3 triệu đồng, gấp đôi các đối thủ. Ngoài ra, máy còn một lựa chọn khác là bộ nhớ 128 GB, RAM 6 GB giá 2,75 triệu đồng.</p><p>Sản phẩm có giá tốt một phần nhờ chiến lược chỉ bán trực tuyến thay vì đưa cả vào hệ thống bán lẻ lớn như các hãng điện thoại thường làm. Đây có thể coi là bản nâng cấp nhẹ của Redmi 12C và có thông số phần cứng, kiểu dáng gần giống Redmi 13C cũng chuẩn bị bán ra tại Việt Nam.</p><p>Sau hơn một năm trầm lắng, phân khúc điện thoại tầm giá 3 triệu đồng sôi động trở lại khi có sự góp mặt của nhiều model trong nửa cuối 2023. Ngoài Samsung Galaxy A14, đa số các model còn lại đều từ các thương hiệu Trung Quốc như Infinix Hot 30, Tecno Spark 10 Pro, Realme C51 hay Oppo A18.</p><p><picture><source srcset=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4581-1699960662.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=zsfGOzF4bI7tVuRsQD-7mA 1x, https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4581-1699960662.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=CKizsuJzENrv0h73bDspmg 2x\"><img src=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4581-1699960662.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=zsfGOzF4bI7tVuRsQD-7mA\" alt=\"\"></picture></p><p>Máy có màn hình lớn 6,74 inch, tấm nền IPS và ưu điểm tần số quét 90 Hz tốt so với mức giá. Tuy nhiên, độ phân giải màn hình chỉ là HD+ (720 x 1.600 pixel) nên độ sắc nét chưa cao, có thể quan sát kỹ răng cưa viền chi tiết bằng mắt thường. Bù lại, màu sắc được cân chỉnh tốt, khá rực rỡ và cho phép chọn các tông màu ấm, lạnh. Độ sáng màn hình chỉ đạt 450 nit (độ sáng điểm 600 nit) nên khá khó sử dụng ngoài trời khi có nắng chiếu trực tiếp, hiển thị bóng.</p><p>C65 cũng chuyển sang thiết kế cạnh vuông vức, đi kèm viền màn hình nhô lên khỏi cạnh máy khiến trải nghiệm cầm không thực sự thoải mái, hơi cấn tay. Do khung bằng nhựa, máy có trọng lượng nhẹ, chỉ 192 gram nên có thể sử dụng lâu ít gây mỏi.</p><p><picture><source srcset=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4545-1699960660.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=9X7VsPlnCTZQ5yfDA0C2iQ 1x, https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4545-1699960660.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=L1-cfuv129qYTOEOcyHizA 2x\"><img src=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4545-1699960660.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=9X7VsPlnCTZQ5yfDA0C2iQ\" alt=\"\"></picture></p><p>Mặt sau được hoàn thiện tốt với bề mặt nhám nhẹ chống bám vân tay gần giống chất lượng gương mờ dù thực tế chỉ bằng nhựa thông thường. Máy có điểm nhấn logo Poco và cụm camera có ống kính lớn giống dòng Redmi 13C.</p><p>Chip xử lý Mediatek MT6769Z Helio G85 cho điểm hiệu năng khá tốt so với tầm giá, khoảng 280.000 điểm với AnTuTu Benchmark. Điểm nhấn của máy nằm ở bộ nhớ với chuẩn tốc độ đọc, ghi eMMC 5.1.</p><p><picture><source srcset=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4538-1699960659.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=BNGGtor4r9pL3vYk317VVw 1x, https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4538-1699960659.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=pmpCnc2vDghZjGFBGHRNMQ 2x\"><img src=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4538-1699960659.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=BNGGtor4r9pL3vYk317VVw\" alt=\"\"></picture></p><p>C65 có độ mỏng ấn tượng 8,1 mm so với mức 8,7-9,4 mm của các đối thủ cùng phân khúc dù sở hữu viên pin 5.000 mAh. Máy cũng có cảm biến vân tay một chạm đặt trên nút nguồn ở cạnh phải. Điện thoại mới của Poco chạy hệ điều hành Android 13 với bộ giao diện MIUI 14 rút gọn. Máy có ba màu để lựa chọn là xanh, đen và tím.</p><p><picture><source srcset=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4537-1699960659.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=f7F6gd0RX4ma6MdDFlcYhQ 1x, https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4537-1699960659.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=rxGuA0ySu6gghrdiyWmNnA 2x\"><img src=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4537-1699960659.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=f7F6gd0RX4ma6MdDFlcYhQ\" alt=\"\"></picture></p><p>C65 vẫn giữ đầy đủ cổng kết nối, bao gồm cả giắc cắm tai nghe 3,5 mm trên đỉnh máy. Cổng USB-C phía dưới chỉ là chuẩn 2.0 và hỗ trợ sạc nhanh tối đa có dây là 18 W (chuẩn PD). Nhược điểm của máy nằm ở hệ thống loa ngoài với một loa bên dưới thay vì stereo. Ngoài ra, âm thanh cho cảm giác hơi rè khi đặt mức chỉnh khoảng trên 60%</p><p><picture><source srcset=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4568-1699960661.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=_LywNGOWvi0QRC5JSRtbRg 1x, https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4568-1699960661.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=p9RjsUxB1V5s4DyazTd59A 2x\"><img src=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4568-1699960661.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=_LywNGOWvi0QRC5JSRtbRg\" alt=\"\"></picture></p><p>Cụm camera phía sau lớn hơn cả các mẫu điện thoại cao cấp gồm một camera chính độ phân giải 50 megapixel, f/1.8, lấy nét PDAF nhưng góc hơi hẹp là 28 mm (tiêu chuẩn thường là 24 mm), một ống kính macro đo độ sâu trường ảnh 2 megapixel và đèn flash LED. Máy có thể quay video độ phân giải Full HD tốc độ 30 hình/giây.</p><p><picture><source srcset=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4593-1699960662.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=_smNc-wbUeomg5ss8Ib-VA 1x, https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4593-1699960662.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=0yUJqY2v_q-lYyfgL3Xjvw 2x\"><img src=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4593-1699960662.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=_smNc-wbUeomg5ss8Ib-VA\" alt=\"\"></picture></p><p>Độ phân giải cao nhưng chất lượng chụp ảnh chưa tương xứng khi không khác biệt so với các đối thủ với thông số kém hơn. Ảnh chụp ổn ở điều kiện ngoài trời, đủ sáng nhưng độ chi tiết giảm nhiều với môi trường ánh sáng yếu. So với model giá rẻ \"hot\" nhất trước đây của Xiaomi là Redmi 12C, Poco C65 nhỉnh hơn ở khả năng cân bằng trắng, xử lý HDR nhưng chất lượng tổng thể không nâng cấp đáng kể.</p><p><picture><source srcset=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4576-1699960661.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=E6sWoDe5KPmUjbFHi-kl1Q 1x, https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4576-1699960661.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=HtWMJk8AOOYmDv9kcsvo0g 2x\"><img src=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4576-1699960661.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=E6sWoDe5KPmUjbFHi-kl1Q\" alt=\"\"></picture></p><p>&nbsp;</p><p>Phụ kiện có bộ sạc, cáp USB-C nhưng không có tai nghe và ốp silicon trong suốt. C65 hỗ trợ sạc nhanh tối đa 18 W nhưng củ sạc đi kèm có công suất chỉ 10 W.</p>', 'https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4520-1699960658.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=Az8CLAOOjo-A9LsnPKEw3g', 'poco-c65---dien-thoai-bo-nho-256-gb-gia-3-trieu-dong-655df3ce23795', 35, 0, '2023-11-15 20:53:51', '2023-11-15 20:53:51'),
(2, 9, 'Google xác nhận trả tiền tỷ cho Apple để mặc định công cụ tìm kiếm', '<p>Sundar Pichai, CEO Google, thừa nhận hãng chia sẻ cho Apple 36% doanh thu có được từ việc đặt công cụ tìm kiếm mặc định trên trình duyệt Safari.</p><p>Ngày 14/11, trong buổi làm chứng liên quan đến <a href=\"https://vnexpress.net/nha-san-xuat-game-fortnite-kien-apple-google-4146591.html\">vụ kiện</a> giữa Google và Epic Games về vấn đề độc quyền trên Google Play, nhà sản xuất game đứng sau trò chơi <i>Fortnite</i>, một nhân chứng đề cập con số 36% doanh thu từ tìm kiếm thông qua Safari mà Apple được hưởng.</p><p>Luật sư của Epic Games hỏi Pichai điều này có chính xác không. CEO Google đáp: \"Đúng vậy!\".</p><p><picture><source srcset=\"https://i1-sohoa.vnecdn.net/2023/11/15/WIIEYS6NCVKV7B55UWTH4ZVUTY-2708-1700019077.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Mqf_2wSVeutdhFBRweTIyA 1x, https://i1-sohoa.vnecdn.net/2023/11/15/WIIEYS6NCVKV7B55UWTH4ZVUTY-2708-1700019077.png?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=FT829C6TEaTCcf4P9MQfbg 1.5x, https://i1-sohoa.vnecdn.net/2023/11/15/WIIEYS6NCVKV7B55UWTH4ZVUTY-2708-1700019077.png?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=AfArnaNhcdEf08katKZJ3g 2x\"><img src=\"https://i1-sohoa.vnecdn.net/2023/11/15/WIIEYS6NCVKV7B55UWTH4ZVUTY-2708-1700019077.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Mqf_2wSVeutdhFBRweTIyA\" alt=\"CEO Alphabet Sundar Pichai. Ảnh: Reuters\"></picture></p><p>CEO Alphabet Sundar Pichai. Ảnh: <i>Reuters</i></p><p>Luật sư tiếp tục hỏi Pichai tại sao hãng trả cho Samsung, đối tác phần cứng lớn nhất về Android, số tiền chưa bằng một nửa so với cho Apple. CEO Google nói ông không nắm rõ một cách chắc chắn, nhưng điều này \"có thể\" xảy ra.</p><p>\"Nó giống như việc vận chuyển táo với cam vậy\", Pichai nói. \"Với các giao dịch, đôi khi bạn phải trả tiền khác nhau cho các hãng vận chuyển\".</p><p>Đại diện pháp luật của Epic Games sau đó hỏi Pichai về số tiền chính xác mà họ trả cho Apple. Pichai nói \"hơn 10 tỷ USD\". Luật sư cho rằng ông trả lời không chính xác, con số thực tế phải là 18 tỷ USD.</p><p>Google, Samsung và Apple không đưa ra bình luận.</p><p>Alphabet hiện đối mặt với nhiều cuộc chiến pháp lý liên quan đến hành vi độc quyền công cụ tìm kiếm và kho ứng dụng. Hai vụ kiện với Bộ Tư pháp Mỹ (DOJ) và Epic Games đang diễn ra đồng thời. Hồi tháng 9, trong phiên tòa liên quan đến vụ kiện do Bộ Tư pháp Mỹ là nguyên đơn, các công tố viên cho biết Google nắm 90% thị phần tìm kiếm trực tuyến. Ưu thế đó có được một phần nhờ <a href=\"https://vnexpress.net/chu-de/google-1539\">Google</a> bắt tay với Apple trong thương vụ đã kéo dài 18 năm.</p><p>Một số nguồn tin cho biết Google chi 9,5 tỷ USD vào năm 2018, 11 tỷ USD năm 2020 và 15 tỷ USD năm 2021 để là công cụ tìm kiếm mặc định trên sản phẩm của Apple. Còn theo <a href=\"https://vnexpress.net/apple-co-the-mat-hang-ty-usd-neu-google-thua-kien-4663756.html\">thống kê mới nhất</a> được DOJ đưa ra hồi tháng 10, con số này là 18-20 tỷ USD.</p><p>Theo <i>Washington Post</i>, nếu Google bị chứng minh vi phạm pháp luật trong vụ kiện với DOJ, tòa án có quyền ra lệnh thay đổi điều khoản hoặc hủy bỏ hợp đồng của công ty với Apple. Hiện Liên minh châu Âu cũng đề nghị các thiết bị phải cài đặt \"giao diện lựa chọn\" ngay từ đầu để người dùng truy cập những công cụ tìm kiếm ngoài Google.</p>', 'https://i1-sohoa.vnecdn.net/2023/11/15/WIIEYS6NCVKV7B55UWTH4ZVUTY-2708-1700019077.png?w=680&h=0&q=100&dpr=1&fit=crop&s=Mqf_2wSVeutdhFBRweTIyA', 'google-xac-nhan-tra-tien-ty-cho-apple-de-mac-dinh-cong-cu-tim-kiem-655df3d2882b0', 11, 0, '2023-11-15 20:53:51', '2023-11-15 20:53:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_code` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `address` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp(),
  `order_status_id` int(11) NOT NULL DEFAULT 1,
  `total_money` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `order_code`, `user_id`, `fullname`, `phone`, `address`, `note`, `order_date`, `order_status_id`, `total_money`, `coupon_id`) VALUES
(3, 'EQdXo1700735589', 9, 'Trần Văn B', '0332225678', 'tanvnwdwdwd', '', '2023-11-23 17:33:09', 5, 250360000, 0),
(4, 'zbnbJ1700735682', 9, 'Trần Văn B', '0332225678', 'tanvnwdwdwd', '', '2023-10-23 17:35:26', 4, 147750000, 0),
(5, 'nXe9V1700742943', 4, 'Vũ Ngọc Tân (admin)', '0332225690', 'Dong anh HA NOI', '', '2023-11-23 19:35:43', 4, 133770000, 0),
(6, 'DF2Q91700743034', 4, 'Vũ Ngọc Tân (admin)', '0332225690', 'Dong anh HA NOI', '', '2023-11-23 19:37:14', 4, 18861000, 0),
(7, 'Ujfhw1700924705', 10, 'tan c', '0990006780', 'Hà Nội', '', '2023-11-25 22:05:50', 5, 11270000, 0),
(8, 'cnz5M1700968091', 10, 'tan c', '0990006780', 'Hà Nội', '', '2023-11-26 10:10:33', 3, 7680000, 0),
(9, '5ZFhw1700968352', 10, 'tan c', '0990006780', 'Hà Nội 2', '', '2023-11-26 10:13:25', 3, 50980000, 0),
(10, 'ZRdR61701012945', 4, 'Vũ Ngọc Tân (admin)', '0332225690', 'Dong anh HA NOI', '', '2023-11-26 22:35:45', 4, 78560000, 1),
(11, 'EobYE1701436932', 4, 'Vũ Ngọc Tân (admin)', '0332225690', 'Dong anh HA NOI', '', '2023-12-01 20:24:41', 4, 12960000, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_item`
--

CREATE TABLE `order_item` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_variant_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_money` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_item`
--

INSERT INTO `order_item` (`id`, `order_id`, `product_variant_id`, `price`, `quantity`, `total_money`) VALUES
(3, 2, 12, 35690000, 1, 35690000),
(4, 2, 13, 34890000, 2, 69780000),
(5, 2, 11, 5690000, 1, 5690000),
(6, 2, 9, 7990000, 2, 15980000),
(7, 3, 12, 35690000, 2, 71380000),
(8, 3, 1, 44900000, 2, 89800000),
(9, 3, 2, 44590000, 2, 89180000),
(10, 4, 2, 44590000, 3, 133770000),
(11, 4, 9, 7990000, 1, 7990000),
(12, 4, 8, 5990000, 1, 5990000),
(13, 5, 2, 44590000, 3, 133770000),
(14, 6, 32, 9990000, 1, 9990000),
(15, 6, 26, 3690000, 1, 3690000),
(16, 6, 29, 5181000, 1, 5181000),
(17, 7, 25, 3590000, 1, 3590000),
(18, 7, 26, 3690000, 1, 3690000),
(19, 7, 28, 3990000, 1, 3990000),
(20, 8, 26, 3690000, 1, 3690000),
(21, 8, 28, 3990000, 1, 3990000),
(22, 9, 18, 25990000, 1, 25990000),
(23, 9, 21, 24990000, 1, 24990000),
(24, 10, 28, 3990000, 1, 3990000),
(25, 10, 21, 24990000, 3, 74970000),
(26, 11, 25, 3590000, 3, 10770000),
(27, 11, 33, 2190000, 1, 2190000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_status`
--

INSERT INTO `order_status` (`id`, `name`, `description`) VALUES
(1, 'Chờ xác nhận', 'Chờ xác nhận từ người bán'),
(2, 'Đang chuẩn bị', 'Chuẩn bị giao hàng'),
(3, 'Đang giao hàng', 'Đang giao hàng'),
(4, 'Đã giao hàng', 'Giao hàng hoàn tất'),
(5, 'Đã huỷ', 'Huỷ giao hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `payment_transaction_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `payment`
--

INSERT INTO `payment` (`id`, `order_id`, `payment_method_id`, `payment_transaction_id`) VALUES
(1, 1, 1, 0),
(2, 2, 2, 1),
(3, 3, 1, 0),
(4, 4, 2, 2),
(5, 5, 1, 0),
(6, 6, 1, 0),
(7, 7, 2, 3),
(8, 8, 3, 4),
(9, 9, 3, 5),
(10, 10, 1, 0),
(11, 11, 2, 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment_method`
--

CREATE TABLE `payment_method` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `display_name` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `payment_method`
--

INSERT INTO `payment_method` (`id`, `name`, `display_name`, `description`, `thumb`, `status`) VALUES
(1, 'cash_on_delivery', 'Thanh toán khi nhận hàng', 'Thanh toán bằng tiền mặt khi giao hàng.', 'https://phuhungthinh.com/wp-content/uploads/2022/08/thanh-toan.png', 1),
(2, 'vnpay', 'VNPAY', 'Thanh toán qua VNPAY, bạn có thể thanh toán bằng thẻ tín dụng nếu bạn không có tài khoản VNPAY.', 'https://vnpay.vn/s1/statics.vnpay.vn/2023/6/0oxhzjmxbksr1686814746087.png', 1),
(3, 'momo', 'MOMO', 'Thanh toán qua MOMO, bạn có thể thanh toán bằng thẻ tín dụng nếu bạn không có tài khoản MOMO.', 'https://developers.momo.vn/v3/assets/images/icon-52bd5808cecdb1970e1aeec3c31a3ee1.png', 1),
(4, 'onepay', 'ONEPAY', 'Thanh toán qua ONEPAY, bạn có thể thanh toán bằng thẻ tín dụng nếu bạn không có tài khoản ONEPAY.', 'https://play-lh.googleusercontent.com/mvedVCbQg6ADKUYYraVLOlmOfOy2Rz66kEPvbmxt5xZ2TTa90Go9jBD2dJrwWmEo5g8', 0),
(6, 'thu nghiem', 'Thử nghiệm', 'ưdwdwdwdw', 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700730034/uploads_WEB2041_Ecommerce/php2420_ww14or.png', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment_transactions`
--

CREATE TABLE `payment_transactions` (
  `id` int(11) NOT NULL,
  `bankCode` varchar(50) NOT NULL,
  `bankTranNo` varchar(50) NOT NULL,
  `cardType` varchar(50) NOT NULL,
  `payDate` bigint(11) NOT NULL,
  `transactionNo` varchar(50) NOT NULL,
  `secureHash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `payment_transactions`
--

INSERT INTO `payment_transactions` (`id`, `bankCode`, `bankTranNo`, `cardType`, `payDate`, `transactionNo`, `secureHash`) VALUES
(1, 'NCB', 'VNP14190170', 'ATM', 2147483647, '14190170', '46354236749fe0d42ce472b676e9e7fef15c4066baf4cce52a678afae085bb1f4f1875273bdf637195df90700b8e1950254dd8ff1b3a831c023192e449d28d46'),
(2, 'NCB', 'VNP14195094', 'ATM', 2147483647, '14195094', '2589e637f110a2b0b34797ac488a8e21ada7c658e3cb65ede570121367a849c26885246f3e2365fcf0b58c5dc93242fe7d4d03b361dbaacaafe7e5ec01a6bc9b'),
(3, 'NCB', 'VNP14200362', 'ATM', 2147483647, '14200362', 'fc0bae76b46bed13909d170f23f384e87686656a435b6f42686ff91b0ebb3f33fe92e5f54420f3df236dd12fc92070b4637933f0c05dfcee407edb72710c0ece'),
(4, 'SML', '3135486376', 'napas', 2147483647, '3135486376', 'd31b283780b9a651118939cfc1f7f4f1972609388fe084686ea077c5a1a00ef6'),
(5, 'SML', '3135486464', 'napas', 1700968410, '3135486464', '3634134f31e7d9f8fc69cdd3c28aabdd7413b6db2c61afb3c1a928a492985322'),
(6, 'NCB', 'VNP14214760', 'ATM', 20231201202350, '14214760', '4036f8ba7a0653bad86325fa58140be84e7069b119cd7728fb7553281017552155222d45a775894bce8368a2731d32c7a02bc343347ea85fa302b0345653bf32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `discount` smallint(6) NOT NULL DEFAULT 0,
  `isVariant` tinyint(4) NOT NULL DEFAULT 0,
  `sold` int(11) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `thumb` text NOT NULL,
  `totalRatings` float NOT NULL DEFAULT 0,
  `totalUserRatings` mediumint(9) NOT NULL DEFAULT 0,
  `short_description` text NOT NULL,
  `description` text NOT NULL,
  `cate_id` int(11) NOT NULL,
  `slug` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `view` mediumint(9) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `title`, `brand_id`, `price`, `discount`, `isVariant`, `sold`, `quantity`, `thumb`, `totalRatings`, `totalUserRatings`, `short_description`, `description`, `cate_id`, `slug`, `status`, `view`, `create_at`, `update_at`) VALUES
(83, 'Điện thoại iPhone 15 Pro Max 256GB', 1, 34990000, 0, 1, 3, 190, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700490487/uploads_WEB2041_Ecommerce/phpF4DB_duz3b2.jpg', 4, 2, '<p>iPhone 15 Pro Max&nbsp;1 TB thực sự là một siêu phẩm kết hợp đầy đủ các tinh hoa trên một chiếc flagship của Apple. Với bộ vi xử lý Apple A17 Pro mạnh mẽ đang đi đầu trong cuộc đua về hiệu năng và camera 48 MP siêu sắc nét, từ đó bạn có thể trải nghiệm mọi ứng dụng và tác vụ một cách mượt mà và nhanh chóng hay thực hiện việc quay chụp với nội dung cho ra được chất lượng cao.</p>', '<figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/299033/iphone-15-pro-131023-034959.jpg\" alt=\"iPhone 15 Pro Max Tổng quan\"></figure><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/299033/iphone-15-pro-131023-035001.jpg\" alt=\"iPhone 15 Pro Max Thông số kỹ thuật và tính năng\"></figure><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/299033/iphone-15-pro-131023-035003.jpg\" alt=\"iPhone 15 Pro Max So sánh\"></figure><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/299033/iphone-15-pro-131023-035005.jpg\" alt=\"iPhone 15 Pro Max Chuyển đổi\"></figure><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/299033/iphone-15-pro-131023-035007.jpg\" alt=\"iPhone 15 Pro Max Phụ kiện\"></figure><h3><strong>So sánh iPhone 15 Pro Max 1 TB và các sản phẩm iPhone 15 Series khác?</strong></h3><figure class=\"table\"><table><tbody><tr><td><strong>Tiêu chí</strong></td><td><strong>iPhone 15 Pro Max 1 TB</strong></td><td><a href=\"https://www.thegioididong.com/dtdd/iphone-15-pro-1tb\"><strong>iPhone 15 Pro 1 TB</strong></a></td><td><a href=\"https://www.thegioididong.com/dtdd/iphone-15-plus-512gb\"><strong>iPhone 15 Plus 512 GB</strong></a></td><td><a href=\"https://www.thegioididong.com/dtdd/iphone-15-512gb\"><strong>iPhone 15 512 GB</strong></a></td></tr><tr><td>Màn hình</td><td><p>&nbsp; &nbsp;• Kích thước: 6.7 inch</p><p>&nbsp; &nbsp;• Super Retina XDR OLED</p><p>&nbsp; &nbsp;• Công nghệ ProMotion</p><p>&nbsp; &nbsp;• Dynamic Island</p><p>&nbsp; &nbsp;• 2796 x 1290 pixels</p></td><td><p>&nbsp; &nbsp;• Kích thước: 6.1 inch</p><p>&nbsp; &nbsp;• Super Retina XDR OLED</p><p>&nbsp; &nbsp;• Công nghệ ProMotion</p><p>&nbsp; &nbsp;• Dynamic Island</p><p>&nbsp; &nbsp;• 2556 x 1179 pixels</p></td><td><p>&nbsp; &nbsp;• Kích thước: 6.7 inch</p><p>&nbsp; &nbsp;• Super Retina XDR OLED</p><p>&nbsp; &nbsp;• Dynamic Island</p><p>&nbsp; &nbsp;• 2796 x 1290 pixels</p></td><td><p>&nbsp; &nbsp;• Kích thước: 6.1 inch</p><p>&nbsp; &nbsp;• Super Retina XDR OLED</p><p>&nbsp; &nbsp;• Dynamic Island</p><p>&nbsp; &nbsp;• 2556 x 1179 pixels</p></td></tr><tr><td>Kích thước và khối lượng</td><td><p>&nbsp; &nbsp;• 159.9 mm x 76.7 mm x 8.25 mm</p><p>&nbsp; &nbsp;• 221 gram</p></td><td><p>&nbsp; &nbsp;• 146.6 mm x 70.6 mm x 8.25 mm</p><p>&nbsp; &nbsp;• 187g</p></td><td><p>&nbsp; &nbsp;• 160.9 mm x 77.8 mm x 7.8 mm</p><p>&nbsp; &nbsp;• 201 gram</p></td><td><p>&nbsp; &nbsp;• 147.6 mm x 71.6 mm x 7.8 mm</p><p>&nbsp; &nbsp;• 171 gram</p></td></tr><tr><td>Khung viền</td><td>Titanium</td><td>Titanium</td><td>Nhôm</td><td>Nhôm</td></tr><tr><td>Chip</td><td>Apple A17 Pro</td><td>Apple A17 Pro</td><td>Apple A16 Bionic</td><td>Apple A16 Bionic</td></tr><tr><td>Dung lượng</td><td><p>&nbsp; &nbsp;• 256GB</p><p>&nbsp; &nbsp;• 512GB</p><p>&nbsp; &nbsp;• 1TB</p></td><td><p>&nbsp; &nbsp;• 128GB</p><p>&nbsp; &nbsp;• 256GB</p><p>&nbsp; &nbsp;• 512GB</p><p>&nbsp; &nbsp;• 1TB</p></td><td><p>&nbsp; &nbsp;• 128GB</p><p>&nbsp; &nbsp;• 256GB</p><p>&nbsp; &nbsp;• 512GB</p></td><td><p>&nbsp; &nbsp;• 128GB</p><p>&nbsp; &nbsp;• 256GB</p><p>&nbsp; &nbsp;• 512GB</p></td></tr><tr><td>Camera</td><td><p>&nbsp; &nbsp;• Camera trước: 12MP, f/1.9</p><p>&nbsp; &nbsp;• Camera chính: 48MP, f/1.78</p><p>&nbsp; &nbsp;• Camera góc siêu rộng: 12MP, f/2.2</p><p>&nbsp; &nbsp;• Camera Telephoto: 12MP, f/2.8, khả năng zoom 2x và 5x</p></td><td><p>&nbsp; &nbsp;• Camera trước: 12MP, f/1.9</p><p>&nbsp; &nbsp;• Camera chính: 48MP, f/1.78</p><p>&nbsp; &nbsp;• Camera góc siêu rộng: 12MP, f/2.2</p><p>&nbsp; &nbsp;• Camera Telephoto: 12MP, f/2.8, khả năng zoom 2x và 3x</p></td><td><p>&nbsp; &nbsp;• Camera trước: 12MP, f/1.9</p><p>&nbsp; &nbsp;• Camera chính: 48MP, f/1.6</p><p>&nbsp; &nbsp;• Camera góc siêu rộng: 12MP, f/2.4</p></td><td><p>&nbsp; &nbsp;• Camera trước: 12MP, f/1.9</p><p>&nbsp; &nbsp;• Camera chính: 48MP, f/1.6</p><p>&nbsp; &nbsp;• Camera góc siêu rộng: 12MP, f/2.4</p></td></tr><tr><td>Nút tác vụ</td><td>Có</td><td>Có</td><td>Không</td><td>Không</td></tr><tr><td>Thời lượng pin</td><td><p>&nbsp; &nbsp;• Nghe nhạc: 95 tiếng</p><p>&nbsp; &nbsp;• Xem video: 29 tiếng</p><p>&nbsp; &nbsp;• Xem video (trực tuyến): 25 tiếng</p></td><td><p>&nbsp; &nbsp;• Nghe nhạc: 75 tiếng</p><p>&nbsp; &nbsp;• Xem video: 23 tiếng</p><p>&nbsp; &nbsp;• Xem video (trực tuyến): 20 tiếng</p></td><td><p>&nbsp; &nbsp;• Nghe nhạc: 100 tiếng</p><p>&nbsp; &nbsp;• Xem video: 26 tiếng</p><p>&nbsp; &nbsp;• Xem video (trực tuyến): 20 tiếng</p></td><td><p>&nbsp; &nbsp;• Nghe nhạc: 80 tiếng</p><p>&nbsp; &nbsp;• Xem video: 20 tiếng</p><p>&nbsp; &nbsp;• Xem video (trực tuyến): 16 tiếng</p></td></tr><tr><td>Cảm biến</td><td>Cảm biến tiệm cận</td><td>Cảm biến tiệm cận</td><td>Cảm biến tiệm cận</td><td>Cảm biến tiệm cận</td></tr><tr><td>Cổng kết nối</td><td>USB-C hỗ trợ USB 3</td><td>USB-C hỗ trợ USB 3</td><td>USB-C hỗ trợ USB 2</td><td>USB-C hỗ trợ USB 2</td></tr><tr><td>Màu sắc</td><td>Titan tự nhiên (Natural Titanium), Titan trắng (White Titanium), Titan đen (Black Titanium), Titan xanh (Blue Titanium)</td><td>Titan tự nhiên (Natural Titanium), Titan trắng (White Titanium), Titan đen (Black Titanium), Titan xanh (Blue Titanium)</td><td>Đen (Black), Xanh lá (Green), Vàng (Yellow), Hồng (Pink) và Xanh dương (Blue)</td><td>Đen (Black), Xanh lá (Green), Vàng (Yellow), Hồng (Pink) và Xanh dương (Blue)</td></tr></tbody></table></figure><h3><br>So sánh iPhone 15 Pro Max&nbsp;1 TB và iPhone 14 Pro Max 1 TB: Có đáng để nâng cấp?</h3><p>Dưới đây sẽ là bảng tổng hợp thông số kỹ thuật giữa hai thế hệ&nbsp;<a href=\"https://www.thegioididong.com/dtdd-apple-iphone\">điện thoại iPhone</a>:</p><figure class=\"table\"><table><tbody><tr><td><strong>Tiêu chí</strong></td><td><strong>iPhone 15 Pro Max 1 TB</strong></td><td><strong>iPhone 14 Pro Max 1 TB</strong></td></tr><tr><td><strong>Màn hình</strong></td><td><p>&nbsp; •&nbsp;Kích thước: 6.7 inch</p><p>&nbsp; •&nbsp;Super Retina XDR OLED</p><p>&nbsp; •&nbsp;Công nghệ ProMotion</p><p>&nbsp; •&nbsp;Công nghệ True Tone</p><p>&nbsp; •&nbsp;Dynamic Island</p><p>&nbsp; •&nbsp;2796 x 1290 pixels</p></td><td><p>&nbsp; •&nbsp;Kích thước: 6.7 inch</p><p>&nbsp; •&nbsp;Super Retina XDR OLED</p><p>&nbsp; •&nbsp;Công nghệ True Tone</p><p>&nbsp; •&nbsp;Công nghệ ProMotion</p><p>&nbsp; •&nbsp;Dynamic Island</p><p>&nbsp; •&nbsp;2796 x 1290 pixels</p></td></tr><tr><td><strong>Kích thước và khối lượng</strong></td><td><p>&nbsp;<strong>&nbsp;•&nbsp;159.9 mm x 76.7 mm x 8.25 mm</strong></p><p><strong>&nbsp; •&nbsp;221 gram</strong></p></td><td><p>&nbsp; •&nbsp;160.7 mm x 77.6 mm x 7.85 mm</p><p>&nbsp; •&nbsp;240 gram</p></td></tr><tr><td><strong>Khung viền</strong></td><td><strong>Titanium</strong></td><td>Kim loại thép không gỉ</td></tr><tr><td><strong>Chip</strong></td><td><strong>Apple A17 Pro</strong></td><td>Apple A16 Bionic</td></tr><tr><td><strong>RAM</strong></td><td><strong>8 GB</strong></td><td>6 GB</td></tr><tr><td><strong>Bộ nhớ trong</strong></td><td>256 GB, 512 GB, 1 TB</td><td><strong>128 GB</strong>, 256 GB, 512 GB, 1 TB</td></tr><tr><td><strong>Camera</strong></td><td><p>&nbsp; •&nbsp;Camera trước: 12MP, f/1.9</p><p>&nbsp; •&nbsp;Camera chính: 48MP, f/1.78</p><p>&nbsp; •&nbsp;Camera góc siêu rộng: 12MP, f/2.2</p><p>&nbsp; •<strong>&nbsp;Camera Telephoto: 12MP, f/2.8, khả năng zoom 2x và 5x</strong></p></td><td><p>&nbsp; •&nbsp;Camera trước: 12MP</p><p>&nbsp; •&nbsp;Camera chính: 48MP, f/1.78</p><p>&nbsp; •&nbsp;Camera góc siêu rộng: 12MP, f/2.2</p><p>&nbsp; •&nbsp;Camera Telephoto: 12MP, f/2.8 khả năng zoom 2x, 3x</p></td></tr><tr><td><strong>Nút tác vụ</strong></td><td><strong>Action Button</strong></td><td>Cần gạt</td></tr><tr><td><strong>Dung lượng pin</strong></td><td><strong>4422 mAh</strong></td><td>4323 mAh</td></tr><tr><td><strong>Thời lượng pin</strong></td><td><p>&nbsp; •&nbsp;Nghe nhạc: 95 tiếng</p><p>&nbsp; •&nbsp;Xem video: 29 tiếng</p><p>&nbsp; •&nbsp;Xem video (trực tuyến): 25 tiếng</p></td><td><p>&nbsp; •&nbsp;Nghe nhạc: 95 tiếng</p><p>&nbsp; •&nbsp;Xem video: 29 tiếng</p><p>&nbsp; •&nbsp;Xem video (trực tuyến): 25 tiếng</p></td></tr><tr><td><strong>Cảm biến</strong></td><td><p>&nbsp; •&nbsp;LiDAR Scanner</p><p>&nbsp; •&nbsp;Face ID</p><p>&nbsp; •&nbsp;Con quay hồi chuyển độ lệch tương phản cao</p><p>&nbsp; •&nbsp;Gia tốc kế lực G cao</p><p>&nbsp; •&nbsp;Cảm biến tiệm cận</p><p>&nbsp; •&nbsp;Hai cảm biến ánh sáng môi trường</p><p>&nbsp; •&nbsp;Áp kế</p></td><td><p>&nbsp; •&nbsp;LiDAR Scanner</p><p>&nbsp; •&nbsp;Face ID</p><p>&nbsp; •&nbsp;Con quay hồi chuyển độ lệch tương phản cao</p><p>&nbsp; •&nbsp;Gia tốc kế lực G cao</p><p>&nbsp; •&nbsp;Cảm biến tiệm cận</p><p>&nbsp; •&nbsp;Hai cảm biến ánh sáng môi trường</p><p>&nbsp; •&nbsp;Áp kế</p></td></tr><tr><td><strong>Cổng kết nối</strong></td><td><strong>USB-C hỗ trợ USB 3</strong></td><td>Lightning hỗ trợ USB 2</td></tr><tr><td><strong>Công suất sạc</strong></td><td>20 W</td><td>20 W</td></tr><tr><td><strong>Thời gian sạc</strong></td><td>Sạc tới 50% trong 35 phút</td><td>Sạc tới 50% trong 35 phút</td></tr><tr><td><strong>Màu sắc</strong></td><td><strong>Titan tự nhiên (Natural Titanium), Titan trắng (White Titanium), Titan đen (Black Titanium), Titan xanh (Blue Titanium)</strong></td><td>Vàng, Đen, Bạc, Tím</td></tr><tr><td><strong>Kết nối</strong></td><td><strong>Wi‑Fi 6E</strong>, 5G</td><td>Wi‑Fi 6, 5G</td></tr></tbody></table></figure><h3>Trong thế giới công nghệ ngày càng phát triển, <a href=\"https://www.thegioididong.com/dtdd/iphone-15-pro-max-1tb\">iPhone 15&nbsp;Pro&nbsp;Max&nbsp;1 TB</a> nổi bật như một điện thoại thông minh hoàn hảo, kết hợp sự mạnh mẽ của công nghệ và sự sáng tạo không giới hạn. Chiếc điện thoại này không chỉ đem lại hiệu năng vượt trội mà còn mang đến khả năng chụp ảnh xuất sắc, tạo nên một trải nghiệm hoàn hảo cho người dùng.</h3><h3>Diện mạo sang trọng, cứng cáp</h3><p>iPhone 15 Pro Max&nbsp;1 TB vẫn duy trì thiết kế vuông vắn và đẳng cấp đã làm nên tên tuổi của dòng sản phẩm này. Việc giữ nguyên dáng vẻ truyền thống không chỉ thể hiện sự sang trọng, thanh lịch mà còn giúp người dùng nhận ra ngay lập tức rằng đây là một chiếc iPhone.<br>&nbsp;<br>Là một sự thay đổi quan trọng, iPhone 15 Pro Max&nbsp;1 TB đã từ bỏ chất liệu khung thép không gỉ quen thuộc để chuyển sang sử dụng khung Titanium. Điều này không chỉ làm cho chiếc điện thoại trở nên cứng cáp hơn mà còn giúp giảm khối lượng tổng thể, mang lại sự thoải mái hơn khi sử dụng trong thời gian dài.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/299033/iphone-15-pro-130923-102854.jpg\" alt=\"Thiết kế điện thoại - iPhone 15 Pro Max\"></figure><p>Mặt lưng của iPhone 15 Pro Max&nbsp;1 TB được làm từ kính cường lực cao cấp và chế tạo theo kiểu nhám, tạo nên một vẻ đẹp độc đáo và tạo điểm nhấn cho thiết kế tổng thể. Đồng thời, vật liệu này cũng làm cho chiếc điện thoại trở nên kháng trầy xước và hạn chế bám vân tay tốt hơn.</p><p>Dynamic Island là một tính năng độc đáo trên iPhone 15 Pro Max&nbsp;1 TB. Đây là tính năng hoạt động trên phần hình notch dạng viên thuốc của màn hình, cho phép người dùng truy cập nhanh các ứng dụng và chức năng thông qua các biểu tượng động. Điều này giúp tối ưu hóa sự tiện lợi và tăng hiệu suất của người dùng.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/299033/iphone-15-pro-130923-103025.jpg\" alt=\"Thiết kế điện thoại - iPhone 15 Pro Max\"></figure><h3>Sử dụng cổng Type-C thay vì Lightning</h3><p>Một trong những sự thay đổi quan trọng nhất trong thiết kế của iPhone 15 Pro Max&nbsp;1 TB là việc chuyển từ cổng Lightning quen thuộc sang cổng Type-C tiêu chuẩn. Quyết định này đánh dấu sự tiến bộ và sự đổi mới của Apple trong việc cung cấp cho người dùng một trải nghiệm kết nối hiện đại và linh hoạt hơn.</p><p>Xem thêm:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/usb-type-c-chuan-muc-cong-ket-noi-moi-723760\">USB Type C là gì? Có ưu nhược điểm gì so với những USB truyền thống?</a></p><p>Với cổng Type-C trên iPhone 15 Pro Max&nbsp;1 TB, người dùng có thể nhanh chóng chia sẻ dữ liệu, sạc pin và kết nối với các phụ kiện mà họ có thể sử dụng hằng ngày mà không cần phải tìm kiếm cáp chuyển đổi.</p><h3>Trang bị ba camera sau đỉnh cao</h3><p>Về phần máy ảnh, điện thoại tích hợp 3 camera trong đó bao gồm: Camera chính 48 MP, camera tele 12 MP và camera góc siêu rộng 12 MP.</p><p>Với độ phân giải 48 MP, những chi tiết nhỏ nhất được tái tạo một cách tinh tế và khả năng chụp ảnh trong điều kiện ánh sáng yếu là điểm đáng chú ý. Cho dù bạn đang chụp cảnh thiên nhiên tươi đẹp hay chia sẻ những khoảnh khắc gia đình, camera chính luôn mang lại những bức ảnh sắc nét và sống động.</p><p>iPhone 15 Pro Max&nbsp;1 TB không chỉ là một công cụ tuyệt vời cho nhiếp ảnh mà còn cho việc quay video chất lượng cao. Với khả năng quay video 4K ở tốc độ khung hình 60 fps, bạn sẽ có những video mượt mà và sắc nét.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/299033/iphone-15-pro-130923-103905.jpg\" alt=\"Camera điện thoại - iPhone 15 Pro Max\"></figure><p>Nếu bạn là người yêu thích thể thao và hoạt động ngoài trời, tính năng quay video 2.8K Action Mode sẽ là sự lựa chọn hoàn hảo. Đây là một công cụ mạnh mẽ để bạn ghi lại những hoạt động mạo hiểm và độc đáo của mình với hình ảnh ổn định và sắc nét.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/299033/iphone-15-pro-130923-103910.jpg\" alt=\"Camera điện thoại - iPhone 15 Pro Max\"></figure><h3>Sử dụng màn hình OLED tần số quét cao</h3><p>Với công nghệ OLED, màn hình trên iPhone 15 Pro Max&nbsp;1 TB cung cấp màu sắc với độ tương phản và độ sáng đỉnh cao. Điều này làm cho mọi màu sắc trở nên sống động và chân thực. Bạn có thể thấy từng gam màu với độ tinh tế và phong cách riêng biệt.</p><p>Công nghệ OLED hoạt động bằng cách tự phát sáng từ từng điểm ảnh trên màn hình. Điều này có nghĩa là mỗi điểm ảnh có khả năng tự điều chỉnh độ sáng của mình mà không cần đèn nền. Kết quả là màu sắc được tái hiện vô cùng chính xác và màn hình có thể tắt từng pixel độc lập để cho ra độ tương phản cao.</p><p>Xem thêm:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-oled-la-gi-905762\">Màn hình OLED là gì? Có gì nổi bật? Thiết bị nào có màn hình OLED?</a></p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/299033/iphone-15-pro-130923-104241.jpg\" alt=\"Màn hình điện thoại - iPhone 15 Pro Max\"></figure><p>Màn hình của iPhone 15 có độ phân giải 1290 x 2796 pixels, có nghĩa là mọi điểm ảnh trên màn hình rất nhỏ và gần như không thể thấy bằng mắt thường. Mỗi pixel nhỏ xíu này đều hoạt động cùng nhau để tái hiện mọi chi tiết và đường nét với sự chính xác tuyệt đối. Điều này tạo nên hình ảnh sắc nét và sâu lắng, cho phép bạn thấy từng đặc điểm nhỏ nhất trong mọi hình ảnh.</p><p>Với kích thước lớn lên đến 6.7 inch, màn hình của iPhone 15 Pro Max&nbsp;1 TB cung cấp một không gian rộng rãi và thoải mái để xem nội dung. Điều này làm cho việc duyệt web, xem video, thậm chí chơi game trên điện thoại trở nên đặc biệt thú vị. Bạn có thể đắm chìm hoàn toàn vào nội dung mà bạn yêu thích và màn hình lớn giúp tận hưởng mọi chi tiết một cách tối ưu.</p><p>Màn hình iPhone 15 Pro Max&nbsp;1 TB được hỗ trợ tần số quét lên tới 120 Hz, giúp mang lại trải nghiệm mượt mà và đáng kinh ngạc cho việc cuộn trang, chơi game và xem video. Khả năng hiển thị nhanh mượt này làm cho mọi tương tác trên màn hình trở nên thích tay và đã mắt hơn.</p><p>Độ sáng của màn hình iPhone 15 Pro Max&nbsp;1 TB cũng ấn tượng, với khả năng đạt tới 2000 nits. Điều này cho phép bạn sử dụng điện thoại một cách dễ dàng dù trong điều kiện ánh sáng mặt trời mạnh mẽ và nội dung trên màn hình luôn rõ ràng và dễ đọc.</p><h3>Hỗ trợ sạc nhanh</h3><p>iPhone 15 Pro Max&nbsp;1 TB được trang bị một viên pin dung lượng lớn, giúp bạn sử dụng điện thoại một cách thoải mái suốt cả ngày. Dù bạn đang duyệt web, xem video hoặc sử dụng ứng dụng nặng, pin của chiếc iPhone này sẽ đảm bảo bạn không bị gián đoạn bởi việc phải sạc lại liên tục.</p><p>Để đảm bảo bạn không mất quá nhiều thời gian để sạc lại pin, iPhone 15 Pro Max&nbsp;1 TB hỗ trợ công nghệ sạc nhanh 20 W. Điều này có nghĩa là bạn có thể sạc từ 0% lên đến mức đủ dùng trong thời gian ngắn, giúp bạn tiết kiệm thời gian và luôn sẵn sàng cho mọi nhiệm vụ.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/299033/iphone-15-pro-130923-104602.jpg\" alt=\"Pin và sạc điện thoại - iPhone 15 Pro Max\"></figure><p>Không chỉ có dung lượng pin lớn và sạc nhanh, iPhone 15 Pro Max&nbsp;1 TB còn được trang bị tính năng quản lý năng lượng thông minh thông qua iOS 17. Điều này giúp tối ưu hóa hiệu suất pin, đảm bảo rằng năng lượng được sử dụng hiệu quả mà không lãng phí. Bạn có thể sử dụng điện thoại một cách thông minh mà không cần lo lắng về việc pin sẽ cạn sớm.</p><h3>Hiệu năng bức phá mọi giới hạn</h3><p>Apple luôn nắm vững quyền kiểm soát và phát triển chip xử lý riêng và Apple A17 Pro không phải là ngoại lệ. Với hiệu năng mạnh mẽ, bộ vi xử lý này giúp iPhone 15 Pro Max&nbsp;1 TB chạy mượt mà, đáng tin cậy và nhanh chóng. Bạn có thể thực hiện nhiều tác vụ khó khăn mà không gặp trở ngại nào.</p><p>Xem thêm:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/chip-a17-bionic-tien-trinh-3nm-tien-tien-1522727\">Chip Apple A17 Pro - Tiến trình 3nm tiên tiến, hiệu năng cực khủng</a></p><p>Với 8 GB RAM, chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd-choi-game\">điện thoại chơi game cấu hình cao</a>&nbsp;này&nbsp;sẽ không bao giờ bị gián đoạn hay giật lag. Điều này đặc biệt hữu ích khi bạn chơi game, chỉnh sửa video hoặc xử lý ứng dụng đòi hỏi tài nguyên nhiều. Bạn có thể dễ dàng chuyển đổi giữa các ứng dụng mà không gặp trục trặc.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/299033/iphone-15-pro-130923-104358.jpg\" alt=\"Cấu hình điện thoại - iPhone 15 Pro Max\"></figure><p>Hệ điều hành iOS 17 mang đến nhiều cải tiến đáng kể về tính năng và hiệu năng. Nó tối ưu hóa tương tác giữa phần cứng và phần mềm, giúp điện thoại hoạt động mượt mà và tiết kiệm pin. Các tính năng mới và cải tiến trong iOS 17 giúp bạn làm việc, giải trí và duyệt web một cách nhanh chóng và thuận tiện.</p><p>Xem thêm:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/toan-bo-thong-tin-ve-ios-17-ngay-ra-mat-tinh-nang-1525071\">iOS 17 chính thức: Khi nào ra mắt, có gì mới, hỗ trợ máy nào?</a></p><h3>Có nên mua iPhone 15 Pro Max&nbsp;1 TB?</h3><p>iPhone 15 Pro Max&nbsp;1 TB là một chiếc điện thoại thông minh cao cấp với nhiều ưu điểm nổi bật, bao gồm thiết kế đẹp mắt, hiệu năng mạnh mẽ, camera tuyệt vời và mức giá hợp lý. Nếu bạn đang tìm kiếm một chiếc điện thoại có thể đáp ứng tốt mọi nhu cầu sử dụng, thì iPhone 15 Pro Max là một lựa chọn đáng cân nhắc.</p><h3>Lý do chọn mua iPhone 15 Pro Max&nbsp;1 TB tại Thế Giới Di Động</h3><p>iPhone 15 Pro Max&nbsp;1 TB là một chiếc điện thoại thông minh cao cấp được mong đợi nhất năm 2023. Với nhiều tính năng mới và cải tiến, iPhone 15&nbsp;Pro Max&nbsp;1 TB chắc chắn sẽ là một lựa chọn tuyệt vời cho những người dùng đang tìm kiếm một chiếc điện thoại có hiệu năng mạnh mẽ, camera chất lượng và thiết kế sang trọng.</p><p><strong>•&nbsp;Sản phẩm chính hãng, đảm bảo chất lượng:&nbsp;</strong>Thế Giới Di Động là nhà bán lẻ điện thoại di động lớn nhất Việt Nam, cam kết cung cấp sản phẩm chính hãng, đảm bảo chất lượng. Bạn có thể yên tâm về xuất xứ sản phẩm và có thể tận hưởng trải nghiệm sử dụng tốt nhất.</p><p><strong>•&nbsp;Ưu đãi và khuyến mãi hấp dẫn:</strong>&nbsp;Thế Giới Di Động thường xuyên có các chương trình khuyến mãi, giảm giá và tặng quà kèm, giúp bạn tiết kiệm được một khoản tiền khi mua iPhone 15&nbsp;Pro Max&nbsp;1 TB.</p><p><strong>•&nbsp;Hệ thống cửa hàng rộng khắp:</strong>&nbsp;Thế Giới Di Động có mạng lưới cửa hàng rộng khắp trên toàn quốc, giúp bạn dễ dàng tìm được một cửa hàng gần nhà để mua sắm. Bạn cũng có thể trực tiếp kiểm tra sản phẩm và nhận sự hỗ trợ từ nhân viên tại cửa hàng.</p><p><strong>•&nbsp;Dịch vụ hậu mãi chuyên nghiệp:&nbsp;</strong>Thế Giới Di Động cung cấp dịch vụ hậu mãi chuyên nghiệp, bao gồm bảo hành, sửa chữa và hỗ trợ kỹ thuật. Điều này giúp bạn yên tâm về việc sử dụng trong thời gian dài.</p><p><strong>•&nbsp;Trả góp linh hoạt:</strong>&nbsp;Thế Giới Di Động cung cấp các lựa chọn trả góp phù hợp với ngân sách của bạn, giúp bạn mua được sản phẩm với giá iPhone 15 Pro Max 1 TB theo như mong muốn mà không cần thanh toán toàn bộ số tiền một lúc.</p><p><strong>•&nbsp;Uy tín và kinh nghiệm lâu năm:&nbsp;</strong>Với hơn 15 năm hoạt động trên thị trường, Thế Giới Di Động đã xây dựng được một uy tín mạnh mẽ trong ngành công nghiệp điện thoại di động. Điều này giúp bạn yên tâm về việc mua sắm tại Thế Giới Di Động.</p><h3>Câu hỏi thường gặp trước khi mua iPhone 15 Pro Max&nbsp;1 TB</h3><p><strong>iPhone 15 Pro Max&nbsp;1 TB​ có mấy màu?</strong></p><p>Chiếc điện thoại dòng&nbsp;<a href=\"https://www.thegioididong.com/dtdd-apple-iphone-15-series\">iPhone 15</a>&nbsp;này&nbsp;được ra mắt với 4 màu sắc: Titan tự nhiên (Natural Titanium), Titan trắng (White Titanium), Titan đen (Black Titanium), Titan xanh (Blue Titanium). Các màu sắc này được thiết kế với tone màu huyền bí, lịch lãm, toát lên vẻ đẹp sang trọng và đẳng cấp.</p><p><strong>Camera của iPhone 15 Pro&nbsp;Max&nbsp;1 TB có chụp ảnh tốt không?</strong></p><p>Câu trả lời là có. Camera của iPhone 15 Pro&nbsp;Max&nbsp;1 TB có độ phân giải lên đến 48 MP, khẩu độ lớn và nhiều tính năng chụp ảnh tiên tiến. Điều này giúp iPhone 15 Pro&nbsp;Max&nbsp;1 TB có thể chụp ảnh sắc nét, sống động và chuyên nghiệp.</p><p><strong>iPhone 15 Pro Max&nbsp;1 TB chạy chip gì và mạnh mẽ ra sao?</strong></p><p>iPhone 15 Pro&nbsp;Max&nbsp;1 TB sử dụng con chip A17 Pro, là con chip mạnh mẽ nhất hiện nay của Apple. A17 Pro mang đến hiệu năng xử lý vượt trội, giúp iPhone 15 Pro&nbsp;Max có thể chạy mượt mà mọi ứng dụng và game.</p><h3>Giá bán iPhone 15 Pro&nbsp;Max&nbsp;1 TB</h3><p>Dưới đây là bảng tổng hợp giá bán iPhone 15 Pro&nbsp;Max&nbsp;1 TB cho từng phiên bản bộ nhớ ở thị trường Quốc Tế và Việt Nam:</p><figure class=\"table\"><table><tbody><tr><td><strong>Các phiên bản</strong></td><td><strong>Giá bán thị trường quốc tế</strong></td><td><strong>Giá bán tại Thế Giới Di Động</strong></td></tr><tr><td><a href=\"https://www.thegioididong.com/dtdd/iphone-15-pro-max\">iPhone 15 Pro&nbsp;Max 256 GB</a></td><td>1.199 USD</td><td>34.490.000đ</td></tr><tr><td><a href=\"https://www.thegioididong.com/dtdd/iphone-15-pro-max-512gb\">iPhone 15 Pro&nbsp;Max 512 GB</a></td><td>1.399 USD</td><td>40.990.000đ</td></tr><tr><td>iPhone 15&nbsp;Pro&nbsp;Max&nbsp;1 TB</td><td>1.599 USD</td><td>46.990.000đ</td></tr></tbody></table></figure><h3>Video giới thiệu điện thoại iPhone 15 Pro và iPhone 15 Pro Max</h3><p>iPhone 15 Pro Max&nbsp;1 TB thực sự là một siêu phẩm kết hợp đầy đủ các tinh hoa trên một chiếc flagship của Apple. Với bộ vi xử lý Apple A17 Pro mạnh mẽ đang đi đầu trong cuộc đua về hiệu năng và camera 48 MP siêu sắc nét, từ đó bạn có thể trải nghiệm mọi ứng dụng và tác vụ một cách mượt mà và nhanh chóng hay thực hiện việc quay chụp với nội dung cho ra được chất lượng cao.</p>', 29, 'dien-thoai-iphone-15-pro-max-256gb-6561f5b15c77b', 1, 359, '2023-11-20 21:28:01', '2023-11-23 15:04:48'),
(84, 'Đồng hồ Edifice Casio 48.2 mm Nam ECB-2200DC-1ADF', 40, 5181000, 6, 1, 1, 223, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700573728/uploads_WEB2041_Ecommerce/phpBAC5_eijvlp.webp', 0, 0, '<p>Với đầy đủ các đặc trưng của đồng hồ Casio truyền thống, Edifice&nbsp;Casio&nbsp;còn được tích hợp nhiều chức năng hiện đại, giá trị ứng dụng cao, mang đến cho phái mạnh dòng sản phẩm thông minh đáng mơ ước.</p>', '<figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/7264/315211/edifice-casio-ecb-2200dc-1adf-nam-21.jpg\" alt=\"Tổng quan về thương hiệu của mẫu đồng hồ\"></figure><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/7264/315211/edifice-casio-ecb-2200dc-1adf-nam-22.jpg\" alt=\"Chất liệu mặt kính và khung viền của mẫu đồng hồ\"></figure><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/7264/315211/edifice-casio-ecb-2200dc-1adf-nam-23.jpg\" alt=\"Chất liệu dây đeo của mẫu đồng hồ\"></figure><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/7264/315211/edifice-casio-ecb-2200dc-1adf-nam-24.jpg\" alt=\"Khả năng kháng nước của mẫu đồng hồ\"></figure><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/7264/315211/edifice-casio-ecb-2200dc-1adf-nam-25.jpg\" alt=\"Tiện ích của mẫu đồng hồ \"></figure><p>•&nbsp;<a href=\"https://www.thegioididong.com/dong-ho-deo-tay/edifice-casio-ecb-2200dc-1adf-nam\">Đồng hồ Edifice Casio 48.2 mm Nam ECB-2200DC-1ADF</a> là một sản phẩm của thương hiệu Edifice Casio, nổi tiếng đến từ Nhật Bản. Được tạo ra đặc biệt để phục vụ các quý ông đam mê tập luyện thể dục, sản phẩm này sở hữu một loạt tính năng tiện ích.</p><p>•&nbsp;Sự tinh tế của chiếc <a href=\"https://www.thegioididong.com/dong-ho-deo-tay-edifice-casio\">đồng hồ EDIFICE CASIO</a> này thể hiện qua sự kết hợp hoàn hảo giữa công nghệ, thiết kế đẹp mắt và tính năng độc đáo. Thiết kế ngoại hình của nó được chia thành hai khu vực với nhiều chức năng khác nhau, và tên thương hiệu được in chìm tinh tế ở vị trí 12 giờ, tạo nên một sự thu hút sâu sắc.</p><p>•&nbsp;Dây đeo được làm từ thép không gỉ bóng bẩy, không chỉ sáng đẹp mà còn chống va đập và ăn mòn tốt, giúp các quý ông có thể thoải mái sử dụng hàng ngày. Khung viền của đồng hồ được làm từ chất liệu carbon và thép không gỉ, đảm bảo độ bền và khả năng chịu nhiệt, cho phép bạn đeo nó bất kể nơi đâu và trong bất kỳ hoàn cảnh nào.</p><p>•&nbsp;Với đường kính mặt <a href=\"https://www.thegioididong.com/dong-ho-deo-tay\">đồng hồ</a>&nbsp;lên đến <strong>48.2 mm</strong>, phù hợp cho cả những người có cổ tay lớn và nhỏ, nhưng đều muốn thể hiện phong cách ấn tượng và nổi bật. Mặt kính được làm từ kính khoáng, có khả năng chống va đập tốt và dễ dàng đánh bóng lại khi bị trầy xước nhẹ, giúp đồng hồ luôn giữ được vẻ đẹp sáng bóng.</p><p>•&nbsp;Điều đặc biệt là <a href=\"https://www.thegioididong.com/dong-ho-deo-tay-nam\">đồng hồ nam</a>&nbsp;này có khả năng chống nước lên đến <strong>10 ATM</strong>, cho phép bạn sử dụng trong các hoạt động hàng ngày như rửa tay, đi mưa, tắm hoặc bơi lội. Tuy nhiên, hãy tránh đeo nó khi lặn hoặc vặn các nút khi dưới nước.</p><p>•&nbsp;Sản phẩm này của thương hiệu Edifice Casio, với nhiều ưu điểm vượt trội, được trang bị đầy đủ các tính năng tiện ích như lịch ngày và thứ, báo thức, đồng hồ 24 giờ, bấm giờ thể thao, 2 đèn LED, và bấm giờ đếm ngược. Sản phẩm còn hỗ trợ kết nối Bluetooth và có kim dạ quang, đảm bảo tính chính xác và đáng tin cậy trong việc quản lý thời gian.</p>', 3, 'dong-ho-edifice-casio-482-mm-nam-ecb-2200dc-1adf-655df400315e3', 1, 50, '2023-11-20 21:34:44', '2023-11-20 21:34:44'),
(85, 'Máy tính bảng Samsung Galaxy Tab A9+ 5G ', 4, 6990000, 9, 1, 0, 34, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700491651/uploads_WEB2041_Ecommerce/phpF22B_o2qmfc.jpg', 0, 0, '<p>Thiết kế của Galaxy Tab A9+ 5G đem đến một sự tươi mới và tinh tế. Máy sở hữu một ngoại hình hiện đại và thanh lịch với mặt lưng phẳng và khung kim loại. Các góc bo tròn mềm mại làm cho máy có sự đối lập với những đường nét phẳng phiu nên trông khá thú vị.&nbsp;</p>', '<h3>Với giá cả phải chăng,&nbsp;<a href=\"https://www.thegioididong.com/may-tinh-bang/samsung-galaxy-tab-a9-plus-5g\">Samsung Galaxy Tab A9+ 5G</a>&nbsp;là một sản phẩm máy tính bảng của Samsung dành cho người dùng muốn sở hữu một thiết bị giải trí cơ bản với màn hình rộng và khả năng kết nối mạng toàn diện để truy cập internet bất kỳ lúc nào và ở bất kỳ đâu.</h3><h3>Ngoại hình sang trọng, cứng cáp</h3><p>Thiết kế của Galaxy Tab A9+ 5G đem đến một sự tươi mới và tinh tế. Máy sở hữu một ngoại hình hiện đại và thanh lịch với mặt lưng phẳng và khung kim loại. Các góc bo tròn mềm mại làm cho máy có sự đối lập với những đường nét phẳng phiu nên trông khá thú vị.&nbsp;</p><p>Vỏ ngoài của Galaxy Tab A9+&nbsp;5G&nbsp;được làm từ kim loại, tạo nên một vẻ ngoài sang trọng và đẳng cấp. Chất liệu kim loại cung cấp sự cứng cáp và độ bền cho máy tính bảng, giúp tăng thêm độ bền bỉ để hạn chế hư hại cho va đập. Đặc biệt, việc làm nhám bề mặt này giúp ngăn máy trượt tay và mang lại cảm giác thoải mái khi cầm máy.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/522/315390/samsung-galaxy-tab-a9-251023-103947.jpg\" alt=\"Thiết kế máy tính bảng - Samsung Galaxy Tab A9+ 5G\"></figure><p>Galaxy Tab A9+&nbsp;5G&nbsp;có sự đa dạng trong lựa chọn màu sắc, bao gồm Xám, Bạc và Xanh Navy. Điều này cho phép người dùng thể hiện cá tính của họ thông qua màu sắc yêu thích. Các tùy chọn màu sắc này mang đến sự đa dạng và thú vị trong việc tùy chỉnh máy tính bảng theo phong cách cá nhân.</p><p>Đặc biệt, Galaxy Tab A9+&nbsp;5G được&nbsp;trang bị công nghệ Dolby Atmos trên bộ loa, đưa đến trải nghiệm âm thanh đỉnh cao. Với âm thanh xuất sắc và chi tiết, bạn có thể thỏa sức thưởng thức âm nhạc, xem phim hoặc chơi game mà không cần lo lắng về chất lượng âm thanh. Các loa tích hợp sẽ tái tạo mọi chi tiết âm thanh một cách rõ ràng và sống động.</p><p>Galaxy Tab A9+&nbsp;5G&nbsp;tiếp tục cung cấp sự tiện lợi với cổng sạc Type-C, giúp bạn nạp nhanh thiết bị. Đồng thời, thiết bị vẫn giữ nguyên cổng tai nghe 3.5 mm, cho phép bạn kết nối với các tai nghe và loa ngoài không cần sử dụng bộ chuyển đổi. Điều này làm cho&nbsp;chiếc&nbsp;<a href=\"https://www.thegioididong.com/may-tinh-bang-samsung\">máy tính bảng Samsung</a>&nbsp;này&nbsp;thực sự linh hoạt trong việc sử dụng và kết nối với các phụ kiện âm thanh.</p><p>Phiên bản này hỗ trợ gắn SIM, tạo sự tiện lợi cho người dùng khi cần kết nối internet khi không có Wi-Fi. Với khả năng kết nối 5G, bạn có thể truy cập internet mọi lúc, mọi nơi và không bị giới hạn bởi việc phải tìm điểm Wi-Fi công cộng. Điều này làm cho Galaxy Tab A9+&nbsp;5G&nbsp;trở nên linh hoạt và đáng tin cậy hơn cho cả công việc và giải trí.</p><h3>Trang bị màn hình lớn lên đến 11 inch</h3><p>Màn hình của Galaxy Tab A9+&nbsp;5G&nbsp;được trang bị công nghệ TFT LCD, một sự kết hợp độc đáo giữa chất lượng hình ảnh và khả năng tiết kiệm năng lượng. Màn hình TFT LCD không chỉ hiển thị màu sắc tự nhiên và sáng rõ mà còn tiết kiệm điện năng, giúp kéo dài thời gian sử dụng máy. Điều này làm cho Galaxy Tab A9+ 5G trở thành một lựa chọn thông minh khi người dùng muốn kết hợp chất lượng hình ảnh và hiệu suất pin tối ưu.</p><p>Kích thước màn hình 11 inch trên Galaxy Tab A9+&nbsp;5G&nbsp;làm cho thiết bị trở nên lý tưởng trong việc xem phim, đọc sách và làm việc. Với không gian rộng rãi này, bạn có thể thỏa sức thưởng thức nội dung mà không cần phải zoom in hoặc di chuyển qua lại nhiều lần. Kích thước lớn này tạo ra một trải nghiệm thú vị và thoải mái.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/522/315390/samsung-galaxy-tab-a9-251023-103949.jpg\" alt=\"Kích thước màn hình - Samsung Galaxy Tab A9+ 5G\"></figure><p>Màn hình của Galaxy Tab A9+&nbsp;5G&nbsp;được trang bị độ phân giải cao lên đến 1200 x 1920 pixels, mang đến hình ảnh rõ nét. Độ phân giải cao này đảm bảo mọi chi tiết trên màn hình được hiển thị một cách rõ ràng và sắc nét. Điều này làm cho việc xem video, xem hình ảnh và làm việc trên máy tính bảng trở nên thú vị hơn.</p><h3>Bổ sung đầy đủ camera trước và sau</h3><p>Galaxy Tab A9+&nbsp;5G&nbsp;không phải là một thiết bị chuyên về nhiếp ảnh, nhưng vẫn mang lại khả năng sử dụng camera ổn định và tiện dụng cho nhiều mục đích. Với camera sau 8 MP, máy&nbsp;đủ tốt để chụp rõ văn bản, tài liệu cho công việc hoặc học tập.&nbsp;</p><p>Đây là một tính năng hữu ích khi bạn cần sao chép hoặc lưu trữ thông tin từ sách, bài giảng hoặc các tài liệu công việc. Máy tính bảng này cho phép bạn chụp ảnh rõ ràng và sắc nét của văn bản, giúp bạn tiết kiệm thời gian và nâng cao hiệu suất công việc hoặc học tập.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/522/315390/samsung-galaxy-tab-a9-251023-103951.jpg\" alt=\"Camera máy tính bảng - Samsung Galaxy Tab A9+ 5G\"></figure><p>Camera trước 5 MP cung cấp khả năng chụp ảnh rõ ràng và tương đối sáng. Đây là một lựa chọn tốt cho cuộc gọi video, họp trực tuyến hoặc việc chia sẻ ảnh cá nhân lên mạng xã hội. Tuy nhiên, vì là dòng máy tính bảng giá rẻ nên máy không được trang bị nhiều tính năng, cho nên để có bức ảnh đẹp nhất có lẽ cần qua bước hậu kỳ để giúp ảnh mịn màng và đẹp mắt hơn.</p><p>Máy tính bảng này cung cấp khả năng quay video Full HD ở camera sau, cho phép bạn ghi lại các sự kiện và khoảnh khắc quan trọng trong cuộc sống. Mặc dù không phải là chất lượng video chuyên nghiệp, nhưng nó đủ để lưu giữ những khoảnh khắc đáng nhớ và tạo ra nội dung video cá nhân.</p><h3>Hiệu năng đáp ứng tốt các tác vụ cơ bản</h3><p>Một trong những điểm đáng chú ý nhất của Galaxy Tab A9+&nbsp;5G&nbsp;là sự hiện diện của chip&nbsp;Snapdragon 695, một thành phần quan trọng quyết định hiệu năng của thiết bị. Chip được thiết kế để đáp ứng tốt nhu cầu của người dùng và giúp máy tính bảng thực hiện các tác vụ cơ bản một cách nhanh chóng và hiệu quả.</p><p>Với chip&nbsp;Snapdragon 695, Galaxy Tab A9+&nbsp;5G&nbsp;hoạt động mượt mà và ít khi gặp khó khăn khi mở các ứng dụng hoặc thực hiện các tác vụ hằng ngày như lướt web, soạn thảo văn bản. Việc xem video, duyệt web, lướt qua các ứng dụng và trải nghiệm giải trí trên&nbsp;<a href=\"https://www.thegioididong.com/may-tinh-bang\">máy tính bảng</a>&nbsp;trở nên trơn tru và thú vị hơn bao giờ hết.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/522/315390/samsung-galaxy-tab-a9-251023-103952.jpg\" alt=\"Hiệu năng máy tính bảng - Samsung Galaxy Tab A9+ 5G\"></figure><p>Là mẫu&nbsp;<a href=\"https://www.thegioididong.com/may-tinh-bang-ram-4gb\">máy tính bảng RAM 4 GB</a>, vì thế máy khá đuối trong việc mở nhiều ứng dụng cùng lúc khi có nhiều ứng dụng chạy ngầm gây tốn bộ nhớ đệm. Vậy nên để máy tính bảng hoạt động ở trạng thái tốt nhất, người dùng nên hạn chế mở nhiều ứng dụng không cần thiết và đảm bảo được tắt hoàn toàn khi không sử dụng.</p><p>Bên cạnh đó, khả năng lưu trữ là một yếu tố quan trọng và Galaxy Tab A9+&nbsp;5G&nbsp;không làm bạn thất vọng. Với 64 GB bộ nhớ trong, người dùng có đủ không gian để lưu giữ hàng trăm ảnh, video và tệp tin. Điều tuyệt vời hơn, khả năng mở rộng thêm 1 TB qua thẻ Micro SD cho phép bạn thỏa sức lưu trữ mà không cần lo lắng về việc thiếu không gian.</p><h3>Năng lượng đáp ứng đủ cho cả ngày dài</h3><p>Dung lượng pin lớn 7040 mAh trên Galaxy Tab A9+&nbsp;5G&nbsp;là một trong những yếu tố quan trọng đáng chú ý. Với dung lượng này, thiết bị có thể đảm bảo hiệu suất liên tục trong suốt một ngày, cho phép bạn sử dụng nhiều tính năng mà không cần lo lắng về việc cạn pin.</p><p>Điều đáng kể là, viên pin 7040 mAh trên Galaxy Tab A9+&nbsp;5G&nbsp;đủ để hỗ trợ các nhiệm vụ cơ bản suốt cả ngày. Cho dù bạn đang duyệt web, xem video, thực hiện cuộc gọi video hoặc thậm chí làm việc từ xa, viên pin này hoạt động một cách xuất sắc, mang lại trải nghiệm suôn sẻ. Bạn có thể sử dụng máy tính bảng thoải mái mà không cần lo lắng về tình trạng pin.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/522/315390/samsung-galaxy-tab-a9-251023-103954.jpg\" alt=\"Pin trên máy tính bảng - Samsung Galaxy Tab A9+ 5G\"></figure><p>Tuy nhiên, một điểm yếu của thiết bị là công suất sạc chỉ hỗ trợ 15 W. Điều này có nghĩa là việc sạc đầy viên pin 7040 mAh có thể mất một thời gian khá lâu. Mặc dù bạn có viên pin dung lượng lớn, nhưng việc sạc pin vẫn đòi hỏi kiên nhẫn khi bạn muốn nạp nhanh để tiếp tục sử dụng. Tuy nhiên, bằng cách quản lý thời gian sạc, bạn vẫn có thể vượt qua một ngày mà không gặp nhiều khó khăn lớn.</p><p>Tổng kết, Samsung Galaxy Tab A9+ 5G hoàn toàn đáp ứng tốt nhu cầu giải trí của người dùng thông thường trên màn hình lớn, thay thế cho việc sử dụng điện thoại di động. Sản phẩm này thích hợp làm thiết bị giải trí cho cả gia đình, phù hợp cho trẻ em học tập và giải trí, cũng như cho người lớn sử dụng để đọc báo và cập nhật tin tức hằng ngày.</p>', 33, 'may-tinh-bang-samsung-galaxy-tab-a9-5g-6569e1bdc54fe', 1, 13, '2023-11-20 21:47:25', '2023-11-20 21:47:25');
INSERT INTO `product` (`id`, `title`, `brand_id`, `price`, `discount`, `isVariant`, `sold`, `quantity`, `thumb`, `totalRatings`, `totalUserRatings`, `short_description`, `description`, `cate_id`, `slug`, `status`, `view`, `create_at`, `update_at`) VALUES
(86, 'Điện thoại iPhone 15 Plus 512GB', 1, 34569000, 5, 1, 0, 190, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700492842/uploads_WEB2041_Ecommerce/php206A_m6c13s.jpg', 0, 0, '<p>iPhone 15 Plus&nbsp;512 GB sẽ khuấy đảo thị trường công nghệ trong thời gian tới với bộ thông số hoàn hảo trong giới smartphone hiện nay. Điện thoại không chỉ mang lối thiết kế trẻ trung, mà đi cùng với đó là hiệu năng mạnh mẽ đủ sức cân mọi tác vụ.</p>', '<figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/303812/iphone-15-512gb-131023-110624.jpg\" alt=\"iPhone 15 Plus Tổng quan\"></figure><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/303812/iphone-15-512gb-131023-110626.jpg\" alt=\"iPhone 15 Plus Thông số kỹ thuật và tính năng\"></figure><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/303812/iphone-15-512gb-131023-110629.jpg\" alt=\"iPhone 15 Plus So sánh\"></figure><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/303812/iphone-15-512gb-131023-110631.jpg\" alt=\"iPhone 15 Plus Chuyển đổi\"></figure><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/303812/iphone-15-512gb-131023-110633.jpg\" alt=\"iPhone 15 Plus Phụ kiện\"></figure><h3>Bảng so sánh thông số kỹ thuật iPhone 15 Plus 512 GB và các sản phẩm khác thuộc iPhone 15 series:</h3><figure class=\"table\"><table><tbody><tr><td><strong>Tiêu chí</strong></td><td><strong>iPhone 15 Plus 512 GB</strong></td><td><a href=\"https://www.thegioididong.com/dtdd/iphone-15-512gb\"><strong>iPhone 15 512 GB</strong></a></td><td><a href=\"https://www.thegioididong.com/dtdd/iphone-15-pro-512gb\"><strong>iPhone 15 Pro 512 GB</strong></a></td><td><a href=\"https://www.thegioididong.com/dtdd/iphone-15-pro-max-512gb\"><strong>iPhone 15 Pro Max 512 GB</strong></a></td></tr><tr><td><strong>Màn hình</strong></td><td><p>&nbsp; &nbsp;•&nbsp;6.7 inch</p><p>&nbsp; &nbsp;•&nbsp;Màn hình Super Retina XDR</p><p>&nbsp; &nbsp;•&nbsp;Độ phân giải 2796x1290 pixel với mật độ điểm ảnh 460 ppi</p></td><td><p>&nbsp; &nbsp;•&nbsp;6.1 inch</p><p>&nbsp; &nbsp;•&nbsp;Màn hình Super Retina XDR</p><p>&nbsp; &nbsp;•&nbsp;Độ phân giải 2556x1179 pixel với mật độ điểm ảnh 460 ppi</p></td><td><p>&nbsp; •&nbsp;6.1 inch</p><p>&nbsp; •&nbsp;Màn hình Super Retina XDR</p><p>&nbsp; •&nbsp;Độ phân giải 2556x1179 pixel với mật độ điểm ảnh 460 ppi</p></td><td><p>&nbsp; &nbsp;•&nbsp;6.7 inch</p><p>&nbsp; &nbsp;•&nbsp;Màn hình Super Retina XDR</p><p>&nbsp; &nbsp;•&nbsp;Độ phân giải 2796x1290 pixel với mật độ điểm ảnh 460 ppi</p></td></tr><tr><td><strong>Kích thước và khối lượng</strong></td><td><p>&nbsp; &nbsp;•&nbsp;160,9 x 77,8 x 7,80 mm (Dài x Rộng x&nbsp;Dày)</p><p>&nbsp; &nbsp;•&nbsp;201 gram</p></td><td><p>&nbsp;&nbsp; •&nbsp;147,6 x 71,6 x 7,80 mm (Dài x Rộng x&nbsp;Dày)</p><p>&nbsp; &nbsp;•&nbsp;171 gram</p></td><td><p>&nbsp; &nbsp;•&nbsp;146,6 x 70,6 x 8,25 mm (Dài x Rộng x&nbsp;Dày)</p><p>&nbsp; &nbsp;•&nbsp;187 gram</p></td><td><p>&nbsp; &nbsp;•&nbsp;159.9 x 76.7 x 8.25 mm (Dài x Rộng x&nbsp;Dày)</p><p>&nbsp; &nbsp;•&nbsp;221 gram</p></td></tr><tr><td><strong>Khung viền</strong></td><td>Nhôm với mặt sau bằng kính pha màu</td><td>Nhôm với mặt sau bằng kính pha màu</td><td>Titan với mặt sau bằng kính nhám</td><td>Titan với mặt sau bằng kính nhám</td></tr><tr><td><strong>Chip</strong></td><td>Chip A16 Bionic</td><td>Chip A16 Bionic</td><td>Chip A17 Pro</td><td>Chip A17 Pro</td></tr><tr><td><strong>Bộ nhớ lưu trữ</strong></td><td>&nbsp;128 GB, 256 GB, 512 GB</td><td>&nbsp;128 GB, 256 GB, 512 GB</td><td>&nbsp;128 GB, 256 GB, 512 GB, 1 TB</td><td>256 GB, 512 GB, 1 TB</td></tr><tr><td><strong>Camera</strong></td><td><p>&nbsp; •&nbsp;Hệ thống camera kép tiên tiến (Chính 48MP và Ultra Wide 12MP)</p><p>&nbsp; •&nbsp;Camera trước TrueDepth</p><p>&nbsp;•&nbsp;Các lựa chọn thu phóng quang học&nbsp; 0,5x, 1x, 2x</p></td><td><p>&nbsp; •&nbsp;Hệ thống camera kép tiên tiến (Chính 48MP và Ultra Wide 12MP)</p><p>&nbsp; •&nbsp;Camera trước TrueDepth</p><p>&nbsp; •&nbsp;Các lựa chọn thu phóng quang học 0,5x, 1x, 2x</p></td><td><p>&nbsp; •&nbsp;Hệ thống camera chuyên nghiệp (Chính 48MP, Ultra Wide 12MP và Telephoto 12MP)</p><p>&nbsp; •&nbsp;Camera trước TrueDepth</p><p>&nbsp; •&nbsp;Các lựa chọn thu phóng quang học 0,5x, 1x, 2x, 3x</p></td><td><p>&nbsp; &nbsp;•&nbsp;Hệ thống camera chuyên nghiệp&nbsp;(Chính 48MP, Ultra Wide 12MP và Telephoto 12MP)</p><p>&nbsp; •&nbsp;Camera trước TrueDepth</p><p>&nbsp; •&nbsp;Các lựa chọn thu phóng quang học 0,5x, 1x, 2x, 5x</p></td></tr><tr><td><strong>Nút tác vụ</strong></td><td>Nút chuyển đổi Chuông/Im Lặng</td><td>Nút chuyển đổi Chuông/Im Lặng</td><td>Nút Action Button</td><td>Nút Action Button</td></tr><tr><td><strong>Thời lượng pin</strong></td><td><p>&nbsp; &nbsp;•&nbsp;Thời gian xem video: 26 giờ</p><p>&nbsp; •&nbsp;Thời gian xem video (trực tuyến): 20 giờ</p><p>&nbsp; &nbsp;•&nbsp;Thời gian nghe nhạc: 100 giờ</p></td><td><p>&nbsp; &nbsp;•&nbsp;Thời gian xem video: 20 giờ</p><p>&nbsp; &nbsp;•&nbsp;Thời gian xem video (trực tuyến): 16 giờ</p><p>&nbsp; &nbsp;•&nbsp;Thời gian nghe nhạc: 80 giờ</p></td><td><p>&nbsp; &nbsp;•&nbsp;Thời gian xem video: 23 giờ</p><p>&nbsp; &nbsp;•&nbsp;Thời gian xem video (trực tuyến): 20 giờ</p><p>&nbsp; &nbsp;•&nbsp;Thời gian nghe nhạc: 75 giờ</p></td><td><p>&nbsp; &nbsp;•&nbsp;Thời gian xem video lên đến 29 giờ</p><p>&nbsp; &nbsp;•&nbsp;Thời gian xem video (trực tuyến) lên đến 25 giờ</p><p>&nbsp; &nbsp;•&nbsp;Thời gian nghe nhạc lên đến 95 giờ</p></td></tr><tr><td><strong>Cảm biến</strong></td><td>Con quay hồi chuyển độ lệch tương phản cao</td><td>Con quay hồi chuyển độ lệch tương phản cao</td><td><p>&nbsp; &nbsp;•&nbsp;LiDAR Scanner</p><p>&nbsp; •&nbsp;Con quay hồi chuyển độ lệch tương&nbsp;phản cao</p></td><td><p>&nbsp; &nbsp;•&nbsp;LiDAR Scanner</p><p>&nbsp; •&nbsp;Con quay hồi chuyển độ lệch tương&nbsp;phản cao</p></td></tr><tr><td><strong>Cổng kết nối</strong></td><td><p>&nbsp; &nbsp;•&nbsp;USB-C</p><p>&nbsp; &nbsp;•&nbsp;Hỗ trợ USB 2</p></td><td><p>&nbsp; &nbsp;•&nbsp;USB-C</p><p>&nbsp; &nbsp;•&nbsp;Hỗ trợ USB 2</p></td><td><p>&nbsp; &nbsp;•&nbsp;USB-C</p><p>&nbsp; &nbsp;•&nbsp;Hỗ trợ USB 3 (lên đến 10Gb/s)</p></td><td><p>&nbsp; &nbsp;•&nbsp;USB-C</p><p>&nbsp; &nbsp;•&nbsp;Hỗ trợ USB 3 (lên đến 10Gb/s)</p></td></tr><tr><td><strong>Màu sắc</strong></td><td>Đen (Black), Xanh lá (Green), Vàng (Yellow), Hồng (Pink) và Xanh dương (Blue)</td><td>Đen (Black), Xanh lá (Green), Vàng (Yellow), Hồng (Pink) và Xanh dương (Blue)</td><td>Titan tự nhiên (Natural Titanium), Titan trắng (White Titanium), Titan đen (Black Titanium), Titan xanh (Blue Titanium)</td><td>Titan tự nhiên (Natural Titanium), Titan trắng (White Titanium), Titan đen (Black Titanium), Titan xanh (Blue Titanium)</td></tr></tbody></table></figure><h3>Bảng so sánh thông số&nbsp;phiên bản iPhone 15 Plus 512 GB và iPhone 14 Plus 512 GB</h3><p>Dưới đây sẽ là bảng tổng hợp thông số kỹ thuật giữa hai thế hệ điện thoại&nbsp;iPhone:</p><figure class=\"table\"><table><tbody><tr><td><strong>Tiêu chí</strong></td><td><strong>iPhone 15 Plus 512 GB</strong></td><td><a href=\"https://www.thegioididong.com/dtdd/iphone-14-plus-512gb\"><strong>iPhone 14 Plus 512 GB</strong></a></td></tr><tr><td><strong>Màn hình</strong></td><td><p>&nbsp; &nbsp;•&nbsp;6.7 inch</p><p>&nbsp; &nbsp;•&nbsp;Màn hình Super Retina XDR</p><p>&nbsp; &nbsp;•&nbsp;Độ phân giải 2796x1290 pixel với mật độ điểm ảnh 460 ppi</p></td><td><p>&nbsp; &nbsp;•&nbsp;6.7 inch</p><p>&nbsp; &nbsp;•&nbsp;Màn hình Super Retina XDR</p><p>&nbsp; &nbsp;•&nbsp;Độ phân giải 2778x1284 pixel với mật độ điểm ảnh 458 ppi</p></td></tr><tr><td><strong>Kích thước và khối lượng</strong></td><td><p>&nbsp; &nbsp;•&nbsp;160,9 x 77,8 x 7,80 mm (Dài x Rộng x Dày)</p><p>&nbsp; &nbsp;•&nbsp;201 gram</p></td><td><p>&nbsp; &nbsp;•&nbsp;160,8 x 78,1 x 7,80 mm (Dài x Rộng x Dày)</p><p>&nbsp; &nbsp;•&nbsp;203 gam</p></td></tr><tr><td><strong>Chip</strong></td><td>Chip A16 Bionic</td><td>Chip A15 Bionic</td></tr><tr><td><strong>Camera</strong></td><td><p>&nbsp; &nbsp;•&nbsp;Hệ thống camera kép tiên tiến (Chính 48MP và Ultra Wide 12MP)</p><p>&nbsp; &nbsp;•&nbsp;Camera trước TrueDepth</p><p>&nbsp; &nbsp;•&nbsp;Các lựa chọn thu phóng quang học 0,5x, 1x, 2x</p></td><td><p>&nbsp; &nbsp;•&nbsp;Hệ thống camera kép 12MP (Chính và Ultra Wide)</p><p>&nbsp; &nbsp;•&nbsp;Camera trước TrueDepth</p><p>&nbsp; &nbsp;•&nbsp;Các lựa chọn thu phóng quang học học 0,5x, 1x</p></td></tr><tr><td><strong>Thời lượng pin</strong></td><td><p>&nbsp; &nbsp;•&nbsp;Thời gian xem video: 26 giờ</p><p>&nbsp; &nbsp;•&nbsp;Thời gian xem video (trực tuyến): 20 giờ</p><p>&nbsp; &nbsp;•&nbsp;Thời gian nghe nhạc: 100 giờ</p></td><td><p>&nbsp; &nbsp;•&nbsp;Thời gian xem video: 26 giờ</p><p>&nbsp; &nbsp;•&nbsp;Thời gian xem video (trực tuyến): 20 giờ</p><p>&nbsp; &nbsp;•&nbsp;Thời gian nghe nhạc: 100 giờ</p></td></tr><tr><td><strong>Cổng kết nối</strong></td><td><p>&nbsp; &nbsp;•&nbsp;USB-C</p><p>&nbsp; &nbsp;•&nbsp;Hỗ trợ USB 2</p></td><td><p>&nbsp; &nbsp;•&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/cong-lightning-la-gi-868282\">Lightning</a></p><p>&nbsp; &nbsp;•&nbsp;Hỗ trợ USB 2</p></td></tr><tr><td><strong>Màu sắc</strong></td><td>Đen (Black), Xanh lá (Green), Vàng (Yellow), Hồng (Pink) và Xanh dương (Blue)</td><td>Vàng, Đen, Trắng, Tím Nhạt, Xanh Dương</td></tr><tr><td><strong>Bộ nhớ lưu trữ</strong></td><td>&nbsp;128 GB, 256 GB, 512 GB</td><td>&nbsp;128 GB, 256 GB, 512 GB</td></tr></tbody></table></figure><h3>Đến hẹn lại lên, tháng 9/2023 Apple đã chính thức ra mắt&nbsp;<a href=\"https://www.thegioididong.com/dtdd-apple-iphone-15-series\">iPhone 15 series</a>&nbsp;mới nhất tại sự kiện Wonderlust. Trong đó, iPhone 15 Plus có sự nâng cấp mạnh mẽ về màu sắc cùng với lối thiết kế đẹp mắt, hiệu năng cũng như khả năng chụp ảnh trên máy. Điểm đặc&nbsp;biệt của lần ra mắt này là hãng đã loại bỏ hoàn toàn cổng Lightning và thay thế bằng cổng Type-C.</h3><h3>Thiết kế trẻ trung, màu sắc cuốn hút</h3><p>Apple mang đến cho người dùng một sản phẩm iPhone 15 Plus&nbsp;512 GB với lối thiết kế đẹp mắt. Chính vì thế nên <a href=\"https://www.thegioididong.com/dtdd/iphone-15-plus-512gb\">iPhone 15 Plus 512GB</a> sở hữu vẻ ngoài vô cùng thời trang khi có cạnh viền được làm phẳng, cụm camera đặt gọn trong cụm modem ở góc trái mặt lưng được mang từ những mẫu iPhone 14, làm cho tổng thể chiếc máy hài hòa và đẹp mắt.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/303825/iphone-15-plus-512gb-200923-104514.jpg\" alt=\"Thiết kế đẹp mắt - iPhone 15 Plus 512GB\"></figure><p>Apple cũng đã làm mới lớp áo trên iPhone 15 Plus&nbsp;512 GB với những màu sắc đẹp mắt và cực kỳ trendy. Hãng đã cho ra mắt 5 tùy chọn về màu sắc cho sản phẩm và mỗi tùy chọn đều đem lại sự mới lạ mà trước đó chưa từng xuất hiện trên các sản phẩm của Apple. Bạn sẽ tỏa sáng giữa đám đông khi cầm trên tay iPhone 15 Plus với những màu sắc đẹp mắt như vậy.</p><p>Một sự thay đổi đáng chú ý trên mặt trước của iPhone 15 Plus&nbsp;512 GB là việc thay thế tai thỏ ở các thế hệ trước bằng hình viên thuốc, tạo sự tinh tế hơn và mở rộng không gian hiển thị, mang đến trải nghiệm xem nội dung liền mạch hơn.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/303825/iphone-15-plus-512gb-200923-104513.jpg\" alt=\"Ngoại hình đổi mới thu hút ánh nhìn - iPhone 15 Plus 512GB\"></figure><p>Các công nghệ quan trọng như Face ID và các ứng dụng khác giúp hỗ trợ cho người dùng đều được hãng tích hợp vào Dynamic Island. Với Dynamic Island, bạn sẽ có trải nghiệm sử dụng điện thoại thuận tiện hơn, có thể điều khiển âm nhạc, nhận thông báo cuộc gọi và kiểm tra thông tin cá nhân mà không cần rời khỏi ứng dụng hoặc công việc đang thực hiện.</p><p>Xem thêm:&nbsp;<a href=\"https://thegioididong.com/hoi-dap/dynamic-island-tren-iphone-14-dong-pro-la-gi-hoat-1468356\">Dynamic Island trên iPhone dòng \"Pro\" là gì? Hoạt động như thế nào?</a></p><h3>Truyền dữ liệu nhanh hơn với cổng Type-C</h3><p>Nhằm hướng đến sự phát triển toàn diện và mục tiêu bảo vệ môi trường giúp giảm sự nóng lên toàn cầu. Đồng thời, hãng cũng muốn mang đến sự đồng bộ trong các sản phẩm của mình và truyền tải dữ liệu nhanh hơn nên đã thay thế cổng Lightning bằng cổng Type-C hiện đại với khả năng truyền tải vượt trội.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/303825/iphone-15-plus-512gb-200923-104511.jpg\" alt=\"Cổng Type-C tiện lợi - iPhone 15 Plus 512GB\"></figure><p>Cổng Type-C không chỉ giúp truyền tải dữ liệu nhanh hơn mà còn hỗ trợ sạc nhanh đáng kể. Điều này mang lại lợi ích lớn về tiết kiệm thời gian và tăng cường hiệu suất sử dụng của sản phẩm.</p><p>Xem thêm:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/usb-type-c-chuan-muc-cong-ket-noi-moi-723760\">USB Type C là gì? Có ưu nhược điểm gì so với những USB truyền thống?</a></p><h3>Chụp ảnh sắc nét với camera 48 MP</h3><p>Đã có sự cải tiến ở camera chính trên iPhone 15 Plus&nbsp;512 GB khi hãng đã tăng gấp 4 lần so với năm ngoái lên đến 48 MP. Giờ đây, bạn có thể quay video lên đến 4K 60 fps giúp bạn lưu lại những khoảnh khắc đáng nhớ trong cuộc sống. Bạn có thể chụp những bức ảnh nổi bật, với độ chi tiết cao một cách dễ dàng nhờ camera chính 48 MP với khả năng zoom tele 2X – từ ảnh chụp nhanh đến ảnh phong cảnh tuyệt đẹp.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/303825/iphone-15-plus-512gb-200923-104510.jpg\" alt=\"Camera chụp ảnh đỉnh cao - iPhone 15 Plus 512GB\"></figure><p>Ngoài ra, khả năng chụp ảnh góc siêu rộng trên iPhone được cải thiện đáng kể với camera 12 MP kết hợp với các thuật toán mới mang đến những bức ảnh góc rộng tự nhiên và chân thực hơn.</p><p>Khả năng chụp chân dung cũng được Apple nâng cấp lên một đẳng cấp mới trên các dòng sản phẩm của mình mang đến khả năng chụp ảnh đỉnh cao. Đồng thời, nếu bạn chụp một chủ thể nhất định nào đó trên iPhone 15 Plus&nbsp;512 GB nó sẽ tự động nhận biết chiều sâu của hình ảnh và biến nó thành một bức ảnh chân dung với khả năng xóa phông tuyệt vời.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/303825/iphone-15-plus-512gb-200923-104508.jpg\" alt=\"Ảnh chân dung sắc nét - iPhone 15 Plus 512GB\"></figure><p>Camera trước trên điện thoại cũng vô cùng mạnh mẽ với độ phân giải lên đến 12 MP. Đồng thời hỗ trợ quay video 4K mang lại độ phân giải cao, màu sắc rực rỡ và chi tiết tốt, đặc biệt nó rất phù hợp khi bạn muốn ghi lại những khoảnh khắc đáng nhớ hoặc chia sẻ nội dung chất lượng cao trên các mạng xã hội.</p><h3>Chìm đắm vào những thước phim với màn hình sắc nét</h3><p><a href=\"https://www.thegioididong.com/dtdd-apple-iphone\">Điện thoại iPhone</a> này trang bị một màn hình OLED và có kích thước 6.7 inch lớn cùng độ phân giải cao 1290 x&nbsp;2796&nbsp;pixels, giúp hình ảnh được tái tạo một cách sắc nét, màu sắc sống động giúp bạn có những trải nghiệm thị giác tuyệt.</p><p>Xem thêm:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-oled-la-gi-905762\">Màn hình OLED là gì? Có gì nổi bật? Thiết bị nào có màn hình OLED?</a></p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/303825/iphone-15-plus-512gb-200923-104506.jpg\" alt=\"Hiển thị hình ảnh sắc nét - iPhone 15 Plus 512GB\"></figure><p>Mặt trước sẽ cho không gian hiển thị rộng lớn với kiểu thiết kế viên thuốc như trên <a href=\"https://www.thegioididong.com/dtdd/iphone-14-pro\">iPhone 14 Pro</a>. Mọi nội dung sẽ được truyền tải tốt hơn và đầy đủ hơn với kiểu thiết kế này, giúp bạn thực sự đắm chìm vào màn ảnh với iPhone 15 Plus&nbsp;512 GB.</p><p>Một điểm đáng chú ý khác trong lần ra mắt này là mức độ sáng của màn hình đã được nâng lên đến 2000 nits, giúp bạn dễ dàng sử dụng điện thoại ở các môi trường với độ sáng cao như ngoài trời nắng.</p><h3>Hiệu năng mạnh mẽ cân mọi tác vụ</h3><p>Vi xử lý A16 Bionic trên các sản phẩm iPhone 14 Pro tiếp tục được chọn để trang bị trên iPhone 15 Plus&nbsp;512 GB và sức mạnh của nó đã được kiểm chứng. Chip được sản xuất trên tiến trình 4 nm, đây là phiên bản nâng cấp của A15 Bionic vì thế chip mang lại hiệu năng mạnh mẽ để xử lý mọi tác vụ, từ nhẹ đến nặng. Điều này giúp bạn chơi game một cách mượt mà và vẫn duy trì tối ưu hoá, tiết kiệm năng lượng.</p><p>Xem thêm:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/chip-a16-bionic-giup-iphone-14-lan-at-hieu-nang-1461587\">Đánh giá chip Apple A16 Bionic chi tiết về thông số và hiệu năng</a></p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/303825/iphone-15-plus-512gb-200923-104505.jpg\" alt=\"Hiệu năng mạnh mẽ - iPhone 15 Plus 512GB\"></figure><p>Máy có dung lượng RAM cao và được chạy trên hệ điều hành iOS 17 mới nhất, điều đó giúp cho điện thoại trở nên mượt mà hơn với thao tác đa nhiệm cũng như giao diện thân thiện với người dùng, giúp bạn tối ưu hóa quá trình làm việc và giải trí của mình.</p><p>Xem thêm:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/toan-bo-thong-tin-ve-ios-17-ngay-ra-mat-tinh-nang-1525071\">iOS 17 chính thức: Khi nào ra mắt, có gì mới, hỗ trợ máy nào?</a></p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/303825/iphone-15-plus-512gb-200923-104503.jpg\" alt=\"Hệ dideuf hành mượt mà - iPhone 15 Plus 512GB\"></figure><p>Đồng thời, đây là mẫu <a href=\"https://www.thegioididong.com/dtdd-rom-512gb\">điện thoại ROM 512 GB</a> giúp cho việc lưu trữ tài liệu hay hình ảnh trở nên đơn giản và dễ dàng hơn bao giờ hết. Bạn không còn phải bận tâm về việc muốn lưu nhiều thứ nhưng lại sợ hết dung lượng như trước đây nữa.</p><h3>Viên pin đáp ứng tốt cho ngày dài năng động</h3><p>Viên pin trên iPhone 15 Plus&nbsp;512 GB được đánh giá là có mức dung lượng cao. Hãng cũng cho biết thêm là máy có khả năng xem video liên tục lên đến 26 tiếng, giúp bạn trải nghiệm liền mạch mọi nội dung trên iPhone 15 Plus&nbsp;512 GB mà không bị gián đoạn. Hơn thế nữa với viên pin lớn bạn cũng không phải lo lắng về việc sạc pin liên tục trong ngày gây ảnh hưởng đến trải nghiệm cũng như tuổi thọ của pin.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/303825/iphone-15-plus-512gb-200923-104502.jpg\" alt=\"Viên pin đáp ứng tốt cho ngày năng động - iPhone 15 Plus 512GB\"></figure><p>Ngoài ra, <a href=\"https://www.thegioididong.com/dtdd\">điện thoại</a> cũng hỗ trợ sạc nhanh 20 W, cho phép bạn nạp pin lên đến 50% chỉ trong vòng 30 phút. Hoặc bạn có thể tận dụng các công nghệ sạc không dây tiên tiến như chuẩn Qi hoặc MagSafe để cung cấp nguồn điện một cách tiện lợi và nhanh chóng.</p><h3>Lý do chọn mua iPhone 15 Plus&nbsp;512 GB tại Thế Giới Di Động</h3><p>•&nbsp;<strong>Đáng tin cậy và uy tín</strong>: Thế Giới Di Động là một trong những nhà bán lẻ điện thoại di động lớn nhất và uy tín nhất tại Việt Nam. Đây là nơi cung cấp các sản phẩm chất lượng và dịch vụ khách hàng xuất sắc.</p><p>•&nbsp;<strong>Sự lựa chọn đa dạng</strong>: Thế Giới Di Động thường có sẵn một loạt các phiên bản và màu sắc của iPhone, giúp bạn dễ dàng lựa chọn sản phẩm phù hợp với nhu cầu và sở thích cá nhân của mình.</p><p>•&nbsp;<strong>Chương trình khuyến mãi và ưu đãi</strong>: Thế Giới Di Động thường có các chương trình khuyến mãi, giảm giá và ưu đãi đặc biệt cho các sản phẩm điện thoại mới, giúp bạn tiết kiệm được một phần chi phí mua sắm nhằm mang đến giá iPhone 15 Plus 512GB tốt nhất.</p><p>•&nbsp;<strong>Dịch vụ sau bán hàng</strong>: Thế Giới Di Động là nơi cung cấp dịch vụ sau bán hàng tốt, bao gồm bảo hành và hỗ trợ kỹ thuật, giúp bạn yên tâm sử dụng sản phẩm một cách thoải mái.</p><p>•&nbsp;<strong>Mạng lưới cửa hàng rộng khắp</strong>: Thế Giới Di Động có nhiều cửa hàng trên khắp Việt Nam, giúp bạn dễ dàng tiếp cận và mua iPhone 15 Plus&nbsp;512 GB ở địa điểm gần nhất.</p><h3>Câu hỏi thường gặp trước khi mua iPhone 15 Plus&nbsp;512 GB</h3><p><strong>iPhone 15 Plus&nbsp;512 GB có bao nhiêu phiên bản và màu sắc</strong>: iPhone 15 Plus&nbsp;512 GB có tổng cộng 3 phiên bản và 5 tùy chọn màu sắc. Điều này cho phép bạn có nhiều sự lựa chọn để phù hợp với nhu cầu và sở thích của mình.</p><p><strong>iPhone 15 Plus&nbsp;512 GB có hiệu năng và tính năng như thế nào</strong>: iPhone 15 Plus&nbsp;512 GB được trang bị con chip Apple A16 Bionic, một con chip mạnh mẽ mang lại hiệu năng ấn tượng, cho phép điện thoại xử lý mọi tác vụ từ nhẹ đến nặng một cách mượt mà bao gồm: chơi game, xem video 4K và sử dụng các ứng dụng đa nhiệm mà không gặp trở ngại.</p><p><strong>Khả năng chụp ảnh trên iPhone 15 Plus&nbsp;512 GB</strong>:<strong>&nbsp;</strong>Việc nâng cấp độ phân giải camera lên đến 48 MP và khẩu độ lớn trên iPhone 15 Plus&nbsp;512 GB là một bước tiến đáng chú ý. Điều này đồng nghĩa với việc bạn có thể chụp những bức ảnh sắc nét và rõ ràng hơn bao giờ hết, với chi tiết cực kỳ sắc nét. Khả năng chụp ảnh với độ phân giải cao cũng đi kèm với khả năng quay video chất lượng, giúp bạn ghi lại những khoảnh khắc đáng nhớ với độ nét và màu sắc xuất sắc.</p><h3>Giá bán iPhone 15 Plus&nbsp;512 GB tại Thế Giới Di Động</h3><p>Dưới đây là bảng tổng hợp giá bán iPhone 15 Plus&nbsp;512 GB cho từng phiên bản bộ nhớ thị trường Quốc Tế và Việt Nam:</p><figure class=\"table\"><table><tbody><tr><td><strong>Các phiên bản iPhone 15 Plus</strong></td><td><strong>Giá bán thị trường quốc tế</strong></td><td><strong>Giá bán tại Thế Giới Di Động</strong></td></tr><tr><td><a href=\"https://www.thegioididong.com/dtdd/iphone-15-plus\">iPhone 15 Plus 128 GB</a></td><td>899 USD</td><td>25.990.000đ</td></tr><tr><td>iPhone 15 Plus 256 GB</td><td>999 USD</td><td>28.990.000đ</td></tr><tr><td><a href=\"https://www.thegioididong.com/dtdd/iphone-15-plus-512gb\">iPhone 15 Plus 512 GB</a></td><td>1199 USD</td><td>34.990.000đ</td></tr></tbody></table></figure>', 29, 'dien-thoai-iphone-15-plus-512gb-6561f5a86f62c', 1, 37, '2023-11-20 22:07:16', '2023-11-20 22:07:16'),
(87, 'Điện thoại OPPO Find N3 Flip 5G Hồng', 31, 22990000, 0, 1, 0, 222, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700493155/uploads_WEB2041_Ecommerce/php907F_lhhnqy.jpg', 0, 0, '<p>OPPO Find N3 Flip 5G Hồng là một chiếc điện thoại gập đáng sắm nhờ sở hữu nhiều điểm nổi bật. Máy vừa có cấu hình mạnh, vừa sở hữu camera chất lượng cùng một thiết kế có vẻ đẹp khó cưỡng, rất phù hợp cho những bạn trẻ năng động đang cần tìm một sự phá cách độc đáo thông qua điện thoại gập.</p>', '<h3><a href=\"https://www.thegioididong.com/dtdd/oppo-find-n3-flip-hong\">OPPO Find N3 Flip 5G Hồng</a>&nbsp;được OPPO cho ra mắt chính thức tại thị trường Việt Nam vào tháng 10/2023.&nbsp;Sản phẩm được hãng đầu tư mạnh mẽ về camera với độ phân giải lên đến 50 MP, cấu hình sử dụng chip Dimensity 9200 5G và thiết kế được thay đổi với bản lề gập mở tốt hơn cùng màu hồng sang trọng và nữ tính.</h3><p>Bảng so sánh thông số kỹ thuật giữa&nbsp;OPPO Find N3 Flip 5G Hồng và&nbsp;OPPO Find N2 Flip</p><p>Dưới đây sẽ là bảng tổng hợp thông số kỹ thuật giữa hai thế hệ điện thoại gập của OPPO:</p><figure class=\"table\"><table><tbody><tr><td><strong>Tiêu chí</strong></td><td><strong>OPPO Find N3 Flip 5G Hồng</strong></td><td><strong>OPPO Find N2 Flip</strong></td></tr><tr><td><strong>Màn hình chính</strong></td><td><p>&nbsp; &nbsp;•&nbsp;Tấm nền&nbsp;AMOLED</p><p>&nbsp; &nbsp;• Độ phân giải&nbsp;Full HD+ (1080 x 2520 Pixels)</p><p>&nbsp; &nbsp;•&nbsp;Kích thước&nbsp;6.8 inch</p></td><td><p>&nbsp; &nbsp;•&nbsp;​Tấm nền&nbsp;AMOLED</p><p>&nbsp; &nbsp;•&nbsp;Độ phân giải&nbsp;Full HD+ (1080 x&nbsp;2520 Pixels)</p><p>&nbsp; &nbsp;•&nbsp;Kích thước&nbsp;6.8 inch</p></td></tr><tr><td><strong>Màn hình phụ</strong></td><td><p>&nbsp; &nbsp; •&nbsp;Tấm nền&nbsp;AMOLED</p><p>&nbsp; &nbsp;• Độ phân giải&nbsp;382 x&nbsp;720 Pixels</p><p>&nbsp; &nbsp;•&nbsp;Kích thước&nbsp;3.26&nbsp;inch</p></td><td><p>&nbsp; &nbsp; •&nbsp;Tấm nền&nbsp;AMOLED</p><p>&nbsp; &nbsp;• Độ phân giải&nbsp;382 x&nbsp;720 Pixels</p><p>&nbsp; &nbsp;•&nbsp;Kích thước&nbsp;3.26&nbsp;inch</p></td></tr><tr><td><strong>Camera</strong></td><td><p>&nbsp; &nbsp;•&nbsp;<strong>Camera chính 50 MP (chống rung OIS)</strong></p><p>&nbsp; &nbsp;•&nbsp;<strong>Camera góc siêu rộng 48 MP</strong></p><p>&nbsp; &nbsp;•&nbsp;<strong>Camera tele 32 MP</strong></p><p>&nbsp; &nbsp;•&nbsp;Camera trước 32 MP</p></td><td><p>&nbsp; &nbsp;•&nbsp;​Camera chính 50 MP</p><p>&nbsp; &nbsp;•&nbsp;Camera góc siêu rộng 8 MP</p><p>&nbsp; &nbsp;•&nbsp;Camera trước 32 MP</p></td></tr><tr><td><strong>Chip xử lý</strong></td><td><strong>Dimensity 9200 5G</strong></td><td>Dimensity 9000+ 5G</td></tr><tr><td><strong>Thời lượng pin</strong></td><td>​4300 mAh</td><td>4300 mAh</td></tr><tr><td><strong>Bộ nhớ</strong></td><td><p>&nbsp; &nbsp;•&nbsp;<strong>​RAM 12 GB</strong></p><p>&nbsp; &nbsp;•&nbsp;​ROM 256 GB</p></td><td><p>&nbsp; &nbsp;•&nbsp;RAM 8 GB</p><p>&nbsp; &nbsp;•&nbsp;​ROM 256 GB</p></td></tr><tr><td><strong>Chất liệu mặt lưng</strong></td><td><strong>Kính cường lực Gorilla Glass 7</strong></td><td>Kính cường lực Gorilla Glass 5</td></tr></tbody></table></figure><h3>Thiết kế trẻ trung, sang trọng</h3><p>OPPO Find N3 Flip 5G Hồng sở hữu thiết kế gập độc đáo, giúp điện thoại trở nên nhỏ gọn và tiện lợi. Người dùng có thể dễ dàng gấp gọn điện thoại để cầm nắm và lưu trữ thuận tiện. Điều này mang lại trải nghiệm sử dụng dễ dàng và tiện lợi, đặc biệt khi di chuyển hoặc muốn tiết kiệm không gian.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/317981/oppo-find-n3-flip-hong-271023-120840.jpg\" alt=\"Thiết kế điện thoại - OPPO Find N3 Flip 5G Hồng\"></figure><p>OPPO Find N3 Flip 5G Hồng&nbsp;gây ấn tượng với thiết kế mỏng chỉ 7.79 mm (khi mở), tạo nên sự tinh tế và thanh lịch. Thiết kế này không chỉ mang lại giá trị thẩm mỹ mà còn là minh chứng cho sự tiến bộ trong công nghệ sản xuất điện thoại gập.</p><p>Khung viền kim loại sáng bóng và mặt lưng kính cao cấp mang đến cho&nbsp;<a href=\"https://www.thegioididong.com/dtdd\">điện thoại</a>&nbsp;vẻ ngoài sang trọng và đẳng cấp. Chất liệu này không chỉ tạo nên vẻ đẹp tinh tế mà còn đảm bảo sự chắc chắn và bền bỉ.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/317981/oppo-find-n3-flip-hong-271023-014958.jpg\" alt=\"Khung viền điện thoại - OPPO Find N3 Flip 5G Hồng\"></figure><p>OPPO Find N3 Flip 5G Hồng&nbsp;có bản lề Flex được làm từ chất liệu kim loại cao cấp, đảm bảo độ bền cao giúp máy trở nên chắc chắn và cứng cáp. Phần này được cải tiến để mang đến trải nghiệm mở ra và đóng lại một cách êm ái, ổn định.</p><p>Một trong những điểm đặc biệt của OPPO Find N3 Flip&nbsp;5G Hồng là việc trang bị màn hình phụ kích thước lớn ở mặt lưng. Màn hình này giúp người dùng dễ dàng thao tác các tính năng khi điện thoại đang gập. Người dùng có thể kiểm tra thông báo, trả lời cuộc gọi hoặc sử dụng ứng dụng như chụp ảnh, quay video,... mà không cần mở hoàn toàn điện thoại.</p><h3>Camera hợp tác với Hasselblad</h3><p>OPPO Find N3 Flip 5G Hồng&nbsp;sở hữu bộ 3 camera sau với độ phân giải lần lượt là 50 MP, 48 MP và 32 MP. Với sự đa dạng về ống kính và chế độ chụp, sản phẩm cho phép người dùng khám phá nhiều khía cạnh khác nhau trong nhiếp ảnh, từ chụp ảnh chân dung, phong cảnh đến chụp ảnh zoom xa.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/317981/oppo-find-n3-flip-hong-271023-020251.jpg\" alt=\"Camera điện thoại - OPPO Find N3 Flip 5G Hồng\"></figure><p>OPPO Find N3 Flip 5G Hồng&nbsp;được trang bị camera chính với độ phân giải 50 MP và khẩu độ f/1.8. Với sự kết hợp này, camera chính của máy có thể chụp ảnh sắc nét và chi tiết trong nhiều điều kiện ánh sáng khác nhau.</p><p>Trong điều kiện thiếu sáng, camera chính của Find N3 Flip 5G Hồng&nbsp;vẫn có thể chụp được những bức ảnh sáng rõ nhờ khả năng thu sáng tốt. Còn trong điều kiện ánh sáng mạnh, camera chính của máy sẽ giúp bạn chụp được những bức ảnh rực rỡ, không bị cháy sáng.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/317981/oppo-find-n3-flip-hong-271023-014954.jpg\" alt=\"Camera điện thoại - OPPO Find N3 Flip 5G Hồng\"></figure><p>Camera góc siêu rộng 48 MP của Find N3 Flip 5G Hồng&nbsp;cho phép bạn chụp ảnh với độ bao quát rộng hơn, lên đến 114 độ. Điều này đặc biệt hữu ích khi bạn muốn chụp ảnh phong cảnh hoặc chụp ảnh nhóm đông người. Với độ phân giải cao, camera này cũng có thể chụp ảnh chi tiết và sắc nét, ngay cả khi chụp ở khoảng cách xa.</p><p>Camera tele 32 MP của Find N3 Flip 5G Hồng&nbsp;cho phép bạn chụp ảnh cận cảnh hoặc chụp ảnh từ xa. Với công nghệ chống rung tiên tiến, bạn có thể chụp ảnh rõ ràng và sắc nét, hạn chế được tình trạng rung lắc gây nhòe mờ.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/309835/oppo-find-n3-flip-071023-072714.jpg\" alt=\"Camera của điện thoại - OPPO Find N3 Flip\"></figure><p>OPPO Find N3 Flip 5G Hồng&nbsp;không chỉ ấn tượng về cấu hình camera mà còn với việc hợp tác độc đáo với Hasselblad - một thương hiệu danh tiếng trong lĩnh vực máy ảnh. Điều này đảm bảo rằng Find N3 Flip 5G Hồng&nbsp;không chỉ chụp ảnh sắc nét và chi tiết, mà còn tái hiện chính xác màu sắc và tính năng độc đáo của các sản phẩm Hasselblad.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/309835/oppo-find-n3-flip-071023-072716.jpg\" alt=\"Camera của điện thoại - OPPO Find N3 Flip\"></figure><p>OPPO Find N3 Flip&nbsp;5G Hồng là một chiếc điện thoại thông minh đa năng, không chỉ chụp ảnh tốt mà còn quay video ấn tượng. Với khả năng quay video 4K ở tốc độ 30 khung hình/giây, bạn có thể ghi lại những khoảnh khắc đáng nhớ một cách sống động và chân thực thông qua&nbsp;chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd-oppo\">điện thoại OPPO</a>&nbsp;này.</p><p>Ngoài ra, camera trước 32 MP của Find N3 Flip&nbsp;5G Hồng cũng rất ấn tượng, phù hợp cho những người yêu thích chụp ảnh selfie. Camera này được trang bị chế độ làm đẹp và xóa phông, giúp bạn dễ dàng có được những bức ảnh tự sướng đẹp mắt và cuốn hút.</p><h3>Màn hình AMOLED kích thước lớn</h3><p>Màn hình của chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd-oppo-find-n\">điện thoại OPPO Find N</a>&nbsp;này là một trong những điểm đặc biệt và ấn tượng, với nhiều tính năng và công nghệ hiện đại đảm bảo mang lại trải nghiệm tuyệt vời cho người dùng.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/317981/oppo-find-n3-flip-hong-271023-014956.jpg\" alt=\"Màn hình điện thoại - OPPO Find N3 Flip 5G Hồng\"></figure><p>OPPO Find N3 Flip&nbsp;5G Hồng được trang bị màn hình AMOLED với độ phân giải Full HD+ (1080 x 2520 Pixels). Với tấm nền này, Find N3 Flip&nbsp;5G Hồng mang đến trải nghiệm màu sắc rực rỡ và sống động, với độ tương phản cao và màu đen sâu thẳm. Điều này giúp bạn tận hưởng những bộ phim, video và trò chơi yêu thích của mình với chất lượng hình ảnh tuyệt vời.</p><p>Ngoài ra, màn hình chính của Find N3 Flip 5G Hồng&nbsp;có kích thước lên đến 6.8 inch, tạo nên một không gian hiển thị rộng rãi. Điều này giúp bạn có thể thoải mái xem nội dung mà không cần phải lo lắng về việc bị che khuất tầm nhìn.</p><p>OPPO Find N3 Flip 5G Hồng&nbsp;được trang bị tốc độ làm mới 120 Hz, giúp cải thiện đáng kể độ nhạy và độ mượt của màn hình. Điều này mang lại trải nghiệm sử dụng mượt mà và thú vị hơn khi cuộn màn hình, chơi game hoặc duyệt web.</p><p>Ngoài ra, màn hình chính của Find N3 Flip 5G Hồng&nbsp;còn có độ sáng tối đa lên đến 1600 nits, giúp bạn có thể xem nội dung rõ ràng ngay cả trong điều kiện ánh sáng mạnh. Tính năng này đặc biệt hữu ích khi bạn sử dụng điện thoại ngoài trời nắng gắt.</p><p>Bên cạnh màn hình chính, Find N3 Flip 5G Hồng&nbsp;còn được trang bị màn hình phụ 3.26 inch ở mặt lưng. Màn hình phụ này giúp bạn có thể xem thông báo và điều khiển điện thoại ngay cả khi màn hình chính đang đóng.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/317981/oppo-find-n3-flip-hong-271023-014953.jpg\" alt=\"Màn hình phụ điện thoại - OPPO Find N3 Flip 5G Hồng\"></figure><p>Để đảm bảo sự bền vững và độ bảo vệ tối ưu cho màn hình chính, OPPO Find N3 Flip 5G Hồng&nbsp;sử dụng kính siêu mỏng Schott Ultra Thin Glass, lớp kính này giúp bảo vệ màn hình khỏi trầy xước và hạn chế nguy cơ hỏng hóc trong quá trình sử dụng nhằm kéo dài tuổi thọ của điện thoại.</p><h3>Cấu hình mạnh mẽ trong phân khúc giá</h3><p>Sức mạnh của OPPO Find N3 Flip&nbsp;5G Hồng bắt đầu từ việc tích hợp chip MediaTek Dimensity 9200 5G 8 nhân. Với hiệu suất mạnh mẽ và khả năng đa nhiệm ưu việt, chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd?g=android\">điện thoại Android</a>&nbsp;này sẽ không gặp khó khăn trong việc xử lý mọi tác vụ, từ công việc hằng ngày đến giải trí đa phương tiện.</p><p>MediaTek Dimensity 9200 là vi xử lý (CPU) được sản xuất dựa trên tiến trình 4 nm và mạnh mẽ nhất hiện tại của MediaTek (10/2023). Đây cũng là con chip đầu tiên sở hữu nhân hiệu năng Armv9 độc quyền cùng sự tối ưu hoá nhiệt độ bởi MediaTek, nhằm đem đến cho chiếc smartphone hiệu năng tối đa mà vẫn giữ ổn định được nhiệt độ.</p><p>Với kiến trúc Armv9 và tiến trình 4 nm, Dimensity 9200 mang lại hiệu năng vượt trội so với các thế hệ chip MediaTek trước đây. Con chip này có thể dễ dàng xử lý các tác vụ nặng như chơi game, chỉnh sửa video và đồ họa,...</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/309835/oppo-find-n3-flip-071023-072719.jpg\" alt=\"Hiệu năng của điện thoại - OPPO Find N3 Flip\"></figure><p>OPPO Find N3 Flip 5G Hồng&nbsp;hỗ trợ RAM lên đến 12 GB, cho phép bạn mở nhiều ứng dụng cùng lúc mà không gặp chậm trễ. Điều này rất hữu ích khi bạn cần thực hiện nhiều công việc cùng một lúc hoặc khi bạn muốn chuyển đổi nhanh giữa các ứng dụng mà không bị gián đoạn.</p><p>Với sức mạnh của chip MediaTek Dimensity 9200 và RAM lớn, OPPO Find N3 Flip 5G Hồng&nbsp;là một lựa chọn tuyệt vời cho các game thủ. Bạn có thể chơi những tựa game đòi hỏi đồ họa cao mà không phải lo lắng về hiệu suất. Thấy hình ảnh chuyển động mượt mà và đẹp mắt sẽ làm cho trải nghiệm chơi game trở nên hấp dẫn hơn bao giờ hết.</p><p>OPPO Find N3 Flip&nbsp;5G Hồng sử dụng hệ điều hành Android 13, mang lại tính tiện lợi cao cấp và khả năng tùy biến mạnh mẽ. Bạn sẽ có trải nghiệm mượt mà, giao diện đẹp mắt và cập nhật bảo mật thường xuyên từ Google.</p><h3>Sở hữu viên pin 4300 mAh cùng khả năng sạc 44 W</h3><p>Một trong những yếu tố quan trọng nhất mà người dùng điện thoại di động quan tâm là thời lượng pin. OPPO Find N3 Flip 5G Hồng&nbsp;đã đáp ứng mọi kỳ vọng về pin bằng việc trang bị viên pin lớn với dung lượng lên đến 4300 mAh, đảm bảo bạn luôn có đủ năng lượng để sử dụng suốt một ngày dài mà không cần lo lắng về việc sạc pin.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/317981/oppo-find-n3-flip-hong-271023-020245.jpg\" alt=\"Pin trên điện thoại - OPPO Find N3 Flip 5G Hồng\"></figure><p>OPPO Find N3 Flip 5G Hồng&nbsp;đã tận dụng không gian bên trong để tích hợp viên pin lớn một cách thông minh, mà không làm ảnh hưởng đến thiết kế mỏng và sang trọng của chiếc điện thoại. Việc này giúp cho OPPO Find N3 Flip 5G Hồng không chỉ là một thiết bị mạnh mẽ mà còn là một chiếc điện thoại đẹp mắt.</p><p>Ngoài việc có viên pin lớn, OPPO Find N3 Flip 5G Hồng&nbsp;còn hỗ trợ sạc nhanh với công suất tối đa lên đến 44 W. Điều này có nghĩa là bạn có thể nạp đầy pin trong thời gian ngắn, giúp bạn sẵn sàng cho mọi cuộc hành trình và công việc mà không cần phải chờ đợi lâu. Khả năng sạc nhanh này làm cho việc sạc pin trở nên tiện lợi hơn bao giờ hết.</p><h3>Giá bán của&nbsp;OPPO Find N3 Flip 5G Hồng</h3><p>Từ ngày 26/10 - 10/11, Thế Giới Di Động triển khai chương trình khuyến mãi hấp dẫn dành cho OPPO Find N3 Flip 5G Hồng. Theo đó, khách hàng mua sản phẩm sẽ được hưởng các ưu đãi sau:<br><br><strong>Tai nghe OPPO Enco Air 3 (Trị giá 1.59 triệu)</strong></p><p>Khách hàng mua OPPO Find N3 Flip 5G Hồng sẽ được tặng kèm tai nghe OPPO Enco Air 3 trị giá 1.59 triệu đồng. Tai nghe có thiết kế thời trang, nhỏ gọn, cùng chất lượng âm thanh sống động, đáp ứng nhu cầu giải trí và nghe gọi của người dùng.</p><p><strong>Thu cũ đổi mới trợ giá đến 2 triệu</strong></p><p>Khách hàng có thể đổi máy cũ lấy máy mới OPPO Find N3 Flip 5G Hồng với mức trợ giá lên đến 2 triệu đồng. Đây là chương trình hỗ trợ thiết thực giúp khách hàng tiết kiệm chi phí khi mua sắm.</p><p><strong>Trả góp 0%</strong></p><p>Thế Giới Di Động hỗ trợ trả góp 0% lãi suất cho OPPO Find N3 Flip 5G Hồng. Khách hàng có thể mua máy với số tiền nhỏ hơn mỗi tháng, phù hợp với khả năng tài chính.</p><p><strong>Premium Service (Trị giá 1.2 Triệu)</strong></p><p>Thế Giới Di Động cung cấp dịch vụ Premium Service trị giá 1.2 triệu đồng cho OPPO Find N3 Flip 5G Hồng. Dịch vụ này bao gồm các ưu đãi độc quyền, bảo dưỡng định kỳ và hỗ trợ từ đội ngũ chuyên nghiệp.</p><p>Xem thêm:&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/trai-nghiem-premium-service-va-oppo-care-khi-mua-oppo-find-n3-1552182\">Trải nghiệm ngay dịch vụ Premium Service và OPPO Care khi mua OPPO Find N3 Series</a></p><p><strong>OPPO Care (Trị giá 4.5 Triệu)</strong></p><p>Khi mua OPPO Find N3 Flip 5G Hồng tại Thế Giới Di Động, bạn sẽ được tặng gói dịch vụ OPPO Care trị giá 4.5 triệu đồng.&nbsp;Khách hàng sẽ được bảo hành màn hình nếu vô tình xảy ra rơi vỡ, hoàn toàn miễn phí trong vòng 12 tháng tính từ lúc mua.&nbsp;</p><p>Giá bán điện thoại: Dự kiến khoảng <strong>22.990.000đ</strong>&nbsp;(cập nhật ngày 01/11).</p><p>Tổng kết, OPPO Find N3 Flip 5G Hồng là một chiếc điện thoại gập đáng sắm nhờ sở hữu nhiều điểm nổi bật. Máy vừa có cấu hình mạnh, vừa sở hữu camera chất lượng cùng một thiết kế có vẻ đẹp khó cưỡng, rất phù hợp cho những bạn trẻ năng động đang cần tìm một sự phá cách độc đáo thông qua điện thoại gập.</p>', 29, 'dien-thoai-oppo-find-n3-flip-5g-hong-655df3ef20f4a', 1, 10, '2023-11-20 22:12:28', '2023-11-20 22:12:28'),
(88, 'Điện thoại Xiaomi 13T 5G 8GB', 30, 10990000, 7, 1, 0, 222, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700493909/uploads_WEB2041_Ecommerce/php2877_rtpcey.jpg', 0, 0, '<p>Xiaomi 13T không chỉ là một công cụ hoàn hảo cho nhiếp ảnh, mà còn là một thiết bị đa năng và linh hoạt, phục vụ nhiều mục đích khác nhau. Đây là một trong những chiếc điện thoại cận flagship đáng chú ý nhất của năm 2023 nhờ hội tụ đầy đủ các thông số hàng đầu phân khúc.</p>', '<h3><a href=\"https://www.thegioididong.com/dtdd/xiaomi-13t\">Xiaomi 13T 5G</a>&nbsp;là một thiết bị độc đáo được ra mắt tại thị trường Việt Nam vào tháng 09/2023. Sản phẩm này đang thu hút sự chú ý lớn từ cộng đồng người dùng, đặc biệt là những người yêu nhiếp ảnh và đang tìm kiếm một trải nghiệm độc đáo với camera nhờ sự hợp tác với Leica, một trong những thương hiệu sản xuất máy ảnh hàng đầu.</h3><h3>Thiết kế tinh tế, sang trọng</h3><p>Mặt lưng của Xiaomi 13T có hai phiên bản cho bạn lựa chọn: da và kính. Mặt lưng da mang đến sự sang trọng và ấm áp, trong khi mặt lưng kính là một lựa chọn hiện đại và lịch lãm.&nbsp;</p><p>Dù là da hay kính, thiết kế mặt lưng của Xiaomi 13T đều theo kiểu phẳng và được bo cong nhẹ ở vùng rìa, giúp cầm nắm thoải mái hơn bao giờ hết. Sự cân nhắc trong việc bo cong rìa không chỉ tạo điểm nhấn thẩm mỹ mà còn mang lại cảm giác an toàn khi cầm nắm sản phẩm.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/309814/xiaomi-13t-270923-091835.jpg\" alt=\"Thiết kế điện thoại - Xiaomi 13T 5G\"></figure><p>Khung của Xiaomi 13T được làm từ chất liệu kim loại cứng cáp, cùng với đó là cách làm phẳng để tạo ra một sự kết hợp hoàn hảo với mặt lưng, giúp bảo vệ tối ưu cho các thành phần bên trong, đảm bảo Xiaomi 13T luôn hoạt động ổn định và bền bỉ với thời gian.</p><p>Với sự hợp tác đến từ Leica, một dòng chữ mang tên thương hiệu này đã được in lên trên cụm camera, điều này giúp Xiaomi 13T trở nên dễ nhận diện hơn và còn có thể tỏa sáng để bất kỳ ai nhìn vào cũng biết được đây là một chiếc <a href=\"https://www.thegioididong.com/dtdd-chup-anh-quay-phim\">điện thoại chụp ảnh, quay phim</a> cao cấp.</p><h3>Màn hình sống động đầy sắc nét</h3><p>Màn hình trên Xiaomi 13T là một tuyệt tác của công nghệ, đem đến cho người dùng một trải nghiệm hình ảnh vượt trội. Với công nghệ màn hình AMOLED, độ phân giải 1.5K (1220 x&nbsp;2712 Pixels) và kích thước lớn 6.67 inch.</p><p>Công nghệ AMOLED không chỉ mang lại sự sống động và đẹp mắt mà còn tái hiện sắc màu với độ chính xác tuyệt đối, tạo nên những gam màu rực rỡ và tự nhiên. Từ đó mang đến những trải nghiệm xem nội dung cực kỳ đã mắt, thích hợp để xem phim chất lượng cao hay chơi những tựa game có đồ họa khủng.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/309814/xiaomi-13t-270923-091852.jpg\" alt=\"Màn hình điện thoại - Xiaomi 13T 5G\"></figure><p>Màn hình Xiaomi 13T được trang bị tần số quét lên đến 144 Hz, được xem là mức cao nhất trên thị trường <a href=\"https://www.thegioididong.com/dtdd\">điện thoại</a> kinh doanh chính hãng tại Việt Nam, giúp tạo ra một hiệu ứng mượt mà và tự nhiên trong mọi hoạt động trên màn hình. Điều này đặc biệt quan trọng khi bạn chơi game hoặc xem video chất lượng cao, giúp giảm thiểu hiện tượng bóng mờ, khựng khung hình để tạo ra trải nghiệm thú vị hơn.</p><p>Để đảm bảo rằng màn hình Xiaomi 13T luôn đẹp và bền bỉ, nó được bảo vệ bằng kính cường lực Corning Gorilla Glass 5. Đây là một trong những loại kính cường lực hàng đầu trên thị trường, giúp chống trầy xước, bảo vệ màn hình khỏi những va đập không mong muốn.&nbsp;</p><h3>Cấu hình top đầu phân khúc</h3><p>Đằng sau hiệu suất mạnh mẽ của Xiaomi 13T là bộ xử lý MediaTek Dimensity 8200-Ultra. Với tốc độ xử lý nhanh chóng và khả năng đa nhiệm xuất sắc, Dimensity 8200-Ultra đảm bảo rằng bạn có thể thực hiện mọi tác vụ một cách mượt mà và hiệu quả. Từ chơi game đầy thách thức đến xem video chất lượng cao, bạn sẽ luôn cảm nhận được sự mạnh mẽ của chip này.</p><p>Là mẫu <a href=\"https://www.thegioididong.com/dtdd-ram-8gb\">điện thoại RAM 8 GB</a>, Xiaomi 13T sẵn sàng đối mặt với mọi nhiệm vụ bạn đặt ra. Dung lượng RAM lớn này không chỉ giúp bạn mở đồng thời nhiều ứng dụng mà còn tạo ra trải nghiệm mượt mà và không giật lag. Bất kể bạn đang xem video, duyệt web hay sử dụng ứng dụng đòi hỏi tài nguyên cao thì Xiaomi 13T luôn đảm bảo hiệu suất tối ưu.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/309814/xiaomi-13t-270923-091900.jpg\" alt=\"Cấu hình điện thoại - Xiaomi 13T 5G\"></figure><p>Xiaomi 13T được trang bị hệ điều hành Android 13, phiên bản mới nhất của hệ điều hành di động phổ biến tính đến 09/2023. Điều này đồng nghĩa với việc bạn sẽ có được những tính năng mới nhất, bảo mật tốt hơn và trải nghiệm người dùng được tối ưu hóa.</p><h3>Nắm bắt trọn vẹn mọi khoảnh khắc với camera 50 MP</h3><p>Xiaomi 13T trang bị hệ thống camera đa dạng với 3 ống kính chất lượng. Camera chính có độ phân giải lên tới 50 MP, đảm bảo bạn có thể bắt lấy mọi chi tiết và màu sắc trong mỗi bức ảnh. Camera tele 50 MP hỗ trợ thu phóng kỹ thuật số 20x giúp bạn khám phá thế giới tinh tế và thú vị mà không cần di chuyển gần chủ thể. Cuối cùng là camera góc siêu rộng 12 MP cho phép bạn chụp những khung hình rộng, chân thực và mở rộng góc nhìn</p><p>Không chỉ là một công cụ chụp ảnh xuất sắc, chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd-xiaomi\">điện thoại Xiaomi</a>&nbsp;này&nbsp;còn cho phép bạn quay video 4K với độ nét tuyệt đỉnh. Tận dụng sự mạnh mẽ của camera, bạn có thể ghi lại những khoảnh khắc đáng nhớ với độ chi tiết và độ sắc nét xuất sắc. Chất lượng video 4K sẽ mang đến cho bạn trải nghiệm xem video chất lượng cao như trong phòng chiếu phim.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/309814/xiaomi-13t-270923-091909.jpg\" alt=\"Camera điện thoại - Xiaomi 13T 5G\"></figure><p>Xiaomi 13T đã hợp tác cùng với hãng nhiếp ảnh danh tiếng Leica để tinh chỉnh máy ảnh. Điều này đảm bảo rằng mọi bức ảnh và video bạn chụp đều được cân chỉnh với sự chuyên nghiệp và đẳng cấp của Leica. Từ việc cân chỉnh màu sắc cho đến sự tối ưu hóa của ống kính, Xiaomi 13T mang đến cho bạn một trải nghiệm nhiếp ảnh đỉnh cao mà bạn không thể tìm thấy ở bất kỳ nơi nào khác.</p><h3>Sử dụng pin lớn cùng khả năng sạc nhanh</h3><p>Một trong những điểm đáng tự hào của Xiaomi 13T chính là dung lượng pin lớn cực khủng lên đến 5000 mAh. Điều này đồng nghĩa với việc bạn có thể sử dụng điện thoại suốt cả ngày mà không cần phải lo lắng về việc hết pin. Dung lượng pin này đủ để bạn thực hiện mọi công việc, chơi game, xem video và duyệt web mà không cần phải tìm kiếm nguồn sạc liên tục.</p><p>Với công nghệ sạc nhanh 67 W, Xiaomi 13T giúp bạn tiết kiệm thời gian đáng kể trong việc sạc pin. Theo thông tin từ hãng, máy có thể sạc pin từ 0% đến 100% chỉ khoảng 42 phút một cách nhanh chóng và hiệu quả.&nbsp;</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/309814/xiaomi-13t-270923-091843.jpg\" alt=\"Pin và sạc của điện thoại - Xiaomi 13T 5G\"></figure><p>Xiaomi 13T không chỉ là một công cụ hoàn hảo cho nhiếp ảnh, mà còn là một thiết bị đa năng và linh hoạt, phục vụ nhiều mục đích khác nhau. Đây là một trong những chiếc điện thoại cận flagship đáng chú ý nhất của năm 2023 nhờ hội tụ đầy đủ các thông số hàng đầu phân khúc.</p>', 29, 'dien-thoai-xiaomi-13t-5g-8gb-655df3f7b939c', 1, 4, '2023-11-20 22:25:02', '2023-11-20 22:25:02');
INSERT INTO `product` (`id`, `title`, `brand_id`, `price`, `discount`, `isVariant`, `sold`, `quantity`, `thumb`, `totalRatings`, `totalUserRatings`, `short_description`, `description`, `cate_id`, `slug`, `status`, `view`, `create_at`, `update_at`) VALUES
(89, 'Điện thoại Samsung Galaxy Z Fold4 5G 256GB', 29, 25990000, 6, 1, 3, 334, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700494368/uploads_WEB2041_Ecommerce/php3B3C_kdl3dw.jpg', 0, 0, '<p>Với những bạn yêu thích sử mới mẻ, muốn thay đổi cách sử dụng smartphone thông thường thì chiếc điện thoại gập Galaxy Z Fold4 512GB có lẽ là một cái tên không nên bỏ qua. Sở hữu nhiều công nghệ hàng đầu từ camera cho đến hiệu năng để bạn có thể thoải mái chiến game hay thỏa sức chụp ảnh chất lượng cao.</p>', '<h3><a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-z-fold4-5g-512gb\">Samsung Galaxy Z Fold4 512GB</a>&nbsp;có lẽ là cái tên dành được nhiều sự chú ý đến từ sự kiện Unpacked thường niên của Samsung, bởi máy sở hữu màn hình lớn cùng cơ chế gấp gọn giúp người dùng có thể dễ dàng mang theo. Cùng với đó là sự nâng cấp về hiệu năng và phần mềm giúp máy xử lý tốt hầu hết mọi tác vụ bạn cần từ làm việc đến giải trí.</h3><h3>Vẻ ngoài thời thượng chuẩn chỉnh flagship</h3><p>Samsung Galaxy Z Fold4 512GB được hoàn thiện với ngoại hình khá giống với một chiếc máy tính bảng, sử dụng cơ chế gập hiện đại giúp cho người dùng có thể tùy biến thay đổi Galaxy Z Fold4 thành chiếc smartphone hay tablet một cách linh hoạt tùy vào nhu cầu sử dụng.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/285031/samsung-galaxy-z-fold4-5g-512gb-100822-090605.jpg\" alt=\"Thiết kế sang trọng - Samsung Galaxy Z Fold4 5G 512GB\"></figure><p>Độ bền của máy đã được kiểm chứng qua nhiều bài đánh giá khắt khe khác nhau, nên&nbsp;<a href=\"https://www.thegioididong.com/dtdd-samsung\">Samsung</a>&nbsp;tự tin cho biết Galaxy Z Fold4 có tuổi thọ sử dụng và số lần gập gia tăng rất nhiều so với thế hệ tiền nhiệm. Từ đó người dùng có thể an tâm hơn trong việc mua sắm và sử dụng máy trong một thời gian lâu dài.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/285031/samsung-galaxy-z-fold4-5g-512gb-100822-090606.jpg\" alt=\"Độ bền của máy cao - Samsung Galaxy Z Fold4 5G 512GB\"></figure><p>Bộ khung của máy và phần bản lề sẽ được làm từ nhôm Armor Aluminum cao cấp, vừa nhẹ và vừa bền bỉ giúp thiết bị có thể chịu được áp lực trong một vài tình huống khi không may xảy ra va chạm.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/285031/samsung-galaxy-z-fold4-5g-512gb-100822-090608.jpg\" alt=\"Khung viền chắc chắn - Samsung Galaxy Z Fold4 5G 512GB\"></figure><p>Ngoài ra với đặc tính ánh kim trên Armor Aluminum cũng giúp Galaxy Z Fold4 trở nên sáng bóng và bắt mắt hơn, làm toát lên một diện mạo cao cấp sang trọng khi cầm nắm sử dụng trên tay.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/285031/samsung-galaxy-z-fold4-5g-512gb-100822-090610.jpg\" alt=\"Sáng bóng sang trọng - Samsung Galaxy Z Fold4 5G 512GB\"></figure><p>Sản phẩm lần này được tinh chỉnh chiều dài của máy xuống để mở rộng chiều ngang giúp cho bề ngang hiển thị của màn hình phụ sau khi gập được lớn hơn so với Z Fold3, thao tác gõ văn bản cũng sẽ trở nên dễ dàng và thuận tiện đối với phiên bản Z Fold thế hệ thứ 4.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/250625/samsung-galaxy-z-fold4-100822-064949.jpg\" alt=\"Màn hình phụ - Samsung Galaxy Z Fold4 5G\"></figure><p>Với những bạn có sở thích viết và phải làm việc với tính chất đặc thù là ghi chép nhanh hay phác họa, Galaxy Z Fold4 có lẽ là một lựa chọn tối ưu dành cho các bạn bởi máy sẽ có chức năng tương tự như một cuốn sổ truyền thống khi sử dụng kèm với bút S Pen*.</p><p><i>*S Pen không có sẵn trong hộp</i></p><p>Điểm mà hãng có nhấn mạnh trên dòng sản phẩm lần này chuẩn kháng nước IPX8 cao cấp, đây là trang bị chưa từng được trang bị trên bất kỳ dòng điện thoại gập nào thì nay đã được giới thiệu trên Galaxy Z Fold4. Vậy nên người dùng có thể an tâm hơn trong những tình huống mang theo thiết bị bên mình bất kể nắng mưa.</p><p>Xem thêm:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/chong-nuoc-va-chong-bui-tren-smart-phone-771130\">Tiêu chuẩn chống nước IP là gì? Có ý nghĩa gì? Các chuẩn IP hiện nay</a></p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/285031/samsung-galaxy-z-fold4-5g-512gb-100822-090611.jpg\" alt=\"Hỗ trợ chuẩn kháng nước cao cấp - Samsung Galaxy Z Fold4 5G 512GB\"></figure><h3>Nhiếp ảnh chuyên nghiệp với bộ 3 camera cao cấp</h3><p>Ở phía mặt lưng, máy sẽ được tích hợp 3 camera với camera chính có độ phân giải 50 MP, camera góc siêu rộng 12 MP và một cảm biến tele 10 MP. Với chất lượng ảnh thu lại có độ sắc nét cao giúp Galaxy Z Fold4 có thể trở thành một chiếc camera phone xịn sò để ghi lại những khoảnh khắc đẹp xung quanh bạn.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/285031/samsung-galaxy-z-fold4-5g-512gb-100822-090613.jpg\" alt=\"Camera sau chất lượng - Samsung Galaxy Z Fold4 5G 512GB\"></figure><p>Đi kèm với đó sẽ là những tính năng như: Góc siêu rộng, chuyên nghiệp, zoom quang học 3X hay thậm chí là thu phóng chuẩn không gian lên đến 30 lần. Không đơn thuần là một trợ thủ phục vụ cho việc ghi chép mà máy còn có thể đóng vai trò như một một chiếc máy ảnh tiện lợi đối với các bạn phóng viên hay vlogger.</p><p>Bên trong màn hình lớn sẽ là camera ẩn có độ phân giải 4 MP giúp cho người dùng có thể vừa sử dụng máy cho công việc và vừa có thể video call với bạn bè. Hơn thế nữa, ở phần màn hình phụ còn có thêm camera 10 MP để các tác vụ chụp nhanh trở nên dễ dàng hơn cho dù thiết bị có đang gặp hay không đi chăng nữa.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/285031/samsung-galaxy-z-fold4-5g-512gb-100822-090622.jpg\" alt=\"Tích hợp nhiều tính năng - Samsung Galaxy Z Fold4 5G 512GB\"></figure><h3>Màn hình rộng lớn cùng màu sắc hiển thị sinh động</h3><p>Galaxy Z Fold4 sẽ được trang bị trên máy một tấm nền Dynamic AMOLED 2X, mang đến khả năng tái hiện màu sắc sinh động rực rỡ hay thể hiện màu đen sâu giúp người dùng có thể trải nghiệm nội dung một cách chân thực. Dù người dùng có nhìn máy từ góc độ nào đi chăng nữa thì hình ảnh cũng sẽ không có sự thay đổi quá nhiều.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/250625/samsung-galaxy-z-fold4-100822-070501.jpg\" alt=\"Trang bị tấm nền Dynamic AMOLED 2X - Samsung Galaxy Z Fold4 5G\"></figure><p>Xem thêm:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-man-hinh-dynamic-amoled-2x-tren-smartphone-1245213\">Màn hình Dynamic AMOLED 2X là gì? Điểm nổi bật? Có trên điện thoại nào?</a></p><p>Màn hình trong của Galaxy Z Fold4 sau khi mở hoàn toàn sẽ có tổng kích thước lên đến 7.6 inch, vừa hỗ trợ công việc được thuận tiện hơn cũng như đem đến không gian giải trí bất tận trên các bộ phim bom tấn hay trò chơi đồ họa cao.</p><p>Máy có độ phân giải 2176 x 1812 Pixels giúp cho hình ảnh được thể hiện chi tiết, các công việc chỉnh sửa - cắt ảnh cũng trở nên dễ dàng hơn khi thao tác trên Galaxy Z Fold4.&nbsp;</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/285031/samsung-galaxy-z-fold4-5g-512gb-100822-090616.jpg\" alt=\"Độ phân giải màn hình cao - Samsung Galaxy Z Fold4 5G 512GB\"></figure><p>Màn hình phụ lần này có kích thước 6.2 inch giúp bạn có thể dễ dàng sử dụng các tác vụ thông thường mà không cần mở hết chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd\">điện thoại</a>&nbsp;gập. Vì được trang bị hai màn hình cả trước và sau nên đây được xem là một lợi thế rất lớn so với những chiếc flagship chỉ có một màn hình đến từ nhiều thương hiệu khác trên thị trường.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/285031/samsung-galaxy-z-fold4-5g-512gb-100822-090618.jpg\" alt=\"Màn hình phụ lớn - Samsung Galaxy Z Fold4 5G 512GB\"></figure><p>Cả hai màn hình này đều được hỗ trợ tần số quét 120 Hz và độ sáng 1200 nits giúp cho mọi thao tác của người dùng có thể diễn ra một cách mượt mà, cũng như sử dụng máy ở ngoài trời được dễ dàng hơn bởi nội dung được hiển thị rõ ràng kể cả những môi trường có độ sáng cao.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/250625/samsung-galaxy-z-fold4-100822-070505.jpg\" alt=\"Camera trước ẩn dưới màn hình - Samsung Galaxy Z Fold4 5G\"></figure><h3>Hiệu năng mạnh mẽ hàng đầu trên smartphone</h3><p>Con chip trang bị bên trong máy là bộ vi xử lý mới ra mắt và đã lấy được cảm tình của cộng đồng người dùng công nghệ trên toàn cầu với tên gọi Snapdragon 8+ Gen 1. Nhờ có hiệu suất cao mà giờ đây mọi tác vụ từ giải trí chơi game hay đàm thoại công việc thì máy đều có thể xử lý một cách dễ dàng.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/285031/samsung-galaxy-z-fold4-5g-512gb-100822-090620.jpg\" alt=\"Chipset mạnh mẽ - Samsung Galaxy Z Fold4 5G 512GB\"></figure><p><a href=\"https://www.thegioididong.com/dtdd-ram-12gb\">Điện thoại RAM 12 GB</a> giúp cho thiết bị vận hành trơn tru hơn khi sử dụng nhiều tác vụ cùng lúc hay đa nhiệm được mượt mà. Bộ nhớ trong lên đến 512 GB đem đến không gian lưu trữ lớn để bạn thoải mái tải xuống dữ liệu hay quay phim, chụp ảnh số lượng lớn.</p><h3>Hỗ trợ công nghệ sạc nhanh</h3><p>Galaxy Z Fold4 được trang bị một viên pin kép có dung lượng 4400 mAh mang đến thiết bị thời lượng dùng cả ngày cho các tác vụ cơ bản như nhắn tin, đàm thoại hay nghe nhạc.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/285031/samsung-galaxy-z-fold4-5g-512gb-100822-090623.jpg\" alt=\"Sử dụng dài lâu - Samsung Galaxy Z Fold4 5G 512GB\"></figure><p>Để có thể nạp đầy dung lượng pin trong thời gian ngắn hơn thì Samsung cũng có hỗ trợ thêm cho máy công nghệ sạc nhanh 25 W, ngoài ra bạn cũng có thể chia sẻ lượng pin có trong máy qua các thiết bị khác khác có hỗ trợ thông qua tính năng chia sẻ pin không dây.</p><p>Với những bạn yêu thích sử mới mẻ, muốn thay đổi cách sử dụng smartphone thông thường thì chiếc điện thoại gập Galaxy Z Fold4 512GB có lẽ là một cái tên không nên bỏ qua. Sở hữu nhiều công nghệ hàng đầu từ camera cho đến hiệu năng để bạn có thể thoải mái chiến game hay thỏa sức chụp ảnh chất lượng cao.</p>', 29, 'dien-thoai-samsung-galaxy-z-fold4-5g-256gb-655df3f345242', 1, 9, '2023-11-20 22:32:42', '2023-11-20 22:32:42'),
(90, 'Điện thoại Xiaomi Redmi 12 4GB', 30, 3690000, 8, 1, 5, 356, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700495413/uploads_WEB2041_Ecommerce/php54DC_eairxw.jpg', 0, 0, '<p>Xiaomi Redmi 12 sẽ là sự lựa chọn phù hợp với những bạn đang có nhu cầu tìm kiếm một chiếc điện thoại có vẻ ngoài đẹp mắt, màn hình lớn cho hình ảnh sắc nét cùng một hiệu năng ổn định với các tác vụ hằng ngày.</p>', '<h3>Xiaomi Redmi 12 mẫu điện thoại mới nhất được nhà <a href=\"https://www.thegioididong.com/dtdd-xiaomi\">Xiaomi</a> tung ra vào tháng 06/2023 khiến cho cộng đồng đam mê công nghệ vô cùng thích thú. Máy khoác lên mình một vẻ ngoài cá tính, màn hình lớn đem đến trải nghiệm đã mắt cùng một hiệu năng ổn định với mọi tác vụ.</h3><h3>Vẻ ngoài đơn giản</h3><p>Thiết kế của <a href=\"https://www.thegioididong.com/dtdd/xiaomi-redmi-12-4gb\">Xiaomi Redmi 12 4GB </a>được lấy cảm hứng từ sự tối giản khi mặt lưng được làm từ kính bóng bẩy đi cùng với thân máy khá mỏng nhẹ mang đến vẻ ngoài thời trang, trẻ trung cùng khả năng cầm nắm tốt hơn khi sử dụng trong thời gian dài.&nbsp;</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/307556/xiaomi-redmi-12-4gb-190523-044751.jpg\" alt=\"Thiết kế đẹp mắt - Xiaomi Redmi 12 4GB\"></figure><p>Mặt trước của điện thoại thiết kế kiểu nốt ruồi, đồng thời các viền xung quanh được hãng tối ưu khá mỏng hứa hẹn mang đến cho bạn góc nhìn rộng hơn giúp việc giải trí trở nên trọn vẹn.</p><h3>Màn hình lớn giải trí vui</h3><p>Với mong muốn đem lại sự thư giãn sau giờ làm việc căng thẳng hoặc một góc nhìn rõ ràng sắc nét hơn. Xiaomi đã trang bị tấm nền IPS LCD với kích thước lên đến 6.79 inch cùng độ phân giải Full HD+ (1080 x 2460 Pixels)&nbsp;giúp bạn xem các nội dung trên YouTube hoặc Netflix tốt hơn. Màn hình này cho chất lượng hiển thị tốt, màu sắc chân thực, độ tương phản cao và góc nhìn rộng.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/307556/xiaomi-redmi-12-4gb-190523-044750.jpg\" alt=\"Màn hình sắc nét - Xiaomi Redmi 12 4GB\"></figure><p>Redmi 12 hiển thị hình ảnh khá tốt khi ở ngoài trời nắng, không bị mờ khi máy có độ sáng tối đa lên đến 550 nits một con số ổn trong phân khúc. Ngoài ra, màn hình này còn được hỗ trợ tần số quét 90 Hz giúp cho các thao tác vuốt chạm trên máy được diễn ra mượt mà và nhanh chóng hơn.</p><h3>Trải nghiệm ổn định với các tác vụ thường ngày</h3><p>Cung cấp sức mạnh cho máy là chip xử lý Helio G88 đến từ nhà MediaTek, có tốc độ xử lý 2.0 GHz cho khả năng xử lý khá ổn định và mượt mà với các tác vụ lướt web, nghe nhạc, xem phim, chỉnh sửa ảnh,… thậm chí bạn có thể chơi với các tựa game như: Liên Quân Mobile, PUBG Mobile ở mức cấu hình tầm trung.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/307556/xiaomi-redmi-12-4gb-cpu.jpeg\" alt=\"Hiệu năng mượt mà - Xiaomi Redmi 12\"></figure><p><a href=\"https://www.thegioididong.com/dtdd-ram-4gb\">Điện thoại RAM 4 GB</a> tuy mức RAM không quá cao nhưng hãng cũng đã tích hợp tính năng mở rộng RAM nên vấn đề đa nhiệm trên máy không còn quá bận tâm nữa. Khi các thao tác chuyển đổi qua lại giữa tab không phải đợi load lại cũng như gặp hiện tượng giật lag.</p><h3>Cụm camera chất lượng để trải nghiệm</h3><p>Cụm camera sau của Redmi 12 bao gồm camera chính 50 MP, 2 camera phụ 8 MP và 2 MP, hỗ trợ quay phim và chụp ảnh chất lượng cao với các hiệu ứng làm đẹp thông minh, cân bằng tốt màu sắc và ánh sáng cho bức ảnh chân thực, có độ nét cao.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/307556/xiaomi-redmi-12-4gb-030623-103603.jpg\" alt=\"Camera chụp ảnh sắc nét - Xiaomi Redmi 12\"></figure><p>Phía trước điện thoại bạn sẽ có ngay camera selfie với độ phân giải 8 MP đi cùng với nhiều tính năng như: làm đẹp, bộ lọc màu,... giúp bạn có những bức ảnh tự sướng đẹp mắt mà không cần dùng đến ứng dụng bên thứ 3.</p><h3>Viên pin 5000 mAh thoải mái dùng cả ngày</h3><p>Một chi tiết đáng chú ý khác của Xiaomi Redmi 12 là viên pin lớn 5000 mAh, <a href=\"https://www.thegioididong.com/dtdd\">điện thoại</a> có thể dễ dàng cung cấp đủ năng lượng để giữ cho thiết bị hoạt động suốt cả ngày, ngay cả khi sử dụng nhiều.&nbsp;</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/42/307556/xiaomi-redmi-12-4gb-190523-044756.jpg\" alt=\"Viên pin lớn - Xiaomi Redmi 12 4GB\"></figure><p>Bên cạnh đó, máy cũng hỗ trợ sạc nhanh 18 W, vì vậy bạn có thể nhanh chóng lấp đầy dung lượng của thiết bị mà không cần phải mất quá nhiều thời gian chờ đợi.</p><p>Xiaomi Redmi 12 sẽ là sự lựa chọn phù hợp với những bạn đang có nhu cầu tìm kiếm một chiếc điện thoại có vẻ ngoài đẹp mắt, màn hình lớn cho hình ảnh sắc nét cùng một hiệu năng ổn định với các tác vụ hằng ngày.</p>', 29, 'dien-thoai-xiaomi-redmi-12-4gb-655df3fc24f2c', 1, 62, '2023-11-20 22:50:07', '2023-11-20 22:50:07'),
(91, 'Laptop HP 15s fq5229TU i3 1215U/8GB/512GB/Win11 (8U237PA) ', 22, 13690000, 0, 1, 2, 34, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700559865/uploads_WEB2041_Ecommerce/php3051_xxm7eq.png', 0, 0, '<p>Laptop HP cơ bản được hoàn thiện với gam màu bạc trung tính, vỏ nhựa cứng cáp cùng kiểu dáng hiện đại để bạn có thể mang theo làm việc ở bất cứ đâu. Với khối lượng 1.69 kg, laptop dễ dàng nằm gọn trong balo cho bạn mang theo đến trường học, cơ quan hay quán coffee.</p>', '<h3>Với một mức giá thành lý tưởng, bạn đã có thể sở hữu cho mình một mẫu <a href=\"https://www.thegioididong.com/laptop?g=hoc-tap-van-phong\">laptop học tập - văn phòng</a> có hiệu năng ổn định, ngoại hình thanh lịch cùng các tính năng hiện đại. <a href=\"https://www.thegioididong.com/laptop/hp-15s-fq5229tu-i3-8u237pa\">Laptop&nbsp;HP 15s fq5229TU i3 1215U&nbsp;(8U237PA)</a> chắc chắn sẽ đáp ứng đầy đủ nhu cầu làm việc, học tập và giải trí thường ngày của sinh viên cũng như người đi làm.</h3><p>• <a href=\"https://www.thegioididong.com/laptop-hp-compaq\">Laptop HP</a> sử dụng bộ vi xử lý&nbsp;<strong>Intel Core i3 1215U</strong> kết hợp cùng hiệu suất xử lý nâng cao của card tích hợp <strong>Intel UHD Graphics </strong>cho phép người dùng khả năng xử lý công việc trơn tru trên Word, Excel, PowerPoint,... cũng như giải trí, xem phim lướt web và chơi các tựa game nhẹ.</p><p>• Với bộ nhớ <strong>RAM 8 GB </strong>có hỗ trợ nâng cấp tối đa <strong>16 GB</strong>, bạn có thể mở cùng lúc nhiều tab công việc, chuyển qua lại giữa nhiều tác vụ hay vừa làm việc vừa nghe nhạc mà không bị hiện tượng đơ máy gây khó chịu. Hơn nữa, ổ cứng <strong>SSD 512 GB</strong> <strong>NVMe PCIe</strong> giúp tăng tốc độ khởi động hệ thống lên đáng kể, cũng như đem lại không gian lưu trữ thoải mái cho nhiều tệp tin.</p><p>• Màn hình <a href=\"https://www.thegioididong.com/laptop\">laptop </a>kích thước <strong>15.6 inch</strong> có độ phân giải&nbsp;<strong>Full HD (1920 x 1080) </strong>cho bạn tha hồ trải nghiệm nội dung với khung hình lớn, hình ảnh rõ nét và chi tiết cho làm việc và xem phim thú vị. Ngoài ra, công nghệ chống chói<strong> Anti Glare</strong> làm hạn chế đáng kể tình trạng bóng gương trên màn hình khi người dùng làm việc ngoài trời hay dưới ánh sáng mạnh.</p><p>• Hệ thống <strong>loa kép</strong> cho chất âm to rõ, sống động, phục vụ trọn vẹn cho trải nghiệm xem phim, nghe nhạc và làm việc.</p><p>• <a href=\"https://www.thegioididong.com/laptop-hp-compaq-co-ban\">Laptop HP cơ bản</a> được hoàn thiện với gam <strong>màu bạc </strong>trung tính, <strong>vỏ nhựa </strong>cứng cáp cùng kiểu dáng hiện đại để bạn có thể mang theo làm việc ở bất cứ đâu. Với khối lượng&nbsp;<strong>1.69 kg</strong>, laptop dễ dàng nằm gọn trong balo cho bạn mang theo đến trường học, cơ quan hay quán coffee.</p><p>• Đầy đủ các cổng kết nối thông dụng dọc hai bên máy như: USB Type-C (chỉ hỗ trợ truyền dữ liệu), Jack tai nghe 3.5 mm, USB Type-A, HDMI và khe SD để thực hiện kết nối nhanh chóng khi cần thiết.</p>', 10, 'laptop-hp-15s-fq5229tu-i3-1215u8gb512gbwin11-8u237pa-655df3daf079c', 1, 15, '2023-11-21 16:44:18', '2023-11-21 16:44:18'),
(92, 'Màn hình MSI PRO MP243X 23.8 inch FHD/IPS/100Hz/4ms/HDMI ', 23, 2790000, 0, 1, 1, 29, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1701428692/uploads_WEB2041_Ecommerce/phpDC2C_t0ldd5.jpg', 5, 1, '<p>Với tần số quét <strong>100 Hz </strong>và thời gian đáp ứng chỉ <strong>4&nbsp;ms</strong>, màn hình cung cấp hình ảnh mượt mà và không bị giật, giảm thiểu các tình trạng nhòa mờ, duy trì tốt độ chính xác cho các chuyển động, hỗ trợ tốt khi bạn trải nghiệm các bộ phim hành động hay các tựa game có tốc độ chuyển cảnh nhanh.</p>', '<h3><a href=\"https://www.thegioididong.com/man-hinh-may-tinh/msi-pro-mp243x-23-8-inch-fhd\">Màn hình MSI PRO MP243X 23.8 inch FHD</a> sở hữu tần số quét 100 Hz, thời gian đáp ứng 4 ms mang đến cho bạn trải nghiệm hình ảnh tuyệt vời, cùng 119% sRGB và những thông số cao, hiện đại. Chiếc <a href=\"https://www.thegioididong.com/man-hinh-may-tinh-do-hoa\">màn hình đồ họa</a> này chắc chắn sẽ đáp ứng đầy đủ bạn từ các nhu cầu làm việc, giải trí thường ngày đến chơi game hay làm việc đồ họa.</h3><p>•&nbsp;<a href=\"https://www.thegioididong.com/man-hinh-may-tinh-msi\">Màn hình máy tính MSI</a> có kích thước <strong>23.8 inch </strong>sử dụng tấm nền<strong> IPS </strong>cùng độ phân giải<strong>&nbsp;Full HD (1920 x 1080) </strong>mang đến không gian rộng rãi cùng chất lượng hình ảnh sắc nét để bạn thoải mái trải nghiệm các nội dung khác nhau. Hơn nữa, công nghệ chống chói<strong> Anti-Glare </strong>làm hạn chế tình trạng bóng gương, tăng cường khả năng quan sát của người dùng dưới điều kiện ánh sáng cao.</p><p>• Với tần số quét <strong>100 Hz </strong>và thời gian đáp ứng chỉ <strong>4&nbsp;ms</strong>, màn hình cung cấp hình ảnh mượt mà và không bị giật, giảm thiểu các tình trạng nhòa mờ, duy trì tốt độ chính xác cho các chuyển động, hỗ trợ tốt khi bạn trải nghiệm các bộ phim hành động hay các tựa game có tốc độ chuyển cảnh nhanh.</p><p>• Đặc biệt, chiếc màn hình này còn có độ phủ màu đạt&nbsp;<strong>119% sRGB </strong>đem đến khả năng tái tạo màu sắc chuẩn xác khi bạn làm việc đồ họa hay chỉnh sửa hình ảnh, video.&nbsp;MSI còn trang bị tính năng <strong>Eye Care</strong>, được thiết kế đặc biệt để bảo vệ sức khỏe của mắt bằng cách điều chỉnh tự động độ sáng và màu sắc để tối ưu hóa trải nghiệm xem mà không gây căng thẳng cho mắt khi sử dụng lâu.</p><p>• Tính năng <strong>giảm ánh sáng xanh</strong> được tích hợp trên màn hình giúp giảm bớt ánh sáng xanh gây mỏi mắt và gây ảnh hưởng đến giấc ngủ. Kết hợp với tính năng <strong>Anti-Flicker</strong> cũng giúp giảm nhấp nháy không chỉ gây phiền hà khi xem, mà còn gây mệt mỏi và khó chịu cho mắt, từ đó đảm bảo bạn có một trải nghiệm xem mượt mà và không gây khó chịu cho mắt.</p><p>• <a href=\"https://www.thegioididong.com/man-hinh-may-tinh\">Màn hình máy tính</a> được trang bị <strong>loa tích hợp </strong>để mang đến cho người dùng trải nghiệm âm thanh tốt nhất trong khi làm việc hoặc giải trí. Ngoài ra,&nbsp;với khả năng gắn <strong>ARM chuẩn VESA</strong>, bạn có thể dễ dàng thay đổi vị trí màn hình theo ý muốn, điều chỉnh độ cao, nghiêng, quay và xoay một cách linh hoạt.</p><p>•&nbsp;MSI PRO MP243X được hoàn thiện với kiểu dáng tinh tế, hiện đại rất phù hợp để đặt trong phòng làm việc cá nhân, văn phòng hay các quầy lễ tân,... Khối lượng tổng thể&nbsp;<strong>4.15 kg </strong>cũng không quá khó khăn khi di chuyển và lắp đặt.&nbsp;</p><p>• Màn hình cũng có DisplayPort, HDMI, Headphone-out cho phép bạn kết nối nhanh chóng với các thiết bị như máy tính, loa và nhiều thiết bị khác.&nbsp;</p>', 24, 'man-hinh-msi-pro-mp243x-238-inch-fhdips100hz4mshdmi-6569be5be86bc', 1, 5, '2023-12-01 18:04:50', '2023-12-01 20:36:40'),
(94, 'Màn hình MSI Pro MP273QP 27 inch 2K/IPS/75Hz/1ms/HDMI', 23, 5690000, 0, 1, 0, 90, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1701429051/uploads_WEB2041_Ecommerce/php650A_r7rdnt.jpg', 0, 0, '<p>Màn hình có khả năng hiển thị&nbsp;<strong>16.7 triệu màu</strong>&nbsp;và đạt chuẩn <strong>102% sRGB</strong>&nbsp;vừa nâng cao trải nghiệm xem vừa đáp ứng được nhu cầu làm việc với đồ họa cần tinh chỉnh màu sắc chuyên nghiệp. Độ sáng&nbsp;<strong>350 cd/m2</strong> đảm bảo nội dung luôn được thể rõ nhất dù bạn làm việc dưới bóng đèn điện chói sáng.</p>', '<h3><a href=\"https://www.thegioididong.com/man-hinh-may-tinh/msi-pro-mp273qp-27-inch-2k-75hz\">Màn hình MSI Pro MP273QP 27 inch 2K</a> là sản phẩm mới nhất của nhà MSI, được thiết kế để đáp ứng nhu cầu làm việc với đồ họa hoặc giải trí hằng ngày của người dùng khi sở hữu những tính năng ưu việt cho khả năng hiển thị nội dung chất lượng cao.</h3><p>• Với kích thước <strong>27 inch </strong>độ phân giải <strong>QHD (2560 x 1440)</strong>, <a href=\"https://www.thegioididong.com/man-hinh-may-tinh-msi\">màn hình máy tính MSI</a> đem lại độ sắc nét và chi tiết cao hơn so với các màn hình Full HD thông thường, một lựa chọn tuyệt vời cho những người làm việc với đồ họa hoặc cần sử dụng một màn hình đủ lớn để chạy nhiều ứng dụng cùng lúc.</p><p>• Với tần số quét <strong>75 Hz</strong>, chiếc <a href=\"https://www.thegioididong.com/man-hinh-may-tinh\">màn hình máy tính</a> này có khả năng hiển thị hình ảnh sắc nét và mượt mà, mang đến cho bạn những phút giây giải trí tuyệt vời khi chơi game và xem phim. Thời gian đáp ứng chỉ <strong>1&nbsp;ms</strong> giúp giảm thiểu hiện tượng mờ và giật hình trong các cảnh chuyển động nhanh. Công nghệ <strong>Adaptive-sync</strong>&nbsp;giảm thiểu hiện tượng giật hình và tách hình trong quá trình chơi game.</p><p>• Màn hình có khả năng hiển thị&nbsp;<strong>16.7 triệu màu</strong>&nbsp;và đạt chuẩn <strong>102% sRGB</strong>&nbsp;vừa nâng cao trải nghiệm xem vừa đáp ứng được nhu cầu làm việc với đồ họa cần tinh chỉnh màu sắc chuyên nghiệp. Độ sáng&nbsp;<strong>350 cd/m2</strong> đảm bảo nội dung luôn được thể rõ nhất dù bạn làm việc dưới bóng đèn điện chói sáng.</p><p>•&nbsp;<a href=\"https://www.thegioididong.com/man-hinh-may-tinh-2k\">Màn hình máy tính 2K</a> này cũng được trang bị công nghệ <strong>giảm ánh sáng xanh</strong>, chống nháy <strong>Anti-Flicker </strong>và chống chói <strong>Anti-Glare</strong> giúp bảo vệ đôi mắt của bạn khỏi tác hại của ánh sáng xanh hay các hiệu ứng không tốt gây mỏi mắt khi sử dụng trong thời gian dài.</p><p>•&nbsp;Bên cạnh đó bạn còn có thể <strong>điều chỉnh góc nhìn </strong>của màn hình&nbsp;một cách dễ dàng, cũng như gắn <strong>ARM chuẩn VESA</strong> để nâng cao trải nghiệm. Thiết bị cũng được tích hợp <strong>loa</strong> giúp bạn giải trí, tham gia lớp học hoặc cuộc họp trực tuyến thuận tiện hơn.</p><p>•&nbsp;Các cổng giao tiếp như HDMI, DisplayPort và Headphone-out cho phép người dùng kết nối với màn hình và tai nghe một cách linh hoạt, dễ dàng. Màn hình MSI Pro MP273QP có kiểu dáng sang trọng và hiện đại với viền mỏng ở các cạnh, giúp làm tôn lên không gian làm việc hay giải trí của bạn.</p>', 24, 'man-hinh-msi-pro-mp273qp-27-inch-2kips75hz1mshdmi-6569bf89c2d1b', 1, 3, '2023-12-01 18:10:50', '2023-12-01 18:10:50'),
(96, 'Asus S500SD i5 12400/8GB/256GB/Bàn phím/Chuột/Win11 (512400050W)', 2, 13890000, 0, 1, 0, 34, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1701429499/uploads_WEB2041_Ecommerce/php3BC4_rmpr2y.jpg', 0, 0, '<p>PC được trang bị bộ nhớ <strong>RAM 8 GB DDR4</strong> và hỗ trợ nâng cấp lên tới <strong>64 GB</strong>, cho phép bạn tăng tốc độ xử lý và cải thiện hiệu suất hệ thống. Từ đó hỗ trợ bạn làm việc đa nhiệm mượt mà, vừa mở ứng dụng làm việc vừa nghe nhạc đều trơn tru.</p>', '<h3>Bạn đang tìm kiếm một chiếc <a href=\"https://www.thegioididong.com/may-tinh-de-ban-pc\">PC</a> mạnh mẽ, đáp ứng nhu cầu làm việc và giải trí hàng ngày? Tham khảo ngay <a href=\"https://www.thegioididong.com/may-tinh-de-ban/asus-s500sd-i5-512400050w\">PC Asus S500SD i5 12400 (512400050W)</a> với ngoại hình tối giản cùng những thông số cấu hình ấn tượng.</h3><p>•&nbsp;<a href=\"https://www.thegioididong.com/may-tinh-de-ban-asus\">PC Asus</a> được trang bị bộ vi xử lý <strong>Intel Core i5 12400</strong> với tốc độ xung nhịp lên đến <strong>4.40 GHz,</strong> cho phép xử lý các tác vụ đa nhiệm và xử lý dữ liệu phức tạp một cách mạnh mẽ và nhanh chóng, từ các ứng dụng văn phòng cho đến thiết kế, chơi game.</p><p>• Card tích hợp <strong>Intel UHD Graphics 730</strong>&nbsp;có khả năng xuất nội dung với độ phân giải lên đến 4K, cung cấp đủ sức mạnh để xử lý các tác vụ đồ họa thông thường và các ứng dụng văn phòng như Word, Excel, PowerPoint.</p><p>• Nhờ bo mạch chủ&nbsp;<strong>Intel B660&nbsp;</strong>với các tính năng bảo vệ và quản lý điện năng thông minh để tối ưu hiệu suất và tiết kiệm điện năng. Bộ nguồn <strong>300 W</strong> cung cấp đủ điện năng cho toàn bộ các linh kiện và đảm bảo độ ổn định trong quá trình hoạt động.</p><p>•&nbsp;PC được trang bị bộ nhớ <strong>RAM 8 GB DDR4</strong> và hỗ trợ nâng cấp lên tới <strong>64 GB</strong>, cho phép bạn tăng tốc độ xử lý và cải thiện hiệu suất hệ thống. Từ đó hỗ trợ bạn làm việc đa nhiệm mượt mà, vừa mở ứng dụng làm việc vừa nghe nhạc đều trơn tru.</p><p>•&nbsp;Ổ cứng <strong>SSD 256 GB</strong> với khe cắm ổ <strong>SSD M.2&nbsp;PCIe 4.0</strong> mở rộng cung cấp đủ không gian lưu trữ cho tất cả các tệp và dữ liệu học tập, công việc của bạn, tốc độ truy xuất dữ liệu giúp tối ưu tốc độ xử lý của hệ thống.</p><p>•&nbsp;Với nhiều cổng giao tiếp như: HDMI, USB-A, USB-C, LAN,..., PC cho phép kết nối với các thiết bị ngoại vi khác nhau. Máy đi kèm&nbsp;<strong>bàn phím</strong> và <strong>chuột</strong>, đồng thời được cài đặt sẵn hệ điều hành <strong>Windows 11</strong> để bạn có thể bắt đầu sử dụng máy ngay khi mua về.</p><p>•&nbsp;Với thiết kế&nbsp;<strong>vỏ nhựa</strong> <strong>màu đen </strong>chắc chắn và kích thước tổng thể <strong>9.46 x 29.27 x 33.96 cm</strong>, PC sẽ phù hợp với nhiều không gian khác nhau.</p>', 30, 'asus-s500sd-i5-124008gb256gbban-phimchuotwin11-512400050w-6569c0f86e750', 1, 0, '2023-12-01 18:18:18', '2023-12-01 18:18:18'),
(97, 'HP ProOne 440 G9 AIO i5 12500T/8GB/512GB/23.8\"F/Touch/Bàn phím/Chuột/Win11 (6M3X9PA)', 22, 22990000, 0, 1, 0, 23, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1701429729/uploads_WEB2041_Ecommerce/phpBBC9_mdzupp.jpg', 0, 0, '<p>Công nghệ <strong>Wi-Fi 6</strong> mang lại tốc độ truyền tải nhanh hơn, độ ổn định tốt hơn và độ bảo mật cao hơn so với các chuẩn Wi-Fi trước đó, trong khi <strong>Bluetooth 5.3</strong> cho phép kết nối không dây với các thiết bị ngoại vi như tai nghe, loa, chuột, bàn phím,... một cách dễ dàng, nhanh chóng.</p>', '<h3>Với thiết kế đẹp mắt và tính năng tiện ích, <a href=\"https://www.thegioididong.com/may-tinh-de-ban/hp-proone-440-g9-aio-i5-6m3x9pa\">máy tính để bàn HP ProOne 440 G9 AIO i5 12500T (6M3X9PA)</a> sẽ giúp người dùng thực hiện công việc một cách dễ dàng và hiệu quả, một sự lựa chọn hoàn hảo cho các bạn học sinh, sinh viên và nhân viên văn phòng.</h3><p>• <a href=\"https://www.thegioididong.com/may-tinh-de-ban-hp\">Máy tính để bàn HP</a> được trang bị bộ vi xử lý <strong>Intel Core i5 12500T</strong> thế hệ 12 với tốc độ xung nhịp tối đa lên đến <strong>4.40 GHz</strong> nhờ <strong>Turbo Boost</strong>, giúp máy tính có khả năng thực hiện mượt mà các tác vụ văn phòng và học tập trên các phần mềm như Word, Excel, PowerPoint. Bên cạnh đó máy cũng có thể vận hành các hoạt động giải trí như xem phim, lướt web với tốc độ nhanh và ổn định.</p><p>• Card tích hợp <strong>Intel UHD Graphics 770</strong>&nbsp;cho phép máy tính có khả năng xử lý tốt các tác vụ đồ họa cơ bản trên những phần mềm như Photoshop, AI, Canva,... Ngoài ra, card đồ họa này cũng cho phép người dùng chơi một số tựa game phổ biến ở mức cấu hình trung bình một cách mượt mà.</p><p>• Bộ nhớ <strong>RAM 8 GB</strong> chuẩn <strong>DDR4</strong> với khả năng nâng cấp lên đến <strong>64 GB</strong>, cho phép người dùng làm việc và giải trí trên máy tính một cách hiệu quả và không bị gián đoạn. Bên cạnh đó, ổ cứng <strong>SSD 512 GB</strong> giúp thời gian ghi đọc dữ liệu trở nên nhanh chóng và tăng tốc độ khởi động hệ thống.</p><p>• Nhờ màn hình rộng <strong>23.8 inch</strong> độ phân giải <strong>Full HD</strong>, người dùng có thể tận hưởng trải nghiệm giải trí tuyệt vời với các tác vụ như phim, video, chơi game. Đồng thời, công nghệ <strong>Anti Glare</strong> giúp giảm thiểu tình trạng chói sáng, đảm bảo sức khỏe cho đôi mắt của người dùng.</p><p>• <a href=\"https://www.thegioididong.com/may-tinh-de-ban-aio\">Máy tính để bàn All in one</a> của HP còn được trang bị <strong>camera 5 MP</strong>, cho phép người dùng dễ dàng tham gia các cuộc họp trực tuyến, gọi điện thoại video hay các hoạt động làm việc, học tập từ xa một cách thuận tiện và nhanh chóng.</p><p>• Công nghệ <strong>Wi-Fi 6</strong> mang lại tốc độ truyền tải nhanh hơn, độ ổn định tốt hơn và độ bảo mật cao hơn so với các chuẩn Wi-Fi trước đó, trong khi <strong>Bluetooth 5.3</strong> cho phép kết nối không dây với các thiết bị ngoại vi như tai nghe, loa, chuột, bàn phím,... một cách dễ dàng, nhanh chóng.</p><p>• <a href=\"https://www.thegioididong.com/may-tinh-de-ban\">Máy tính để bàn</a> có thiết kế đẹp mắt với các đường nét hiện đại, tông <strong>màu đen</strong> thanh lịch, phù hợp với nhiều không gian khác nhau,&nbsp;giúp bạn tập trung vào công việc và học tập một cách hiệu quả.</p><p>• Thiết bị được trang bị đầy đủ các cổng giao tiếp như: LAN, HDMI, SuperSpeed USB Type-A, SuperSpeed USB Type-C,... để bạn dễ dàng kết nối với nhiều thiết bị ngoại vi khác nhau, tối ưu hóa trải nghiệm sử dụng.</p>', 30, 'hp-proone-440-g9-aio-i5-12500t8gb512gb238ftouchban-phimchuotwin11-6m3x9pa-6569c1ddca747', 1, 2, '2023-12-01 18:22:08', '2023-12-01 18:22:08'),
(98, 'Pin sạc dự phòng Polymer 10000mAh Type C 15W AVA+ DS2107 ', 20, 500000, 0, 1, 0, 34, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1701435400/uploads_WEB2041_Ecommerce/php410B_kn8dwi.jpg', 0, 0, '<p>Ấn tượng với dung lượng pin 10.000 mAh, thiết kế 3 cổng sạc 2 chiều, màu sắc thời trang, kiểu dáng gọn nhẹ, chất lượng tốt, <a href=\"https://www.thegioididong.com/sac-dtdd/pin-polymer-10000mah-type-c-ava-ds2107\">pin sạc dự phòng Polymer 10000mAh Type C AVA+ DS2107</a> chắc chắn sẽ là phụ kiện yêu thích nhất của bạn trong thời gian tới đấy.&nbsp;</p>', '<h3>Nạp pin&nbsp;<a href=\"https://www.thegioididong.com/dtdd\">điện thoại</a> nhiều lần nhờ có&nbsp;<a href=\"https://www.thegioididong.com/sac-dtdd-10000mah\">dung lượng sạc dự phòng 10.000 mAh</a></h3><p>Nguồn tích trữ năng lượng dồi dào cho bạn hoàn toàn yên tâm khi khám phá các vùng đất mới hoặc công tác ở những nơi thiếu nguồn điện, sạc dự phòng sẽ luôn đảm bảo điện thoại có đủ năng lượng để bạn xử lý công việc, chụp ảnh, quay video khi cần.</p><p>Sạc dự phòng tương thích đa dạng thiết bị, có thể sạc cho iPhone X tầm 2.3 lần với hiệu suất sạc lên đến&nbsp;<strong>64%</strong>.</p><p><a href=\"https://www.thegioididong.com/hoi-dap/so-sanh-pin-li-ion-va-pin-li-po-651833#lipo\"><strong>Lõi pin Polymer</strong></a>&nbsp;cho khối lượng sản phẩm nhẹ, dùng bền, hạn chế rò rỉ năng lượng, duy trì quá trình sạc liền mạch, an toàn.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/57/245112/pin-polymer-10000mah-type-c-ava-ds2107-1.jpg\" alt=\"Pin sạc dự phòng Polymer 10000mAh Type C AVA+ DS2107 - Nạp pin điện thoại nhiều lần nhờ có dung lượng sạc dự phòng 10.000 mAh\"></figure><h3>Sạc 2 chiều tiện lợi qua 3 cổng USB, Type-C và Micro USB</h3><p>Nguồn ra, thiết bị có cổng&nbsp;<strong>USB&nbsp;5V - 2A</strong>,&nbsp;<strong>Type-C 5V - 3A</strong>, công suất sạc tối đa khi sạc cùng lúc 2 cổng lên tới 15 W cho tốc độ nạp pin mạnh mẽ, giảm đáng kể thời gian chờ đợi.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/57/245112/pin-polymer-10000mah-type-c-ava-ds2107-4.jpg\" alt=\"Pin sạc dự phòng Polymer 10000mAh Type C AVA+ DS2107 - Công suất sạc tối đa khi sạc cùng lúc 2 cổng lên tới 15 W\"></figure><p>Dải&nbsp;<strong>đèn LED báo hiệu&nbsp;</strong>dung lượng pin được tích hợp ở mặt trước pin sạc dự phòng cho phép bạn theo dõi nhanh, mỗi đèn thể hiện cho&nbsp;<strong>25%</strong>&nbsp;dung lượng pin.&nbsp;</p><p>Đặc biệt, cổng Type-C cũng đồng thời là nguồn vào cho dòng sạc&nbsp;5V - 3A, cổng vào&nbsp;<strong>Micro USB 5V - 2A</strong>, cung cấp cho bạn 2 lựa chọn sạc vào, kết hợp với nhiều loại cáp sạc để nạp pin hiệu quả hơn.&nbsp;</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/57/245112/pin-polymer-10000mah-type-c-ava-ds2107-2.jpg\" alt=\"Pin sạc dự phòng Polymer 10000mAh Type C AVA+ DS2107 - Sạc 2 chiều tiện lợi qua 3 cổng USB, Type-C và Micro USB\"></figure><h3>Thời gian nạp pin lại linh hoạt</h3><p>Khi <a href=\"https://www.thegioididong.com/sac-dtdd\">sạc dự phòng</a> sắp hết pin, bạn có thể sạc lại cùng&nbsp;<strong>adapter 1A&nbsp;</strong>trong khoảng&nbsp;<strong>10 - 11 tiếng</strong>&nbsp;hoặc rút ngắn thời gian sạc với&nbsp;<strong>adapter 2A</strong>, khi sạc đầy pin chỉ trong&nbsp;<strong>5 - 6 tiếng</strong>.&nbsp;</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/57/245112/pin-polymer-10000mah-type-c-ava-ds2107-3.jpg\" alt=\"Pin sạc dự phòng Polymer 10000mAh Type C AVA+ DS2107 - Thời gian nạp pin lại linh hoạt\"></figure><h3>AVA+ DS2107 kiểu dáng nhỏ nhắn, cầm vừa vặn trong lòng bàn tay</h3><p>Tối giản về kích cỡ mang đến cho bạn 1 thiết kế <a href=\"https://www.thegioididong.com/sac-dtdd-ava-plus\">sạc dự phòng&nbsp;AVA+</a>&nbsp;cực kỳ nhỏ gọn, có thể cho vào túi quần, túi áo hoặc đặt trong túi đồ thường nhật và đem theo bên mình thuận tiện khi đi đến trường, công ty, du lịch,... Thiết kế 2 phiên bản&nbsp;<strong>màu đen sang trọng</strong>&nbsp;và&nbsp;<strong>màu trắng thanh nhã</strong>, hợp sở thích của cả phái mạnh và phái đẹp.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/57/245112/pin-polymer-10000mah-type-c-ava-ds2107-5.jpg\" alt=\"Pin sạc dự phòng Polymer 10000mAh Type C AVA+ DS2107 - AVA+ DS2107 kiểu dáng nhỏ nhắn, cầm vừa vặn trong lòng bàn tay\"></figure><p>Ấn tượng với dung lượng pin 10.000 mAh, thiết kế 3 cổng sạc 2 chiều, màu sắc thời trang, kiểu dáng gọn nhẹ, chất lượng tốt, <a href=\"https://www.thegioididong.com/sac-dtdd/pin-polymer-10000mah-type-c-ava-ds2107\">pin sạc dự phòng Polymer 10000mAh Type C AVA+ DS2107</a> chắc chắn sẽ là phụ kiện yêu thích nhất của bạn trong thời gian tới đấy.&nbsp;</p>', 9, 'pin-sac-du-phong-polymer-10000mah-type-c-15w-ava-ds2107-6569d8696b487', 1, 2, '2023-12-01 19:56:39', '2023-12-01 19:56:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_variants`
--

CREATE TABLE `product_variants` (
  `id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` smallint(6) NOT NULL,
  `discount` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product_variants`
--

INSERT INTO `product_variants` (`id`, `prod_id`, `price`, `quantity`, `discount`) VALUES
(1, 83, 44900000, 111, 0),
(2, 83, 44590000, 20, 8),
(3, 83, 34690000, 23, 0),
(5, 83, 33590000, 224, 0),
(7, 84, 5100000, 77, 0),
(8, 85, 5990000, 234, 10),
(9, 85, 7990000, 110, 0),
(10, 85, 6590000, 67, 0),
(11, 85, 5690000, 233, 15),
(12, 86, 35690000, 22, 0),
(13, 86, 34890000, 21, 0),
(14, 87, 22990000, 234, 0),
(15, 87, 21990000, 12, 4),
(16, 87, 21990000, 12, 0),
(17, 87, 21790000, 34, 0),
(18, 89, 25990000, 33, 0),
(19, 89, 25990000, 99, 0),
(20, 89, 25290000, 34, 3),
(21, 89, 24990000, 9, 4),
(22, 88, 10990000, 24, 8),
(23, 88, 10990000, 23, 0),
(24, 88, 11590000, 23, 0),
(25, 90, 3590000, 20, 3),
(26, 90, 3690000, 77, 0),
(27, 90, 3190000, 34, 0),
(28, 90, 3990000, 55, 0),
(29, 84, 5181000, 33, 0),
(30, 91, 10890000, 34, 0),
(31, 91, 10890000, 23, 8),
(32, 91, 9990000, 88, 0),
(33, 92, 2190000, 230, 22),
(34, 94, 4890000, 343, 14),
(38, 96, 12890000, 234, 7),
(39, 96, 13490000, 45, 3),
(40, 96, 16890000, 24, 0),
(41, 97, 21490000, 34, 0),
(42, 97, 23490000, 231, 0),
(43, 97, 25190000, 45, 5),
(44, 98, 500000, 33, 0),
(45, 98, 450000, 34, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `star` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ratings`
--

INSERT INTO `ratings` (`id`, `prod_id`, `user_id`, `star`, `comment`, `status`, `create_at`, `update_at`) VALUES
(2, 83, 4, 4, 'San pham that su chat luong', 1, '2023-11-23 14:58:53', '2023-11-23 15:26:48'),
(3, 83, 9, 4, 'Người dùng không để lại cảm nghĩ.', 1, '2023-11-23 15:03:49', '2023-11-23 15:27:00'),
(4, 92, 4, 5, 'Sản phẩm đỉnh thựt sự không thể tin nổi <3333', 1, '2023-12-01 20:36:40', '2023-12-01 20:37:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Người quản trị'),
(2, 'seller', 'Người bán hàng'),
(3, 'customer', 'Khách hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `store_custom`
--

CREATE TABLE `store_custom` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `open_time` varchar(255) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `store_custom`
--

INSERT INTO `store_custom` (`id`, `name`, `phone`, `email`, `address`, `logo`, `open_time`, `create_at`, `update_at`) VALUES
(1, 'Cua hang ban dien thoai ', '0332225690', 'admin@gmail.com', 'Tầng 1 siêu thị Winmart Nhật Tân,\r\nNg. 689 Đ. Lạc Long Quân, Phú Thượng, Tây Hồ, Hà Nội', 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700712006/uploads_WEB2041_Ecommerce/php869D_ps6uvw.jpg', 'Thứ hai đến thứ 7: 9am - 10pm | Chủ nhật: 10am - 6pm ', '2023-11-22 20:10:13', '2023-11-22 20:10:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `avatar` varchar(255) NOT NULL DEFAULT 'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg',
  `address` text NOT NULL,
  `phone` varchar(20) NOT NULL,
  `isBlock` tinyint(4) NOT NULL DEFAULT 0,
  `role_id` tinyint(4) NOT NULL DEFAULT 2,
  `accessToken` text NOT NULL,
  `refreshToken` varchar(500) NOT NULL,
  `create_At` datetime NOT NULL DEFAULT current_timestamp(),
  `update_At` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `fullname`, `email`, `password`, `avatar`, `address`, `phone`, `isBlock`, `role_id`, `accessToken`, `refreshToken`, `create_At`, `update_At`) VALUES
(4, 'Vũ Ngọc Tân (admin)', 'admin@gmail.com', '$2y$10$kz/Xzp/xNuEXzX.4BkCjzOGtUEMsvmd8hwWqyJ119ZdI9tjbtqnP6', 'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg', 'Dong anh HA NOI', '0332225690', 0, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo0LCJyb2xlX2lkIjoxLCJmdWxsbmFtZSI6IlZcdTAxNjkgTmdcdTFlY2RjIFRcdTAwZTJuIChhZG1pbikiLCJhdmF0YXIiOiJodHRwczpcL1wvdDQuZnRjZG4ubmV0XC9qcGdcLzA1XC80OVwvOThcLzM5XC8zNjBfRl81NDk5ODM5NzBfYlJDa1lmazBQNlBQNWZLYk1oWk1JYjA3bUNKNmVzWEwuanBnIiwiaXNCbG9jayI6MCwiZXhwIjoxNzAxNDM1MTY2fQ.FaknnaxNV5JazFyB-JHeCp3ys4WOEwjZEQc2Dd2MlPA', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyZWZyZXNoVG9rZW4iOjQsImV4cCI6MTcwMjAzMjc2Nn0.yAA6riZpmmN4Jh0exqGhG3PN6e6ZTa7wBDE0WPIuCCY', '2023-10-02 08:15:37', '2023-12-01 17:52:46'),
(9, 'Trần Văn B', 'vungoctan.vnt63@gmail.com', '$2y$10$zZczTvtUBq3oGMNhz0vph.dV7OAgz0r51T.56g9GURE9vZnRg3sam', 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700472991/uploads_WEB2041_Ecommerce/phpADF_qwzk6l.jpg', 'tanvnwdwdwd', '0332225678', 0, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo5LCJyb2xlX2lkIjozLCJmdWxsbmFtZSI6IlRyXHUxZWE3biBWXHUwMTAzbiBCIiwiYXZhdGFyIjoiaHR0cHM6XC9cL3Jlcy5jbG91ZGluYXJ5LmNvbVwvZGZna2trY29jXC9pbWFnZVwvdXBsb2FkXC92MTcwMDQ3Mjk5MVwvdXBsb2Fkc19XRUIyMDQxX0Vjb21tZXJjZVwvcGhwQURGX3F3ems2bC5qcGciLCJpc0Jsb2NrIjowLCJleHAiOjE3MDA3NDI3Nzh9.3KmPmpq-cpWef2sFCGjMIPwJ1pG-0V_0rKV5gwwKtXs', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyZWZyZXNoVG9rZW4iOjksImV4cCI6MTcwMTM0MDM3OH0.XknZmL2uqeMLYhaftGemrSvrjmhWZbIMjsqboqB9DIk', '2023-10-02 19:26:25', '2023-11-23 17:32:58'),
(10, 'tan c', 'tanvnph33606@fpt.edu.vn', '$2y$10$Qtu1Pelsaj8mi4AIxnVziurp53xeH7VuV0tJSCC1aBuua4.Ld5FCC', 'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg', '', '0990006780', 0, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxMCwicm9sZV9pZCI6MywiZnVsbG5hbWUiOiJ0YW4gYyIsImF2YXRhciI6Imh0dHBzOlwvXC90NC5mdGNkbi5uZXRcL2pwZ1wvMDVcLzQ5XC85OFwvMzlcLzM2MF9GXzU0OTk4Mzk3MF9iUkNrWWZrMFA2UFA1ZktiTWhaTUliMDdtQ0o2ZXNYTC5qcGciLCJpc0Jsb2NrIjowLCJleHAiOjE3MDA5MzE4NTN9.BuR1zG6vV22HbdQwrRnJx_ShVRoIQPqM15U1q6d81ao', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyZWZyZXNoVG9rZW4iOjEwLCJleHAiOjE3MDE1Mjk0NTN9.bt_3pD2V8vOwoHIJlyjiBwSN6KduLSLABSyBdk9UryM', '2023-10-06 20:46:35', '2023-11-25 22:04:13'),
(24, 'Vũ Ngọc Tân (seller)', 'seller@gmail.com', '$2y$10$6uO.PhPLoZ58CU7n4C5NVO49w6K.sWF4Ki94kj.RJXvq7s1i0HILq', 'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg', '', '0332225691', 0, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyNCwicm9sZV9pZCI6MiwiZnVsbG5hbWUiOiJWXHUwMTY5IE5nXHUxZWNkYyBUXHUwMGUybiAoc2VsbGVyKSIsImF2YXRhciI6Imh0dHBzOlwvXC90NC5mdGNkbi5uZXRcL2pwZ1wvMDVcLzQ5XC85OFwvMzlcLzM2MF9GXzU0OTk4Mzk3MF9iUkNrWWZrMFA2UFA1ZktiTWhaTUliMDdtQ0o2ZXNYTC5qcGciLCJpc0Jsb2NrIjowLCJleHAiOjE3MDEzNTQ5NzZ9.OXswAuGRLyhUZU8VlEpApSUXAagH0rWb3fGgQZ5Q2gI', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyZWZyZXNoVG9rZW4iOjI0LCJleHAiOjE3MDE5NTI1NzZ9.Wsba9ngm3tzyIw2r4sRP7H-EM8wnoe780xDpkBsvaRE', '2023-11-21 16:57:39', '2023-12-01 20:20:12'),
(25, 'test', 'test1@gmail.com', '$2y$10$CRCZd4az1iD2h.LC5tN/2uQPB1nGnrnlUX0Ik4mBvfm6B6wYbi6c.', 'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg', '', '', 0, 3, '', '', '2023-11-21 17:16:37', '2023-11-28 10:32:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `variants_value`
--

CREATE TABLE `variants_value` (
  `id` int(11) NOT NULL,
  `product_variant_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `attribute_value_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `variants_value`
--

INSERT INTO `variants_value` (`id`, `product_variant_id`, `attribute_id`, `attribute_value_id`) VALUES
(22, 1, 20, 30),
(23, 1, 23, 28),
(24, 2, 20, 18),
(25, 2, 23, 28),
(26, 3, 20, 17),
(27, 3, 23, 28),
(30, 5, 20, 18),
(31, 5, 23, 27),
(34, 7, 21, 35),
(35, 7, 23, 25),
(36, 8, 20, 18),
(37, 8, 23, 40),
(38, 9, 20, 17),
(39, 9, 23, 40),
(40, 10, 20, 18),
(41, 10, 23, 39),
(42, 11, 20, 18),
(43, 11, 23, 41),
(44, 12, 20, 18),
(45, 12, 23, 24),
(46, 13, 20, 17),
(47, 13, 23, 40),
(48, 14, 20, 17),
(49, 14, 23, 24),
(50, 15, 20, 18),
(51, 15, 23, 24),
(52, 16, 20, 18),
(53, 16, 23, 39),
(54, 17, 20, 17),
(55, 17, 23, 39),
(56, 18, 20, 17),
(57, 18, 23, 39),
(58, 19, 20, 17),
(59, 19, 23, 40),
(60, 20, 20, 18),
(61, 20, 23, 42),
(62, 21, 20, 18),
(63, 21, 23, 41),
(64, 22, 20, 18),
(65, 22, 23, 22),
(66, 23, 20, 17),
(67, 23, 23, 22),
(68, 24, 20, 18),
(69, 24, 23, 39),
(70, 25, 20, 18),
(71, 25, 23, 39),
(72, 26, 20, 17),
(73, 26, 23, 39),
(74, 27, 20, 17),
(75, 27, 23, 40),
(76, 28, 20, 17),
(77, 28, 23, 42),
(78, 29, 21, 35),
(79, 29, 23, 24),
(80, 30, 20, 18),
(81, 30, 21, 21),
(82, 30, 23, 40),
(83, 31, 20, 18),
(84, 31, 21, 20),
(85, 31, 23, 40),
(86, 32, 20, 17),
(87, 32, 21, 21),
(88, 32, 23, 39),
(89, 33, 23, 43),
(90, 34, 23, 43),
(91, 38, 20, 30),
(92, 38, 21, 21),
(93, 38, 23, 43),
(94, 39, 20, 18),
(95, 39, 21, 20),
(96, 39, 23, 43),
(97, 40, 20, 30),
(98, 40, 21, 32),
(99, 40, 23, 43),
(100, 41, 20, 18),
(101, 41, 21, 20),
(102, 41, 23, 43),
(103, 42, 20, 30),
(104, 42, 21, 20),
(105, 42, 23, 43),
(106, 43, 20, 30),
(107, 43, 21, 32),
(108, 43, 23, 43),
(109, 44, 23, 43),
(110, 44, 32, 45),
(111, 45, 23, 44),
(112, 45, 32, 45);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `attribute`
--
ALTER TABLE `attribute`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `attribute_value`
--
ALTER TABLE `attribute_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_id` (`attribute_id`);

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `cart_item`
--
ALTER TABLE `cart_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prod_id` (`product_variant_id`),
  ADD KEY `prod_id_2` (`product_variant_id`),
  ADD KEY `cart_id` (`cart_id`),
  ADD KEY `product_variant_id` (`product_variant_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`);

--
-- Chỉ mục cho bảng `images_product`
--
ALTER TABLE `images_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prod_id` (`prod_id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_variant_id` (`product_variant_id`),
  ADD KEY `product_id` (`product_variant_id`),
  ADD KEY `product_variant_id_2` (`product_variant_id`);

--
-- Chỉ mục cho bảng `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_method_id` (`payment_method_id`,`payment_transaction_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `payment_transactions`
--
ALTER TABLE `payment_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Chỉ mục cho bảng `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prod_id` (`prod_id`);

--
-- Chỉ mục cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prod_id` (`prod_id`,`user_id`),
  ADD KEY `prod_id_2` (`prod_id`,`user_id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `store_custom`
--
ALTER TABLE `store_custom`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`,`phone`),
  ADD KEY `email_2` (`email`,`phone`),
  ADD KEY `email_3` (`email`,`phone`);

--
-- Chỉ mục cho bảng `variants_value`
--
ALTER TABLE `variants_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variant_id` (`product_variant_id`,`attribute_id`,`attribute_value_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `attribute`
--
ALTER TABLE `attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `attribute_value`
--
ALTER TABLE `attribute_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `cart_item`
--
ALTER TABLE `cart_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `coupon`
--
ALTER TABLE `coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `images_product`
--
ALTER TABLE `images_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `payment_transactions`
--
ALTER TABLE `payment_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT cho bảng `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `store_custom`
--
ALTER TABLE `store_custom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `variants_value`
--
ALTER TABLE `variants_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
