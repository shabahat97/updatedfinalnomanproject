USE [master]
GO
/****** Object:  Database [WebBaseSystem]    Script Date: 4/6/2021 6:55:55 PM ******/
CREATE DATABASE [WebBaseSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebBaseSystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\WebBaseSystem.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WebBaseSystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\WebBaseSystem_log.ldf' , SIZE = 784KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WebBaseSystem] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebBaseSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebBaseSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebBaseSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebBaseSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebBaseSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebBaseSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebBaseSystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WebBaseSystem] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [WebBaseSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebBaseSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebBaseSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebBaseSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebBaseSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebBaseSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebBaseSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebBaseSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebBaseSystem] SET  ENABLE_BROKER 
GO
ALTER DATABASE [WebBaseSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebBaseSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebBaseSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebBaseSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebBaseSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebBaseSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebBaseSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebBaseSystem] SET RECOVERY FULL 
GO
ALTER DATABASE [WebBaseSystem] SET  MULTI_USER 
GO
ALTER DATABASE [WebBaseSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebBaseSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebBaseSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebBaseSystem] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'WebBaseSystem', N'ON'
GO
USE [WebBaseSystem]
GO
/****** Object:  Table [dbo].[Notes]    Script Date: 4/6/2021 6:55:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notes](
	[NoteId] [int] IDENTITY(1,1) NOT NULL,
	[NotesDescription] [nvarchar](max) NULL,
	[TakingNewPatients] [bit] NULL,
	[price] [nvarchar](13) NULL,
	[Waiting_Time] [nvarchar](200) NULL,
	[SpecialistId] [int] NULL,
	[IsBooking] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[NoteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 4/6/2021 6:55:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Specialist]    Script Date: 4/6/2021 6:55:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Specialist](
	[SpecialistId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[SpecialistName] [nvarchar](50) NULL,
	[MobileNo] [varchar](20) NULL,
	[PhoneNo] [varchar](20) NULL,
	[Address1] [nvarchar](max) NULL,
	[Address2] [nvarchar](max) NULL,
	[EmailAddress] [nvarchar](50) NULL,
	[BusinessName] [nvarchar](50) NULL,
	[SpecialistTypeId] [int] NULL,
	[Surname] [varchar](20) NULL,
	[OfficeNo] [varchar](20) NULL,
	[IsDeleted] [bit] NULL,
	[SubMenu] [varchar](50) NULL,
	[Age] [int] NULL,
	[PostCode] [varchar](10) NULL,
	[Suburbs] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[NoteId] [int] NULL,
 CONSTRAINT [PK__Speciali__7092086E98D98EDC] PRIMARY KEY CLUSTERED 
(
	[SpecialistId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SpecialistType]    Script Date: 4/6/2021 6:55:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpecialistType](
	[SpecialistTypeId] [int] IDENTITY(1,1) NOT NULL,
	[SpecialistTypeName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[SpecialistTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SpecialistTypeSubMenu]    Script Date: 4/6/2021 6:55:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SpecialistTypeSubMenu](
	[SubMenuId] [int] IDENTITY(1,1) NOT NULL,
	[SubMenuName] [varchar](70) NOT NULL,
	[SpecialistTypeId] [int] NOT NULL,
 CONSTRAINT [PK_SpecialistTypeSubMenu] PRIMARY KEY CLUSTERED 
(
	[SubMenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 4/6/2021 6:55:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[MobileNo] [int] NULL,
	[PhoneNo] [int] NULL,
	[Age] [nvarchar](50) NULL,
	[EmailAddress] [nvarchar](50) NULL,
	[Pass] [nvarchar](50) NULL,
	[RoleId] [int] NULL,
	[ResetPasswordCode] [varchar](400) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WayPoints]    Script Date: 4/6/2021 6:55:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WayPoints](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Latitude] [decimal](18, 6) NULL,
	[Longitude] [decimal](18, 6) NULL,
	[Suburbs] [nvarchar](50) NULL,
	[PostCode] [varchar](10) NULL,
	[State] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Notes] ON 

INSERT [dbo].[Notes] ([NoteId], [NotesDescription], [TakingNewPatients], [price], [Waiting_Time], [SpecialistId], [IsBooking]) VALUES (2, N'asdad', 0, N'24', N'0-3 month', 1, 0)
INSERT [dbo].[Notes] ([NoteId], [NotesDescription], [TakingNewPatients], [price], [Waiting_Time], [SpecialistId], [IsBooking]) VALUES (3, N'sadada', 0, N'adadadsa', N'0-3 month', 6, 1)
INSERT [dbo].[Notes] ([NoteId], [NotesDescription], [TakingNewPatients], [price], [Waiting_Time], [SpecialistId], [IsBooking]) VALUES (4, N'abcd', 1, N'16', N'0-3 month', 7, 0)
INSERT [dbo].[Notes] ([NoteId], [NotesDescription], [TakingNewPatients], [price], [Waiting_Time], [SpecialistId], [IsBooking]) VALUES (5, N'ada', 1, N'13', N'0-3 month', 8, 1)
INSERT [dbo].[Notes] ([NoteId], [NotesDescription], [TakingNewPatients], [price], [Waiting_Time], [SpecialistId], [IsBooking]) VALUES (6, N'sdada', 1, N'16', N'0-3 month', 9, 1)
INSERT [dbo].[Notes] ([NoteId], [NotesDescription], [TakingNewPatients], [price], [Waiting_Time], [SpecialistId], [IsBooking]) VALUES (7, N'adsad', 0, N'155', N'3-6 month', 10, 1)
SET IDENTITY_INSERT [dbo].[Notes] OFF
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (1, N'Admin')
INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (2, N'User')
SET IDENTITY_INSERT [dbo].[Roles] OFF
SET IDENTITY_INSERT [dbo].[Specialist] ON 

INSERT [dbo].[Specialist] ([SpecialistId], [Title], [SpecialistName], [MobileNo], [PhoneNo], [Address1], [Address2], [EmailAddress], [BusinessName], [SpecialistTypeId], [Surname], [OfficeNo], [IsDeleted], [SubMenu], [Age], [PostCode], [Suburbs], [State], [NoteId]) VALUES (1, N'one', N'ckheckname', N'03323227986', N'03323227986', N'R-35', N'R-35', N'shabahatalichishti@gmail.com', N'rauf', 1, N'shabi', N'420', 1, N'pychastist', 14, NULL, NULL, NULL, NULL)
INSERT [dbo].[Specialist] ([SpecialistId], [Title], [SpecialistName], [MobileNo], [PhoneNo], [Address1], [Address2], [EmailAddress], [BusinessName], [SpecialistTypeId], [Surname], [OfficeNo], [IsDeleted], [SubMenu], [Age], [PostCode], [Suburbs], [State], [NoteId]) VALUES (2, N'Mr', N'abac', N'032131', N'032131', N'23131', N'32131', N'sh@gmail.com', N'abc', 3, N'k', N'420', 1, NULL, 18, N'0200', N'Australian National University', N'ACT', NULL)
INSERT [dbo].[Specialist] ([SpecialistId], [Title], [SpecialistName], [MobileNo], [PhoneNo], [Address1], [Address2], [EmailAddress], [BusinessName], [SpecialistTypeId], [Surname], [OfficeNo], [IsDeleted], [SubMenu], [Age], [PostCode], [Suburbs], [State], [NoteId]) VALUES (3, N'Mr', N'chapar', N'032312313121', N'033232269853', N'dabdsa', N'dabdsa', N'k@gmail.com', N'abc', 3, N'sda', N'420', 1, N'shahfi', 24, N'0200', N'Australian National University', N'ACT', NULL)
INSERT [dbo].[Specialist] ([SpecialistId], [Title], [SpecialistName], [MobileNo], [PhoneNo], [Address1], [Address2], [EmailAddress], [BusinessName], [SpecialistTypeId], [Surname], [OfficeNo], [IsDeleted], [SubMenu], [Age], [PostCode], [Suburbs], [State], [NoteId]) VALUES (4, N'Mr', N'na', N'03213131231', N'03213131231', N'r0353', N'r0353', N'sh@gmail.com', N'abc', 3, N'ali', N'420', 0, N'acad', 10, N'0200', N'Australian National University', N'ACT', NULL)
INSERT [dbo].[Specialist] ([SpecialistId], [Title], [SpecialistName], [MobileNo], [PhoneNo], [Address1], [Address2], [EmailAddress], [BusinessName], [SpecialistTypeId], [Surname], [OfficeNo], [IsDeleted], [SubMenu], [Age], [PostCode], [Suburbs], [State], [NoteId]) VALUES (5, N'Mr', N'uio', N'0312313231', N'0312313231', N'r-35 block', N'r-35 block', N'k@gmail.com', N'abc', 3, N'acd', N'422', 1, N'acad', 19, N'0200', N'Australian National University', N'ACT', NULL)
INSERT [dbo].[Specialist] ([SpecialistId], [Title], [SpecialistName], [MobileNo], [PhoneNo], [Address1], [Address2], [EmailAddress], [BusinessName], [SpecialistTypeId], [Surname], [OfficeNo], [IsDeleted], [SubMenu], [Age], [PostCode], [Suburbs], [State], [NoteId]) VALUES (6, N'Mr', N'sdadada', N'03333106310', N'03333106310', N'R-35', N'R-35', N'umernasir19@gmail.com', N'abc', 1, N'cdd', N'03333106310', 0, N'shahfi', 16, N'0200', N'Australian National University', N'ACT', NULL)
INSERT [dbo].[Specialist] ([SpecialistId], [Title], [SpecialistName], [MobileNo], [PhoneNo], [Address1], [Address2], [EmailAddress], [BusinessName], [SpecialistTypeId], [Surname], [OfficeNo], [IsDeleted], [SubMenu], [Age], [PostCode], [Suburbs], [State], [NoteId]) VALUES (7, N'Mr', N'ds', N'03333106310', N'03333106310', N'R-35', N'R-35', N'umernasir19@gmail.com', N'abc', 1, N'cdd', N'03333106310', 0, N'shahfi', 16, N'0200', N'Australian National University', N'ACT', NULL)
INSERT [dbo].[Specialist] ([SpecialistId], [Title], [SpecialistName], [MobileNo], [PhoneNo], [Address1], [Address2], [EmailAddress], [BusinessName], [SpecialistTypeId], [Surname], [OfficeNo], [IsDeleted], [SubMenu], [Age], [PostCode], [Suburbs], [State], [NoteId]) VALUES (8, N'Mr', N'ds', N'03333106310', N'03333106310', N'R-35', N'R-35', N'umernasir19@gmail.com', N'abc', 1, N'cdd', N'03333106310', 0, N'shahfi', 16, N'0200', N'Australian National University', N'ACT', NULL)
INSERT [dbo].[Specialist] ([SpecialistId], [Title], [SpecialistName], [MobileNo], [PhoneNo], [Address1], [Address2], [EmailAddress], [BusinessName], [SpecialistTypeId], [Surname], [OfficeNo], [IsDeleted], [SubMenu], [Age], [PostCode], [Suburbs], [State], [NoteId]) VALUES (9, N'Mr', N'abcdd', N'03333106310', N'03333106310', N'R-35', N'R-35', N'umernasir19@gmail.com', N'new', 3, N'new', N'03333106310', 0, N'acad', 16, N'0200', N'Australian National University', N'ACT', 7)
INSERT [dbo].[Specialist] ([SpecialistId], [Title], [SpecialistName], [MobileNo], [PhoneNo], [Address1], [Address2], [EmailAddress], [BusinessName], [SpecialistTypeId], [Surname], [OfficeNo], [IsDeleted], [SubMenu], [Age], [PostCode], [Suburbs], [State], [NoteId]) VALUES (10, N'Mr', N'new', N'03333106310', N'03333106310', N'R-35', N'R-35', N'umernasir19@gmail.com', N'abc', 1, N'cdd', N'03333106310', 0, N'acad', 16, N'0200', N'Australian National University', N'ACT', 7)
SET IDENTITY_INSERT [dbo].[Specialist] OFF
SET IDENTITY_INSERT [dbo].[SpecialistType] ON 

INSERT [dbo].[SpecialistType] ([SpecialistTypeId], [SpecialistTypeName]) VALUES (1, N'abc')
INSERT [dbo].[SpecialistType] ([SpecialistTypeId], [SpecialistTypeName]) VALUES (2, N'Non Medical')
INSERT [dbo].[SpecialistType] ([SpecialistTypeId], [SpecialistTypeName]) VALUES (3, N'Services')
INSERT [dbo].[SpecialistType] ([SpecialistTypeId], [SpecialistTypeName]) VALUES (4, N'Organization')
INSERT [dbo].[SpecialistType] ([SpecialistTypeId], [SpecialistTypeName]) VALUES (6, N'joke')
SET IDENTITY_INSERT [dbo].[SpecialistType] OFF
SET IDENTITY_INSERT [dbo].[SpecialistTypeSubMenu] ON 

INSERT [dbo].[SpecialistTypeSubMenu] ([SubMenuId], [SubMenuName], [SpecialistTypeId]) VALUES (1, N'shahfi', 1)
INSERT [dbo].[SpecialistTypeSubMenu] ([SubMenuId], [SubMenuName], [SpecialistTypeId]) VALUES (5, N'acad', 3)
SET IDENTITY_INSERT [dbo].[SpecialistTypeSubMenu] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [MobileNo], [PhoneNo], [Age], [EmailAddress], [Pass], [RoleId], [ResetPasswordCode]) VALUES (4, N'abc', N'd', 323212123, 232123131, N'12', N'shabahatalichishti@gmail.com', N'1234', 1, N'')
SET IDENTITY_INSERT [dbo].[Users] OFF
SET IDENTITY_INSERT [dbo].[WayPoints] ON 

INSERT [dbo].[WayPoints] ([Id], [Latitude], [Longitude], [Suburbs], [PostCode], [State]) VALUES (13153, CAST(149.118900 AS Decimal(18, 6)), CAST(-35.277700 AS Decimal(18, 6)), N'Australian National University', N'0200', N'ACT')
SET IDENTITY_INSERT [dbo].[WayPoints] OFF
ALTER TABLE [dbo].[Notes]  WITH CHECK ADD  CONSTRAINT [FK__Notes__Specialis__2E1BDC42] FOREIGN KEY([NoteId])
REFERENCES [dbo].[Notes] ([NoteId])
GO
ALTER TABLE [dbo].[Notes] CHECK CONSTRAINT [FK__Notes__Specialis__2E1BDC42]
GO
ALTER TABLE [dbo].[Specialist]  WITH CHECK ADD  CONSTRAINT [FK_Specialist_Notes] FOREIGN KEY([NoteId])
REFERENCES [dbo].[Notes] ([NoteId])
GO
ALTER TABLE [dbo].[Specialist] CHECK CONSTRAINT [FK_Specialist_Notes]
GO
ALTER TABLE [dbo].[SpecialistTypeSubMenu]  WITH CHECK ADD  CONSTRAINT [FK_SpecialistTypeSubMenu_SpecialistType] FOREIGN KEY([SpecialistTypeId])
REFERENCES [dbo].[SpecialistType] ([SpecialistTypeId])
GO
ALTER TABLE [dbo].[SpecialistTypeSubMenu] CHECK CONSTRAINT [FK_SpecialistTypeSubMenu_SpecialistType]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([RoleId])
GO
USE [master]
GO
ALTER DATABASE [WebBaseSystem] SET  READ_WRITE 
GO
