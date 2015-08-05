

/****** Object:  StoredProcedure [dbo].[p_HUFS_LoadThongTinThuoc]    Script Date: 06/03/2015 20:22:37 ******/
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[dbo].[p_HUFS_LoadThongTinThuoc]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
	DROP PROCEDURE [dbo].[p_HUFS_LoadThongTinThuoc]
GO



/****** Object:  StoredProcedure [dbo].[p_HUFS_LoadThongTinThuoc]    Script Date: 06/03/2015 20:22:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--exec [p_HUFS_LoadThongTinThuoc]
CREATE PROCEDURE [dbo].[p_HUFS_LoadThongTinThuoc]
AS
BEGIN
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
	INNER JOIN HUFS_DONVITINH ON HUFS_MEDICINE.DonViTinh = HUFS_DONVITINH.MaDonViTinh
	INNER JOIN HUFS_CACHUONGTHUOC ON HUFS_MEDICINE.CachUong = HUFS_CACHUONGTHUOC.MaUongThuoc
	WHERE Status = 1
	ORDER BY [MaThuocYTeHienThi]
END
GO


