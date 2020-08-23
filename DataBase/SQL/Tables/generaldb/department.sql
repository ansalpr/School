USE [generaldb]
GO

/****** Object:  Table [dbo].[department]    Script Date: 23-08-2020 08:16:38 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[department](
	[DepartmentId] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentCode] [varchar](10) NOT NULL,
	[DepartmentName] [varchar](45) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUser] [int] NULL,
	[RecordStatus] [int] NULL,
 CONSTRAINT [PK_department] PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[department] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO

ALTER TABLE [dbo].[department] ADD  DEFAULT ('0') FOR [CreatedUser]
GO

ALTER TABLE [dbo].[department] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO

ALTER TABLE [dbo].[department] ADD  DEFAULT ('0') FOR [ModifiedUser]
GO

ALTER TABLE [dbo].[department] ADD  DEFAULT ('0') FOR [RecordStatus]
GO


