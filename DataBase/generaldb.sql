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
CREATE TABLE `curriculum` (
  `CurriculumId` int NOT NULL AUTO_INCREMENT,
  `CurriculumCode` varchar(10) NOT NULL,
  `CurriculumName` varchar(45) NOT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedUser` int DEFAULT '0',
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUser` int DEFAULT '0',
  `RecordStatus` int DEFAULT '0',
  PRIMARY KEY (`curriculumId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `currency` (
  `CurrencyId` int NOT NULL AUTO_INCREMENT,
  `CurrencyCode` varchar(4) NOT NULL,
  `CurrencyName` varchar(50) NOT NULL,
  `BaseCurrency` varchar(4) NOT NULL,
  `Precisions` varchar(4) NOT NULL,
  `Stats` varchar(10) NOT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedUser` int DEFAULT '0',
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUser` int DEFAULT '0',
  `RecordStatus` int DEFAULT '0',
  PRIMARY KEY (`CurrencyId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_manageCurriculum`(CurCode varchar(10),CurName varchar(50),CurId int,operation varchar(1),userID int)
BEGIN
IF ( operation = 'S') THEN
	IF ( CurName != '' || CurCode != '') THEN
         Select * From curriculum Where (CurriculumName = CurName or CurriculumCode = CurCode) and RecordStatus = 0;
   Elseif ( CurId != 0) Then
          Select * From curriculum Where  CurriculumId = CurId  and RecordStatus = 0;
	Else
		Select * From curriculum Where RecordStatus = 0;
     END IF;
Elseif (  operation = 'E') Then
    
    Insert Into generalhistory.curriculum (CurriculumId,CurriculumName,CurriculumCode,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
    Select CurriculumId,CurriculumName,CurriculumCode,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
    From curriculum    
    Where  CurriculumId = CurId;
    
    Update curriculum SET CurriculumName = CurName,CurriculumCode = CurCode,  ModifiedUser = userID, ModifiedDate = NOW()
    Where CurriculumId = CurId;
    
Elseif (  operation = 'D') Then

	Insert Into generalhistory.curriculum (CurriculumId,CurriculumName,CurriculumCode,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
    Select CurriculumId,CurriculumName,CurriculumCode,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
    From curriculum    
    Where  CurriculumId = CurId;
    
	Update curriculum SET RecordStatus = 1,ModifiedUser=userID Where CurriculumId = CurId;
END IF;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_manageCurrency`(curCode varchar(4),curName varchar(50),curId int,operation varchar(1),userID int,baseCur varchar(4),curPrecision varchar(1),curStatus varchar(10))
BEGIN
IF ( operation = 'S') THEN
	IF ( curName != '' || curCode != '') THEN
         Select * From currency Where (CurrencyName = curName or CurrencyCode = curCode) and RecordStatus = 0;
   Elseif ( curId != 0) Then
          Select * From currency Where  CurrencyId = curId  and RecordStatus = 0;
	Else
		Select * From currency Where RecordStatus = 0;
     END IF;
Elseif (  operation = 'E') Then  
  
    Insert Into generalhistory.currency (CurrencyId,CurrencyName,CurrencyCode,BaseCurrency,Precisions,Stats,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
    Select CurrencyId,CurrencyName,CurrencyCode,BaseCurrency,Precisions,Stats,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
    From currency    
    Where  CurrencyId = curId;
    
    Update currency SET CurrencyName = curName,CurrencyCode = curCode,BaseCurrency=baseCur,Precisions=curPrecision,Stats=curStatus,  ModifiedUser = userID, ModifiedDate = NOW()
    Where CurrencyId = curId;
    
Elseif (  operation = 'D') Then

	Insert Into generalhistory.currency (CurrencyId,CurrencyName,CurrencyCode,BaseCurrency,Precisions,Stats,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
    Select CurrencyId,CurrencyName,CurrencyCode,BaseCurrency,Precisions,Stats,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
    From currency    
    Where  CurrencyId = curId;
    
	Update currency SET RecordStatus = 1,ModifiedUser=userID Where CurrencyId = curId;
END IF;
END$$
DELIMITER ;



