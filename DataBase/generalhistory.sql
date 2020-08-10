CREATE DATABASE `generalhistory` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
CREATE TABLE `department` (
  `DepartmentId` int NOT NULL,
  `DepartmentCode` varchar(10) NOT NULL,
  `DepartmentName` varchar(45) NOT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedUser` int DEFAULT '0',
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUser` int DEFAULT '0',
  `RecordStatus` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `curriculum` (
  `CurriculumId` int NOT NULL,
  `CurriculumCode` varchar(10) NOT NULL,
  `CurriculumName` varchar(45) NOT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedUser` int DEFAULT '0',
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUser` int DEFAULT '0',
  `RecordStatus` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `currency` (
  `CurrencyId` int NOT NULL,
  `CurrencyCode` varchar(4) NOT NULL,
  `CurrencyName` varchar(50) NOT NULL,
  `BaseCurrency` varchar(4) NOT NULL,
  `Precisions` varchar(4) NOT NULL,
  `Stats` varchar(10) NOT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedUser` int DEFAULT '0',
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUser` int DEFAULT '0',
  `RecordStatus` int DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `country` (
  `CountryId` int NOT NULL ,
  `CountryCode` varchar(10) NOT NULL,
  `CountryName` varchar(50) NOT NULL,
  `Nationality` varchar(50) NOT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedUser` int DEFAULT '0',
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUser` int DEFAULT '0',
  `RecordStatus` int DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `users` (
  `UserId` int unsigned NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `UserLoginId` varchar(45) NOT NULL,
  `UserPassword` varchar(45) NOT NULL,
  `UserGrade` varchar(3) NOT NULL,
  `LocationId` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Mobile` varchar(15) DEFAULT NULL,
  `CreatedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedUser` int DEFAULT '0',
  `ModifiedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUser` int DEFAULT '0',
  `RecordStatus` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `currencyrate` (
  `CurrencyRateId` int NOT NULL,
  `CurrencyCode` varchar(5) NOT NULL,
  `ExchangeRate` DECIMAL(6,3) NOT NULL,
  `BaseCurrency` varchar(5) NOT NULL,
  `EffectDate` DATETIME NOT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedUser` int DEFAULT '0',
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUser` int DEFAULT '0',
  `RecordStatus` int DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `state` (
  `StateId` int NOT NULL ,
  `StateCode` varchar(10) NOT NULL,
  `StateName` varchar(45) NOT NULL,
  `CountryCode` varchar(10) NOT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedUser` int DEFAULT '0',
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUser` int DEFAULT '0',
  `RecordStatus` int DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

