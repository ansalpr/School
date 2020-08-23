USE [generaldb]
GO

ALTER TABLE [dbo].[relation] DROP CONSTRAINT [DF__relation__Record__0B91BA14]
GO

ALTER TABLE [dbo].[relation] DROP CONSTRAINT [DF__relation__Modifi__0A9D95DB]
GO

ALTER TABLE [dbo].[relation] DROP CONSTRAINT [DF__relation__Modifi__09A971A2]
GO

ALTER TABLE [dbo].[relation] DROP CONSTRAINT [DF__relation__Create__08B54D69]
GO

ALTER TABLE [dbo].[relation] DROP CONSTRAINT [DF__relation__Create__07C12930]
GO

/****** Object:  Table [dbo].[relation]    Script Date: 23-08-2020 08:18:22 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[relation]') AND type in (N'U'))
DROP TABLE [dbo].[relation]
GO

/****** Object:  Table [dbo].[relation]    Script Date: 23-08-2020 08:18:22 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[relation](
	[RelationId] [int] IDENTITY(1,1) NOT NULL,
	[RelationCode] [varchar](10) NOT NULL,
	[RelationName] [varchar](45) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUser] [int] NULL,
	[RecordStatus] [int] NULL,
 CONSTRAINT [PK_relation] PRIMARY KEY CLUSTERED 
(
	[RelationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[relation] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO

ALTER TABLE [dbo].[relation] ADD  DEFAULT ('0') FOR [CreatedUser]
GO

ALTER TABLE [dbo].[relation] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO

ALTER TABLE [dbo].[relation] ADD  DEFAULT ('0') FOR [ModifiedUser]
GO

ALTER TABLE [dbo].[relation] ADD  DEFAULT ('0') FOR [RecordStatus]
GO


