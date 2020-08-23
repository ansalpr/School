USE [generaldb]
GO

ALTER TABLE [dbo].[menu] DROP CONSTRAINT [DF_menu_RecordStatus]
GO

ALTER TABLE [dbo].[menu] DROP CONSTRAINT [DF_menu_ModifiedUser]
GO

ALTER TABLE [dbo].[menu] DROP CONSTRAINT [DF_menu_ModifiedDate]
GO

ALTER TABLE [dbo].[menu] DROP CONSTRAINT [DF_menu_CreatedUser]
GO

ALTER TABLE [dbo].[menu] DROP CONSTRAINT [DF_menu_CreatedDate]
GO

ALTER TABLE [dbo].[menu] DROP CONSTRAINT [DF_menu_ModuleCode]
GO

/****** Object:  Table [dbo].[menu]    Script Date: 23-08-2020 08:17:25 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[menu]') AND type in (N'U'))
DROP TABLE [dbo].[menu]
GO

/****** Object:  Table [dbo].[menu]    Script Date: 23-08-2020 08:17:25 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[menu](
	[MenuId] [int] NOT NULL,
	[MenuCode] [varchar](10) NOT NULL,
	[MenuName] [varchar](50) NOT NULL,
	[Path] [varchar](200) NOT NULL,
	[ModuleCode] [varchar](10) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedUser] [int] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUser] [int] NULL,
	[RecordStatus] [int] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[menu] ADD  CONSTRAINT [DF_menu_ModuleCode]  DEFAULT ('') FOR [ModuleCode]
GO

ALTER TABLE [dbo].[menu] ADD  CONSTRAINT [DF_menu_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO

ALTER TABLE [dbo].[menu] ADD  CONSTRAINT [DF_menu_CreatedUser]  DEFAULT ((0)) FOR [CreatedUser]
GO

ALTER TABLE [dbo].[menu] ADD  CONSTRAINT [DF_menu_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO

ALTER TABLE [dbo].[menu] ADD  CONSTRAINT [DF_menu_ModifiedUser]  DEFAULT ((0)) FOR [ModifiedUser]
GO

ALTER TABLE [dbo].[menu] ADD  CONSTRAINT [DF_menu_RecordStatus]  DEFAULT ((0)) FOR [RecordStatus]
GO


