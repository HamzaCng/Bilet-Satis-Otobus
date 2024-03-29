USE [master]
GO
/****** Object:  Database [Otobus_Otomasyon]    Script Date: 17.03.2019 22:30:59 ******/
CREATE DATABASE [Otobus_Otomasyon]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Otobus_Otomasyon', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Otobus_Otomasyon.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Otobus_Otomasyon_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Otobus_Otomasyon_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Otobus_Otomasyon] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Otobus_Otomasyon].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Otobus_Otomasyon] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Otobus_Otomasyon] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Otobus_Otomasyon] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Otobus_Otomasyon] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Otobus_Otomasyon] SET ARITHABORT OFF 
GO
ALTER DATABASE [Otobus_Otomasyon] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Otobus_Otomasyon] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Otobus_Otomasyon] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Otobus_Otomasyon] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Otobus_Otomasyon] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Otobus_Otomasyon] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Otobus_Otomasyon] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Otobus_Otomasyon] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Otobus_Otomasyon] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Otobus_Otomasyon] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Otobus_Otomasyon] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Otobus_Otomasyon] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Otobus_Otomasyon] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Otobus_Otomasyon] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Otobus_Otomasyon] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Otobus_Otomasyon] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Otobus_Otomasyon] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Otobus_Otomasyon] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Otobus_Otomasyon] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Otobus_Otomasyon] SET  MULTI_USER 
GO
ALTER DATABASE [Otobus_Otomasyon] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Otobus_Otomasyon] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Otobus_Otomasyon] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Otobus_Otomasyon] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Otobus_Otomasyon]
GO
/****** Object:  Table [dbo].[IlTablosu]    Script Date: 17.03.2019 22:30:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IlTablosu](
	[ilID] [int] IDENTITY(1,1) NOT NULL,
	[ilAd] [nvarchar](50) NULL,
 CONSTRAINT [PK_IlTablosu] PRIMARY KEY CLUSTERED 
(
	[ilID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SeferBilgileri]    Script Date: 17.03.2019 22:30:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeferBilgileri](
	[seferID] [int] IDENTITY(1,1) NOT NULL,
	[plakaNo] [nvarchar](50) NULL,
	[yolcuID] [int] NULL,
	[marka] [nvarchar](50) NULL,
	[kalkisNoktasi] [nvarchar](50) NULL,
	[varisNoktasi] [nvarchar](50) NULL,
	[biletFiyati] [money] NULL,
	[koltukNo] [int] NULL,
	[gidisTarihi] [date] NULL,
 CONSTRAINT [PK_SeferBilgileri] PRIMARY KEY CLUSTERED 
(
	[seferID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TarifeTablosu]    Script Date: 17.03.2019 22:30:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TarifeTablosu](
	[tarifeID] [int] IDENTITY(1,1) NOT NULL,
	[kalkisNoktasi] [nvarchar](50) NULL,
	[varisNoktasi] [nvarchar](50) NULL,
	[biletFiyati] [money] NULL,
	[plakaNo] [nvarchar](50) NULL,
	[marka] [nvarchar](50) NULL,
 CONSTRAINT [PK_TarifeTablosu] PRIMARY KEY CLUSTERED 
(
	[tarifeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YolcuListesi]    Script Date: 17.03.2019 22:30:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YolcuListesi](
	[yolcuID] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](50) NULL,
	[soyad] [nvarchar](50) NULL,
	[cinsiyet] [nvarchar](50) NULL,
	[tcNo] [nvarchar](50) NULL,
	[telNo] [nvarchar](50) NULL,
 CONSTRAINT [PK_YolcuListesi] PRIMARY KEY CLUSTERED 
(
	[yolcuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[IlTablosu] ON 

INSERT [dbo].[IlTablosu] ([ilID], [ilAd]) VALUES (1, N'Istanbul')
INSERT [dbo].[IlTablosu] ([ilID], [ilAd]) VALUES (2, N'Sivas')
INSERT [dbo].[IlTablosu] ([ilID], [ilAd]) VALUES (3, N'Yozgat')
INSERT [dbo].[IlTablosu] ([ilID], [ilAd]) VALUES (4, N'Ankara')
INSERT [dbo].[IlTablosu] ([ilID], [ilAd]) VALUES (5, N'Kayseri')
INSERT [dbo].[IlTablosu] ([ilID], [ilAd]) VALUES (6, N'Tokat')
SET IDENTITY_INSERT [dbo].[IlTablosu] OFF
SET IDENTITY_INSERT [dbo].[SeferBilgileri] ON 

INSERT [dbo].[SeferBilgileri] ([seferID], [plakaNo], [yolcuID], [marka], [kalkisNoktasi], [varisNoktasi], [biletFiyati], [koltukNo], [gidisTarihi]) VALUES (1, N'58 SVS 58', 1, N'Setra', N'Istanbul', N'Sivas', 140.0000, 10, CAST(0x6B3F0B00 AS Date))
INSERT [dbo].[SeferBilgileri] ([seferID], [plakaNo], [yolcuID], [marka], [kalkisNoktasi], [varisNoktasi], [biletFiyati], [koltukNo], [gidisTarihi]) VALUES (11, N'58 SK 38', 11, N'Megaliner', N'Sivas', N'Kayseri', 50.0000, 13, CAST(0x713F0B00 AS Date))
INSERT [dbo].[SeferBilgileri] ([seferID], [plakaNo], [yolcuID], [marka], [kalkisNoktasi], [varisNoktasi], [biletFiyati], [koltukNo], [gidisTarihi]) VALUES (12, N'58 SK 38', 12, N'Megaliner', N'Sivas', N'Kayseri', 50.0000, 13, CAST(0x713F0B00 AS Date))
INSERT [dbo].[SeferBilgileri] ([seferID], [plakaNo], [yolcuID], [marka], [kalkisNoktasi], [varisNoktasi], [biletFiyati], [koltukNo], [gidisTarihi]) VALUES (13, N'34 FM 4444', 13, N'Neoplan', N'Ankara', N'Istanbul', 120.0000, 13, CAST(0x723F0B00 AS Date))
INSERT [dbo].[SeferBilgileri] ([seferID], [plakaNo], [yolcuID], [marka], [kalkisNoktasi], [varisNoktasi], [biletFiyati], [koltukNo], [gidisTarihi]) VALUES (14, N'58 SY 61', 14, N'Tourismo', N'Yozgat', N'Sivas', 50.0000, 6, CAST(0x733F0B00 AS Date))
INSERT [dbo].[SeferBilgileri] ([seferID], [plakaNo], [yolcuID], [marka], [kalkisNoktasi], [varisNoktasi], [biletFiyati], [koltukNo], [gidisTarihi]) VALUES (15, N'60 TKT 60', 15, N'Safir', N'Tokat', N'Istanbul', 145.0000, 5, CAST(0x743F0B00 AS Date))
INSERT [dbo].[SeferBilgileri] ([seferID], [plakaNo], [yolcuID], [marka], [kalkisNoktasi], [varisNoktasi], [biletFiyati], [koltukNo], [gidisTarihi]) VALUES (16, N'34 FM 4444', 16, N'Neoplan', N'Istanbul', N'Ankara', 120.0000, 11, CAST(0x6E3F0B00 AS Date))
INSERT [dbo].[SeferBilgileri] ([seferID], [plakaNo], [yolcuID], [marka], [kalkisNoktasi], [varisNoktasi], [biletFiyati], [koltukNo], [gidisTarihi]) VALUES (17, N'34 FM 4444', 17, N'Neoplan', N'Istanbul', N'Ankara', 120.0000, 7, CAST(0x6E3F0B00 AS Date))
SET IDENTITY_INSERT [dbo].[SeferBilgileri] OFF
SET IDENTITY_INSERT [dbo].[TarifeTablosu] ON 

INSERT [dbo].[TarifeTablosu] ([tarifeID], [kalkisNoktasi], [varisNoktasi], [biletFiyati], [plakaNo], [marka]) VALUES (1, N'Istanbul', N'Ankara', 120.0000, N'34 FM 4444', N'Neoplan')
INSERT [dbo].[TarifeTablosu] ([tarifeID], [kalkisNoktasi], [varisNoktasi], [biletFiyati], [plakaNo], [marka]) VALUES (2, N'Ankara', N'Istanbul', 120.0000, N'34 FM 4444', N'Neoplan')
INSERT [dbo].[TarifeTablosu] ([tarifeID], [kalkisNoktasi], [varisNoktasi], [biletFiyati], [plakaNo], [marka]) VALUES (3, N'Istanbul', N'Sivas', 140.0000, N'58 SVS 58', N'Setra')
INSERT [dbo].[TarifeTablosu] ([tarifeID], [kalkisNoktasi], [varisNoktasi], [biletFiyati], [plakaNo], [marka]) VALUES (4, N'Sivas', N'Istanbul', 140.0000, N'58 SVS 58', N'Setra')
INSERT [dbo].[TarifeTablosu] ([tarifeID], [kalkisNoktasi], [varisNoktasi], [biletFiyati], [plakaNo], [marka]) VALUES (5, N'Istanbul', N'Kayseri', 130.0000, N'38 KYS 38', N'MAN Fortuna')
INSERT [dbo].[TarifeTablosu] ([tarifeID], [kalkisNoktasi], [varisNoktasi], [biletFiyati], [plakaNo], [marka]) VALUES (6, N'Kayseri', N'Istanbul', 130.0000, N'38 KYS 38', N'MAN Fortuna')
INSERT [dbo].[TarifeTablosu] ([tarifeID], [kalkisNoktasi], [varisNoktasi], [biletFiyati], [plakaNo], [marka]) VALUES (7, N'Istanbul', N'Yozgat', 135.0000, N'61 YG 61', N'Travego')
INSERT [dbo].[TarifeTablosu] ([tarifeID], [kalkisNoktasi], [varisNoktasi], [biletFiyati], [plakaNo], [marka]) VALUES (8, N'Yozgat', N'Istanbul', 135.0000, N'61 YG 61', N'Travego')
INSERT [dbo].[TarifeTablosu] ([tarifeID], [kalkisNoktasi], [varisNoktasi], [biletFiyati], [plakaNo], [marka]) VALUES (9, N'Istanbul', N'Tokat', 145.0000, N'60 TKT 60', N'Safir')
INSERT [dbo].[TarifeTablosu] ([tarifeID], [kalkisNoktasi], [varisNoktasi], [biletFiyati], [plakaNo], [marka]) VALUES (10, N'Tokat', N'Istanbul', 145.0000, N'60 TKT 60', N'Safir')
INSERT [dbo].[TarifeTablosu] ([tarifeID], [kalkisNoktasi], [varisNoktasi], [biletFiyati], [plakaNo], [marka]) VALUES (11, N'Sivas', N'Yozgat', 50.0000, N'58 SY 61', N'Tourismo')
INSERT [dbo].[TarifeTablosu] ([tarifeID], [kalkisNoktasi], [varisNoktasi], [biletFiyati], [plakaNo], [marka]) VALUES (12, N'Yozgat', N'Sivas', 50.0000, N'58 SY 61', N'Tourismo')
INSERT [dbo].[TarifeTablosu] ([tarifeID], [kalkisNoktasi], [varisNoktasi], [biletFiyati], [plakaNo], [marka]) VALUES (13, N'Sivas', N'Ankara', 60.0000, N'58 SA 06', N'Starliner')
INSERT [dbo].[TarifeTablosu] ([tarifeID], [kalkisNoktasi], [varisNoktasi], [biletFiyati], [plakaNo], [marka]) VALUES (14, N'Ankara', N'Sivas', 60.0000, N'58 SA 06', N'Starliner')
INSERT [dbo].[TarifeTablosu] ([tarifeID], [kalkisNoktasi], [varisNoktasi], [biletFiyati], [plakaNo], [marka]) VALUES (15, N'Sivas ', N'Kayseri', 50.0000, N'58 SK 38', N'Megaliner')
INSERT [dbo].[TarifeTablosu] ([tarifeID], [kalkisNoktasi], [varisNoktasi], [biletFiyati], [plakaNo], [marka]) VALUES (16, N'Kayseri', N'Sivas', 50.0000, N'58 SK 38', N'Megaliner')
INSERT [dbo].[TarifeTablosu] ([tarifeID], [kalkisNoktasi], [varisNoktasi], [biletFiyati], [plakaNo], [marka]) VALUES (17, N'Sivas', N'Tokat', 45.0000, N'58 ST 60', N'Safir')
INSERT [dbo].[TarifeTablosu] ([tarifeID], [kalkisNoktasi], [varisNoktasi], [biletFiyati], [plakaNo], [marka]) VALUES (18, N'Tokat', N'Sivas', 45.0000, N'58 ST 60', N'Safir')
INSERT [dbo].[TarifeTablosu] ([tarifeID], [kalkisNoktasi], [varisNoktasi], [biletFiyati], [plakaNo], [marka]) VALUES (19, N'Yozgat', N'Ankara', 30.0000, N'06 YA 61', N'Tourismo')
INSERT [dbo].[TarifeTablosu] ([tarifeID], [kalkisNoktasi], [varisNoktasi], [biletFiyati], [plakaNo], [marka]) VALUES (20, N'Ankara', N'Yozgat', 30.0000, N'06 YA 61', N'Tourismo')
INSERT [dbo].[TarifeTablosu] ([tarifeID], [kalkisNoktasi], [varisNoktasi], [biletFiyati], [plakaNo], [marka]) VALUES (21, N'Yozgat', N'Kayseri', 55.0000, N'61 YK 38', N'MAN Fortuna')
INSERT [dbo].[TarifeTablosu] ([tarifeID], [kalkisNoktasi], [varisNoktasi], [biletFiyati], [plakaNo], [marka]) VALUES (22, N'Kayseri', N'Yozgat', 55.0000, N'61 YK 38', N'MAN Fortuna')
INSERT [dbo].[TarifeTablosu] ([tarifeID], [kalkisNoktasi], [varisNoktasi], [biletFiyati], [plakaNo], [marka]) VALUES (23, N'Yozgat', N'Tokat', 65.0000, N'61 YT 60', N'Neoplan')
INSERT [dbo].[TarifeTablosu] ([tarifeID], [kalkisNoktasi], [varisNoktasi], [biletFiyati], [plakaNo], [marka]) VALUES (24, N'Tokat', N'Yozgat', 65.0000, N'61 YT 60', N'Neoplan')
INSERT [dbo].[TarifeTablosu] ([tarifeID], [kalkisNoktasi], [varisNoktasi], [biletFiyati], [plakaNo], [marka]) VALUES (25, N'Ankara', N'Kayseri', 100.0000, N'06 AK 38', N'Starliner')
INSERT [dbo].[TarifeTablosu] ([tarifeID], [kalkisNoktasi], [varisNoktasi], [biletFiyati], [plakaNo], [marka]) VALUES (26, N'Kayseri', N'Ankara', 100.0000, N'06 AK 38', N'Starliner')
INSERT [dbo].[TarifeTablosu] ([tarifeID], [kalkisNoktasi], [varisNoktasi], [biletFiyati], [plakaNo], [marka]) VALUES (27, N'Ankara', N'Tokat', 90.0000, N'06 AT 06', N'Travego')
INSERT [dbo].[TarifeTablosu] ([tarifeID], [kalkisNoktasi], [varisNoktasi], [biletFiyati], [plakaNo], [marka]) VALUES (28, N'Tokat', N'Ankara', 90.0000, N'06 AT 06', N'Travego')
INSERT [dbo].[TarifeTablosu] ([tarifeID], [kalkisNoktasi], [varisNoktasi], [biletFiyati], [plakaNo], [marka]) VALUES (29, N'Kayseri', N'Tokat', 70.0000, N'38 KT 60', N'Mercedes-Benz')
INSERT [dbo].[TarifeTablosu] ([tarifeID], [kalkisNoktasi], [varisNoktasi], [biletFiyati], [plakaNo], [marka]) VALUES (30, N'Tokat', N'Kayseri', 70.0000, N'38 KT 60', N'Mercedes-Benz')
SET IDENTITY_INSERT [dbo].[TarifeTablosu] OFF
SET IDENTITY_INSERT [dbo].[YolcuListesi] ON 

INSERT [dbo].[YolcuListesi] ([yolcuID], [ad], [soyad], [cinsiyet], [tcNo], [telNo]) VALUES (1, N'Zekeriya', N'SARICA', N'', N'4567778382', N'5556787654')
INSERT [dbo].[YolcuListesi] ([yolcuID], [ad], [soyad], [cinsiyet], [tcNo], [telNo]) VALUES (11, N'Hasan', N'Demir', N'Erkek', N'45455678765', N'5556785432')
INSERT [dbo].[YolcuListesi] ([yolcuID], [ad], [soyad], [cinsiyet], [tcNo], [telNo]) VALUES (12, N'Gülizar', N'Yılmaz', N'Bayan', N'64754433212', N'5556785423')
INSERT [dbo].[YolcuListesi] ([yolcuID], [ad], [soyad], [cinsiyet], [tcNo], [telNo]) VALUES (13, N'Derviş', N'Ramiz', N'Erkek', N'6785431234', N'5556678943')
INSERT [dbo].[YolcuListesi] ([yolcuID], [ad], [soyad], [cinsiyet], [tcNo], [telNo]) VALUES (14, N'Hakan', N'Taşıyan', N'Erkek', N'647588992', N'5556754')
INSERT [dbo].[YolcuListesi] ([yolcuID], [ad], [soyad], [cinsiyet], [tcNo], [telNo]) VALUES (15, N'Şebnem', N'FERAH', N'Bayan', N'6789543345', N'5378863443')
INSERT [dbo].[YolcuListesi] ([yolcuID], [ad], [soyad], [cinsiyet], [tcNo], [telNo]) VALUES (16, N'Mustafa', N'İPEKÇİOĞLU', N'Erkek', N'567894354', N'5556660606')
INSERT [dbo].[YolcuListesi] ([yolcuID], [ad], [soyad], [cinsiyet], [tcNo], [telNo]) VALUES (17, N'Hüseyin', N'Kağıt', N'Erkek', N'8977654534', N'5347896534')
SET IDENTITY_INSERT [dbo].[YolcuListesi] OFF
USE [master]
GO
ALTER DATABASE [Otobus_Otomasyon] SET  READ_WRITE 
GO
