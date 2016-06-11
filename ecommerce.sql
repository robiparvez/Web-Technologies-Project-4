-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2015 at 09:04 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE IF NOT EXISTS `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'HP'),
(2, 'DELL'),
(3, 'LG'),
(4, 'Samsung'),
(5, 'Acer'),
(6, 'Apple'),
(7, 'Sony'),
(8, 'Asus');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `cart_id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `p_id`, `ip_add`, `qty`) VALUES
(41, 8, '127.0.0.1', 0),
(63, 3, '::1', 0),
(64, 5, '::1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Laptops'),
(2, 'Cameras'),
(3, 'Mobiles'),
(4, 'Computers'),
(5, 'iPads'),
(6, 'iPhones');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 1, 1, 'HP Laptop', 400, '<p>This is very Good.</p>', 'images.jpg', 'laptop'),
(2, 1, 5, 'Acer Laptop', 500, '<p>This is the best one.</p>', '1111.jpg', 'laptop'),
(3, 4, 2, 'Dell Desktop', 300, '<p>This is dell core i5 Desktop</p>', 'dell_desktop_computer.jpg', 'Desktop, computer'),
(4, 4, 8, 'Asus Desktop', 250, '<p>This Asus core i3 Desktop.</p>', 'ASUS-Desktop-PC-G10-Monitor-PA279Q.jpg', 'Desktop, computer'),
(5, 3, 6, 'iPhone 6', 700, '<p>This is iPhone 6.</p>', 'url.jpg', 'phone, mobile'),
(6, 3, 4, 'Samsung S6', 500, '<p>This samsung s6 mobile.</p>', 'fdsf.jpg', 'phone, mobile'),
(8, 5, 6, 'Apple iPad', 300, '<p>Good ipad.</p>', 'IPAIRC16S_ipad_air_wifi_cellular_16gb_silver.jpg', 'ipad,apple'),
(10, 5, 6, 'iPad', 300, '<p>Apple ipad. 12mp Camera.</p>', 'apple-ipad-2-tech-specs-1.jpg', 'ipad, Apple'),
(12, 6, 6, 'iPhone 6', 500, '<p>iPhone 6. Good phone&nbsp;</p>', 'apple-iphone-6-1.jpg', 'ipone,apple, mobile');

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE IF NOT EXISTS `userinfo` (
  `User_id` int(10) NOT NULL,
  `Fullname` varchar(200) NOT NULL,
  `Username` varchar(200) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `Phone` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Address` text NOT NULL,
  `User_image` text NOT NULL,
  `User_ip` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`User_id`, `Fullname`, `Username`, `Password`, `Phone`, `Email`, `Address`, `User_image`, `User_ip`) VALUES
(76, 'Mohammad Helal Khan', 'm.helal.k', 'hk', '01838923219', 'm.helal.k@gmail.com', 'Gha-117, Wireless Gate, Mohakhali, Dkaha-1213', '11238736_1177053718978479_7577586707040724457_n.jpg', '::1'),
(77, 'Samaresh Saha', 'samaresh', 'hk', '01679348779', 'samareshaiub@gmail.com', 'Badda Link Road, Gulshan-1, Dhaka-1212', 'dddd.PNG', '::1'),
(78, 'Shanewas Niloy (Aladin)', 'Niloy', 'hk', '01676758500', 'niloysilver@gmail.com', 'Khilkhet, Dhaka-1213', '11390339_861584510588761_8250824082332270680_n.jpg', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `user_shopping_info`
--

CREATE TABLE IF NOT EXISTS `user_shopping_info` (
  `Shoping_id` int(20) NOT NULL,
  `User_id` int(20) NOT NULL,
  `ip_add` varchar(20) NOT NULL,
  `Shoping_items` varchar(500) NOT NULL,
  `Shopping_cost` varchar(20) NOT NULL,
  `Shopping_date` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_shopping_info`
--

INSERT INTO `user_shopping_info` (`Shoping_id`, `User_id`, `ip_add`, `Shoping_items`, `Shopping_cost`, `Shopping_date`) VALUES
(7, 77, '::1', 'Acer Laptop, iPhone 6, iPad, ', '1300', '09-08-15'),
(8, 78, '::1', 'Acer Laptop, iPhone 6, iPad, Dell Desktop, ', '1600', '09-08-15'),
(10, 78, '::1', 'Samsung S6, ', '500', '10-08-15'),
(11, 78, '::1', 'Samsung S6, iPhone 6, ', '1000', '10-08-15'),
(12, 78, '::1', 'Samsung S6, iPhone 6, HP Laptop, Acer Laptop, iPhone 6, Dell Desktop, Asus Desktop, iPad, ', '3450', '10-08-15'),
(13, 78, '::1', 'Samsung S6, ', '500', '10-08-15'),
(14, 78, '::1', 'Dell Desktop, iPhone 6, ', '1000', '10-08-15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`), ADD UNIQUE KEY `p_id` (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`User_id`);

--
-- Indexes for table `user_shopping_info`
--
ALTER TABLE `user_shopping_info`
  ADD PRIMARY KEY (`Shoping_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `User_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `user_shopping_info`
--
ALTER TABLE `user_shopping_info`
  MODIFY `Shoping_id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
