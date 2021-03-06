USE [QUANLY_SACH]
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 07/25/2016 22:00:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[MaSach] [nchar](10) NOT NULL,
	[TuaSach] [nchar](50) NULL,
	[MaNXB] [nchar](10) NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Sach] ([MaSach], [TuaSach], [MaNXB]) VALUES (N'N001      ', N'Tấm Cám                                         ', N'B01       ')
INSERT [dbo].[Sach] ([MaSach], [TuaSach], [MaNXB]) VALUES (N'N002      ', N'Pháo Hoa                                         ', N'B02       ')
INSERT [dbo].[Sach] ([MaSach], [TuaSach], [MaNXB]) VALUES (N'N003      ', N'Buồn Làm Sao Buông                              ', N'B03       ')
INSERT [dbo].[Sach] ([MaSach], [TuaSach], [MaNXB]) VALUES (N'N004      ', N'Chuyện  Chàng Nàng                             ', N'B09       ')
INSERT [dbo].[Sach] ([MaSach], [TuaSach], [MaNXB]) VALUES (N'N005      ', N'Nhật Ký 30 Ngày                                ', N'B07       ')
INSERT [dbo].[Sach] ([MaSach], [TuaSach], [MaNXB]) VALUES (N'N006      ', N'Đô Rê Mon                                         ', N'B02       ')
INSERT [dbo].[Sach] ([MaSach], [TuaSach], [MaNXB]) VALUES (N'N007      ', N'Bầu Trời Đang Mở Ra                            ', N'B06       ')
INSERT [dbo].[Sach] ([MaSach], [TuaSach], [MaNXB]) VALUES (N'N008      ', N'Con Nan                                           ', N'B05       ')
INSERT [dbo].[Sach] ([MaSach], [TuaSach], [MaNXB]) VALUES (N'N009      ', N'Thach Sanh                                        ', N'B04       ')
INSERT [dbo].[Sach] ([MaSach], [TuaSach], [MaNXB]) VALUES (N'N010      ', N'Trạng Quỳnh                                     ', N'B08       ')
INSERT [dbo].[Sach] ([MaSach], [TuaSach], [MaNXB]) VALUES (N'N011      ', N'Thánh Giong                                      ', N'B05       ')
INSERT [dbo].[Sach] ([MaSach], [TuaSach], [MaNXB]) VALUES (N'N012      ', N'Hạnh Phúc                                       ', N'B01       ')
/****** Object:  Table [dbo].[NhaXuatBan]    Script Date: 07/25/2016 22:00:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaXuatBan](
	[MaNXB] [nchar](10) NOT NULL,
	[TenNXB] [nchar](50) NULL,
	[LoaiHinh] [nchar](50) NULL,
 CONSTRAINT [PK_NhaXuatBan] PRIMARY KEY CLUSTERED 
(
	[MaNXB] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [LoaiHinh]) VALUES (N'B01       ', N'Văn Hóa                                          ', N'Cổ Tích Dân Gian                                ')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [LoaiHinh]) VALUES (N'B02       ', N'Văn Học                                          ', N'Tiểu Thuyết                                     ')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [LoaiHinh]) VALUES (N'B03       ', N'Tinh Hoa                                          ', N'Truyện Ngắn                                     ')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [LoaiHinh]) VALUES (N'B04       ', N'Chân Lý                                          ', N'Truyện Ngắn                                     ')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [LoaiHinh]) VALUES (N'B05       ', N'Nghệ Thuật                                      ', N'Tiểu Thuyết                                     ')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [LoaiHinh]) VALUES (N'B06       ', N'Tri Thức                                         ', N'Truyện tranh                                     ')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [LoaiHinh]) VALUES (N'B07       ', N'Hoa Màu                                          ', N'Tiểu Thuyết                                     ')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [LoaiHinh]) VALUES (N'B08       ', N'Kim Đồng                                         ', N'Truyện Tranh                                     ')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [LoaiHinh]) VALUES (N'B09       ', N'Mỹ Thuật                                        ', N'Cổ Tích Dân Gian                                ')
/****** Object:  Table [dbo].[NhanVien]    Script Date: 07/25/2016 22:00:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nchar](10) NOT NULL,
	[TenNV] [nchar](50) NULL,
	[DiaChi] [nchar](50) NULL,
	[SoDienThoai] [nchar](11) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [DiaChi], [SoDienThoai]) VALUES (N'V01       ', N'Trần Văn Độ                                     ', N'12 Đinh Bộ Lĩnh                                 ', N'097865044  ')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [DiaChi], [SoDienThoai]) VALUES (N'V02       ', N'Nguyễn Thị Mỹ Linh                             ', N'125/67 Nơ Trang Long                              ', N'01224496106')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [DiaChi], [SoDienThoai]) VALUES (N'V03       ', N'Nông Văn Đạt                                     ', N'26 Trần Thị Nghè                               ', N'01635601994')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [DiaChi], [SoDienThoai]) VALUES (N'V04       ', N'Hứa Thị Bích                                   ', N'24/78 Âu Cơ                                       ', N'0649453700 ')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [DiaChi], [SoDienThoai]) VALUES (N'V05       ', N'Nguyễn Văn Nam                                   ', N'34 Trường Chinh                                  ', N'0974874637 ')
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 07/25/2016 22:00:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [nchar](10) NOT NULL,
	[TenNCC] [nchar](50) NULL,
	[DiaChi] [nchar](50) NULL,
	[SoDienThoai] [nchar](11) NULL,
	[fax] [nchar](20) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SoDienThoai], [fax]) VALUES (N'C01       ', N'Tuổi Trẻ                                        ', N'12 Nguyễn Trãi, quận 5                         ', N'08345345   ', NULL)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SoDienThoai], [fax]) VALUES (N'C02       ', N'Phương Nam                                        ', N'34 Lê Duẫn                                       ', N'08123456   ', NULL)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SoDienThoai], [fax]) VALUES (N'C03       ', N'Gia Định                                         ', N'123 Trần Hưng Đạo                               ', N'08786943   ', NULL)
/****** Object:  Table [dbo].[KhachHang]    Script Date: 07/25/2016 22:00:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nchar](5) NOT NULL,
	[TenKH] [nchar](50) NULL,
	[DiaChi] [nchar](50) NULL,
	[SoDienThoai] [nchar](11) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDienThoai]) VALUES (N'K01  ', N'Nguyễn Thị Kim Oanh                             ', N'112/15/16 Bùi Đình Túy, Quận Bình Thạnh     ', N'0972634044 ')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDienThoai]) VALUES (N'K02  ', N'Nguyễn Quốc Liên                                ', N'130 Chu Văn An , Quận Bình Thạnh               ', N'0936990369 ')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDienThoai]) VALUES (N'K03  ', N'Nguyễn Sĩ Dương                                 ', N'145 Nguyễn Kiệm, Quận Phú Nhuận              ', N'0972345780 ')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDienThoai]) VALUES (N'K04  ', N'Dương Văn Nam                                     ', N'12/3 Phan Đăng Lưu, Quận Phú Nhuận             ', N'0122449767 ')
/****** Object:  Table [dbo].[HoaDonMua]    Script Date: 07/25/2016 22:00:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonMua](
	[MaHDMua] [nchar](10) NOT NULL,
	[MaNCC] [nchar](10) NOT NULL,
	[NgayLapHD] [datetime] NULL,
	[NgayNhanHang] [datetime] NULL,
 CONSTRAINT [PK_HoaDonMua] PRIMARY KEY CLUSTERED 
(
	[MaHDMua] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[HoaDonMua] ([MaHDMua], [MaNCC], [NgayLapHD], [NgayNhanHang]) VALUES (N'HDM1      ', N'C01       ', CAST(0x0000A5CF00000000 AS DateTime), CAST(0x0000A5D300000000 AS DateTime))
INSERT [dbo].[HoaDonMua] ([MaHDMua], [MaNCC], [NgayLapHD], [NgayNhanHang]) VALUES (N'HDM2      ', N'C03       ', CAST(0x0000A5D800000000 AS DateTime), CAST(0x0000A5D900000000 AS DateTime))
INSERT [dbo].[HoaDonMua] ([MaHDMua], [MaNCC], [NgayLapHD], [NgayNhanHang]) VALUES (N'HDM3      ', N'C02       ', CAST(0x0000A5F700000000 AS DateTime), CAST(0x0000A5F800000000 AS DateTime))
/****** Object:  Table [dbo].[HoaDonBan]    Script Date: 07/25/2016 22:00:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonBan](
	[MaHDBan] [nchar](10) NOT NULL,
	[MaKH] [nchar](10) NULL,
	[MaNV] [nchar](10) NULL,
	[NgayLapHD] [datetime] NOT NULL,
	[NgayGiaoHang] [datetime] NOT NULL,
 CONSTRAINT [PK_HoaDonBan] PRIMARY KEY CLUSTERED 
(
	[MaHDBan] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[HoaDonBan] ([MaHDBan], [MaKH], [MaNV], [NgayLapHD], [NgayGiaoHang]) VALUES (N'HD1       ', N'K01       ', N'V02       ', CAST(0x0000A5C700000000 AS DateTime), CAST(0x0000A5C900000000 AS DateTime))
INSERT [dbo].[HoaDonBan] ([MaHDBan], [MaKH], [MaNV], [NgayLapHD], [NgayGiaoHang]) VALUES (N'HD2       ', N'K04       ', N'V03       ', CAST(0x0000A5CF00000000 AS DateTime), CAST(0x0000A5D100000000 AS DateTime))
INSERT [dbo].[HoaDonBan] ([MaHDBan], [MaKH], [MaNV], [NgayLapHD], [NgayGiaoHang]) VALUES (N'HD3       ', N'K02       ', N'V01       ', CAST(0x0000A5F200000000 AS DateTime), CAST(0x0000A5F400000000 AS DateTime))
/****** Object:  Table [dbo].[CTHDMua]    Script Date: 07/25/2016 22:00:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHDMua](
	[MaHDMua] [nchar](10) NOT NULL,
	[MaSach] [nchar](10) NOT NULL,
	[SoLuong] [smallint] NULL,
	[GiamGia] [real] NULL,
 CONSTRAINT [PK_CTHDMua] PRIMARY KEY CLUSTERED 
(
	[MaHDMua] ASC,
	[MaSach] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CTHDMua] ([MaHDMua], [MaSach], [SoLuong], [GiamGia]) VALUES (N'HDM1      ', N'N007      ', 50, 0.2)
INSERT [dbo].[CTHDMua] ([MaHDMua], [MaSach], [SoLuong], [GiamGia]) VALUES (N'HDM2      ', N'N002      ', 34, 0.5)
INSERT [dbo].[CTHDMua] ([MaHDMua], [MaSach], [SoLuong], [GiamGia]) VALUES (N'HDM3      ', N'N004      ', 23, 0)
/****** Object:  Table [dbo].[CTHDBan]    Script Date: 07/25/2016 22:00:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHDBan](
	[MaHDBan] [nchar](10) NOT NULL,
	[MaSach] [nchar](10) NOT NULL,
	[Soluong] [smallint] NULL,
	[GiamGia] [real] NULL,
 CONSTRAINT [PK_CTHDBan] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC,
	[MaHDBan] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CTHDBan] ([MaHDBan], [MaSach], [Soluong], [GiamGia]) VALUES (N'HD3       ', N'N004      ', 7, 0.5)
INSERT [dbo].[CTHDBan] ([MaHDBan], [MaSach], [Soluong], [GiamGia]) VALUES (N'HD2       ', N'N005      ', 6, 0.2)
INSERT [dbo].[CTHDBan] ([MaHDBan], [MaSach], [Soluong], [GiamGia]) VALUES (N'HD1       ', N'N007      ', 2, 0)
