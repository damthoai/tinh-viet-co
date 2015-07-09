/****** Object:  StoredProcedure [dbo].[HUFS_SelectDanhMucThuoc]    Script Date: 06/24/2015 23:36:59 ******/
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[dbo].[HUFS_SelectDanhMucThuoc]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
	DROP PROCEDURE [dbo].[HUFS_SelectDanhMucThuoc]
GO

/****** Object:  StoredProcedure [dbo].[HUFS_SelectDanhMucThuoc]    Script Date: 06/24/2015 23:36:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*
EXEC [HUFS_SelectDanhMucThuoc] @MaThuocYTe = '33123',@TenThuoc = ''
*/
CREATE PROC [dbo].[HUFS_SelectDanhMucThuoc] @MaThuocYTe NVARCHAR(500) = ''
	,@TenThuoc NVARCHAR(500) = ''
AS
SELECT MedicineID
	,MedicineName
	,Description
	,STATUS
	,KhuyenMai
	,GiaDNMua
	,GiaDNMuaVAT
	,GiaThucMua
	,GiaKMMua
	,GiaDNBan
	,GiaThucBan
	,MaKM
	,BaoHiem
	,MaChinhSachGia
	,DienGiai
	,STTTheoDMTCuaBYT
	,TenThanhPhanThuoc
	,HamLuong
	,SoDKHoacGPKD
	,DangBaoCheDuongUong
	,NhaSanXuat
	,QuocGia
	,DonViTinh
	,HoatDong
	,CachUong
	,Flag
	,GiaDNBanVAT
	,TenDonViTinh
	,CachUongThuoc
	,MaThuocYTe
	,CachDungChiTiet
	,HeSoAnToan
	,NhomThuoc
	,A.MaThuocYTeHienThi
FROM (
	SELECT *
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
	) A
LEFT JOIN HUFS_DONVITINH ON A.DonViTinh = HUFS_DONVITINH.MaDonViTinh
LEFT JOIN HUFS_CACHUONGTHUOC ON A.CachUong = HUFS_CACHUONGTHUOC.MaUongThuoc
WHERE (
		@MaThuocYTe = ''
		OR MaThuocYTeHienThi LIKE '%' + @MaThuocYTe + '%'
		)
	AND (
		@TenThuoc = ''
		OR MedicineName LIKE '%' + @TenThuoc + '%'
		)
ORDER BY [MaThuocYTeHienThi]
GO


