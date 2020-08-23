USE [generaldb]
GO

ALTER TABLE [dbo].[userdetails] DROP CONSTRAINT [DF__userdetai__Recor__367C1819]
GO

ALTER TABLE [dbo].[userdetails] DROP CONSTRAINT [DF__userdetai__Modif__3587F3E0]
GO

ALTER TABLE [dbo].[userdetails] DROP CONSTRAINT [DF__userdetai__Modif__3493CFA7]
GO

ALTER TABLE [dbo].[userdetails] DROP CONSTRAINT [DF__userdetai__Creat__339FAB6E]
GO

ALTER TABLE [dbo].[userdetails] DROP CONSTRAINT [DF__userdetai__Creat__32AB8735]
GO

ALTER TABLE [dbo].[userdetails] DROP CONSTRAINT [DF__userdetai__Group__31B762FC]
GO

ALTER TABLE [dbo].[userdetails] DROP CONSTRAINT [DF__userdetai__Desig__30C33EC3]
GO

ALTER TABLE [dbo].[userdetails] DROP CONSTRAINT [DF__userdetai__UserD__2FCF1A8A]
GO

ALTER TABLE [dbo].[userdetails] DROP CONSTRAINT [DF__userdetai__DateT__2EDAF651]
GO

ALTER TABLE [dbo].[userdetails] DROP CONSTRAINT [DF__userdetai__DateF__2DE6D218]
GO

/****** Object:  Table [dbo].[userdetails]    Script Date: 23-08-2020 08:19:30 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[userdetails]') AND type in (N'U'))
DROP TABLE [dbo].[userdetails]
GO

/****** Object:  Table [dbo].[userdetails]    Script Date: 23-08-2020 08:19:30 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[userdetails](
	[UserDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[DateFrom] [datetime] NULL,
	[DateTill] [datetime] NULL,
	[UserDeptId] [int] NULL,
	[DesignationId] [int] NULL,
	[GroupId] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedUser] [int] NULL,
	[RecordStatus] [int] NULL,
 CONSTRAINT [PK_userdetails] PRIMARY KEY CLUSTERED 
(
	[UserDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[userdetails] ADD  DEFAULT (getdate()) FOR [DateFrom]
GO

ALTER TABLE [dbo].[userdetails] ADD  DEFAULT (getdate()) FOR [DateTill]
GO

ALTER TABLE [dbo].[userdetails] ADD  DEFAULT ('0') FOR [UserDeptId]
GO

ALTER TABLE [dbo].[userdetails] ADD  DEFAULT ('0') FOR [DesignationId]
GO

ALTER TABLE [dbo].[userdetails] ADD  DEFAULT ('0') FOR [GroupId]
GO

ALTER TABLE [dbo].[userdetails] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO

ALTER TABLE [dbo].[userdetails] ADD  DEFAULT ('0') FOR [CreatedUser]
GO

ALTER TABLE [dbo].[userdetails] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO

ALTER TABLE [dbo].[userdetails] ADD  DEFAULT ('0') FOR [ModifiedUser]
GO

ALTER TABLE [dbo].[userdetails] ADD  DEFAULT ('0') FOR [RecordStatus]
GO


