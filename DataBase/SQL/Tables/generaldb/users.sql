USE [generaldb]
GO

ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__RecordSta__40058253]
GO

ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__ModifiedU__3F115E1A]
GO

ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__ModifiedD__3E1D39E1]
GO

ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__CreatedUs__3D2915A8]
GO

ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__CreatedDa__3C34F16F]
GO

ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__Mobile__3B40CD36]
GO

ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__Email__3A4CA8FD]
GO

ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__LocationI__395884C4]
GO

/****** Object:  Table [dbo].[users]    Script Date: 23-08-2020 08:19:45 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[users]') AND type in (N'U'))
DROP TABLE [dbo].[users]
GO

/****** Object:  Table [dbo].[users]    Script Date: 23-08-2020 08:19:45 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](100) NOT NULL,
	[UserLoginId] [varchar](45) NOT NULL,
	[UserPassword] [varchar](45) NOT NULL,
	[UserGrade] [varchar](3) NOT NULL,
	[LocationId] [varchar](20) NULL,
	[Email] [varchar](100) NULL,
	[Mobile] [varchar](15) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedUser] [int] NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedUser] [int] NULL,
	[RecordStatus] [int] NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [LocationId]
GO

ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [Email]
GO

ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [Mobile]
GO

ALTER TABLE [dbo].[users] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO

ALTER TABLE [dbo].[users] ADD  DEFAULT ('0') FOR [CreatedUser]
GO

ALTER TABLE [dbo].[users] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO

ALTER TABLE [dbo].[users] ADD  DEFAULT ('0') FOR [ModifiedUser]
GO

ALTER TABLE [dbo].[users] ADD  DEFAULT ('0') FOR [RecordStatus]
GO


