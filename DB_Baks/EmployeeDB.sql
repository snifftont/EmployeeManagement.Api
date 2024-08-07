USE [EmployeeDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/25/2024 7:15:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 7/25/2024 7:15:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[DepartmentId] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 7/25/2024 7:15:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[DateOfBirth] [datetime2](7) NOT NULL,
	[Gender] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[PhotoPath] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240627202313_InitialCreate', N'8.0.6')
GO
SET IDENTITY_INSERT [dbo].[Departments] ON 

INSERT [dbo].[Departments] ([DepartmentId], [DepartmentName]) VALUES (1, N'IT')
INSERT [dbo].[Departments] ([DepartmentId], [DepartmentName]) VALUES (2, N'Engineering')
INSERT [dbo].[Departments] ([DepartmentId], [DepartmentName]) VALUES (3, N'HRM')
INSERT [dbo].[Departments] ([DepartmentId], [DepartmentName]) VALUES (4, N'Marketing')
INSERT [dbo].[Departments] ([DepartmentId], [DepartmentName]) VALUES (5, N'Sales')
SET IDENTITY_INSERT [dbo].[Departments] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([EmployeeId], [FirstName], [LastName], [Email], [DateOfBirth], [Gender], [DepartmentId], [PhotoPath]) VALUES (1, N'sanasi', N'sanasi', N'sanas@sniffton.com', CAST(N'2024-07-22T00:00:00.0000000' AS DateTime2), 0, 4, N'images/jon.png')
INSERT [dbo].[Employees] ([EmployeeId], [FirstName], [LastName], [Email], [DateOfBirth], [Gender], [DepartmentId], [PhotoPath]) VALUES (6, N'create', N'create', N'create@example.com', CAST(N'2024-07-23T00:00:00.0000000' AS DateTime2), 0, 1, N'images/jon.png')
INSERT [dbo].[Employees] ([EmployeeId], [FirstName], [LastName], [Email], [DateOfBirth], [Gender], [DepartmentId], [PhotoPath]) VALUES (7, N'San1', N'san1', N'san1@sniffton.com', CAST(N'2024-07-24T22:46:06.8379708' AS DateTime2), 0, 1, N'images/jon.png')
INSERT [dbo].[Employees] ([EmployeeId], [FirstName], [LastName], [Email], [DateOfBirth], [Gender], [DepartmentId], [PhotoPath]) VALUES (8, N'sani', N'sani', N'sani@example.com', CAST(N'2024-07-25T07:12:51.5689987' AS DateTime2), 0, 5, N'images/jon.png')
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
