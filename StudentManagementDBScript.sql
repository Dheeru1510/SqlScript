USE [StudentManagement]
GO
/****** Object:  Table [dbo].[StudentDetails]    Script Date: 11-01-2022 8:48:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](150) NOT NULL,
	[FatherName] [varchar](150) NOT NULL,
	[MotherName] [varchar](150) NOT NULL,
	[RollNo] [int] NOT NULL,
	[Age] [tinyint] NOT NULL,
	[Class] [varchar](10) NOT NULL,
	[Sec] [varchar](5) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [smallint] NOT NULL,
	[LastModifiedOn] [datetime] NULL,
	[LastModifiedBy] [smallint] NULL,
	[UID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_StudentDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11-01-2022 8:48:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](150) NOT NULL,
	[UID] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [smallint] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [UserName], [Password], [UID], [CreatedOn], [CreatedBy]) VALUES (1, N'Admin', N'gJZEVR9O9kuCsCcv/JuQ6sXRUrGq6ZmZmLkUeZLWF7I=', N'f6e9ffaa-e77c-4d11-bee7-6b898df8c2bf', CAST(N'2022-01-10T22:08:09.073' AS DateTime), -1)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
USE [master]
GO
ALTER DATABASE [StudentManagement] SET  READ_WRITE 
GO
