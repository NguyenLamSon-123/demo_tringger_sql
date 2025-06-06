USE [master]
GO
/****** Object:  Database [TiemCamDo1]    Script Date: 22/04/2025 9:44:51 CH ******/
CREATE DATABASE [TiemCamDo1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TiemCamDo1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLSERVER22\MSSQL\DATA\TiemCamDo1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TiemCamDo1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLSERVER22\MSSQL\DATA\TiemCamDo1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [TiemCamDo1] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TiemCamDo1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TiemCamDo1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TiemCamDo1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TiemCamDo1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TiemCamDo1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TiemCamDo1] SET ARITHABORT OFF 
GO
ALTER DATABASE [TiemCamDo1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TiemCamDo1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TiemCamDo1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TiemCamDo1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TiemCamDo1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TiemCamDo1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TiemCamDo1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TiemCamDo1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TiemCamDo1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TiemCamDo1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TiemCamDo1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TiemCamDo1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TiemCamDo1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TiemCamDo1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TiemCamDo1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TiemCamDo1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TiemCamDo1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TiemCamDo1] SET RECOVERY FULL 
GO
ALTER DATABASE [TiemCamDo1] SET  MULTI_USER 
GO
ALTER DATABASE [TiemCamDo1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TiemCamDo1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TiemCamDo1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TiemCamDo1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TiemCamDo1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TiemCamDo1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'TiemCamDo1', N'ON'
GO
ALTER DATABASE [TiemCamDo1] SET QUERY_STORE = ON
GO
ALTER DATABASE [TiemCamDo1] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [TiemCamDo1]
GO
/****** Object:  Table [dbo].[HopDong]    Script Date: 22/04/2025 9:44:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HopDong](
	[MaHopDong] [int] IDENTITY(1,1) NOT NULL,
	[MaTaiSan] [int] NULL,
	[SoTienChoVay] [decimal](15, 2) NULL,
	[SoTienChoVay_Bangchu] [nvarchar](200) NULL,
	[LaiSuat] [decimal](5, 2) NULL,
	[NgayBatDau] [date] NULL,
	[NgayDaoHan] [date] NULL,
	[TrangThai] [nvarchar](20) NULL,
	[Anhhopdong] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHopDong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 22/04/2025 9:44:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKhachHang] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](100) NULL,
	[SoDienThoai] [varchar](20) NULL,
	[CCCD] [varchar](20) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[NguoiThanSdt] [varchar](10) NULL,
	[NguoiThanMoiQuanHe] [nvarchar](20) NULL,
	[SoHopDongDangVay] [int] NULL,
	[TongTienDangVay] [decimal](15, 2) NULL,
	[SoHopDongQuaHan] [int] NULL,
	[NgayDangKy] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 22/04/2025 9:44:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [varchar](50) NULL,
	[MatKhau] [varchar](255) NULL,
	[HoTen] [nvarchar](100) NULL,
	[VaiTro] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiSan]    Script Date: 22/04/2025 9:44:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiSan](
	[MaTaiSan] [int] IDENTITY(1,1) NOT NULL,
	[MaKhachHang] [int] NULL,
	[TenTaiSan] [nvarchar](100) NULL,
	[MoTa] [nvarchar](max) NULL,
	[GiaTriUocTinh] [decimal](15, 2) NULL,
	[HinhAnh] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTaiSan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhToan]    Script Date: 22/04/2025 9:44:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhToan](
	[MaThanhToan] [int] IDENTITY(1,1) NOT NULL,
	[MaHopDong] [int] NULL,
	[SoTien] [decimal](15, 2) NULL,
	[NgayThanhToan] [datetime] NULL,
	[LoaiThanhToan] [nvarchar](20) NULL,
	[Sotien_Goc] [decimal](15, 2) NULL,
	[Sotien_Lai] [decimal](15, 2) NULL,
	[GhiChu] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaThanhToan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongBao]    Script Date: 22/04/2025 9:44:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongBao](
	[MaThongBao] [int] IDENTITY(1,1) NOT NULL,
	[MaKhachHang] [int] NULL,
	[MaHopDong] [int] NULL,
	[NoiDung] [nvarchar](max) NULL,
	[NgayGui] [datetime] NULL,
	[DaDoc] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaThongBao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[HopDong] ON 

INSERT [dbo].[HopDong] ([MaHopDong], [MaTaiSan], [SoTienChoVay], [SoTienChoVay_Bangchu], [LaiSuat], [NgayBatDau], [NgayDaoHan], [TrangThai], [Anhhopdong]) VALUES (1, 1, CAST(10000000.00 AS Decimal(15, 2)), N'Mười triệu đồng', CAST(2.50 AS Decimal(5, 2)), CAST(N'2025-01-01' AS Date), CAST(N'2025-04-01' AS Date), N'DangCam', N'hd1.jpg')
INSERT [dbo].[HopDong] ([MaHopDong], [MaTaiSan], [SoTienChoVay], [SoTienChoVay_Bangchu], [LaiSuat], [NgayBatDau], [NgayDaoHan], [TrangThai], [Anhhopdong]) VALUES (2, 2, CAST(15000000.00 AS Decimal(15, 2)), N'Mười lăm triệu đồng', CAST(3.00 AS Decimal(5, 2)), CAST(N'2025-02-01' AS Date), CAST(N'2025-05-01' AS Date), N'DangCam', N'hd2.jpg')
INSERT [dbo].[HopDong] ([MaHopDong], [MaTaiSan], [SoTienChoVay], [SoTienChoVay_Bangchu], [LaiSuat], [NgayBatDau], [NgayDaoHan], [TrangThai], [Anhhopdong]) VALUES (3, 3, CAST(40000000.00 AS Decimal(15, 2)), N'Bốn mươi triệu đồng', CAST(2.80 AS Decimal(5, 2)), CAST(N'2025-03-01' AS Date), CAST(N'2025-06-01' AS Date), N'DangCam', N'hd3.jpg')
INSERT [dbo].[HopDong] ([MaHopDong], [MaTaiSan], [SoTienChoVay], [SoTienChoVay_Bangchu], [LaiSuat], [NgayBatDau], [NgayDaoHan], [TrangThai], [Anhhopdong]) VALUES (4, 4, CAST(12000000.00 AS Decimal(15, 2)), N'Mười hai triệu đồng', CAST(3.20 AS Decimal(5, 2)), CAST(N'2024-12-01' AS Date), CAST(N'2025-03-01' AS Date), N'DangCam', N'hd4.jpg')
INSERT [dbo].[HopDong] ([MaHopDong], [MaTaiSan], [SoTienChoVay], [SoTienChoVay_Bangchu], [LaiSuat], [NgayBatDau], [NgayDaoHan], [TrangThai], [Anhhopdong]) VALUES (5, 5, CAST(8000000.00 AS Decimal(15, 2)), N'Tám triệu đồng', CAST(2.50 AS Decimal(5, 2)), CAST(N'2025-04-01' AS Date), CAST(N'2025-07-01' AS Date), N'DangCam', N'hd5.jpg')
INSERT [dbo].[HopDong] ([MaHopDong], [MaTaiSan], [SoTienChoVay], [SoTienChoVay_Bangchu], [LaiSuat], [NgayBatDau], [NgayDaoHan], [TrangThai], [Anhhopdong]) VALUES (6, 1, CAST(30000000.00 AS Decimal(15, 2)), N'Ba mươi triệu đồng', CAST(2.50 AS Decimal(5, 2)), CAST(N'2024-12-01' AS Date), CAST(N'2025-01-01' AS Date), N'DaThanhLy', NULL)
INSERT [dbo].[HopDong] ([MaHopDong], [MaTaiSan], [SoTienChoVay], [SoTienChoVay_Bangchu], [LaiSuat], [NgayBatDau], [NgayDaoHan], [TrangThai], [Anhhopdong]) VALUES (7, 6, CAST(10000000.00 AS Decimal(15, 2)), N'Mười triệu đồng', CAST(2.50 AS Decimal(5, 2)), CAST(N'2025-04-22' AS Date), CAST(N'2025-07-22' AS Date), N'DangCam', NULL)
SET IDENTITY_INSERT [dbo].[HopDong] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [SoDienThoai], [CCCD], [DiaChi], [NguoiThanSdt], [NguoiThanMoiQuanHe], [SoHopDongDangVay], [TongTienDangVay], [SoHopDongQuaHan], [NgayDangKy]) VALUES (1, N'Nguyễn Văn A', N'0912345678', N'012345678901', N'123 Trần Hưng Đạo, Q1', N'0911223344', N'Bố', 1, CAST(10000000.00 AS Decimal(15, 2)), 0, CAST(N'2025-04-22T21:20:05.207' AS DateTime))
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [SoDienThoai], [CCCD], [DiaChi], [NguoiThanSdt], [NguoiThanMoiQuanHe], [SoHopDongDangVay], [TongTienDangVay], [SoHopDongQuaHan], [NgayDangKy]) VALUES (2, N'Trần Thị B', N'0987654321', N'098765432109', N'456 Lý Thường Kiệt, Q10', N'0988776655', N'Mẹ', 0, CAST(0.00 AS Decimal(15, 2)), 0, CAST(N'2025-04-22T21:20:05.207' AS DateTime))
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [SoDienThoai], [CCCD], [DiaChi], [NguoiThanSdt], [NguoiThanMoiQuanHe], [SoHopDongDangVay], [TongTienDangVay], [SoHopDongQuaHan], [NgayDangKy]) VALUES (3, N'Nguyễn Văn C', N'0901234567', N'123456789012', N'123 Đường Láng, Hà Nội', N'0912345678', N'Vợ', 0, CAST(0.00 AS Decimal(15, 2)), 0, CAST(N'2025-04-22T21:20:05.207' AS DateTime))
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [SoDienThoai], [CCCD], [DiaChi], [NguoiThanSdt], [NguoiThanMoiQuanHe], [SoHopDongDangVay], [TongTienDangVay], [SoHopDongQuaHan], [NgayDangKy]) VALUES (4, N'Nguyễn Văn A', N'0912345678', N'012345678901', N'Hà Nội', N'0987654321', N'Anh trai', 0, CAST(0.00 AS Decimal(15, 2)), 0, CAST(N'2025-04-22T21:20:05.253' AS DateTime))
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNhanVien], [TenDangNhap], [MatKhau], [HoTen], [VaiTro]) VALUES (1, N'quanly1', N'hashed_password1', N'Phạm Văn D', N'QuanTri')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenDangNhap], [MatKhau], [HoTen], [VaiTro]) VALUES (2, N'ketoan1', N'hashed_password2', N'Nguyễn Thị E', N'NhanVienKeToan')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenDangNhap], [MatKhau], [HoTen], [VaiTro]) VALUES (3, N'kinhdoanh1', N'hashed_password3', N'Trần Văn F', N'NhanVienKinhDoanh')
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiSan] ON 

INSERT [dbo].[TaiSan] ([MaTaiSan], [MaKhachHang], [TenTaiSan], [MoTa], [GiaTriUocTinh], [HinhAnh]) VALUES (1, 1, N'Xe máy Honda Wave', N'Xe màu đỏ, sản xuất 2020', CAST(15000000.00 AS Decimal(15, 2)), N'xe1.jpg')
INSERT [dbo].[TaiSan] ([MaTaiSan], [MaKhachHang], [TenTaiSan], [MoTa], [GiaTriUocTinh], [HinhAnh]) VALUES (2, 1, N'Laptop Dell XPS', N'Laptop 13 inch, RAM 16GB', CAST(20000000.00 AS Decimal(15, 2)), N'laptop1.jpg')
INSERT [dbo].[TaiSan] ([MaTaiSan], [MaKhachHang], [TenTaiSan], [MoTa], [GiaTriUocTinh], [HinhAnh]) VALUES (3, 2, N'Đồng hồ Rolex', N'Đồng hồ vàng, sản xuất 2018', CAST(50000000.00 AS Decimal(15, 2)), N'dongho1.jpg')
INSERT [dbo].[TaiSan] ([MaTaiSan], [MaKhachHang], [TenTaiSan], [MoTa], [GiaTriUocTinh], [HinhAnh]) VALUES (4, 2, N'Điện thoại iPhone 14', N'Màu đen, 128GB', CAST(18000000.00 AS Decimal(15, 2)), N'iphone1.jpg')
INSERT [dbo].[TaiSan] ([MaTaiSan], [MaKhachHang], [TenTaiSan], [MoTa], [GiaTriUocTinh], [HinhAnh]) VALUES (5, 3, N'Xe máy Yamaha Sirius', N'Xe màu xanh, sản xuất 2019', CAST(12000000.00 AS Decimal(15, 2)), N'xe2.jpg')
INSERT [dbo].[TaiSan] ([MaTaiSan], [MaKhachHang], [TenTaiSan], [MoTa], [GiaTriUocTinh], [HinhAnh]) VALUES (6, 1, N'Xe máy SH 2020', N'Xe còn mới 90%', CAST(70000000.00 AS Decimal(15, 2)), NULL)
INSERT [dbo].[TaiSan] ([MaTaiSan], [MaKhachHang], [TenTaiSan], [MoTa], [GiaTriUocTinh], [HinhAnh]) VALUES (7, 3, N'Ti vi Samsung', N'Tivi 4K, 55 inch', CAST(15000000.00 AS Decimal(15, 2)), NULL)
SET IDENTITY_INSERT [dbo].[TaiSan] OFF
GO
SET IDENTITY_INSERT [dbo].[ThanhToan] ON 

INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaHopDong], [SoTien], [NgayThanhToan], [LoaiThanhToan], [Sotien_Goc], [Sotien_Lai], [GhiChu]) VALUES (1, 1, CAST(250000.00 AS Decimal(15, 2)), CAST(N'2025-04-22T21:20:05.240' AS DateTime), N'TienLai', CAST(0.00 AS Decimal(15, 2)), CAST(250000.00 AS Decimal(15, 2)), N'Thanh toán lãi tháng 1')
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaHopDong], [SoTien], [NgayThanhToan], [LoaiThanhToan], [Sotien_Goc], [Sotien_Lai], [GhiChu]) VALUES (2, 1, CAST(250000.00 AS Decimal(15, 2)), CAST(N'2025-04-22T21:20:05.240' AS DateTime), N'TienLai', CAST(0.00 AS Decimal(15, 2)), CAST(250000.00 AS Decimal(15, 2)), N'Thanh toán lãi tháng 2')
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaHopDong], [SoTien], [NgayThanhToan], [LoaiThanhToan], [Sotien_Goc], [Sotien_Lai], [GhiChu]) VALUES (3, 2, CAST(450000.00 AS Decimal(15, 2)), CAST(N'2025-04-22T21:20:05.240' AS DateTime), N'TienLai', CAST(0.00 AS Decimal(15, 2)), CAST(450000.00 AS Decimal(15, 2)), N'Thanh toán lãi tháng 2')
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaHopDong], [SoTien], [NgayThanhToan], [LoaiThanhToan], [Sotien_Goc], [Sotien_Lai], [GhiChu]) VALUES (4, 3, CAST(1120000.00 AS Decimal(15, 2)), CAST(N'2025-04-22T21:20:05.240' AS DateTime), N'TienLai', CAST(0.00 AS Decimal(15, 2)), CAST(1120000.00 AS Decimal(15, 2)), N'Thanh toán lãi tháng 3')
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaHopDong], [SoTien], [NgayThanhToan], [LoaiThanhToan], [Sotien_Goc], [Sotien_Lai], [GhiChu]) VALUES (5, 4, CAST(5000000.00 AS Decimal(15, 2)), CAST(N'2025-04-22T21:20:05.240' AS DateTime), N'TienGoc', CAST(5000000.00 AS Decimal(15, 2)), CAST(0.00 AS Decimal(15, 2)), N'Thanh toán gốc tháng 3')
SET IDENTITY_INSERT [dbo].[ThanhToan] OFF
GO
SET IDENTITY_INSERT [dbo].[ThongBao] ON 

INSERT [dbo].[ThongBao] ([MaThongBao], [MaKhachHang], [MaHopDong], [NoiDung], [NgayGui], [DaDoc]) VALUES (1, 1, 1, N'Hợp đồng 1 của bạn đã quá hạn, vui lòng liên hệ để xử lý.', CAST(N'2025-04-22T21:20:05.253' AS DateTime), 0)
INSERT [dbo].[ThongBao] ([MaThongBao], [MaKhachHang], [MaHopDong], [NoiDung], [NgayGui], [DaDoc]) VALUES (2, 1, 2, N'Hợp đồng 2 của bạn sắp đến hạn vào ngày 2025-05-01.', CAST(N'2025-04-22T21:20:05.253' AS DateTime), 0)
INSERT [dbo].[ThongBao] ([MaThongBao], [MaKhachHang], [MaHopDong], [NoiDung], [NgayGui], [DaDoc]) VALUES (3, 2, 3, N'Hợp đồng 3 của bạn đang hoạt động, vui lòng thanh toán lãi đúng hạn.', CAST(N'2025-04-22T21:20:05.253' AS DateTime), 0)
INSERT [dbo].[ThongBao] ([MaThongBao], [MaKhachHang], [MaHopDong], [NoiDung], [NgayGui], [DaDoc]) VALUES (4, 2, 4, N'Hợp đồng 4 của bạn đã quá hạn, vui lòng liên hệ để xử lý.', CAST(N'2025-04-22T21:20:05.253' AS DateTime), 0)
INSERT [dbo].[ThongBao] ([MaThongBao], [MaKhachHang], [MaHopDong], [NoiDung], [NgayGui], [DaDoc]) VALUES (5, 3, 5, N'Hợp đồng 5 của bạn vừa được tạo, cảm ơn bạn đã sử dụng dịch vụ.', CAST(N'2025-04-22T21:20:05.253' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[ThongBao] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NhanVien__55F68FC0F0176792]    Script Date: 22/04/2025 9:44:52 CH ******/
ALTER TABLE [dbo].[NhanVien] ADD UNIQUE NONCLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT ((0)) FOR [SoHopDongDangVay]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT ((0)) FOR [TongTienDangVay]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT ((0)) FOR [SoHopDongQuaHan]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (getdate()) FOR [NgayDangKy]
GO
ALTER TABLE [dbo].[ThanhToan] ADD  DEFAULT (getdate()) FOR [NgayThanhToan]
GO
ALTER TABLE [dbo].[ThongBao] ADD  DEFAULT (getdate()) FOR [NgayGui]
GO
ALTER TABLE [dbo].[ThongBao] ADD  DEFAULT ((0)) FOR [DaDoc]
GO
ALTER TABLE [dbo].[HopDong]  WITH CHECK ADD FOREIGN KEY([MaTaiSan])
REFERENCES [dbo].[TaiSan] ([MaTaiSan])
GO
ALTER TABLE [dbo].[TaiSan]  WITH CHECK ADD FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[ThanhToan]  WITH CHECK ADD FOREIGN KEY([MaHopDong])
REFERENCES [dbo].[HopDong] ([MaHopDong])
GO
ALTER TABLE [dbo].[ThongBao]  WITH CHECK ADD FOREIGN KEY([MaHopDong])
REFERENCES [dbo].[HopDong] ([MaHopDong])
GO
ALTER TABLE [dbo].[ThongBao]  WITH CHECK ADD FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[HopDong]  WITH CHECK ADD CHECK  (([TrangThai]=N'DaThanhLy' OR [TrangThai]=N'DaChuoc' OR [TrangThai]=N'DangCam'))
GO
ALTER TABLE [dbo].[HopDong]  WITH CHECK ADD  CONSTRAINT [CK_LaiSuat_Valid] CHECK  (([LaiSuat]>=(0) AND [LaiSuat]<=(100)))
GO
ALTER TABLE [dbo].[HopDong] CHECK CONSTRAINT [CK_LaiSuat_Valid]
GO
ALTER TABLE [dbo].[HopDong]  WITH CHECK ADD  CONSTRAINT [CK_NgayDaoHan_Sau_NgayBatDau] CHECK  (([NgayDaoHan]>[NgayBatDau]))
GO
ALTER TABLE [dbo].[HopDong] CHECK CONSTRAINT [CK_NgayDaoHan_Sau_NgayBatDau]
GO
ALTER TABLE [dbo].[HopDong]  WITH CHECK ADD  CONSTRAINT [CK_SoTienChoVay_Positive] CHECK  (([SoTienChoVay]>(0)))
GO
ALTER TABLE [dbo].[HopDong] CHECK CONSTRAINT [CK_SoTienChoVay_Positive]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD CHECK  (([VaiTro]=N'NhanVienKinhDoanh' OR [VaiTro]=N'NhanVienKeToan' OR [VaiTro]=N'QuanTri'))
GO
ALTER TABLE [dbo].[ThanhToan]  WITH CHECK ADD CHECK  (([LoaiThanhToan]=N'TienPhat' OR [LoaiThanhToan]=N'TienGoc' OR [LoaiThanhToan]=N'TienLai'))
GO
/****** Object:  Trigger [dbo].[trg_Update_KhachHang_When_Insert_HopDong]    Script Date: 22/04/2025 9:44:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trg_Update_KhachHang_When_Insert_HopDong]
ON [dbo].[HopDong]
AFTER INSERT
AS
BEGIN
    UPDATE KhachHang
    SET 
        SoHopDongDangVay = SoHopDongDangVay + 1,
        TongTienDangVay = TongTienDangVay + i.SoTienChoVay
    FROM KhachHang k
    JOIN inserted i ON i.MaTaiSan = (
        SELECT TOP 1 MaTaiSan 
        FROM TaiSan 
        WHERE TaiSan.MaTaiSan = i.MaTaiSan AND TaiSan.MaKhachHang = k.MaKhachHang
    );
END;
GO
ALTER TABLE [dbo].[HopDong] ENABLE TRIGGER [trg_Update_KhachHang_When_Insert_HopDong]
GO
USE [master]
GO
ALTER DATABASE [TiemCamDo1] SET  READ_WRITE 
GO
