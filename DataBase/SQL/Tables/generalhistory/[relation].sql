USE [generalhistory]
GO

ALTER TABLE [dbo].[relation] DROP CONSTRAINT [DF__relation__Record__75A278F5]
GO

ALTER TABLE [dbo].[relation] DROP CONSTRAINT [DF__relation__Modifi__74AE54BC]
GO

ALTER TABLE [dbo].[relation] DROP CONSTRAINT [DF__relation__Modifi__73BA3083]
GO

ALTER TABLE [dbo].[relation] DROP CONSTRAINT [DF__relation__Create__72C60C4A]
GO

ALTER TABLE [dbo].[relation] DROP CONSTRAINT [DF__relation__Create__71D1E811]
GO

/****** Object:  Table [dbo].[relation]    Script Date: 23-08-2020 08:24:33 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[relation]') AND type in (N'U'))
DROP TABLE [dbo].[relation]
GO

/****** Object:  Table [dbo].[relation]    Script Date: 23-08-2020 08:24:33 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[relation](
	[RelationId] [int] NOT NULL,
	[RelationCode] [varchar](10) NOT NULL,
	[RelationName] [varchar](45) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUser] [int] NULL,
	[RecordStatus] [int] NULL
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


