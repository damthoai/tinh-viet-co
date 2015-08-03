/****** Object:  StoredProcedure [dbo].[HUFS_GetChinhSachGiaChiTiet]    Script Date: 07/11/2015 11:42:42 ******/
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[dbo].[HUFS_GetChinhSachGiaChiTiet]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
	DROP PROCEDURE [dbo].[HUFS_GetChinhSachGiaChiTiet]
GO

/****** Object:  StoredProcedure [dbo].[HUFS_GetChinhSachGiaChiTiet]    Script Date: 07/11/2015 11:42:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[HUFS_GetChinhSachGiaChiTiet] (@MaChinhSachGia VARCHAR(50))
AS
/*
SELECT MedicineName
	,MedicineID
	,GiaDNMua
	,GiaDNMuaVAT
	,DonViTinh
	,DienGiai
	,HoatDong
	,MaThuocYTe
		,(
			CASE 
				WHEN BaoHiem = 1
					AND [MaThuocYTe] IN (
						SELECT a.MaThuocYTe
						FROM HUFS_MEDICINE a
						WHERE a.BaoHiem = 0
							AND a.MaThuocYTe = MaThuocYTe
						)
					THEN [MaThuocYTe] + '_bh'
				ELSE [MaThuocYTe]
				END
			) AS [MaThuocYTeHienThi]
FROM HUFS_MEDICINE H
WHERE H.MaChinhSachGia = @MaChinhSachGia
*/
SELECT [Id]
      ,[MaChinhSachGia]
      ,[TenChinhSachGia]
      ,[MedicineID]
      ,[MedicineName]
      ,[GiaDNMua]
      ,[GiaDNMuaVAT]
      ,[GiaThucMua]
      ,[GiaDNBan]
      ,[GiaDNBanVAT]
      ,[GiaThucBan]
      ,[MaThuocYTeHienThi]
      ,[BaoHiem]
      ,[DonViTinh]
      ,[DienGiai]
      ,[HoatDong]
      ,[IsDeleted]
FROM [HUFS_CHINHSACH_DETAIL]
WHERE MaChinhSachGia = @MaChinhSachGia AND IsDeleted = 0
GO


