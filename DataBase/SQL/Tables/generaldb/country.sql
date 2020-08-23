USE [generaldb]
GO

ALTER TABLE [dbo].[country] DROP CONSTRAINT [DF__country__RecordS__403A8C7D]
GO

ALTER TABLE [dbo].[country] DROP CONSTRAINT [DF__country__Modifie__3F466844]
GO

ALTER TABLE [dbo].[country] DROP CONSTRAINT [DF__country__Modifie__3E52440B]
GO

ALTER TABLE [dbo].[country] DROP CONSTRAINT [DF__country__Created__3D5E1FD2]
GO

ALTER TABLE [dbo].[country] DROP CONSTRAINT [DF__country__Created__3C69FB99]
GO

/****** Object:  Table [dbo].[country]    Script Date: 23-08-2020 08:15:28 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[country]') AND type in (N'U'))
DROP TABLE [dbo].[country]
GO

/****** Object:  Table [dbo].[country]    Script Date: 23-08-2020 08:15:28 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[country](
	[CountryId] [int] IDENTITY(1,1) NOT NULL,
	[CountryCode] [varchar](10) NOT NULL,
	[CountryName] [varchar](50) NOT NULL,
	[Nationality] [varchar](50) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUser] [int] NULL,
	[RecordStatus] [int] NULL,
	[Alpha3Code] [varchar](4) NULL,
	[UNCOde] [varchar](4) NULL,
 CONSTRAINT [PK_country] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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


