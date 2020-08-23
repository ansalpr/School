USE [generaldb]
GO

ALTER TABLE [dbo].[student] DROP CONSTRAINT [DF__student__RecordS__2B0A656D]
GO

ALTER TABLE [dbo].[student] DROP CONSTRAINT [DF__student__Modifie__2A164134]
GO

ALTER TABLE [dbo].[student] DROP CONSTRAINT [DF__student__Modifie__29221CFB]
GO

ALTER TABLE [dbo].[student] DROP CONSTRAINT [DF__student__Created__282DF8C2]
GO

ALTER TABLE [dbo].[student] DROP CONSTRAINT [DF__student__Created__2739D489]
GO

ALTER TABLE [dbo].[student] DROP CONSTRAINT [DF__student__BloodGr__2645B050]
GO

ALTER TABLE [dbo].[student] DROP CONSTRAINT [DF__student__MotherT__25518C17]
GO

ALTER TABLE [dbo].[student] DROP CONSTRAINT [DF__student__Country__245D67DE]
GO

ALTER TABLE [dbo].[student] DROP CONSTRAINT [DF__student__State__236943A5]
GO

ALTER TABLE [dbo].[student] DROP CONSTRAINT [DF__student__Address__22751F6C]
GO

ALTER TABLE [dbo].[student] DROP CONSTRAINT [DF__student__Address__2180FB33]
GO

ALTER TABLE [dbo].[student] DROP CONSTRAINT [DF__student__POB__208CD6FA]
GO

ALTER TABLE [dbo].[student] DROP CONSTRAINT [DF__student__Guardia__1F98B2C1]
GO

ALTER TABLE [dbo].[student] DROP CONSTRAINT [DF__student__FatherI__1EA48E88]
GO

ALTER TABLE [dbo].[student] DROP CONSTRAINT [DF__student__MotherI__1DB06A4F]
GO

ALTER TABLE [dbo].[student] DROP CONSTRAINT [DF__student__LastNam__1CBC4616]
GO

ALTER TABLE [dbo].[student] DROP CONSTRAINT [DF__student__MiddleN__1BC821DD]
GO

/****** Object:  Table [dbo].[student]    Script Date: 23-08-2020 08:19:02 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[student]') AND type in (N'U'))
DROP TABLE [dbo].[student]
GO

/****** Object:  Table [dbo].[student]    Script Date: 23-08-2020 08:19:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[student](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
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
	[RecordStatus] [int] NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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


