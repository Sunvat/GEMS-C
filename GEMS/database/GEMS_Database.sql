-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.6.11-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for gems
CREATE DATABASE IF NOT EXISTS `gems` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;
USE `gems`;

-- Dumping structure for table gems.useraccounts
CREATE TABLE IF NOT EXISTS `testAccommodations` (
  `accID` int AUTO_INCREMENT,
  `aname` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `rname` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `maxCap` int NOT NULL,
  `curOc` int DEFAULT 0,
  `desc` varchar(200),
  `image` varchar(50),
  PRIMARY KEY (accID)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `useraccounts` (
  `email` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `pword` varchar(50) NOT NULL,
  `ems` varchar(50) NOT NULL,
  `id` int NOT NULL,
  `reg` varchar(50) NOT NULL,
  'rID' int NOT NULL,
  `provState` varchar(50) NOT NULL,
  FOREIGN KEY (rID) REFERENCES regions(rID)

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `accommodations` (
  `accID` int AUTO_INCREMENT,
  'rID' int NOT NULL,
  `aname` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `rname` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `maxCap` int NOT NULL,
  `curOc` int DEFAULT 0,
  `desc` varchar(200),
  `image` varchar(50),
  'WCA' boolean DEFAULT False,
  'Pets' boolean DEFAULT False,
  'Med' boolean DEFAULT False,
  'Bed' boolean DEFAULT False,
  'isFull' boolean DEFAULT False,
  'HighGround' boolean DEFAULT False,
  PRIMARY KEY (accID),
  FOREIGN KEY (rID) REFERENCES regions(rID)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `regions` (
  'rID' int AUTO_INCREMENT,
  `rname` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  'provState' varchar(50) Not Null,
  `image` varchar(50)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `bookings` (
  `accID` int AUTO_INCREMENT,
  `aname` varchar(50) NOT NULL,
  `bookingID`int AUTO_INCREMENT,
  'name' varchar(50) NOT NULL,
  'phoneNumber' varchar(17) NOT NULL,
  'groupName' varchar(50) NOT Null,
  'NumPeople' int NOT NULL,
  'WCA' boolean DEFAULT False,
  'Pets' boolean DEFAULT False,
  'Med' boolean DEFAULT False,
  'Bed' boolean DEFAULT False,
  PRIMARY KEY (bookingID),
  FOREIGN KEY (accID) REFERENCES accommodations(accID)

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `wishlist` (
  `bookingID`int AUTO_INCREMENT,
  'name' varchar(50) NOT NULL,
  'phoneNumber' varchar(17) NOT NULL,
  'groupName' varchar(50) NOT Null,
  'NumPeople' int NOT NULL,
  'WCA' boolean DEFAULT False,
  'Pets' boolean DEFAULT False,
  'Med' boolean DEFAULT False,
  'Bed' boolean DEFAULT False,
  'DateTime' DateTIME,

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `LEI` (
  'rID'
  'location' varchar(50) NOT NULL,
  'LEI' varchar(300) NOT Null,
  'datetime' DATETIME,
  FOREIGN KEY (rID) REFERENCES regions(rID)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
