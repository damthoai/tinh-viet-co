/****** Object:  StoredProcedure [dbo].[p_HUFS_ProcessChotTonKhoDetailTinhTonKho]    Script Date: 07/24/2015 23:20:58 ******/
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[dbo].[p_HUFS_ProcessChotTonKhoDetailTinhTonKho]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
	DROP PROCEDURE [dbo].[p_HUFS_ProcessChotTonKhoDetailTinhTonKho]
GO

/****** Object:  StoredProcedure [dbo].[p_HUFS_ProcessChotTonKhoDetailTinhTonKho]    Script Date: 07/24/2015 23:20:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*
EXEC p_HUFS_ProcessChotTonKhoDetailTinhTonKho @MaChotTonKho = 'TKK20150725115632',
@TenKho = 'Phòng Khám Khu B'
*/
CREATE PROCEDURE [dbo].[p_HUFS_ProcessChotTonKhoDetailTinhTonKho] @MaChotTonKho NVARCHAR(50)
	,@TenKho NVARCHAR(50)
AS
BEGIN
	IF NOT EXISTS (
			SELECT 1
			FROM HUFS_CHOTTONKHO_DETAIL
			WHERE MaChotTonHeader = @MaChotTonKho
			)
	BEGIN
		INSERT INTO [HUFS_CHOTTONKHO_DETAIL] (
			[MaThuoc]
			,[TenThuoc]
			,[MaNhapKho]
			,[BaoHiem]
			,[DonViTinh]
			,[HanDung]
			,[NhomThuoc]
			,[MaThuocYTeHienThi]
			,[SoLuongTon]
			,[SoLuongThucTe]
			,[SoLuongChenhLech]
			,[LoaiChenhLech]
			,[MaChotTonHeader]
			,[MaNhapKhoDetail]
			)
		SELECT hnd.MaThuoc AS MaThuoc
			,hnd.TenThuoc AS TenThuoc
			,hnd.MaNhapKho AS MaNhapKho
			,hnd.ThuocBH AS BaoHiem
			,hd.TenDonViTinh AS DonViTinh
			,hnd.HanSuDung AS HanDung
			,[NhomThuoc]
			,(
				CASE 
					WHEN hnd.ThuocBH = 1
						AND hm.[MaThuocYTe] IN (
							SELECT a.MaThuocYTe
							FROM HUFS_MEDICINE a
							WHERE a.BaoHiem = 0
								AND a.MaThuocYTe = hm.[MaThuocYTe]
							)
						THEN hm.[MaThuocYTe] + '_bh'
					ELSE [MaThuocYTe]
					END
				) AS MaThuocYTeHienThi
			,hnd.SoLuong AS SoLuongTon
			,hnd.SoLuong AS SoLuongThucTe
			,0 AS SoLuongChenhLech
			,N'=' AS LoaiChenhLech
			,@MaChotTonKho AS MaChotTonHeader
			,hnd.Id AS MaNhapKhoDetail
		FROM HUFS_NHAPKHO_DETAIL hnd
		INNER JOIN HUFS_NHAPKHO_HEADER hnh ON hnd.MaNhapKho = hnh.MaNhapKho
		INNER JOIN HUFS_MEDICINE hm ON hnd.MaThuoc = hm.MedicineID
		LEFT JOIN HUFS_DONVITINH hd ON hm.DonViTinh = hd.MaDonViTinh
		WHERE hnd.SoLuong > 0
			AND hnh.PhongKhamKho = @TenKho

		UPDATE HUFS_CHOTTONKHO_HEADER
		SET CurrentWorkflow = 1
		WHERE MaChotTonKho = @MaChotTonKho

		SELECT [Id]
			,[MaThuoc]
			,[TenThuoc]
			,[MaNhapKho]
			,[BaoHiem]
			,[DonViTinh]
			--,[HanDung]
			,CONVERT(VARCHAR(10), HanDung, 105) AS HanDung
			,[NhomThuoc]
			,[MaThuocYTeHienThi]
			,[SoLuongTon]
			,[SoLuongThucTe]
			,[SoLuongChenhLech]
			,[LoaiChenhLech]
			,[MaChotTonHeader]
			,[MaNhapKhoDetail]
		FROM [HUFS_CHOTTONKHO_DETAIL]
		WHERE MaChotTonHeader = @MaChotTonKho
	END
	ELSE
	BEGIN
		SELECT [Id]
			,[MaThuoc]
			,[TenThuoc]
			,[MaNhapKho]
			,[BaoHiem]
			,[DonViTinh]
			--,[HanDung]
			,CONVERT(VARCHAR(10), HanDung, 105) AS HanDung
			,[NhomThuoc]
			,[MaThuocYTeHienThi]
			,[SoLuongTon]
			,[SoLuongThucTe]
			,[SoLuongChenhLech]
			,[LoaiChenhLech]
			,[MaChotTonHeader]
			,[MaNhapKhoDetail]
		FROM [HUFS_CHOTTONKHO_DETAIL]
		WHERE MaChotTonHeader = @MaChotTonKho
	END
END
GO


