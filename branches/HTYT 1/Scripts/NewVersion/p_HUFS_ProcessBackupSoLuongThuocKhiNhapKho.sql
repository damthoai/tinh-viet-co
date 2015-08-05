/****** Object:  StoredProcedure [dbo].[p_HUFS_ProcessBackupSoLuongThuocKhiNhapKho]    Script Date: 07/24/2015 23:20:58 ******/
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[dbo].[p_HUFS_ProcessBackupSoLuongThuocKhiNhapKho]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
	DROP PROCEDURE [dbo].[p_HUFS_ProcessBackupSoLuongThuocKhiNhapKho]
GO

/****** Object:  StoredProcedure [dbo].[p_HUFS_ProcessBackupSoLuongThuocKhiNhapKho]    Script Date: 07/24/2015 23:20:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*
EXEC p_HUFS_ProcessBackupSoLuongThuocKhiNhapKho @MaChotTonKho = 'TKK20150725115632',
@TenKho = 'Phòng Khám Khu B'
*/
CREATE PROCEDURE [dbo].[p_HUFS_ProcessBackupSoLuongThuocKhiNhapKho] @MaNhapKho NVARCHAR(50)
AS
BEGIN
	
		UPDATE HUFS_NHAPKHO_DETAIL
		SET SoLuongNhapKho = SoLuong
		WHERE MaNhapKho = @MaNhapKho

END
GO