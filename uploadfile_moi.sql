-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 12, 2025 lúc 06:27 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `uploadfile`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `datafile`
--

CREATE TABLE `datafile` (
  `id` int(50) NOT NULL,
  `username` varchar(255) NOT NULL,
  `sdt` int(20) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `content` mediumtext DEFAULT NULL,
  `filename` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `datafile`
--

INSERT INTO `datafile` (`id`, `username`, `sdt`, `email`, `content`, `filename`) VALUES
(38, 'Mai Ngọc Bé', 962957900, 'bexiu.lovely@yahoo.c', '', 'qua-bo_evjj.png'),
(39, 'sfsfs', 5353, 'fdsfsdf', '', 'SEVENTEEN Power of Love_ The Movie - Trailer (1).docx'),
(40, 'sdasd', 34235, 'dfsfs', 'Bình Thuận, Ủy ban Kiểm tra Trung ương đã thi hành kỷ luật bằng hình thức Cảnh cáo (Quyết định số 519-QĐ/UBKTTW, ngày 28-4-2022), UBND tỉnh đề nghị Thủ tướng Chính phủ xem xét, xử lý kỷ luật hành chính cảnh cáo ông Lê Tuấn Phong. Thời điểm xử lý kỷ luật kể từ ngày ban hành quyết định kỷ luật đảng. Thời gian thi hành kỷ luật 12 tháng kể từ ngày 28-4-2022.\r\n\r\nÔng Nguyễn Văn Phong, Tỉnh ủy viên, Ủy viên Ban Cán sự đảng, Phó Chủ tịch UND tỉnh Bình Thuận đã bị Ban Chấp hành Đảng bộ tỉnh Bình Thuận đã thi hành kỷ luật bằng hình thức Khiển trách (Quyết định số 596-QĐ/TU, ngày 17-6-2022); UBND tỉnh Bình Thuận đề nghị Thủ tướng Chính phủ xem xét, xử lý kỷ luật hành chính khiển trách với ông Nguyễn Văn Phong. Thời điểm xử lý kỷ luật kể từ ngày ban hành quyết định kỷ luật đảng. Thời gian thi hành kỷ luật 12 tháng kể từ ngày 17-6-2022.', 'em-va-trinh (1).png'),
(41, 'sdasd', 34235, 'dfsfs', 'Bình Thuận, Ủy ban Kiểm tra Trung ương đã thi hành kỷ luật bằng hình thức Cảnh cáo (Quyết định số 519-QĐ/UBKTTW, ngày 28-4-2022), UBND tỉnh đề nghị Thủ tướng Chính phủ xem xét, xử lý kỷ luật hành chính cảnh cáo ông Lê Tuấn Phong. Thời điểm xử lý kỷ luật kể từ ngày ban hành quyết định kỷ luật đảng. Thời gian thi hành kỷ luật 12 tháng kể từ ngày 28-4-2022.\r\n\r\nÔng Nguyễn Văn Phong, Tỉnh ủy viên, Ủy viên Ban Cán sự đảng, Phó Chủ tịch UND tỉnh Bình Thuận đã bị Ban Chấp hành Đảng bộ tỉnh Bình Thuận đã thi hành kỷ luật bằng hình thức Khiển trách (Quyết định số 596-QĐ/TU, ngày 17-6-2022); UBND tỉnh Bình Thuận đề nghị Thủ tướng Chính phủ xem xét, xử lý kỷ luật hành chính khiển trách với ông Nguyễn Văn Phong. Thời điểm xử lý kỷ luật kể từ ngày ban hành quyết định kỷ luật đảng. Thời gian thi hành kỷ luật 12 tháng kể từ ngày 17-6-2022.', 'em-va-trinh (1).png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `filedinhkem`
--

CREATE TABLE `filedinhkem` (
  `ID` int(11) NOT NULL,
  `LienHeID` int(11) DEFAULT NULL,
  `FilePath` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `filedinhkem`
--

INSERT INTO `filedinhkem` (`ID`, `LienHeID`, `FilePath`) VALUES
(1, 60, '682212ed9b7e8_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-2.jpg'),
(2, 61, '682212f872988_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-2.jpg'),
(3, 62, '682212f92abdd_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-2.jpg'),
(4, 63, './uploads/6822130141d4f_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-2.jpg'),
(5, 64, './uploads/68221302080d8_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-2.jpg'),
(6, 65, './uploads/68221302b7378_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-2.jpg'),
(7, 67, './uploads/682213792c73c_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-2.jpg'),
(8, 68, './uploads/68221387c7baa_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-2.jpg'),
(9, 69, './uploads/6822138a0c6a8_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-2.jpg'),
(10, 70, './uploads/6822138ac597a_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-2.jpg'),
(11, 119, '682218a1bf1a9_unnamed.png'),
(12, 122, '682218db953ea_cogover-webinar-2025-key-visual.png'),
(13, 122, '682218db95952_icd.png'),
(14, 122, '682218db95f12_unnamed.png'),
(15, 123, '6822190e1bdb1_cogover-webinar-2025-key-visual.png'),
(16, 123, '6822190e1c220_icd.png'),
(17, 123, '6822190e1c67a_unnamed.png'),
(18, 124, '68221926486f0_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan.png'),
(19, 124, '6822192648a7d_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-1.jpg'),
(20, 124, '6822192648f56_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-1.png'),
(21, 124, '6822192649669_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-2.jpg'),
(22, 124, '6822192649d77_7-thay-doi-trong-che-do-an-uong-co-the-giup-ha-huyet-ap.png'),
(23, 124, '682219264ab02_111.png'),
(24, 124, '682219264b1f8_anh2.png'),
(25, 125, '68221956be549_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan.png'),
(26, 125, '68221956be968_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-1.jpg'),
(27, 125, '68221956bf4ad_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-1.png'),
(28, 125, '68221956bf851_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-2.jpg'),
(29, 125, '68221956bfffc_7-thay-doi-trong-che-do-an-uong-co-the-giup-ha-huyet-ap.png'),
(30, 125, '68221956c02eb_111.png'),
(31, 125, '68221956c083c_anh2.png'),
(32, 126, '68221957ef283_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan.png'),
(33, 126, '68221957ef6d7_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-1.jpg'),
(34, 126, '68221957efb06_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-1.png'),
(35, 126, '68221957effb0_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-2.jpg'),
(36, 126, '68221957f0513_7-thay-doi-trong-che-do-an-uong-co-the-giup-ha-huyet-ap.png'),
(37, 126, '68221957f0953_111.png'),
(38, 126, '68221957f0cd8_anh2.png'),
(39, 127, '6822197bc89f8_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan.png'),
(40, 127, '6822197bc8d7e_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-1.jpg'),
(41, 127, '6822197bc947a_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-1.png'),
(42, 127, '6822197bc9ec1_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-2.jpg'),
(43, 127, '6822197bca47c_7-thay-doi-trong-che-do-an-uong-co-the-giup-ha-huyet-ap.png'),
(44, 127, '6822197bcaa22_111.png'),
(45, 127, '6822197bcb318_anh2.png'),
(46, 128, '682219c27c12f_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan.png'),
(47, 128, '682219c27c911_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-1.jpg'),
(48, 128, '682219c2803bd_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-1.png'),
(49, 128, '682219c280a22_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-2.jpg'),
(50, 128, '682219c280f56_7-thay-doi-trong-che-do-an-uong-co-the-giup-ha-huyet-ap.png'),
(51, 128, '682219c28125f_111.png'),
(52, 128, '682219c281561_anh2.png'),
(53, 129, '682219c377260_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan.png'),
(54, 129, '682219c377821_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-1.jpg'),
(55, 129, '682219c377c69_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-1.png'),
(56, 129, '682219c3780fb_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-2.jpg'),
(57, 129, '682219c3786a7_7-thay-doi-trong-che-do-an-uong-co-the-giup-ha-huyet-ap.png'),
(58, 129, '682219c378d4b_111.png'),
(59, 129, '682219c37912c_anh2.png'),
(60, 130, '682219c44166c_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan.png'),
(61, 130, '682219c441b9f_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-1.jpg'),
(62, 130, '682219c44236e_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-1.png'),
(63, 130, '682219c442c66_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-2.jpg'),
(64, 130, '682219c4433e8_7-thay-doi-trong-che-do-an-uong-co-the-giup-ha-huyet-ap.png'),
(65, 130, '682219c443d24_111.png'),
(66, 130, '682219c4441a3_anh2.png'),
(67, 131, '682219c50484f_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan.png'),
(68, 131, '682219c50505a_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-1.jpg'),
(69, 131, '682219c5055e2_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-1.png'),
(70, 131, '682219c505b3d_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-2.jpg'),
(71, 131, '682219c506035_7-thay-doi-trong-che-do-an-uong-co-the-giup-ha-huyet-ap.png'),
(72, 131, '682219c50641b_111.png'),
(73, 131, '682219c506885_anh2.png'),
(74, 132, '682219e1be50a_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan.png'),
(75, 132, '682219e1bee5e_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-1.jpg'),
(76, 132, '682219e1bf4e1_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-1.png'),
(77, 132, '682219e1bf853_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-2.jpg'),
(78, 132, '682219e1bfc8e_7-thay-doi-trong-che-do-an-uong-co-the-giup-ha-huyet-ap.png'),
(79, 132, '682219e1c0065_111.png'),
(80, 132, '682219e1c051a_anh2.png'),
(81, 133, '68221a35789b5_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan.png'),
(82, 133, '68221a35793c3_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-1.jpg'),
(83, 133, '68221a3579c35_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-1.png'),
(84, 133, '68221a357a88e_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-2.jpg'),
(85, 133, '68221a357bd87_7-thay-doi-trong-che-do-an-uong-co-the-giup-ha-huyet-ap.png'),
(86, 133, '68221a357c639_111.png'),
(87, 133, '68221a357d22d_anh2.png'),
(88, 134, '68221a4cb6e2a_bg-chinh-11-20250313094442-ure4g.png'),
(89, 134, '68221a4cb73e2_cogover-webinar-2025-key-visual.png'),
(90, 135, '68221ab8e6a5e_bg-chinh-11-20250313094442-ure4g.png'),
(91, 135, '68221ab8e7722_cogover-webinar-2025-key-visual.png'),
(92, 136, '68221abecdb05_bg-chinh-11-20250313094442-ure4g.png'),
(93, 136, '68221abece386_cogover-webinar-2025-key-visual.png'),
(94, 137, '68221ad69d0b1_bg-chinh-11-20250313094442-ure4g.png'),
(95, 137, '68221ad69d4fa_cogover-webinar-2025-key-visual.png'),
(96, 138, '68221af0e9ae4_unnamed.png'),
(97, 139, '68221b32041ca_bg-chinh-11-20250313094442-ure4g.png'),
(98, 140, '68221b924e90f_bg-chinh-11-20250313094442-ure4g.png'),
(99, 143, '68221cd269724_pexels-jerchung-2116094.jpg'),
(100, 143, '68221cd269e86_pngwing.com (10).png'),
(101, 143, '68221cd26a382_pngwing.com (11).png'),
(102, 143, '68221cd26a6dc_pngwing.com (12).png'),
(103, 143, '68221cd26aa68_re-phai-khi-den-do-9811-4057.jpe.png'),
(104, 143, '68221cd26ae1d_thoi-gian-an-toi-ly-tuong-cho-nguoi-bi-tieu-duong.jpg'),
(105, 144, '68221d4236bc2_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan.png'),
(106, 144, '68221d4237c67_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-1.jpg'),
(107, 144, '68221d4238160_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-1.png'),
(108, 144, '68221d423915a_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-2.jpg'),
(109, 144, '68221d4239656_7-thay-doi-trong-che-do-an-uong-co-the-giup-ha-huyet-ap.png'),
(110, 144, '68221d4239b15_111.png'),
(111, 144, '68221d423e7ab_anh2.png'),
(112, 145, './pdf/7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan.png'),
(113, 145, './pdf/7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-1.jpg'),
(114, 145, './pdf/7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-1.png'),
(115, 145, './pdf/7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-2.jpg'),
(116, 145, './pdf/7-thay-doi-trong-che-do-an-uong-co-the-giup-ha-huyet-ap.png'),
(117, 145, './pdf/111.png'),
(118, 145, './pdf/anh2.png'),
(119, 146, './pdf/7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan.png'),
(120, 146, './pdf/7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-1.jpg'),
(121, 146, './pdf/7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-1.png'),
(122, 146, './pdf/7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-2.jpg'),
(123, 146, './pdf/7-thay-doi-trong-che-do-an-uong-co-the-giup-ha-huyet-ap.png'),
(124, 146, './pdf/111.png'),
(125, 146, './pdf/anh2.png'),
(126, 147, '../uploads/7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan.png'),
(127, 147, '../uploads/7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-1.jpg'),
(128, 147, '../uploads/7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-1.png'),
(129, 147, '../uploads/7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-2.jpg'),
(130, 147, '../uploads/7-thay-doi-trong-che-do-an-uong-co-the-giup-ha-huyet-ap.png'),
(131, 147, '../uploads/111.png'),
(132, 147, '../uploads/anh2.png'),
(133, 157, '../uploads/cogover-webinar-2025-key-visual.png'),
(134, 158, '../uploads/cogover-webinar-2025-key-visual.png'),
(135, 159, '../uploads/cogover-webinar-2025-key-visual.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongtinlienhe`
--

CREATE TABLE `thongtinlienhe` (
  `ID` int(11) NOT NULL,
  `TieuDe` varchar(255) DEFAULT NULL,
  `HoTen` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `SDT` varchar(20) DEFAULT NULL,
  `TinhThanh` varchar(100) DEFAULT NULL,
  `QuanHuyen` varchar(100) DEFAULT NULL,
  `NoiDung` text DEFAULT NULL,
  `FileVideo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `thongtinlienhe`
--

INSERT INTO `thongtinlienhe` (`ID`, `TieuDe`, `HoTen`, `Email`, `SDT`, `TinhThanh`, `QuanHuyen`, `NoiDung`, `FileVideo`) VALUES
(1, 'test', 'Nguyễn Anh Tú', 'linhlinh20071994@gmail.com', '0962957900', '20', '187', 'àasfsa', 'https://drive.google.com/drive/folders/1bpgHCTDTvKx_iUNBX4JSF8jTEONE3xA7?usp=sharing'),
(2, 'test', 'Nguyễn Anh Tú', 'linhlinh20071994@gmail.com', '0962957900', '20', '187', 'àasfsa', 'https://drive.google.com/drive/folders/1bpgHCTDTvKx_iUNBX4JSF8jTEONE3xA7?usp=sharing'),
(3, 'test', 'Nguyễn Anh Tú', 'linhlinh20071994@gmail.com', '0962957900', '1', '1', 'ádasdsa', 'https://drive.google.com/drive/folders/1bpgHCTDTvKx_iUNBX4JSF8jTEONE3xA7?usp=sharing'),
(4, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '20', '187', 'sàasf', 'https://drive.google.com/drive/folders/1bpgHCTDTvKx_iUNBX4JSF8jTEONE3xA7?usp=sharing'),
(5, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '20', '187', 'sàasf', 'https://drive.google.com/drive/folders/1bpgHCTDTvKx_iUNBX4JSF8jTEONE3xA7?usp=sharing'),
(6, 'test', 'Đặng Hồ Bảo Phương', 'linhlinh20071994@gmail.com', '0962957900', '26', '247', 'sàaf', 'https://drive.google.com/drive/folders/1bpgHCTDTvKx_iUNBX4JSF8jTEONE3xA7?usp=sharing'),
(7, 'test', 'Đặng Hồ Bảo Phương', 'linhlinh20071994@gmail.com', '0962957900', '26', '247', 'sàaf', 'https://drive.google.com/drive/folders/1bpgHCTDTvKx_iUNBX4JSF8jTEONE3xA7?usp=sharing'),
(8, 'test', 'Huỳnh Thị Hoài Thơ', 'linhlinh20071994@gmail.com', '0962957900', '26', '252', 'sfsdfsdf', 'https://drive.google.com/drive/folders/1bpgHCTDTvKx_iUNBX4JSF8jTEONE3xA7?usp=sharing'),
(9, 'test', 'Huỳnh Thị Hoài Thơ', 'linhlinh20071994@gmail.com', '0962957900', '26', '252', 'sfsdfsdf', 'https://drive.google.com/drive/folders/1bpgHCTDTvKx_iUNBX4JSF8jTEONE3xA7?usp=sharing'),
(10, 'test', 'Huỳnh Thị Hoài Thơ', 'linhlinh20071994@gmail.com', '0962957900', '26', '252', 'sfsdfsdf', 'https://drive.google.com/drive/folders/1bpgHCTDTvKx_iUNBX4JSF8jTEONE3xA7?usp=sharing'),
(11, 'test', 'Trần Ngọc Hóa', 'linhlinh20071994@gmail.com', '0962957900', '30', '299', 'gdfgdf', 'https://drive.google.com/drive/folders/1bpgHCTDTvKx_iUNBX4JSF8jTEONE3xA7?usp=sharing'),
(12, 'test', 'Trần Ngọc Hóa', 'linhlinh20071994@gmail.com', '0962957900', '30', '299', 'gdfgdf', 'https://drive.google.com/drive/folders/1bpgHCTDTvKx_iUNBX4JSF8jTEONE3xA7?usp=sharing'),
(13, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '22', '207', 'vsv', 'https://drive.google.com/drive/folders/1bpgHCTDTvKx_iUNBX4JSF8jTEONE3xA7?usp=sharing'),
(14, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '22', '207', 'vsv', 'https://drive.google.com/drive/folders/1bpgHCTDTvKx_iUNBX4JSF8jTEONE3xA7?usp=sharing'),
(15, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '22', '207', 'vsv', 'https://drive.google.com/drive/folders/1bpgHCTDTvKx_iUNBX4JSF8jTEONE3xA7?usp=sharing'),
(16, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '24', '223', 'sscccc', 'https://drive.google.com/drive/folders/1bpgHCTDTvKx_iUNBX4JSF8jTEONE3xA7?usp=sharing'),
(17, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '24', '223', 'sscccc', 'https://drive.google.com/drive/folders/1bpgHCTDTvKx_iUNBX4JSF8jTEONE3xA7?usp=sharing'),
(18, 'test', 'Trần Ngọc Hóa', 'linhlinh20071994@gmail.com', '0962957900', '25', '239', 'sầ', 'https://drive.google.com/drive/folders/1bpgHCTDTvKx_iUNBX4JSF8jTEONE3xA7?usp=sharing'),
(19, 'test', 'Trần Ngọc Hóa', 'linhlinh20071994@gmail.com', '0962957900', '25', '239', 'sầ', 'https://drive.google.com/drive/folders/1bpgHCTDTvKx_iUNBX4JSF8jTEONE3xA7?usp=sharing'),
(20, 'test', 'Trần Ngọc Hóa', 'linhlinh20071994@gmail.com', '0962957900', '25', '239', 'sầ', 'https://drive.google.com/drive/folders/1bpgHCTDTvKx_iUNBX4JSF8jTEONE3xA7?usp=sharing'),
(21, 'test', 'Trần Ngọc Hóa', 'linhlinh20071994@gmail.com', '0962957900', '25', '239', 'sầ', 'https://drive.google.com/drive/folders/1bpgHCTDTvKx_iUNBX4JSF8jTEONE3xA7?usp=sharing'),
(22, 'test', 'Trần Ngọc Hóa', 'linhlinh20071994@gmail.com', '0962957900', '25', '239', 'sầ', 'https://drive.google.com/drive/folders/1bpgHCTDTvKx_iUNBX4JSF8jTEONE3xA7?usp=sharing'),
(26, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '24', '223', 'âsf', 'https://drive.google.com/drive/folders/1bpgHCTDTvKx_iUNBX4JSF8jTEONE3xA7?usp=sharing'),
(27, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '24', '223', 'âsf', 'https://drive.google.com/drive/folders/1bpgHCTDTvKx_iUNBX4JSF8jTEONE3xA7?usp=sharing'),
(28, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '24', '223', 'âsf', 'https://drive.google.com/drive/folders/1bpgHCTDTvKx_iUNBX4JSF8jTEONE3xA7?usp=sharing'),
(29, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '24', '223', 'âsf', 'https://drive.google.com/drive/folders/1bpgHCTDTvKx_iUNBX4JSF8jTEONE3xA7?usp=sharing'),
(30, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '24', '223', 'âsf', 'https://drive.google.com/drive/folders/1bpgHCTDTvKx_iUNBX4JSF8jTEONE3xA7?usp=sharing'),
(31, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '1', '1', 'sấ', 'https://drive.google.com/drive/folders/1bpgHCTDTvKx_iUNBX4JSF8jTEONE3xA7?usp=sharing'),
(32, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '1', '1', 'sấ', NULL),
(33, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '1', '1', 'sấ', NULL),
(34, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '1', '1', 'sấ', NULL),
(35, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '1', '1', 'sấ', NULL),
(36, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '1', '1', 'sấ', NULL),
(37, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '1', '1', 'sấ', NULL),
(38, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '1', '1', 'sấ', NULL),
(39, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '1', '1', 'sấ', NULL),
(40, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '1', '1', 'sấ', NULL),
(41, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '27', '264', 'sâsd', NULL),
(42, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '27', '264', 'sâsd', NULL),
(43, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '27', '264', 'sâsd', NULL),
(44, '', 'Bùi Thu Trang', 'linhlinh20071994@gmail.com', '0962957900', '19', '164', 'ádasd', NULL),
(45, '', 'Bùi Thu Trang', 'linhlinh20071994@gmail.com', '0962957900', '19', '164', 'ádasd', NULL),
(46, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '26', '252', 'sâsfas', NULL),
(47, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '26', '252', 'sâsfas', NULL),
(48, 'test', 'Bùi Thu Trang', 'linhlinh20071994@gmail.com', '0962957900', '20', '189', 'dsafasf', NULL),
(49, 'test', 'Bùi Thu Trang', 'linhlinh20071994@gmail.com', '0962957900', '20', '189', 'dsafasf', NULL),
(50, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '1', '1', 'sầ', NULL),
(51, 'test', 'Đặng Hồ Bảo Phương', 'linhlinh20071994@gmail.com', '0962957900', '24', '223', 'àaf', NULL),
(52, 'test', 'Đặng Hồ Bảo Phương', 'linhlinh20071994@gmail.com', '0962957900', '24', '223', 'àaf', NULL),
(53, 'test', 'Đặng Hồ Bảo Phương', 'linhlinh20071994@gmail.com', '0962957900', '24', '223', 'àaf', NULL),
(54, 'test', 'Đặng Hồ Bảo Phương', 'linhlinh20071994@gmail.com', '0962957900', '24', '223', 'àaf', NULL),
(55, 'test', 'Đặng Hồ Bảo Phương', 'linhlinh20071994@gmail.com', '0962957900', '25', '240', 'sầ', NULL),
(56, 'test', 'Huỳnh Thị Hoài Thơ', 'linhlinh20071994@gmail.com', '0962957900', '20', '178', 'ádasfas', NULL),
(57, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '2', '24', 'sàa', NULL),
(58, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '2', '24', 'sàa', NULL),
(59, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '2', '24', 'sàa', NULL),
(60, 'test', 'Nguyễn Anh Tú', 'linhlinh20071994@gmail.com', '0962957900', '1', '1', 'sầg', NULL),
(61, 'test', 'Nguyễn Anh Tú', 'linhlinh20071994@gmail.com', '0962957900', '1', '1', 'sầg', NULL),
(62, 'test', 'Nguyễn Anh Tú', 'linhlinh20071994@gmail.com', '0962957900', '1', '1', 'sầg', NULL),
(63, 'test', 'Nguyễn Anh Tú', 'linhlinh20071994@gmail.com', '0962957900', '1', '1', 'sầg', NULL),
(64, 'test', 'Nguyễn Anh Tú', 'linhlinh20071994@gmail.com', '0962957900', '1', '1', 'sầg', NULL),
(65, 'test', 'Nguyễn Anh Tú', 'linhlinh20071994@gmail.com', '0962957900', '1', '1', 'sầg', NULL),
(66, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '26', '252', 'àasf', NULL),
(67, 'test', 'Nguyễn Anh Tú', 'linhlinh20071994@gmail.com', '0962957900', '1', '1', 'sầg', NULL),
(68, 'test', 'Nguyễn Anh Tú', 'linhlinh20071994@gmail.com', '0962957900', '1', '1', 'sầg', NULL),
(69, 'test', 'Nguyễn Anh Tú', 'linhlinh20071994@gmail.com', '0962957900', '1', '1', 'sầg', NULL),
(70, 'test', 'Nguyễn Anh Tú', 'linhlinh20071994@gmail.com', '0962957900', '1', '1', 'sầg', NULL),
(71, 'test', 'Nguyễn Anh Tú', 'linhlinh20071994@gmail.com', '0962957900', '22', '207', 'ầgđf', NULL),
(72, 'test', 'Nguyễn Anh Tú', 'linhlinh20071994@gmail.com', '0962957900', '22', '207', 'ầgđf', NULL),
(73, 'test', 'Nguyễn Anh Tú', 'linhlinh20071994@gmail.com', '0962957900', '22', '207', 'ầgđf', NULL),
(74, 'test', 'Nguyễn Anh Tú', 'linhlinh20071994@gmail.com', '0962957900', '22', '207', 'ầgđf', NULL),
(75, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '26', '252', 'àasf', NULL),
(76, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '26', '252', 'àasf', NULL),
(77, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '26', '252', 'àasf', NULL),
(78, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '26', '252', 'àasf', NULL),
(79, 'bemai', './uploads/6822138ac597a_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-2.jpg', 'linhlinh20071994@gmail.com', '0962957900', '27', '264', './uploads/6822138ac597a_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-2.jpg', NULL),
(80, 'test', 'Nguyễn Anh Tú', 'linhlinh20071994@gmail.com', '0962957900', '22', '207', 'ầgđf', NULL),
(81, 'test', 'Nguyễn Anh Tú', 'linhlinh20071994@gmail.com', '0962957900', '22', '207', 'ầgđf', NULL),
(82, 'test', 'Nguyễn Anh Tú', 'linhlinh20071994@gmail.com', '0962957900', '22', '207', 'ầgđf', NULL),
(83, 'test', 'Nguyễn Anh Tú', 'linhlinh20071994@gmail.com', '0962957900', '22', '207', 'ầgđf', NULL),
(84, 'mai ngoc bé', 'mai ngoc bé', 'linhlinh20071994@gmail.com', '0962957900', '19', '164', 'mai ngoc bé', NULL),
(85, 'mai ngoc bé', 'mai ngoc bé', 'linhlinh20071994@gmail.com', '0962957900', '19', '164', 'mai ngoc bé', NULL),
(86, 'test', 'Đặng Hồ Bảo Phương', 'linhlinh20071994@gmail.com', '0962957900', '25', '240', 'sầ', NULL),
(87, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '30', '299', 'sádgsd', NULL),
(88, 'mai ngoc bé', 'mai ngoc bé', 'linhlinh20071994@gmail.com', '0962957900', '19', '164', 'mai ngoc bé', NULL),
(89, 'mai ngoc bé', 'mai ngoc bé', 'linhlinh20071994@gmail.com', '0962957900', '19', '164', 'mai ngoc bé', NULL),
(90, 'maimaimai', 'maimaimai', 'linhlinh20071994@gmail.com', '0962957900', '27', '264', 'maimaimai', NULL),
(91, 'maimaimai', 'maimaimai', 'linhlinh20071994@gmail.com', '0962957900', '27', '264', 'maimaimai', NULL),
(92, 'maimaimai', 'maimaimai', 'linhlinh20071994@gmail.com', '0962957900', '27', '264', 'maimaimai', NULL),
(93, 'maimaimai', 'maimaimai', 'linhlinh20071994@gmail.com', '0962957900', '27', '264', 'maimaimai', NULL),
(94, 'maimaimai', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '30', '300', 'ságsdhfdh', NULL),
(95, 'maimaimai', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '30', '300', 'ságsdhfdh', NULL),
(96, 'maimaimai', 'maimaimai', 'linhlinh20071994@gmail.com', '0962957900', '27', '264', 'maimaimai', NULL),
(97, 'maimaimai', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '30', '300', 'ságsdhfdh', NULL),
(98, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '1', '1', 'ádsdfdh', NULL),
(99, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '1', '1', 'ádsdfdh', NULL),
(100, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '25', '240', 'sdgdhd', NULL),
(101, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '1', '1', 'sầ', NULL),
(102, 'maimaimai', 'Nguyễn Anh Tú', 'linhlinh20071994@gmail.com', '0962957900', '27', '264', 'dsdbdf', NULL),
(103, 'maimaimai', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '25', '240', 'àasfa', NULL),
(104, 'maimaimai', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '25', '240', 'àasfa', NULL),
(105, 'bemai', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '25', '240', 'sdsdg', NULL),
(106, 'bemai', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '25', '240', 'sdsdg', NULL),
(107, 'bemai', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '25', '240', 'sdsdg', NULL),
(108, 'bemai', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '25', '240', 'sdsdg', NULL),
(109, 'maimaimai', 'maimaimai', 'linhlinh20071994@gmail.com', '0962957900', '27', '264', 'maimaimai', NULL),
(110, 'maimaimai', 'maimaimai', 'linhlinh20071994@gmail.com', '0962957900', '27', '264', 'maimaimai', NULL),
(111, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '36', '366', 'sdvsdvds', NULL),
(112, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '36', '366', 'sdvsdvds', NULL),
(113, 'maimaimai', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '27', '264', 'âsdggfd', NULL),
(114, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '36', '366', 'sdvsdvds', NULL),
(115, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '36', '366', 'sdvsdvds', NULL),
(116, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '30', '299', 'sàa', NULL),
(117, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '30', '299', 'sàa', NULL),
(118, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '30', '299', 'sàa', NULL),
(119, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '19', '164', 'sàas', NULL),
(120, 'bemai', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '25', '240', 'sdsdg', NULL),
(121, 'bemai', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '25', '240', 'sdsdg', NULL),
(122, 'maimaimai', 'maimaibe', 'linhlinh20071994@gmail.com', '0962957900', '25', '240', 'maimaibe', NULL),
(123, 'maimaimai', 'maimaibe', 'linhlinh20071994@gmail.com', '0962957900', '25', '240', 'maimaibe', NULL),
(124, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '26', '253', 'sdvxcvcx', NULL),
(125, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '26', '253', 'sdvxcvcx', NULL),
(126, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '26', '253', 'sdvxcvcx', NULL),
(127, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '26', '253', 'sdvxcvcx', NULL),
(128, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '26', '253', 'sdvxcvcx', NULL),
(129, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '26', '253', 'sdvxcvcx', NULL),
(130, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '26', '253', 'sdvxcvcx', NULL),
(131, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '26', '253', 'sdvxcvcx', NULL),
(132, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '26', '253', 'sdvxcvcx', NULL),
(133, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '26', '253', 'sdvxcvcx', NULL),
(134, 'maimaimai', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '25', '240', 'sádgsdg', NULL),
(135, 'maimaimai', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '25', '240', 'sádgsdg', NULL),
(136, 'maimaimai', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '25', '240', 'sádgsdg', NULL),
(137, 'maimaimai', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '25', '240', 'sádgsdg', NULL),
(138, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '19', '164', 'sàas', NULL),
(139, 'maimaimai', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '30', '300', 'scscasscsa', NULL),
(140, 'maimaimai', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '30', '300', 'scscasscsa', NULL),
(141, 'mai ngoc bé', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '25', '240', 'sdgsdgsd', NULL),
(142, 'mai ngoc bé', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '25', '240', 'sdgsdgsd', NULL),
(143, 'test', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '20', '178', 'dvdsvsd', NULL),
(144, 'maimaimai', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '22', '207', 'sấc', NULL),
(145, 'maimaimai', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '22', '207', 'sấc', NULL),
(146, 'maimaimai', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '22', '207', 'sấc', NULL),
(147, 'maimaimai', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '22', '207', 'sấc', NULL),
(148, '', '', '', '', '', '', '', NULL),
(149, '', '', '', '', '', '', '', NULL),
(150, '', '', '', '', '', '', '', NULL),
(151, 'bemai', './uploads/6822138ac597a_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-2.jpg', 'linhlinh20071994@gmail.com', '0962957900', '27', '264', './uploads/6822138ac597a_7-sieu-thuc-pham-da-duoc-chung-minh-la-tot-nhat-cho-gan-2.jpg', NULL),
(152, 'test', 'Nguyễn Vũ Minh Anh', '', '', '', '', '', NULL),
(153, 'test', 'Nguyễn Vũ Minh Anh', '', '', '', '', '', NULL),
(154, '', '', '', '', '', '', '', NULL),
(155, 'maimaimai', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '25', '240', 'ádasdas', NULL),
(156, 'maimaimai', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '25', '240', 'ádasdas', NULL),
(157, 'maimaimai', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '25', '240', 'âcsca', NULL),
(158, 'maimaimai', 'Nguyễn Vũ Minh Anh', 'linhlinh20071994@gmail.com', '0962957900', '25', '240', 'âcsca', NULL),
(159, '', '', '', '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(80) NOT NULL,
  `password` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'plo', '34hoangvietp4');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `datafile`
--
ALTER TABLE `datafile`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `filedinhkem`
--
ALTER TABLE `filedinhkem`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `LienHeID` (`LienHeID`);

--
-- Chỉ mục cho bảng `thongtinlienhe`
--
ALTER TABLE `thongtinlienhe`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `datafile`
--
ALTER TABLE `datafile`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `filedinhkem`
--
ALTER TABLE `filedinhkem`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT cho bảng `thongtinlienhe`
--
ALTER TABLE `thongtinlienhe`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `filedinhkem`
--
ALTER TABLE `filedinhkem`
  ADD CONSTRAINT `filedinhkem_ibfk_1` FOREIGN KEY (`LienHeID`) REFERENCES `thongtinlienhe` (`ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
