
CREATE TABLE [dbo].[ChiNhanh](
	[maChiNhanh] [nvarchar](10) NOT NULL,
	[tenChiNhanh] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maChiNhanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DienThoai]    Script Date: 4/17/2025 1:54:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DienThoai](
	[maDienThoai] [nvarchar](10) NOT NULL,
	[tenDienThoai] [nvarchar](100) NOT NULL,
	[giaTien] [decimal](18, 2) NOT NULL,
	[moTa] [nvarchar](500) NULL,
	[img] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[maDienThoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HangBan]    Script Date: 4/17/2025 1:54:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangBan](
	[maHangBan] [nvarchar](10) NOT NULL,
	[maHoaDon] [nvarchar](10) NOT NULL,
	[maDienThoai] [nvarchar](10) NOT NULL,
	[soLuong] [int] NOT NULL,
	[tongTien] [decimal](18, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maHangBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonBanHang]    Script Date: 4/17/2025 1:54:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonBanHang](
	[maHoaDon] [nvarchar](10) NOT NULL,
	[maKhachHang] [nvarchar](10) NOT NULL,
	[maNhanVien] [nvarchar](10) NOT NULL,
	[ngayThanhToan] [date] NOT NULL,
	[tongTien] [decimal](18, 2) NOT NULL,
	[maChiNhanh] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 4/17/2025 1:54:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[maKhachHang] [nvarchar](10) NOT NULL,
	[tenKhachHang] [nvarchar](100) NOT NULL,
	[sdt] [nvarchar](15) NOT NULL,
	[diaChi] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[maKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichLamViec]    Script Date: 4/17/2025 1:54:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichLamViec](
	[maNhanVien] [nvarchar](10) NULL,
	[ngay] [date] NULL,
	[ca] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 4/17/2025 1:54:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[maNhanVien] [nvarchar](10) NOT NULL,
	[tenNhanVien] [nvarchar](100) NOT NULL,
	[maChiNhanh] [nvarchar](10) NOT NULL,
	[luong] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[maNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 4/17/2025 1:54:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](255) NOT NULL,
	[phone] [nvarchar](15) NULL,
	[role] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiNhanh] ([maChiNhanh], [tenChiNhanh]) VALUES (N'CN001', N'Ha Noi')
INSERT [dbo].[ChiNhanh] ([maChiNhanh], [tenChiNhanh]) VALUES (N'CN002', N'HCM')
INSERT [dbo].[ChiNhanh] ([maChiNhanh], [tenChiNhanh]) VALUES (N'CN003', N'Da Nang')
INSERT [dbo].[ChiNhanh] ([maChiNhanh], [tenChiNhanh]) VALUES (N'CN004', N'Hai Phong')
INSERT [dbo].[ChiNhanh] ([maChiNhanh], [tenChiNhanh]) VALUES (N'CN005', N'Can Tho')
INSERT [dbo].[ChiNhanh] ([maChiNhanh], [tenChiNhanh]) VALUES (N'CN006', N'Nghe An')
INSERT [dbo].[ChiNhanh] ([maChiNhanh], [tenChiNhanh]) VALUES (N'CN007', N'Binh Duong')
INSERT [dbo].[ChiNhanh] ([maChiNhanh], [tenChiNhanh]) VALUES (N'CN008', N'Dong Nai')
INSERT [dbo].[ChiNhanh] ([maChiNhanh], [tenChiNhanh]) VALUES (N'CN009', N'Bac Ninh')
INSERT [dbo].[ChiNhanh] ([maChiNhanh], [tenChiNhanh]) VALUES (N'CN010', N'BacGiang')
GO
INSERT [dbo].[DienThoai] ([maDienThoai], [tenDienThoai], [giaTien], [moTa], [img]) VALUES (N'DT01', N'600 LG Velvet', CAST(33990000.00 AS Decimal(18, 2)), N'ok', N'600-lg-velvet.jpg')
INSERT [dbo].[DienThoai] ([maDienThoai], [tenDienThoai], [giaTien], [moTa], [img]) VALUES (N'DT02', N'600 LG Wing', CAST(28990000.00 AS Decimal(18, 2)), N'ok', N'600-lg-wing.jpg')
INSERT [dbo].[DienThoai] ([maDienThoai], [tenDienThoai], [giaTien], [moTa], [img]) VALUES (N'DT03', N'Asus Rog Phone 5G', CAST(21990000.00 AS Decimal(18, 2)), N'ok', N'asus-rog-phone-5g.jpg')
INSERT [dbo].[DienThoai] ([maDienThoai], [tenDienThoai], [giaTien], [moTa], [img]) VALUES (N'DT04', N'Asus Zenfone 7 Pro', CAST(25990000.00 AS Decimal(18, 2)), N'ok', N'asus-zenfone-7-pro.jpg')
INSERT [dbo].[DienThoai] ([maDienThoai], [tenDienThoai], [giaTien], [moTa], [img]) VALUES (N'DT05', N'Vivo X90 Pro', CAST(19990000.00 AS Decimal(18, 2)), N'ok', N'vivo-x90-pro.jpg')
INSERT [dbo].[DienThoai] ([maDienThoai], [tenDienThoai], [giaTien], [moTa], [img]) VALUES (N'DT06', N'Google Pixel 7 Pro', CAST(20990000.00 AS Decimal(18, 2)), N'ok', N'google-ixel-7-pro.jpg')
INSERT [dbo].[DienThoai] ([maDienThoai], [tenDienThoai], [giaTien], [moTa], [img]) VALUES (N'DT07', N'Iphone 14 Pro Max', CAST(18990000.00 AS Decimal(18, 2)), N'ok', N'ip-14-pro-max.jpg')
INSERT [dbo].[DienThoai] ([maDienThoai], [tenDienThoai], [giaTien], [moTa], [img]) VALUES (N'DT08', N'Realme GT3', CAST(15990000.00 AS Decimal(18, 2)), N'ok', N'realme-gt3.jpg')
INSERT [dbo].[DienThoai] ([maDienThoai], [tenDienThoai], [giaTien], [moTa], [img]) VALUES (N'DT09', N'Iphone 15 Pro Max', CAST(24990000.00 AS Decimal(18, 2)), N'ok', N'iphone-15-pro-max.png')
INSERT [dbo].[DienThoai] ([maDienThoai], [tenDienThoai], [giaTien], [moTa], [img]) VALUES (N'DT10', N'Iphone 16 Pro Max', CAST(27990000.00 AS Decimal(18, 2)), N'ok', N'ip-16-pro-max.jpeg')
GO
INSERT [dbo].[HangBan] ([maHangBan], [maHoaDon], [maDienThoai], [soLuong], [tongTien]) VALUES (N'HB001', N'HD001', N'DT01', 1, CAST(15000000.00 AS Decimal(18, 2)))
INSERT [dbo].[HangBan] ([maHangBan], [maHoaDon], [maDienThoai], [soLuong], [tongTien]) VALUES (N'HB002', N'HD002', N'DT02', 2, CAST(28990000.00 AS Decimal(18, 2)))
INSERT [dbo].[HangBan] ([maHangBan], [maHoaDon], [maDienThoai], [soLuong], [tongTien]) VALUES (N'HB003', N'HD003', N'DT03', 1, CAST(21990000.00 AS Decimal(18, 2)))
INSERT [dbo].[HangBan] ([maHangBan], [maHoaDon], [maDienThoai], [soLuong], [tongTien]) VALUES (N'HB004', N'HD004', N'DT04', 3, CAST(25990000.00 AS Decimal(18, 2)))
INSERT [dbo].[HangBan] ([maHangBan], [maHoaDon], [maDienThoai], [soLuong], [tongTien]) VALUES (N'HB005', N'HD005', N'DT05', 2, CAST(19990000.00 AS Decimal(18, 2)))
INSERT [dbo].[HangBan] ([maHangBan], [maHoaDon], [maDienThoai], [soLuong], [tongTien]) VALUES (N'HB006', N'HD006', N'DT06', 1, CAST(20990000.00 AS Decimal(18, 2)))
INSERT [dbo].[HangBan] ([maHangBan], [maHoaDon], [maDienThoai], [soLuong], [tongTien]) VALUES (N'HB007', N'HD007', N'DT07', 2, CAST(18990000.00 AS Decimal(18, 2)))
INSERT [dbo].[HangBan] ([maHangBan], [maHoaDon], [maDienThoai], [soLuong], [tongTien]) VALUES (N'HB008', N'HD008', N'DT08', 1, CAST(15990000.00 AS Decimal(18, 2)))
INSERT [dbo].[HangBan] ([maHangBan], [maHoaDon], [maDienThoai], [soLuong], [tongTien]) VALUES (N'HB009', N'HD009', N'DT09', 3, CAST(24990000.00 AS Decimal(18, 2)))
INSERT [dbo].[HangBan] ([maHangBan], [maHoaDon], [maDienThoai], [soLuong], [tongTien]) VALUES (N'HB010', N'HD010', N'DT10', 2, CAST(27990000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[HoaDonBanHang] ([maHoaDon], [maKhachHang], [maNhanVien], [ngayThanhToan], [tongTien], [maChiNhanh]) VALUES (N'HD001', N'KH001', N'NV001', CAST(N'2024-03-01' AS Date), CAST(15000000.00 AS Decimal(18, 2)), N'CN001')
INSERT [dbo].[HoaDonBanHang] ([maHoaDon], [maKhachHang], [maNhanVien], [ngayThanhToan], [tongTien], [maChiNhanh]) VALUES (N'HD002', N'KH002', N'NV002', CAST(N'2024-03-02' AS Date), CAST(28990000.00 AS Decimal(18, 2)), N'CN002')
INSERT [dbo].[HoaDonBanHang] ([maHoaDon], [maKhachHang], [maNhanVien], [ngayThanhToan], [tongTien], [maChiNhanh]) VALUES (N'HD003', N'KH003', N'NV003', CAST(N'2024-03-03' AS Date), CAST(21990000.00 AS Decimal(18, 2)), N'CN003')
INSERT [dbo].[HoaDonBanHang] ([maHoaDon], [maKhachHang], [maNhanVien], [ngayThanhToan], [tongTien], [maChiNhanh]) VALUES (N'HD004', N'KH004', N'NV004', CAST(N'2024-03-04' AS Date), CAST(25990000.00 AS Decimal(18, 2)), N'CN004')
INSERT [dbo].[HoaDonBanHang] ([maHoaDon], [maKhachHang], [maNhanVien], [ngayThanhToan], [tongTien], [maChiNhanh]) VALUES (N'HD005', N'KH005', N'NV005', CAST(N'2024-03-05' AS Date), CAST(19990000.00 AS Decimal(18, 2)), N'CN005')
INSERT [dbo].[HoaDonBanHang] ([maHoaDon], [maKhachHang], [maNhanVien], [ngayThanhToan], [tongTien], [maChiNhanh]) VALUES (N'HD006', N'KH006', N'NV006', CAST(N'2024-03-06' AS Date), CAST(20990000.00 AS Decimal(18, 2)), N'CN006')
INSERT [dbo].[HoaDonBanHang] ([maHoaDon], [maKhachHang], [maNhanVien], [ngayThanhToan], [tongTien], [maChiNhanh]) VALUES (N'HD007', N'KH007', N'NV007', CAST(N'2024-03-07' AS Date), CAST(18990000.00 AS Decimal(18, 2)), N'CN007')
INSERT [dbo].[HoaDonBanHang] ([maHoaDon], [maKhachHang], [maNhanVien], [ngayThanhToan], [tongTien], [maChiNhanh]) VALUES (N'HD008', N'KH008', N'NV008', CAST(N'2024-03-08' AS Date), CAST(15990000.00 AS Decimal(18, 2)), N'CN008')
INSERT [dbo].[HoaDonBanHang] ([maHoaDon], [maKhachHang], [maNhanVien], [ngayThanhToan], [tongTien], [maChiNhanh]) VALUES (N'HD009', N'KH009', N'NV009', CAST(N'2024-03-09' AS Date), CAST(24990000.00 AS Decimal(18, 2)), N'CN009')
INSERT [dbo].[HoaDonBanHang] ([maHoaDon], [maKhachHang], [maNhanVien], [ngayThanhToan], [tongTien], [maChiNhanh]) VALUES (N'HD010', N'KH010', N'NV010', CAST(N'2024-03-10' AS Date), CAST(27990000.00 AS Decimal(18, 2)), N'CN010')
GO
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [sdt], [diaChi]) VALUES (N'KH001', N'A', N'0901123456', N'Hà Nội')
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [sdt], [diaChi]) VALUES (N'KH002', N'B', N'0912233445', N'Hà Nội')
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [sdt], [diaChi]) VALUES (N'KH003', N'C', N'0923344556', N'Hà Nội')
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [sdt], [diaChi]) VALUES (N'KH004', N'D', N'0934455667', N'Hà Nội')
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [sdt], [diaChi]) VALUES (N'KH005', N'E', N'0945566778', N'Hà Nội')
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [sdt], [diaChi]) VALUES (N'KH006', N'F', N'0956677889', N'Bắc Giang')
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [sdt], [diaChi]) VALUES (N'KH007', N'G', N'0967788990', N'Bắc Giang')
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [sdt], [diaChi]) VALUES (N'KH008', N'H', N'0978899001', N'Bắc Giang')
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [sdt], [diaChi]) VALUES (N'KH009', N'I', N'0989900112', N'Bắc Giang')
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [sdt], [diaChi]) VALUES (N'KH010', N'J', N'0990011223', N'Bắc Giang')
GO
INSERT [dbo].[LichLamViec] ([maNhanVien], [ngay], [ca]) VALUES (N'NV001', CAST(N'2025-03-01' AS Date), N'sáng')
INSERT [dbo].[LichLamViec] ([maNhanVien], [ngay], [ca]) VALUES (N'NV002', CAST(N'2025-03-01' AS Date), N'chiều')
INSERT [dbo].[LichLamViec] ([maNhanVien], [ngay], [ca]) VALUES (N'NV003', CAST(N'2025-03-02' AS Date), N'sáng')
INSERT [dbo].[LichLamViec] ([maNhanVien], [ngay], [ca]) VALUES (N'NV004', CAST(N'2025-03-02' AS Date), N'chiều')
INSERT [dbo].[LichLamViec] ([maNhanVien], [ngay], [ca]) VALUES (N'NV005', CAST(N'2025-03-03' AS Date), N'sáng')
INSERT [dbo].[LichLamViec] ([maNhanVien], [ngay], [ca]) VALUES (N'NV006', CAST(N'2025-03-03' AS Date), N'chiều')
INSERT [dbo].[LichLamViec] ([maNhanVien], [ngay], [ca]) VALUES (N'NV007', CAST(N'2025-03-04' AS Date), N'sáng')
INSERT [dbo].[LichLamViec] ([maNhanVien], [ngay], [ca]) VALUES (N'NV008', CAST(N'2025-03-04' AS Date), N'chiều')
INSERT [dbo].[LichLamViec] ([maNhanVien], [ngay], [ca]) VALUES (N'NV009', CAST(N'2025-03-05' AS Date), N'sáng')
INSERT [dbo].[LichLamViec] ([maNhanVien], [ngay], [ca]) VALUES (N'NV010', CAST(N'2025-03-05' AS Date), N'chiều')
INSERT [dbo].[LichLamViec] ([maNhanVien], [ngay], [ca]) VALUES (N'NV001', CAST(N'2025-03-05' AS Date), N'sáng')
INSERT [dbo].[LichLamViec] ([maNhanVien], [ngay], [ca]) VALUES (N'NV001', CAST(N'1900-01-01' AS Date), N'sáng')
GO
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [maChiNhanh], [luong]) VALUES (N'NV001', N'Nguyen Van An', N'CN001', CAST(10000000.00 AS Decimal(18, 2)))
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [maChiNhanh], [luong]) VALUES (N'NV002', N'Tran Thi Bich', N'CN002', CAST(10000000.00 AS Decimal(18, 2)))
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [maChiNhanh], [luong]) VALUES (N'NV003', N'Le Van Cuong', N'CN003', CAST(10000000.00 AS Decimal(18, 2)))
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [maChiNhanh], [luong]) VALUES (N'NV004', N'Pham Thi Dung', N'CN004', CAST(10000000.00 AS Decimal(18, 2)))
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [maChiNhanh], [luong]) VALUES (N'NV005', N'Hoang Van Duc', N'CN005', CAST(10000000.00 AS Decimal(18, 2)))
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [maChiNhanh], [luong]) VALUES (N'NV006', N'Dang Thi Huong', N'CN006', CAST(10000000.00 AS Decimal(18, 2)))
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [maChiNhanh], [luong]) VALUES (N'NV007', N'Bui Van Khoa', N'CN007', CAST(10000000.00 AS Decimal(18, 2)))
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [maChiNhanh], [luong]) VALUES (N'NV008', N'Ngo Thi Lan', N'CN008', CAST(10000000.00 AS Decimal(18, 2)))
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [maChiNhanh], [luong]) VALUES (N'NV009', N'Vu Van Minh', N'CN009', CAST(10000000.00 AS Decimal(18, 2)))
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [maChiNhanh], [luong]) VALUES (N'NV010', N'Do Thi Nhu', N'CN010', CAST(10000000.00 AS Decimal(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [username], [password], [phone], [role]) VALUES (1, N'banhang', N'1', N'0901234567', N'banhang')
INSERT [dbo].[users] ([id], [username], [password], [phone], [role]) VALUES (2, N'quanly', N'1', N'0912345678', N'quanly')
INSERT [dbo].[users] ([id], [username], [password], [phone], [role]) VALUES (3, N'thukho', N'1', N'0923456789', N'thukho')
SET IDENTITY_INSERT [dbo].[users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KhachHan__DDDFB4834430111E]    Script Date: 4/17/2025 1:54:09 PM ******/
ALTER TABLE [dbo].[KhachHang] ADD UNIQUE NONCLUSTERED 
(
	[sdt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__user__F3DBC5728F758570]    Script Date: 4/17/2025 1:54:09 PM ******/
ALTER TABLE [dbo].[users] ADD UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ('user') FOR [role]
GO
ALTER TABLE [dbo].[HangBan]  WITH CHECK ADD FOREIGN KEY([maDienThoai])
REFERENCES [dbo].[DienThoai] ([maDienThoai])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HangBan]  WITH CHECK ADD FOREIGN KEY([maHoaDon])
REFERENCES [dbo].[HoaDonBanHang] ([maHoaDon])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDonBanHang]  WITH CHECK ADD FOREIGN KEY([maChiNhanh])
REFERENCES [dbo].[ChiNhanh] ([maChiNhanh])
GO
ALTER TABLE [dbo].[HoaDonBanHang]  WITH CHECK ADD FOREIGN KEY([maKhachHang])
REFERENCES [dbo].[KhachHang] ([maKhachHang])
GO
ALTER TABLE [dbo].[HoaDonBanHang]  WITH CHECK ADD FOREIGN KEY([maNhanVien])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
GO
ALTER TABLE [dbo].[LichLamViec]  WITH CHECK ADD  CONSTRAINT [FK_LichLamViec_NhanVien] FOREIGN KEY([maNhanVien])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
GO
ALTER TABLE [dbo].[LichLamViec] CHECK CONSTRAINT [FK_LichLamViec_NhanVien]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([maChiNhanh])
REFERENCES [dbo].[ChiNhanh] ([maChiNhanh])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HangBan]  WITH CHECK ADD CHECK  (([soLuong]>(0)))
GO
USE [master]
GO
ALTER DATABASE [BTL_HTTTQL] SET  READ_WRITE 
GO
