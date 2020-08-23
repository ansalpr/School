USE [generaldb]
GO

ALTER TABLE [dbo].[class] DROP CONSTRAINT [DF__class__RecordSta__398D8EEE]
GO

ALTER TABLE [dbo].[class] DROP CONSTRAINT [DF__class__ModifiedU__38996AB5]
GO

ALTER TABLE [dbo].[class] DROP CONSTRAINT [DF__class__ModifiedD__37A5467C]
GO

ALTER TABLE [dbo].[class] DROP CONSTRAINT [DF__class__CreatedUs__36B12243]
GO

ALTER TABLE [dbo].[class] DROP CONSTRAINT [DF__class__CreatedDa__35BCFE0A]
GO

ALTER TABLE [dbo].[class] DROP CONSTRAINT [DF__class__Curriculu__34C8D9D1]
GO

ALTER TABLE [dbo].[class] DROP CONSTRAINT [DF__class__Sort__33D4B598]
GO

/****** Object:  Table [dbo].[class]    Script Date: 23-08-2020 08:15:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[class]') AND type in (N'U'))
DROP TABLE [dbo].[class]
GO

/****** Object:  Table [dbo].[class]    Script Date: 23-08-2020 08:15:12 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[class](
	[ClassId] [int] IDENTITY(1,1) NOT NULL,
	[ClassCode] [varchar](10) NOT NULL,
	[ClassName] [varchar](45) NOT NULL,
	[Sort] [varchar](10) NULL,
	[CurriculumCode] [varchar](10) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUser] [int] NULL,
	[RecordStatus] [int] NULL,
 CONSTRAINT [PK_class] PRIMARY KEY CLUSTERED 
(
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[class] ADD  DEFAULT (NULL) FOR [Sort]
GO

ALTER TABLE [dbo].[class] ADD  DEFAULT (NULL) FOR [CurriculumCode]
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


