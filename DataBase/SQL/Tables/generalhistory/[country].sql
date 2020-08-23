USE [generalhistory]
GO

ALTER TABLE [dbo].[country] DROP CONSTRAINT [DF__country__RecordS__398D8EEE]
GO

ALTER TABLE [dbo].[country] DROP CONSTRAINT [DF__country__Modifie__38996AB5]
GO

ALTER TABLE [dbo].[country] DROP CONSTRAINT [DF__country__Modifie__37A5467C]
GO

ALTER TABLE [dbo].[country] DROP CONSTRAINT [DF__country__Created__36B12243]
GO

ALTER TABLE [dbo].[country] DROP CONSTRAINT [DF__country__Created__35BCFE0A]
GO

/****** Object:  Table [dbo].[country]    Script Date: 23-08-2020 08:22:34 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[country]') AND type in (N'U'))
DROP TABLE [dbo].[country]
GO

/****** Object:  Table [dbo].[country]    Script Date: 23-08-2020 08:22:34 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[country](
	[CountryId] [int] NOT NULL,
	[CountryCode] [varchar](10) NOT NULL,
	[CountryName] [varchar](50) NOT NULL,
	[Nationality] [varchar](50) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUser] [int] NULL,
	[RecordStatus] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[country] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO

ALTER TABLE [dbo].[country] ADD  DEFAULT ('0') FOR [CreatedUser]
GO

ALTER TABLE [dbo].[country] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO

ALTER TABLE [dbo].[country] ADD  DEFAULT ('0') FOR [ModifiedUser]
GO

ALTER TABLE [dbo].[country] ADD  DEFAULT ('0') FOR [RecordStatus]
GO


