-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2024 at 12:51 PM
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
-- Database: `taskmange`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `department_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department_name`) VALUES
(1, 'engineering'),
(2, 'design'),
(3, 'project_management');

-- --------------------------------------------------------

--
-- Table structure for table `jobtype`
--

CREATE TABLE `jobtype` (
  `id` int(11) NOT NULL,
  `JobType_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobtype`
--

INSERT INTO `jobtype` (`id`, `JobType_name`) VALUES
(1, 'Freelancing Work'),
(2, 'Remote Work'),
(3, 'Office Work');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `id` int(11) NOT NULL,
  `position_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`id`, `position_name`) VALUES
(1, 'frontend developer'),
(2, 'backend developer'),
(3, 'ui ux designer'),
(4, 'product manager'),
(5, 'project coordinator');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `workTime` int(11) DEFAULT 0,
  `status` tinyint(1) DEFAULT 0,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `deadline` date NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `completed`, `workTime`, `status`, `start`, `end`, `deadline`, `userId`) VALUES
(23, 'تعديل ع صفحه المطعم من حيث الشك', '<ul><li>عدل المسارات</li></ul>', 0, 74, 1, '2024-09-24', '0000-00-00', '2024-09-26', 50),
(24, 'انشاء صفحه الواجهه الخاصه بالمطعم', '<p>عليك ب انشاء صفحه جميله هذا اهم شي وايضا سريعه</p>', 0, 81, 1, '2024-09-24', '0000-00-00', '2024-09-23', 50),
(33, 'تجربه فقط لاضافه مهمه', '<p>لاشي</p>', 0, 68, 1, '2024-09-26', '0000-05-12', '2024-09-29', 52);

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `token` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`token`, `user_id`, `expires_at`) VALUES
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NDgsImVtYWlsIjoicmFhZGFscWFkaUBnbWFpbC5jb20iLCJpYXQiOjE3MjczOTQyMzUsImV4cCI6MTcyNzM5NzgzNX0.-DdmbWEhxV_JXt29reDKHlhvvUCSQlnbQ8XlRUuQ9L4', 48, '2024-09-27 03:43:55'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NTAsImVtYWlsIjoicmFhZGFscWFkaTNAZ21haWwuY29tIiwiaWF0IjoxNzI3Mzk0MjQ5LCJleHAiOjE3MjczOTc4NDl9.YQ5SnZIwqhA6ws2b91TZJMz2AvuyYiJ7kGlx8_C5tf8', 50, '2024-09-27 03:44:09'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NTIsImVtYWlsIjoicmFhZGFscWFkaTRAZ21haWwuY29tIiwiaWF0IjoxNzI3Mzk0NDY4LCJleHAiOjE3MjczOTgwNjh9.H2fn1zof_l3ouw82Ho0wugeskkZEAsuWeyQylA3HAFs', 52, '2024-09-27 03:47:48'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NTMsImVtYWlsIjoicmFhZGFscWFkaTVAZ21haWwuY29tIiwiaWF0IjoxNzI3MzQ4MDE5LCJleHAiOjE3MjczNTE2MTl9.DZROu_SEY7GL_XtmBBguAW9tUtnKzBmiosq0CeTAwxE', 53, '2024-09-26 14:53:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `FName` varchar(50) NOT NULL,
  `LName` varchar(50) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Accept` tinyint(1) NOT NULL DEFAULT 0,
  `Date` date NOT NULL,
  `Gender` enum('male','female') NOT NULL,
  `Country` varchar(100) NOT NULL,
  `photo` text DEFAULT '',
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `Role` enum('admin','user') NOT NULL DEFAULT 'user',
  `position_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `jobtype_id` int(11) NOT NULL,
  `adminId` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `UserName`, `FName`, `LName`, `Email`, `Password`, `Accept`, `Date`, `Gender`, `Country`, `photo`, `CreatedAt`, `Role`, `position_id`, `department_id`, `jobtype_id`, `adminId`) VALUES
(48, 'SAAORIDAORAD', 'المبرمج', 'رعد', 'raadalqadi@gmail.com', '$2b$10$YsM/Y7HaxQjBbtWMx/dbOOnfC4C.X6NC5FVS7I690ijXXy92BBiFO', 0, '2024-09-19', 'male', 'Yemen', 'uploads\\1727211579548.png', '2024-09-17 23:18:34', 'admin', 1, 1, 1, 0),
(50, 'وعيدررعدس', 'رعد', 'عيدروس', 'raadalqadi3@gmail.com', '$2b$10$8/7RIrpxLcUlvWb7woUs8.XL9bYFxdWjmROSAFmpvUz3HbF2XlLji', 0, '2024-09-25', 'male', 'Mexico', 'uploads\\1727211601638.png', '2024-09-20 15:11:05', 'user', 1, 1, 1, 48),
(52, 'قلضعايراد', 'رعد', 'القاضي', 'raadalqadi4@gmail.com', '$2b$10$UPNGt3UhSvYvpUwayWywruLBS1Jwsgz1vBLUgxvmXaUW9zp3o7Uhy', 0, '2024-09-25', 'male', 'South Georgia', 'uploads\\1727345787774.jpg', '2024-09-26 10:13:06', 'user', 1, 1, 1, 48),
(53, 'مطحالمادور سه', 'محمد ', 'الاسطوره', 'raadalqadi5@gmail.com', '$2b$10$xOTkhywVHUQC3jY0pr.e2OuPGR.YKnjclEZLA6hkvYjlqr48RGLMO', 0, '2002-04-16', 'male', 'Aruba', 'uploads\\1727346406815.png', '2024-09-26 10:20:27', 'admin', 3, 2, 2, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobtype`
--
ALTER TABLE `jobtype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`token`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UserName` (`UserName`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `fk_position` (`position_id`),
  ADD KEY `fk_department` (`department_id`),
  ADD KEY `fk_jobtype` (`jobtype_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jobtype`
--
ALTER TABLE `jobtype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Constraints for table `tokens`
--
ALTER TABLE `tokens`
  ADD CONSTRAINT `tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_department` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`),
  ADD CONSTRAINT `fk_jobtype` FOREIGN KEY (`jobtype_id`) REFERENCES `jobtype` (`id`),
  ADD CONSTRAINT `fk_position` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
