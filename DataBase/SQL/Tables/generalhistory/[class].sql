USE [generalhistory]
GO

ALTER TABLE [dbo].[class] DROP CONSTRAINT [DF__class__RecordSta__534D60F1]
GO

ALTER TABLE [dbo].[class] DROP CONSTRAINT [DF__class__ModifiedU__52593CB8]
GO

ALTER TABLE [dbo].[class] DROP CONSTRAINT [DF__class__ModifiedD__5165187F]
GO

ALTER TABLE [dbo].[class] DROP CONSTRAINT [DF__class__CreatedUs__5070F446]
GO

ALTER TABLE [dbo].[class] DROP CONSTRAINT [DF__class__CreatedDa__4F7CD00D]
GO

/****** Object:  Table [dbo].[class]    Script Date: 23-08-2020 08:22:21 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[class]') AND type in (N'U'))
DROP TABLE [dbo].[class]
GO

/****** Object:  Table [dbo].[class]    Script Date: 23-08-2020 08:22:21 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[class](
	[ClassId] [int] NOT NULL,
	[ClassCode] [varchar](10) NOT NULL,
	[ClassName] [varchar](45) NOT NULL,
	[Sort] [varchar](10) NULL,
	[CurriculumCode] [varchar](10) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUser] [int] NULL,
	[RecordStatus] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[class] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO

ALTER TABLE [dbo].[class] ADD  DEFAULT ('0') FOR [CreatedUser]
GO

ALTER TABLE [dbo].[class] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO

ALTER TABLE [dbo].[class] ADD  DEFAULT ('0') FOR [ModifiedUser]
GO

ALTER TABLE [dbo].[class] ADD  DEFAULT ('0') FOR [RecordStatus]
GO


