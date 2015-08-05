/****** Object:  StoredProcedure [dbo].[p_HUFS_UpdateThongTinGiaThuocKhiNhapKho]    Script Date: 07/13/2015 22:03:18 ******/
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[dbo].[p_HUFS_UpdateThongTinGiaThuocKhiNhapKho]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
	DROP PROCEDURE [dbo].[p_HUFS_UpdateThongTinGiaThuocKhiNhapKho]
GO

/****** Object:  StoredProcedure [dbo].[p_HUFS_UpdateThongTinGiaThuocKhiNhapKho]    Script Date: 07/13/2015 22:03:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[p_HUFS_UpdateThongTinGiaThuocKhiNhapKho] (@MaNhapKho NVARCHAR(50))
AS
BEGIN
	UPDATE a
	SET a.GiaDNBan = b.GiaTT
		,a.GiaDNBanVAT = b.GiaST
		,a.GiaThucBan = b.GiaThoiDiemNhap
		,a.GiaDNMua = b.GiaTT
		,a.GiaDNMuaVAT = b.GiaST
		,a.GiaThucMua = b.GiaThoiDiemNhap
	FROM HUFS_MEDICINE a
	INNER JOIN HUFS_NHAPKHO_DETAIL b ON a.MedicineID = b.MaThuoc
	WHERE b.MaNhapKho = @MaNhapKho
END
GO


