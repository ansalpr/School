USE [generalhistory]
GO

ALTER TABLE [dbo].[module] DROP CONSTRAINT [DF__module__RecordSt__6A30C649]
GO

ALTER TABLE [dbo].[module] DROP CONSTRAINT [DF__module__Modified__693CA210]
GO

ALTER TABLE [dbo].[module] DROP CONSTRAINT [DF__module__Modified__68487DD7]
GO

ALTER TABLE [dbo].[module] DROP CONSTRAINT [DF__module__CreatedU__6754599E]
GO

ALTER TABLE [dbo].[module] DROP CONSTRAINT [DF__module__CreatedD__66603565]
GO

/****** Object:  Table [dbo].[module]    Script Date: 23-08-2020 08:23:52 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[module]') AND type in (N'U'))
DROP TABLE [dbo].[module]
GO

/****** Object:  Table [dbo].[module]    Script Date: 23-08-2020 08:23:52 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[module](
	[ModuleId] [int] NOT NULL,
	[ModuleCode] [varchar](10) NOT NULL,
	[ModuleName] [varchar](45) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUser] [int] NULL,
	[RecordStatus] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[module] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO

ALTER TABLE [dbo].[module] ADD  DEFAULT ('0') FOR [CreatedUser]
GO

ALTER TABLE [dbo].[module] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO

ALTER TABLE [dbo].[module] ADD  DEFAULT ('0') FOR [ModifiedUser]
GO

ALTER TABLE [dbo].[module] ADD  DEFAULT ('0') FOR [RecordStatus]
GO


