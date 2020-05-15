USE [DaiHoiDangBo]
GO

/****** Object:  StoredProcedure [dbo].[procKetQuaTyLeBauCuBCH]    Script Date: 13-May-20 08:00:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[procKetQuaTyLeBauCuBCH]
	-- Add the parameters for the stored procedure here
	@nam int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [STT]
      ,[HoTen]
      ,[PhatRa]
      ,[ThuVao]
      ,[HopLe]
      ,[KhongHopLe]
      ,[SoPhieuDongY]
      ,[TLDongY]
  FROM [DaiHoiDangBo].[dbo].[KetQuaTyLeBauCuBCH]
 WHERE NamDienRaDaiHoi = @nam 
 ORDER BY STT
END

GO

/****** Object:  StoredProcedure [dbo].[procKetQuaTyLeBauCuBCH_TiLe]    Script Date: 13-May-20 08:00:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[procKetQuaTyLeBauCuBCH_TiLe]
	-- Add the parameters for the stored procedure here
	@nam int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT TOP 11 [STT]
      ,[HoTen]
      ,[PhatRa]
      ,[ThuVao]
      ,[HopLe]
      ,[KhongHopLe]
      ,[SoPhieuDongY]
      ,[TLDongY]
  FROM [DaiHoiDangBo].[dbo].[KetQuaTyLeBauCuBCH]
 WHERE NamDienRaDaiHoi = @nam 
 ORDER BY TLDongY desc
END

GO

/****** Object:  StoredProcedure [dbo].[procKetQuaTyLeBauCuDaiBieu]    Script Date: 13-May-20 08:00:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[procKetQuaTyLeBauCuDaiBieu]
	-- Add the parameters for the stored procedure here
	@nam int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [STT]
      ,[HoTen]
      ,[PhatRa]
      ,[ThuVao]
      ,[HopLe]
      ,[KhongHopLe]
      ,[SoPhieuDongY]
      ,[TLDongY]
  FROM [DaiHoiDangBo].[dbo].[KetQuaTyLeBauCuDaiBieu]
 WHERE NamDienRaDaiHoi = @nam 
 ORDER BY STT
END

GO

/****** Object:  StoredProcedure [dbo].[procKetQuaTyLeBauCuDaiBieu_TiLe]    Script Date: 13-May-20 08:00:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[procKetQuaTyLeBauCuDaiBieu_TiLe]
	-- Add the parameters for the stored procedure here
	@nam int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [STT]
      ,[HoTen]
      ,[PhatRa]
      ,[ThuVao]
      ,[HopLe]
      ,[KhongHopLe]
      ,[SoPhieuDongY]
      ,[TLDongY]
  FROM [DaiHoiDangBo].[dbo].[KetQuaTyLeBauCuDaiBieu]
 WHERE NamDienRaDaiHoi = @nam 
 ORDER BY TLDongY desc
END

GO


