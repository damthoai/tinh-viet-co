

/****** Object:  StoredProcedure [dbo].[p_HUFS_SearchLichSuBenhNhanNew]    Script Date: 06/10/2015 22:47:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[p_HUFS_SearchLichSuBenhNhanNew]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[p_HUFS_SearchLichSuBenhNhanNew]
GO



/****** Object:  StoredProcedure [dbo].[p_HUFS_SearchLichSuBenhNhanNew]    Script Date: 06/10/2015 22:47:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


--exec [p_HUFS_SearchLichSuBenhNhanNew] '000001', '',''
CREATE PROCEDURE [dbo].[p_HUFS_SearchLichSuBenhNhanNew]  
 @MaBenhNhan  VARCHAR(50),  
 @MaBHYT      VARCHAR(50),  
 @TenBenhNhan NVARCHAR(50)
AS  
BEGIN   

	SELECT DISTINCT
	H.PhongKhamBenh AS PhongKhamBenh,
	--CONVERT(VARCHAR(20),H.NgayKhamBenh,109) AS NgayKhamBenh,
	CONVERT(VARCHAR(10), H.NgayKhamBenh, 110) 
                        + ' ' + CONVERT(VARCHAR(8), H.NgayKhamBenh, 108) AS NgayKhamBenh,
	H.BenhNhan AS BenhNhan,
	H.MaBenhNhan AS MaNhanVien,
	H.MaBHYT AS MaBHYT,
	H.GioiTinh AS GioiTinh,
	H.BoPhan AS BoPhan,
	H.NhomBenh AS NhomBenh,
	H.ChuanDoan AS ChuanDoan,
	H.KhuVuc AS KhuVuc,
	H.QuyetDinhNghi AS QuyetDinhNghi,
	CONVERT(VARCHAR(10), H.TuNgay, 105) AS TuNgay,
	CONVERT(VARCHAR(10), H.DenNgay, 105) AS DenNgay,
	--H.TuNgay AS TuNgay,
	--H.DenNgay AS DenNgay,
	H.SoNgayNghi AS SoNgayDuocNghi,
	H.LyDo AS LiDo,
	H.DienGiai AS DienGiai 
	FROM HUFS_KHAMBENH_HEADER H INNER JOIN HUFS_KHAMBENH_DETAIL D ON H.MaKhamBenh = D.MaKhamBenh
	where (H.MaBenhNhan LIKE '%'+IsNull(@MaBenhNhan,H.MaBenhNhan)+'%')
       AND (H.MaBHYT LIKE '%'+IsNull(@MaBHYT,H.MaBHYT)+'%')
       AND (H.BenhNhan LIKE '%'+IsNull(@TenBenhNhan,H.BenhNhan)+'%')

END  

  

GO


