USE [generallog]
GO

ALTER TABLE [dbo].[errorlog] DROP CONSTRAINT [DF__errorlog__Create__2C3393D0]
GO

ALTER TABLE [dbo].[errorlog] DROP CONSTRAINT [DF__errorlog__IP__2B3F6F97]
GO

ALTER TABLE [dbo].[errorlog] DROP CONSTRAINT [DF__errorlog__TUI__2A4B4B5E]
GO

/****** Object:  Table [dbo].[errorlog]    Script Date: 23-08-2020 08:26:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[errorlog]') AND type in (N'U'))
DROP TABLE [dbo].[errorlog]
GO

/****** Object:  Table [dbo].[errorlog]    Script Date: 23-08-2020 08:26:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[errorlog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Remarks] [nvarchar](max) NOT NULL,
	[MethodName] [varchar](50) NOT NULL,
	[ClassName] [varchar](45) NOT NULL,
	[TUI] [varchar](50) NULL,
	[IP] [varchar](15) NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_bloodgroup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[errorlog] ADD  DEFAULT (NULL) FOR [TUI]
GO

ALTER TABLE [dbo].[errorlog] ADD  DEFAULT (NULL) FOR [IP]
GO

ALTER TABLE [dbo].[errorlog] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO


