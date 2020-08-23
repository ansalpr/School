USE [generalhistory]
GO

ALTER TABLE [dbo].[modulecontrol] DROP CONSTRAINT [DF__modulecon__Recor__6FE99F9F]
GO

ALTER TABLE [dbo].[modulecontrol] DROP CONSTRAINT [DF__modulecon__Modif__6EF57B66]
GO

ALTER TABLE [dbo].[modulecontrol] DROP CONSTRAINT [DF__modulecon__Modif__6E01572D]
GO

ALTER TABLE [dbo].[modulecontrol] DROP CONSTRAINT [DF__modulecon__Creat__6D0D32F4]
GO

ALTER TABLE [dbo].[modulecontrol] DROP CONSTRAINT [DF__modulecon__Creat__6C190EBB]
GO

/****** Object:  Table [dbo].[modulecontrol]    Script Date: 23-08-2020 08:24:11 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[modulecontrol]') AND type in (N'U'))
DROP TABLE [dbo].[modulecontrol]
GO

/****** Object:  Table [dbo].[modulecontrol]    Script Date: 23-08-2020 08:24:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[modulecontrol](
	[ModuleControlId] [int] NOT NULL,
	[ModuleCode] [varchar](10) NOT NULL,
	[From] [datetime] NOT NULL,
	[TO] [datetime] NOT NULL,
	[BackDate] [int] NOT NULL,
	[FutureDate] [int] NOT NULL,
	[Stats] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUser] [int] NULL,
	[RecordStatus] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[modulecontrol] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO

ALTER TABLE [dbo].[modulecontrol] ADD  DEFAULT ('0') FOR [CreatedUser]
GO

ALTER TABLE [dbo].[modulecontrol] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO

ALTER TABLE [dbo].[modulecontrol] ADD  DEFAULT ('0') FOR [ModifiedUser]
GO

ALTER TABLE [dbo].[modulecontrol] ADD  DEFAULT ('0') FOR [RecordStatus]
GO


