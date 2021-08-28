-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2020 at 08:16 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dailyshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_pass` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'HP'),
(2, 'DELL'),
(3, 'LENOVO'),
(4, 'Sony'),
(5, 'Nintendo'),
(6, 'Samsung'),
(7, 'Asus'),
(8, 'Apple'),
(9, 'Huawei'),
(10, 'NOKIA'),
(11, 'NIKON'),
(12, 'Play Station'),
(13, 'Xbox');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(11) DEFAULT NULL,
  `ip_add` varchar(16) DEFAULT NULL,
  `qty` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_title`) VALUES
(1, 'school supplier'),
(2, 'college suppliers'),
(3, 'office suppliers'),
(4, 'art suppliers');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `customer_ip` varchar(100) DEFAULT NULL,
  `customer_fname` text NOT NULL,
  `customer_lname` text DEFAULT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_pass` varchar(100) NOT NULL,
  `customer_country` text DEFAULT NULL,
  `customer_city` text DEFAULT NULL,
  `Address` varchar(255) NOT NULL,
  `customer_contact` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_ip`, `customer_fname`, `customer_lname`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `Address`, `customer_contact`) VALUES
(24, '::1', 'ashawini', 'waje', 'hindoledarshu1998@gmail.com', '0707', 'India', 'thane', 'thane', '9978997899'),
(23, '::1', 'darshana', 'Hindole', 'hindoledarshu1998@gmail.com', '123456', 'India', 'thane', 'thane', '9989890023'),
(22, '::1', 'nilesh ', 'sonawane', 'nilsonawane@gamil.com', '12345', 'India', 'thane', 'asssdf', '9989890023'),
(21, '::1', 'nilesh ', 'sonawane', 'nilsonawane@gamil.com', '1234556', 'India', 'thane', 'aadaerert', '9989890023');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Email` varchar(11) NOT NULL,
  `Password` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `p_id` int(11) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL,
  `qty` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `p_id`, `c_id`, `qty`) VALUES
(26, 25, 23, 0),
(25, 28, 23, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `payment_date` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `amount`, `customer_id`, `product_id`, `payment_date`) VALUES
(34, 67, 23, 25, '2020-11-06 13:17:45'),
(33, 74, 23, 28, '2020-11-06 13:17:45');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `product_title` text NOT NULL,
  `product_img1` text DEFAULT NULL,
  `product_img2` text DEFAULT NULL,
  `product_img3` text DEFAULT NULL,
  `price` int(11) NOT NULL,
  `product_desc` text DEFAULT NULL,
  `status` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `cat_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `price`, `product_desc`, `status`) VALUES
(32, 4, '2020-10-31 12:00:43', 'jdfilahef', 'a6.png', NULL, NULL, 33, 'klaewdicaeof', 'on'),
(33, 4, '2020-10-31 12:01:57', 'kjefioof', 'a7.png', NULL, NULL, 57, 'jdcaekhidfu', 'on'),
(34, 4, '2020-10-31 12:03:14', 'dscaiio', 'a8.png', NULL, NULL, 78, 'dncjkoie', 'on'),
(35, 4, '2020-10-31 12:04:12', 'dsdhuhed', 'a9.png', NULL, NULL, 77, 'jdciciaw', 'on'),
(19, 3, '2020-10-31 11:44:37', 'jkjnj', 'o2.png', NULL, NULL, 45, 'kjnj', 'on'),
(20, 3, '2020-10-31 11:45:30', 'mnjnj', 'o3.png', NULL, NULL, 50, 'mjjk ', 'on'),
(21, 3, '2020-10-31 11:46:09', 'jnjnk', 'o4.png', NULL, NULL, 36, 'kklnkl', 'on'),
(22, 3, '2020-10-31 11:46:54', 'njkj', 'o5.png', NULL, NULL, 44, 'klmk', 'on'),
(23, 3, '2020-10-31 11:49:19', 'kljjj', 'o6.png', NULL, NULL, 56, 'njjihuhu', 'on'),
(24, 3, '2020-10-31 11:50:26', 'hjnkml', 'o7.png', NULL, NULL, 56, 'mkk', 'on'),
(25, 3, '2020-10-31 11:51:41', 'njkjnll', 'o8.png', NULL, NULL, 67, 'kjojo', 'on'),
(26, 3, '2020-10-31 11:53:25', 'oijio', 'o9.png', NULL, NULL, 55, 'njnlkl', 'on'),
(27, 4, '2020-10-31 11:57:10', 'oijojpp', 'a1.png', NULL, NULL, 68, 'ioi;ij', 'on'),
(28, 4, '2020-10-31 11:58:18', 'aslf;', 'a2.png', NULL, NULL, 74, 'njdsfadif', 'on'),
(29, 4, '2020-10-31 11:58:56', 'peqp9', 'a3.png', NULL, NULL, 44, 'jifo', 'on'),
(30, 4, '2020-10-31 11:59:35', 'ajiweaeo', 'a4.png', NULL, NULL, 45, 'jfdia;jfor', 'on'),
(31, 4, '2020-10-31 12:00:08', 'djedoiwf', 'a5.png', NULL, NULL, 47, 'djfiaofje', 'on'),
(1, 1, '2017-01-16 22:16:34', 'butterflow simpaly ball pen', 's1.png', '', '', 0, 'MP Super HAD CCD sensor for beautifully detailed images\r\nSony Lens w/ 5x Optical Zoom\r\nReduced blur with SteadyShot Image stabilization\r\nCapture your videos in 720p HD Movie mode\r\nSimplify camera menu with Easy Mode.\r\nSuper HAD CCD 20.1 MP sensor\r\nSony Lens with F3.2 (W) â€“ 6.4 (T) Maximum Aperture', 'on'),
(2, 1, '2017-01-16 22:18:13', 'Nikon COOLPIX L32 Digital Camera', 's2.png', '', '', 1190, '5x wide-angle NIKKOR zoom lens\r\nLarge 3.0-inch LCD\r\n720p HD video with sound\r\nSmart Portrait System\r\nRuns on regular AA batteries', 'on'),
(3, 1, '2017-01-16 22:30:36', 'Xbox 360 250GB', 's3.png', '', '', 360, 'Xbox 360 brings you a total games and entertainment experience. The largest library of games , including titles that get you right into the thick of it with Kinect. Plus, your whole family can watch HD movies, TV shows, live events, music, sports and moreâ€”across all your devices 5. Xbox 360 is the center of your games and entertainment universe.', 'on'),
(4, 1, '2017-01-16 22:31:43', 'Sony PlayStation 4 1TB UK Black', 's4.png', '', '', 450, 'The PS4â„¢ system focuses on the gamer, ensuring that the very best games and the most immersive experiences are possible on the platform. The PS4â„¢ system enables the greatest game developers in the world to unlock their creativity and push the boundaries of play through a system that is tuned specifically to their needs. The PS4â„¢ system is centered around a powerful custom chip that contains eight x86-64 cores and a state of the art 1.84 TFLOPS graphics processor with 8 GB of ultra-fast GDDR5 unified system memory, easing game creation and increasing the richness of content achievable on the platform. The end result is new games with rich, high-fidelity graphics and deeply immersive experiences', 'on'),
(11, 2, '2020-10-07 08:33:56', 'dhsdjwndwen', 'c2.png', NULL, NULL, 490, 'csfefere', 'on'),
(12, 2, NULL, 'ggrre', 'c3.png', NULL, NULL, 0, NULL, 'on'),
(13, 2, '2020-10-31 08:57:38', 'adw', 'c4.png', NULL, NULL, 0, NULL, 'on'),
(14, 2, NULL, 'asdsd', 'c5.png', NULL, NULL, 0, NULL, 'on'),
(15, 2, NULL, 'sdsd', 'c6.png', NULL, NULL, 0, NULL, 'on'),
(16, 2, NULL, 'sdasd', 'c7.png', NULL, NULL, 0, NULL, 'on'),
(17, 2, NULL, 'sdfsf', 'c8.png', NULL, NULL, 0, NULL, 'on'),
(18, 3, '2020-10-31 11:41:23', 'ghhhh', 'o1.png', NULL, NULL, 34, 'hiii', 'on'),
(5, 1, '2017-01-16 22:36:04', 'Dell Inspiron 13 Convertible Core i7-6500U FHD Touch', 's5.png', '', '', 800, 'Specifications\r\n\r\nProcessor\r\n6th Generation IntelÂ® Coreâ„¢ i7-6500U (2.5GHz Turbo Boost upto 3.1GHz)\r\nDisplay\r\n13.3\" Full HD LED x360 Convertible Touch Screen (1920x1080)\r\nStorage\r\n256GB 5400rpm SSD SATA\r\nRam\r\n8GB DDR3L\r\nOperating System\r\nGenuine Windows 10 (64-bit)\r\nGraphics Card\r\nIntel HD 520 Shared\r\nExtra Features\r\nTouch Screen, FHD', 'on'),
(6, 1, '2017-01-16 22:36:54', 'HP Probook 440 G3 Core i7-6500U 1TB 8GB 2GB-GC ', 's6.png', '', '', 910, 'Specifications\r\n\r\nProcessor\r\n6th Generation IntelÂ® Coreâ„¢ i7-6500U (2.5 GHz Turbo Boost 3.1 GHz)\r\nDisplay\r\n14\" diagonal HD anti-glare flat LED-backlite (1366 x 768)\r\nStorage\r\n1 TB 5400 rpm SATA\r\nRam\r\n8 GB DDR3L\r\nOperating System\r\nFreeDOS 2.0\r\nGraphics Card\r\nAMD Radeonâ„¢ R7 M340 ( 2 GB DDR3 dedicated, switchable)\r\nExtra Features\r\nFinger Print Reader', 'on'),
(7, 1, '2017-01-16 22:47:49', 'Samsung 32J5100 32\" Full HD Flat LED', 's7.png', '', '', 490, 'More vibrant colours for better images\r\nBringing a full multimedia experience into your living room with HDMI\r\nWatch movies from your USB', 'on'),
(8, 1, '2017-01-16 22:48:35', 'Sony Bravia 40\" KDL-R562C LED', 's8.png', '', '', 690, 'Connect with great entertainment with Built-in Wi-FiÂ®\r\nClear Resolution Enhancer\r\nMotion flow XR 100hz\r\nFlatter any living space with beautiful styling and class-leading slimness.\r\nYouTubeâ„¢ and more', 'on'),
(9, 1, '2017-01-17 00:48:23', 'Dell 3521', 's9.png', '', '', 460, 'abc', 'on'),
(10, 2, '2017-01-17 06:41:03', 'gaskjd', 'c1.png', '', '', 32432, 'sadsa', 'on');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD KEY `p_id` (`p_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `c_id` (`c_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
