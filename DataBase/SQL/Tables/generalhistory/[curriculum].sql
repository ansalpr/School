USE [generalhistory]
GO

ALTER TABLE [dbo].[curriculum] DROP CONSTRAINT [DF__curriculu__Recor__2E1BDC42]
GO

ALTER TABLE [dbo].[curriculum] DROP CONSTRAINT [DF__curriculu__Modif__2D27B809]
GO

ALTER TABLE [dbo].[curriculum] DROP CONSTRAINT [DF__curriculu__Modif__2C3393D0]
GO

ALTER TABLE [dbo].[curriculum] DROP CONSTRAINT [DF__curriculu__Creat__2B3F6F97]
GO

ALTER TABLE [dbo].[curriculum] DROP CONSTRAINT [DF__curriculu__Creat__2A4B4B5E]
GO

/****** Object:  Table [dbo].[curriculum]    Script Date: 23-08-2020 08:23:11 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[curriculum]') AND type in (N'U'))
DROP TABLE [dbo].[curriculum]
GO

/****** Object:  Table [dbo].[curriculum]    Script Date: 23-08-2020 08:23:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[curriculum](
	[CurriculumId] [int] NOT NULL,
	[CurriculumCode] [varchar](10) NOT NULL,
	[CurriculumName] [varchar](45) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUser] [int] NULL,
	[RecordStatus] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[curriculum] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO

ALTER TABLE [dbo].[curriculum] ADD  DEFAULT ('0') FOR [CreatedUser]
GO

ALTER TABLE [dbo].[curriculum] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO

ALTER TABLE [dbo].[curriculum] ADD  DEFAULT ('0') FOR [ModifiedUser]
GO

ALTER TABLE [dbo].[curriculum] ADD  DEFAULT ('0') FOR [RecordStatus]
GO


