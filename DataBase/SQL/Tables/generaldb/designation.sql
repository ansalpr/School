USE [generaldb]
GO

ALTER TABLE [dbo].[designation] DROP CONSTRAINT [DF__designati__Recor__619B8048]
GO

ALTER TABLE [dbo].[designation] DROP CONSTRAINT [DF__designati__Modif__60A75C0F]
GO

ALTER TABLE [dbo].[designation] DROP CONSTRAINT [DF__designati__Modif__5FB337D6]
GO

ALTER TABLE [dbo].[designation] DROP CONSTRAINT [DF__designati__Creat__5EBF139D]
GO

ALTER TABLE [dbo].[designation] DROP CONSTRAINT [DF__designati__Creat__5DCAEF64]
GO

/****** Object:  Table [dbo].[designation]    Script Date: 23-08-2020 08:16:54 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[designation]') AND type in (N'U'))
DROP TABLE [dbo].[designation]
GO

/****** Object:  Table [dbo].[designation]    Script Date: 23-08-2020 08:16:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[designation](
	[DesignationId] [int] IDENTITY(1,1) NOT NULL,
	[DesignationCode] [varchar](10) NOT NULL,
	[DesignationName] [varchar](45) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUser] [int] NULL,
	[RecordStatus] [int] NULL,
 CONSTRAINT [PK_designation] PRIMARY KEY CLUSTERED 
(
	[DesignationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[designation] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO

ALTER TABLE [dbo].[designation] ADD  DEFAULT ('0') FOR [CreatedUser]
GO

ALTER TABLE [dbo].[designation] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO

ALTER TABLE [dbo].[designation] ADD  DEFAULT ('0') FOR [ModifiedUser]
GO

ALTER TABLE [dbo].[designation] ADD  DEFAULT ('0') FOR [RecordStatus]
GO


