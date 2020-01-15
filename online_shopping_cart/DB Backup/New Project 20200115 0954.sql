-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.6.25-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema `shopping-cart`
--

CREATE DATABASE IF NOT EXISTS `shopping-cart`;
USE `shopping-cart`;

--
-- Definition of table `item`
--

DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_name` varchar(450) DEFAULT NULL,
  `item_brand` int(10) unsigned DEFAULT NULL,
  `item_model` varchar(450) DEFAULT NULL,
  `item_serial_no` varchar(450) DEFAULT NULL,
  `item_ram` varchar(200) DEFAULT NULL,
  `item_hard_disk_size` varchar(200) DEFAULT NULL,
  `item_ssd_size` varchar(200) DEFAULT NULL,
  `item_vga_type_model` varchar(200) DEFAULT NULL,
  `item_screen_size` varchar(200) DEFAULT NULL,
  `item_generation` varchar(200) DEFAULT NULL,
  `item_warrenty_id` int(10) unsigned DEFAULT NULL,
  `item_price` decimal(10,2) DEFAULT NULL,
  `item_status` int(10) unsigned DEFAULT NULL,
  `item_description_1` varchar(200) DEFAULT NULL,
  `item_description_2` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item`
--

/*!40000 ALTER TABLE `item` DISABLE KEYS */;
/*!40000 ALTER TABLE `item` ENABLE KEYS */;


--
-- Definition of table `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order_user_id` int(10) unsigned DEFAULT NULL,
  `order_item_count` int(10) unsigned DEFAULT NULL,
  `order_status` tinyint(1) unsigned DEFAULT NULL,
  `order_delivery_address` varchar(450) DEFAULT NULL,
  `order_total_amount` decimal(10,2) DEFAULT NULL,
  `order_discount_percentage` decimal(10,2) DEFAULT NULL,
  `order_description` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order`
--

/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;


--
-- Definition of table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `order_detail_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_detail_order_id` int(10) unsigned DEFAULT NULL,
  `order_detail_item_id` int(10) unsigned DEFAULT NULL,
  `order_detail_qty` decimal(10,2) DEFAULT NULL,
  `order_detail_status` tinyint(1) unsigned DEFAULT NULL,
  `order_detail_retail_price` decimal(10,2) DEFAULT NULL,
  `order_detail_selling_price` decimal(10,2) DEFAULT NULL,
  `order_detail_description` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`order_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_detail`
--

/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;


--
-- Definition of table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `payment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `payment_user_id` int(10) unsigned DEFAULT NULL,
  `payment_amount` decimal(10,2) DEFAULT '0.00',
  `payment_type` tinyint(1) unsigned DEFAULT NULL,
  `payment_card_no` varchar(100) DEFAULT NULL,
  `payment_bank` varchar(100) DEFAULT NULL,
  `payment_status` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment`
--

/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;


--
-- Definition of table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(450) DEFAULT NULL,
  `user_email` varchar(450) DEFAULT NULL,
  `user_password` varchar(450) DEFAULT NULL,
  `user_status` tinyint(1) unsigned DEFAULT NULL,
  `user_other` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


--
-- Definition of table `warrenty`
--

DROP TABLE IF EXISTS `warrenty`;
CREATE TABLE `warrenty` (
  `warrenty_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `warrenty_item_serial_no` varchar(450) DEFAULT NULL,
  `warrenty_start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `warrenty_end_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `warrenty_status` tinyint(1) unsigned DEFAULT NULL,
  `warrenty_description` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`warrenty_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `warrenty`
--

/*!40000 ALTER TABLE `warrenty` DISABLE KEYS */;
/*!40000 ALTER TABLE `warrenty` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
