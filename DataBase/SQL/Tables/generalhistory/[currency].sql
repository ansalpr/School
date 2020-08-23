USE [generalhistory]
GO

ALTER TABLE [dbo].[currency] DROP CONSTRAINT [DF__currency__Record__33D4B598]
GO

ALTER TABLE [dbo].[currency] DROP CONSTRAINT [DF__currency__Modifi__32E0915F]
GO

ALTER TABLE [dbo].[currency] DROP CONSTRAINT [DF__currency__Modifi__31EC6D26]
GO

ALTER TABLE [dbo].[currency] DROP CONSTRAINT [DF__currency__Create__30F848ED]
GO

ALTER TABLE [dbo].[currency] DROP CONSTRAINT [DF__currency__Create__300424B4]
GO

/****** Object:  Table [dbo].[currency]    Script Date: 23-08-2020 08:22:46 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[currency]') AND type in (N'U'))
DROP TABLE [dbo].[currency]
GO

/****** Object:  Table [dbo].[currency]    Script Date: 23-08-2020 08:22:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[currency](
	[CurrencyId] [int] NOT NULL,
	[CurrencyCode] [varchar](4) NOT NULL,
	[CurrencyName] [varchar](50) NOT NULL,
	[BaseCurrency] [varchar](4) NOT NULL,
	[Precisions] [varchar](4) NOT NULL,
	[Stats] [varchar](10) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUser] [int] NULL,
	[RecordStatus] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[currency] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO

ALTER TABLE [dbo].[currency] ADD  DEFAULT ('0') FOR [CreatedUser]
GO

ALTER TABLE [dbo].[currency] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO

ALTER TABLE [dbo].[currency] ADD  DEFAULT ('0') FOR [ModifiedUser]
GO

ALTER TABLE [dbo].[currency] ADD  DEFAULT ('0') FOR [RecordStatus]
GO


