

/****** Object:  StoredProcedure [dbo].[p_HUFS_LoadThongTinThuocForKhamBenh]    Script Date: 07/13/2015 21:42:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[p_HUFS_LoadThongTinThuocForKhamBenh]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[p_HUFS_LoadThongTinThuocForKhamBenh]
GO



/****** Object:  StoredProcedure [dbo].[p_HUFS_LoadThongTinThuocForKhamBenh]    Script Date: 07/13/2015 21:42:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



--exec [p_HUFS_LoadThongTinThuocForKhamBenh]
CREATE PROCEDURE [dbo].[p_HUFS_LoadThongTinThuocForKhamBenh]
AS
BEGIN
	SELECT HUFS_MEDICINE.MedicineID
		,HUFS_MEDICINE.MedicineName
		,Description
		,STATUS
		,KhuyenMai
		,HUFS_CHINHSACH_DETAIL.GiaDNMua
		,HUFS_CHINHSACH_DETAIL.GiaDNMuaVAT
		,HUFS_CHINHSACH_DETAIL.GiaThucMua
		,GiaKMMua
		,HUFS_CHINHSACH_DETAIL.GiaDNBan
		,HUFS_CHINHSACH_DETAIL.GiaThucBan
		,MaKM
		,HUFS_MEDICINE.BaoHiem
		,HUFS_CHINHSACH_DETAIL.MaChinhSachGia
		,HUFS_MEDICINE.DienGiai
		,STTTheoDMTCuaBYT
		,TenThanhPhanThuoc
		,HamLuong
		,SoDKHoacGPKD
		,DangBaoCheDuongUong
		,NhaSanXuat
		,QuocGia
		,HUFS_MEDICINE.DonViTinh
		,HUFS_MEDICINE.HoatDong
		,CachUong
		,Flag
		,HUFS_CHINHSACH_DETAIL.GiaDNBanVAT
		,TenDonViTinh
		,CachUongThuoc
		,MaThuocYTe
		,CachDungChiTiet
		,HUFS_CHINHSACH_DETAIL.MaThuocYTeHienThi
	FROM HUFS_MEDICINE
	INNER JOIN HUFS_CHINHSACH_DETAIL ON HUFS_MEDICINE.MedicineID = HUFS_CHINHSACH_DETAIL.MedicineID
	LEFT JOIN HUFS_DONVITINH ON HUFS_MEDICINE.DonViTinh = HUFS_DONVITINH.MaDonViTinh
	LEFT JOIN HUFS_CACHUONGTHUOC ON HUFS_MEDICINE.CachUong = HUFS_CACHUONGTHUOC.MaUongThuoc
	ORDER BY HUFS_CHINHSACH_DETAIL.[MaThuocYTeHienThi]
END


GO


