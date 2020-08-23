USE [generalhistory]
GO

ALTER TABLE [dbo].[currencyrate] DROP CONSTRAINT [DF__currencyr__Recor__47DBAE45]
GO

ALTER TABLE [dbo].[currencyrate] DROP CONSTRAINT [DF__currencyr__Modif__46E78A0C]
GO

ALTER TABLE [dbo].[currencyrate] DROP CONSTRAINT [DF__currencyr__Modif__45F365D3]
GO

ALTER TABLE [dbo].[currencyrate] DROP CONSTRAINT [DF__currencyr__Creat__44FF419A]
GO

ALTER TABLE [dbo].[currencyrate] DROP CONSTRAINT [DF__currencyr__Creat__440B1D61]
GO

/****** Object:  Table [dbo].[currencyrate]    Script Date: 23-08-2020 08:23:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[currencyrate]') AND type in (N'U'))
DROP TABLE [dbo].[currencyrate]
GO

/****** Object:  Table [dbo].[currencyrate]    Script Date: 23-08-2020 08:23:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[currencyrate](
	[CurrencyRateId] [int] NOT NULL,
	[CurrencyCode] [varchar](5) NOT NULL,
	[ExchangeRate] [decimal](6, 3) NOT NULL,
	[BaseCurrency] [varchar](5) NOT NULL,
	[EffectDate] [datetime] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUser] [int] NULL,
	[RecordStatus] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[currencyrate] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO

ALTER TABLE [dbo].[currencyrate] ADD  DEFAULT ('0') FOR [CreatedUser]
GO

ALTER TABLE [dbo].[currencyrate] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO

ALTER TABLE [dbo].[currencyrate] ADD  DEFAULT ('0') FOR [ModifiedUser]
GO

ALTER TABLE [dbo].[currencyrate] ADD  DEFAULT ('0') FOR [RecordStatus]
GO


