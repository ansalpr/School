USE [generalhistory]
GO

ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__RecordSta__4222D4EF]
GO

ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__ModifiedU__412EB0B6]
GO

ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__ModifiedD__403A8C7D]
GO

ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__CreatedUs__3F466844]
GO

ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__CreatedDa__3E52440B]
GO

ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__Mobile__3D5E1FD2]
GO

ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__Email__3C69FB99]
GO

ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__LocationI__3B75D760]
GO

/****** Object:  Table [dbo].[users]    Script Date: 23-08-2020 08:25:38 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[users]') AND type in (N'U'))
DROP TABLE [dbo].[users]
GO

/****** Object:  Table [dbo].[users]    Script Date: 23-08-2020 08:25:38 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[users](
	[UserId] [int] NOT NULL,
	[UserName] [varchar](100) NOT NULL,
	[UserLoginId] [varchar](45) NOT NULL,
	[UserPassword] [varchar](45) NOT NULL,
	[UserGrade] [varchar](3) NOT NULL,
	[LocationId] [varchar](20) NULL,
	[Email] [varchar](100) NULL,
	[Mobile] [varchar](15) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedUser] [int] NULL,
	[RecordStatus] [int] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [LocationId]
GO

ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [Email]
GO

ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [Mobile]
GO

ALTER TABLE [dbo].[users] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO

ALTER TABLE [dbo].[users] ADD  DEFAULT ('0') FOR [CreatedUser]
GO

ALTER TABLE [dbo].[users] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO

ALTER TABLE [dbo].[users] ADD  DEFAULT ('0') FOR [ModifiedUser]
GO

ALTER TABLE [dbo].[users] ADD  DEFAULT ('0') FOR [RecordStatus]
GO


