
--CREATE  PROCEDURE sp_AuthCheck(@uName varchar(200),@pwd varchar(200))
--As
--BEGIN      
--	SELECT * FROM users Where UserLoginId = @uName and UserPassword = @pwd ;
--END


--CREATE  PROCEDURE sp_manageDepartment(@depCode varchar(10),@depName varchar(50),@depId int,@operation varchar(1),@userID int)
--AS
--BEGIN
--IF ( @operation = 'S') 
--BEGIN
--	IF ( @depName != '' OR @depCode != '') 
--	BEGIN
--         Select * From department Where (DepartmentName = @depName or DepartmentCode = @depCode) and RecordStatus = 0;
--	END
--	Else If ( @depId != 0) 
--	BEGIN
--          Select * From department Where  DepartmentId = @depId  and RecordStatus = 0;
--	END
--	Else
--	BEGIN
--		Select * From department Where RecordStatus = 0;
--     END 
--END
--Else If (  @operation = 'E') 
--    BEGIN
--    Insert Into generalhistory.[dbo].department (DepartmentId,DepartmentName,DepartmentCode,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
--    Select DepartmentId,DepartmentName,DepartmentCode,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
--    From department    
--    Where  DepartmentId = @depId;
    
--    Update department SET DepartmentName = @depName,DepartmentCode = @depCode,  ModifiedUser = @userID, ModifiedDate = GETDATE()
--    Where DepartmentId = @depId;
--    END
--Else If (  @operation = 'D') 
--	BEGIN
--	Insert Into generalhistory.[dbo].department (DepartmentId,DepartmentName,DepartmentCode,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
--    Select DepartmentId,DepartmentName,DepartmentCode,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
--    From department    
--    Where  DepartmentId = @depId;
    
--	Update department SET RecordStatus = 1,ModifiedUser=@userID Where DepartmentId = @depId;
--	END 
--END

--CREATE  PROCEDURE sp_manageCurriculum(@CurCode varchar(10),@CurName varchar(50),@CurId int,@operation varchar(1),@userID int)
--AS
--BEGIN
--IF ( @operation = 'S') 
--BEGIN
--	IF ( @CurName != '' OR @CurCode != '') 
--	BEGIN
--         Select * From curriculum Where (CurriculumName = @CurName or CurriculumCode = @CurCode) and RecordStatus = 0;
--		 END
--   Else If ( @CurId != 0) 
--   BEGIN
--          Select * From curriculum Where  CurriculumId = @CurId  and RecordStatus = 0;
--		  END
--	Else
--	BEGIN
--		Select * From curriculum Where RecordStatus = 0;
--     END
--END
--Else If (  @operation = 'E') 
--BEGIN    
--    Insert Into generalhistory.[dbo].curriculum (CurriculumId,CurriculumName,CurriculumCode,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
--    Select CurriculumId,CurriculumName,CurriculumCode,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
--    From curriculum    
--    Where  CurriculumId = @CurId;
    
--    Update curriculum SET CurriculumName = @CurName,CurriculumCode = @CurCode,  ModifiedUser = @userID, ModifiedDate = GETDATE()
--    Where CurriculumId = @CurId;
--END    
--Else If (  @operation = 'D') 
--BEGIN

--	Insert Into generalhistory.[dbo].curriculum (CurriculumId,CurriculumName,CurriculumCode,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
--    Select CurriculumId,CurriculumName,CurriculumCode,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
--    From curriculum    
--    Where  CurriculumId = @CurId;
    
--	Update curriculum SET RecordStatus = 1,ModifiedUser=@userID Where CurriculumId = @CurId;
--END 
--END

--CREATE  PROCEDURE sp_manageCurrency(@curCode varchar(4),@curName varchar(50),@curId int,@operation varchar(1),@userID int,@baseCur varchar(4),@curPrecision varchar(1),@curStatus varchar(10))
--AS
--BEGIN
--IF ( @operation = 'S') BEGIN
--	IF ( @curName != '' OR @curCode != '') BEGIN
--         Select * From currency Where (CurrencyName = @curName or CurrencyCode = @curCode) and RecordStatus = 0;
--		 END
--   Else If ( @curId != 0) BEGIN
--          Select * From currency Where  CurrencyId = @curId  and RecordStatus = 0;
--		  END
--	Else BEGIN	
--		Select * From currency Where RecordStatus = 0;
--		END
--     END
--Else If (  @operation = 'E') BEGIN  
  
--    Insert Into generalhistory.[dbo].currency (CurrencyId,CurrencyName,CurrencyCode,baseCurrency,Precisions,Stats,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
--    Select CurrencyId,CurrencyName,CurrencyCode,baseCurrency,Precisions,Stats,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
--    From currency    
--    Where  CurrencyId = @curId;
    
--    Update currency SET CurrencyName = @curName,CurrencyCode = @curCode,baseCurrency=@baseCur,Precisions=@curPrecision,Stats=@curStatus,  ModifiedUser = @userID, ModifiedDate = GETDATE()
--    Where CurrencyId = @curId;
-- END   
--Else If (  @operation = 'D') BEGIN

--	Insert Into generalhistory.[dbo].currency (CurrencyId,CurrencyName,CurrencyCode,baseCurrency,Precisions,Stats,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
--    Select CurrencyId,CurrencyName,CurrencyCode,baseCurrency,Precisions,Stats,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
--    From currency    
--    Where  CurrencyId = @curId;
    
--	Update currency SET RecordStatus = 1,ModifiedUser=@userID Where CurrencyId = @curId;
--END 
--END

--CREATE  PROCEDURE sp_manageCountry(@cntCode varchar(10),@cntName varchar(50),@cntId int,@operation varchar(1),@userID int,@cntNationality varchar(50))
--AS
--BEGIN
--IF ( @operation = 'S') BEGIN
--	IF ( @cntName != '' OR @cntCode != '') BEGIN
--         Select * From country Where (CountryName = @cntName or CountryCode = @cntCode) and RecordStatus = 0;
--		 END
--   Else If ( @cntId != 0) BEGIN
--          Select * From country Where  CountryId = @cntId  and RecordStatus = 0;
--		  END
--	Else
--	BEGIN
--		Select * From country Where RecordStatus = 0;
--     END
--END
--Else If (  @operation = 'E') BEGIN
    
--    Insert Into generalhistory.[dbo].country (CountryId,CountryName,CountryCode,Nationality,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
--    Select CountryId,CountryName,CountryCode,Nationality,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
--    From country    
--    Where  CountryId = @cntId;
    
--    Update country SET CountryName = @cntName,CountryCode = @cntCode,Nationality=@cntNationality,  ModifiedUser = @userID, ModifiedDate = GETDATE()
--    Where CountryId = @cntId;
-- END   
--Else If (  @operation = 'D') BEGIN

--	Insert Into generalhistory.[dbo].country (CountryId,CountryName,CountryCode,Nationality,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
--    Select CountryId,CountryName,CountryCode,Nationality,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
--    From country    
--    Where  CountryId = @cntId;
    
--	Update country SET RecordStatus = 1,ModifiedUser=@userID Where CountryId = @cntId;
--END 
--END

--CREATE  PROCEDURE sp_manageCurrencyRate(@curCode varchar(10),@curBaseCurrency varchar(50),@curRateId int,@curExchangeRate Decimal(6,3),@curEffectDate DateTime, @operation varchar(1),@userID int)
--AS
--BEGIN
--IF ( @operation = 'S') BEGIN
--	IF (@curCode != '') BEGIN
--         Select * From currencyrate Where (CurrencyCode = @curCode) and RecordStatus = 0;
--		 END
--   Else If ( @curRateId != 0) BEGIN
--          Select * From currencyrate Where  CurrencyRateId = @curRateId  and RecordStatus = 0;
--		  END
--	Else
--	BEGIN
--		Select * From currencyrate Where RecordStatus = 0;
--		END
--END
--Else If (  @operation = 'E') BEGIN
    
--    Insert Into generalhistory.[dbo].currencyrate (CurrencyRateId,CurrencyCode,ExchangeRate,BaseCurrency,EffectDate,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
--    Select CurrencyRateId,CurrencyCode,ExchangeRate,BaseCurrency,EffectDate,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
--    From currencyrate    
--    Where  CurrencyRateId = @curRateId;
    
--    Update currencyrate SET CurrencyCode = @curCode,ExchangeRate = @curExchangeRate,BaseCurrency=@curBaseCurrency,EffectDate=@curEffectDate,  ModifiedUser = @userID, ModifiedDate = GETDATE()
--    Where CurrencyRateId = @curRateId;
--  END  
--Else If (  @operation = 'D') BEGIN

--	Insert Into generalhistory.[dbo].currencyrate (CurrencyRateId,CurrencyCode,ExchangeRate,BaseCurrency,EffectDate,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
--    Select CurrencyRateId,CurrencyCode,ExchangeRate,BaseCurrency,EffectDate,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
--    From currencyrate    
--    Where  CurrencyRateId = @curRateId;
    
--	Update currencyrate SET RecordStatus = 1,ModifiedUser=@userID Where CurrencyRateId = @curRateId;
--END
--END

--CREATE PROCEDURE sp_manageState(@statCode varchar(10),@statName varchar(50),@statId int,@cntCode varchar(10),@operation varchar(1),@userID int)
--AS
--BEGIN
--IF ( @operation = 'S') BEGIN
--	IF ( @statName != '' OR @statCode != '') BEGIN
--         Select * From [state] Where (StateName = @statName or StateCode = @statCode) and RecordStatus = 0;
--		 END
--   Else If ( @statId != 0) BEGIN
--          Select * From state Where  StateId = @statId  and RecordStatus = 0;
--		  END
--	Else
--	BEGIN
--		Select * From state Where RecordStatus = 0;
--		END
--END
--Else If (  @operation = 'E') BEGIN
    
--    Insert Into generalhistory.[dbo].[state] (StateId,StateName,StateCode,CountryCode,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
--    Select StateId,StateName,StateCode,CountryCode,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
--    From [state]    
--    Where  StateId = @statId;
    
--    Update [state] SET StateName = @statName,StateCode = @statCode,CountryCode=@cntCode,  ModifiedUser = @userID, ModifiedDate = GETDATE()
--    Where StateId = @statId;
-- END   
--Else If (  @operation = 'D') BEGIN

--    Insert Into generalhistory.[dbo].[state] (StateId,StateName,StateCode,CountryCode,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
--    Select StateId,StateName,StateCode,CountryCode,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
--    From [state]    
--    Where  StateId = @statId;
    
--	Update [state] SET RecordStatus = 1,ModifiedUser=@userID Where StateId = @statId;
--END
--END

--CREATE PROCEDURE sp_manageDivision(@divCode varchar(10),@divName varchar(50),@divId int,@divClassCode varchar(10),@divStatus varchar(10),@operation varchar(1),@userID int)
--AS
--BEGIN
--IF ( @operation = 'S') BEGIN
--	IF ( @divName != '' OR @divCode != '') BEGIN
--         Select * From division Where (DivisionName = @divName or DivisionCode = @divCode) and RecordStatus = 0;
--		 END
--   Else If ( @divId != 0) BEGIN
--          Select * From division Where  DivisionId = @divId  and RecordStatus = 0;
--		  END
--	Else BEGIN
--		Select * From division Where RecordStatus = 0;
--		END
--END
--Else If (  @operation = 'E') BEGIN
    
--    Insert Into generalhistory.[dbo].division (DivisionId,DivisionName,DivisionCode,ClassCode,Stats,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
--    Select DivisionId,DivisionName,DivisionCode,ClassCode,Stats,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
--    From division    
--    Where  DivisionId = @divId;
    
--    Update division SET DivisionName = @divName,DivisionCode = @divCode,ClassCode=@divClassCode,Stats=@divStatus,  ModifiedUser = @userID, ModifiedDate = GETDATE()
--    Where DivisionId = @divId;
--END    
--Else If (  @operation = 'D') BEGIN

--	Insert Into generalhistory.[dbo].division (DivisionId,DivisionName,DivisionCode,ClassCode,Stats,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
--    Select DivisionId,DivisionName,DivisionCode,ClassCode,Stats,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
--    From division    
--    Where  DivisionId = @divId;
    
--	Update division SET RecordStatus = 1,ModifiedUser=@userID Where DivisionId = @divId;
--END 
--END

--CREATE  PROCEDURE sp_manageSection(@secCode varchar(10),@secName varchar(50),@secId int,@operation varchar(1),@userID int)
--AS
--BEGIN
--IF ( @operation = 'S') BEGIN
--	IF ( @secName != '' OR @secCode != '') BEGIN
--         Select * From section Where (SectionName = @secName or SectionCode = @secCode) and RecordStatus = 0;
--		 END
--   Else if ( @secId != 0) BEGIN
--          Select * From section Where  SectionId = @secId  and RecordStatus = 0;
--		  END
--	Else
--	BEGIN
--		Select * From section Where RecordStatus = 0;
--		END
--END
--Else if (  @operation = 'E') BEGIN
    
--    Insert Into generalhistory.[dbo].section (SectionId,SectionName,SectionCode,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
--    Select SectionId,SectionName,SectionCode,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
--    From section    
--    Where  SectionId = @secId;
    
--    Update section SET SectionName = @secName,SectionCode = @secCode,  ModifiedUser = @userID, ModifiedDate = GETDATE()
--    Where SectionId = @secId;
--END    
--Else if (  @operation = 'D') BEGIN

--	Insert Into generalhistory.[dbo].section (SectionId,SectionName,SectionCode,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
--    Select SectionId,SectionName,SectionCode,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
--    From section    
--    Where  SectionId = @secId;
    
--	Update section SET RecordStatus = 1,ModifiedUser=@userID Where SectionId = @secId;
--END
--END

--CREATE  PROCEDURE sp_manageDesignation(@desCode varchar(10),@desName varchar(50),@desId int,@operation varchar(1),@userID int)
--AS
--BEGIN
--IF ( @operation = 'S') BEGIN
--	IF ( @desName != '' OR @desCode != '') BEGIN
--         Select * From designation Where (DesignationName = @desName or DesignationCode = @desCode) and RecordStatus = 0;
--		 END
--   Else if ( @desId != 0) BEGIN
--          Select * From designation Where  DesignationId = @desId  and RecordStatus = 0;
--		  END
--	Else
--	BEGIN
--		Select * From designation Where RecordStatus = 0;
--     END
--END
--Else if (  @operation = 'E') BEGIN
    
--    Insert Into generalhistory.[dbo].designation (DesignationId,DesignationName,DesignationCode,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
--    Select DesignationId,DesignationName,DesignationCode,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
--    From designation    
--    Where  DesignationId = @desId;
    
--    Update designation SET DesignationName = @desName,DesignationCode = @desCode,  ModifiedUser = @userID, ModifiedDate = GETDATE()
--    Where DesignationId = @desId;
-- END   
--Else if (  @operation = 'D') BEGIN

--	Insert Into generalhistory.[dbo].designation (DesignationId,DesignationName,DesignationCode,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
--    Select DesignationId,DesignationName,DesignationCode,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
--    From designation    
--    Where  DesignationId = @desId;
    
--	Update designation SET RecordStatus = 1,ModifiedUser=@userID Where DesignationId = @desId;
--END
--END

--CREATE PROCEDURE sp_manageModule(@modCode varchar(10),@modName varchar(50),@modId int,@operation varchar(1),@userID int)
--AS
--BEGIN
--IF ( @operation = 'S') BEGIN
--	IF ( @modName != '' OR @modCode != '') BEGIN
--         Select * From module Where (ModuleName = @modName or ModuleCode = @modCode) and RecordStatus = 0;
--		 END
--   Else If ( @modId != 0) BEGIN
--          Select * From module Where  ModuleId = @modId  and RecordStatus = 0;
--		  END
--	Else
--	BEGIN
--		Select * From module Where RecordStatus = 0;
--     END
--END
--Else If (  @operation = 'E') BEGIN
    
--    Insert Into generalhistory.[dbo].module (ModuleId,ModuleName,ModuleCode,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
--    Select ModuleId,ModuleName,ModuleCode,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
--    From module    
--    Where  ModuleId = @modId;
    
--    Update module SET ModuleName = @modName,ModuleCode = @modCode,  ModifiedUser = @userID, ModifiedDate = GETDATE()
--    Where ModuleId = @modId;
--END    
--Else If (  @operation = 'D') BEGIN

--	Insert Into generalhistory.[dbo].module (ModuleId,ModuleName,ModuleCode,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
--    Select ModuleId,ModuleName,ModuleCode,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
--    From module    
--    Where  ModuleId = @modId;
    
--	Update module SET RecordStatus = 1,ModifiedUser=@userID Where ModuleId = @modId;
--END
--END

--CREATE PROCEDURE sp_manageModuleControl(@modCode varchar(10),@modId int,@modFromDate datetime,@modToDate datetime,@modBackDate int,@modFutureDate int,@modStatus int,@operation varchar(1),@userID int)
--AS
--BEGIN
--IF ( @operation = 'S') BEGIN
--	IF ( @modCode != '' OR @modId != '') BEGIN
--         Select * From modulecontrol Where (ModuleCode = @modCode or ModuleControlId = @modId) and RecordStatus = 0 and [Stats] = 1;
--		 END
--   Else If ( @modId != 0) BEGIN
--          Select * From modulecontrol Where  [ModuleControlId] = @modId  and RecordStatus = 0 and [Stats] = 1;
--		  END
--	Else
--	BEGIN
--		Select * From modulecontrol Where RecordStatus = 0 and [Stats] = 1;
--     END
--END
--Else If (  @operation = 'E') BEGIN
    
--    Insert Into generalhistory.[dbo].modulecontrol (ModuleControlId,ModuleCode,[From],[TO],BackDate,FutureDate,[Stats],
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
--    Select ModuleControlId,ModuleCode,[From],[TO],BackDate,FutureDate,[Stats],
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
--    From modulecontrol    
--    Where  ModuleControlId = @modId;
    
--    Update modulecontrol SET ModuleCode = @modCode,[From] = @modFromDate,[TO] = @modToDate,BackDate = @modBackDate,FutureDate = @modFutureDate,[Stats]=@modStatus,  ModifiedUser = @userID, ModifiedDate = GETDATE()
--    Where ModuleControlId = @modId;
--END    
--Else If (  @operation = 'D') BEGIN

--	Insert Into generalhistory.[dbo].modulecontrol (ModuleControlId,ModuleCode,[From],[TO],BackDate,FutureDate,[Stats],
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
--    Select ModuleControlId,ModuleCode,[From],[TO],BackDate,FutureDate,[Stats],
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
--    From modulecontrol    
--    Where  ModuleControlId = @modId;
    
--	Update modulecontrol SET RecordStatus = 1,ModifiedUser=@userID Where ModuleControlId = @modId;
--END
--END

--CREATE  PROCEDURE sp_manageRelation(@relCode varchar(10),@relName varchar(50),@relId int,@operation varchar(1),@userID int)
--AS
--BEGIN
--IF ( @operation = 'S') BEGIN
--	IF ( @relName != '' OR @relCode != '') BEGIN
--         Select * From relation Where (RelationName = @relName or RelationCode = @relCode) and RecordStatus = 0; END
--   Else If ( @relId != 0) BEGIN
--          Select * From relation Where  RelationId = @relId  and RecordStatus = 0; END
--	Else BEGIN
--		Select * From relation Where RecordStatus = 0;
--     END
--END
--Else If (  @operation = 'E') BEGIN
    
--    Insert Into generalhistory.[dbo].relation (RelationId,RelationName,RelationCode,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
--    Select RelationId,RelationName,RelationCode,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
--    From relation    
--    Where  RelationId = @relId;
    
--    Update relation SET RelationName = @relName,RelationCode = @relCode,  ModifiedUser = @userID, ModifiedDate = GETDATE()
--    Where RelationId = @relId;
-- END   
--Else If (  @operation = 'D') BEGIN

--	Insert Into generalhistory.[dbo].relation (RelationId,RelationName,RelationCode,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
--    Select RelationId,RelationName,RelationCode,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
--    From relation    
--    Where  RelationId = @relId;
    
--	Update relation SET RecordStatus = 1,ModifiedUser=@userID Where RelationId = @relId;
--END
--END

--CREATE PROCEDURE sp_manageParent(@parName varchar(50),@parId int,@parDOB datetime,@parPOB varchar(45),@parAddress1 varchar(200),@parAddress2 varchar(200),@parCountry varchar(45),
--@parMotherTongue varchar(45),@parBloodGroup varchar(2),@operation varchar(1),@userID int)
--AS
--BEGIN
--IF ( @operation = 'S') BEGIN
--	IF ( @parName != '' ) BEGIN
--         Select * From parent Where (ParentName = @parName ) and RecordStatus = 0; END
--   Else If ( @parId != 0) BEGIN
--          Select * From parent Where  ParentId = @parId  and RecordStatus = 0;END
--	Else BEGIN
--		Select * From parent Where RecordStatus = 0; END
--END
--Else If (  @operation = 'E') BEGIN
    
--    Insert Into generalhistory.[dbo].parent (ParentId,ParentName,DOB,POB,Address1,Address2,Country,MotherTongue,BloodGroup,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
--    Select ParentId,ParentName,DOB,POB,Address1,Address2,Country,MotherTongue,BloodGroup,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
--    From parent    
--    Where  ParentId = @parId;
    
--    Update parent SET ParentName = @parName,DOB=@parDOB,POB=@parPOB,Address1=@parAddress1,Address2=@parAddress2,
--    Country=@parCountry,MotherTongue=@parMotherTongue,BloodGroup=@parBloodGroup,  ModifiedUser = @userID, ModifiedDate = GETDATE()
--    Where ParentId = @parId;
--END    
--Else If (  @operation = 'D') BEGIN

--	Insert Into generalhistory.[dbo].parent (ParentId,ParentName,DOB,POB,Address1,Address2,Country,MotherTongue,BloodGroup,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
--    Select ParentId,ParentName,DOB,POB,Address1,Address2,Country,MotherTongue,BloodGroup,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
--    From parent    
--    Where  ParentId = @parId;
    
--	Update parent SET RecordStatus = 1,ModifiedUser=@userID Where ParentId = @parId;
--END
--END


--CREATE  PROCEDURE sp_manageBloodGroup(@bldCode varchar(10),@bldName varchar(50),@bldId int,@operation varchar(1),@userID int)
--AS
--BEGIN
--IF ( @operation = 'S') BEGIN
--	IF ( @bldName != '' OR @bldCode != '') BEGIN
--         Select * From bloodgroup Where (BloodGroupName = @bldName or BloodGroupCode = @bldCode) and RecordStatus = 0; END
--   Else If ( @bldId != 0) BEGIN
--          Select * From bloodgroup Where  BloodGroupId = @bldId  and RecordStatus = 0; END
--	Else BEGIN
--		Select * From bloodgroup Where RecordStatus = 0; END
--END
--Else If (  @operation = 'E') BEGIN
    
--    Insert Into generalhistory.[dbo].bloodgroup (BloodGroupId,BloodGroupName,BloodGroupCode,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
--    Select BloodGroupId,BloodGroupName,BloodGroupCode,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
--    From bloodgroup    
--    Where  BloodGroupId = @bldId;
    
--    Update bloodgroup SET BloodGroupName = @bldName,BloodGroupCode = @bldCode,  ModifiedUser = @userID, ModifiedDate = GETDATE()
--    Where BloodGroupId = @bldId;
--END    
--Else If (  @operation = 'D') BEGIN

--	Insert Into generalhistory.[dbo].bloodgroup (BloodGroupId,BloodGroupName,BloodGroupCode,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus)
--    Select BloodGroupId,BloodGroupName,BloodGroupCode,
--											CreatedDate,CreatedUser,ModifiedDate,ModifiedUser,RecordStatus
--    From bloodgroup    
--    Where  BloodGroupId = @bldId;
    
--	Update bloodgroup SET RecordStatus = 1,ModifiedUser=@userID Where BloodGroupId = @bldId;
--END
--END