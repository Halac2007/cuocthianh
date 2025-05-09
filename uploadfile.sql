-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 26, 2022 lúc 11:46 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

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
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` int(20) NOT NULL,
  `email` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL
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
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(80) NOT NULL,
  `password` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `datafile`
--
ALTER TABLE `datafile`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
