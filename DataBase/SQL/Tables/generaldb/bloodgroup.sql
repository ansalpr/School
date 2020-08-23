USE [generaldb]
GO

ALTER TABLE [dbo].[bloodgroup] DROP CONSTRAINT [DF__bloodgrou__Recor__30F848ED]
GO

ALTER TABLE [dbo].[bloodgroup] DROP CONSTRAINT [DF__bloodgrou__Modif__300424B4]
GO

ALTER TABLE [dbo].[bloodgroup] DROP CONSTRAINT [DF__bloodgrou__Modif__2F10007B]
GO

ALTER TABLE [dbo].[bloodgroup] DROP CONSTRAINT [DF__bloodgrou__Creat__2E1BDC42]
GO

ALTER TABLE [dbo].[bloodgroup] DROP CONSTRAINT [DF__bloodgrou__Creat__2D27B809]
GO

/****** Object:  Table [dbo].[bloodgroup]    Script Date: 23-08-2020 08:14:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[bloodgroup]') AND type in (N'U'))
DROP TABLE [dbo].[bloodgroup]
GO

/****** Object:  Table [dbo].[bloodgroup]    Script Date: 23-08-2020 08:14:09 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[bloodgroup](
	[BloodGroupId] [int] IDENTITY(1,1) NOT NULL,
	[BloodGroupCode] [varchar](10) NOT NULL,
	[BloodGroupName] [varchar](45) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUser] [int] NULL,
	[RecordStatus] [int] NULL,
 CONSTRAINT [PK_bloodgroup] PRIMARY KEY CLUSTERED 
(
	[BloodGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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


