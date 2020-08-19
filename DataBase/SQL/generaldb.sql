
CREATE TABLE bloodgroup(
  BloodGroupId int NOT NULL IDENTITY(1,1),
  BloodGroupCode varchar(10) NOT NULL,
  BloodGroupName varchar(45) NOT NULL,
  CreatedDate datetime DEFAULT CURRENT_TIMESTAMP,
  CreatedUser int DEFAULT '0',
  ModifiedDate datetime DEFAULT CURRENT_TIMESTAMP,
  ModifiedUser int DEFAULT '0',
  RecordStatus int DEFAULT '0',
CONSTRAINT PK_bloodgroup PRIMARY KEY CLUSTERED 
(
	BloodGroupId ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)  ON [PRIMARY]
)  ON [PRIMARY]

CREATE TABLE class (
  ClassId int NOT NULL IDENTITY(1,1),
  ClassCode varchar(10) NOT NULL,
  ClassName varchar(45) NOT NULL,
  Sort varchar(10) DEFAULT NULL,
  CurriculumCode varchar(10) DEFAULT NULL,
  CreatedDate datetime DEFAULT CURRENT_TIMESTAMP,
  CreatedUser int DEFAULT '0',
  ModifiedDate datetime DEFAULT CURRENT_TIMESTAMP,
  ModifiedUser int DEFAULT '0',
  RecordStatus int DEFAULT '0'
CONSTRAINT PK_class PRIMARY KEY CLUSTERED 
(
	ClassId ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)  ON [PRIMARY]
)  ON [PRIMARY]

CREATE TABLE country (
  CountryId int NOT NULL IDENTITY(1,1),
  CountryCode varchar(10) NOT NULL,
  CountryName varchar(50) NOT NULL,
  Nationality varchar(50) NOT NULL,
  CreatedDate datetime DEFAULT CURRENT_TIMESTAMP,
  CreatedUser int DEFAULT '0',
  ModifiedDate datetime DEFAULT CURRENT_TIMESTAMP,
  ModifiedUser int DEFAULT '0',
  RecordStatus int DEFAULT '0'
  CONSTRAINT PK_country PRIMARY KEY CLUSTERED 
(
	CountryId ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)  ON [PRIMARY]
)  ON [PRIMARY]

CREATE TABLE currency (
  CurrencyId int NOT NULL IDENTITY(1,1),
  CurrencyCode varchar(4) NOT NULL,
  CurrencyName varchar(50) NOT NULL,
  BaseCurrency varchar(4) NOT NULL,
  Precisions varchar(4) NOT NULL,
  Stats varchar(10) NOT NULL,
  CreatedDate datetime DEFAULT CURRENT_TIMESTAMP,
  CreatedUser int DEFAULT '0',
  ModifiedDate datetime DEFAULT CURRENT_TIMESTAMP,
  ModifiedUser int DEFAULT '0',
  RecordStatus int DEFAULT '0'
   CONSTRAINT PK_currency PRIMARY KEY CLUSTERED 
(
	CurrencyId ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)  ON [PRIMARY]
)  ON [PRIMARY]

CREATE TABLE currencyrate (
  CurrencyRateId int NOT NULL IDENTITY(1,1),
  CurrencyCode varchar(5) NOT NULL,
  ExchangeRate decimal(6,3) NOT NULL,
  BaseCurrency varchar(5) NOT NULL,
  EffectDate datetime NOT NULL,
  CreatedDate datetime DEFAULT CURRENT_TIMESTAMP,
  CreatedUser int DEFAULT '0',
  ModifiedDate datetime DEFAULT CURRENT_TIMESTAMP,
  ModifiedUser int DEFAULT '0',
  RecordStatus int DEFAULT '0'
   CONSTRAINT PK_currencyrate PRIMARY KEY CLUSTERED 
(
	CurrencyRateId ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)  ON [PRIMARY]
)  ON [PRIMARY]

CREATE TABLE curriculum (
  CurriculumId int NOT NULL IDENTITY(1,1),
  CurriculumCode varchar(10) NOT NULL,
  CurriculumName varchar(45) NOT NULL,
  CreatedDate datetime DEFAULT CURRENT_TIMESTAMP,
  CreatedUser int DEFAULT '0',
  ModifiedDate datetime DEFAULT CURRENT_TIMESTAMP,
  ModifiedUser int DEFAULT '0',
  RecordStatus int DEFAULT '0'
   CONSTRAINT PK_curriculum PRIMARY KEY CLUSTERED 
(
	CurriculumId ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)  ON [PRIMARY]
)  ON [PRIMARY]

CREATE TABLE department (
  DepartmentId int NOT NULL IDENTITY(1,1),
  DepartmentCode varchar(10) NOT NULL,
  DepartmentName varchar(45) NOT NULL,
  CreatedDate datetime DEFAULT CURRENT_TIMESTAMP,
  CreatedUser int DEFAULT '0',
  ModifiedDate datetime DEFAULT CURRENT_TIMESTAMP,
  ModifiedUser int DEFAULT '0',
  RecordStatus int DEFAULT '0'
   CONSTRAINT PK_department PRIMARY KEY CLUSTERED 
(
	DepartmentId ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)  ON [PRIMARY]
)  ON [PRIMARY]

CREATE TABLE designation (
  DesignationId int NOT NULL IDENTITY(1,1),
  DesignationCode varchar(10) NOT NULL,
  DesignationName varchar(45) NOT NULL,
  CreatedDate datetime DEFAULT CURRENT_TIMESTAMP,
  CreatedUser int DEFAULT '0',
  ModifiedDate datetime DEFAULT CURRENT_TIMESTAMP,
  ModifiedUser int DEFAULT '0',
  RecordStatus int DEFAULT '0'
   CONSTRAINT PK_designation PRIMARY KEY CLUSTERED 
(
	DesignationId ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)  ON [PRIMARY]
)  ON [PRIMARY]

CREATE TABLE division (
  DivisionId int NOT NULL IDENTITY(1,1),
  DivisionCode varchar(10) NOT NULL,
  DivisionName varchar(45) NOT NULL,
  ClassCode varchar(10) DEFAULT NULL,
  Stats varchar(10) DEFAULT NULL,
  CreatedDate datetime DEFAULT CURRENT_TIMESTAMP,
  CreatedUser int DEFAULT '0',
  ModifiedDate datetime DEFAULT CURRENT_TIMESTAMP,
  ModifiedUser int DEFAULT '0',
  RecordStatus int DEFAULT '0'
   CONSTRAINT PK_division PRIMARY KEY CLUSTERED 
(
	DivisionId ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)  ON [PRIMARY]
)  ON [PRIMARY]

CREATE TABLE module (
  ModuleId int NOT NULL IDENTITY(1,1),
  ModuleCode varchar(10) NOT NULL,
  ModuleName varchar(45) NOT NULL,
  CreatedDate datetime DEFAULT CURRENT_TIMESTAMP,
  CreatedUser int DEFAULT '0',
  ModifiedDate datetime DEFAULT CURRENT_TIMESTAMP,
  ModifiedUser int DEFAULT '0',
  RecordStatus int DEFAULT '0'
   CONSTRAINT PK_module PRIMARY KEY CLUSTERED 
(
	ModuleId ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)  ON [PRIMARY]
)  ON [PRIMARY]

CREATE TABLE modulecontrol (
  ModuleControlId int NOT NULL IDENTITY(1,1),
  ModuleCode varchar(10) NOT NULL,
  [From] datetime NOT NULL,
  [TO] datetime NOT NULL,
  BackDate int NOT NULL,
  FutureDate int NOT NULL,
  Stats int NOT NULL,
  CreatedDate datetime DEFAULT CURRENT_TIMESTAMP,
  CreatedUser int DEFAULT '0',
  ModifiedDate datetime DEFAULT CURRENT_TIMESTAMP,
  ModifiedUser int DEFAULT '0',
  RecordStatus int DEFAULT '0'
   CONSTRAINT PK_modulecontrol PRIMARY KEY CLUSTERED 
(
	ModuleControlId ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)  ON [PRIMARY]
)  ON [PRIMARY]

CREATE TABLE parent (
  ParentId int NOT NULL IDENTITY(1,1),
  ParentName varchar(45) NOT NULL,
  DOB datetime DEFAULT NULL,
  POB varchar(45) DEFAULT '',
  Address1 varchar(200) DEFAULT '',
  Address2 varchar(200) DEFAULT '',
  Country varchar(45) DEFAULT '',
  MotherTongue varchar(45) DEFAULT '',
  BloodGroup varchar(2) DEFAULT '',
  CreatedDate datetime DEFAULT CURRENT_TIMESTAMP,
  CreatedUser int DEFAULT '0',
  ModifiedDate datetime DEFAULT CURRENT_TIMESTAMP,
  ModifiedUser int DEFAULT '0',
  RecordStatus int DEFAULT '0'
   CONSTRAINT PK_parent PRIMARY KEY CLUSTERED 
(
	ParentId ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)  ON [PRIMARY]
)  ON [PRIMARY]

CREATE TABLE relation (
  RelationId int NOT NULL IDENTITY(1,1),
  RelationCode varchar(10) NOT NULL,
  RelationName varchar(45) NOT NULL,
  CreatedDate datetime DEFAULT CURRENT_TIMESTAMP,
  CreatedUser int DEFAULT '0',
  ModifiedDate datetime DEFAULT CURRENT_TIMESTAMP,
  ModifiedUser int DEFAULT '0',
  RecordStatus int DEFAULT '0'
   CONSTRAINT PK_relation PRIMARY KEY CLUSTERED 
(
	RelationId ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)  ON [PRIMARY]
)  ON [PRIMARY]

CREATE TABLE section (
  SectionId int NOT NULL IDENTITY(1,1),
  SectionCode varchar(10) NOT NULL,
  SectionName varchar(45) NOT NULL,
  CreatedDate datetime DEFAULT CURRENT_TIMESTAMP,
  CreatedUser int DEFAULT '0',
  ModifiedDate datetime DEFAULT CURRENT_TIMESTAMP,
  ModifiedUser int DEFAULT '0',
  RecordStatus int DEFAULT '0'
   CONSTRAINT PK_section PRIMARY KEY CLUSTERED 
(
	SectionId ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)  ON [PRIMARY]
)  ON [PRIMARY]

CREATE TABLE [state] (
  StateId int NOT NULL IDENTITY(1,1),
  StateCode varchar(10) NOT NULL,
  StateName varchar(45) NOT NULL,
  CountryCode varchar(10) NOT NULL,
  CreatedDate datetime DEFAULT CURRENT_TIMESTAMP,
  CreatedUser int DEFAULT '0',
  ModifiedDate datetime DEFAULT CURRENT_TIMESTAMP,
  ModifiedUser int DEFAULT '0',
  RecordStatus int DEFAULT '0' 
  CONSTRAINT PK_state PRIMARY KEY CLUSTERED 
(
	StateId ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)  ON [PRIMARY]
)  ON [PRIMARY]

CREATE TABLE student (
  StudentId int NOT NULL IDENTITY(1,1),
  AdmissionNo varchar(10) NOT NULL,
  FirstName varchar(45) NOT NULL,
  MiddleName varchar(45) DEFAULT '',
  LastName varchar(45) DEFAULT '',
  Gender varchar(10) NOT NULL,
  MotherID int DEFAULT '0',
  FatherID int DEFAULT '0',
  GuardianID int DEFAULT '0',
  POB varchar(45) DEFAULT '',
  DOB datetime NOT NULL,
  Address1 varchar(200) DEFAULT '',
  Address2 varchar(200) DEFAULT '',
  State varchar(45) DEFAULT '',
  CountryCode varchar(4) DEFAULT '',
  MotherTongue varchar(45) DEFAULT '',
  BloodGroupCode varchar(4) DEFAULT '',
  Stats varchar(10) NOT NULL,
  CreatedDate datetime DEFAULT CURRENT_TIMESTAMP,
  CreatedUser int DEFAULT '0',
  ModifiedDate datetime DEFAULT CURRENT_TIMESTAMP,
  ModifiedUser int DEFAULT '0',
  RecordStatus int DEFAULT '0'
   CONSTRAINT PK_student PRIMARY KEY CLUSTERED 
(
	StudentId ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)  ON [PRIMARY]
)  ON [PRIMARY]

CREATE TABLE userdetails (
  UserDetailsId int  NOT NULL IDENTITY(1,1),
  UserId int NOT NULL,
  DateFrom datetime DEFAULT CURRENT_TIMESTAMP,
  DateTill datetime DEFAULT CURRENT_TIMESTAMP,
  UserDeptId int DEFAULT '0',
  DesignationId int DEFAULT '0',
  GroupId int DEFAULT '0',
  CreatedDate datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CreatedUser int DEFAULT '0',
  ModifiedDate datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  ModifiedUser int DEFAULT '0',
  RecordStatus int DEFAULT '0'
   CONSTRAINT PK_userdetails PRIMARY KEY CLUSTERED 
(
	UserDetailsId ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)  ON [PRIMARY]
)  ON [PRIMARY]

CREATE TABLE users (
  UserId int  NOT NULL IDENTITY(1,1),
  UserName varchar(100) NOT NULL,
  UserLoginId varchar(45) NOT NULL,
  UserPassword varchar(45) NOT NULL,
  UserGrade varchar(3) NOT NULL,
  LocationId varchar(20) DEFAULT NULL,
  Email varchar(100) DEFAULT NULL,
  Mobile varchar(15) DEFAULT NULL,
  CreatedDate datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CreatedUser int DEFAULT '0',
  ModifiedDate datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  ModifiedUser int DEFAULT '0',
  RecordStatus int NOT NULL DEFAULT '0'
   CONSTRAINT PK_users PRIMARY KEY CLUSTERED 
(
	UserId ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)  ON [PRIMARY]
)  ON [PRIMARY]