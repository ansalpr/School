USE [generaldb]
GO

ALTER TABLE [dbo].[curriculum] DROP CONSTRAINT [DF__curriculu__Recor__5441852A]
GO

ALTER TABLE [dbo].[curriculum] DROP CONSTRAINT [DF__curriculu__Modif__534D60F1]
GO

ALTER TABLE [dbo].[curriculum] DROP CONSTRAINT [DF__curriculu__Modif__52593CB8]
GO

ALTER TABLE [dbo].[curriculum] DROP CONSTRAINT [DF__curriculu__Creat__5165187F]
GO

ALTER TABLE [dbo].[curriculum] DROP CONSTRAINT [DF__curriculu__Creat__5070F446]
GO

/****** Object:  Table [dbo].[curriculum]    Script Date: 23-08-2020 08:16:25 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[curriculum]') AND type in (N'U'))
DROP TABLE [dbo].[curriculum]
GO

/****** Object:  Table [dbo].[curriculum]    Script Date: 23-08-2020 08:16:25 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[curriculum](
	[CurriculumId] [int] IDENTITY(1,1) NOT NULL,
	[CurriculumCode] [varchar](10) NOT NULL,
	[CurriculumName] [varchar](45) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUser] [int] NULL,
	[RecordStatus] [int] NULL,
 CONSTRAINT [PK_curriculum] PRIMARY KEY CLUSTERED 
(
	[CurriculumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[curriculum] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO

ALTER TABLE [dbo].[curriculum] ADD  DEFAULT ('0') FOR [CreatedUser]
GO

ALTER TABLE [dbo].[curriculum] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO

ALTER TABLE [dbo].[curriculum] ADD  DEFAULT ('0') FOR [ModifiedUser]
GO

ALTER TABLE [dbo].[curriculum] ADD  DEFAULT ('0') FOR [RecordStatus]
GO


