USE [generaldb]
GO

ALTER TABLE [dbo].[division] DROP CONSTRAINT [DF__division__Record__6A30C649]
GO

ALTER TABLE [dbo].[division] DROP CONSTRAINT [DF__division__Modifi__693CA210]
GO

ALTER TABLE [dbo].[division] DROP CONSTRAINT [DF__division__Modifi__68487DD7]
GO

ALTER TABLE [dbo].[division] DROP CONSTRAINT [DF__division__Create__6754599E]
GO

ALTER TABLE [dbo].[division] DROP CONSTRAINT [DF__division__Create__66603565]
GO

ALTER TABLE [dbo].[division] DROP CONSTRAINT [DF__division__Stats__656C112C]
GO

ALTER TABLE [dbo].[division] DROP CONSTRAINT [DF__division__ClassC__6477ECF3]
GO

/****** Object:  Table [dbo].[division]    Script Date: 23-08-2020 08:17:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[division]') AND type in (N'U'))
DROP TABLE [dbo].[division]
GO

/****** Object:  Table [dbo].[division]    Script Date: 23-08-2020 08:17:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[division](
	[DivisionId] [int] IDENTITY(1,1) NOT NULL,
	[DivisionCode] [varchar](10) NOT NULL,
	[DivisionName] [varchar](45) NOT NULL,
	[ClassCode] [varchar](10) NULL,
	[Stats] [varchar](10) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUser] [int] NULL,
	[RecordStatus] [int] NULL,
 CONSTRAINT [PK_division] PRIMARY KEY CLUSTERED 
(
	[DivisionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[division] ADD  DEFAULT (NULL) FOR [ClassCode]
GO

ALTER TABLE [dbo].[division] ADD  DEFAULT (NULL) FOR [Stats]
GO

ALTER TABLE [dbo].[division] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO

ALTER TABLE [dbo].[division] ADD  DEFAULT ('0') FOR [CreatedUser]
GO

ALTER TABLE [dbo].[division] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO

ALTER TABLE [dbo].[division] ADD  DEFAULT ('0') FOR [ModifiedUser]
GO

ALTER TABLE [dbo].[division] ADD  DEFAULT ('0') FOR [RecordStatus]
GO


