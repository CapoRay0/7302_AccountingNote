USE [master]
GO
/****** Object:  Database [7302AccountingNote]    Script Date: 2021/11/9 上午 12:29:29 ******/
CREATE DATABASE [7302AccountingNote]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'7302AccountingNote', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\7302AccountingNote.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'7302AccountingNote_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\7302AccountingNote_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [7302AccountingNote] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [7302AccountingNote].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [7302AccountingNote] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [7302AccountingNote] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [7302AccountingNote] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [7302AccountingNote] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [7302AccountingNote] SET ARITHABORT OFF 
GO
ALTER DATABASE [7302AccountingNote] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [7302AccountingNote] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [7302AccountingNote] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [7302AccountingNote] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [7302AccountingNote] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [7302AccountingNote] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [7302AccountingNote] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [7302AccountingNote] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [7302AccountingNote] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [7302AccountingNote] SET  DISABLE_BROKER 
GO
ALTER DATABASE [7302AccountingNote] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [7302AccountingNote] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [7302AccountingNote] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [7302AccountingNote] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [7302AccountingNote] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [7302AccountingNote] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [7302AccountingNote] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [7302AccountingNote] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [7302AccountingNote] SET  MULTI_USER 
GO
ALTER DATABASE [7302AccountingNote] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [7302AccountingNote] SET DB_CHAINING OFF 
GO
ALTER DATABASE [7302AccountingNote] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [7302AccountingNote] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [7302AccountingNote] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [7302AccountingNote] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [7302AccountingNote] SET QUERY_STORE = OFF
GO
USE [7302AccountingNote]
GO
/****** Object:  Table [dbo].[AccountingNote]    Script Date: 2021/11/9 上午 12:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountingNote](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [uniqueidentifier] NOT NULL,
	[Caption] [nvarchar](100) NULL,
	[Amount] [int] NOT NULL,
	[ActType] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[Body] [nvarchar](500) NULL,
 CONSTRAINT [PK_AccountingNote] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 2021/11/9 上午 12:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfo](
	[ID] [uniqueidentifier] NOT NULL,
	[Account] [varchar](50) NOT NULL,
	[PWD] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[UserLevel] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_UserInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AccountingNote] ON 

INSERT [dbo].[AccountingNote] ([ID], [UserID], [Caption], [Amount], [ActType], [CreateDate], [Body]) VALUES (1, N'1ce79bbd-8efc-4081-85fe-444f5a21cff2', N'購物', 3000, 0, CAST(N'2021-08-03T21:45:23.673' AS DateTime), N'冷氣費')
INSERT [dbo].[AccountingNote] ([ID], [UserID], [Caption], [Amount], [ActType], [CreateDate], [Body]) VALUES (2, N'1ce79bbd-8efc-4081-85fe-444f5a21cff2', N'購物', 5000, 0, CAST(N'2021-08-03T21:45:16.880' AS DateTime), N'動畫會員費')
INSERT [dbo].[AccountingNote] ([ID], [UserID], [Caption], [Amount], [ActType], [CreateDate], [Body]) VALUES (4, N'4c2e50d0-3e4f-42e7-ad90-a72b19ab3d2f', N'賞金', 100, 1, CAST(N'2021-08-03T17:50:27.367' AS DateTime), N'打敗海王的獎勵')
INSERT [dbo].[AccountingNote] ([ID], [UserID], [Caption], [Amount], [ActType], [CreateDate], [Body]) VALUES (5, N'4c2e50d0-3e4f-42e7-ad90-a72b19ab3d2f', N'購物', 800000, 0, CAST(N'2021-08-03T17:50:31.873' AS DateTime), N'買台積電')
INSERT [dbo].[AccountingNote] ([ID], [UserID], [Caption], [Amount], [ActType], [CreateDate], [Body]) VALUES (6, N'4c2e50d0-3e4f-42e7-ad90-a72b19ab3d2f', N'撿到', 100, 1, CAST(N'2021-08-03T17:51:27.580' AS DateTime), N'朝爽德')
INSERT [dbo].[AccountingNote] ([ID], [UserID], [Caption], [Amount], [ActType], [CreateDate], [Body]) VALUES (8, N'1ce79bbd-8efc-4081-85fe-444f5a21cff2', N'撿到彩券', 2000, 1, CAST(N'2021-08-05T15:38:15.590' AS DateTime), N'路上撿到')
INSERT [dbo].[AccountingNote] ([ID], [UserID], [Caption], [Amount], [ActType], [CreateDate], [Body]) VALUES (9, N'1ce79bbd-8efc-4081-85fe-444f5a21cff2', N'購物', 4000, 0, CAST(N'2021-08-05T16:03:10.600' AS DateTime), N'寶雅')
INSERT [dbo].[AccountingNote] ([ID], [UserID], [Caption], [Amount], [ActType], [CreateDate], [Body]) VALUES (14, N'f1802c52-36fb-4ed9-89ec-8d2079c49419', N'5', 50000, 1, CAST(N'2021-08-05T23:52:15.630' AS DateTime), N'5')
INSERT [dbo].[AccountingNote] ([ID], [UserID], [Caption], [Amount], [ActType], [CreateDate], [Body]) VALUES (15, N'f1802c52-36fb-4ed9-89ec-8d2079c49419', N'6', 6, 0, CAST(N'2021-08-05T16:27:21.013' AS DateTime), N'6')
INSERT [dbo].[AccountingNote] ([ID], [UserID], [Caption], [Amount], [ActType], [CreateDate], [Body]) VALUES (16, N'f1802c52-36fb-4ed9-89ec-8d2079c49419', N'7', 7, 0, CAST(N'2021-08-05T16:27:23.593' AS DateTime), N'7')
INSERT [dbo].[AccountingNote] ([ID], [UserID], [Caption], [Amount], [ActType], [CreateDate], [Body]) VALUES (17, N'f1802c52-36fb-4ed9-89ec-8d2079c49419', N'8', 8, 0, CAST(N'2021-08-05T16:27:26.083' AS DateTime), N'8')
INSERT [dbo].[AccountingNote] ([ID], [UserID], [Caption], [Amount], [ActType], [CreateDate], [Body]) VALUES (18, N'f1802c52-36fb-4ed9-89ec-8d2079c49419', N'9', 9, 0, CAST(N'2021-08-05T16:27:29.030' AS DateTime), N'9')
INSERT [dbo].[AccountingNote] ([ID], [UserID], [Caption], [Amount], [ActType], [CreateDate], [Body]) VALUES (19, N'f1802c52-36fb-4ed9-89ec-8d2079c49419', N'10', 10, 0, CAST(N'2021-08-05T16:27:36.587' AS DateTime), N'10')
INSERT [dbo].[AccountingNote] ([ID], [UserID], [Caption], [Amount], [ActType], [CreateDate], [Body]) VALUES (20, N'f1802c52-36fb-4ed9-89ec-8d2079c49419', N'1', 11, 0, CAST(N'2021-08-05T16:28:26.420' AS DateTime), N'1')
SET IDENTITY_INSERT [dbo].[AccountingNote] OFF
GO
INSERT [dbo].[UserInfo] ([ID], [Account], [PWD], [Name], [Email], [UserLevel], [CreateDate]) VALUES (N'422ac30d-0444-4c00-89a2-3a3ffcf65e39', N'K', N'K', N'K', N'K@GMAIL', 1, CAST(N'2021-08-05T23:07:36.160' AS DateTime))
INSERT [dbo].[UserInfo] ([ID], [Account], [PWD], [Name], [Email], [UserLevel], [CreateDate]) VALUES (N'f1bea8b8-974d-4bae-9808-3bccb12896ee', N'GG', N'GG', N'GG', N'GG@GMAIL.COM', 0, CAST(N'2021-08-05T23:08:15.137' AS DateTime))
INSERT [dbo].[UserInfo] ([ID], [Account], [PWD], [Name], [Email], [UserLevel], [CreateDate]) VALUES (N'1ce79bbd-8efc-4081-85fe-444f5a21cff2', N'7302R', N'123', N'Ray', N'Ray@gmail.com', 0, CAST(N'2021-08-02T20:38:12.463' AS DateTime))
INSERT [dbo].[UserInfo] ([ID], [Account], [PWD], [Name], [Email], [UserLevel], [CreateDate]) VALUES (N'f1802c52-36fb-4ed9-89ec-8d2079c49419', N'Q', N'QQ', N'Q', N'Q@Q', 1, CAST(N'2021-08-04T21:22:29.607' AS DateTime))
INSERT [dbo].[UserInfo] ([ID], [Account], [PWD], [Name], [Email], [UserLevel], [CreateDate]) VALUES (N'4c2e50d0-3e4f-42e7-ad90-a72b19ab3d2f', N'7302W', N'123', N'SuperSuperWen', N'SuperWen@gmail.com', 1, CAST(N'2021-08-02T21:20:13.780' AS DateTime))
INSERT [dbo].[UserInfo] ([ID], [Account], [PWD], [Name], [Email], [UserLevel], [CreateDate]) VALUES (N'771fbc85-d36e-45ce-bbc6-bf7505e73417', N'W', N'W', N'W', N'Q@gmail.com', 0, CAST(N'2021-08-04T21:49:18.980' AS DateTime))
INSERT [dbo].[UserInfo] ([ID], [Account], [PWD], [Name], [Email], [UserLevel], [CreateDate]) VALUES (N'c317f9cc-f095-44b6-8960-cd5a3e416cd9', N'7302K', N'123', N'Ken', N'Ken@gmail.com', 0, CAST(N'2021-08-02T21:20:36.023' AS DateTime))
GO
ALTER TABLE [dbo].[AccountingNote] ADD  CONSTRAINT [DF_AccountingNote_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[UserInfo] ADD  CONSTRAINT [DF_UserInfo_CreateDte]  DEFAULT (getdate()) FOR [CreateDate]
GO
USE [master]
GO
ALTER DATABASE [7302AccountingNote] SET  READ_WRITE 
GO
