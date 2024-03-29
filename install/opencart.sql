-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2014 at 04:08 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pav_foxs_store`
--
-- --------------------------------------------------------

--
-- Table structure for table `oc_address`
--

DROP TABLE IF EXISTS `oc_address`;
CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(32) NOT NULL,
  `company_id` varchar(32) NOT NULL,
  `tax_id` varchar(32) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `company_id`, `tax_id`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`) VALUES
(1, 1, 'Pham', 'Duc Tai', 'Brainos', '0123456789', '0123456789', 'Me Tri - Tu Liem - Ha Noi', 'Me Tri - Tu Liem - Ha Noi', 'Ha Noi', '123456', 230, 3776),
(2, 2, 'admin', 'admin', 'ABC', 'ABC123', '', 'United States', 'United States', 'United States', '123456', 223, 3642),
(3, 3, 'anh', 'anh', '', '', '', 'hà nội', '', 'hà nội', '0000', 230, 3776),
(4, 4, 'Nasata', 'Waka', '', '', '', 'No 1104 Super Sky Tower, Los Angeles, USA', '', ' USA', '12345', 222, 3514),
(5, 5, 'Gate', 'Licolas', '', '', '', 'LAS', '', 'LAS', '12345', 222, 3581);

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate`
--

DROP TABLE IF EXISTS `oc_affiliate`;
CREATE TABLE `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(32) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_transaction`
--

DROP TABLE IF EXISTS `oc_affiliate_transaction`;
CREATE TABLE `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute`
--

DROP TABLE IF EXISTS `oc_attribute`;
CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_description`
--

DROP TABLE IF EXISTS `oc_attribute_description`;
CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(2, 1, 'No. of Cores'),
(4, 1, 'test 1'),
(5, 1, 'test 2'),
(6, 1, 'test 3'),
(7, 1, 'test 4'),
(8, 1, 'test 5'),
(9, 1, 'test 6'),
(10, 1, 'test 7'),
(11, 1, 'test 8'),
(3, 1, 'Clockspeed'),
(1, 2, 'Description'),
(2, 2, 'No. of Cores'),
(4, 2, 'test 1'),
(5, 2, 'test 2'),
(6, 2, 'test 3'),
(7, 2, 'test 4'),
(8, 2, 'test 5'),
(9, 2, 'test 6'),
(10, 2, 'test 7'),
(11, 2, 'test 8'),
(3, 2, 'Clockspeed');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group`
--

DROP TABLE IF EXISTS `oc_attribute_group`;
CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group_description`
--

DROP TABLE IF EXISTS `oc_attribute_group_description`;
CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor'),
(3, 2, 'Memory'),
(4, 2, 'Technical'),
(5, 2, 'Motherboard'),
(6, 2, 'Processor');

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner`
--

DROP TABLE IF EXISTS `oc_banner`;
CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'HP Products', 1),
(7, 'Samsung Tab', 1),
(8, 'Manufacturers', 1),
(9, 'Tiger', 1),
(10, 'Sale Off', 1),
(11, 'Men Style', 1),
(12, 'Comfort design', 1),
(13, 'Free Shipping', 1),
(14, 'banner', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

DROP TABLE IF EXISTS `oc_banner_image`;
CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=157 ;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `link`, `image`) VALUES
(79, 7, 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'data/demo/banner-sports-men.png'),
(86, 6, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'data/demo/banner-comfort-design.png'),
(156, 8, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'data/banner/banner-02.jpg'),
(155, 8, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=8', 'data/banner/banner-03.jpg'),
(154, 8, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=5', 'data/banner/banner-04.jpg'),
(153, 8, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=8', 'data/banner/banner-02.jpg'),
(152, 8, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=6', 'data/banner/banner-05.jpg'),
(151, 8, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=6', 'data/banner/banner-04.jpg'),
(149, 8, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=10', 'data/banner/banner-02.jpg'),
(150, 8, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=6', 'data/banner/banner-03.jpg'),
(123, 9, '#', 'data/demo/banner-tiger.png'),
(124, 10, '#', 'data/demo/banner-sale-off.png'),
(125, 11, '#', 'data/demo/banner-men-style.png'),
(130, 12, '#', 'data/banner/banner1--.png'),
(127, 13, '#', 'data/demo/banner-free-shipping.png'),
(134, 14, '#', 'data/banner/banner12.png'),
(131, 12, '#', 'data/banner/banner2.png'),
(132, 12, '#', 'data/banner/banner3.png'),
(133, 12, '#', 'data/banner/banner4.png'),
(148, 8, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=10', 'data/banner/banner-01.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image_description`
--

DROP TABLE IF EXISTS `oc_banner_image_description`;
CREATE TABLE `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image_description`
--

INSERT INTO `oc_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`) VALUES
(79, 1, 7, 'Samsung Tab 10.1'),
(79, 2, 7, 'Samsung Tab 10.1'),
(86, 2, 6, 'HP Banner'),
(86, 1, 6, 'HP Banner'),
(156, 2, 8, 'Hewlett-Packard'),
(156, 1, 8, 'Hewlett-Packard'),
(155, 2, 8, 'Apple'),
(155, 1, 8, 'Apple'),
(154, 2, 8, 'HTC'),
(154, 1, 8, 'HTC'),
(153, 2, 8, 'Dell'),
(153, 1, 8, 'Dell'),
(152, 2, 8, 'Hp'),
(152, 1, 8, 'Hp'),
(151, 2, 8, 'Asus'),
(151, 1, 8, 'Asus'),
(150, 2, 8, 'Canon'),
(150, 1, 8, 'Canon'),
(149, 2, 8, 'Hitachi'),
(123, 1, 9, 'Banner Tiger'),
(123, 2, 9, 'Banner Tiger'),
(124, 1, 10, 'banner-sale-off'),
(124, 2, 10, 'banner-sale-off'),
(125, 1, 11, 'Banner Men Style'),
(125, 2, 11, 'Banner Men Style'),
(130, 2, 12, 'Banner Comfort design'),
(130, 1, 12, 'Banner Comfort design'),
(127, 1, 13, 'Banner Free Shipping'),
(127, 2, 13, 'Banner Free Shipping'),
(134, 2, 14, 'banner'),
(134, 1, 14, 'banner '),
(131, 1, 12, 'dfhf'),
(131, 2, 12, 'fgjfgj'),
(132, 1, 12, 'fgjfj'),
(132, 2, 12, 'fgjgfj'),
(133, 1, 12, 'fgjfj'),
(133, 2, 12, 'fgjgfj'),
(149, 1, 8, 'Hitachi'),
(148, 2, 8, 'Microsoft'),
(148, 1, 8, 'Microsoft');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category`
--

DROP TABLE IF EXISTS `oc_category`;
CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(25, 'data/demo/banner-category.png', 0, 1, 1, 3, 1, '2009-01-31 01:04:25', '2014-06-14 10:45:56'),
(27, 'data/demo/banner-category.png', 20, 0, 0, 2, 1, '2009-01-31 01:55:34', '2014-03-01 10:38:25'),
(20, 'data/demo/banner-category.jpg', 0, 1, 1, 1, 1, '2009-01-05 21:49:43', '2014-08-07 16:36:43'),
(28, 'data/demo/banner-category.png', 25, 0, 0, 1, 1, '2009-02-02 13:11:12', '2014-03-01 10:39:37'),
(26, 'data/demo/banner-category.png', 20, 0, 0, 1, 1, '2009-01-31 01:55:14', '2014-03-01 10:38:16'),
(29, 'data/demo/banner-category.png', 25, 0, 0, 1, 1, '2009-02-02 13:11:37', '2014-03-01 10:39:46'),
(30, 'data/demo/banner-category.png', 25, 0, 0, 1, 1, '2009-02-02 13:11:59', '2014-03-01 10:39:13'),
(31, 'data/demo/banner-category.png', 25, 0, 0, 1, 1, '2009-02-03 14:17:24', '2014-03-01 10:39:04'),
(32, 'data/demo/banner-category.png', 25, 0, 0, 1, 1, '2009-02-03 14:17:34', '2014-03-01 10:38:58'),
(59, 'data/demo/banner-category.png', 0, 0, 1, 1, 1, '2014-01-07 00:34:32', '2014-08-07 16:36:24'),
(34, 'data/demo/banner-category.png', 0, 1, 4, 7, 1, '2009-02-03 14:18:11', '2014-04-19 08:57:24'),
(35, 'data/demo/banner-category.png', 28, 0, 0, 0, 1, '2010-09-17 10:06:48', '2014-03-01 10:39:29'),
(36, 'data/demo/banner-category.png', 28, 0, 0, 0, 1, '2010-09-17 10:07:13', '2014-03-01 10:39:19'),
(43, 'data/demo/banner-category.png', 34, 0, 0, 0, 1, '2010-09-18 14:06:49', '2014-03-01 10:34:06'),
(44, 'data/demo/banner-category.png', 34, 0, 0, 0, 1, '2010-09-21 15:39:21', '2014-03-01 10:34:01'),
(47, 'data/demo/banner-category.png', 34, 0, 0, 0, 1, '2010-11-07 11:13:16', '2014-03-01 10:33:55'),
(48, 'data/demo/banner-category.png', 34, 0, 0, 0, 1, '2010-11-07 11:13:33', '2014-03-01 10:33:49'),
(49, '', 34, 0, 0, 0, 1, '2010-11-07 11:14:04', '2014-03-01 10:33:42'),
(50, '', 34, 0, 0, 0, 1, '2010-11-07 11:14:23', '2014-03-01 10:33:36'),
(60, 'data/demo/banner-category.png', 0, 0, 1, 1, 1, '2014-04-19 09:03:27', '2014-04-19 09:04:50');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_description`
--

DROP TABLE IF EXISTS `oc_category_description`;
CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`) VALUES
(25, 1, 'Men''s', '&lt;p&gt;Modus consetetur id pri, at mundi vidisse forensibus est, ei est accusata deterruisset. Pri stet putent regione no. Nec honestatis liberavisse et. Id eum primis equidem intellegam, case scribentur nam in, id dolores invidunt sed.&lt;/p&gt;\r\n', '', ''),
(34, 1, 'Featured', '&lt;p&gt;Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', '', ''),
(34, 2, 'متميز', '&lt;p&gt;م كما وتردي الساحل, وحتّى اليها حين في, ثم يذكر تكتيكاً بوزيرها حول. وجزر تنفّس أفريقيا بلا لم, عل هامش الحربية كان. رئيس غرّة، والألمانية، أخذ كل. هو ضرب طوكيو للجزر الصعداء. في ماذا مناوشات والروسية حدى. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا.&lt;/p&gt;\r\n', '', ''),
(49, 2, 'عدد ثم تجهيز الجنرال', '', '', ''),
(50, 2, 'عدد ثم تجهيز الجنرال', '', '', ''),
(49, 1, 'test 17', '', '', ''),
(50, 1, 'test 18', '', '', ''),
(26, 2, 'عدد ثم تجهيز الجنرال', '', '', ''),
(27, 2, 'عدد ثم تجهيز الجنرال', '', '', ''),
(35, 1, 'test 1', '&lt;p&gt;Modus consetetur id pri, at mundi vidisse forensibus est, ei est accusata deterruisset. Pri stet putent regione no. Nec honestatis liberavisse et. Id eum primis equidem intellegam, case scribentur nam in, id dolores invidunt sed.&lt;/p&gt;\r\n', '', ''),
(30, 2, 'عدد ثم تجهيز الجنرال', '', '', ''),
(36, 2, 'عدد ثم تجهيز الجنرال', '', '', ''),
(35, 2, 'عدد ثم تجهيز الجنرال', '', '', ''),
(28, 2, 'عدد ثم تجهيز الجنرال', '', '', ''),
(29, 2, 'عدد ثم تجهيز الجنرال', '', '', ''),
(32, 2, 'تكتيكاً بوزيرها حول.', '', '', ''),
(31, 2, 'عدد ثم تجهيز الجنرال', '', '', ''),
(30, 1, 'Printers', '&lt;p&gt;Modus consetetur id pri, at mundi vidisse forensibus est, ei est accusata deterruisset. Pri stet putent regione no. Nec honestatis liberavisse et. Id eum primis equidem intellegam, case scribentur nam in, id dolores invidunt sed.&lt;/p&gt;\r\n', '', ''),
(36, 1, 'test 2', '&lt;p&gt;Modus consetetur id pri, at mundi vidisse forensibus est, ei est accusata deterruisset. Pri stet putent regione no. Nec honestatis liberavisse et. Id eum primis equidem intellegam, case scribentur nam in, id dolores invidunt sed.&lt;/p&gt;\r\n', '', ''),
(20, 1, 'New', '&lt;p&gt;Modus consetetur id pri, at mundi vidisse forensibus est, ei est accusata deterruisset. Pri stet putent regione no. Nec honestatis liberavisse et. Id eum primis equidem intellegam, case scribentur nam in, id dolores invidunt sed.&lt;/p&gt;\r\n', 'Example of category description', ''),
(20, 2, 'عدد ثم تجهيز الجنرال', '&lt;p&gt;م كما وتردي الساحل, وحتّى اليها حين في, ثم يذكر تكتيكاً بوزيرها حول. وجزر تنفّس أفريقيا بلا لم, عل هامش الحربية كان. رئيس غرّة، والألمانية، أخذ كل. هو ضرب طوكيو للجزر الصعداء. في ماذا مناوشات والروسية حدى. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا.&lt;/p&gt;\r\n', 'عدد ثم تجهيز الجنرال', ''),
(31, 1, 'Scanners', '&lt;p&gt;Modus consetetur id pri, at mundi vidisse forensibus est, ei est accusata deterruisset. Pri stet putent regione no. Nec honestatis liberavisse et. Id eum primis equidem intellegam, case scribentur nam in, id dolores invidunt sed.&lt;/p&gt;\r\n', '', ''),
(43, 2, 'عدد ثم تجهيز الجنرال', '', '', ''),
(32, 1, 'Web Cameras', '&lt;p&gt;Modus consetetur id pri, at mundi vidisse forensibus est, ei est accusata deterruisset. Pri stet putent regione no. Nec honestatis liberavisse et. Id eum primis equidem intellegam, case scribentur nam in, id dolores invidunt sed.&lt;/p&gt;\r\n', '', ''),
(44, 2, 'عدد ثم تجهيز الجنرال', '', '', ''),
(27, 1, 'Mac', '&lt;p&gt;Modus consetetur id pri, at mundi vidisse forensibus est, ei est accusata deterruisset. Pri stet putent regione no. Nec honestatis liberavisse et. Id eum primis equidem intellegam, case scribentur nam in, id dolores invidunt sed.&lt;/p&gt;\r\n', '', ''),
(47, 2, 'عدد ثم تجهيز الجنرال', '', '', ''),
(26, 1, 'PC', '&lt;p&gt;Modus consetetur id pri, at mundi vidisse forensibus est, ei est accusata deterruisset. Pri stet putent regione no. Nec honestatis liberavisse et. Id eum primis equidem intellegam, case scribentur nam in, id dolores invidunt sed.&lt;/p&gt;\r\n', '', ''),
(48, 2, 'عدد ثم تجهيز الجنرال', '', '', ''),
(43, 1, 'test 11', '&lt;p&gt;Modus consetetur id pri, at mundi vidisse forensibus est, ei est accusata deterruisset. Pri stet putent regione no. Nec honestatis liberavisse et. Id eum primis equidem intellegam, case scribentur nam in, id dolores invidunt sed.&lt;/p&gt;\r\n', '', ''),
(44, 1, 'test 12', '&lt;p&gt;Modus consetetur id pri, at mundi vidisse forensibus est, ei est accusata deterruisset. Pri stet putent regione no. Nec honestatis liberavisse et. Id eum primis equidem intellegam, case scribentur nam in, id dolores invidunt sed.&lt;/p&gt;\r\n', '', ''),
(47, 1, 'test 15', '&lt;p&gt;Modus consetetur id pri, at mundi vidisse forensibus est, ei est accusata deterruisset. Pri stet putent regione no. Nec honestatis liberavisse et. Id eum primis equidem intellegam, case scribentur nam in, id dolores invidunt sed.&lt;/p&gt;\r\n', '', ''),
(48, 1, 'test 16', '&lt;p&gt;Modus consetetur id pri, at mundi vidisse forensibus est, ei est accusata deterruisset. Pri stet putent regione no. Nec honestatis liberavisse et. Id eum primis equidem intellegam, case scribentur nam in, id dolores invidunt sed.&lt;/p&gt;\r\n', '', ''),
(28, 1, 'Monitors', '&lt;p&gt;Modus consetetur id pri, at mundi vidisse forensibus est, ei est accusata deterruisset. Pri stet putent regione no. Nec honestatis liberavisse et. Id eum primis equidem intellegam, case scribentur nam in, id dolores invidunt sed.&lt;/p&gt;\r\n', '', ''),
(29, 1, 'Mice and Trackballs', '&lt;p&gt;Modus consetetur id pri, at mundi vidisse forensibus est, ei est accusata deterruisset. Pri stet putent regione no. Nec honestatis liberavisse et. Id eum primis equidem intellegam, case scribentur nam in, id dolores invidunt sed.&lt;/p&gt;\r\n', '', ''),
(59, 1, 'Ladies''', '', '', ''),
(59, 2, 'عدد ثم تجهيز الجنرال', '', '', ''),
(60, 1, 'Computer parts', '', '', ''),
(60, 2, '      قطع غيار الكمبيوتر', '', '', ''),
(25, 2, 'رقمي', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_filter`
--

DROP TABLE IF EXISTS `oc_category_filter`;
CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_filter`
--

INSERT INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES
(20, 7),
(20, 8),
(20, 9),
(20, 10),
(20, 11),
(20, 12),
(59, 7),
(59, 8),
(59, 11),
(59, 12);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_path`
--

DROP TABLE IF EXISTS `oc_category_path`;
CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(25, 25, 0),
(28, 25, 0),
(28, 28, 1),
(35, 25, 0),
(35, 28, 1),
(35, 35, 2),
(36, 25, 0),
(36, 28, 1),
(36, 36, 2),
(29, 25, 0),
(29, 29, 1),
(30, 25, 0),
(30, 30, 1),
(31, 25, 0),
(31, 31, 1),
(32, 25, 0),
(32, 32, 1),
(20, 20, 0),
(27, 20, 0),
(27, 27, 1),
(26, 20, 0),
(26, 26, 1),
(59, 59, 0),
(34, 34, 0),
(43, 34, 0),
(43, 43, 1),
(44, 34, 0),
(44, 44, 1),
(47, 34, 0),
(47, 47, 1),
(48, 34, 0),
(48, 48, 1),
(49, 34, 0),
(49, 49, 1),
(50, 34, 0),
(50, 50, 1),
(60, 60, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_layout`
--

DROP TABLE IF EXISTS `oc_category_to_layout`;
CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_store`
--

DROP TABLE IF EXISTS `oc_category_to_store`;
CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(20, 0),
(25, 0),
(26, 0),
(27, 0),
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(34, 0),
(35, 0),
(36, 0),
(43, 0),
(44, 0),
(47, 0),
(48, 0),
(49, 0),
(50, 0),
(59, 0),
(60, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_country`
--

DROP TABLE IF EXISTS `oc_country`;
CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=252 ;

--
-- Dumping data for table `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D''Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'Korea, Republic of', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People''s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(240, 'Jersey', 'JE', 'JEY', '', 1, 1),
(241, 'Guernsey', 'GG', 'GGY', '', 1, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon`
--

DROP TABLE IF EXISTS `oc_coupon`;
CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2011-01-01', '2012-01-01', 10, '10', 1, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2009-03-01', '2009-08-31', 10, '10', 1, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '1970-11-01', '2020-11-01', 100000, '10000', 1, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_category`
--

DROP TABLE IF EXISTS `oc_coupon_category`;
CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_history`
--

DROP TABLE IF EXISTS `oc_coupon_history`;
CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_product`
--

DROP TABLE IF EXISTS `oc_coupon_product`;
CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_currency`
--

DROP TABLE IF EXISTS `oc_currency`;
CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Pound Sterling', 'GBP', '£', '', '2', 0.59609997, 1, '2014-08-09 03:46:28'),
(2, 'US Dollar', 'USD', '$', '', '2', 1.00000000, 1, '2014-08-09 03:46:28'),
(3, 'Euro', 'EUR', '', '€', '2', 0.74559999, 1, '2014-08-09 03:46:28');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer`
--

DROP TABLE IF EXISTS `oc_customer`;
CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `store_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `customer_group_id`, `ip`, `status`, `approved`, `token`, `date_added`) VALUES
(1, 0, 'Pham', 'Duc Tai', 'taip0422@gmail.com', '01672059552', '0123456', 'cf97bb2aef1a273758a3616e22707b1c963ee540', '270f99cc5', 'a:0:{}', 'a:0:{}', 1, 1, 1, '::1', 1, 1, '', '2014-01-27 23:28:55'),
(2, 0, 'admin', 'admin', 'admin@admin.com', '0123456789', '123456', 'b87abe731d17d4ada0e3b5409b12887b91f16571', 'de573c0d4', 'a:0:{}', 'a:2:{i:0;s:2:"51";i:1;s:2:"44";}', 1, 2, 1, '::1', 1, 1, '', '2014-03-08 13:56:45'),
(3, 0, 'anh', 'anh', 'anh@gmail.com', '1234567890', '', '15a4dc930d4716235fb48b5d87549f9bae689ed7', '3e586efca', 'a:3:{s:4:"48::";i:1;s:4:"51::";i:2;s:4:"40::";i:2;}', 'a:7:{i:0;s:2:"43";i:1;s:2:"28";i:2;s:2:"42";i:3;s:2:"30";i:4;s:2:"36";i:5;s:2:"31";i:6;s:2:"34";}', 0, 3, 1, '::1', 1, 1, '', '2014-04-07 14:29:32'),
(4, 0, 'Nasata', 'Waka', 'demo@gmail.com', '12345678', '', 'dfd189ed959eca914fca54d28dc27cb267027ca7', '76dc93979', 'a:1:{s:4:"51::";i:1;}', '', 0, 4, 1, '::1', 1, 1, '', '2014-06-03 10:29:10'),
(5, 0, 'Gate', 'Licolas', 'demo-demo@gmail.com', '123456789', '', '2132dbd007b887647f257655a9c545291e26918d', '982002e64', 'a:0:{}', 'a:2:{i:0;s:2:"51";i:1;s:2:"49";}', 0, 5, 1, '::1', 1, 1, '', '2014-06-27 11:27:12');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ban_ip`
--

DROP TABLE IF EXISTS `oc_customer_ban_ip`;
CREATE TABLE `oc_customer_ban_ip` (
  `customer_ban_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`customer_ban_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_field`
--

DROP TABLE IF EXISTS `oc_customer_field`;
CREATE TABLE `oc_customer_field` (
  `customer_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` int(128) NOT NULL,
  `value` text NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_id`,`custom_field_id`,`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group`
--

DROP TABLE IF EXISTS `oc_customer_group`;
CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `company_id_display` int(1) NOT NULL,
  `company_id_required` int(1) NOT NULL,
  `tax_id_display` int(1) NOT NULL,
  `tax_id_required` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `company_id_display`, `company_id_required`, `tax_id_display`, `tax_id_required`, `sort_order`) VALUES
(1, 0, 1, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group_description`
--

DROP TABLE IF EXISTS `oc_customer_group_description`;
CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test'),
(1, 2, 'Default', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_history`
--

DROP TABLE IF EXISTS `oc_customer_history`;
CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ip`
--

DROP TABLE IF EXISTS `oc_customer_ip`;
CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(1, 1, '::1', '2014-01-27 23:28:57'),
(2, 2, '192.168.1.32', '2014-03-08 13:56:47'),
(3, 3, '::1', '2014-04-07 14:29:33'),
(4, 4, '127.0.0.1', '2014-06-03 10:29:10'),
(5, 5, '::1', '2014-06-27 11:27:14'),
(6, 4, '::1', '2014-06-30 17:33:42'),
(7, 4, '192.168.1.52', '2014-07-01 11:17:13'),
(8, 2, '::1', '2014-07-22 16:35:36');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_online`
--

DROP TABLE IF EXISTS `oc_customer_online`;
CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_reward`
--

DROP TABLE IF EXISTS `oc_customer_reward`;
CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_transaction`
--

DROP TABLE IF EXISTS `oc_customer_transaction`;
CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field`
--

DROP TABLE IF EXISTS `oc_custom_field`;
CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  `location` varchar(32) NOT NULL,
  `position` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_description`
--

DROP TABLE IF EXISTS `oc_custom_field_description`;
CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_to_customer_group`
--

DROP TABLE IF EXISTS `oc_custom_field_to_customer_group`;
CREATE TABLE `oc_custom_field_to_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value`
--

DROP TABLE IF EXISTS `oc_custom_field_value`;
CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value_description`
--

DROP TABLE IF EXISTS `oc_custom_field_value_description`;
CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download`
--

DROP TABLE IF EXISTS `oc_download`;
CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `remaining` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download_description`
--

DROP TABLE IF EXISTS `oc_download_description`;
CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

DROP TABLE IF EXISTS `oc_extension`;
CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=477 ;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(23, 'payment', 'cod'),
(22, 'total', 'shipping'),
(57, 'total', 'sub_total'),
(58, 'total', 'tax'),
(59, 'total', 'total'),
(390, 'total', 'credit'),
(387, 'shipping', 'flat'),
(349, 'total', 'handling'),
(350, 'total', 'low_order_fee'),
(389, 'total', 'coupon'),
(411, 'module', 'affiliate'),
(408, 'module', 'account'),
(393, 'total', 'reward'),
(398, 'total', 'voucher'),
(407, 'payment', 'free_checkout'),
(419, 'module', 'slideshow'),
(429, 'module', 'themecontrol'),
(432, 'module', 'filter'),
(434, 'module', 'pavblog'),
(435, 'module', 'pavblogcategory'),
(436, 'module', 'pavblogcomment'),
(437, 'module', 'pavbloglatest'),
(441, 'module', 'pavsliderlayer'),
(442, 'module', 'pavmegamenu'),
(444, 'module', 'pavnewsletter'),
(446, 'module', 'latest'),
(453, 'module', 'pavcustom'),
(454, 'module', 'pavproducttabs'),
(464, 'module', 'category'),
(476, 'module', 'pavtwitter'),
(475, 'module', 'pavdeals'),
(474, 'module', 'pavpopulartags'),
(473, 'module', 'pavlandingpage');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter`
--

DROP TABLE IF EXISTS `oc_filter`;
CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `oc_filter`
--

INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES
(10, 1, 4),
(9, 1, 3),
(8, 1, 2),
(7, 1, 1),
(11, 1, 5),
(12, 1, 6),
(13, 2, 1),
(14, 2, 2),
(15, 2, 4),
(16, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_description`
--

DROP TABLE IF EXISTS `oc_filter_description`;
CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_description`
--

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `filter_group_id`, `name`) VALUES
(10, 2, 1, '$400.00 - $600.00'),
(10, 1, 1, '$400.00 - $600.00'),
(9, 2, 1, '$200.00 - $400.00'),
(9, 1, 1, '$200.00 - $400.00'),
(8, 2, 1, '$100.00 - $200.00'),
(8, 1, 1, '$100.00 - $200.00'),
(7, 2, 1, '$0.00 - $50.00'),
(7, 1, 1, '$0.00 - $50.00'),
(11, 2, 1, '$50.00 - $100.00'),
(11, 1, 1, '$50.00 - $100.00'),
(12, 1, 1, '$600.00 - $3.000.00'),
(12, 2, 1, '$600.00 - $3.000.00'),
(13, 1, 2, 'S'),
(13, 2, 2, 'S'),
(14, 1, 2, 'M'),
(14, 2, 2, 'M'),
(15, 1, 2, 'L'),
(15, 2, 2, 'L'),
(16, 1, 2, 'XL'),
(16, 2, 2, 'XL');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group`
--

DROP TABLE IF EXISTS `oc_filter_group`;
CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `oc_filter_group`
--

INSERT INTO `oc_filter_group` (`filter_group_id`, `sort_order`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group_description`
--

DROP TABLE IF EXISTS `oc_filter_group_description`;
CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_group_description`
--

INSERT INTO `oc_filter_group_description` (`filter_group_id`, `language_id`, `name`) VALUES
(1, 2, 'Filter by price'),
(1, 1, 'Filter by price'),
(2, 1, 'Filter by size'),
(2, 2, 'Filter by size');

-- --------------------------------------------------------

--
-- Table structure for table `oc_geo_zone`
--

DROP TABLE IF EXISTS `oc_geo_zone`;
CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2010-02-26 22:33:24', '2009-01-06 23:26:25'),
(4, 'UK Shipping', 'UK Shipping Zones', '2010-12-15 15:18:13', '2009-06-23 01:14:53');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information`
--

DROP TABLE IF EXISTS `oc_information`;
CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1),
(7, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_description`
--

DROP TABLE IF EXISTS `oc_information_description`;
CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`) VALUES
(4, 1, 'About Us', '&lt;p&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.&lt;/p&gt;\r\n\r\n&lt;p&gt;Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&lt;/p&gt;\r\n\r\n&lt;p&gt;On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish.&lt;/p&gt;\r\n\r\n&lt;p&gt;In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.&lt;/p&gt;\r\n'),
(5, 2, 'الشروط والأحكام', '&lt;p&gt;الشروط والأحكام&lt;/p&gt;\r\n'),
(3, 2, 'سياسة الخصوصية', '&lt;p&gt;سياسة الخصوصية&lt;/p&gt;\r\n'),
(6, 2, 'معلومات تسليم', '&lt;p&gt;معلومات تسليم&lt;/p&gt;\r\n'),
(6, 1, 'Delivery Information', '&lt;p&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.&lt;/p&gt;\r\n\r\n&lt;p&gt;Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&lt;/p&gt;\r\n\r\n&lt;p&gt;On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish.&lt;/p&gt;\r\n\r\n&lt;p&gt;In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.&lt;/p&gt;\r\n'),
(3, 1, 'Privacy Policy', '&lt;p&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.&lt;/p&gt;\r\n\r\n&lt;p&gt;Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&lt;/p&gt;\r\n\r\n&lt;p&gt;On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish.&lt;/p&gt;\r\n\r\n&lt;p&gt;In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.&lt;/p&gt;\r\n'),
(5, 1, 'Terms &amp; Conditions', '&lt;p&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.&lt;/p&gt;\r\n\r\n&lt;p&gt;Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&lt;/p&gt;\r\n\r\n&lt;p&gt;On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish.&lt;/p&gt;\r\n\r\n&lt;p&gt;In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.&lt;/p&gt;\r\n');
INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`) VALUES
(7, 1, 'typo', '&lt;meta charset=&quot;utf-8&quot; /&gt;\r\n&lt;title&gt;&lt;/title&gt;\r\n&lt;meta content=&quot;width=device-width, initial-scale=1&quot; name=&quot;viewport&quot; /&gt;\r\n&lt;link href=&quot;./bootstrap.css&quot; media=&quot;screen&quot; rel=&quot;stylesheet&quot; /&gt;\r\n&lt;link href=&quot;../assets/css/bootswatch.min.css&quot; rel=&quot;stylesheet&quot; /&gt;\r\n&lt;link href=&quot;http://localhost/opencart/lexus_foxs_store/catalog/view/theme/lexus_foxs_store/stylesheet/bootstrap.css&quot; rel=&quot;stylesheet&quot; /&gt;&lt;!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries --&gt;&lt;!--[if lt IE 9]&gt;\r\n      &lt;script src=&quot;../bower_components/html5shiv/dist/html5shiv.js&quot;&gt;&lt;/script&gt;\r\n      &lt;script src=&quot;../bower_components/respond/dest/respond.min.js&quot;&gt;&lt;/script&gt;\r\n    &lt;![endif]--&gt;&lt;script&gt;\r\n\r\n     var _gaq = _gaq || [];\r\n      _gaq.push([''_setAccount'', ''UA-23019901-1'']);\r\n      _gaq.push([''_setDomainName'', &quot;bootswatch.com&quot;]);\r\n        _gaq.push([''_setAllowLinker'', true]);\r\n      _gaq.push([''_trackPageview'']);\r\n\r\n     (function() {\r\n       var ga = document.createElement(''script''); ga.type = ''text/javascript''; ga.async = true;\r\n       ga.src = (''https:'' == document.location.protocol ? ''https://ssl'' : ''http://www'') + ''.google-analytics.com/ga.js'';\r\n       var s = document.getElementsByTagName(''script'')[0]; s.parentNode.insertBefore(ga, s);\r\n     })();\r\n\r\n    &lt;/script&gt;\r\n&lt;div class=&quot;navbar navbar-default navbar-fixed-top&quot;&gt;\r\n&lt;div class=&quot;container&quot;&gt;\r\n&lt;div class=&quot;navbar-header&quot;&gt;&lt;a class=&quot;navbar-brand&quot; href=&quot;../&quot;&gt;Bootswatch&lt;/a&gt;&lt;button class=&quot;navbar-toggle&quot; data-target=&quot;#navbar-main&quot; data-toggle=&quot;collapse&quot; type=&quot;button&quot;&gt;&lt;/button&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;navbar-collapse collapse&quot; id=&quot;navbar-main&quot;&gt;\r\n&lt;ul class=&quot;nav navbar-nav&quot;&gt;\r\n	&lt;li class=&quot;dropdown&quot;&gt;&lt;a class=&quot;dropdown-toggle&quot; data-toggle=&quot;dropdown&quot; href=&quot;#&quot; id=&quot;themes&quot;&gt;Themes &lt;/a&gt;\r\n\r\n	&lt;ul aria-labelledby=&quot;themes&quot; class=&quot;dropdown-menu&quot;&gt;\r\n		&lt;li&gt;&lt;a href=&quot;../default/&quot;&gt;Default&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li class=&quot;divider&quot;&gt;&amp;nbsp;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;../amelia/&quot;&gt;Amelia&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;../cerulean/&quot;&gt;Cerulean&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;../cosmo/&quot;&gt;Cosmo&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;../cyborg/&quot;&gt;Cyborg&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;../darkly/&quot;&gt;Darkly&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;../flatly/&quot;&gt;Flatly&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;../journal/&quot;&gt;Journal&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;../lumen/&quot;&gt;Lumen&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;../readable/&quot;&gt;Readable&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;../simplex/&quot;&gt;Simplex&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;../slate/&quot;&gt;Slate&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;../spacelab/&quot;&gt;Spacelab&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;../superhero/&quot;&gt;Superhero&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;../united/&quot;&gt;United&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;../yeti/&quot;&gt;Yeti&lt;/a&gt;&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;../help/&quot;&gt;Help&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;http://news.bootswatch.com&quot;&gt;Blog&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;dropdown&quot;&gt;&lt;a class=&quot;dropdown-toggle&quot; data-toggle=&quot;dropdown&quot; href=&quot;#&quot; id=&quot;download&quot;&gt;Download &lt;/a&gt;\r\n	&lt;ul aria-labelledby=&quot;download&quot; class=&quot;dropdown-menu&quot;&gt;\r\n		&lt;li&gt;&lt;a href=&quot;./bootstrap.min.css&quot;&gt;bootstrap.min.css&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;./bootstrap.css&quot;&gt;bootstrap.css&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li class=&quot;divider&quot;&gt;&amp;nbsp;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;./variables.less&quot;&gt;variables.less&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;./bootswatch.less&quot;&gt;bootswatch.less&lt;/a&gt;&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;ul class=&quot;nav navbar-nav navbar-right&quot;&gt;\r\n	&lt;li&gt;&lt;a href=&quot;http://builtwithbootstrap.com/&quot; target=&quot;_blank&quot;&gt;Built With Bootstrap&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;https://wrapbootstrap.com/?ref=bsw&quot; target=&quot;_blank&quot;&gt;WrapBootstrap&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;container&quot;&gt;\r\n&lt;div class=&quot;page-header&quot; id=&quot;banner&quot;&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-6&quot;&gt;\r\n&lt;h1&gt;Cerulean&lt;/h1&gt;\r\n\r\n&lt;p class=&quot;lead&quot;&gt;A calm blue sky&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-6&quot; style=&quot;padding: 15px 15px 0 15px;&quot;&gt;\r\n&lt;div class=&quot;well sponsor&quot;&gt;&lt;a href=&quot;http://srv.buysellads.com/direct/click/track/yes/x/G6NDC27ICWAI627UCWALYK7UCKBILKJMCT7I5&quot; onclick=&quot;_gaq.push([''_trackEvent'', ''banner'', ''click'', ''treehouse'']);&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;&lt;span style=&quot;float: left; margin-right: 15px;&quot;&gt;&lt;img height=&quot;135&quot; onload=&quot;_gaq.push([''_trackEvent'', ''banner'', ''impression'', ''treehouse'']);&quot; src=&quot;http://srv.buysellads.com/direct/image/track/yes/x/G6NDC27ICWAI627UCWALYK7UCKBILKJMCT7I5&quot; width=&quot;175&quot; /&gt; &lt;/span&gt; &lt;/a&gt; &lt;a href=&quot;http://srv.buysellads.com/direct/click/track/yes/x/G6NDC27ICWAI627UCWALYK7UCKBILKJMCT7I5&quot; onclick=&quot;_gaq.push([''_trackEvent'', ''banner'', ''click'', ''treehouse'']);&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt; &lt;/a&gt;\r\n\r\n&lt;h4 style=&quot;margin-bottom: 0.4em;&quot;&gt;&lt;a href=&quot;http://srv.buysellads.com/direct/click/track/yes/x/G6NDC27ICWAI627UCWALYK7UCKBILKJMCT7I5&quot; onclick=&quot;_gaq.push([''_trackEvent'', ''banner'', ''click'', ''treehouse'']);&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;Treehouse&lt;/a&gt;&lt;/h4&gt;\r\n&lt;a href=&quot;http://srv.buysellads.com/direct/click/track/yes/x/G6NDC27ICWAI627UCWALYK7UCKBILKJMCT7I5&quot; onclick=&quot;_gaq.push([''_trackEvent'', ''banner'', ''click'', ''treehouse'']);&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt; &lt;/a&gt;\r\n\r\n&lt;div class=&quot;clearfix&quot;&gt;\r\n&lt;p&gt;&lt;a href=&quot;http://srv.buysellads.com/direct/click/track/yes/x/G6NDC27ICWAI627UCWALYK7UCKBILKJMCT7I5&quot; onclick=&quot;_gaq.push([''_trackEvent'', ''banner'', ''click'', ''treehouse'']);&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;Learn Web Design, Coding, Mobile App Development &amp;amp; More.&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;http://srv.buysellads.com/direct/click/track/yes/x/G6NDC27ICWAI627UCWALYK7UCKBILKJMCT7I5&quot; onclick=&quot;_gaq.push([''_trackEvent'', ''banner'', ''click'', ''treehouse'']);&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;Start Learning for Free!&lt;/a&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;a href=&quot;http://srv.buysellads.com/direct/click/track/yes/x/G6NDC27ICWAI627UCWALYK7UCKBILKJMCT7I5&quot; onclick=&quot;_gaq.push([''_trackEvent'', ''banner'', ''click'', ''treehouse'']);&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt; &lt;/a&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- Navbar\r\n      ================================================== --&gt;\r\n\r\n&lt;div class=&quot;bs-docs-section clearfix&quot;&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-12&quot;&gt;\r\n&lt;div class=&quot;page-header&quot;&gt;\r\n&lt;h1 id=&quot;navbar&quot;&gt;Navbar&lt;/h1&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;div class=&quot;navbar navbar-default&quot;&gt;\r\n&lt;div class=&quot;navbar-header&quot;&gt;&lt;button class=&quot;navbar-toggle&quot; data-target=&quot;.navbar-responsive-collapse&quot; data-toggle=&quot;collapse&quot; type=&quot;button&quot;&gt;&lt;/button&gt;&lt;a class=&quot;navbar-brand&quot; href=&quot;#&quot;&gt;Brand&lt;/a&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;navbar-collapse collapse navbar-responsive-collapse&quot;&gt;\r\n&lt;ul class=&quot;nav navbar-nav&quot;&gt;\r\n	&lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#&quot;&gt;Active&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Link&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;dropdown&quot;&gt;&lt;a class=&quot;dropdown-toggle&quot; data-toggle=&quot;dropdown&quot; href=&quot;#&quot;&gt;Dropdown &lt;/a&gt;\r\n	&lt;ul class=&quot;dropdown-menu&quot;&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li class=&quot;divider&quot;&gt;&amp;nbsp;&lt;/li&gt;\r\n		&lt;li class=&quot;dropdown-header&quot;&gt;Dropdown header&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;One more separated link&lt;/a&gt;&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;form class=&quot;navbar-form navbar-left&quot;&gt;&lt;input class=&quot;form-control col-lg-8&quot; placeholder=&quot;Search&quot; type=&quot;text&quot; /&gt;&amp;nbsp;&lt;/form&gt;\r\n\r\n&lt;ul class=&quot;nav navbar-nav navbar-right&quot;&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Link&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;dropdown&quot;&gt;&lt;a class=&quot;dropdown-toggle&quot; data-toggle=&quot;dropdown&quot; href=&quot;#&quot;&gt;Dropdown &lt;/a&gt;\r\n	&lt;ul class=&quot;dropdown-menu&quot;&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li class=&quot;divider&quot;&gt;&amp;nbsp;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;div class=&quot;navbar navbar-inverse&quot;&gt;\r\n&lt;div class=&quot;navbar-header&quot;&gt;&lt;button class=&quot;navbar-toggle&quot; data-target=&quot;.navbar-inverse-collapse&quot; data-toggle=&quot;collapse&quot; type=&quot;button&quot;&gt;&lt;/button&gt;&lt;a class=&quot;navbar-brand&quot; href=&quot;#&quot;&gt;Brand&lt;/a&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;navbar-collapse collapse navbar-inverse-collapse&quot;&gt;\r\n&lt;ul class=&quot;nav navbar-nav&quot;&gt;\r\n	&lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#&quot;&gt;Active&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Link&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;dropdown&quot;&gt;&lt;a class=&quot;dropdown-toggle&quot; data-toggle=&quot;dropdown&quot; href=&quot;#&quot;&gt;Dropdown &lt;/a&gt;\r\n	&lt;ul class=&quot;dropdown-menu&quot;&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li class=&quot;divider&quot;&gt;&amp;nbsp;&lt;/li&gt;\r\n		&lt;li class=&quot;dropdown-header&quot;&gt;Dropdown header&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;One more separated link&lt;/a&gt;&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;form class=&quot;navbar-form navbar-left&quot;&gt;&lt;input class=&quot;form-control col-lg-8&quot; placeholder=&quot;Search&quot; type=&quot;text&quot; /&gt;&amp;nbsp;&lt;/form&gt;\r\n\r\n&lt;ul class=&quot;nav navbar-nav navbar-right&quot;&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Link&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;dropdown&quot;&gt;&lt;a class=&quot;dropdown-toggle&quot; data-toggle=&quot;dropdown&quot; href=&quot;#&quot;&gt;Dropdown &lt;/a&gt;\r\n	&lt;ul class=&quot;dropdown-menu&quot;&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li class=&quot;divider&quot;&gt;&amp;nbsp;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- /example --&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- Buttons\r\n      ================================================== --&gt;\r\n\r\n&lt;div class=&quot;bs-docs-section&quot;&gt;\r\n&lt;div class=&quot;page-header&quot;&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-12&quot;&gt;\r\n&lt;h1 id=&quot;buttons&quot;&gt;Buttons&lt;/h1&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-6&quot;&gt;\r\n&lt;p class=&quot;bs-component&quot;&gt;&lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Default&lt;/button&gt;&lt;button class=&quot;btn btn-primary&quot; type=&quot;button&quot;&gt;Primary&lt;/button&gt;&lt;button class=&quot;btn btn-success&quot; type=&quot;button&quot;&gt;Success&lt;/button&gt;&lt;button class=&quot;btn btn-info&quot; type=&quot;button&quot;&gt;Info&lt;/button&gt;&lt;button class=&quot;btn btn-warning&quot; type=&quot;button&quot;&gt;Warning&lt;/button&gt;&lt;button class=&quot;btn btn-danger&quot; type=&quot;button&quot;&gt;Danger&lt;/button&gt;&lt;button class=&quot;btn btn-link&quot; type=&quot;button&quot;&gt;Link&lt;/button&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;bs-component&quot;&gt;&lt;button class=&quot;btn btn-default disabled&quot; type=&quot;button&quot;&gt;Default&lt;/button&gt;&lt;button class=&quot;btn btn-primary disabled&quot; type=&quot;button&quot;&gt;Primary&lt;/button&gt;&lt;button class=&quot;btn btn-success disabled&quot; type=&quot;button&quot;&gt;Success&lt;/button&gt;&lt;button class=&quot;btn btn-info disabled&quot; type=&quot;button&quot;&gt;Info&lt;/button&gt;&lt;button class=&quot;btn btn-warning disabled&quot; type=&quot;button&quot;&gt;Warning&lt;/button&gt;&lt;button class=&quot;btn btn-danger disabled&quot; type=&quot;button&quot;&gt;Danger&lt;/button&gt;&lt;button class=&quot;btn btn-link disabled&quot; type=&quot;button&quot;&gt;Link&lt;/button&gt;&lt;/p&gt;\r\n\r\n&lt;div style=&quot;margin-bottom: 15px;&quot;&gt;\r\n&lt;div class=&quot;btn-toolbar bs-component&quot; style=&quot;margin: 0;&quot;&gt;\r\n&lt;div class=&quot;btn-group&quot;&gt;&lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Default&lt;/button&gt;&lt;button class=&quot;btn btn-default dropdown-toggle&quot; data-toggle=&quot;dropdown&quot; type=&quot;button&quot;&gt;&lt;/button&gt;\r\n\r\n&lt;ul class=&quot;dropdown-menu&quot;&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;divider&quot;&gt;&amp;nbsp;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;btn-group&quot;&gt;&lt;button class=&quot;btn btn-primary&quot; type=&quot;button&quot;&gt;Primary&lt;/button&gt;&lt;button class=&quot;btn btn-primary dropdown-toggle&quot; data-toggle=&quot;dropdown&quot; type=&quot;button&quot;&gt;&lt;/button&gt;\r\n\r\n&lt;ul class=&quot;dropdown-menu&quot;&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;divider&quot;&gt;&amp;nbsp;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;btn-group&quot;&gt;&lt;button class=&quot;btn btn-success&quot; type=&quot;button&quot;&gt;Success&lt;/button&gt;&lt;button class=&quot;btn btn-success dropdown-toggle&quot; data-toggle=&quot;dropdown&quot; type=&quot;button&quot;&gt;&lt;/button&gt;\r\n\r\n&lt;ul class=&quot;dropdown-menu&quot;&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;divider&quot;&gt;&amp;nbsp;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;btn-group&quot;&gt;&lt;button class=&quot;btn btn-info&quot; type=&quot;button&quot;&gt;Info&lt;/button&gt;&lt;button class=&quot;btn btn-info dropdown-toggle&quot; data-toggle=&quot;dropdown&quot; type=&quot;button&quot;&gt;&lt;/button&gt;\r\n\r\n&lt;ul class=&quot;dropdown-menu&quot;&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;divider&quot;&gt;&amp;nbsp;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;btn-group&quot;&gt;&lt;button class=&quot;btn btn-warning&quot; type=&quot;button&quot;&gt;Warning&lt;/button&gt;&lt;button class=&quot;btn btn-warning dropdown-toggle&quot; data-toggle=&quot;dropdown&quot; type=&quot;button&quot;&gt;&lt;/button&gt;\r\n\r\n&lt;ul class=&quot;dropdown-menu&quot;&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;divider&quot;&gt;&amp;nbsp;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;p class=&quot;bs-component&quot;&gt;&lt;button class=&quot;btn btn-primary btn-lg&quot; type=&quot;button&quot;&gt;Large button&lt;/button&gt;&lt;button class=&quot;btn btn-primary&quot; type=&quot;button&quot;&gt;Default button&lt;/button&gt;&lt;button class=&quot;btn btn-primary btn-sm&quot; type=&quot;button&quot;&gt;Small button&lt;/button&gt;&lt;button class=&quot;btn btn-primary btn-xs&quot; type=&quot;button&quot;&gt;Mini button&lt;/button&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-6&quot;&gt;\r\n&lt;p class=&quot;bs-component&quot;&gt;&lt;button class=&quot;btn btn-default btn-lg btn-block&quot; type=&quot;button&quot;&gt;Block level button&lt;/button&gt;&lt;/p&gt;\r\n\r\n&lt;div class=&quot;bs-component&quot; style=&quot;margin-bottom: 15px;&quot;&gt;\r\n&lt;div class=&quot;btn-group btn-group-justified&quot;&gt;&lt;a class=&quot;btn btn-default&quot; href=&quot;#&quot;&gt;Left&lt;/a&gt; &lt;a class=&quot;btn btn-default&quot; href=&quot;#&quot;&gt;Middle&lt;/a&gt; &lt;a class=&quot;btn btn-default&quot; href=&quot;#&quot;&gt;Right&lt;/a&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;bs-component&quot; style=&quot;margin-bottom: 15px;&quot;&gt;\r\n&lt;div class=&quot;btn-toolbar&quot;&gt;\r\n&lt;div class=&quot;btn-group&quot;&gt;&lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;1&lt;/button&gt;&lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;2&lt;/button&gt;&lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;3&lt;/button&gt;&lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;4&lt;/button&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;btn-group&quot;&gt;&lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;5&lt;/button&gt;&lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;6&lt;/button&gt;&lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;7&lt;/button&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;btn-group&quot;&gt;&lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;8&lt;/button&gt;\r\n\r\n&lt;div class=&quot;btn-group&quot;&gt;&lt;button class=&quot;btn btn-default dropdown-toggle&quot; data-toggle=&quot;dropdown&quot; type=&quot;button&quot;&gt;Dropdown&lt;/button&gt;\r\n\r\n&lt;ul class=&quot;dropdown-menu&quot;&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Dropdown link&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Dropdown link&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Dropdown link&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;div class=&quot;btn-group-vertical&quot;&gt;&lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Button&lt;/button&gt;&lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Button&lt;/button&gt;&lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Button&lt;/button&gt;&lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Button&lt;/button&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- Typography\r\n      ================================================== --&gt;\r\n\r\n&lt;div class=&quot;bs-docs-section&quot;&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-12&quot;&gt;\r\n&lt;div class=&quot;page-header&quot;&gt;\r\n&lt;h1 id=&quot;type&quot;&gt;Typography&lt;/h1&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- Headings --&gt;\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-4&quot;&gt;\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;h1&gt;Heading 1&lt;/h1&gt;\r\n\r\n&lt;h2&gt;Heading 2&lt;/h2&gt;\r\n\r\n&lt;h3&gt;Heading 3&lt;/h3&gt;\r\n\r\n&lt;h4&gt;Heading 4&lt;/h4&gt;\r\n\r\n&lt;h5&gt;Heading 5&lt;/h5&gt;\r\n\r\n&lt;h6&gt;Heading 6&lt;/h6&gt;\r\n\r\n&lt;p class=&quot;lead&quot;&gt;Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-4&quot;&gt;\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;h2&gt;Example body text&lt;/h2&gt;\r\n\r\n&lt;p&gt;Nullam quis risus eget &lt;a href=&quot;#&quot;&gt;urna mollis ornare&lt;/a&gt; vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh ultricies vehicula.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;small&gt;This line of text is meant to be treated as fine print.&lt;/small&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;The following snippet of text is &lt;strong&gt;rendered as bold text&lt;/strong&gt;.&lt;/p&gt;\r\n\r\n&lt;p&gt;The following snippet of text is &lt;em&gt;rendered as italicized text&lt;/em&gt;.&lt;/p&gt;\r\n\r\n&lt;p&gt;An abbreviation of the word attribute is &lt;abbr title=&quot;attribute&quot;&gt;attr&lt;/abbr&gt;.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-4&quot;&gt;\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;h2&gt;Emphasis classes&lt;/h2&gt;\r\n\r\n&lt;p class=&quot;text-muted&quot;&gt;Fusce dapibus, tellus ac cursus commodo, tortor mauris nibh.&lt;/p&gt;\r\n\r\n&lt;p class=&quot;text-primary&quot;&gt;Nullam id dolor id nibh ultricies vehicula ut id elit.&lt;/p&gt;\r\n\r\n&lt;p class=&quot;text-warning&quot;&gt;Etiam porta sem malesuada magna mollis euismod.&lt;/p&gt;\r\n\r\n&lt;p class=&quot;text-danger&quot;&gt;Donec ullamcorper nulla non metus auctor fringilla.&lt;/p&gt;\r\n\r\n&lt;p class=&quot;text-success&quot;&gt;Duis mollis, est non commodo luctus, nisi erat porttitor ligula.&lt;/p&gt;\r\n\r\n&lt;p class=&quot;text-info&quot;&gt;Maecenas sed diam eget risus varius blandit sit amet non magna.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- Blockquotes --&gt;\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-12&quot;&gt;\r\n&lt;h2 id=&quot;type-blockquotes&quot;&gt;Blockquotes&lt;/h2&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-6&quot;&gt;\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;blockquote&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.&lt;/p&gt;\r\n&lt;small&gt;Someone famous in &lt;cite title=&quot;Source Title&quot;&gt;Source Title&lt;/cite&gt;&lt;/small&gt;&lt;/blockquote&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-6&quot;&gt;\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;blockquote class=&quot;pull-right&quot;&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.&lt;/p&gt;\r\n&lt;small&gt;Someone famous in &lt;cite title=&quot;Source Title&quot;&gt;Source Title&lt;/cite&gt;&lt;/small&gt;&lt;/blockquote&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- Tables\r\n      ================================================== --&gt;\r\n\r\n&lt;div class=&quot;bs-docs-section&quot;&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-12&quot;&gt;\r\n&lt;div class=&quot;page-header&quot;&gt;\r\n&lt;h1 id=&quot;tables&quot;&gt;Tables&lt;/h1&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;table class=&quot;table table-striped table-hover &quot;&gt;\r\n	&lt;thead&gt;\r\n		&lt;tr&gt;\r\n			&lt;th&gt;#&lt;/th&gt;\r\n			&lt;th&gt;Column heading&lt;/th&gt;\r\n			&lt;th&gt;Column heading&lt;/th&gt;\r\n			&lt;th&gt;Column heading&lt;/th&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/thead&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;1&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;2&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr class=&quot;info&quot;&gt;\r\n			&lt;td&gt;3&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr class=&quot;success&quot;&gt;\r\n			&lt;td&gt;4&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr class=&quot;danger&quot;&gt;\r\n			&lt;td&gt;5&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr class=&quot;warning&quot;&gt;\r\n			&lt;td&gt;6&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr class=&quot;active&quot;&gt;\r\n			&lt;td&gt;7&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;/div&gt;\r\n&lt;!-- /example --&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- Forms\r\n      ================================================== --&gt;\r\n\r\n&lt;div class=&quot;bs-docs-section&quot;&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-12&quot;&gt;\r\n&lt;div class=&quot;page-header&quot;&gt;\r\n&lt;h1 id=&quot;forms&quot;&gt;Forms&lt;/h1&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-6&quot;&gt;\r\n&lt;div class=&quot;well bs-component&quot;&gt;\r\n&lt;form class=&quot;form-horizontal&quot;&gt;\r\n&lt;fieldset&gt;&lt;legend&gt;Legend&lt;/legend&gt;\r\n\r\n&lt;div class=&quot;form-group&quot;&gt;&lt;label class=&quot;col-lg-2 control-label&quot; for=&quot;inputEmail&quot;&gt;Email&lt;/label&gt;\r\n\r\n&lt;div class=&quot;col-lg-10&quot;&gt;&lt;input class=&quot;form-control&quot; id=&quot;inputEmail&quot; placeholder=&quot;Email&quot; type=&quot;text&quot; /&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;form-group&quot;&gt;&lt;label class=&quot;col-lg-2 control-label&quot; for=&quot;inputPassword&quot;&gt;Password&lt;/label&gt;\r\n\r\n&lt;div class=&quot;col-lg-10&quot;&gt;&lt;input class=&quot;form-control&quot; id=&quot;inputPassword&quot; placeholder=&quot;Password&quot; type=&quot;password&quot; /&gt;\r\n&lt;div class=&quot;checkbox&quot;&gt;&lt;label&gt;&lt;input type=&quot;checkbox&quot; /&gt; Checkbox &lt;/label&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;form-group&quot;&gt;&lt;label class=&quot;col-lg-2 control-label&quot; for=&quot;textArea&quot;&gt;Textarea&lt;/label&gt;\r\n\r\n&lt;div class=&quot;col-lg-10&quot;&gt;&lt;textarea class=&quot;form-control&quot; id=&quot;textArea&quot; rows=&quot;3&quot;&gt;&lt;/textarea&gt;&lt;span class=&quot;help-block&quot;&gt;A longer block of help text that breaks onto a new line and may extend beyond one line.&lt;/span&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;form-group&quot;&gt;&lt;label class=&quot;col-lg-2 control-label&quot;&gt;Radios&lt;/label&gt;\r\n\r\n&lt;div class=&quot;col-lg-10&quot;&gt;\r\n&lt;div class=&quot;radio&quot;&gt;&lt;label&gt;&lt;input checked=&quot;checked&quot; id=&quot;optionsRadios1&quot; name=&quot;optionsRadios&quot; type=&quot;radio&quot; value=&quot;option1&quot; /&gt; Option one is this &lt;/label&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;radio&quot;&gt;&lt;label&gt;&lt;input id=&quot;optionsRadios2&quot; name=&quot;optionsRadios&quot; type=&quot;radio&quot; value=&quot;option2&quot; /&gt; Option two can be something else &lt;/label&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;form-group&quot;&gt;&lt;label class=&quot;col-lg-2 control-label&quot; for=&quot;select&quot;&gt;Selects&lt;/label&gt;\r\n\r\n&lt;div class=&quot;col-lg-10&quot;&gt;&lt;select class=&quot;form-control&quot; id=&quot;select&quot;&gt;&lt;option&gt;1&lt;/option&gt;&lt;option&gt;2&lt;/option&gt;&lt;option&gt;3&lt;/option&gt;&lt;option&gt;4&lt;/option&gt;&lt;option&gt;5&lt;/option&gt; &lt;/select&gt;&lt;br /&gt;\r\n&lt;select class=&quot;form-control&quot; multiple=&quot;multiple&quot;&gt;&lt;option&gt;1&lt;/option&gt;&lt;option&gt;2&lt;/option&gt;&lt;option&gt;3&lt;/option&gt;&lt;option&gt;4&lt;/option&gt;&lt;option&gt;5&lt;/option&gt; &lt;/select&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;form-group&quot;&gt;\r\n&lt;div class=&quot;col-lg-10 col-lg-offset-2&quot;&gt;&lt;button class=&quot;btn btn-default&quot;&gt;Cancel&lt;/button&gt;&lt;button class=&quot;btn btn-primary&quot; type=&quot;submit&quot;&gt;Submit&lt;/button&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/fieldset&gt;\r\n&lt;/form&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-4 col-lg-offset-1&quot;&gt;\r\n&lt;form class=&quot;bs-component&quot;&gt;\r\n&lt;div class=&quot;form-group&quot;&gt;&lt;label class=&quot;control-label&quot; for=&quot;focusedInput&quot;&gt;Focused input&lt;/label&gt; &lt;input class=&quot;form-control&quot; id=&quot;focusedInput&quot; type=&quot;text&quot; value=&quot;This is focused...&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;form-group&quot;&gt;&lt;label class=&quot;control-label&quot; for=&quot;disabledInput&quot;&gt;Disabled input&lt;/label&gt; &lt;input class=&quot;form-control&quot; disabled=&quot;disabled&quot; id=&quot;disabledInput&quot; placeholder=&quot;Disabled input here...&quot; type=&quot;text&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;form-group has-warning&quot;&gt;&lt;label class=&quot;control-label&quot; for=&quot;inputWarning&quot;&gt;Input warning&lt;/label&gt; &lt;input class=&quot;form-control&quot; id=&quot;inputWarning&quot; type=&quot;text&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;form-group has-error&quot;&gt;&lt;label class=&quot;control-label&quot; for=&quot;inputError&quot;&gt;Input error&lt;/label&gt; &lt;input class=&quot;form-control&quot; id=&quot;inputError&quot; type=&quot;text&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;form-group has-success&quot;&gt;&lt;label class=&quot;control-label&quot; for=&quot;inputSuccess&quot;&gt;Input success&lt;/label&gt; &lt;input class=&quot;form-control&quot; id=&quot;inputSuccess&quot; type=&quot;text&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;form-group&quot;&gt;&lt;label class=&quot;control-label&quot; for=&quot;inputLarge&quot;&gt;Large input&lt;/label&gt; &lt;input class=&quot;form-control input-lg&quot; id=&quot;inputLarge&quot; type=&quot;text&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;form-group&quot;&gt;&lt;label class=&quot;control-label&quot; for=&quot;inputDefault&quot;&gt;Default input&lt;/label&gt; &lt;input class=&quot;form-control&quot; id=&quot;inputDefault&quot; type=&quot;text&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;form-group&quot;&gt;&lt;label class=&quot;control-label&quot; for=&quot;inputSmall&quot;&gt;Small input&lt;/label&gt; &lt;input class=&quot;form-control input-sm&quot; id=&quot;inputSmall&quot; type=&quot;text&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;form-group&quot;&gt;&lt;label class=&quot;control-label&quot;&gt;Input addons&lt;/label&gt;\r\n\r\n&lt;div class=&quot;input-group&quot;&gt;&lt;span class=&quot;input-group-addon&quot;&gt;$&lt;/span&gt; &lt;input class=&quot;form-control&quot; type=&quot;text&quot; /&gt; &lt;span class=&quot;input-group-btn&quot;&gt;&lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Button&lt;/button&gt; &lt;/span&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/form&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- Navs\r\n      ================================================== --&gt;\r\n\r\n&lt;div class=&quot;bs-docs-section&quot;&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-12&quot;&gt;\r\n&lt;div class=&quot;page-header&quot;&gt;\r\n&lt;h1 id=&quot;nav&quot;&gt;Navs&lt;/h1&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-4&quot;&gt;\r\n&lt;h2 id=&quot;nav-tabs&quot;&gt;Tabs&lt;/h2&gt;\r\n\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;ul class=&quot;nav nav-tabs&quot; style=&quot;margin-bottom: 15px;&quot;&gt;\r\n	&lt;li class=&quot;active&quot;&gt;&lt;a data-toggle=&quot;tab&quot; href=&quot;#home&quot;&gt;Home&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a data-toggle=&quot;tab&quot; href=&quot;#profile&quot;&gt;Profile&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;disabled&quot;&gt;&lt;a&gt;Disabled&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;dropdown&quot;&gt;&lt;a class=&quot;dropdown-toggle&quot; data-toggle=&quot;dropdown&quot; href=&quot;#&quot;&gt;Dropdown &lt;/a&gt;\r\n	&lt;ul class=&quot;dropdown-menu&quot;&gt;\r\n		&lt;li&gt;&lt;a data-toggle=&quot;tab&quot; href=&quot;#dropdown1&quot;&gt;Action&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li class=&quot;divider&quot;&gt;&amp;nbsp;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a data-toggle=&quot;tab&quot; href=&quot;#dropdown2&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;div class=&quot;tab-content&quot; id=&quot;myTabContent&quot;&gt;\r\n&lt;div class=&quot;tab-pane fade active in&quot; id=&quot;home&quot;&gt;\r\n&lt;p&gt;Raw denim you probably haven''t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;tab-pane fade&quot; id=&quot;profile&quot;&gt;\r\n&lt;p&gt;Food truck fixie locavore, accusamus mcsweeney''s marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit.&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;tab-pane fade&quot; id=&quot;dropdown1&quot;&gt;\r\n&lt;p&gt;Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney''s organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork.&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;tab-pane fade&quot; id=&quot;dropdown2&quot;&gt;\r\n&lt;p&gt;Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-4&quot;&gt;\r\n&lt;h2 id=&quot;nav-pills&quot;&gt;Pills&lt;/h2&gt;\r\n\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;ul class=&quot;nav nav-pills&quot;&gt;\r\n	&lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#&quot;&gt;Home&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Profile&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;disabled&quot;&gt;&lt;a href=&quot;#&quot;&gt;Disabled&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;dropdown&quot;&gt;&lt;a class=&quot;dropdown-toggle&quot; data-toggle=&quot;dropdown&quot; href=&quot;#&quot;&gt;Dropdown &lt;/a&gt;\r\n	&lt;ul class=&quot;dropdown-menu&quot;&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li class=&quot;divider&quot;&gt;&amp;nbsp;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n&amp;nbsp;\r\n\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;ul class=&quot;nav nav-pills nav-stacked&quot; style=&quot;max-width: 300px;&quot;&gt;\r\n	&lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#&quot;&gt;Home&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Profile&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;disabled&quot;&gt;&lt;a href=&quot;#&quot;&gt;Disabled&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;dropdown&quot;&gt;&lt;a class=&quot;dropdown-toggle&quot; data-toggle=&quot;dropdown&quot; href=&quot;#&quot;&gt;Dropdown &lt;/a&gt;\r\n	&lt;ul class=&quot;dropdown-menu&quot;&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li class=&quot;divider&quot;&gt;&amp;nbsp;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-4&quot;&gt;\r\n&lt;h2 id=&quot;nav-breadcrumbs&quot;&gt;Breadcrumbs&lt;/h2&gt;\r\n\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;ul class=&quot;breadcrumb&quot;&gt;\r\n	&lt;li class=&quot;active&quot;&gt;Home&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;ul class=&quot;breadcrumb&quot;&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Home&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;active&quot;&gt;Library&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;ul class=&quot;breadcrumb&quot; style=&quot;margin-bottom: 5px;&quot;&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Home&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Library&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;active&quot;&gt;Data&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-4&quot;&gt;\r\n&lt;h2 id=&quot;pagination&quot;&gt;Pagination&lt;/h2&gt;\r\n\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;ul class=&quot;pagination&quot;&gt;\r\n	&lt;li class=&quot;disabled&quot;&gt;&lt;a href=&quot;#&quot;&gt;«&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#&quot;&gt;1&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;2&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;3&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;4&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;5&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;»&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;ul class=&quot;pagination pagination-lg&quot;&gt;\r\n	&lt;li class=&quot;disabled&quot;&gt;&lt;a href=&quot;#&quot;&gt;«&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#&quot;&gt;1&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;2&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;3&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;»&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;ul class=&quot;pagination pagination-sm&quot;&gt;\r\n	&lt;li class=&quot;disabled&quot;&gt;&lt;a href=&quot;#&quot;&gt;«&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#&quot;&gt;1&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;2&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;3&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;4&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;5&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;»&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-4&quot;&gt;\r\n&lt;h2 id=&quot;pager&quot;&gt;Pager&lt;/h2&gt;\r\n\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;ul class=&quot;pager&quot;&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Previous&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Next&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;ul class=&quot;pager&quot;&gt;\r\n	&lt;li class=&quot;previous disabled&quot;&gt;&lt;a href=&quot;#&quot;&gt;← Older&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;next&quot;&gt;&lt;a href=&quot;#&quot;&gt;Newer →&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-4&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- Indicators\r\n      ================================================== --&gt;\r\n\r\n&lt;div class=&quot;bs-docs-section&quot;&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-12&quot;&gt;\r\n&lt;div class=&quot;page-header&quot;&gt;\r\n&lt;h1 id=&quot;indicators&quot;&gt;Indicators&lt;/h1&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-12&quot;&gt;\r\n&lt;h2&gt;Alerts&lt;/h2&gt;\r\n\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;div class=&quot;alert alert-dismissable alert-warning&quot;&gt;&lt;button class=&quot;close&quot; data-dismiss=&quot;alert&quot; type=&quot;button&quot;&gt;×&lt;/button&gt;\r\n\r\n&lt;h4&gt;Warning!&lt;/h4&gt;\r\n\r\n&lt;p&gt;Best check yo self, you''re not looking too good. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, &lt;a class=&quot;alert-link&quot; href=&quot;#&quot;&gt;vel scelerisque nisl consectetur et&lt;/a&gt;.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-4&quot;&gt;\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;div class=&quot;alert alert-dismissable alert-danger&quot;&gt;&lt;button class=&quot;close&quot; data-dismiss=&quot;alert&quot; type=&quot;button&quot;&gt;×&lt;/button&gt;&lt;strong&gt;Oh snap!&lt;/strong&gt; &lt;a class=&quot;alert-link&quot; href=&quot;#&quot;&gt;Change a few things up&lt;/a&gt; and try submitting again.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-4&quot;&gt;\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;div class=&quot;alert alert-dismissable alert-success&quot;&gt;&lt;button class=&quot;close&quot; data-dismiss=&quot;alert&quot; type=&quot;button&quot;&gt;×&lt;/button&gt;&lt;strong&gt;Well done!&lt;/strong&gt; You successfully read &lt;a class=&quot;alert-link&quot; href=&quot;#&quot;&gt;this important alert message&lt;/a&gt;.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-4&quot;&gt;\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;div class=&quot;alert alert-dismissable alert-info&quot;&gt;&lt;button class=&quot;close&quot; data-dismiss=&quot;alert&quot; type=&quot;button&quot;&gt;×&lt;/button&gt;&lt;strong&gt;Heads up!&lt;/strong&gt; This &lt;a class=&quot;alert-link&quot; href=&quot;#&quot;&gt;alert needs your attention&lt;/a&gt;, but it''s not super important.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-4&quot;&gt;\r\n&lt;h2&gt;Labels&lt;/h2&gt;\r\n\r\n&lt;div class=&quot;bs-component&quot; style=&quot;margin-bottom: 40px;&quot;&gt;&lt;span class=&quot;label label-default&quot;&gt;Default&lt;/span&gt; &lt;span class=&quot;label label-primary&quot;&gt;Primary&lt;/span&gt; &lt;span class=&quot;label label-success&quot;&gt;Success&lt;/span&gt; &lt;span class=&quot;label label-warning&quot;&gt;Warning&lt;/span&gt; &lt;span class=&quot;label label-danger&quot;&gt;Danger&lt;/span&gt; &lt;span class=&quot;label label-info&quot;&gt;Info&lt;/span&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-4&quot;&gt;\r\n&lt;h2&gt;Badges&lt;/h2&gt;\r\n\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;ul class=&quot;nav nav-pills&quot;&gt;\r\n	&lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#&quot;&gt;Home &lt;span class=&quot;badge&quot;&gt;42&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Profile &lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Messages &lt;span class=&quot;badge&quot;&gt;3&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- Progress bars\r\n      ================================================== --&gt;\r\n\r\n&lt;div class=&quot;bs-docs-section&quot;&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-12&quot;&gt;\r\n&lt;div class=&quot;page-header&quot;&gt;\r\n&lt;h1 id=&quot;progress&quot;&gt;Progress bars&lt;/h1&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;h3 id=&quot;progress-basic&quot;&gt;Basic&lt;/h3&gt;\r\n\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;div class=&quot;progress&quot;&gt;\r\n&lt;div class=&quot;progress-bar&quot; style=&quot;width: 60%;&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;h3 id=&quot;progress-alternatives&quot;&gt;Contextual alternatives&lt;/h3&gt;\r\n\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;div class=&quot;progress&quot;&gt;\r\n&lt;div class=&quot;progress-bar progress-bar-info&quot; style=&quot;width: 20%&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;progress&quot;&gt;\r\n&lt;div class=&quot;progress-bar progress-bar-success&quot; style=&quot;width: 40%&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;progress&quot;&gt;\r\n&lt;div class=&quot;progress-bar progress-bar-warning&quot; style=&quot;width: 60%&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;progress&quot;&gt;\r\n&lt;div class=&quot;progress-bar progress-bar-danger&quot; style=&quot;width: 80%&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;h3 id=&quot;progress-striped&quot;&gt;Striped&lt;/h3&gt;\r\n\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;div class=&quot;progress progress-striped&quot;&gt;\r\n&lt;div class=&quot;progress-bar progress-bar-info&quot; style=&quot;width: 20%&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;progress progress-striped&quot;&gt;\r\n&lt;div class=&quot;progress-bar progress-bar-success&quot; style=&quot;width: 40%&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;progress progress-striped&quot;&gt;\r\n&lt;div class=&quot;progress-bar progress-bar-warning&quot; style=&quot;width: 60%&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;progress progress-striped&quot;&gt;\r\n&lt;div class=&quot;progress-bar progress-bar-danger&quot; style=&quot;width: 80%&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;h3 id=&quot;progress-animated&quot;&gt;Animated&lt;/h3&gt;\r\n\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;div class=&quot;progress progress-striped active&quot;&gt;\r\n&lt;div class=&quot;progress-bar&quot; style=&quot;width: 45%&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;h3 id=&quot;progress-stacked&quot;&gt;Stacked&lt;/h3&gt;\r\n\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;div class=&quot;progress&quot;&gt;\r\n&lt;div class=&quot;progress-bar progress-bar-success&quot; style=&quot;width: 35%&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;progress-bar progress-bar-warning&quot; style=&quot;width: 20%&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;progress-bar progress-bar-danger&quot; style=&quot;width: 10%&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- Containers\r\n      ================================================== --&gt;\r\n\r\n&lt;div class=&quot;bs-docs-section&quot;&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-12&quot;&gt;\r\n&lt;div class=&quot;page-header&quot;&gt;\r\n&lt;h1 id=&quot;container&quot;&gt;Containers&lt;/h1&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;div class=&quot;jumbotron&quot;&gt;\r\n&lt;h1&gt;Jumbotron&lt;/h1&gt;\r\n\r\n&lt;p&gt;This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;a class=&quot;btn btn-primary btn-lg&quot;&gt;Learn more&lt;/a&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-12&quot;&gt;\r\n&lt;h2&gt;List groups&lt;/h2&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-4&quot;&gt;\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;ul class=&quot;list-group&quot;&gt;\r\n	&lt;li class=&quot;list-group-item&quot;&gt;&lt;span class=&quot;badge&quot;&gt;14&lt;/span&gt; Cras justo odio&lt;/li&gt;\r\n	&lt;li class=&quot;list-group-item&quot;&gt;&lt;span class=&quot;badge&quot;&gt;2&lt;/span&gt; Dapibus ac facilisis in&lt;/li&gt;\r\n	&lt;li class=&quot;list-group-item&quot;&gt;&lt;span class=&quot;badge&quot;&gt;1&lt;/span&gt; Morbi leo risus&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-4&quot;&gt;\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;div class=&quot;list-group&quot;&gt;&lt;a class=&quot;list-group-item active&quot; href=&quot;#&quot;&gt;Cras justo odio &lt;/a&gt; &lt;a class=&quot;list-group-item&quot; href=&quot;#&quot;&gt;Dapibus ac facilisis in &lt;/a&gt; &lt;a class=&quot;list-group-item&quot; href=&quot;#&quot;&gt;Morbi leo risus &lt;/a&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-4&quot;&gt;\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;div class=&quot;list-group&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n');
INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`) VALUES
(7, 2, 'الخطأ المطبعي', '&lt;meta charset=&quot;utf-8&quot; /&gt;\r\n&lt;title&gt;&lt;/title&gt;\r\n&lt;meta content=&quot;width=device-width, initial-scale=1&quot; name=&quot;viewport&quot; /&gt;\r\n&lt;link href=&quot;./bootstrap.css&quot; media=&quot;screen&quot; rel=&quot;stylesheet&quot; /&gt;\r\n&lt;link href=&quot;../assets/css/bootswatch.min.css&quot; rel=&quot;stylesheet&quot; /&gt;\r\n&lt;link href=&quot;http://localhost/opencart/lexus_foxs_store/catalog/view/theme/lexus_foxs_store/stylesheet/bootstrap.css&quot; rel=&quot;stylesheet&quot; /&gt;&lt;!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries --&gt;&lt;!--[if lt IE 9]&gt;\r\n      &lt;script src=&quot;../bower_components/html5shiv/dist/html5shiv.js&quot;&gt;&lt;/script&gt;\r\n      &lt;script src=&quot;../bower_components/respond/dest/respond.min.js&quot;&gt;&lt;/script&gt;\r\n    &lt;![endif]--&gt;&lt;script&gt;\r\n\r\n     var _gaq = _gaq || [];\r\n      _gaq.push([''_setAccount'', ''UA-23019901-1'']);\r\n      _gaq.push([''_setDomainName'', &quot;bootswatch.com&quot;]);\r\n        _gaq.push([''_setAllowLinker'', true]);\r\n      _gaq.push([''_trackPageview'']);\r\n\r\n     (function() {\r\n       var ga = document.createElement(''script''); ga.type = ''text/javascript''; ga.async = true;\r\n       ga.src = (''https:'' == document.location.protocol ? ''https://ssl'' : ''http://www'') + ''.google-analytics.com/ga.js'';\r\n       var s = document.getElementsByTagName(''script'')[0]; s.parentNode.insertBefore(ga, s);\r\n     })();\r\n\r\n    &lt;/script&gt;\r\n&lt;div class=&quot;navbar navbar-default navbar-fixed-top&quot;&gt;\r\n&lt;div class=&quot;container&quot;&gt;\r\n&lt;div class=&quot;navbar-header&quot;&gt;&lt;a class=&quot;navbar-brand&quot; href=&quot;../&quot;&gt;Bootswatch&lt;/a&gt;&lt;button class=&quot;navbar-toggle&quot; data-target=&quot;#navbar-main&quot; data-toggle=&quot;collapse&quot; type=&quot;button&quot;&gt;&lt;/button&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;navbar-collapse collapse&quot; id=&quot;navbar-main&quot;&gt;\r\n&lt;ul class=&quot;nav navbar-nav&quot;&gt;\r\n	&lt;li class=&quot;dropdown&quot;&gt;&lt;a class=&quot;dropdown-toggle&quot; data-toggle=&quot;dropdown&quot; href=&quot;#&quot; id=&quot;themes&quot;&gt;Themes &lt;/a&gt;\r\n\r\n	&lt;ul aria-labelledby=&quot;themes&quot; class=&quot;dropdown-menu&quot;&gt;\r\n		&lt;li&gt;&lt;a href=&quot;../default/&quot;&gt;Default&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li class=&quot;divider&quot;&gt;&amp;nbsp;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;../amelia/&quot;&gt;Amelia&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;../cerulean/&quot;&gt;Cerulean&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;../cosmo/&quot;&gt;Cosmo&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;../cyborg/&quot;&gt;Cyborg&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;../darkly/&quot;&gt;Darkly&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;../flatly/&quot;&gt;Flatly&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;../journal/&quot;&gt;Journal&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;../lumen/&quot;&gt;Lumen&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;../readable/&quot;&gt;Readable&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;../simplex/&quot;&gt;Simplex&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;../slate/&quot;&gt;Slate&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;../spacelab/&quot;&gt;Spacelab&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;../superhero/&quot;&gt;Superhero&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;../united/&quot;&gt;United&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;../yeti/&quot;&gt;Yeti&lt;/a&gt;&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;../help/&quot;&gt;Help&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;http://news.bootswatch.com&quot;&gt;Blog&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;dropdown&quot;&gt;&lt;a class=&quot;dropdown-toggle&quot; data-toggle=&quot;dropdown&quot; href=&quot;#&quot; id=&quot;download&quot;&gt;Download &lt;/a&gt;\r\n	&lt;ul aria-labelledby=&quot;download&quot; class=&quot;dropdown-menu&quot;&gt;\r\n		&lt;li&gt;&lt;a href=&quot;./bootstrap.min.css&quot;&gt;bootstrap.min.css&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;./bootstrap.css&quot;&gt;bootstrap.css&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li class=&quot;divider&quot;&gt;&amp;nbsp;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;./variables.less&quot;&gt;variables.less&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;./bootswatch.less&quot;&gt;bootswatch.less&lt;/a&gt;&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;ul class=&quot;nav navbar-nav navbar-right&quot;&gt;\r\n	&lt;li&gt;&lt;a href=&quot;http://builtwithbootstrap.com/&quot; target=&quot;_blank&quot;&gt;Built With Bootstrap&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;https://wrapbootstrap.com/?ref=bsw&quot; target=&quot;_blank&quot;&gt;WrapBootstrap&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;container&quot;&gt;\r\n&lt;div class=&quot;page-header&quot; id=&quot;banner&quot;&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-6&quot;&gt;\r\n&lt;h1&gt;Cerulean&lt;/h1&gt;\r\n\r\n&lt;p class=&quot;lead&quot;&gt;A calm blue sky&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-6&quot; style=&quot;padding: 15px 15px 0 15px;&quot;&gt;\r\n&lt;div class=&quot;well sponsor&quot;&gt;&lt;a href=&quot;http://srv.buysellads.com/direct/click/track/yes/x/G6NDC27ICWAI627UCWALYK7UCKBILKJMCT7I5&quot; onclick=&quot;_gaq.push([''_trackEvent'', ''banner'', ''click'', ''treehouse'']);&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;&lt;span style=&quot;float: left; margin-right: 15px;&quot;&gt;&lt;img height=&quot;135&quot; onload=&quot;_gaq.push([''_trackEvent'', ''banner'', ''impression'', ''treehouse'']);&quot; src=&quot;http://srv.buysellads.com/direct/image/track/yes/x/G6NDC27ICWAI627UCWALYK7UCKBILKJMCT7I5&quot; width=&quot;175&quot; /&gt; &lt;/span&gt; &lt;/a&gt; &lt;a href=&quot;http://srv.buysellads.com/direct/click/track/yes/x/G6NDC27ICWAI627UCWALYK7UCKBILKJMCT7I5&quot; onclick=&quot;_gaq.push([''_trackEvent'', ''banner'', ''click'', ''treehouse'']);&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt; &lt;/a&gt;\r\n\r\n&lt;h4 style=&quot;margin-bottom: 0.4em;&quot;&gt;&lt;a href=&quot;http://srv.buysellads.com/direct/click/track/yes/x/G6NDC27ICWAI627UCWALYK7UCKBILKJMCT7I5&quot; onclick=&quot;_gaq.push([''_trackEvent'', ''banner'', ''click'', ''treehouse'']);&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;Treehouse&lt;/a&gt;&lt;/h4&gt;\r\n&lt;a href=&quot;http://srv.buysellads.com/direct/click/track/yes/x/G6NDC27ICWAI627UCWALYK7UCKBILKJMCT7I5&quot; onclick=&quot;_gaq.push([''_trackEvent'', ''banner'', ''click'', ''treehouse'']);&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt; &lt;/a&gt;\r\n\r\n&lt;div class=&quot;clearfix&quot;&gt;\r\n&lt;p&gt;&lt;a href=&quot;http://srv.buysellads.com/direct/click/track/yes/x/G6NDC27ICWAI627UCWALYK7UCKBILKJMCT7I5&quot; onclick=&quot;_gaq.push([''_trackEvent'', ''banner'', ''click'', ''treehouse'']);&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;Learn Web Design, Coding, Mobile App Development &amp;amp; More.&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;http://srv.buysellads.com/direct/click/track/yes/x/G6NDC27ICWAI627UCWALYK7UCKBILKJMCT7I5&quot; onclick=&quot;_gaq.push([''_trackEvent'', ''banner'', ''click'', ''treehouse'']);&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;Start Learning for Free!&lt;/a&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;a href=&quot;http://srv.buysellads.com/direct/click/track/yes/x/G6NDC27ICWAI627UCWALYK7UCKBILKJMCT7I5&quot; onclick=&quot;_gaq.push([''_trackEvent'', ''banner'', ''click'', ''treehouse'']);&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt; &lt;/a&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- Navbar\r\n      ================================================== --&gt;\r\n\r\n&lt;div class=&quot;bs-docs-section clearfix&quot;&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-12&quot;&gt;\r\n&lt;div class=&quot;page-header&quot;&gt;\r\n&lt;h1 id=&quot;navbar&quot;&gt;Navbar&lt;/h1&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;div class=&quot;navbar navbar-default&quot;&gt;\r\n&lt;div class=&quot;navbar-header&quot;&gt;&lt;button class=&quot;navbar-toggle&quot; data-target=&quot;.navbar-responsive-collapse&quot; data-toggle=&quot;collapse&quot; type=&quot;button&quot;&gt;&lt;/button&gt;&lt;a class=&quot;navbar-brand&quot; href=&quot;#&quot;&gt;Brand&lt;/a&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;navbar-collapse collapse navbar-responsive-collapse&quot;&gt;\r\n&lt;ul class=&quot;nav navbar-nav&quot;&gt;\r\n	&lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#&quot;&gt;Active&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Link&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;dropdown&quot;&gt;&lt;a class=&quot;dropdown-toggle&quot; data-toggle=&quot;dropdown&quot; href=&quot;#&quot;&gt;Dropdown &lt;/a&gt;\r\n	&lt;ul class=&quot;dropdown-menu&quot;&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li class=&quot;divider&quot;&gt;&amp;nbsp;&lt;/li&gt;\r\n		&lt;li class=&quot;dropdown-header&quot;&gt;Dropdown header&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;One more separated link&lt;/a&gt;&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;form class=&quot;navbar-form navbar-left&quot;&gt;&lt;input class=&quot;form-control col-lg-8&quot; placeholder=&quot;Search&quot; type=&quot;text&quot; /&gt;&amp;nbsp;&lt;/form&gt;\r\n\r\n&lt;ul class=&quot;nav navbar-nav navbar-right&quot;&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Link&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;dropdown&quot;&gt;&lt;a class=&quot;dropdown-toggle&quot; data-toggle=&quot;dropdown&quot; href=&quot;#&quot;&gt;Dropdown &lt;/a&gt;\r\n	&lt;ul class=&quot;dropdown-menu&quot;&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li class=&quot;divider&quot;&gt;&amp;nbsp;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;div class=&quot;navbar navbar-inverse&quot;&gt;\r\n&lt;div class=&quot;navbar-header&quot;&gt;&lt;button class=&quot;navbar-toggle&quot; data-target=&quot;.navbar-inverse-collapse&quot; data-toggle=&quot;collapse&quot; type=&quot;button&quot;&gt;&lt;/button&gt;&lt;a class=&quot;navbar-brand&quot; href=&quot;#&quot;&gt;Brand&lt;/a&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;navbar-collapse collapse navbar-inverse-collapse&quot;&gt;\r\n&lt;ul class=&quot;nav navbar-nav&quot;&gt;\r\n	&lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#&quot;&gt;Active&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Link&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;dropdown&quot;&gt;&lt;a class=&quot;dropdown-toggle&quot; data-toggle=&quot;dropdown&quot; href=&quot;#&quot;&gt;Dropdown &lt;/a&gt;\r\n	&lt;ul class=&quot;dropdown-menu&quot;&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li class=&quot;divider&quot;&gt;&amp;nbsp;&lt;/li&gt;\r\n		&lt;li class=&quot;dropdown-header&quot;&gt;Dropdown header&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;One more separated link&lt;/a&gt;&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;form class=&quot;navbar-form navbar-left&quot;&gt;&lt;input class=&quot;form-control col-lg-8&quot; placeholder=&quot;Search&quot; type=&quot;text&quot; /&gt;&amp;nbsp;&lt;/form&gt;\r\n\r\n&lt;ul class=&quot;nav navbar-nav navbar-right&quot;&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Link&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;dropdown&quot;&gt;&lt;a class=&quot;dropdown-toggle&quot; data-toggle=&quot;dropdown&quot; href=&quot;#&quot;&gt;Dropdown &lt;/a&gt;\r\n	&lt;ul class=&quot;dropdown-menu&quot;&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li class=&quot;divider&quot;&gt;&amp;nbsp;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- /example --&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- Buttons\r\n      ================================================== --&gt;\r\n\r\n&lt;div class=&quot;bs-docs-section&quot;&gt;\r\n&lt;div class=&quot;page-header&quot;&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-12&quot;&gt;\r\n&lt;h1 id=&quot;buttons&quot;&gt;Buttons&lt;/h1&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-6&quot;&gt;\r\n&lt;p class=&quot;bs-component&quot;&gt;&lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Default&lt;/button&gt;&lt;button class=&quot;btn btn-primary&quot; type=&quot;button&quot;&gt;Primary&lt;/button&gt;&lt;button class=&quot;btn btn-success&quot; type=&quot;button&quot;&gt;Success&lt;/button&gt;&lt;button class=&quot;btn btn-info&quot; type=&quot;button&quot;&gt;Info&lt;/button&gt;&lt;button class=&quot;btn btn-warning&quot; type=&quot;button&quot;&gt;Warning&lt;/button&gt;&lt;button class=&quot;btn btn-danger&quot; type=&quot;button&quot;&gt;Danger&lt;/button&gt;&lt;button class=&quot;btn btn-link&quot; type=&quot;button&quot;&gt;Link&lt;/button&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;bs-component&quot;&gt;&lt;button class=&quot;btn btn-default disabled&quot; type=&quot;button&quot;&gt;Default&lt;/button&gt;&lt;button class=&quot;btn btn-primary disabled&quot; type=&quot;button&quot;&gt;Primary&lt;/button&gt;&lt;button class=&quot;btn btn-success disabled&quot; type=&quot;button&quot;&gt;Success&lt;/button&gt;&lt;button class=&quot;btn btn-info disabled&quot; type=&quot;button&quot;&gt;Info&lt;/button&gt;&lt;button class=&quot;btn btn-warning disabled&quot; type=&quot;button&quot;&gt;Warning&lt;/button&gt;&lt;button class=&quot;btn btn-danger disabled&quot; type=&quot;button&quot;&gt;Danger&lt;/button&gt;&lt;button class=&quot;btn btn-link disabled&quot; type=&quot;button&quot;&gt;Link&lt;/button&gt;&lt;/p&gt;\r\n\r\n&lt;div style=&quot;margin-bottom: 15px;&quot;&gt;\r\n&lt;div class=&quot;btn-toolbar bs-component&quot; style=&quot;margin: 0;&quot;&gt;\r\n&lt;div class=&quot;btn-group&quot;&gt;&lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Default&lt;/button&gt;&lt;button class=&quot;btn btn-default dropdown-toggle&quot; data-toggle=&quot;dropdown&quot; type=&quot;button&quot;&gt;&lt;/button&gt;\r\n\r\n&lt;ul class=&quot;dropdown-menu&quot;&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;divider&quot;&gt;&amp;nbsp;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;btn-group&quot;&gt;&lt;button class=&quot;btn btn-primary&quot; type=&quot;button&quot;&gt;Primary&lt;/button&gt;&lt;button class=&quot;btn btn-primary dropdown-toggle&quot; data-toggle=&quot;dropdown&quot; type=&quot;button&quot;&gt;&lt;/button&gt;\r\n\r\n&lt;ul class=&quot;dropdown-menu&quot;&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;divider&quot;&gt;&amp;nbsp;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;btn-group&quot;&gt;&lt;button class=&quot;btn btn-success&quot; type=&quot;button&quot;&gt;Success&lt;/button&gt;&lt;button class=&quot;btn btn-success dropdown-toggle&quot; data-toggle=&quot;dropdown&quot; type=&quot;button&quot;&gt;&lt;/button&gt;\r\n\r\n&lt;ul class=&quot;dropdown-menu&quot;&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;divider&quot;&gt;&amp;nbsp;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;btn-group&quot;&gt;&lt;button class=&quot;btn btn-info&quot; type=&quot;button&quot;&gt;Info&lt;/button&gt;&lt;button class=&quot;btn btn-info dropdown-toggle&quot; data-toggle=&quot;dropdown&quot; type=&quot;button&quot;&gt;&lt;/button&gt;\r\n\r\n&lt;ul class=&quot;dropdown-menu&quot;&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;divider&quot;&gt;&amp;nbsp;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;btn-group&quot;&gt;&lt;button class=&quot;btn btn-warning&quot; type=&quot;button&quot;&gt;Warning&lt;/button&gt;&lt;button class=&quot;btn btn-warning dropdown-toggle&quot; data-toggle=&quot;dropdown&quot; type=&quot;button&quot;&gt;&lt;/button&gt;\r\n\r\n&lt;ul class=&quot;dropdown-menu&quot;&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;divider&quot;&gt;&amp;nbsp;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;p class=&quot;bs-component&quot;&gt;&lt;button class=&quot;btn btn-primary btn-lg&quot; type=&quot;button&quot;&gt;Large button&lt;/button&gt;&lt;button class=&quot;btn btn-primary&quot; type=&quot;button&quot;&gt;Default button&lt;/button&gt;&lt;button class=&quot;btn btn-primary btn-sm&quot; type=&quot;button&quot;&gt;Small button&lt;/button&gt;&lt;button class=&quot;btn btn-primary btn-xs&quot; type=&quot;button&quot;&gt;Mini button&lt;/button&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-6&quot;&gt;\r\n&lt;p class=&quot;bs-component&quot;&gt;&lt;button class=&quot;btn btn-default btn-lg btn-block&quot; type=&quot;button&quot;&gt;Block level button&lt;/button&gt;&lt;/p&gt;\r\n\r\n&lt;div class=&quot;bs-component&quot; style=&quot;margin-bottom: 15px;&quot;&gt;\r\n&lt;div class=&quot;btn-group btn-group-justified&quot;&gt;&lt;a class=&quot;btn btn-default&quot; href=&quot;#&quot;&gt;Left&lt;/a&gt; &lt;a class=&quot;btn btn-default&quot; href=&quot;#&quot;&gt;Middle&lt;/a&gt; &lt;a class=&quot;btn btn-default&quot; href=&quot;#&quot;&gt;Right&lt;/a&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;bs-component&quot; style=&quot;margin-bottom: 15px;&quot;&gt;\r\n&lt;div class=&quot;btn-toolbar&quot;&gt;\r\n&lt;div class=&quot;btn-group&quot;&gt;&lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;1&lt;/button&gt;&lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;2&lt;/button&gt;&lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;3&lt;/button&gt;&lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;4&lt;/button&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;btn-group&quot;&gt;&lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;5&lt;/button&gt;&lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;6&lt;/button&gt;&lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;7&lt;/button&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;btn-group&quot;&gt;&lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;8&lt;/button&gt;\r\n\r\n&lt;div class=&quot;btn-group&quot;&gt;&lt;button class=&quot;btn btn-default dropdown-toggle&quot; data-toggle=&quot;dropdown&quot; type=&quot;button&quot;&gt;Dropdown&lt;/button&gt;\r\n\r\n&lt;ul class=&quot;dropdown-menu&quot;&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Dropdown link&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Dropdown link&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Dropdown link&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;div class=&quot;btn-group-vertical&quot;&gt;&lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Button&lt;/button&gt;&lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Button&lt;/button&gt;&lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Button&lt;/button&gt;&lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Button&lt;/button&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- Typography\r\n      ================================================== --&gt;\r\n\r\n&lt;div class=&quot;bs-docs-section&quot;&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-12&quot;&gt;\r\n&lt;div class=&quot;page-header&quot;&gt;\r\n&lt;h1 id=&quot;type&quot;&gt;Typography&lt;/h1&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- Headings --&gt;\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-4&quot;&gt;\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;h1&gt;Heading 1&lt;/h1&gt;\r\n\r\n&lt;h2&gt;Heading 2&lt;/h2&gt;\r\n\r\n&lt;h3&gt;Heading 3&lt;/h3&gt;\r\n\r\n&lt;h4&gt;Heading 4&lt;/h4&gt;\r\n\r\n&lt;h5&gt;Heading 5&lt;/h5&gt;\r\n\r\n&lt;h6&gt;Heading 6&lt;/h6&gt;\r\n\r\n&lt;p class=&quot;lead&quot;&gt;Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-4&quot;&gt;\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;h2&gt;Example body text&lt;/h2&gt;\r\n\r\n&lt;p&gt;Nullam quis risus eget &lt;a href=&quot;#&quot;&gt;urna mollis ornare&lt;/a&gt; vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh ultricies vehicula.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;small&gt;This line of text is meant to be treated as fine print.&lt;/small&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;The following snippet of text is &lt;strong&gt;rendered as bold text&lt;/strong&gt;.&lt;/p&gt;\r\n\r\n&lt;p&gt;The following snippet of text is &lt;em&gt;rendered as italicized text&lt;/em&gt;.&lt;/p&gt;\r\n\r\n&lt;p&gt;An abbreviation of the word attribute is &lt;abbr title=&quot;attribute&quot;&gt;attr&lt;/abbr&gt;.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-4&quot;&gt;\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;h2&gt;Emphasis classes&lt;/h2&gt;\r\n\r\n&lt;p class=&quot;text-muted&quot;&gt;Fusce dapibus, tellus ac cursus commodo, tortor mauris nibh.&lt;/p&gt;\r\n\r\n&lt;p class=&quot;text-primary&quot;&gt;Nullam id dolor id nibh ultricies vehicula ut id elit.&lt;/p&gt;\r\n\r\n&lt;p class=&quot;text-warning&quot;&gt;Etiam porta sem malesuada magna mollis euismod.&lt;/p&gt;\r\n\r\n&lt;p class=&quot;text-danger&quot;&gt;Donec ullamcorper nulla non metus auctor fringilla.&lt;/p&gt;\r\n\r\n&lt;p class=&quot;text-success&quot;&gt;Duis mollis, est non commodo luctus, nisi erat porttitor ligula.&lt;/p&gt;\r\n\r\n&lt;p class=&quot;text-info&quot;&gt;Maecenas sed diam eget risus varius blandit sit amet non magna.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- Blockquotes --&gt;\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-12&quot;&gt;\r\n&lt;h2 id=&quot;type-blockquotes&quot;&gt;Blockquotes&lt;/h2&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-6&quot;&gt;\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;blockquote&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.&lt;/p&gt;\r\n&lt;small&gt;Someone famous in &lt;cite title=&quot;Source Title&quot;&gt;Source Title&lt;/cite&gt;&lt;/small&gt;&lt;/blockquote&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-6&quot;&gt;\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;blockquote class=&quot;pull-right&quot;&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.&lt;/p&gt;\r\n&lt;small&gt;Someone famous in &lt;cite title=&quot;Source Title&quot;&gt;Source Title&lt;/cite&gt;&lt;/small&gt;&lt;/blockquote&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- Tables\r\n      ================================================== --&gt;\r\n\r\n&lt;div class=&quot;bs-docs-section&quot;&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-12&quot;&gt;\r\n&lt;div class=&quot;page-header&quot;&gt;\r\n&lt;h1 id=&quot;tables&quot;&gt;Tables&lt;/h1&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;table class=&quot;table table-striped table-hover &quot;&gt;\r\n	&lt;thead&gt;\r\n		&lt;tr&gt;\r\n			&lt;th&gt;#&lt;/th&gt;\r\n			&lt;th&gt;Column heading&lt;/th&gt;\r\n			&lt;th&gt;Column heading&lt;/th&gt;\r\n			&lt;th&gt;Column heading&lt;/th&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/thead&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;1&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;2&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr class=&quot;info&quot;&gt;\r\n			&lt;td&gt;3&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr class=&quot;success&quot;&gt;\r\n			&lt;td&gt;4&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr class=&quot;danger&quot;&gt;\r\n			&lt;td&gt;5&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr class=&quot;warning&quot;&gt;\r\n			&lt;td&gt;6&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr class=&quot;active&quot;&gt;\r\n			&lt;td&gt;7&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n			&lt;td&gt;Column content&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;/div&gt;\r\n&lt;!-- /example --&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- Forms\r\n      ================================================== --&gt;\r\n\r\n&lt;div class=&quot;bs-docs-section&quot;&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-12&quot;&gt;\r\n&lt;div class=&quot;page-header&quot;&gt;\r\n&lt;h1 id=&quot;forms&quot;&gt;Forms&lt;/h1&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-6&quot;&gt;\r\n&lt;div class=&quot;well bs-component&quot;&gt;\r\n&lt;form class=&quot;form-horizontal&quot;&gt;\r\n&lt;fieldset&gt;&lt;legend&gt;Legend&lt;/legend&gt;\r\n\r\n&lt;div class=&quot;form-group&quot;&gt;&lt;label class=&quot;col-lg-2 control-label&quot; for=&quot;inputEmail&quot;&gt;Email&lt;/label&gt;\r\n\r\n&lt;div class=&quot;col-lg-10&quot;&gt;&lt;input class=&quot;form-control&quot; id=&quot;inputEmail&quot; placeholder=&quot;Email&quot; type=&quot;text&quot; /&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;form-group&quot;&gt;&lt;label class=&quot;col-lg-2 control-label&quot; for=&quot;inputPassword&quot;&gt;Password&lt;/label&gt;\r\n\r\n&lt;div class=&quot;col-lg-10&quot;&gt;&lt;input class=&quot;form-control&quot; id=&quot;inputPassword&quot; placeholder=&quot;Password&quot; type=&quot;password&quot; /&gt;\r\n&lt;div class=&quot;checkbox&quot;&gt;&lt;label&gt;&lt;input type=&quot;checkbox&quot; /&gt; Checkbox &lt;/label&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;form-group&quot;&gt;&lt;label class=&quot;col-lg-2 control-label&quot; for=&quot;textArea&quot;&gt;Textarea&lt;/label&gt;\r\n\r\n&lt;div class=&quot;col-lg-10&quot;&gt;&lt;textarea class=&quot;form-control&quot; id=&quot;textArea&quot; rows=&quot;3&quot;&gt;&lt;/textarea&gt;&lt;span class=&quot;help-block&quot;&gt;A longer block of help text that breaks onto a new line and may extend beyond one line.&lt;/span&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;form-group&quot;&gt;&lt;label class=&quot;col-lg-2 control-label&quot;&gt;Radios&lt;/label&gt;\r\n\r\n&lt;div class=&quot;col-lg-10&quot;&gt;\r\n&lt;div class=&quot;radio&quot;&gt;&lt;label&gt;&lt;input checked=&quot;checked&quot; id=&quot;optionsRadios1&quot; name=&quot;optionsRadios&quot; type=&quot;radio&quot; value=&quot;option1&quot; /&gt; Option one is this &lt;/label&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;radio&quot;&gt;&lt;label&gt;&lt;input id=&quot;optionsRadios2&quot; name=&quot;optionsRadios&quot; type=&quot;radio&quot; value=&quot;option2&quot; /&gt; Option two can be something else &lt;/label&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;form-group&quot;&gt;&lt;label class=&quot;col-lg-2 control-label&quot; for=&quot;select&quot;&gt;Selects&lt;/label&gt;\r\n\r\n&lt;div class=&quot;col-lg-10&quot;&gt;&lt;select class=&quot;form-control&quot; id=&quot;select&quot;&gt;&lt;option&gt;1&lt;/option&gt;&lt;option&gt;2&lt;/option&gt;&lt;option&gt;3&lt;/option&gt;&lt;option&gt;4&lt;/option&gt;&lt;option&gt;5&lt;/option&gt; &lt;/select&gt;&lt;br /&gt;\r\n&lt;select class=&quot;form-control&quot; multiple=&quot;multiple&quot;&gt;&lt;option&gt;1&lt;/option&gt;&lt;option&gt;2&lt;/option&gt;&lt;option&gt;3&lt;/option&gt;&lt;option&gt;4&lt;/option&gt;&lt;option&gt;5&lt;/option&gt; &lt;/select&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;form-group&quot;&gt;\r\n&lt;div class=&quot;col-lg-10 col-lg-offset-2&quot;&gt;&lt;button class=&quot;btn btn-default&quot;&gt;Cancel&lt;/button&gt;&lt;button class=&quot;btn btn-primary&quot; type=&quot;submit&quot;&gt;Submit&lt;/button&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/fieldset&gt;\r\n&lt;/form&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-4 col-lg-offset-1&quot;&gt;\r\n&lt;form class=&quot;bs-component&quot;&gt;\r\n&lt;div class=&quot;form-group&quot;&gt;&lt;label class=&quot;control-label&quot; for=&quot;focusedInput&quot;&gt;Focused input&lt;/label&gt; &lt;input class=&quot;form-control&quot; id=&quot;focusedInput&quot; type=&quot;text&quot; value=&quot;This is focused...&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;form-group&quot;&gt;&lt;label class=&quot;control-label&quot; for=&quot;disabledInput&quot;&gt;Disabled input&lt;/label&gt; &lt;input class=&quot;form-control&quot; disabled=&quot;disabled&quot; id=&quot;disabledInput&quot; placeholder=&quot;Disabled input here...&quot; type=&quot;text&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;form-group has-warning&quot;&gt;&lt;label class=&quot;control-label&quot; for=&quot;inputWarning&quot;&gt;Input warning&lt;/label&gt; &lt;input class=&quot;form-control&quot; id=&quot;inputWarning&quot; type=&quot;text&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;form-group has-error&quot;&gt;&lt;label class=&quot;control-label&quot; for=&quot;inputError&quot;&gt;Input error&lt;/label&gt; &lt;input class=&quot;form-control&quot; id=&quot;inputError&quot; type=&quot;text&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;form-group has-success&quot;&gt;&lt;label class=&quot;control-label&quot; for=&quot;inputSuccess&quot;&gt;Input success&lt;/label&gt; &lt;input class=&quot;form-control&quot; id=&quot;inputSuccess&quot; type=&quot;text&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;form-group&quot;&gt;&lt;label class=&quot;control-label&quot; for=&quot;inputLarge&quot;&gt;Large input&lt;/label&gt; &lt;input class=&quot;form-control input-lg&quot; id=&quot;inputLarge&quot; type=&quot;text&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;form-group&quot;&gt;&lt;label class=&quot;control-label&quot; for=&quot;inputDefault&quot;&gt;Default input&lt;/label&gt; &lt;input class=&quot;form-control&quot; id=&quot;inputDefault&quot; type=&quot;text&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;form-group&quot;&gt;&lt;label class=&quot;control-label&quot; for=&quot;inputSmall&quot;&gt;Small input&lt;/label&gt; &lt;input class=&quot;form-control input-sm&quot; id=&quot;inputSmall&quot; type=&quot;text&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;form-group&quot;&gt;&lt;label class=&quot;control-label&quot;&gt;Input addons&lt;/label&gt;\r\n\r\n&lt;div class=&quot;input-group&quot;&gt;&lt;span class=&quot;input-group-addon&quot;&gt;$&lt;/span&gt; &lt;input class=&quot;form-control&quot; type=&quot;text&quot; /&gt; &lt;span class=&quot;input-group-btn&quot;&gt;&lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;Button&lt;/button&gt; &lt;/span&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/form&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- Navs\r\n      ================================================== --&gt;\r\n\r\n&lt;div class=&quot;bs-docs-section&quot;&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-12&quot;&gt;\r\n&lt;div class=&quot;page-header&quot;&gt;\r\n&lt;h1 id=&quot;nav&quot;&gt;Navs&lt;/h1&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-4&quot;&gt;\r\n&lt;h2 id=&quot;nav-tabs&quot;&gt;Tabs&lt;/h2&gt;\r\n\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;ul class=&quot;nav nav-tabs&quot; style=&quot;margin-bottom: 15px;&quot;&gt;\r\n	&lt;li class=&quot;active&quot;&gt;&lt;a data-toggle=&quot;tab&quot; href=&quot;#home&quot;&gt;Home&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a data-toggle=&quot;tab&quot; href=&quot;#profile&quot;&gt;Profile&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;disabled&quot;&gt;&lt;a&gt;Disabled&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;dropdown&quot;&gt;&lt;a class=&quot;dropdown-toggle&quot; data-toggle=&quot;dropdown&quot; href=&quot;#&quot;&gt;Dropdown &lt;/a&gt;\r\n	&lt;ul class=&quot;dropdown-menu&quot;&gt;\r\n		&lt;li&gt;&lt;a data-toggle=&quot;tab&quot; href=&quot;#dropdown1&quot;&gt;Action&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li class=&quot;divider&quot;&gt;&amp;nbsp;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a data-toggle=&quot;tab&quot; href=&quot;#dropdown2&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;div class=&quot;tab-content&quot; id=&quot;myTabContent&quot;&gt;\r\n&lt;div class=&quot;tab-pane fade active in&quot; id=&quot;home&quot;&gt;\r\n&lt;p&gt;Raw denim you probably haven''t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;tab-pane fade&quot; id=&quot;profile&quot;&gt;\r\n&lt;p&gt;Food truck fixie locavore, accusamus mcsweeney''s marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit.&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;tab-pane fade&quot; id=&quot;dropdown1&quot;&gt;\r\n&lt;p&gt;Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney''s organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork.&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;tab-pane fade&quot; id=&quot;dropdown2&quot;&gt;\r\n&lt;p&gt;Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-4&quot;&gt;\r\n&lt;h2 id=&quot;nav-pills&quot;&gt;Pills&lt;/h2&gt;\r\n\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;ul class=&quot;nav nav-pills&quot;&gt;\r\n	&lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#&quot;&gt;Home&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Profile&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;disabled&quot;&gt;&lt;a href=&quot;#&quot;&gt;Disabled&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;dropdown&quot;&gt;&lt;a class=&quot;dropdown-toggle&quot; data-toggle=&quot;dropdown&quot; href=&quot;#&quot;&gt;Dropdown &lt;/a&gt;\r\n	&lt;ul class=&quot;dropdown-menu&quot;&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li class=&quot;divider&quot;&gt;&amp;nbsp;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n&amp;nbsp;\r\n\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;ul class=&quot;nav nav-pills nav-stacked&quot; style=&quot;max-width: 300px;&quot;&gt;\r\n	&lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#&quot;&gt;Home&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Profile&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;disabled&quot;&gt;&lt;a href=&quot;#&quot;&gt;Disabled&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;dropdown&quot;&gt;&lt;a class=&quot;dropdown-toggle&quot; data-toggle=&quot;dropdown&quot; href=&quot;#&quot;&gt;Dropdown &lt;/a&gt;\r\n	&lt;ul class=&quot;dropdown-menu&quot;&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li class=&quot;divider&quot;&gt;&amp;nbsp;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-4&quot;&gt;\r\n&lt;h2 id=&quot;nav-breadcrumbs&quot;&gt;Breadcrumbs&lt;/h2&gt;\r\n\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;ul class=&quot;breadcrumb&quot;&gt;\r\n	&lt;li class=&quot;active&quot;&gt;Home&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;ul class=&quot;breadcrumb&quot;&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Home&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;active&quot;&gt;Library&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;ul class=&quot;breadcrumb&quot; style=&quot;margin-bottom: 5px;&quot;&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Home&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Library&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;active&quot;&gt;Data&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-4&quot;&gt;\r\n&lt;h2 id=&quot;pagination&quot;&gt;Pagination&lt;/h2&gt;\r\n\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;ul class=&quot;pagination&quot;&gt;\r\n	&lt;li class=&quot;disabled&quot;&gt;&lt;a href=&quot;#&quot;&gt;«&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#&quot;&gt;1&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;2&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;3&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;4&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;5&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;»&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;ul class=&quot;pagination pagination-lg&quot;&gt;\r\n	&lt;li class=&quot;disabled&quot;&gt;&lt;a href=&quot;#&quot;&gt;«&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#&quot;&gt;1&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;2&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;3&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;»&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;ul class=&quot;pagination pagination-sm&quot;&gt;\r\n	&lt;li class=&quot;disabled&quot;&gt;&lt;a href=&quot;#&quot;&gt;«&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#&quot;&gt;1&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;2&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;3&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;4&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;5&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;»&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-4&quot;&gt;\r\n&lt;h2 id=&quot;pager&quot;&gt;Pager&lt;/h2&gt;\r\n\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;ul class=&quot;pager&quot;&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Previous&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Next&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;ul class=&quot;pager&quot;&gt;\r\n	&lt;li class=&quot;previous disabled&quot;&gt;&lt;a href=&quot;#&quot;&gt;← Older&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;next&quot;&gt;&lt;a href=&quot;#&quot;&gt;Newer →&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-4&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- Indicators\r\n      ================================================== --&gt;\r\n\r\n&lt;div class=&quot;bs-docs-section&quot;&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-12&quot;&gt;\r\n&lt;div class=&quot;page-header&quot;&gt;\r\n&lt;h1 id=&quot;indicators&quot;&gt;Indicators&lt;/h1&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-12&quot;&gt;\r\n&lt;h2&gt;Alerts&lt;/h2&gt;\r\n\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;div class=&quot;alert alert-dismissable alert-warning&quot;&gt;&lt;button class=&quot;close&quot; data-dismiss=&quot;alert&quot; type=&quot;button&quot;&gt;×&lt;/button&gt;\r\n\r\n&lt;h4&gt;Warning!&lt;/h4&gt;\r\n\r\n&lt;p&gt;Best check yo self, you''re not looking too good. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, &lt;a class=&quot;alert-link&quot; href=&quot;#&quot;&gt;vel scelerisque nisl consectetur et&lt;/a&gt;.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-4&quot;&gt;\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;div class=&quot;alert alert-dismissable alert-danger&quot;&gt;&lt;button class=&quot;close&quot; data-dismiss=&quot;alert&quot; type=&quot;button&quot;&gt;×&lt;/button&gt;&lt;strong&gt;Oh snap!&lt;/strong&gt; &lt;a class=&quot;alert-link&quot; href=&quot;#&quot;&gt;Change a few things up&lt;/a&gt; and try submitting again.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-4&quot;&gt;\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;div class=&quot;alert alert-dismissable alert-success&quot;&gt;&lt;button class=&quot;close&quot; data-dismiss=&quot;alert&quot; type=&quot;button&quot;&gt;×&lt;/button&gt;&lt;strong&gt;Well done!&lt;/strong&gt; You successfully read &lt;a class=&quot;alert-link&quot; href=&quot;#&quot;&gt;this important alert message&lt;/a&gt;.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-4&quot;&gt;\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;div class=&quot;alert alert-dismissable alert-info&quot;&gt;&lt;button class=&quot;close&quot; data-dismiss=&quot;alert&quot; type=&quot;button&quot;&gt;×&lt;/button&gt;&lt;strong&gt;Heads up!&lt;/strong&gt; This &lt;a class=&quot;alert-link&quot; href=&quot;#&quot;&gt;alert needs your attention&lt;/a&gt;, but it''s not super important.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-4&quot;&gt;\r\n&lt;h2&gt;Labels&lt;/h2&gt;\r\n\r\n&lt;div class=&quot;bs-component&quot; style=&quot;margin-bottom: 40px;&quot;&gt;&lt;span class=&quot;label label-default&quot;&gt;Default&lt;/span&gt; &lt;span class=&quot;label label-primary&quot;&gt;Primary&lt;/span&gt; &lt;span class=&quot;label label-success&quot;&gt;Success&lt;/span&gt; &lt;span class=&quot;label label-warning&quot;&gt;Warning&lt;/span&gt; &lt;span class=&quot;label label-danger&quot;&gt;Danger&lt;/span&gt; &lt;span class=&quot;label label-info&quot;&gt;Info&lt;/span&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-4&quot;&gt;\r\n&lt;h2&gt;Badges&lt;/h2&gt;\r\n\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;ul class=&quot;nav nav-pills&quot;&gt;\r\n	&lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#&quot;&gt;Home &lt;span class=&quot;badge&quot;&gt;42&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Profile &lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Messages &lt;span class=&quot;badge&quot;&gt;3&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- Progress bars\r\n      ================================================== --&gt;\r\n\r\n&lt;div class=&quot;bs-docs-section&quot;&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-12&quot;&gt;\r\n&lt;div class=&quot;page-header&quot;&gt;\r\n&lt;h1 id=&quot;progress&quot;&gt;Progress bars&lt;/h1&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;h3 id=&quot;progress-basic&quot;&gt;Basic&lt;/h3&gt;\r\n\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;div class=&quot;progress&quot;&gt;\r\n&lt;div class=&quot;progress-bar&quot; style=&quot;width: 60%;&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;h3 id=&quot;progress-alternatives&quot;&gt;Contextual alternatives&lt;/h3&gt;\r\n\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;div class=&quot;progress&quot;&gt;\r\n&lt;div class=&quot;progress-bar progress-bar-info&quot; style=&quot;width: 20%&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;progress&quot;&gt;\r\n&lt;div class=&quot;progress-bar progress-bar-success&quot; style=&quot;width: 40%&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;progress&quot;&gt;\r\n&lt;div class=&quot;progress-bar progress-bar-warning&quot; style=&quot;width: 60%&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;progress&quot;&gt;\r\n&lt;div class=&quot;progress-bar progress-bar-danger&quot; style=&quot;width: 80%&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;h3 id=&quot;progress-striped&quot;&gt;Striped&lt;/h3&gt;\r\n\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;div class=&quot;progress progress-striped&quot;&gt;\r\n&lt;div class=&quot;progress-bar progress-bar-info&quot; style=&quot;width: 20%&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;progress progress-striped&quot;&gt;\r\n&lt;div class=&quot;progress-bar progress-bar-success&quot; style=&quot;width: 40%&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;progress progress-striped&quot;&gt;\r\n&lt;div class=&quot;progress-bar progress-bar-warning&quot; style=&quot;width: 60%&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;progress progress-striped&quot;&gt;\r\n&lt;div class=&quot;progress-bar progress-bar-danger&quot; style=&quot;width: 80%&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;h3 id=&quot;progress-animated&quot;&gt;Animated&lt;/h3&gt;\r\n\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;div class=&quot;progress progress-striped active&quot;&gt;\r\n&lt;div class=&quot;progress-bar&quot; style=&quot;width: 45%&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;h3 id=&quot;progress-stacked&quot;&gt;Stacked&lt;/h3&gt;\r\n\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;div class=&quot;progress&quot;&gt;\r\n&lt;div class=&quot;progress-bar progress-bar-success&quot; style=&quot;width: 35%&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;progress-bar progress-bar-warning&quot; style=&quot;width: 20%&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;progress-bar progress-bar-danger&quot; style=&quot;width: 10%&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- Containers\r\n      ================================================== --&gt;\r\n\r\n&lt;div class=&quot;bs-docs-section&quot;&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-12&quot;&gt;\r\n&lt;div class=&quot;page-header&quot;&gt;\r\n&lt;h1 id=&quot;container&quot;&gt;Containers&lt;/h1&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;div class=&quot;jumbotron&quot;&gt;\r\n&lt;h1&gt;Jumbotron&lt;/h1&gt;\r\n\r\n&lt;p&gt;This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;a class=&quot;btn btn-primary btn-lg&quot;&gt;Learn more&lt;/a&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-12&quot;&gt;\r\n&lt;h2&gt;List groups&lt;/h2&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-4&quot;&gt;\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;ul class=&quot;list-group&quot;&gt;\r\n	&lt;li class=&quot;list-group-item&quot;&gt;&lt;span class=&quot;badge&quot;&gt;14&lt;/span&gt; Cras justo odio&lt;/li&gt;\r\n	&lt;li class=&quot;list-group-item&quot;&gt;&lt;span class=&quot;badge&quot;&gt;2&lt;/span&gt; Dapibus ac facilisis in&lt;/li&gt;\r\n	&lt;li class=&quot;list-group-item&quot;&gt;&lt;span class=&quot;badge&quot;&gt;1&lt;/span&gt; Morbi leo risus&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-4&quot;&gt;\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;div class=&quot;list-group&quot;&gt;&lt;a class=&quot;list-group-item active&quot; href=&quot;#&quot;&gt;Cras justo odio &lt;/a&gt; &lt;a class=&quot;list-group-item&quot; href=&quot;#&quot;&gt;Dapibus ac facilisis in &lt;/a&gt; &lt;a class=&quot;list-group-item&quot; href=&quot;#&quot;&gt;Morbi leo risus &lt;/a&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-4&quot;&gt;\r\n&lt;div class=&quot;bs-component&quot;&gt;\r\n&lt;div class=&quot;list-group&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n');
INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`) VALUES
(4, 2, 'من نحن', '&lt;p&gt;من نحن&lt;/p&gt;\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_layout`
--

DROP TABLE IF EXISTS `oc_information_to_layout`;
CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_store`
--

DROP TABLE IF EXISTS `oc_information_to_store`;
CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_language`
--

DROP TABLE IF EXISTS `oc_language`;
CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `filename` varchar(64) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `filename`, `sort_order`, `status`) VALUES
(1, 'English', 'en', 'en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 'english', 1, 1),
(2, 'Arabic', 'ar', 'arabic_YE (ar_YE.UTF8@euro, ar_YE.UTF8)', 'ar.png', 'arabic', 'arabic', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

DROP TABLE IF EXISTS `oc_layout`;
CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Pav Blog'),
(13, 'Specials'),
(14, 'Search'),
(15, 'Pavdeal');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

DROP TABLE IF EXISTS `oc_layout_route`;
CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(30, 6, 0, 'account'),
(17, 10, 0, 'affiliate/'),
(29, 3, 0, 'product/category'),
(26, 1, 0, 'common/home'),
(20, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(22, 5, 0, 'product/manufacturer'),
(23, 7, 0, 'checkout/'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(33, 12, 0, 'pavblog/'),
(35, 13, 0, 'product/special'),
(36, 14, 0, 'product/search'),
(38, 15, 0, 'pavdeals/deals');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class`
--

DROP TABLE IF EXISTS `oc_length_class`;
CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class_description`
--

DROP TABLE IF EXISTS `oc_length_class_description`;
CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in'),
(1, 2, 'Centimeter', 'cm'),
(2, 2, 'Millimeter', 'mm'),
(3, 2, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer`
--

DROP TABLE IF EXISTS `oc_manufacturer`;
CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'HTC', 'data/demo/htc_logo.jpg', 0),
(6, 'Palm', 'data/demo/palm_logo.jpg', 0),
(7, 'Hewlett-Packard', 'data/demo/hp_logo.jpg', 0),
(8, 'Apple', 'data/demo/apple_logo.jpg', 0),
(9, 'Canon', 'data/demo/canon_logo.jpg', 0),
(10, 'Sony', 'data/demo/sony_logo.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer_to_store`
--

DROP TABLE IF EXISTS `oc_manufacturer_to_store`;
CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_megamenu`
--

DROP TABLE IF EXISTS `oc_megamenu`;
CREATE TABLE `oc_megamenu` (
  `megamenu_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `is_group` smallint(6) NOT NULL DEFAULT '2',
  `width` varchar(255) DEFAULT NULL,
  `submenu_width` varchar(255) DEFAULT NULL,
  `colum_width` varchar(255) DEFAULT NULL,
  `submenu_colum_width` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `colums` varchar(255) DEFAULT '1',
  `type` varchar(255) NOT NULL,
  `is_content` smallint(6) NOT NULL DEFAULT '2',
  `show_title` smallint(6) NOT NULL DEFAULT '1',
  `type_submenu` varchar(10) NOT NULL DEFAULT '1',
  `level_depth` smallint(6) NOT NULL DEFAULT '0',
  `published` smallint(6) NOT NULL DEFAULT '1',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position` int(11) unsigned NOT NULL DEFAULT '0',
  `show_sub` smallint(6) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `target` varchar(25) DEFAULT NULL,
  `privacy` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position_type` varchar(25) DEFAULT 'top',
  `menu_class` varchar(25) DEFAULT NULL,
  `description` text,
  `content_text` text,
  `submenu_content` text,
  `level` int(11) NOT NULL,
  `left` int(11) NOT NULL,
  `right` int(11) NOT NULL,
  `widget_id` int(11) DEFAULT '0',
  PRIMARY KEY (`megamenu_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=87 ;

--
-- Dumping data for table `oc_megamenu`
--

INSERT INTO `oc_megamenu` (`megamenu_id`, `image`, `parent_id`, `is_group`, `width`, `submenu_width`, `colum_width`, `submenu_colum_width`, `item`, `colums`, `type`, `is_content`, `show_title`, `type_submenu`, `level_depth`, `published`, `store_id`, `position`, `show_sub`, `url`, `target`, `privacy`, `position_type`, `menu_class`, `description`, `content_text`, `submenu_content`, `level`, `left`, `right`, `widget_id`) VALUES
(1, '', 0, 2, NULL, NULL, NULL, NULL, NULL, '1', '', 2, 1, '1', 0, 1, 0, 0, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, -5, 34, 47, 0),
(3, '', 1, 0, NULL, NULL, NULL, '', '25', '1', 'category', 0, 1, 'menu', 0, 1, 0, 4, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 1),
(4, '', 32, 0, NULL, NULL, NULL, '', '25', '1', 'category', 0, 1, 'menu', 0, 1, 0, 1, 0, '', NULL, 0, 'top', 'pav-parrent', NULL, '', '', 0, 0, 0, 1),
(5, '', 1, 0, NULL, NULL, NULL, '', '59', '1', 'category', 0, 1, 'menu', 0, 1, 0, 3, 0, '', NULL, 0, 'top', 'pav-parrent', NULL, '', '', 0, 0, 0, 1),
(25, '', 32, 0, NULL, NULL, NULL, '', '79', '1', 'category', 0, 1, 'menu', 0, 1, 0, 2, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 1),
(26, '', 32, 0, NULL, NULL, NULL, '', '74', '1', 'category', 0, 1, 'menu', 0, 1, 0, 3, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 1),
(27, '', 33, 0, NULL, NULL, NULL, '', '73', '1', 'category', 0, 1, 'menu', 0, 1, 0, 1, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 1),
(28, '', 33, 0, NULL, NULL, NULL, '', '80', '1', 'category', 0, 1, 'menu', 0, 1, 0, 2, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 1),
(29, '', 32, 0, NULL, NULL, NULL, '', '', '1', 'category', 0, 1, 'menu', 0, 1, 0, 4, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 1),
(30, '', 3, 0, NULL, NULL, NULL, '', '27', '1', 'category', 0, 1, 'menu', 0, 1, 0, 1, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 1),
(31, '', 3, 0, NULL, NULL, NULL, '', '30', '1', 'category', 0, 1, 'menu', 0, 1, 0, 2, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 1),
(32, '', 3, 0, NULL, NULL, NULL, '', '31', '1', 'category', 0, 1, 'menu', 0, 1, 0, 3, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 1),
(33, '', 3, 0, NULL, NULL, NULL, '', '20', '1', 'category', 0, 1, 'menu', 0, 1, 0, 4, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 1),
(34, '', 3, 0, NULL, NULL, NULL, '', '18', '1', 'category', 0, 1, 'menu', 0, 1, 0, 5, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 1),
(35, '', 3, 0, NULL, NULL, NULL, '', '25', '1', 'category', 0, 1, 'menu', 0, 1, 0, 6, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 1),
(38, '', 1, 0, NULL, NULL, NULL, '', '57', '1', 'url', 0, 1, 'menu', 0, 1, 0, 6, 0, 'index.php?route=pavblog/blogs', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 1),
(40, '', 1, 0, NULL, NULL, NULL, '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 1, 0, '?route=common/home', NULL, 0, 'top', 'home', NULL, '', '', 0, 0, 0, 1),
(41, '', 1, 0, NULL, NULL, NULL, '', '20', '1', 'category', 0, 1, 'menu', 0, 1, 0, 2, 0, '', NULL, 0, 'top', 'full-width', NULL, '', '', 0, 0, 0, 1),
(44, '', 1, 0, NULL, NULL, NULL, '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 7, 0, 'index.php?route=information/contact', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 1),
(45, '', 1, 0, NULL, NULL, NULL, NULL, '25', '1', 'category', 2, 1, 'menu', 0, 1, 1, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1),
(46, '', 1, 0, NULL, NULL, NULL, NULL, '57', '1', 'category', 2, 1, 'menu', 0, 1, 1, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1),
(47, '', 1, 0, NULL, NULL, NULL, NULL, '34', '1', 'category', 2, 1, 'menu', 0, 1, 1, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1),
(48, '', 1, 0, NULL, NULL, NULL, NULL, '59', '1', 'category', 2, 1, 'menu', 0, 1, 1, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1),
(49, '', 1, 0, NULL, NULL, NULL, NULL, '17', '1', 'category', 2, 1, 'menu', 0, 1, 1, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1),
(50, '', 1, 0, NULL, NULL, NULL, NULL, '18', '1', 'category', 2, 1, 'menu', 0, 1, 1, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1),
(51, '', 1, 0, NULL, NULL, NULL, NULL, '20', '1', 'category', 2, 1, 'menu', 0, 1, 1, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1),
(52, '', 1, 0, NULL, NULL, NULL, NULL, '24', '1', 'category', 2, 1, 'menu', 0, 1, 1, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1),
(53, '', 50, 0, NULL, NULL, NULL, NULL, '46', '1', 'category', 2, 1, 'menu', 0, 1, 1, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1),
(54, '', 50, 0, NULL, NULL, NULL, NULL, '45', '1', 'category', 2, 1, 'menu', 0, 1, 1, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1),
(55, '', 51, 0, NULL, NULL, NULL, NULL, '27', '1', 'category', 2, 1, 'menu', 0, 1, 1, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1),
(56, '', 51, 0, NULL, NULL, NULL, NULL, '26', '1', 'category', 2, 1, 'menu', 0, 1, 1, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1),
(57, '', 45, 0, NULL, NULL, NULL, NULL, '32', '1', 'category', 2, 1, 'menu', 0, 1, 1, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1),
(58, '', 45, 0, NULL, NULL, NULL, NULL, '28', '1', 'category', 2, 1, 'menu', 0, 1, 1, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1),
(59, '', 45, 0, NULL, NULL, NULL, NULL, '29', '1', 'category', 2, 1, 'menu', 0, 1, 1, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1),
(60, '', 45, 0, NULL, NULL, NULL, NULL, '30', '1', 'category', 2, 1, 'menu', 0, 1, 1, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1),
(61, '', 45, 0, NULL, NULL, NULL, NULL, '31', '1', 'category', 2, 1, 'menu', 0, 1, 1, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1),
(62, '', 58, 0, NULL, NULL, NULL, NULL, '36', '1', 'category', 2, 1, 'menu', 0, 1, 1, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1),
(63, '', 58, 0, NULL, NULL, NULL, NULL, '35', '1', 'category', 2, 1, 'menu', 0, 1, 1, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1),
(64, '', 47, 0, NULL, NULL, NULL, NULL, '50', '1', 'category', 2, 1, 'menu', 0, 1, 1, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1),
(65, '', 47, 0, NULL, NULL, NULL, NULL, '51', '1', 'category', 2, 1, 'menu', 0, 1, 1, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1),
(66, '', 47, 0, NULL, NULL, NULL, NULL, '52', '1', 'category', 2, 1, 'menu', 0, 1, 1, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1),
(67, '', 47, 0, NULL, NULL, NULL, NULL, '53', '1', 'category', 2, 1, 'menu', 0, 1, 1, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1),
(68, '', 47, 0, NULL, NULL, NULL, NULL, '54', '1', 'category', 2, 1, 'menu', 0, 1, 1, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1),
(69, '', 47, 0, NULL, NULL, NULL, NULL, '55', '1', 'category', 2, 1, 'menu', 0, 1, 1, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1),
(70, '', 47, 0, NULL, NULL, NULL, NULL, '56', '1', 'category', 2, 1, 'menu', 0, 1, 1, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1),
(71, '', 47, 0, NULL, NULL, NULL, NULL, '49', '1', 'category', 2, 1, 'menu', 0, 1, 1, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1),
(72, '', 47, 0, NULL, NULL, NULL, NULL, '48', '1', 'category', 2, 1, 'menu', 0, 1, 1, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1),
(73, '', 47, 0, NULL, NULL, NULL, NULL, '47', '1', 'category', 2, 1, 'menu', 0, 1, 1, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1),
(74, '', 47, 0, NULL, NULL, NULL, NULL, '37', '1', 'category', 2, 1, 'menu', 0, 1, 1, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1),
(75, '', 47, 0, NULL, NULL, NULL, NULL, '38', '1', 'category', 2, 1, 'menu', 0, 1, 1, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1),
(76, '', 47, 0, NULL, NULL, NULL, NULL, '39', '1', 'category', 2, 1, 'menu', 0, 1, 1, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1),
(77, '', 47, 0, NULL, NULL, NULL, NULL, '40', '1', 'category', 2, 1, 'menu', 0, 1, 1, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1),
(78, '', 47, 0, NULL, NULL, NULL, NULL, '41', '1', 'category', 2, 1, 'menu', 0, 1, 1, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1),
(79, '', 47, 0, NULL, NULL, NULL, NULL, '42', '1', 'category', 2, 1, 'menu', 0, 1, 1, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1),
(80, '', 47, 0, NULL, NULL, NULL, NULL, '43', '1', 'category', 2, 1, 'menu', 0, 1, 1, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1),
(81, '', 47, 0, NULL, NULL, NULL, NULL, '44', '1', 'category', 2, 1, 'menu', 0, 1, 1, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1),
(82, '', 66, 0, NULL, NULL, NULL, NULL, '58', '1', 'category', 2, 1, 'menu', 0, 1, 1, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1),
(83, '', 25, 0, NULL, NULL, NULL, '', '20', '1', 'category', 0, 1, 'menu', 0, 1, 0, 1, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 1),
(84, '', 25, 0, NULL, NULL, NULL, '', '59', '1', 'category', 0, 1, 'menu', 0, 1, 0, 2, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 1),
(85, '', 25, 0, NULL, NULL, NULL, '', '25', '1', 'category', 0, 1, 'menu', 0, 1, 0, 3, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 1),
(86, '', 1, 0, NULL, NULL, NULL, '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 5, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_megamenu_description`
--

DROP TABLE IF EXISTS `oc_megamenu_description`;
CREATE TABLE `oc_megamenu_description` (
  `megamenu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`megamenu_id`,`language_id`),
  KEY `name` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_megamenu_description`
--

INSERT INTO `oc_megamenu_description` (`megamenu_id`, `language_id`, `title`, `description`) VALUES
(4, 2, 'ذلك أم عملية المعاهدات. جُل ثم', ''),
(25, 2, 'ذلك أم عملية المعاهدات. جُل ثم', ''),
(26, 1, 'Claritas', ''),
(29, 1, 'Litterarum', ''),
(3, 1, 'MEN''S', ''),
(33, 2, 'ذلك أم عملية المعاهدات. جُل ثم', ''),
(33, 1, 'Desktops', ''),
(34, 2, 'ذلك أم عملية المعاهدات. جُل ثم', ''),
(34, 1, 'Laptops &amp; Notebooks', ''),
(35, 2, 'ذلك أم عملية المعاهدات. جُل ثم', ''),
(35, 1, 'Components', ''),
(32, 1, 'Scanners', ''),
(32, 2, 'ذلك أم عملية المعاهدات. جُل ثم', ''),
(31, 2, 'عليها اقتصادية أم بال,', ''),
(31, 1, 'Printers', ''),
(30, 1, 'Macs', ''),
(30, 2, 'عليها اقتصادية أم بال,', ''),
(4, 1, 'Watches', ''),
(25, 1, 'Aliquam', ''),
(26, 2, 'ذلك أم عملية المعاهدات. جُل ثم', ''),
(29, 2, 'ذلك أم عملية المعاهدات. جُل ثم', ''),
(27, 2, 'ذلك أم عملية المعاهدات. جُل ثم', ''),
(27, 1, 'Consectetuer', ''),
(28, 2, 'ذلك أم عملية المعاهدات. جُل ثم', ''),
(28, 1, 'Hendrerit', ''),
(41, 2, 'بوزيرها حول', ''),
(44, 1, 'Contact', ''),
(5, 1, 'LADIES''', ''),
(45, 1, 'Components', ''),
(45, 2, 'Components', ''),
(45, 3, 'Components', ''),
(45, 4, 'Components', ''),
(45, 5, 'Components', ''),
(46, 1, 'Tablets', ''),
(46, 2, 'Tablets', ''),
(46, 3, 'Tablets', ''),
(46, 4, 'Tablets', ''),
(46, 5, 'Tablets', ''),
(47, 1, 'MP3 Players', ''),
(47, 2, 'MP3 Players', ''),
(47, 3, 'MP3 Players', ''),
(47, 4, 'MP3 Players', ''),
(47, 5, 'MP3 Players', ''),
(48, 1, 'Camera', ''),
(48, 2, 'Camera', ''),
(48, 3, 'Camera', ''),
(48, 4, 'Camera', ''),
(48, 5, 'Camera', ''),
(49, 1, 'Software', ''),
(49, 2, 'Software', ''),
(49, 3, 'Software', ''),
(49, 4, 'Software', ''),
(49, 5, 'Software', ''),
(50, 1, 'Laptops &amp; Notebooks', ''),
(50, 2, 'Laptops &amp; Notebooks', ''),
(50, 3, 'Laptops &amp; Notebooks', ''),
(50, 4, 'Laptops &amp; Notebooks', ''),
(50, 5, 'Laptops &amp; Notebooks', ''),
(51, 1, 'Desktops', ''),
(51, 2, 'Desktops', ''),
(51, 3, 'Desktops', ''),
(51, 4, 'Desktops', ''),
(51, 5, 'Desktops', ''),
(52, 1, 'Phones &amp; PDAs', ''),
(52, 2, 'Phones &amp; PDAs', ''),
(52, 3, 'Phones &amp; PDAs', ''),
(52, 4, 'Phones &amp; PDAs', ''),
(52, 5, 'Phones &amp; PDAs', ''),
(53, 1, 'Macs', ''),
(53, 2, 'Macs', ''),
(53, 3, 'Macs', ''),
(53, 4, 'Macs', ''),
(53, 5, 'Macs', ''),
(54, 1, 'Windows', ''),
(54, 2, 'Windows', ''),
(54, 3, 'Windows', ''),
(54, 4, 'Windows', ''),
(54, 5, 'Windows', ''),
(55, 1, 'Mac', ''),
(55, 2, 'Mac', ''),
(55, 3, 'Mac', ''),
(55, 4, 'Mac', ''),
(55, 5, 'Mac', ''),
(56, 1, 'PC', ''),
(56, 2, 'PC', ''),
(56, 3, 'PC', ''),
(56, 4, 'PC', ''),
(56, 5, 'PC', ''),
(57, 1, 'Web Cameras', ''),
(57, 2, 'Web Cameras', ''),
(57, 3, 'Web Cameras', ''),
(57, 4, 'Web Cameras', ''),
(57, 5, 'Web Cameras', ''),
(58, 1, 'Monitors', ''),
(58, 2, 'Monitors', ''),
(58, 3, 'Monitors', ''),
(58, 4, 'Monitors', ''),
(58, 5, 'Monitors', ''),
(59, 1, 'Mice and Trackballs', ''),
(59, 2, 'Mice and Trackballs', ''),
(59, 3, 'Mice and Trackballs', ''),
(59, 4, 'Mice and Trackballs', ''),
(59, 5, 'Mice and Trackballs', ''),
(60, 1, 'Printers', ''),
(60, 2, 'Printers', ''),
(60, 3, 'Printers', ''),
(60, 4, 'Printers', ''),
(60, 5, 'Printers', ''),
(61, 1, 'Scanners', ''),
(61, 2, 'Scanners', ''),
(61, 3, 'Scanners', ''),
(61, 4, 'Scanners', ''),
(61, 5, 'Scanners', ''),
(62, 1, 'test 2', ''),
(62, 2, 'test 2', ''),
(62, 3, 'test 2', ''),
(62, 4, 'test 2', ''),
(62, 5, 'test 2', ''),
(63, 1, 'test 1', ''),
(63, 2, 'test 1', ''),
(63, 3, 'test 1', ''),
(63, 4, 'test 1', ''),
(63, 5, 'test 1', ''),
(64, 1, 'test 18', ''),
(64, 2, 'test 18', ''),
(64, 3, 'test 18', ''),
(64, 4, 'test 18', ''),
(64, 5, 'test 18', ''),
(65, 1, 'test 19', ''),
(65, 2, 'test 19', ''),
(65, 3, 'test 19', ''),
(65, 4, 'test 19', ''),
(65, 5, 'test 19', ''),
(66, 1, 'test 20', ''),
(66, 2, 'test 20', ''),
(66, 3, 'test 20', ''),
(66, 4, 'test 20', ''),
(66, 5, 'test 20', ''),
(67, 1, 'test 21', ''),
(67, 2, 'test 21', ''),
(67, 3, 'test 21', ''),
(67, 4, 'test 21', ''),
(67, 5, 'test 21', ''),
(68, 1, 'test 22', ''),
(68, 2, 'test 22', ''),
(68, 3, 'test 22', ''),
(68, 4, 'test 22', ''),
(68, 5, 'test 22', ''),
(69, 1, 'test 23', ''),
(69, 2, 'test 23', ''),
(69, 3, 'test 23', ''),
(69, 4, 'test 23', ''),
(69, 5, 'test 23', ''),
(70, 1, 'test 24', ''),
(70, 2, 'test 24', ''),
(70, 3, 'test 24', ''),
(70, 4, 'test 24', ''),
(70, 5, 'test 24', ''),
(71, 1, 'test 17', ''),
(71, 2, 'test 17', ''),
(71, 3, 'test 17', ''),
(71, 4, 'test 17', ''),
(71, 5, 'test 17', ''),
(72, 1, 'test 16', ''),
(72, 2, 'test 16', ''),
(72, 3, 'test 16', ''),
(72, 4, 'test 16', ''),
(72, 5, 'test 16', ''),
(73, 1, 'test 15', ''),
(73, 2, 'test 15', ''),
(73, 3, 'test 15', ''),
(73, 4, 'test 15', ''),
(73, 5, 'test 15', ''),
(74, 1, 'test 5', ''),
(74, 2, 'test 5', ''),
(74, 3, 'test 5', ''),
(74, 4, 'test 5', ''),
(74, 5, 'test 5', ''),
(75, 1, 'test 4', ''),
(75, 2, 'test 4', ''),
(75, 3, 'test 4', ''),
(75, 4, 'test 4', ''),
(75, 5, 'test 4', ''),
(76, 1, 'test 6', ''),
(76, 2, 'test 6', ''),
(76, 3, 'test 6', ''),
(76, 4, 'test 6', ''),
(76, 5, 'test 6', ''),
(77, 1, 'test 7', ''),
(77, 2, 'test 7', ''),
(77, 3, 'test 7', ''),
(77, 4, 'test 7', ''),
(77, 5, 'test 7', ''),
(78, 1, 'test 8', ''),
(78, 2, 'test 8', ''),
(78, 3, 'test 8', ''),
(78, 4, 'test 8', ''),
(78, 5, 'test 8', ''),
(79, 1, 'test 9', ''),
(79, 2, 'test 9', ''),
(79, 3, 'test 9', ''),
(79, 4, 'test 9', ''),
(79, 5, 'test 9', ''),
(80, 1, 'test 11', ''),
(80, 2, 'test 11', ''),
(80, 3, 'test 11', ''),
(80, 4, 'test 11', ''),
(80, 5, 'test 11', ''),
(81, 1, 'test 12', ''),
(81, 2, 'test 12', ''),
(81, 3, 'test 12', ''),
(81, 4, 'test 12', ''),
(81, 5, 'test 12', ''),
(82, 1, 'test 25', ''),
(82, 2, 'test 25', ''),
(82, 3, 'test 25', ''),
(82, 4, 'test 25', ''),
(82, 5, 'test 25', ''),
(83, 1, ' Furniture', ''),
(83, 2, 'ذلك أم عملية المعاهدات. جُل ثم', ''),
(84, 2, 'ذلك أم عملية المعاهدات. جُل ثم', ''),
(84, 1, 'Clothing &amp; Accessories', ''),
(5, 2, 'عليها اقتصادية أم بال,', ''),
(38, 1, 'Blogs', ''),
(85, 1, 'Baby, Kids &amp; Toys', ''),
(85, 2, 'ذلك أم عملية المعاهدات. جُل ثم', ''),
(38, 2, 'عليها اقتصادية أم بال,', ''),
(40, 2, 'بوزيرها حول', ''),
(40, 1, 'Home', ''),
(3, 2, 'بوزيرها حول', ''),
(44, 2, 'تماس با ما', ''),
(86, 1, 'Sale', ''),
(86, 2, 'Sale', ''),
(41, 1, 'NEW', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_megamenu_widgets`
--

DROP TABLE IF EXISTS `oc_megamenu_widgets`;
CREATE TABLE `oc_megamenu_widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `type` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `oc_megamenu_widgets`
--

INSERT INTO `oc_megamenu_widgets` (`id`, `name`, `type`, `params`, `store_id`) VALUES
(1, 'Video Widget', 'video_code', 'a:1:{s:10:"video_code";s:185:"&lt;iframe width=&quot;480&quot; height=&quot;300&quot; src=&quot;//www.youtube.com/embed/uTPjk4enrF8&quot; style=&quot;border:none&quot; allowfullscreen=&quot;&quot;&gt;&lt;/iframe&gt;";}', 0),
(2, 'Last Tweets', 'html', 'a:1:{s:4:"html";a:2:{i:1;s:438:"&lt;p class=&quot;title&quot;&gt;MAKES UP PHOTOSHOP&lt;/p&gt;\r\n\r\n&lt;p&gt;\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet laboriosam provident at optio reiciendis culpa reprehenderit\r\n&lt;/p&gt; \r\n&lt;br/&gt;\r\n&lt;p&gt;MAKES UP PHOTOSHOP&lt;/p&gt;\r\n&lt;p&gt;\r\n	Voluptates, consectetur soluta laborum maiores alias autem velit deserunt quas quis repellendus beatae veniam omnis sequi expedita nobis debitis\r\n&lt;/p&gt;";i:2;s:617:"&lt;p class=&quot;title&quot;&gt;تشكل فوتوشوب&lt;/p&gt;\r\n&lt;p&gt;\r\nأم كما وتردي الساحل, وحتّى اليها حين في, ثم يذكر تكتيكاً بوزيرها حول. وجزر تنفّس أفريقيا بلا لم, عل هامش الحربية كان. رئيس غرّة،\r\n&lt;/p&gt; \r\n&lt;p&gt;تشكل فوتوشوب&lt;/p&gt;\r\n&lt;p&gt;\r\nأم كما وتردي الساحل, وحتّى اليها حين في, ثم يذكر تكتيكاً بوزيرها حول. وجزر تنفّس أفريقيا بلا لم, عل هامش الحربية كان. رئيس غرّة،\r\n&lt;/p&gt;";}}', 0),
(3, 'Products Newest', 'product_list', 'a:4:{s:9:"list_type";s:6:"newest";s:5:"limit";s:1:"1";s:11:"image_width";s:3:"200";s:12:"image_height";s:3:"274";}', 0),
(4, 'Products In Cat 20', 'product_category', 'a:4:{s:11:"category_id";s:2:"20";s:5:"limit";s:1:"2";s:11:"image_width";s:3:"176";s:12:"image_height";s:3:"132";}', 0),
(5, 'Manufactures', 'banner', 'a:4:{s:8:"group_id";s:1:"8";s:11:"image_width";s:3:"170";s:12:"image_height";s:2:"58";s:5:"limit";s:2:"16";}', 0),
(6, 'PavoThemes Feed', 'feed', 'a:1:{s:8:"feed_url";s:55:"http://www.pavothemes.com/opencart-themes.feed?type=rss";}', 0),
(7, 'Malesuada ', 'html', 'a:1:{s:4:"html";a:2:{i:1;s:706:"&lt;ul&gt;\r\n  &lt;li&gt;\r\n    &lt;a href=&quot;#&quot;&gt;Phasellus Purus&lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;    \r\n    &lt;a href=&quot;#&quot;&gt;Bags &amp; Purses&lt;/a&gt;\r\n  &lt;/li&gt; \r\n  &lt;li&gt;\r\n    &lt;a href=&quot;#&quot;&gt;Belts&lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;\r\n    &lt;a href=&quot;#&quot;&gt;Gloves&lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;\r\n    &lt;a href=&quot;#&quot;&gt;Jewellery&lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;\r\n    &lt;a href=&quot;#&quot;&gt;Sunglasses&lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;\r\n    &lt;a href=&quot;#&quot;&gt;Hair Accessories&lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;\r\n    &lt;a href=&quot;#&quot;&gt;Tristique Turpis&lt;/a&gt;\r\n  &lt;/li&gt;\r\n&lt;/ul&gt;";i:2;s:706:"&lt;ul&gt;\r\n  &lt;li&gt;\r\n    &lt;a href=&quot;#&quot;&gt;Phasellus Purus&lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;    \r\n    &lt;a href=&quot;#&quot;&gt;Bags &amp; Purses&lt;/a&gt;\r\n  &lt;/li&gt; \r\n  &lt;li&gt;\r\n    &lt;a href=&quot;#&quot;&gt;Belts&lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;\r\n    &lt;a href=&quot;#&quot;&gt;Gloves&lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;\r\n    &lt;a href=&quot;#&quot;&gt;Jewellery&lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;\r\n    &lt;a href=&quot;#&quot;&gt;Sunglasses&lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;\r\n    &lt;a href=&quot;#&quot;&gt;Hair Accessories&lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;\r\n    &lt;a href=&quot;#&quot;&gt;Tristique Turpis&lt;/a&gt;\r\n  &lt;/li&gt;\r\n&lt;/ul&gt;";}}', 0),
(8, 'Lingerie', 'html', 'a:1:{s:4:"html";a:2:{i:1;s:648:"&lt;ul&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=information/information&amp;amp;information_id=3&quot;&gt;Privacy Policy&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=information/information&amp;amp;information_id=4&quot;&gt;\r\n			About Us\r\n		&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=information/information&amp;amp;information_id=5&quot;&gt;\r\n			Terms &amp;amp; Conditions\r\n		&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=information/information&amp;amp;information_id=6&quot;&gt;\r\n			Delivery Information\r\n		&lt;/a&gt;\r\n	&lt;/li&gt;		\r\n&lt;/ul&gt;";i:2;s:729:"&lt;ul&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=information/information&amp;amp;information_id=3&quot;&gt;\r\n			تكتيكاً بوزيرها\r\n		&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=information/information&amp;amp;information_id=4&quot;&gt;\r\n			تكتيكاً بوزيرها\r\n		&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=information/information&amp;amp;information_id=5&quot;&gt;\r\n			تكتيكاً &amp;amp; بوزيرها \r\n		&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=information/information&amp;amp;information_id=6&quot;&gt;\r\n			بوزيرها حول. وجزر تنفّس\r\n		&lt;/a&gt;\r\n	&lt;/li&gt;		\r\n&lt;/ul&gt;";}}', 0),
(9, 'Clothing', 'html', 'a:1:{s:4:"html";a:2:{i:1;s:1290:"&lt;ul&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=20&amp;amp;product_id=42&quot;&gt;Dresses&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=20&amp;amp;product_id=33&quot;&gt;Jeans &amp; Trousers&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=20&amp;amp;product_id=48&quot;&gt;Blouses &amp; Shirts&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n     &lt;a href=&quot;index.php?route=product/product&amp;amp;path=20&amp;amp;product_id=34&quot;&gt;Tops &amp; T-Shirts&lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=20&amp;amp;product_id=30&quot;&gt;Jackets &amp; Coats&lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=20&amp;amp;product_id=36&quot;&gt;Skirts&lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=20&amp;amp;product_id=31&quot;&gt;Tristique Turpis&lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;\r\n    &lt;a href=&quot;index.php?route=product/product&amp;amp;path=20&amp;amp;product_id=40&quot;&gt;Phasellus leo&lt;/a&gt;\r\n  &lt;/li&gt;\r\n&lt;/ul&gt;";i:2;s:1290:"&lt;ul&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=20&amp;amp;product_id=42&quot;&gt;Dresses&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=20&amp;amp;product_id=33&quot;&gt;Jeans &amp; Trousers&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=20&amp;amp;product_id=48&quot;&gt;Blouses &amp; Shirts&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n     &lt;a href=&quot;index.php?route=product/product&amp;amp;path=20&amp;amp;product_id=34&quot;&gt;Tops &amp; T-Shirts&lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=20&amp;amp;product_id=30&quot;&gt;Jackets &amp; Coats&lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=20&amp;amp;product_id=36&quot;&gt;Skirts&lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=20&amp;amp;product_id=31&quot;&gt;Tristique Turpis&lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;\r\n    &lt;a href=&quot;index.php?route=product/product&amp;amp;path=20&amp;amp;product_id=40&quot;&gt;Phasellus leo&lt;/a&gt;\r\n  &lt;/li&gt;\r\n&lt;/ul&gt;";}}', 0),
(10, 'Baner', 'html', 'a:1:{s:4:"html";a:2:{i:1;s:259:"&lt;img class=&quot;img-responsive&quot; src=&quot;image/data/banner/menu-banner.jpg&quot; alt=&quot;&quot;&gt;\r\n&lt;p style=&quot;padding-top:20px&quot;&gt;This Photoshops consequat ipsum sagittis dccumsan consequat ipsum sagittis cusan psum velit.&lt;/p&gt;";i:2;s:259:"&lt;img class=&quot;img-responsive&quot; src=&quot;image/data/banner/menu-banner.jpg&quot; alt=&quot;&quot;&gt;\r\n&lt;p style=&quot;padding-top:20px&quot;&gt;This Photoshops consequat ipsum sagittis dccumsan consequat ipsum sagittis cusan psum velit.&lt;/p&gt;";}}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option`
--

DROP TABLE IF EXISTS `oc_option`;
CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 2),
(2, 'checkbox', 3),
(4, 'text', 4),
(5, 'select', 1),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 1),
(12, 'date', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_description`
--

DROP TABLE IF EXISTS `oc_option_description`;
CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(8, 1, 'Date'),
(7, 1, 'File'),
(5, 1, 'Select'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'Size'),
(1, 2, 'Radio'),
(2, 2, 'Checkbox'),
(4, 2, 'Text'),
(6, 2, 'Textarea'),
(8, 2, 'Date'),
(7, 2, 'File'),
(5, 2, 'Select'),
(9, 2, 'Time'),
(10, 2, 'Date &amp; Time'),
(12, 2, 'Delivery Date'),
(11, 2, 'Size');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value`
--

DROP TABLE IF EXISTS `oc_option_value`;
CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value_description`
--

DROP TABLE IF EXISTS `oc_option_value_description`;
CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(31, 1, 1, 'Medium'),
(42, 1, 5, 'Yellow'),
(41, 1, 5, 'Green'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(48, 1, 11, 'Large'),
(47, 1, 11, 'Medium'),
(46, 1, 11, 'Small'),
(43, 2, 1, 'Large'),
(32, 2, 1, 'Small'),
(45, 2, 2, 'Checkbox 4'),
(44, 2, 2, 'Checkbox 3'),
(31, 2, 1, 'Medium'),
(42, 2, 5, 'Yellow'),
(41, 2, 5, 'Green'),
(39, 2, 5, 'Red'),
(40, 2, 5, 'Blue'),
(23, 2, 2, 'Checkbox 1'),
(24, 2, 2, 'Checkbox 2'),
(48, 2, 11, 'Large'),
(47, 2, 11, 'Medium'),
(46, 2, 11, 'Small');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order`
--

DROP TABLE IF EXISTS `oc_order`;
CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(32) NOT NULL,
  `payment_company_id` varchar(32) NOT NULL,
  `payment_tax_id` varchar(32) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(32) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_company_id`, `payment_tax_id`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(1, 0, 'INV-2013-00', 0, 'Lexus Next Store', 'http://192.168.1.32/test/lexus_nextstore/', 2, 1, 'admin', 'admin', 'admin@admin.com', '0123456789', '123456', 'admin', 'admin', 'ABC', 'ABC123', '', 'United States', 'United States', 'United States', '123456', 'United States', 223, 'Marshall Islands', 3642, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 'Cash On Delivery', 'cod', 'admin', 'admin', 'ABC', 'United States', 'United States', 'United States', '123456', 'United States', 223, 'Marshall Islands', 3642, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 'Flat Shipping Rate', 'flat.flat', 'Placerat facer possim assum. Typi non habent claritatem insitam', '2505.0000', 1, 0, '0.0000', 1, 2, 'USD', '1.00000000', '192.168.1.32', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:27.0) Gecko/20100101 Firefox/27.0', 'en-US,en;q=0.5', '2014-03-08 13:58:23', '2014-03-08 13:58:31'),
(2, 0, 'INV-2013-00', 0, 'Lexus Next Store', 'http://192.168.1.32/test/lexus_nextstore/', 2, 1, 'admin', 'admin', 'admin@admin.com', '0123456789', '123456', 'admin', 'admin', 'ABC', 'ABC123', '', 'United States', 'United States', 'United States', '123456', 'United States', 223, 'Marshall Islands', 3642, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 'Cash On Delivery', 'cod', 'admin', 'admin', 'ABC', 'United States', 'United States', 'United States', '123456', 'United States', 223, 'Marshall Islands', 3642, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 'Flat Shipping Rate', 'flat.flat', 'Good', '128.0000', 1, 0, '0.0000', 1, 2, 'USD', '1.00000000', '192.168.1.32', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1820.2 Safari/537.36', 'en-US,en;q=0.8', '2014-03-08 14:13:25', '2014-03-08 14:13:28'),
(3, 0, 'INV-2013-00', 0, 'Lexus Next Store', 'http://192.168.1.32/test/lexus_nextstore/', 2, 1, 'admin', 'admin', 'admin@admin.com', '0123456789', '123456', 'admin', 'admin', 'ABC', 'ABC123', '', 'United States', 'United States', 'United States', '123456', 'United States', 223, 'Marshall Islands', 3642, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 'Cash On Delivery', 'cod', 'admin', 'admin', 'ABC', 'United States', 'United States', 'United States', '123456', 'United States', 223, 'Marshall Islands', 3642, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 'Flat Shipping Rate', 'flat.flat', 'Good', '171.0000', 1, 0, '0.0000', 1, 2, 'USD', '1.00000000', '192.168.1.32', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1820.2 Safari/537.36', 'en-US,en;q=0.8', '2014-03-08 14:16:14', '2014-03-08 14:16:18'),
(4, 0, 'INV-2013-00', 0, 'Lexus Next Store', 'http://192.168.1.32/test/lexus_nextstore/', 2, 1, 'admin', 'admin', 'admin@admin.com', '0123456789', '123456', 'admin', 'admin', 'ABC', 'ABC123', '', 'United States', 'United States', 'United States', '123456', 'United States', 223, 'Marshall Islands', 3642, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 'Cash On Delivery', 'cod', 'admin', 'admin', 'ABC', 'United States', 'United States', 'United States', '123456', 'United States', 223, 'Marshall Islands', 3642, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 'Flat Shipping Rate', 'flat.flat', 'Good', '162.0000', 1, 0, '0.0000', 1, 2, 'USD', '1.00000000', '192.168.1.32', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1820.2 Safari/537.36', 'en-US,en;q=0.8', '2014-03-08 14:17:26', '2014-03-08 14:17:29'),
(5, 0, 'INV-2013-00', 0, 'Lexus Fox''s Store', 'http://localhost/opencart/lexus_foxs_store/', 2, 1, 'admin', 'admin', 'admin@admin.com', '0123456789', '123456', 'admin', 'admin', 'ABC', 'ABC123', '', 'United States', 'United States', 'United States', '123456', 'United States', 223, 'Marshall Islands', 3642, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 'Cash On Delivery', 'cod', 'admin', 'admin', 'ABC', 'United States', 'United States', 'United States', '123456', 'United States', 223, 'Marshall Islands', 3642, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 'Flat Shipping Rate', 'flat.flat', '', '1185.0000', 1, 0, '0.0000', 1, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0', 'en-US,en;q=0.5', '2014-07-23 15:54:30', '2014-07-23 15:54:34');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_download`
--

DROP TABLE IF EXISTS `oc_order_download`;
CREATE TABLE `oc_order_download` (
  `order_download_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `remaining` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_field`
--

DROP TABLE IF EXISTS `oc_order_field`;
CREATE TABLE `oc_order_field` (
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` int(128) NOT NULL,
  `value` text NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_id`,`custom_field_id`,`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_fraud`
--

DROP TABLE IF EXISTS `oc_order_fraud`;
CREATE TABLE `oc_order_fraud` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `country_match` varchar(3) NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `high_risk_country` varchar(3) NOT NULL,
  `distance` int(11) NOT NULL,
  `ip_region` varchar(255) NOT NULL,
  `ip_city` varchar(255) NOT NULL,
  `ip_latitude` decimal(10,6) NOT NULL,
  `ip_longitude` decimal(10,6) NOT NULL,
  `ip_isp` varchar(255) NOT NULL,
  `ip_org` varchar(255) NOT NULL,
  `ip_asnum` int(11) NOT NULL,
  `ip_user_type` varchar(255) NOT NULL,
  `ip_country_confidence` varchar(3) NOT NULL,
  `ip_region_confidence` varchar(3) NOT NULL,
  `ip_city_confidence` varchar(3) NOT NULL,
  `ip_postal_confidence` varchar(3) NOT NULL,
  `ip_postal_code` varchar(10) NOT NULL,
  `ip_accuracy_radius` int(11) NOT NULL,
  `ip_net_speed_cell` varchar(255) NOT NULL,
  `ip_metro_code` int(3) NOT NULL,
  `ip_area_code` int(3) NOT NULL,
  `ip_time_zone` varchar(255) NOT NULL,
  `ip_region_name` varchar(255) NOT NULL,
  `ip_domain` varchar(255) NOT NULL,
  `ip_country_name` varchar(255) NOT NULL,
  `ip_continent_code` varchar(2) NOT NULL,
  `ip_corporate_proxy` varchar(3) NOT NULL,
  `anonymous_proxy` varchar(3) NOT NULL,
  `proxy_score` int(3) NOT NULL,
  `is_trans_proxy` varchar(3) NOT NULL,
  `free_mail` varchar(3) NOT NULL,
  `carder_email` varchar(3) NOT NULL,
  `high_risk_username` varchar(3) NOT NULL,
  `high_risk_password` varchar(3) NOT NULL,
  `bin_match` varchar(10) NOT NULL,
  `bin_country` varchar(2) NOT NULL,
  `bin_name_match` varchar(3) NOT NULL,
  `bin_name` varchar(255) NOT NULL,
  `bin_phone_match` varchar(3) NOT NULL,
  `bin_phone` varchar(32) NOT NULL,
  `customer_phone_in_billing_location` varchar(8) NOT NULL,
  `ship_forward` varchar(3) NOT NULL,
  `city_postal_match` varchar(3) NOT NULL,
  `ship_city_postal_match` varchar(3) NOT NULL,
  `score` decimal(10,5) NOT NULL,
  `explanation` text NOT NULL,
  `risk_score` decimal(10,5) NOT NULL,
  `queries_remaining` int(11) NOT NULL,
  `maxmind_id` varchar(8) NOT NULL,
  `error` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_history`
--

DROP TABLE IF EXISTS `oc_order_history`;
CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(5) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `oc_order_history`
--

INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(1, 1, 1, 1, '', '2014-03-08 13:58:31'),
(2, 2, 1, 1, '', '2014-03-08 14:13:28'),
(3, 3, 1, 1, '', '2014-03-08 14:16:18'),
(4, 4, 1, 1, '', '2014-03-08 14:17:29'),
(5, 5, 1, 1, '', '2014-07-23 15:54:34');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_option`
--

DROP TABLE IF EXISTS `oc_order_option`;
CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_product`
--

DROP TABLE IF EXISTS `oc_order_product`;
CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(1, 1, 34, 'Canon EOS 40D 10.1MP SLR Camera', 'Product 7', 5, '500.0000', '2500.0000', '0.0000', 0),
(2, 2, 53, 'Electrolux EL 6988D Oxygen Canister', 'Product 12', 1, '58.0000', '58.0000', '0.0000', 0),
(3, 2, 54, 'Electrolux EL 6988D Oxygen Canister', 'Product 12', 1, '65.0000', '65.0000', '0.0000', 0),
(4, 3, 51, 'Canon EOS 40D 10.1MP SLR Camera', 'Model 2', 1, '67.0000', '67.0000', '0.0000', 0),
(5, 3, 52, 'Canon EOS 40D 10.1MP SLR Camera', 'Product 6', 1, '99.0000', '99.0000', '0.0000', 0),
(6, 4, 51, 'Canon EOS 40D 10.1MP SLR Camera', 'Model 2', 1, '67.0000', '67.0000', '0.0000', 0),
(7, 4, 48, 'Canon EOS 40D 10.1MP SLR Camera', 'product 20', 1, '90.0000', '90.0000', '0.0000', 0),
(8, 5, 48, 'Skinny Fit Suit Jacket in Black', 'product11', 2, '90.0000', '180.0000', '0.0000', 0),
(9, 5, 44, 'Skinny Fit Suit Oxygen Canister', 'Product17', 1, '1000.0000', '1000.0000', '0.0000', 700);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring`
--

DROP TABLE IF EXISTS `oc_order_recurring`;
CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `status` tinyint(4) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `profile_name` varchar(255) NOT NULL,
  `profile_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `profile_reference` varchar(255) NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring_transaction`
--

DROP TABLE IF EXISTS `oc_order_recurring_transaction`;
CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_status`
--

DROP TABLE IF EXISTS `oc_order_status`;
CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(7, 1, 'Canceled'),
(5, 1, 'Complete'),
(8, 1, 'Denied'),
(9, 1, 'Canceled Reversal'),
(10, 1, 'Failed'),
(11, 1, 'Refunded'),
(12, 1, 'Reversed'),
(13, 1, 'Chargeback'),
(1, 1, 'Pending'),
(16, 1, 'Voided'),
(15, 1, 'Processed'),
(14, 1, 'Expired'),
(2, 2, 'Processing'),
(3, 2, 'Shipped'),
(7, 2, 'Canceled'),
(5, 2, 'Complete'),
(8, 2, 'Denied'),
(9, 2, 'Canceled Reversal'),
(10, 2, 'Failed'),
(11, 2, 'Refunded'),
(12, 2, 'Reversed'),
(13, 2, 'Chargeback'),
(1, 2, 'Pending'),
(16, 2, 'Voided'),
(15, 2, 'Processed'),
(14, 2, 'Expired');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_total`
--

DROP TABLE IF EXISTS `oc_order_total`;
CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `idx_orders_total_orders_id` (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `text`, `value`, `sort_order`) VALUES
(1, 1, 'sub_total', 'Sub-Total', '$2,500.00', '2500.0000', 1),
(2, 1, 'shipping', 'Flat Shipping Rate', '$5.00', '5.0000', 3),
(3, 1, 'total', 'Total', '$2,505.00', '2505.0000', 9),
(4, 2, 'sub_total', 'Sub-Total', '$123.00', '123.0000', 1),
(5, 2, 'shipping', 'Flat Shipping Rate', '$5.00', '5.0000', 3),
(6, 2, 'total', 'Total', '$128.00', '128.0000', 9),
(7, 3, 'sub_total', 'Sub-Total', '$166.00', '166.0000', 1),
(8, 3, 'shipping', 'Flat Shipping Rate', '$5.00', '5.0000', 3),
(9, 3, 'total', 'Total', '$171.00', '171.0000', 9),
(10, 4, 'sub_total', 'Sub-Total', '$157.00', '157.0000', 1),
(11, 4, 'shipping', 'Flat Shipping Rate', '$5.00', '5.0000', 3),
(12, 4, 'total', 'Total', '$162.00', '162.0000', 9),
(13, 5, 'sub_total', 'Sub-Total', '$1,180.00', '1180.0000', 1),
(14, 5, 'shipping', 'Flat Shipping Rate', '$5.00', '5.0000', 3),
(15, 5, 'total', 'Total', '$1,185.00', '1185.0000', 9);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_voucher`
--

DROP TABLE IF EXISTS `oc_order_voucher`;
CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavads_banner`
--

DROP TABLE IF EXISTS `oc_pavads_banner`;
CREATE TABLE `oc_pavads_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `store_id` tinyint(4) DEFAULT '0',
  `params` text,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_pavads_banner`
--

INSERT INTO `oc_pavads_banner` (`banner_id`, `name`, `status`, `store_id`, `params`) VALUES
(2, 'banner1', 1, 0, 'a:4:{s:6:"action";s:9:"save_stay";s:4:"name";s:7:"banner1";s:6:"status";s:1:"1";s:7:"banners";a:6:{i:1;a:3:{s:5:"image";s:23:"data/banner/banner6.jpg";s:4:"link";s:1:"#";s:7:"caption";a:2:{i:1;s:0:"";i:2;s:0:"";}}i:2;a:3:{s:5:"image";s:23:"data/banner/banner7.jpg";s:4:"link";s:1:"#";s:7:"caption";a:2:{i:1;s:0:"";i:2;s:0:"";}}i:3;a:3:{s:5:"image";s:23:"data/banner/banner8.jpg";s:4:"link";s:1:"#";s:7:"caption";a:2:{i:1;s:201:"&lt;p&gt;&lt;a class=&quot;btn-shop-now&quot; href=&quot;#&quot;&gt;&lt;span&gt;Shop now&lt;/span&gt;&lt;img alt=&quot;icon&quot; src=&quot;image/data/banner/arrow.png&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n";i:2;s:201:"&lt;p&gt;&lt;a class=&quot;btn-shop-now&quot; href=&quot;#&quot;&gt;&lt;span&gt;Shop now&lt;/span&gt;&lt;img alt=&quot;icon&quot; src=&quot;image/data/banner/arrow.png&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n";}}i:4;a:3:{s:5:"image";s:23:"data/banner/banner9.jpg";s:4:"link";s:1:"#";s:7:"caption";a:2:{i:1;s:210:"&lt;p&gt;&lt;a class=&quot;btn-shop-now btn-left&quot; href=&quot;#&quot;&gt;&lt;span&gt;Shop now&lt;/span&gt;&lt;img alt=&quot;icon&quot; src=&quot;image/data/banner/arrow.png&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n";i:2;s:210:"&lt;p&gt;&lt;a class=&quot;btn-shop-now btn-left&quot; href=&quot;#&quot;&gt;&lt;span&gt;Shop now&lt;/span&gt;&lt;img alt=&quot;icon&quot; src=&quot;image/data/banner/arrow.png&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n";}}i:5;a:3:{s:5:"image";s:24:"data/banner/banner10.jpg";s:4:"link";s:1:"#";s:7:"caption";a:2:{i:1;s:211:"&lt;p&gt;&lt;a class=&quot;btn-shop-now btn-right&quot; href=&quot;#&quot;&gt;&lt;span&gt;Shop now&lt;/span&gt;&lt;img alt=&quot;icon&quot; src=&quot;image/data/banner/arrow.png&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n";i:2;s:211:"&lt;p&gt;&lt;a class=&quot;btn-shop-now btn-right&quot; href=&quot;#&quot;&gt;&lt;span&gt;Shop now&lt;/span&gt;&lt;img alt=&quot;icon&quot; src=&quot;image/data/banner/arrow.png&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n";}}i:6;a:3:{s:5:"image";s:24:"data/banner/banner11.jpg";s:4:"link";s:1:"#";s:7:"caption";a:2:{i:1;s:201:"&lt;p&gt;&lt;a class=&quot;btn-shop-now&quot; href=&quot;#&quot;&gt;&lt;span&gt;Shop now&lt;/span&gt;&lt;img alt=&quot;icon&quot; src=&quot;image/data/banner/arrow.png&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n";i:2;s:201:"&lt;p&gt;&lt;a class=&quot;btn-shop-now&quot; href=&quot;#&quot;&gt;&lt;span&gt;Shop now&lt;/span&gt;&lt;img alt=&quot;icon&quot; src=&quot;image/data/banner/arrow.png&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n";}}}}'),
(3, 'promotions', 1, 0, 'a:4:{s:6:"action";s:9:"save_stay";s:4:"name";s:10:"promotions";s:6:"status";s:1:"1";s:7:"banners";a:3:{i:1;a:3:{s:5:"image";s:28:"data/banner/promotions-1.jpg";s:4:"link";s:1:"#";s:7:"caption";a:2:{i:1;s:328:"&lt;p class=&quot;title&quot;&gt;We pick. you shop&lt;/p&gt;\r\n\r\n&lt;p class=&quot;text&quot;&gt;Editor selections from our May issue available through online retailer&lt;/p&gt;\r\n\r\n&lt;p class=&quot;button hidden-md hidden-sm hidden-xs&quot;&gt;&lt;a class=&quot;btn btn-outline-small&quot;&gt;View our pick&lt;/a&gt;&lt;/p&gt;\r\n";i:2;s:326:"&lt;p class=&quot;title&quot;&gt;We pick. you shop&lt;/p&gt;\r\n\r\n&lt;p class=&quot;text&quot;&gt;Editor selections from our May issue available through online retailer&lt;/p&gt;\r\n\r\n&lt;p class=&quot;button hidden-md hidden-sm hidden-xs&quot;&gt;&lt;a class=&quot;btn btn-outline-small&quot;&gt;View our pick&lt;/a&gt;&lt;/p&gt;";}}i:2;a:3:{s:5:"image";s:28:"data/banner/promotions-2.jpg";s:4:"link";s:1:"#";s:7:"caption";a:2:{i:1;s:294:"&lt;p class=&quot;title&quot;&gt;wedding suit&lt;/p&gt;\r\n\r\n&lt;p class=&quot;text&quot;&gt;Adding A Creative Twist To Corporate Attire&lt;/p&gt;\r\n\r\n&lt;p class=&quot;button hidden-md hidden-sm hidden-xs&quot;&gt;&lt;a class=&quot;btn btn-outline-small&quot;&gt;View latest&lt;/a&gt;&lt;/p&gt;\r\n";i:2;s:294:"&lt;p class=&quot;title&quot;&gt;wedding suit&lt;/p&gt;\r\n\r\n&lt;p class=&quot;text&quot;&gt;Adding A Creative Twist To Corporate Attire&lt;/p&gt;\r\n\r\n&lt;p class=&quot;button hidden-md hidden-sm hidden-xs&quot;&gt;&lt;a class=&quot;btn btn-outline-small&quot;&gt;View latest&lt;/a&gt;&lt;/p&gt;\r\n";}}i:3;a:3:{s:5:"image";s:28:"data/banner/promotions-3.jpg";s:4:"link";s:1:"#";s:7:"caption";a:2:{i:1;s:309:"&lt;p class=&quot;title&quot;&gt;Your Personal Style&lt;/p&gt;\r\n\r\n&lt;p class=&quot;text&quot;&gt;A man must own his clothes and the way he wears them&lt;/p&gt;\r\n\r\n&lt;p class=&quot;button hidden-md hidden-sm hidden-xs&quot;&gt;&lt;a class=&quot;btn btn-outline-small&quot;&gt;View style&lt;/a&gt;&lt;/p&gt;\r\n";i:2;s:309:"&lt;p class=&quot;title&quot;&gt;Your Personal Style&lt;/p&gt;\r\n\r\n&lt;p class=&quot;text&quot;&gt;A man must own his clothes and the way he wears them&lt;/p&gt;\r\n\r\n&lt;p class=&quot;button hidden-md hidden-sm hidden-xs&quot;&gt;&lt;a class=&quot;btn btn-outline-small&quot;&gt;View style&lt;/a&gt;&lt;/p&gt;\r\n";}}}}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavblog_blog`
--

DROP TABLE IF EXISTS `oc_pavblog_blog`;
CREATE TABLE `oc_pavblog_blog` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hits` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `date_modified` date NOT NULL,
  `video_code` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `tags` varchar(255) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `oc_pavblog_blog`
--

INSERT INTO `oc_pavblog_blog` (`blog_id`, `category_id`, `position`, `created`, `status`, `user_id`, `hits`, `image`, `meta_keyword`, `meta_description`, `meta_title`, `date_modified`, `video_code`, `params`, `tags`, `featured`, `keyword`) VALUES
(7, 21, 0, '2014-07-18', 1, 1, 73, 'data/pavblog/pav-c1.jpg', '', '', '', '2014-07-18', '', '', 'joomla, prestashop, magento', 1, ''),
(9, 21, 1, '2013-03-16', 1, 1, 90, 'data/pavblog/pav-c2.jpg', '', '', '', '2014-07-18', '', '', 'prestashop, magento', 0, ''),
(10, 21, 2, '2013-03-12', 1, 1, 244, 'data/pavblog/pav-c3.jpg', 'test test', '', 'Custom SEO Titlte', '2014-07-18', '', '', 'prestashop', 0, ''),
(11, 21, 3, '2013-03-11', 1, 1, 69, 'data/pavblog/pav-c5.jpg', '', '', '', '2014-03-01', '', '', 'opencart', 0, ''),
(12, 1, 4, '2012-03-01', 1, 1, 42, 'data/pavblog/pav-c4.jpg', '', '', '', '2014-07-18', '', '', 'joomla, prestashop, magento', 0, ''),
(13, 1, 5, '2012-11-30', 1, 1, 0, 'data/pavblog/pav-c6.jpg', '', '', '', '2014-07-18', '', '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavblog_blog_description`
--

DROP TABLE IF EXISTS `oc_pavblog_blog_description`;
CREATE TABLE `oc_pavblog_blog_description` (
  `blog_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pavblog_blog_description`
--

INSERT INTO `oc_pavblog_blog_description` (`blog_id`, `language_id`, `title`, `description`, `content`) VALUES
(11, 1, 'Popular Jeans New Collection ', '&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsum, facere aliquam excepturi qui modi nihil ipsam aut quasi pariatur sint.&lt;/p&gt;\r\n', '&lt;div class=&quot;itemFullText&quot;&gt;\r\n&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;\r\n\r\n&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;\r\n&lt;/div&gt;\r\n'),
(11, 2, 'عدم بل عرفها للسيطرة وأكثرها, ثم أطراف الباهضة', '&lt;p&gt;في الأثناء، ويكيبيديا البريطاني حدة. ما بحق الأثنان المقاومة الإمبراطورية. من أما المتّبعة استطاعوا, حول مكّن كردة السوفييتي تم. حتى وزارة المعاهدات ويكيبيديا من, كلا أي دأبوا السيء, كلا دخول ديسمبر الأوضاع أي.&lt;/p&gt;\r\n', '&lt;p&gt;أم كما وتردي الساحل, وحتّى اليها حين في, ثم يذكر تكتيكاً بوزيرها حول. وجزر تنفّس أفريقيا بلا لم, عل هامش الحربية كان. رئيس غرّة، والألمانية، أخذ كل. هو ضرب طوكيو للجزر الصعداء. في ماذا مناوشات والروسية حدى. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،. في الأثناء، ويكيبيديا البريطاني حدة. ما بحق الأثنان المقاومة الإمبراطورية. من أما المتّبعة استطاعوا, حول مكّن كردة السوفييتي تم. حتى وزارة المعاهدات ويكيبيديا من, كلا أي دأبوا السيء, كلا دخول ديسمبر الأوضاع أي. مما و بأيدي القادة والكساد, الا ثم تصرّف الغالي سنغافورة. عدد ثم تجهيز الجنرال بالدبابات. عليها اقتصادية أم بال, بل جورج أثره، جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد تُصب منتصف وفنلندا, و الى عليها وإعلان الإتحاد. أرغم الفاشي النازية لم بعد, أي خلاف لدحر استسلام بها. قصف أدنى ومدني، و, جوي تشرشل المحور، الياباني، إذ.&lt;/p&gt;\r\n\r\n&lt;p&gt;أم كما وتردي الساحل, وحتّى اليها حين في, ثم يذكر تكتيكاً بوزيرها حول. وجزر تنفّس أفريقيا بلا لم, عل هامش الحربية كان. رئيس غرّة، والألمانية، أخذ كل. هو ضرب طوكيو للجزر الصعداء. في ماذا مناوشات والروسية حدى. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،. في الأثناء، ويكيبيديا البريطاني حدة. ما بحق الأثنان المقاومة الإمبراطورية. من أما المتّبعة استطاعوا, حول مكّن كردة السوفييتي تم. حتى وزارة المعاهدات ويكيبيديا من, كلا أي دأبوا السيء, كلا دخول ديسمبر الأوضاع أي. مما و بأيدي القادة والكساد, الا ثم تصرّف الغالي سنغافورة. عدد ثم تجهيز الجنرال بالدبابات. عليها اقتصادية أم بال, بل جورج أثره، جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد تُصب منتصف وفنلندا, و الى عليها وإعلان الإتحاد. أرغم الفاشي النازية لم بعد, أي خلاف لدحر استسلام بها. قصف أدنى ومدني، و, جوي تشرشل المحور، الياباني، إذ.&lt;/p&gt;\r\n'),
(9, 1, 'Fox’s Collection', '&lt;p&gt;Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claras est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.&lt;/p&gt;\r\n', '&lt;div class=&quot;itemFullText&quot;&gt;\r\n&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;\r\n\r\n&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;\r\n&lt;/div&gt;\r\n'),
(9, 2, 'Fox’s Collection', '&lt;p&gt;Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claras est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.&lt;/p&gt;\r\n', '&lt;p&gt;أم كما وتردي الساحل, وحتّى اليها حين في, ثم يذكر تكتيكاً بوزيرها حول. وجزر تنفّس أفريقيا بلا لم, عل هامش الحربية كان. رئيس غرّة، والألمانية، أخذ كل. هو ضرب طوكيو للجزر الصعداء. في ماذا مناوشات والروسية حدى. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،.&lt;/p&gt;\r\n'),
(10, 1, 'special items', '&lt;p&gt;Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non&amp;nbsp; mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.&lt;/p&gt;\r\n', '&lt;p&gt;Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&lt;/p&gt;\r\n'),
(10, 2, 'special items', '&lt;p&gt;Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non&amp;nbsp; mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.&lt;/p&gt;\r\n', '&lt;p&gt;أم كما وتردي الساحل, وحتّى اليها حين في, ثم يذكر تكتيكاً بوزيرها حول. وجزر تنفّس أفريقيا بلا لم, عل هامش الحربية كان. رئيس غرّة، والألمانية، أخذ كل. هو ضرب طوكيو للجزر الصعداء. في ماذا مناوشات والروسية حدى. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،. في الأثناء، ويكيبيديا البريطاني حدة. ما بحق الأثنان المقاومة الإمبراطورية. من أما المتّبعة استطاعوا, حول مكّن كردة السوفييتي تم. حتى وزارة المعاهدات ويكيبيديا من, كلا أي دأبوا السيء, كلا دخول ديسمبر الأوضاع أي. مما و بأيدي القادة والكساد, الا ثم تصرّف الغالي سنغافورة. عدد ثم تجهيز الجنرال بالدبابات. عليها اقتصادية أم بال, بل جورج أثره، جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد تُصب منتصف وفنلندا, و الى عليها وإعلان الإتحاد. أرغم الفاشي النازية لم بعد, أي خلاف لدحر استسلام بها. قصف أدنى ومدني، و, جوي تشرشل المحور، الياباني، إذ.&lt;/p&gt;\r\n\r\n&lt;p&gt;أم كما وتردي الساحل, وحتّى اليها حين في, ثم يذكر تكتيكاً بوزيرها حول. وجزر تنفّس أفريقيا بلا لم, عل هامش الحربية كان. رئيس غرّة، والألمانية، أخذ كل. هو ضرب طوكيو للجزر الصعداء. في ماذا مناوشات والروسية حدى. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،. في الأثناء، ويكيبيديا البريطاني حدة. ما بحق الأثنان المقاومة الإمبراطورية. من أما المتّبعة استطاعوا, حول مكّن كردة السوفييتي تم. حتى وزارة المعاهدات ويكيبيديا من, كلا أي دأبوا السيء, كلا دخول ديسمبر الأوضاع أي. مما و بأيدي القادة والكساد, الا ثم تصرّف الغالي سنغافورة. عدد ثم تجهيز الجنرال بالدبابات. عليها اقتصادية أم بال, بل جورج أثره، جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد تُصب منتصف وفنلندا, و الى عليها وإعلان الإتحاد. أرغم الفاشي النازية لم بعد, أي خلاف لدحر استسلام بها. قصف أدنى ومدني، و, جوي تشرشل المحور، الياباني، إذ.&lt;/p&gt;\r\n'),
(12, 1, 'Fashion Brunette Girl', '&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam Ipsum, facere aliquam excepturi qui modi nihil ipsam aut quasi pariatur sint.&lt;/p&gt;\r\n', '&lt;div class=&quot;itemFullText&quot;&gt;\r\n&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;\r\n\r\n&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;\r\n&lt;/div&gt;\r\n'),
(12, 2, 'عدم بل عرفها للسيطرة وأكثرها, ثم أطراف الباهضة', '&lt;p&gt;في الأثناء، ويكيبيديا البريطاني حدة. ما بحق الأثنان المقاومة الإمبراطورية. من أما المتّبعة استطاعوا, حول مكّن كردة السوفييتي تم. حتى وزارة المعاهدات ويكيبيديا من, كلا أي دأبوا السيء, كلا دخول ديسمبر الأوضاع أي.&lt;/p&gt;\r\n', '&lt;p&gt;أم كما وتردي الساحل, وحتّى اليها حين في, ثم يذكر تكتيكاً بوزيرها حول. وجزر تنفّس أفريقيا بلا لم, عل هامش الحربية كان. رئيس غرّة، والألمانية، أخذ كل. هو ضرب طوكيو للجزر الصعداء. في ماذا مناوشات والروسية حدى. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،. في الأثناء، ويكيبيديا البريطاني حدة. ما بحق الأثنان المقاومة الإمبراطورية. من أما المتّبعة استطاعوا, حول مكّن كردة السوفييتي تم. حتى وزارة المعاهدات ويكيبيديا من, كلا أي دأبوا السيء, كلا دخول ديسمبر الأوضاع أي. مما و بأيدي القادة والكساد, الا ثم تصرّف الغالي سنغافورة. عدد ثم تجهيز الجنرال بالدبابات. عليها اقتصادية أم بال, بل جورج أثره، جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد تُصب منتصف وفنلندا, و الى عليها وإعلان الإتحاد. أرغم الفاشي النازية لم بعد, أي خلاف لدحر استسلام بها. قصف أدنى ومدني، و, جوي تشرشل المحور، الياباني، إذ.&lt;/p&gt;\r\n\r\n&lt;p&gt;أم كما وتردي الساحل, وحتّى اليها حين في, ثم يذكر تكتيكاً بوزيرها حول. وجزر تنفّس أفريقيا بلا لم, عل هامش الحربية كان. رئيس غرّة، والألمانية، أخذ كل. هو ضرب طوكيو للجزر الصعداء. في ماذا مناوشات والروسية حدى. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،. في الأثناء، ويكيبيديا البريطاني حدة. ما بحق الأثنان المقاومة الإمبراطورية. من أما المتّبعة استطاعوا, حول مكّن كردة السوفييتي تم. حتى وزارة المعاهدات ويكيبيديا من, كلا أي دأبوا السيء, كلا دخول ديسمبر الأوضاع أي. مما و بأيدي القادة والكساد, الا ثم تصرّف الغالي سنغافورة. عدد ثم تجهيز الجنرال بالدبابات. عليها اقتصادية أم بال, بل جورج أثره، جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد تُصب منتصف وفنلندا, و الى عليها وإعلان الإتحاد. أرغم الفاشي النازية لم بعد, أي خلاف لدحر استسلام بها. قصف أدنى ومدني، و, جوي تشرشل المحور، الياباني، إذ.&lt;/p&gt;\r\n'),
(7, 1, 'lookbook 2014', '&lt;p&gt;Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non&amp;nbsp; mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.&lt;/p&gt;\r\n', '&lt;div class=&quot;itemFullText&quot;&gt;\r\n&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;\r\n\r\n&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;\r\n&lt;/div&gt;\r\n'),
(7, 2, 'lookbook 2014', '&lt;p&gt;Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non&amp;nbsp; mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.&lt;/p&gt;\r\n', '&lt;p&gt;أم كما وتردي الساحل, وحتّى اليها حين في, ثم يذكر تكتيكاً بوزيرها حول. وجزر تنفّس أفريقيا بلا لم, عل هامش الحربية كان. رئيس غرّة، والألمانية، أخذ كل. هو ضرب طوكيو للجزر الصعداء. في ماذا مناوشات والروسية حدى. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،.&lt;/p&gt;\r\n'),
(13, 1, 'special itemss', '&lt;p&gt;Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio&lt;br /&gt;\r\n&amp;nbsp;tincidunt auctor a ornare odio. Sed non&amp;nbsp; mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.&lt;/p&gt;\r\n', '&lt;p&gt;Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio&lt;br /&gt;\r\n&amp;nbsp;tincidunt auctor a ornare odio. Sed non&amp;nbsp; mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.&lt;/p&gt;\r\n\r\n&lt;p&gt;Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio&lt;br /&gt;\r\n&amp;nbsp;tincidunt auctor a ornare odio. Sed non&amp;nbsp; mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.&lt;/p&gt;\r\n'),
(13, 2, 'special itemss', '&lt;p&gt;Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio&lt;br /&gt;\r\n&amp;nbsp;tincidunt auctor a ornare odio. Sed non&amp;nbsp; mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.&lt;/p&gt;\r\n', '&lt;p&gt;Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio&lt;br /&gt;\r\n&amp;nbsp;tincidunt auctor a ornare odio. Sed non&amp;nbsp; mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.&lt;/p&gt;\r\n\r\n&lt;p&gt;Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio&lt;br /&gt;\r\n&amp;nbsp;tincidunt auctor a ornare odio. Sed non&amp;nbsp; mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.&lt;/p&gt;\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavblog_category`
--

DROP TABLE IF EXISTS `oc_pavblog_category`;
CREATE TABLE `oc_pavblog_category` (
  `category_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `is_group` smallint(6) NOT NULL DEFAULT '2',
  `width` varchar(255) DEFAULT NULL,
  `submenu_width` varchar(255) DEFAULT NULL,
  `colum_width` varchar(255) DEFAULT NULL,
  `submenu_colum_width` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `colums` varchar(255) DEFAULT '1',
  `type` varchar(255) NOT NULL,
  `is_content` smallint(6) NOT NULL DEFAULT '2',
  `show_title` smallint(6) NOT NULL DEFAULT '1',
  `meta_keyword` varchar(255) NOT NULL DEFAULT '1',
  `level_depth` smallint(6) NOT NULL DEFAULT '0',
  `published` smallint(6) NOT NULL DEFAULT '1',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position` int(11) unsigned NOT NULL DEFAULT '0',
  `show_sub` smallint(6) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `target` varchar(25) DEFAULT NULL,
  `privacy` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position_type` varchar(25) DEFAULT 'top',
  `menu_class` varchar(25) DEFAULT NULL,
  `description` text,
  `meta_description` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `level` int(11) NOT NULL,
  `left` int(11) NOT NULL,
  `right` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `oc_pavblog_category`
--

INSERT INTO `oc_pavblog_category` (`category_id`, `image`, `parent_id`, `is_group`, `width`, `submenu_width`, `colum_width`, `submenu_colum_width`, `item`, `colums`, `type`, `is_content`, `show_title`, `meta_keyword`, `level_depth`, `published`, `store_id`, `position`, `show_sub`, `url`, `target`, `privacy`, `position_type`, `menu_class`, `description`, `meta_description`, `meta_title`, `level`, `left`, `right`, `keyword`) VALUES
(1, '', 0, 2, NULL, NULL, NULL, NULL, NULL, '1', '', 2, 1, '1', 0, 1, 0, 0, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, -5, 34, 47, ''),
(20, 'data/pavblog/pav-c3.jpg', 22, 2, NULL, NULL, NULL, NULL, NULL, '1', '', 2, 1, '1', 0, 1, 0, 3, 0, NULL, NULL, 0, 'top', 'test test', NULL, '', '', 0, 0, 0, ''),
(21, 'data/pavblog/pav-c1.jpg', 22, 2, NULL, NULL, NULL, NULL, NULL, '1', '', 2, 1, '1', 0, 1, 0, 1, 0, NULL, NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, ''),
(22, 'data/demo/canon_eos_5d_1.jpg', 1, 2, NULL, NULL, NULL, NULL, NULL, '1', '', 2, 1, '1', 0, 1, 0, 1, 0, NULL, NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, ''),
(23, 'data/pavblog/pav-c2.jpg', 22, 2, NULL, NULL, NULL, NULL, NULL, '1', '', 2, 1, '1', 0, 1, 0, 2, 0, NULL, NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, ''),
(24, 'data/logo.png', 1, 2, NULL, NULL, NULL, NULL, NULL, '1', '', 2, 1, '1', 0, 1, 0, 2, 0, NULL, NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, ''),
(25, '', 1, 2, NULL, NULL, NULL, NULL, NULL, '1', '', 2, 1, 'Second Item', 0, 1, 0, 99, 0, NULL, NULL, 0, 'top', '', NULL, 'Second Item', 'Second Item', 0, 0, 0, 'Second Item'),
(26, '', 1, 2, NULL, NULL, NULL, NULL, NULL, '1', '', 2, 1, 'Third Drop', 0, 1, 0, 99, 0, NULL, NULL, 0, 'top', '', NULL, 'Third Drop', 'Third Drop', 0, 0, 0, 'Third Drop'),
(27, '', 1, 2, NULL, NULL, NULL, NULL, NULL, '1', '', 2, 1, 'Technology', 0, 1, 0, 99, 0, NULL, NULL, 0, 'top', '', NULL, 'Technology', 'Technology', 0, 0, 0, 'Technology');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavblog_category_description`
--

DROP TABLE IF EXISTS `oc_pavblog_category_description`;
CREATE TABLE `oc_pavblog_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pavblog_category_description`
--

INSERT INTO `oc_pavblog_category_description` (`category_id`, `language_id`, `title`, `description`) VALUES
(1, 1, 'ROOT', 'Menu Root'),
(21, 1, 'Pages &amp; template', '&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper scelerisque convallis&lt;/p&gt;\r\n'),
(23, 1, 'Pages &amp; template', '&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper scelerisque convallis&lt;/p&gt;\r\n'),
(20, 1, 'Pages &amp; template', '&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper scelerisque convallis&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n'),
(24, 1, 'Homepage &amp; listing', '&lt;p&gt;Description Here&lt;/p&gt;\r\n'),
(25, 1, 'Second Item', '&lt;p&gt;Nostrum, magni, qui aliquam impedit porro provident ipsum facilis molestias reiciendis quod! Optio&lt;/p&gt;\r\n'),
(22, 1, 'Post layout &amp; formats', '&lt;p&gt;Enter your Category 1 Description Here&lt;/p&gt;\r\n'),
(26, 1, 'Third Drop', '&lt;p&gt;Nostrum, magni, qui aliquam impedit porro provident ipsum facilis molestias reiciendis&lt;/p&gt;\r\n'),
(27, 1, 'Technology', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum, magni, qui aliquam impedit porro provident ipsum facilis&lt;/p&gt;\r\n'),
(22, 2, 'ثم يذكر تكتيكاً  أفريقيا', '&lt;p&gt;\r\n	أم كما وتردي الساحل, وحتّى اليها حين في, ثم يذكر تكتيكاً  أفريقيا بلا لم, عل هامش الحربية كان. رئيس غرّة، والألمانية، أخذ كل. هو ضرب طوكيو للجزر الصعداء. في ماذا مناوشات والروسية حدى.\r\n	حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،.\r\n	حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،.\r\n&lt;/p&gt;\r\n'),
(21, 2, 'ثم يذكر تكتيكاً  أفريقيا', '&lt;p&gt;أم كما وتردي الساحل, وحتّى اليها حين في, ثم يذكر تكتيكاً أفريقيا بلا لم, عل هامش الحربية كان. رئيس غرّة، والألمانية، أخذ كل. هو ضرب طوكيو للجزر الصعداء. في ماذا مناوشات والروسية حدى. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،.&lt;/p&gt;\r\n'),
(23, 2, 'ثم يذكر تكتيكاً  أفريقيا', '&lt;p&gt;أم كما وتردي الساحل, وحتّى اليها حين في, ثم يذكر تكتيكاً أفريقيا بلا لم, عل هامش الحربية كان. رئيس غرّة، والألمانية، أخذ كل. هو ضرب طوكيو للجزر الصعداء. في ماذا مناوشات والروسية حدى. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،.&lt;/p&gt;\r\n'),
(20, 2, 'ثم يذكر تكتيكاً  أفريقيا', '&lt;p&gt;أم كما وتردي الساحل, وحتّى اليها حين في, ثم يذكر تكتيكاً أفريقيا بلا لم, عل هامش الحربية كان. رئيس غرّة، والألمانية، أخذ كل. هو ضرب طوكيو للجزر الصعداء. في ماذا مناوشات والروسية حدى. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،.&lt;/p&gt;\r\n'),
(24, 2, 'ثم يذكر تكتيكاً  أفريقيا', '&lt;p&gt;أم كما وتردي الساحل, وحتّى اليها حين في, ثم يذكر تكتيكاً أفريقيا بلا لم, عل هامش الحربية كان. رئيس غرّة، والألمانية، أخذ كل. هو ضرب طوكيو للجزر الصعداء. في ماذا مناوشات والروسية حدى. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،.&lt;/p&gt;\r\n'),
(25, 2, 'ثم يذكر تكتيكاً  أفريقيا', '&lt;p&gt;أم كما وتردي الساحل, وحتّى اليها حين في, ثم يذكر تكتيكاً أفريقيا بلا لم, عل هامش الحربية كان. رئيس غرّة، والألمانية، أخذ كل. هو ضرب طوكيو للجزر الصعداء. في ماذا مناوشات والروسية حدى. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،.&lt;/p&gt;\r\n'),
(26, 2, 'ثم يذكر تكتيكاً  أفريقيا', '&lt;p&gt;أم كما وتردي الساحل, وحتّى اليها حين في, ثم يذكر تكتيكاً أفريقيا بلا لم, عل هامش الحربية كان. رئيس غرّة، والألمانية، أخذ كل. هو ضرب طوكيو للجزر الصعداء. في ماذا مناوشات والروسية حدى. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،.&lt;/p&gt;\r\n'),
(27, 2, 'ثم يذكر تكتيكاً  أفريقيا', '&lt;p&gt;أم كما وتردي الساحل, وحتّى اليها حين في, ثم يذكر تكتيكاً بوزيرها حول. وجزر تنفّس أفريقيا بلا لم, عل هامش الحربية كان. رئيس غرّة،&lt;/p&gt;\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavblog_comment`
--

DROP TABLE IF EXISTS `oc_pavblog_comment`;
CREATE TABLE `oc_pavblog_comment` (
  `comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) unsigned NOT NULL,
  `comment` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `FK_blog_comment` (`blog_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `oc_pavblog_comment`
--

INSERT INTO `oc_pavblog_comment` (`comment_id`, `blog_id`, `comment`, `status`, `created`, `user`, `email`) VALUES
(6, 10, 'Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag', 1, '2013-03-12 14:23:09', 'ha cong tien', 'hatuhn@gmail.com'),
(7, 10, 'Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag', 1, '2013-03-12 14:25:19', 'ha cong tien', 'hatuhn@gmail.com'),
(8, 10, 'Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag', 1, '2013-03-12 14:30:17', 'Test Test ', 'ngoisao@aa.com');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavmap_group_location`
--

DROP TABLE IF EXISTS `oc_pavmap_group_location`;
CREATE TABLE `oc_pavmap_group_location` (
  `group_location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_location_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `oc_pavmap_group_location`
--

INSERT INTO `oc_pavmap_group_location` (`group_location_id`, `name`, `store_id`, `status`) VALUES
(1, 'Default', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavmap_location`
--

DROP TABLE IF EXISTS `oc_pavmap_location`;
CREATE TABLE `oc_pavmap_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_location_id` int(11) NOT NULL,
  `link` text,
  `address` varchar(225) DEFAULT '',
  `latitude` varchar(225) DEFAULT NULL,
  `longitude` varchar(225) DEFAULT NULL,
  `icon` varchar(225) DEFAULT NULL,
  `image` varchar(225) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`location_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `oc_pavmap_location`
--

INSERT INTO `oc_pavmap_location` (`location_id`, `group_location_id`, `link`, `address`, `latitude`, `longitude`, `icon`, `image`, `status`) VALUES
(3, 1, '#', '394-414 Greenpoint Avenue, Brooklyn, NY 11222, USA', '40.732482256666415', '-73.94319683816525', 'data/avata/icon-map.png', 'data/pavmap/address/3.jpg', 1),
(11, 1, '', '79-99 Beaver Street, New York, NY 10005, USA', '40.705423', '-74.008616', 'data/avata/icon-map.png', 'data/avata/picture-1-1399513838.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavmap_location_description`
--

DROP TABLE IF EXISTS `oc_pavmap_location_description`;
CREATE TABLE `oc_pavmap_location_description` (
  `location_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `content` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pavmap_location_description`
--

INSERT INTO `oc_pavmap_location_description` (`location_id`, `language_id`, `title`, `content`) VALUES
(11, 2, 'Location', ''),
(3, 1, 'Location', 'No 11 Sky Tower, Street'),
(3, 2, 'Location', 'No 11 Sky Tower, Street'),
(11, 1, 'Location', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavnewsletter_email`
--

DROP TABLE IF EXISTS `oc_pavnewsletter_email`;
CREATE TABLE `oc_pavnewsletter_email` (
  `email_id` int(11) NOT NULL AUTO_INCREMENT,
  `template_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `attach` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `message` text,
  `customer_group_id` int(11) DEFAULT NULL,
  `affiliate` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `customer` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `product` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `defined` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `special` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `latest` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `popular` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `defined_categories` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `categories` varchar(255) DEFAULT NULL,
  `defined_products` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `defined_products_more` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `only_selected_language` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `to` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  PRIMARY KEY (`email_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavnewsletter_history`
--

DROP TABLE IF EXISTS `oc_pavnewsletter_history`;
CREATE TABLE `oc_pavnewsletter_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `public_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `to` varchar(255) NOT NULL,
  `subject` text,
  `message` text,
  `date_added` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavnewsletter_subscribe`
--

DROP TABLE IF EXISTS `oc_pavnewsletter_subscribe`;
CREATE TABLE `oc_pavnewsletter_subscribe` (
  `subscribe_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT '0',
  `store_id` int(11) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `action` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`subscribe_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `oc_pavnewsletter_subscribe`
--

INSERT INTO `oc_pavnewsletter_subscribe` (`subscribe_id`, `customer_id`, `store_id`, `email`, `action`) VALUES
(1, 0, 0, 'aaa', 1),
(2, 0, 0, 'tuantvb00678@gmail.com', 1),
(3, 0, 0, 'a@gmail.com', 1),
(4, 0, 0, 'Your email address', 1),
(5, 0, 0, 'tuantv@gmail.com', 1),
(6, 0, 0, 'taipd90@gmail.com', 1),
(7, 1, 0, 'taip0422@gmail.com', 1),
(8, 0, 0, 'admin@gmail.com', 1),
(9, 0, 0, 'vana@gmail.com', 1),
(10, 3, 0, 'anh@gmail.com', 1),
(11, 0, 0, 'k@gmail.com', 1),
(12, 0, 0, 'admin@g.com', 1),
(13, 0, 0, 'phamthingoc101089@gmail.com', 1),
(14, 0, 0, 'jik@gmail.com', 1),
(15, 0, 0, 'kom@gmail.com', 1),
(16, 0, 0, 'demo@gmail.com', 1),
(17, 0, 0, 'adfmin@gmail.com', 1),
(18, 0, 0, 'adfmifgn@gmail.com', 1),
(19, 0, 0, 'adfffmin@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavnewsletter_template`
--

DROP TABLE IF EXISTS `oc_pavnewsletter_template`;
CREATE TABLE `oc_pavnewsletter_template` (
  `template_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `hits` tinyint(4) DEFAULT '0',
  `template_file` varchar(200) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `date_added` datetime DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavnewsletter_template_description`
--

DROP TABLE IF EXISTS `oc_pavnewsletter_template_description`;
CREATE TABLE `oc_pavnewsletter_template_description` (
  `template_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `template_message` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavoslidergroups`
--

DROP TABLE IF EXISTS `oc_pavoslidergroups`;
CREATE TABLE `oc_pavoslidergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `oc_pavoslidergroups`
--

INSERT INTO `oc_pavoslidergroups` (`id`, `title`, `params`) VALUES
(1, 'Fox slider', 'a:28:{s:5:"title";s:10:"Fox slider";s:5:"delay";s:4:"6000";s:9:"fullwidth";s:0:"";s:5:"width";s:4:"1170";s:6:"height";s:3:"623";s:12:"touch_mobile";s:1:"1";s:13:"stop_on_hover";s:1:"1";s:12:"shuffle_mode";s:1:"0";s:14:"image_cropping";s:1:"0";s:11:"shadow_type";s:1:"0";s:14:"show_time_line";s:1:"1";s:18:"time_line_position";s:6:"bottom";s:16:"background_color";s:0:"";s:6:"margin";s:1:"0";s:7:"padding";s:1:"0";s:16:"background_image";s:1:"0";s:14:"background_url";s:0:"";s:14:"navigator_type";s:4:"none";s:16:"navigator_arrows";s:16:"verticalcentered";s:16:"navigation_style";s:5:"round";s:17:"offset_horizontal";s:1:"0";s:15:"offset_vertical";s:2:"20";s:14:"show_navigator";s:1:"1";s:20:"hide_navigator_after";s:3:"200";s:15:"thumbnail_width";s:3:"100";s:16:"thumbnail_height";s:2:"50";s:16:"thumbnail_amount";s:1:"5";s:17:"hide_screen_width";s:0:"";}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavosliderlayers`
--

DROP TABLE IF EXISTS `oc_pavosliderlayers`;
CREATE TABLE `oc_pavosliderlayers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `params` text NOT NULL,
  `layersparams` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `oc_pavosliderlayers`
--

INSERT INTO `oc_pavosliderlayers` (`id`, `title`, `parent_id`, `group_id`, `params`, `layersparams`, `image`, `status`, `position`) VALUES
(1, 'Slider 1', 0, 1, 'a:16:{s:2:"id";s:1:"1";s:15:"slider_group_id";s:1:"1";s:12:"slider_title";s:8:"Slider 1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:1:"1";s:12:"slider_image";s:35:"data/layerslider/slider-layer-1.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:6:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:0:"";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:6:"bullet";s:13:"layer_caption";s:6:"Bullet";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:2:"82";s:10:"layer_left";s:3:"580";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:3:"876";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:0:"";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:12:"medium_white";s:13:"layer_caption";s:23:"summer collections 2014";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:14:"easeInOutQuint";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"170";s:10:"layer_left";s:3:"470";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"ltl";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:3:"876";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:0:"";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:9:"big_white";s:13:"layer_caption";s:25:"strength _ASM_ confidence";s:15:"layer_animation";s:3:"lfl";s:12:"layer_easing";s:14:"easeInOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"200";s:10:"layer_left";s:3:"180";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"ltr";s:15:"layer_endeasing";s:11:"easeOutBack";s:10:"time_start";s:4:"2000";}i:3;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:4;s:13:"layer_content";s:0:"";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:10:"small_text";s:13:"layer_caption";s:123:"Our premum denim - abbreviated. A high-rise 5 pocket jean short in 4 washes. Order&lt;br&gt; today, wear them this weekend.";s:15:"layer_animation";s:3:"lfr";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"348";s:9:"layer_top";s:3:"330";s:10:"layer_left";s:3:"325";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"ltl";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"3000";}i:4;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:5;s:13:"layer_content";s:32:"data/layerslider/bulet-slide.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:6:"bullet";s:13:"layer_caption";s:6:"bullet";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"415";s:10:"layer_left";s:3:"580";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"3000";}i:5;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:6;s:13:"layer_content";s:0:"";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:21:"btn btn-outline-black";s:13:"layer_caption";s:16:"view collections";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"498";s:10:"layer_left";s:3:"500";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:15:"randomrotateout";s:15:"layer_endeasing";s:11:"easeInQuint";s:10:"time_start";s:4:"4659";}}}', 'data/layerslider/slider-layer-1.jpg', 1, 0),
(17, 'Slider 2', 0, 1, 'a:16:{s:2:"id";s:2:"17";s:15:"slider_group_id";s:1:"1";s:12:"slider_title";s:8:"Slider 2";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:2:"17";s:12:"slider_image";s:35:"data/layerslider/slider-layer-2.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:6:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:0:"";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:6:"bullet";s:13:"layer_caption";s:6:"Bullet";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:2:"82";s:10:"layer_left";s:3:"580";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:3:"876";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:0:"";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:12:"medium_white";s:13:"layer_caption";s:23:"summer collections 2014";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:14:"easeInOutQuint";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"170";s:10:"layer_left";s:3:"470";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"ltl";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:3:"876";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:0:"";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:9:"big_white";s:13:"layer_caption";s:23:"autumn collection 2013 ";s:15:"layer_animation";s:3:"lfl";s:12:"layer_easing";s:14:"easeInOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"200";s:10:"layer_left";s:3:"180";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"ltr";s:15:"layer_endeasing";s:11:"easeOutBack";s:10:"time_start";s:4:"2000";}i:3;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:4;s:13:"layer_content";s:0:"";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:10:"small_text";s:13:"layer_caption";s:154:"Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan&lt;br&gt;ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio.";s:15:"layer_animation";s:3:"lfr";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"348";s:9:"layer_top";s:3:"330";s:10:"layer_left";s:3:"325";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"ltl";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"3000";}i:4;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:5;s:13:"layer_content";s:32:"data/layerslider/bulet-slide.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:6:"bullet";s:13:"layer_caption";s:6:"bullet";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"415";s:10:"layer_left";s:3:"580";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"3000";}i:5;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:6;s:13:"layer_content";s:0:"";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:21:"btn btn-outline-black";s:13:"layer_caption";s:16:"view collections";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"498";s:10:"layer_left";s:3:"500";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:15:"randomrotateout";s:15:"layer_endeasing";s:11:"easeInQuint";s:10:"time_start";s:4:"4659";}}}', 'data/layerslider/slider-layer-2.jpg', 1, 0),
(18, 'Slider 3', 0, 1, 'a:16:{s:2:"id";s:2:"18";s:15:"slider_group_id";s:1:"1";s:12:"slider_title";s:8:"Slider 3";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:2:"18";s:12:"slider_image";s:35:"data/layerslider/slider-layer-3.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:6:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:0:"";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:6:"bullet";s:13:"layer_caption";s:6:"Bullet";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:2:"82";s:10:"layer_left";s:3:"580";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:3:"876";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:0:"";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:12:"medium_white";s:13:"layer_caption";s:23:"summer collections 2014";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:14:"easeInOutQuint";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"170";s:10:"layer_left";s:3:"470";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"ltl";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:3:"876";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:0:"";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:9:"big_white";s:13:"layer_caption";s:25:"strength _ASM_ confidence";s:15:"layer_animation";s:3:"lfl";s:12:"layer_easing";s:14:"easeInOutCubic";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"200";s:10:"layer_left";s:3:"180";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"ltr";s:15:"layer_endeasing";s:11:"easeOutBack";s:10:"time_start";s:4:"2000";}i:3;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:4;s:13:"layer_content";s:0:"";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:10:"small_text";s:13:"layer_caption";s:123:"Our premum denim - abbreviated. A high-rise 5 pocket jean short in 4 washes. Order&lt;br&gt; today, wear them this weekend.";s:15:"layer_animation";s:3:"lfr";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"348";s:9:"layer_top";s:3:"330";s:10:"layer_left";s:3:"325";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"ltl";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"3000";}i:4;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:5;s:13:"layer_content";s:32:"data/layerslider/bulet-slide.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:6:"bullet";s:13:"layer_caption";s:6:"bullet";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"415";s:10:"layer_left";s:3:"580";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"3000";}i:5;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:6;s:13:"layer_content";s:0:"";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:21:"btn btn-outline-black";s:13:"layer_caption";s:16:"view collections";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"498";s:10:"layer_left";s:3:"500";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:15:"randomrotateout";s:15:"layer_endeasing";s:11:"easeInQuint";s:10:"time_start";s:4:"4659";}}}', 'data/layerslider/slider-layer-3.jpg', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product`
--

DROP TABLE IF EXISTS `oc_product`;
CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL,
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `viewed` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=55 ;

--
-- Dumping data for table `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `date_added`, `date_modified`, `viewed`) VALUES
(28, 'Product14', '', '', '', '', '', '', '', 939, 7, 'data/demo/14a.jpg', 5, 1, '100.0000', 200, 9, '2009-02-03', '146.40000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, '2009-02-03 16:06:50', '2014-07-01 09:35:11', 0),
(29, 'Product15', '', '', '', '', '', '', '', 999, 6, 'data/demo/15a.jpg', 6, 1, '279.9900', 0, 9, '2013-12-23', '133.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, '2009-02-03 16:42:17', '2014-07-01 09:35:20', 0),
(30, 'Product02', '', '', '', '', '', '', '', 7000, 6, 'data/demo/2a.jpg', 8, 1, '45.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1000, 0, 1, '2009-02-03 16:59:00', '2014-07-11 14:44:43', 0),
(31, 'Product03', '', '', '', '', '', '', '', 1000, 6, 'data/demo/3a.jpg', 8, 1, '80.0000', 0, 9, '2013-12-23', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, '2009-02-03 17:00:10', '2014-07-12 17:30:23', 16),
(33, 'Product04', '', '', '', '', '', '', '', 1000, 6, 'data/demo/4a.jpg', 8, 1, '200.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, '2009-02-03 17:08:31', '2014-07-12 17:31:21', 4),
(34, 'Product05', '', '', '', '', '', '', '', 995, 6, 'data/demo/5a.jpg', 9, 1, '500.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, '2009-02-03 18:07:54', '2014-07-01 09:32:41', 0),
(35, 'Product16', '', '', '', '', '', '', '', 1000, 5, 'data/demo/16a.jpg', 10, 0, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, '2009-02-03 18:08:31', '2014-07-01 09:35:25', 1),
(36, 'Product06', '', '', '', '', '', '', '', 994, 6, 'data/demo/6a.jpg', 8, 0, '100.0000', 100, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, '2009-02-03 18:09:19', '2014-07-01 09:32:56', 0),
(40, 'product07', '', '', '', '', '', '', '', 970, 5, 'data/demo/7a.jpg', 8, 1, '999.0000', 0, 9, '2013-12-23', '10.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, '2009-02-03 21:07:12', '2014-07-01 09:33:46', 0),
(41, 'Product08', '', '', '', '', '', '', '', 977, 5, 'data/demo/8a.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, '2009-02-03 21:07:26', '2014-07-01 09:33:56', 0),
(42, 'Product01', '', '', '', '', '', '', '', 990, 7, 'data/demo/1a.jpg', 8, 1, '100.0000', 400, 9, '2009-02-04', '12.50000000', 1, '1.00000000', '2.00000000', '3.00000000', 1, 1, 2, 0, 1, '2009-02-03 21:07:37', '2014-07-01 09:31:14', 15),
(43, 'Product09', '', '', '', '', '', '', '', 929, 5, 'data/demo/9a.jpg', 8, 0, '500.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, '2009-02-03 21:07:49', '2014-07-01 09:34:11', 0),
(44, 'Product17', '', '', '', '', '', '', '', 999, 5, 'data/demo/17a.jpg', 10, 1, '1000.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, '2009-02-03 21:08:00', '2014-07-01 09:35:29', 1),
(45, 'Product18', '', '', '', '', '', '', '', 998, 5, 'data/demo/18a.jpg', 10, 1, '2000.0000', 0, 0, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, '2009-02-03 21:08:17', '2014-07-01 09:35:39', 0),
(46, 'Product10', '', '', '', '', '', '', '', 1000, 5, 'data/demo/10a.jpg', 7, 1, '1000.0000', 0, 9, '2013-12-23', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, '2009-02-03 21:08:29', '2014-07-01 09:34:15', 3),
(47, 'Product19', '', '', '', '', '', '', '', 1000, 5, 'data/demo/3a.jpg', 5, 1, '100.0000', 400, 9, '2013-12-23', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 1, '2009-02-03 21:08:40', '2014-07-01 09:35:44', 4),
(48, 'product11', 'test 1', '', '', '', '', '', 'test 2', 992, 5, 'data/demo/11a.jpg', 7, 1, '500.0000', 0, 9, '2009-02-08', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, '2009-02-08 17:21:51', '2014-07-01 09:34:32', 15),
(49, 'Product20', '', '', '', '', '', '', '', 999, 8, 'data/demo/10a.jpg', 10, 1, '199.9900', 0, 9, '2011-04-25', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2011-04-26 08:57:34', '2014-07-01 09:36:01', 2),
(51, 'Product12', '', '', '', '', '', '', '', 98, 5, 'data/demo/12a.jpg', 7, 1, '67.0000', 0, 0, '2014-02-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-02-17 16:46:06', '2014-07-01 09:34:44', 3),
(52, 'Product13', '', '', '', '', '', '', '', 99, 5, 'data/demo/13a.jpg', 5, 1, '99.0000', 0, 0, '2014-02-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-02-17 19:40:01', '2014-07-01 09:34:57', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_attribute`
--

DROP TABLE IF EXISTS `oc_product_attribute`;
CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_attribute`
--

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(47, 4, 1, '16GB'),
(47, 2, 2, '4'),
(43, 4, 1, '8gb'),
(42, 3, 1, '100mhz'),
(43, 2, 2, '1'),
(42, 3, 2, '100mhz'),
(47, 2, 1, '4'),
(43, 2, 1, '1'),
(43, 4, 2, '8gb'),
(47, 4, 2, '16GB');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_description`
--

DROP TABLE IF EXISTS `oc_product_description`;
CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `tag` text NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`, `tag`) VALUES
(48, 1, 'Skinny Fit Suit Jacket in Black', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n&lt;div&gt;\r\n&lt;p&gt;&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', '', ''),
(48, 2, 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', '&lt;p&gt;يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق.&lt;/p&gt;\r\n\r\n&lt;p&gt;بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً وصل. ولم ٣٠ وإيطالي بالمطالبة بالولايات, عن عرفها انتهت وحرمان دنو, بلاده بزوال الغربي بال بل. لم به، معقل برلين،, سحقت اقتصادية المناوشات ولم ما. بولندا لبولندا مع بحث, جوي إذ سلاح الخاصّة. من اعلان مقاطعة واندونيسيا، مما, حيث ما جزيرتي اليابانية, حتى نتيجة التبرعات الأمريكي تم. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق.&lt;/p&gt;\r\n\r\n&lt;p&gt;مما و بأيدي القادة والكساد, الا ثم تصرّف الغالي سنغافورة. عدد ثم تجهيز الجنرال بالدبابات. عليها اقتصادية أم بال, بل جورج أثره، جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد تُصب منتصف وفنلندا, و الى عليها وإعلان الإتحاد. أرغم الفاشي النازية لم بعد, أي خلاف لدحر استسلام بها. قصف أدنى ومدني، و, جوي تشرشل المحور، الياباني، إذ.&lt;/p&gt;\r\n', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', ''),
(51, 1, 'Skinny Fit Suit Jacket in White', '&lt;p&gt;Canon EOS 40D 10.1MP SLR Camera&lt;/p&gt;\r\n', 'Skinny Fit Suit Jacket in White', 'Skinny Fit Suit Jacket in White', ''),
(51, 2, 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', '&lt;p&gt;يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق.&lt;/p&gt;\r\n\r\n&lt;p&gt;بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً وصل. ولم ٣٠ وإيطالي بالمطالبة بالولايات, عن عرفها انتهت وحرمان دنو, بلاده بزوال الغربي بال بل. لم به، معقل برلين،, سحقت اقتصادية المناوشات ولم ما. بولندا لبولندا مع بحث, جوي إذ سلاح الخاصّة. من اعلان مقاطعة واندونيسيا، مما, حيث ما جزيرتي اليابانية, حتى نتيجة التبرعات الأمريكي تم. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق.&lt;/p&gt;\r\n\r\n&lt;p&gt;مما و بأيدي القادة والكساد, الا ثم تصرّف الغالي سنغافورة. عدد ثم تجهيز الجنرال بالدبابات. عليها اقتصادية أم بال, بل جورج أثره، جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد تُصب منتصف وفنلندا, و الى عليها وإعلان الإتحاد. أرغم الفاشي النازية لم بعد, أي خلاف لدحر استسلام بها. قصف أدنى ومدني، و, جوي تشرشل المحور، الياباني، إذ.&lt;/p&gt;\r\n', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', ''),
(40, 1, 'Slim Fit Suit In Sharkskin', '&lt;p class=&quot;intro&quot;&gt;iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n', 'Slim Fit Suit In Sharkskin', '', ''),
(40, 2, 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', '&lt;p&gt;مما خيار وهولندا، بريطانيا تم. لإعلان الشتاء لمّ أم. طوكيو للإمبراطورية في مدن, هذا جديدة المذابح الألماني إذ. تزامناً الإقتصادي حدة و, حتى بل وقبل أسلحته بريطانيا-فرنسا.&lt;/p&gt;\r\n\r\n&lt;p&gt;بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً وصل. ولم ٣٠ وإيطالي بالمطالبة بالولايات, عن عرفها انتهت وحرمان دنو, بلاده بزوال الغربي بال بل. لم به، معقل برلين،, سحقت اقتصادية المناوشات ولم ما. بولندا لبولندا مع بحث, جوي إذ سلاح الخاصّة. من اعلان مقاطعة واندونيسيا، مما, حيث ما جزيرتي اليابانية, حتى نتيجة التبرعات الأمريكي تم.&lt;/p&gt;\r\n\r\n&lt;p&gt;مما و بأيدي القادة والكساد, الا ثم تصرّف الغالي سنغافورة. عدد ثم تجهيز الجنرال بالدبابات. عليها اقتصادية أم بال, بل جورج أثره، جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد تُصب منتصف وفنلندا, و الى عليها وإعلان الإتحاد. أرغم الفاشي النازية لم بعد, أي خلاف لدحر استسلام بها. قصف أدنى ومدني، و, جوي تشرشل المحور، الياباني، إذ.&lt;/p&gt;\r\n', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', ''),
(44, 1, 'Skinny Fit Suit Oxygen Canister', '&lt;div&gt;MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don’t lose inches and pounds overnight. It’s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n', '', '', ''),
(44, 2, 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', '&lt;p&gt;يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق.&lt;/p&gt;\r\n\r\n&lt;p&gt;بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً وصل. ولم ٣٠ وإيطالي بالمطالبة بالولايات, عن عرفها انتهت وحرمان دنو, بلاده بزوال الغربي بال بل. لم به، معقل برلين،, سحقت اقتصادية المناوشات ولم ما. بولندا لبولندا مع بحث, جوي إذ سلاح الخاصّة. من اعلان مقاطعة واندونيسيا، مما, حيث ما جزيرتي اليابانية, حتى نتيجة التبرعات الأمريكي تم. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق.&lt;/p&gt;\r\n\r\n&lt;p&gt;مما و بأيدي القادة والكساد, الا ثم تصرّف الغالي سنغافورة. عدد ثم تجهيز الجنرال بالدبابات. عليها اقتصادية أم بال, بل جورج أثره، جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد تُصب منتصف وفنلندا, و الى عليها وإعلان الإتحاد. أرغم الفاشي النازية لم بعد, أي خلاف لدحر استسلام بها. قصف أدنى ومدني، و, جوي تشرشل المحور، الياباني، إذ.&lt;/p&gt;\r\n', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', ''),
(46, 1, 'Skinny Fit Suit Jacket in Grey', '&lt;div&gt;Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel''s latest, most powerful innovation yet: Intel® Centrino® 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\r\n', '', '', ''),
(46, 2, 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', '&lt;p&gt;مما خيار وهولندا، بريطانيا تم. لإعلان الشتاء لمّ أم. طوكيو للإمبراطورية في مدن, هذا جديدة المذابح الألماني إذ. تزامناً الإقتصادي حدة و, حتى بل وقبل أسلحته بريطانيا-فرنسا.&lt;/p&gt;\r\n\r\n&lt;p&gt;بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً وصل. ولم ٣٠ وإيطالي بالمطالبة بالولايات, عن عرفها انتهت وحرمان دنو, بلاده بزوال الغربي بال بل. لم به، معقل برلين،, سحقت اقتصادية المناوشات ولم ما. بولندا لبولندا مع بحث, جوي إذ سلاح الخاصّة. من اعلان مقاطعة واندونيسيا، مما, حيث ما جزيرتي اليابانية, حتى نتيجة التبرعات الأمريكي تم.&lt;/p&gt;\r\n\r\n&lt;p&gt;مما و بأيدي القادة والكساد, الا ثم تصرّف الغالي سنغافورة. عدد ثم تجهيز الجنرال بالدبابات. عليها اقتصادية أم بال, بل جورج أثره، جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد تُصب منتصف وفنلندا, و الى عليها وإعلان الإتحاد. أرغم الفاشي النازية لم بعد, أي خلاف لدحر استسلام بها. قصف أدنى ومدني، و, جوي تشرشل المحور، الياباني، إذ.&lt;/p&gt;\r\n', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', ''),
(47, 1, 'Skinny Fit Suit Oxygen Blue', '&lt;p&gt;Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you''re at the office&lt;/p&gt;\r\n', '', '', ''),
(47, 2, 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', '&lt;p&gt;بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً وصل. ولم ٣٠ وإيطالي بالمطالبة بالولايات, عن عرفها انتهت وحرمان دنو, بلاده بزوال الغربي بال بل. لم به، معقل برلين،, سحقت اقتصادية المناوشات ولم ما. بولندا لبولندا مع بحث, جوي إذ سلاح الخاصّة. من اعلان مقاطعة واندونيسيا، مما, حيث ما جزيرتي اليابانية, حتى نتيجة التبرعات الأمريكي تم. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق.&lt;/p&gt;\r\n', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', ''),
(33, 1, ' Slim Fit Suit In Sharkskin', '&lt;div&gt;Imagine the advantages of going big without slowing down. The big 19&quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it''s not hard to imagine.&lt;/div&gt;\r\n', ' Slim Fit Suit In Sharkskin', ' Slim Fit Suit In Sharkskin', 'clothing'),
(33, 2, 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', '&lt;p&gt;بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً وصل. ولم ٣٠ وإيطالي بالمطالبة بالولايات, عن عرفها انتهت وحرمان دنو, بلاده بزوال الغربي بال بل. لم به، معقل برلين،, سحقت اقتصادية المناوشات ولم ما. بولندا لبولندا مع بحث, جوي إذ سلاح الخاصّة. من اعلان مقاطعة واندونيسيا، مما, حيث ما جزيرتي اليابانية, حتى نتيجة التبرعات الأمريكي تم. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق.&lt;/p&gt;\r\n', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', ''),
(28, 1, 'Skinny Fit Suit Oxygen Canister', '&lt;p&gt;HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Processor Qualcomm® MSM 7201A™ 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;Windows Mobile® 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;Device Control via HTC TouchFLO™ 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;Bluetooth® 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;Wi-Fi®: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;HTC ExtUSB™ (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;Expansion Slot: microSD™ memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '', ''),
(28, 2, 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', '&lt;p&gt;بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً وصل. ولم ٣٠ وإيطالي بالمطالبة بالولايات, عن عرفها انتهت وحرمان دنو, بلاده بزوال الغربي بال بل. لم به، معقل برلين،, سحقت اقتصادية المناوشات ولم ما. بولندا لبولندا مع بحث, جوي إذ سلاح الخاصّة. من اعلان مقاطعة واندونيسيا، مما, حيث ما جزيرتي اليابانية, حتى نتيجة التبرعات الأمريكي تم. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق.&lt;/p&gt;\r\n', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', ''),
(45, 1, 'Skinny Fit Suit Oxygen Blue', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n&lt;div&gt;\r\n&lt;p&gt;&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', '', ''),
(45, 2, 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', '&lt;p&gt;بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً وصل. ولم ٣٠ وإيطالي بالمطالبة بالولايات, عن عرفها انتهت وحرمان دنو, بلاده بزوال الغربي بال بل. لم به، معقل برلين،, سحقت اقتصادية المناوشات ولم ما. بولندا لبولندا مع بحث, جوي إذ سلاح الخاصّة. من اعلان مقاطعة واندونيسيا، مما, حيث ما جزيرتي اليابانية, حتى نتيجة التبرعات الأمريكي تم. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق.&lt;/p&gt;\r\n', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', ''),
(29, 1, 'Skinny Fit Suit Oxygen Canister', '&lt;p&gt;Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you’re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Windows Mobile® 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;Qualcomm® MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;Tri-band UMTS — 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;Quad-band GSM — 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;Built-in GPS&lt;/li&gt;\r\n	&lt;li&gt;Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n	&lt;li&gt;256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n	&lt;li&gt;2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n	&lt;li&gt;Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n	&lt;li&gt;Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n	&lt;li&gt;MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n	&lt;li&gt;MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n	&lt;li&gt;3.5mm stereo headset jack&lt;/li&gt;\r\n	&lt;li&gt;60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', 'Skinny Fit Suit Oxygen Canister', 'Skinny Fit Suit Oxygen Canister', ''),
(29, 2, 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', '&lt;p&gt;بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً وصل. ولم ٣٠ وإيطالي بالمطالبة بالولايات, عن عرفها انتهت وحرمان دنو, بلاده بزوال الغربي بال بل. لم به، معقل برلين،, سحقت اقتصادية المناوشات ولم ما. بولندا لبولندا مع بحث, جوي إذ سلاح الخاصّة. من اعلان مقاطعة واندونيسيا، مما, حيث ما جزيرتي اليابانية, حتى نتيجة التبرعات الأمريكي تم. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق.&lt;/p&gt;\r\n', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', ''),
(36, 1, 'Slim Fit Suit In black', '&lt;div&gt;\r\n&lt;p&gt;&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', 'Slim Fit Suit In black', 'Slim Fit Suit In black', 'Women'),
(36, 2, 'وهولندا، بريطانيا تم. لإعلان الشتاء لمّ أم. طوكيو', '&lt;p&gt;مما خيار وهولندا، بريطانيا تم. لإعلان الشتاء لمّ أم. طوكيو للإمبراطورية في مدن, هذا جديدة المذابح الألماني إذ. تزامناً الإقتصادي حدة و, حتى بل وقبل أسلحته بريطانيا-فرنسا.&lt;/p&gt;\r\n\r\n&lt;p&gt;بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً وصل. ولم ٣٠ وإيطالي بالمطالبة بالولايات, عن عرفها انتهت وحرمان دنو, بلاده بزوال الغربي بال بل. لم به، معقل برلين،, سحقت اقتصادية المناوشات ولم ما. بولندا لبولندا مع بحث, جوي إذ سلاح الخاصّة. من اعلان مقاطعة واندونيسيا، مما, حيث ما جزيرتي اليابانية, حتى نتيجة التبرعات الأمريكي تم.&lt;/p&gt;\r\n\r\n&lt;p&gt;مما و بأيدي القادة والكساد, الا ثم تصرّف الغالي سنغافورة. عدد ثم تجهيز الجنرال بالدبابات. عليها اقتصادية أم بال, بل جورج أثره، جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد تُصب منتصف وفنلندا, و الى عليها وإعلان الإتحاد. أرغم الفاشي النازية لم بعد, أي خلاف لدحر استسلام بها. قصف أدنى ومدني، و, جوي تشرشل المحور، الياباني، إذ.&lt;/p&gt;\r\n', '', '', ''),
(41, 1, 'Slim Fit Suit In Sharkskin', '&lt;div&gt;Just when you thought iMac had everything, now there´s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife ´08, and it´s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n', '', '', 'iMac'),
(41, 2, 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', '&lt;p&gt;مما خيار وهولندا، بريطانيا تم. لإعلان الشتاء لمّ أم. طوكيو للإمبراطورية في مدن, هذا جديدة المذابح الألماني إذ. تزامناً الإقتصادي حدة و, حتى بل وقبل أسلحته بريطانيا-فرنسا.&lt;/p&gt;\r\n\r\n&lt;p&gt;بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً وصل. ولم ٣٠ وإيطالي بالمطالبة بالولايات, عن عرفها انتهت وحرمان دنو, بلاده بزوال الغربي بال بل. لم به، معقل برلين،, سحقت اقتصادية المناوشات ولم ما. بولندا لبولندا مع بحث, جوي إذ سلاح الخاصّة. من اعلان مقاطعة واندونيسيا، مما, حيث ما جزيرتي اليابانية, حتى نتيجة التبرعات الأمريكي تم.&lt;/p&gt;\r\n\r\n&lt;p&gt;مما و بأيدي القادة والكساد, الا ثم تصرّف الغالي سنغافورة. عدد ثم تجهيز الجنرال بالدبابات. عليها اقتصادية أم بال, بل جورج أثره، جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد تُصب منتصف وفنلندا, و الى عليها وإعلان الإتحاد. أرغم الفاشي النازية لم بعد, أي خلاف لدحر استسلام بها. قصف أدنى ومدني، و, جوي تشرشل المحور، الياباني، إذ.&lt;/p&gt;\r\n', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', ''),
(43, 1, 'Skinny Fit Suit Jacket in Grey', '&lt;div&gt;\r\n&lt;p&gt;&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', '', 'design'),
(43, 2, 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', '&lt;p&gt;مما خيار وهولندا، بريطانيا تم. لإعلان الشتاء لمّ أم. طوكيو للإمبراطورية في مدن, هذا جديدة المذابح الألماني إذ. تزامناً الإقتصادي حدة و, حتى بل وقبل أسلحته بريطانيا-فرنسا.&lt;/p&gt;\r\n\r\n&lt;p&gt;بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً وصل. ولم ٣٠ وإيطالي بالمطالبة بالولايات, عن عرفها انتهت وحرمان دنو, بلاده بزوال الغربي بال بل. لم به، معقل برلين،, سحقت اقتصادية المناوشات ولم ما. بولندا لبولندا مع بحث, جوي إذ سلاح الخاصّة. من اعلان مقاطعة واندونيسيا، مما, حيث ما جزيرتي اليابانية, حتى نتيجة التبرعات الأمريكي تم.&lt;/p&gt;\r\n\r\n&lt;p&gt;مما و بأيدي القادة والكساد, الا ثم تصرّف الغالي سنغافورة. عدد ثم تجهيز الجنرال بالدبابات. عليها اقتصادية أم بال, بل جورج أثره، جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد تُصب منتصف وفنلندا, و الى عليها وإعلان الإتحاد. أرغم الفاشي النازية لم بعد, أي خلاف لدحر استسلام بها. قصف أدنى ومدني، و, جوي تشرشل المحور، الياباني، إذ.&lt;/p&gt;\r\n', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', ''),
(49, 1, 'Skinny Fit Suit Oxygen Nice', '&lt;p&gt;Samsung Galaxy Tab 10.1, is the world’s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\r\n\r\n&lt;p&gt;Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 – includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick – a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\r\n\r\n&lt;p&gt;Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader’s Hub, Music Hub and Samsung Mini Apps Tray – which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;äö&lt;/p&gt;\r\n', '', '', ''),
(49, 2, 'بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً', '&lt;p&gt;مما خيار وهولندا، بريطانيا تم. لإعلان الشتاء لمّ أم. طوكيو للإمبراطورية في مدن, هذا جديدة المذابح الألماني إذ. تزامناً الإقتصادي حدة و, حتى بل وقبل أسلحته بريطانيا-فرنسا. مما خيار وهولندا، بريطانيا تم. لإعلان الشتاء لمّ أم. طوكيو للإمبراطورية في مدن, هذا جديدة المذابح الألماني إذ. تزامناً الإقتصادي حدة و, حتى بل وقبل أسلحته بريطانيا-فرنسا. مما خيار وهولندا، بريطانيا تم. لإعلان الشتاء لمّ أم. طوكيو للإمبراطورية في مدن, هذا جديدة المذابح الألماني إذ. تزامناً الإقتصادي حدة و, حتى بل وقبل أسلحته بريطانيا-فرنسا. مما خيار وهولندا، بريطانيا تم. لإعلان الشتاء لمّ أم. طوكيو للإمبراطورية في مدن, هذا جديدة المذابح الألماني إذ. تزامناً الإقتصادي حدة و, حتى بل وقبل أسلحته بريطانيا-فرنسا. مما خيار وهولندا، بريطانيا تم. لإعلان الشتاء لمّ أم. طوكيو للإمبراطورية في مدن, هذا جديدة المذابح الألماني إذ. تزامناً الإقتصادي حدة و, حتى بل وقبل أسلحته بريطانيا-فرنسا.&lt;/p&gt;\r\n', 'بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً', 'بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً', ''),
(30, 1, 'Skinny Fit Suit Jacket in Grey', '&lt;p&gt;Canon''s press material for the EOS 5D states that it ''defines (a) new D-SLR category'', while we''re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably ''chunkier''). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR''s, an important difference when compared to the latter is that the EOS 5D doesn''t have any environmental seals. While Canon don''t specifically refer to the EOS 5D as a ''professional'' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they''ve not bought too many EF-S lenses...) äë&lt;/p&gt;\r\n', 'Skinny Fit Suit Jacket in Grey', 'Skinny Fit Suit Jacket in Grey', 'child');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`, `tag`) VALUES
(30, 2, 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', '&lt;p&gt;بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً وصل. ولم ٣٠ وإيطالي بالمطالبة بالولايات, عن عرفها انتهت وحرمان دنو, بلاده بزوال الغربي بال بل. لم به، معقل برلين،, سحقت اقتصادية المناوشات ولم ما. بولندا لبولندا مع بحث, جوي إذ سلاح الخاصّة. من اعلان مقاطعة واندونيسيا، مما, حيث ما جزيرتي اليابانية, حتى نتيجة التبرعات الأمريكي تم. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق.&lt;/p&gt;\r\n', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', ''),
(34, 1, ' Slim Fit Suit In Sharkskin', '&lt;div&gt;&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n&lt;p&gt;Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n\r\n&lt;p&gt;Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', ' Slim Fit Suit In Sharkskin', ' Slim Fit Suit In Sharkskin', 'Men'),
(34, 2, 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', '&lt;p&gt;يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق.&lt;/p&gt;\r\n\r\n&lt;p&gt;بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً وصل. ولم ٣٠ وإيطالي بالمطالبة بالولايات, عن عرفها انتهت وحرمان دنو, بلاده بزوال الغربي بال بل. لم به، معقل برلين،, سحقت اقتصادية المناوشات ولم ما. بولندا لبولندا مع بحث, جوي إذ سلاح الخاصّة. من اعلان مقاطعة واندونيسيا، مما, حيث ما جزيرتي اليابانية, حتى نتيجة التبرعات الأمريكي تم. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق.&lt;/p&gt;\r\n\r\n&lt;p&gt;مما و بأيدي القادة والكساد, الا ثم تصرّف الغالي سنغافورة. عدد ثم تجهيز الجنرال بالدبابات. عليها اقتصادية أم بال, بل جورج أثره، جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد تُصب منتصف وفنلندا, و الى عليها وإعلان الإتحاد. أرغم الفاشي النازية لم بعد, أي خلاف لدحر استسلام بها. قصف أدنى ومدني، و, جوي تشرشل المحور، الياباني، إذ.&lt;/p&gt;\r\n', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', ''),
(42, 1, ' Slim Fit Suit In Sharkskin', '&lt;p&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there''s no limit to what you can achieve.&lt;/p&gt;\r\n', ' Slim Fit Suit In Sharkskin', ' Slim Fit Suit In Sharkskin', 'Cinema'),
(42, 2, 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', '&lt;p&gt;يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق.&lt;/p&gt;\r\n\r\n&lt;p&gt;بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً وصل. ولم ٣٠ وإيطالي بالمطالبة بالولايات, عن عرفها انتهت وحرمان دنو, بلاده بزوال الغربي بال بل. لم به، معقل برلين،, سحقت اقتصادية المناوشات ولم ما. بولندا لبولندا مع بحث, جوي إذ سلاح الخاصّة. من اعلان مقاطعة واندونيسيا، مما, حيث ما جزيرتي اليابانية, حتى نتيجة التبرعات الأمريكي تم.&lt;/p&gt;\r\n\r\n&lt;p&gt;مما و بأيدي القادة والكساد, الا ثم تصرّف الغالي سنغافورة. عدد ثم تجهيز الجنرال بالدبابات. عليها اقتصادية أم بال, بل جورج أثره، جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد تُصب منتصف وفنلندا, و الى عليها وإعلان الإتحاد. أرغم الفاشي النازية لم بعد, أي خلاف لدحر استسلام بها. قصف أدنى ومدني، و, جوي تشرشل المحور، الياباني، إذ.&lt;/p&gt;\r\n', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', ''),
(35, 1, 'Skinny Fit Suit Oxygen Canister', '&lt;p&gt;Product 8&lt;/p&gt;\r\n', '', '', ''),
(35, 2, 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', '&lt;p&gt;يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق.&lt;/p&gt;\r\n\r\n&lt;p&gt;بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً وصل. ولم ٣٠ وإيطالي بالمطالبة بالولايات, عن عرفها انتهت وحرمان دنو, بلاده بزوال الغربي بال بل. لم به، معقل برلين،, سحقت اقتصادية المناوشات ولم ما. بولندا لبولندا مع بحث, جوي إذ سلاح الخاصّة. من اعلان مقاطعة واندونيسيا، مما, حيث ما جزيرتي اليابانية, حتى نتيجة التبرعات الأمريكي تم. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق.&lt;/p&gt;\r\n\r\n&lt;p&gt;مما و بأيدي القادة والكساد, الا ثم تصرّف الغالي سنغافورة. عدد ثم تجهيز الجنرال بالدبابات. عليها اقتصادية أم بال, بل جورج أثره، جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد تُصب منتصف وفنلندا, و الى عليها وإعلان الإتحاد. أرغم الفاشي النازية لم بعد, أي خلاف لدحر استسلام بها. قصف أدنى ومدني، و, جوي تشرشل المحور، الياباني، إذ.&lt;/p&gt;\r\n', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', ''),
(52, 1, 'Skinny Fit Suit Jacket in Red', '&lt;p&gt;Canon EOS 40D 10.1MP SLR Camera&lt;/p&gt;\r\n', 'Skinny Fit Suit Jacket in Red', 'Skinny Fit Suit Jacket in Red', ''),
(52, 2, 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', '&lt;p&gt;يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق.&lt;/p&gt;\r\n\r\n&lt;p&gt;بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً وصل. ولم ٣٠ وإيطالي بالمطالبة بالولايات, عن عرفها انتهت وحرمان دنو, بلاده بزوال الغربي بال بل. لم به، معقل برلين،, سحقت اقتصادية المناوشات ولم ما. بولندا لبولندا مع بحث, جوي إذ سلاح الخاصّة. من اعلان مقاطعة واندونيسيا، مما, حيث ما جزيرتي اليابانية, حتى نتيجة التبرعات الأمريكي تم. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق.&lt;/p&gt;\r\n\r\n&lt;p&gt;مما و بأيدي القادة والكساد, الا ثم تصرّف الغالي سنغافورة. عدد ثم تجهيز الجنرال بالدبابات. عليها اقتصادية أم بال, بل جورج أثره، جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد تُصب منتصف وفنلندا, و الى عليها وإعلان الإتحاد. أرغم الفاشي النازية لم بعد, أي خلاف لدحر استسلام بها. قصف أدنى ومدني، و, جوي تشرشل المحور، الياباني، إذ.&lt;/p&gt;\r\n', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', ''),
(31, 2, 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', '&lt;p&gt;بيرل البولندي ثم يتم, في تشكيل عملية وانتهاءً وصل. ولم ٣٠ وإيطالي بالمطالبة بالولايات, عن عرفها انتهت وحرمان دنو, بلاده بزوال الغربي بال بل. لم به، معقل برلين،, سحقت اقتصادية المناوشات ولم ما. بولندا لبولندا مع بحث, جوي إذ سلاح الخاصّة. من اعلان مقاطعة واندونيسيا، مما, حيث ما جزيرتي اليابانية, حتى نتيجة التبرعات الأمريكي تم. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق. يبق وبعدما إتفاقية التجارية أي. لها بـ الدول لفرنسا استطاعوا, هو سبتمبر المنتصر الجنرال كان. ذلك نهاية الأوروبية ثم, بعض تم أعمال الألوف واندونيسيا،. كل سقط بخطوط الجنوبي الألمانية. حرب انذار بريطانيا، ويكيبيديا، ما. تمهيد الغربي الأمريكي يبق هو, ساعة بخطوط استمرار أي يبق.&lt;/p&gt;\r\n', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', 'ثم أطراف الباهضة المؤلّفة دون, تلك أي بهيئة وأزيز الدنمارك.', ''),
(31, 1, ' Slim Fit Suit In Sharkskin', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n&lt;div&gt;Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon''s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br /&gt;\r\n&lt;br /&gt;\r\nSimilar to the D3, the D300 features Nikon''s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera''s new features. The D300 features a new 51-point autofocus system with Nikon''s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera''s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br /&gt;\r\n&lt;br /&gt;\r\nThe D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br /&gt;\r\n&lt;br /&gt;\r\nThe D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon''s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', ' Slim Fit Suit In Sharkskin', ' Slim Fit Suit In Sharkskin', 'accessories');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_discount`
--

DROP TABLE IF EXISTS `oc_product_discount`;
CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=522 ;

--
-- Dumping data for table `oc_product_discount`
--

INSERT INTO `oc_product_discount` (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES
(521, 42, 1, 30, 1, '66.0000', '0000-00-00', '0000-00-00'),
(520, 42, 1, 20, 1, '77.0000', '0000-00-00', '0000-00-00'),
(519, 42, 1, 10, 1, '88.0000', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_filter`
--

DROP TABLE IF EXISTS `oc_product_filter`;
CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_filter`
--

INSERT INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES
(28, 8),
(29, 9),
(30, 11),
(31, 11),
(31, 16),
(33, 9),
(33, 15),
(33, 16),
(34, 10),
(34, 13),
(35, 8),
(36, 15),
(40, 8),
(41, 8),
(42, 8),
(43, 10),
(43, 13),
(43, 16),
(44, 12),
(44, 14),
(45, 12),
(45, 13),
(45, 14),
(46, 14),
(46, 15),
(47, 8),
(47, 14),
(48, 8),
(48, 15),
(48, 16),
(49, 9);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_image`
--

DROP TABLE IF EXISTS `oc_product_image`;
CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3467 ;

--
-- Dumping data for table `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(3406, 34, 'data/demo/6a.jpg', 4),
(3419, 43, 'data/demo/11b.jpg', 4),
(3446, 45, 'data/demo/18b.jpg', 1),
(3466, 33, 'data/demo/4b.jpg', 1),
(3412, 40, 'data/demo/8a.jpg', 4),
(3456, 30, 'data/demo/2b.jpg', 1),
(3434, 28, 'data/demo/15b.jpg', 3),
(3415, 41, 'data/demo/13b.jpg', 3),
(3411, 40, 'data/demo/9b.jpg', 3),
(3425, 48, 'data/demo/10a.jpg', 3),
(3405, 34, 'data/demo/4b.jpg', 3),
(3418, 43, 'data/demo/11a.jpg', 3),
(3443, 44, 'data/demo/16b.jpg', 3),
(3445, 45, 'data/demo/18a.jpg', 2),
(3463, 31, 'data/demo/2b.jpg', 3),
(3437, 29, 'data/demo/14b.jpg', 3),
(3422, 46, 'data/demo/16b.jpg', 3),
(3454, 49, 'data/demo/17b.jpg', 5),
(3453, 49, 'data/demo/13b.jpg', 4),
(3394, 42, 'data/demo/16a.jpg', 4),
(3393, 42, 'data/demo/17a.jpg', 3),
(3404, 34, 'data/demo/4a.jpg', 2),
(3403, 34, 'data/demo/5b.jpg', 1),
(3417, 43, 'data/demo/8a.jpg', 2),
(3416, 43, 'data/demo/9b.jpg', 1),
(3462, 31, 'data/demo/2a.jpg', 2),
(3461, 31, 'data/demo/3b.jpg', 1),
(3452, 49, 'data/demo/11b.jpg', 3),
(3451, 49, 'data/demo/11a.jpg', 2),
(3450, 49, 'data/demo/10b.jpg', 1),
(3421, 46, 'data/demo/13b.jpg', 2),
(3420, 46, 'data/demo/10b.jpg', 1),
(3408, 36, 'data/demo/5a.jpg', 2),
(3407, 36, 'data/demo/6b.jpg', 1),
(3424, 48, 'data/demo/13b.jpg', 2),
(3410, 40, 'data/demo/9a.jpg', 2),
(3409, 40, 'data/demo/7b.jpg', 1),
(3414, 41, 'data/demo/7a.jpg', 2),
(3449, 47, 'data/demo/2b.jpg', 3),
(3455, 30, 'data/demo/3a.jpg', 2),
(3392, 42, 'data/demo/18a.jpg', 2),
(3391, 42, 'data/demo/1b.jpg', 1),
(3428, 51, 'data/demo/15a.jpg', 3),
(3427, 51, 'data/demo/12b.jpg', 1),
(3431, 52, 'data/demo/14b.jpg', 3),
(3430, 52, 'data/demo/13b.jpg', 2),
(3433, 28, 'data/demo/15a.jpg', 2),
(3436, 29, 'data/demo/14a.jpg', 2),
(3440, 35, 'data/demo/1b.jpg', 3),
(3439, 35, 'data/demo/16b.jpg', 1),
(3442, 44, 'data/demo/16a.jpg', 2),
(3448, 47, 'data/demo/3b.jpg', 1),
(3465, 33, 'data/demo/5a.jpg', 2),
(3464, 33, 'data/demo/5b.jpg', 3),
(3413, 41, 'data/demo/8b.jpg', 1),
(3423, 48, 'data/demo/11b.jpg', 1),
(3426, 51, 'data/demo/13a.jpg', 2),
(3429, 52, 'data/demo/12a.jpg', 1),
(3432, 28, 'data/demo/14b.jpg', 1),
(3435, 29, 'data/demo/15b.jpg', 1),
(3438, 35, 'data/demo/1a.jpg', 2),
(3441, 44, 'data/demo/17b.jpg', 1),
(3444, 45, 'data/demo/18b.jpg', 2),
(3447, 47, 'data/demo/2a.jpg', 2),
(3457, 30, 'data/demo/3a.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option`
--

DROP TABLE IF EXISTS `oc_product_option`;
CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=227 ;

--
-- Dumping data for table `oc_product_option`
--

INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `option_value`, `required`) VALUES
(224, 35, 11, '', 1),
(225, 47, 12, '2011-04-22', 1),
(226, 30, 5, '', 1),
(220, 42, 10, '2011-02-20 22:25', 1),
(223, 42, 2, '', 1),
(222, 42, 7, '', 1),
(221, 42, 9, '22:25', 1),
(219, 42, 8, '2011-02-20', 1),
(208, 42, 4, 'test', 1),
(209, 42, 6, '', 1),
(218, 42, 1, '', 1),
(217, 42, 5, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option_value`
--

DROP TABLE IF EXISTS `oc_product_option_value`;
CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `oc_product_option_value`
--

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(15, 226, 30, 5, 39, 2, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(16, 226, 30, 5, 40, 5, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(14, 224, 35, 11, 48, 15, 1, '15.0000', '+', 0, '+', '0.00000000', '+'),
(8, 223, 42, 2, 23, 48, 1, '10.0000', '+', 0, '+', '10.00000000', '+'),
(11, 223, 42, 2, 45, 3998, 1, '40.0000', '+', 0, '+', '40.00000000', '+'),
(10, 223, 42, 2, 44, 2696, 1, '30.0000', '+', 0, '+', '30.00000000', '+'),
(9, 223, 42, 2, 24, 194, 1, '20.0000', '+', 0, '+', '20.00000000', '+'),
(7, 218, 42, 1, 43, 300, 1, '30.0000', '+', 3, '+', '30.00000000', '+'),
(5, 218, 42, 1, 32, 96, 1, '10.0000', '+', 1, '+', '10.00000000', '+'),
(6, 218, 42, 1, 31, 146, 1, '20.0000', '+', 2, '-', '20.00000000', '+'),
(2, 217, 42, 5, 42, 200, 1, '2.0000', '+', 0, '+', '2.00000000', '+'),
(3, 217, 42, 5, 40, 300, 0, '3.0000', '+', 0, '+', '3.00000000', '+'),
(1, 217, 42, 5, 41, 100, 0, '1.0000', '+', 0, '+', '1.00000000', '+'),
(4, 217, 42, 5, 39, 92, 1, '4.0000', '+', 0, '+', '4.00000000', '+'),
(13, 224, 35, 11, 47, 10, 1, '10.0000', '+', 0, '+', '0.00000000', '+'),
(12, 224, 35, 11, 46, 0, 1, '5.0000', '+', 0, '+', '0.00000000', '+');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_profile`
--

DROP TABLE IF EXISTS `oc_product_profile`;
CREATE TABLE `oc_product_profile` (
  `product_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`profile_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_recurring`
--

DROP TABLE IF EXISTS `oc_product_recurring`;
CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_related`
--

DROP TABLE IF EXISTS `oc_product_related`;
CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_related`
--

INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
(28, 29),
(28, 31),
(28, 33),
(28, 45),
(28, 51),
(29, 28),
(29, 35),
(29, 40),
(31, 28),
(31, 33),
(31, 35),
(31, 44),
(31, 47),
(31, 48),
(31, 51),
(31, 52),
(33, 28),
(33, 31),
(33, 43),
(33, 45),
(33, 51),
(33, 52),
(34, 46),
(34, 52),
(35, 29),
(35, 31),
(35, 48),
(40, 29),
(42, 43),
(42, 44),
(42, 45),
(42, 46),
(43, 33),
(43, 42),
(43, 46),
(44, 31),
(44, 42),
(44, 48),
(44, 51),
(45, 28),
(45, 33),
(45, 42),
(46, 34),
(46, 42),
(46, 43),
(46, 48),
(47, 31),
(47, 48),
(47, 51),
(48, 31),
(48, 35),
(48, 44),
(48, 46),
(48, 47),
(51, 28),
(51, 31),
(51, 33),
(51, 44),
(51, 47),
(51, 52),
(52, 31),
(52, 33),
(52, 34),
(52, 51),
(52, 52);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_reward`
--

DROP TABLE IF EXISTS `oc_product_reward`;
CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=921 ;

--
-- Dumping data for table `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(897, 42, 1, 100),
(915, 47, 1, 300),
(910, 28, 1, 400),
(905, 43, 1, 600),
(911, 29, 1, 0),
(907, 48, 1, 0),
(903, 40, 1, 0),
(917, 30, 1, 200),
(913, 44, 1, 700),
(914, 45, 1, 800),
(919, 31, 1, 0),
(912, 35, 1, 0),
(920, 33, 1, 0),
(906, 46, 1, 0),
(904, 41, 1, 0),
(902, 36, 1, 0),
(901, 34, 1, 0),
(916, 49, 1, 1000),
(908, 51, 1, 0),
(909, 52, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_special`
--

DROP TABLE IF EXISTS `oc_product_special`;
CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=602 ;

--
-- Dumping data for table `oc_product_special`
--

INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(586, 42, 1, 1, '90.0000', '2014-01-12', '2016-01-12'),
(599, 30, 1, 2, '90.0000', '2014-01-12', '2016-01-12'),
(598, 30, 1, 1, '80.0000', '2014-01-12', '2016-01-12'),
(597, 47, 1, 1, '80.0000', '2014-01-12', '2016-01-12'),
(596, 47, 1, 0, '90.0000', '2014-01-12', '2016-01-12'),
(595, 28, 1, 2, '80.0000', '2014-01-12', '2016-01-12'),
(594, 28, 1, 1, '90.0000', '2014-01-12', '2016-01-12'),
(592, 41, 1, 2, '80.0000', '2014-01-12', '2016-01-12'),
(591, 41, 1, 1, '90.0000', '2014-01-12', '2016-01-12'),
(590, 40, 1, 1, '90.0000', '2014-01-12', '2016-01-12'),
(593, 48, 1, 1, '90.0000', '2014-01-12', '2016-01-12'),
(589, 36, 1, 1, '90.0000', '2014-01-12', '2016-01-12'),
(600, 31, 1, 0, '59.0000', '2014-02-01', '2015-04-30'),
(601, 33, 1, 0, '75.0000', '2014-01-05', '2015-04-30');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_category`
--

DROP TABLE IF EXISTS `oc_product_to_category`;
CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(28, 20),
(28, 25),
(28, 59),
(28, 60),
(29, 20),
(29, 25),
(29, 34),
(29, 59),
(30, 20),
(30, 26),
(30, 27),
(30, 59),
(31, 20),
(31, 26),
(31, 27),
(31, 59),
(33, 20),
(33, 26),
(33, 27),
(33, 59),
(34, 29),
(34, 34),
(34, 60),
(35, 20),
(35, 25),
(35, 34),
(35, 59),
(35, 60),
(36, 28),
(36, 34),
(36, 60),
(40, 34),
(40, 35),
(40, 60),
(41, 25),
(41, 36),
(41, 60),
(42, 20),
(42, 26),
(42, 27),
(42, 59),
(43, 25),
(43, 34),
(43, 35),
(43, 60),
(44, 20),
(44, 25),
(44, 34),
(44, 59),
(44, 60),
(45, 20),
(45, 25),
(45, 34),
(45, 59),
(45, 60),
(46, 20),
(46, 25),
(46, 43),
(46, 44),
(46, 59),
(47, 20),
(47, 25),
(47, 34),
(47, 59),
(47, 60),
(48, 20),
(48, 25),
(48, 34),
(48, 35),
(48, 59),
(49, 20),
(49, 25),
(49, 34),
(49, 59),
(49, 60),
(51, 20),
(51, 25),
(51, 27),
(51, 48),
(52, 31),
(52, 32),
(52, 36),
(52, 50);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_download`
--

DROP TABLE IF EXISTS `oc_product_to_download`;
CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_layout`
--

DROP TABLE IF EXISTS `oc_product_to_layout`;
CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_store`
--

DROP TABLE IF EXISTS `oc_product_to_store`;
CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 0),
(47, 0),
(48, 0),
(49, 0),
(51, 0),
(52, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_profile`
--

DROP TABLE IF EXISTS `oc_profile`;
CREATE TABLE `oc_profile` (
  `profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_profile_description`
--

DROP TABLE IF EXISTS `oc_profile_description`;
CREATE TABLE `oc_profile_description` (
  `profile_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`profile_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return`
--

DROP TABLE IF EXISTS `oc_return`;
CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_action`
--

DROP TABLE IF EXISTS `oc_return_action`;
CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent'),
(1, 2, 'Refunded'),
(2, 2, 'Credit Issued'),
(3, 2, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_history`
--

DROP TABLE IF EXISTS `oc_return_history`;
CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_reason`
--

DROP TABLE IF EXISTS `oc_return_reason`;
CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details'),
(1, 2, 'Dead On Arrival'),
(2, 2, 'Received Wrong Item'),
(3, 2, 'Order Error'),
(4, 2, 'Faulty, please supply details'),
(5, 2, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_status`
--

DROP TABLE IF EXISTS `oc_return_status`;
CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products'),
(1, 2, 'Pending'),
(3, 2, 'Complete'),
(2, 2, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Table structure for table `oc_review`
--

DROP TABLE IF EXISTS `oc_review`;
CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `oc_review`
--

INSERT INTO `oc_review` (`review_id`, `product_id`, `customer_id`, `author`, `text`, `rating`, `status`, `date_added`, `date_modified`) VALUES
(1, 42, 0, 'ThemeLexus', 'Animi, iusto, similique, possimus, optio dolorum eligendi laudantium mollitia sit fugiat quia quae adipisci atque placeat totam natus soluta ab quos eius sed quaerat delectus voluptatum eveniet voluptates quo a debitis', 5, 1, '2014-02-05 07:12:48', '0000-00-00 00:00:00'),
(2, 30, 0, 'ThemeLexus', 'Animi, iusto, similique, possimus, optio dolorum eligendi laudantium mollitia sit fugiat quia quae adipisci atque placeat totam natus soluta ab quos eius sed quaerat delectus voluptatum eveniet voluptates quo a debitis', 4, 1, '2014-02-19 22:04:15', '0000-00-00 00:00:00'),
(3, 47, 0, 'ThemeLexus', 'Animi, iusto, similique, possimus, optio dolorum eligendi laudantium mollitia sit fugiat quia quae adipisci atque placeat totam natus soluta ab quos eius sed quaerat delectus voluptatum eveniet voluptates quo a debitis', 3, 1, '2013-12-19 10:44:48', '0000-00-00 00:00:00'),
(4, 41, 0, 'ThemeLexus', 'Animi, iusto, similique, possimus, optio dolorum eligendi laudantium mollitia sit fugiat quia quae adipisci atque placeat totam natus soluta ab quos eius sed quaerat delectus voluptatum eveniet voluptates quo a debitis', 2, 1, '2013-12-19 10:45:09', '0000-00-00 00:00:00'),
(5, 40, 0, 'ThemeLexus', 'Animi, iusto, similique, possimus, optio dolorum eligendi laudantium mollitia sit fugiat quia quae adipisci atque placeat totam natus soluta ab quos eius sed quaerat delectus voluptatum eveniet voluptates quo a debitis', 3, 1, '2013-12-19 10:45:31', '0000-00-00 00:00:00'),
(6, 48, 0, 'ThemeLexus', 'Animi, iusto, similique, possimus, optio dolorum eligendi laudantium mollitia sit fugiat quia quae adipisci atque placeat totam natus soluta ab quos eius sed quaerat delectus voluptatum eveniet voluptates quo a debitis', 4, 1, '2013-12-19 10:45:48', '0000-00-00 00:00:00'),
(7, 36, 0, 'ThemeLexus', 'Animi, iusto, similique, possimus, optio dolorum eligendi laudantium mollitia sit fugiat quia quae adipisci atque placeat totam natus soluta ab quos eius sed quaerat delectus voluptatum eveniet voluptates quo a debitis', 4, 1, '2013-12-19 10:46:06', '0000-00-00 00:00:00'),
(8, 49, 0, 'ThemeLexus', 'Animi, iusto, similique, possimus, optio dolorum eligendi laudantium mollitia sit fugiat quia quae adipisci atque placeat totam natus soluta ab quos eius sed quaerat delectus voluptatum eveniet voluptates quo a debitis', 3, 1, '2013-12-19 10:46:25', '0000-00-00 00:00:00'),
(9, 33, 0, 'ThemeLexus', 'Animi, iusto, similique, possimus, optio dolorum eligendi laudantium mollitia sit fugiat quia quae adipisci atque placeat totam natus soluta ab quos eius sed quaerat delectus voluptatum eveniet voluptates quo a debitis', 5, 1, '2013-12-19 10:46:43', '0000-00-00 00:00:00'),
(10, 31, 0, 'ThemeLexus', 'Animi, iusto, similique, possimus, optio dolorum eligendi laudantium mollitia sit fugiat quia quae adipisci atque placeat totam natus soluta ab quos eius sed quaerat delectus voluptatum eveniet voluptates quo a debitis', 4, 1, '2013-12-19 10:47:05', '0000-00-00 00:00:00'),
(11, 43, 0, 'Themelexus', 'A, magni, magnam incidunt accusamus ut possimus obcaecati tenetur excepturi corporis rem similique laborum esse quaerat! Expedita, facilis, consequatur, odit blanditiis ab ea voluptatum molestiae eum earum ut id itaque qui nulla? Vero, excepturi, rerum a perferendis omnis delectus dolore. Consequatur, molestiae.', 3, 1, '2014-02-19 19:27:15', '0000-00-00 00:00:00'),
(12, 28, 0, 'Themelexus', 'A, magni, magnam incidunt accusamus ut possimus obcaecati tenetur excepturi corporis rem similique laborum esse quaerat! Expedita, facilis, consequatur, odit blanditiis ab ea voluptatum molestiae eum earum ut id itaque qui nulla? Vero, excepturi, rerum a perferendis omnis delectus dolore. Consequatur, molestiae.', 5, 1, '2014-02-19 19:27:19', '0000-00-00 00:00:00'),
(13, 44, 0, 'Themelexus', 'A, magni, magnam incidunt accusamus ut possimus obcaecati tenetur excepturi corporis rem similique laborum esse quaerat! Expedita, facilis, consequatur, odit blanditiis ab ea voluptatum molestiae eum earum ut id itaque qui nulla? Vero, excepturi, rerum a perferendis omnis delectus dolore. Consequatur, molestiae.', 4, 1, '2014-02-19 19:27:23', '0000-00-00 00:00:00'),
(14, 29, 0, 'Themelexus', 'A, magni, magnam incidunt accusamus ut possimus obcaecati tenetur excepturi corporis rem similique laborum esse quaerat! Expedita, facilis, consequatur, odit blanditiis ab ea voluptatum molestiae eum earum ut id itaque qui nulla? Vero, excepturi, rerum a perferendis omnis delectus dolore. Consequatur, molestiae.', 1, 1, '2014-02-19 19:27:26', '0000-00-00 00:00:00'),
(15, 46, 0, 'ThemeLexus', 'Animi, iusto, similique, possimus, optio dolorum eligendi laudantium mollitia sit fugiat quia quae adipisci atque placeat totam natus soluta ab quos eius sed quaerat delectus voluptatum eveniet voluptates quo a debitis', 4, 1, '2013-12-30 11:45:36', '0000-00-00 00:00:00'),
(16, 45, 0, 'ThemeLexus', 'Animi, iusto, similique, possimus, optio dolorum eligendi laudantium mollitia sit fugiat quia quae adipisci atque placeat totam natus soluta ab quos eius sed quaerat delectus voluptatum eveniet voluptates quo a debitis', 5, 1, '2014-01-12 15:30:35', '0000-00-00 00:00:00'),
(17, 35, 0, 'ThemeLexus', 'Animi, iusto, similique, possimus, optio dolorum eligendi laudantium mollitia sit fugiat quia quae adipisci atque placeat totam natus soluta ab quos eius sed quaerat delectus voluptatum eveniet voluptates quo a debitis', 5, 1, '2014-02-05 07:13:05', '0000-00-00 00:00:00'),
(18, 51, 0, 'Themelexus', 'Animi, iusto, similique, possimus, optio dolorum eligendi laudantium mollitia sit fugiat quia quae adipisci atque placeat totam natus soluta ab quos eius sed quaerat delectus voluptatum eveniet voluptates quo a debitis', 5, 1, '2014-02-19 19:29:34', '0000-00-00 00:00:00'),
(20, 28, 0, 'Themelexus', 'Animi, iusto, similique, possimus, optio dolorum eligendi laudantium mollitia sit fugiat quia quae adipisci atque placeat totam natus soluta ab quos eius sed quaerat delectus voluptatum eveniet voluptates quo a debitis', 5, 1, '2014-02-22 16:05:49', '0000-00-00 00:00:00'),
(21, 30, 0, 'Themelexus', 'Animi, iusto, similique, possimus, optio dolorum eligendi laudantium mollitia sit fugiat quia quae adipisci atque placeat totam natus soluta ab quos eius sed quaerat delectus voluptatum eveniet voluptates quo a debitis', 5, 1, '2014-02-22 16:06:34', '0000-00-00 00:00:00'),
(22, 35, 0, 'Themelexus', 'Animi, iusto, similique, possimus, optio dolorum eligendi laudantium mollitia sit fugiat quia quae adipisci atque placeat totam natus soluta ab quos eius sed quaerat delectus voluptatum eveniet voluptates quo a debitis', 2, 1, '2014-02-22 16:08:24', '0000-00-00 00:00:00'),
(24, 52, 0, 'Themelexus', 'Animi, iusto, similique, possimus, optio dolorum eligendi laudantium mollitia sit fugiat quia quae adipisci atque placeat totam natus soluta ab quos eius sed quaerat delectus voluptatum eveniet voluptates quo a debitis', 2, 1, '2014-02-23 13:12:06', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_setting`
--

DROP TABLE IF EXISTS `oc_setting`;
CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `group` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25927 ;

--
-- Dumping data for table `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `group`, `key`, `value`, `serialized`) VALUES
(1, 0, 'shipping', 'shipping_sort_order', '3', 0),
(2, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(3, 0, 'sub_total', 'sub_total_status', '1', 0),
(4, 0, 'tax', 'tax_status', '1', 0),
(5, 0, 'total', 'total_sort_order', '9', 0),
(6, 0, 'total', 'total_status', '1', 0),
(7, 0, 'tax', 'tax_sort_order', '5', 0),
(8, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
(9, 0, 'cod', 'cod_sort_order', '5', 0),
(10, 0, 'cod', 'cod_total', '0.01', 0),
(11, 0, 'cod', 'cod_order_status_id', '1', 0),
(12, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(13, 0, 'cod', 'cod_status', '1', 0),
(14, 0, 'shipping', 'shipping_status', '1', 0),
(15, 0, 'shipping', 'shipping_estimator', '1', 0),
(27, 0, 'coupon', 'coupon_sort_order', '4', 0),
(28, 0, 'coupon', 'coupon_status', '1', 0),
(34, 0, 'flat', 'flat_sort_order', '1', 0),
(35, 0, 'flat', 'flat_status', '1', 0),
(36, 0, 'flat', 'flat_geo_zone_id', '0', 0),
(37, 0, 'flat', 'flat_tax_class_id', '9', 0),
(41, 0, 'flat', 'flat_cost', '5.00', 0),
(42, 0, 'credit', 'credit_sort_order', '7', 0),
(43, 0, 'credit', 'credit_status', '1', 0),
(53, 0, 'reward', 'reward_sort_order', '2', 0),
(54, 0, 'reward', 'reward_status', '1', 0),
(56, 0, 'affiliate', 'affiliate_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:2:"10";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1),
(11460, 0, 'account', 'account_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:1:"6";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1),
(94, 0, 'voucher', 'voucher_sort_order', '8', 0),
(95, 0, 'voucher', 'voucher_status', '1', 0),
(103, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(104, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
(21362, 0, 'pavblog', 'pavblog', 'a:42:{s:14:"general_lwidth";s:3:"870";s:15:"general_lheight";s:3:"400";s:14:"general_swidth";s:3:"870";s:15:"general_sheight";s:3:"400";s:14:"general_xwidth";s:2:"80";s:15:"general_xheight";s:2:"80";s:14:"rss_limit_item";s:2:"12";s:26:"keyword_listing_blogs_page";s:5:"blogs";s:16:"children_columns";s:1:"3";s:14:"general_cwidth";s:3:"261";s:15:"general_cheight";s:3:"153";s:22:"cat_limit_leading_blog";s:1:"1";s:24:"cat_limit_secondary_blog";s:1:"5";s:22:"cat_leading_image_type";s:1:"l";s:24:"cat_secondary_image_type";s:1:"s";s:24:"cat_columns_leading_blog";s:1:"1";s:27:"cat_columns_secondary_blogs";s:1:"1";s:14:"cat_show_title";s:1:"1";s:20:"cat_show_description";s:1:"1";s:17:"cat_show_readmore";s:1:"1";s:14:"cat_show_image";s:1:"1";s:15:"cat_show_author";s:1:"1";s:17:"cat_show_category";s:1:"1";s:16:"cat_show_created";s:1:"1";s:13:"cat_show_hits";s:1:"1";s:24:"cat_show_comment_counter";s:1:"1";s:15:"blog_image_type";s:1:"l";s:15:"blog_show_title";s:1:"1";s:15:"blog_show_image";s:1:"1";s:16:"blog_show_author";s:1:"1";s:18:"blog_show_category";s:1:"1";s:17:"blog_show_created";s:1:"1";s:25:"blog_show_comment_counter";s:1:"1";s:14:"blog_show_hits";s:1:"1";s:22:"blog_show_comment_form";s:1:"1";s:14:"comment_engine";s:5:"local";s:14:"diquis_account";s:10:"pavothemes";s:14:"facebook_appid";s:12:"100858303516";s:13:"comment_limit";s:2:"10";s:14:"facebook_width";s:3:"600";s:20:"auto_publish_comment";s:1:"0";s:16:"enable_recaptcha";s:1:"1";}', 1),
(25552, 0, 'pavblog_frontmodules', 'pavblog_frontmodules', 'a:1:{s:7:"modules";a:3:{i:0;s:15:"pavblogcategory";i:1;s:14:"pavblogcomment";i:2;s:13:"pavbloglatest";}}', 1),
(25553, 0, 'pavblogcategory', 'pavblogcategory_module', 'a:1:{i:1;a:5:{s:11:"category_id";s:1:"1";s:9:"layout_id";s:2:"12";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1),
(25554, 0, 'pavblogcomment', 'pavblogcomment_module', 'a:1:{i:1;a:5:{s:5:"limit";s:1:"6";s:9:"layout_id";s:2:"12";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}}', 1),
(16648, 0, 'pavverticalmenu_params', 'params', '[{"submenu":1,"subwidth":600,"cols":1,"group":0,"id":44,"rows":[{"cols":[{"widgets":"wid-11","colwidth":6},{"widgets":"wid-10","colwidth":6}]},{"cols":[{"widgets":"wid-9","colwidth":6},{"widgets":"wid-8","colclass":"hidden-heading-title","colwidth":6}]}]},{"submenu":1,"subwidth":600,"id":7,"cols":1,"group":0,"rows":[{"cols":[{"widgets":"wid-4","colwidth":12}]}]},{"submenu":1,"cols":1,"group":0,"id":3,"rows":[{"cols":[{"colwidth":12,"type":"menu"}]}]},{"submenu":1,"cols":1,"group":0,"id":26,"rows":[{"cols":[{"colwidth":12,"type":"menu"}]}]},{"submenu":1,"cols":1,"group":0,"id":13,"rows":[{"cols":[{"colwidth":12,"type":"menu"}]}]},{"submenu":1,"cols":1,"group":0,"id":28,"rows":[{"cols":[{"colwidth":12,"type":"menu"}]}]}]', 0),
(15356, 0, 'pavverticalmenu', 'pavverticalmenu_module', '', 0),
(25917, 0, 'pavproducttabs', 'pavproducttabs_module', 'a:1:{i:1;a:12:{s:11:"description";a:2:{i:1;s:0:"";i:2;s:0:"";}s:12:"module_class";s:0:"";s:4:"tabs";a:4:{i:0;s:6:"latest";i:1;s:10:"bestseller";i:2;s:7:"special";i:3;s:10:"mostviewed";}s:5:"width";s:3:"292";s:6:"height";s:3:"400";s:12:"itemsperpage";s:1:"8";s:4:"cols";s:1:"4";s:5:"limit";s:2:"24";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";i:1;}}', 1),
(14154, 0, 'pavproductcarousel', 'pavproductcarousel_module', 'a:7:{i:1;a:14:{s:11:"description";a:2:{i:1;s:0:"";i:2;s:0:"";}s:6:"prefix";s:0:"";s:4:"tabs";a:1:{i:0;s:8:"featured";}s:5:"width";s:3:"180";s:6:"height";s:3:"158";s:12:"itemsperpage";s:1:"2";s:4:"cols";s:1:"2";s:5:"limit";s:1:"4";s:8:"interval";s:4:"8000";s:9:"auto_play";s:1:"0";s:9:"layout_id";s:1:"3";s:8:"position";s:16:"call_by_category";s:6:"status";s:1:"0";s:10:"sort_order";s:1:"1";}i:2;a:14:{s:11:"description";a:2:{i:1;s:0:"";i:2;s:0:"";}s:6:"prefix";s:15:"highlight-color";s:4:"tabs";a:1:{i:0;s:7:"special";}s:5:"width";s:3:"180";s:6:"height";s:3:"158";s:12:"itemsperpage";s:1:"2";s:4:"cols";s:1:"2";s:5:"limit";s:1:"4";s:8:"interval";s:4:"8000";s:9:"auto_play";s:1:"0";s:9:"layout_id";s:1:"3";s:8:"position";s:16:"call_by_category";s:6:"status";s:1:"0";s:10:"sort_order";s:1:"2";}i:3;a:14:{s:11:"description";a:2:{i:1;s:0:"";i:2;s:0:"";}s:6:"prefix";s:4:"blue";s:4:"tabs";a:1:{i:0;s:10:"bestseller";}s:5:"width";s:3:"254";s:6:"height";s:3:"223";s:12:"itemsperpage";s:1:"2";s:4:"cols";s:1:"2";s:5:"limit";s:1:"4";s:8:"interval";s:4:"8000";s:9:"auto_play";s:1:"0";s:9:"layout_id";s:1:"2";s:8:"position";s:9:"promotion";s:6:"status";s:1:"0";s:10:"sort_order";s:1:"1";}i:4;a:14:{s:11:"description";a:2:{i:1;s:0:"";i:2;s:0:"";}s:6:"prefix";s:9:"light red";s:4:"tabs";a:1:{i:0;s:6:"latest";}s:5:"width";s:3:"254";s:6:"height";s:3:"223";s:12:"itemsperpage";s:1:"2";s:4:"cols";s:1:"2";s:5:"limit";s:1:"4";s:8:"interval";s:4:"8000";s:9:"auto_play";s:1:"0";s:9:"layout_id";s:1:"2";s:8:"position";s:9:"promotion";s:6:"status";s:1:"0";s:10:"sort_order";s:1:"2";}i:5;a:14:{s:11:"description";a:2:{i:1;s:0:"";i:2;s:0:"";}s:6:"prefix";s:4:"best";s:4:"tabs";a:1:{i:0;s:10:"bestseller";}s:5:"width";s:3:"239";s:6:"height";s:3:"209";s:12:"itemsperpage";s:1:"6";s:4:"cols";s:1:"3";s:5:"limit";s:1:"3";s:8:"interval";s:4:"8000";s:9:"auto_play";s:1:"0";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"column_left";s:6:"status";s:1:"0";s:10:"sort_order";s:1:"6";}i:6;a:14:{s:11:"description";a:2:{i:1;s:0:"";i:2;s:0:"";}s:6:"prefix";s:0:"";s:4:"tabs";a:1:{i:0;s:7:"special";}s:5:"width";s:3:"270";s:6:"height";s:3:"203";s:12:"itemsperpage";s:1:"4";s:4:"cols";s:1:"4";s:5:"limit";s:2:"16";s:8:"interval";s:4:"8000";s:9:"auto_play";s:1:"0";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"0";s:10:"sort_order";i:11;}i:7;a:14:{s:11:"description";a:2:{i:1;s:0:"";i:2;s:0:"";}s:6:"prefix";s:0:"";s:4:"tabs";a:1:{i:0;s:6:"latest";}s:5:"width";s:2:"80";s:6:"height";s:2:"60";s:12:"itemsperpage";s:1:"4";s:4:"cols";s:1:"4";s:5:"limit";s:2:"16";s:8:"interval";s:4:"8000";s:9:"auto_play";s:1:"0";s:9:"layout_id";s:1:"3";s:8:"position";s:11:"column_left";s:6:"status";s:1:"0";s:10:"sort_order";s:1:"2";}}', 1),
(25914, 0, 'pavsliderlayer', 'pavsliderlayer_module', 'a:1:{i:0;a:5:{s:8:"group_id";s:1:"1";s:9:"layout_id";s:1:"1";s:8:"position";s:9:"slideshow";s:6:"status";s:1:"1";s:10:"sort_order";i:1;}}', 1),
(25920, 0, 'latest', 'latest_module', 'a:1:{i:0;a:7:{s:5:"limit";s:1:"4";s:11:"image_width";s:3:"292";s:12:"image_height";s:3:"400";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";i:3;}}', 1),
(25778, 0, 'config', 'config_seo_url', '0', 0),
(25779, 0, 'config', 'config_file_extension_allowed', 'txt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\nrtf\r\nxls\r\nppt\r\nodt\r\nods', 0),
(25780, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/jpeg\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/vnd.microsoft.icon\r\nimage/tiff\r\nimage/tiff\r\nimage/svg+xml\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-rar-compressed\r\napplication/x-msdownload\r\napplication/vnd.ms-cab-compressed\r\naudio/mpeg\r\nvideo/quicktime\r\nvideo/quicktime\r\napplication/pdf\r\nimage/vnd.adobe.photoshop\r\napplication/postscript\r\napplication/postscript\r\napplication/postscript\r\napplication/msword\r\napplication/rtf\r\napplication/vnd.ms-excel\r\napplication/vnd.ms-powerpoint\r\napplication/vnd.oasis.opendocument.text\r\napplication/vnd.oasis.opendocument.spreadsheet', 0),
(25772, 0, 'config', 'config_fraud_key', '', 0),
(25773, 0, 'config', 'config_fraud_score', '', 0),
(25774, 0, 'config', 'config_fraud_status_id', '7', 0),
(25775, 0, 'config', 'config_secure', '0', 0),
(25776, 0, 'config', 'config_shared', '0', 0),
(25777, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai''hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(25771, 0, 'config', 'config_fraud_detection', '0', 0),
(21525, 0, 'pavtestimonial', 'pavtestimonial_module', 'a:1:{i:0;a:11:{s:9:"layout_id";s:1:"1";s:8:"position";s:12:"column_right";s:6:"status";s:1:"0";s:10:"sort_order";i:1;s:9:"auto_play";s:1:"1";s:13:"text_interval";s:4:"8000";s:5:"width";s:2:"70";s:6:"height";s:2:"70";s:11:"column_item";s:1:"1";s:10:"page_items";s:1:"4";s:16:"testimonial_item";a:2:{i:1;a:4:{s:5:"image";s:35:"data/avata/picture-1-1399513838.png";s:10:"video_link";s:0:"";s:7:"profile";a:2:{i:1;s:120:"&lt;div class=&quot;name&quot;&gt;joe doe&lt;/div&gt;\r\n\r\n&lt;div class=&quot;job&quot;&gt;creative manager&lt;/div&gt;\r\n";i:2;s:120:"&lt;div class=&quot;name&quot;&gt;joe doe&lt;/div&gt;\r\n\r\n&lt;div class=&quot;job&quot;&gt;creative manager&lt;/div&gt;\r\n";}s:11:"description";a:2:{i:1;s:157:"&lt;p&gt;Proin gravida nibh vel velit auctor aliquetenean sollicitn, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh&lt;/p&gt;\r\n";i:2;s:157:"&lt;p&gt;Proin gravida nibh vel velit auctor aliquetenean sollicitn, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh&lt;/p&gt;\r\n";}}i:2;a:4:{s:5:"image";s:35:"data/avata/picture-1-1399513838.png";s:10:"video_link";s:0:"";s:7:"profile";a:2:{i:1;s:120:"&lt;div class=&quot;name&quot;&gt;joe doe&lt;/div&gt;\r\n\r\n&lt;div class=&quot;job&quot;&gt;creative manager&lt;/div&gt;\r\n";i:2;s:120:"&lt;div class=&quot;name&quot;&gt;joe doe&lt;/div&gt;\r\n\r\n&lt;div class=&quot;job&quot;&gt;creative manager&lt;/div&gt;\r\n";}s:11:"description";a:2:{i:1;s:157:"&lt;p&gt;Proin gravida nibh vel velit auctor aliquetenean sollicitn, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh&lt;/p&gt;\r\n";i:2;s:157:"&lt;p&gt;Proin gravida nibh vel velit auctor aliquetenean sollicitn, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh&lt;/p&gt;\r\n";}}}}}', 1),
(25925, 0, 'pavcustom', 'pavcustom_module', 'a:4:{i:1;a:8:{s:12:"module_title";a:2:{i:1;s:11:"INFORMATION";i:2;s:10:"LogoFooter";}s:11:"description";a:2:{i:1;s:534:"&lt;p&gt;&lt;img alt=&quot;&quot; class=&quot;img-responsive&quot; src=&quot;image/data/logo-footer.png&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;This is Photoshop''s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit.&lt;/p&gt;\r\n\r\n&lt;p&gt;Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae&lt;/p&gt;\r\n";i:2;s:534:"&lt;p&gt;&lt;img alt=&quot;&quot; class=&quot;img-responsive&quot; src=&quot;image/data/logo-footer.png&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;This is Photoshop''s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit.&lt;/p&gt;\r\n\r\n&lt;p&gt;Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae&lt;/p&gt;\r\n";}s:10:"show_title";s:1:"0";s:9:"layout_id";s:5:"99999";s:8:"position";s:13:"footer_center";s:6:"status";s:1:"1";s:12:"module_class";s:0:"";s:10:"sort_order";s:1:"1";}i:2;a:8:{s:12:"module_title";a:2:{i:1;s:12:"contact info";i:2;s:12:"contact info";}s:11:"description";a:2:{i:1;s:382:"&lt;address&gt;\r\n&lt;p class=&quot;text-uppercase&quot;&gt;MAIN STORE&lt;/p&gt;\r\n108 Sky Tower, Street name, AZ District, New York City, USA&lt;br /&gt;\r\n0123 456 78 / 0123 456 788&lt;br /&gt;\r\ncontact@foxstore.com&lt;/address&gt;\r\n\r\n&lt;address&gt;\r\n&lt;p class=&quot;text-uppercase&quot;&gt;hotline &lt;a href=&quot;#&quot;&gt;1800 1570 333&lt;/a&gt;&lt;/p&gt;\r\n&lt;/address&gt;\r\n";i:2;s:382:"&lt;address&gt;\r\n&lt;p class=&quot;text-uppercase&quot;&gt;MAIN STORE&lt;/p&gt;\r\n108 Sky Tower, Street name, AZ District, New York City, USA&lt;br /&gt;\r\n0123 456 78 / 0123 456 788&lt;br /&gt;\r\ncontact@foxstore.com&lt;/address&gt;\r\n\r\n&lt;address&gt;\r\n&lt;p class=&quot;text-uppercase&quot;&gt;hotline &lt;a href=&quot;#&quot;&gt;1800 1570 333&lt;/a&gt;&lt;/p&gt;\r\n&lt;/address&gt;\r\n";}s:10:"show_title";s:1:"1";s:9:"layout_id";s:5:"99999";s:8:"position";s:13:"footer_center";s:6:"status";s:1:"1";s:12:"module_class";s:0:"";s:10:"sort_order";s:1:"3";}i:3;a:8:{s:12:"module_title";a:2:{i:1;s:12:"Intro footer";i:2;s:12:"Intro footer";}s:11:"description";a:2:{i:1;s:824:"&lt;div class=&quot;support&quot;&gt;\r\n&lt;div class=&quot;service&quot;&gt;&lt;i class=&quot;fa fa-truck service-icon&quot;&gt;&amp;nbsp;&lt;/i&gt;\r\n&lt;div class=&quot;desc&quot;&gt;\r\n&lt;h4&gt;Free shipping&lt;/h4&gt;\r\n\r\n&lt;p&gt;on order over 99.99$&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;service&quot;&gt;&lt;i class=&quot;fa fa-retweet service-icon&quot;&gt;&amp;nbsp;&lt;/i&gt;\r\n\r\n&lt;div class=&quot;desc&quot;&gt;\r\n&lt;h4&gt;Free return&lt;/h4&gt;\r\n\r\n&lt;p&gt;free 90 days return policy&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;service&quot;&gt;&lt;i class=&quot;fa fa-money service-icon&quot;&gt;&amp;nbsp;&lt;/i&gt;\r\n\r\n&lt;div class=&quot;desc&quot;&gt;\r\n&lt;h4&gt;Member discount&lt;/h4&gt;\r\n\r\n&lt;p&gt;free resigter&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n";i:2;s:824:"&lt;div class=&quot;support&quot;&gt;\r\n&lt;div class=&quot;service&quot;&gt;&lt;i class=&quot;fa fa-truck service-icon&quot;&gt;&amp;nbsp;&lt;/i&gt;\r\n&lt;div class=&quot;desc&quot;&gt;\r\n&lt;h4&gt;Free shipping&lt;/h4&gt;\r\n\r\n&lt;p&gt;on order over 99.99$&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;service&quot;&gt;&lt;i class=&quot;fa fa-retweet service-icon&quot;&gt;&amp;nbsp;&lt;/i&gt;\r\n\r\n&lt;div class=&quot;desc&quot;&gt;\r\n&lt;h4&gt;Free return&lt;/h4&gt;\r\n\r\n&lt;p&gt;free 90 days return policy&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;service&quot;&gt;&lt;i class=&quot;fa fa-money service-icon&quot;&gt;&amp;nbsp;&lt;/i&gt;\r\n\r\n&lt;div class=&quot;desc&quot;&gt;\r\n&lt;h4&gt;Member discount&lt;/h4&gt;\r\n\r\n&lt;p&gt;free resigter&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n";}s:10:"show_title";s:1:"0";s:9:"layout_id";s:5:"99999";s:8:"position";s:13:"footer_center";s:6:"status";s:1:"1";s:12:"module_class";s:0:"";s:10:"sort_order";i:4;}i:4;a:8:{s:12:"module_title";a:2:{i:1;s:6:"banner";i:2;s:6:"banner";}s:11:"description";a:2:{i:1;s:136:"&lt;div&gt;&lt;img alt=&quot;&quot; class=&quot;img-responsive&quot; src=&quot;image/data/banner/banner-01.jpg&quot; /&gt;&lt;/div&gt;\r\n";i:2;s:136:"&lt;div&gt;&lt;img alt=&quot;&quot; class=&quot;img-responsive&quot; src=&quot;image/data/banner/banner-01.jpg&quot; /&gt;&lt;/div&gt;\r\n";}s:10:"show_title";s:1:"0";s:9:"layout_id";s:1:"1";s:8:"position";s:8:"showcase";s:6:"status";s:1:"1";s:12:"module_class";s:9:"nopadding";s:10:"sort_order";s:1:"1";}}', 1),
(25913, 0, 'pavmegamenu', 'pavmegamenu_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:5:"99999";s:8:"position";s:8:"mainmenu";s:6:"status";s:1:"1";s:10:"sort_order";i:1;}}', 1),
(25896, 0, 'pavmegamenu_params', 'params', '[{"submenu":1,"subwidth":870,"id":41,"align":"aligned-fullwidth","cols":1,"group":0,"rows":[{"cols":[{"widgets":"wid-3","colwidth":3},{"widgets":"wid-9","colwidth":2},{"widgets":"wid-7","colwidth":2},{"widgets":"wid-10","colwidth":5}]}]},{"align":"aligned-left","submenu":1,"subwidth":520,"cols":1,"group":0,"id":5,"rows":[{"cols":[{"widgets":"wid-1","colwidth":12}]}]},{"align":"aligned-left","submenu":1,"cols":1,"group":0,"id":3,"rows":[{"cols":[{"colwidth":12,"type":"menu"}]}]},{"align":"aligned-left","submenu":1,"cols":1,"group":0,"id":32,"rows":[{"cols":[{"colwidth":12,"type":"menu"}]}]},{"align":"aligned-left","submenu":1,"cols":1,"group":0,"id":25,"rows":[{"cols":[{"colwidth":12,"type":"menu"}]}]},{"align":"aligned-left","submenu":1,"cols":1,"group":0,"id":33,"rows":[{"cols":[{"colwidth":12,"type":"menu"}]}]}]', 0),
(25678, 0, 'category', 'category_module', 'a:5:{i:0;a:4:{s:9:"layout_id";s:1:"3";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:1;a:4:{s:9:"layout_id";s:1:"4";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:2;a:4:{s:9:"layout_id";s:1:"5";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:3;a:4:{s:9:"layout_id";s:2:"13";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:4;a:4:{s:9:"layout_id";s:2:"14";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1),
(16952, 0, 'pavproductfeatured', 'pavproductfeatured_action', 'save-edit', 0),
(12065, 0, 'pavsocial', 'pavsocial_module', 'a:1:{i:1;a:27:{s:9:"layout_id";s:5:"99999";s:8:"position";s:13:"outsite_right";s:6:"status";s:1:"0";s:10:"sort_order";s:1:"1";s:8:"facebook";s:35:"https://www.facebook.com/Pavothemes";s:14:"application_id";s:0:"";s:12:"border_color";s:6:"FFFFFF";s:11:"colorscheme";s:5:"light";s:10:"face_width";s:3:"270";s:11:"face_height";s:3:"355";s:5:"tream";s:1:"0";s:10:"show_faces";s:1:"1";s:6:"header";s:1:"0";s:9:"widget_id";s:18:"366766896986591232";s:5:"count";s:1:"2";s:8:"username";s:10:"PavoThemes";s:5:"theme";s:5:"light";s:14:"nickname_color";s:6:"FFFFFF";s:10:"name_color";s:6:"2465FF";s:11:"title_color";s:6:"386DFF";s:10:"link_color";s:6:"2660FF";s:5:"width";s:3:"270";s:6:"height";s:3:"355";s:12:"show_replies";s:1:"0";s:17:"youtube_video_ids";s:11:"fNEepYl3LAk";s:11:"video_width";s:3:"270";s:12:"video_height";s:3:"137";}}', 1),
(25770, 0, 'config', 'config_alert_emails', '', 0),
(25769, 0, 'config', 'config_account_mail', '0', 0),
(25768, 0, 'config', 'config_alert_mail', '0', 0),
(25767, 0, 'config', 'config_smtp_timeout', '5', 0),
(25766, 0, 'config', 'config_smtp_port', '25', 0),
(25765, 0, 'config', 'config_smtp_password', '', 0),
(25764, 0, 'config', 'config_smtp_username', '', 0),
(25763, 0, 'config', 'config_smtp_host', '', 0),
(25762, 0, 'config', 'config_mail_parameter', '', 0),
(25761, 0, 'config', 'config_mail_protocol', 'mail', 0),
(25760, 0, 'config', 'config_ftp_status', '0', 0),
(25759, 0, 'config', 'config_ftp_root', '', 0),
(25758, 0, 'config', 'config_ftp_password', '', 0),
(25757, 0, 'config', 'config_ftp_username', '', 0),
(25756, 0, 'config', 'config_ftp_port', '21', 0),
(25755, 0, 'config', 'config_ftp_host', 'localhost', 0),
(25754, 0, 'config', 'config_image_cart_height', '84', 0),
(25753, 0, 'config', 'config_image_cart_width', '70', 0),
(25752, 0, 'config', 'config_image_wishlist_height', '108', 0),
(25751, 0, 'config', 'config_image_wishlist_width', '90', 0),
(25750, 0, 'config', 'config_image_compare_height', '108', 0),
(25749, 0, 'config', 'config_image_compare_width', '90', 0),
(25748, 0, 'config', 'config_image_related_height', '545', 0),
(25747, 0, 'config', 'config_image_related_width', '398', 0),
(25746, 0, 'config', 'config_image_additional_height', '163', 0),
(25745, 0, 'config', 'config_image_additional_width', '119', 0),
(25682, 0, 'pavpopulartags', 'pavpopulartags_module', 'a:1:{i:1;a:10:{s:5:"title";a:2:{i:1;s:12:"Popular tags";i:2;s:12:"Popular tags";}s:10:"limit_tags";s:2:"20";s:13:"min_font_size";s:1:"9";s:13:"max_font_size";s:2:"20";s:11:"font_weight";s:4:"bold";s:6:"prefix";s:13:"prefix_class1";s:9:"layout_id";s:1:"3";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"7";}}', 1),
(25918, 0, 'pavdeals', 'pavdeals_config', 'a:12:{s:15:"order_status_id";s:1:"7";s:12:"saleoff_icon";s:16:"data/saleoff.png";s:10:"today_deal";s:2:"99";s:8:"time_end";s:10:"2019-03-31";s:16:"enable_available";s:1:"1";s:11:"enable_pass";s:1:"1";s:10:"icon_width";s:3:"180";s:11:"icon_height";s:3:"180";s:5:"limit";s:2:"10";s:4:"cols";s:1:"4";s:5:"width";s:3:"191";s:6:"height";s:3:"167";}', 1),
(25919, 0, 'pavdeals', 'pavdeals_module', 'a:1:{i:1;a:16:{s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";i:2;s:10:"date_start";s:10:"2013-02-03";s:7:"date_to";s:10:"2016-01-31";s:12:"category_ids";a:20:{i:0;s:1:"0";i:1;s:2:"34";i:2;s:2:"43";i:3;s:2:"44";i:4;s:2:"47";i:5;s:2:"48";i:6;s:2:"49";i:7;s:2:"50";i:8;s:2:"59";i:9;s:2:"25";i:10;s:2:"29";i:11;s:2:"28";i:12;s:2:"35";i:13;s:2:"36";i:14;s:2:"30";i:15;s:2:"31";i:16;s:2:"32";i:17;s:2:"20";i:18;s:2:"27";i:19;s:2:"26";}s:10:"sort_deals";s:18:"p.sort_order__desc";s:5:"limit";s:2:"10";s:4:"cols";s:1:"2";s:12:"itemsperpage";s:1:"2";s:6:"prefix";s:5:"deals";s:5:"width";s:3:"292";s:6:"height";s:3:"400";s:9:"auto_play";s:1:"0";s:8:"interval";s:4:"1000";}}', 1),
(25921, 0, 'pavnewsletter', 'pavnewsletter_module', 'a:1:{i:1;a:6:{s:9:"layout_id";s:5:"99999";s:8:"position";s:10:"footer_top";s:6:"status";s:1:"1";s:10:"sort_order";i:1;s:11:"description";a:2:{i:1;s:0:"";i:2;s:0:"";}s:6:"social";a:2:{i:1;s:1350:"&lt;div class=&quot;social col-lg-3 col-md-3 col-sm-12 col-xs-12&quot;&gt;&lt;a class=&quot;facebook&quot; data-original-title=&quot;Facebook&quot; data-placement=&quot;top&quot; data-toggle=&quot;tooltip&quot; href=&quot;#&quot; title=&quot;&quot;&gt;&lt;i class=&quot;fa fa-facebook&quot;&gt;&amp;nbsp; &lt;/i&gt; &lt;/a&gt; &lt;a class=&quot;twitter&quot; data-original-title=&quot;Twitter&quot; data-placement=&quot;top&quot; data-toggle=&quot;tooltip&quot; href=&quot;#&quot; title=&quot;&quot;&gt; &lt;i class=&quot;fa fa-twitter&quot;&gt;&amp;nbsp; &lt;/i&gt; &lt;/a&gt; &lt;a class=&quot;youtube&quot; data-original-title=&quot;Youtube&quot; data-placement=&quot;top&quot; data-toggle=&quot;tooltip&quot; href=&quot;#&quot; title=&quot;&quot;&gt;&lt;i class=&quot;fa fa-youtube&quot;&gt;&amp;nbsp; &lt;/i&gt; &lt;/a&gt; &lt;a class=&quot;pinterest&quot; data-original-title=&quot;Pinterest&quot; data-placement=&quot;top&quot; data-toggle=&quot;tooltip&quot; href=&quot;#&quot; title=&quot;&quot;&gt;&lt;i class=&quot;fa fa-pinterest&quot;&gt;&amp;nbsp; &lt;/i&gt; &lt;/a&gt; &lt;a class=&quot;dribbble&quot; data-original-title=&quot;Dribbble&quot; data-placement=&quot;top&quot; data-toggle=&quot;tooltip&quot; href=&quot;#&quot; title=&quot;&quot;&gt;&lt;i class=&quot;fa fa-dribbble&quot;&gt;&amp;nbsp; &lt;/i&gt; &lt;/a&gt;&lt;/div&gt;\r\n";i:2;s:1350:"&lt;div class=&quot;social col-lg-3 col-md-3 col-sm-12 col-xs-12&quot;&gt;&lt;a class=&quot;facebook&quot; data-original-title=&quot;Facebook&quot; data-placement=&quot;top&quot; data-toggle=&quot;tooltip&quot; href=&quot;#&quot; title=&quot;&quot;&gt;&lt;i class=&quot;fa fa-facebook&quot;&gt;&amp;nbsp; &lt;/i&gt; &lt;/a&gt; &lt;a class=&quot;twitter&quot; data-original-title=&quot;Twitter&quot; data-placement=&quot;top&quot; data-toggle=&quot;tooltip&quot; href=&quot;#&quot; title=&quot;&quot;&gt; &lt;i class=&quot;fa fa-twitter&quot;&gt;&amp;nbsp; &lt;/i&gt; &lt;/a&gt; &lt;a class=&quot;youtube&quot; data-original-title=&quot;Youtube&quot; data-placement=&quot;top&quot; data-toggle=&quot;tooltip&quot; href=&quot;#&quot; title=&quot;&quot;&gt;&lt;i class=&quot;fa fa-youtube&quot;&gt;&amp;nbsp; &lt;/i&gt; &lt;/a&gt; &lt;a class=&quot;pinterest&quot; data-original-title=&quot;Pinterest&quot; data-placement=&quot;top&quot; data-toggle=&quot;tooltip&quot; href=&quot;#&quot; title=&quot;&quot;&gt;&lt;i class=&quot;fa fa-pinterest&quot;&gt;&amp;nbsp; &lt;/i&gt; &lt;/a&gt; &lt;a class=&quot;dribbble&quot; data-original-title=&quot;Dribbble&quot; data-placement=&quot;top&quot; data-toggle=&quot;tooltip&quot; href=&quot;#&quot; title=&quot;&quot;&gt;&lt;i class=&quot;fa fa-dribbble&quot;&gt;&amp;nbsp; &lt;/i&gt; &lt;/a&gt;&lt;/div&gt;\r\n";}}}', 1),
(25744, 0, 'config', 'config_image_product_height', '400', 0),
(25916, 0, 'pavbloglatest', 'pavbloglatest_module', 'a:1:{i:1;a:10:{s:11:"description";a:2:{i:1;s:0:"";i:2;s:0:"";}s:4:"tabs";s:6:"latest";s:5:"width";s:3:"390";s:6:"height";s:3:"520";s:4:"cols";s:1:"3";s:5:"limit";s:1:"3";s:9:"layout_id";s:1:"1";s:8:"position";s:9:"promotion";s:6:"status";s:1:"1";s:10:"sort_order";i:1;}}', 1),
(25743, 0, 'config', 'config_image_product_width', '292', 0),
(25742, 0, 'config', 'config_image_popup_height', '658', 0),
(25741, 0, 'config', 'config_image_popup_width', '480', 0),
(25740, 0, 'config', 'config_image_thumb_height', '545', 0),
(25739, 0, 'config', 'config_image_thumb_width', '398', 0),
(25738, 0, 'config', 'config_image_category_height', '140', 0),
(25737, 0, 'config', 'config_image_category_width', '878', 0),
(25736, 0, 'config', 'config_icon', 'data/cart.png', 0),
(25735, 0, 'config', 'config_logo', 'data/logo.png', 0),
(25734, 0, 'config', 'config_return_status_id', '2', 0),
(25733, 0, 'config', 'config_return_id', '0', 0),
(25732, 0, 'config', 'config_commission', '5', 0),
(25731, 0, 'config', 'config_affiliate_id', '4', 0),
(25730, 0, 'config', 'config_stock_status_id', '5', 0),
(25729, 0, 'config', 'config_stock_checkout', '0', 0),
(25728, 0, 'config', 'config_stock_warning', '0', 0),
(25727, 0, 'config', 'config_stock_display', '0', 0),
(25726, 0, 'config', 'config_complete_status_id', '5', 0),
(25725, 0, 'config', 'config_order_status_id', '1', 0),
(25724, 0, 'config', 'config_invoice_prefix', 'INV-2013-00', 0),
(25723, 0, 'config', 'config_order_edit', '100', 0),
(25722, 0, 'config', 'config_checkout_id', '5', 0),
(25721, 0, 'config', 'config_guest_checkout', '1', 0),
(25720, 0, 'config', 'config_cart_weight', '1', 0),
(25719, 0, 'config', 'config_account_id', '3', 0),
(25718, 0, 'config', 'config_customer_price', '0', 0),
(25717, 0, 'config', 'config_customer_group_display', 'a:1:{i:0;s:1:"1";}', 1),
(25716, 0, 'config', 'config_customer_group_id', '1', 0),
(25715, 0, 'config', 'config_customer_online', '0', 0),
(25714, 0, 'config', 'config_tax_customer', 'shipping', 0),
(25713, 0, 'config', 'config_tax_default', 'shipping', 0),
(25712, 0, 'config', 'config_vat', '0', 0),
(25711, 0, 'config', 'config_tax', '1', 0),
(25710, 0, 'config', 'config_voucher_max', '1000', 0),
(25709, 0, 'config', 'config_voucher_min', '1', 0),
(25708, 0, 'config', 'config_download', '1', 0),
(25707, 0, 'config', 'config_review_status', '1', 0),
(25706, 0, 'config', 'config_product_count', '1', 0),
(25705, 0, 'config', 'config_admin_limit', '20', 0),
(25704, 0, 'config', 'config_catalog_limit', '8', 0),
(25703, 0, 'config', 'config_weight_class_id', '1', 0),
(25702, 0, 'config', 'config_length_class_id', '1', 0),
(25701, 0, 'config', 'config_currency_auto', '1', 0),
(25700, 0, 'config', 'config_currency', 'USD', 0),
(25699, 0, 'config', 'config_admin_language', 'en', 0),
(25698, 0, 'config', 'config_language', 'en', 0),
(25697, 0, 'config', 'config_zone_id', '3563', 0),
(25696, 0, 'config', 'config_country_id', '222', 0),
(25695, 0, 'config', 'config_layout_id', '4', 0),
(25694, 0, 'config', 'config_template', 'pav_foxs_store', 0),
(21644, 0, 'filter', 'filter_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:1:"3";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}}', 1),
(25693, 0, 'config', 'config_meta_description', 'Pav  Fox''s Store', 0),
(25692, 0, 'config', 'config_title', 'Pav Fox''s Store', 0),
(25691, 0, 'config', 'config_fax', '1234567890', 0),
(25690, 0, 'config', 'config_telephone', ' (035) 757-0000', 0),
(25689, 0, 'config', 'config_email', 'admin@gmail.com', 0),
(25688, 0, 'config', 'config_address', '123 Main st. Los Angeles, CA, 90012, U.S.A', 0),
(25687, 0, 'config', 'config_owner', 'Pav Fox''s Store', 0),
(25924, 0, 'pavtwitter', 'pavtwitter_module', 'a:1:{i:1;a:17:{s:9:"layout_id";s:5:"99999";s:8:"position";s:13:"footer_center";s:6:"status";s:1:"1";s:10:"sort_order";i:3;s:9:"widget_id";s:18:"366766896986591232";s:5:"count";s:1:"1";s:8:"username";s:10:"pavothemes";s:5:"theme";s:4:"dark";s:14:"nickname_color";s:6:"999999";s:10:"name_color";s:6:"999999";s:11:"title_color";s:6:"AAAAAA";s:10:"link_color";s:6:"AAAAAA";s:12:"border_color";s:6:"FFFFFF";s:5:"width";s:3:"300";s:6:"height";s:3:"500";s:12:"show_replies";s:1:"1";s:6:"chrome";a:5:{i:0;s:8:"noheader";i:1;s:8:"nofooter";i:2;s:9:"noborders";i:3;s:11:"noscrollbar";i:4;s:11:"transparent";}}}', 1),
(25686, 0, 'config', 'config_name', 'Pav Fox''s Store', 0),
(25781, 0, 'config', 'config_maintenance', '0', 0),
(25782, 0, 'config', 'config_password', '1', 0),
(25783, 0, 'config', 'config_encryption', 'd8980481b1096c982a121f56efa74d90', 0),
(25784, 0, 'config', 'config_compression', '0', 0),
(25785, 0, 'config', 'config_error_display', '1', 0),
(25786, 0, 'config', 'config_error_log', '1', 0),
(25787, 0, 'config', 'config_error_filename', 'error.txt', 0),
(25788, 0, 'config', 'config_google_analytics', '', 0),
(25865, 0, 'pavlandingpage', 'pavlandingpage', 'a:2:{s:9:"layout_id";s:5:"99999";i:0;a:4:{s:13:"text_interval";s:4:"8000";s:7:"videoid";s:11:"lrhRkbL2FGg";s:9:"mainimage";s:37:"data/layerslider/bg-landingpage-1.jpg";s:12:"banner_image";a:3:{i:1;a:3:{s:5:"title";a:2:{i:1;a:3:{i:0;s:18:"real men choose us";i:1;s:123:"Our premum denim - abbreviated. A high-rise 5 pocket jean short in 4 washes. Order &lt;br&gt;today, wear them this weekend.";i:2;s:151:"&lt;a class=&quot;btn btn-outline-white&quot;&gt;browse categories&lt;/a&gt;\r\n&lt;a class=&quot;btn btn-outline-white&quot;&gt;view lookbooks&lt;/a&gt;";}i:2;a:3:{i:0;s:45:"الرجال الحقيقي تختار لنا";i:1;s:181:"لدينا الدنيم premum - مختصر. والشاهقة 5 جيب الجينز القصير في 4 يغسل. أجل &lt;br&gt; اليوم، ارتداء لهم في نهاية ";i:2;s:157:"&lt;a class=&quot;btn btn-outline-white&quot;&gt;تصفح الفئات&lt;/a&gt;\r\n&lt;a class=&quot;btn btn-outline-white&quot;&gt;عرض lookbooks&lt;/a&gt;";}}s:6:"effect";a:2:{i:1;a:3:{i:0;s:7:"slideUp";i:1;s:7:"slideUp";i:2;s:7:"slideUp";}i:2;a:3:{i:0;s:7:"slideUp";i:1;s:7:"slideUp";i:2;s:7:"slideUp";}}s:5:"class";a:2:{i:1;a:3:{i:0;s:10:"text_large";i:1;s:10:"text_small";i:2;s:0:"";}i:2;a:3:{i:0;s:10:"text_large";i:1;s:10:"text_small";i:2;s:0:"";}}}i:2;a:3:{s:5:"title";a:2:{i:1;a:3:{i:0;s:21:"men style inspiration";i:1;s:123:"Our premum denim - abbreviated. A high-rise 5 pocket jean short in 4 washes. Order &lt;br&gt;today, wear them this weekend.";i:2;s:151:"&lt;a class=&quot;btn btn-outline-white&quot;&gt;browse categories&lt;/a&gt;\r\n&lt;a class=&quot;btn btn-outline-white&quot;&gt;view lookbooks&lt;/a&gt;";}i:2;a:3:{i:0;s:34:"أسلوب الرجال إلهام";i:1;s:181:"لدينا الدنيم premum - مختصر. والشاهقة 5 جيب الجينز القصير في 4 يغسل. أجل &lt;br&gt; اليوم، ارتداء لهم في نهاية ";i:2;s:157:"&lt;a class=&quot;btn btn-outline-white&quot;&gt;تصفح الفئات&lt;/a&gt;\r\n&lt;a class=&quot;btn btn-outline-white&quot;&gt;عرض lookbooks&lt;/a&gt;";}}s:6:"effect";a:2:{i:1;a:3:{i:0;s:7:"slideUp";i:1;s:7:"slideUp";i:2;s:7:"slideUp";}i:2;a:3:{i:0;s:7:"slideUp";i:1;s:7:"slideUp";i:2;s:7:"slideUp";}}s:5:"class";a:2:{i:1;a:3:{i:0;s:10:"text_large";i:1;s:10:"text_small";i:2;s:0:"";}i:2;a:3:{i:0;s:10:"text_large";i:1;s:10:"text_small";i:2;s:0:"";}}}i:3;a:3:{s:5:"title";a:2:{i:1;a:3:{i:0;s:21:"online store now open";i:1;s:123:"Our premum denim - abbreviated. A high-rise 5 pocket jean short in 4 washes. Order &lt;br&gt;today, wear them this weekend.";i:2;s:151:"&lt;a class=&quot;btn btn-outline-white&quot;&gt;browse categories&lt;/a&gt;\r\n&lt;a class=&quot;btn btn-outline-white&quot;&gt;view lookbooks&lt;/a&gt;";}i:2;a:3:{i:0;s:54:"متجر على الانترنت الآن مفتوحة";i:1;s:181:"لدينا الدنيم premum - مختصر. والشاهقة 5 جيب الجينز القصير في 4 يغسل. أجل &lt;br&gt; اليوم، ارتداء لهم في نهاية ";i:2;s:157:"&lt;a class=&quot;btn btn-outline-white&quot;&gt;تصفح الفئات&lt;/a&gt;\r\n&lt;a class=&quot;btn btn-outline-white&quot;&gt;عرض lookbooks&lt;/a&gt;";}}s:6:"effect";a:2:{i:1;a:3:{i:0;s:7:"slideUp";i:1;s:7:"slideUp";i:2;s:7:"slideUp";}i:2;a:3:{i:0;s:7:"slideUp";i:1;s:7:"slideUp";i:2;s:7:"slideUp";}}s:5:"class";a:2:{i:1;a:3:{i:0;s:10:"text_large";i:1;s:10:"text_small";i:2;s:0:"";}i:2;a:3:{i:0;s:10:"text_large";i:1;s:10:"text_small";i:2;s:0:"";}}}}}}', 1),
(25926, 0, 'themecontrol', 'themecontrol', 'a:71:{s:13:"default_theme";s:14:"pav_foxs_store";s:9:"layout_id";s:1:"1";s:8:"position";s:1:"1";s:21:"cateogry_display_mode";s:4:"grid";s:24:"listing_products_columns";s:1:"0";s:30:"listing_products_columns_small";s:1:"0";s:34:"listing_products_columns_minismall";s:1:"0";s:14:"category_pzoom";s:1:"1";s:18:"product_enablezoom";s:1:"1";s:19:"product_zoomgallery";s:6:"slider";s:16:"product_zoommode";s:5:"basic";s:20:"product_zoomlenssize";s:3:"150";s:18:"product_zoomeasing";s:1:"1";s:21:"product_zoomlensshape";s:5:"basic";s:22:"product_related_column";s:1:"4";s:24:"enable_product_customtab";s:1:"1";s:22:"product_customtab_name";a:2:{i:1;s:10:"Custom Tab";i:2;s:40:"سنغافورة. عدد ثم تجهيز";}s:25:"product_customtab_content";a:2:{i:1;s:737:"&lt;p&gt;Sapiente rerum magni voluptates accusantium sequi molestias deleniti aliquid facilis commodi aut. Ea ab facere voluptatem cum beatae vero dolorem doloribus itaque culpa. Molestiae, optio, libero inventore ducimus natus incidunt qui dolor adipisci tempore tempora quo minima distinctio eligendi laborum ex quaerat eos! Unde suscipit porro est amet quis nostrum enim. Asperiores, ad, hic, culpa, rerum delectus similique minus facilis reprehenderit quisquam debitis dolores suscipit!&lt;/p&gt;\r\n\r\n&lt;p&gt;Qui laboriosam maiores ad. Enim, autem, beatae, sapiente minima non atque maiores maxime natus corporis possimus reprehenderit id blanditiis sequi repudiandae saepe reiciendis consequatur mollitia aspernatur cum!&lt;/p&gt;\r\n";i:2;s:2036:"&lt;p&gt;أم كما وتردي الساحل, وحتّى اليها حين في, ثم يذكر تكتيكاً بوزيرها حول. وجزر تنفّس أفريقيا بلا لم, عل هامش الحربية كان. رئيس غرّة، والألمانية، أخذ كل. هو ضرب طوكيو للجزر الصعداء. في ماذا مناوشات والروسية حدى. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،. حول الشمل بالفشل أي. بهجوم المعاهدات تم وفي. قد بحق لعدم ويكيبيديا, في أواخر كُلفة لإعلان الا. ان تلك الشمل واستمر الجديدة،. ذلك أم عملية المعاهدات. جُل ثم بينما والتي, إيو بل اتفاقية لبولندا،. في الأثناء، ويكيبيديا البريطاني حدة. ما بحق الأثنان المقاومة الإمبراطورية. من أما المتّبعة استطاعوا, حول مكّن كردة السوفييتي تم. حتى وزارة المعاهدات ويكيبيديا من, كلا أي دأبوا السيء, كلا دخول ديسمبر الأوضاع أي. مما و بأيدي القادة والكساد, الا ثم تصرّف الغالي سنغافورة. عدد ثم تجهيز الجنرال بالدبابات. عليها اقتصادية أم بال, بل جورج أثره، جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد تُصب منتصف وفنلندا, و الى عليها وإعلان الإتحاد. أرغم الفاشي النازية لم بعد, أي خلاف لدحر استسلام بها. قصف أدنى ومدني، و, جوي تشرشل المحور، الياباني، إذ.&lt;/p&gt;\r\n";}s:16:"location_address";s:14:"Hanoi, Vietnam";s:17:"location_latitude";s:10:"21.0333333";s:18:"location_longitude";s:18:"105.85000000000002";s:18:"contact_customhtml";a:2:{i:1;s:732:"&lt;p&gt;&lt;b&gt;&lt;small&gt;This is a CMS block edited from admin panel.&lt;/small&gt;&lt;br /&gt;\r\n&lt;small&gt;You can insert any content here.&lt;/small&gt;&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque non dui at sapien tempor gravida ut vel arcu. Nullam ac eros eros, et ullamcorper leo.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;&lt;small&gt;Customer Service:&lt;/small&gt;&lt;/b&gt;&lt;br /&gt;\r\n&lt;a href=&quot;mailto:info@yourstore.com&quot;&gt;info@yourstore.com&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;&lt;small&gt;Returns and Refunds:&lt;/small&gt;&lt;/b&gt;&lt;br /&gt;\r\n&lt;a href=&quot;mailto:returns@yourstore.com&quot;&gt;returns@yourstore.com&lt;/a&gt;&lt;/p&gt;\r\n";i:2;s:732:"&lt;p&gt;&lt;b&gt;&lt;small&gt;This is a CMS block edited from admin panel.&lt;/small&gt;&lt;br /&gt;\r\n&lt;small&gt;You can insert any content here.&lt;/small&gt;&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque non dui at sapien tempor gravida ut vel arcu. Nullam ac eros eros, et ullamcorper leo.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;&lt;small&gt;Customer Service:&lt;/small&gt;&lt;/b&gt;&lt;br /&gt;\r\n&lt;a href=&quot;mailto:info@yourstore.com&quot;&gt;info@yourstore.com&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;&lt;small&gt;Returns and Refunds:&lt;/small&gt;&lt;/b&gt;&lt;br /&gt;\r\n&lt;a href=&quot;mailto:returns@yourstore.com&quot;&gt;returns@yourstore.com&lt;/a&gt;&lt;/p&gt;\r\n";}s:4:"skin";s:0:"";s:11:"theme_width";s:4:"auto";s:23:"enable_custom_copyright";s:1:"0";s:9:"copyright";s:29:"Copyright 2014 ThemeLexus.com";s:18:"enable_offsidebars";s:1:"1";s:20:"enable_footer_center";s:1:"1";s:16:"enable_paneltool";s:1:"1";s:12:"catalog_mode";s:1:"0";s:15:"template_layout";s:9:"fullwidth";s:9:"quickview";s:1:"1";s:9:"logo_type";s:10:"logo-theme";s:14:"product_layout";s:7:"default";s:21:"product_detail_layout";s:7:"default";s:14:"pavlandingpage";s:1:"1";s:13:"widget_paypal";a:2:{i:1;s:122:"&lt;p&gt;&lt;img alt=&quot;&quot; class=&quot;img-responsive&quot; src=&quot;image/data/paypal.png&quot; /&gt;&lt;/p&gt;\r\n";i:2;s:122:"&lt;p&gt;&lt;img alt=&quot;&quot; class=&quot;img-responsive&quot; src=&quot;image/data/paypal.png&quot; /&gt;&lt;/p&gt;\r\n";}s:17:"enable_customfont";s:1:"0";s:11:"type_fonts1";s:8:"standard";s:13:"normal_fonts1";s:7:"inherit";s:11:"google_url1";s:78:"http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,200,300,600,700,900";s:14:"google_family1";s:29:"''Source Sans Pro'', sans-serif";s:9:"fontsize1";s:7:"inherit";s:14:"body_selector1";s:4:"body";s:11:"type_fonts2";s:8:"standard";s:13:"normal_fonts2";s:7:"inherit";s:11:"google_url2";s:0:"";s:14:"google_family2";s:0:"";s:9:"fontsize2";s:7:"inherit";s:14:"body_selector2";s:15:"h1, #content h1";s:11:"type_fonts3";s:8:"standard";s:13:"normal_fonts3";s:7:"inherit";s:11:"google_url3";s:0:"";s:14:"google_family3";s:0:"";s:9:"fontsize3";s:7:"inherit";s:14:"body_selector3";s:44:"h2,h3,h4,h5, .box-heading, .box-heading span";s:11:"type_fonts4";s:8:"standard";s:13:"normal_fonts4";s:27:"Verdana, Geneva, sans-serif";s:11:"google_url4";s:0:"";s:14:"google_family4";s:0:"";s:14:"body_selector4";s:0:"";s:14:"block_showcase";s:0:"";s:15:"block_promotion";s:0:"";s:16:"block_footer_top";s:1:"1";s:19:"block_footer_center";s:0:"";s:19:"block_footer_bottom";s:0:"";s:19:"enable_compress_css";s:0:"";s:17:"exclude_css_files";s:13:"bootstrap.css";s:15:"customize_theme";s:0:"";s:10:"custom_css";s:0:"";s:17:"custom_javascript";s:0:"";}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_stock_status`
--

DROP TABLE IF EXISTS `oc_stock_status`;
CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order'),
(5, 1, 'Out Of Stock'),
(6, 1, '2 - 3 Days'),
(7, 2, 'In Stock'),
(8, 2, 'Pre-Order'),
(5, 2, 'Out Of Stock'),
(6, 2, '2 - 3 Days');

-- --------------------------------------------------------

--
-- Table structure for table `oc_store`
--

DROP TABLE IF EXISTS `oc_store`;
CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_class`
--

DROP TABLE IF EXISTS `oc_tax_class`;
CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed Stuff', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate`
--

DROP TABLE IF EXISTS `oc_tax_rate`;
CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=88 ;

--
-- Dumping data for table `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (17.5%)', '17.5000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

DROP TABLE IF EXISTS `oc_tax_rate_to_customer_group`;
CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rule`
--

DROP TABLE IF EXISTS `oc_tax_rule`;
CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=129 ;

--
-- Dumping data for table `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_url_alias`
--

DROP TABLE IF EXISTS `oc_url_alias`;
CREATE TABLE `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`url_alias_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=936 ;

--
-- Dumping data for table `oc_url_alias`
--

INSERT INTO `oc_url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
(913, 'product_id=48', 'ipod_classic'),
(935, 'category_id=20', 'new'),
(882, 'category_id=26', 'pc'),
(883, 'category_id=27', 'mac'),
(730, 'manufacturer_id=8', 'apple'),
(934, 'information_id=4', 'about_us'),
(912, 'product_id=42', 'test'),
(899, 'category_id=34', 'mp3-players'),
(885, 'category_id=36', 'Normal'),
(926, 'pavblog/blog=10', ''),
(878, 'pavblog/blog=11', ''),
(925, 'pavblog/blog=9', ''),
(931, 'pavblog/blog=7', ''),
(927, 'pavblog/blog=12', ''),
(886, 'pavblog/category=22', ''),
(887, 'pavblog/category=21', ''),
(888, 'pavblog/category=23', ''),
(889, 'pavblog/category=20', ''),
(890, 'pavblog/category=24', ''),
(891, 'pavblog/category=25', 'Second Item'),
(892, 'pavblog/category=26', 'Third Drop'),
(893, 'pavblog/category=27', 'Technology'),
(932, 'pavblog/blog=13', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user`
--

DROP TABLE IF EXISTS `oc_user`;
CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '122f1b17c', '', '', 'phamduc1990@gmail.com', '', '::1', 1, '2014-07-31 10:16:15'),
(2, 10, 'demo', '53b2b4c69942af1f56cf93bdf67cf5311158bc6a', '8bf43cc58', 'demo', 'demo', 'demo@demo.com', '', '', 1, '2014-01-27 23:47:21');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user_group`
--

DROP TABLE IF EXISTS `oc_user_group`;
CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Top Administrator', 'a:2:{s:6:"access";a:197:{i:0;s:14:"amazon/listing";i:1;s:14:"amazon/product";i:2;s:16:"amazonus/listing";i:3;s:16:"amazonus/product";i:4;s:17:"catalog/attribute";i:5;s:23:"catalog/attribute_group";i:6;s:16:"catalog/category";i:7;s:16:"catalog/download";i:8;s:14:"catalog/filter";i:9;s:19:"catalog/information";i:10;s:20:"catalog/manufacturer";i:11;s:14:"catalog/option";i:12;s:15:"catalog/product";i:13;s:15:"catalog/profile";i:14;s:14:"catalog/review";i:15;s:18:"common/filemanager";i:16;s:13:"design/banner";i:17;s:19:"design/custom_field";i:18;s:13:"design/layout";i:19;s:12:"ebay/profile";i:20;s:13:"ebay/template";i:21;s:14:"extension/feed";i:22;s:17:"extension/manager";i:23;s:16:"extension/module";i:24;s:17:"extension/openbay";i:25;s:17:"extension/payment";i:26;s:18:"extension/shipping";i:27;s:15:"extension/total";i:28;s:16:"feed/google_base";i:29;s:19:"feed/google_sitemap";i:30;s:20:"localisation/country";i:31;s:21:"localisation/currency";i:32;s:21:"localisation/geo_zone";i:33;s:21:"localisation/language";i:34;s:25:"localisation/length_class";i:35;s:25:"localisation/order_status";i:36;s:26:"localisation/return_action";i:37;s:26:"localisation/return_reason";i:38;s:26:"localisation/return_status";i:39;s:25:"localisation/stock_status";i:40;s:22:"localisation/tax_class";i:41;s:21:"localisation/tax_rate";i:42;s:25:"localisation/weight_class";i:43;s:17:"localisation/zone";i:44;s:14:"module/account";i:45;s:16:"module/affiliate";i:46;s:29:"module/amazon_checkout_layout";i:47;s:13:"module/banner";i:48;s:17:"module/bestseller";i:49;s:15:"module/carousel";i:50;s:15:"module/category";i:51;s:18:"module/ebaydisplay";i:52;s:15:"module/featured";i:53;s:13:"module/filter";i:54;s:18:"module/google_talk";i:55;s:18:"module/information";i:56;s:13:"module/latest";i:57;s:16:"module/pp_layout";i:58;s:16:"module/slideshow";i:59;s:14:"module/special";i:60;s:12:"module/store";i:61;s:14:"module/welcome";i:62;s:14:"openbay/amazon";i:63;s:16:"openbay/amazonus";i:64;s:15:"openbay/openbay";i:65;s:12:"openbay/play";i:66;s:23:"payment/amazon_checkout";i:67;s:24:"payment/authorizenet_aim";i:68;s:21:"payment/bank_transfer";i:69;s:14:"payment/cheque";i:70;s:11:"payment/cod";i:71;s:21:"payment/free_checkout";i:72;s:22:"payment/klarna_account";i:73;s:22:"payment/klarna_invoice";i:74;s:14:"payment/liqpay";i:75;s:20:"payment/moneybookers";i:76;s:14:"payment/nochex";i:77;s:15:"payment/paymate";i:78;s:16:"payment/paypoint";i:79;s:13:"payment/payza";i:80;s:26:"payment/perpetual_payments";i:81;s:18:"payment/pp_express";i:82;s:25:"payment/pp_payflow_iframe";i:83;s:14:"payment/pp_pro";i:84;s:21:"payment/pp_pro_iframe";i:85;s:17:"payment/pp_pro_pf";i:86;s:17:"payment/pp_pro_uk";i:87;s:19:"payment/pp_standard";i:88;s:15:"payment/sagepay";i:89;s:22:"payment/sagepay_direct";i:90;s:18:"payment/sagepay_us";i:91;s:19:"payment/twocheckout";i:92;s:28:"payment/web_payment_software";i:93;s:16:"payment/worldpay";i:94;s:10:"play/order";i:95;s:12:"play/product";i:96;s:27:"report/affiliate_commission";i:97;s:22:"report/customer_credit";i:98;s:22:"report/customer_online";i:99;s:21:"report/customer_order";i:100;s:22:"report/customer_reward";i:101;s:24:"report/product_purchased";i:102;s:21:"report/product_viewed";i:103;s:18:"report/sale_coupon";i:104;s:17:"report/sale_order";i:105;s:18:"report/sale_return";i:106;s:20:"report/sale_shipping";i:107;s:15:"report/sale_tax";i:108;s:14:"sale/affiliate";i:109;s:12:"sale/contact";i:110;s:11:"sale/coupon";i:111;s:13:"sale/customer";i:112;s:20:"sale/customer_ban_ip";i:113;s:19:"sale/customer_group";i:114;s:10:"sale/order";i:115;s:14:"sale/recurring";i:116;s:11:"sale/return";i:117;s:12:"sale/voucher";i:118;s:18:"sale/voucher_theme";i:119;s:15:"setting/setting";i:120;s:13:"setting/store";i:121;s:16:"shipping/auspost";i:122;s:17:"shipping/citylink";i:123;s:14:"shipping/fedex";i:124;s:13:"shipping/flat";i:125;s:13:"shipping/free";i:126;s:13:"shipping/item";i:127;s:23:"shipping/parcelforce_48";i:128;s:15:"shipping/pickup";i:129;s:19:"shipping/royal_mail";i:130;s:12:"shipping/ups";i:131;s:13:"shipping/usps";i:132;s:15:"shipping/weight";i:133;s:11:"tool/backup";i:134;s:14:"tool/error_log";i:135;s:12:"total/coupon";i:136;s:12:"total/credit";i:137;s:14:"total/handling";i:138;s:16:"total/klarna_fee";i:139;s:19:"total/low_order_fee";i:140;s:12:"total/reward";i:141;s:14:"total/shipping";i:142;s:15:"total/sub_total";i:143;s:9:"total/tax";i:144;s:11:"total/total";i:145;s:13:"total/voucher";i:146;s:9:"user/user";i:147;s:20:"user/user_permission";i:148;s:22:"module/pavverticalmenu";i:149;s:19:"module/themecontrol";i:150;s:15:"module/pavdeals";i:151;s:25:"module/pavproductcarousel";i:152;s:13:"module/filter";i:153;s:13:"module/pavmap";i:154;s:14:"module/pavblog";i:155;s:22:"module/pavblogcategory";i:156;s:21:"module/pavblogcomment";i:157;s:20:"module/pavbloglatest";i:158;s:16:"module/pavcustom";i:159;s:18:"module/pavcarousel";i:160;s:17:"module/pavtwitter";i:161;s:21:"module/pavsliderlayer";i:162;s:18:"module/pavmegamenu";i:163;s:16:"module/pavsocial";i:164;s:20:"module/pavnewsletter";i:165;s:18:"module/pavproducts";i:166;s:13:"module/latest";i:167;s:14:"module/special";i:168;s:25:"module/pavproductcarousel";i:169;s:12:"module/store";i:170;s:12:"module/store";i:171;s:16:"module/pavsocial";i:172;s:17:"module/pavtwitter";i:173;s:16:"module/pavcustom";i:174;s:21:"module/pavproducttabs";i:175;s:25:"module/pavproductfeatured";i:176;s:21:"module/pavreassurance";i:177;s:21:"module/pavreassurance";i:178;s:13:"module/pavads";i:179;s:14:"module/special";i:180;s:17:"module/bestseller";i:181;s:20:"module/pavautosearch";i:182;s:20:"module/pavautosearch";i:183;s:13:"module/banner";i:184;s:15:"module/category";i:185;s:17:"module/pavtwitter";i:186;s:21:"module/pavtestimonial";i:187;s:18:"module/pavcarousel";i:188;s:22:"module/pavcategorytabs";i:189;s:18:"module/pavproducts";i:190;s:24:"module/pavrecentlyviewed";i:191;s:21:"module/pavpopulartags";i:192;s:13:"module/pavmap";i:193;s:21:"module/pavlandingpage";i:194;s:21:"module/pavpopulartags";i:195;s:15:"module/pavdeals";i:196;s:17:"module/pavtwitter";}s:6:"modify";a:197:{i:0;s:14:"amazon/listing";i:1;s:14:"amazon/product";i:2;s:16:"amazonus/listing";i:3;s:16:"amazonus/product";i:4;s:17:"catalog/attribute";i:5;s:23:"catalog/attribute_group";i:6;s:16:"catalog/category";i:7;s:16:"catalog/download";i:8;s:14:"catalog/filter";i:9;s:19:"catalog/information";i:10;s:20:"catalog/manufacturer";i:11;s:14:"catalog/option";i:12;s:15:"catalog/product";i:13;s:15:"catalog/profile";i:14;s:14:"catalog/review";i:15;s:18:"common/filemanager";i:16;s:13:"design/banner";i:17;s:19:"design/custom_field";i:18;s:13:"design/layout";i:19;s:12:"ebay/profile";i:20;s:13:"ebay/template";i:21;s:14:"extension/feed";i:22;s:17:"extension/manager";i:23;s:16:"extension/module";i:24;s:17:"extension/openbay";i:25;s:17:"extension/payment";i:26;s:18:"extension/shipping";i:27;s:15:"extension/total";i:28;s:16:"feed/google_base";i:29;s:19:"feed/google_sitemap";i:30;s:20:"localisation/country";i:31;s:21:"localisation/currency";i:32;s:21:"localisation/geo_zone";i:33;s:21:"localisation/language";i:34;s:25:"localisation/length_class";i:35;s:25:"localisation/order_status";i:36;s:26:"localisation/return_action";i:37;s:26:"localisation/return_reason";i:38;s:26:"localisation/return_status";i:39;s:25:"localisation/stock_status";i:40;s:22:"localisation/tax_class";i:41;s:21:"localisation/tax_rate";i:42;s:25:"localisation/weight_class";i:43;s:17:"localisation/zone";i:44;s:14:"module/account";i:45;s:16:"module/affiliate";i:46;s:29:"module/amazon_checkout_layout";i:47;s:13:"module/banner";i:48;s:17:"module/bestseller";i:49;s:15:"module/carousel";i:50;s:15:"module/category";i:51;s:18:"module/ebaydisplay";i:52;s:15:"module/featured";i:53;s:13:"module/filter";i:54;s:18:"module/google_talk";i:55;s:18:"module/information";i:56;s:13:"module/latest";i:57;s:16:"module/pp_layout";i:58;s:16:"module/slideshow";i:59;s:14:"module/special";i:60;s:12:"module/store";i:61;s:14:"module/welcome";i:62;s:14:"openbay/amazon";i:63;s:16:"openbay/amazonus";i:64;s:15:"openbay/openbay";i:65;s:12:"openbay/play";i:66;s:23:"payment/amazon_checkout";i:67;s:24:"payment/authorizenet_aim";i:68;s:21:"payment/bank_transfer";i:69;s:14:"payment/cheque";i:70;s:11:"payment/cod";i:71;s:21:"payment/free_checkout";i:72;s:22:"payment/klarna_account";i:73;s:22:"payment/klarna_invoice";i:74;s:14:"payment/liqpay";i:75;s:20:"payment/moneybookers";i:76;s:14:"payment/nochex";i:77;s:15:"payment/paymate";i:78;s:16:"payment/paypoint";i:79;s:13:"payment/payza";i:80;s:26:"payment/perpetual_payments";i:81;s:18:"payment/pp_express";i:82;s:25:"payment/pp_payflow_iframe";i:83;s:14:"payment/pp_pro";i:84;s:21:"payment/pp_pro_iframe";i:85;s:17:"payment/pp_pro_pf";i:86;s:17:"payment/pp_pro_uk";i:87;s:19:"payment/pp_standard";i:88;s:15:"payment/sagepay";i:89;s:22:"payment/sagepay_direct";i:90;s:18:"payment/sagepay_us";i:91;s:19:"payment/twocheckout";i:92;s:28:"payment/web_payment_software";i:93;s:16:"payment/worldpay";i:94;s:10:"play/order";i:95;s:12:"play/product";i:96;s:27:"report/affiliate_commission";i:97;s:22:"report/customer_credit";i:98;s:22:"report/customer_online";i:99;s:21:"report/customer_order";i:100;s:22:"report/customer_reward";i:101;s:24:"report/product_purchased";i:102;s:21:"report/product_viewed";i:103;s:18:"report/sale_coupon";i:104;s:17:"report/sale_order";i:105;s:18:"report/sale_return";i:106;s:20:"report/sale_shipping";i:107;s:15:"report/sale_tax";i:108;s:14:"sale/affiliate";i:109;s:12:"sale/contact";i:110;s:11:"sale/coupon";i:111;s:13:"sale/customer";i:112;s:20:"sale/customer_ban_ip";i:113;s:19:"sale/customer_group";i:114;s:10:"sale/order";i:115;s:14:"sale/recurring";i:116;s:11:"sale/return";i:117;s:12:"sale/voucher";i:118;s:18:"sale/voucher_theme";i:119;s:15:"setting/setting";i:120;s:13:"setting/store";i:121;s:16:"shipping/auspost";i:122;s:17:"shipping/citylink";i:123;s:14:"shipping/fedex";i:124;s:13:"shipping/flat";i:125;s:13:"shipping/free";i:126;s:13:"shipping/item";i:127;s:23:"shipping/parcelforce_48";i:128;s:15:"shipping/pickup";i:129;s:19:"shipping/royal_mail";i:130;s:12:"shipping/ups";i:131;s:13:"shipping/usps";i:132;s:15:"shipping/weight";i:133;s:11:"tool/backup";i:134;s:14:"tool/error_log";i:135;s:12:"total/coupon";i:136;s:12:"total/credit";i:137;s:14:"total/handling";i:138;s:16:"total/klarna_fee";i:139;s:19:"total/low_order_fee";i:140;s:12:"total/reward";i:141;s:14:"total/shipping";i:142;s:15:"total/sub_total";i:143;s:9:"total/tax";i:144;s:11:"total/total";i:145;s:13:"total/voucher";i:146;s:9:"user/user";i:147;s:20:"user/user_permission";i:148;s:22:"module/pavverticalmenu";i:149;s:19:"module/themecontrol";i:150;s:15:"module/pavdeals";i:151;s:25:"module/pavproductcarousel";i:152;s:13:"module/filter";i:153;s:13:"module/pavmap";i:154;s:14:"module/pavblog";i:155;s:22:"module/pavblogcategory";i:156;s:21:"module/pavblogcomment";i:157;s:20:"module/pavbloglatest";i:158;s:16:"module/pavcustom";i:159;s:18:"module/pavcarousel";i:160;s:17:"module/pavtwitter";i:161;s:21:"module/pavsliderlayer";i:162;s:18:"module/pavmegamenu";i:163;s:16:"module/pavsocial";i:164;s:20:"module/pavnewsletter";i:165;s:18:"module/pavproducts";i:166;s:13:"module/latest";i:167;s:14:"module/special";i:168;s:25:"module/pavproductcarousel";i:169;s:12:"module/store";i:170;s:12:"module/store";i:171;s:16:"module/pavsocial";i:172;s:17:"module/pavtwitter";i:173;s:16:"module/pavcustom";i:174;s:21:"module/pavproducttabs";i:175;s:25:"module/pavproductfeatured";i:176;s:21:"module/pavreassurance";i:177;s:21:"module/pavreassurance";i:178;s:13:"module/pavads";i:179;s:14:"module/special";i:180;s:17:"module/bestseller";i:181;s:20:"module/pavautosearch";i:182;s:20:"module/pavautosearch";i:183;s:13:"module/banner";i:184;s:15:"module/category";i:185;s:17:"module/pavtwitter";i:186;s:21:"module/pavtestimonial";i:187;s:18:"module/pavcarousel";i:188;s:22:"module/pavcategorytabs";i:189;s:18:"module/pavproducts";i:190;s:24:"module/pavrecentlyviewed";i:191;s:21:"module/pavpopulartags";i:192;s:13:"module/pavmap";i:193;s:21:"module/pavlandingpage";i:194;s:21:"module/pavpopulartags";i:195;s:15:"module/pavdeals";i:196;s:17:"module/pavtwitter";}}'),
(10, 'Demonstration', 'a:1:{s:6:"access";a:160:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:15:"catalog/profile";i:10;s:14:"catalog/review";i:11;s:18:"common/filemanager";i:12;s:13:"design/banner";i:13;s:19:"design/custom_field";i:14;s:13:"design/layout";i:15;s:14:"extension/feed";i:16;s:17:"extension/manager";i:17;s:16:"extension/module";i:18;s:17:"extension/openbay";i:19;s:17:"extension/payment";i:20;s:18:"extension/shipping";i:21;s:15:"extension/total";i:22;s:16:"feed/google_base";i:23;s:19:"feed/google_sitemap";i:24;s:20:"localisation/country";i:25;s:21:"localisation/currency";i:26;s:21:"localisation/geo_zone";i:27;s:21:"localisation/language";i:28;s:25:"localisation/length_class";i:29;s:25:"localisation/order_status";i:30;s:26:"localisation/return_action";i:31;s:26:"localisation/return_reason";i:32;s:26:"localisation/return_status";i:33;s:25:"localisation/stock_status";i:34;s:22:"localisation/tax_class";i:35;s:21:"localisation/tax_rate";i:36;s:25:"localisation/weight_class";i:37;s:17:"localisation/zone";i:38;s:14:"module/account";i:39;s:16:"module/affiliate";i:40;s:29:"module/amazon_checkout_layout";i:41;s:13:"module/banner";i:42;s:17:"module/bestseller";i:43;s:15:"module/carousel";i:44;s:15:"module/category";i:45;s:18:"module/ebaydisplay";i:46;s:15:"module/featured";i:47;s:13:"module/filter";i:48;s:18:"module/google_talk";i:49;s:18:"module/information";i:50;s:13:"module/latest";i:51;s:17:"module/openbaypro";i:52;s:14:"module/pavblog";i:53;s:22:"module/pavblogcategory";i:54;s:21:"module/pavblogcomment";i:55;s:20:"module/pavbloglatest";i:56;s:16:"module/pavcustom";i:57;s:15:"module/pavdeals";i:58;s:21:"module/pavlandingpage";i:59;s:18:"module/pavmegamenu";i:60;s:20:"module/pavnewsletter";i:61;s:21:"module/pavpopulartags";i:62;s:21:"module/pavproducttabs";i:63;s:21:"module/pavsliderlayer";i:64;s:17:"module/pavtwitter";i:65;s:16:"module/pp_layout";i:66;s:16:"module/slideshow";i:67;s:14:"module/special";i:68;s:12:"module/store";i:69;s:19:"module/themecontrol";i:70;s:14:"module/welcome";i:71;s:14:"openbay/amazon";i:72;s:22:"openbay/amazon_listing";i:73;s:22:"openbay/amazon_product";i:74;s:16:"openbay/amazonus";i:75;s:24:"openbay/amazonus_listing";i:76;s:24:"openbay/amazonus_product";i:77;s:20:"openbay/ebay_profile";i:78;s:21:"openbay/ebay_template";i:79;s:15:"openbay/openbay";i:80;s:23:"payment/amazon_checkout";i:81;s:24:"payment/authorizenet_aim";i:82;s:21:"payment/bank_transfer";i:83;s:14:"payment/cheque";i:84;s:11:"payment/cod";i:85;s:21:"payment/free_checkout";i:86;s:22:"payment/klarna_account";i:87;s:22:"payment/klarna_invoice";i:88;s:14:"payment/liqpay";i:89;s:20:"payment/moneybookers";i:90;s:14:"payment/nochex";i:91;s:15:"payment/paymate";i:92;s:16:"payment/paypoint";i:93;s:13:"payment/payza";i:94;s:26:"payment/perpetual_payments";i:95;s:18:"payment/pp_express";i:96;s:25:"payment/pp_payflow_iframe";i:97;s:14:"payment/pp_pro";i:98;s:21:"payment/pp_pro_iframe";i:99;s:17:"payment/pp_pro_pf";i:100;s:17:"payment/pp_pro_uk";i:101;s:19:"payment/pp_standard";i:102;s:15:"payment/sagepay";i:103;s:22:"payment/sagepay_direct";i:104;s:18:"payment/sagepay_us";i:105;s:19:"payment/twocheckout";i:106;s:28:"payment/web_payment_software";i:107;s:16:"payment/worldpay";i:108;s:27:"report/affiliate_commission";i:109;s:22:"report/customer_credit";i:110;s:22:"report/customer_online";i:111;s:21:"report/customer_order";i:112;s:22:"report/customer_reward";i:113;s:24:"report/product_purchased";i:114;s:21:"report/product_viewed";i:115;s:18:"report/sale_coupon";i:116;s:17:"report/sale_order";i:117;s:18:"report/sale_return";i:118;s:20:"report/sale_shipping";i:119;s:15:"report/sale_tax";i:120;s:14:"sale/affiliate";i:121;s:12:"sale/contact";i:122;s:11:"sale/coupon";i:123;s:13:"sale/customer";i:124;s:20:"sale/customer_ban_ip";i:125;s:19:"sale/customer_group";i:126;s:10:"sale/order";i:127;s:14:"sale/recurring";i:128;s:11:"sale/return";i:129;s:12:"sale/voucher";i:130;s:18:"sale/voucher_theme";i:131;s:15:"setting/setting";i:132;s:13:"setting/store";i:133;s:16:"shipping/auspost";i:134;s:17:"shipping/citylink";i:135;s:14:"shipping/fedex";i:136;s:13:"shipping/flat";i:137;s:13:"shipping/free";i:138;s:13:"shipping/item";i:139;s:23:"shipping/parcelforce_48";i:140;s:15:"shipping/pickup";i:141;s:19:"shipping/royal_mail";i:142;s:12:"shipping/ups";i:143;s:13:"shipping/usps";i:144;s:15:"shipping/weight";i:145;s:11:"tool/backup";i:146;s:14:"tool/error_log";i:147;s:12:"total/coupon";i:148;s:12:"total/credit";i:149;s:14:"total/handling";i:150;s:16:"total/klarna_fee";i:151;s:19:"total/low_order_fee";i:152;s:12:"total/reward";i:153;s:14:"total/shipping";i:154;s:15:"total/sub_total";i:155;s:9:"total/tax";i:156;s:11:"total/total";i:157;s:13:"total/voucher";i:158;s:9:"user/user";i:159;s:20:"user/user_permission";}}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_verticalmenu`
--

DROP TABLE IF EXISTS `oc_verticalmenu`;
CREATE TABLE `oc_verticalmenu` (
  `verticalmenu_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `is_group` smallint(6) NOT NULL DEFAULT '2',
  `width` varchar(255) DEFAULT NULL,
  `submenu_width` varchar(255) DEFAULT NULL,
  `colum_width` varchar(255) DEFAULT NULL,
  `submenu_colum_width` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `colums` varchar(255) DEFAULT '1',
  `type` varchar(255) NOT NULL,
  `is_content` smallint(6) NOT NULL DEFAULT '2',
  `show_title` smallint(6) NOT NULL DEFAULT '1',
  `type_submenu` varchar(10) NOT NULL DEFAULT '1',
  `level_depth` smallint(6) NOT NULL DEFAULT '0',
  `published` smallint(6) NOT NULL DEFAULT '1',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position` int(11) unsigned NOT NULL DEFAULT '0',
  `show_sub` smallint(6) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `target` varchar(25) DEFAULT NULL,
  `privacy` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position_type` varchar(25) DEFAULT 'top',
  `menu_class` varchar(25) DEFAULT NULL,
  `description` text,
  `content_text` text,
  `submenu_content` text,
  `level` int(11) NOT NULL,
  `left` int(11) NOT NULL,
  `right` int(11) NOT NULL,
  PRIMARY KEY (`verticalmenu_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=54 ;

--
-- Dumping data for table `oc_verticalmenu`
--

INSERT INTO `oc_verticalmenu` (`verticalmenu_id`, `widget_id`, `image`, `parent_id`, `is_group`, `width`, `submenu_width`, `colum_width`, `submenu_colum_width`, `item`, `colums`, `type`, `is_content`, `show_title`, `type_submenu`, `level_depth`, `published`, `store_id`, `position`, `show_sub`, `url`, `target`, `privacy`, `position_type`, `menu_class`, `description`, `content_text`, `submenu_content`, `level`, `left`, `right`) VALUES
(1, 0, '', 0, 2, NULL, NULL, NULL, NULL, NULL, '1', '', 2, 1, '1', 0, 1, 0, 0, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, -5, 34, 47),
(3, 1, 'data/icon-verticalmenu/icon05.png', 1, 0, NULL, NULL, NULL, '', '59', '1', 'category', 0, 1, 'menu', 0, 1, 0, 5, 0, '', NULL, 0, 'top', 'pav-parrent', NULL, '', '', 0, 0, 0),
(4, 1, '', 3, 0, NULL, NULL, NULL, '', '25', '1', 'category', 0, 1, 'menu', 0, 1, 0, 1, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(7, 1, 'data/icon-verticalmenu/icon04.png', 1, 0, NULL, NULL, NULL, '', '25', '1', 'category', 0, 1, 'menu', 0, 1, 0, 4, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(10, 1, '', 26, 0, NULL, NULL, NULL, '', '59', '1', 'category', 0, 1, 'menu', 0, 1, 0, 1, 0, '', NULL, 0, 'top', 'pav-menu-child', NULL, '', '', 0, 0, 0),
(11, 1, '', 26, 0, NULL, NULL, NULL, '', '25', '1', 'category', 0, 1, 'menu', 0, 1, 0, 2, 0, '', NULL, 0, 'top', 'pav-menu-child', NULL, '', '', 0, 0, 0),
(12, 1, '', 26, 0, NULL, NULL, NULL, '', '20', '1', 'category', 0, 1, 'menu', 0, 1, 0, 3, 0, '', NULL, 0, 'top', 'pav-menu-child', NULL, '', '', 0, 0, 0),
(13, 1, '', 26, 0, NULL, NULL, NULL, '', '34', '1', 'category', 0, 1, 'menu', 0, 1, 0, 4, 0, '', NULL, 0, 'top', 'pav-menu-child', NULL, '', '', 0, 0, 0),
(14, 1, '', 26, 0, NULL, NULL, NULL, '', '24', '1', 'category', 0, 1, 'menu', 0, 1, 0, 5, 0, '', NULL, 0, 'top', 'pav-menu-child', NULL, '', '', 0, 0, 0),
(15, 1, '', 26, 0, NULL, NULL, NULL, '', '17', '1', 'category', 0, 1, 'menu', 0, 1, 0, 6, 0, '', NULL, 0, 'top', 'pav-menu-child', NULL, '', '', 0, 0, 0),
(16, 1, '', 26, 0, NULL, NULL, NULL, '', '57', '1', 'category', 0, 1, 'menu', 0, 1, 0, 7, 0, '', NULL, 0, 'top', 'pav-menu-child', NULL, '', '', 0, 0, 0),
(17, 1, '', 28, 0, NULL, NULL, NULL, '', '20', '1', 'category', 0, 1, 'menu', 0, 1, 0, 1, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(18, 1, '', 28, 0, NULL, NULL, NULL, '', '67', '1', 'category', 0, 1, 'menu', 0, 1, 0, 2, 0, '', NULL, 0, 'top', 'pav-menu-child', NULL, '', '', 0, 0, 0),
(19, 1, '', 28, 0, NULL, NULL, NULL, '', '20', '1', 'category', 0, 1, 'menu', 0, 1, 0, 3, 0, '', NULL, 0, 'top', 'pav-menu-child', NULL, '', '', 0, 0, 0),
(20, 1, '', 28, 0, NULL, NULL, NULL, '', '29', '1', 'category', 0, 1, 'menu', 0, 1, 0, 4, 0, '', NULL, 0, 'top', 'pav-menu-child', NULL, '', '', 0, 0, 0),
(21, 1, '', 28, 0, NULL, NULL, NULL, '', '20', '1', 'category', 0, 1, 'menu', 0, 1, 0, 5, 0, '', NULL, 0, 'top', 'pav-menu-child', NULL, '', '', 0, 0, 0),
(22, 1, '', 28, 0, NULL, NULL, NULL, '', '20', '1', 'category', 0, 1, 'menu', 0, 1, 0, 6, 0, '', NULL, 0, 'top', 'pav-menu-child', NULL, '', '', 0, 0, 0),
(23, 1, '', 28, 0, NULL, NULL, NULL, '', '59', '1', 'category', 0, 1, 'menu', 0, 1, 0, 7, 0, '', NULL, 0, 'top', 'pav-menu-child', NULL, '', '', 0, 0, 0),
(25, 1, '', 3, 0, NULL, NULL, NULL, '', '29', '1', 'category', 0, 1, 'menu', 0, 1, 0, 2, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(26, 1, '', 3, 0, NULL, NULL, NULL, '', '31', '1', 'category', 0, 1, 'menu', 0, 1, 0, 3, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(27, 1, '', 3, 0, NULL, NULL, NULL, '', '20', '1', 'category', 0, 1, 'menu', 0, 1, 0, 4, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(28, 1, '', 3, 0, NULL, NULL, NULL, '', '20', '1', 'category', 0, 1, 'menu', 0, 1, 0, 5, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(29, 1, '', 3, 0, NULL, NULL, NULL, '', '28', '1', 'category', 0, 1, 'menu', 0, 1, 0, 6, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(30, 1, '', 3, 0, NULL, NULL, NULL, '', '27', '1', 'category', 0, 1, 'menu', 0, 1, 0, 7, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(31, 1, '', 3, 0, NULL, NULL, NULL, '', '25', '1', 'category', 0, 1, 'menu', 0, 1, 0, 8, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(32, 1, '', 3, 0, NULL, NULL, NULL, '', '59', '1', 'category', 0, 1, 'menu', 0, 1, 0, 9, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(33, 1, '', 3, 0, NULL, NULL, NULL, '', '34', '1', 'category', 0, 1, 'menu', 0, 1, 0, 10, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(34, 1, '', 3, 0, NULL, NULL, NULL, '', '20', '1', 'category', 0, 1, 'menu', 0, 1, 0, 11, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(35, 1, '', 3, 0, NULL, NULL, NULL, '', '25', '1', 'category', 0, 1, 'menu', 0, 1, 0, 12, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(36, 1, '', 3, 0, NULL, NULL, NULL, '', '59', '1', 'category', 0, 1, 'menu', 0, 1, 0, 13, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(37, 1, 'data/icon-verticalmenu/icon06.png', 1, 0, NULL, NULL, NULL, '', '25', '1', 'category', 0, 1, 'menu', 0, 1, 0, 6, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(40, 1, 'data/icon-verticalmenu/icon01.png', 1, 0, NULL, NULL, NULL, '', '20', '1', 'category', 0, 1, 'menu', 0, 1, 0, 1, 0, '', NULL, 0, 'top', 'home', NULL, '', '', 0, 0, 0),
(41, 1, '', 26, 0, NULL, NULL, NULL, '', '45', '1', 'category', 0, 1, 'menu', 0, 1, 0, 8, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(42, 1, '', 26, 0, NULL, NULL, NULL, '', '18', '1', 'category', 0, 1, 'menu', 0, 1, 0, 9, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(44, 1, 'data/icon-verticalmenu/icon02.png', 1, 0, NULL, NULL, NULL, '', '20', '1', 'category', 0, 1, 'menu', 0, 1, 0, 2, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(45, 1, '', 13, 0, NULL, NULL, NULL, '', '20', '1', 'category', 0, 1, 'menu', 0, 1, 0, 1, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(46, 1, '', 13, 0, NULL, NULL, NULL, '', '59', '1', 'category', 0, 1, 'menu', 0, 1, 0, 2, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(47, 1, '', 13, 0, NULL, NULL, NULL, '', '25', '1', 'category', 0, 1, 'menu', 0, 1, 0, 3, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(48, 1, '', 13, 0, NULL, NULL, NULL, '', '17', '1', 'category', 0, 1, 'menu', 0, 1, 0, 4, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(49, 1, '', 13, 0, NULL, NULL, NULL, '', '20', '1', 'category', 0, 1, 'menu', 0, 1, 0, 5, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(50, 1, 'data/icon-verticalmenu/icon07.png', 1, 0, NULL, NULL, NULL, '', '20', '1', 'category', 0, 1, 'menu', 0, 1, 0, 7, 0, '', NULL, 0, 'top', 'home', NULL, '', '', 0, 0, 0),
(51, 1, 'data/icon-verticalmenu/icon08.png', 1, 0, NULL, NULL, NULL, '', '20', '1', 'category', 0, 1, 'menu', 0, 1, 0, 8, 0, '', NULL, 0, 'top', 'home', NULL, '', '', 0, 0, 0),
(52, 1, 'data/icon-verticalmenu/icon03.png', 1, 0, NULL, NULL, NULL, '', '59', '1', 'category', 0, 1, 'menu', 0, 1, 0, 3, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0),
(53, 1, '', 1, 0, NULL, NULL, NULL, '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 99, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_verticalmenu_description`
--

DROP TABLE IF EXISTS `oc_verticalmenu_description`;
CREATE TABLE `oc_verticalmenu_description` (
  `verticalmenu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`verticalmenu_id`,`language_id`),
  KEY `name` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_verticalmenu_description`
--

INSERT INTO `oc_verticalmenu_description` (`verticalmenu_id`, `language_id`, `title`, `description`) VALUES
(7, 1, 'Gaming &amp; Consoles', 'Morbi accumsan ipsum velit. Nam nec tellus'),
(7, 2, 'الألعاب كونسول و', 'جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد '),
(18, 1, 'Curabitur turpis ', ''),
(19, 2, 'يكن ودول التّحول بريطانيا في', ''),
(23, 2, 'يكن ودول التّحول بريطانيا في', ''),
(26, 1, 'Electronics Accessories', ''),
(28, 1, 'Electronics Accessories', ''),
(40, 1, 'Cameras &amp; Camcorders', 'Proin gravida nibh vel velit auctor aliquet'),
(40, 2, 'الكاميرات و أجهزة فيديو', 'جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد '),
(37, 2, 'تلفزيونات', 'عل هامش الحربية كان. رئيس غرّة، والألمانية، أخذ كل. هو '),
(36, 2, 'جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد ', ''),
(36, 1, 'Computers &amp; Tablets', ''),
(35, 2, 'جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد ', ''),
(35, 1, 'TV &amp; Home Theater', ''),
(34, 2, 'جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد ', ''),
(34, 1, 'Home &amp; Portable Audio', ''),
(33, 2, 'جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد ', ''),
(33, 1, 'Cell Phones &amp; Services', ''),
(32, 2, 'جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد ', ''),
(32, 1, 'Camera &amp; Video', ''),
(31, 2, 'جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد ', ''),
(31, 1, 'Vehicle, GPS &amp; Navigation', ''),
(30, 2, 'جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد ', ''),
(30, 1, 'Software', ''),
(29, 2, 'جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد ', ''),
(29, 1, 'Office Products', ''),
(28, 2, 'جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد ', ''),
(19, 1, 'Software', ''),
(27, 2, 'جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد ', ''),
(26, 2, 'يكن ودول التّحول بريطانيا في', ''),
(25, 1, 'Trade In Electronics', ''),
(25, 2, 'يكن ودول التّحول بريطانيا في', ''),
(4, 1, 'Musical Instruments', ''),
(4, 2, 'يكن ودول التّحول بريطانيا في', ''),
(16, 2, 'يكن ودول التّحول بريطانيا في', ''),
(15, 2, 'يكن ودول التّحول بريطانيا في', ''),
(15, 1, 'Software', ''),
(13, 1, 'MP3 Players', ''),
(13, 2, 'يكن ودول التّحول بريطانيا في', ''),
(12, 1, 'Desktops', ''),
(12, 2, 'يكن ودول التّحول بريطانيا في', ''),
(10, 1, 'Camera', ''),
(10, 2, 'يكن ودول التّحول بريطانيا في', ''),
(20, 1, 'Camera &amp; Videos', ''),
(20, 2, 'يكن ودول التّحول بريطانيا في', ''),
(17, 1, 'Musical Instruments', ''),
(17, 2, 'يكن ودول التّحول بريطانيا في', ''),
(22, 2, 'يكن ودول التّحول بريطانيا في', ''),
(21, 2, 'يكن ودول التّحول بريطانيا في', ''),
(11, 1, 'Components', ''),
(11, 2, 'يكن ودول التّحول بريطانيا في', ''),
(14, 1, 'Phones &amp; PDAs', ''),
(14, 2, 'يكن ودول التّحول بريطانيا في', ''),
(41, 1, 'Windows', ''),
(42, 1, 'Laptops &amp; Notebooks', ''),
(42, 2, 'يكن ودول التّحول بريطانيا في', ''),
(41, 2, 'يكن ودول التّحول بريطانيا في', ''),
(44, 2, 'الترفيه المنزلي', 'عل هامش الحربية كان. رئيس غرّة، والألمانية، أخذ كل. هو '),
(16, 1, 'Tablets', ''),
(18, 2, 'يكن ودول التّحول بريطانيا في', ''),
(3, 1, 'Smartphones &amp; Tablets', 'Sed non  mauris vitae erat consequat auctor eu in elit'),
(3, 2, 'الهواتف الذكية وأقراص', 'جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد '),
(45, 2, 'يكن ودول التّحول بريطانيا في', ''),
(47, 1, 'Gifts Cards, Tickets', ''),
(47, 2, 'يكن ودول التّحول بريطانيا في', ''),
(48, 2, 'يكن ودول التّحول بريطانيا في', ''),
(46, 2, 'يكن ودول التّحول بريطانيا في', ''),
(46, 1, 'Clothing &amp; Accessories', ''),
(45, 1, 'Baby, Kids &amp; Toys', ''),
(49, 2, 'يكن ودول التّحول بريطانيا في', ''),
(49, 1, 'Outdoor', ''),
(48, 1, 'Computers &amp; Parts', ''),
(27, 1, 'Office Products', ''),
(21, 1, 'Video Games', ''),
(22, 1, 'Cameras &amp; Photo', ''),
(23, 1, 'Laptops &amp; Desktops', ''),
(52, 2, 'أجهزة الكمبيوتر وأجهزة الكمبيوتر المحمولة', 'الحربية كان. رئيس غرّة، والألمانية، أخذ كل. هو ضرب طوكيو للجزر الصعداء.'),
(44, 1, 'Home Entertainment', 'Aenean sollicitudin, lorem quis bibendum auctor'),
(52, 1, 'Computers &amp; Laptops', 'Duis sed odio sit amet nibh vulputate'),
(37, 1, 'Televisions', 'Class aptent taciti sociosqu ad litora'),
(50, 1, 'Game &amp; Toys', 'Proin gravida nibh vel velit auctor '),
(50, 2, 'اللعبة واللعب', 'جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد '),
(51, 1, 'Office', 'Proin gravida nibh vel velit auctor '),
(51, 2, 'مكتب', 'جوي, جيما ستالين الإمتعاض إذ جوي. عل فقد '),
(53, 1, '', ''),
(53, 2, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_verticalmenu_widgets`
--

DROP TABLE IF EXISTS `oc_verticalmenu_widgets`;
CREATE TABLE `oc_verticalmenu_widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `type` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `oc_verticalmenu_widgets`
--

INSERT INTO `oc_verticalmenu_widgets` (`id`, `name`, `type`, `params`, `store_id`) VALUES
(1, 'Video Opencart Installation', 'video_code', 'a:1:{s:10:"video_code";s:168:"&lt;iframe width=&quot;300&quot; height=&quot;315&quot; src=&quot;//www.youtube.com/embed/cUhPA5qIxDQ&quot; frameborder=&quot;0&quot; allowfullscreen&gt;&lt;/iframe&gt;";}', 0),
(2, 'Electronics &amp; Computers', 'html', 'a:1:{s:4:"html";a:2:{i:1;s:1022:"&lt;ul&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=59&quot;&gt;Computers &amp;amp; Tablets&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=25&quot;&gt;TV &amp;amp; Home Theater&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=59&quot;&gt;Home &amp;amp; Portable Audio&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=29&quot;&gt;Cell Phones &amp;amp; Services&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=28&quot;&gt;Camera &amp;amp; Video&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=20&quot;&gt;Vehicle, GPS &amp;amp; Navigation&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=34&quot;&gt;Musical Instruments&lt;/a&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\r\n";i:2;s:1282:"&lt;ul&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=59&quot;&gt;للإمبراطورية &amp;amp; للإمبراطورية&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=25&quot;&gt;للإمبر &amp;amp; للإمبراطورية في مدن,&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=59&quot;&gt;للإمبراطورية &amp;amp; للإمبراطورية في مدن,&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=29&quot;&gt;للإمبراطورية &amp;amp; للإمبراطورية في مدن,&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=28&quot;&gt;للإمبراطورية &amp;amp; للإمبراطورية في مدن,&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=20&quot;&gt;للإمبراطورية &amp;amp; للإمبراطورية في مدن,&lt;/a&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;path=34&quot;&gt;مدن, هذا جديدة المذابح&lt;/a&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;";}}', 0),
(3, 'Products Latest', 'product_list', 'a:4:{s:9:"list_type";s:7:"special";s:5:"limit";s:1:"3";s:11:"image_width";s:3:"161";s:12:"image_height";s:3:"121";}', 0),
(4, 'Products In Cat 20', 'product_category', 'a:4:{s:11:"category_id";s:2:"20";s:5:"limit";s:1:"3";s:11:"image_width";s:3:"161";s:12:"image_height";s:3:"193";}', 0),
(5, 'Manufactures', 'banner', 'a:4:{s:8:"group_id";s:1:"8";s:11:"image_width";s:3:"170";s:12:"image_height";s:2:"58";s:5:"limit";s:2:"16";}', 0),
(6, 'PavoThemes Feed', 'feed', 'a:1:{s:8:"feed_url";s:55:"http://www.pavothemes.com/opencart-themes.feed?type=rss";}', 0),
(7, 'Image Widget  ', 'image', 'a:3:{s:10:"image_path";s:31:"data/demo/sub-vertical-menu.png";s:11:"image_width";s:3:"335";s:12:"image_height";s:3:"180";}', 0),
(8, 'Banner', 'html', 'a:1:{s:4:"html";a:2:{i:1;s:120:"&lt;img style=&quot;margin-top:30px&quot; src=&quot;image/data/banner/verticalmenu-banner.jpg&quot; alt=&quot;&quot;&gt;";i:2;s:121:"&lt;img style=&quot;margin-top:30px&quot;  src=&quot;image/data/banner/verticalmenu-banner.jpg&quot; alt=&quot;&quot;&gt;";}}', 0),
(9, 'Camera &amp; Videos', 'html', 'a:1:{s:4:"html";a:2:{i:1;s:660:"&lt;ul&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=59&amp;amp;product_id=42&quot;&gt;Apple Cinema 30&quot;&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=59&amp;amp;product_id=33&quot;&gt;Canon EOS 40D&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=59&amp;amp;product_id=34&quot;&gt;Canon EOS 40D&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n     &lt;a href=&quot;index.php?route=product/product&amp;amp;path=59&amp;amp;product_id=46&quot;&gt;Canon EOS 40D&lt;/a&gt;\r\n  &lt;/li&gt;\r\n&lt;/ul&gt;";i:2;s:693:"&lt;ul&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=59&amp;amp;product_id=42&quot;&gt;التفاح سينما 30 &quot;&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=59&amp;amp;product_id=33&quot;&gt;الكنسي EOS 40D&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=59&amp;amp;product_id=34&quot;&gt;الكنسي EOS 40D&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n     &lt;a href=&quot;index.php?route=product/product&amp;amp;path=59&amp;amp;product_id=34&quot;&gt;الكنسي EOS 40D&lt;/a&gt;\r\n  &lt;/li&gt;\r\n&lt;/ul&gt;";}}', 0),
(10, 'Last Tweets', 'html', 'a:1:{s:4:"html";a:2:{i:1;s:360:"&lt;p class=&quot;title&quot;&gt;MAKES UP PHOTOSHOP&lt;/p&gt;\r\n&lt;p&gt;\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit. \r\n&lt;/p&gt; \r\n&lt;p style=&quot;height:10px&quot;&gt;&lt;/p&gt;\r\n&lt;p class=&quot;title&quot;&gt;MAKES UP PHOTOSHOP&lt;/p&gt;\r\n&lt;p&gt;\r\n	Voluptates, consectetur soluta laborum maiores alias autem velit deserunt \r\n&lt;/p&gt;";i:2;s:578:"&lt;p class=&quot;title&quot;&gt;تشكل فوتوشوب&lt;/p&gt;\r\n&lt;p&gt;\r\n وحتّى اليها حين في, ثم يذكر تكتيكاً بوزيرها حول. وجزر تنفّس أفريقيا بلا لم, عل هامش الحربية كان. رئيس غرّة،\r\n&lt;/p&gt; \r\n&lt;p style=&quot;height:10px&quot;&gt;&lt;/p&gt;\r\n&lt;p class=&quot;title&quot;&gt;تشكل فوتوشوب&lt;/p&gt;\r\n&lt;p&gt;\r\n وحتّى اليها حين في, ثم يذكر تكتيكاً بوزيرها حول. وجزر تنفّس أفريقيا بلا لم, عل هامش \r\n&lt;/p&gt;";}}', 0),
(11, 'Category', 'html', 'a:1:{s:4:"html";a:2:{i:1;s:816:"&lt;ul&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=20&amp;amp;product_id=42&quot;&gt;Apple Cinema 30&quot;&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=20&amp;amp;product_id=33&quot;&gt;Canon EOS 40D&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=20&amp;amp;product_id=48&quot;&gt;Canon EOS 40D&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n     &lt;a href=&quot;index.php?route=product/product&amp;amp;path=20&amp;amp;product_id=34&quot;&gt;Canon EOS 40D&lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=20&amp;amp;product_id=30&quot;&gt;Canon EOS 40D&lt;/a&gt;\r\n  &lt;/li&gt;\r\n&lt;/ul&gt;";i:2;s:857:"&lt;ul&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=20&amp;amp;product_id=42&quot;&gt;التفاح سينما 30 &quot;&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=20&amp;amp;product_id=33&quot;&gt;الكنسي EOS 40D&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=20&amp;amp;product_id=48&quot;&gt;الكنسي EOS 40D&lt;/a&gt;\r\n    &lt;/li&gt;\r\n  &lt;li&gt;\r\n     &lt;a href=&quot;index.php?route=product/product&amp;amp;path=20&amp;amp;product_id=34&quot;&gt;الكنسي EOS 40D&lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;\r\n      &lt;a href=&quot;index.php?route=product/product&amp;amp;path=20&amp;amp;product_id=30&quot;&gt;الكنسي EOS 40D&lt;/a&gt;\r\n  &lt;/li&gt;\r\n &lt;/ul&gt;";}}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher`
--

DROP TABLE IF EXISTS `oc_voucher`;
CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_history`
--

DROP TABLE IF EXISTS `oc_voucher_history`;
CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme`
--

DROP TABLE IF EXISTS `oc_voucher_theme`;
CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'data/demo/canon_eos_5d_2.jpg'),
(7, 'data/demo/gift-voucher-birthday.jpg'),
(6, 'data/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme_description`
--

DROP TABLE IF EXISTS `oc_voucher_theme_description`;
CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General'),
(6, 2, 'Christmas'),
(7, 2, 'Birthday'),
(8, 2, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class`
--

DROP TABLE IF EXISTS `oc_weight_class`;
CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class_description`
--

DROP TABLE IF EXISTS `oc_weight_class_description`;
CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz'),
(1, 2, 'Kilogram', 'kg'),
(2, 2, 'Gram', 'g'),
(5, 2, 'Pound ', 'lb'),
(6, 2, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone`
--

DROP TABLE IF EXISTS `oc_zone`;
CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4033 ;

--
-- Dumping data for table `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', 'ADR', 1),
(70, 3, 'Ain Defla', 'ADE', 1),
(71, 3, 'Ain Temouchent', 'ATE', 1),
(72, 3, 'Alger', 'ALG', 1),
(73, 3, 'Annaba', 'ANN', 1),
(74, 3, 'Batna', 'BAT', 1),
(75, 3, 'Bechar', 'BEC', 1),
(76, 3, 'Bejaia', 'BEJ', 1),
(77, 3, 'Biskra', 'BIS', 1),
(78, 3, 'Blida', 'BLI', 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
(80, 3, 'Bouira', 'BOA', 1),
(81, 3, 'Boumerdes', 'BMD', 1),
(82, 3, 'Chlef', 'CHL', 1),
(83, 3, 'Constantine', 'CON', 1),
(84, 3, 'Djelfa', 'DJE', 1),
(85, 3, 'El Bayadh', 'EBA', 1),
(86, 3, 'El Oued', 'EOU', 1),
(87, 3, 'El Tarf', 'ETA', 1),
(88, 3, 'Ghardaia', 'GHA', 1),
(89, 3, 'Guelma', 'GUE', 1),
(90, 3, 'Illizi', 'ILL', 1),
(91, 3, 'Jijel', 'JIJ', 1),
(92, 3, 'Khenchela', 'KHE', 1),
(93, 3, 'Laghouat', 'LAG', 1),
(94, 3, 'Muaskar', 'MUA', 1),
(95, 3, 'Medea', 'MED', 1),
(96, 3, 'Mila', 'MIL', 1),
(97, 3, 'Mostaganem', 'MOS', 1),
(98, 3, 'M''Sila', 'MSI', 1),
(99, 3, 'Naama', 'NAA', 1),
(100, 3, 'Oran', 'ORA', 1),
(101, 3, 'Ouargla', 'OUA', 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
(103, 3, 'Relizane', 'REL', 1),
(104, 3, 'Saida', 'SAI', 1),
(105, 3, 'Setif', 'SET', 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
(107, 3, 'Skikda', 'SKI', 1),
(108, 3, 'Souk Ahras', 'SAH', 1),
(109, 3, 'Tamanghasset', 'TAM', 1),
(110, 3, 'Tebessa', 'TEB', 1),
(111, 3, 'Tiaret', 'TIA', 1),
(112, 3, 'Tindouf', 'TIN', 1),
(113, 3, 'Tipaza', 'TIP', 1),
(114, 3, 'Tissemsilt', 'TIS', 1),
(115, 3, 'Tizi Ouzou', 'TOU', 1),
(116, 3, 'Tlemcen', 'TLE', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu''a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'BA', 1),
(157, 10, 'Catamarca', 'CA', 1),
(158, 10, 'Chaco', 'CH', 1),
(159, 10, 'Chubut', 'CU', 1),
(160, 10, 'Cordoba', 'CO', 1),
(161, 10, 'Corrientes', 'CR', 1),
(162, 10, 'Distrito Federal', 'DF', 1),
(163, 10, 'Entre Rios', 'ER', 1),
(164, 10, 'Formosa', 'FO', 1),
(165, 10, 'Jujuy', 'JU', 1),
(166, 10, 'La Pampa', 'LP', 1),
(167, 10, 'La Rioja', 'LR', 1),
(168, 10, 'Mendoza', 'ME', 1),
(169, 10, 'Misiones', 'MI', 1),
(170, 10, 'Neuquen', 'NE', 1),
(171, 10, 'Rio Negro', 'RN', 1),
(172, 10, 'Salta', 'SA', 1),
(173, 10, 'San Juan', 'SJ', 1),
(174, 10, 'San Luis', 'SL', 1),
(175, 10, 'Santa Cruz', 'SC', 1),
(176, 10, 'Santa Fe', 'SF', 1),
(177, 10, 'Santiago del Estero', 'SD', 1),
(178, 10, 'Tierra del Fuego', 'TF', 1),
(179, 10, 'Tucuman', 'TU', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark''unik''', 'GEG', 1),
(184, 11, 'Kotayk''', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik''', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots'' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', 'BUR', 1),
(200, 14, 'Kärnten', 'KAR', 1),
(201, 14, 'Nieder&ouml;sterreich', 'NOS', 1),
(202, 14, 'Ober&ouml;sterreich', 'OOS', 1),
(203, 14, 'Salzburg', 'SAL', 1),
(204, 14, 'Steiermark', 'STE', 1),
(205, 14, 'Tirol', 'TIR', 1),
(206, 14, 'Vorarlberg', 'VOR', 1),
(207, 14, 'Wien', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore''s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel''skaya (Homyel'')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liège', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George''s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith''s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M''Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O''Hi', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chi', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovar-Bilogora', 'BB', 1),
(848, 53, 'City of Zagreb', 'CZ', 1),
(849, 53, 'Dubrovnik-Neretva', 'DN', 1),
(850, 53, 'Istra', 'IS', 1),
(851, 53, 'Karlovac', 'KA', 1),
(852, 53, 'Koprivnica-Krizevci', 'KK', 1),
(853, 53, 'Krapina-Zagorje', 'KZ', 1),
(854, 53, 'Lika-Senj', 'LS', 1),
(855, 53, 'Medimurje', 'ME', 1),
(856, 53, 'Osijek-Baranja', 'OB', 1),
(857, 53, 'Pozega-Slavonia', 'PS', 1),
(858, 53, 'Primorje-Gorski Kotar', 'PG', 1),
(859, 53, 'Sibenik', 'SI', 1),
(860, 53, 'Sisak-Moslavina', 'SM', 1),
(861, 53, 'Slavonski Brod-Posavina', 'SB', 1),
(862, 53, 'Split-Dalmatia', 'SD', 1),
(863, 53, 'Varazdin', 'VA', 1),
(864, 53, 'Virovitica-Podravina', 'VP', 1),
(865, 53, 'Vukovar-Srijem', 'VS', 1),
(866, 53, 'Zadar-Knin', 'ZK', 1),
(867, 53, 'Zagreb', 'ZA', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '''Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma''iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa''id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina''', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina''', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan Laani', 'AL', 1),
(1086, 72, 'Etela-Suomen Laani', 'ES', 1),
(1087, 72, 'Ita-Suomen Laani', 'IS', 1),
(1088, 72, 'Lansi-Suomen Laani', 'LS', 1),
(1089, 72, 'Lapin Lanani', 'LA', 1),
(1090, 72, 'Oulun Laani', 'OU', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d''Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-W&uuml;rttemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Th&uuml;ringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand''Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1428, 97, 'Bacs-Kiskun', 'BK', 1),
(1429, 97, 'Baranya', 'BA', 1),
(1430, 97, 'Bekes', 'BE', 1),
(1431, 97, 'Bekescsaba', 'BS', 1),
(1432, 97, 'Borsod-Abauj-Zemplen', 'BZ', 1),
(1433, 97, 'Budapest', 'BU', 1),
(1434, 97, 'Csongrad', 'CS', 1),
(1435, 97, 'Debrecen', 'DE', 1),
(1436, 97, 'Dunaujvaros', 'DU', 1),
(1437, 97, 'Eger', 'EG', 1),
(1438, 97, 'Fejer', 'FE', 1),
(1439, 97, 'Gyor', 'GY', 1),
(1440, 97, 'Gyor-Moson-Sopron', 'GM', 1),
(1441, 97, 'Hajdu-Bihar', 'HB', 1),
(1442, 97, 'Heves', 'HE', 1),
(1443, 97, 'Hodmezovasarhely', 'HO', 1),
(1444, 97, 'Jasz-Nagykun-Szolnok', 'JN', 1),
(1445, 97, 'Kaposvar', 'KA', 1),
(1446, 97, 'Kecskemet', 'KE', 1),
(1447, 97, 'Komarom-Esztergom', 'KO', 1),
(1448, 97, 'Miskolc', 'MI', 1),
(1449, 97, 'Nagykanizsa', 'NA', 1),
(1450, 97, 'Nograd', 'NO', 1),
(1451, 97, 'Nyiregyhaza', 'NY', 1),
(1452, 97, 'Pecs', 'PE', 1),
(1453, 97, 'Pest', 'PS', 1),
(1454, 97, 'Somogy', 'SO', 1),
(1455, 97, 'Sopron', 'SP', 1),
(1456, 97, 'Szabolcs-Szatmar-Bereg', 'SS', 1),
(1457, 97, 'Szeged', 'SZ', 1),
(1458, 97, 'Szekesfehervar', 'SE', 1),
(1459, 97, 'Szolnok', 'SL', 1),
(1460, 97, 'Szombathely', 'SM', 1),
(1461, 97, 'Tatabanya', 'TA', 1),
(1462, 97, 'Tolna', 'TO', 1),
(1463, 97, 'Vas', 'VA', 1),
(1464, 97, 'Veszprem', 'VE', 1),
(1465, 97, 'Zala', 'ZA', 1),
(1466, 97, 'Zalaegerszeg', 'ZZ', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Pondicherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'BoDeTaBek', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta Raya', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta''mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1),
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1),
(1597, 103, 'Leitrim', 'LE', 1),
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be''er Sheva', 'BS', 1),
(1613, 104, 'Bika''at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '''Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al ''Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa''', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa''', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma''an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P''yongan-bukto', 'PYB', 1),
(1769, 112, 'P''yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P''yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch''ungch''ong-bukto', 'CO', 1),
(1774, 113, 'Ch''ungch''ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch''on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t''ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al ''Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra''', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1819, 117, 'Aizkraukles Rajons', 'AIZ', 1),
(1820, 117, 'Aluksnes Rajons', 'ALU', 1),
(1821, 117, 'Balvu Rajons', 'BAL', 1),
(1822, 117, 'Bauskas Rajons', 'BAU', 1),
(1823, 117, 'Cesu Rajons', 'CES', 1),
(1824, 117, 'Daugavpils Rajons', 'DGR', 1),
(1825, 117, 'Dobeles Rajons', 'DOB', 1),
(1826, 117, 'Gulbenes Rajons', 'GUL', 1),
(1827, 117, 'Jekabpils Rajons', 'JEK', 1),
(1828, 117, 'Jelgavas Rajons', 'JGR', 1),
(1829, 117, 'Kraslavas Rajons', 'KRA', 1),
(1830, 117, 'Kuldigas Rajons', 'KUL', 1),
(1831, 117, 'Liepajas Rajons', 'LPR', 1),
(1832, 117, 'Limbazu Rajons', 'LIM', 1),
(1833, 117, 'Ludzas Rajons', 'LUD', 1),
(1834, 117, 'Madonas Rajons', 'MAD', 1),
(1835, 117, 'Ogres Rajons', 'OGR', 1),
(1836, 117, 'Preilu Rajons', 'PRE', 1),
(1837, 117, 'Rezeknes Rajons', 'RZR', 1),
(1838, 117, 'Rigas Rajons', 'RGR', 1),
(1839, 117, 'Saldus Rajons', 'SAL', 1),
(1840, 117, 'Talsu Rajons', 'TAL', 1),
(1841, 117, 'Tukuma Rajons', 'TUK', 1),
(1842, 117, 'Valkas Rajons', 'VLK', 1),
(1843, 117, 'Valmieras Rajons', 'VLM', 1),
(1844, 117, 'Ventspils Rajons', 'VSR', 1),
(1845, 117, 'Daugavpils', 'DGV', 1),
(1846, 117, 'Jelgava', 'JGV', 1),
(1847, 117, 'Jurmala', 'JUR', 1),
(1848, 117, 'Liepaja', 'LPK', 1),
(1849, 117, 'Rezekne', 'RZK', 1),
(1850, 117, 'Riga', 'RGA', 1),
(1851, 117, 'Ventspils', 'VSL', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale''s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha''s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al ''Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati''', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'JO', 1),
(1972, 129, 'Kedah', 'KE', 1),
(1973, 129, 'Kelantan', 'KL', 1),
(1974, 129, 'Labuan', 'LA', 1),
(1975, 129, 'Melaka', 'ME', 1),
(1976, 129, 'Negeri Sembilan', 'NS', 1),
(1977, 129, 'Pahang', 'PA', 1),
(1978, 129, 'Perak', 'PE', 1),
(1979, 129, 'Perlis', 'PR', 1),
(1980, 129, 'Pulau Pinang', 'PP', 1),
(1981, 129, 'Sabah', 'SA', 1),
(1982, 129, 'Sarawak', 'SR', 1),
(1983, 129, 'Selangor', 'SE', 1),
(1984, 129, 'Terengganu', 'TE', 1),
(1985, 129, 'Wilayah Persekutuan', 'WP', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord Brabant', 'NB', 1),
(2336, 150, 'Noord Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke''s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa''id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Abakan', 'AB', 1),
(2722, 176, 'Aginskoye', 'AG', 1),
(2723, 176, 'Anadyr', 'AN', 1),
(2724, 176, 'Arkahangelsk', 'AR', 1),
(2725, 176, 'Astrakhan', 'AS', 1),
(2726, 176, 'Barnaul', 'BA', 1),
(2727, 176, 'Belgorod', 'BE', 1),
(2728, 176, 'Birobidzhan', 'BI', 1),
(2729, 176, 'Blagoveshchensk', 'BL', 1),
(2730, 176, 'Bryansk', 'BR', 1),
(2731, 176, 'Cheboksary', 'CH', 1),
(2732, 176, 'Chelyabinsk', 'CL', 1),
(2733, 176, 'Cherkessk', 'CR', 1),
(2734, 176, 'Chita', 'CI', 1),
(2735, 176, 'Dudinka', 'DU', 1),
(2736, 176, 'Elista', 'EL', 1),
(2737, 176, 'Gomo-Altaysk', 'GO', 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 1),
(2739, 176, 'Groznyy', 'GR', 1),
(2740, 176, 'Irkutsk', 'IR', 1),
(2741, 176, 'Ivanovo', 'IV', 1),
(2742, 176, 'Izhevsk', 'IZ', 1),
(2743, 176, 'Kalinigrad', 'KA', 1),
(2744, 176, 'Kaluga', 'KL', 1),
(2745, 176, 'Kasnodar', 'KS', 1),
(2746, 176, 'Kazan', 'KZ', 1),
(2747, 176, 'Kemerovo', 'KE', 1),
(2748, 176, 'Khabarovsk', 'KH', 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
(2750, 176, 'Kostroma', 'KO', 1),
(2751, 176, 'Krasnodar', 'KR', 1),
(2752, 176, 'Krasnoyarsk', 'KN', 1),
(2753, 176, 'Kudymkar', 'KU', 1),
(2754, 176, 'Kurgan', 'KG', 1),
(2755, 176, 'Kursk', 'KK', 1),
(2756, 176, 'Kyzyl', 'KY', 1),
(2757, 176, 'Lipetsk', 'LI', 1),
(2758, 176, 'Magadan', 'MA', 1),
(2759, 176, 'Makhachkala', 'MK', 1),
(2760, 176, 'Maykop', 'MY', 1),
(2761, 176, 'Moscow', 'MO', 1),
(2762, 176, 'Murmansk', 'MU', 1),
(2763, 176, 'Nalchik', 'NA', 1),
(2764, 176, 'Naryan Mar', 'NR', 1),
(2765, 176, 'Nazran', 'NZ', 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
(2767, 176, 'Novgorod', 'NO', 1),
(2768, 176, 'Novosibirsk', 'NV', 1),
(2769, 176, 'Omsk', 'OM', 1),
(2770, 176, 'Orel', 'OR', 1),
(2771, 176, 'Orenburg', 'OE', 1),
(2772, 176, 'Palana', 'PA', 1),
(2773, 176, 'Penza', 'PE', 1),
(2774, 176, 'Perm', 'PR', 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
(2776, 176, 'Petrozavodsk', 'PT', 1),
(2777, 176, 'Pskov', 'PS', 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 1),
(2779, 176, 'Ryazan', 'RY', 1),
(2780, 176, 'Salekhard', 'SL', 1),
(2781, 176, 'Samara', 'SA', 1),
(2782, 176, 'Saransk', 'SR', 1),
(2783, 176, 'Saratov', 'SV', 1),
(2784, 176, 'Smolensk', 'SM', 1),
(2785, 176, 'St. Petersburg', 'SP', 1),
(2786, 176, 'Stavropol', 'ST', 1),
(2787, 176, 'Syktyvkar', 'SY', 1),
(2788, 176, 'Tambov', 'TA', 1),
(2789, 176, 'Tomsk', 'TO', 1),
(2790, 176, 'Tula', 'TU', 1),
(2791, 176, 'Tura', 'TR', 1),
(2792, 176, 'Tver', 'TV', 1),
(2793, 176, 'Tyumen', 'TY', 1),
(2794, 176, 'Ufa', 'UF', 1),
(2795, 176, 'Ul''yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust''-Ordynskiy', 'US', 1),
(2798, 176, 'Vladikavkaz', 'VL', 1),
(2799, 176, 'Vladimir', 'VA', 1),
(2800, 176, 'Vladivostok', 'VV', 1),
(2801, 176, 'Volgograd', 'VG', 1),
(2802, 176, 'Vologda', 'VD', 1),
(2803, 176, 'Voronezh', 'VO', 1),
(2804, 176, 'Vyatka', 'VY', 1),
(2805, 176, 'Yakutsk', 'YA', 1),
(2806, 176, 'Yaroslavl', 'YR', 1),
(2807, 176, 'Yekaterinburg', 'YE', 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A''ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa''asaleleaga', 'FA', 1),
(2856, 181, 'Gaga''emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa''itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va''a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '''Asir', 'AS', 1),
(2882, 184, 'Ha''il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand'' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand'' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3031, 197, 'Ascension', 'A', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3033, 197, 'Tristan da Cunha', 'T', 1),
(3034, 199, 'A''ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa''iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa''iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'G&auml;vleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'J&auml;mtland', 'Z', 1),
(3080, 203, 'J&ouml;nk&ouml;ping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, '&Ouml;rebro', 'T', 1),
(3085, 203, '&Ouml;sterg&ouml;tland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'S&ouml;dermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'V&auml;rmland', 'S', 1),
(3091, 203, 'V&auml;sterbotten', 'AC', 1),
(3092, 203, 'V&auml;sternorrland', 'Y', 1),
(3093, 203, 'V&auml;stmanland', 'U', 1),
(3094, 203, 'V&auml;stra G&ouml;taland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graub&uuml;nden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Z&uuml;rich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1),
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1),
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1),
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t''ou', 'NT', 1),
(3145, 206, 'P''eng-hu', 'PH', 1),
(3146, 206, 'P''ing-tung', 'PT', 1),
(3147, 206, 'T''ai-chung', 'TG', 1),
(3148, 206, 'T''ai-nan', 'TA', 1),
(3149, 206, 'T''ai-pei county', 'TP', 1),
(3150, 206, 'T''ai-tung', 'TT', 1),
(3151, 206, 'T''ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T''ai-chung', 'TH', 1),
(3157, 206, 'T''ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T''ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha''apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava''u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakir', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazığ', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kırıkkale', 'KRK', 1),
(3364, 215, 'Kırklareli', 'KLR', 1),
(3365, 215, 'Kırşehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkasy', 'CK', 1),
(3481, 220, 'Chernihiv', 'CH', 1),
(3482, 220, 'Chernivtsi', 'CV', 1),
(3483, 220, 'Crimea', 'CR', 1),
(3484, 220, 'Dnipropetrovs''k', 'DN', 1),
(3485, 220, 'Donets''k', 'DO', 1),
(3486, 220, 'Ivano-Frankivs''k', 'IV', 1),
(3487, 220, 'Kharkiv Kherson', 'KL', 1),
(3488, 220, 'Khmel''nyts''kyy', 'KM', 1),
(3489, 220, 'Kirovohrad', 'KR', 1),
(3490, 220, 'Kiev', 'KV', 1),
(3491, 220, 'Kyyiv', 'KY', 1),
(3492, 220, 'Luhans''k', 'LU', 1),
(3493, 220, 'L''viv', 'LV', 1),
(3494, 220, 'Mykolayiv', 'MY', 1),
(3495, 220, 'Odesa', 'OD', 1),
(3496, 220, 'Poltava', 'PO', 1),
(3497, 220, 'Rivne', 'RI', 1),
(3498, 220, 'Sevastopol', 'SE', 1),
(3499, 220, 'Sumy', 'SU', 1),
(3500, 220, 'Ternopil''', 'TE', 1),
(3501, 220, 'Vinnytsya', 'VI', 1),
(3502, 220, 'Volyn''', 'VO', 1),
(3503, 220, 'Zakarpattya', 'ZK', 1),
(3504, 220, 'Zaporizhzhya', 'ZA', 1),
(3505, 220, 'Zhytomyr', 'ZH', 1),
(3506, 221, 'Abu Zaby', 'AZ', 1),
(3507, 221, '''Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shariqah', 'SH', 1),
(3510, 221, 'Dubayy', 'DU', 1),
(3511, 221, 'R''as al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg''ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog''iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma''rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa''dah', 'SD', 1),
(3805, 235, 'San''a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta''izz', 'TA', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3862, 105, 'Carbonia-Iglesias', 'CI', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3895, 105, 'Medio Campidano', 'VS', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3902, 105, 'Ogliastra', 'OG', 1),
(3903, 105, 'Olbia-Tempio', 'OT', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
(3971, 138, 'Aguascalientes', 'AG', 1),
(3972, 222, 'Isle of Man', 'IOM', 1),
(3973, 242, 'Andrijevica', '01', 1),
(3974, 242, 'Bar', '02', 1),
(3975, 242, 'Berane', '03', 1),
(3976, 242, 'Bijelo Polje', '04', 1),
(3977, 242, 'Budva', '05', 1),
(3978, 242, 'Cetinje', '06', 1),
(3979, 242, 'Danilovgrad', '07', 1),
(3980, 242, 'Herceg-Novi', '08', 1),
(3981, 242, 'Kolašin', '09', 1),
(3982, 242, 'Kotor', '10', 1),
(3983, 242, 'Mojkovac', '11', 1),
(3984, 242, 'Nikšić', '12', 1),
(3985, 242, 'Plav', '13', 1),
(3986, 242, 'Pljevlja', '14', 1),
(3987, 242, 'Plužine', '15', 1),
(3988, 242, 'Podgorica', '16', 1),
(3989, 242, 'Rožaje', '17', 1),
(3990, 242, 'Šavnik', '18', 1),
(3991, 242, 'Tivat', '19', 1),
(3992, 242, 'Ulcinj', '20', 1),
(3993, 242, 'Žabljak', '21', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4019, 243, 'Kosovo', 'KM', 1),
(4020, 245, 'Bonaire', 'BO', 1),
(4021, 245, 'Saba', 'SA', 1),
(4022, 245, 'Sint Eustatius', 'SE', 1),
(4023, 248, 'Central Equatoria', 'EC', 1),
(4024, 248, 'Eastern Equatoria', 'EE', 1),
(4025, 248, 'Jonglei', 'JG', 1),
(4026, 248, 'Lakes', 'LK', 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
(4028, 248, 'Unity', 'UY', 1),
(4029, 248, 'Upper Nile', 'NU', 1),
(4030, 248, 'Warrap', 'WR', 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
(4032, 248, 'Western Equatoria', 'EW', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone_to_geo_zone`
--

DROP TABLE IF EXISTS `oc_zone_to_geo_zone`;
CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=66 ;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(57, 222, 0, 3, '2010-02-26 22:33:24', '0000-00-00 00:00:00'),
(65, 222, 0, 4, '2010-12-15 15:18:13', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
