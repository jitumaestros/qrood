-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 14, 2020 at 10:20 AM
-- Server version: 5.6.41-84.1-log
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `incarhlt_qrood`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `id` int(11) NOT NULL,
  `user_id` int(222) NOT NULL,
  `type` varchar(222) NOT NULL,
  `strtotime` varchar(255) NOT NULL,
  `status` int(222) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `user_id`, `type`, `strtotime`, `status`) VALUES
(2, 1, '1', '1582611200', 1),
(5, 1, '1', '1582809576', 1),
(4, 3, '1', '1582657516', 0),
(16, 8, '1', '1583737865', 0),
(15, 7, '1', '1583563395', 0),
(14, 6, '1', '1583560229', 0),
(13, 5, '1', '1583490332', 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL COMMENT '1=superadmin,2=admin',
  `status` int(255) NOT NULL,
  `strtotime` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `phone`, `role`, `status`, `strtotime`) VALUES
(1, 'superadmin', 'supereadmin@gmail.com', '123', '8878913425', '1', 0, '1583313767'),
(2, 'Raviss', 'petersamm16@gmail.com', '123', '8878913425', '2', 1, '1583332334');

-- --------------------------------------------------------

--
-- Table structure for table `apply_coupon`
--

CREATE TABLE `apply_coupon` (
  `id` int(255) NOT NULL,
  `restaurant_id` int(255) NOT NULL,
  `tbl_id` int(255) NOT NULL,
  `coupon_id` int(255) NOT NULL,
  `status` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apply_coupon`
--

INSERT INTO `apply_coupon` (`id`, `restaurant_id`, `tbl_id`, `coupon_id`, `status`) VALUES
(1, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `business_profile`
--

CREATE TABLE `business_profile` (
  `id` int(255) NOT NULL,
  `admin_id` int(255) NOT NULL,
  `restaurant_id` int(255) NOT NULL,
  `business_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `phone_no` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `extraemail` text NOT NULL,
  `restaurant_add` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `facebook_url` varchar(255) NOT NULL,
  `instagram_url` varchar(255) NOT NULL,
  `tripadvisor` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `strtotime` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `business_profile`
--

INSERT INTO `business_profile` (`id`, `admin_id`, `restaurant_id`, `business_name`, `username`, `phone_no`, `email`, `extraemail`, `restaurant_add`, `website`, `facebook_url`, `instagram_url`, `tripadvisor`, `img`, `strtotime`) VALUES
(1, 1, 1, 'Vrindavan Restaurants', 'Vrindavan', '887891342514', 'sk786n@hotmail.com', 'sk786n@hotmail.com,sk786n@hotmail.com,sk786n@hotmail.com', 'nada nagar', 'http://maestrosinfotech.org/jwelery', 'https://www.facebook.com/maestros.rohit', 'https://www.facebook.com/maestros.rohit', 'https://www.facebook.com/maestros.rohit', 'icon_1.png', '1583386703'),
(2, 1, 1, 'Vrindavan Restaurants', 'Vrindavan', '8878913425', 'sk786n@hotmail.com', '', 'Amber compex bhopal', 'http://maestrosinfotech.org/jwelery', 'https://www.facebook.com/maestros.rohit', 'https://www.facebook.com/maestros.rohit', 'https://www.facebook.com/maestros.rohit', '676181666', '1584076987');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `image` text NOT NULL,
  `strtotime` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `image`, `strtotime`) VALUES
(1, 'Veg', '', '1583317363'),
(3, 'Desserts', '', '1583322750'),
(4, 'Beverages', '', '1583322756'),
(5, 'Starters', '', '1583322763'),
(6, 'Pizza', '', '1583732833'),
(7, 'Soup', '', '1583732872'),
(8, 'Smoothies & Mocktails', '', '1583732885');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(111) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `restaurant_id` int(255) NOT NULL,
  `table_id` varchar(255) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `coupen_id` int(222) NOT NULL,
  `coupen_price` int(222) NOT NULL,
  `tot_amount` varchar(255) NOT NULL,
  `status` int(255) NOT NULL DEFAULT '1' COMMENT '1=queue,2=delivered',
  `strtotime` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `restaurant_id`, `table_id`, `order_id`, `coupen_id`, `coupen_price`, `tot_amount`, `status`, `strtotime`) VALUES
(16, 1, 7, '1', 'QROOD22783', 0, 0, '9', 1, '1584023783'),
(21, 1, 1, '1', 'QROOD89030', 0, 0, '4500', 1, '1584106652'),
(22, 1, 0, '', 'QROOD3317', 0, 0, '0', 1, '1584106663'),
(4, 1, 1, '1', 'QROOD98913', 1, 538, '537.5', 1, '1584006638'),
(5, 1, 1, '1', 'QROOD12132', 3, 100, '100', 2, '1584008603'),
(23, 1, 0, '', 'QROOD31562', 0, 0, '0', 1, '1584106678'),
(7, 1, 1, '1', 'QROOD71950', 0, 0, '750', 1, '1584009242'),
(8, 1, 1, '1', 'QROOD19866', 0, 0, '12750', 1, '1584013176'),
(9, 1, 1, '1', 'QROOD40921', 1, 6050, '6050', 1, '1584014251'),
(10, 1, 1, '1', 'QROOD74170', 0, 0, '37500', 1, '1584014401'),
(11, 1, 1, '1', 'QROOD71491', 1, 19825, '19825', 2, '1584015116'),
(12, 1, 1, '1', 'QROOD21164', 3, 6000, '6000', 1, '1584015159'),
(13, 1, 1, '1', 'QROOD81038', 0, 0, '28600', 2, '1584015777'),
(14, 1, 1, '1', 'QROOD64302', 1, 375, '375', 1, '1584023586'),
(15, 1, 1, '1', 'QROOD93682', 1, 375, '375', 2, '1584023592'),
(20, 1, 1, '1', 'QROOD85923', 4, 300, '2700', 1, '1584103342'),
(24, 1, 1, '1', 'QROOD21152', 0, 0, '1500', 1, '1584106696'),
(25, 1, 0, '', 'QROOD60892', 0, 0, '0', 1, '1584106710'),
(26, 1, 1, '1', 'QROOD7649', 0, 0, '16500', 1, '1584106763'),
(27, 1, 0, '', 'QROOD82861', 0, 0, '0', 1, '1584122031'),
(28, 1, 1, '2', 'QROOD72057', 3, 17250, '17250', 2, '1584164101'),
(29, 1, 0, '', 'QROOD52729', 0, 0, '48000', 1, '1584175975'),
(30, 1, 1, '1', 'QROOD80829', 0, 0, '18250', 1, '1584176113'),
(31, 1, 1, '1', 'QROOD55884', 0, 0, '18250', 1, '1584178235'),
(32, 1, 1, '1', 'QROOD37577', 4, 3650, '32850', 1, '1584178490'),
(33, 1, 1, '1', 'QROOD49915', 4, 3625, '32625', 1, '1584178890'),
(34, 1, 1, '1', 'QROOD42739', 0, 0, '18250', 1, '1584180215'),
(35, 1, 1, '1', 'QROOD72783', 4, 4600, '41400', 1, '1584180929');

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `restaurant_id` int(255) NOT NULL,
  `order_product` varchar(255) NOT NULL,
  `table_id` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `tot_amount` varchar(255) NOT NULL,
  `status` int(255) NOT NULL DEFAULT '1' COMMENT '1=queue,2=delivered',
  `strtotime` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`id`, `user_id`, `restaurant_id`, `order_product`, `table_id`, `quantity`, `order_id`, `tot_amount`, `status`, `strtotime`) VALUES
(1, 1, 1, '13', '1', '1', 'QROOD98913-4', '825', 1, '1584006638'),
(2, 1, 1, '14', '1', '1', 'QROOD98913-4', '250', 1, '1584006638'),
(3, 1, 1, '10', '1', '2', 'QROOD12132-5', '100', 1, '1584008603'),
(4, 1, 1, '1', '', '1', 'QROOD25589-6', '12000', 1, '1584008873'),
(5, 1, 1, '2', '', '1', 'QROOD25589-6', '750', 1, '1584008873'),
(6, 1, 1, '10', '', '1', 'QROOD25589-6', '100', 1, '1584008873'),
(7, 1, 1, '14', '1', '3', 'QROOD71950-7', '250', 1, '1584009242'),
(8, 1, 1, '2', '1', '1', 'QROOD19866-8', '750', 1, '1584013176'),
(9, 1, 1, '1', '1', '1', 'QROOD19866-8', '12000', 1, '1584013176'),
(10, 1, 1, '1', '1', '1', 'QROOD40921-9', '12000', 1, '1584014251'),
(11, 1, 1, '10', '1', '1', 'QROOD40921-9', '100', 1, '1584014251'),
(12, 1, 1, '2', '1', '2', 'QROOD74170-10', '750', 1, '1584014401'),
(13, 1, 1, '1', '1', '3', 'QROOD74170-10', '12000', 1, '1584014401'),
(14, 1, 1, '2', '1', '3', 'QROOD71491-11', '750', 1, '1584015116'),
(15, 1, 1, '1', '1', '3', 'QROOD71491-11', '12000', 1, '1584015116'),
(16, 1, 0, '10', '', '4', 'QROOD71491-11', '100', 1, '1584015116'),
(17, 1, 1, '14', '1', '4', 'QROOD71491-11', '250', 1, '1584015116'),
(18, 1, 1, '1', '1', '1', 'QROOD21164-12', '12000', 1, '1584015159'),
(19, 1, 1, '13', '1', '2', 'QROOD81038-13', '825', 1, '1584015777'),
(20, 1, 1, '14', '1', '5', 'QROOD81038-13', '250', 1, '1584015777'),
(21, 1, 1, '2', '1', '2', 'QROOD81038-13', '750', 1, '1584015777'),
(22, 1, 1, '1', '1', '2', 'QROOD81038-13', '12000', 1, '1584015777'),
(23, 1, 1, '10', '1', '2', 'QROOD81038-13', '100', 1, '1584015777'),
(24, 1, 1, '2', '1', '1', 'QROOD64302-14', '750', 1, '1584023586'),
(25, 1, 1, '2', '1', '1', 'QROOD93682-15', '750', 1, '1584023592'),
(26, 1, 7, '16', '1', '1', 'QROOD22783-16', '9', 1, '1584023783'),
(27, 1, 1, '14', '15', '2', 'QROOD78297-17', '450', 1, '1584029284'),
(28, 1, 1, '1', '15', '-1', 'QROOD78297-17', '7500', 1, '1584029284'),
(29, 1, 1, '2', '15', '1', 'QROOD78297-17', '750', 1, '1584029284'),
(30, 1, 1, '13', '15', '3', 'QROOD78297-17', '750', 1, '1584029284'),
(31, 1, 1, '2', '1', '2', 'QROOD2086-19', '750', 1, '1584081854'),
(32, 1, 1, '2', '1', '2', 'QROOD85923-20', '1500', 1, '1584103342'),
(33, 1, 1, '2', '1', '3', 'QROOD89030-21', '1500', 1, '1584106652'),
(34, 1, 1, '2', '1', '1', 'QROOD21152-24', '1500', 1, '1584106696'),
(35, 1, 1, '2', '1', '1', 'QROOD7649-26', '1500', 1, '1584106763'),
(36, 1, 1, '1', '1', '1', 'QROOD7649-26', '15000', 1, '1584106763'),
(37, 1, 1, '2', '2', '3', 'QROOD72057-28', '1500', 1, '1584164101'),
(38, 1, 1, '1', '2', '2', 'QROOD72057-28', '15000', 1, '1584164101'),
(39, 1, 1, '13', '1', '1', 'QROOD52729-29', '1500', 1, '1584175975'),
(40, 1, 1, '1', '1', '3', 'QROOD52729-29', '15000', 1, '1584175975'),
(41, 1, 1, '2', '1', '1', 'QROOD52729-29', '1500', 1, '1584175975'),
(42, 1, 1, '1', '1', '1', 'QROOD52729-29', '15000', 1, '1584175975'),
(43, 1, 1, '1', '1', '2', 'QROOD52729-29', '15000', 1, '1584175975'),
(44, 1, 1, '14', '1', '1', 'QROOD52729-29', '250', 1, '1584175975'),
(45, 1, 1, '14', '1', '1', 'QROOD52729-29', '250', 1, '1584175975'),
(46, 1, 1, '1', '1', '1', 'QROOD80829-30', '15000', 1, '1584176113'),
(47, 1, 1, '2', '1', '1', 'QROOD80829-30', '1500', 1, '1584176113'),
(48, 1, 1, '14', '1', '1', 'QROOD80829-30', '250', 1, '1584176113'),
(49, 1, 1, '13', '1', '1', 'QROOD80829-30', '1500', 1, '1584176113'),
(50, 1, 1, '2', '1', '1', 'QROOD55884-31', '1500', 1, '1584178235'),
(51, 1, 1, '1', '1', '1', 'QROOD55884-31', '15000', 1, '1584178235'),
(52, 1, 1, '14', '1', '1', 'QROOD55884-31', '250', 1, '1584178235'),
(53, 1, 1, '13', '1', '1', 'QROOD55884-31', '1500', 1, '1584178235'),
(54, 1, 1, '14', '1', '2', 'QROOD37577-32', '250', 1, '1584178490'),
(55, 1, 1, '2', '1', '1', 'QROOD37577-32', '1500', 1, '1584178490'),
(56, 1, 1, '1', '1', '2', 'QROOD37577-32', '15000', 1, '1584178490'),
(57, 1, 1, '13', '1', '3', 'QROOD37577-32', '1500', 1, '1584178490'),
(58, 1, 1, '1', '1', '2', 'QROOD49915-33', '15000', 1, '1584178890'),
(59, 1, 1, '2', '1', '2', 'QROOD49915-33', '1500', 1, '1584178890'),
(60, 1, 1, '14', '1', '1', 'QROOD49915-33', '250', 1, '1584178890'),
(61, 1, 1, '13', '1', '2', 'QROOD49915-33', '1500', 1, '1584178890'),
(62, 1, 1, '2', '1', '1', 'QROOD42739-34', '1500', 1, '1584180215'),
(63, 1, 1, '1', '1', '1', 'QROOD42739-34', '15000', 1, '1584180215'),
(64, 1, 1, '14', '1', '1', 'QROOD42739-34', '250', 1, '1584180215'),
(65, 1, 1, '13', '1', '1', 'QROOD42739-34', '1500', 1, '1584180215'),
(66, 1, 1, '1', '1', '3', 'QROOD72783-35', '15000', 1, '1584180929'),
(67, 1, 1, '14', '1', '2', 'QROOD72783-35', '500', 1, '1584180929');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `admin_id` int(255) NOT NULL,
  `restaurant_id` int(255) NOT NULL,
  `category_id` int(222) NOT NULL,
  `sub_category_id` int(255) NOT NULL,
  `name` text NOT NULL,
  `regular_price` double NOT NULL,
  `discount` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `img` varchar(222) NOT NULL,
  `highlight` varchar(255) NOT NULL,
  `status` int(222) NOT NULL,
  `discount_status` int(222) NOT NULL,
  `strtotime` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `admin_id`, `restaurant_id`, `category_id`, `sub_category_id`, `name`, `regular_price`, `discount`, `total_price`, `description`, `img`, `highlight`, `status`, `discount_status`, `strtotime`) VALUES
(1, 1, 1, 1, 0, 'test ss', 15000, '50', '7500', 'At At At At At w3schoo\'ls.com you will learn how to make a website. We offer free tutorials in all web development technologies.ss', '510544344candle_3.png', '1584023280', 1, 0, ''),
(2, 1, 1, 1, 0, 'BURGER', 1500, '50', '750', 'At Lorem Ipsum Is Simply Dummy Text Of The Printing And Typesetting Industry. Lorem Ipsum Has Been The Industry\'s Standard Dummy Text Ever Since The 1500s, When An Unknown Printer Took A Galley Of Type And Scrambled It To Make A Type Specimen Book', 'food_item_2.png', '1584023281', 1, 0, ''),
(3, 2, 2, 10, 0, 'PIZZA', 1500, '10', '150', 'Lorem Ipsum Is Simply Dummy Text Of The Printing And Typesetting Industry. Lorem Ipsum Has Been The Industry\'s Standard Dummy Text Ever Since The 1500s, When An Unknown Printer Took A Galley Of Type And Scrambled It To Make A Type Specimen Book then how to discussa bout you and your familys\r\n', 'food_item_1.png', '', 0, 0, '1582630871'),
(4, 2, 2, 10, 0, 'PIZZA', 1500, '10', '150', 'Lorem Ipsum Is Simply Dummy Text Of The Printing And Typesetting Industry. Lorem Ipsum Has Been The Industry\'s Standard Dummy Text Ever Since The 1500s, When An Unknown Printer Took A Galley Of Type And Scrambled It To Make A Type Specimen Book then how to discussa bout you and your familys\r\n', 'food_item_1.png', '', 0, 0, '1582630871'),
(9, 2, 2, 5, 0, 'test', 1500, '0', '1500', 'At w3schools.com you will learn how to make a website. We offer free tutorials in all web development technologies.', '10910941181581079751341.png', '', 0, 0, '1582972103'),
(10, 3, 1, 2, 0, 'Murg Makhani (Butter Chicken)', 1500, '', '100', 'Murg Makhani (butter chicken) is one of the top orders at any Indian restaurant in the West and for good reason—it is delicious. This sultry poultry dish tastes great with kaali daal (black lentils), naan, and a green salad.', '309226792GettyImages-686769861-59fa95904e4f7d001af7d0d7 (1).webp', '', 0, 0, '1583323052'),
(11, 3, 3, 2, 0, 'Tandoori Chicken', 1500, '', '', 'It\'s hard to find anyone who doesn\'t fall in love with tandoori chicken, that famous Indian barbecue chicken recipe. Although traditionally cooked in a clay oven, you can prepare the yogurt-marinated chicken on a grill or in the oven. You do need to plan ahead, as the coated chicken should sit in the refrigerator for 12 to 14 hours.', '2031626233GettyImages-686769861-59fa95904e4f7d001af7d0d7.webp', '', 0, 0, '1583323272'),
(12, 3, 3, 2, 0, 'Chicken Tikka Masala', 2000, '', '', 'Chicken tikka masala is a delicious grilled chicken dish with a thick, creamy gravy that is unforgettable after the first bite. A tomato-yogurt sauce is spiced with chili, garlic, ginger, and garam masala, the ubiquitous Indian spice blend. The chicken is marinated overnight, grilled, and then gently cooked in a slightly smoky gravy. You will want to serve this dish over basmati rice with warm naan bread for soaking up the sauce.', '1272762054GettyImages-842135108-59ed890f685fbe0011d766e8.webp', '', 0, 0, '1583323390'),
(13, 1, 1, 1, 0, 'Burger King', 1500, '10', '1350', 'Occasionally you need to fill the classic burger-and-fries meal void as a veg eater. So I love the fact that Burger King offers a veggie burger, and a Morningstar one at that. The patty comes on a toasted bun with the lettuce, tomato, and pickles fixin\'s, but add cheese, if you eat it, for an extra dose of flavor. ', '1422641141tl-horizontal_main.jpg', '', 1, 1, '1583387113'),
(14, 1, 1, 3, 0, 'Dairy Queen', 500, '10', '450', 'At At Does anyone really go to Dairy Queen for anything but dessert? This is a legitimate question, but I suppose it’s best to be prepared for anything. So, should you find yourself at DQ needing something more than ice cream for sustenance, you’ll be relegated to a place you’re well-acquainted with: the snacks and sides menus. The pretzel sticks are ballpark-level good and pair perfectly with the jalapeño-flecked white queso, while the cheese curds are fried just right and -- controversial take -- are said to be even better than Culver’s. Once you’ve had your well-balanced meal, move on to the belle of the ball: a Blizzard. I am of the mind that Butterfinger reigns supreme, but it’s impossible to make a wrong choice in this scenario.', '1561750076Computadora.jpeg', '1584023273', 1, 1, ''),
(17, 5, 5, 1, 0, 'test', 1500, '10', '1350', 'At w3schools.com you will learn how to make a website. We offer free tutorials in all web development technologies.', '357601514food_item_2.png', '', 0, 0, '1583752861'),
(16, 7, 7, 10, 0, 'Burger', 10, '10', '9', 'At w3schools.com you will learn how to make a website. We offer free tutorials in all web development technologies.', '477550390', '', 0, 0, '1583563546');

-- --------------------------------------------------------

--
-- Table structure for table `promo_code`
--

CREATE TABLE `promo_code` (
  `id` int(255) NOT NULL,
  `restaurant_id` int(255) NOT NULL,
  `promo_code_name` varchar(255) NOT NULL,
  `prmo_off` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `strtotime` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `promo_code`
--

INSERT INTO `promo_code` (`id`, `restaurant_id`, `promo_code_name`, `prmo_off`, `description`, `strtotime`) VALUES
(4, 1, 'QROOD10', '10', 'You can use our Promo code of second order. ', ''),
(3, 1, 'QROOD', '50', 'You can use our Promo code of first order. ', '');

-- --------------------------------------------------------

--
-- Table structure for table `qrcode`
--

CREATE TABLE `qrcode` (
  `id` int(255) NOT NULL,
  `restaurant_id` int(255) NOT NULL,
  `table_id` int(255) NOT NULL,
  `strtotime` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qrcode`
--

INSERT INTO `qrcode` (`id`, `restaurant_id`, `table_id`, `strtotime`) VALUES
(1, 1, 1, '1583388248'),
(2, 1, 2, '1583388287'),
(3, 4, 1, '1583415381'),
(4, 1, 3, '1583429325'),
(5, 1, 6, '1583479396'),
(6, 1, 7, '1583479469'),
(7, 1, 8, '1583487168'),
(8, 1, 15, '1583487678'),
(9, 7, 1, '1583563587'),
(10, 5, 1, '1583752471'),
(11, 1, 0, '1583766695');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(255) NOT NULL,
  `restaurant_id` int(255) NOT NULL,
  `name` text NOT NULL,
  `comment` text NOT NULL,
  `reviewStars` text NOT NULL,
  `profileimag` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `restaurant_id`, `name`, `comment`, `reviewStars`, `profileimag`, `created`) VALUES
(1, 1, 'jitu12', 'hello test', '1', '631226001icon_1.png', '2020-03-13 13:02:20'),
(2, 1, 'jitu12', 'hello you', '5', '1436550701slider_icon_2.jpg', '2020-03-13 13:04:05'),
(3, 1, 'pari', 'thijfdm df dfkjdfs dfkdfsklm,dfs dfg,dglkjgm, gmkdmm,gkm,g dsg,dsgm, dsg,.dsg', '4', '346425372icon_3.png', '2020-03-14 09:35:39'),
(4, 1, 'ravi', 'weqwe wfdwfds dfdsf dsfdsdsfdsfds ', '3', '1223065232', '2020-03-14 09:36:14');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(255) NOT NULL,
  `restaurant_name` varchar(255) NOT NULL,
  `restaurant_uname` varchar(255) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `status` int(255) NOT NULL,
  `role` int(255) NOT NULL DEFAULT '2' COMMENT '1=admin,2=users',
  `strtotime` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `restaurant_name`, `restaurant_uname`, `admin_name`, `email`, `password`, `phone`, `status`, `role`, `strtotime`) VALUES
(1, 'Vrindavan Restaurants', 'Vrindavan', 'Sam Peter ', 'petersamm16@gmail.com', '123', '12345678', 1, 2, '1583385900'),
(2, 'Taste of India', 'testindia', 'Peter Samm', 'jakkay@gmail.com', 'jakay', '', 1, 2, '1583383391'),
(3, 'super admin', 'supereadmin@gmail.com', 'superadmin', 'supereadmin@gmail.com', '123', '', 1, 1, '1583385266'),
(5, 'Subh', 'Subhlabh', 'Subhash', 'paradkar.subhash90@gmail.com', '123', '', 1, 2, '1583490332'),
(6, 'Maestros Infotech', 'Maestros', 'Maestros', 'maestrosinfotech@gmail.com', '123456', '', 1, 2, '1583560229'),
(7, 'My rest', 'admin1', 'Admin Name', 'kennetht89@gmail.com', '123', '', 1, 2, '1583563395'),
(8, 'Maestros Infotech', 'chief', 'Maestros', 'maestrosinfotech1@gmail.com', '321', '', 1, 2, '1583737865');

-- --------------------------------------------------------

--
-- Table structure for table `support`
--

CREATE TABLE `support` (
  `id` int(255) NOT NULL,
  `admin_id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `strtotime` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `support`
--

INSERT INTO `support` (`id`, `admin_id`, `email`, `message`, `strtotime`) VALUES
(1, 0, 'peteramm16@gmail.com', 'cddddddddddddddd', '1583393688'),
(2, 1, 'petersamm16@gmail.com', 'hello', '1583396367'),
(3, 1, 'petersamm16@gmail.com', 'hello', '1583396389'),
(4, 1, 'admin@admin.com', 'lkjhlkafha', '1584034178'),
(5, 1, 'jitu.maestros@gmail.com', 'jjjdjjd', '1584101195'),
(6, 1, 'jitu.maestros@gmail.com', 'sdadasdsadsa', '1584101599'),
(7, 1, 'jitu.maestros@gmail.com', '1470258789653214789563214578963214789563214789524774', '1584101759'),
(8, 1, 'jitu.maestros@gmail.com', 'vcxvcxvcxvxvcv', '1584101871');

-- --------------------------------------------------------

--
-- Table structure for table `suscription`
--

CREATE TABLE `suscription` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `plan_type` varchar(222) NOT NULL,
  `day` int(222) NOT NULL,
  `price` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suscription`
--

INSERT INTO `suscription` (`id`, `name`, `description`, `plan_type`, `day`, `price`) VALUES
(1, 'Free Trial', 'Lorem Ipsum Is Simply Dummy Text Of The Printing And', 'Day', 7, 0),
(2, 'MONTHLY', 'Lorem Ipsum Is Simply Dummy Text Of The Printing A...', 'Month', 1, 1),
(3, 'YEARLY', 'Lorem Ipsum Is Simply Dummy Text Of The Printing And', 'Year', 1, 12),
(5, 'half month', '1', 'Day', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `theme_desgin`
--

CREATE TABLE `theme_desgin` (
  `id` int(255) NOT NULL,
  `admin_id` int(255) NOT NULL,
  `icon_button` varchar(255) NOT NULL,
  `pcolor` varchar(255) NOT NULL,
  `border_color` varchar(255) NOT NULL,
  `bg_color` varchar(255) NOT NULL,
  `hd_color` varchar(255) NOT NULL,
  `para_color` varchar(255) NOT NULL,
  `foot_color` varchar(255) NOT NULL,
  `foot_txt_color` varchar(255) NOT NULL,
  `foot_hed_color` varchar(255) NOT NULL,
  `head_txt_color` varchar(255) NOT NULL,
  `hed_bc_color` varchar(255) NOT NULL,
  `body_color` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `theme_desgin`
--

INSERT INTO `theme_desgin` (`id`, `admin_id`, `icon_button`, `pcolor`, `border_color`, `bg_color`, `hd_color`, `para_color`, `foot_color`, `foot_txt_color`, `foot_hed_color`, `head_txt_color`, `hed_bc_color`, `body_color`) VALUES
(1, 1, '#800000', '#800000', '#000000', '#008040', '#0000ff', '#ff0000', '#004040', '#00ff00', '#83ed47', '#ae1811', '#000040', '#ffffff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apply_coupon`
--
ALTER TABLE `apply_coupon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_profile`
--
ALTER TABLE `business_profile`
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
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promo_code`
--
ALTER TABLE `promo_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qrcode`
--
ALTER TABLE `qrcode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suscription`
--
ALTER TABLE `suscription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theme_desgin`
--
ALTER TABLE `theme_desgin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `apply_coupon`
--
ALTER TABLE `apply_coupon`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `business_profile`
--
ALTER TABLE `business_profile`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `promo_code`
--
ALTER TABLE `promo_code`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `qrcode`
--
ALTER TABLE `qrcode`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `support`
--
ALTER TABLE `support`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `suscription`
--
ALTER TABLE `suscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `theme_desgin`
--
ALTER TABLE `theme_desgin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
