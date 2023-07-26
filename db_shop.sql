-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 20, 2022 lúc 04:13 PM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminUser` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminEmail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminPassword` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `level` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminUser`, `adminEmail`, `adminPassword`, `level`) VALUES
(1, 'Nayem Howlader', 'nayem', 'nayemhowlader77@gmail.com', '850721dea834fe36b29083291509c7ad', 0),
(2, 'rosaline', 'hoivu', 'hoivu2k1@gmail.com', 'a29d1598024f9e87beab4b98411d48ce', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(2, 'Longines'),
(3, 'Tag Heuer'),
(4, 'Rolex'),
(5, 'Patek Philippe'),
(6, 'Omega');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `sId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` float(10,0) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `sId`, `productId`, `productName`, `price`, `quantity`, `image`) VALUES
(4, 'qnfrmdbae24ohbjgtfjkd9u3u3', 22, 'Đồng hồ đính đá', 500000, 2, 'uploads/1786432181.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(5, 'Đồng hồ thông minh'),
(6, 'Đồng hồ cơ tự động'),
(7, 'Đồng hồ thạch anh'),
(9, 'Đồng hồ cơ'),
(10, 'Dây đồng hồ'),
(11, 'Đồng hồ nam'),
(12, 'Đồng hồ nữ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` float(10,0) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `name`, `email`, `contact`, `message`, `status`, `date`) VALUES
(2, 'md.alvi islam', 'customer@gmail.com', '1622425286', 'szzss', 1, '2018-08-05 23:23:25'),
(3, 'hội', 'hoivu2k1@gmail.com', '09876536745', 'Đồng hồ rất đẹp', 1, '2022-05-03 08:43:54'),
(4, 'hội', 'hoivu2k1@gmail.com', '09876536745', 'Đồng hồ rất đẹp', 0, '2022-05-03 09:57:54'),
(5, 'Hội Vũ', 'hoivu2k1@gmail.com', '98765432', 'Tôi muôn được hỗ trợ', 0, '2022-05-07 14:30:28'),
(6, 'hoivu', 'hoivu2k1@gmail.com', '09876536745', 'hàng ko đẹp', 0, '2022-05-09 13:38:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `zip` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zip`, `phone`, `email`, `pass`) VALUES
(1, 'bappy', 'khilgaon, Dhaka', 'Dhaka', 'Bangladesh', '1219', '01622425286', 'customer@gmail.com', '202cb962ac59075b964b07152d234b70'),
(2, 'h?i', 'thái bình', 'tphcm', 'vi?t nam', '01234', '07654322', 'hoivu@gmail', 'e10adc3949ba59abbe56e057f20f883e'),
(3, 'rosalien', 'Thái Bình', 'Hà nội', 'Việt Nam', '01234', '01234567', 'hoivu2k1@gmail.com', 'a29d1598024f9e87beab4b98411d48ce');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `cmrId`, `productId`, `productName`, `quantity`, `price`, `image`, `date`, `status`) VALUES
(47, 3, 31, 'Rolex Oyster Perpetual Day-Date', 1, 180900000, 'uploads/b9e0adf791.png', '2022-05-07 22:52:04', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `body` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `price` float(10,0) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `catId`, `brandId`, `body`, `price`, `image`, `type`) VALUES
(22, 'Đồng hồ Speedmaster Calibre', 7, 4, '<p>Đồng hồ rất đẹp</p>', 500000, 'uploads/57ae2c5b3f.png', 0),
(23, 'Đồng hồ nam Longines Master', 9, 2, '<p>AUTOMATIC - 40MM</p>\r\n<p>Chất liệu: Vỏ th&eacute;p kh&ocirc;ng gỉ</p>\r\n<p>T&iacute;nh năng:&nbsp;<span>Lịch ng&agrave;y. Caliber L888, 25.200vph, trữ c&oacute;t 64h. Mặt số đ&iacute;nh 13 vi&ecirc;n kim cương tổng 0.059 carat.</span></p>\r\n<p><span>Bảo h&agrave;nh: 5 năm</span></p>', 10000000, 'uploads/b3527e2fa1.png', 0),
(24, 'Omega Seamaster Diver 300M', 9, 6, '<p>- Đ&ocirc;̀ng h&ocirc;̀ mới tinh 100% fullbox seal,</p>\r\n<p>- Bảo h&agrave;nh&nbsp; tại cửa h&agrave;ng ch&iacute;nh h&atilde;ng&nbsp;5 năm</p>\r\n<p>- Model: 231.20.43.52.06.001</p>\r\n<p>- Size: 43mm, độ dầy ~ 16mm</p>\r\n<p>- Bộ m&aacute;y:Automatic Omega Calibre 9605, 54 ch&acirc;n k&iacute;nh, tần số dao động 25200vph, trữ c&oacute;t 60 giờ</p>\r\n<p><span>- Th&acirc;n vỏ:&nbsp;Th&eacute;p kh&ocirc;ng gỉ/V&agrave;ng hồng 18k</span></p>\r\n<p><span>- D&acirc;y:&nbsp;Th&eacute;p kh&ocirc;ng gỉ/V&agrave;ng hồng 18k</span></p>', 100000000, 'uploads/b041653d9c.png', 0),
(25, 'Đồng hồ Omega Prestige Reserve', 6, 6, '<p><span>- Brand new fullbox seal, đầy đủ hộp sổ thẻ bảo h&agrave;nh quốc tế</span><br /><span>- Model: 424.53.40.21.03.001</span><br /><span>- Size: 39.5mm, mỏng ~ 10mm</span><br /><span>- Bộ m&aacute;y: Automatic Omega 2627, với 29 ch&acirc;n k&iacute;nh 25200vph, trữ năng lượng l&ecirc;n đến 48 giờ</span><br /><span>- Th&acirc;n Vỏ: yellow gold 18k</span><br /><span>- Kh&oacute;a: yellow gold 18k</span><br /><span>- K&iacute;nh: Sapphire nguy&ecirc;n khối</span><br /><span>- D&acirc;y da: C&aacute; sấu cao cấp</span><br /><span>- Chống nước: 30m</span></p>', 100000000, 'uploads/d8855715a5.png', 0),
(26, 'Đồng Hồ đính đá', 6, 5, '<p><span>Bộ sưu tập Complications của Patek Philippe</span><span>&nbsp;l&agrave; những thiết kế b&aacute;n chạy nhất của thương hiệu, với những t&iacute;nh năng hữu dụng. B&ecirc;n cạnh Lịch thường ni&ecirc;n hay Giờ thế giới, ch&uacute;ng ta cũng c&oacute; chiếc&nbsp;</span><span>Patek Philippe Complications 7234G-001</span><span>&nbsp;với khả năng hiển thị m&uacute;i giờ thứ hai.</span></p>', 5000000000, 'uploads/d6d2e0452d.png', 0),
(27, 'TAG HEUER CAR2012', 7, 3, '<p>Đồng hồ Thụy Sỹ.Sản phẩm nhập khẩu ch&iacute;nh h&atilde;ng.</p>\r\n<p><span>Vận chuyển miễn ph&iacute; to&agrave;n quốc.</span></p>\r\n<p><span>Bảo h&agrave;nh 3 năm tại C&ocirc;ng ty.</span></p>', 52000000, 'uploads/318d0c0a09.png', 0),
(29, 'Đồng hồ Rolex Day Chocolate', 6, 4, '<ul>\r\n<li>Cam kết tất cả sản phẩm b&aacute;n ra l&agrave; Ch&iacute;nh H&atilde;ng 100%</li>\r\n<li>Bảo h&agrave;nh từ 2 đến 5 năm theo đ&uacute;ng ti&ecirc;u chuẩn của h&atilde;ng</li>\r\n<li>Tặng g&oacute;i Spa miễn ph&iacute; 2 năm trị gi&aacute; 3.000.000 đồng</li>\r\n<li>Giao h&agrave;ng to&agrave;n quốc,hỗ trợ 24/7 về chất lượng sản phẩm</li>\r\n</ul>', 1800000000, 'uploads/b1b9630341.png', 0),
(30, 'Đồng hồ Rolex Oyster Perpetual ', 9, 4, '<ul>\r\n<li>Cam kết tất cả sản phẩm b&aacute;n ra l&agrave; Ch&iacute;nh H&atilde;ng 100%</li>\r\n<li>Bảo h&agrave;nh từ 2 đến 5 năm theo đ&uacute;ng ti&ecirc;u chuẩn của h&atilde;ng</li>\r\n<li>Tặng g&oacute;i Spa miễn ph&iacute; 2 năm trị gi&aacute; 3.000.000 đồng</li>\r\n<li>Giao h&agrave;ng to&agrave;n quốc,hỗ trợ 24/7 về chất lượng sản phẩm</li>\r\n</ul>', 500000000, 'uploads/3440cbc8ae.png', 0),
(31, 'Rolex Oyster Perpetual Day-Date', 7, 4, '<ul>\r\n<li>Cam kết tất cả sản phẩm b&aacute;n ra l&agrave; Ch&iacute;nh H&atilde;ng 100%</li>\r\n<li>Bảo h&agrave;nh từ 2 đến 5 năm theo đ&uacute;ng ti&ecirc;u chuẩn của h&atilde;ng</li>\r\n<li>Tặng g&oacute;i Spa miễn ph&iacute; 2 năm trị gi&aacute; 3.000.000 đồng</li>\r\n<li>Giao h&agrave;ng to&agrave;n quốc,hỗ trợ 24/7 về chất lượng sản phẩm</li>\r\n</ul>', 180900000, 'uploads/b9e0adf791.png', 0),
(32, 'Đồng Hồ Rolex Oyster Perpetual', 6, 4, '<ul>\r\n<li>Cam kết tất cả sản phẩm b&aacute;n ra l&agrave; Ch&iacute;nh H&atilde;ng 100%</li>\r\n<li>Bảo h&agrave;nh từ 2 đến 5 năm theo đ&uacute;ng ti&ecirc;u chuẩn của h&atilde;ng</li>\r\n<li>Tặng g&oacute;i Spa miễn ph&iacute; 2 năm trị gi&aacute; 3.000.000 đồng</li>\r\n<li>Giao h&agrave;ng to&agrave;n quốc,hỗ trợ 24/7 về chất lượng sản phẩm</li>\r\n</ul>', 580000, 'uploads/b11b438def.png', 1),
(33, 'Đồng Hồ Omega Speedmaster', 9, 6, '<p><span>Mẫu đồng hồ</span><span>&nbsp;Omega Speedmaster Moonwatch Co-Axial 42mm 310.30.42.50.01.002</span><span>&nbsp;c&oacute; thể được coi l&agrave; biểu tượng của&nbsp;</span><a href=\"https://giabaoluxury.com/dong-ho/omega\">thương hiệu Omega</a><span>, được gắn liền với c&ocirc;ng cuộc kh&aacute;m ph&aacute; mặt trăng. Đặc biệt hơn, thiết kế n&agrave;y c&ograve;n sử dụng bộ m&aacute;y l&ecirc;n c&oacute;t thủ c&ocirc;ng đ&uacute;ng theo ti&ecirc;u chuẩn đồng hồ được sử dụng trong m&ocirc;i trường kh&ocirc;ng trọng lượng.</span></p>', 205000000, 'uploads/1750dbf03e.png', 1),
(34, 'Đồng Hồ Omega Seamaster Diver 300M', 7, 6, '<p><span>Mẫu đồng hồ Omega Seamaster Diver 300M 210.90.42.20.01.001 c&oacute; mặt tại Gia Bảo Luxury ng&agrave;y h&ocirc;m nay l&agrave; một điển h&igrave;nh cho sự th&agrave;nh c&ocirc;ng đ&oacute;. Vẫn giữ nguy&ecirc;n n&eacute;t đẹp cổ điển của thiết kế huyền thoại, chiếc đồng hồ mang m&atilde; hiệu 210.90.42.20.01.001 c&oacute; k&iacute;ch thước 42mm sở hữu bộ vỏ l&agrave;m từ chất liệu mới, hiện địa l&agrave; titanium được đ&aacute;nh b&oacute;ng to&agrave;n bộ.</span></p>', 7900000256, 'uploads/2c0e9ef699.png', 1),
(35, 'Đồng hồ Patek Philippe 5167R-001', 9, 5, '<p><span>L&agrave; thiết kế anh em của d&ograve;ng Nautilus, Aquanaut của&nbsp;</span><a href=\"https://giabaoluxury.com/dong-ho-patek-philippe-chinh-hang\">thương hiệu Patek Philippe</a><span>&nbsp;đem đến cho người chơi đồng hồ một trải nghiệm nhẹ nh&agrave;ng hơn, với bộ vỏ đơn giản h&oacute;a nhưng vẫn giữ d&aacute;ng Cushion đặc trưng. Mẫu đồng hồ</span><span>&nbsp;Patek Philippe Aquanaut 5167R-001</span><span>&nbsp;l&agrave; một v&iacute; dụ điển h&igrave;nh cho điều đ&oacute;, tuy l&agrave; đồng hồ thể thao nhưng vẫn rất thanh lịch.</span></p>', 590000000, 'uploads/9eb1956e3e.png', 1),
(36, 'Đồng Hồ Patek Philippe Complications 4947R-001', 9, 5, '<p><span>Mỗi chiếc đồng hồ&nbsp;</span><a href=\"https://giabaoluxury.com/dong-ho-patek-philippe-chinh-hang\" target=\"_blank\">Patek Philippe</a><span>&nbsp;gắn liền với một c&acirc;u chuyện hấp dẫn về cảm x&uacute;c của mỗi con người, v&agrave; c&oacute; những người đ&atilde; lựa chọn d&agrave;nh cả cuộc đời m&igrave;nh để gắn liền với Patek Philippe. Quả thực đ&uacute;ng l&agrave; như vậy, kh&ocirc;ng chỉ đối với những người thợ chế t&aacute;c, m&agrave; kể cả những vị kh&aacute;ch khi đ&atilde; sở hữu trong tay một chiếc đồng hồ Patek Philippe đều ho&agrave;n to&agrave;n bị hấp dẫn bởi sức h&uacute;t m&atilde;nh liệt của n&oacute;, h&ograve;a nhập c&ugrave;ng cảm x&uacute;c của họ v&agrave; đem lại những n&eacute;t tinh tế nhất từ m&oacute;n phụ kiện đắt gi&aacute;</span></p>', 645000000, 'uploads/9b8044dedb.png', 0),
(37, 'Đồng hồ Patek Philippe Aquanaut 5164R-001', 7, 5, '<p><span>Về mặt thiết kế, bộ vỏ khung của&nbsp;</span><em>Patek Philippe Aquanaut 5164R-001&nbsp;</em><span>l&agrave; tập hợp của những g&igrave; tinh t&uacute;y nhất trong c&ocirc;ng nghệ chế t&aacute;c đồng hồ của nh&agrave;&nbsp;</span><a href=\"https://giabaoluxury.com/dong-ho-patek-philippe-chinh-hang\">Patek Philippe</a><span>. Với chất liệu v&agrave;ng hồng 18K cao cấp, được đ&aacute;nh b&oacute;ng tỉ mỉ to&agrave;n bộ chiếc đồng hồ tựa như to&aacute;t l&ecirc;n một n&eacute;t đẹp ấm &aacute;p đầy qu&yacute; ph&aacute;i v&agrave; lịch l&atilde;m khi xuất hiện tr&ecirc;n cổ tay của c&aacute;c qu&yacute; &ocirc;ng.</span></p>', 56000000, 'uploads/06c09510f9.png', 0),
(38, 'Đồng hồ Patek Philippe Twenty', 9, 0, '<p><span>Đồng hồ&nbsp;</span><a href=\"https://giabaoluxury.com/dong-ho/patek-philippe\">Patek Philippe</a><span>&nbsp;kh&ocirc;ng chỉ l&agrave; ao ước của những đấng m&agrave;y r&acirc;u, m&agrave; đ&oacute; cũng l&agrave; mục ti&ecirc;u d&agrave;i hạn của nhiều chị em b&ecirc;n cạnh những &ldquo;c&acirc;y t&uacute;i Hermes&rdquo; đắt gi&aacute;. H&ocirc;m nay, Gia Bảo Luxury giới thiệu tới qu&yacute; vị chiếc đồng hồ thuộc bộ sưu tập Twenty 4 mang m&atilde; hiệu&nbsp;</span><span>7300/1200R-010</span><span>&nbsp;với v&agrave;nh kim cương nguy&ecirc;n bản.</span></p>', 3480000000, 'uploads/17c89d6187.png', 1),
(39, ' Đồng hồ LONGINES LYRE L4.361', 9, 2, '<p><span>Sở hữu d&aacute;ng vẻ khỏe khoắn v&agrave; năng động, bộ vỏ khung Longinrea Big Bang Chronograph King Gold Pave 41mm được thiết kể d&aacute;ng sandwich dưới chất liệu King Gold độc quyền, c&oacute; khả năng chống nước ở độ s&acirc;u 30m.&nbsp;Bộ vỏ khung k&iacute;ch thước 41mm&nbsp;hiện l&ecirc;n với vẻ ngo&agrave;i hấp dẫn v&agrave; bắt mắt với ki&ecirc;n kim.&nbsp;Ph&iacute;a tr&ecirc;n v&agrave;nh bezel c&ocirc;ng phu l&agrave; 6 đinh ốc c&aacute;ch điệu chữ H b&oacute;ng bẩy c&ugrave;ng với&nbsp;114 vi&ecirc;n kim cương nặng +/- 1,22 carat.</span></p>', 34000000, 'uploads/c19ab180ce.png', 0),
(40, ' Đồng hồ LONGINES HYDRO ', 7, 2, '<p>AUTOMATIC - 40MM</p>\r\n<p>Chất liệu: Vỏ th&eacute;p kh&ocirc;ng gỉ</p>\r\n<p>T&iacute;nh năng:&nbsp;<span>Lịch ng&agrave;y. Caliber L888, 25.200vph, trữ c&oacute;t 64h. Mặt số đ&iacute;nh 13 vi&ecirc;n kim cương tổng 0.059 carat.</span></p>\r\n<p><span>Bảo h&agrave;nh: 5 năm</span></p>', 290000000, 'uploads/6a5eb1ff38.png', 0),
(41, 'LONGINES L4.705.2.', 12, 0, '<p><span>Sở hữu d&aacute;ng vẻ khỏe khoắn v&agrave; năng động, bộ vỏ khung Longinrea Big Bang Chronograph King Gold Pave 41mm được thiết kể d&aacute;ng sandwich dưới chất liệu King Gold độc quyền, c&oacute; khả năng chống nước ở độ s&acirc;u 30m.&nbsp;Bộ vỏ khung k&iacute;ch thước 41mm&nbsp;hiện l&ecirc;n với vẻ ngo&agrave;i hấp dẫn v&agrave; bắt mắt với ki&ecirc;n kim.&nbsp;Ph&iacute;a tr&ecirc;n v&agrave;nh bezel c&ocirc;ng phu l&agrave; 6 đinh ốc c&aacute;ch điệu chữ H b&oacute;ng bẩy c&ugrave;ng với&nbsp;114 vi&ecirc;n kim cương nặng +/- 1,22 carat.</span></p>', 450000000, 'uploads/4f3ddc5575.png', 0),
(42, 'LONGINES L4.705.2', 11, 2, '<p><span>Sở hữu d&aacute;ng vẻ khỏe khoắn v&agrave; năng động, bộ vỏ khung Longinrea Big Bang Chronograph King Gold Pave 41mm được thiết kể d&aacute;ng sandwich dưới chất liệu King Gold độc quyền, c&oacute; khả năng chống nước ở độ s&acirc;u 30m.&nbsp;Bộ vỏ khung k&iacute;ch thước 41mm&nbsp;hiện l&ecirc;n với vẻ ngo&agrave;i hấp dẫn v&agrave; bắt mắt với ki&ecirc;n kim.&nbsp;Ph&iacute;a tr&ecirc;n v&agrave;nh bezel c&ocirc;ng phu l&agrave; 6 đinh ốc c&aacute;ch điệu chữ H b&oacute;ng bẩy c&ugrave;ng với&nbsp;114 vi&ecirc;n kim cương nặng +/- 1,22 carat.</span></p>', 4600000000, 'uploads/76ffc081cb.png', 0),
(43, 'CHRONOGRAPH AUTOMATIC ', 11, 3, '<p>Đồng hồ Thụy Sỹ.Sản phẩm nhập khẩu ch&iacute;nh h&atilde;ng.</p>\r\n<p><span>Vận chuyển miễn ph&iacute; to&agrave;n quốc.</span></p>\r\n<p><span>Bảo h&agrave;nh 3 năm tại C&ocirc;ng ty.</span></p>', 10000000000, 'uploads/9b6d7a2f4b.png', 0),
(44, 'CHRONOGRAPH AUTOMATIC BLUE', 11, 3, '<p>Đồng hồ Thụy Sỹ.Sản phẩm nhập khẩu ch&iacute;nh h&atilde;ng.</p>\r\n<p><span>Vận chuyển miễn ph&iacute; to&agrave;n quốc.</span></p>\r\n<p><span>Bảo h&agrave;nh 3 năm tại C&ocirc;ng ty.</span></p>', 458000000, 'uploads/66b5d5c45e.png', 0),
(45, 'MEN\'S AUTOMATIC STAINLESS STEEL BRACELET 40MM', 11, 3, '<p>Đồng hồ Thụy Sỹ.Sản phẩm nhập khẩu ch&iacute;nh h&atilde;ng.</p>\r\n<p><span>Vận chuyển miễn ph&iacute; to&agrave;n quốc.</span></p>\r\n<p><span>Bảo h&agrave;nh 3 năm tại C&ocirc;ng ty.</span></p>', 4569999872, 'uploads/01692d633c.png', 0),
(46, 'AUTOMATIC CHRONOGRAPH SILVER', 7, 3, '<p>Đồng hồ Thụy Sỹ.Sản phẩm nhập khẩu ch&iacute;nh h&atilde;ng.</p>\r\n<p><span>Vận chuyển miễn ph&iacute; to&agrave;n quốc.</span></p>\r\n<p><span>Bảo h&agrave;nh 3 năm tại C&ocirc;ng ty.</span></p>', 140000000, 'uploads/7be97db5ff.png', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_wlist`
--

CREATE TABLE `tbl_wlist` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` float(10,0) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_wlist`
--

INSERT INTO `tbl_wlist` (`id`, `cmrId`, `productId`, `productName`, `price`, `image`) VALUES
(6, 1, 15, 'Laundry machine ', 3200, 'uploads/d712a37947.png'),
(9, 3, 46, 'AUTOMATIC CHRONOGRAPH SILVER', 100000000, 'uploads/7be97db5ff.png'),
(10, 3, 44, 'CHRONOGRAPH AUTOMATIC BLUE', 458000000, 'uploads/66b5d5c45e.png');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Chỉ mục cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- Chỉ mục cho bảng `tbl_wlist`
--
ALTER TABLE `tbl_wlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `tbl_wlist`
--
ALTER TABLE `tbl_wlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
