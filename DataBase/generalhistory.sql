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
