-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2025 at 12:06 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gestion_utilisateurs`
--

-- --------------------------------------------------------

--
-- Table structure for table `favoris`
--

CREATE TABLE `favoris` (
  `id` int(11) NOT NULL,
  `id_utilisateur` int(11) DEFAULT NULL,
  `id_favori` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favoris`
--

INSERT INTO `favoris` (`id`, `id_utilisateur`, `id_favori`) VALUES
(7, 20, 19),
(16, 25, 19),
(17, 19, 18),
(18, 27, 26),
(21, 28, 19),
(24, 29, 21);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `id_expediteur` int(11) DEFAULT NULL,
  `id_destinataire` int(11) DEFAULT NULL,
  `contenu` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_read` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `id_expediteur`, `id_destinataire`, `contenu`, `date`, `is_read`) VALUES
(2, 19, 18, 'ايسيسيسلس', '2025-04-24 20:52:49', 0),
(3, 21, 19, 'السلام عليكم', '2025-04-25 09:05:29', 1),
(4, 19, 18, 'fdsfdfd', '2025-04-25 09:38:39', 0),
(5, 24, 20, 'slt', '2025-04-27 12:17:52', 1),
(6, 20, 24, 'slt', '2025-04-27 12:18:59', 0),
(7, 25, 18, 'aaaaa', '2025-05-06 16:09:39', 0),
(8, 26, 19, 'ssss', '2025-05-06 16:13:09', 1),
(9, 25, 26, 'sdddd', '2025-05-06 16:13:40', 1),
(10, 27, 18, 'gg', '2025-08-09 19:18:55', 0),
(11, 29, 20, 'Hallo', '2025-12-22 10:25:09', 0);

-- --------------------------------------------------------

--
-- Table structure for table `projets`
--

CREATE TABLE `projets` (
  `id` int(11) NOT NULL,
  `id_utilisateur` int(11) DEFAULT NULL,
  `titre` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projets`
--

INSERT INTO `projets` (`id`, `id_utilisateur`, `titre`, `description`, `date`) VALUES
(1, 20, 'saadi project', 'saadi project', '2025-04-24'),
(2, 19, 'nionn', 'nionn', '2025-04-25'),
(3, 19, 'skallllllllllllllllllllllll    ', 'skallllllllllllllllllllllll    ', '2025-04-25');

-- --------------------------------------------------------

--
-- Table structure for table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `filiere` varchar(100) NOT NULL,
  `competencies` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `first_name`, `last_name`, `email`, `password`, `filiere`, `competencies`, `image`, `created_at`) VALUES
(18, 'مسجد', 'الرسالة الطاهير', 'arrisalamosquee@gmail.com', '$2y$10$e0dDxfdkgYGsGgB8v9Im1.jdNawGHPhRg7QfRY5Qh/3QTlZpGHEGm', 'engineering', 'يسبيبيسبيس', 'Uploads/680a8de679dc7.jpg', '2025-04-24 19:15:50'),
(19, 'Islam', 'Mimoune1', 'slmx7710@gmail.com', '$2y$10$9hq8puyI8ENxA0pqvSBMRup5Lk8KOcUdc2K.a4x6ybFT5y.07rrLi', 'mathematics', 'abcd', NULL, '2025-04-24 20:00:59'),
(20, 'saadi', 'abderrahim', 'sdrahimm@gmail.com', '$2y$10$k1rrmNUetggqVXczSrxvJ.oKLVsjq6t4cDBwbUZNKCrO.uZegojB6', 'computer_science', 'project 112', 'Uploads/680ab1b0b330e.png', '2025-04-24 21:44:03'),
(21, 'sasasa', 'xcxz', 'sakjdakjsd@gmail.com', '$2y$10$VFSsE0jLOQp02mkQXkYZXuInL8hsRPcKjwRe8IqficCnHovXwz4/2', 'physics', 'qwert', 'Uploads/680b50212f40b.jpeg', '2025-04-25 09:04:33'),
(24, 'saadi', 'rrr', 'saad@gmail.com', '$2y$10$Rawv4.4F8rkM5AV2rQF8H.WZpUn5U2R07mALUtux4YgVc/0Ml4JLa', 'computer_science', 'ftft', 'Uploads/680e1fc6d111a.png', '2025-04-27 12:15:02'),
(25, 'soufane', 'ibrahim', 'soufaneibrahim18@gmail.com', '$2y$10$pAuoz0QYgSoOJw0zT3PHqOFOEQ77rcl7fN3Rzu51QL44Yr5DvWiR2', 'engineering', 'jasdokhaldhadoj', 'Uploads/681a3377a92dc.jpeg', '2025-05-06 16:06:15'),
(26, 'moubha', 'nadir', 'mobhamednadir@gmail.com', '$2y$10$KPfTobxqwhnYtZAAtzDbe.WlHDCko.ygY9oYIuumnz.79HocbTPU6', 'computer_science', 'aaassasasasasa', 'Uploads/681a34f3e81f1.jpeg', '2025-05-06 16:12:35'),
(27, 'moh', 'ss', 'mohss@gmail.com', '$2y$10$1qYQpe3yjNIQcltqLb8/ouzUNdsniLAhkPbaP5g59wTqlw/TGCj2W', 'computer_science', 'qwufigsajkfkjkj', 'Uploads/68979e0704bfc.jpg', '2025-08-09 19:14:15'),
(28, 'aa', 'bb', 'aabb12@gmail.com', '$2y$10$6cz5NR9JktJl57ZnRpuB1u5b6gcRPfyAKscdbKuCXsvnOwqKhnP8C', 'physics', 'aazx', 'Uploads/6948e86a8ec94.png', '2025-12-22 06:42:50'),
(29, 'Islam', 'Mimoune', 'islam.mimoune.22@gmail.com', '$2y$10$8WRuWWgndsCZMZ6S2j62ieWmuyNHanmJy.kcmSbTR0GVh/N7vsM2S', 'computer_science', 'Database Management', 'Uploads/69491abd64651.jpg', '2025-12-22 10:17:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `favoris`
--
ALTER TABLE `favoris`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_utilisateur` (`id_utilisateur`),
  ADD KEY `id_favori` (`id_favori`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_expediteur` (`id_expediteur`),
  ADD KEY `id_destinataire` (`id_destinataire`);

--
-- Indexes for table `projets`
--
ALTER TABLE `projets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_utilisateur` (`id_utilisateur`);

--
-- Indexes for table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `favoris`
--
ALTER TABLE `favoris`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `projets`
--
ALTER TABLE `projets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `favoris`
--
ALTER TABLE `favoris`
  ADD CONSTRAINT `favoris_ibfk_1` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateurs` (`id`),
  ADD CONSTRAINT `favoris_ibfk_2` FOREIGN KEY (`id_favori`) REFERENCES `utilisateurs` (`id`);

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`id_expediteur`) REFERENCES `utilisateurs` (`id`),
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`id_destinataire`) REFERENCES `utilisateurs` (`id`);

--
-- Constraints for table `projets`
--
ALTER TABLE `projets`
  ADD CONSTRAINT `projets_ibfk_1` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateurs` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
