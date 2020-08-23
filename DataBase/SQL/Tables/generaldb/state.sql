USE [generaldb]
GO

ALTER TABLE [dbo].[state] DROP CONSTRAINT [DF__state__RecordSta__18EBB532]
GO

ALTER TABLE [dbo].[state] DROP CONSTRAINT [DF__state__ModifiedU__17F790F9]
GO

ALTER TABLE [dbo].[state] DROP CONSTRAINT [DF__state__ModifiedD__17036CC0]
GO

ALTER TABLE [dbo].[state] DROP CONSTRAINT [DF__state__CreatedUs__160F4887]
GO

ALTER TABLE [dbo].[state] DROP CONSTRAINT [DF__state__CreatedDa__151B244E]
GO

/****** Object:  Table [dbo].[state]    Script Date: 23-08-2020 08:18:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[state]') AND type in (N'U'))
DROP TABLE [dbo].[state]
GO

/****** Object:  Table [dbo].[state]    Script Date: 23-08-2020 08:18:50 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[state](
	[StateId] [int] IDENTITY(1,1) NOT NULL,
	[StateCode] [varchar](100) NULL,
	[StateName] [varchar](100) NULL,
	[CountryCode] [varchar](10) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUser] [int] NULL,
	[RecordStatus] [int] NULL,
 CONSTRAINT [PK_state] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[state] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO

ALTER TABLE [dbo].[state] ADD  DEFAULT ('0') FOR [CreatedUser]
GO

ALTER TABLE [dbo].[state] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO

ALTER TABLE [dbo].[state] ADD  DEFAULT ('0') FOR [ModifiedUser]
GO

ALTER TABLE [dbo].[state] ADD  DEFAULT ('0') FOR [RecordStatus]
GO


