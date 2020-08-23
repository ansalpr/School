USE [generalhistory]
GO

ALTER TABLE [dbo].[division] DROP CONSTRAINT [DF__division__Record__59063A47]
GO

ALTER TABLE [dbo].[division] DROP CONSTRAINT [DF__division__Modifi__5812160E]
GO

ALTER TABLE [dbo].[division] DROP CONSTRAINT [DF__division__Modifi__571DF1D5]
GO

ALTER TABLE [dbo].[division] DROP CONSTRAINT [DF__division__Create__5629CD9C]
GO

ALTER TABLE [dbo].[division] DROP CONSTRAINT [DF__division__Create__5535A963]
GO

/****** Object:  Table [dbo].[division]    Script Date: 23-08-2020 08:23:42 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[division]') AND type in (N'U'))
DROP TABLE [dbo].[division]
GO

/****** Object:  Table [dbo].[division]    Script Date: 23-08-2020 08:23:42 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[division](
	[DivisionId] [int] NOT NULL,
	[DivisionCode] [varchar](10) NOT NULL,
	[DivisionName] [varchar](45) NOT NULL,
	[ClassCode] [varchar](10) NULL,
	[Stats] [varchar](10) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUser] [int] NULL,
	[RecordStatus] [int] NULL
) ON [PRIMARY]
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


