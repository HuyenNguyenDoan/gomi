-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2017 at 05:38 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlydogo`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `hot_category` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `hot_category`) VALUES
(3, 'Bàn Ghế', 1),
(4, 'Giường', 1),
(5, 'Kệ Ti Vi', 1),
(6, 'Tủ', 1),
(7, 'Cầu Thang', 1),
(8, 'Cửa', 1),
(9, 'Bàn Thờ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `content` longtext,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `id_user`, `id_product`, `content`, `created_at`) VALUES
(1, 1, 20, 'sản phẩm này khá hay', '2016-11-09 19:15:32'),
(3, 2, 22, 'hợp giá cả túi tiền', '2016-11-04 19:16:19'),
(5, 2, 22, 'cũng được nhưng còn xem độ bền', '2016-11-21 19:23:28'),
(6, 3, 21, 'thiết kế sang trọng mẫu mã sáng tạo', '0000-00-00 00:00:00'),
(7, 4, 11, '                                                  \r\n giường này giá bao nhiêu vậy ad.', '2017-03-08 20:30:16'),
(8, 5, 11, '                                                  \r\n                      cái này có được khuyến mại không ad?    ', '2017-03-07 20:30:23'),
(9, 6, 21, '                                                  \r\n                       sản phẩm này khá hay   ', '2017-03-20 20:30:27'),
(10, 7, 33, '     bàn này giá bao nhiêu ad?                                             \r\n                          ', '2017-03-17 20:30:30'),
(11, 8, 21, 'cũng được nhưng còn xem độ bền', '2017-03-14 20:30:35'),
(12, 10, 13, NULL, '2017-03-21 21:21:16'),
(13, 10, 13, NULL, '2017-03-22 21:21:26'),
(14, 10, 6, 'gfhghghgh', '2017-03-22 21:38:13');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `fullname` varchar(300) NOT NULL,
  `phone_number` varchar(11) NOT NULL,
  `email` varchar(300) NOT NULL,
  `address` varchar(300) NOT NULL,
  `content` longtext NOT NULL,
  `status` int(1) DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `fullname`, `phone_number`, `email`, `address`, `content`, `status`, `created_at`) VALUES
(1, 'Nguyễn Doãn huyên', '0123456978', 'huyen@gmai.com', 'Bắc Ninh', 'tôi muốn hợp tác vối bên anh', 1, '2017-03-18 12:21:38'),
(4, 'Hồ Việt Chung', '0123456789', 'chung@gmail.com', 'Tp.HCM', 'anh muốn bên e thiết kế cho anh một mẫu \r\n                                             ', 0, '2017-03-19 12:21:38'),
(5, 'Vũ trưởng tộc', '02364558036', 'toc@gmail.com', 'Hai Dương', 'Cập nhật thông tin mới nhất, nhanh nhất và đầy đủ nhất về chủ đề bìa các tông. Mời các bạn đón đọc các bài viết về bìa các tông và chia sẻ thông tin bìa các tông trên TINMOI.VN.', 0, '2017-03-22 20:24:54');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `fullname` varchar(300) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone_number` varchar(11) NOT NULL,
  `gender` int(1) DEFAULT NULL,
  `birthday` varchar(20) DEFAULT NULL,
  `address` varchar(300) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `fullname`, `email`, `phone_number`, `gender`, `birthday`, `address`, `created_at`) VALUES
(3, 'trac', 'trac@gmail.com', '0123456789', 1, '11/11/1995', 'Nam định ', '2017-03-15 23:33:27'),
(5, 'Hồ Việt Chung', 'chung@gmail.com', '0123456789', 1, '11/11/1995', 'Hà Nội 3', '2017-03-21 23:33:27'),
(6, 'nguyeenx doan huyen', 'huyen@gmail.com', '0123456789', 1, '11/11/1995', 'Hai Bà Trưng ,Hà Nội', '2017-03-13 23:33:27'),
(7, 'tester', 'abc@gmail.com', '01548945458', 0, '11/11/1995', 'hanoi', '2017-03-17 23:33:27'),
(8, 'VU HUY Hung', 'hung@gmail.com', '0123456789', 0, '11/11/1995', 'ha Tay hoai duc', '2017-03-10 23:33:27'),
(9, 'Van Ha', 'ha@gmail.com', '0123456789', 1, '11/11/1995', 'nam dinh', '2017-03-13 23:33:27'),
(10, 'Văn tiến', 'tien@gmail.com', '0123456789', 1, '11/11/1995', 'Tp. HCM', '2017-03-07 23:33:27'),
(11, 'Vu duy phúc', 'phuc@gmail.com', '0123456789', 1, '11/11/1995', '2566662', '2017-03-07 23:33:27'),
(12, 'Phạm văn trường', 'truongpham@gmail.com', '0369874125', 1, '1995-09-18', 'Nam Định', '2017-03-22 23:40:59');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `images` varchar(300) DEFAULT NULL,
  `id_product` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `images`, `id_product`, `created_at`) VALUES
(1, 't1.jpg', 6, '2017-03-21 15:50:47'),
(2, 't2.jpg', 6, '2017-03-20 15:50:47'),
(3, 't3.jpg', 6, '2017-03-18 15:50:47'),
(4, 't4.jpg', 7, '2017-03-07 15:50:47'),
(5, 't3.jpg', 7, '2017-03-18 15:50:47'),
(6, 't2.jpg', 7, '2017-03-28 15:50:47');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(300) NOT NULL,
  `description` longtext,
  `content` longtext,
  `images` varchar(300) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '20 / 10 /2016'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `content`, `images`, `created_at`) VALUES
(1, 'Giá gỗ lên cao nhiều người thu mua khó khăn khi mua gỗ.Bộ cửa đi sang trọng được sử dụng rộng rãi ở các nhà hiện nay.', 'Sử dụng nhầm hàng giả, hàng nhái sẽ gây hậu quả khôn lường, nhất là bố thắng xe, do đó để bảo vệ chính mình, mỗi chúng ta nên cố gắng tìm hiểu,cập nhật thông tin cũng như cách nhận dạng hàng chính hãng để bảo vệ quyền lợi hợp pháp cho mình và gia đình.', '<p>đ&acirc;y l&agrave; tin tức 1</p>\r\nTừ khi tham gia Hiệp định TPP, Việt Nam đã cam kết thực hiện bảo vệ quyền sở hữu trí tuệ, trong đó có quyền sở hữu công nghiệp về kiểu dáng, nhãn hiệu, tên thương mại nhằm để bảo vệ môi trường kinh doanh lành mạnh và bền vững cho các doanh nghiệp đồng thời cũng bảo vệ quyền lợi hợp pháp cho người tiêu dùng.\r\n\r\nQua đó, trách nhiệm phát hiện và tố cáo hàng giả, hàng nhái không chỉ thuộc về các cơ quan ban ngành có liên quan mà còn thuộc về doanh nghiệp và người tiêu dùng. Ý thức được trách nhiệm của mình, Công ty TNHH Jaan-E chúng tôi đã luôn cố gắng cập nhật những thông tin về sản phẩm bố thắng ELIG của mình đến người tiêu dùng một cách chính xác và hiệu quả nhất.\r\n\r\nTại triển lãm Saigon Autotech & Accessories tổ chức ở Trung tâm Hội nghị SECC hồi tháng 5/2015, chúng tôi đã phân phát hơn 2.000 tờ rơi giúp khách hàng nhận biết hàng thật – hàng giả thông qua các chi tiết trên sản phẩm như mã vạch, màu sắc, tem chống hàng giả…Từ khi tham gia Hiệp định TPP, Việt Nam đã cam kết thực hiện bảo vệ quyền sở hữu trí tuệ, trong đó có quyền sở hữu công nghiệp về kiểu dáng, nhãn hiệu, tên thương mại nhằm để bảo vệ môi trường kinh doanh lành mạnh và bền vững cho các doanh nghiệp đồng thời cũng bảo vệ quyền lợi hợp pháp cho người tiêu dùng.\r\n\r\nQua đó, trách nhiệm phát hiện và tố cáo hàng giả, hàng nhái không chỉ thuộc về các cơ quan ban ngành có liên quan mà còn thuộc về doanh nghiệp và người tiêu dùng. Ý thức được trách nhiệm của mình, Công ty TNHH Jaan-E chúng tôi đã luôn cố gắng cập nhật những thông tin về sản phẩm bố thắng ELIG của mình đến người tiêu dùng một cách chính xác và hiệu quả nhất.\r\n\r\nTại triển lãm Saigon Autotech & Accessories tổ chức ở Trung tâm Hội nghị SECC hồi tháng 5/2015, chúng tôi đã phân phát hơn 2.000 tờ rơi giúp khách hàng nhận biết hàng thật – hàng giả thông qua các chi tiết trên sản phẩm như mã vạch, màu sắc, tem chống hàng giả…Từ khi tham gia Hiệp định TPP, Việt Nam đã cam kết thực hiện bảo vệ quyền sở hữu trí tuệ, trong đó có quyền sở hữu công nghiệp về kiểu dáng, nhãn hiệu, tên thương mại nhằm để bảo vệ môi trường kinh doanh lành mạnh và bền vững cho các doanh nghiệp đồng thời cũng bảo vệ quyền lợi hợp pháp cho người tiêu dùng.\r\n\r\nQua đó, trách nhiệm phát hiện và tố cáo hàng giả, hàng nhái không chỉ thuộc về các cơ quan ban ngành có liên quan mà còn thuộc về doanh nghiệp và người tiêu dùng. Ý thức được trách nhiệm của mình, Công ty TNHH Jaan-E chúng tôi đã luôn cố gắng cập nhật những thông tin về sản phẩm bố thắng ELIG của mình đến người tiêu dùng một cách chính xác và hiệu quả nhất.\r\n\r\nTại triển lãm Saigon Autotech & Accessories tổ chức ở Trung tâm Hội nghị SECC hồi tháng 5/2015, chúng tôi đã phân phát hơn 2.000 tờ rơi giúp khách hàng nhận biết hàng thật – hàng giả thông qua các chi tiết trên sản phẩm như mã vạch, màu sắc, tem chống hàng giả…Từ khi tham gia Hiệp định TPP, Việt Nam đã cam kết thực hiện bảo vệ quyền sở hữu trí tuệ, trong đó có quyền sở hữu công nghiệp về kiểu dáng, nhãn hiệu, tên thương mại nhằm để bảo vệ môi trường kinh doanh lành mạnh và bền vững cho các doanh nghiệp đồng thời cũng bảo vệ quyền lợi hợp pháp cho người tiêu dùng.\r\n\r\nQua đó, trách nhiệm phát hiện và tố cáo hàng giả, hàng nhái không chỉ thuộc về các cơ quan ban ngành có liên quan mà còn thuộc về doanh nghiệp và người tiêu dùng. Ý thức được trách nhiệm của mình, Công ty TNHH Jaan-E chúng tôi đã luôn cố gắng cập nhật những thông tin về sản phẩm bố thắng ELIG của mình đến người tiêu dùng một cách chính xác và hiệu quả nhất.\r\n\r\nTại triển lãm Saigon Autotech & Accessories tổ chức ở Trung tâm Hội nghị SECC hồi tháng 5/2015, chúng tôi đã phân phát hơn 2.000 tờ rơi giúp khách hàng nhận biết hàng thật – hàng giả thông qua các chi tiết trên sản phẩm như mã vạch, màu sắc, tem chống hàng giả…Từ khi tham gia Hiệp định TPP, Việt Nam đã cam kết thực hiện bảo vệ quyền sở hữu trí tuệ, trong đó có quyền sở hữu công nghiệp về kiểu dáng, nhãn hiệu, tên thương mại nhằm để bảo vệ môi trường kinh doanh lành mạnh và bền vững cho các doanh nghiệp đồng thời cũng bảo vệ quyền lợi hợp pháp cho người tiêu dùng.\r\n\r\nQua đó, trách nhiệm phát hiện và tố cáo hàng giả, hàng nhái không chỉ thuộc về các cơ quan ban ngành có liên quan mà còn thuộc về doanh nghiệp và người tiêu dùng. Ý thức được trách nhiệm của mình, Công ty TNHH Jaan-E chúng tôi đã luôn cố gắng cập nhật những thông tin về sản phẩm bố thắng ELIG của mình đến người tiêu dùng một cách chính xác và hiệu quả nhất.\r\n\r\nTại triển lãm Saigon Autotech & Accessories tổ chức ở Trung tâm Hội nghị SECC hồi tháng 5/2015, chúng tôi đã phân phát hơn 2.000 tờ rơi giúp khách hàng nhận biết hàng thật – hàng giả thông qua các chi tiết trên sản phẩm như mã vạch, màu sắc, tem chống hàng giả…Từ khi tham gia Hiệp định TPP, Việt Nam đã cam kết thực hiện bảo vệ quyền sở hữu trí tuệ, trong đó có quyền sở hữu công nghiệp về kiểu dáng, nhãn hiệu, tên thương mại nhằm để bảo vệ môi trường kinh doanh lành mạnh và bền vững cho các doanh nghiệp đồng thời cũng bảo vệ quyền lợi hợp pháp cho người tiêu dùng.\r\n\r\nQua đó, trách nhiệm phát hiện và tố cáo hàng giả, hàng nhái không chỉ thuộc về các cơ quan ban ngành có liên quan mà còn thuộc về doanh nghiệp và người tiêu dùng. Ý thức được trách nhiệm của mình, Công ty TNHH Jaan-E chúng tôi đã luôn cố gắng cập nhật những thông tin về sản phẩm bố thắng ELIG của mình đến người tiêu dùng một cách chính xác và hiệu quả nhất.\r\n\r\nTại triển lãm Saigon Autotech & Accessories tổ chức ở Trung tâm Hội nghị SECC hồi tháng 5/2015, chúng tôi đã phân phát hơn 2.000 tờ rơi giúp khách hàng nhận biết hàng thật – hàng giả thông qua các chi tiết trên sản phẩm như mã vạch, màu sắc, tem chống hàng giả…Từ khi tham gia Hiệp định TPP, Việt Nam đã cam kết thực hiện bảo vệ quyền sở hữu trí tuệ, trong đó có quyền sở hữu công nghiệp về kiểu dáng, nhãn hiệu, tên thương mại nhằm để bảo vệ môi trường kinh doanh lành mạnh và bền vững cho các doanh nghiệp đồng thời cũng bảo vệ quyền lợi hợp pháp cho người tiêu dùng.\r\n\r\nQua đó, trách nhiệm phát hiện và tố cáo hàng giả, hàng nhái không chỉ thuộc về các cơ quan ban ngành có liên quan mà còn thuộc về doanh nghiệp và người tiêu dùng. Ý thức được trách nhiệm của mình, Công ty TNHH Jaan-E chúng tôi đã luôn cố gắng cập nhật những thông tin về sản phẩm bố thắng ELIG của mình đến người tiêu dùng một cách chính xác và hiệu quả nhất.\r\n\r\nTại triển lãm Saigon Autotech & Accessories tổ chức ở Trung tâm Hội nghị SECC hồi tháng 5/2015, chúng tôi đã phân phát hơn 2.000 tờ rơi giúp khách hàng nhận biết hàng thật – hàng giả thông qua các chi tiết trên sản phẩm như mã vạch, màu sắc, tem chống hàng giả…Từ khi tham gia Hiệp định TPP, Việt Nam đã cam kết thực hiện bảo vệ quyền sở hữu trí tuệ, trong đó có quyền sở hữu công nghiệp về kiểu dáng, nhãn hiệu, tên thương mại nhằm để bảo vệ môi trường kinh doanh lành mạnh và bền vững cho các doanh nghiệp đồng thời cũng bảo vệ quyền lợi hợp pháp cho người tiêu dùng.\r\n\r\nQua đó, trách nhiệm phát hiện và tố cáo hàng giả, hàng nhái không chỉ thuộc về các cơ quan ban ngành có liên quan mà còn thuộc về doanh nghiệp và người tiêu dùng. Ý thức được trách nhiệm của mình, Công ty TNHH Jaan-E chúng tôi đã luôn cố gắng cập nhật những thông tin về sản phẩm bố thắng ELIG của mình đến người tiêu dùng một cách chính xác và hiệu quả nhất.\r\n\r\nTại triển lãm Saigon Autotech & Accessories tổ chức ở Trung tâm Hội nghị SECC hồi tháng 5/2015, chúng tôi đã phân phát hơn 2.000 tờ rơi giúp khách hàng nhận biết hàng thật – hàng giả thông qua các chi tiết trên sản phẩm như mã vạch, màu sắc, tem chống hàng giả…Từ khi tham gia Hiệp định TPP, Việt Nam đã cam kết thực hiện bảo vệ quyền sở hữu trí tuệ, trong đó có quyền sở hữu công nghiệp về kiểu dáng, nhãn hiệu, tên thương mại nhằm để bảo vệ môi trường kinh doanh lành mạnh và bền vững cho các doanh nghiệp đồng thời cũng bảo vệ quyền lợi hợp pháp cho người tiêu dùng.\r\n\r\nQua đó, trách nhiệm phát hiện và tố cáo hàng giả, hàng nhái không chỉ thuộc về các cơ quan ban ngành có liên quan mà còn thuộc về doanh nghiệp và người tiêu dùng. Ý thức được trách nhiệm của mình, Công ty TNHH Jaan-E chúng tôi đã luôn cố gắng cập nhật những thông tin về sản phẩm bố thắng ELIG của mình đến người tiêu dùng một cách chính xác và hiệu quả nhất.\r\n\r\nTại triển lãm Saigon Autotech & Accessories tổ chức ở Trung tâm Hội nghị SECC hồi tháng 5/2015, chúng tôi đã phân phát hơn 2.000 tờ rơi giúp khách hàng nhận biết hàng thật – hàng giả thông qua các chi tiết trên sản phẩm như mã vạch, màu sắc, tem chống hàng giả…Từ khi tham gia Hiệp định TPP, Việt Nam đã cam kết thực hiện bảo vệ quyền sở hữu trí tuệ, trong đó có quyền sở hữu công nghiệp về kiểu dáng, nhãn hiệu, tên thương mại nhằm để bảo vệ môi trường kinh doanh lành mạnh và bền vững cho các doanh nghiệp đồng thời cũng bảo vệ quyền lợi hợp pháp cho người tiêu dùng.\r\n\r\nQua đó, trách nhiệm phát hiện và tố cáo hàng giả, hàng nhái không chỉ thuộc về các cơ quan ban ngành có liên quan mà còn thuộc về doanh nghiệp và người tiêu dùng. Ý thức được trách nhiệm của mình, Công ty TNHH Jaan-E chúng tôi đã luôn cố gắng cập nhật những thông tin về sản phẩm bố thắng ELIG của mình đến người tiêu dùng một cách chính xác và hiệu quả nhất.\r\n\r\nTại triển lãm Saigon Autotech & Accessories tổ chức ở Trung tâm Hội nghị SECC hồi tháng 5/2015, chúng tôi đã phân phát hơn 2.000 tờ rơi giúp khách hàng nhận biết hàng thật – hàng giả thông qua các chi tiết trên sản phẩm như mã vạch, màu sắc, tem chống hàng giả…Từ khi tham gia Hiệp định TPP, Việt Nam đã cam kết thực hiện bảo vệ quyền sở hữu trí tuệ, trong đó có quyền sở hữu công nghiệp về kiểu dáng, nhãn hiệu, tên thương mại nhằm để bảo vệ môi trường kinh doanh lành mạnh và bền vững cho các doanh nghiệp đồng thời cũng bảo vệ quyền lợi hợp pháp cho người tiêu dùng.\r\n\r\nQua đó, trách nhiệm phát hiện và tố cáo hàng giả, hàng nhái không chỉ thuộc về các cơ quan ban ngành có liên quan mà còn thuộc về doanh nghiệp và người tiêu dùng. Ý thức được trách nhiệm của mình, Công ty TNHH Jaan-E chúng tôi đã luôn cố gắng cập nhật những thông tin về sản phẩm bố thắng ELIG của mình đến người tiêu dùng một cách chính xác và hiệu quả nhất.\r\n\r\nTại triển lãm Saigon Autotech & Accessories tổ chức ở Trung tâm Hội nghị SECC hồi tháng 5/2015, chúng tôi đã phân phát hơn 2.000 tờ rơi giúp khách hàng nhận biết hàng thật – hàng giả thông qua các chi tiết trên sản phẩm như mã vạch, màu sắc, tem chống hàng giả…Từ khi tham gia Hiệp định TPP, Việt Nam đã cam kết thực hiện bảo vệ quyền sở hữu trí tuệ, trong đó có quyền sở hữu công nghiệp về kiểu dáng, nhãn hiệu, tên thương mại nhằm để bảo vệ môi trường kinh doanh lành mạnh và bền vững cho các doanh nghiệp đồng thời cũng bảo vệ quyền lợi hợp pháp cho người tiêu dùng.\r\n\r\nQua đó, trách nhiệm phát hiện và tố cáo hàng giả, hàng nhái không chỉ thuộc về các cơ quan ban ngành có liên quan mà còn thuộc về doanh nghiệp và người tiêu dùng. Ý thức được trách nhiệm của mình, Công ty TNHH Jaan-E chúng tôi đã luôn cố gắng cập nhật những thông tin về sản phẩm bố thắng ELIG của mình đến người tiêu dùng một cách chính xác và hiệu quả nhất.\r\n\r\nTại triển lãm Saigon Autotech & Accessories tổ chức ở Trung tâm Hội nghị SECC hồi tháng 5/2015, chúng tôi đã phân phát hơn 2.000 tờ rơi giúp khách hàng nhận biết hàng thật – hàng giả thông qua các chi tiết trên sản phẩm như mã vạch, màu sắc, tem chống hàng giả…Từ khi tham gia Hiệp định TPP, Việt Nam đã cam kết thực hiện bảo vệ quyền sở hữu trí tuệ, trong đó có quyền sở hữu công nghiệp về kiểu dáng, nhãn hiệu, tên thương mại nhằm để bảo vệ môi trường kinh doanh lành mạnh và bền vững cho các doanh nghiệp đồng thời cũng bảo vệ quyền lợi hợp pháp cho người tiêu dùng.\r\n\r\nQua đó, trách nhiệm phát hiện và tố cáo hàng giả, hàng nhái không chỉ thuộc về các cơ quan ban ngành có liên quan mà còn thuộc về doanh nghiệp và người tiêu dùng. Ý thức được trách nhiệm của mình, Công ty TNHH Jaan-E chúng tôi đã luôn cố gắng cập nhật những thông tin về sản phẩm bố thắng ELIG của mình đến người tiêu dùng một cách chính xác và hiệu quả nhất.\r\n\r\nTại triển lãm Saigon Autotech & Accessories tổ chức ở Trung tâm Hội nghị SECC hồi tháng 5/2015, chúng tôi đã phân phát hơn 2.000 tờ rơi giúp khách hàng nhận biết hàng thật – hàng giả thông qua các chi tiết trên sản phẩm như mã vạch, màu sắc, tem chống hàng giả…Từ khi tham gia Hiệp định TPP, Việt Nam đã cam kết thực hiện bảo vệ quyền sở hữu trí tuệ, trong đó có quyền sở hữu công nghiệp về kiểu dáng, nhãn hiệu, tên thương mại nhằm để bảo vệ môi trường kinh doanh lành mạnh và bền vững cho các doanh nghiệp đồng thời cũng bảo vệ quyền lợi hợp pháp cho người tiêu dùng.\r\n\r\nQua đó, trách nhiệm phát hiện và tố cáo hàng giả, hàng nhái không chỉ thuộc về các cơ quan ban ngành có liên quan mà còn thuộc về doanh nghiệp và người tiêu dùng. Ý thức được trách nhiệm của mình, Công ty TNHH Jaan-E chúng tôi đã luôn cố gắng cập nhật những thông tin về sản phẩm bố thắng ELIG của mình đến người tiêu dùng một cách chính xác và hiệu quả nhất.\r\n\r\nTại triển lãm Saigon Autotech & Accessories tổ chức ở Trung tâm Hội nghị SECC hồi tháng 5/2015, chúng tôi đã phân phát hơn 2.000 tờ rơi giúp khách hàng nhận biết hàng thật – hàng giả thông qua các chi tiết trên sản phẩm như mã vạch, màu sắc, tem chống hàng giả…Từ khi tham gia Hiệp định TPP, Việt Nam đã cam kết thực hiện bảo vệ quyền sở hữu trí tuệ, trong đó có quyền sở hữu công nghiệp về kiểu dáng, nhãn hiệu, tên thương mại nhằm để bảo vệ môi trường kinh doanh lành mạnh và bền vững cho các doanh nghiệp đồng thời cũng bảo vệ quyền lợi hợp pháp cho người tiêu dùng.\r\n\r\nQua đó, trách nhiệm phát hiện và tố cáo hàng giả, hàng nhái không chỉ thuộc về các cơ quan ban ngành có liên quan mà còn thuộc về doanh nghiệp và người tiêu dùng. Ý thức được trách nhiệm của mình, Công ty TNHH Jaan-E chúng tôi đã luôn cố gắng cập nhật những thông tin về sản phẩm bố thắng ELIG của mình đến người tiêu dùng một cách chính xác và hiệu quả nhất.\r\n\r\nTại triển lãm Saigon Autotech & Accessories tổ chức ở Trung tâm Hội nghị SECC hồi tháng 5/2015, chúng tôi đã phân phát hơn 2.000 tờ rơi giúp khách hàng nhận biết hàng thật – hàng giả thông qua các chi tiết trên sản phẩm như mã vạch, màu sắc, tem chống hàng giả…Từ khi tham gia Hiệp định TPP, Việt Nam đã cam kết thực hiện bảo vệ quyền sở hữu trí tuệ, trong đó có quyền sở hữu công nghiệp về kiểu dáng, nhãn hiệu, tên thương mại nhằm để bảo vệ môi trường kinh doanh lành mạnh và bền vững cho các doanh nghiệp đồng thời cũng bảo vệ quyền lợi hợp pháp cho người tiêu dùng.\r\n\r\nQua đó, trách nhiệm phát hiện và tố cáo hàng giả, hàng nhái không chỉ thuộc về các cơ quan ban ngành có liên quan mà còn thuộc về doanh nghiệp và người tiêu dùng. Ý thức được trách nhiệm của mình, Công ty TNHH Jaan-E chúng tôi đã luôn cố gắng cập nhật những thông tin về sản phẩm bố thắng ELIG của mình đến người tiêu dùng một cách chính xác và hiệu quả nhất.\r\n\r\nTại triển lãm Saigon Autotech & Accessories tổ chức ở Trung tâm Hội nghị SECC hồi tháng 5/2015, chúng tôi đã phân phát hơn 2.000 tờ rơi giúp khách hàng nhận biết hàng thật – hàng giả thông qua các chi tiết trên sản phẩm như mã vạch, màu sắc, tem chống hàng giả…', 'news1.jpg', '2017-03-21 11:53:36'),
(2, 'Bộ cửa đi sang trọng được sử dụng rộng rãi ở các nhà hiện nay ử dụng rộng rãi ở các nhà hiện nay.', 'Vào 26/5 tại SECC, Công ty Jaan-E sẽ tổ chức hội chợ triển lãm bố thắng thương hiệu Elig sử dụng công nghệ tiên tiến E.F.T, phát triển nguyên liệu ma sát mới thân thiện với môi trường.', 'Để mở rộng mối quan hệ giao lưu và tạo cơ hội tìm hiểu các dòng sản phẩm bố thắng thương hiệu Elig, Công ty Jaan-E Việt Nam thuộc Tập đoàn Elig trân trọng kính mời quý khách hàng đến tham quan các gian hàng triển lãm của chúng tôi trong năm 2016.\r\n\r\nĐến với triển lãm lần này, chúng tôi mang đến những dòng sản phẩm mới với nhiều mẫu mã đa dạng, đạt yêu cầu cao và khắt khe về chất lượng cũng như giá thành nhằm tiết kiệm và bảo vệ an toàn tối đa cho người tiêu dùng. Qua đó, quý khách cũng sẽ nhận được nhiều phần quà hấp dẫn khi tham gia các trò chơi trong quá trình tham gia sự kiện.\r\n', 'new2.jpg', '2017-03-29 11:53:40'),
(3, 'Đồ gỗ mỹ nghệ làng đồng kị đang được xem xét là làng nghề truyền thống.', '\r\nBệnh máu nhiễm mỡ, bệnh gút và bệnh tiểu đường là những căn bệnh phổ biến của cuộc sống hiện tại. Những căn bệnh này nếu không được phát hiện và điều trị kịp thời sẽ để lại những biến chứng nguy hiểm đối với sức khỏe thậm chí có thể gây ra tử vong.', '- Benecheck Plus là máy đo đa năng, chỉ với một máy này bạn đã có thể kiểm tra được ba chỉ số: cholesterol toàn phần, glucose và acid uric với 3 loại que thử khác nhau dựa trên công nghệ cảm ứng sinh hoạc điện hóa tiên tiến, hiện đại trên thế giới. Sản phẩm đạt chứng nhận chất lượng châu Âu, do General Life Biotechnology Co., Ltd sản xuất.\r\n- Benecheck Plus cho kết quả chính xác trong vài giây, kết quả hiển thị rõ trên màn hình LCD giúp người dùng nhìn dễ dàng.\r\n- Máy đo Benecheck Plus có thiết kế nhỏ gọn, cách sử dụng đơn giản, dễ dàng sử dụng tại nhà, có thể mang đi công tác hoặc du lịch.\r\n- Máy Benecheck với chế độ bảo hành trọn đời, mang đến nhiều lợi ích cho người dùng.\r\nChất lượng tốt, tính tiện ích cao và tiết kiệm được chi phí khám bệnh, Benecheck hiện nay là sản phẩm được nhiều người lựa chọn sử dụng để theo dõi và chăm sóc sức khỏe tại nhà.- Benecheck Plus là máy đo đa năng, chỉ với một máy này bạn đã có thể kiểm tra được ba chỉ số: cholesterol toàn phần, glucose và acid uric với 3 loại que thử khác nhau dựa trên công nghệ cảm ứng sinh hoạc điện hóa tiên tiến, hiện đại trên thế giới. Sản phẩm đạt chứng nhận chất lượng châu Âu, do General Life Biotechnology Co., Ltd sản xuất.\r\n- Benecheck Plus cho kết quả chính xác trong vài giây, kết quả hiển thị rõ trên màn hình LCD giúp người dùng nhìn dễ dàng.\r\n- Máy đo Benecheck Plus có thiết kế nhỏ gọn, cách sử dụng đơn giản, dễ dàng sử dụng tại nhà, có thể mang đi công tác hoặc du lịch.\r\n- Máy Benecheck với chế độ bảo hành trọn đời, mang đến nhiều lợi ích cho người dùng.\r\nChất lượng tốt, tính tiện ích cao và tiết kiệm được chi phí khám bệnh, Benecheck hiện nay là sản phẩm được nhiều người lựa chọn sử dụng để theo dõi và chăm sóc sức khỏe tại nhà.- Benecheck Plus là máy đo đa năng, chỉ với một máy này bạn đã có thể kiểm tra được ba chỉ số: cholesterol toàn phần, glucose và acid uric với 3 loại que thử khác nhau dựa trên công nghệ cảm ứng sinh hoạc điện hóa tiên tiến, hiện đại trên thế giới. Sản phẩm đạt chứng nhận chất lượng châu Âu, do General Life Biotechnology Co., Ltd sản xuất.\r\n- Benecheck Plus cho kết quả chính xác trong vài giây, kết quả hiển thị rõ trên màn hình LCD giúp người dùng nhìn dễ dàng.\r\n- Máy đo Benecheck Plus có thiết kế nhỏ gọn, cách sử dụng đơn giản, dễ dàng sử dụng tại nhà, có thể mang đi công tác hoặc du lịch.\r\n- Máy Benecheck với chế độ bảo hành trọn đời, mang đến nhiều lợi ích cho người dùng.\r\nChất lượng tốt, tính tiện ích cao và tiết kiệm được chi phí khám bệnh, Benecheck hiện nay là sản phẩm được nhiều người lựa chọn sử dụng để theo dõi và chăm sóc sức khỏe tại nhà.- Benecheck Plus là máy đo đa năng, chỉ với một máy này bạn đã có thể kiểm tra được ba chỉ số: cholesterol toàn phần, glucose và acid uric với 3 loại que thử khác nhau dựa trên công nghệ cảm ứng sinh hoạc điện hóa tiên tiến, hiện đại trên thế giới. Sản phẩm đạt chứng nhận chất lượng châu Âu, do General Life Biotechnology Co., Ltd sản xuất.\r\n- Benecheck Plus cho kết quả chính xác trong vài giây, kết quả hiển thị rõ trên màn hình LCD giúp người dùng nhìn dễ dàng.\r\n- Máy đo Benecheck Plus có thiết kế nhỏ gọn, cách sử dụng đơn giản, dễ dàng sử dụng tại nhà, có thể mang đi công tác hoặc du lịch.\r\n- Máy Benecheck với chế độ bảo hành trọn đời, mang đến nhiều lợi ích cho người dùng.\r\nChất lượng tốt, tính tiện ích cao và tiết kiệm được chi phí khám bệnh, Benecheck hiện nay là sản phẩm được nhiều người lựa chọn sử dụng để theo dõi và chăm sóc sức khỏe tại nhà.- Benecheck Plus là máy đo đa năng, chỉ với một máy này bạn đã có thể kiểm tra được ba chỉ số: cholesterol toàn phần, glucose và acid uric với 3 loại que thử khác nhau dựa trên công nghệ cảm ứng sinh hoạc điện hóa tiên tiến, hiện đại trên thế giới. Sản phẩm đạt chứng nhận chất lượng châu Âu, do General Life Biotechnology Co., Ltd sản xuất.\r\n- Benecheck Plus cho kết quả chính xác trong vài giây, kết quả hiển thị rõ trên màn hình LCD giúp người dùng nhìn dễ dàng.\r\n- Máy đo Benecheck Plus có thiết kế nhỏ gọn, cách sử dụng đơn giản, dễ dàng sử dụng tại nhà, có thể mang đi công tác hoặc du lịch.\r\n- Máy Benecheck với chế độ bảo hành trọn đời, mang đến nhiều lợi ích cho người dùng.\r\nChất lượng tốt, tính tiện ích cao và tiết kiệm được chi phí khám bệnh, Benecheck hiện nay là sản phẩm được nhiều người lựa chọn sử dụng để theo dõi và chăm sóc sức khỏe tại nhà.- Benecheck Plus là máy đo đa năng, chỉ với một máy này bạn đã có thể kiểm tra được ba chỉ số: cholesterol toàn phần, glucose và acid uric với 3 loại que thử khác nhau dựa trên công nghệ cảm ứng sinh hoạc điện hóa tiên tiến, hiện đại trên thế giới. Sản phẩm đạt chứng nhận chất lượng châu Âu, do General Life Biotechnology Co., Ltd sản xuất.\r\n- Benecheck Plus cho kết quả chính xác trong vài giây, kết quả hiển thị rõ trên màn hình LCD giúp người dùng nhìn dễ dàng.\r\n- Máy đo Benecheck Plus có thiết kế nhỏ gọn, cách sử dụng đơn giản, dễ dàng sử dụng tại nhà, có thể mang đi công tác hoặc du lịch.\r\n- Máy Benecheck với chế độ bảo hành trọn đời, mang đến nhiều lợi ích cho người dùng.\r\nChất lượng tốt, tính tiện ích cao và tiết kiệm được chi phí khám bệnh, Benecheck hiện nay là sản phẩm được nhiều người lựa chọn sử dụng để theo dõi và chăm sóc sức khỏe tại nhà.- Benecheck Plus là máy đo đa năng, chỉ với một máy này bạn đã có thể kiểm tra được ba chỉ số: cholesterol toàn phần, glucose và acid uric với 3 loại que thử khác nhau dựa trên công nghệ cảm ứng sinh hoạc điện hóa tiên tiến, hiện đại trên thế giới. Sản phẩm đạt chứng nhận chất lượng châu Âu, do General Life Biotechnology Co., Ltd sản xuất.\r\n- Benecheck Plus cho kết quả chính xác trong vài giây, kết quả hiển thị rõ trên màn hình LCD giúp người dùng nhìn dễ dàng.\r\n- Máy đo Benecheck Plus có thiết kế nhỏ gọn, cách sử dụng đơn giản, dễ dàng sử dụng tại nhà, có thể mang đi công tác hoặc du lịch.\r\n- Máy Benecheck với chế độ bảo hành trọn đời, mang đến nhiều lợi ích cho người dùng.\r\nChất lượng tốt, tính tiện ích cao và tiết kiệm được chi phí khám bệnh, Benecheck hiện nay là sản phẩm được nhiều người lựa chọn sử dụng để theo dõi và chăm sóc sức khỏe tại nhà.- Benecheck Plus là máy đo đa năng, chỉ với một máy này bạn đã có thể kiểm tra được ba chỉ số: cholesterol toàn phần, glucose và acid uric với 3 loại que thử khác nhau dựa trên công nghệ cảm ứng sinh hoạc điện hóa tiên tiến, hiện đại trên thế giới. Sản phẩm đạt chứng nhận chất lượng châu Âu, do General Life Biotechnology Co., Ltd sản xuất.\r\n- Benecheck Plus cho kết quả chính xác trong vài giây, kết quả hiển thị rõ trên màn hình LCD giúp người dùng nhìn dễ dàng.\r\n- Máy đo Benecheck Plus có thiết kế nhỏ gọn, cách sử dụng đơn giản, dễ dàng sử dụng tại nhà, có thể mang đi công tác hoặc du lịch.\r\n- Máy Benecheck với chế độ bảo hành trọn đời, mang đến nhiều lợi ích cho người dùng.\r\nChất lượng tốt, tính tiện ích cao và tiết kiệm được chi phí khám bệnh, Benecheck hiện nay là sản phẩm được nhiều người lựa chọn sử dụng để theo dõi và chăm sóc sức khỏe tại nhà.', 'new3.jpg', '2017-03-27 11:53:43'),
(4, 'Giá gỗ lên cao nhiều người thu mua khó khăn khi mua gỗ ử dụng rộng rãi ở các nhà hiện nay.', 'Suy giãn tĩnh mạch chân chỉ sự suy giảm chức năng đưa máu trở về tim của hệ thống tĩnh mạch nằm ở vùng chân, do đó để phòng ngừa và điều trị kịp thời, người bệnh có thể dùng vớ y khoa nhằm giúp loại bỏ hiện tượng dâng máu trào ngược.', 'Sử dụng vớ y khoa để điều trị và phòng ngừa bệnh suy giãn tĩnh mạch chân là phương pháp được các chuyên gia y tế khuyên dùng. Sử dụng vớ y khoa giúp hạn chế tối đa các triệu chứng của bệnh gây ra vừa an toàn lại hiệu quả, không ảnh hưởng đến sinh hoạt hằng ngày.\r\nVớ y khoa là gì?\r\nVớ y khoa hay còn gọi là vớ áp lực, đây là phương pháp chủ lực trong hỗ trợ phòng và điều trị bệnh suy giãn tĩnh mạch. Vớ hoạt động trên cơ chế dùng áp lực của sợi vải tác động lên đôi chân giúp van trong tĩnh mạch khép kín lại, loại bỏ hiện tượng dâng máu trào ngược, từ đó giảm thiểu phù nề và đau đớn. Theo nhiều nghiên cứu, việc sử dụng vớ y khoa thường xuyên có hiệu quả điều trị lên đến 91%. Đặc biệt có thể mang vớ y khoa ở bất kỳ giai đoạn nào của bệnh.\r\n- Trường hợp bệnh nhẹ, khi có các triệu chứng: nặng nề, nóng chân, mỏi, chuột rút… có thể mang vớ áp lực thấp (CcI-I 15-21mmHg).Sử dụng vớ y khoa để điều trị và phòng ngừa bệnh suy giãn tĩnh mạch chân là phương pháp được các chuyên gia y tế khuyên dùng. Sử dụng vớ y khoa giúp hạn chế tối đa các triệu chứng của bệnh gây ra vừa an toàn lại hiệu quả, không ảnh hưởng đến sinh hoạt hằng ngày.\r\nVớ y khoa là gì?\r\nVớ y khoa hay còn gọi là vớ áp lực, đây là phương pháp chủ lực trong hỗ trợ phòng và điều trị bệnh suy giãn tĩnh mạch. Vớ hoạt động trên cơ chế dùng áp lực của sợi vải tác động lên đôi chân giúp van trong tĩnh mạch khép kín lại, loại bỏ hiện tượng dâng máu trào ngược, từ đó giảm thiểu phù nề và đau đớn. Theo nhiều nghiên cứu, việc sử dụng vớ y khoa thường xuyên có hiệu quả điều trị lên đến 91%. Đặc biệt có thể mang vớ y khoa ở bất kỳ giai đoạn nào của bệnh.\r\n- Trường hợp bệnh nhẹ, khi có các triệu chứng: nặng nề, nóng chân, mỏi, chuột rút… có thể mang vớ áp lực thấp (CcI-I 15-21mmHg).Sử dụng vớ y khoa để điều trị và phòng ngừa bệnh suy giãn tĩnh mạch chân là phương pháp được các chuyên gia y tế khuyên dùng. Sử dụng vớ y khoa giúp hạn chế tối đa các triệu chứng của bệnh gây ra vừa an toàn lại hiệu quả, không ảnh hưởng đến sinh hoạt hằng ngày.\r\nVớ y khoa là gì?\r\nVớ y khoa hay còn gọi là vớ áp lực, đây là phương pháp chủ lực trong hỗ trợ phòng và điều trị bệnh suy giãn tĩnh mạch. Vớ hoạt động trên cơ chế dùng áp lực của sợi vải tác động lên đôi chân giúp van trong tĩnh mạch khép kín lại, loại bỏ hiện tượng dâng máu trào ngược, từ đó giảm thiểu phù nề và đau đớn. Theo nhiều nghiên cứu, việc sử dụng vớ y khoa thường xuyên có hiệu quả điều trị lên đến 91%. Đặc biệt có thể mang vớ y khoa ở bất kỳ giai đoạn nào của bệnh.\r\n- Trường hợp bệnh nhẹ, khi có các triệu chứng: nặng nề, nóng chân, mỏi, chuột rút… có thể mang vớ áp lực thấp (CcI-I 15-21mmHg).Sử dụng vớ y khoa để điều trị và phòng ngừa bệnh suy giãn tĩnh mạch chân là phương pháp được các chuyên gia y tế khuyên dùng. Sử dụng vớ y khoa giúp hạn chế tối đa các triệu chứng của bệnh gây ra vừa an toàn lại hiệu quả, không ảnh hưởng đến sinh hoạt hằng ngày.\r\nVớ y khoa là gì?\r\nVớ y khoa hay còn gọi là vớ áp lực, đây là phương pháp chủ lực trong hỗ trợ phòng và điều trị bệnh suy giãn tĩnh mạch. Vớ hoạt động trên cơ chế dùng áp lực của sợi vải tác động lên đôi chân giúp van trong tĩnh mạch khép kín lại, loại bỏ hiện tượng dâng máu trào ngược, từ đó giảm thiểu phù nề và đau đớn. Theo nhiều nghiên cứu, việc sử dụng vớ y khoa thường xuyên có hiệu quả điều trị lên đến 91%. Đặc biệt có thể mang vớ y khoa ở bất kỳ giai đoạn nào của bệnh.\r\n- Trường hợp bệnh nhẹ, khi có các triệu chứng: nặng nề, nóng chân, mỏi, chuột rút… có thể mang vớ áp lực thấp (CcI-I 15-21mmHg).Sử dụng vớ y khoa để điều trị và phòng ngừa bệnh suy giãn tĩnh mạch chân là phương pháp được các chuyên gia y tế khuyên dùng. Sử dụng vớ y khoa giúp hạn chế tối đa các triệu chứng của bệnh gây ra vừa an toàn lại hiệu quả, không ảnh hưởng đến sinh hoạt hằng ngày.\r\nVớ y khoa là gì?\r\nVớ y khoa hay còn gọi là vớ áp lực, đây là phương pháp chủ lực trong hỗ trợ phòng và điều trị bệnh suy giãn tĩnh mạch. Vớ hoạt động trên cơ chế dùng áp lực của sợi vải tác động lên đôi chân giúp van trong tĩnh mạch khép kín lại, loại bỏ hiện tượng dâng máu trào ngược, từ đó giảm thiểu phù nề và đau đớn. Theo nhiều nghiên cứu, việc sử dụng vớ y khoa thường xuyên có hiệu quả điều trị lên đến 91%. Đặc biệt có thể mang vớ y khoa ở bất kỳ giai đoạn nào của bệnh.\r\n- Trường hợp bệnh nhẹ, khi có các triệu chứng: nặng nề, nóng chân, mỏi, chuột rút… có thể mang vớ áp lực thấp (CcI-I 15-21mmHg).Sử dụng vớ y khoa để điều trị và phòng ngừa bệnh suy giãn tĩnh mạch chân là phương pháp được các chuyên gia y tế khuyên dùng. Sử dụng vớ y khoa giúp hạn chế tối đa các triệu chứng của bệnh gây ra vừa an toàn lại hiệu quả, không ảnh hưởng đến sinh hoạt hằng ngày.\r\nVớ y khoa là gì?\r\nVớ y khoa hay còn gọi là vớ áp lực, đây là phương pháp chủ lực trong hỗ trợ phòng và điều trị bệnh suy giãn tĩnh mạch. Vớ hoạt động trên cơ chế dùng áp lực của sợi vải tác động lên đôi chân giúp van trong tĩnh mạch khép kín lại, loại bỏ hiện tượng dâng máu trào ngược, từ đó giảm thiểu phù nề và đau đớn. Theo nhiều nghiên cứu, việc sử dụng vớ y khoa thường xuyên có hiệu quả điều trị lên đến 91%. Đặc biệt có thể mang vớ y khoa ở bất kỳ giai đoạn nào của bệnh.\r\n- Trường hợp bệnh nhẹ, khi có các triệu chứng: nặng nề, nóng chân, mỏi, chuột rút… có thể mang vớ áp lực thấp (CcI-I 15-21mmHg).Sử dụng vớ y khoa để điều trị và phòng ngừa bệnh suy giãn tĩnh mạch chân là phương pháp được các chuyên gia y tế khuyên dùng. Sử dụng vớ y khoa giúp hạn chế tối đa các triệu chứng của bệnh gây ra vừa an toàn lại hiệu quả, không ảnh hưởng đến sinh hoạt hằng ngày.\r\nVớ y khoa là gì?\r\nVớ y khoa hay còn gọi là vớ áp lực, đây là phương pháp chủ lực trong hỗ trợ phòng và điều trị bệnh suy giãn tĩnh mạch. Vớ hoạt động trên cơ chế dùng áp lực của sợi vải tác động lên đôi chân giúp van trong tĩnh mạch khép kín lại, loại bỏ hiện tượng dâng máu trào ngược, từ đó giảm thiểu phù nề và đau đớn. Theo nhiều nghiên cứu, việc sử dụng vớ y khoa thường xuyên có hiệu quả điều trị lên đến 91%. Đặc biệt có thể mang vớ y khoa ở bất kỳ giai đoạn nào của bệnh.\r\n- Trường hợp bệnh nhẹ, khi có các triệu chứng: nặng nề, nóng chân, mỏi, chuột rút… có thể mang vớ áp lực thấp (CcI-I 15-21mmHg).Sử dụng vớ y khoa để điều trị và phòng ngừa bệnh suy giãn tĩnh mạch chân là phương pháp được các chuyên gia y tế khuyên dùng. Sử dụng vớ y khoa giúp hạn chế tối đa các triệu chứng của bệnh gây ra vừa an toàn lại hiệu quả, không ảnh hưởng đến sinh hoạt hằng ngày.\r\nVớ y khoa là gì?\r\nVớ y khoa hay còn gọi là vớ áp lực, đây là phương pháp chủ lực trong hỗ trợ phòng và điều trị bệnh suy giãn tĩnh mạch. Vớ hoạt động trên cơ chế dùng áp lực của sợi vải tác động lên đôi chân giúp van trong tĩnh mạch khép kín lại, loại bỏ hiện tượng dâng máu trào ngược, từ đó giảm thiểu phù nề và đau đớn. Theo nhiều nghiên cứu, việc sử dụng vớ y khoa thường xuyên có hiệu quả điều trị lên đến 91%. Đặc biệt có thể mang vớ y khoa ở bất kỳ giai đoạn nào của bệnh.\r\n- Trường hợp bệnh nhẹ, khi có các triệu chứng: nặng nề, nóng chân, mỏi, chuột rút… có thể mang vớ áp lực thấp (CcI-I 15-21mmHg).Sử dụng vớ y khoa để điều trị và phòng ngừa bệnh suy giãn tĩnh mạch chân là phương pháp được các chuyên gia y tế khuyên dùng. Sử dụng vớ y khoa giúp hạn chế tối đa các triệu chứng của bệnh gây ra vừa an toàn lại hiệu quả, không ảnh hưởng đến sinh hoạt hằng ngày.\r\nVớ y khoa là gì?\r\nVớ y khoa hay còn gọi là vớ áp lực, đây là phương pháp chủ lực trong hỗ trợ phòng và điều trị bệnh suy giãn tĩnh mạch. Vớ hoạt động trên cơ chế dùng áp lực của sợi vải tác động lên đôi chân giúp van trong tĩnh mạch khép kín lại, loại bỏ hiện tượng dâng máu trào ngược, từ đó giảm thiểu phù nề và đau đớn. Theo nhiều nghiên cứu, việc sử dụng vớ y khoa thường xuyên có hiệu quả điều trị lên đến 91%. Đặc biệt có thể mang vớ y khoa ở bất kỳ giai đoạn nào của bệnh.\r\n- Trường hợp bệnh nhẹ, khi có các triệu chứng: nặng nề, nóng chân, mỏi, chuột rút… có thể mang vớ áp lực thấp (CcI-I 15-21mmHg).Sử dụng vớ y khoa để điều trị và phòng ngừa bệnh suy giãn tĩnh mạch chân là phương pháp được các chuyên gia y tế khuyên dùng. Sử dụng vớ y khoa giúp hạn chế tối đa các triệu chứng của bệnh gây ra vừa an toàn lại hiệu quả, không ảnh hưởng đến sinh hoạt hằng ngày.\r\nVớ y khoa là gì?\r\nVớ y khoa hay còn gọi là vớ áp lực, đây là phương pháp chủ lực trong hỗ trợ phòng và điều trị bệnh suy giãn tĩnh mạch. Vớ hoạt động trên cơ chế dùng áp lực của sợi vải tác động lên đôi chân giúp van trong tĩnh mạch khép kín lại, loại bỏ hiện tượng dâng máu trào ngược, từ đó giảm thiểu phù nề và đau đớn. Theo nhiều nghiên cứu, việc sử dụng vớ y khoa thường xuyên có hiệu quả điều trị lên đến 91%. Đặc biệt có thể mang vớ y khoa ở bất kỳ giai đoạn nào của bệnh.\r\n- Trường hợp bệnh nhẹ, khi có các triệu chứng: nặng nề, nóng chân, mỏi, chuột rút… có thể mang vớ áp lực thấp (CcI-I 15-21mmHg).', 'new4.jpg', '2017-03-21 11:53:46'),
(6, 'Mối tình bí mật của Hoài Linh bất ngờ bị lộ trên truyền hình ử dụng rộng rãi ở các nhà hiện nay', '<p><strong>Ca sĩ H&agrave; My lần đầu chia sẻ về mối t&igrave;nh &acirc;m ỉ trong l&ograve;ng c&ocirc; mấy chục năm nay.</strong></p>\r\n\r\n<p><strong>Ca sĩ H&agrave; My lần đầu chia sẻ về mối t&igrave;nh &acirc;m ỉ trong l&ograve;ng c&ocirc; mấy chục năm nay.</strong></p>\r\n', '<p style="text-align:justify">Trong tập 3, ca sĩ Đ&agrave;m Vĩnh Hưng cũng g&oacute;p mặt để động vi&ecirc;n H&agrave; My. Ở tập trước, nữ ca sĩ đ&atilde; b&agrave;y tỏ l&ograve;ng biết ơn anh khi v&agrave;o năm 2005, c&ocirc; được Mr. Đ&agrave;m mời đi Mỹ lưu diễn v&agrave; trả c&aacute;t-x&ecirc; 1 tỷ đồng. Nhờ vậy, c&ocirc; đ&atilde; mua được căn nh&agrave;. Đ&agrave;m Vĩnh Hưng kh&ocirc;ng nhận c&ocirc;ng gi&uacute;p đỡ n&agrave;y về ph&iacute;a m&igrave;nh m&agrave; anh chia sẻ rất t&igrave;nh cảm v&agrave; khi&ecirc;m tốn. Anh cho biết, v&agrave;o năm 2005, nhận thấy H&agrave; My l&agrave; một ca sĩ c&oacute; nhiều khả năng, giọng h&aacute;t ngọt ng&agrave;o, đủ tầm để c&oacute; một vị tr&iacute; xứng đ&aacute;ng trong l&ograve;ng kh&aacute;n giả n&ecirc;n anh đ&atilde; giới thiệu c&ocirc; đi Mỹ lưu diễn. Sau một thời gian, H&agrave; My t&iacute;ch c&oacute;p được v&agrave; mua căn nh&agrave;. Anh rất mừng v&agrave; cảm động.</p>\r\n\r\n<p style="text-align:justify">&quot;&Ocirc;ng ho&agrave;ng nhạc Việt&quot; cũng chia sẻ th&ecirc;m, l&uacute;c H&agrave; My đang l&agrave; ca sĩ vedette th&igrave; anh c&ograve;n đang h&aacute;t l&oacute;t. Anh nhận x&eacute;t, sau tiếng h&aacute;t của Hương Lan th&igrave; giọng h&aacute;t ngọt ng&agrave;o, mượt m&agrave; v&agrave; chuẩn th&igrave; ở Việt Nam chỉ c&oacute; duy nhất H&agrave; My, kh&ocirc;ng chỉ ri&ecirc;ng anh m&agrave; rất nhiều nghệ sĩ đ&aacute;nh gi&aacute; như vậy.&nbsp;</p>\r\n\r\n<p style="text-align:justify">N&oacute;i về vấp ng&atilde; của H&agrave; My, Đ&agrave;m Vĩnh Hưng cho rằng tuổi trẻ ai cũng c&oacute; những sai lầm v&agrave; kh&ocirc;ng phải v&igrave; những điều đ&oacute; m&agrave; anh giận H&agrave; My. Theo anh, H&agrave; My c&oacute; khuyết điểm l&agrave; qu&aacute; nh&aacute;t v&agrave; sợ h&atilde;i kh&ocirc;ng d&aacute;m đương đầu mọi chuyện, lại rất tự ti n&ecirc;n kh&ocirc;ng bao giờ mở lời nhờ anh gi&uacute;p đỡ. Anh cam đoan, kể từ th&aacute;ng 3.2017 trở đi, bất kỳ show diễn n&agrave;o c&oacute; Đ&agrave;m Vĩnh Hưng th&igrave; sẽ c&oacute; H&agrave; My. Anh l&agrave;m điều n&agrave;y ho&agrave;n to&agrave;n tự nguyện, kh&ocirc;ng ai gợi &yacute; hay &eacute;p buộc m&agrave; xuất ph&aacute;t từ sự y&ecirc;u qu&yacute; của anh d&agrave;nh cho tiếng h&aacute;t của H&agrave; My. Anh cũng mong nữ ca sĩ sẽ kh&ocirc;ng tự ti, xấu hổ m&agrave; h&atilde;y tận dụng cơ hội cuối c&ugrave;ng n&agrave;y của m&igrave;nh để tỏa s&aacute;ng.</p>\r\n', 'ETx1_hinh-nen-dien-thoai-de-tai-am-nhac.jpg', '2017-03-27 11:53:50'),
(7, 'Hai công viên ở trung tâm Sài Gòn từng là nghĩa trang lớn', 'Công viên Lê Thị Riêng và Lê Văn Tám trước năm 1975 là nghĩa trang lớn, một dành cho giới thượng lưu, một là nơi chôn cất tầng lớp bình dân', 'Nơi này là chỗ an nghỉ của tầng lớp bình dân. Theo các cao niên, qua các thời kỳ chiến tranh, nhiều nấm mồ không tên mọc lên tại đây, mà đa số là của lính chết trận không người thân nhận xác. Trong ảnh tư liệu là cổng chính của nghĩa trang trước năm 1975 với bức tượng Địa tạng vương màu đen khá nổi tiếng, cao 5 - 6 m. Tượng này sau đó được di dời về Quan Âm tu viện ở Biên Hòa.Nơi này là chỗ an nghỉ của tầng lớp bình dân. Theo các cao niên, qua các thời kỳ chiến tranh, nhiều nấm mồ không tên mọc lên tại đây, mà đa số là của lính chết trận không người thân nhận xác. Trong ảnh tư liệu là cổng chính của nghĩa trang trước năm 1975 với bức tượng Địa tạng vương màu đen khá nổi tiếng, cao 5 - 6 m. Tượng này sau đó được di dời về Quan Âm tu viện ở Biên Hòa.Nơi này là chỗ an nghỉ của tầng lớp bình dân. Theo các cao niên, qua các thời kỳ chiến tranh, nhiều nấm mồ không tên mọc lên tại đây, mà đa số là của lính chết trận không người thân nhận xác. Trong ảnh tư liệu là cổng chính của nghĩa trang trước năm 1975 với bức tượng Địa tạng vương màu đen khá nổi tiếng, cao 5 - 6 m. Tượng này sau đó được di dời về Quan Âm tu viện ở Biên Hòa.Nơi này là chỗ an nghỉ của tầng lớp bình dân. Theo các cao niên, qua các thời kỳ chiến tranh, nhiều nấm mồ không tên mọc lên tại đây, mà đa số là của lính chết trận không người thân nhận xác. Trong ảnh tư liệu là cổng chính của nghĩa trang trước năm 1975 với bức tượng Địa tạng vương màu đen khá nổi tiếng, cao 5 - 6 m. Tượng này sau đó được di dời về Quan Âm tu viện ở Biên Hòa.Nơi này là chỗ an nghỉ của tầng lớp bình dân. Theo các cao niên, qua các thời kỳ chiến tranh, nhiều nấm mồ không tên mọc lên tại đây, mà đa số là của lính chết trận không người thân nhận xác. Trong ảnh tư liệu là cổng chính của nghĩa trang trước năm 1975 với bức tượng Địa tạng vương màu đen khá nổi tiếng, cao 5 - 6 m. Tượng này sau đó được di dời về Quan Âm tu viện ở Biên Hòa.Nơi này là chỗ an nghỉ của tầng lớp bình dân. Theo các cao niên, qua các thời kỳ chiến tranh, nhiều nấm mồ không tên mọc lên tại đây, mà đa số là của lính chết trận không người thân nhận xác. Trong ảnh tư liệu là cổng chính của nghĩa trang trước năm 1975 với bức tượng Địa tạng vương màu đen khá nổi tiếng, cao 5 - 6 m. Tượng này sau đó được di dời về Quan Âm tu viện ở Biên Hòa.Nơi này là chỗ an nghỉ của tầng lớp bình dân. Theo các cao niên, qua các thời kỳ chiến tranh, nhiều nấm mồ không tên mọc lên tại đây, mà đa số là của lính chết trận không người thân nhận xác. Trong ảnh tư liệu là cổng chính của nghĩa trang trước năm 1975 với bức tượng Địa tạng vương màu đen khá nổi tiếng, cao 5 - 6 m. Tượng này sau đó được di dời về Quan Âm tu viện ở Biên Hòa.Nơi này là chỗ an nghỉ của tầng lớp bình dân. Theo các cao niên, qua các thời kỳ chiến tranh, nhiều nấm mồ không tên mọc lên tại đây, mà đa số là của lính chết trận không người thân nhận xác. Trong ảnh tư liệu là cổng chính của nghĩa trang trước năm 1975 với bức tượng Địa tạng vương màu đen khá nổi tiếng, cao 5 - 6 m. Tượng này sau đó được di dời về Quan Âm tu viện ở Biên Hòa.Nơi này là chỗ an nghỉ của tầng lớp bình dân. Theo các cao niên, qua các thời kỳ chiến tranh, nhiều nấm mồ không tên mọc lên tại đây, mà đa số là của lính chết trận không người thân nhận xác. Trong ảnh tư liệu là cổng chính của nghĩa trang trước năm 1975 với bức tượng Địa tạng vương màu đen khá nổi tiếng, cao 5 - 6 m. Tượng này sau đó được di dời về Quan Âm tu viện ở Biên Hòa.', 'new4.jpg', '2017-03-19 10:45:10'),
(8, 'Chàng trai Hà Nội phẫu thuật cắt xương sườn để có eo thon', 'Phạm Công Minh chi 750 triệu đồng cho ca phẫu thuật cắt xương sườn số 10 tại Hàn Quốc với mong muốn sẽ có vòng eo "con kiến".', 'Khảo sát trên 127.000 người Mỹ cho thấy kết hôn sau tuổi 25 đem lại cảm giác an toàn cho phái mạnh và càng duy trì cuộc hôn nhân lâu, đấng mày râu càng sống thọ.\r\n\r\nBên cạnh đó, tờ Journal of Epidemiology & Community Health chỉ ra nguy cơ tử vong của đàn ông và phụ nữ có ít nhất một đứa con thấp hơn bạn đồng trang lứa không có con. Bước vào tuổi 60, sự khác biệt về tuổi thọ của người có con và người không có con là 2 năm với đàn ông và 1,5 năm với phụ nữ. Đến tuổi 80, các ông bố sống thọ hơn nam giới không có con 8 tháng. Khoảng cách này ở phái đẹp là 7 tháng. Nguyên nhân được cho là sinh con giúp cha mẹ sống khoa học, lành mạnh.Khảo sát trên 127.000 người Mỹ cho thấy kết hôn sau tuổi 25 đem lại cảm giác an toàn cho phái mạnh và càng duy trì cuộc hôn nhân lâu, đấng mày râu càng sống thọ.\r\n\r\nBên cạnh đó, tờ Journal of Epidemiology & Community Health chỉ ra nguy cơ tử vong của đàn ông và phụ nữ có ít nhất một đứa con thấp hơn bạn đồng trang lứa không có con. Bước vào tuổi 60, sự khác biệt về tuổi thọ của người có con và người không có con là 2 năm với đàn ông và 1,5 năm với phụ nữ. Đến tuổi 80, các ông bố sống thọ hơn nam giới không có con 8 tháng. Khoảng cách này ở phái đẹp là 7 tháng. Nguyên nhân được cho là sinh con giúp cha mẹ sống khoa học, lành mạnh.Khảo sát trên 127.000 người Mỹ cho thấy kết hôn sau tuổi 25 đem lại cảm giác an toàn cho phái mạnh và càng duy trì cuộc hôn nhân lâu, đấng mày râu càng sống thọ.\r\n\r\nBên cạnh đó, tờ Journal of Epidemiology & Community Health chỉ ra nguy cơ tử vong của đàn ông và phụ nữ có ít nhất một đứa con thấp hơn bạn đồng trang lứa không có con. Bước vào tuổi 60, sự khác biệt về tuổi thọ của người có con và người không có con là 2 năm với đàn ông và 1,5 năm với phụ nữ. Đến tuổi 80, các ông bố sống thọ hơn nam giới không có con 8 tháng. Khoảng cách này ở phái đẹp là 7 tháng. Nguyên nhân được cho là sinh con giúp cha mẹ sống khoa học, lành mạnh.Khảo sát trên 127.000 người Mỹ cho thấy kết hôn sau tuổi 25 đem lại cảm giác an toàn cho phái mạnh và càng duy trì cuộc hôn nhân lâu, đấng mày râu càng sống thọ.\r\n\r\nBên cạnh đó, tờ Journal of Epidemiology & Community Health chỉ ra nguy cơ tử vong của đàn ông và phụ nữ có ít nhất một đứa con thấp hơn bạn đồng trang lứa không có con. Bước vào tuổi 60, sự khác biệt về tuổi thọ của người có con và người không có con là 2 năm với đàn ông và 1,5 năm với phụ nữ. Đến tuổi 80, các ông bố sống thọ hơn nam giới không có con 8 tháng. Khoảng cách này ở phái đẹp là 7 tháng. Nguyên nhân được cho là sinh con giúp cha mẹ sống khoa học, lành mạnh.Khảo sát trên 127.000 người Mỹ cho thấy kết hôn sau tuổi 25 đem lại cảm giác an toàn cho phái mạnh và càng duy trì cuộc hôn nhân lâu, đấng mày râu càng sống thọ.\r\n\r\nBên cạnh đó, tờ Journal of Epidemiology & Community Health chỉ ra nguy cơ tử vong của đàn ông và phụ nữ có ít nhất một đứa con thấp hơn bạn đồng trang lứa không có con. Bước vào tuổi 60, sự khác biệt về tuổi thọ của người có con và người không có con là 2 năm với đàn ông và 1,5 năm với phụ nữ. Đến tuổi 80, các ông bố sống thọ hơn nam giới không có con 8 tháng. Khoảng cách này ở phái đẹp là 7 tháng. Nguyên nhân được cho là sinh con giúp cha mẹ sống khoa học, lành mạnh.Khảo sát trên 127.000 người Mỹ cho thấy kết hôn sau tuổi 25 đem lại cảm giác an toàn cho phái mạnh và càng duy trì cuộc hôn nhân lâu, đấng mày râu càng sống thọ.\r\n\r\nBên cạnh đó, tờ Journal of Epidemiology & Community Health chỉ ra nguy cơ tử vong của đàn ông và phụ nữ có ít nhất một đứa con thấp hơn bạn đồng trang lứa không có con. Bước vào tuổi 60, sự khác biệt về tuổi thọ của người có con và người không có con là 2 năm với đàn ông và 1,5 năm với phụ nữ. Đến tuổi 80, các ông bố sống thọ hơn nam giới không có con 8 tháng. Khoảng cách này ở phái đẹp là 7 tháng. Nguyên nhân được cho là sinh con giúp cha mẹ sống khoa học, lành mạnh.Khảo sát trên 127.000 người Mỹ cho thấy kết hôn sau tuổi 25 đem lại cảm giác an toàn cho phái mạnh và càng duy trì cuộc hôn nhân lâu, đấng mày râu càng sống thọ.\r\n\r\nBên cạnh đó, tờ Journal of Epidemiology & Community Health chỉ ra nguy cơ tử vong của đàn ông và phụ nữ có ít nhất một đứa con thấp hơn bạn đồng trang lứa không có con. Bước vào tuổi 60, sự khác biệt về tuổi thọ của người có con và người không có con là 2 năm với đàn ông và 1,5 năm với phụ nữ. Đến tuổi 80, các ông bố sống thọ hơn nam giới không có con 8 tháng. Khoảng cách này ở phái đẹp là 7 tháng. Nguyên nhân được cho là sinh con giúp cha mẹ sống khoa học, lành mạnh.Khảo sát trên 127.000 người Mỹ cho thấy kết hôn sau tuổi 25 đem lại cảm giác an toàn cho phái mạnh và càng duy trì cuộc hôn nhân lâu, đấng mày râu càng sống thọ.\r\n\r\nBên cạnh đó, tờ Journal of Epidemiology & Community Health chỉ ra nguy cơ tử vong của đàn ông và phụ nữ có ít nhất một đứa con thấp hơn bạn đồng trang lứa không có con. Bước vào tuổi 60, sự khác biệt về tuổi thọ của người có con và người không có con là 2 năm với đàn ông và 1,5 năm với phụ nữ. Đến tuổi 80, các ông bố sống thọ hơn nam giới không có con 8 tháng. Khoảng cách này ở phái đẹp là 7 tháng. Nguyên nhân được cho là sinh con giúp cha mẹ sống khoa học, lành mạnh.', 'news1.jpg', '2017-03-19 11:43:29');
INSERT INTO `news` (`id`, `title`, `description`, `content`, `images`, `created_at`) VALUES
(9, 'Đồ gỗ, mỹ nghệ cho mùa tết', 'TT -  Hơn 95% gian hàng tại hội chợ là các sản phẩm gỗ và đồ mỹ nghệ với nhiều chất liệu gỗ từ bình dân đến cao cấp, phong phú về chủng loại và giá cả.', 'Hội chợ triển lãm gỗ, mỹ nghệ và trang trí nội thất diễn ra từ ngày 10 đến 17-1 tại công viên Gia Định (Gò Vấp, TP.HCM), do Trung ương Hội Nông dân Việt Nam phối hợp với Hiệp hội Gỗ và lâm sản Việt Nam tổ chức, đã thu hút hơn 450 gian hàng của 200 doanh nghiệp trong cả nước.\r\n\r\nTheo ban tổ chức, hơn 95% gian hàng tại hội chợ là các sản phẩm gỗ và đồ mỹ nghệ với nhiều chất liệu gỗ từ bình dân đến cao cấp, phong phú về chủng loại và giá cả.Hội chợ triển lãm gỗ, mỹ nghệ và trang trí nội thất diễn ra từ ngày 10 đến 17-1 tại công viên Gia Định (Gò Vấp, TP.HCM), do Trung ương Hội Nông dân Việt Nam phối hợp với Hiệp hội Gỗ và lâm sản Việt Nam tổ chức, đã thu hút hơn 450 gian hàng của 200 doanh nghiệp trong cả nước.\r\n\r\nTheo ban tổ chức, hơn 95% gian hàng tại hội chợ là các sản phẩm gỗ và đồ mỹ nghệ với nhiều chất liệu gỗ từ bình dân đến cao cấp, phong phú về chủng loại và giá cả.Hội chợ triển lãm gỗ, mỹ nghệ và trang trí nội thất diễn ra từ ngày 10 đến 17-1 tại công viên Gia Định (Gò Vấp, TP.HCM), do Trung ương Hội Nông dân Việt Nam phối hợp với Hiệp hội Gỗ và lâm sản Việt Nam tổ chức, đã thu hút hơn 450 gian hàng của 200 doanh nghiệp trong cả nước.\r\n\r\nTheo ban tổ chức, hơn 95% gian hàng tại hội chợ là các sản phẩm gỗ và đồ mỹ nghệ với nhiều chất liệu gỗ từ bình dân đến cao cấp, phong phú về chủng loại và giá cả.Hội chợ triển lãm gỗ, mỹ nghệ và trang trí nội thất diễn ra từ ngày 10 đến 17-1 tại công viên Gia Định (Gò Vấp, TP.HCM), do Trung ương Hội Nông dân Việt Nam phối hợp với Hiệp hội Gỗ và lâm sản Việt Nam tổ chức, đã thu hút hơn 450 gian hàng của 200 doanh nghiệp trong cả nước.\r\n\r\nTheo ban tổ chức, hơn 95% gian hàng tại hội chợ là các sản phẩm gỗ và đồ mỹ nghệ với nhiều chất liệu gỗ từ bình dân đến cao cấp, phong phú về chủng loại và giá cả.Hội chợ triển lãm gỗ, mỹ nghệ và trang trí nội thất diễn ra từ ngày 10 đến 17-1 tại công viên Gia Định (Gò Vấp, TP.HCM), do Trung ương Hội Nông dân Việt Nam phối hợp với Hiệp hội Gỗ và lâm sản Việt Nam tổ chức, đã thu hút hơn 450 gian hàng của 200 doanh nghiệp trong cả nước.\r\n\r\nTheo ban tổ chức, hơn 95% gian hàng tại hội chợ là các sản phẩm gỗ và đồ mỹ nghệ với nhiều chất liệu gỗ từ bình dân đến cao cấp, phong phú về chủng loại và giá cả.Hội chợ triển lãm gỗ, mỹ nghệ và trang trí nội thất diễn ra từ ngày 10 đến 17-1 tại công viên Gia Định (Gò Vấp, TP.HCM), do Trung ương Hội Nông dân Việt Nam phối hợp với Hiệp hội Gỗ và lâm sản Việt Nam tổ chức, đã thu hút hơn 450 gian hàng của 200 doanh nghiệp trong cả nước.\r\n\r\nTheo ban tổ chức, hơn 95% gian hàng tại hội chợ là các sản phẩm gỗ và đồ mỹ nghệ với nhiều chất liệu gỗ từ bình dân đến cao cấp, phong phú về chủng loại và giá cả.Hội chợ triển lãm gỗ, mỹ nghệ và trang trí nội thất diễn ra từ ngày 10 đến 17-1 tại công viên Gia Định (Gò Vấp, TP.HCM), do Trung ương Hội Nông dân Việt Nam phối hợp với Hiệp hội Gỗ và lâm sản Việt Nam tổ chức, đã thu hút hơn 450 gian hàng của 200 doanh nghiệp trong cả nước.\r\n\r\nTheo ban tổ chức, hơn 95% gian hàng tại hội chợ là các sản phẩm gỗ và đồ mỹ nghệ với nhiều chất liệu gỗ từ bình dân đến cao cấp, phong phú về chủng loại và giá cả.Hội chợ triển lãm gỗ, mỹ nghệ và trang trí nội thất diễn ra từ ngày 10 đến 17-1 tại công viên Gia Định (Gò Vấp, TP.HCM), do Trung ương Hội Nông dân Việt Nam phối hợp với Hiệp hội Gỗ và lâm sản Việt Nam tổ chức, đã thu hút hơn 450 gian hàng của 200 doanh nghiệp trong cả nước.\r\n\r\nTheo ban tổ chức, hơn 95% gian hàng tại hội chợ là các sản phẩm gỗ và đồ mỹ nghệ với nhiều chất liệu gỗ từ bình dân đến cao cấp, phong phú về chủng loại và giá cả.Hội chợ triển lãm gỗ, mỹ nghệ và trang trí nội thất diễn ra từ ngày 10 đến 17-1 tại công viên Gia Định (Gò Vấp, TP.HCM), do Trung ương Hội Nông dân Việt Nam phối hợp với Hiệp hội Gỗ và lâm sản Việt Nam tổ chức, đã thu hút hơn 450 gian hàng của 200 doanh nghiệp trong cả nước.\r\n\r\nTheo ban tổ chức, hơn 95% gian hàng tại hội chợ là các sản phẩm gỗ và đồ mỹ nghệ với nhiều chất liệu gỗ từ bình dân đến cao cấp, phong phú về chủng loại và giá cả.Hội chợ triển lãm gỗ, mỹ nghệ và trang trí nội thất diễn ra từ ngày 10 đến 17-1 tại công viên Gia Định (Gò Vấp, TP.HCM), do Trung ương Hội Nông dân Việt Nam phối hợp với Hiệp hội Gỗ và lâm sản Việt Nam tổ chức, đã thu hút hơn 450 gian hàng của 200 doanh nghiệp trong cả nước.\r\n\r\nTheo ban tổ chức, hơn 95% gian hàng tại hội chợ là các sản phẩm gỗ và đồ mỹ nghệ với nhiều chất liệu gỗ từ bình dân đến cao cấp, phong phú về chủng loại và giá cả.', '1.jpg', '2017-03-19 10:50:06'),
(10, 'Đồ gỗ giảm phụ thuộc vào Trung Quốc', 'TT - Tại buổi hội thảo “Cơ hội cho ngành chế biến gỗ và thủ công mỹ nghệ VN giai đoạn hiện nay”, vừa được Hội Mỹ nghệ và chế biến gỗ TP.HCM (HAWA) tổ chức, ông Trần Việt Tiến - giám đốc Công ty CP mỹ thuật Gia Long - kêu gọi các doanh nghiệp trong ngành đồ gỗ cần liên kết để nâng cao chất lượng sản phẩm gỗ nhằm tăng khả năng xuất khẩu sang thị trường châu Âu và Mỹ, những thị trường hiện đang có nhu cầu rất lớn sản phẩm đồ gỗ.', 'Ông Huỳnh Văn Hạnh, phó chủ tịch Hawa, cho biết sẽ đẩy mạnh phát triển mô hình “ngôi nhà chung”, các doanh nghiệp liên kết với nhau nhằm nâng cao chất lượng sản phẩm gỗ, hạn chế phụ thuộc vào thị trường Trung Quốc.Ông Huỳnh Văn Hạnh, phó chủ tịch Hawa, cho biết sẽ đẩy mạnh phát triển mô hình “ngôi nhà chung”, các doanh nghiệp liên kết với nhau nhằm nâng cao chất lượng sản phẩm gỗ, hạn chế phụ thuộc vào thị trường Trung Quốc.Ông Huỳnh Văn Hạnh, phó chủ tịch Hawa, cho biết sẽ đẩy mạnh phát triển mô hình “ngôi nhà chung”, các doanh nghiệp liên kết với nhau nhằm nâng cao chất lượng sản phẩm gỗ, hạn chế phụ thuộc vào thị trường Trung Quốc.Ông Huỳnh Văn Hạnh, phó chủ tịch Hawa, cho biết sẽ đẩy mạnh phát triển mô hình “ngôi nhà chung”, các doanh nghiệp liên kết với nhau nhằm nâng cao chất lượng sản phẩm gỗ, hạn chế phụ thuộc vào thị trường Trung Quốc.Ông Huỳnh Văn Hạnh, phó chủ tịch Hawa, cho biết sẽ đẩy mạnh phát triển mô hình “ngôi nhà chung”, các doanh nghiệp liên kết với nhau nhằm nâng cao chất lượng sản phẩm gỗ, hạn chế phụ thuộc vào thị trường Trung Quốc.Ông Huỳnh Văn Hạnh, phó chủ tịch Hawa, cho biết sẽ đẩy mạnh phát triển mô hình “ngôi nhà chung”, các doanh nghiệp liên kết với nhau nhằm nâng cao chất lượng sản phẩm gỗ, hạn chế phụ thuộc vào thị trường Trung Quốc.Ông Huỳnh Văn Hạnh, phó chủ tịch Hawa, cho biết sẽ đẩy mạnh phát triển mô hình “ngôi nhà chung”, các doanh nghiệp liên kết với nhau nhằm nâng cao chất lượng sản phẩm gỗ, hạn chế phụ thuộc vào thị trường Trung Quốc.Ông Huỳnh Văn Hạnh, phó chủ tịch Hawa, cho biết sẽ đẩy mạnh phát triển mô hình “ngôi nhà chung”, các doanh nghiệp liên kết với nhau nhằm nâng cao chất lượng sản phẩm gỗ, hạn chế phụ thuộc vào thị trường Trung Quốc.Ông Huỳnh Văn Hạnh, phó chủ tịch Hawa, cho biết sẽ đẩy mạnh phát triển mô hình “ngôi nhà chung”, các doanh nghiệp liên kết với nhau nhằm nâng cao chất lượng sản phẩm gỗ, hạn chế phụ thuộc vào thị trường Trung Quốc.Ông Huỳnh Văn Hạnh, phó chủ tịch Hawa, cho biết sẽ đẩy mạnh phát triển mô hình “ngôi nhà chung”, các doanh nghiệp liên kết với nhau nhằm nâng cao chất lượng sản phẩm gỗ, hạn chế phụ thuộc vào thị trường Trung Quốc.Ông Huỳnh Văn Hạnh, phó chủ tịch Hawa, cho biết sẽ đẩy mạnh phát triển mô hình “ngôi nhà chung”, các doanh nghiệp liên kết với nhau nhằm nâng cao chất lượng sản phẩm gỗ, hạn chế phụ thuộc vào thị trường Trung Quốc.Ông Huỳnh Văn Hạnh, phó chủ tịch Hawa, cho biết sẽ đẩy mạnh phát triển mô hình “ngôi nhà chung”, các doanh nghiệp liên kết với nhau nhằm nâng cao chất lượng sản phẩm gỗ, hạn chế phụ thuộc vào thị trường Trung Quốc.', '2.jpg', '2017-03-19 11:43:16'),
(11, 'Xe buýt đụng xe tải, 3 người chết, 15 học sinh bị thương', 'TTO - Xe tải đang quay đầu xe, đuôi xe đưa ra giữa đường. Đúng thời điểm này, chiếc xe buýt đưa đón nhiều học sinh trường THPT Trần Hưng Đạo lao tới. 2 học sinh cùng tài xế xe buýt tử vong, 15 học sinh cấp cứu.', 'Chiều 18-3, ông Nguyễn Hữu Quế - giám đốc Sở GTVT tỉnh Gia Lai – cho biết đã có ba trường hợp tử vong trong vụ tai nạn giao thông xảy ra trưa nay trên quốc lộ 19 đoạn qua khu rừng thông gần trại giam Gia Trung (huyện Mang Yang, tỉnh Gia Lai).\r\n\r\n“Chúng tôi đang tổ chức thăm hỏi các trường hợp tử vong gồm hai học sinh (một trường hợp học lớp 11 và một trường hợp học lớp 12 Trường THPT Trần Hưng Đạo, Gia Lai) và tài xế chạy chiếc xe bus chở học sinh đi học. \r\n\r\nHiện nay trong số các nạn nhân trong vụ tai nạn đang có ba cháu nguy kịch, được đưa đi chụp citi, cấp cứu tại bệnh viện, số còn lại bị xây xát nhẹ” ông Quế thông tin.\r\n\r\nChiều cùng ngày, chủ tịch UBND tỉnh Gia Lai ông Võ Ngọc Thành cũng cho biết đang tập trung chỉ đạo giải quyết hậu quả vụ tai nạn, thăm hỏi thân nhân những người có con em tử vong trong vụ tai nạn đặc biệt nghiêm trọng này.Chiều 18-3, ông Nguyễn Hữu Quế - giám đốc Sở GTVT tỉnh Gia Lai – cho biết đã có ba trường hợp tử vong trong vụ tai nạn giao thông xảy ra trưa nay trên quốc lộ 19 đoạn qua khu rừng thông gần trại giam Gia Trung (huyện Mang Yang, tỉnh Gia Lai).\r\n\r\n“Chúng tôi đang tổ chức thăm hỏi các trường hợp tử vong gồm hai học sinh (một trường hợp học lớp 11 và một trường hợp học lớp 12 Trường THPT Trần Hưng Đạo, Gia Lai) và tài xế chạy chiếc xe bus chở học sinh đi học. \r\n\r\nHiện nay trong số các nạn nhân trong vụ tai nạn đang có ba cháu nguy kịch, được đưa đi chụp citi, cấp cứu tại bệnh viện, số còn lại bị xây xát nhẹ” ông Quế thông tin.\r\n\r\nChiều cùng ngày, chủ tịch UBND tỉnh Gia Lai ông Võ Ngọc Thành cũng cho biết đang tập trung chỉ đạo giải quyết hậu quả vụ tai nạn, thăm hỏi thân nhân những người có con em tử vong trong vụ tai nạn đặc biệt nghiêm trọng này.Chiều 18-3, ông Nguyễn Hữu Quế - giám đốc Sở GTVT tỉnh Gia Lai – cho biết đã có ba trường hợp tử vong trong vụ tai nạn giao thông xảy ra trưa nay trên quốc lộ 19 đoạn qua khu rừng thông gần trại giam Gia Trung (huyện Mang Yang, tỉnh Gia Lai).\r\n\r\n“Chúng tôi đang tổ chức thăm hỏi các trường hợp tử vong gồm hai học sinh (một trường hợp học lớp 11 và một trường hợp học lớp 12 Trường THPT Trần Hưng Đạo, Gia Lai) và tài xế chạy chiếc xe bus chở học sinh đi học. \r\n\r\nHiện nay trong số các nạn nhân trong vụ tai nạn đang có ba cháu nguy kịch, được đưa đi chụp citi, cấp cứu tại bệnh viện, số còn lại bị xây xát nhẹ” ông Quế thông tin.\r\n\r\nChiều cùng ngày, chủ tịch UBND tỉnh Gia Lai ông Võ Ngọc Thành cũng cho biết đang tập trung chỉ đạo giải quyết hậu quả vụ tai nạn, thăm hỏi thân nhân những người có con em tử vong trong vụ tai nạn đặc biệt nghiêm trọng này.Chiều 18-3, ông Nguyễn Hữu Quế - giám đốc Sở GTVT tỉnh Gia Lai – cho biết đã có ba trường hợp tử vong trong vụ tai nạn giao thông xảy ra trưa nay trên quốc lộ 19 đoạn qua khu rừng thông gần trại giam Gia Trung (huyện Mang Yang, tỉnh Gia Lai).\r\n\r\n“Chúng tôi đang tổ chức thăm hỏi các trường hợp tử vong gồm hai học sinh (một trường hợp học lớp 11 và một trường hợp học lớp 12 Trường THPT Trần Hưng Đạo, Gia Lai) và tài xế chạy chiếc xe bus chở học sinh đi học. \r\n\r\nHiện nay trong số các nạn nhân trong vụ tai nạn đang có ba cháu nguy kịch, được đưa đi chụp citi, cấp cứu tại bệnh viện, số còn lại bị xây xát nhẹ” ông Quế thông tin.\r\n\r\nChiều cùng ngày, chủ tịch UBND tỉnh Gia Lai ông Võ Ngọc Thành cũng cho biết đang tập trung chỉ đạo giải quyết hậu quả vụ tai nạn, thăm hỏi thân nhân những người có con em tử vong trong vụ tai nạn đặc biệt nghiêm trọng này.Chiều 18-3, ông Nguyễn Hữu Quế - giám đốc Sở GTVT tỉnh Gia Lai – cho biết đã có ba trường hợp tử vong trong vụ tai nạn giao thông xảy ra trưa nay trên quốc lộ 19 đoạn qua khu rừng thông gần trại giam Gia Trung (huyện Mang Yang, tỉnh Gia Lai).\r\n\r\n“Chúng tôi đang tổ chức thăm hỏi các trường hợp tử vong gồm hai học sinh (một trường hợp học lớp 11 và một trường hợp học lớp 12 Trường THPT Trần Hưng Đạo, Gia Lai) và tài xế chạy chiếc xe bus chở học sinh đi học. \r\n\r\nHiện nay trong số các nạn nhân trong vụ tai nạn đang có ba cháu nguy kịch, được đưa đi chụp citi, cấp cứu tại bệnh viện, số còn lại bị xây xát nhẹ” ông Quế thông tin.\r\n\r\nChiều cùng ngày, chủ tịch UBND tỉnh Gia Lai ông Võ Ngọc Thành cũng cho biết đang tập trung chỉ đạo giải quyết hậu quả vụ tai nạn, thăm hỏi thân nhân những người có con em tử vong trong vụ tai nạn đặc biệt nghiêm trọng này.Chiều 18-3, ông Nguyễn Hữu Quế - giám đốc Sở GTVT tỉnh Gia Lai – cho biết đã có ba trường hợp tử vong trong vụ tai nạn giao thông xảy ra trưa nay trên quốc lộ 19 đoạn qua khu rừng thông gần trại giam Gia Trung (huyện Mang Yang, tỉnh Gia Lai).\r\n\r\n“Chúng tôi đang tổ chức thăm hỏi các trường hợp tử vong gồm hai học sinh (một trường hợp học lớp 11 và một trường hợp học lớp 12 Trường THPT Trần Hưng Đạo, Gia Lai) và tài xế chạy chiếc xe bus chở học sinh đi học. \r\n\r\nHiện nay trong số các nạn nhân trong vụ tai nạn đang có ba cháu nguy kịch, được đưa đi chụp citi, cấp cứu tại bệnh viện, số còn lại bị xây xát nhẹ” ông Quế thông tin.\r\n\r\nChiều cùng ngày, chủ tịch UBND tỉnh Gia Lai ông Võ Ngọc Thành cũng cho biết đang tập trung chỉ đạo giải quyết hậu quả vụ tai nạn, thăm hỏi thân nhân những người có con em tử vong trong vụ tai nạn đặc biệt nghiêm trọng này.', '3.jpg', '2017-03-19 11:52:38'),
(12, 'Thư mời tham dự Hội chợ Triển lãm thương hiệu Elig', 'Công ty TNHH Jaan-E thuộc Tập đoàn Elig kính mời Quý đối tác, khách hàng tham dự Automechanika giới thiệu dòng sản phẩm mới của thương hiệu bố thắng Elig diễn ra từ 15/3 tại SECC, Q.7-TP.HCM.', 'Đến với triển lãm lần này, chúng tôi mang đến những dòng sản phẩm mới với các mẫu mã đa dạng, đạt yêu cầu cao và khắt khe về chất lượng cũng như giá thành nhằm tiết kiệm và bảo vệ an toàn tối đa cho người tiêu dùng. Qua đó, Quý khách cũng sẽ nhận được nhiều phần quà hấp dẫn khi tham gia các trò chơi trong quá trình tham gia sự kiện.Đến với triển lãm lần này, chúng tôi mang đến những dòng sản phẩm mới với các mẫu mã đa dạng, đạt yêu cầu cao và khắt khe về chất lượng cũng như giá thành nhằm tiết kiệm và bảo vệ an toàn tối đa cho người tiêu dùng. Qua đó, Quý khách cũng sẽ nhận được nhiều phần quà hấp dẫn khi tham gia các trò chơi trong quá trình tham gia sự kiện.Đến với triển lãm lần này, chúng tôi mang đến những dòng sản phẩm mới với các mẫu mã đa dạng, đạt yêu cầu cao và khắt khe về chất lượng cũng như giá thành nhằm tiết kiệm và bảo vệ an toàn tối đa cho người tiêu dùng. Qua đó, Quý khách cũng sẽ nhận được nhiều phần quà hấp dẫn khi tham gia các trò chơi trong quá trình tham gia sự kiện.Đến với triển lãm lần này, chúng tôi mang đến những dòng sản phẩm mới với các mẫu mã đa dạng, đạt yêu cầu cao và khắt khe về chất lượng cũng như giá thành nhằm tiết kiệm và bảo vệ an toàn tối đa cho người tiêu dùng. Qua đó, Quý khách cũng sẽ nhận được nhiều phần quà hấp dẫn khi tham gia các trò chơi trong quá trình tham gia sự kiện.Đến với triển lãm lần này, chúng tôi mang đến những dòng sản phẩm mới với các mẫu mã đa dạng, đạt yêu cầu cao và khắt khe về chất lượng cũng như giá thành nhằm tiết kiệm và bảo vệ an toàn tối đa cho người tiêu dùng. Qua đó, Quý khách cũng sẽ nhận được nhiều phần quà hấp dẫn khi tham gia các trò chơi trong quá trình tham gia sự kiện.Đến với triển lãm lần này, chúng tôi mang đến những dòng sản phẩm mới với các mẫu mã đa dạng, đạt yêu cầu cao và khắt khe về chất lượng cũng như giá thành nhằm tiết kiệm và bảo vệ an toàn tối đa cho người tiêu dùng. Qua đó, Quý khách cũng sẽ nhận được nhiều phần quà hấp dẫn khi tham gia các trò chơi trong quá trình tham gia sự kiện.Đến với triển lãm lần này, chúng tôi mang đến những dòng sản phẩm mới với các mẫu mã đa dạng, đạt yêu cầu cao và khắt khe về chất lượng cũng như giá thành nhằm tiết kiệm và bảo vệ an toàn tối đa cho người tiêu dùng. Qua đó, Quý khách cũng sẽ nhận được nhiều phần quà hấp dẫn khi tham gia các trò chơi trong quá trình tham gia sự kiện.Đến với triển lãm lần này, chúng tôi mang đến những dòng sản phẩm mới với các mẫu mã đa dạng, đạt yêu cầu cao và khắt khe về chất lượng cũng như giá thành nhằm tiết kiệm và bảo vệ an toàn tối đa cho người tiêu dùng. Qua đó, Quý khách cũng sẽ nhận được nhiều phần quà hấp dẫn khi tham gia các trò chơi trong quá trình tham gia sự kiện.Đến với triển lãm lần này, chúng tôi mang đến những dòng sản phẩm mới với các mẫu mã đa dạng, đạt yêu cầu cao và khắt khe về chất lượng cũng như giá thành nhằm tiết kiệm và bảo vệ an toàn tối đa cho người tiêu dùng. Qua đó, Quý khách cũng sẽ nhận được nhiều phần quà hấp dẫn khi tham gia các trò chơi trong quá trình tham gia sự kiện.Đến với triển lãm lần này, chúng tôi mang đến những dòng sản phẩm mới với các mẫu mã đa dạng, đạt yêu cầu cao và khắt khe về chất lượng cũng như giá thành nhằm tiết kiệm và bảo vệ an toàn tối đa cho người tiêu dùng. Qua đó, Quý khách cũng sẽ nhận được nhiều phần quà hấp dẫn khi tham gia các trò chơi trong quá trình tham gia sự kiện.Đến với triển lãm lần này, chúng tôi mang đến những dòng sản phẩm mới với các mẫu mã đa dạng, đạt yêu cầu cao và khắt khe về chất lượng cũng như giá thành nhằm tiết kiệm và bảo vệ an toàn tối đa cho người tiêu dùng. Qua đó, Quý khách cũng sẽ nhận được nhiều phần quà hấp dẫn khi tham gia các trò chơi trong quá trình tham gia sự kiện.Đến với triển lãm lần này, chúng tôi mang đến những dòng sản phẩm mới với các mẫu mã đa dạng, đạt yêu cầu cao và khắt khe về chất lượng cũng như giá thành nhằm tiết kiệm và bảo vệ an toàn tối đa cho người tiêu dùng. Qua đó, Quý khách cũng sẽ nhận được nhiều phần quà hấp dẫn khi tham gia các trò chơi trong quá trình tham gia sự kiện.Đến với triển lãm lần này, chúng tôi mang đến những dòng sản phẩm mới với các mẫu mã đa dạng, đạt yêu cầu cao và khắt khe về chất lượng cũng như giá thành nhằm tiết kiệm và bảo vệ an toàn tối đa cho người tiêu dùng. Qua đó, Quý khách cũng sẽ nhận được nhiều phần quà hấp dẫn khi tham gia các trò chơi trong quá trình tham gia sự kiện.Đến với triển lãm lần này, chúng tôi mang đến những dòng sản phẩm mới với các mẫu mã đa dạng, đạt yêu cầu cao và khắt khe về chất lượng cũng như giá thành nhằm tiết kiệm và bảo vệ an toàn tối đa cho người tiêu dùng. Qua đó, Quý khách cũng sẽ nhận được nhiều phần quà hấp dẫn khi tham gia các trò chơi trong quá trình tham gia sự kiện.Đến với triển lãm lần này, chúng tôi mang đến những dòng sản phẩm mới với các mẫu mã đa dạng, đạt yêu cầu cao và khắt khe về chất lượng cũng như giá thành nhằm tiết kiệm và bảo vệ an toàn tối đa cho người tiêu dùng. Qua đó, Quý khách cũng sẽ nhận được nhiều phần quà hấp dẫn khi tham gia các trò chơi trong quá trình tham gia sự kiện.Đến với triển lãm lần này, chúng tôi mang đến những dòng sản phẩm mới với các mẫu mã đa dạng, đạt yêu cầu cao và khắt khe về chất lượng cũng như giá thành nhằm tiết kiệm và bảo vệ an toàn tối đa cho người tiêu dùng. Qua đó, Quý khách cũng sẽ nhận được nhiều phần quà hấp dẫn khi tham gia các trò chơi trong quá trình tham gia sự kiện.Đến với triển lãm lần này, chúng tôi mang đến những dòng sản phẩm mới với các mẫu mã đa dạng, đạt yêu cầu cao và khắt khe về chất lượng cũng như giá thành nhằm tiết kiệm và bảo vệ an toàn tối đa cho người tiêu dùng. Qua đó, Quý khách cũng sẽ nhận được nhiều phần quà hấp dẫn khi tham gia các trò chơi trong quá trình tham gia sự kiện.Đến với triển lãm lần này, chúng tôi mang đến những dòng sản phẩm mới với các mẫu mã đa dạng, đạt yêu cầu cao và khắt khe về chất lượng cũng như giá thành nhằm tiết kiệm và bảo vệ an toàn tối đa cho người tiêu dùng. Qua đó, Quý khách cũng sẽ nhận được nhiều phần quà hấp dẫn khi tham gia các trò chơi trong quá trình tham gia sự kiện.Đến với triển lãm lần này, chúng tôi mang đến những dòng sản phẩm mới với các mẫu mã đa dạng, đạt yêu cầu cao và khắt khe về chất lượng cũng như giá thành nhằm tiết kiệm và bảo vệ an toàn tối đa cho người tiêu dùng. Qua đó, Quý khách cũng sẽ nhận được nhiều phần quà hấp dẫn khi tham gia các trò chơi trong quá trình tham gia sự kiện.Đến với triển lãm lần này, chúng tôi mang đến những dòng sản phẩm mới với các mẫu mã đa dạng, đạt yêu cầu cao và khắt khe về chất lượng cũng như giá thành nhằm tiết kiệm và bảo vệ an toàn tối đa cho người tiêu dùng. Qua đó, Quý khách cũng sẽ nhận được nhiều phần quà hấp dẫn khi tham gia các trò chơi trong quá trình tham gia sự kiện.Đến với triển lãm lần này, chúng tôi mang đến những dòng sản phẩm mới với các mẫu mã đa dạng, đạt yêu cầu cao và khắt khe về chất lượng cũng như giá thành nhằm tiết kiệm và bảo vệ an toàn tối đa cho người tiêu dùng. Qua đó, Quý khách cũng sẽ nhận được nhiều phần quà hấp dẫn khi tham gia các trò chơi trong quá trình tham gia sự kiện.Đến với triển lãm lần này, chúng tôi mang đến những dòng sản phẩm mới với các mẫu mã đa dạng, đạt yêu cầu cao và khắt khe về chất lượng cũng như giá thành nhằm tiết kiệm và bảo vệ an toàn tối đa cho người tiêu dùng. Qua đó, Quý khách cũng sẽ nhận được nhiều phần quà hấp dẫn khi tham gia các trò chơi trong quá trình tham gia sự kiện.Đến với triển lãm lần này, chúng tôi mang đến những dòng sản phẩm mới với các mẫu mã đa dạng, đạt yêu cầu cao và khắt khe về chất lượng cũng như giá thành nhằm tiết kiệm và bảo vệ an toàn tối đa cho người tiêu dùng. Qua đó, Quý khách cũng sẽ nhận được nhiều phần quà hấp dẫn khi tham gia các trò chơi trong quá trình tham gia sự kiện.Đến với triển lãm lần này, chúng tôi mang đến những dòng sản phẩm mới với các mẫu mã đa dạng, đạt yêu cầu cao và khắt khe về chất lượng cũng như giá thành nhằm tiết kiệm và bảo vệ an toàn tối đa cho người tiêu dùng. Qua đó, Quý khách cũng sẽ nhận được nhiều phần quà hấp dẫn khi tham gia các trò chơi trong quá trình tham gia sự kiện.Đến với triển lãm lần này, chúng tôi mang đến những dòng sản phẩm mới với các mẫu mã đa dạng, đạt yêu cầu cao và khắt khe về chất lượng cũng như giá thành nhằm tiết kiệm và bảo vệ an toàn tối đa cho người tiêu dùng. Qua đó, Quý khách cũng sẽ nhận được nhiều phần quà hấp dẫn khi tham gia các trò chơi trong quá trình tham gia sự kiện.Đến với triển lãm lần này, chúng tôi mang đến những dòng sản phẩm mới với các mẫu mã đa dạng, đạt yêu cầu cao và khắt khe về chất lượng cũng như giá thành nhằm tiết kiệm và bảo vệ an toàn tối đa cho người tiêu dùng. Qua đó, Quý khách cũng sẽ nhận được nhiều phần quà hấp dẫn khi tham gia các trò chơi trong quá trình tham gia sự kiện.Đến với triển lãm lần này, chúng tôi mang đến những dòng sản phẩm mới với các mẫu mã đa dạng, đạt yêu cầu cao và khắt khe về chất lượng cũng như giá thành nhằm tiết kiệm và bảo vệ an toàn tối đa cho người tiêu dùng. Qua đó, Quý khách cũng sẽ nhận được nhiều phần quà hấp dẫn khi tham gia các trò chơi trong quá trình tham gia sự kiện.Đến với triển lãm lần này, chúng tôi mang đến những dòng sản phẩm mới với các mẫu mã đa dạng, đạt yêu cầu cao và khắt khe về chất lượng cũng như giá thành nhằm tiết kiệm và bảo vệ an toàn tối đa cho người tiêu dùng. Qua đó, Quý khách cũng sẽ nhận được nhiều phần quà hấp dẫn khi tham gia các trò chơi trong quá trình tham gia sự kiện.Đến với triển lãm lần này, chúng tôi mang đến những dòng sản phẩm mới với các mẫu mã đa dạng, đạt yêu cầu cao và khắt khe về chất lượng cũng như giá thành nhằm tiết kiệm và bảo vệ an toàn tối đa cho người tiêu dùng. Qua đó, Quý khách cũng sẽ nhận được nhiều phần quà hấp dẫn khi tham gia các trò chơi trong quá trình tham gia sự kiện.', '4.jpg', '2017-03-19 11:52:46'),
(13, 'Vui tết thả ga - tiết kiệm tối đa với sản phẩm Elig', 'Thương hiệu bố thắng Elig từ lâu đã khẳng định được vị thế của mình trên thị trường quốc tế nói chung và thị trường Việt Nam nói riêng.', 'Thương hiệu Elig đã có mặt tại hơn 51 quốc gia trên thế giới, đồng thời tự tin là một trong những tập đoàn hàng đầu về nghiên cứu và sản xuất chất liệu ma sát của hệ thống thắng (phanh) xe máy, ô tô, xe tải, xe khách và các loại thiết bị công, nông, ngư nghiệp khác.\r\nCác loại sản phẩm của Elig đang có trên thị trường hiện nay như: bố thắng đĩa (phanh đĩa), thắng đùm (phanh cơ), bố ba càng (búa côn), lá ly hợp (lá côn), đĩa sắt, bạc đạn, đĩa phanh (disc), heo dầu (caliper), tay thắng (cylinder)…\r\nVới phương châm “Chất lượng hàng đầu – Nhiệt tình phục vụ”, thương hiệu Elig cam kết luôn ứng dụng những công nghệ tiên tiến nhất và bảo đảm an toàn tuyệt đối cho khách hàng cũng như các thiết bị khác của xe.Thương hiệu Elig đã có mặt tại hơn 51 quốc gia trên thế giới, đồng thời tự tin là một trong những tập đoàn hàng đầu về nghiên cứu và sản xuất chất liệu ma sát của hệ thống thắng (phanh) xe máy, ô tô, xe tải, xe khách và các loại thiết bị công, nông, ngư nghiệp khác.\r\nCác loại sản phẩm của Elig đang có trên thị trường hiện nay như: bố thắng đĩa (phanh đĩa), thắng đùm (phanh cơ), bố ba càng (búa côn), lá ly hợp (lá côn), đĩa sắt, bạc đạn, đĩa phanh (disc), heo dầu (caliper), tay thắng (cylinder)…\r\nVới phương châm “Chất lượng hàng đầu – Nhiệt tình phục vụ”, thương hiệu Elig cam kết luôn ứng dụng những công nghệ tiên tiến nhất và bảo đảm an toàn tuyệt đối cho khách hàng cũng như các thiết bị khác của xe.Thương hiệu Elig đã có mặt tại hơn 51 quốc gia trên thế giới, đồng thời tự tin là một trong những tập đoàn hàng đầu về nghiên cứu và sản xuất chất liệu ma sát của hệ thống thắng (phanh) xe máy, ô tô, xe tải, xe khách và các loại thiết bị công, nông, ngư nghiệp khác.\r\nCác loại sản phẩm của Elig đang có trên thị trường hiện nay như: bố thắng đĩa (phanh đĩa), thắng đùm (phanh cơ), bố ba càng (búa côn), lá ly hợp (lá côn), đĩa sắt, bạc đạn, đĩa phanh (disc), heo dầu (caliper), tay thắng (cylinder)…\r\nVới phương châm “Chất lượng hàng đầu – Nhiệt tình phục vụ”, thương hiệu Elig cam kết luôn ứng dụng những công nghệ tiên tiến nhất và bảo đảm an toàn tuyệt đối cho khách hàng cũng như các thiết bị khác của xe.Thương hiệu Elig đã có mặt tại hơn 51 quốc gia trên thế giới, đồng thời tự tin là một trong những tập đoàn hàng đầu về nghiên cứu và sản xuất chất liệu ma sát của hệ thống thắng (phanh) xe máy, ô tô, xe tải, xe khách và các loại thiết bị công, nông, ngư nghiệp khác.\r\nCác loại sản phẩm của Elig đang có trên thị trường hiện nay như: bố thắng đĩa (phanh đĩa), thắng đùm (phanh cơ), bố ba càng (búa côn), lá ly hợp (lá côn), đĩa sắt, bạc đạn, đĩa phanh (disc), heo dầu (caliper), tay thắng (cylinder)…\r\nVới phương châm “Chất lượng hàng đầu – Nhiệt tình phục vụ”, thương hiệu Elig cam kết luôn ứng dụng những công nghệ tiên tiến nhất và bảo đảm an toàn tuyệt đối cho khách hàng cũng như các thiết bị khác của xe.Thương hiệu Elig đã có mặt tại hơn 51 quốc gia trên thế giới, đồng thời tự tin là một trong những tập đoàn hàng đầu về nghiên cứu và sản xuất chất liệu ma sát của hệ thống thắng (phanh) xe máy, ô tô, xe tải, xe khách và các loại thiết bị công, nông, ngư nghiệp khác.\r\nCác loại sản phẩm của Elig đang có trên thị trường hiện nay như: bố thắng đĩa (phanh đĩa), thắng đùm (phanh cơ), bố ba càng (búa côn), lá ly hợp (lá côn), đĩa sắt, bạc đạn, đĩa phanh (disc), heo dầu (caliper), tay thắng (cylinder)…\r\nVới phương châm “Chất lượng hàng đầu – Nhiệt tình phục vụ”, thương hiệu Elig cam kết luôn ứng dụng những công nghệ tiên tiến nhất và bảo đảm an toàn tuyệt đối cho khách hàng cũng như các thiết bị khác của xe.Thương hiệu Elig đã có mặt tại hơn 51 quốc gia trên thế giới, đồng thời tự tin là một trong những tập đoàn hàng đầu về nghiên cứu và sản xuất chất liệu ma sát của hệ thống thắng (phanh) xe máy, ô tô, xe tải, xe khách và các loại thiết bị công, nông, ngư nghiệp khác.\r\nCác loại sản phẩm của Elig đang có trên thị trường hiện nay như: bố thắng đĩa (phanh đĩa), thắng đùm (phanh cơ), bố ba càng (búa côn), lá ly hợp (lá côn), đĩa sắt, bạc đạn, đĩa phanh (disc), heo dầu (caliper), tay thắng (cylinder)…\r\nVới phương châm “Chất lượng hàng đầu – Nhiệt tình phục vụ”, thương hiệu Elig cam kết luôn ứng dụng những công nghệ tiên tiến nhất và bảo đảm an toàn tuyệt đối cho khách hàng cũng như các thiết bị khác của xe.Thương hiệu Elig đã có mặt tại hơn 51 quốc gia trên thế giới, đồng thời tự tin là một trong những tập đoàn hàng đầu về nghiên cứu và sản xuất chất liệu ma sát của hệ thống thắng (phanh) xe máy, ô tô, xe tải, xe khách và các loại thiết bị công, nông, ngư nghiệp khác.\r\nCác loại sản phẩm của Elig đang có trên thị trường hiện nay như: bố thắng đĩa (phanh đĩa), thắng đùm (phanh cơ), bố ba càng (búa côn), lá ly hợp (lá côn), đĩa sắt, bạc đạn, đĩa phanh (disc), heo dầu (caliper), tay thắng (cylinder)…\r\nVới phương châm “Chất lượng hàng đầu – Nhiệt tình phục vụ”, thương hiệu Elig cam kết luôn ứng dụng những công nghệ tiên tiến nhất và bảo đảm an toàn tuyệt đối cho khách hàng cũng như các thiết bị khác của xe.Thương hiệu Elig đã có mặt tại hơn 51 quốc gia trên thế giới, đồng thời tự tin là một trong những tập đoàn hàng đầu về nghiên cứu và sản xuất chất liệu ma sát của hệ thống thắng (phanh) xe máy, ô tô, xe tải, xe khách và các loại thiết bị công, nông, ngư nghiệp khác.\r\nCác loại sản phẩm của Elig đang có trên thị trường hiện nay như: bố thắng đĩa (phanh đĩa), thắng đùm (phanh cơ), bố ba càng (búa côn), lá ly hợp (lá côn), đĩa sắt, bạc đạn, đĩa phanh (disc), heo dầu (caliper), tay thắng (cylinder)…\r\nVới phương châm “Chất lượng hàng đầu – Nhiệt tình phục vụ”, thương hiệu Elig cam kết luôn ứng dụng những công nghệ tiên tiến nhất và bảo đảm an toàn tuyệt đối cho khách hàng cũng như các thiết bị khác của xe.Thương hiệu Elig đã có mặt tại hơn 51 quốc gia trên thế giới, đồng thời tự tin là một trong những tập đoàn hàng đầu về nghiên cứu và sản xuất chất liệu ma sát của hệ thống thắng (phanh) xe máy, ô tô, xe tải, xe khách và các loại thiết bị công, nông, ngư nghiệp khác.\r\nCác loại sản phẩm của Elig đang có trên thị trường hiện nay như: bố thắng đĩa (phanh đĩa), thắng đùm (phanh cơ), bố ba càng (búa côn), lá ly hợp (lá côn), đĩa sắt, bạc đạn, đĩa phanh (disc), heo dầu (caliper), tay thắng (cylinder)…\r\nVới phương châm “Chất lượng hàng đầu – Nhiệt tình phục vụ”, thương hiệu Elig cam kết luôn ứng dụng những công nghệ tiên tiến nhất và bảo đảm an toàn tuyệt đối cho khách hàng cũng như các thiết bị khác của xe.Thương hiệu Elig đã có mặt tại hơn 51 quốc gia trên thế giới, đồng thời tự tin là một trong những tập đoàn hàng đầu về nghiên cứu và sản xuất chất liệu ma sát của hệ thống thắng (phanh) xe máy, ô tô, xe tải, xe khách và các loại thiết bị công, nông, ngư nghiệp khác.\r\nCác loại sản phẩm của Elig đang có trên thị trường hiện nay như: bố thắng đĩa (phanh đĩa), thắng đùm (phanh cơ), bố ba càng (búa côn), lá ly hợp (lá côn), đĩa sắt, bạc đạn, đĩa phanh (disc), heo dầu (caliper), tay thắng (cylinder)…\r\nVới phương châm “Chất lượng hàng đầu – Nhiệt tình phục vụ”, thương hiệu Elig cam kết luôn ứng dụng những công nghệ tiên tiến nhất và bảo đảm an toàn tuyệt đối cho khách hàng cũng như các thiết bị khác của xe.Thương hiệu Elig đã có mặt tại hơn 51 quốc gia trên thế giới, đồng thời tự tin là một trong những tập đoàn hàng đầu về nghiên cứu và sản xuất chất liệu ma sát của hệ thống thắng (phanh) xe máy, ô tô, xe tải, xe khách và các loại thiết bị công, nông, ngư nghiệp khác.\r\nCác loại sản phẩm của Elig đang có trên thị trường hiện nay như: bố thắng đĩa (phanh đĩa), thắng đùm (phanh cơ), bố ba càng (búa côn), lá ly hợp (lá côn), đĩa sắt, bạc đạn, đĩa phanh (disc), heo dầu (caliper), tay thắng (cylinder)…\r\nVới phương châm “Chất lượng hàng đầu – Nhiệt tình phục vụ”, thương hiệu Elig cam kết luôn ứng dụng những công nghệ tiên tiến nhất và bảo đảm an toàn tuyệt đối cho khách hàng cũng như các thiết bị khác của xe.', '5.jpg', '2017-03-19 11:57:24'),
(14, 'Thư cảm ơn của Jaan-E đến Quý khách hàng và đối tác', 'Công ty Jaan-E thuộc Tập đoàn Elig chúng tôi chân thành cảm ơn Quý kháchhàng và đối tác đã tham dự triển lãm Elig Brake diễn ra vào tháng 5/2016.', 'Với mục tiêu hướng tới phát triển ổn định và bền vững, Công ty Jaan-E luôn không ngừng nhìn nhận lại mình để đổi mới đi lên. Chúng tôi rất vui mừng vì sự hiện diện đông đảo của Quý đối tác, Quý khách hàng đã làm nên thành công cho sự kiện "Triển lãm quốc tế lần thứ 12 công nghiệp ô tô, xe máy, xe đạp điện & phụ trợ (Saigon Autotech)”. Đặc biệt các ý kiến đóng góp trao đổi chân thành và thẳng thắn của Quý đối tác, Quý khách hàng tại triển lãm thực sự rất hữu ích và có ý nghĩa thiết thực đối với chúng tôi.Với mục tiêu hướng tới phát triển ổn định và bền vững, Công ty Jaan-E luôn không ngừng nhìn nhận lại mình để đổi mới đi lên. Chúng tôi rất vui mừng vì sự hiện diện đông đảo của Quý đối tác, Quý khách hàng đã làm nên thành công cho sự kiện "Triển lãm quốc tế lần thứ 12 công nghiệp ô tô, xe máy, xe đạp điện & phụ trợ (Saigon Autotech)”. Đặc biệt các ý kiến đóng góp trao đổi chân thành và thẳng thắn của Quý đối tác, Quý khách hàng tại triển lãm thực sự rất hữu ích và có ý nghĩa thiết thực đối với chúng tôi.Với mục tiêu hướng tới phát triển ổn định và bền vững, Công ty Jaan-E luôn không ngừng nhìn nhận lại mình để đổi mới đi lên. Chúng tôi rất vui mừng vì sự hiện diện đông đảo của Quý đối tác, Quý khách hàng đã làm nên thành công cho sự kiện "Triển lãm quốc tế lần thứ 12 công nghiệp ô tô, xe máy, xe đạp điện & phụ trợ (Saigon Autotech)”. Đặc biệt các ý kiến đóng góp trao đổi chân thành và thẳng thắn của Quý đối tác, Quý khách hàng tại triển lãm thực sự rất hữu ích và có ý nghĩa thiết thực đối với chúng tôi.Với mục tiêu hướng tới phát triển ổn định và bền vững, Công ty Jaan-E luôn không ngừng nhìn nhận lại mình để đổi mới đi lên. Chúng tôi rất vui mừng vì sự hiện diện đông đảo của Quý đối tác, Quý khách hàng đã làm nên thành công cho sự kiện "Triển lãm quốc tế lần thứ 12 công nghiệp ô tô, xe máy, xe đạp điện & phụ trợ (Saigon Autotech)”. Đặc biệt các ý kiến đóng góp trao đổi chân thành và thẳng thắn của Quý đối tác, Quý khách hàng tại triển lãm thực sự rất hữu ích và có ý nghĩa thiết thực đối với chúng tôi.Với mục tiêu hướng tới phát triển ổn định và bền vững, Công ty Jaan-E luôn không ngừng nhìn nhận lại mình để đổi mới đi lên. Chúng tôi rất vui mừng vì sự hiện diện đông đảo của Quý đối tác, Quý khách hàng đã làm nên thành công cho sự kiện "Triển lãm quốc tế lần thứ 12 công nghiệp ô tô, xe máy, xe đạp điện & phụ trợ (Saigon Autotech)”. Đặc biệt các ý kiến đóng góp trao đổi chân thành và thẳng thắn của Quý đối tác, Quý khách hàng tại triển lãm thực sự rất hữu ích và có ý nghĩa thiết thực đối với chúng tôi.Với mục tiêu hướng tới phát triển ổn định và bền vững, Công ty Jaan-E luôn không ngừng nhìn nhận lại mình để đổi mới đi lên. Chúng tôi rất vui mừng vì sự hiện diện đông đảo của Quý đối tác, Quý khách hàng đã làm nên thành công cho sự kiện "Triển lãm quốc tế lần thứ 12 công nghiệp ô tô, xe máy, xe đạp điện & phụ trợ (Saigon Autotech)”. Đặc biệt các ý kiến đóng góp trao đổi chân thành và thẳng thắn của Quý đối tác, Quý khách hàng tại triển lãm thực sự rất hữu ích và có ý nghĩa thiết thực đối với chúng tôi.Với mục tiêu hướng tới phát triển ổn định và bền vững, Công ty Jaan-E luôn không ngừng nhìn nhận lại mình để đổi mới đi lên. Chúng tôi rất vui mừng vì sự hiện diện đông đảo của Quý đối tác, Quý khách hàng đã làm nên thành công cho sự kiện "Triển lãm quốc tế lần thứ 12 công nghiệp ô tô, xe máy, xe đạp điện & phụ trợ (Saigon Autotech)”. Đặc biệt các ý kiến đóng góp trao đổi chân thành và thẳng thắn của Quý đối tác, Quý khách hàng tại triển lãm thực sự rất hữu ích và có ý nghĩa thiết thực đối với chúng tôi.Với mục tiêu hướng tới phát triển ổn định và bền vững, Công ty Jaan-E luôn không ngừng nhìn nhận lại mình để đổi mới đi lên. Chúng tôi rất vui mừng vì sự hiện diện đông đảo của Quý đối tác, Quý khách hàng đã làm nên thành công cho sự kiện "Triển lãm quốc tế lần thứ 12 công nghiệp ô tô, xe máy, xe đạp điện & phụ trợ (Saigon Autotech)”. Đặc biệt các ý kiến đóng góp trao đổi chân thành và thẳng thắn của Quý đối tác, Quý khách hàng tại triển lãm thực sự rất hữu ích và có ý nghĩa thiết thực đối với chúng tôi.Với mục tiêu hướng tới phát triển ổn định và bền vững, Công ty Jaan-E luôn không ngừng nhìn nhận lại mình để đổi mới đi lên. Chúng tôi rất vui mừng vì sự hiện diện đông đảo của Quý đối tác, Quý khách hàng đã làm nên thành công cho sự kiện "Triển lãm quốc tế lần thứ 12 công nghiệp ô tô, xe máy, xe đạp điện & phụ trợ (Saigon Autotech)”. Đặc biệt các ý kiến đóng góp trao đổi chân thành và thẳng thắn của Quý đối tác, Quý khách hàng tại triển lãm thực sự rất hữu ích và có ý nghĩa thiết thực đối với chúng tôi.Với mục tiêu hướng tới phát triển ổn định và bền vững, Công ty Jaan-E luôn không ngừng nhìn nhận lại mình để đổi mới đi lên. Chúng tôi rất vui mừng vì sự hiện diện đông đảo của Quý đối tác, Quý khách hàng đã làm nên thành công cho sự kiện "Triển lãm quốc tế lần thứ 12 công nghiệp ô tô, xe máy, xe đạp điện & phụ trợ (Saigon Autotech)”. Đặc biệt các ý kiến đóng góp trao đổi chân thành và thẳng thắn của Quý đối tác, Quý khách hàng tại triển lãm thực sự rất hữu ích và có ý nghĩa thiết thực đối với chúng tôi.Với mục tiêu hướng tới phát triển ổn định và bền vững, Công ty Jaan-E luôn không ngừng nhìn nhận lại mình để đổi mới đi lên. Chúng tôi rất vui mừng vì sự hiện diện đông đảo của Quý đối tác, Quý khách hàng đã làm nên thành công cho sự kiện "Triển lãm quốc tế lần thứ 12 công nghiệp ô tô, xe máy, xe đạp điện & phụ trợ (Saigon Autotech)”. Đặc biệt các ý kiến đóng góp trao đổi chân thành và thẳng thắn của Quý đối tác, Quý khách hàng tại triển lãm thực sự rất hữu ích và có ý nghĩa thiết thực đối với chúng tôi.Với mục tiêu hướng tới phát triển ổn định và bền vững, Công ty Jaan-E luôn không ngừng nhìn nhận lại mình để đổi mới đi lên. Chúng tôi rất vui mừng vì sự hiện diện đông đảo của Quý đối tác, Quý khách hàng đã làm nên thành công cho sự kiện "Triển lãm quốc tế lần thứ 12 công nghiệp ô tô, xe máy, xe đạp điện & phụ trợ (Saigon Autotech)”. Đặc biệt các ý kiến đóng góp trao đổi chân thành và thẳng thắn của Quý đối tác, Quý khách hàng tại triển lãm thực sự rất hữu ích và có ý nghĩa thiết thực đối với chúng tôi.Với mục tiêu hướng tới phát triển ổn định và bền vững, Công ty Jaan-E luôn không ngừng nhìn nhận lại mình để đổi mới đi lên. Chúng tôi rất vui mừng vì sự hiện diện đông đảo của Quý đối tác, Quý khách hàng đã làm nên thành công cho sự kiện "Triển lãm quốc tế lần thứ 12 công nghiệp ô tô, xe máy, xe đạp điện & phụ trợ (Saigon Autotech)”. Đặc biệt các ý kiến đóng góp trao đổi chân thành và thẳng thắn của Quý đối tác, Quý khách hàng tại triển lãm thực sự rất hữu ích và có ý nghĩa thiết thực đối với chúng tôi.Với mục tiêu hướng tới phát triển ổn định và bền vững, Công ty Jaan-E luôn không ngừng nhìn nhận lại mình để đổi mới đi lên. Chúng tôi rất vui mừng vì sự hiện diện đông đảo của Quý đối tác, Quý khách hàng đã làm nên thành công cho sự kiện "Triển lãm quốc tế lần thứ 12 công nghiệp ô tô, xe máy, xe đạp điện & phụ trợ (Saigon Autotech)”. Đặc biệt các ý kiến đóng góp trao đổi chân thành và thẳng thắn của Quý đối tác, Quý khách hàng tại triển lãm thực sự rất hữu ích và có ý nghĩa thiết thực đối với chúng tôi.Với mục tiêu hướng tới phát triển ổn định và bền vững, Công ty Jaan-E luôn không ngừng nhìn nhận lại mình để đổi mới đi lên. Chúng tôi rất vui mừng vì sự hiện diện đông đảo của Quý đối tác, Quý khách hàng đã làm nên thành công cho sự kiện "Triển lãm quốc tế lần thứ 12 công nghiệp ô tô, xe máy, xe đạp điện & phụ trợ (Saigon Autotech)”. Đặc biệt các ý kiến đóng góp trao đổi chân thành và thẳng thắn của Quý đối tác, Quý khách hàng tại triển lãm thực sự rất hữu ích và có ý nghĩa thiết thực đối với chúng tôi.Với mục tiêu hướng tới phát triển ổn định và bền vững, Công ty Jaan-E luôn không ngừng nhìn nhận lại mình để đổi mới đi lên. Chúng tôi rất vui mừng vì sự hiện diện đông đảo của Quý đối tác, Quý khách hàng đã làm nên thành công cho sự kiện "Triển lãm quốc tế lần thứ 12 công nghiệp ô tô, xe máy, xe đạp điện & phụ trợ (Saigon Autotech)”. Đặc biệt các ý kiến đóng góp trao đổi chân thành và thẳng thắn của Quý đối tác, Quý khách hàng tại triển lãm thực sự rất hữu ích và có ý nghĩa thiết thực đối với chúng tôi.Với mục tiêu hướng tới phát triển ổn định và bền vững, Công ty Jaan-E luôn không ngừng nhìn nhận lại mình để đổi mới đi lên. Chúng tôi rất vui mừng vì sự hiện diện đông đảo của Quý đối tác, Quý khách hàng đã làm nên thành công cho sự kiện "Triển lãm quốc tế lần thứ 12 công nghiệp ô tô, xe máy, xe đạp điện & phụ trợ (Saigon Autotech)”. Đặc biệt các ý kiến đóng góp trao đổi chân thành và thẳng thắn của Quý đối tác, Quý khách hàng tại triển lãm thực sự rất hữu ích và có ý nghĩa thiết thực đối với chúng tôi.Với mục tiêu hướng tới phát triển ổn định và bền vững, Công ty Jaan-E luôn không ngừng nhìn nhận lại mình để đổi mới đi lên. Chúng tôi rất vui mừng vì sự hiện diện đông đảo của Quý đối tác, Quý khách hàng đã làm nên thành công cho sự kiện "Triển lãm quốc tế lần thứ 12 công nghiệp ô tô, xe máy, xe đạp điện & phụ trợ (Saigon Autotech)”. Đặc biệt các ý kiến đóng góp trao đổi chân thành và thẳng thắn của Quý đối tác, Quý khách hàng tại triển lãm thực sự rất hữu ích và có ý nghĩa thiết thực đối với chúng tôi.Với mục tiêu hướng tới phát triển ổn định và bền vững, Công ty Jaan-E luôn không ngừng nhìn nhận lại mình để đổi mới đi lên. Chúng tôi rất vui mừng vì sự hiện diện đông đảo của Quý đối tác, Quý khách hàng đã làm nên thành công cho sự kiện "Triển lãm quốc tế lần thứ 12 công nghiệp ô tô, xe máy, xe đạp điện & phụ trợ (Saigon Autotech)”. Đặc biệt các ý kiến đóng góp trao đổi chân thành và thẳng thắn của Quý đối tác, Quý khách hàng tại triển lãm thực sự rất hữu ích và có ý nghĩa thiết thực đối với chúng tôi.Với mục tiêu hướng tới phát triển ổn định và bền vững, Công ty Jaan-E luôn không ngừng nhìn nhận lại mình để đổi mới đi lên. Chúng tôi rất vui mừng vì sự hiện diện đông đảo của Quý đối tác, Quý khách hàng đã làm nên thành công cho sự kiện "Triển lãm quốc tế lần thứ 12 công nghiệp ô tô, xe máy, xe đạp điện & phụ trợ (Saigon Autotech)”. Đặc biệt các ý kiến đóng góp trao đổi chân thành và thẳng thắn của Quý đối tác, Quý khách hàng tại triển lãm thực sự rất hữu ích và có ý nghĩa thiết thực đối với chúng tôi.Với mục tiêu hướng tới phát triển ổn định và bền vững, Công ty Jaan-E luôn không ngừng nhìn nhận lại mình để đổi mới đi lên. Chúng tôi rất vui mừng vì sự hiện diện đông đảo của Quý đối tác, Quý khách hàng đã làm nên thành công cho sự kiện "Triển lãm quốc tế lần thứ 12 công nghiệp ô tô, xe máy, xe đạp điện & phụ trợ (Saigon Autotech)”. Đặc biệt các ý kiến đóng góp trao đổi chân thành và thẳng thắn của Quý đối tác, Quý khách hàng tại triển lãm thực sự rất hữu ích và có ý nghĩa thiết thực đối với chúng tôi.Với mục tiêu hướng tới phát triển ổn định và bền vững, Công ty Jaan-E luôn không ngừng nhìn nhận lại mình để đổi mới đi lên. Chúng tôi rất vui mừng vì sự hiện diện đông đảo của Quý đối tác, Quý khách hàng đã làm nên thành công cho sự kiện "Triển lãm quốc tế lần thứ 12 công nghiệp ô tô, xe máy, xe đạp điện & phụ trợ (Saigon Autotech)”. Đặc biệt các ý kiến đóng góp trao đổi chân thành và thẳng thắn của Quý đối tác, Quý khách hàng tại triển lãm thực sự rất hữu ích và có ý nghĩa thiết thực đối với chúng tôi.', '6.jpg', '2017-03-19 11:58:49');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL DEFAULT '0',
  `total_price` double(11,0) DEFAULT NULL,
  `fullname` varchar(200) DEFAULT NULL,
  `phone_number` varchar(11) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `id_user`, `total_price`, `fullname`, `phone_number`, `address`, `created_at`, `status`) VALUES
(15, 2, 1000000, NULL, NULL, NULL, '2017-03-21 16:36:12', 1),
(16, 2, 1000000, NULL, NULL, NULL, '2017-03-22 14:51:17', 0),
(17, 2, 3013000, NULL, NULL, NULL, '2017-03-21 15:23:00', 0),
(18, 1, 44000, NULL, NULL, NULL, '2017-03-20 17:00:11', 0),
(21, 6, 204000, NULL, NULL, NULL, '2017-03-20 21:48:18', 0),
(22, 6, 240000, NULL, NULL, NULL, '2017-03-19 21:49:00', 0),
(23, 6, 3100000, NULL, NULL, NULL, '2016-12-18 21:49:33', 0),
(26, 7, 400000, NULL, NULL, NULL, '2017-03-18 21:52:51', 0),
(27, 7, 400000, NULL, NULL, NULL, '2016-12-20 21:53:32', 0),
(29, 1, 3000000, NULL, NULL, NULL, '2017-03-22 00:00:00', 0),
(30, 1, 500000, NULL, NULL, NULL, '2017-03-18 00:00:00', 0),
(31, 1, 100000, NULL, NULL, NULL, '2017-03-22 21:46:38', 0),
(32, 2, 204000, NULL, NULL, NULL, '2017-03-19 14:09:31', 0),
(33, 2, 10000, NULL, NULL, NULL, '2017-03-19 11:47:39', 0),
(34, 2, 40000, NULL, NULL, NULL, '2017-03-19 03:04:01', 1),
(35, 1, 150000, NULL, NULL, NULL, '2017-03-22 09:19:06', 2),
(36, 0, 20000, 'Huyen doan', '0123456789', 'ha noi', '2017-03-08 09:58:57', 0),
(37, 10, 600000, NULL, NULL, NULL, '2017-03-22 23:23:41', 0),
(38, 0, 550000, 'Phạm văn trường', '0369874125', 'Nam Định', '2017-03-23 23:40:59', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double(11,0) NOT NULL,
  `total_price` double(11,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `price`, `total_price`) VALUES
(6, 15, 41, 1, 4000, 4000),
(7, 15, 42, 2, 40000, 80000),
(8, 15, 32, 1, 200000, 200000),
(9, 17, 40, 1, 3000, 3000),
(10, 17, 31, 1, 10000, 10000),
(11, 17, 33, 1, 3000000, 3000000),
(12, 18, 42, 1, 40000, 40000),
(13, 18, 41, 1, 4000, 4000),
(14, 19, 40, 1, 3000, 3000),
(15, 19, 33, 1, 3000000, 3000000),
(16, 19, 41, 1, 4000, 4000),
(17, 20, 42, 1, 40000, 40000),
(18, 20, 39, 1, 200000, 200000),
(19, 21, 41, 1, 4000, 4000),
(20, 21, 39, 1, 200000, 200000),
(21, 22, 42, 1, 40000, 40000),
(22, 22, 12, 1, 100000, 100000),
(23, 22, 21, 1, 100000, 100000),
(24, 23, 12, 1, 100000, 100000),
(25, 23, 33, 1, 3000000, 3000000),
(26, 24, 19, 2, 100000, 200000),
(27, 24, 11, 1, 100000, 100000),
(28, 25, 32, 1, 200000, 200000),
(29, 25, 41, 1, 4000, 4000),
(30, 25, 23, 1, 50000, 50000),
(31, 26, 15, 1, 100000, 100000),
(32, 26, 16, 1, 100000, 100000),
(33, 26, 20, 1, 100000, 100000),
(34, 26, 7, 1, 100000, 100000),
(35, 27, 32, 1, 200000, 200000),
(36, 27, 39, 1, 200000, 200000),
(37, 29, 33, 1, 3000000, 3000000),
(38, 30, 43, 1, 500000, 500000),
(39, 31, 7, 1, 100000, 100000),
(40, 32, 41, 1, 4000, 4000),
(41, 32, 32, 1, 200000, 200000),
(42, 33, 31, 2, 10000, 10000),
(43, 34, 42, 1, 40000, 40000),
(44, 35, 19, 1, 100000, 100000),
(45, 35, 23, 1, 50000, 50000),
(46, 37, 6, 1, 100000, 100000),
(47, 37, 10, 3, 100000, 300000),
(48, 37, 17, 2, 100000, 200000),
(49, 38, 18, 1, 100000, 100000),
(50, 38, 28, 1, 350000, 350000),
(51, 38, 8, 1, 100000, 100000);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` bigint(11) NOT NULL,
  `view` bigint(20) DEFAULT NULL,
  `images` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `type_of_wood_id` int(11) NOT NULL,
  `description` longtext,
  `quantity` int(11) NOT NULL,
  `hot_product` int(1) DEFAULT '0',
  `type` int(1) DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `view`, `images`, `category_id`, `type_of_wood_id`, `description`, `quantity`, `hot_product`, `type`, `created_at`) VALUES
(6, 'Bàn Ghế 1', 100000, 9, 't1.jpg', 3, 3, '', 1, 1, 1, '2017-03-13 10:13:07'),
(7, 'Bàn Ghế 2', 100000, 3, 't2.jpg', 3, 2, '', 1, 1, 1, '2017-03-13 10:13:07'),
(8, 'Bàn Ghế 3', 100000, 3, 't3.jpg', 3, 4, '', 1, 1, 1, '2017-03-13 10:13:07'),
(9, 'Bàn Ghế 4', 100000, 0, 't4.jpg', 3, 6, '', 1, 0, 0, '2017-03-13 10:13:07'),
(10, 'Giường 1', 100000, 13, 'b1.jpg', 4, 2, 'Ông Nguyễn Anh Vũ, Tổng giám đốc Trung tâm phối hợp tìm kiếm cứu nạn hàng hải Việt Nam, cho biết một tàu Việt Nam vừa thoát được sự truy đuổi của cướp biển.\r\n\r\nVụ việc xảy ra rạng sáng 5/3, tàu Phú An 268 thuộc Công ty CP Phú An (Hải Phòng) trong hành trình qua vùng biển ngoài khơi đảo Boan của Philippines, giáp ranh với Malaysia, đã phát hiện có tàu khả nghi đuổi theo. Tàu Phú An khẩn trương báo động an ninh tới lực lượng bảo vệ bờ biển các nước sở tại, và dùng vòi rồng xua đuổi cướp biển.\r\n\r\nKhi tiếp nhận thông tin, lực lượng bảo vệ bờ biển Malaysia đã yêu cầu tàu Phú An tăng tốc, chuyển hướng về phía vùng biển Malaysia và cử tàu cao tốc ra hỗ trợ. Không thể tiếp cận tàu Phú An, tàu cướp biển đã rút lui.', 2, 1, 0, '2017-03-13 10:13:07'),
(12, 'Giường 3', 100000, 0, 'b3.jpg', 4, 2, '', 3, 1, 0, '2017-03-13 10:13:07'),
(13, 'Giường 4', 100000, 0, 'b4.jpg', 4, 4, '', 4, 0, 0, '2017-03-13 10:13:07'),
(14, 'Kệ Ti Vi 1', 100000, 0, 'TV1.jpg', 5, 5, '', 2, 1, 1, '2017-03-13 10:13:07'),
(15, 'Kệ Ti Vi 2', 100000, 0, 'TV2.jpg', 5, 5, '', 2, 1, 1, '2017-03-13 10:13:07'),
(16, 'Kệ Ti Vi 3', 100000, 0, 'Tv3.jpg', 5, 3, '', 2, 1, 0, '2017-03-13 10:13:07'),
(17, 'Kệ Ti Vi 4', 100000, 0, 'Tv4.jpg', 5, 6, '', 2, 0, 0, '2017-03-13 10:13:07'),
(18, 'Tủ 1', 100000, 0, 'k1.jpg', 6, 4, '', 2, 1, 0, '2017-03-13 10:13:07'),
(19, 'cửa 1', 100000, 0, 'd1.jpg', 8, 6, '', 2, 1, 0, '2017-03-13 10:13:07'),
(20, 'Tủ 2', 100000, 0, 'k2.jpg', 6, 6, '', 2, 1, 0, '2017-03-13 10:13:07'),
(21, 'Tủ 3', 100000, 0, 'k3.jpg', 6, 7, '', 2, 1, 1, '2017-03-13 10:13:07'),
(23, 'cửa 3', 50000, 0, 'd3.jpg', 8, 7, ' đây là cửa', 2, 1, 0, '2017-03-13 10:13:07'),
(24, 'Bàn ghế 5', 300000, 0, 't5.jpg', 3, 7, 'bàn ghế', 3, 0, 0, '2017-03-13 10:13:07'),
(25, 'Giường 5', 3000000, 0, 'b5.jpg', 4, 3, 'giường ngủ', 2, 1, 0, '2017-03-13 10:13:07'),
(26, 'Giường 6', 600000, 0, 'b6.jpg', 4, 3, 'giường ngủ', 2, 1, 1, '2017-03-13 10:13:07'),
(27, 'Kệ Ti Vi 5', 250000, 0, 'Tv5.jpg', 5, 2, 'kệ ti vi ', 3, 1, 0, '2017-03-13 10:13:07'),
(28, 'Kệ Ti Vi 6', 350000, 0, 'Tv6.jpg', 5, 2, 'kệ ti vi', 1, 0, 0, '2017-03-13 10:13:07'),
(29, 'Tủ 4', 100000, 0, 'k4.jpg', 6, 2, 'tủ bếp', 0, 0, 1, '2017-03-13 10:13:07'),
(30, 'Tủ 5', 650000, 0, 'k5.jpg', 6, 2, 'tủ bếp', 0, 0, 0, '2017-03-13 10:13:07'),
(31, 'Cầu Thang 1', 10000, 0, 's1.jpg', 7, 4, 'cầu thang', 0, 1, 1, '2017-03-13 10:13:07'),
(32, 'Cầu Thang 2', 200000, 0, 's2.jpg', 7, 4, 'cầu thang', 0, 1, 0, '2017-03-13 10:13:07'),
(33, 'Cầu Thang 3', 3000000, 0, 's3.jpg', 7, 4, '', 0, 1, 0, '2017-03-13 10:13:07'),
(34, 'Cầu Thang 4', 400000, 0, 's4.jpg', 7, 5, '', 0, 0, 1, '2017-03-13 10:13:07'),
(35, 'Cầu Thang 5', 5000000, 0, 's5.jpg', 7, 5, '', 0, 0, 0, '2017-03-13 10:13:07'),
(36, 'Cầu Thang 6', 600000, 0, 's6.jpg', 7, 5, '', 0, 1, 1, '2017-03-13 10:13:07'),
(38, 'Bàn Thờ 1', 100000, 0, 'bantho1.jpg', 9, 5, '', 0, 0, 0, '2017-03-13 10:13:07'),
(39, 'Bàn Thờ 2', 200000, 0, 'bantho2.jpg', 9, 6, '', 0, 1, 1, '2017-03-13 10:13:07'),
(40, 'Bàn Thờ 3', 3000, 0, 'bantho3.jpg', 9, 6, '', 0, 1, 1, '2017-03-13 10:13:07'),
(41, 'Bàn Thờ 4', 4000, 0, 'bantho4.jpg', 9, 3, '', 0, 1, 1, '2017-03-13 10:13:07'),
(42, 'Cửa 2', 40000, NULL, 'd2.jpg', 8, 6, NULL, 2, 1, 0, '2017-03-13 10:13:07');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(300) NOT NULL,
  `link` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `title`, `image`, `link`) VALUES
(1, 'slide1', 'slider1.jpg', ''),
(2, 'slide22', 'F7zx_slider4.jpg', ''),
(3, 'slide3', 'slider1.jpg', ''),
(4, 'slide4', 'slider1.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `type_of_wood`
--

CREATE TABLE `type_of_wood` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `hot_type_of_wood` bigint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type_of_wood`
--

INSERT INTO `type_of_wood` (`id`, `name`, `hot_type_of_wood`) VALUES
(2, 'Gỗ Lim', 1),
(3, 'Gỗ Xoan', 1),
(4, 'Gỗ Hương', 1),
(5, 'Gỗ Gụ', 1),
(6, 'Gỗ Cam Xe', 1),
(7, 'Gỗ Nghiến', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` int(1) DEFAULT NULL,
  `birthday` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `address`, `gender`, `birthday`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Doãn Huyên', 'huyendoan1809@gmail.com', '$2y$10$cIiIgzZz7oMd5MDZaKW30eckiAZW4H/Vi6uHicSXZ3gaYXTW5vm2W', '01234568', 'Hà Nội', 1, '20/02/1993', 1, 'od6kOsEjSZtmuVU9zOQmA6p1dipUZy9pJfNXgWaGgveDm6YI7efuiMeA2pve', NULL, NULL),
(2, 'Hồ Việt Chung', 'chung@gmail.com', '123456', '0258963', 'Hà Nội', 1, '20/02/1993', 0, 'Xh7e1j6dEKbVFWzxqIvvLSwOJQXJkvYgYYmGtLacabVvXFUeypvMlEHwQcZz', NULL, NULL),
(5, 'Huyen Doan', 'tung@gmail.com', '$10$cIiIgzZz7oMd5MDZaKW30eckiAZW4H/Vi6uHicSXZ3gaYXTW5vm2W', '0147896', 'Hà Nội', 1, '20/02/1993', 0, 'ATK65V52ZwPaUJJr2MZxIuYI8vXDN0CtMrCXI3gpEgD4YzLeyrkoKO8aNgpf', NULL, NULL),
(6, 'Ưng hoàng Phúc', 'phuc@gmail.com', '$2y$10$t.y4cUoCWsFqY16piV6ZWuM/GYwUwg8QALeeNr21SSxTQjLeJBgsW', '0369875', 'Hà Nội', 1, '20/02/1993', 0, 'RbKxsaBBRlv8FXOcu5fKa7tNbs7XGT0Kv5yb8YsuwhXltuYJiuqsKX02LrKo', NULL, NULL),
(7, 'Bùi bích phương', 'phuong@gmail.com', '$2y$10$nHg7iu/mlwC6vqCYGytC3.ilrpnPiNf4yqN3pV4iBjVbgnna1F6S2', '01478546', 'Hà Nội', 0, '20/02/1993', 0, 'w9ETQ9xhQ0NnJ4mCJxuGSzkNoEl71WO44f5A8fAo08S3IBpSuYzx5VCImBL3', NULL, NULL),
(8, 'Hồ quang Hiếu', 'hieu@gmail.com', '$2y$10$WNEAODvrSbi9OXUwcrGezOmx84u8sahB/u9BcFIzcu2pGqj0jLuo.', '02399413', 'Hà Nội', 1, '20/02/1993', 0, 'eiQeJE90VLVVv3whEdOqq1Ai5TehpboqtD8iOCEXQhfyjcNEzyNcHhKSlZ0S', NULL, NULL),
(9, 'Phan duy anh', 'duyanh@gmail.com', '$2y$10$HjSosE2ECdb.n5ECAqy5Suerja7GX.NxZ1usIOXrkelDxd1N3OlDS', '56695', 'Hà Nội', 1, '20/02/1993', 0, 'hVUumwIOOiMUV6Hawr39ViUoOQCw4OMm3azEulokimMGZoSmEKSeqA22Vjcb', NULL, NULL),
(10, 'Vũ Hữu Duy', 'duy@gmail.com', '$2y$10$DsVlrmwu5F0/HUl4kjTFguRYRN3KvByt3RblEkZ7zQu0nLUTk32d2', '0123458796', 'Hữu Bằng Thạch thất Hà nội', 1, '1992-09-19', 0, 'OO02ob3W1uUzyX6QeCWqDFrGnvZmUlgtQLBUeCHD53XGAMQyQTiAg4rCA65x', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_of_wood`
--
ALTER TABLE `type_of_wood`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `type_of_wood`
--
ALTER TABLE `type_of_wood`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
