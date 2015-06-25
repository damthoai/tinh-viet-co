

/****** Object:  StoredProcedure [dbo].[HUFS_SelectDanhMucThuoc]    Script Date: 06/24/2015 23:36:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HUFS_SelectDanhMucThuoc]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[HUFS_SelectDanhMucThuoc]
GO


/****** Object:  StoredProcedure [dbo].[HUFS_SelectDanhMucThuoc]    Script Date: 06/24/2015 23:36:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[HUFS_SelectDanhMucThuoc]
as
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
	LEFT JOIN HUFS_DONVITINH ON HUFS_MEDICINE.DonViTinh = HUFS_DONVITINH.MaDonViTinh
	LEFT JOIN HUFS_CACHUONGTHUOC ON HUFS_MEDICINE.CachUong = HUFS_CACHUONGTHUOC.MaUongThuoc
	ORDER BY [MaThuocYTeHienThi]
GO


