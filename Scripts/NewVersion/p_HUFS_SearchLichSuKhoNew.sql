--USE [DMSPOPNew]
--GO

/****** Object:  StoredProcedure [dbo].[p_HUFS_SearchLichSuKhoNew]    Script Date: 06/10/2015 22:50:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[p_HUFS_SearchLichSuKhoNew]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[p_HUFS_SearchLichSuKhoNew]
GO

--USE [DMSPOPNew]
--GO

/****** Object:  StoredProcedure [dbo].[p_HUFS_SearchLichSuKhoNew]    Script Date: 06/10/2015 22:50:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


--exec [p_HUFS_SearchLichSuKhoNew] '', ''
CREATE PROCEDURE [dbo].[p_HUFS_SearchLichSuKhoNew]  
 @Kho            VARCHAR(50),  
 @LoaiThuoc      VARCHAR(50)
AS  
BEGIN   
	SELECT 
	M.MedicineName AS TenThuoc,
	M.TenThanhPhanThuoc AS ThanhPhanThuoc,
	M.HamLuong AS HamLuong,
	M.SoDKHoacGPKD AS GPNK,
	M.DangBaoCheDuongUong AS DangBaoChe,
	M.NhaSanXuat AS NhaSanXuat,
	M.QuocGia AS QuocGia,
	D.TenDonViTinh AS DonViTinh,
	NK.MaNhapKho AS MaKho,
	H.PhongKhamKho AS TenKho,
	CASE WHEN M.HoatDong = 'True' THEN 'x' ELSE '' END AS HoatDong,
	NK.SoLuong - SUM(ISNULL(T.SoLuong,0)) AS SoLuong
	,NK.LoThuoc
	,CONVERT(VARCHAR(10), NK.HanSuDung, 105) AS HanSuDung
	FROM [HUFS_NHAPKHO_DETAIL] NK 
	INNER JOIN [HUFS_NHAPKHO_HEADER] H ON H.MaNhapKho = NK.MaNhapKho
	INNER JOIN HUFS_MEDICINE M ON NK.MaThuoc = M.MedicineID
	INNER JOIN HUFS_DONVITINH D ON M.DonViTinh = D.MaDonViTinh
	LEFT JOIN HUFS_TRANSACTION T ON T.MaThuoc = NK.MaThuoc and T.XuatKho =1 AND T.MaLoThuoc = NK.LoThuoc
	WHERE  (H.PhongKhamKho LIKE '%'+IsNull(@Kho,H.PhongKhamKho)+'%')
	       AND (M.MedicineName LIKE '%'+IsNull(@LoaiThuoc,M.MedicineName)+'%')
	GROUP BY M.MedicineName,
	M.TenThanhPhanThuoc,
	M.HamLuong,
	M.SoDKHoacGPKD,
	M.DangBaoCheDuongUong ,
	M.NhaSanXuat,
	M.QuocGia,
	D.TenDonViTinh,
	NK.MaNhapKho,
	NK.MaNhapKho,
	M.HoatDong,
	NK.SoLuong,
	H.PhongKhamKho
	,NK.LoThuoc
	,NK.HanSuDung
	
END  


GO


