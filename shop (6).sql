-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2017 at 04:49 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE IF NOT EXISTS `account` (
  `username` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `fullname` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `address` varchar(400) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tel` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `rank` int(11) NOT NULL DEFAULT '0',
  `point` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`username`, `password`, `fullname`, `address`, `tel`, `email`, `rank`, `point`) VALUES
('tiep', 'tiep', 'Bùi Xuân Tiếp', 'Hà Nội', '0123456789', 'xuantiep@gmail.com', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
  `banner1` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `banner2` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `banner3` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `banner4` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `banner5` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `banner6` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `banner7` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner1`, `banner2`, `banner3`, `banner4`, `banner5`, `banner6`, `banner7`) VALUES
('banner1.jpg', 'banner2.jpg', 'banner3.jpg', 'banner4.jpg', 'banner5.jpg', 'banner6.jpg', 'banner7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Đồ ăn'),
(2, 'Thức uống'),
(3, 'Snack'),
(4, 'Vỉa hè'),
(5, 'Voucher');

-- --------------------------------------------------------

--
-- Table structure for table `codesale`
--

CREATE TABLE IF NOT EXISTS `codesale` (
  `code` varchar(7) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `sale` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `codesale`
--

INSERT INTO `codesale` (`code`, `sale`) VALUES
('123456z', 7),
('M45HJE8', 10),
('TTTTTTT', 15);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
`id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tel` varchar(11) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `street` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ward` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `district` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `city` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tel2` varchar(11) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `tel`, `email`, `street`, `ward`, `district`, `city`, `tel2`) VALUES
(1, 'Tiếp Zohar', '0936285651', 'xuantiep2310@gmail.com', 'An Thọ', 'An Khánh', 'Hoài Đức', 'Hà Nội', '');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE IF NOT EXISTS `faq` (
`id` int(11) NOT NULL,
  `question` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `answer` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
`id` int(11) NOT NULL,
  `name` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `content` varchar(400) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `title`, `content`, `date`) VALUES
(1, 'Bùi Xuân Tiếp', 'xuantiep2310@gmail.com', '', 'a', '2017-12-09 17:19:10'),
(2, 'Bùi Xuân Tiếp', 'xuantiep2310@gmail.com', 'Thái độ nhân viên', 'Tuyệt!', '2017-12-09 17:20:21'),
(3, 'Bùi Xuân Tiếp', 'xuantiep2310@gmail.com', 'Thái độ nhân viên', 'Tuyệt vời!', '2017-12-09 17:21:26'),
(4, 'Bùi Xuân Tiếp', 'xuantiep2310@gmail.com', 'Thái độ nhân viên', 'Tuyệt vời!', '2017-12-09 17:22:11');

-- --------------------------------------------------------

--
-- Table structure for table `img_ads`
--

CREATE TABLE IF NOT EXISTS `img_ads` (
`id` int(11) NOT NULL,
  `img1` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `link1` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `img2` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `link2` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `img3` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `link3` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `img_album`
--

CREATE TABLE IF NOT EXISTS `img_album` (
`id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `img1` varchar(400) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `img2` varchar(400) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `img3` varchar(400) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `img4` varchar(400) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `img_album`
--

INSERT INTO `img_album` (`id`, `id_product`, `img1`, `img2`, `img3`, `img4`) VALUES
(1, 1, 'hongtrakemphomai_1.jpg', 'hongtrakemphomai_2.jpg', 'hongtrakemphomai_3.jpg', 'hongtrakemphomai_4.jpg'),
(2, 2, 'tradao_1.jpg', 'tradao_2.jpg', 'tradao_3.jpg', 'tradao_4.jpg'),
(4, 4, 'trasuacaramel_1.jpg', 'trasuacaramel_2.jpg', 'trasuacaramel_3.jpg', 'trasuacaramel_4.jpg'),
(6, 6, 'trasua_1.jpg', 'trasua_2.jpg', 'trasua_3.jpg', 'trasua_4.jpg'),
(7, 7, 'cocdam_1.jpg', 'cocdam_2.jpg', 'cocdam_3.jpg', 'cocdam_4.jpg'),
(8, 8, 'xoailac_1.jpg', 'xoailac_2.jpg', 'xoailac_3.jpg', 'xoailac_4.jpg'),
(9, 9, 'dualac_1.jpg', 'dualac_2.jpg', 'dualac_3.jpg', 'dualac_4.jpg'),
(10, 10, 'mandam_1.jpg', 'mandam_2.jpg', 'mandam_3.jpg', 'mandam_4.jpg'),
(11, 11, 'chumruot_1.jpg', 'chumruot_2.jpg', 'chumruot_3.jpg', 'chumruot_4.jpg'),
(12, 12, 'comhop_1.jpg', 'comhop_2.jpg', 'comhop_3.jpg', 'comhop_4.jpg'),
(13, 13, 'comrangduabo_1.jpg', 'comrangduabo_2.jpg', 'comrangduabo_3.jpg', 'comrangduabo_4.jpg'),
(14, 14, 'comchay_1.jpg', 'comchay_2.jpg', 'comchay_3.jpg', 'comchay_4.jpg'),
(15, 15, 'ankieng_1.jpg', 'ankieng_2.jpg', 'ankieng_3.jpg', 'ankieng_4.jpg'),
(16, 16, 'haohao_1.jpg', 'haohao_2.jpg', 'haohao_3.jpg', 'haohao_4.jpg'),
(17, 17, 'omachi_1.jpg', 'omachi_2.jpg', 'omachi_3.jpg', 'omachi_4.jpg'),
(18, 18, 'kokomi_1.jpg', 'kokomi_2.jpg', '', ''),
(19, 19, 'buncha_1.jpg', 'buncha_2.jpg', 'buncha_3.jpg', ''),
(20, 20, 'mienngan_1.jpg', 'mienngan_2.jpg', 'mienngan_3.jpg', ''),
(21, 21, 'phoga_1.jpg', 'phoga_2.jpg', 'phoga_3.jpg', ''),
(22, 22, 'banhtrang_1.jpg', 'banhtrang_2.jpg', 'banhtrang_3.jpg', ''),
(23, 23, 'nemchua_1.jpg', 'nemchua_2.jpg', 'nemchua_3.jpg', ''),
(24, 24, 'hamburger_1.jpg', 'hamburger_2.jpg', 'hamburger_3.jpg', 'hamburger_4.jpg'),
(25, 25, 'pizza_1.jpg', 'pizza_2.jpg', 'pizza_3.jpg', 'pizza_4.jpg'),
(26, 26, 'caphesuada_1.jpg', 'caphesuada_2.JPG', 'caphesuada_3.jpg', 'caphesuada_4.jpg'),
(27, 27, 'caphetrung_1.jpg', 'caphetrung_2.jpg', 'caphetrung_3.jpg', 'caphetrung_4.jpg'),
(28, 28, 'cocacola_1.jpg', 'cocacola_2.jpg', 'cocacola_3.jpeg', ''),
(29, 29, 'pepsi_1.jpg', 'pepsi_2.jpg', 'pepsi_3.jpg', ''),
(30, 30, 'mirinda_1.jpg', 'mirinda_2.jpg', 'mirinda_3.jpg', ''),
(31, 31, 'sting_1.jpg', 'sting_2.jpg', 'sting_3.jpg', ''),
(32, 32, 'heineken_1.jpg', 'heineken_2.jpg', 'heineken_3.jpg', ''),
(33, 33, 'biasaigon_1.jpg', 'biasaigon_2.jpg', 'biasaigon_3.jpg', ''),
(34, 34, 'biahanoi_1.jpg', 'biahanoi_2.jpg', 'biahanoi_3.jpg', ''),
(35, 35, 'tiger_1.jpg', 'tiger_2.jpg', 'tiger_3.jpg', ''),
(36, 36, 'oishibido_1.jpg', 'oishibido_2.jpg', '', ''),
(37, 37, 'oishicay_1.jpg', 'oishicay_2.jpg', '', ''),
(38, 38, 'oishingo_1.jpg', 'oishingo_2.jpg', '', ''),
(39, 39, 'tunies_1.jpg', 'tunies_2.jpg', 'tunies_3.jpg', 'tunies_4.jpg'),
(40, 40, 'kitkat_1.jpg', 'kitkat_2.jpg', 'kitkat_3.jpg', ''),
(41, 41, 'banhtroi_1.jpg', 'banhtroi_2.jpg', 'banhtroi_3.jpg', ''),
(42, 42, 'banhgoi_1.jpg', 'banhgoi_2.jpg', 'banhgoi_3.jpg', 'banhgoi_4.jpg'),
(43, 43, 'keomut_1.jpg', 'keomut_2.jpg', 'keomut_3.jpg', 'keomut_4.jpg'),
(44, 44, 'bongngonho_1.jpg', 'bongngonho_2.jpg', '', ''),
(45, 45, 'bongngoto_1.jpg', 'bongngoto_2.jpg', '', ''),
(46, 46, 'chuoikho_1.jpg', 'chuoikho_2.jpg', 'chuoikho_3.jpg', ''),
(47, 47, 'nhokho_1.jpg', 'nhokho_2.jpg', 'nhokho_3.jpg', ''),
(48, 48, 'mitkho_1.jpg', 'mitkho_2.jpg', 'mitkho_3.jpg', ''),
(49, 49, 'huongduong_1.jpg', 'huongduong_2.jpg', 'huongduong_3.jpg', ''),
(50, 50, 'bokho_1.jpg', 'bokho_2.jpg', 'bokho_3.jpg', ''),
(51, 51, 'hatdecuoi_1.jpg', 'hatdecuoi_2.jpg', 'hatdecuoi_3.jpg', ''),
(52, 52, 'haisan_1.jpg', 'haisan_2.jpg', 'haisan_3.jpg', 'haisan_4.jpg'),
(53, 53, 'launuong_1.jpg', 'launuong_2.jpg', 'launuong_3.jpg', ''),
(54, 54, 'comnieu_1.jpg', 'comnieu_2.jpg', 'comnieu_3.jpg', 'comnieu_4.jpg'),
(55, 55, 'kfc_1.jpg', 'kfc_2.jpg', 'kfc_3.jpg', ''),
(56, 56, 'tocotoco_1.jpg', 'tocotoco_2.jpg', 'tocotoco_3.jpg', 'tocotoco_4.jpg'),
(57, 57, 'highland_1.jpg', 'highland_2.jpg', 'highland_3.jpg', 'highland_4.jpg'),
(58, 58, 'trangtien_1.jpg', 'trangtien_2.jpg', 'trangtien_3.jpg', ''),
(59, 59, 'celano_1.jpg', 'celano_2.jpg', 'celano_3.jpg', ''),
(60, 60, 'merino_1.jpg', 'merino_2.jpg', 'merino_3.jpg', ''),
(61, 61, 'capuchinodaxoay_1.JPG\r\n', 'capuchinodaxoay_2.JPG\r\n', 'capuchinodaxoay_3.JPG\r\n', 'capuchinodaxoay_4.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
`idnews` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `lead` varchar(400) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `img` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
`idorder` int(11) NOT NULL,
  `dateorder` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `username` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `sender` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `telsender` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `reciever` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `telreciever` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `addressreciever` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `totalprice` int(11) NOT NULL,
  `codesale` varchar(7) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `datedelivery` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`idorder`, `dateorder`, `username`, `sender`, `telsender`, `reciever`, `telreciever`, `addressreciever`, `totalprice`, `codesale`, `status`, `datedelivery`) VALUES
(1, '2017-12-22 00:17:29', 'tiep', 'Bùi Xuân Tiếp', '0936285651', 'Bùi Xuân Thắng', '01235456638', 'An Thọ, An khánh, Hoài Đức, Hà nội', 55555, 'TTTTTTT', 1, '0000-00-00 00:00:00'),
(2, '2017-12-22 00:18:44', 'tiep', 'Bùi Xuân Tiếp', '0936285651', 'Bùi Xuân Thắng', '01235456638', 'An Thọ, An khánh, Hoài Đức, Hà nội', 55555, '', 2, '0000-00-00 00:00:00'),
(3, '2017-12-22 00:19:09', 'admin', 'Bùi Xuân Tiếp', '0936285651', 'Bùi Xuân Thắng', '01235456638', 'hà nội', 12312312, 'M45HJE8', 3, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE IF NOT EXISTS `orderdetails` (
`id` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `sale_product` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`id`, `id_order`, `id_product`, `sale_product`, `price`, `quantity`) VALUES
(1, 1, 23, 5, 35000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
`id` int(11) NOT NULL,
  `name` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `id_subcategory` int(11) NOT NULL,
  `detail` varchar(1000) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tip` varchar(1000) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `size` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `price` int(11) NOT NULL,
  `origin` varchar(1000) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `sale` int(11) NOT NULL DEFAULT '0',
  `hot` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `id_subcategory`, `detail`, `description`, `tip`, `size`, `price`, `origin`, `sale`, `hot`, `status`) VALUES
(1, 'Hồng trà kem phô mai', 8, 'vị hồng trà kết hợp với sữa ngon tuyệt cú mèo.', 'một trong những thức uống đang làm điêu đứng giới trẻ.', 'làm gì cũng phải có anh em, ngay cả việc uống trà sữa cũng vậy.', 'L', 35000, '', 0, 0, 0),
(2, 'Trà đào', 8, 'trà + dào = trà đào', 'ngon, bổ dưỡng, đẹp da.', 'nhâm nhi một ly trà đào nhìn dòng người tấp lập nơi thị thành thật an nhiên.', 'L', 29000, '', 15, 0, 0),
(4, 'Trà sữa caramel', 8, 'hương vị caramel quyến rũ.', 'ngon khó tả đến từng giọt cuối cùng.', 'nếu bạn là một tín đồ của trà sữa chắc chắn không thể bỏ qua siêu phẩm này.', 'L', 35000, '', 0, 0, 0),
(6, 'Trà sữa', 8, 'Trà sữa cốt nè', 'dễ uống, thơm', 'lỡ yêu rồi thì khó mà chia tay', 'M', 29000, '', 0, 0, 0),
(7, 'Cóc Bao Tử Dầm Chua Ngọt', 13, 'Cóc, muối, đường, ớt', 'cực ngon, ngon cực', 'em có thể ngừng khóc nhưng nước dãi thì không thể ngừng chảy với món cóc dầm này', '1 hộp', 65000, '', 0, 0, 0),
(8, 'Xoài bay lắc', 13, 'Xoài, muối ớt, bò khô,..', 'nhìn thấy là thèm', 'yêu từ cái nhìn đầu tiên', '1 hộp', 70000, '', 0, 0, 0),
(9, 'Dứa lắc muối ớt', 13, 'Dứa, muối ớt, bò khô', 'lạ mồm lạ miệng nhưng vẫn ngon', 'chán cơm thì ăn phở, chán xoài thì ăn... dứa', '1 hộp', 55000, '', 0, 0, 0),
(10, 'Mận dầm chua ngọt', 13, 'mận, đường, muối ớt', 'làm điêu đứng hàng nghìn chị em', 'thuộc team nước dãi, nhìn là ứa ra rồi', '1 hộp', 60000, '', 0, 0, 0),
(11, 'Chùm ruột muối ớt', 13, 'chùm ruột, muối, đường, ớt bột', 'dễ làm, dễ ăn, dễ yêu', 'từ "ngon" chưa diễn tả hêt được món này', '1 hộp', 65000, '', 0, 0, 0),
(12, 'Cơm hộp bình dân', 1, 'cơm, 3 món thịt, 2 món rau, nước chấm, canh', 'bình dân, hợp với túi tiền của mọi người', 'đảm bảo vệ sinh, đủ chất dinh dưỡng nhất', '1 hộp', 35000, '', 0, 0, 0),
(13, 'Cơm rang dưa bò', 1, 'cơm rang, dưa, thịt bò, dưa chuột', 'đánh bay mọi cơn đói', 'an toàn vệ sinh thực phẩm lên hàng đầu', '1 hộp', 35000, '', 0, 0, 0),
(14, 'Cơm chay', 2, 'cơm, rau, đậu hũ và các món chạy khác', 'tạo cảm giác ngon miệng, đủ màu sắc, dinh dưỡng', 'cơm chay dành cho mọi người', '1 hộp', 30000, '', 0, 0, 0),
(15, 'Cơm dành cho người ăn kiêng', 2, 'cơm, thịt, rau, hoa quả, canh', 'đủ chất, không quá thừa protein,vóc dáng của bạn sẽ được giữ nguyên ', 'ăn kiêng để có dáng đẹp, dáng xinh nhiều người mê, người thích nào', '1 hộp', 45000, '', 5, 0, 0),
(16, 'Mỳ tôm Hảo Hảo', 3, 'mỳ tôm Hảo Hảo', 'chua cay này anh em', 'món ăn quốc dân luôn nhé', '1 gói', 4000, '', 0, 0, 0),
(17, 'Mỳ tôm Omachi', 3, 'sợi mỳ bằng khoai tây không lo nóng', 'ngon ngon ngon', 'fan omachi đâu hết rồi ạ', '1 gói', 5000, '', 0, 0, 0),
(18, 'Mỳ tôm Kokomi', 3, 'mỳ tôm kokomi', 'sang chảnh quá đi', 'cùng tận hưởng vị thơm ngon của kokomi nào', '1 gói', 3500, '', 0, 0, 0),
(19, 'Bún chả', 5, 'bún, chả thịt, nước dùng', 'món ăn của dân tộc', 'ngon đến giọt nước dùng cuối cùng', '1 suất', 25000, '', 0, 0, 0),
(20, 'Miến ngan', 5, 'miến, thịt ngan', 'ngon, ngọt nước', 'nếu bạn chưa ăn món nào thì đó là một thiếu xót rất lớn', '1 suất', 35000, '', 0, 0, 0),
(21, 'Phở gà', 5, 'Phở, thịt gà', 'Mang thương hiệu của mảnh đất hình chữ S ', 'Chưa ăn thì chưa phải là người Việt Nam', '1 suất', 30000, '', 5, 0, 0),
(22, 'Bánh tráng trộn', 5, 'bánh tráng + rau củ quả', 'ngon mê niiiii', 'ăn một lần muốn có lần 2', '1 suất', 15000, '', 0, 0, 0),
(23, 'Nem chua ', 5, 'nem chua 1 vỉ 10 cái', 'cực kì ngon', 'ngon hết ý', '10 cái', 30000, '', 0, 0, 0),
(24, 'Humburger', 4, 'hamburger', 'zum zum ', 'ngon miệng nào', '1 cái', 70000, '', 0, 0, 0),
(25, 'Pizza', 4, 'pizza', 'ngon kinh khủng', 'mang cả nước Ý đến với bạn', '1 cái', 100000, '', 0, 0, 0),
(26, 'Cà phê sữa đá', 6, 'cà phê, sữa, đá', 'ngọt lành mỗi buổi sáng', 'đánh thức mọi giác quan', 'L', 20000, '', 0, 0, 0),
(27, 'Cà phê trứng', 6, 'cà phê, trứng', 'ngon vị trứng đẫm mùi cà phê', 'phê như cà phê trứng', 'L', 20000, '', 0, 0, 0),
(28, 'Cocacola', 7, 'cocacola', 'nước giải khát cocacola', 'giải khát nào', '1 chai', 15000, '', 0, 0, 0),
(29, 'Pepsi', 7, 'Pepsi', 'nước giải khát Pepsi', 'giải khát nào', '1 chai', 15000, '', 0, 0, 0),
(30, 'Mirinda ', 7, 'vị cam', 'giải khát cùng Mirinda', 'ú òa', '1 chai', 15000, '', 0, 0, 0),
(31, 'Sting', 7, 'Sting nước tăng lực', 'nước tăng lực', 'cân hết thế giới', '1 chai', 15000, '', 0, 0, 0),
(32, 'Bia Heneiken', 9, 'bia', 'bia chất lượng', 'nhậu là phải có bia', '1 lon', 15000, '', 0, 0, 0),
(33, 'Bia Sài Gòn', 9, 'bia', 'hàng Việt', 'bia ngon', '1 lon', 15000, '', 0, 0, 0),
(34, 'Bia Hà Nội', 9, 'bia', 'nhậu là phải có bia', 'bia chất', '1 lon', 15000, '', 0, 0, 0),
(35, 'Bia Tiger', 9, 'bia', 'uống cùng anh em', 'thấm tình huynh đệ', '1 lon', 15000, '', 0, 0, 0),
(36, 'Oishi Bí đỏ', 10, 'bí đỏ', 'bim bim bí đỏ', 'bim bim snack bí đỏ', '1 gói', 7000, '', 0, 0, 0),
(37, 'Oshi Cay', 10, 'bim bim cay', 'bim bim cay', 'cay vị ớt', '1 gói', 7000, '', 0, 0, 0),
(38, 'Oishi Bắp', 10, 'ngô', 'bim bim ngô', 'bim bim ngô', '1 gói', 7000, '', 0, 0, 0),
(39, 'Tunies', 10, 'bim bim Tunies', 'bim bim Tunies cực ngon', 'bim bim Tunies cực mê', '1 gói', 7000, '', 0, 0, 0),
(40, 'Kitkat', 11, 'socola ', 'Kitkat socola ', 'socola Kitkat', '1 gói', 30000, '', 5, 0, 0),
(41, 'Bánh Trôi nước nhân mật ong', 11, 'bánh trôi', 'món ăn cổ truyền', 'bánh trôi nước cực ngon', '1 đĩa', 20000, '', 0, 0, 0),
(42, 'Bánh gối', 11, 'Bánh gối', 'giống chiếc gối', 'cực ngon', '1 đĩa', 15000, '', 0, 0, 0),
(43, 'Kẹo mút tròn', 11, 'kẹo mút', 'cute phô mai que', 'đáng yêu hết cỡ', '1 cái', 5000, '', 0, 0, 0),
(44, 'Bỏng ngô size nhỏ', 12, 'bỏ ngô', 'size nhỏ', 'dành cho một người', '1 bịch', 15000, '', 0, 0, 0),
(45, 'Bỏng ngô size to', 12, 'bỏng ngô', 'size to', 'dành cho hai người', '1 bịch', 20000, '', 5, 0, 0),
(46, 'Chuối sấy khô', 14, 'chuối sấy khô', 'giòn giòn', 'ngon ngon', '1 gói', 15000, '', 0, 0, 0),
(47, 'Nho sấy khô', 14, 'nho sấy khô', 'ngọt ngọt ', 'thơm thơm', '1 gói', 17000, '', 0, 0, 0),
(48, 'Mít sấy khô', 14, 'mít sấy khô', 'thơm thơm', 'ngon ngon', '1 gói', 25000, '', 0, 0, 0),
(49, 'Hạt Hướng dương', 14, 'hạt hướng dương', 'Hậu duệ mặt trời', 'Cắn mỏi răng', '1 gói', 13000, '', 0, 0, 0),
(50, 'Thịt Bò khô', 14, 'Thịt bò', 'ngon ngon', 'cay cay', '1 gói', 5000, '', 0, 0, 0),
(51, 'Hạt dẻ cười', 14, 'hạt dẻ', 'Hạt dẻ cười', 'ngon hết ý', '1 gói', 25000, '', 0, 0, 0),
(52, 'Giảm 15% buffet hải sản', 16, 'giảm 15%', 'Nhà hàng Biển Đông', 'rẻ là tới bến', '1 cái', 350000, '', 10, 0, 0),
(53, 'Giảm 10% lẩu nướng', 16, 'giảm 10%', 'Nhà hàng Lã Vọng', 'rẻ tới liền', '1 cái', 110000, '', 7, 0, 0),
(54, 'Giảm 20% Cơm niêu', 16, 'giảm 20%', 'Nhà hàng Hoài Niệm', 'nhanh tay kẻo hết', '1 cái', 88000, '', 0, 0, 1),
(55, 'Giảm 15% KFC', 16, 'giảm 15%', 'mọi cửa hàng của KFC', 'nhanh tay nào', '1 cái', 65000, '', 0, 0, 0),
(56, 'Giảm 15% Tocotoco ', 17, 'giảm 15% tất cả các đồ uống', 'mọi cửa hàng Tocotoco ', 'fan trà sữa đâu hết rồi nhỉ', '1 cái', 30000, '', 0, 0, 0),
(57, 'Giảm 20% HighLand Coffee', 17, 'Giảm 20% tất cả đồ uống, free bánh ', 'mọi cửa hàng HighLand Coffee trên toàn quốc', 'giảm giá mạnh luôn này bà con ơi', '1 cái', 45000, '', 0, 0, 0),
(58, 'Kem Tràng Tiền', 15, 'kem', 'kem', 'kem', '1 cái', 5000, '', 0, 0, 0),
(59, 'Kem Celano', 15, 'kem ', 'kem', 'kem', '1 cái', 10000, '', 0, 0, 0),
(60, 'Kem Merino', 15, 'kem', 'kem', 'kem', '1 cái', 5000, '', 0, 0, 0),
(61, 'Capuchino đá xay', 8, 'capuchinoooooo', 'siêu phẩm trà sữa', 'đã lỡ yêu em rồi thì anh bất chấp luôn, ngon cực.', 'M', 40000, 'TocoToco - Vincom Phạm Ngọc Thạch', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
`id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `name` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `id_category`, `name`, `description`) VALUES
(1, 1, 'Cơm hộp', 'Cơm hộp bình dân nhưng đầy đủ chất, đảm bảo tuyệt đối an toàn vệ sinh thực phẩm.'),
(2, 1, 'Đồ chay', 'Dành cho những người ăn chay, ăn kiêng, hít khí trời cũng béo.'),
(3, 1, 'Mỳ tôm', 'Món ăn bình dân nhưng cực kỳ ngon.'),
(4, 1, 'Pizza - Hamburger', 'Pizza-Hamburger cùng tận hưởng, cùng thưởng thức hương vị của chúng nào.'),
(5, 1, 'Khác', 'Tổng hợp những thứ ngon nhất, an toàn nhất.'),
(6, 2, 'Cà phê', 'Cà phê cho buổi sáng, buổi trưa, buổi tối,....'),
(7, 2, 'Nước ngọt', 'Nước ngọt thì ai cũng thích rồi.'),
(8, 2, 'Trà sữa', 'Muốn hiểu con gái thì hãy hiểu được vị của tất cả các loại trà sữa.'),
(9, 2, 'Bia\r\n', 'Hôm nay là thứ 6, xõa nào, nhưng cũng không được say quá..'),
(10, 3, 'Bim Bim', 'Dành cho những người tâm hồn trẻ con.'),
(11, 3, 'Bánh kẹo', 'Nhiều loại bánh ngon sẽ được cập nhật lên.'),
(12, 3, 'Bỏng ngô', 'Bỏng ngô để cày phim nào.'),
(13, 4, 'Hoa quả ', 'Hoa quả dầm, Hoa quả lắc, Hoa quả tươi,....'),
(14, 4, 'Đồ khô', 'Các loại đồ sấy khô, phơi khô,...'),
(15, 4, 'Kem', 'Các loại kem nổi tiếng nhất sẽ được cập nhật liên tục.'),
(16, 5, 'Đồ ăn', 'Voucher đồ ăn'),
(17, 5, 'Thức uống', 'Voucher đồ uống');

-- --------------------------------------------------------

--
-- Table structure for table `subcribe`
--

CREATE TABLE IF NOT EXISTS `subcribe` (
`id` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `subcribe`
--

INSERT INTO `subcribe` (`id`, `email`) VALUES
(1, 'xuantiep2310@gmail.com'),
(4, 'a@gmail.com'),
(8, 'b@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
 ADD PRIMARY KEY (`username`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `codesale`
--
ALTER TABLE `codesale`
 ADD PRIMARY KEY (`code`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `img_ads`
--
ALTER TABLE `img_ads`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `img_album`
--
ALTER TABLE `img_album`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
 ADD PRIMARY KEY (`idnews`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
 ADD PRIMARY KEY (`idorder`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcribe`
--
ALTER TABLE `subcribe`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `img_ads`
--
ALTER TABLE `img_ads`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `img_album`
--
ALTER TABLE `img_album`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
MODIFY `idnews` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
MODIFY `idorder` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `subcribe`
--
ALTER TABLE `subcribe`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
