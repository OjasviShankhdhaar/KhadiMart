-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2024 at 10:19 PM
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
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', 'lavanya'),
(2, 'lavanya_admin', 'lavanya');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(9, 3, 2, 'men&#39;s kurta', 240, 1, 'menkurta3_1.webp'),
(15, 6, 2, 'men&#39;s kurta', 240, 1, 'menkurta3_1.webp'),
(16, 7, 2, 'men&#39;s kurta', 240, 1, 'menkurta3_1.webp');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 3, 'Lavanya  Bhargava', '8094322003', 'lavanya@gmail.com', 'paytm', 'flat no. plot no 336, g2, jaipur, rajasthan, india - 302012', 'men (150 x 2) - ', 300, '2024-04-05', 'completed'),
(2, 4, 'ojasvi', '7412563985', 'ojasvi@gmail.com', 'credit card', 'flat no. plot no 336, g2, Udaipur, rajasthan, india - 302012', 'men\'s kurta (240 x 1) - men\'s khadi jacket (210 x 1) - men (150 x 3) - ', 900, '2024-04-05', 'completed'),
(3, 4, 'ojasvi', '8412365895', 'ojasvi@gmail.com', 'cash on delivery', 'flat no. plot no 336, g2, Udaipur, rajasthan, india - 302012', 'women\'s straight kurti (1000 x 1) - women\'s printed top  (850 x 1) - ', 1850, '2024-04-05', 'completed'),
(4, 3, 'lavanya', '541236974', 'lavanya@gmail.com', 'paypal', 'flat no. plot no 336, g2, jaipur, rajasthan, india - 302021', 'men\'s white shirt (320 x 5) - ', 1600, '2024-04-05', 'completed'),
(5, 6, 'Riya ', '6376762576', 'riya@gmail.com', 'cash on delivery', 'flat no. police line , SWM, Sawai Madhopur , rajasthan, india - 322001', 'woman printed top  (850 x 1) - khadi kurti for woman  (400 x 1) - ', 1250, '2024-04-06', 'pending'),
(6, 6, 'Riya ', '6376762576', 'riya@gmail.com', 'cash on delivery', 'flat no. police line , SWM, Sawai Madhopur , rajasthan, india - 322001', 'woman saree  (450 x 1) - ', 450, '2024-04-06', ''),
(7, 8, 'mitali', '8977', 'mitali@gmail.com', 'cash on delivery', 'flat no. mi road, civil lines, jaipur, rajasthan, india - 12345', 'woman green saree (788 x 1) - ', 788, '2024-04-07', 'completed'),
(8, 8, 'Riya', '063', 'riya@gmail.com', 'cash on delivery', 'flat no. police line, SWM, Sawai Madhopur, rajasthan, India - 322001', 'men (150 x 1) - ', 150, '2024-04-07', 'pending'),
(9, 8, 'Riya', '0637676', 'riya@gmail.com', 'cash on delivery', 'flat no. police line, SWM, Sawai Madhopur, rajasthan, India - 322001', 'men\'s kurta (240 x 5) - ', 1200, '2024-04-07', 'pending'),
(10, 5, 'mansha', '9166552238', 'mansha@gmail.com', 'cash on delivery', 'flat no. plot 112, shyam marg, jaipur, rajasthan, india - 302012', 'woman kurti  (400 x 1) - khadi kurti for woman  (400 x 1) - ', 800, '2024-04-08', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`, `image_02`, `image_03`) VALUES
(1, 'men', 'Blue kurta for men', 150, 'menkurta1_1.jpeg', 'menkurta1_2.jpeg', 'menkurta1_3.jpeg'),
(2, 'men&#39;s kurta', 'white kurta for men', 240, 'menkurta3_1.webp', 'menkurta3_2.webp', 'menkurta3_3.webp'),
(3, 'men&#39;s khadi jacket', 'khadi jacket for men', 210, 'menjacket1_1.webp', 'menjacket1_2.webp', 'menjacket1_3.webp'),
(4, 'blue men&#39;s kurta', 'blue khadi kurta for men', 320, 'men.webp', 'menkurta2_1.webp', 'menkurta2_3.webp'),
(5, 'jacket for men', 'khadi jacket for men', 330, 'menjacket2_1.jpeg', 'menjacket2_2.jpeg', 'menjacket2_3.jpeg'),
(6, 'khadi jacket for men', 'handwoven khadi jacket for men', 250, 'menjacket3_1.jpeg', 'menjacket3_2.jpeg', 'menjacket3_3.jpeg'),
(7, 'shirt for men', 'khadi shirt for men', 250, 'menshirt1_1.webp', 'menshirt1_2.webp', 'menshirt1_3.webp'),
(8, 'men&#39;s white shirt', 'white shirt for men', 320, 'menshirt2_1.jpg', 'menshirt2_2.jpg', 'menshirt2_3.jpg'),
(9, 'khadi shirt for men', 'handwoven khadi shirt for men', 120, 'menshirt3_1.jpeg', 'menshirt3_2.jpeg', 'menshirt3_3.jpeg'),
(10, 'ethnic 3 Piece suit for kids', 'Kids Wear Suit Set Coat, Pant & Shirt', 230, 'kidboy1_1.jpg', 'kidboy1_2.jpg', 'kidboy1_3.jpg'),
(11, 'kids kurta ', 'handwoven khadi kurta set', 150, 'kidkurta1_1.jpg', 'kidkurta1_2.jpg', 'kidkurta1_3.jpg'),
(12, 'kids khadi frock', 'handwoven khadi frock ', 320, 'kidfrock1_1.jpeg', 'kidfrock1_2.jpeg', 'kidfrock1_3.jpeg'),
(13, 'kids frock', 'yellow frock for kids', 120, 'kidfrock2_1.jpg', 'kidfrock2_2.jpg', 'kidfrock2_3.jpg'),
(14, 'kids kurti', 'black kurti for kid', 320, 'kidkurti1_1.jpg', 'kidkurti1_2.jpg', 'kidkurti1_3.jpg'),
(15, 'woman kurti ', 'handwoven khadi kurti ', 400, 'womenkurti1_1.jpeg', 'womenkurti1_2.jpeg', 'womenkurti1_3.jpeg'),
(16, 'khadi kurti for woman ', 'khadi women kurti ', 400, 'womenkurti2_1.jpeg', 'womenkurti2_2.jpeg', 'womenkurti2_3.jpeg'),
(17, 'woman straight kurti', 'handwoven Red kurti ', 1000, 'womenkurti3_1.jpeg', 'womenkurti3_2.jpeg', 'womenkurti3_3.jpeg'),
(18, 'woman green saree', 'green cplored saree ', 788, 'womensaree1_1.jpg', 'womensaree1_2.jpg', 'womensaree1_3.jpeg'),
(19, 'woman saree ', 'handwoven women saree ', 450, 'womensaree2_1.jpeg', 'womensaree2_2.jpeg', 'womensaree2_3.jpeg'),
(20, 'woman khadi saree ', 'khadi saree ', 1200, 'womensaree3_1.jpeg', 'womensaree3_2.jpeg', 'womensaree3_3.jpeg'),
(21, 'woman top ', 'women white top ', 650, 'womentop1_1.jpeg', 'womentop1_2.jpeg', 'womentop1_3.jpeg'),
(22, 'woman printed top ', 'women blue colored top ', 850, 'womentop2_1.jpg', 'womentop2_2.jpg', 'womentop2_3.jpg'),
(23, 'woman blue top ', 'women&#39;s royal blue top ', 450, 'womentop3_1.jpeg', 'womentop3_2.jpeg', 'womentop3_3.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Mimansha Sharma', 'mimanshasharma61@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),
(3, 'Lavanya  Bhargava', 'lavanya@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964'),
(4, 'ojasvi', 'ojasvi@gmail.com', '9039444fc33944d890e3f140837bce642a018ab9'),
(5, 'mansha', 'mansha@gmail.com', 'd12550b2e52f370dbc7ef576f30e00bfda4bdc10'),
(6, 'Riya ', 'riya@gmail.com', 'f59a5596653a5e7025ff642e1bb5f5604c6d2ecd'),
(7, 'ajay', 'ajay.iitdhn@gmail.com', '356625a275e69bf155679677622e3ae7b7bbc0ca'),
(8, 'mitali', 'mitali@gmail.com', 'fba63ab2f923d534c9e87f0d6175a1a90b607c8c');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(3, 4, 1, 'men', 150, 'menkurta1_1.jpeg'),
(4, 6, 1, 'men', 150, 'menkurta1_1.jpeg'),
(6, 7, 3, 'men&#39;s khadi jacket', 210, 'menjacket1_1.webp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
