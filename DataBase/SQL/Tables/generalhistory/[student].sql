USE [generalhistory]
GO

ALTER TABLE [dbo].[student] DROP CONSTRAINT [DF__student__RecordS__55009F39]
GO

ALTER TABLE [dbo].[student] DROP CONSTRAINT [DF__student__Modifie__540C7B00]
GO

ALTER TABLE [dbo].[student] DROP CONSTRAINT [DF__student__Modifie__531856C7]
GO

ALTER TABLE [dbo].[student] DROP CONSTRAINT [DF__student__Created__5224328E]
GO

ALTER TABLE [dbo].[student] DROP CONSTRAINT [DF__student__Created__51300E55]
GO

ALTER TABLE [dbo].[student] DROP CONSTRAINT [DF__student__BloodGr__503BEA1C]
GO

ALTER TABLE [dbo].[student] DROP CONSTRAINT [DF__student__MotherT__4F47C5E3]
GO

ALTER TABLE [dbo].[student] DROP CONSTRAINT [DF__student__Country__4E53A1AA]
GO

ALTER TABLE [dbo].[student] DROP CONSTRAINT [DF__student__StateCo__4D5F7D71]
GO

ALTER TABLE [dbo].[student] DROP CONSTRAINT [DF__student__Address__4C6B5938]
GO

ALTER TABLE [dbo].[student] DROP CONSTRAINT [DF__student__Address__4B7734FF]
GO

ALTER TABLE [dbo].[student] DROP CONSTRAINT [DF__student__POB__4A8310C6]
GO

ALTER TABLE [dbo].[student] DROP CONSTRAINT [DF__student__Guardia__498EEC8D]
GO

ALTER TABLE [dbo].[student] DROP CONSTRAINT [DF__student__FatherI__489AC854]
GO

ALTER TABLE [dbo].[student] DROP CONSTRAINT [DF__student__MotherI__47A6A41B]
GO

ALTER TABLE [dbo].[student] DROP CONSTRAINT [DF__student__LastNam__46B27FE2]
GO

ALTER TABLE [dbo].[student] DROP CONSTRAINT [DF__student__MiddleN__45BE5BA9]
GO

/****** Object:  Table [dbo].[student]    Script Date: 23-08-2020 08:25:14 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[student]') AND type in (N'U'))
DROP TABLE [dbo].[student]
GO

/****** Object:  Table [dbo].[student]    Script Date: 23-08-2020 08:25:14 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[student](
	[StudentId] [int] NOT NULL,
	[AdmissionNo] [varchar](10) NOT NULL,
	[FirstName] [varchar](45) NOT NULL,
	[MiddleName] [varchar](45) NULL,
	[LastName] [varchar](45) NULL,
	[Gender] [varchar](10) NOT NULL,
	[MotherID] [int] NULL,
	[FatherID] [int] NULL,
	[GuardianID] [int] NULL,
	[POB] [varchar](45) NULL,
	[DOB] [datetime] NOT NULL,
	[Address1] [varchar](200) NULL,
	[Address2] [varchar](200) NULL,
	[StateCode] [varchar](45) NULL,
	[CountryCode] [varchar](4) NULL,
	[MotherTongue] [varchar](45) NULL,
	[BloodGroupCode] [varchar](4) NULL,
	[Stats] [varchar](10) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUser] [int] NULL,
	[RecordStatus] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[student] ADD  DEFAULT ('') FOR [MiddleName]
GO

ALTER TABLE [dbo].[student] ADD  DEFAULT ('') FOR [LastName]
GO

ALTER TABLE [dbo].[student] ADD  DEFAULT ('0') FOR [MotherID]
GO

ALTER TABLE [dbo].[student] ADD  DEFAULT ('0') FOR [FatherID]
GO

ALTER TABLE [dbo].[student] ADD  DEFAULT ('0') FOR [GuardianID]
GO

ALTER TABLE [dbo].[student] ADD  DEFAULT ('') FOR [POB]
GO

ALTER TABLE [dbo].[student] ADD  DEFAULT ('') FOR [Address1]
GO

ALTER TABLE [dbo].[student] ADD  DEFAULT ('') FOR [Address2]
GO

ALTER TABLE [dbo].[student] ADD  DEFAULT ('') FOR [StateCode]
GO

ALTER TABLE [dbo].[student] ADD  DEFAULT ('') FOR [CountryCode]
GO

ALTER TABLE [dbo].[student] ADD  DEFAULT ('') FOR [MotherTongue]
GO

ALTER TABLE [dbo].[student] ADD  DEFAULT ('') FOR [BloodGroupCode]
GO

ALTER TABLE [dbo].[student] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO

ALTER TABLE [dbo].[student] ADD  DEFAULT ('0') FOR [CreatedUser]
GO

ALTER TABLE [dbo].[student] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO

ALTER TABLE [dbo].[student] ADD  DEFAULT ('0') FOR [ModifiedUser]
GO

ALTER TABLE [dbo].[student] ADD  DEFAULT ('0') FOR [RecordStatus]
GO


