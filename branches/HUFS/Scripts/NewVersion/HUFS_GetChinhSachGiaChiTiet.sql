--USE [DMSPOPNew]
--GO

/****** Object:  StoredProcedure [dbo].[HUFS_GetChinhSachGiaChiTiet]    Script Date: 06/10/2015 22:56:32 ******/
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

--USE [DMSPOPNew]
--GO

/****** Object:  StoredProcedure [dbo].[HUFS_GetChinhSachGiaChiTiet]    Script Date: 06/10/2015 22:56:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[HUFS_GetChinhSachGiaChiTiet] (@MaChinhSachGia VARCHAR(50))
AS
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
GO


