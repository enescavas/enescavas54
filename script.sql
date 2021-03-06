USE [master]
GO
/****** Object:  Database [KortKiralama]    Script Date: 7.04.2018 19:05:02 ******/
CREATE DATABASE [KortKiralama]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KortKiralama', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQL_2014\MSSQL\DATA\KortKiralama.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'KortKiralama_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQL_2014\MSSQL\DATA\KortKiralama_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [KortKiralama] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KortKiralama].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KortKiralama] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KortKiralama] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KortKiralama] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KortKiralama] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KortKiralama] SET ARITHABORT OFF 
GO
ALTER DATABASE [KortKiralama] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KortKiralama] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KortKiralama] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KortKiralama] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KortKiralama] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KortKiralama] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KortKiralama] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KortKiralama] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KortKiralama] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KortKiralama] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KortKiralama] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KortKiralama] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KortKiralama] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KortKiralama] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KortKiralama] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KortKiralama] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KortKiralama] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KortKiralama] SET RECOVERY FULL 
GO
ALTER DATABASE [KortKiralama] SET  MULTI_USER 
GO
ALTER DATABASE [KortKiralama] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KortKiralama] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KortKiralama] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KortKiralama] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [KortKiralama] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'KortKiralama', N'ON'
GO
USE [KortKiralama]
GO
/****** Object:  Table [dbo].[Kort]    Script Date: 7.04.2018 19:05:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kort](
	[KortNo] [nchar](2) NOT NULL,
	[Kort] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rezervasyon]    Script Date: 7.04.2018 19:05:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rezervasyon](
	[RezervasyonId] [int] IDENTITY(1,1) NOT NULL,
	[İsim] [nvarchar](50) NOT NULL,
	[Telefon] [nvarchar](15) NOT NULL,
	[Zaman] [date] NOT NULL,
	[SaatId] [nvarchar](2) NOT NULL,
	[KortId] [int] NOT NULL,
	[fiyat] [int] NOT NULL,
 CONSTRAINT [PK_Rezervasyon] PRIMARY KEY CLUSTERED 
(
	[RezervasyonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Uyeler]    Script Date: 7.04.2018 19:05:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uyeler](
	[UyelerID] [int] IDENTITY(1,1) NOT NULL,
	[İsim] [nvarchar](max) NOT NULL,
	[Telefon] [nvarchar](14) NOT NULL,
	[KullaniciAdi] [nvarchar](50) NOT NULL,
	[Sifre] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Uyeler] PRIMARY KEY CLUSTERED 
(
	[UyelerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Yoneticiler]    Script Date: 7.04.2018 19:05:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yoneticiler](
	[YoneticiId] [nchar](10) NOT NULL,
	[KullaniciAdi] [nvarchar](max) NOT NULL,
	[Sifre] [nvarchar](max) NOT NULL,
	[İsim] [nvarchar](max) NOT NULL,
	[Telefon] [nchar](14) NOT NULL,
	[Maas] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Yoneticiler] PRIMARY KEY CLUSTERED 
(
	[YoneticiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[Kort] ([KortNo], [Kort]) VALUES (N'1 ', N'Kort1')
INSERT [dbo].[Kort] ([KortNo], [Kort]) VALUES (N'2 ', N'Kort2')
INSERT [dbo].[Kort] ([KortNo], [Kort]) VALUES (N'3 ', N'Kort3')
SET IDENTITY_INSERT [dbo].[Uyeler] ON 

INSERT [dbo].[Uyeler] ([UyelerID], [İsim], [Telefon], [KullaniciAdi], [Sifre]) VALUES (1, N'Elif', N'55555555', N'Elif                                              ', N'123456                                            ')
INSERT [dbo].[Uyeler] ([UyelerID], [İsim], [Telefon], [KullaniciAdi], [Sifre]) VALUES (2, N'Ayşe', N'555555', N'Ayse                                              ', N'12345                                             ')
INSERT [dbo].[Uyeler] ([UyelerID], [İsim], [Telefon], [KullaniciAdi], [Sifre]) VALUES (3, N'Fatma', N'622448', N'Fatma                                             ', N'1234                                              ')
INSERT [dbo].[Uyeler] ([UyelerID], [İsim], [Telefon], [KullaniciAdi], [Sifre]) VALUES (4, N'Esra', N'982348', N'Esra                                              ', N'123                                               ')
SET IDENTITY_INSERT [dbo].[Uyeler] OFF
INSERT [dbo].[Yoneticiler] ([YoneticiId], [KullaniciAdi], [Sifre], [İsim], [Telefon], [Maas]) VALUES (N'1         ', N'Admin', N'A159951', N'Elif Perçin', N'9875468515    ', N'5000 tl   ')
INSERT [dbo].[Yoneticiler] ([YoneticiId], [KullaniciAdi], [Sifre], [İsim], [Telefon], [Maas]) VALUES (N'2         ', N'Ayse', N'A357753', N'Ayşe Yıldız', N'241658972     ', N'4000 tl   ')
USE [master]
GO
ALTER DATABASE [KortKiralama] SET  READ_WRITE 
GO
