-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.6.8-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for creditcard_capstone
CREATE DATABASE IF NOT EXISTS `creditcard_capstone` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `creditcard_capstone`;

-- Dumping structure for table creditcard_capstone.cdw_sapp_branch
CREATE TABLE IF NOT EXISTS `cdw_sapp_branch` (
  `BRANCH_CITY` text DEFAULT NULL,
  `BRANCH_CODE` bigint(20) DEFAULT NULL,
  `BRANCH_NAME` text DEFAULT NULL,
  `BRANCH_PHONE` text DEFAULT NULL,
  `BRANCH_STATE` text DEFAULT NULL,
  `BRANCH_STREET` text DEFAULT NULL,
  `BRANCH_ZIP` bigint(20) DEFAULT NULL,
  `LAST_UPDATED` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table creditcard_capstone.cdw_sapp_credit
CREATE TABLE IF NOT EXISTS `cdw_sapp_credit` (
  `BRANCH_CODE` bigint(20) DEFAULT NULL,
  `CREDIT_CARD_NO` text DEFAULT NULL,
  `CUST_SSN` bigint(20) DEFAULT NULL,
  `TRANSACTION_ID` bigint(20) DEFAULT NULL,
  `TRANSACTION_TYPE` text DEFAULT NULL,
  `TRANSACTION_VALUE` double DEFAULT NULL,
  `TIMEID` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table creditcard_capstone.cdw_sapp_customer
CREATE TABLE IF NOT EXISTS `cdw_sapp_customer` (
  `CREDIT_CARD_NO` text DEFAULT NULL,
  `CUST_CITY` text DEFAULT NULL,
  `CUST_COUNTRY` text DEFAULT NULL,
  `CUST_EMAIL` text DEFAULT NULL,
  `CUST_PHONE` bigint(20) DEFAULT NULL,
  `CUST_STATE` text DEFAULT NULL,
  `CUST_ZIP` int(11) DEFAULT NULL,
  `First_Name` text DEFAULT NULL,
  `Last_Name` text DEFAULT NULL,
  `LAST_UPDATED` text DEFAULT NULL,
  `Middle_Name` text DEFAULT NULL,
  `SSN` bigint(20) DEFAULT NULL,
  `FULL_STREET_ADDRESS` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table creditcard_capstone.cdw_sapp_loan_application
CREATE TABLE IF NOT EXISTS `cdw_sapp_loan_application` (
  `Application_ID` text DEFAULT NULL,
  `Gender` text DEFAULT NULL,
  `Married` text DEFAULT NULL,
  `Dependents` text DEFAULT NULL,
  `Education` text DEFAULT NULL,
  `Self_Employed` text DEFAULT NULL,
  `Credit_History` bigint(20) DEFAULT NULL,
  `Property_Area` text DEFAULT NULL,
  `Income` text DEFAULT NULL,
  `Application_Status` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
