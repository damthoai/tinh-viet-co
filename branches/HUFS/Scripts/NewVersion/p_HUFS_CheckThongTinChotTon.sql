/****** Object:  StoredProcedure [dbo].[p_HUFS_CheckThongTinChotTon]    Script Date: 07/11/2015 21:21:12 ******/
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[dbo].[p_HUFS_CheckThongTinChotTon]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
	DROP PROCEDURE [dbo].[p_HUFS_CheckThongTinChotTon]
GO

/****** Object:  StoredProcedure [dbo].[p_HUFS_CheckThongTinChotTon]    Script Date: 07/11/2015 21:21:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--p_HUFS_CheckThongTinChotTon
CREATE PROCEDURE [dbo].[p_HUFS_CheckThongTinChotTon] @TenKho NVARCHAR(MAX)
AS
BEGIN
	DECLARE @NumOfChotTon INT = 0

	SELECT @NumOfChotTon = COUNT(MaChotTonKho)
	FROM HUFS_CHOTTONKHO_HEADER
	WHERE TenKho = @TenKho
	    AND CONVERT(DATE, NgayTaoPhieu) = CONVERT(DATE, GETDATE())
		AND DATEPART(hour, NgayTaoPhieu) = DATEPART(hour, GETDATE())

	SELECT Result = @NumOfChotTon
END
GO


