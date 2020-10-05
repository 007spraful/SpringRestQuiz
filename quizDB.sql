-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               8.0.21 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for quiz
CREATE DATABASE IF NOT EXISTS `quiz` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `quiz`;

-- Dumping structure for table quiz.answers_pool
CREATE TABLE IF NOT EXISTS `answers_pool` (
  `ID` int NOT NULL,
  `QUIZ_ID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ANSWER` varchar(50) NOT NULL,
  `IS_ANSWER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table quiz.answers_pool: ~15 rows (approximately)
/*!40000 ALTER TABLE `answers_pool` DISABLE KEYS */;
INSERT INTO `answers_pool` (`ID`, `QUIZ_ID`, `ANSWER`, `IS_ANSWER`) VALUES
	(1, '1', 'Type checking', 'Y'),
	(2, '1', 'Multitasking', 'N'),
	(3, '1', 'Polymorphism', 'N'),
	(4, '1', 'Information hiding', 'N'),
	(5, '2', 'Dynamic binding', 'Y'),
	(6, '2', 'Dynamoc allocation', 'N'),
	(7, '2', 'Static typing', 'N'),
	(8, '2', 'Static allocation', 'N'),
	(9, '3', 'data hiding ', 'N'),
	(10, '3', 'encapsulation', 'Y'),
	(11, '3', 'inheritance', 'N'),
	(12, '4', 'True', 'N'),
	(13, '4', 'False', 'Y'),
	(14, '5', 'True', 'N'),
	(15, '5', 'False', 'Y');
/*!40000 ALTER TABLE `answers_pool` ENABLE KEYS */;

-- Dumping structure for table quiz.participants
CREATE TABLE IF NOT EXISTS `participants` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` varchar(50) NOT NULL,
  `LAST_NAME` varchar(50) NOT NULL,
  `PASSWORD` varchar(50) NOT NULL,
  `CREATION_DATE` datetime NOT NULL,
  `CREATED_BY` varchar(50) NOT NULL,
  `MODIFICATION_DATE` datetime DEFAULT NULL,
  `MODIFIED_BY` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table quiz.participants: ~0 rows (approximately)
/*!40000 ALTER TABLE `participants` DISABLE KEYS */;
/*!40000 ALTER TABLE `participants` ENABLE KEYS */;

-- Dumping structure for table quiz.questions_pool
CREATE TABLE IF NOT EXISTS `questions_pool` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `QUESTIONS` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table quiz.questions_pool: ~5 rows (approximately)
/*!40000 ALTER TABLE `questions_pool` DISABLE KEYS */;
INSERT INTO `questions_pool` (`ID`, `QUESTIONS`) VALUES
	(1, 'Which of the following  is not  part of OOP?'),
	(2, 'Pick the term related to polymorphism?'),
	(3, 'Information Hinding can also be termed as '),
	(4, 'Main method can be overridden?'),
	(5, 'Static method cannot be accessed directly from the class level.');
/*!40000 ALTER TABLE `questions_pool` ENABLE KEYS */;

-- Dumping structure for table quiz.users
CREATE TABLE IF NOT EXISTS `users` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` varchar(50) NOT NULL,
  `LAST_NAME` varchar(50) NOT NULL,
  `EMAIL_ID` varchar(50) NOT NULL,
  `PASSWORD` varchar(50) NOT NULL,
  `CREATION_DATE` datetime NOT NULL,
  `CREATED_BY` varchar(50) NOT NULL,
  `MODIFICATION_DATE` datetime DEFAULT NULL,
  `MODIFIED_BY` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table quiz.users: ~1 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`ID`, `FIRST_NAME`, `LAST_NAME`, `EMAIL_ID`, `PASSWORD`, `CREATION_DATE`, `CREATED_BY`, `MODIFICATION_DATE`, `MODIFIED_BY`) VALUES
	(1, 'Admin', 'User', 'admin@quiz.com', 'admin123', '2020-10-04 01:19:15', 'admin@gmail.com', NULL, NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table quiz.user_login
CREATE TABLE IF NOT EXISTS `user_login` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `USER_ID` int NOT NULL,
  `USER_TYPE` varchar(2) NOT NULL,
  `LOGIN_DATE` datetime NOT NULL,
  `LOGOUT_DATE` datetime NOT NULL,
  `IS_ACTIVE` varchar(1) NOT NULL,
  `LAST_ACTIVITY` varchar(50) NOT NULL,
  `LAST_ACTIVITY_DATE` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table quiz.user_login: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_login` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
