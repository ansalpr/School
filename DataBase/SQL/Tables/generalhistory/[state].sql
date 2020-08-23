USE [generalhistory]
GO

ALTER TABLE [dbo].[state] DROP CONSTRAINT [DF__state__RecordSta__4D94879B]
GO

ALTER TABLE [dbo].[state] DROP CONSTRAINT [DF__state__ModifiedU__4CA06362]
GO

ALTER TABLE [dbo].[state] DROP CONSTRAINT [DF__state__ModifiedD__4BAC3F29]
GO

ALTER TABLE [dbo].[state] DROP CONSTRAINT [DF__state__CreatedUs__4AB81AF0]
GO

ALTER TABLE [dbo].[state] DROP CONSTRAINT [DF__state__CreatedDa__49C3F6B7]
GO

/****** Object:  Table [dbo].[state]    Script Date: 23-08-2020 08:24:55 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[state]') AND type in (N'U'))
DROP TABLE [dbo].[state]
GO

/****** Object:  Table [dbo].[state]    Script Date: 23-08-2020 08:24:55 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[state](
	[StateId] [int] NOT NULL,
	[StateCode] [varchar](10) NOT NULL,
	[StateName] [varchar](45) NOT NULL,
	[CountryCode] [varchar](10) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUser] [int] NULL,
	[RecordStatus] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[state] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO

ALTER TABLE [dbo].[state] ADD  DEFAULT ('0') FOR [CreatedUser]
GO

ALTER TABLE [dbo].[state] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO

ALTER TABLE [dbo].[state] ADD  DEFAULT ('0') FOR [ModifiedUser]
GO

ALTER TABLE [dbo].[state] ADD  DEFAULT ('0') FOR [RecordStatus]
GO


