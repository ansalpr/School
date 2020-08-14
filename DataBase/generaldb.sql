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
CREATE TABLE `country` (
  `CountryId` int NOT NULL AUTO_INCREMENT,
  `CountryCode` varchar(10) NOT NULL,
  `CountryName` varchar(50) NOT NULL,
  `Nationality` varchar(50) NOT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedUser` int DEFAULT '0',
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUser` int DEFAULT '0',
  `RecordStatus` int DEFAULT '0',
  PRIMARY KEY (`CountryId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `currencyrate` (
  `CurrencyRateId` int NOT NULL AUTO_INCREMENT,
  `CurrencyCode` varchar(5) NOT NULL,
  `ExchangeRate` DECIMAL(6,3) NOT NULL,
  `BaseCurrency` varchar(5) NOT NULL,
  `EffectDate` DATETIME NOT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedUser` int DEFAULT '0',
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUser` int DEFAULT '0',
  `RecordStatus` int DEFAULT '0',
  PRIMARY KEY (`CurrencyRateId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `state` (
  `StateId` int NOT NULL AUTO_INCREMENT,
  `StateCode` varchar(10) NOT NULL,
  `StateName` varchar(45) NOT NULL,
  `CountryCode` varchar(10) NOT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedUser` int DEFAULT '0',
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUser` int DEFAULT '0',
  `RecordStatus` int DEFAULT '0',
  PRIMARY KEY (`StateId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `class` (
  `ClassId` int NOT NULL AUTO_INCREMENT,
  `ClassCode` varchar(10) NOT NULL,
  `ClassName` varchar(45) NOT NULL,
  `Sort` varchar(10)  NULL,
  `CurriculumCode` varchar(10)  NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedUser` int DEFAULT '0',
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUser` int DEFAULT '0',
  `RecordStatus` int DEFAULT '0',
  PRIMARY KEY (`ClassId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `division` (
  `DivisionId` int NOT NULL AUTO_INCREMENT,
  `DivisionCode` varchar(10) NOT NULL,
  `DivisionName` varchar(45) NOT NULL,
  `ClassCode` varchar(10)  NULL,
  `Stats` varchar(10)  NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedUser` int DEFAULT '0',
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUser` int DEFAULT '0',
  `RecordStatus` int DEFAULT '0',
  PRIMARY KEY (`DivisionId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `section` (
  `SectionId` int NOT NULL AUTO_INCREMENT,
  `SectionCode` varchar(10) NOT NULL,
  `SectionName` varchar(45) NOT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedUser` int DEFAULT '0',
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUser` int DEFAULT '0',
  `RecordStatus` int DEFAULT '0',
  PRIMARY KEY (`SectionId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `designation` (
  `DesignationId` int NOT NULL AUTO_INCREMENT,
  `DesignationCode` varchar(10) NOT NULL,
  `DesignationName` varchar(45) NOT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedUser` int DEFAULT '0',
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUser` int DEFAULT '0',
  `RecordStatus` int DEFAULT '0',
  PRIMARY KEY (`DesignationId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `module` (
  `ModuleId` int NOT NULL AUTO_INCREMENT,
  `ModuleCode` varchar(10) NOT NULL,
  `ModuleName` varchar(45) NOT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedUser` int DEFAULT '0',
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUser` int DEFAULT '0',
  `RecordStatus` int DEFAULT '0',
  PRIMARY KEY (`ModuleId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `modulecontrol` (
  `ModuleControlId` int NOT NULL AUTO_INCREMENT,
  `ModuleCode` varchar(10) NOT NULL,
  `From` DATETIME NOT NULL,
  `TO` DATETIME NOT NULL,
  `BackDate` int NOT NULL ,
  `FutureDate` int NOT NULL ,
  `Stats` int NOT NULL ,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedUser` int DEFAULT '0',
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUser` int DEFAULT '0',
  `RecordStatus` int DEFAULT '0',
  PRIMARY KEY (`ModuleControlId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `relation` (
  `RelationId` int NOT NULL AUTO_INCREMENT,
  `RelationCode` varchar(10) NOT NULL,
  `RelationName` varchar(45) NOT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedUser` int DEFAULT '0',
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUser` int DEFAULT '0',
  `RecordStatus` int DEFAULT '0',
  PRIMARY KEY (`RelationId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `parent` (
  `ParentId` int NOT NULL AUTO_INCREMENT ,
  `ParentName` varchar(45) NOT NULL,
  `DOB` datetime  NULL,
  `POB` varchar(45) DEFAULT '' NULL,
  `Address1` varchar(200)  DEFAULT '' NULL,
  `Address2` varchar(200)  DEFAULT '' NULL,
  `Country` varchar(45) DEFAULT '' NULL,
  `MotherTongue` varchar(45) DEFAULT '' NULL,
  `BloodGroup` varchar(2) DEFAULT '' NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedUser` int DEFAULT '0',
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUser` int DEFAULT '0',
  `RecordStatus` int DEFAULT '0',
  PRIMARY KEY (`ParentId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `parent` (
  `ParentId` int NOT NULL AUTO_INCREMENT ,
  `ParentName` varchar(45) NOT NULL,
  `DOB` datetime  NULL,
  `POB` varchar(45) DEFAULT '' NULL,
  `Address1` varchar(200)  DEFAULT '' NULL,
  `Address2` varchar(200)  DEFAULT '' NULL,
  `Country` varchar(45) DEFAULT '' NULL,
  `MotherTongue` varchar(45) DEFAULT '' NULL,
  `BloodGroup` varchar(2) DEFAULT '' NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedUser` int DEFAULT '0',
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUser` int DEFAULT '0',
  `RecordStatus` int DEFAULT '0',
  PRIMARY KEY (`ParentId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `bloodgroup` (
  `BloodGroupId` int NOT NULL AUTO_INCREMENT,
  `BloodGroupCode` varchar(10) NOT NULL,
  `BloodGroupName` varchar(45) NOT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedUser` int DEFAULT '0',
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUser` int DEFAULT '0',
  `RecordStatus` int DEFAULT '0',
  PRIMARY KEY (`BloodGroupId`)
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

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_manageCountry`(cntCode varchar(10),cntName varchar(50),cntId int,operation varchar(1),userID int,cntNationality varchar(50))
BEGIN
IF ( operation = 'S') THEN
	IF ( cntName != '' || cntCode != '') THEN
         Select * From country Where (CountryName = cntName or CountryCode = cntCode) and RecordStatus = 0;
   Elseif ( cntId != 0) Then
          Select * From country Where  CountryId = cntId  and RecordStatus = 0;
	Else
		Select * From country Where RecordStatus = 0;
     END IF;
Elseif (  operation = 'E') Then
    
    Insert Into generalhistory.country (CountryId,CountryName,CountryCode,Nationality,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
    Select CountryId,CountryName,CountryCode,Nationality,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
    From country    
    Where  CountryId = cntId;
    
    Update country SET CountryName = cntName,CountryCode = cntCode,Nationality=cntNationality,  ModifiedUser = userID, ModifiedDate = NOW()
    Where CountryId = cntId;
    
Elseif (  operation = 'D') Then

	Insert Into generalhistory.country (CountryId,CountryName,CountryCode,Nationality,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
    Select CountryId,CountryName,CountryCode,Nationality,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
    From country    
    Where  CountryId = cntId;
    
	Update country SET RecordStatus = 1,ModifiedUser=userID Where CountryId = cntId;
END IF;
END$$
DELIMITER ;
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_manageCurrencyRate`(curCode varchar(10),curBaseCurrency varchar(50),curRateId int,curExchangeRate Decimal(6,3),curEffectDate DateTime, operation varchar(1),userID int)
BEGIN
IF ( operation = 'S') THEN
	IF (curCode != '') THEN
         Select * From currencyrate Where (CurrencyCode = curCode) and RecordStatus = 0;
   Elseif ( curRateId != 0) Then
          Select * From currencyrate Where  CurrencyRateId = curRateId  and RecordStatus = 0;
	Else
		Select * From currencyrate Where RecordStatus = 0;
     END IF;
Elseif (  operation = 'E') Then
    
    Insert Into generalhistory.currencyrate (CurrencyRateId,CurrencyCode,ExchangeRate,BaseCurrency,EffectDate,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
    Select CurrencyRateId,CurrencyCode,ExchangeRate,BaseCurrency,EffectDate,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
    From currencyrate    
    Where  CurrencyRateId = curRateId;
    
    Update currencyrate SET CurrencyCode = curCode,ExchangeRate = curExchangeRate,BaseCurrency=curBaseCurrency,EffectDate=curEffectDate,  ModifiedUser = userID, ModifiedDate = NOW()
    Where CurrencyRateId = curRateId;
    
Elseif (  operation = 'D') Then

	Insert Into generalhistory.currencyrate (CurrencyRateId,CurrencyCode,ExchangeRate,BaseCurrency,EffectDate,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
    Select CurrencyRateId,CurrencyCode,ExchangeRate,BaseCurrency,EffectDate,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
    From currencyrate    
    Where  CurrencyRateId = curRateId;
    
	Update currencyrate SET RecordStatus = 1,ModifiedUser=userID Where CurrencyRateId = curRateId;
END IF;
END$$
DELIMITER ;
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_manageState`(statCode varchar(10),statName varchar(50),statId int,cntCode varchar(10),operation varchar(1),userID int)
BEGIN
IF ( operation = 'S') THEN
	IF ( statName != '' || statCode != '') THEN
         Select * From state Where (StateName = statName or StateCode = statCode) and RecordStatus = 0;
   Elseif ( statId != 0) Then
          Select * From state Where  StateId = statId  and RecordStatus = 0;
	Else
		Select * From state Where RecordStatus = 0;
     END IF;
Elseif (  operation = 'E') Then
    
    Insert Into generalhistory.state (StateId,StateName,StateCode,CountryCode,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
    Select StateId,StateName,StateCode,CountryCode,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
    From state    
    Where  StateId = statId;
    
    Update state SET StateName = statName,StateCode = statCode,CountryCode=cntCode,  ModifiedUser = userID, ModifiedDate = NOW()
    Where StateId = statId;
    
Elseif (  operation = 'D') Then

    Insert Into generalhistory.state (StateId,StateName,StateCode,CountryCode,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
    Select StateId,StateName,StateCode,CountryCode,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
    From state    
    Where  StateId = statId;
    
	Update state SET RecordStatus = 1,ModifiedUser=userID Where StateId = statId;
END IF;
END$$
DELIMITER ;
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_manageDivision`(divCode varchar(10),divName varchar(50),divId int,divClassCode varchar(10),divStatus varchar(10),operation varchar(1),userID int)
BEGIN
IF ( operation = 'S') THEN
	IF ( divName != '' || divCode != '') THEN
         Select * From division Where (DivisionName = divName or DivisionCode = divCode) and RecordStatus = 0;
   Elseif ( divId != 0) Then
          Select * From division Where  DivisionId = divId  and RecordStatus = 0;
	Else
		Select * From division Where RecordStatus = 0;
     END IF;
Elseif (  operation = 'E') Then
    
    Insert Into generalhistory.division (DivisionId,DivisionName,DivisionCode,ClassCode,Stats,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
    Select DivisionId,DivisionName,DivisionCode,ClassCode,Stats,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
    From division    
    Where  DivisionId = divId;
    
    Update division SET DivisionName = divName,DivisionCode = divCode,ClassCode=divClassCode,Stats=divStatus,  ModifiedUser = userID, ModifiedDate = NOW()
    Where DivisionId = divId;
    
Elseif (  operation = 'D') Then

	Insert Into generalhistory.division (DivisionId,DivisionName,DivisionCode,ClassCode,Stats,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
    Select DivisionId,DivisionName,DivisionCode,ClassCode,Stats,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
    From division    
    Where  DivisionId = divId;
    
	Update division SET RecordStatus = 1,ModifiedUser=userID Where DivisionId = divId;
END IF;
END$$
DELIMITER ;
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_manageSection`(secCode varchar(10),secName varchar(50),secId int,operation varchar(1),userID int)
BEGIN
IF ( operation = 'S') THEN
	IF ( secName != '' || secCode != '') THEN
         Select * From section Where (SectionName = secName or SectionCode = secCode) and RecordStatus = 0;
   Elseif ( secId != 0) Then
          Select * From section Where  SectionId = secId  and RecordStatus = 0;
	Else
		Select * From section Where RecordStatus = 0;
     END IF;
Elseif (  operation = 'E') Then
    
    Insert Into generalhistory.section (SectionId,SectionName,SectionCode,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
    Select SectionId,SectionName,SectionCode,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
    From section    
    Where  SectionId = secId;
    
    Update section SET SectionName = secName,SectionCode = secCode,  ModifiedUser = userID, ModifiedDate = NOW()
    Where SectionId = secId;
    
Elseif (  operation = 'D') Then

	Insert Into generalhistory.section (SectionId,SectionName,SectionCode,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
    Select SectionId,SectionName,SectionCode,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
    From section    
    Where  SectionId = secId;
    
	Update section SET RecordStatus = 1,ModifiedUser=userID Where SectionId = secId;
END IF;
END$$
DELIMITER ;
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_manageDesignation`(desCode varchar(10),desName varchar(50),desId int,operation varchar(1),userID int)
BEGIN
IF ( operation = 'S') THEN
	IF ( desName != '' || desCode != '') THEN
         Select * From designation Where (DesignationName = desName or DesignationCode = desCode) and RecordStatus = 0;
   Elseif ( desId != 0) Then
          Select * From designation Where  DesignationId = desId  and RecordStatus = 0;
	Else
		Select * From designation Where RecordStatus = 0;
     END IF;
Elseif (  operation = 'E') Then
    
    Insert Into generalhistory.designation (DesignationId,DesignationName,DesignationCode,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
    Select DesignationId,DesignationName,DesignationCode,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
    From designation    
    Where  DesignationId = desId;
    
    Update designation SET DesignationName = desName,DesignationCode = desCode,  ModifiedUser = userID, ModifiedDate = NOW()
    Where DesignationId = desId;
    
Elseif (  operation = 'D') Then

	Insert Into generalhistory.designation (DesignationId,DesignationName,DesignationCode,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
    Select DesignationId,DesignationName,DesignationCode,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
    From designation    
    Where  DesignationId = desId;
    
	Update designation SET RecordStatus = 1,ModifiedUser=userID Where DesignationId = desId;
END IF;
END$$
DELIMITER ;
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_manageModule`(modCode varchar(10),modName varchar(50),modId int,operation varchar(1),userID int)
BEGIN
IF ( operation = 'S') THEN
	IF ( modName != '' || modCode != '') THEN
         Select * From module Where (ModuleName = modName or ModuleCode = modCode) and RecordStatus = 0;
   Elseif ( modId != 0) Then
          Select * From module Where  ModuleId = modId  and RecordStatus = 0;
	Else
		Select * From module Where RecordStatus = 0;
     END IF;
Elseif (  operation = 'E') Then
    
    Insert Into generalhistory.module (ModuleId,ModuleName,ModuleCode,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
    Select ModuleId,ModuleName,ModuleCode,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
    From module    
    Where  ModuleId = modId;
    
    Update module SET ModuleName = modName,ModuleCode = modCode,  ModifiedUser = userID, ModifiedDate = NOW()
    Where ModuleId = modId;
    
Elseif (  operation = 'D') Then

	Insert Into generalhistory.module (ModuleId,ModuleName,ModuleCode,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
    Select ModuleId,ModuleName,ModuleCode,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
    From module    
    Where  ModuleId = modId;
    
	Update module SET RecordStatus = 1,ModifiedUser=userID Where ModuleId = modId;
END IF;
END$$
DELIMITER ;
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_manageModuleControl`(modCode varchar(10),modId int,modFromDate datetime,modToDate datetime,modBackDate int,modFutureDate int,modStatus int,operation varchar(1),userID int)
BEGIN
IF ( operation = 'S') THEN
	IF ( modCode != '' || modId != '') THEN
         Select * From modulecontrol Where (ModuleCode = modCode or ModuleControlId = modId) and RecordStatus = 0 and Stats = 1;
   Elseif ( modId != 0) Then
          Select * From modulecontrol Where  ModuleId = modId  and RecordStatus = 0 and Stats = 1;
	Else
		Select * From modulecontrol Where RecordStatus = 0 and Stats = 1;
     END IF;
Elseif (  operation = 'E') Then
    
    Insert Into generalhistory.modulecontrol (ModuleControlId,ModuleCode,`From`,`TO`,BackDate,FutureDate,Stats,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
    Select ModuleControlId,ModuleCode,`From`,`TO`,BackDate,FutureDate,Stats,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
    From modulecontrol    
    Where  ModuleControlId = modId;
    
    Update modulecontrol SET ModuleCode = modCode,`From` = modFromDate,`TO` = modToDate,BackDate = modBackDate,FutureDate = modFutureDate,Stats=modStatus,  ModifiedUser = userID, ModifiedDate = NOW()
    Where ModuleControlId = modId;
    
Elseif (  operation = 'D') Then

	Insert Into generalhistory.modulecontrol (ModuleControlId,ModuleCode,`From`,`TO`,BackDate,FutureDate,Stats,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
    Select ModuleControlId,ModuleCode,`From`,`TO`,BackDate,FutureDate,Stats,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
    From modulecontrol    
    Where  ModuleControlId = modId;
    
	Update modulecontrol SET RecordStatus = 1,ModifiedUser=userID Where ModuleControlId = modId;
END IF;
END$$
DELIMITER ;
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_manageRelation`(relCode varchar(10),relName varchar(50),relId int,operation varchar(1),userID int)
BEGIN
IF ( operation = 'S') THEN
	IF ( relName != '' || relCode != '') THEN
         Select * From relation Where (RelationName = relName or RelationCode = relCode) and RecordStatus = 0;
   Elseif ( relId != 0) Then
          Select * From relation Where  RelationId = relId  and RecordStatus = 0;
	Else
		Select * From relation Where RecordStatus = 0;
     END IF;
Elseif (  operation = 'E') Then
    
    Insert Into generalhistory.relation (RelationId,RelationName,RelationCode,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
    Select RelationId,RelationName,RelationCode,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
    From relation    
    Where  RelationId = relId;
    
    Update relation SET RelationName = relName,RelationCode = relCode,  ModifiedUser = userID, ModifiedDate = NOW()
    Where RelationId = relId;
    
Elseif (  operation = 'D') Then

	Insert Into generalhistory.relation (RelationId,RelationName,RelationCode,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
    Select RelationId,RelationName,RelationCode,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
    From relation    
    Where  RelationId = relId;
    
	Update relation SET RecordStatus = 1,ModifiedUser=userID Where RelationId = relId;
END IF;
END$$
DELIMITER ;
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_manageParent`(parName varchar(50),parId int,parDOB datetime,parPOB varchar(45),parAddress1 varchar(200),parAddress2 varchar(200),parCountry varchar(45),
parMotherTongue varchar(45),parBloodGroup varchar(2),operation varchar(1),userID int)
BEGIN
IF ( operation = 'S') THEN
	IF ( parName != '' ) THEN
         Select * From parent Where (ParentName = parName ) and RecordStatus = 0;
   Elseif ( parId != 0) Then
          Select * From parent Where  ParentId = parId  and RecordStatus = 0;
	Else
		Select * From parent Where RecordStatus = 0;
     END IF;
Elseif (  operation = 'E') Then
    
    Insert Into generalhistory.parent (ParentId,ParentName,DOB,POB,Address1,Address2,Country,MotherTongue,BloodGroup,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
    Select ParentId,ParentName,DOB,POB,Address1,Address2,Country,MotherTongue,BloodGroup,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
    From parent    
    Where  ParentId = parId;
    
    Update parent SET ParentName = parName,DOB=parDOB,POB=parPOB,Address1=parAddress1,Address2=parAddress2,
    Country=parCountry,MotherTongue=parMotherTongue,BloodGroup=parBloodGroup,  ModifiedUser = userID, ModifiedDate = NOW()
    Where ParentId = parId;
    
Elseif (  operation = 'D') Then

	Insert Into generalhistory.parent (ParentId,ParentName,DOB,POB,Address1,Address2,Country,MotherTongue,BloodGroup,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
    Select ParentId,ParentName,DOB,POB,Address1,Address2,Country,MotherTongue,BloodGroup,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
    From parent    
    Where  ParentId = parId;
    
	Update parent SET RecordStatus = 1,ModifiedUser=userID Where ParentId = parId;
END IF;
END$$
DELIMITER ;
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_manageBloodGroup`(bldCode varchar(10),bldName varchar(50),bldId int,operation varchar(1),userID int)
BEGIN
IF ( operation = 'S') THEN
	IF ( bldName != '' || bldCode != '') THEN
         Select * From bloodgroup Where (BloodGroupName = bldName or BloodGroupCode = bldCode) and RecordStatus = 0;
   Elseif ( bldId != 0) Then
          Select * From bloodgroup Where  BloodGroupId = bldId  and RecordStatus = 0;
	Else
		Select * From bloodgroup Where RecordStatus = 0;
     END IF;
Elseif (  operation = 'E') Then
    
    Insert Into generalhistory.bloodgroup (BloodGroupId,BloodGroupName,BloodGroupCode,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
    Select BloodGroupId,BloodGroupName,BloodGroupCode,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
    From bloodgroup    
    Where  BloodGroupId = bldId;
    
    Update bloodgroup SET BloodGroupName = bldName,BloodGroupCode = bldCode,  ModifiedUser = userID, ModifiedDate = NOW()
    Where BloodGroupId = bldId;
    
Elseif (  operation = 'D') Then

	Insert Into generalhistory.bloodgroup (BloodGroupId,BloodGroupName,BloodGroupCode,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
    Select BloodGroupId,BloodGroupName,BloodGroupCode,
											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
    From bloodgroup    
    Where  BloodGroupId = bldId;
    
	Update bloodgroup SET RecordStatus = 1,ModifiedUser=userID Where BloodGroupId = bldId;
END IF;
END$$
DELIMITER ;







