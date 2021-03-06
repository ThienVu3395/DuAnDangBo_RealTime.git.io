USE [DaiHoiDangBo]
GO
/****** Object:  StoredProcedure [dbo].[procKQBC]    Script Date: 14/05/2020 06:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[procKQBC]
AS
BEGIN
	
	SET NOCOUNT ON;
	SELECT y.Id,y.STT,x.HoTen, y.ChucVu, y.Img 
  FROM DaiHoiDangBo.dbo.tblKQBC y
  left JOIN DaiHoiDangBo.dbo.KetQuaTyLeBauCuBCH x on y.STT = x.STT

END


GO
/****** Object:  StoredProcedure [dbo].[procUpdateKQBC]    Script Date: 14/05/2020 06:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[procUpdateKQBC]
@Id int,
@STT int
AS
BEGIN
	
	SET NOCOUNT ON;
	UPDATE DaiHoiDangBo.dbo.tblKQBC SET STT = @STT WHERE Id = @Id 

END


GO
/****** Object:  StoredProcedure [dbo].[procUpdateKQBC2]    Script Date: 14/05/2020 06:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[procUpdateKQBC2]
@Id int,
@HoTen nvarchar (250)
AS
BEGIN
	
	SET NOCOUNT ON;
	UPDATE DaiHoiDangBo.dbo.tblKQBC2 SET HoTen = @HoTen WHERE Id = @Id 

END


GO
/****** Object:  Table [dbo].[tblKQBC]    Script Date: 14/05/2020 06:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKQBC](
	[Id] [int] NULL,
	[STT] [int] NULL,
	[ChucVu] [nvarchar](250) NULL,
	[Img] [nvarchar](250) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblKQBC2]    Script Date: 14/05/2020 06:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKQBC2](
	[Id] [int] NULL,
	[STT] [int] NULL,
	[HoTen] [nvarchar](250) NULL,
	[ChucVu] [nvarchar](250) NULL,
	[Img] [nvarchar](250) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblTieuDe]    Script Date: 14/05/2020 06:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTieuDe](
	[Id] [int] NULL,
	[TieuDe] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[tblKQBC] ([Id], [STT], [ChucVu], [Img]) VALUES (1, 0, N'Bí Thư Đảng Ủy', NULL)
INSERT [dbo].[tblKQBC] ([Id], [STT], [ChucVu], [Img]) VALUES (2, 0, N'Phó Bí Thư Đảng Ủy', NULL)
INSERT [dbo].[tblKQBC] ([Id], [STT], [ChucVu], [Img]) VALUES (3, 0, N'Ủy Viên', NULL)
INSERT [dbo].[tblKQBC2] ([Id], [STT], [HoTen], [ChucVu], [Img]) VALUES (1, 1, N'ABC', N'Trưởng Ban', NULL)
INSERT [dbo].[tblKQBC2] ([Id], [STT], [HoTen], [ChucVu], [Img]) VALUES (2, 2, N'ABC', N'Phó Trưởng Ban', NULL)
INSERT [dbo].[tblKQBC2] ([Id], [STT], [HoTen], [ChucVu], [Img]) VALUES (3, 3, N'ABC', N'Ủy Viên', NULL)
INSERT [dbo].[tblKQBC2] ([Id], [STT], [HoTen], [ChucVu], [Img]) VALUES (4, 4, N'ABC', N'Ủy Viên', NULL)
INSERT [dbo].[tblKQBC2] ([Id], [STT], [HoTen], [ChucVu], [Img]) VALUES (5, 5, N'ABC', N'Ủy Viên', NULL)
INSERT [dbo].[tblTieuDe] ([Id], [TieuDe]) VALUES (1, N'Kết quả kiểm phiếu')
INSERT [dbo].[tblTieuDe] ([Id], [TieuDe]) VALUES (2, N'Danh sách trúng cử Ban chấp hành Đảng bộ CTCP Cấp nước Nhà Bè lần IV, nhiệm kỳ 2020-2025')
INSERT [dbo].[tblTieuDe] ([Id], [TieuDe]) VALUES (3, N'Kết quả kiểm phiếu')
INSERT [dbo].[tblTieuDe] ([Id], [TieuDe]) VALUES (4, N'Danh sách trúng cử Đoàn đại biểu chính thức và dự khuyết')
INSERT [dbo].[tblTieuDe] ([Id], [TieuDe]) VALUES (5, N'Báo cáo kết quả bầu cử Bí thư, Phó Bí thư, Ban Thường vụ Đảng ủy')
INSERT [dbo].[tblTieuDe] ([Id], [TieuDe]) VALUES (6, N'Báo cáo kết quả bầu cử Chủ nhiệm Ủy ban Kiểm tra Đảng ủy Công ty')
