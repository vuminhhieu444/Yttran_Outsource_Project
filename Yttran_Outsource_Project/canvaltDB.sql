USE [master]
GO
/****** Object:  Database [Yttran]    Script Date: 7/28/2022 8:26:42 PM ******/
CREATE DATABASE [Yttran] ON  PRIMARY 
( NAME = N'Yttran', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Yttran.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Yttran_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Yttran_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Yttran].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Yttran] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Yttran] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Yttran] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Yttran] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Yttran] SET ARITHABORT OFF 
GO
ALTER DATABASE [Yttran] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Yttran] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Yttran] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Yttran] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Yttran] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Yttran] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Yttran] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Yttran] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Yttran] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Yttran] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Yttran] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Yttran] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Yttran] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Yttran] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Yttran] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Yttran] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Yttran] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Yttran] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Yttran] SET  MULTI_USER 
GO
ALTER DATABASE [Yttran] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Yttran] SET DB_CHAINING OFF 
GO
USE [Yttran]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/28/2022 8:26:42 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[account]    Script Date: 7/28/2022 8:26:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[usrer_name] [char](100) NULL,
	[password] [char](100) NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
 CONSTRAINT [PK_account] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 7/28/2022 8:26:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[phonenumber] [nchar](10) NULL,
	[address] [nchar](10) NULL,
	[email] [nchar](100) NULL,
	[name] [nchar](100) NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[menu]    Script Date: 7/28/2022 8:26:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
 CONSTRAINT [PK_menu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceDetail]    Script Date: 7/28/2022 8:26:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[menuId] [int] NULL,
	[detail] [nvarchar](max) NULL,
	[service_name] [nvarchar](50) NULL,
	[img] [nvarchar](max) NULL,
	[is_menu_service] [int] NULL,
 CONSTRAINT [PK_ServiceDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[slide_logo]    Script Date: 7/28/2022 8:26:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[slide_logo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[slide_path] [nvarchar](150) NULL,
	[logo_path] [nvarchar](150) NULL,
	[update_date] [datetime] NULL,
	[create_date] [datetime] NULL,
 CONSTRAINT [PK_slide_logo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[account] ON 

INSERT [dbo].[account] ([id], [usrer_name], [password], [create_date], [update_date]) VALUES (2, N'vy                                                                                                  ', N'123455555                                                                                           ', CAST(N'2022-07-02T22:36:53.277' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[account] OFF
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([id], [phonenumber], [address], [email], [name]) VALUES (2, N'0336985325', N'Thái Bình ', N'vo@gmail.com                                                                                        ', N'Võ Nguyễn                                                                                           ')
SET IDENTITY_INSERT [dbo].[Contact] OFF
GO
SET IDENTITY_INSERT [dbo].[menu] ON 

INSERT [dbo].[menu] ([id], [name], [create_date], [update_date]) VALUES (1, N'Giới thiệu', CAST(N'2022-06-28T00:00:00.000' AS DateTime), CAST(N'2022-06-28T00:00:00.000' AS DateTime))
INSERT [dbo].[menu] ([id], [name], [create_date], [update_date]) VALUES (2, N'Dịch vụ chuyên biệt', CAST(N'2022-06-28T00:00:00.000' AS DateTime), CAST(N'2022-06-28T00:00:00.000' AS DateTime))
INSERT [dbo].[menu] ([id], [name], [create_date], [update_date]) VALUES (5, N'Tin tức', CAST(N'2022-06-28T00:00:00.000' AS DateTime), CAST(N'2022-06-28T00:00:00.000' AS DateTime))
INSERT [dbo].[menu] ([id], [name], [create_date], [update_date]) VALUES (1008, N'Giá trị cốt lõi', CAST(N'2022-06-28T00:00:00.000' AS DateTime), CAST(N'2022-06-28T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[menu] OFF
GO
SET IDENTITY_INSERT [dbo].[ServiceDetail] ON 

INSERT [dbo].[ServiceDetail] ([id], [menuId], [detail], [service_name], [img], [is_menu_service]) VALUES (1002, 5, N'Về công ty', N'Về công ty', N'/User/Images/tu-vtn-doanh-nghibp.jpg', 1)
INSERT [dbo].[ServiceDetail] ([id], [menuId], [detail], [service_name], [img], [is_menu_service]) VALUES (1003, 5, N'
iwehiw wrhrwtrwt rtrw wrtrw trwt rwotorwt orwthrw thiowr torwth rwioit rwot wrotihorwt iorwtioprwhtrwio rwip rwioth rwioht iorwt iorwtriwt oirw toiprwt rwtrw oti rwiotrwt rwoipt trwpoit riow trwot orw oirwt rwioptrwo rwo orwt rowit rwopt hrowt rwoit rwiot wiort rwipopt ipowrt rwio trwtrwo twr trwt rwot rwoit orwt eewrewrqerq oeqr qeh rqerqeir qereqohripoqepr qer eqr', N'Tin tuyển dụng', N'/User/Images/tu-vtn-doanh-nghibp.jpg', 1)
INSERT [dbo].[ServiceDetail] ([id], [menuId], [detail], [service_name], [img], [is_menu_service]) VALUES (1004, 1, N'Giới thiệu', N'Giới thiệu', N'/User/Images/tu-vtn-doanh-nghibp.jpg', 1)
INSERT [dbo].[ServiceDetail] ([id], [menuId], [detail], [service_name], [img], [is_menu_service]) VALUES (1005, 2, N'Nguồn vốn', N'Nguồn vốn', N'/User/Images/tu-vtn-doanh-nghibp.jpg', 3)
INSERT [dbo].[ServiceDetail] ([id], [menuId], [detail], [service_name], [img], [is_menu_service]) VALUES (1006, 2, N'Quản trị tài chín', N'Quản trị tài chính', N'/User/Images/tu-vtn-doanh-nghibp.jpg', 3)
INSERT [dbo].[ServiceDetail] ([id], [menuId], [detail], [service_name], [img], [is_menu_service]) VALUES (1007, 2, N'Đánh giá rủi ro', N'Đánh giá rủi ro', N'/User/Images/tu-vtn-doanh-nghibp.jpg', 3)
INSERT [dbo].[ServiceDetail] ([id], [menuId], [detail], [service_name], [img], [is_menu_service]) VALUES (1008, 2, N'Kiểm toán', N'Kiểm toán', N'/User/Images/tu-vtn-doanh-nghibp.jpg', 1)
INSERT [dbo].[ServiceDetail] ([id], [menuId], [detail], [service_name], [img], [is_menu_service]) VALUES (1009, 2, N'Thuế', N'Thuế', N'/User/Images/tu-vtn-doanh-nghibp.jpg', 1)
INSERT [dbo].[ServiceDetail] ([id], [menuId], [detail], [service_name], [img], [is_menu_service]) VALUES (1010, 2, N'Nhân sự', N'Nhân sự', N'/User/Images/tu-vtn-doanh-nghibp.jpg', 1)
INSERT [dbo].[ServiceDetail] ([id], [menuId], [detail], [service_name], [img], [is_menu_service]) VALUES (1011, 2, N'Tư vấn', N'Tư vấn', N'/User/Images/tu-vtn-doanh-nghibp.jpg', 1)
INSERT [dbo].[ServiceDetail] ([id], [menuId], [detail], [service_name], [img], [is_menu_service]) VALUES (1013, 1008, N'Giá trị', N'Giá trị cốt lõi', N'/User/Images/tu-vtn-doanh-nghibp.jpg', 2)
INSERT [dbo].[ServiceDetail] ([id], [menuId], [detail], [service_name], [img], [is_menu_service]) VALUES (1014, 2, N'Quản trị tài chính', N'Quản trị tài chính', N'/User/Images/tu-vtn-doanh-nghibp.jpg', 1)
INSERT [dbo].[ServiceDetail] ([id], [menuId], [detail], [service_name], [img], [is_menu_service]) VALUES (1015, 2, N'Nguồn vốn', N'Nguồn vốn', N'/User/Images/tu-vtn-doanh-nghibp.jpg', 1)
INSERT [dbo].[ServiceDetail] ([id], [menuId], [detail], [service_name], [img], [is_menu_service]) VALUES (1016, 2, N'Đánh giá rủi ro', N'Đánh giá rủi ro', N'/User/Images/tu-vtn-doanh-nghibp.jpg', 1)
INSERT [dbo].[ServiceDetail] ([id], [menuId], [detail], [service_name], [img], [is_menu_service]) VALUES (1017, 1008, N'Giá trị', N'Giá trị cốt lõi', N'/User/Images/tu-vtn-doanh-nghibp.jpg', 1)
INSERT [dbo].[ServiceDetail] ([id], [menuId], [detail], [service_name], [img], [is_menu_service]) VALUES (1018, 1, N'iwehiw wrhrwtrwt rtrw wrtrw trwt rwotorwt orwthrw thiowr torwth rwioit rwot wrotihorwt iorwtioprwhtrwio rwip rwioth rwioht iorwt iorwtriwt oirw toiprwt rwtrw oti rwiotrwt rwoipt trwpoit riow trwot orw oirwt rwioptrwo rwo orwt rowit rwopt hrowt rwoit rwiot wiort rwipopt ipowrt rwio trwtrwo twr trwt rwot rwoit orwt eewrewrqerq oeqr qeh rqerqeir qereqohripoqepr qer eqr', N'Giới thiệu', N'/User/Images/tu-vtn-doanh-nghibp.jpg', 0)
SET IDENTITY_INSERT [dbo].[ServiceDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[slide_logo] ON 

INSERT [dbo].[slide_logo] ([id], [slide_path], [logo_path], [update_date], [create_date]) VALUES (1, N'/User/Images/banner-1.jpg', NULL, CAST(N'2022-06-27T00:00:00.000' AS DateTime), CAST(N'2022-06-27T00:00:00.000' AS DateTime))
INSERT [dbo].[slide_logo] ([id], [slide_path], [logo_path], [update_date], [create_date]) VALUES (2, N'/User/Images/banner-2.jpg', NULL, CAST(N'2022-06-27T00:00:00.000' AS DateTime), CAST(N'2022-06-27T00:00:00.000' AS DateTime))
INSERT [dbo].[slide_logo] ([id], [slide_path], [logo_path], [update_date], [create_date]) VALUES (6, N'/User/Images/Beautiful-Animated-Winform-NotificationsAlertsPop-ups-.jpg', N'/User/Images/Screenshot 2022-02-20 181348.png', NULL, CAST(N'2022-07-03T16:40:42.850' AS DateTime))
SET IDENTITY_INSERT [dbo].[slide_logo] OFF
GO
ALTER TABLE [dbo].[ServiceDetail]  WITH CHECK ADD  CONSTRAINT [FK_ServiceDetail_menu] FOREIGN KEY([menuId])
REFERENCES [dbo].[menu] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ServiceDetail] CHECK CONSTRAINT [FK_ServiceDetail_menu]
GO
USE [master]
GO
ALTER DATABASE [Yttran] SET  READ_WRITE 
GO
