-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1:3306
-- 生成日期： 2022-07-10 06:49:06
-- 服务器版本： 8.0.21
-- PHP 版本： 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `hui`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `code` int NOT NULL,
  `dis` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`code`, `dis`) VALUES
(1, 'electronics'),
(21, 'electronics');

-- --------------------------------------------------------

--
-- 表的结构 `admin_table`
--

DROP TABLE IF EXISTS `admin_table`;
CREATE TABLE IF NOT EXISTS `admin_table` (
  `code` int NOT NULL,
  `dis` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `code` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_table`
--

INSERT INTO `admin_table` (`code`, `dis`) VALUES
(23, 'clothes'),
(21, 'makeup');

-- --------------------------------------------------------

--
-- 表的结构 `bidding`
--

DROP TABLE IF EXISTS `bidding`;
CREATE TABLE IF NOT EXISTS `bidding` (
  `code` int NOT NULL,
  `src` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `discribe` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nowprice` double NOT NULL,
  `oldprice` double DEFAULT NULL,
  `precent` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `a` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `number` int NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`number`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `bidding`
--

INSERT INTO `bidding` (`code`, `src`, `discribe`, `nowprice`, `oldprice`, `precent`, `a`, `number`, `shop_name`) VALUES
(1, '../images/goods/JULY.jpg', 'JULY新款复古现代新颖包', 8699, 8699, '', 'detail.php?code=1&dis=5', 1, 'JULY 夏不热系列精品挎包'),
(2, '../images/goods/JULY.jpg', 'JULY新款复古现代新颖包', 8699, 8699, '', 'detail.php?code=2&dis=5', 2, 'JULY 夏不热系列精品挎包'),
(3, '../images/goods/JULY.jpg', 'JULY新款复古现代新颖包', 8699, 8699, '', 'detail.php?code=3&dis=5', 3, 'JULY 夏不热系列精品挎包'),
(4, '../images/goods/JULY.jpg', 'JULY新款复古现代新颖包', 8699, 8699, '', 'detail.php?code=4&dis=5', 4, 'JULY 夏不热系列精品挎包'),
(5, '../images/goods/JULY.jpg', 'JULY新款复古现代新颖包', 8699, 8699, '', 'detail.php?code=5&dis=5', 5, 'JULY 夏不热系列精品挎包'),
(6, '../images/goods/JULY.jpg', 'JULY新款复古现代新颖包', 8699, 8699, '', 'detail.php?code=6&dis=5', 6, 'JULY 夏不热系列精品挎包'),
(7, '../images/goods/JULY.jpg', 'JULY新款复古现代新颖包', 8699, 8699, '', 'detail.php?code=7&dis=5', 7, 'JULY 夏不热系列精品挎包'),
(8, '../images/goods/JULY.jpg', 'JULY新款复古现代新颖包', 8699, 8699, '', 'detail.php?code=8&dis=5', 8, 'JULY 夏不热系列精品挎包'),
(9, '../images/goods/JULY.jpg', 'JULY新款复古现代新颖包', 8699, 8699, '', 'detail.php?code=9&dis=5', 9, 'JULY 夏不热系列精品挎包'),
(10, '../images/goods/JULY.jpg', 'JULY新款复古现代新颖包', 8699, 8699, '', 'detail.php?code=10&dis=5', 10, 'JULY 夏不热系列精品挎包'),
(11, '../images/goods/JULY.jpg', 'JULY新款复古现代新颖包', 8699, 8699, '', 'detail.php?code=11&dis=5', 11, 'JULY 夏不热系列精品挎包'),
(12, '../images/goods/JULY.jpg', 'JULY新款复古现代新颖包', 8699, 8699, '', 'detail.php?code=12&dis=5', 12, 'JULY 夏不热系列精品挎包'),
(13, '../images/goods/JULY.jpg', 'JULY新款复古现代新颖包', 8699, 8699, '', 'detail.php?code=13&dis=5', 13, 'JULY 夏不热系列精品挎包'),
(14, '../images/goods/JULY.jpg', 'JULY新款复古现代新颖包', 8699, 8699, '', 'detail.php?code=14&dis=5', 14, 'JULY 夏不热系列精品挎包'),
(15, '../images/goods/JULY.jpg', 'JULY新款复古现代新颖包', 8699, 8699, '', 'detail.php?code=15&dis=5', 15, 'JULY 夏不热系列精品挎包'),
(16, '../images/goods/JULY.jpg', 'JULY新款复古现代新颖包', 8699, 8699, '', 'detail.php?code=16&dis=5', 16, 'JULY 夏不热系列精品挎包'),
(17, '../images/goods/JULY.jpg', 'JULY新款复古现代新颖包', 8699, 8699, '', 'detail.php?code=17&dis=5', 17, 'JULY 夏不热系列精品挎包'),
(18, '../images/goods/JULY.jpg', 'JULY新款复古现代新颖包', 8699, 8699, '', 'detail.php?code=18&dis=5', 18, 'JULY 夏不热系列精品挎包'),
(19, '../images/goods/JULY.jpg', 'JULY新款复古现代新颖包', 8699, 8699, '', 'detail.php?code=19&dis=5', 19, 'JULY 夏不热系列精品挎包'),
(20, '../images/goods/JULY.jpg', 'JULY新款复古现代新颖包', 8699, 8699, '', 'detail.php?code=20&dis=5', 20, 'JULY 夏不热系列精品挎包');

-- --------------------------------------------------------

--
-- 表的结构 `clothes`
--

DROP TABLE IF EXISTS `clothes`;
CREATE TABLE IF NOT EXISTS `clothes` (
  `code` int NOT NULL,
  `src` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `discribe` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nowprice` double NOT NULL,
  `oldprice` double DEFAULT NULL,
  `precent` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `a` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `number` int NOT NULL,
  `shop_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`number`),
  KEY `code` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `clothes`
--

INSERT INTO `clothes` (`code`, `src`, `discribe`, `nowprice`, `oldprice`, `precent`, `a`, `number`, `shop_name`) VALUES
(1, '../images/goods/caidan.jpg', '潮流男套装，BIU出你的运动型', 349.9, 349.9, '', 'detail.php?code=1&dis=1', 1, '男装'),
(2, '../images/goods/caidan.jpg', '潮流男套装，BIU出你的运动型', 349.9, 349.9, '', 'detail.php?code=2&dis=1', 2, '男装'),
(3, '../images/goods/caidan.jpg', '潮流男套装，BIU出你的运动型', 349.9, 349.9, '', 'detail.php?code=3&dis=1', 3, '男装'),
(4, '../images/goods/caidan.jpg', '潮流男套装，BIU出你的运动型', 349.9, 349.9, '', 'detail.php?code=4&dis=1', 4, '男装'),
(5, '../images/goods/caidan.jpg', '潮流男套装，BIU出你的运动型', 349.9, 349.9, '', 'detail.php?code=5&dis=1', 5, '男装'),
(6, '../images/goods/caidan.jpg', '潮流男套装，BIU出你的运动型', 349.9, 349.9, '', 'detail.php?code=6&dis=1', 6, '男装'),
(7, '../images/goods/caidan.jpg', '潮流男套装，BIU出你的运动型', 349.9, 349.9, '', 'detail.php?code=7&dis=1', 7, '男装'),
(8, '../images/goods/caidan.jpg', '潮流男套装，BIU出你的运动型', 349.9, 349.9, '', 'detail.php?code=8&dis=1', 8, '男装'),
(9, '../images/goods/caidan.jpg', '潮流男套装，BIU出你的运动型', 349.9, 349.9, '', 'detail.php?code=9&dis=1', 9, '男装'),
(10, '../images/goods/caidan.jpg', '潮流男套装，BIU出你的运动型', 349.9, 349.9, '', 'detail.php?code=10&dis=1', 10, '男装'),
(11, '../images/goods/caidan.jpg', '潮流男套装，BIU出你的运动型', 349.9, 349.9, '', 'detail.php?code=11&dis=1', 11, '男装'),
(12, '../images/goods/caidan.jpg', '潮流男套装，BIU出你的运动型', 349.9, 349.9, '', 'detail.php?code=12&dis=1', 12, '男装'),
(13, '../images/goods/caidan.jpg', '潮流男套装，BIU出你的运动型', 349.9, 349.9, '', 'detail.php?code=13&dis=1', 13, '男装'),
(14, '../images/goods/caidan.jpg', '潮流男套装，BIU出你的运动型', 349.9, 349.9, '', 'detail.php?code=14&dis=1', 14, '男装'),
(15, '../images/goods/caidan.jpg', '潮流男套装，BIU出你的运动型', 349.9, 349.9, '', 'detail.php?code=15&dis=1', 15, '男装'),
(16, '../images/goods/caidan.jpg', '潮流男套装，BIU出你的运动型', 349.9, 349.9, '', 'detail.php?code=16&dis=1', 16, '男装'),
(17, '../images/goods/caidan.jpg', '潮流男套装，BIU出你的运动型', 349.9, 349.9, '', 'detail.php?code=17&dis=1', 17, '男装'),
(18, '../images/goods/caidan.jpg', '潮流男套装，BIU出你的运动型', 349.9, 349.9, '', 'detail.php?code=18&dis=1', 18, '男装'),
(19, '../images/goods/caidan.jpg', '潮流男套装，BIU出你的运动型', 349.9, 349.9, '', 'detail.php?code=19&dis=1', 19, '男装'),
(20, '../images/goods/caidan.jpg', '潮流男套装，BIU出你的运动型', 349.9, 349.9, '', 'detail.php?code=20&dis=1', 20, '男装'),
(21, '../images/goods/cloths.jpg', '潮流男装', 107, 107, '', 'detail.php?code=21&dis=1', 21, '青年男装'),
(23, '../images/upimages/37372c963e79c4e2fed70e1e0941652d.jpg', '时尚达人推荐，百搭爆款', 260, 260, '', 'detail.php?code=23&dis=1', 23, '百搭女装'),
(22, '../images/goods/woman.jpg', '新品清新，百搭爆款', 200, 260, '../images/goods/zk.png ', 'detail.php?code=22&dis=1', 22, '女装');

-- --------------------------------------------------------

--
-- 表的结构 `delicious_food`
--

DROP TABLE IF EXISTS `delicious_food`;
CREATE TABLE IF NOT EXISTS `delicious_food` (
  `code` int NOT NULL,
  `src` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `discribe` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nowprice` double NOT NULL,
  `oldprice` double DEFAULT NULL,
  `precent` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `a` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `number` int NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`number`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `delicious_food`
--

INSERT INTO `delicious_food` (`code`, `src`, `discribe`, `nowprice`, `oldprice`, `precent`, `a`, `number`, `shop_name`) VALUES
(1, '../images/goods/food.jpg', '八寸樱桃完子蛋糕', 24, 24, '', 'detail.php?code=1&dis=7', 1, '樱桃完子'),
(2, '../images/goods/food.jpg', '八寸樱桃完子蛋糕', 24, 24, '', 'detail.php?code=2&dis=7', 2, '樱桃完子'),
(3, '../images/goods/food.jpg', '八寸樱桃完子蛋糕', 24, 24, '', 'detail.php?code=3&dis=7', 3, '樱桃完子'),
(4, '../images/goods/food.jpg', '八寸樱桃完子蛋糕', 24, 24, '', 'detail.php?code=4&dis=7', 4, '樱桃完子'),
(5, '../images/goods/food.jpg', '八寸樱桃完子蛋糕', 24, 24, '', 'detail.php?code=5&dis=7', 5, '樱桃完子'),
(6, '../images/goods/food.jpg', '八寸樱桃完子蛋糕', 24, 24, '', 'detail.php?code=6&dis=7', 6, '樱桃完子'),
(7, '../images/goods/food.jpg', '八寸樱桃完子蛋糕', 24, 24, '', 'detail.php?code=7&dis=7', 7, '樱桃完子'),
(8, '../images/goods/food.jpg', '八寸樱桃完子蛋糕', 24, 24, '', 'detail.php?code=8&dis=7', 8, '樱桃完子'),
(9, '../images/goods/food.jpg', '八寸樱桃完子蛋糕', 24, 24, '', 'detail.php?code=9&dis=7', 9, '樱桃完子'),
(10, '../images/goods/food.jpg', '八寸樱桃完子蛋糕', 24, 24, '', 'detail.php?code=10&dis=7', 10, '樱桃完子'),
(11, '../images/goods/food.jpg', '八寸樱桃完子蛋糕', 24, 24, '', 'detail.php?code=11&dis=7', 11, '樱桃完子'),
(12, '../images/goods/food.jpg', '八寸樱桃完子蛋糕', 24, 24, '', 'detail.php?code=12&dis=7', 12, '樱桃完子'),
(13, '../images/goods/food.jpg', '八寸樱桃完子蛋糕', 24, 24, '', 'detail.php?code=13&dis=7', 13, '樱桃完子'),
(14, '../images/goods/food.jpg', '八寸樱桃完子蛋糕', 24, 24, '', 'detail.php?code=14&dis=7', 14, '樱桃完子'),
(15, '../images/goods/food.jpg', '八寸樱桃完子蛋糕', 24, 24, '', 'detail.php?code=15&dis=7', 15, '樱桃完子'),
(16, '../images/goods/food.jpg', '八寸樱桃完子蛋糕', 24, 24, '', 'detail.php?code=16&dis=7', 16, '樱桃完子'),
(17, '../images/goods/food.jpg', '八寸樱桃完子蛋糕', 24, 24, '', 'detail.php?code=17&dis=7', 17, '樱桃完子'),
(18, '../images/goods/food.jpg', '八寸樱桃完子蛋糕', 24, 24, '', 'detail.php?code=18&dis=7', 18, '樱桃完子'),
(19, '../images/goods/food.jpg', '八寸樱桃完子蛋糕', 24, 24, '', 'detail.php?code=19&dis=7', 19, '樱桃完子'),
(20, '../images/goods/food.jpg', '八寸樱桃完子蛋糕', 24, 24, '', 'detail.php?code=20&dis=7', 20, '樱桃完子');

-- --------------------------------------------------------

--
-- 表的结构 `drinks`
--

DROP TABLE IF EXISTS `drinks`;
CREATE TABLE IF NOT EXISTS `drinks` (
  `code` int NOT NULL,
  `src` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `discribe` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nowprice` double NOT NULL,
  `oldprice` double DEFAULT NULL,
  `precent` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `a` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `number` int NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`number`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `drinks`
--

INSERT INTO `drinks` (`code`, `src`, `discribe`, `nowprice`, `oldprice`, `precent`, `a`, `number`, `shop_name`) VALUES
(1, '../images/goods/coco.jpg', '百事，纯正的味儿', 9.9, 29.9, '../images/goods/zk.png', 'detail.php?code=1&dis=2', 1, '可乐'),
(2, '../images/goods/coco.jpg', '百事，纯正的味儿', 9.9, 29.9, '../images/goods/zk.png', 'detail.php?code=2&dis=2', 2, '可乐'),
(3, '../images/goods/coco.jpg', '百事，纯正的味儿', 9.9, 29.9, '../images/goods/zk.png', 'detail.php?code=3&dis=2', 3, '可乐'),
(4, '../images/goods/coco.jpg', '百事，纯正的味儿', 9.9, 29.9, '../images/goods/zk.png', 'detail.php?code=4&dis=2', 4, '可乐'),
(5, '../images/goods/coco.jpg', '百事，纯正的味儿', 9.9, 29.9, '../images/goods/zk.png', 'detail.php?code=5&dis=2', 5, '可乐'),
(6, '../images/goods/coco.jpg', '百事，纯正的味儿', 9.9, 29.9, '../images/goods/zk.png', 'detail.php?code=6&dis=2', 6, '可乐'),
(7, '../images/goods/coco.jpg', '百事，纯正的味儿', 9.9, 29.9, '../images/goods/zk.png', 'detail.php?code=7&dis=2', 7, '可乐'),
(8, '../images/goods/coco.jpg', '百事，纯正的味儿', 9.9, 29.9, '../images/goods/zk.png', 'detail.php?code=8&dis=2', 8, '可乐'),
(9, '../images/goods/coco.jpg', '百事，纯正的味儿', 9.9, 29.9, '../images/goods/zk.png', 'detail.php?code=9&dis=2', 9, '可乐'),
(10, '../images/goods/coco.jpg', '百事，纯正的味儿', 9.9, 29.9, '../images/goods/zk.png', 'detail.php?code=10&dis=2', 10, '可乐'),
(11, '../images/goods/coco.jpg', '百事，纯正的味儿', 9.9, 29.9, '../images/goods/zk.png', 'detail.php?code=11&dis=2', 11, '可乐'),
(12, '../images/goods/coco.jpg', '百事，纯正的味儿', 9.9, 29.9, '../images/goods/zk.png', 'detail.php?code=12&dis=2', 12, '可乐'),
(13, '../images/goods/coco.jpg', '百事，纯正的味儿', 9.9, 29.9, '../images/goods/zk.png', 'detail.php?code=13&dis=2', 13, '可乐'),
(14, '../images/goods/coco.jpg', '百事，纯正的味儿', 9.9, 29.9, '../images/goods/zk.png', 'detail.php?code=14&dis=2', 14, '可乐'),
(15, '../images/goods/coco.jpg', '百事，纯正的味儿', 9.9, 29.9, '../images/goods/zk.png', 'detail.php?code=15&dis=2', 15, '可乐'),
(16, '../images/goods/coco.jpg', '百事，纯正的味儿', 9.9, 29.9, '../images/goods/zk.png', 'detail.php?code=16&dis=2', 16, '可乐'),
(17, '../images/goods/coco.jpg', '百事，纯正的味儿', 9.9, 29.9, '../images/goods/zk.png', 'detail.php?code=17&dis=2', 17, '可乐'),
(18, '../images/goods/coco.jpg', '百事，纯正的味儿', 9.9, 29.9, '../images/goods/zk.png', 'detail.php?code=18&dis=2', 18, '可乐'),
(19, '../images/goods/coco.jpg', '百事，纯正的味儿', 9.9, 29.9, '../images/goods/zk.png', 'detail.php?code=19&dis=2', 19, '可乐'),
(20, '../images/goods/coco.jpg', '百事，纯正的味儿', 9.9, 29.9, '../images/goods/zk.png', 'detail.php?code=20&dis=2', 20, '可乐');

-- --------------------------------------------------------

--
-- 表的结构 `electronics`
--

DROP TABLE IF EXISTS `electronics`;
CREATE TABLE IF NOT EXISTS `electronics` (
  `code` int NOT NULL,
  `src` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `discribe` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nowprice` double NOT NULL,
  `oldprice` double DEFAULT NULL,
  `precent` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `a` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `number` int NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`number`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `electronics`
--

INSERT INTO `electronics` (`code`, `src`, `discribe`, `nowprice`, `oldprice`, `precent`, `a`, `number`, `shop_name`) VALUES
(1, '../images/goods/electron1.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12屏 官网正品 保修三年', 3224, 3324, '../images/goods/zk.png ', 'detail.php?code=1&dis=9', 1, 'Lenovo电脑'),
(2, '../images/goods/electron1.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12屏', 3224, 3224, '', 'detail.php?code=2&dis=9', 2, 'Lenovo电脑'),
(3, '../images/goods/electron1.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12屏', 3224, 3224, '', 'detail.php?code=3&dis=9', 3, 'Lenovo电脑'),
(4, '../images/goods/electron1.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12屏', 3224, 3224, '', 'detail.php?code=4&dis=9', 4, 'Lenovo电脑'),
(5, '../images/goods/electron1.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12屏', 3224, 3224, '', 'detail.php?code=5&dis=9', 5, 'Lenovo电脑'),
(6, '../images/goods/electron1.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12屏', 3224, 3224, '', 'detail.php?code=6&dis=9', 6, 'Lenovo电脑'),
(7, '../images/goods/electron1.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12屏', 3224, 3224, '', 'detail.php?code=7&dis=9', 7, 'Lenovo电脑'),
(8, '../images/goods/electron1.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12屏', 3224, 3224, '', 'detail.php?code=8&dis=9', 8, 'Lenovo电脑'),
(9, '../images/goods/electron1.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12屏', 3224, 3224, '', 'detail.php?code=9&dis=9', 9, 'Lenovo电脑'),
(10, '../images/goods/electron1.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12屏', 3224, 3224, '', 'detail.php?code=10&dis=9', 10, 'Lenovo电脑'),
(11, '../images/goods/electron1.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12屏', 3224, 3224, '', 'detail.php?code=11&dis=9', 11, 'Lenovo电脑'),
(12, '../images/goods/electron1.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12屏', 3224, 3224, '', 'detail.php?code=12&dis=9', 12, 'Lenovo电脑'),
(13, '../images/goods/electron1.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12屏', 3224, 3224, '', 'detail.php?code=13&dis=9', 13, 'Lenovo电脑'),
(14, '../images/goods/electron1.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12屏', 3224, 3224, '', 'detail.php?code=14&dis=9', 14, 'Lenovo电脑'),
(15, '../images/goods/electron1.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12屏', 3224, 3224, '', 'detail.php?code=15&dis=9', 15, 'Lenovo电脑'),
(16, '../images/goods/electron1.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12屏', 3224, 3224, '', 'detail.php?code=16&dis=9', 16, 'Lenovo电脑'),
(17, '../images/goods/electron1.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12屏', 3224, 3224, '', 'detail.php?code=17&dis=9', 17, 'Lenovo电脑'),
(18, '../images/goods/electron1.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12屏', 3224, 3224, '', 'detail.php?code=18&dis=9', 18, 'Lenovo电脑'),
(19, '../images/goods/electron1.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12屏', 3224, 3224, '', 'detail.php?code=19&dis=9', 19, 'Lenovo电脑'),
(20, '../images/goods/electron1.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12屏', 3224, 3224, '', 'detail.php?code=20&dis=9', 20, 'Lenovo电脑'),
(21, '../images/goods/electron2.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12屏', 2824, 2824, '', 'detail.php?code=21&dis=9', 21, 'Lenovo e5电脑'),
(22, '../images/goods/electron2.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12屏 独立显卡 送1T固态', 3524, 3524, '', 'detail.php?code=22&dis=9', 22, 'Lenovo e5电脑Plus');

-- --------------------------------------------------------

--
-- 表的结构 `global_purchase`
--

DROP TABLE IF EXISTS `global_purchase`;
CREATE TABLE IF NOT EXISTS `global_purchase` (
  `code` int NOT NULL,
  `src` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `discribe` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nowprice` double NOT NULL,
  `oldprice` double DEFAULT NULL,
  `precent` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `a` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `number` int NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`number`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `global_purchase`
--

INSERT INTO `global_purchase` (`code`, `src`, `discribe`, `nowprice`, `oldprice`, `precent`, `a`, `number`, `shop_name`) VALUES
(1, '../images/goods/JUNE.jpg', 'JUNE 高级手工精湛工艺，绽放你的暗调魅力', 8699, 8699, '', 'detail.php?code=1&dis=6', 1, 'JUNE 黑色小皮鞋'),
(2, '../images/goods/JUNE.jpg', 'JUNE 高级手工精湛工艺，绽放你的暗调魅力', 8699, 8699, '', 'detail.php?code=2&dis=6', 2, 'JUNE 黑色小皮鞋'),
(3, '../images/goods/JUNE.jpg', 'JUNE 高级手工精湛工艺，绽放你的暗调魅力', 8699, 8699, '', 'detail.php?code=3&dis=6', 3, 'JUNE 黑色小皮鞋'),
(4, '../images/goods/JUNE.jpg', 'JUNE 高级手工精湛工艺，绽放你的暗调魅力', 8699, 8699, '', 'detail.php?code=4&dis=6', 4, 'JUNE 黑色小皮鞋'),
(5, '../images/goods/JUNE.jpg', 'JUNE 高级手工精湛工艺，绽放你的暗调魅力', 8699, 8699, '', 'detail.php?code=5&dis=6', 5, 'JUNE 黑色小皮鞋'),
(6, '../images/goods/JUNE.jpg', 'JUNE 高级手工精湛工艺，绽放你的暗调魅力', 8699, 8699, '', 'detail.php?code=6&dis=6', 6, 'JUNE 黑色小皮鞋'),
(7, '../images/goods/JUNE.jpg', 'JUNE 高级手工精湛工艺，绽放你的暗调魅力', 8699, 8699, '', 'detail.php?code=7&dis=6', 7, 'JUNE 黑色小皮鞋'),
(8, '../images/goods/JUNE.jpg', 'JUNE 高级手工精湛工艺，绽放你的暗调魅力', 8699, 8699, '', 'detail.php?code=8&dis=6', 8, 'JUNE 黑色小皮鞋'),
(9, '../images/goods/JUNE.jpg', 'JUNE 高级手工精湛工艺，绽放你的暗调魅力', 8699, 8699, '', 'detail.php?code=9&dis=6', 9, 'JUNE 黑色小皮鞋'),
(10, '../images/goods/JUNE.jpg', 'JUNE 高级手工精湛工艺，绽放你的暗调魅力', 8699, 8699, '', 'detail.php?code=10&dis=6', 10, 'JUNE 黑色小皮鞋'),
(11, '../images/goods/JUNE.jpg', 'JUNE 高级手工精湛工艺，绽放你的暗调魅力', 8699, 8699, '', 'detail.php?code=11&dis=6', 11, 'JUNE 黑色小皮鞋'),
(12, '../images/goods/JUNE.jpg', 'JUNE 高级手工精湛工艺，绽放你的暗调魅力', 8699, 8699, '', 'detail.php?code=12&dis=6', 12, 'JUNE 黑色小皮鞋'),
(13, '../images/goods/JUNE.jpg', 'JUNE 高级手工精湛工艺，绽放你的暗调魅力', 8699, 8699, '', 'detail.php?code=13&dis=6', 13, 'JUNE 黑色小皮鞋'),
(14, '../images/goods/JUNE.jpg', 'JUNE 高级手工精湛工艺，绽放你的暗调魅力', 8699, 8699, '', 'detail.php?code=14&dis=6', 14, 'JUNE 黑色小皮鞋'),
(15, '../images/goods/JUNE.jpg', 'JUNE 高级手工精湛工艺，绽放你的暗调魅力', 8699, 8699, '', 'detail.php?code=15&dis=6', 15, 'JUNE 黑色小皮鞋'),
(16, '../images/goods/JUNE.jpg', 'JUNE 高级手工精湛工艺，绽放你的暗调魅力', 8699, 8699, '', 'detail.php?code=16&dis=6', 16, 'JUNE 黑色小皮鞋'),
(17, '../images/goods/JUNE.jpg', 'JUNE 高级手工精湛工艺，绽放你的暗调魅力', 8699, 8699, '', 'detail.php?code=17&dis=6', 17, 'JUNE 黑色小皮鞋'),
(18, '../images/goods/JUNE.jpg', 'JUNE 高级手工精湛工艺，绽放你的暗调魅力', 8699, 8699, '', 'detail.php?code=18&dis=6', 18, 'JUNE 黑色小皮鞋'),
(19, '../images/goods/JUNE.jpg', 'JUNE 高级手工精湛工艺，绽放你的暗调魅力', 8699, 8699, '', 'detail.php?code=19&dis=6', 19, 'JUNE 黑色小皮鞋'),
(20, '../images/goods/JUNE.jpg', 'JUNE 高级手工精湛工艺，绽放你的暗调魅力', 8699, 8699, '', 'detail.php?code=20&dis=6', 20, 'JUNE 黑色小皮鞋');

-- --------------------------------------------------------

--
-- 表的结构 `goods`
--

DROP TABLE IF EXISTS `goods`;
CREATE TABLE IF NOT EXISTS `goods` (
  `code` int NOT NULL,
  `src` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `discribe` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nowprice` double NOT NULL,
  `oldprice` double DEFAULT NULL,
  `precent` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `a` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `number` int NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`number`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `goods`
--

INSERT INTO `goods` (`code`, `src`, `discribe`, `nowprice`, `oldprice`, `precent`, `a`, `number`, `shop_name`) VALUES
(1, '../images/goods/caidan.jpg', '潮流男套装，BIU出你的运动型', 349.9, 349.9, '', 'detail.php?code=1', 1, '男装'),
(2, '../images/goods/caidan.jpg', '潮流男套装，BIU出你的运动型', 349.9, 349.9, '', 'detail.php?code=2', 2, '男装'),
(3, '../images/goods/caidan.jpg', '潮流男套装，BIU出你的运动型', 349.9, 349.9, '', 'detail.php?code=3', 3, '男装'),
(4, '../images/goods/caidan.jpg', '潮流男套装，BIU出你的运动型', 349.9, 349.9, '', 'detail.php?code=4', 4, '男装'),
(5, '../images/goods/caidan.jpg', '潮流男套装，BIU出你的运动型', 349.9, 349.9, '', 'detail.php?code=5', 5, '男装'),
(6, '../images/goods/caidan.jpg', '潮流男套装，BIU出你的运动型', 349.9, 349.9, '', 'detail.php?code=6', 6, '男装'),
(7, '../images/goods/caidan.jpg', '潮流男套装，BIU出你的运动型', 349.9, 349.9, '', 'detail.php?code=7', 7, '男装'),
(8, '../images/goods/caidan.jpg', '潮流男套装，BIU出你的运动型', 349.9, 349.9, '', 'detail.php?code=8', 8, '男装'),
(9, '../images/goods/caidan.jpg', '潮流男套装，BIU出你的运动型', 349.9, 349.9, '', 'detail.php?code=9', 9, '男装'),
(10, '../images/goods/caidan.jpg', '潮流男套装，BIU出你的运动型', 349.9, 349.9, '', 'detail.php?code=10', 10, '男装'),
(11, '../images/goods/caidan.jpg', '潮流男套装，BIU出你的运动型', 349.9, 349.9, '', 'detail.php?code=11', 11, '男装'),
(12, '../images/goods/caidan.jpg', '潮流男套装，BIU出你的运动型', 349.9, 349.9, '', 'detail.php?code=12', 12, '男装'),
(13, '../images/goods/caidan.jpg', '潮流男套装，BIU出你的运动型', 349.9, 349.9, '', 'detail.php?code=13', 13, '男装'),
(14, '../images/goods/caidan.jpg', '潮流男套装，BIU出你的运动型', 349.9, 349.9, '', 'detail.php?code=14', 14, '男装'),
(15, '../images/goods/caidan.jpg', '潮流男套装，BIU出你的运动型', 349.9, 349.9, '', 'detail.php?code=15', 15, '男装'),
(16, '../images/goods/caidan.jpg', '潮流男套装，BIU出你的运动型', 349.9, 349.9, '', 'detail.php?code=16', 16, '男装'),
(17, '../images/goods/caidan.jpg', '潮流男套装，BIU出你的运动型', 349.9, 349.9, '', 'detail.php?code=17', 17, '男装'),
(18, '../images/goods/caidan.jpg', '潮流男套装，BIU出你的运动型', 349.9, 349.9, '', 'detail.php?code=18', 18, '男装'),
(19, '../images/goods/caidan.jpg', '潮流男套装，BIU出你的运动型', 349.9, 349.9, '', 'detail.php?code=19', 19, '男装'),
(20, '../images/goods/caidan.jpg', '潮流男套装，BIU出你的运动型', 349.9, 349.9, '', 'detail.php?code=20', 20, '男装'),
(21, '../images/goods/coco.jpg', '百事，纯真的味儿', 9.9, 29.9, '../images/goods/zk.png', 'detail.php?code=21', 21, '可乐'),
(22, '../images/goods/coco.jpg', '百事，纯真的味儿', 9.9, 29.9, '../images/goods/zk.png', 'detail.php?code=22', 22, '可乐'),
(23, '../images/goods/coco.jpg', '百事，纯真的味儿', 9.9, 29.9, '../images/goods/zk.png', 'detail.php?code=23', 23, '可乐'),
(24, '../images/goods/coco.jpg', '百事，纯真的味儿', 9.9, 29.9, '../images/goods/zk.png', 'detail.php?code=24', 24, '可乐'),
(25, '../images/goods/coco.jpg', '百事，纯真的味儿', 9.9, 29.9, '../images/goods/zk.png', 'detail.php?code=25', 25, '可乐'),
(26, '../images/goods/coco.jpg', '百事，纯真的味儿', 9.9, 29.9, '../images/goods/zk.png', 'detail.php?code=26', 26, '可乐'),
(27, '../images/goods/coco.jpg', '百事，纯真的味儿', 9.9, 29.9, '../images/goods/zk.png', 'detail.php?code=27', 27, '可乐'),
(28, '../images/goods/coco.jpg', '百事，纯真的味儿', 9.9, 29.9, '../images/goods/zk.png', 'detail.php?code=28', 28, '可乐'),
(29, '../images/goods/coco.jpg', '百事，纯真的味儿', 9.9, 29.9, '../images/goods/zk.png', 'detail.php?code=29', 29, '可乐'),
(30, '../images/goods/coco.jpg', '百事，纯真的味儿', 9.9, 29.9, '../images/goods/zk.png', 'detail.php?code=30', 30, '可乐'),
(31, '../images/goods/coco.jpg', '百事，纯真的味儿', 9.9, 29.9, '../images/goods/zk.png', 'detail.php?code=31', 31, '可乐'),
(32, '../images/goods/coco.jpg', '百事，纯真的味儿', 9.9, 29.9, '../images/goods/zk.png', 'detail.php?code=32', 32, '可乐'),
(33, '../images/goods/coco.jpg', '百事，纯真的味儿', 9.9, 29.9, '../images/goods/zk.png', 'detail.php?code=33', 33, '可乐'),
(34, '../images/goods/coco.jpg', '百事，纯真的味儿', 9.9, 29.9, '../images/goods/zk.png', 'detail.php?code=34', 34, '可乐'),
(35, '../images/goods/coco.jpg', '百事，纯真的味儿', 9.9, 29.9, '../images/goods/zk.png', 'detail.php?code=35', 35, '可乐'),
(36, '../images/goods/coco.jpg', '百事，纯真的味儿', 9.9, 29.9, '../images/goods/zk.png', 'detail.php?code=36', 36, '可乐'),
(37, '../images/goods/coco.jpg', '百事，纯真的味儿', 9.9, 29.9, '../images/goods/zk.png', 'detail.php?code=37', 37, '可乐'),
(38, '../images/goods/coco.jpg', '百事，纯真的味儿', 9.9, 29.9, '../images/goods/zk.png', 'detail.php?code=38', 38, '可乐'),
(39, '../images/goods/coco.jpg', '百事，纯真的味儿', 9.9, 29.9, '../images/goods/zk.png', 'detail.php?code=39', 39, '可乐'),
(40, '../images/goods/coco.jpg', '百事，纯真的味儿', 9.9, 29.9, '../images/goods/zk.png', 'detail.php?code=40', 40, '可乐'),
(41, '../images/goods/makeup.jpg', '唤醒美好一天', 29.9, 35.9, '../images/goods/zk.png', 'detail.php?code=41', 41, '洗面奶'),
(42, '../images/goods/makeup.jpg', '唤醒美好一天', 29.9, 35.9, '../images/goods/zk.png', 'detail.php?code=42', 42, '洗面奶'),
(43, '../images/goods/makeup.jpg', '唤醒美好一天', 29.9, 35.9, '../images/goods/zk.png', 'detail.php?code=43', 43, '洗面奶'),
(44, '../images/goods/makeup.jpg', '唤醒美好一天', 29.9, 35.9, '../images/goods/zk.png', 'detail.php?code=44', 44, '洗面奶'),
(45, '../images/goods/makeup.jpg', '唤醒美好一天', 29.9, 35.9, '../images/goods/zk.png', 'detail.php?code=45', 45, '洗面奶'),
(46, '../images/goods/makeup.jpg', '唤醒美好一天', 29.9, 35.9, '../images/goods/zk.png', 'detail.php?code=46', 46, '洗面奶'),
(47, '../images/goods/makeup.jpg', '唤醒美好一天', 29.9, 35.9, '../images/goods/zk.png', 'detail.php?code=47', 47, '洗面奶'),
(48, '../images/goods/makeup.jpg', '唤醒美好一天', 29.9, 35.9, '../images/goods/zk.png', 'detail.php?code=48', 48, '洗面奶'),
(49, '../images/goods/makeup.jpg', '唤醒美好一天', 29.9, 35.9, '../images/goods/zk.png', 'detail.php?code=49', 49, '洗面奶'),
(50, '../images/goods/makeup.jpg', '唤醒美好一天', 29.9, 35.9, '../images/goods/zk.png', 'detail.php?code=50', 50, '洗面奶'),
(51, '../images/goods/makeup.jpg', '唤醒美好一天', 29.9, 35.9, '../images/goods/zk.png', 'detail.php?code=51', 51, '洗面奶'),
(52, '../images/goods/makeup.jpg', '唤醒美好一天', 29.9, 35.9, '../images/goods/zk.png', 'detail.php?code=52', 52, '洗面奶'),
(53, '../images/goods/makeup.jpg', '唤醒美好一天', 29.9, 35.9, '../images/goods/zk.png', 'detail.php?code=53', 53, '洗面奶'),
(54, '../images/goods/makeup.jpg', '唤醒美好一天', 29.9, 35.9, '../images/goods/zk.png', 'detail.php?code=54', 54, '洗面奶'),
(55, '../images/goods/makeup.jpg', '唤醒美好一天', 29.9, 35.9, '../images/goods/zk.png', 'detail.php?code=55', 55, '洗面奶'),
(56, '../images/goods/makeup.jpg', '唤醒美好一天', 29.9, 35.9, '../images/goods/zk.png', 'detail.php?code=56', 56, '洗面奶'),
(57, '../images/goods/makeup.jpg', '唤醒美好一天', 29.9, 35.9, '../images/goods/zk.png', 'detail.php?code=57', 57, '洗面奶'),
(58, '../images/goods/makeup.jpg', '唤醒美好一天', 29.9, 35.9, '../images/goods/zk.png', 'detail.php?code=58', 58, '洗面奶'),
(59, '../images/goods/makeup.jpg', '唤醒美好一天', 29.9, 35.9, '../images/goods/zk.png', 'detail.php?code=59', 59, '洗面奶'),
(60, '../images/goods/makeup.jpg', '唤醒美好一天', 29.9, 35.9, '../images/goods/zk.png', 'detail.php?code=60', 60, '洗面奶'),
(61, '../images/goods/electron2.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12寸', 3299.9, 3699.9, '../images/goods/zk.png', 'detail.php?code=61', 61, '电脑'),
(62, '../images/goods/electron1.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12寸', 3599.9, 3799.9, '../images/goods/zk.png', 'detail.php?code=62', 62, '电脑'),
(63, '../images/goods/electron2.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12寸', 3699.9, 3699.9, '', 'detail.php?code=63', 63, '电脑'),
(64, '../images/goods/electron2.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12寸', 3699.9, 3699.9, '', 'detail.php?code=64', 64, '电脑'),
(65, '../images/goods/electron2.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12寸', 3699.9, 3699.9, '', 'detail.php?code=65', 65, '电脑'),
(66, '../images/goods/electron2.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12寸', 3699.9, 3699.9, '', 'detail.php?code=66', 66, '电脑'),
(67, '../images/goods/electron2.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12寸', 3699.9, 3699.9, '', 'detail.php?code=67', 67, '电脑'),
(68, '../images/goods/electron2.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12寸', 3699.9, 3699.9, '', 'detail.php?code=68', 68, '电脑'),
(69, '../images/goods/electron2.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12寸', 3699.9, 3699.9, '', 'detail.php?code=69', 69, '电脑'),
(70, '../images/goods/electron2.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12寸', 3699.9, 3699.9, '', 'detail.php?code=70', 70, '电脑'),
(71, '../images/goods/electron2.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12寸', 3699.9, 3699.9, '', 'detail.php?code=71', 71, '电脑'),
(72, '../images/goods/electron2.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12寸', 3699.9, 3699.9, '', 'detail.php?code=72', 72, '电脑'),
(73, '../images/goods/electron2.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12寸', 3699.9, 3699.9, '', 'detail.php?code=73', 73, '电脑'),
(74, '../images/goods/electron2.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12寸', 3699.9, 3699.9, '', 'detail.php?code=74', 74, '电脑'),
(75, '../images/goods/electron2.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12寸', 3699.9, 3699.9, '', 'detail.php?code=75', 75, '电脑'),
(76, '../images/goods/electron2.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12寸', 3699.9, 3699.9, '', 'detail.php?code=76', 76, '电脑'),
(77, '../images/goods/electron2.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12寸', 3699.9, 3699.9, '', 'detail.php?code=77', 77, '电脑'),
(78, '../images/goods/electron2.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12寸', 3699.9, 3699.9, '', 'detail.php?code=78', 78, '电脑'),
(79, '../images/goods/electron2.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12寸', 3699.9, 3699.9, '', 'detail.php?code=79', 79, '电脑'),
(80, '../images/goods/electron2.jpg', 'Lenovo联想 i7超薄本 原装正品 银色 12寸', 3699.9, 3699.9, '', 'detail.php?code=80', 80, '电脑'),
(81, '../images/goods/JULY.jpg', 'JULY新款复古现代新颖包', 8699, 8699, '', 'detail.php?code={$i}', 81, '包包'),
(82, '../images/goods/JULY.jpg', 'JULY新款复古现代新颖包', 8699, 8699, '', 'detail.php?code={$i}', 82, '包包');

-- --------------------------------------------------------

--
-- 表的结构 `group_purchase`
--

DROP TABLE IF EXISTS `group_purchase`;
CREATE TABLE IF NOT EXISTS `group_purchase` (
  `code` int NOT NULL,
  `src` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `discribe` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nowprice` double NOT NULL,
  `oldprice` double DEFAULT NULL,
  `precent` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `a` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `number` int NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`number`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `group_purchase`
--

INSERT INTO `group_purchase` (`code`, `src`, `discribe`, `nowprice`, `oldprice`, `precent`, `a`, `number`, `shop_name`) VALUES
(1, '../images/goods/tuangou.jpg', '十锦荟萃，有机蔬菜新鲜上市', 50, 50, '', 'detail.php?code=1&dis=4', 1, '有机蔬菜礼包'),
(2, '../images/goods/tuangou.jpg', '十锦荟萃，有机蔬菜新鲜上市', 50, 50, '', 'detail.php?code=2&dis=4', 2, '有机蔬菜礼包'),
(3, '../images/goods/tuangou.jpg', '十锦荟萃，有机蔬菜新鲜上市', 50, 50, '', 'detail.php?code=3&dis=4', 3, '有机蔬菜礼包'),
(4, '../images/goods/tuangou.jpg', '十锦荟萃，有机蔬菜新鲜上市', 50, 50, '', 'detail.php?code=4&dis=4', 4, '有机蔬菜礼包'),
(5, '../images/goods/tuangou.jpg', '十锦荟萃，有机蔬菜新鲜上市', 50, 50, '', 'detail.php?code=5&dis=4', 5, '有机蔬菜礼包'),
(6, '../images/goods/tuangou.jpg', '十锦荟萃，有机蔬菜新鲜上市', 50, 50, '', 'detail.php?code=6&dis=4', 6, '有机蔬菜礼包'),
(7, '../images/goods/tuangou.jpg', '十锦荟萃，有机蔬菜新鲜上市', 50, 50, '', 'detail.php?code=7&dis=4', 7, '有机蔬菜礼包'),
(8, '../images/goods/tuangou.jpg', '十锦荟萃，有机蔬菜新鲜上市', 50, 50, '', 'detail.php?code=8&dis=4', 8, '有机蔬菜礼包'),
(9, '../images/goods/tuangou.jpg', '十锦荟萃，有机蔬菜新鲜上市', 50, 50, '', 'detail.php?code=9&dis=4', 9, '有机蔬菜礼包'),
(10, '../images/goods/tuangou.jpg', '十锦荟萃，有机蔬菜新鲜上市', 50, 50, '', 'detail.php?code=10&dis=4', 10, '有机蔬菜礼包'),
(11, '../images/goods/tuangou.jpg', '十锦荟萃，有机蔬菜新鲜上市', 50, 50, '', 'detail.php?code=11&dis=4', 11, '有机蔬菜礼包'),
(12, '../images/goods/tuangou.jpg', '十锦荟萃，有机蔬菜新鲜上市', 50, 50, '', 'detail.php?code=12&dis=4', 12, '有机蔬菜礼包'),
(13, '../images/goods/tuangou.jpg', '十锦荟萃，有机蔬菜新鲜上市', 50, 50, '', 'detail.php?code=13&dis=4', 13, '有机蔬菜礼包'),
(14, '../images/goods/tuangou.jpg', '十锦荟萃，有机蔬菜新鲜上市', 50, 50, '', 'detail.php?code=14&dis=4', 14, '有机蔬菜礼包'),
(15, '../images/goods/tuangou.jpg', '十锦荟萃，有机蔬菜新鲜上市', 50, 50, '', 'detail.php?code=15&dis=4', 15, '有机蔬菜礼包'),
(16, '../images/goods/tuangou.jpg', '十锦荟萃，有机蔬菜新鲜上市', 50, 50, '', 'detail.php?code=16&dis=4', 16, '有机蔬菜礼包'),
(17, '../images/goods/tuangou.jpg', '十锦荟萃，有机蔬菜新鲜上市', 50, 50, '', 'detail.php?code=17&dis=4', 17, '有机蔬菜礼包'),
(18, '../images/goods/tuangou.jpg', '十锦荟萃，有机蔬菜新鲜上市', 50, 50, '', 'detail.php?code=18&dis=4', 18, '有机蔬菜礼包'),
(19, '../images/goods/tuangou.jpg', '十锦荟萃，有机蔬菜新鲜上市', 50, 50, '', 'detail.php?code=19&dis=4', 19, '有机蔬菜礼包'),
(20, '../images/goods/tuangou.jpg', '十锦荟萃，有机蔬菜新鲜上市', 50, 50, '', 'detail.php?code=20&dis=4', 20, '有机蔬菜礼包');

-- --------------------------------------------------------

--
-- 表的结构 `household_products`
--

DROP TABLE IF EXISTS `household_products`;
CREATE TABLE IF NOT EXISTS `household_products` (
  `code` int NOT NULL,
  `src` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `discribe` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nowprice` double NOT NULL,
  `oldprice` double DEFAULT NULL,
  `precent` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `a` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `number` int NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`number`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `household_products`
--

INSERT INTO `household_products` (`code`, `src`, `discribe`, `nowprice`, `oldprice`, `precent`, `a`, `number`, `shop_name`) VALUES
(1, '../images/goods/jiaju.jpg', '禅意高远，淡泊明志，你的不二茶几', 224, 224, '', 'detail.php?code=1&dis=8', 1, '茶几'),
(2, '../images/goods/jiaju.jpg', '禅意高远，淡泊明志，你的不二茶几', 224, 224, '', 'detail.php?code=2&dis=8', 2, '茶几'),
(3, '../images/goods/jiaju.jpg', '禅意高远，淡泊明志，你的不二茶几', 224, 224, '', 'detail.php?code=3&dis=8', 3, '茶几'),
(4, '../images/goods/jiaju.jpg', '禅意高远，淡泊明志，你的不二茶几', 224, 224, '', 'detail.php?code=4&dis=8', 4, '茶几'),
(5, '../images/goods/jiaju.jpg', '禅意高远，淡泊明志，你的不二茶几', 224, 224, '', 'detail.php?code=5&dis=8', 5, '茶几'),
(6, '../images/goods/jiaju.jpg', '禅意高远，淡泊明志，你的不二茶几', 224, 224, '', 'detail.php?code=6&dis=8', 6, '茶几'),
(7, '../images/goods/jiaju.jpg', '禅意高远，淡泊明志，你的不二茶几', 224, 224, '', 'detail.php?code=7&dis=8', 7, '茶几'),
(8, '../images/goods/jiaju.jpg', '禅意高远，淡泊明志，你的不二茶几', 224, 224, '', 'detail.php?code=8&dis=8', 8, '茶几'),
(9, '../images/goods/jiaju.jpg', '禅意高远，淡泊明志，你的不二茶几', 224, 224, '', 'detail.php?code=9&dis=8', 9, '茶几'),
(10, '../images/goods/jiaju.jpg', '禅意高远，淡泊明志，你的不二茶几', 224, 224, '', 'detail.php?code=10&dis=8', 10, '茶几'),
(11, '../images/goods/jiaju.jpg', '禅意高远，淡泊明志，你的不二茶几', 224, 224, '', 'detail.php?code=11&dis=8', 11, '茶几'),
(12, '../images/goods/jiaju.jpg', '禅意高远，淡泊明志，你的不二茶几', 224, 224, '', 'detail.php?code=12&dis=8', 12, '茶几'),
(13, '../images/goods/jiaju.jpg', '禅意高远，淡泊明志，你的不二茶几', 224, 224, '', 'detail.php?code=13&dis=8', 13, '茶几'),
(14, '../images/goods/jiaju.jpg', '禅意高远，淡泊明志，你的不二茶几', 224, 224, '', 'detail.php?code=14&dis=8', 14, '茶几'),
(15, '../images/goods/jiaju.jpg', '禅意高远，淡泊明志，你的不二茶几', 224, 224, '', 'detail.php?code=15&dis=8', 15, '茶几'),
(16, '../images/goods/jiaju.jpg', '禅意高远，淡泊明志，你的不二茶几', 224, 224, '', 'detail.php?code=16&dis=8', 16, '茶几'),
(17, '../images/goods/jiaju.jpg', '禅意高远，淡泊明志，你的不二茶几', 224, 224, '', 'detail.php?code=17&dis=8', 17, '茶几'),
(18, '../images/goods/jiaju.jpg', '禅意高远，淡泊明志，你的不二茶几', 224, 224, '', 'detail.php?code=18&dis=8', 18, '茶几'),
(19, '../images/goods/jiaju.jpg', '禅意高远，淡泊明志，你的不二茶几', 224, 224, '', 'detail.php?code=19&dis=8', 19, '茶几'),
(20, '../images/goods/jiaju.jpg', '禅意高远，淡泊明志，你的不二茶几', 224, 224, '', 'detail.php?code=20&dis=8', 20, '茶几');

-- --------------------------------------------------------

--
-- 表的结构 `index_php`
--

DROP TABLE IF EXISTS `index_php`;
CREATE TABLE IF NOT EXISTS `index_php` (
  `news1` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '实时快报',
  `news2` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '实时快报',
  `news3` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '实时快报',
  `news4` text COLLATE utf8mb4_unicode_ci COMMENT '实时快报',
  `news5` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '实时快报',
  `convenient1` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '实时快报下便捷区',
  `convenient2` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '实时快报下便捷区',
  `convenient3` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '实时快报下便捷区',
  `convenient4` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '实时快报下便捷区',
  `menu1` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'menu',
  `menu2` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'menu',
  `menu3` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'menu',
  `menu4` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'menu',
  `swipper` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'swipper',
  `swipper2` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'swipper2',
  `swipper3` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'swipper3',
  `swipper4` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'swipper4',
  `code` int NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `index_php`
--

INSERT INTO `index_php` (`news1`, `news2`, `news3`, `news4`, `news5`, `convenient1`, `convenient2`, `convenient3`, `convenient4`, `menu1`, `menu2`, `menu3`, `menu4`, `swipper`, `swipper2`, `swipper3`, `swipper4`, `code`) VALUES
('开学备战,冲呀', '新国标节能', '时令生鲜', '品质保证,大牌担保', '上亿补贴', '../images/index/鸡鸭.png', '../images/index/鸡鸭.png', '../images/index/鸡鸭.png', '../images/index/鸡鸭.png', '../images/index/menu-.png', '../images/index/watch.jpg', '../images/index/dove.png', '../images/index/mm.jpg', '../images/index/swipper.jpg', '../images/index/swipper2.jpg', '../images/index/swipper3.jpg', '../images/index/swipper4.jpg', 0);

-- --------------------------------------------------------

--
-- 表的结构 `makeup`
--

DROP TABLE IF EXISTS `makeup`;
CREATE TABLE IF NOT EXISTS `makeup` (
  `code` int NOT NULL,
  `src` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `discribe` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nowprice` double NOT NULL,
  `oldprice` double DEFAULT NULL,
  `precent` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `a` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `number` int NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`number`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `makeup`
--

INSERT INTO `makeup` (`code`, `src`, `discribe`, `nowprice`, `oldprice`, `precent`, `a`, `number`, `shop_name`) VALUES
(1, '../images/goods/makeup.jpg', '唤醒美好一天', 29, 35, '../images/goods/zk.png', 'detail.php?code=1&dis=3', 1, '洗面奶'),
(2, '../images/goods/makeup.jpg', '唤醒美好一天', 29, 35, '../images/goods/zk.png', 'detail.php?code=2&dis=3', 2, '洗面奶'),
(3, '../images/goods/makeup.jpg', '唤醒美好一天', 29, 35, '../images/goods/zk.png', 'detail.php?code=3&dis=3', 3, '洗面奶'),
(4, '../images/goods/makeup.jpg', '唤醒美好一天', 29, 35, '../images/goods/zk.png', 'detail.php?code=4&dis=3', 4, '洗面奶'),
(5, '../images/goods/makeup.jpg', '唤醒美好一天', 29, 35, '../images/goods/zk.png', 'detail.php?code=5&dis=3', 5, '洗面奶'),
(6, '../images/goods/makeup.jpg', '唤醒美好一天', 29, 35, '../images/goods/zk.png', 'detail.php?code=6&dis=3', 6, '洗面奶'),
(7, '../images/goods/makeup.jpg', '唤醒美好一天', 29, 35, '../images/goods/zk.png', 'detail.php?code=7&dis=3', 7, '洗面奶'),
(8, '../images/goods/makeup.jpg', '唤醒美好一天', 29, 35, '../images/goods/zk.png', 'detail.php?code=8&dis=3', 8, '洗面奶'),
(9, '../images/goods/makeup.jpg', '唤醒美好一天', 29, 35, '../images/goods/zk.png', 'detail.php?code=9&dis=3', 9, '洗面奶'),
(10, '../images/goods/makeup.jpg', '唤醒美好一天', 29, 35, '../images/goods/zk.png', 'detail.php?code=10&dis=3', 10, '洗面奶'),
(11, '../images/goods/makeup.jpg', '唤醒美好一天', 29, 35, '../images/goods/zk.png', 'detail.php?code=11&dis=3', 11, '洗面奶'),
(12, '../images/goods/makeup.jpg', '唤醒美好一天', 29, 35, '../images/goods/zk.png', 'detail.php?code=12&dis=3', 12, '洗面奶'),
(13, '../images/goods/makeup.jpg', '唤醒美好一天', 29, 35, '../images/goods/zk.png', 'detail.php?code=13&dis=3', 13, '洗面奶'),
(14, '../images/goods/makeup.jpg', '唤醒美好一天', 29, 35, '../images/goods/zk.png', 'detail.php?code=14&dis=3', 14, '洗面奶'),
(15, '../images/goods/makeup.jpg', '唤醒美好一天', 29, 35, '../images/goods/zk.png', 'detail.php?code=15&dis=3', 15, '洗面奶'),
(16, '../images/goods/makeup.jpg', '唤醒美好一天', 29, 35, '../images/goods/zk.png', 'detail.php?code=16&dis=3', 16, '洗面奶'),
(17, '../images/goods/makeup.jpg', '唤醒美好一天', 29, 35, '../images/goods/zk.png', 'detail.php?code=17&dis=3', 17, '洗面奶'),
(18, '../images/goods/makeup.jpg', '唤醒美好一天', 29, 35, '../images/goods/zk.png', 'detail.php?code=18&dis=3', 18, '洗面奶'),
(19, '../images/goods/makeup.jpg', '唤醒美好一天', 29, 35, '../images/goods/zk.png', 'detail.php?code=19&dis=3', 19, '洗面奶'),
(20, '../images/goods/makeup.jpg', '唤醒美好一天', 29, 35, '../images/goods/zk.png', 'detail.php?code=20&dis=3', 20, '洗面奶'),
(21, '../images/upimages/7b704cffa6a72e07aa04a69111089241.jpg', '日化用品', 200, 260, '../images/goods/zk.png ', 'detail.php?code=21&dis=3', 21, '日化用品');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `account` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`account`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`account`, `password`) VALUES
('admin', '123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
