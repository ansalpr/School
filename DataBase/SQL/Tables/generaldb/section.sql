USE [generaldb]
GO

ALTER TABLE [dbo].[section] DROP CONSTRAINT [DF__section__RecordS__123EB7A3]
GO

ALTER TABLE [dbo].[section] DROP CONSTRAINT [DF__section__Modifie__114A936A]
GO

ALTER TABLE [dbo].[section] DROP CONSTRAINT [DF__section__Modifie__10566F31]
GO

ALTER TABLE [dbo].[section] DROP CONSTRAINT [DF__section__Created__0F624AF8]
GO

ALTER TABLE [dbo].[section] DROP CONSTRAINT [DF__section__Created__0E6E26BF]
GO

/****** Object:  Table [dbo].[section]    Script Date: 23-08-2020 08:18:36 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[section]') AND type in (N'U'))
DROP TABLE [dbo].[section]
GO

/****** Object:  Table [dbo].[section]    Script Date: 23-08-2020 08:18:36 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[section](
	[SectionId] [int] IDENTITY(1,1) NOT NULL,
	[SectionCode] [varchar](10) NOT NULL,
	[SectionName] [varchar](45) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUser] [int] NULL,
	[RecordStatus] [int] NULL,
 CONSTRAINT [PK_section] PRIMARY KEY CLUSTERED 
(
	[SectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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


