/****** Object:  StoredProcedure [dbo].[p_HUFS_LoadThongTinThuocTheoMaThuocYTe]    Script Date: 06/03/2015 20:22:37 ******/
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[dbo].[p_HUFS_LoadThongTinThuocTheoMaThuocYTe]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
	DROP PROCEDURE [dbo].[p_HUFS_LoadThongTinThuocTheoMaThuocYTe]
GO

/****** Object:  StoredProcedure [dbo].[p_HUFS_LoadThongTinThuocTheoMaThuocYTe]    Script Date: 06/03/2015 20:22:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--exec [p_HUFS_LoadThongTinThuocTheoMaThuocYTe]
CREATE PROCEDURE [dbo].[p_HUFS_LoadThongTinThuocTheoMaThuocYTe] @maThuocYTe NVARCHAR(50)
	,@baoHiem BIT
AS
BEGIN
	SELECT MedicineID
	FROM HUFS_MEDICINE
	WHERE MaThuocYTe = @maThuocYTe
		AND BaoHiem = @baoHiem
END
GO


