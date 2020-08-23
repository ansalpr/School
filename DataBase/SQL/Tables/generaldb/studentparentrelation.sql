USE [generaldb]
GO

ALTER TABLE [dbo].[studentparentrelation] DROP CONSTRAINT [DF__studentpa__Recor__671F4F74]
GO

ALTER TABLE [dbo].[studentparentrelation] DROP CONSTRAINT [DF__studentpa__Modif__662B2B3B]
GO

ALTER TABLE [dbo].[studentparentrelation] DROP CONSTRAINT [DF__studentpa__Modif__65370702]
GO

ALTER TABLE [dbo].[studentparentrelation] DROP CONSTRAINT [DF__studentpa__Creat__6442E2C9]
GO

ALTER TABLE [dbo].[studentparentrelation] DROP CONSTRAINT [DF__studentpa__Creat__634EBE90]
GO

/****** Object:  Table [dbo].[studentparentrelation]    Script Date: 23-08-2020 08:19:17 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[studentparentrelation]') AND type in (N'U'))
DROP TABLE [dbo].[studentparentrelation]
GO

/****** Object:  Table [dbo].[studentparentrelation]    Script Date: 23-08-2020 08:19:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[studentparentrelation](
	[StudentParentId] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NOT NULL,
	[ParentId] [int] NOT NULL,
	[RelationId] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUser] [int] NULL,
	[RecordStatus] [int] NULL,
 CONSTRAINT [PK_studentparentrelation] PRIMARY KEY CLUSTERED 
(
	[StudentParentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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


