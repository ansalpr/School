CREATE DATABASE `generallog` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
CREATE TABLE `errorlog` (
  `Id` int unsigned NOT NULL AUTO_INCREMENT,
  `Remarks` longtext NOT NULL,
  `MethodName` varchar(50) NOT NULL,
  `ClassName` varchar(45) NOT NULL,
  `TUI` varchar(50) DEFAULT NULL,
  `IP` varchar(15) DEFAULT NULL,
  `CreatedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `requestlog` (
  `Id` int unsigned NOT NULL AUTO_INCREMENT,
  `Request` longtext NOT NULL,
  `Response` longtext NOT NULL,
  `WorkFlow` varchar(50) NOT NULL,
  `MethodName` varchar(50) NOT NULL,
  `ClassName` varchar(45) NOT NULL,
  `TUI` varchar(50) DEFAULT NULL,
  `IP` varchar(15) DEFAULT NULL,
  `CreatedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=748 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `eventlog` (
  `Id` int unsigned NOT NULL AUTO_INCREMENT,
  `Remarks` longtext NOT NULL,
  `MethodName` varchar(50) NOT NULL,
  `ClassName` varchar(45) NOT NULL,
  `TUI` varchar(50) DEFAULT NULL,
  `IP` varchar(15) DEFAULT NULL,
  `CreatedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

