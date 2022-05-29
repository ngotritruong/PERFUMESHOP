USE [master]
GO
/****** Object:  Database [QLdienthoai]    Script Date: 07/08/2021 2:35:50 SA ******/
CREATE DATABASE [QLNuochoa]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLNuochoa', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLNuochoa.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLNuocHoa_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLNuochoa_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLNuochoa] SET COMPATIBILITY_LEVEL = 150
GO
use QLNuochoa
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLNuochoa].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLNuochoa] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLNuochoa] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLNuochoa] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLNuochoa] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLNuochoa] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLNuochoa] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLNuochoa] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLNuochoa] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLNuochoa] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLNuochoa] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLNuochoa] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLNuochoa] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLNuochoa] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLNuochoa] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLNuochoa] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLNuochoa] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLNuochoa] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLNuochoa] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLNuochoa] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLNuochoa] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLNuochoa] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLNuochoa] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLNuochoa] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLNuochoa] SET  MULTI_USER 
GO
ALTER DATABASE [QLNuochoa] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLNuochoa] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLNuochoa] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLNuochoa] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLNuochoa] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLNuochoa] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLNuochoa] SET QUERY_STORE = OFF
GO
USE [QLNuochoa]
GO
/****** Object:  Table [dbo].[Chitietdonhang]    Script Date: 07/08/2021 2:35:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chitietdonhang](
	[Madon] [int] NOT NULL,
	[Masp] [int] NOT NULL,
	[Soluong] [int] NULL,
	[Dongia] [decimal](18, 0) NULL,
	[Thanhtien] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Chitietdonhang] PRIMARY KEY CLUSTERED 
(
	[Madon] ASC,
	[Masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Donhang]    Script Date: 07/08/2021 2:35:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Donhang](
	[Madon] [int] IDENTITY(1,1) NOT NULL,
	[Ngaydat] [datetime] NULL,
	[Tinhtrang] [int] NULL,
	[MaNguoidung] [int] NULL,
 CONSTRAINT [PK_Donhang] PRIMARY KEY CLUSTERED 
(
	[Madon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hangsanxuat]    Script Date: 07/08/2021 2:35:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hangsanxuat](
	[Mahang] [int] IDENTITY(1,1) NOT NULL,
	[Tenhang] [nchar](10) NULL,
 CONSTRAINT [PK_Hangsanxuat] PRIMARY KEY CLUSTERED 
(
	[Mahang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Danh cho]    Script Date: 07/08/2021 2:35:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhchoKh](
	[Mahd] [int] IDENTITY(1,1) NOT NULL,
	[Tenhdkh] [nchar](10) NULL,
 CONSTRAINT [PK_DanhchoKh] PRIMARY KEY CLUSTERED 
(
	[Mahd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nguoidung]    Script Date: 07/08/2021 2:35:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nguoidung](
	[MaNguoiDung] [int] IDENTITY(1,1) NOT NULL,
	[Hoten] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Dienthoai] [nchar](10) NULL,
	[Matkhau] [varchar](50) NULL,
	[IDQuyen] [int] NULL,
	[Diachi] [nvarchar](100) NULL,
 CONSTRAINT [PK_Khachhang] PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 07/08/2021 2:35:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[IDQuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](20) NULL,
 CONSTRAINT [PK_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[IDQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sanpham]    Script Date: 07/08/2021 2:35:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sanpham](
	[Masp] [int] IDENTITY(1,1) NOT NULL,
	[Tensp] [nvarchar](50) NULL,
	[Giatien] [decimal](18, 0) NULL,
	[Soluong] [int] NULL,
	[Mota] [ntext] NULL,
	[Anhbia] [nvarchar](10) NULL,
	[Mahang] [int] NULL,
	[Mahd] [int] NULL,
 CONSTRAINT [PK_Sanpham] PRIMARY KEY CLUSTERED 
(
	[Masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Donhang] ON 
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien]) VALUES (13, 2, 2, CAST(2000000 AS Decimal(18, 0)), CAST(4000000 AS Decimal(18, 0)))
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien]) VALUES (13, 5, 1, CAST(2000000 AS Decimal(18, 0)), CAST(2000000 AS Decimal(18, 0)))
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien]) VALUES (13, 10, 1, CAST(2000000 AS Decimal(18, 0)), CAST(2000000 AS Decimal(18, 0)))
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien]) VALUES (14, 14, 1, CAST(2000000 AS Decimal(18, 0)), CAST(2000000 AS Decimal(18, 0)))
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien]) VALUES (14, 16, 1, CAST(200000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien]) VALUES (15, 5, 1, CAST(2000000 AS Decimal(18, 0)), CAST(2000000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[Donhang] off

GO
SET IDENTITY_INSERT [dbo].[Donhang] ON 

INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung]) VALUES (13, CAST(N'2021-07-28T00:10:53.090' AS DateTime), NULL, 16)
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung]) VALUES (14, CAST(N'2021-07-28T00:11:27.207' AS DateTime), NULL, 16)
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung]) VALUES (15, CAST(N'2021-07-29T09:34:27.573' AS DateTime), NULL, 16)
SET IDENTITY_INSERT [dbo].[Donhang] OFF
GO
SET IDENTITY_INSERT [dbo].[Hangsanxuat] ON 

INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (1, N'Dior  ')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (2, N'chờ neo')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (3, N'luovuituoi')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (4, N'gu chì    ')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (5, N'Hugo boss ')
SET IDENTITY_INSERT [dbo].[Hangsanxuat] OFF
GO
SET IDENTITY_INSERT [dbo].[DanhchoKh] ON 

INSERT [dbo].[DanhchoKh] ([Mahd], [Tenhdkh]) VALUES (1, N'Nam')
INSERT [dbo].[DanhchoKh] ([Mahd], [Tenhdkh]) VALUES (2, N'Nữ')
INSERT [dbo].[DanhchoKh] ([Mahd], [Tenhdkh]) VALUES (3, N'Khác')
SET IDENTITY_INSERT [dbo].[DanhchoKh] OFF
GO
SET IDENTITY_INSERT [dbo].[Nguoidung] ON 

INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (14, N'Nguyen van Cuong', N'Admin@gmail.com', N'0812883636', N'12345678', 2, NULL)
INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (15, N'Nguyen van Cuong', N'cuongtest@gmail.com', N'0812883636', N'12345678', NULL, NULL)
INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (16, N'Cường 123', N'Khach@gmail.com', N'0812883636', N'12345678', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Nguoidung] OFF
GO
SET IDENTITY_INSERT [dbo].[PhanQuyen] ON 

INSERT [dbo].[PhanQuyen] ([IDQuyen], [TenQuyen]) VALUES (1, N'Member')
INSERT [dbo].[PhanQuyen] ([IDQuyen], [TenQuyen]) VALUES (2, N'Admin')
SET IDENTITY_INSERT [dbo].[PhanQuyen] OFF
GO
SET IDENTITY_INSERT [dbo].[Sanpham] ON 

INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Anhbia], [Mahang], [Mahd]) VALUES (1, N'Sauvage Elixir', CAST(200000 AS Decimal(18, 0)), 9, N'Extrait de Parfum for him', N'sp1.jpg', 2, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Anhbia], [Mahang], [Mahd]) VALUES (2, N'Bad Boy Cobalt', CAST(200000 AS Decimal(18, 0)), 9, N'Extrait de Parfum for him', N'sp1.jpg', 1, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Anhbia], [Mahang], [Mahd]) VALUES (3, N'Luna Rossa Ocean', CAST(200000 AS Decimal(18, 0)), 9, N'Extrait de Parfum for him', N'sp1.jpg', 3, 3)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Anhbia], [Mahang], [Mahd]) VALUES (4, N'Boss Bottled Marine', CAST(200000 AS Decimal(18, 0)), 9, N'Extrait de Parfum for him', N'sp1.jpg', 1, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Anhbia], [Mahang], [Mahd]) VALUES (5, N'Boss Bottled', CAST(200000 AS Decimal(18, 0)), 9, N'Extrait de Parfum for him', N'sp1.jpg', 2, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Anhbia], [Mahang], [Mahd]) VALUES (6, N'Luna Rossa Ocean', CAST(200000 AS Decimal(18, 0)), 9, N'Extrait de Parfum for him', N'sp1.jpg', 3, 3)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Anhbia], [Mahang], [Mahd]) VALUES (7, N'BLEU DE CHANEL', CAST(200000 AS Decimal(18, 0)), 9, N'Extrait de Parfum for him', N'sp1.jpg', 1, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Anhbia], [Mahang], [Mahd]) VALUES (8, N'1 Million', CAST(200000 AS Decimal(18, 0)), 9, N'Extrait de Parfum for him', N'sp1.jpg', 2, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Anhbia], [Mahang], [Mahd]) VALUES (9, N'ALLURE HOMME SPORT', CAST(200000 AS Decimal(18, 0)), 9, N'Extrait de Parfum for him', N'sp1.jpg', 3, 3)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Anhbia], [Mahang], [Mahd]) VALUES (10, N'Sauvage', CAST(200000 AS Decimal(18, 0)), 9, N'Extrait de Parfum for him', N'sp1.jpg', 1, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Anhbia], [Mahang], [Mahd]) VALUES (11, N'Pour Homme', CAST(200000 AS Decimal(18, 0)), 9, N'Extrait de Parfum for him', N'sp1.jpg', 2, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Anhbia], [Mahang], [Mahd]) VALUES (12, N'Sauvage Elixir', CAST(200000 AS Decimal(18, 0)), 9, N'Extrait de Parfum for him', N'sp1.jpg', 3, 3)

SET IDENTITY_INSERT [dbo].[Sanpham] OFF
GO
ALTER TABLE [dbo].[Nguoidung] ADD  CONSTRAINT [DF_Nguoidung_IDQuyen]  DEFAULT ((0)) FOR [IDQuyen]
GO
ALTER TABLE [dbo].[Chitietdonhang]  WITH CHECK ADD  CONSTRAINT [FK_Chitietdonhang_Donhang] FOREIGN KEY([Madon])
REFERENCES [dbo].[Donhang] ([Madon])
GO
ALTER TABLE [dbo].[Chitietdonhang] CHECK CONSTRAINT [FK_Chitietdonhang_Donhang]
GO
ALTER TABLE [dbo].[Chitietdonhang]  WITH CHECK ADD  CONSTRAINT [FK_Chitietdonhang_Sanpham] FOREIGN KEY([Masp])
REFERENCES [dbo].[Sanpham] ([Masp])
GO
ALTER TABLE [dbo].[Chitietdonhang] CHECK CONSTRAINT [FK_Chitietdonhang_Sanpham]
GO
ALTER TABLE [dbo].[Donhang]  WITH CHECK ADD  CONSTRAINT [FK_Donhang_Khachhang] FOREIGN KEY([MaNguoidung])
REFERENCES [dbo].[Nguoidung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[Donhang] CHECK CONSTRAINT [FK_Donhang_Khachhang]
GO
ALTER TABLE [dbo].[Nguoidung]  WITH CHECK ADD  CONSTRAINT [FK_Nguoidung_Nguoidung] FOREIGN KEY([IDQuyen])
REFERENCES [dbo].[PhanQuyen] ([IDQuyen])
GO
ALTER TABLE [dbo].[Nguoidung] CHECK CONSTRAINT [FK_Nguoidung_Nguoidung]
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [FK_Sanpham_Hangsanxuat] FOREIGN KEY([Mahang])
REFERENCES [dbo].[Hangsanxuat] ([Mahang])
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [FK_Sanpham_Hangsanxuat]
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [FK_Sanpham_Hedieuhanh] FOREIGN KEY([Mahdh])
REFERENCES [dbo].[Hedieuhanh] ([Mahdh])
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [FK_Sanpham_Hedieuhanh]
GO
USE [master]
GO
ALTER DATABASE [QLdienthoai] SET  READ_WRITE 
GO
