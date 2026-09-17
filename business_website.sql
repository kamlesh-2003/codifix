-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2026 at 06:21 PM
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
-- Database: `business_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `p1` text NOT NULL,
  `p2` text NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `title`, `p1`, `p2`, `image`) VALUES
(1, 'Our Services', 'Our team always strives to achieve the best results. We continue to improve our skills and provide the most effective solutions for our clients.', 'Building long-term and trustworthy partnerships with our clients is our main goal.', 'assets/img/about.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `about_ul_items`
--

CREATE TABLE `about_ul_items` (
  `id` int(11) NOT NULL,
  `about_id` int(11) DEFAULT NULL,
  `list_item` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about_ul_items`
--

INSERT INTO `about_ul_items` (`id`, `about_id`, `list_item`) VALUES
(1, 1, 'We provide quality service to our clients and aim to meet their needs.'),
(2, 1, 'We develop innovative solutions and apply modern technologies.'),
(3, 1, 'We approach each project individually and offer new solutions.'),
(4, 1, 'Our experienced professionals assist with any issues.'),
(5, 1, 'Our support service is always open for our clients.'),
(6, 1, 'We improve service quality through innovative approaches.'),
(7, 1, 'We create special strategies for each project.'),
(8, 1, 'We help our clients unlock new opportunities.');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `button_text` varchar(100) NOT NULL,
  `button_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `image`, `title`, `description`, `button_text`, `button_link`) VALUES
(1, 'hero-carousel-1.jpg', 'Welcome to CodiFix', 'Modern Web-Sites Creation', 'Start', 'about.php'),
(2, 'hero-carousel-2.jpg', 'Change Your Life with Us', 'Grow yourself with new ideas and creative solutions.', 'Start', 'about.php'),
(3, 'hero-carousel-3.jpg', 'Our Offers', 'We offer the best services for you.', 'Start', 'about.php');

-- --------------------------------------------------------

--
-- Table structure for table `bioservices`
--

CREATE TABLE `bioservices` (
  `id` int(11) NOT NULL,
  `h2` varchar(255) NOT NULL,
  `p1` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `h3` text NOT NULL,
  `p2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bioservices`
--

INSERT INTO `bioservices` (`id`, `h2`, `p1`, `image`, `h3`, `p2`) VALUES
(1, 'Our Services', 'Our experience and skills help us to deliver the best products to you.', 'skills.jpg', 'Our Product Development Skills', 'We use modern technologies to create our products.');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`) VALUES
(1, 'App'),
(2, 'Product'),
(3, 'Branding'),
(4, 'Book');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `twitter`, `facebook`, `instagram`, `linkedin`) VALUES
(1, 'codifix', '', 'codifix', 'codifix');

-- --------------------------------------------------------

--
-- Table structure for table `contact_box`
--

CREATE TABLE `contact_box` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_box`
--

INSERT INTO `contact_box` (`id`, `title`, `value`, `icon`) VALUES
(1, 'Address', 'Chakan,pune', 'bi bi-geo-alt'),
(2, 'Contact Us', '+91 9699881866', 'bi bi-telephone'),
(3, 'Send Us an Email', 'codifix@gmail.com', 'bi bi-envelope');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `icon`, `title`, `description`) VALUES
(1, 'bi bi-bounding-box-circles', 'Innovative Solutions', 'Our innovative solutions can change your life.'),
(2, 'bi bi-calendar4-week', 'Free Consultations', 'Get free advice from our experts and grow.'),
(3, 'bi bi-broadcast', 'Strong Network', 'Gain access to numerous opportunities through our network.');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `status` enum('no_checked','checked') DEFAULT 'no_checked',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `subject`, `message`, `status`, `created_at`) VALUES
(1, 'Aliya Karimova', 'aliya.karimova@example.com', 'New Project', 'Hello Iqbolshoh, I am very interested in collaborating with you on a new project. Please let me know if we can discuss the details.', 'no_checked', '2026-09-16 15:28:20'),
(2, 'Shodmon Abdurahimov', 'shodmon.abdurahimov@example.com', 'Code Review Request', 'Hi Iqbolshoh, could you review my recent code and give feedback? I trust your insights will help me improve!', 'no_checked', '2026-09-16 15:28:20'),
(3, 'Kamola Ergasheva', 'kamola.ergasheva@example.com', 'Platform Assistance', 'Dear Iqbolshoh, I need some guidance with navigating your platform. Can you assist me with the features?', 'no_checked', '2026-09-16 15:28:20'),
(4, 'Farhod Yusupov', 'farhod.yusupov@example.com', 'Partnership Inquiry', 'Greetings Iqbolshoh, I am reaching out to explore a potential partnership between our teams. I believe we have mutual goals that can benefit us both. Looking forward to your response.', 'no_checked', '2026-09-16 15:28:20');

-- --------------------------------------------------------

--
-- Table structure for table `ourservices`
--

CREATE TABLE `ourservices` (
  `id` int(11) NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `skill_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ourservices`
--

INSERT INTO `ourservices` (`id`, `service_name`, `skill_level`) VALUES
(1, 'Web Development', 90),
(2, 'Mobile Development', 85),
(3, 'Cybersecurity', 80),
(4, 'Database', 95),
(5, 'UI/UX Design', 75);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_name`, `description`, `price`) VALUES
(1, 1, 'Precision Pro – Industrial Manufacturing Solutions', 'A modern platform for managing precision manufacturing products, machinery, components, and customized industrial solutions.', '300$'),
(2, 2, 'Steel Craft – Advanced Metal Solutions', 'A digital platform for displaying metal fabrication services, contract manufacturing, stamping, bending, and industrial production capabilities', '449$'),
(3, 3, 'Indus Fab – Metal Fabrication Solutions', 'A responsive web-based platform for showcasing custom metal fabrication services, industrial products, manufacturing capabilities, completed projects, and company information across desktop and mobile devices.', '299$');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `image_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES
(1, 1, 'app-1.jpg'),
(2, 2, 'product-1.jpg'),
(3, 3, 'branding-1.jpg'),
(13, 1, 'app-1.png'),
(14, 1, 'product-1.png'),
(15, 1, 'branding-1.png');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `icon` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `description`, `icon`) VALUES
(1, 'Our Services', 'We provide tailored solutions for each client. Discover our reliable and effective services.', 'bi-activity'),
(2, 'Customized Solutions', 'Our services are designed to meet each client’s needs. We provide the best solution for you.', 'bi-broadcast'),
(3, 'Innovative Approaches', 'We solve your problems with innovative approaches. Every service offers creative solutions.', 'bi-easel'),
(4, 'Fast and Efficient Services', 'Our services are fast and efficient, with a strong focus on quality. Your needs come first.', 'bi-bounding-box-circles'),
(5, 'Expert Advice', 'Our experts are ready to provide the best advice. Feel free to reach out with any questions or concerns.', 'bi-calendar4-week'),
(6, 'Client Communication', 'We maintain open and friendly communication with clients. Your feedback and suggestions are very important to us.', 'bi-chat-square-text');

-- --------------------------------------------------------

--
-- Table structure for table `statistics`
--

CREATE TABLE `statistics` (
  `id` int(11) NOT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `statistics`
--

INSERT INTO `statistics` (`id`, `icon`, `count`, `title`, `description`) VALUES
(1, 'bi bi-emoji-smile', 232, 'Happy Clients', 'our success'),
(2, 'bi bi-journal-richtext', 521, 'Projects', 'our creativity'),
(3, 'bi bi-headset', 1453, 'Support Hours', 'we are always there for clients'),
(4, 'bi bi-people', 32, 'Workers', 'our team');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`) VALUES
(1, 'Iqbolshoh', 'Iqbolshoh', '52be5ff91284c65bac56f280df55f797a5c505f7ef66317ff358e34791507027');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_ul_items`
--
ALTER TABLE `about_ul_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `about_id` (`about_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bioservices`
--
ALTER TABLE `bioservices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_box`
--
ALTER TABLE `contact_box`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ourservices`
--
ALTER TABLE `ourservices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statistics`
--
ALTER TABLE `statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `about_ul_items`
--
ALTER TABLE `about_ul_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bioservices`
--
ALTER TABLE `bioservices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_box`
--
ALTER TABLE `contact_box`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ourservices`
--
ALTER TABLE `ourservices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `statistics`
--
ALTER TABLE `statistics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `about_ul_items`
--
ALTER TABLE `about_ul_items`
  ADD CONSTRAINT `about_ul_items_ibfk_1` FOREIGN KEY (`about_id`) REFERENCES `about` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
