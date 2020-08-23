USE [generalhistory]
GO

ALTER TABLE [dbo].[studentparentrelation] DROP CONSTRAINT [DF__studentpa__Recor__2BFE89A6]
GO

ALTER TABLE [dbo].[studentparentrelation] DROP CONSTRAINT [DF__studentpa__Modif__2B0A656D]
GO

ALTER TABLE [dbo].[studentparentrelation] DROP CONSTRAINT [DF__studentpa__Modif__2A164134]
GO

ALTER TABLE [dbo].[studentparentrelation] DROP CONSTRAINT [DF__studentpa__Creat__29221CFB]
GO

ALTER TABLE [dbo].[studentparentrelation] DROP CONSTRAINT [DF__studentpa__Creat__282DF8C2]
GO

/****** Object:  Table [dbo].[studentparentrelation]    Script Date: 23-08-2020 08:25:25 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[studentparentrelation]') AND type in (N'U'))
DROP TABLE [dbo].[studentparentrelation]
GO

/****** Object:  Table [dbo].[studentparentrelation]    Script Date: 23-08-2020 08:25:25 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[studentparentrelation](
	[StudentParentId] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
	[ParentId] [int] NOT NULL,
	[RelationId] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUser] [int] NULL,
	[RecordStatus] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[studentparentrelation] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO

ALTER TABLE [dbo].[studentparentrelation] ADD  DEFAULT ('0') FOR [CreatedUser]
GO

ALTER TABLE [dbo].[studentparentrelation] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO

ALTER TABLE [dbo].[studentparentrelation] ADD  DEFAULT ('0') FOR [ModifiedUser]
GO

ALTER TABLE [dbo].[studentparentrelation] ADD  DEFAULT ('0') FOR [RecordStatus]
GO


