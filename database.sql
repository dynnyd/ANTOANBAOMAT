-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 05, 2025 at 11:18 AM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `bigdeal_service`
--

DROP TABLE IF EXISTS `bigdeal_service`;
CREATE TABLE IF NOT EXISTS `bigdeal_service` (
  `id` int NOT NULL AUTO_INCREMENT,
  `food_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `booking_date` datetime DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `total_price` int DEFAULT NULL,
  `status` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `birthday_service`
--

DROP TABLE IF EXISTS `birthday_service`;
CREATE TABLE IF NOT EXISTS `birthday_service` (
  `id` int NOT NULL,
  `food_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name_order_party` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `booking_date` datetime DEFAULT NULL,
  `gender` varchar(3) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `total_price` int DEFAULT NULL,
  `status` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `cart_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `food_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`, `food_id`, `quantity`) VALUES
(0, 4, 19, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `cate_id` int NOT NULL,
  `cate_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cate_id`, `cate_name`) VALUES
(1, 'Gà rán'),
(2, 'Burger'),
(3, 'Combo tiết kiệm'),
(4, 'Đồ ăn kèm'),
(5, 'Tráng miệng');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ResName` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `ResPhoneNumber` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `ResAddress` text COLLATE utf8mb4_general_ci NOT NULL,
  `ResEmail` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `ResName`, `ResPhoneNumber`, `ResAddress`, `ResEmail`) VALUES
(1, 'Nhà hàng GourMéz', '0123456789', '47 Quang Trung, Phường 9, Đà Lạt, Lâm Đồng', 'gourmez@example.com'),
(2, 'Nhà hàng GourMéz', '0123456789', '47 Quang Trung, Phường 9, Đà Lạt, Lâm Đồng', 'gourmez@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
CREATE TABLE IF NOT EXISTS `discount` (
  `discount_id` int NOT NULL,
  `name_discount` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `qtt_of_dis` int DEFAULT NULL,
  PRIMARY KEY (`discount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount_news`
--

DROP TABLE IF EXISTS `discount_news`;
CREATE TABLE IF NOT EXISTS `discount_news` (
  `id` int NOT NULL AUTO_INCREMENT,
  `discount_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `img` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `discount_news`
--

INSERT INTO `discount_news` (`id`, `discount_name`, `description`, `img`) VALUES
(1, 'GIẢM 15% CHO BURGER BÒ', '<p><strong>Từ ngày 19 tháng 5 năm 2024, cửa hàng GOURMEZ đang có chương trình khuyến mãi đặc biệt dành cho món burger bò. Khách hàng sẽ được hưởng giảm giá 15% khi mua burger bò tại cửa hàng.&nbsp;</strong></p><p>Món burger bò tại GOURMEZ được chế biến từ thịt bò tươi ngon, được gia vị và nấu nướng cẩn thận để mang đến hương vị thơm ngon và độ tươi ngọt của thịt. Burger được phục vụ kèm các loại rau, phô mai và các phụ gia khác để tạo nên một món ăn hoàn chỉnh và cân bằng. Với mức giảm giá 15%, khách hàng có thể thưởng thức trọn vẹn hương vị burger bò chất lượng cao tại GOURMEZ với mức giá hấp dẫn hơn. Đây là cơ hội tuyệt vời để thưởng thức món ăn yêu thích với giá ưu đãi.&nbsp;</p><p>Chương trình khuyến mãi này áp dụng cho các ngày trong tuần và không áp dụng đồng thời với các chương trình khuyến mãi khác. Vì số lượng có hạn, khách hàng nên đến sớm để đảm bảo có cơ hội thưởng thức món ăn này với giá khuyến mãi.</p>', 'ql_khuyenmai/uploads/burgertom.png'),
(2, 'TẶNG SALAD RAU CỦ CHO HÓA ĐƠN TRÊN 99K', ' Khi quý khách mua bất kỳ combo ăn nào với tổng giá trị 99.000 đồng trở lên, bạn sẽ được tặng ngay 1 salad rau củ miễn phí.\r\n\r\nSalad rau củ được chế biến từ các loại rau tươi, sạch, giàu vitamin và khoáng chất. Món salad này sẽ giúp bữa ăn của quý khách thêm phần cân bằng dinh dưỡng và tăng cường sức khỏe. Với hương vị thanh mát, salad rau củ sẽ là sự kết hợp hoàn hảo cùng các món chính trong combo.\r\n\r\nChương trình khuyến mãi này áp dụng cho cả khách hàng đến trực tiếp tại cửa hàng và khách hàng đặt món ăn để mang về. Chỉ cần thanh toán đơn hàng từ 99.000 đồng trở lên, quý khách sẽ được tặng ngay 1 salad rau củ miễn phí.\r\n\r\nĐừng bỏ lỡ cơ hội thưởng thức bữa ăn ngon miệng cùng món salad bổ dưỡng với mức giá ưu đãi này. Hãy đến ngay cửa hàng hoặc đặt hàng online để nhận ưu đãi hấp dẫn!', 'ql_khuyenmai/uploads/Giảm giá (7).png'),
(3, 'GÀ GIÒN TẶNG KÈM COMBO HẠNH PHÚC', '<p>Từ ngày <strong>19/5 - 31/5/2024</strong>, khi quý khách mua bất kỳ combo \"Hạnh Phúc\" nào tại cửa hàng hoặc đặt hàng giao tận nơi, sẽ được tặng kèm 1 miếng gà giòn hoàn toàn miễn phí.</p><p>&nbsp;Combo \"Hạnh Phúc\" bao gồm các món ăn đặc trưng của chúng tôi như burger, khoai tây chiên và nước uống. Đây là sự kết hợp hoàn hảo để tạo nên một bữa ăn đầy đủ dinh dưỡng và hấp dẫn về hương vị. Món gà giòn tặng kèm được chế biến từ thịt gà tươi ngon, được ướp gia vị và chiên giòn giòn. Kết hợp cùng combo \"Hạnh Phúc\", món gà giòn sẽ là sự bổ sung hoàn hảo, mang đến cho quý khách một bữa ăn đầy đủ dinh dưỡng và hương vị tuyệt vời. Chương trình khuyến mãi này áp dụng cho cả khách hàng đến trực tiếp tại cửa hàng và khách hàng đặt món ăn để giao tận nơi. Chỉ cần thanh toán combo \"Hạnh Phúc\", quý khách sẽ được tặng ngay 1 miếng gà giòn miễn phí.&nbsp;</p><p>Đừng bỏ lỡ cơ hội thưởng thức bữa ăn ngon miệng cùng món gà giòn bổ dưỡng với mức giá ưu đãi này. Hãy đến ngay cửa hàng hoặc đặt hàng online ', 'ql_khuyenmai/uploads/Giảm giá (8).png'),
(4, 'GIẢM 40% KHI MUA 5 MIẾNG GÀ SỐT MẮM TỎI', '<p>Từ ngày 1/6, cửa hàng đang áp dụng chương trình khuyến mãi hấp dẫn cho sản phẩm Miếng gà sốt mắm tỏi. Với mức giảm giá lên tới 40%, khách hàng sẽ được hưởng ưu đãi khi mua tối thiểu 5 miếng gà cùng với đi NHÓM 4 người trở lên. Cụ thể, khi mua 5 miếng gà sốt mắm tỏi, khách hàng sẽ được giảm 40% trên tổng giá trị đơn hàng. Ưu đãi này không thể kết hợp với các chương trình khuyến mãi khác đang diễn ra tại cửa hàng. Chương trình ưu đãi này có thời gian áp dụng từ ngày 1/6, tuy nhiên thời điểm kết thúc chưa được xác định. Khách hàng vui lòng liên hệ trực tiếp với cửa hàng để nắm bắt thông tin chi tiết và điều kiện áp dụng của chương trình khuyến mãi này.</p>', 'ql_khuyenmai/uploads/Giảm giá (10).png'),
(5, 'NHẬN DEAL SỐC TRI ÂN CHO KHÁCH HÀNG', '<p>Bạn hãy đến chi nhánh Gourmez nào đó bất kỳ gần bạn để được giảm ngay 30% trên tổng hóa đơn ( Dành cho nhóm bạn 4 người trở lên ).&nbsp;</p><p>Lưu ý chỉ áp dụng tại cửa hàng và để được áp dụng thì bạn cần đọc mã code “KM30” để nhân viên có thể áp dụng khuyến mãi nhé</p>', 'ql_khuyenmai/uploads/Giảm giá (11).png');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
CREATE TABLE IF NOT EXISTS `food` (
  `food_id` int NOT NULL,
  `cate_id` int DEFAULT NULL,
  `food_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `original_price` int DEFAULT NULL,
  `selling_price` int DEFAULT NULL,
  `small_descr` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `trending` int DEFAULT NULL,
  `img` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`food_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`food_id`, `cate_id`, `food_name`, `original_price`, `selling_price`, `small_descr`, `trending`, `img`, `created_at`) VALUES
(0, 5, 'Trà sữa', 30000, 25000, '<p>Sự kết hợp hoàn hảo của sữa và trà làm tăng hương vị thức uống</p>', NULL, '1717247340_7.png', '2025-04-05 05:52:39'),
(1, 1, 'Gà sốt 8 vị cay', 119000, 119000, 'Gà sốt 8 vị cay “đốn tym” bạn bởi hương vị cay có 1-0-2, đó chính là nước sốt đặc biệt với sự hoà quyện của 8 loại ớt, tiêu lừng danh trên thế giới sánh quyện trên từng miếng gà giòn tươi.', NULL, '1717656833_1716792114_spicy chicken!.png', '2025-04-05 05:53:05'),
(2, 1, 'Miếng gà giòn', 35000, 35000, 'Gà tươi được chiên giòn vàng, bên trong thịt mềm mại và ngọt ngào, tạo nên một trải nghiệm ẩm thực đậm đà và hấp dẫn.\r\n', NULL, '1717656813_gagion.png', '2025-04-05 05:57:54'),
(3, 1, 'Cơm gà giòn', 45000, 45000, 'Cơm gà giòn là một sự kết hợp hoàn hảo giữa cơm trắng thơm ngon và miếng gà giòn rụm, tạo nên một trải nghiệm ẩm thực độc đáo và hấp dẫn.\r\n', NULL, '1716791062_cơm gà.png', '2025-04-05 05:59:01'),
(4, 3, 'Combo 5 miếng gà ', 85000, 79000, 'Combo bao gồm 5 miếng gà không xương ăn kèm sốt mayonnaise và sốt tương ớt chua ngọt', NULL, '1716793697_gakhongxuong.png', '2025-04-05 05:40:11'),
(5, 3, 'Combo B', 220000, 220000, 'Combo bao gồm: 2 Miếng gà sốt bơ tỏi và thảo mộc, 2 Miếng gà có xương (lựa chọn vị cay/ không cay), 1 Món ăn kèm cỡ vừa tùy chọn (Bắp cải trộn/ Khoai tây nghiền/ Khoai tây chiên),2 Nước ngọt.\n\n', NULL, '1716794525_combotietkiem.png', '2025-04-05 05:36:14'),
(6, 3, 'Combo tiết kiệm', 65000, 65000, 'Combo bao gồm: 1 Bánh cuộn gà giòn không xương (lựa chọn vị cay/ không cay), 1 Khoai tây nghiền tiêu chuẩn, 1 Nước ngọt, 1 Tương ớt + 1 Tương cà.\r\n', NULL, '1717230445_combotietkiem (2).png', '2025-04-05 05:37:04'),
(7, 3, 'Combo hạnh phúc', 100000, 100000, 'Combo bao gồm 2 miếng gà giòn + 1 ly pepsi vừa + 1 phần khoai tây vừa + 1 bánh su kem.\r\n', NULL, '1717230633_combohanhphuc.png', '2025-04-05 05:37:29'),
(8, 5, 'Cacao', 15000, 78000, 'Sự kết hợp thơm ngon giữa sữa và cacao', NULL, '1716797918_CACAO.png', '2025-04-05 06:01:10'),
(9, 2, 'Burger Tex Supreme', 59000, 59000, 'Burger Tex Supreme ( lựa chọn vị cay/ không cay),1 Tương ớt + 1 Tương cà', NULL, '1716777930_burgertx.png', '2025-04-05 05:32:50'),
(10, 2, 'Burger gà chiên giòn', 45000, 45000, 'Burger với nhân gà chiên giòn rụm, ăn cùng salad, cà chua, đẫm sốt mayonnaise.\r\n', NULL, '1716777207_burgerga.png', '2025-04-05 05:33:51'),
(11, 2, 'Burger tôm', 40000, 40000, 'Tôm tươi và giòn được chất lượng bọc trong chiếc bánh mì mềm mại, tạo nên một trải nghiệm ẩm thực đơn giản nhưng hấp dẫn.', NULL, '1716777715_burger tôm.png', '2025-04-05 05:31:40'),
(12, 2, 'Burger bò', 45000, 45000, 'Một chiếc burger bò được tạo nên từ các thành phần chính như bánh mì burger, thịt bò xay, rau sống và các loại gia vị, tạo nên một hòa quyện hương vị độc đáo.', NULL, '1716771813_Burger bò.png', '2025-04-05 05:28:33'),
(13, 4, 'Mỳ ý sốt bò bằm', 45000, 45000, 'Mì ý sốt bò bằm thơm lừng được phủ bởi phô mai mozzarella.\r\n', NULL, '1717230821_myy.png', '2025-04-05 05:38:22'),
(14, 4, 'Khoai tây chiên Cajun', 35000, 29000, 'Khoai tây chiên giòn ăn cùng với gia vị Cajun thơm lừng.\r\n\r\n', NULL, '1716776885_khoaitaychien.png', '2025-04-05 05:41:48'),
(15, 4, 'Hotdog YumYum', 35000, 35000, 'Một thanh hotdog nóng hổi, bên trong có xúc xích thơm phức và mềm mại, được bọc trong lớp bánh mì mềm và mịn, cùng với các loại gia vị và sốt đặc trưng, tạo nên một trải nghiệm ẩm thực đơn giản nhưng vô cùng ngon miệng.\r\n', NULL, '1716778545_hotdog.png', '2025-04-05 05:42:14'),
(16, 4, 'Khoai tây lắc BBQ', 25000, 25000, 'Món ăn là sự kết hợp hoàn hảo giữa lớp vỏ giòn giòn của khoai tây, được thấm đầy vị BBQ đậm đà và hấp dẫn. Mỗi miếng khoai tây khiến bạn cảm nhận được sự hòa quyện giữa vị ngọt, cay và hương thơm của gia vị BBQ, tạo nên một trải nghiệm ăn vặt độc đáo và t', NULL, '1716779030_khoaitaylac.png', '2025-04-05 05:42:39'),
(17, 4, 'Bánh xoài đào', 10000, 10000, 'Bánh được làm từ mousse xoài và đào, được bao bọc trong lớp bánh mousse nhẹ và mịn. Khi ăn sẽ cho cảm giác chua ngọt đầy hấp dẫn và thơm ngon.\r\n', NULL, '1716796807_bãnhoaidao.png', '2025-04-05 05:43:20'),
(18, 4, 'Bánh tart trứng', 17000, 17000, 'Vỏ bánh tartlà một  lớp bánh mì ngọt, giòn mỏng và có cấu trúc hạt như vỏ bánh quy. Vỏ bánh này thường được làm từ bột mỳ, bơ, đường và một chút muối, tạo nên một hỗn hợp mềm mịn. ', NULL, '1716796997_banhtart.png', '2025-04-05 05:43:34'),
(19, 4, 'Salad rau củ', 37000, 37000, 'Món ăn bao gồm rau xà lách, dưa leo, cà chia, hành tím,ớt chuông, sốt mè rang, sốt mayonnaise.', NULL, '1716797183_salad.png', '2025-04-05 05:43:45'),
(20, 5, 'Kem Matcha', 10000, 10000, 'Sản phẩm có hương vị thơm ngon và giàu dinh dưỡng với sự hòa quyện của sữa và matcha', NULL, '1717246655_2.png', '2025-04-05 05:47:34'),
(21, 5, 'Kem Dâu', 10000, 10000, 'Sản phẩm có hương vị thơm ngon và giàu dinh dưỡng với sự hòa quyện của sữa và dâu tươi', NULL, '1717246725_3.png', '2025-04-05 05:48:17'),
(22, 1, 'Gà mắm tỏi', 35000, 35000, '<ul><li>Món gà mắm tỏi là sự kết hợp tinh tế giữa vị ngọt, thơm của gà và hương vị đậm đà của mắm tỏi.&nbsp;</li><li>Mắm tỏi, với hương vị đặc trưng của tỏi và hòa quyện với vị ngọt tự nhiên của gà, tạo ra một hòa quyện vị giác đặc biệt.</li></ul>', NULL, '1717230707_gamamtoi.png', '2025-04-05 05:45:44');

-- --------------------------------------------------------

--
-- Table structure for table `food_for_service`
--

DROP TABLE IF EXISTS `food_for_service`;
CREATE TABLE IF NOT EXISTS `food_for_service` (
  `ID_food` int NOT NULL,
  `ID_service` int NOT NULL,
  `food_combo` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `price` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_for_service`
--

INSERT INTO `food_for_service` (`ID_food`, `ID_service`, `food_combo`, `price`, `image`) VALUES
(1, 1, 'Combo A', 100000, '1717231125_combo1.png'),
(2, 1, 'Combo B', 150000, '1715313455_combo2.png'),
(3, 1, 'Combo C', 70000, '1715313471_combo3.png'),
(4, 2, 'Gà mắm tỏi', 25000, '1715313504_Gà mắm tỏi.png'),
(5, 2, 'Burger Tôm', 25000, '1715313534_Burgertom.png'),
(6, 2, 'Gà ngon', 15000, '1715787544_Combo 5 miếng gà không xương.7.webp'),
(7, 0, 'hdadhias', 900000, '1717604752_anhQMK.png');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `staff_id` int DEFAULT NULL,
  `shipper_id` int DEFAULT NULL,
  `discount_id` int DEFAULT NULL,
  `name_cus` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_order` datetime DEFAULT NULL,
  `status` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `payment_mode` int DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `origin_total_price` int DEFAULT NULL,
  `discount_total_price` int DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
CREATE TABLE IF NOT EXISTS `order_item` (
  `id` int NOT NULL,
  `food_id` int DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
CREATE TABLE IF NOT EXISTS `service` (
  `id_service` int NOT NULL,
  `service_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `small_descript` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `banner` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id_service`, `service_name`, `small_descript`, `image`, `banner`) VALUES
(1, 'bán cá', ' Bạn đang phân vân không biết tổ chức sinh nhật như thế nào? Chuyện gì khó có Gourméz lo, Gourméz sẽ mang lại trải nghiệm tuyệt vời, thú vị, đáng nhớ dành cho bạn.', '1716916799_sinhnhat_icon.png', '1716916799_sn_banner.png'),
(2, 'Đơn hàng lớn', ' Để phục vụ sở thích quây quần cùng gia đình và bạn bè, chương trình chiết khấu hấp dẫn dành cho những đơn hàng lớn đã ra đời để đem đến những lựa chọn tiện lợi hơn cho bạn. Liên hệ ngay với cửa hàng gần nhất để được phục vụ.', '1716960096_iconbigdeal.png', '1716960096_banner_bigdeal.png');

-- --------------------------------------------------------

--
-- Table structure for table `shipper`
--

DROP TABLE IF EXISTS `shipper`;
CREATE TABLE IF NOT EXISTS `shipper` (
  `shipper_id` int NOT NULL,
  `name_shipper` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`shipper_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
CREATE TABLE IF NOT EXISTS `staff` (
  `staff_id` int NOT NULL,
  `name_staff` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

DROP TABLE IF EXISTS `tintuc`;
CREATE TABLE IF NOT EXISTS `tintuc` (
  `tintuc_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `summary` mediumtext DEFAULT NULL,
  `img_title` varchar(255) DEFAULT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tintuc`
--

INSERT INTO `tintuc` (`tintuc_id`, `title`, `summary`, `img_title`, `description`) VALUES
(2, 'Nền Tảng Hình Thành của Gourméz', '  Trong một thế giới đầy sự bận rộn và áp lực, việc tìm kiếm và chuẩn bị bữa ăn ngon là một thách thức đối với nhiều người. Đáp ứng xu hướng này, Gourméz...', 'uploads/1717315803_11.png', '<p style=\"text-align:justify\"><span style=\"font-size:24px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"color:#000000\">&nbsp;&nbsp; &nbsp;Trong một thế giới đầy sự bận rộn v&agrave; &aacute;p lực, việc t&igrave;m kiếm v&agrave; chuẩn bị bữa ăn ngon l&agrave; một th&aacute;ch thức đối với nhiều người. Đ&aacute;p ứng xu hướng n&agrave;y, Gourm&eacute;z đ&atilde; ra đời với một sứ mệnh đơn giản nhưng mạnh mẽ: mang lại thực phẩm ngon v&agrave; tiện lợi đến tận tay mọi người.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:24px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"color:#000000\">Tạo ra từ sự kết hợp giữa đam m&ecirc; ẩm thực v&agrave; sức mạnh của c&ocirc;ng nghệ, Gourm&eacute;z đ&atilde; x&acirc;y dựng một nền tảng thực phẩm trực tuyến ho&agrave;n hảo. Với một giao diện trực quan v&agrave; dễ sử dụng, người d&ugrave;ng c&oacute; thể dễ d&agrave;ng t&igrave;m kiếm v&agrave; đặt h&agrave;ng từ một loạt c&aacute;c m&oacute;n ăn ngon từ nh&agrave; h&agrave;ng v&agrave; qu&aacute;n ăn phổ biến nhất tại Đ&agrave; Lạt v&agrave; c&aacute;c khu vực l&acirc;n cận.</span></span></span></p>\r\n\r\n<table align=\"center\" class=\"tr-caption-container\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\"><span style=\"font-size:24px\"><span style=\"font-family:Times New Roman,Times,serif\"><a href=\"https://www.blogger.com/u/0/blog/post/edit/2713278974729159123/8472648505822988359#\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiFdvztCNYqCaWPSk0F3OgyxpE1sEATTVx7YpYdNCcwosHspcAIiZ6t9Dfs3oEVgWbuWAZgVQW-Cjg33s84mkxmLFR3-IhkQ7ikyHUEhp9pcEfyVnx2yz1jOsrpFal1bXZTeCZ0CoQbcdSkjEOO2TWQuiDzr6l5Xk7Nqaf9m-ilfBwIYIKGT7DB-HF7Wbc/w284-h284/Helene.png\" style=\"cursor:move; height:284px; width:284px\" /></a></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\"><span style=\"font-size:24px\"><span style=\"font-family:Times New Roman,Times,serif\">Th&agrave;nh lập từ th&aacute;ng 1/2024</span></span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:24px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"color:#000000\">Gourm&eacute;z kh&ocirc;ng chỉ đơn thuần l&agrave; một nền tảng mua sắm thực phẩm. Đằng sau vẻ ngo&agrave;i đơn giản l&agrave; một hệ thống cực kỳ phức tạp v&agrave; hiệu quả. Từ việc quản l&yacute; đơn h&agrave;ng đến việc giao h&agrave;ng nhanh ch&oacute;ng v&agrave; an to&agrave;n, mọi kh&iacute;a cạnh của trải nghiệm mua sắm đều được chăm s&oacute;c kỹ lưỡng để mang lại sự h&agrave;i l&ograve;ng tối đa cho kh&aacute;ch h&agrave;ng.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:24px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"color:#000000\">Tuy nhi&ecirc;n, điều đặc biệt về Gourm&eacute;z kh&ocirc;ng chỉ l&agrave; dịch vụ mua sắm thực phẩm trực tuyến. Nền tảng n&agrave;y c&ograve;n l&agrave; cầu nối giữa những người y&ecirc;u th&iacute;ch ẩm thực v&agrave; cộng đồng. Từ c&aacute;c sự kiện ẩm thực đặc biệt đến chia sẻ c&aacute;c c&ocirc;ng thức nấu ăn ngon, Gourm&eacute;z đ&atilde; tạo ra một kh&ocirc;ng gian nơi mọi người c&oacute; thể kết nối, chia sẻ v&agrave; trải nghiệm văn h&oacute;a ẩm thực đa dạng.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:24px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"color:#000000\">Với sứ mệnh l&agrave;m thay đổi c&aacute;ch mọi người trải nghiệm ẩm thực, Gourm&eacute;z tiếp tục ph&aacute;t triển v&agrave; mở rộng sứ mệnh của m&igrave;nh. Từ Đ&agrave; Lạt đến c&aacute;c th&agrave;nh phố lớn kh&aacute;c trong cả nước, Gourm&eacute;z đang trở th&agrave;nh người bạn đồng h&agrave;nh đ&aacute;ng tin cậy của mọi người tr&ecirc;n con đường kh&aacute;m ph&aacute; ẩm thực.</span></span></span></p>\r\n'),
(3, 'Giao hàng nhanh và tiết kiệm với Gourméz', 'Trong thời đại công nghệ ngày nay, nhu cầu về sự tiện lợi và tiết kiệm thời gian ngày càng trở nên cấp thiết hơn bao giờ hết. Đối diện với áp lực và cuộc sống bận rộn...', 'uploads/1717315889_14.png', '<p style=\"text-align:justify\"><span style=\"font-size:24px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"color:#000000\">&nbsp;&nbsp; &nbsp;&nbsp;Trong thời đại c&ocirc;ng nghệ ng&agrave;y nay, nhu cầu về sự tiện lợi v&agrave; tiết kiệm thời gian ng&agrave;y c&agrave;ng trở n&ecirc;n cấp thiết hơn bao giờ hết. Đối diện với &aacute;p lực v&agrave; cuộc sống bận rộn, việc đảm bảo bữa ăn ngon v&agrave; dinh dưỡng kh&ocirc;ng chỉ l&agrave; một th&aacute;ch thức m&agrave; c&ograve;n l&agrave; một cần thiết. Gourm&eacute;z, với sứ mệnh đơn giản nhưng mạnh mẽ l&agrave; mang lại trải nghiệm mua sắm v&agrave; thưởng thức ẩm thực tốt nhất cho mọi người, đ&atilde; nhanh ch&oacute;ng nhận ra v&agrave; đ&aacute;p ứng nhu cầu n&agrave;y bằng c&aacute;ch cung cấp dịch vụ giao h&agrave;ng nhanh ch&oacute;ng v&agrave; tiết kiệm.</span></span></span></p>\r\n\r\n<table align=\"center\" class=\"tr-caption-container\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\"><span style=\"font-size:24px\"><span style=\"font-family:Times New Roman,Times,serif\"><a href=\"https://www.blogger.com/u/0/blog/post/edit/2713278974729159123/8280004324764231979#\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi9cxn9mtiTVDk0G0X5A_tTNTOjcxXQnvzBXSsH8R-pJXm0jfdA25ge8iSz1lPYxmbrndnp4-biUcz1bhDohLoWpcnSA0V9bXTYqZwjl6Pb0Bm4b_vfrOycT1BBNub7oG9I_Dnx0p-7ivSdUyz1qL_yXKnXhLSgMGQeLxIKBuh6jYnYNU7yB4XtPvsuZEs/s320/tin%20t%E1%BB%A9c%201.jpg\" style=\"cursor:move; height:240px; width:320px\" /></a></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\"><span style=\"font-size:24px\"><span style=\"font-family:Times New Roman,Times,serif\">Lu&ocirc;n ưu ti&ecirc;n trải nghiệm của kh&aacute;ch h&agrave;ng</span></span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:24px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"color:#000000\">Với một giao diện trực quan v&agrave; dễ sử dụng, việc t&igrave;m kiếm v&agrave; đặt h&agrave;ng tr&ecirc;n Gourm&eacute;z trở n&ecirc;n dễ d&agrave;ng v&agrave; tiện lợi. Kh&ocirc;ng cần phải mất thời gian qu&yacute; b&aacute;u để đến si&ecirc;u thị hoặc nh&agrave; h&agrave;ng, bạn chỉ cần một v&agrave;i c&uacute; click chuột l&agrave; c&oacute; thể chọn lựa từ một loạt c&aacute;c m&oacute;n ăn ngon từ nh&agrave; h&agrave;ng v&agrave; qu&aacute;n ăn uy t&iacute;n nhất tại Đ&agrave; Lạt v&agrave; c&aacute;c v&ugrave;ng l&acirc;n cận. V&agrave; điều tuyệt vời nhất l&agrave;, với dịch vụ giao h&agrave;ng nhanh ch&oacute;ng v&agrave; chuy&ecirc;n nghiệp của Gourm&eacute;z, bạn sẽ kh&ocirc;ng phải chờ đợi l&acirc;u để thưởng thức những m&oacute;n ngon tuyệt vời đ&oacute;. Thay v&igrave; phải tự đi mua v&agrave; nấu nướng, bạn c&oacute; thể tiết kiệm thời gian v&agrave; c&ocirc;ng sức cho những việc quan trọng kh&aacute;c trong cuộc sống h&agrave;ng ng&agrave;y.</span></span></span></p>\r\n\r\n<table align=\"center\" class=\"tr-caption-container\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\"><span style=\"font-size:24px\"><span style=\"font-family:Times New Roman,Times,serif\"><a href=\"https://www.blogger.com/u/0/blog/post/edit/2713278974729159123/8280004324764231979#\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh_kwzxbsq_Z_Rt7fhow_O0VlWRXhnJnW_McPM0_y285vruGvzgaZxjHTP41buiK61KLhr82ZuoY0RHHN8w1V-4V3hA0BVRKLZ81sQ6prdAWWy2xINfkn1y47kISKLY4gqmr8mT_5L1j3FwP44Ig6-0kHZCIozrezueaKwQ90xWMOjRf7CQgp9dRAnoupY/s320/Thuc-an-nhanh-la-gi-tac-hai-cua-thuc-an-nhanh-va-cac-loai-tot-cho-suc-khoe-1-1200x676.jpg\" style=\"cursor:move; height:180px; width:320px\" /></a></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\"><span style=\"font-size:24px\"><span style=\"font-family:Times New Roman,Times,serif\">Tiết kiệm thời gian v&agrave; c&ocirc;ng sức</span></span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:24px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"color:#000000\">Gourm&eacute;z kh&ocirc;ng chỉ l&agrave; một nền tảng mua sắm thực phẩm trực tuyến, m&agrave; c&ograve;n l&agrave; người bạn đồng h&agrave;nh đ&aacute;ng tin cậy trong cuộc sống bận rộn của mọi người. Với dịch vụ giao h&agrave;ng linh hoạt v&agrave; chuy&ecirc;n nghiệp, Gourm&eacute;z cam kết đưa thực phẩm tươi ngon từ nh&agrave; h&agrave;ng đến tận cửa nh&agrave; của bạn một c&aacute;ch nhanh ch&oacute;ng v&agrave; an to&agrave;n nhất. V&igrave; vậy, h&atilde;y để Gourm&eacute;z l&agrave; người bạn đồng h&agrave;nh đ&aacute;ng tin cậy của bạn, gi&uacute;p bạn tiết kiệm thời gian v&agrave; c&ocirc;ng sức mỗi ng&agrave;y, để bạn c&oacute; th&ecirc;m thời gian cho những điều quan trọng hơn trong cuộc sống.</span></span></span></p>\r\n'),
(4, 'Tham vọng của trở thành thương hiệu yêu thích của giới trẻ Việt', 'Gourméz không chỉ là một nền tảng mua sắm thực phẩm trực tuyến. Đằng sau vẻ ngoài đơn giản là một tầm nhìn rộng lớn và sự cam kết không ngừng nghỉ đến với sự sáng tạo và đổi...', 'uploads/1717316255_12.png', '<p style=\"text-align:justify\"><span style=\"font-size:24px\"><span style=\"font-family:Times New Roman,Times,serif\">&nbsp;Gourm&eacute;z kh&ocirc;ng chỉ l&agrave; một nền tảng mua sắm thực phẩm trực tuyến. Đằng sau vẻ ngo&agrave;i đơn giản l&agrave; một tầm nh&igrave;n rộng lớn v&agrave; sự cam kết kh&ocirc;ng ngừng nghỉ đến với sự s&aacute;ng tạo v&agrave; đổi mới trong ng&agrave;nh ẩm thực. Với một đội ngũ đam m&ecirc; v&agrave; sự quyết t&acirc;m vươn l&ecirc;n, Gourm&eacute;z đ&atilde; đặt ra những mục ti&ecirc;u tham vọng, kh&ocirc;ng chỉ l&agrave;m thay đổi c&aacute;ch mọi người mua sắm thực phẩm m&agrave; c&ograve;n l&agrave; tạo ra một cộng đồng y&ecirc;u thực phẩm đa dạng v&agrave; s&aacute;ng tạo.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:24px\"><span style=\"font-family:Times New Roman,Times,serif\">Tham vọng lớn nhất của Gourm&eacute;z l&agrave; trở th&agrave;nh thương hiệu ẩm thực h&agrave;ng đầu, được y&ecirc;u th&iacute;ch v&agrave; t&ocirc;n trọng kh&ocirc;ng chỉ ở Việt Nam m&agrave; c&ograve;n tr&ecirc;n to&agrave;n thế giới. Với một tầm nh&igrave;n rộng lớn v&agrave; sự tận t&acirc;m kh&ocirc;ng ngừng nghỉ, Gourm&eacute;z kh&ocirc;ng chỉ hướng tới việc cung cấp c&aacute;c sản phẩm v&agrave; dịch vụ tốt nhất m&agrave; c&ograve;n muốn tạo ra một cộng đồng đam m&ecirc; v&agrave; s&aacute;ng tạo, nơi mọi người c&oacute; thể chia sẻ, kết nối v&agrave; trải nghiệm ẩm thực một c&aacute;ch đa dạng v&agrave; th&uacute; vị.</span></span></p>\r\n\r\n<table align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\"><span style=\"font-size:24px\"><span style=\"font-family:Times New Roman,Times,serif\"><a href=\"https://www.blogger.com/u/0/blog/post/edit/2713278974729159123/6633797287800344028#\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiIehIP2_Ks7L7C3EGB-EZRd30JZYmjOG0sngO190LmG-7fdT1k-lah92E3Qnn-gjDTdhb61pSqlVb01fDckbgm-jrF9806ahRBDZSzfAad_O1tUhDnHQSeU6zi0lonVdoznnYF88uGVOpv940nVwfuPvvEZujBDDY4dSBJji3PQfmMEp__epNeoMBdO3s/w502-h251/Black%20Orange%20Modern%20Food%20Promotion%20Banner.png\" style=\"height:251px; width:502px\" /></a></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\"><span style=\"font-size:24px\"><span style=\"font-family:Times New Roman,Times,serif\">Tham vọng trở th&agrave;nh thương hiệu y&ecirc;u th&iacute;ch của giới trẻ Việt</span></span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:24px\"><span style=\"font-family:Times New Roman,Times,serif\">Một phần kh&ocirc;ng thể thiếu của tham vọng của Gourm&eacute;z l&agrave; sự cam kết với sự ph&aacute;t triển bền vững v&agrave; bảo vệ m&ocirc;i trường. Gourm&eacute;z kh&ocirc;ng chỉ ch&uacute; trọng v&agrave;o việc cung cấp c&aacute;c sản phẩm tươi ngon v&agrave; an to&agrave;n m&agrave; c&ograve;n đặt m&ocirc;i trường v&agrave; cộng đồng v&agrave;o trọng t&acirc;m của mọi quyết định kinh doanh. Bằng c&aacute;ch tận dụng c&aacute;c nguồn lực tự nhi&ecirc;n một c&aacute;ch bền vững v&agrave; hợp l&yacute;, Gourm&eacute;z mong muốn g&oacute;p phần v&agrave;o việc x&acirc;y dựng một thế giới ẩm thực sạch đẹp v&agrave; bền vững cho thế hệ tương lai.</span></span></p>\r\n\r\n<table align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\"><span style=\"font-size:24px\"><span style=\"font-family:Times New Roman,Times,serif\"><a href=\"https://www.blogger.com/u/0/blog/post/edit/2713278974729159123/6633797287800344028#\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjbwSHOP_X0GOmL0MrqPaqCh9rjcpaQCWUyt7hERT1sOAdJkEVPl17WmrLkNP8BbYf6sDAu_bC9QsCHnrl5wOTXtOa9zyxDJVC8vXlD6-8xCeZOtcIDoe1KtiT64t2xb76aAvvV7gp4XvBDKQvdywSPgakidHjly2bZ8OkGM8TS2z962FOkneIAl2nI4Ro/w428-h285/khoai%20t%C3%A2y%20l%E1%BA%AFc%20bbq.jpg\" style=\"height:285px; width:428px\" /></a></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\"><span style=\"font-size:24px\"><span style=\"font-family:Times New Roman,Times,serif\">Ch&uacute; trọng v&agrave;o việc cung cấp sản phẩm an to&agrave;n</span></span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:24px\"><span style=\"font-family:Times New Roman,Times,serif\">Nh&igrave;n chung, tham vọng của Gourm&eacute;z kh&ocirc;ng chỉ l&agrave; trở th&agrave;nh một thương hiệu ẩm thực h&agrave;ng đầu m&agrave; c&ograve;n l&agrave; tạo ra một cộng đồng đam m&ecirc; v&agrave; s&aacute;ng tạo trong ng&agrave;nh ẩm thực. Với sự tập trung v&agrave;o chất lượng, s&aacute;ng tạo v&agrave; bền vững, Gourm&eacute;z đang dần khẳng định vị thế của m&igrave;nh tr&ecirc;n bản đồ ẩm thực v&agrave; trở th&agrave;nh điểm đến l&yacute; tưởng cho những người y&ecirc;u th&iacute;ch ẩm thực v&agrave; đam m&ecirc; s&aacute;ng tạo.</span></span></p>\r\n'),
(5, 'Khám Phá Vị Ngọt của Tháng 6: Chương Trình Khuyến Mãi Lớn từ Gourmez - Thưởng Thức Thức Ăn Nhanh với Giá Ưu Đãi!', 'Tin vui đến từ Gourmez! Chúng tôi vô cùng hạnh phúc khi công bố chương trình khuyến mãi lớn nhất trong năm dành cho những người yêu thích thức ăn nhanh và tiện lợi...', 'uploads/1717222161_anhchotintuc.png', '<p style=\"text-align:justify\"><span style=\"font-size:24px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"color:#000000\">Tin vui đến từ Gourmez! Ch&uacute;ng t&ocirc;i v&ocirc; c&ugrave;ng hạnh ph&uacute;c khi c&ocirc;ng bố chương tr&igrave;nh khuyến m&atilde;i lớn nhất trong năm d&agrave;nh cho những người y&ecirc;u th&iacute;ch thức ăn nhanh v&agrave; tiện lợi. Đ&atilde; đến l&uacute;c thưởng thức những m&oacute;n ăn ngon l&agrave;nh m&agrave; kh&ocirc;ng cần phải lo lắng về gi&aacute; cả, bởi ch&uacute;ng t&ocirc;i đ&atilde; sẵn s&agrave;ng đem đến cho bạn những ưu đ&atilde;i hấp dẫn nhất từ c&aacute;c nh&agrave; h&agrave;ng h&agrave;ng đầu tr&ecirc;n to&agrave;n quốc!</span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\"><img src=\"https://lh7-us.googleusercontent.com/docsz/AD_4nXdDmJFFMP0dkbP2qW_jWPX2Cr4-dAFVEMD7Lbqbm0r2bxUnlSC3wMQcQrPHqvZRBPR4f7os8x80K81HaRbeLRm-cYQfwFeOZ9j2q2ygCWPv4MZI4i35jDdM5lceeTUuNX-ibJ3bmndhCqzgIBT3AulDLDb-?key=lYFQ1PJUYesZz9XLcZ4Oyw\" style=\"height:242px; width:243px\" /></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\">Giảm 15% burger b&ograve;</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:24px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"color:#000000\">Từ h&ocirc;m nay cho đến cuối th&aacute;ng, Gourmez sẽ mang đến cho bạn một loạt c&aacute;c ưu đ&atilde;i đặc biệt, giảm gi&aacute; lớn v&agrave; combo tiết kiệm, gi&uacute;p bạn tiết kiệm cả thời gian v&agrave; tiền bạc khi thưởng thức những m&oacute;n ăn y&ecirc;u th&iacute;ch của m&igrave;nh. Bạn c&oacute; thể mong đợi những giảm gi&aacute; độc quyền chỉ c&oacute; tại Gourmez, từ pizza hấp dẫn đến hamburger đầy ngon miệng, từ sushi tinh tế đến salad tươi ngon, v&agrave; c&ograve;n nhiều hơn nữa!</span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi9cxn9mtiTVDk0G0X5A_tTNTOjcxXQnvzBXSsH8R-pJXm0jfdA25ge8iSz1lPYxmbrndnp4-biUcz1bhDohLoWpcnSA0V9bXTYqZwjl6Pb0Bm4b_vfrOycT1BBNub7oG9I_Dnx0p-7ivSdUyz1qL_yXKnXhLSgMGQeLxIKBuh6jYnYNU7yB4XtPvsuZEs/s320/tin%20t%E1%BB%A9c%201.jpg style=\"height:242px; width:243px\"/></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\">Mua 1 tặng 1 rau củ</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:24px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"color:#000000\">Kh&ocirc;ng chỉ vậy, ch&uacute;ng t&ocirc;i cũng mang đến cho bạn những ưu đ&atilde;i đặc biệt khi đặt h&agrave;ng trực tuyến v&agrave; giao h&agrave;ng tận nơi. Với ứng dụng Gourmez tiện lợi, bạn c&oacute; thể dễ d&agrave;ng chọn lựa từ h&agrave;ng trăm m&oacute;n ăn ngon l&agrave;nh v&agrave; nhận được đồ ăn ngay tại cửa nh&agrave; m&igrave;nh, m&agrave; kh&ocirc;ng cần phải bước ra khỏi nh&agrave;!</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:24px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"color:#000000\">Chương tr&igrave;nh khuyến m&atilde;i n&agrave;y kh&ocirc;ng chỉ l&agrave; cơ hội để bạn thưởng thức những m&oacute;n ăn ngon với gi&aacute; ưu đ&atilde;i, m&agrave; c&ograve;n l&agrave; dịp để cả gia đ&igrave;nh v&agrave; bạn b&egrave; c&oacute; thể tận hưởng những bữa tiệc th&uacute; vị v&agrave; đầy sắc m&agrave;u m&agrave; kh&ocirc;ng cần phải lo lắng về chi ph&iacute;.</span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\"><img src=\"https://lh7-us.googleusercontent.com/docsz/AD_4nXfEVlrWxiItlGEuFX4NjsKGa8tMUguM-Oade2L0tFpkIkaX9uRg6M4H7ZIMsAQYeVi0DIMQ3_OJrQLpvkVb4fiX6F23S331Flu2RZnF3aAtWX3jqqRlb4ItXW_M5wkrVy4eckCf9NXaYx0tKQWswRFlx5B2?key=lYFQ1PJUYesZz9XLcZ4Oyw\" style=\"height:422px; width:423px\" /></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\">Ưu đ&atilde;i đặc biệt</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:24px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"color:#000000\">H&atilde;y gh&eacute; thăm trang web hoặc tải ứng dụng của ch&uacute;ng t&ocirc;i ngay h&ocirc;m nay để biết th&ecirc;m chi tiết v&agrave; kh&ocirc;ng bỏ lỡ cơ hội trải nghiệm những m&oacute;n ăn tuyệt vời với gi&aacute; ưu đ&atilde;i từ Gourmez! C&ugrave;ng nhau, ch&uacute;ng ta sẽ tạo ra những kỷ niệm ẩm thực đ&aacute;ng nhớ!</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n');
-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `verify_status` tinyint DEFAULT NULL,
  `role` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `last_updated` datetime DEFAULT CURRENT_TIMESTAMP,
  `reset_token` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reset_token_expiry` datetime DEFAULT NULL,
  `otp` int DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `fullname`, `user_name`, `email`, `phone`, `address`, `password`, `verify_status`, `role`, `created_at`, `last_updated`, `reset_token`, `reset_token_expiry`, `otp`) VALUES
(3, 'Dương Yến Nhi', 'dynnyd', 'duongyennhi270904@gmail.com', '0939883916', 'ktx khu b, đại học quốc gia', '$2y$10$BJaLfS6xGchxTbbQiqsVl.FGVbh6MWB2gbD51vaM1WkVhNGmERXNG', NULL, 1, '2025-03-26 21:26:28', '2025-04-04 09:22:12', '3813ea73ffb66c2b08c875cac7ab45776a35a9e28726b46bb378f51ee348f70a8602c2b389bcfed6911948cedd38554eadd9', '2025-03-26 22:54:34', 421330),
(4, 'Nguyễn Văn A', 'mii', 'nhiaccphu01@gmail.com', '0939883916', NULL, '$2y$10$739tfCrL.DsB36LPgFwhves6DLWoNP5.4eJPkHwP70vjkWWIxmUlS', NULL, 0, '2025-03-26 21:34:44', '2025-03-26 21:34:44', NULL, NULL, NULL),
(5, 'Nguyễn Văn A', 'admin', 'nhiaccphu02@gmail.com', '0939883916', NULL, '$2y$10$6Q1Q/fSjoPwqNt0T3Z58h.OLDYcnwt4mU5hb9MmpAMPVskcG3wkCS', NULL, 1, NULL, '2025-04-04 00:08:20', NULL, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
