USE [generallog]
GO

ALTER TABLE [dbo].[requestlog] DROP CONSTRAINT [DF__requestlo__Creat__30F848ED]
GO

ALTER TABLE [dbo].[requestlog] DROP CONSTRAINT [DF__requestlog__IP__300424B4]
GO

ALTER TABLE [dbo].[requestlog] DROP CONSTRAINT [DF__requestlog__TUI__2F10007B]
GO

/****** Object:  Table [dbo].[requestlog]    Script Date: 23-08-2020 08:26:29 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[requestlog]') AND type in (N'U'))
DROP TABLE [dbo].[requestlog]
GO

/****** Object:  Table [dbo].[requestlog]    Script Date: 23-08-2020 08:26:29 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[requestlog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Request] [nvarchar](max) NOT NULL,
	[Response] [nvarchar](max) NOT NULL,
	[WorkFlow] [varchar](50) NOT NULL,
	[MethodName] [varchar](50) NOT NULL,
	[ClassName] [varchar](45) NOT NULL,
	[TUI] [varchar](50) NULL,
	[IP] [varchar](15) NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_requestlog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[requestlog] ADD  DEFAULT (NULL) FOR [TUI]
GO

ALTER TABLE [dbo].[requestlog] ADD  DEFAULT (NULL) FOR [IP]
GO

ALTER TABLE [dbo].[requestlog] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO


