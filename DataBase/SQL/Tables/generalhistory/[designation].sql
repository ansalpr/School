USE [generalhistory]
GO

ALTER TABLE [dbo].[designation] DROP CONSTRAINT [DF__designati__Recor__6477ECF3]
GO

ALTER TABLE [dbo].[designation] DROP CONSTRAINT [DF__designati__Modif__6383C8BA]
GO

ALTER TABLE [dbo].[designation] DROP CONSTRAINT [DF__designati__Modif__628FA481]
GO

ALTER TABLE [dbo].[designation] DROP CONSTRAINT [DF__designati__Creat__619B8048]
GO

ALTER TABLE [dbo].[designation] DROP CONSTRAINT [DF__designati__Creat__60A75C0F]
GO

/****** Object:  Table [dbo].[designation]    Script Date: 23-08-2020 08:23:33 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[designation]') AND type in (N'U'))
DROP TABLE [dbo].[designation]
GO

/****** Object:  Table [dbo].[designation]    Script Date: 23-08-2020 08:23:33 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[designation](
	[DesignationId] [int] NOT NULL,
	[DesignationCode] [varchar](10) NOT NULL,
	[DesignationName] [varchar](45) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUser] [int] NULL,
	[RecordStatus] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[designation] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO

ALTER TABLE [dbo].[designation] ADD  DEFAULT ('0') FOR [CreatedUser]
GO

ALTER TABLE [dbo].[designation] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO

ALTER TABLE [dbo].[designation] ADD  DEFAULT ('0') FOR [ModifiedUser]
GO

ALTER TABLE [dbo].[designation] ADD  DEFAULT ('0') FOR [RecordStatus]
GO


