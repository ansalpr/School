USE [generalhistory]
GO

ALTER TABLE [dbo].[bloodgroup] DROP CONSTRAINT [DF__bloodgrou__Recor__06CD04F7]
GO

ALTER TABLE [dbo].[bloodgroup] DROP CONSTRAINT [DF__bloodgrou__Modif__05D8E0BE]
GO

ALTER TABLE [dbo].[bloodgroup] DROP CONSTRAINT [DF__bloodgrou__Modif__04E4BC85]
GO

ALTER TABLE [dbo].[bloodgroup] DROP CONSTRAINT [DF__bloodgrou__Creat__03F0984C]
GO

ALTER TABLE [dbo].[bloodgroup] DROP CONSTRAINT [DF__bloodgrou__Creat__02FC7413]
GO

/****** Object:  Table [dbo].[bloodgroup]    Script Date: 23-08-2020 08:21:17 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[bloodgroup]') AND type in (N'U'))
DROP TABLE [dbo].[bloodgroup]
GO

/****** Object:  Table [dbo].[bloodgroup]    Script Date: 23-08-2020 08:21:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[bloodgroup](
	[BloodGroupId] [int] NOT NULL,
	[BloodGroupCode] [varchar](10) NOT NULL,
	[BloodGroupName] [varchar](45) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUser] [int] NULL,
	[RecordStatus] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[bloodgroup] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO

ALTER TABLE [dbo].[bloodgroup] ADD  DEFAULT ('0') FOR [CreatedUser]
GO

ALTER TABLE [dbo].[bloodgroup] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO

ALTER TABLE [dbo].[bloodgroup] ADD  DEFAULT ('0') FOR [ModifiedUser]
GO

ALTER TABLE [dbo].[bloodgroup] ADD  DEFAULT ('0') FOR [RecordStatus]
GO


