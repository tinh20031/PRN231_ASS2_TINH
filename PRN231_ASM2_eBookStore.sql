USE [master]
GO
/****** Object:  Database [PRN231_ASM2_eBookStore]    Script Date: 22/10/2024 10:05:34 pm ******/
CREATE DATABASE [PRN231_ASM2_eBookStore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRN231_ASM2_eBookStore', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER02\MSSQL\DATA\PRN231_ASM2_eBookStore.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRN231_ASM2_eBookStore_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER02\MSSQL\DATA\PRN231_ASM2_eBookStore_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [PRN231_ASM2_eBookStore] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRN231_ASM2_eBookStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRN231_ASM2_eBookStore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRN231_ASM2_eBookStore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRN231_ASM2_eBookStore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRN231_ASM2_eBookStore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRN231_ASM2_eBookStore] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRN231_ASM2_eBookStore] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PRN231_ASM2_eBookStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRN231_ASM2_eBookStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRN231_ASM2_eBookStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRN231_ASM2_eBookStore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRN231_ASM2_eBookStore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRN231_ASM2_eBookStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRN231_ASM2_eBookStore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRN231_ASM2_eBookStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRN231_ASM2_eBookStore] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PRN231_ASM2_eBookStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRN231_ASM2_eBookStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRN231_ASM2_eBookStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRN231_ASM2_eBookStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRN231_ASM2_eBookStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRN231_ASM2_eBookStore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRN231_ASM2_eBookStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRN231_ASM2_eBookStore] SET RECOVERY FULL 
GO
ALTER DATABASE [PRN231_ASM2_eBookStore] SET  MULTI_USER 
GO
ALTER DATABASE [PRN231_ASM2_eBookStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRN231_ASM2_eBookStore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRN231_ASM2_eBookStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRN231_ASM2_eBookStore] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRN231_ASM2_eBookStore] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRN231_ASM2_eBookStore] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PRN231_ASM2_eBookStore', N'ON'
GO
ALTER DATABASE [PRN231_ASM2_eBookStore] SET QUERY_STORE = ON
GO
ALTER DATABASE [PRN231_ASM2_eBookStore] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [PRN231_ASM2_eBookStore]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 22/10/2024 10:05:34 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[author_id] [int] IDENTITY(1,1) NOT NULL,
	[last_name] [nvarchar](50) NULL,
	[first_name] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[city] [nvarchar](50) NULL,
	[state] [nvarchar](50) NULL,
	[zip] [nvarchar](50) NULL,
	[email_address] [nvarchar](50) NULL,
 CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED 
(
	[author_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 22/10/2024 10:05:34 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[book_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NULL,
	[type] [int] NULL,
	[pub_id] [int] NULL,
	[price] [float] NULL,
	[advance] [nvarchar](50) NULL,
	[royalty] [float] NULL,
	[ytl_sales] [float] NULL,
	[note] [nvarchar](50) NULL,
	[published_date] [date] NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[book_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookAuthor]    Script Date: 22/10/2024 10:05:34 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookAuthor](
	[author_id] [int] NOT NULL,
	[book_id] [int] NOT NULL,
	[author_order] [nvarchar](50) NOT NULL,
	[royality_percentage] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Publisher]    Script Date: 22/10/2024 10:05:34 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publisher](
	[pub_id] [int] IDENTITY(1,1) NOT NULL,
	[pub_name] [nvarchar](50) NULL,
	[city] [nvarchar](50) NULL,
	[state] [nvarchar](50) NULL,
	[country] [nvarchar](50) NULL,
 CONSTRAINT [PK_Publisher] PRIMARY KEY CLUSTERED 
(
	[pub_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 22/10/2024 10:05:34 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_desc] [bit] NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 22/10/2024 10:05:34 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[email_address] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[source] [nvarchar](50) NULL,
	[first_name] [nvarchar](50) NULL,
	[middle_name] [nvarchar](50) NULL,
	[last_name] [nvarchar](50) NULL,
	[role_id] [int] NULL,
	[pub_id] [int] NULL,
	[hire_date] [date] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Author] ON 

INSERT [dbo].[Author] ([author_id], [last_name], [first_name], [phone], [address], [city], [state], [zip], [email_address]) VALUES (1, N'author01', N'author_name', N'0123456789', N'vietnam', N'hcm', N'123', N'123', N'a@gmail.com')
INSERT [dbo].[Author] ([author_id], [last_name], [first_name], [phone], [address], [city], [state], [zip], [email_address]) VALUES (3, N'test', N'test edited', N'123123123', N'test', N'123', N'123', N'123', N'test@gmail.com')
SET IDENTITY_INSERT [dbo].[Author] OFF
GO
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([book_id], [title], [type], [pub_id], [price], [advance], [royalty], [ytl_sales], [note], [published_date]) VALUES (1, N'book1', 1, 1, 1000, N'123', 500, 100, N'nothing', CAST(N'2025-01-01' AS Date))
INSERT [dbo].[Book] ([book_id], [title], [type], [pub_id], [price], [advance], [royalty], [ytl_sales], [note], [published_date]) VALUES (2, N'book2', 1, 1, 123, N'string', 123, 123, N'string', CAST(N'2024-10-22' AS Date))
INSERT [dbo].[Book] ([book_id], [title], [type], [pub_id], [price], [advance], [royalty], [ytl_sales], [note], [published_date]) VALUES (6, N'test hihihi edited', 1, 1, 1, N'1', 1, 1, N'123123', CAST(N'2024-10-23' AS Date))
SET IDENTITY_INSERT [dbo].[Book] OFF
GO
INSERT [dbo].[BookAuthor] ([author_id], [book_id], [author_order], [royality_percentage]) VALUES (1, 1, N'something here', 10)
GO
SET IDENTITY_INSERT [dbo].[Publisher] ON 

INSERT [dbo].[Publisher] ([pub_id], [pub_name], [city], [state], [country]) VALUES (1, N'pub_01', N'hcm', N'1', N'vietnam')
SET IDENTITY_INSERT [dbo].[Publisher] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([role_id], [role_desc]) VALUES (1, 1)
INSERT [dbo].[Role] ([role_id], [role_desc]) VALUES (2, 0)
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([user_id], [email_address], [password], [source], [first_name], [middle_name], [last_name], [role_id], [pub_id], [hire_date]) VALUES (1, N'thanh@gmail.com', N'123123', NULL, N'thanh', N'hoai', N'truong', 1, 1, CAST(N'2025-01-01' AS Date))
INSERT [dbo].[User] ([user_id], [email_address], [password], [source], [first_name], [middle_name], [last_name], [role_id], [pub_id], [hire_date]) VALUES (2, N'test@gmail.com', N'123123', N'string', N'string', N'string', N'string', 1, 1, CAST(N'2024-10-22' AS Date))
INSERT [dbo].[User] ([user_id], [email_address], [password], [source], [first_name], [middle_name], [last_name], [role_id], [pub_id], [hire_date]) VALUES (3, N'b@gmail.com', N'123123', NULL, N'q', N'a', N'c', NULL, NULL, NULL)
INSERT [dbo].[User] ([user_id], [email_address], [password], [source], [first_name], [middle_name], [last_name], [role_id], [pub_id], [hire_date]) VALUES (4, N'admin@ebookstore.com', N'admin@@', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2000-01-01' AS Date))
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Publisher] FOREIGN KEY([pub_id])
REFERENCES [dbo].[Publisher] ([pub_id])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Publisher]
GO
ALTER TABLE [dbo].[BookAuthor]  WITH CHECK ADD  CONSTRAINT [FK_BookAuthor_Author] FOREIGN KEY([author_id])
REFERENCES [dbo].[Author] ([author_id])
GO
ALTER TABLE [dbo].[BookAuthor] CHECK CONSTRAINT [FK_BookAuthor_Author]
GO
ALTER TABLE [dbo].[BookAuthor]  WITH CHECK ADD  CONSTRAINT [FK_BookAuthor_Book] FOREIGN KEY([book_id])
REFERENCES [dbo].[Book] ([book_id])
GO
ALTER TABLE [dbo].[BookAuthor] CHECK CONSTRAINT [FK_BookAuthor_Book]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Publisher] FOREIGN KEY([pub_id])
REFERENCES [dbo].[Publisher] ([pub_id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Publisher]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
USE [master]
GO
ALTER DATABASE [PRN231_ASM2_eBookStore] SET  READ_WRITE 
GO
