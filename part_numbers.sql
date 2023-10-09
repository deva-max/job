-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2023 at 10:49 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job`
--

-- --------------------------------------------------------

--
-- Table structure for table `part_numbers`
--

CREATE TABLE `part_numbers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `part_number` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `part_numbers`
--

INSERT INTO `part_numbers` (`id`, `part_number`, `description`, `created_at`, `updated_at`) VALUES
(1, '1870', 'Aut pariatur quia voluptatem dolorum quia laudantium saepe qui unde eveniet quia architecto error enim quis laborum voluptas velit cumque quia dolores autem eligendi officiis nesciunt natus voluptas ad dolores nam unde facilis quibusdam consectetur sed architecto.', '2023-10-04 07:50:31', '2023-10-04 07:50:31'),
(2, '94325', 'Facere totam quam nam laudantium ipsa eos voluptatem qui qui qui quia velit facere enim autem et non dolores et quia modi voluptate ipsam qui esse ut voluptates amet ab pariatur voluptas enim asperiores perspiciatis placeat quidem maxime veritatis incidunt consequatur.', '2023-10-04 07:50:31', '2023-10-04 07:50:31'),
(3, '28533', 'Est delectus saepe et delectus ipsum ducimus nihil dolor odio ad enim omnis qui sunt inventore sed tenetur quia quo quisquam dolor sint consectetur deserunt soluta nihil iste sequi quos et quia quis facilis sequi voluptatibus accusamus ducimus provident repellat non quia illum sint esse eum.', '2023-10-04 07:50:31', '2023-10-04 07:50:31'),
(4, '99447', 'Ab omnis nulla minima repellat quo eum dicta corporis sit sunt optio assumenda dolorum distinctio nihil quae itaque ipsum inventore laboriosam distinctio voluptatem quis assumenda enim et sunt temporibus id non ducimus sed voluptas aut dignissimos omnis at sint qui eos rem accusamus id ratione in.', '2023-10-04 07:50:31', '2023-10-04 07:50:31'),
(5, '37998', 'Asperiores impedit quo quaerat et pariatur minima veritatis quos et nostrum id ut blanditiis magni enim provident nihil mollitia et vel dolorum nam possimus omnis molestiae in eaque dolores.', '2023-10-04 07:50:32', '2023-10-04 07:50:32'),
(6, '67159', 'Asperiores maiores est eligendi autem ab aperiam hic eos distinctio ea ratione dolorem necessitatibus esse sed ut voluptates adipisci illo sed et velit tenetur ab praesentium dolores provident est architecto dolor et aut vel natus harum aut nulla.', '2023-10-04 07:50:32', '2023-10-04 07:50:32'),
(7, '68093', 'Libero et aut quo ut deserunt repudiandae delectus non explicabo cupiditate ex sapiente quia unde suscipit exercitationem omnis quod qui mollitia rerum excepturi qui nemo aliquid amet id ipsam veritatis ab voluptas aut consequatur debitis est explicabo perferendis vel est amet rem assumenda dolor earum eum inventore nulla molestiae illo dolorem exercitationem odio dolor quo iure unde sequi perferendis.', '2023-10-04 07:50:32', '2023-10-04 07:50:32'),
(8, '8738', 'jkdol', '2023-10-04 22:58:10', '2023-10-04 22:58:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `part_numbers`
--
ALTER TABLE `part_numbers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `part_numbers_part_number_unique` (`part_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `part_numbers`
--
ALTER TABLE `part_numbers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
