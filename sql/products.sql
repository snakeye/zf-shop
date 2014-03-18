-- phpMyAdmin SQL Dump
-- version 3.3.10.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 18, 2014 at 06:39 AM
-- Server version: 5.5.35
-- PHP Version: 5.5.3-1ubuntu2.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `zf-shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sku` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sku` (`sku`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sku`, `name`, `price`, `description`) VALUES
(1, 'SKU-53883', 'Product 1', 9.95, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sit amet neque ac neque ullamcorper gravida nec quis lacus. Mauris eu augue a neque venenatis ultricies. Etiam malesuada, elit in ornare fermentum, tortor neque sodales velit, in mollis dolor justo in diam. Praesent vestibulum egestas pellentesque. Proin id iaculis leo. Nulla auctor lacus semper semper sodales. Aenean sed ipsum non nunc tincidunt suscipit. Quisque arcu metus, interdum quis molestie at, laoreet et enim. Vestibulum dolor mauris, consequat vitae pellentesque vel, sollicitudin eu erat. Quisque eget malesuada arcu.'),
(2, 'SKU-76496', 'Product 2', 49.95, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sit amet neque ac neque ullamcorper gravida nec quis lacus. Mauris eu augue a neque venenatis ultricies. Etiam malesuada, elit in ornare fermentum, tortor neque sodales velit, in mollis dolor justo in diam. Praesent vestibulum egestas pellentesque. Proin id iaculis leo. Nulla auctor lacus semper semper sodales. Aenean sed ipsum non nunc tincidunt suscipit. Quisque arcu metus, interdum quis molestie at, laoreet et enim. Vestibulum dolor mauris, consequat vitae pellentesque vel, sollicitudin eu erat. Quisque eget malesuada arcu.'),
(3, 'SKU-20829', 'Product 3', 19.95, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sit amet neque ac neque ullamcorper gravida nec quis lacus. Mauris eu augue a neque venenatis ultricies. Etiam malesuada, elit in ornare fermentum, tortor neque sodales velit, in mollis dolor justo in diam. Praesent vestibulum egestas pellentesque. Proin id iaculis leo. Nulla auctor lacus semper semper sodales. Aenean sed ipsum non nunc tincidunt suscipit. Quisque arcu metus, interdum quis molestie at, laoreet et enim. Vestibulum dolor mauris, consequat vitae pellentesque vel, sollicitudin eu erat. Quisque eget malesuada arcu.'),
(4, 'SKU-74659', 'Product 4', 99.95, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sit amet neque ac neque ullamcorper gravida nec quis lacus. Mauris eu augue a neque venenatis ultricies. Etiam malesuada, elit in ornare fermentum, tortor neque sodales velit, in mollis dolor justo in diam. Praesent vestibulum egestas pellentesque. Proin id iaculis leo. Nulla auctor lacus semper semper sodales. Aenean sed ipsum non nunc tincidunt suscipit. Quisque arcu metus, interdum quis molestie at, laoreet et enim. Vestibulum dolor mauris, consequat vitae pellentesque vel, sollicitudin eu erat. Quisque eget malesuada arcu.'),
(5, 'SKU-10807', 'Product 5', 9.95, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sit amet neque ac neque ullamcorper gravida nec quis lacus. Mauris eu augue a neque venenatis ultricies. Etiam malesuada, elit in ornare fermentum, tortor neque sodales velit, in mollis dolor justo in diam. Praesent vestibulum egestas pellentesque. Proin id iaculis leo. Nulla auctor lacus semper semper sodales. Aenean sed ipsum non nunc tincidunt suscipit. Quisque arcu metus, interdum quis molestie at, laoreet et enim. Vestibulum dolor mauris, consequat vitae pellentesque vel, sollicitudin eu erat. Quisque eget malesuada arcu.'),
(6, 'SKU-30060', 'Product 6', 12.95, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sit amet neque ac neque ullamcorper gravida nec quis lacus. Mauris eu augue a neque venenatis ultricies. Etiam malesuada, elit in ornare fermentum, tortor neque sodales velit, in mollis dolor justo in diam. Praesent vestibulum egestas pellentesque. Proin id iaculis leo. Nulla auctor lacus semper semper sodales. Aenean sed ipsum non nunc tincidunt suscipit. Quisque arcu metus, interdum quis molestie at, laoreet et enim. Vestibulum dolor mauris, consequat vitae pellentesque vel, sollicitudin eu erat. Quisque eget malesuada arcu.'),
(7, 'SKU-17881', 'Product 7', 14.95, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sit amet neque ac neque ullamcorper gravida nec quis lacus. Mauris eu augue a neque venenatis ultricies. Etiam malesuada, elit in ornare fermentum, tortor neque sodales velit, in mollis dolor justo in diam. Praesent vestibulum egestas pellentesque. Proin id iaculis leo. Nulla auctor lacus semper semper sodales. Aenean sed ipsum non nunc tincidunt suscipit. Quisque arcu metus, interdum quis molestie at, laoreet et enim. Vestibulum dolor mauris, consequat vitae pellentesque vel, sollicitudin eu erat. Quisque eget malesuada arcu.'),
(8, 'SKU-99225', 'Product 8', 49.95, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sit amet neque ac neque ullamcorper gravida nec quis lacus. Mauris eu augue a neque venenatis ultricies. Etiam malesuada, elit in ornare fermentum, tortor neque sodales velit, in mollis dolor justo in diam. Praesent vestibulum egestas pellentesque. Proin id iaculis leo. Nulla auctor lacus semper semper sodales. Aenean sed ipsum non nunc tincidunt suscipit. Quisque arcu metus, interdum quis molestie at, laoreet et enim. Vestibulum dolor mauris, consequat vitae pellentesque vel, sollicitudin eu erat. Quisque eget malesuada arcu.'),
(9, 'SKU-42481', 'Product 9', 4.95, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sit amet neque ac neque ullamcorper gravida nec quis lacus. Mauris eu augue a neque venenatis ultricies. Etiam malesuada, elit in ornare fermentum, tortor neque sodales velit, in mollis dolor justo in diam. Praesent vestibulum egestas pellentesque. Proin id iaculis leo. Nulla auctor lacus semper semper sodales. Aenean sed ipsum non nunc tincidunt suscipit. Quisque arcu metus, interdum quis molestie at, laoreet et enim. Vestibulum dolor mauris, consequat vitae pellentesque vel, sollicitudin eu erat. Quisque eget malesuada arcu.'),
(10, 'SKU-14731', 'Product 10', 12.95, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sit amet neque ac neque ullamcorper gravida nec quis lacus. Mauris eu augue a neque venenatis ultricies. Etiam malesuada, elit in ornare fermentum, tortor neque sodales velit, in mollis dolor justo in diam. Praesent vestibulum egestas pellentesque. Proin id iaculis leo. Nulla auctor lacus semper semper sodales. Aenean sed ipsum non nunc tincidunt suscipit. Quisque arcu metus, interdum quis molestie at, laoreet et enim. Vestibulum dolor mauris, consequat vitae pellentesque vel, sollicitudin eu erat. Quisque eget malesuada arcu.');
