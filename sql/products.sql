--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id`    INT(11)                 NOT NULL AUTO_INCREMENT,
  `name`  VARCHAR(255)
          COLLATE utf8_unicode_ci NOT NULL,
  `price` DECIMAL(10, 2)          NOT NULL,
  PRIMARY KEY (`id`)
)
  ENGINE =InnoDB
  DEFAULT CHARSET =utf8
  COLLATE =utf8_unicode_ci
  AUTO_INCREMENT =11;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`) VALUES
  (1, 'Product 1', 9.95),
  (2, 'Product 2', 49.95),
  (3, 'Product 3', 19.95),
  (4, 'Product 4', 99.95),
  (5, 'Product 5', 9.95),
  (6, 'Product 6', 12.95),
  (7, 'Product 7', 14.95),
  (8, 'Product 8', 49.95),
  (9, 'Product 9', 4.95),
  (10, 'Product 10', 12.95);
