USE [generaldb]
GO

ALTER TABLE [dbo].[module] DROP CONSTRAINT [DF__module__RecordSt__70DDC3D8]
GO

ALTER TABLE [dbo].[module] DROP CONSTRAINT [DF__module__Modified__6FE99F9F]
GO

ALTER TABLE [dbo].[module] DROP CONSTRAINT [DF__module__Modified__6EF57B66]
GO

ALTER TABLE [dbo].[module] DROP CONSTRAINT [DF__module__CreatedU__6E01572D]
GO

ALTER TABLE [dbo].[module] DROP CONSTRAINT [DF__module__CreatedD__6D0D32F4]
GO

/****** Object:  Table [dbo].[module]    Script Date: 23-08-2020 08:17:38 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[module]') AND type in (N'U'))
DROP TABLE [dbo].[module]
GO

/****** Object:  Table [dbo].[module]    Script Date: 23-08-2020 08:17:38 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[module](
	[ModuleId] [int] IDENTITY(1,1) NOT NULL,
	[ModuleCode] [varchar](10) NOT NULL,
	[ModuleName] [varchar](45) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUser] [int] NULL,
	[RecordStatus] [int] NULL,
 CONSTRAINT [PK_module] PRIMARY KEY CLUSTERED 
(
	[ModuleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[module] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO

ALTER TABLE [dbo].[module] ADD  DEFAULT ('0') FOR [CreatedUser]
GO

ALTER TABLE [dbo].[module] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO

ALTER TABLE [dbo].[module] ADD  DEFAULT ('0') FOR [ModifiedUser]
GO

ALTER TABLE [dbo].[module] ADD  DEFAULT ('0') FOR [RecordStatus]
GO


