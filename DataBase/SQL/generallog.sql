
CREATE TABLE errorlog (
  Id int  NOT NULL IDENTITY(1,1),
  Remarks nvarchar(MAX) NOT NULL,
  MethodName varchar(50) NOT NULL,
  ClassName varchar(45) NOT NULL,
  TUI varchar(50) DEFAULT NULL,
  IP varchar(15) DEFAULT NULL,
  CreatedDate datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
  CONSTRAINT PK_bloodgroup PRIMARY KEY CLUSTERED 
(
	Id ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)  ON [PRIMARY]
)  ON [PRIMARY]
CREATE TABLE requestlog (
  Id int  NOT NULL IDENTITY(1,1),
  Request nvarchar(MAX) NOT NULL,
  Response nvarchar(MAX) NOT NULL,
  WorkFlow varchar(50) NOT NULL,
  MethodName varchar(50) NOT NULL,
  ClassName varchar(45) NOT NULL,
  TUI varchar(50) DEFAULT NULL,
  IP varchar(15) DEFAULT NULL,
  CreatedDate datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
  CONSTRAINT PK_requestlog PRIMARY KEY CLUSTERED 
(
	Id ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)  ON [PRIMARY]
)  ON [PRIMARY]
CREATE TABLE eventlog (
  Id int  NOT NULL IDENTITY(1,1),
  Remarks nvarchar(MAX) NOT NULL,
  MethodName varchar(50) NOT NULL,
  ClassName varchar(45) NOT NULL,
  TUI varchar(50) DEFAULT NULL,
  IP varchar(15) DEFAULT NULL,
  CreatedDate datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
  CONSTRAINT PK_eventlog PRIMARY KEY CLUSTERED 
(
	Id ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)  ON [PRIMARY]
)  ON [PRIMARY]



