USE [generaldb]
GO

ALTER TABLE [dbo].[currencyrate] DROP CONSTRAINT [DF__currencyr__Recor__4D94879B]
GO

ALTER TABLE [dbo].[currencyrate] DROP CONSTRAINT [DF__currencyr__Modif__4CA06362]
GO

ALTER TABLE [dbo].[currencyrate] DROP CONSTRAINT [DF__currencyr__Modif__4BAC3F29]
GO

ALTER TABLE [dbo].[currencyrate] DROP CONSTRAINT [DF__currencyr__Creat__4AB81AF0]
GO

ALTER TABLE [dbo].[currencyrate] DROP CONSTRAINT [DF__currencyr__Creat__49C3F6B7]
GO

/****** Object:  Table [dbo].[currencyrate]    Script Date: 23-08-2020 08:16:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[currencyrate]') AND type in (N'U'))
DROP TABLE [dbo].[currencyrate]
GO

/****** Object:  Table [dbo].[currencyrate]    Script Date: 23-08-2020 08:16:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[currencyrate](
	[CurrencyRateId] [int] IDENTITY(1,1) NOT NULL,
	[CurrencyCode] [varchar](5) NOT NULL,
	[ExchangeRate] [decimal](6, 3) NOT NULL,
	[BaseCurrency] [varchar](5) NOT NULL,
	[EffectDate] [datetime] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUser] [int] NULL,
	[RecordStatus] [int] NULL,
 CONSTRAINT [PK_currencyrate] PRIMARY KEY CLUSTERED 
(
	[CurrencyRateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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


