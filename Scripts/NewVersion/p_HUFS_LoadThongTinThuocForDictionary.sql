

/****** Object:  StoredProcedure [dbo].[p_HUFS_LoadThongTinThuocForDictionary]    Script Date: 06/03/2015 20:22:37 ******/
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[dbo].[p_HUFS_LoadThongTinThuocForDictionary]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
	DROP PROCEDURE [dbo].[p_HUFS_LoadThongTinThuocForDictionary]
GO



/****** Object:  StoredProcedure [dbo].[p_HUFS_LoadThongTinThuocForDictionary]    Script Date: 06/03/2015 20:22:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--exec [p_HUFS_LoadThongTinThuocForDictionary]
CREATE PROCEDURE [dbo].[p_HUFS_LoadThongTinThuocForDictionary]
AS
BEGIN
	SELECT MedicineID
		,BaoHiem
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
END
GO


