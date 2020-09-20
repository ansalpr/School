USE [generaldb]
GO

/****** Object:  Table [dbo].[school]    Script Date: 20-09-2020 05:39:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[school](
	[SchoolId] [int] IDENTITY(1,1) NOT NULL,
	[SchoolCode] [varchar](10) NOT NULL,
	[SchoolName] [varchar](100) NOT NULL,
	[SchoolAddress1] [varchar](1000) NULL,
	[SchoolAddress2] [varchar](1000) NULL,
	[Phone] [varchar](100) NULL,
	[Fax] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedUser] [varchar](10) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUser] [varchar](10) NULL,
	[RecordStatus] [int] NOT NULL,
 CONSTRAINT [PK_school] PRIMARY KEY CLUSTERED 
(
	[SchoolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[school] ADD  CONSTRAINT [DF_school_SchoolAddress1]  DEFAULT ('') FOR [SchoolAddress1]
GO

ALTER TABLE [dbo].[school] ADD  CONSTRAINT [DF_school_SchoolAddress2]  DEFAULT ('') FOR [SchoolAddress2]
GO

ALTER TABLE [dbo].[school] ADD  CONSTRAINT [DF_school_Phone]  DEFAULT ('') FOR [Phone]
GO

ALTER TABLE [dbo].[school] ADD  CONSTRAINT [DF_school_Fax]  DEFAULT ('') FOR [Fax]
GO

ALTER TABLE [dbo].[school] ADD  CONSTRAINT [DF_school_Email]  DEFAULT ('') FOR [Email]
GO

ALTER TABLE [dbo].[school] ADD  CONSTRAINT [DF_school_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO

ALTER TABLE [dbo].[school] ADD  CONSTRAINT [DF_school_CreatedUser]  DEFAULT ((0)) FOR [CreatedUser]
GO

ALTER TABLE [dbo].[school] ADD  CONSTRAINT [DF_school_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO

ALTER TABLE [dbo].[school] ADD  CONSTRAINT [DF_school_ModifiedUser]  DEFAULT ((0)) FOR [ModifiedUser]
GO

ALTER TABLE [dbo].[school] ADD  CONSTRAINT [DF_school_RecordStatus]  DEFAULT ((0)) FOR [RecordStatus]
GO


