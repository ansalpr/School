USE [generalhistory]
GO

ALTER TABLE [dbo].[section] DROP CONSTRAINT [DF__section__RecordS__5EBF139D]
GO

ALTER TABLE [dbo].[section] DROP CONSTRAINT [DF__section__Modifie__5DCAEF64]
GO

ALTER TABLE [dbo].[section] DROP CONSTRAINT [DF__section__Modifie__5CD6CB2B]
GO

ALTER TABLE [dbo].[section] DROP CONSTRAINT [DF__section__Created__5BE2A6F2]
GO

ALTER TABLE [dbo].[section] DROP CONSTRAINT [DF__section__Created__5AEE82B9]
GO

/****** Object:  Table [dbo].[section]    Script Date: 23-08-2020 08:24:43 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[section]') AND type in (N'U'))
DROP TABLE [dbo].[section]
GO

/****** Object:  Table [dbo].[section]    Script Date: 23-08-2020 08:24:43 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[section](
	[SectionId] [int] NOT NULL,
	[SectionCode] [varchar](10) NOT NULL,
	[SectionName] [varchar](45) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUser] [int] NULL,
	[RecordStatus] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[section] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO

ALTER TABLE [dbo].[section] ADD  DEFAULT ('0') FOR [CreatedUser]
GO

ALTER TABLE [dbo].[section] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO

ALTER TABLE [dbo].[section] ADD  DEFAULT ('0') FOR [ModifiedUser]
GO

ALTER TABLE [dbo].[section] ADD  DEFAULT ('0') FOR [RecordStatus]
GO


