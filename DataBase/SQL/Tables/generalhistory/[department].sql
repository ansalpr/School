USE [generalhistory]
GO

ALTER TABLE [dbo].[department] DROP CONSTRAINT [DF__departmen__Recor__286302EC]
GO

ALTER TABLE [dbo].[department] DROP CONSTRAINT [DF__departmen__Modif__276EDEB3]
GO

ALTER TABLE [dbo].[department] DROP CONSTRAINT [DF__departmen__Modif__267ABA7A]
GO

ALTER TABLE [dbo].[department] DROP CONSTRAINT [DF__departmen__Creat__25869641]
GO

ALTER TABLE [dbo].[department] DROP CONSTRAINT [DF__departmen__Creat__24927208]
GO

/****** Object:  Table [dbo].[department]    Script Date: 23-08-2020 08:23:23 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[department]') AND type in (N'U'))
DROP TABLE [dbo].[department]
GO

/****** Object:  Table [dbo].[department]    Script Date: 23-08-2020 08:23:23 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[department](
	[DepartmentId] [int] NOT NULL,
	[DepartmentCode] [varchar](10) NOT NULL,
	[DepartmentName] [varchar](45) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUser] [int] NULL,
	[RecordStatus] [int] NULL
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


