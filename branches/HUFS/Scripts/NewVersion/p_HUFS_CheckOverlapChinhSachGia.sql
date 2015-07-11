
/****** Object:  StoredProcedure [dbo].[p_HUFS_CheckOverlapChinhSachGia]    Script Date: 07/11/2015 21:21:12 ******/
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[dbo].[p_HUFS_CheckOverlapChinhSachGia]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
	DROP PROCEDURE [dbo].[p_HUFS_CheckOverlapChinhSachGia]
GO



/****** Object:  StoredProcedure [dbo].[p_HUFS_CheckOverlapChinhSachGia]    Script Date: 07/11/2015 21:21:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--p_HUFS_GetAllChinhSachGia
CREATE PROCEDURE [dbo].[p_HUFS_CheckOverlapChinhSachGia] @MaChinhSachGia NVARCHAR(50)
	,@ThoiGianBatDau DATETIME
	,@NgayNgungHoatDong DATETIME
AS
BEGIN
	DECLARE @NumOfOverlap INT = 0
    
	IF @MaChinhSachGia = ''
	BEGIN
		SELECT @NumOfOverlap = COUNT(MaChinhSachGia)
		FROM HUFS_CHINHSACH_HEADER
		WHERE ThoiGianBatDau BETWEEN @ThoiGianBatDau
				AND @NgayNgungHoatDong
			OR NgayNgungHoatDong BETWEEN @ThoiGianBatDau
				AND @NgayNgungHoatDong
	END
	ELSE
	BEGIN
		SELECT @NumOfOverlap = COUNT(MaChinhSachGia)
		FROM HUFS_CHINHSACH_HEADER
		WHERE MaChinhSachGia <> @MaChinhSachGia
			AND (
				ThoiGianBatDau BETWEEN @ThoiGianBatDau
					AND @NgayNgungHoatDong
				OR NgayNgungHoatDong BETWEEN @ThoiGianBatDau
					AND @NgayNgungHoatDong
				)
	END
	
	SELECT Result = @NumOfOverlap
END
GO


