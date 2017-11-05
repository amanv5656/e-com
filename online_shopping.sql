-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2017 at 06:12 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `online_shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE IF NOT EXISTS `checkout` (
  `chk_id` int(11) NOT NULL AUTO_INCREMENT,
  `chk_prod` int(11) NOT NULL,
  `chk_ref` text NOT NULL,
  `chk_timing` datetime NOT NULL,
  `chk_qty` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`chk_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=71 ;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`chk_id`, `chk_prod`, `chk_ref`, `chk_timing`, `chk_qty`) VALUES
(1, 0, '2017-07-28 06:27:40_2017119232', '2017-07-28 06:27:40', 3),
(41, 3, '2017-07-28 06:27:59_986936382', '2017-07-29 06:22:48', 3),
(53, 2, '2017-07-28 06:27:59_986936382', '2017-07-29 06:43:58', 1),
(54, 4, '2017-07-28 06:27:59_986936382', '2017-07-29 06:50:04', 1),
(58, 4, '2017-07-30 11:51:14_770331751', '2017-07-30 11:51:14', 1),
(59, 2, '2017-07-30 11:51:14_770331751', '2017-07-30 11:51:31', 12),
(60, 4, '2017-08-02 07:12:55_723181847', '2017-08-02 07:12:55', 10),
(61, 2, '2017-08-03 08:31:50_411839896', '2017-08-03 08:31:50', 1),
(63, 2, '2017-08-14 09:24:56_14058940', '2017-08-14 09:26:46', 1),
(65, 17, '2017-08-14 09:24:56_14058940', '2017-08-14 09:34:03', 1),
(66, 1, '2017-08-20 10:12:47_38302175', '2017-08-20 10:12:47', 1),
(68, 2, '2017-08-31 11:42:41_1505280533', '2017-08-31 11:43:05', 5),
(69, 3, '2017-08-31 11:42:41_1505280533', '2017-08-31 11:43:15', 3),
(70, 4, '2017-11-01 09:00:19_1528458195', '2017-11-01 09:00:19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_name` text NOT NULL,
  `order_email` text NOT NULL,
  `order_contact` int(11) NOT NULL,
  `order_state` text NOT NULL,
  `order_delivery_address` text NOT NULL,
  `order_checkout_ref` text NOT NULL,
  `order_total` int(11) NOT NULL,
  `order_status` int(11) NOT NULL DEFAULT '0',
  `return_status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_name`, `order_email`, `order_contact`, `order_state`, `order_delivery_address`, `order_checkout_ref`, `order_total`, `order_status`, `return_status`) VALUES
(1, 'mnf', 'kgf@gfnd.cjk', 65455, 'New York', 'cfhjch', '2017-07-28 06:27:59_986936382', 4118, 1, 0),
(2, 'jfk', 'nkjfh@huri.com', 1455, 'Washington', 'fjilf', '2017-07-30 11:51:14_770331751', 13610, 0, 1),
(3, '', '', 0, '', '', '2017-08-14 09:24:56_14058940', 0, 0, 1),
(4, '', '', 0, '', '', '2017-08-14 09:24:56_14058940', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `prod_id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_image` text NOT NULL,
  `prod_title` text NOT NULL,
  `prod_desc` text NOT NULL,
  `prod_cat` text NOT NULL,
  `prod_quantity` int(11) NOT NULL,
  `prod_cost` int(11) NOT NULL,
  `prod_price` int(11) NOT NULL,
  `prod_disc` int(11) NOT NULL,
  `prod_del_chrg` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`prod_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`prod_id`, `prod_image`, `prod_title`, `prod_desc`, `prod_cat`, `prod_quantity`, `prod_cost`, `prod_price`, `prod_disc`, `prod_del_chrg`) VALUES
(1, 'images/product/watch1.jpg', 'Beautiful Brown Watch', '<p>This is a beautiful watch. Its purely made of metal. You can buy this watch by click on the buy button.</p>\n						<ul>\n							<li>It''s Beautiful</li>\n							<li>Made of Metal</li>\n							<li>An original and branded quality</li>\n							<li>Free shipping overall the country</li>\n							<li>Pay Securely via <b>CASH ON DELIVERY</b> method</li>\n						</ul>', 'watches', 50, 400, 500, 50, 0),
(2, 'images/product/watch2.jpg', 'Dark Black Watch', '<p>This is a beautiful watch. Its purely made of metal. You can buy this watch by click on the buy button.</p>\r\n						<ul>\r\n							<li>It''s Beautiful</li>\r\n							<li>Made of Metal</li>\r\n							<li>An original and branded quality</li>\r\n							<li>Free shipping overall the country</li>\r\n							<li>Pay Securely via <b>CASH ON DELIVERY</b> method</li>\r\n						</ul>', 'watches', 80, 890, 1000, 70, 60),
(3, 'images/product/glasses1.jpg', 'Men wear glasses', '<p>This Glasses are very good in looking. You can read very small writing by wearing these glasses.</p>\r\n						<ul>\r\n							<li>It''s Beautiful</li>\r\n							<li>Made of Metal</li>\r\n							<li>An original and branded quality</li>\r\n							<li>Free shipping overall the country</li>\r\n							<li>Pay Securely via <b>CASH ON DELIVERY</b> method</li>\r\n						</ul>', 'men', 200, 469, 546, 30, 0),
(4, 'images/product/shoes1.jpg', 'Best Summer Shoes', '<p>This Best ever summer shoes will yourself in sun.</p>\n						<ul>\n							<li>It''s Awesome</li>\n					\n							<li>An original and branded quality</li>\n							<li>Free shipping overall the country</li>\n							<li>Pay Securely via <b>CASH ON DELIVERY</b> method</li>\n						</ul>', 'shoes', 78, 1467, 1590, 50, 40),
(17, 'images/product/1583652355_shoes2.jpeg', 'Black Formal Shoes', '<p>This Best ever Formal shoes.Makes you a complete gentleman.</p>\r\n						<ul>\r\n							<li>It''s Awesome</li>\r\n					\r\n							<li>An original and branded quality</li>\r\n							<li>Free shipping overall the country</li>\r\n							<li>Pay Securely via <b>CASH ON DELIVERY</b> method</li>\r\n						</ul>', 'shoes', 100, 900, 1100, 55, 20),
(18, 'images/product/1881450466_watch3.jpg', 'Golden Watch', '<p>This is a beautiful watch. Its purely made of metal. You can buy this watch by click on the buy button.</p>\n						<ul>\n							<li>It''s Beautiful</li>\n							<li>Made of Metal</li>\n							<li>An original and branded quality</li>\n							<li>Free shipping overall the country</li>\n							<li>Pay Securely via <b>CASH ON DELIVERY</b> method</li>\n						</ul>', 'watches', 150, 2100, 2500, 99, 35);

-- --------------------------------------------------------

--
-- Table structure for table `prod_cat`
--

CREATE TABLE IF NOT EXISTS `prod_cat` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` text NOT NULL,
  `cat_slug` text NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `prod_cat`
--

INSERT INTO `prod_cat` (`cat_id`, `cat_name`, `cat_slug`) VALUES
(1, 'watches', 'watches'),
(2, 'men', ''),
(3, 'shoes', 'shoes');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
