USE [generalhistory]
GO

ALTER TABLE [dbo].[parent] DROP CONSTRAINT [DF__parent__RecordSt__43D61337]
GO

ALTER TABLE [dbo].[parent] DROP CONSTRAINT [DF__parent__Modified__42E1EEFE]
GO

ALTER TABLE [dbo].[parent] DROP CONSTRAINT [DF__parent__Modified__41EDCAC5]
GO

ALTER TABLE [dbo].[parent] DROP CONSTRAINT [DF__parent__CreatedU__40F9A68C]
GO

ALTER TABLE [dbo].[parent] DROP CONSTRAINT [DF__parent__CreatedD__40058253]
GO

ALTER TABLE [dbo].[parent] DROP CONSTRAINT [DF__parent__BloodGro__3F115E1A]
GO

ALTER TABLE [dbo].[parent] DROP CONSTRAINT [DF__parent__MotherTo__3E1D39E1]
GO

ALTER TABLE [dbo].[parent] DROP CONSTRAINT [DF__parent__CountryC__3D2915A8]
GO

ALTER TABLE [dbo].[parent] DROP CONSTRAINT [DF__parent__Address2__3C34F16F]
GO

ALTER TABLE [dbo].[parent] DROP CONSTRAINT [DF__parent__Address1__3B40CD36]
GO

ALTER TABLE [dbo].[parent] DROP CONSTRAINT [DF__parent__POB__3A4CA8FD]
GO

/****** Object:  Table [dbo].[parent]    Script Date: 23-08-2020 08:24:22 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[parent]') AND type in (N'U'))
DROP TABLE [dbo].[parent]
GO

/****** Object:  Table [dbo].[parent]    Script Date: 23-08-2020 08:24:22 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[parent](
	[ParentId] [int] NOT NULL,
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
	[StateCode] [varchar](100) NULL
) ON [PRIMARY]
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


