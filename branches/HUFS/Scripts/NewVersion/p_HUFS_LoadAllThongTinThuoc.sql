USE [DMSPOPNew]
GO

/****** Object:  StoredProcedure [dbo].[p_HUFS_LoadAllThongTinThuoc]    Script Date: 07/09/2015 21:56:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[p_HUFS_LoadAllThongTinThuoc]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[p_HUFS_LoadAllThongTinThuoc]
GO

USE [DMSPOPNew]
GO

/****** Object:  StoredProcedure [dbo].[p_HUFS_LoadAllThongTinThuoc]    Script Date: 07/09/2015 21:56:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



--exec [p_HUFS_LoadAllThongTinThuoc]
CREATE PROCEDURE [dbo].[p_HUFS_LoadAllThongTinThuoc]
AS
BEGIN
	SELECT MedicineID
		,MedicineName
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
	FROM HUFS_MEDICINE
	ORDER BY [MaThuocYTeHienThi]
END


GO


