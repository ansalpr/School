CREATE DATABASE `generaldb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
CREATE TABLE `department` (
  `DepartmentId` int NOT NULL AUTO_INCREMENT,
  `DepartmentCode` varchar(10) NOT NULL,
  `DepartmentName` varchar(45) NOT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedUser` int DEFAULT '0',
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUser` int DEFAULT '0',
  `RecordStatus` int DEFAULT '0',
  PRIMARY KEY (`DepartmentId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `users` (
  `UserId` int unsigned NOT NULL AUTO_INCREMENT,
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
  `RecordStatus` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DELIMITER $$
CREATE  PROCEDURE `sp_AuthCheck`(uName varchar(200),pwd varchar(200))
BEGIN      
	SELECT * FROM users Where UserLoginId = uName and UserPassword = pwd ;
END$$
DELIMITER ;
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_manageDepartment`(depCode varchar(10),depName varchar(50),depId int,operation varchar(1),userID int)
BEGIN
IF ( operation = 'S') THEN
	IF ( depName != '' || depCode != '') THEN
         Select * From department Where (DepartmentName = depName or DepartmentCode = depCode) and RecordStatus = 0;
   Elseif ( depId != 0) Then
          Select * From department Where  DepartmentId = depId  and RecordStatus = 0;
	Else
		Select * From department Where RecordStatus = 0;
     END IF;
Elseif (  operation = 'E') Then
    
    Insert Into generalhistory.department (DepartmentId,DepartmentName,DepartmentCode,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
    Select DepartmentId,DepartmentName,DepartmentCode,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
    From department    
    Where  DepartmentId = depId;
    
    Update department SET DepartmentName = depName,DepartmentCode = depCode,  ModifiedUser = userID, ModifiedDate = NOW()
    Where DepartmentId = depId;
    
Elseif (  operation = 'D') Then

	Insert Into generalhistory.department (DepartmentId,DepartmentName,DepartmentCode,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
    Select DepartmentId,DepartmentName,DepartmentCode,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
    From department    
    Where  DepartmentId = depId;
    
	Update department SET RecordStatus = 1,ModifiedUser=userID Where DepartmentId = depId;
END IF;
END$$
DELIMITER ;


