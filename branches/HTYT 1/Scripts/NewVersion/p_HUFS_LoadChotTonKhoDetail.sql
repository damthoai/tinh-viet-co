/****** Object:  StoredProcedure [dbo].[p_HUFS_LoadChotTonKhoDetail]    Script Date: 07/24/2015 23:20:58 ******/
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[dbo].[p_HUFS_LoadChotTonKhoDetail]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
	DROP PROCEDURE [dbo].[p_HUFS_LoadChotTonKhoDetail]
GO

/****** Object:  StoredProcedure [dbo].[p_HUFS_LoadChotTonKhoDetail]    Script Date: 07/24/2015 23:20:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*
EXEC p_HUFS_LoadChotTonKhoDetail @MaChotTonKho = 'TKK20150726104523'
*/
CREATE PROCEDURE [dbo].[p_HUFS_LoadChotTonKhoDetail] @MaChotTonKho NVARCHAR(50)
AS
BEGIN
	SELECT [Id]
		,[MaThuoc]
		,[TenThuoc]
		,[MaNhapKho]
		,[BaoHiem]
		,[DonViTinh]
		--,[HanDung]
		,CONVERT(VARCHAR(10), HanDung, 105) AS HanDung
		,[NhomThuoc]
		,[MaThuocYTeHienThi]
		,[SoLuongTon]
		,[SoLuongThucTe]
		,[SoLuongChenhLech]
		,[LoaiChenhLech]
		,[MaChotTonHeader]
		,[MaNhapKhoDetail]
	FROM [HUFS_CHOTTONKHO_DETAIL]
	WHERE MaChotTonHeader = @MaChotTonKho
END
GO


