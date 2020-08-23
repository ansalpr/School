USE [generaldb]
GO

ALTER TABLE [dbo].[parent] DROP CONSTRAINT [DF__parent__RecordSt__04E4BC85]
GO

ALTER TABLE [dbo].[parent] DROP CONSTRAINT [DF__parent__Modified__03F0984C]
GO

ALTER TABLE [dbo].[parent] DROP CONSTRAINT [DF__parent__Modified__02FC7413]
GO

ALTER TABLE [dbo].[parent] DROP CONSTRAINT [DF__parent__CreatedU__02084FDA]
GO

ALTER TABLE [dbo].[parent] DROP CONSTRAINT [DF__parent__CreatedD__01142BA1]
GO

ALTER TABLE [dbo].[parent] DROP CONSTRAINT [DF__parent__BloodGro__00200768]
GO

ALTER TABLE [dbo].[parent] DROP CONSTRAINT [DF__parent__MotherTo__7F2BE32F]
GO

ALTER TABLE [dbo].[parent] DROP CONSTRAINT [DF__parent__Country__7E37BEF6]
GO

ALTER TABLE [dbo].[parent] DROP CONSTRAINT [DF__parent__Address2__7D439ABD]
GO

ALTER TABLE [dbo].[parent] DROP CONSTRAINT [DF__parent__Address1__7C4F7684]
GO

ALTER TABLE [dbo].[parent] DROP CONSTRAINT [DF__parent__POB__7B5B524B]
GO

ALTER TABLE [dbo].[parent] DROP CONSTRAINT [DF__parent__DOB__7A672E12]
GO

/****** Object:  Table [dbo].[parent]    Script Date: 23-08-2020 08:18:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[parent]') AND type in (N'U'))
DROP TABLE [dbo].[parent]
GO

/****** Object:  Table [dbo].[parent]    Script Date: 23-08-2020 08:18:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[parent](
	[ParentId] [int] IDENTITY(1,1) NOT NULL,
	[ParentName] [varchar](45) NOT NULL,
	[DOB] [datetime] NULL,
	[POB] [varchar](45) NULL,
	[Address1] [varchar](200) NULL,
	[Address2] [varchar](200) NULL,
	[CountryCode] [varchar](45) NULL,
	[MotherTongue] [varchar](45) NULL,
	[BloodGroupCode] [varchar](4) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUser] [int] NULL,
	[RecordStatus] [int] NULL,
	[StateCode] [varchar](100) NULL,
 CONSTRAINT [PK_parent] PRIMARY KEY CLUSTERED 
(
	[ParentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[parent] ADD  DEFAULT (NULL) FOR [DOB]
GO

ALTER TABLE [dbo].[parent] ADD  DEFAULT ('') FOR [POB]
GO

ALTER TABLE [dbo].[parent] ADD  DEFAULT ('') FOR [Address1]
GO

ALTER TABLE [dbo].[parent] ADD  DEFAULT ('') FOR [Address2]
GO

ALTER TABLE [dbo].[parent] ADD  DEFAULT ('') FOR [CountryCode]
GO

ALTER TABLE [dbo].[parent] ADD  DEFAULT ('') FOR [MotherTongue]
GO

ALTER TABLE [dbo].[parent] ADD  DEFAULT ('') FOR [BloodGroupCode]
GO

ALTER TABLE [dbo].[parent] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO

ALTER TABLE [dbo].[parent] ADD  DEFAULT ('0') FOR [CreatedUser]
GO

ALTER TABLE [dbo].[parent] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO

ALTER TABLE [dbo].[parent] ADD  DEFAULT ('0') FOR [ModifiedUser]
GO

ALTER TABLE [dbo].[parent] ADD  DEFAULT ('0') FOR [RecordStatus]
GO


