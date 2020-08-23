USE [generallog]
GO

ALTER TABLE [dbo].[eventlog] DROP CONSTRAINT [DF__eventlog__Create__35BCFE0A]
GO

ALTER TABLE [dbo].[eventlog] DROP CONSTRAINT [DF__eventlog__IP__34C8D9D1]
GO

ALTER TABLE [dbo].[eventlog] DROP CONSTRAINT [DF__eventlog__TUI__33D4B598]
GO

/****** Object:  Table [dbo].[eventlog]    Script Date: 23-08-2020 08:26:18 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[eventlog]') AND type in (N'U'))
DROP TABLE [dbo].[eventlog]
GO

/****** Object:  Table [dbo].[eventlog]    Script Date: 23-08-2020 08:26:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[eventlog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Remarks] [nvarchar](max) NOT NULL,
	[MethodName] [varchar](50) NOT NULL,
	[ClassName] [varchar](45) NOT NULL,
	[TUI] [varchar](50) NULL,
	[IP] [varchar](15) NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_eventlog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[eventlog] ADD  DEFAULT (NULL) FOR [TUI]
GO

ALTER TABLE [dbo].[eventlog] ADD  DEFAULT (NULL) FOR [IP]
GO

ALTER TABLE [dbo].[eventlog] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO


