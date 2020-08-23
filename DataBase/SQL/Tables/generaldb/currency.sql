USE [generaldb]
GO

ALTER TABLE [dbo].[currency] DROP CONSTRAINT [DF__currency__Record__46E78A0C]
GO

ALTER TABLE [dbo].[currency] DROP CONSTRAINT [DF__currency__Modifi__45F365D3]
GO

ALTER TABLE [dbo].[currency] DROP CONSTRAINT [DF__currency__Modifi__44FF419A]
GO

ALTER TABLE [dbo].[currency] DROP CONSTRAINT [DF__currency__Create__440B1D61]
GO

ALTER TABLE [dbo].[currency] DROP CONSTRAINT [DF__currency__Create__4316F928]
GO

/****** Object:  Table [dbo].[currency]    Script Date: 23-08-2020 08:15:43 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[currency]') AND type in (N'U'))
DROP TABLE [dbo].[currency]
GO

/****** Object:  Table [dbo].[currency]    Script Date: 23-08-2020 08:15:43 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[currency](
	[CurrencyId] [int] IDENTITY(1,1) NOT NULL,
	[CurrencyCode] [varchar](4) NOT NULL,
	[CurrencyName] [varchar](50) NOT NULL,
	[BaseCurrency] [varchar](4) NOT NULL,
	[Precisions] [varchar](4) NOT NULL,
	[Stats] [varchar](10) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUser] [int] NULL,
	[RecordStatus] [int] NULL,
 CONSTRAINT [PK_currency] PRIMARY KEY CLUSTERED 
(
	[CurrencyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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


