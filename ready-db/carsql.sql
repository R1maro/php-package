-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.25-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table cargallery.admin
DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `sl_no` int(255) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table cargallery.admin_login_history
DROP TABLE IF EXISTS `admin_login_history`;
CREATE TABLE IF NOT EXISTS `admin_login_history` (
  `sl_no` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=1066 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table cargallery.all_book_table
DROP TABLE IF EXISTS `all_book_table`;
CREATE TABLE IF NOT EXISTS `all_book_table` (
  `book_sl_no` varchar(255) NOT NULL,
  `book_title` varchar(255) NOT NULL,
  `category_name` varchar(300) DEFAULT NULL,
  `category_num` varchar(10) DEFAULT NULL,
  `author_name` varchar(300) DEFAULT NULL,
  `author_num` varchar(10) DEFAULT NULL,
  `publisher_name` varchar(300) DEFAULT NULL,
  `publisher_num` varchar(10) DEFAULT NULL,
  `edition` varchar(100) DEFAULT NULL,
  `volume` varchar(100) DEFAULT NULL,
  `ean_code` varchar(300) DEFAULT NULL,
  `isbn` varchar(300) DEFAULT NULL,
  `price` varchar(300) DEFAULT NULL,
  `purchase_date` varchar(300) DEFAULT NULL,
  `language` varchar(300) DEFAULT NULL,
  `total_book_in_library` int(255) DEFAULT NULL,
  `total_book_available` int(255) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `added_on` varchar(100) DEFAULT NULL,
  `edited_on` varchar(100) DEFAULT NULL,
  `added_by` varchar(100) DEFAULT NULL,
  `edited_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`book_sl_no`),
  UNIQUE KEY `book_title` (`book_title`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table cargallery.author
DROP TABLE IF EXISTS `author`;
CREATE TABLE IF NOT EXISTS `author` (
  `sl_no` int(255) NOT NULL AUTO_INCREMENT,
  `author_name` varchar(300) NOT NULL,
  `profile` varchar(1000) DEFAULT NULL,
  `added_on` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2057 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table cargallery.book_table
DROP TABLE IF EXISTS `book_table`;
CREATE TABLE IF NOT EXISTS `book_table` (
  `book_sl_no` varchar(255) NOT NULL,
  `book_title` varchar(255) NOT NULL,
  `category_name` varchar(300) DEFAULT NULL,
  `category_num` varchar(10) DEFAULT NULL,
  `author_name` varchar(300) DEFAULT NULL,
  `author_num` varchar(10) DEFAULT NULL,
  `publisher_name` varchar(300) DEFAULT NULL,
  `publisher_num` varchar(10) DEFAULT NULL,
  `edition` varchar(100) DEFAULT NULL,
  `volume` varchar(100) DEFAULT NULL,
  `ean_code` varchar(300) DEFAULT NULL,
  `isbn` varchar(300) DEFAULT NULL,
  `price` varchar(300) DEFAULT NULL,
  `purchase_date` varchar(300) DEFAULT NULL,
  `language` varchar(300) DEFAULT NULL,
  `total_book_in_library` int(255) DEFAULT NULL,
  `total_book_available` int(255) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `added_on` varchar(100) DEFAULT NULL,
  `edited_on` varchar(100) DEFAULT NULL,
  `added_by` varchar(100) DEFAULT NULL,
  `edited_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`book_sl_no`),
  UNIQUE KEY `book_title` (`book_title`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table cargallery.brands
DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `id` bigint(50) unsigned NOT NULL AUTO_INCREMENT,
  `country` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table cargallery.cars
DROP TABLE IF EXISTS `cars`;
CREATE TABLE IF NOT EXISTS `cars` (
  `id` bigint(100) unsigned NOT NULL AUTO_INCREMENT,
  `company` varchar(60) DEFAULT NULL,
  `model` varchar(50) NOT NULL,
  `age` varchar(50) NOT NULL,
  `sex` char(10) NOT NULL,
  `country-id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `model` (`model`),
  KEY `FK_cars_brands` (`country-id`) USING BTREE,
  CONSTRAINT `FK_cars_brands` FOREIGN KEY (`country-id`) REFERENCES `brands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT='not for sale';

-- Data exporting was unselected.

-- Dumping structure for table cargallery.category
DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `sl_no` int(255) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  `profile` varchar(1000) DEFAULT NULL,
  `added_on` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  UNIQUE KEY `category_name` (`category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table cargallery.inventry_table
DROP TABLE IF EXISTS `inventry_table`;
CREATE TABLE IF NOT EXISTS `inventry_table` (
  `sl_no` varchar(255) NOT NULL,
  `book_sl_no` varchar(255) NOT NULL,
  `book_title` varchar(500) NOT NULL,
  `count` int(255) NOT NULL,
  `added_on` varchar(100) NOT NULL,
  `added_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `book_sl_no` (`book_sl_no`),
  CONSTRAINT `inventry_table_ibfk_1` FOREIGN KEY (`book_sl_no`) REFERENCES `book_table` (`book_sl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table cargallery.issue_book
DROP TABLE IF EXISTS `issue_book`;
CREATE TABLE IF NOT EXISTS `issue_book` (
  `issue_sl_no` varchar(50) NOT NULL,
  `student_id` varchar(300) NOT NULL,
  `admission_no` varchar(300) NOT NULL,
  `student_name` varchar(300) NOT NULL,
  `book_title` varchar(500) NOT NULL,
  `book_sl_no` varchar(100) NOT NULL,
  `barcode` varchar(300) NOT NULL,
  `issue_date` varchar(300) NOT NULL,
  `renew_date1` varchar(300) DEFAULT NULL,
  `renew_date2` varchar(300) DEFAULT NULL,
  `renew_date3` varchar(300) DEFAULT NULL,
  `renew_date4` varchar(300) DEFAULT NULL,
  `renew_date5` varchar(300) DEFAULT NULL,
  `return_date` varchar(300) DEFAULT NULL,
  `returned_date` varchar(300) DEFAULT NULL,
  `status` varchar(300) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`issue_sl_no`),
  UNIQUE KEY `issue_sl_no` (`issue_sl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table cargallery.last_inventry
DROP TABLE IF EXISTS `last_inventry`;
CREATE TABLE IF NOT EXISTS `last_inventry` (
  `sl_no` int(255) NOT NULL AUTO_INCREMENT,
  `bar_code` int(255) NOT NULL,
  `book_sl_no` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=4075 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table cargallery.publisher
DROP TABLE IF EXISTS `publisher`;
CREATE TABLE IF NOT EXISTS `publisher` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `publisher_name` varchar(300) NOT NULL,
  `profile` varchar(1000) DEFAULT NULL,
  `added_on` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=706 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table cargallery.repeating_book_table
DROP TABLE IF EXISTS `repeating_book_table`;
CREATE TABLE IF NOT EXISTS `repeating_book_table` (
  `book_sl_no` varchar(255) NOT NULL,
  `book_title` varchar(255) NOT NULL,
  `category_name` varchar(300) DEFAULT NULL,
  `category_num` varchar(10) DEFAULT NULL,
  `author_name` varchar(300) DEFAULT NULL,
  `author_num` varchar(10) DEFAULT NULL,
  `publisher_name` varchar(300) DEFAULT NULL,
  `publisher_num` varchar(10) DEFAULT NULL,
  `edition` varchar(100) DEFAULT NULL,
  `volume` varchar(100) DEFAULT NULL,
  `ean_code` varchar(300) DEFAULT NULL,
  `isbn` varchar(300) DEFAULT NULL,
  `price` varchar(300) DEFAULT NULL,
  `purchase_date` varchar(300) DEFAULT NULL,
  `language` varchar(300) DEFAULT NULL,
  `total_book_in_library` int(255) DEFAULT NULL,
  `total_book_available` int(255) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `added_on` varchar(100) DEFAULT NULL,
  `edited_on` varchar(100) DEFAULT NULL,
  `added_by` varchar(100) DEFAULT NULL,
  `edited_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`book_sl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table cargallery.sequence_book_id
DROP TABLE IF EXISTS `sequence_book_id`;
CREATE TABLE IF NOT EXISTS `sequence_book_id` (
  `sl_no` int(255) NOT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table cargallery.sequence_inventry_id
DROP TABLE IF EXISTS `sequence_inventry_id`;
CREATE TABLE IF NOT EXISTS `sequence_inventry_id` (
  `sl_no` int(255) NOT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table cargallery.sequence_issue_id
DROP TABLE IF EXISTS `sequence_issue_id`;
CREATE TABLE IF NOT EXISTS `sequence_issue_id` (
  `sl_no` int(255) NOT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table cargallery.sequence_student_id
DROP TABLE IF EXISTS `sequence_student_id`;
CREATE TABLE IF NOT EXISTS `sequence_student_id` (
  `sl_no` int(255) NOT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table cargallery.serial_number
DROP TABLE IF EXISTS `serial_number`;
CREATE TABLE IF NOT EXISTS `serial_number` (
  `sl_no` int(255) NOT NULL AUTO_INCREMENT,
  `invertry_sl_no` varchar(255) NOT NULL,
  `book_title` varchar(500) DEFAULT NULL,
  `book_sl_no` varchar(255) NOT NULL,
  `bar_code` varchar(255) NOT NULL,
  `book_status` varchar(300) NOT NULL,
  `added_on` varchar(100) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `shelf` varchar(300) DEFAULT NULL,
  `rack` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  UNIQUE KEY `bar_code` (`bar_code`)
) ENGINE=InnoDB AUTO_INCREMENT=38884 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table cargallery.student_table
DROP TABLE IF EXISTS `student_table`;
CREATE TABLE IF NOT EXISTS `student_table` (
  `student_id` varchar(255) NOT NULL DEFAULT '',
  `admission_no` varchar(255) DEFAULT NULL,
  `student_name` varchar(300) NOT NULL,
  `profile` varchar(1000) DEFAULT NULL,
  `grade` varchar(300) DEFAULT NULL,
  `section` varchar(300) DEFAULT NULL,
  `added_by` varchar(300) DEFAULT NULL,
  `added_on` varchar(300) DEFAULT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `student_id` (`student_id`),
  UNIQUE KEY `admission_no` (`admission_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table cargallery.temp
DROP TABLE IF EXISTS `temp`;
CREATE TABLE IF NOT EXISTS `temp` (
  `sl_no` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
