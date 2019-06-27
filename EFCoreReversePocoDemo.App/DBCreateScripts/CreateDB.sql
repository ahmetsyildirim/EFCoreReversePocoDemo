USE [master]
GO
/****** Object:  Database [HotelDb]    Script Date: 27/06/2019 9:06:35 PM ******/
CREATE DATABASE [HotelDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HotelDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\HotelDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HotelDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\HotelDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [HotelDb] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HotelDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HotelDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HotelDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HotelDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HotelDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HotelDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [HotelDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HotelDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HotelDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HotelDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HotelDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HotelDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HotelDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HotelDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HotelDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HotelDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HotelDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HotelDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HotelDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HotelDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HotelDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HotelDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HotelDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HotelDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HotelDb] SET  MULTI_USER 
GO
ALTER DATABASE [HotelDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HotelDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HotelDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HotelDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HotelDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HotelDb] SET QUERY_STORE = OFF
GO
USE [HotelDb]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [HotelDb]
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 27/06/2019 9:06:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotel](
	[HotelId] [int] IDENTITY(1,1) NOT NULL,
	[HotelName] [varchar](200) NOT NULL,
	[HotelDescription] [varchar](500) NOT NULL,
	[City] [varchar](100) NOT NULL,
	[EstablishedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Hotel] PRIMARY KEY CLUSTERED 
(
	[HotelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 27/06/2019 9:06:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[RoomId] [int] IDENTITY(1,1) NOT NULL,
	[HotelId] [int] NOT NULL,
	[RoomNumber] [varchar](20) NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[IsAvaliable] [bit] NOT NULL,
	[RoomDescription] [varchar](200) NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[RoomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Hotel] ON 
GO
INSERT [dbo].[Hotel] ([HotelId], [HotelName], [HotelDescription], [City], [EstablishedDate]) VALUES (1, N'ParadiseHotel', N'Resort Hotel at Paradise Beach', N'Gold Coast', CAST(N'2001-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Hotel] ([HotelId], [HotelName], [HotelDescription], [City], [EstablishedDate]) VALUES (2, N'Surfers Hotel', N'Nice hotel close to beach', N'Gold Coast', CAST(N'1997-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Hotel] ([HotelId], [HotelName], [HotelDescription], [City], [EstablishedDate]) VALUES (3, N'Sky Hotel', N'A hotel in the hearth of Gold Coast', N'Gold Coast', CAST(N'1977-01-05T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Hotel] OFF
GO
SET IDENTITY_INSERT [dbo].[Room] ON 
GO
INSERT [dbo].[Room] ([RoomId], [HotelId], [RoomNumber], [Price], [IsAvaliable], [RoomDescription]) VALUES (1, 1, N'R202', CAST(400 AS Decimal(18, 0)), 1, N'Room with Ocean View')
GO
INSERT [dbo].[Room] ([RoomId], [HotelId], [RoomNumber], [Price], [IsAvaliable], [RoomDescription]) VALUES (2, 1, N'R203', CAST(250 AS Decimal(18, 0)), 0, N'Single Room')
GO
INSERT [dbo].[Room] ([RoomId], [HotelId], [RoomNumber], [Price], [IsAvaliable], [RoomDescription]) VALUES (3, 2, N'A701', CAST(700 AS Decimal(18, 0)), 1, N'Suite Room')
GO
INSERT [dbo].[Room] ([RoomId], [HotelId], [RoomNumber], [Price], [IsAvaliable], [RoomDescription]) VALUES (4, 3, N'R402', CAST(1500 AS Decimal(18, 0)), 0, N'King Room')
GO
INSERT [dbo].[Room] ([RoomId], [HotelId], [RoomNumber], [Price], [IsAvaliable], [RoomDescription]) VALUES (5, 3, N'R501', CAST(175 AS Decimal(18, 0)), 1, N'Basic Room')
GO
SET IDENTITY_INSERT [dbo].[Room] OFF
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_Hotel] FOREIGN KEY([HotelId])
REFERENCES [dbo].[Hotel] ([HotelId])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_Hotel]
GO
/****** Object:  StoredProcedure [dbo].[SearchHotel]    Script Date: 27/06/2019 9:06:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SearchHotel] 
@keyword varchar(50)
AS
BEGIN
	SELECT h.HotelId,h.HotelName,h.HotelDescription,h.City,h.EstablishedDate,r.RoomNumber,r.RoomDescription,r.Price,r.IsAvaliable
	from Hotel h
		inner join Room r on h.HotelId = r.HotelId
	where 
		r.RoomDescription like '%'+@keyword+'%'
		or
		h.HotelName like '%'+@keyword+'%'
		or
		h.HotelDescription like '%'+@keyword+'%'
	order by Price desc

	SET NOCOUNT ON;
END
GO
USE [master]
GO
ALTER DATABASE [HotelDb] SET  READ_WRITE 
GO
