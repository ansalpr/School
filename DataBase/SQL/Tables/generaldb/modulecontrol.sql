USE [generaldb]
GO

ALTER TABLE [dbo].[modulecontrol] DROP CONSTRAINT [DF__modulecon__Recor__778AC167]
GO

ALTER TABLE [dbo].[modulecontrol] DROP CONSTRAINT [DF__modulecon__Modif__76969D2E]
GO

ALTER TABLE [dbo].[modulecontrol] DROP CONSTRAINT [DF__modulecon__Modif__75A278F5]
GO

ALTER TABLE [dbo].[modulecontrol] DROP CONSTRAINT [DF__modulecon__Creat__74AE54BC]
GO

ALTER TABLE [dbo].[modulecontrol] DROP CONSTRAINT [DF__modulecon__Creat__73BA3083]
GO

/****** Object:  Table [dbo].[modulecontrol]    Script Date: 23-08-2020 08:17:53 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[modulecontrol]') AND type in (N'U'))
DROP TABLE [dbo].[modulecontrol]
GO

/****** Object:  Table [dbo].[modulecontrol]    Script Date: 23-08-2020 08:17:53 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[modulecontrol](
	[ModuleControlId] [int] IDENTITY(1,1) NOT NULL,
	[ModuleCode] [varchar](10) NOT NULL,
	[From] [datetime] NOT NULL,
	[TO] [datetime] NOT NULL,
	[BackDate] [int] NOT NULL,
	[FutureDate] [int] NOT NULL,
	[Stats] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUser] [int] NULL,
	[RecordStatus] [int] NULL,
 CONSTRAINT [PK_modulecontrol] PRIMARY KEY CLUSTERED 
(
	[ModuleControlId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[modulecontrol] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO

ALTER TABLE [dbo].[modulecontrol] ADD  DEFAULT ('0') FOR [CreatedUser]
GO

ALTER TABLE [dbo].[modulecontrol] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO

ALTER TABLE [dbo].[modulecontrol] ADD  DEFAULT ('0') FOR [ModifiedUser]
GO

ALTER TABLE [dbo].[modulecontrol] ADD  DEFAULT ('0') FOR [RecordStatus]
GO


