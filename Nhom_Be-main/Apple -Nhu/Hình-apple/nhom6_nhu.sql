-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 29, 2024 lúc 09:47 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nhom6_nhu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufactures`
--

CREATE TABLE `manufactures` (
  `manu_id` int(11) NOT NULL,
  `manu_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `manufactures`
--

INSERT INTO `manufactures` (`manu_id`, `manu_name`) VALUES
(1, 'Apple'),
(2, 'Samsung'),
(3, 'Oppo'),
(4, 'Xiaomi'),
(5, 'Sony');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `manu_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `feature` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `manu_id`, `type_id`, `price`, `image`, `description`, `feature`, `created_at`) VALUES
(1, 'iPhone 16 Pro', 1, 1, 28999000, 'iphone16pro-digitalmat-gallery-1-202409', 'Thiết kế titan với màn hình Super Retina XDR 6,3 inch lớn hơn, chú thích 1 Ceramic Shield thế hệ mới nhất bền chắc, nút Tác Vụ, và USB-C hỗ trợ tốc độ chuẩn USB 3 chú thích 2\r\nĐiều Khiển Camera giúp bạn truy cập nhanh các công cụ camera dễ dàng hơn\r\nChip A18 Pro tăng cường khả năng chơi game AAA, nâng cấp các tính năng chụp ảnh và quay video, đồng thời giúp mang đến bước tiến vượt bậc về thời lượng pin\r\niPhone đầu tiên được thiết kế cho Apple Intelligence. chú thích 3 Riêng tư, bảo mật, mạnh mẽ\r\n4K Dolby Vision tốc độ 120 fps và 4 micrô chất lượng chuẩn studio. Một studio Pro ngay trong túi bạn\r\nChụp ảnh và quay video không gian cực đỉnh trên iPhone 16 Pro, rồi xem lại trên Apple Vision Pro chú thích 4', 1, '2024-10-29 08:24:45'),
(2, 'iPhone 16', 1, 1, 22999000, 'iphone16-digitalmat-gallery-1-202409', 'Thiết kế nhôm chuẩn hàng không vũ trụ 6,1 inch chú thích 1 với mặt trước Ceramic Shield thế hệ mới nhất bền chắc, nút Tác Vụ, và USB-C\r\nĐiều Khiển Camera giúp bạn truy cập nhanh các công cụ camera dễ dàng hơn\r\nChip A18 hỗ trợ các tính năng chụp ảnh, quay video đẳng cấp mới và chơi game như dùng máy console với hiệu quả tiết kiệm điện vượt trội\r\niPhone đầu tiên được thiết kế cho Apple Intelligence. chú thích 2 Riêng tư, bảo mật, mạnh mẽ\r\nThời lượng pin tăng vượt trội với thời gian xem video lên đến 22 giờ chú thích 3\r\nChụp ảnh và quay video không gian cực đỉnh trên iPhone 16, rồi xem lại trên Apple Vision Pro chú thích 4', 0, '2024-10-29 08:24:45'),
(3, 'iPhone 15', 1, 1, 0, 'iphone15-digitalmat-gallery-1-202309', 'Thiết kế bằng nhôm và kính pha màu bền bỉ 15,5 cm chú thích ◊ với mặt trước có Ceramic Shield\r\nDynamic Island hiển thị linh động các cảnh báo và Hoạt Động Trực Tiếp, nhờ đó bạn sẽ không bỏ lỡ thông tin khi đang làm việc khác\r\nCamera Chính 48MP với Telephoto 2x chụp rõ nét và tuyệt đẹp từng chi tiết cận cảnh hoặc từ xa\r\nChip A16 Bionic hỗ trợ nhiếp ảnh điện toán, cho hiệu năng chơi game mượt mà và tiết kiệm pin tuyệt vời với pin dùng cả ngày\r\nKết nối và sạc với USB-C', 0, '2024-10-29 08:24:45'),
(4, 'iPhone 14', 1, 1, 17299000, 'iphone14-digitalmat-gallery-1-202303', 'Thiết kế bền bỉ 15,4 cm¹ với Ceramic Shield, chống nước và chống bụi\r\nThời lượng pin cả ngày, thời gian xem video lên đến 20 giờ²\r\nVới tính năng Phát Hiện Va Chạm, iPhone 14 có thể phát hiện va chạm ô tô nghiêm trọng và gọi trợ giúp³\r\nCamera Chính cấp độ Pro và khả năng xử lý hình ảnh được cải thiện giúp chụp được những bức ảnh tuyệt vời trong mọi điều kiện ánh sáng\r\nA15 Bionic, chip siêu nhanh giống như chip của iPhone 13 Pro', 0, '2024-10-29 08:24:45'),
(5, 'iPhone SE', 1, 1, 11999000, 'iphonese-digitalmat-gallery-1-202203', 'Màn hình Retina HD 11,94 cm chú thích ¹ sáng, đầy màu sắc và sắc nét\r\nA15 Bionic, chip siêu nhanh giống như chip của iPhone 13\r\nMạng 5G để tải xuống nhanh cũng như xem video và nghe nhạc trực tuyến chất lượng cao chú thích ²\r\nCamera thông minh hơn có thể tự động điều chỉnh để khuôn mặt, địa điểm, mọi thứ trông thật ấn tượng\r\nNút Home với Touch ID — mở khóa và đăng nhập vào các ứng dụng một cách an toàn', 0, '2024-10-29 08:24:45'),
(6, 'MacBook Air\r\n13 inch với chip M2', 1, 2, 24999000, 'mba13-m2-digitalmat-gallery-1-202402', 'Thiết kế gọn nhẹ — MacBook Air nhẹ và mỏng dưới 2 cm, nên bạn có thể đem theo ở bất cứ nơi đâu.\r\nLàm được nhiều hơn, nhanh hơn — CPU 8 lõi và GPU lên đến 10 lõi mạnh mẽ trong chip Apple M2 giúp mọi thứ hoạt động trơn tru.\r\nThời lượng pin lên đến 18 giờ —Thời lượng pin khủng, dùng được cả ngày cho phép bạn có thể để bộ sạc ở nhà.  chú thích  ¹\r\nMột màn hình rực rỡ — Màn hình Liquid Retina 13,6 inch hỗ trợ 1 tỷ màu.  chú thích  ²\r\nHình đẹp, tiếng hay — Mọi nội dung đều hiển thị sắc nét và âm thanh tuyệt vời nhờ camera FaceTime HD 1080p, ba micrô, và bốn loa với chế độ Âm Thanh Không Gian.', 1, '2024-10-29 08:31:13'),
(7, 'MacBook Pro 14 inch', 1, 2, 39999000, 'mbp-14-digitalmat-gallery-1-202310', 'Với M3, M3 Pro, hoặc M3 Max, những con chip tiên tiến nhất dành cho máy tính cá nhân của Apple, MacBook Pro trao cho bạn sức mạnh để thực hiện các dự án phức tạp nhất\r\nHoạt động bền bỉ cả ngày dài với thời lượng pin lên đến 22 giờ Chú thích¹\r\nMàn hình Liquid Retina XDR tốt nhất từng có ở một chiếc máy tính xách tay, với Extreme Dynamic Range, độ tương phản cực cao và màu chân thật\r\nHình ảnh sắc nét, âm thanh trong trẻo mọi lúc, mọi nơi với camera FaceTime HD 1080p, ba micrô chất lượng phòng thu và sáu loa với công nghệ Âm Thanh Không Gian\r\nKết nối mọi thứ bạn cần với tối đa ba cổng Thunderbolt 4, một khe thẻ nhớ SDXC, một cổng HDMI, một cổng MagSafe 3 và một jack cắm tai nghe', 0, '2024-10-29 08:31:13'),
(8, 'MacBook Air\r\n13 inch với chip M3', 1, 2, 27999000, 'mba13-m3-digitalmat-gallery-1-202402', 'Thiết kế gọn nhẹ — MacBook Air nhẹ và mỏng dưới 2 cm, nên bạn có thể đem theo ở bất cứ nơi đâu.\r\nLàm được nhiều hơn, nhanh hơn — CPU 8 lõi và GPU lên đến 10 lõi mạnh mẽ trong chip Apple M3 giúp mọi thứ hoạt động trơn tru.\r\nThời lượng pin lên đến 18 giờ — Thời lượng pin khủng, dùng được cả ngày cho phép bạn có thể để bộ sạc ở nhà.  chú thích  ¹\r\nMột màn hình rực rỡ — Màn hình Liquid Retina 13,6 inch hỗ trợ 1 tỷ màu.  chú thích  ²\r\nHình đẹp, tiếng hay — Mọi nội dung đều hiển thị sắc nét và âm thanh tuyệt vời nhờ camera FaceTime HD 1080p, ba micrô, và bốn loa với chế độ Âm Thanh Không Gian.', 0, '2024-10-29 08:31:13'),
(9, 'MacBook Pro 16 inch', 1, 2, 64999000, 'mbp-16-digitalmat-gallery-1-202310', 'Với M3 Pro hoặc M3 Max, những con chip tiên tiến nhất dành cho máy tính cá nhân của Apple, MacBook Pro giúp bạn thực hiện các dự án phức tạp nhất\r\nHoạt động bền bỉ cả ngày dài với thời lượng pin lên đến 22 giờ Chú thích¹\r\nMàn hình Liquid Retina XDR tốt nhất từng có ở một chiếc máy tính xách tay, với Extreme Dynamic Range, độ tương phản cực cao và màu chân thật\r\nHình ảnh sắc nét, âm thanh trong trẻo mọi lúc, mọi nơi với camera FaceTime HD 1080p, ba micrô chất lượng phòng thu và sáu loa với công nghệ Âm Thanh Không Gian\r\nKết nối mọi thứ bạn cần với ba cổng Thunderbolt 4, một khe thẻ nhớ SDXC, một cổng HDMI, một cổng MagSafe 3 và một jack cắm tai nghe', 0, '2024-10-29 08:31:13'),
(10, 'MacBook Air\r\n15 inch với chip M3', 1, 2, 32999000, 'mba15-m3-digitalmat-gallery-1-202402', 'Thiết kế gọn nhẹ — MacBook Air nhẹ và mỏng dưới 2 cm, nên bạn có thể đem theo ở bất cứ nơi đâu.\r\nLàm được nhiều hơn, nhanh hơn — CPU 8 lõi và GPU 10 lõi mạnh mẽ trong chip Apple M3 giúp mọi thứ hoạt động trơn tru.\r\nThời lượng pin lên đến 18 giờ — Thời lượng pin khủng, dùng được cả ngày cho phép bạn có thể để bộ sạc ở nhà.  chú thích  ¹\r\nThêm không gian cho những điều bạn yêu — Màn hình Liquid Retina 15,3 inch hỗ trợ 1 tỷ màu.  chú thích  ²\r\nHình đẹp, tiếng hay — Mọi nội dung đều hiển thị sắc nét và âm thanh tuyệt vời nhờ camera FaceTime HD, ba micrô, và sáu loa với chế độ Âm Thanh Không Gian.', 0, '2024-10-29 08:31:13'),
(11, 'iPad Pro 11 inch', 1, 4, 28999000, 'ipadpro11-digitalmat-gallery-1-202404', 'Màn hình Ultra Retina XDR¹ với ProMotion, dải màu rộng P3 và True Tone. Tùy chọn mặt kính có cấu trúc nano.\r\nChip Apple M4 mang đến hiệu năng như mơ cho các luồng công việc chuyên nghiệp và thời lượng pin dùng cả ngày²\r\nApple Intelligence giúp bạn viết lách, thể hiện bản thân và hoàn thành công việc dễ dàng, đồng thời mang đến sự yên tâm với các tính năng bảo vệ quyền riêng tư đột phá.³\r\nCamera chuyên nghiệp với LiDAR Scanner và camera trước Ultra Wide 12MP trên cạnh ngang với tính năng Trung Tâm Màn Hình\r\nTương thích với Apple Pencil Pro, Apple Pencil (USB-C), Magic Keyboard cho iPad Pro và Smart Folio⁴', 1, '2024-10-29 08:36:30'),
(12, 'iPad Air 11 inch', 1, 4, 16999000, 'ipadair11-digitalmat-gallery-1-202404', 'Màn hình Liquid Retina mang đến trải nghiệm xem sống động, chân thực¹\r\nChip Apple M2 tạo đà cho bước nhảy vọt về hiệu năng, cùng với thời lượng pin bền bỉ cả ngày²\r\nApple Intelligence giúp bạn viết lách, thể hiện bản thân và hoàn thành công việc dễ dàng, đồng thời mang đến sự yên tâm với các tính năng bảo vệ quyền riêng tư đột phá.³\r\nCamera trước Ultra Wide 12MP chế độ ngang với tính năng Trung Tâm Màn Hình mang lại trải nghiệm gọi video tuyệt vời\r\nTương thích với Apple Pencil Pro, Apple Pencil (USB-C), Magic Keyboard và Smart Folio⁴', 0, '2024-10-29 08:36:30'),
(13, 'iPad Air 13 inch', 1, 4, 22499000, 'ipadair13-digitalmat-gallery-2-202404', 'Màn hình Liquid Retina mang đến trải nghiệm xem sống động, chân thực¹\r\nChip Apple M2 tạo đà cho bước nhảy vọt về hiệu năng, cùng với thời lượng pin bền bỉ cả ngày²\r\nApple Intelligence giúp bạn viết lách, thể hiện bản thân và hoàn thành công việc dễ dàng, đồng thời mang đến sự yên tâm với các tính năng bảo vệ quyền riêng tư đột phá.³\r\nCamera trước Ultra Wide 12MP chế độ ngang với tính năng Trung Tâm Màn Hình mang lại trải nghiệm gọi video tuyệt vời\r\nTương thích với Apple Pencil Pro, Apple Pencil (USB-C), Magic Keyboard và Smart Folio⁴', 0, '2024-10-29 08:36:30'),
(14, 'iPad', 1, 4, 9999000, 'ipad-digitalmat-gallery-1-202210', 'Chip A14 Bionic cho phép bạn chạy nhiều ứng dụng và hoạt động mượt mà giữa các ứng dụng\r\nThiết kế toàn màn hình với màn hình Liquid Retina 10.9 inch¹ mang lại trải nghiệm xem tuyệt vời\r\nCamera trước Ultra Wide 12MP chế độ ngang với tính năng Trung Tâm Màn Hình mang lại trải nghiệm gọi video tuyệt vời\r\nDuy trì kết nối nhanh thông qua Wi-Fi 6 và mạng không dây 5G²\r\nTương thích với Apple Pencil (USB‑C), Apple Pencil (thế hệ thứ 1)³, Magic Keyboard Folio và Smart Folio⁴', 0, '2024-10-29 08:36:30'),
(15, 'iPad mini', 1, 4, 13999000, 'ipad-mini-digitalmat-gallery-1-202410', 'Màn hình Liquid Retina 8,3 inch tuyệt đẹp với True Tone và dải màu rộng P3 chú thích ¹\r\nChip A17 Pro cho hiệu năng siêu nhanh và thời lượng pin dùng cả ngày²\r\nApple Intelligence giúp bạn viết lách, thể hiện bản thân và hoàn thành công việc dễ dàng, đồng thời mang đến sự yên tâm với các tính năng bảo vệ quyền riêng tư đột phá.³\r\nCamera trước Ultra Wide 12MP với tính năng Trung Tâm Màn Hình cho các cuộc gọi video tự nhiên hơn\r\nTương thích với Apple Pencil Pro, Apple Pencil (USB-C) và Smart Folio chú thích ⁴', 0, '2024-10-29 08:36:30'),
(16, 'AirPods 4', 1, 5, 3499000, 'hero_airpods_4gen__e53e9vzroy2q_large', 'Công Nghệ\r\nÂm Thanh1\r\nTrình điều khiển Apple với độ lệch tương phản cao có thể tùy chỉnh\r\nBộ khuếch đại với độ lệch tương phản cao có thể tùy chỉnh\r\nTách Lời Nói2\r\nChế độ Âm Thanh Không Gian Cá Nhân Hóa với tính năng theo dõi chuyển động đầu chủ động3\r\nEQ Thích Ứng\r\nHệ thống thông hơi để cân bằng áp suất\r\nCảm Biến\r\nMicrô kép điều hướng chùm sóng\r\nMicrô hướng vào trong\r\nCảm biến quang học nhận biết khi đeo\r\nGia tốc kế phát hiện chuyển động\r\nGia tốc kế phát hiện giọng nói\r\nCảm biến lực', 1, '2024-10-29 08:46:55'),
(17, 'AirPods 4\r\nChủ Động Khử Tiếng Ồn', 1, 5, 4499000, 'hero_airpods_4gen_active__bofs1xp3rnaq_large', 'Trình điều khiển Apple với độ lệch tương phản cao có thể tùy chỉnh\r\nBộ khuếch đại với độ lệch tương phản cao có thể tùy chỉnh\r\nChủ Động Khử Tiếng Ồn\r\nÂm Thanh Thích Ứng4\r\nChế độ Xuyên Âm1\r\nNhận Biết Cuộc Hội Thoại4\r\nTách Lời Nói2\r\nChế độ Âm Thanh Không Gian Cá Nhân Hóa với tính năng theo dõi chuyển động đầu chủ động3\r\nEQ Thích Ứng\r\nHệ thống thông hơi để cân bằng áp suất\r\nMicrô kép điều hướng chùm sóng\r\nMicrô hướng vào trong\r\nCảm biến quang học nhận biết khi đeo\r\nGia tốc kế phát hiện chuyển động\r\nGia tốc kế phát hiện giọng nói\r\nCảm biến lực', 0, '2024-10-29 08:46:55'),
(18, 'AirPods Pro 2', 1, 5, 6199000, 'airpods__ea3kvnhxv96q_large', 'Công Nghệ Âm Thanh\r\nTrình điều khiển Apple với độ lệch tương phản cao\r\ncó thể tùy chỉnh\r\nBộ khuếch đại với độ lệch tương phản cao có thể tùy chỉnh\r\nTính năng Chủ Động Khử Tiếng Ồn đẳng cấp Pro1\r\nÂm Thanh Thích Ứng2\r\nChế độ Xuyên Âm3\r\nNhận Biết Cuộc Hội Thoại2\r\nTách Lời Nói4\r\nÂm Lượng Cá Nhân Hóa4\r\nChế độ Âm Thanh Không Gian Cá Nhân Hóa với tính năng theo dõi chuyển động đầu chủ động5\r\nEQ Thích Ứng\r\nHệ thống thông hơi để cân bằng áp suất\r\nSức Khỏe\r\nThính Giác\r\nGiảm Âm Thanh Lớn\r\nTăng Cường Hội Thoại\r\nÂm Thanh Trong Nền\r\nCảm Biến\r\nMicrô kép điều hướng chùm sóng\r\nMicrô hướng vào trong\r\nCảm biến da\r\nGia tốc kế phát hiện chuyển động\r\nGia tốc kế phát hiện giọng nói\r\nĐiều khiển bằng thao tác chạm', 0, '2024-10-29 08:46:55'),
(19, 'AirPods Max', 1, 5, 13199000, 'airpods-max-select-202409-blue_FV1', 'Công Nghệ Âm Thanh\r\nTrình điều khiển động do Apple thiết kế\r\nTính năng Chủ Động Khử Tiếng Ồn đẳng cấp Pro1\r\nChế độ Xuyên Âm\r\nChế độ Âm Thanh Không Gian Cá Nhân Hóa với tính năng theo dõi chuyển động đầu chủ động2\r\nEQ Thích Ứng\r\nCảm Biến\r\nCảm biến quang học (mỗi bên củ tai)\r\nCảm biến vị trí (mỗi bên củ tai)\r\nCảm biến phát hiện hộp (mỗi bên củ tai)\r\nGia tốc kế (mỗi bên củ tai)\r\nCon quay hồi chuyển (củ tai bên trái)\r\nMicrô\r\nTổng cộng chín micrô:\r\n\r\nTám micrô dành cho tính năng Chủ Động Khử Tiếng Ồn\r\nBa micrô dành cho tính năng nhận diện giọng nói (hai micrô dùng chung với tính năng Chủ Động Khử Tiếng Ồn và một micrô bổ sung)\r\nChip\r\nChip tai nghe Apple H1 (mỗi bên củ tai)', 0, '2024-10-29 08:46:55'),
(20, 'EarPods (Lightning Connector)', 1, 5, 481038, 'MMTN2', '**Tổng quan**  \r\nKhác với các loại tai nghe dạng tròn truyền thống, thiết kế của EarPods được định hình theo cấu trúc của tai người. Điều này giúp chúng thoải mái hơn cho nhiều người so với các tai nghe dạng nhét tai khác.\r\n\r\nCác loa bên trong EarPods được thiết kế để tối đa hóa âm lượng, mang lại âm thanh chất lượng cao.\r\n\r\nEarPods (cổng Lightning) còn tích hợp điều khiển từ xa, cho phép bạn điều chỉnh âm lượng, điều khiển phát nhạc và video, cũng như trả lời hoặc kết thúc cuộc gọi chỉ bằng một nút nhấn.\r\n\r\n**Điểm nổi bật**  \r\n- Thiết kế bởi Apple  \r\n- Âm trầm sâu và phong phú  \r\n- Bảo vệ khỏi mồ hôi và nước  \r\n- Điều khiển phát nhạc và video  \r\n- Trả lời và kết thúc cuộc gọi  \r\n\r\n**Trong hộp bao gồm**  \r\nEarPods với cổng Lightning\r\n\r\n**Yêu cầu hệ thống**  \r\n**Thông tin tương thích**  \r\nHoạt động với tất cả các thiết bị có cổng Lightning và hỗ trợ iOS 10 trở lên, bao gồm iPod touch, iPad và iPhone.', 0, '2024-10-29 08:46:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `protypes`
--

CREATE TABLE `protypes` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `protypes`
--

INSERT INTO `protypes` (`type_id`, `type_name`) VALUES
(1, 'Điện thoại'),
(2, 'Laptop'),
(3, 'Loa'),
(4, 'Máy tính bảng'),
(5, 'Tai nghe');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `manufactures`
--
ALTER TABLE `manufactures`
  ADD PRIMARY KEY (`manu_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `protypes`
--
ALTER TABLE `protypes`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `manufactures`
--
ALTER TABLE `manufactures`
  MODIFY `manu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `protypes`
--
ALTER TABLE `protypes`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
