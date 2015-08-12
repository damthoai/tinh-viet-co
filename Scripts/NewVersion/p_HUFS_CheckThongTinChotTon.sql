

/****** Object:  StoredProcedure [dbo].[p_HUFS_CheckThongTinChotTon]    Script Date: 08/12/2015 23:02:54 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[p_HUFS_CheckThongTinChotTon]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[p_HUFS_CheckThongTinChotTon]
GO


/****** Object:  StoredProcedure [dbo].[p_HUFS_CheckThongTinChotTon]    Script Date: 08/12/2015 23:02:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


--p_HUFS_CheckThongTinChotTon
CREATE PROCEDURE [dbo].[p_HUFS_CheckThongTinChotTon] @MaKho NVARCHAR(50)
AS
BEGIN
	DECLARE @NumOfChotTon INT = 0

	SELECT @NumOfChotTon = COUNT(MaChotTonKho)
	FROM HUFS_CHOTTONKHO_HEADER
	WHERE MaKho = @MaKho
	    AND CONVERT(DATE, NgayTaoPhieu) = CONVERT(DATE, GETDATE())
		AND DATEPART(hour, NgayTaoPhieu) = DATEPART(hour, GETDATE())

	SELECT Result = @NumOfChotTon
END

GO


