

/****** Object:  StoredProcedure [dbo].[p_HUFS_TinhSoLuongThuocTrongKho]    Script Date: 06/04/2015 20:09:04 ******/
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[dbo].[p_HUFS_TinhSoLuongThuocTrongKho]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
	DROP PROCEDURE [dbo].[p_HUFS_TinhSoLuongThuocTrongKho]
GO



/****** Object:  StoredProcedure [dbo].[p_HUFS_TinhSoLuongThuocTrongKho]    Script Date: 06/04/2015 20:09:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--p_HUFS_TinhSoLuongThuocTrongKho 'ME0000000007',39 ,'Phòng Khám Khu B'
CREATE PROC [dbo].[p_HUFS_TinhSoLuongThuocTrongKho] (
	@maThuoc VARCHAR(50)
	,@soluongxuat INT
	,@tenKho NVARCHAR(50)
	)
AS
BEGIN
	DECLARE @Result INT
	DECLARE @LoThuoc VARCHAR(50)
	DECLARE @SoLuongThuocHienCoTrongKho INT
	DECLARE @SoLuongTrongHangDoiGiaoDich INT
	DECLARE @SoLuongThuocConLai INT
	/*
	SELECT TOP (1) @LoThuoc = LoThuoc
	FROM (
		SELECT NK.LoThuoc
			,(NK.SoLuong - SUM(ISNULL(T.SoLuong, 0)) - @soluongxuat) AS ConLai
		FROM [HUFS_NHAPKHO_DETAIL] NK
		INNER JOIN HUFS_NHAPKHO_HEADER NKH ON NK.MaNhapKho = NKH.MaNhapKho
		INNER JOIN HUFS_MEDICINE M ON NK.MaThuoc = M.MedicineID
		LEFT JOIN HUFS_TRANSACTION T ON T.MaThuoc = NK.MaThuoc
			AND T.XuatKho = 1
			AND T.MaLoThuoc = NK.LoThuoc
		WHERE NK.MaThuoc = @maThuoc AND NKH.PhongKhamKho = @tenKho
		GROUP BY NK.SoLuong
			,NK.LoThuoc
		) TT
	WHERE TT.ConLai >= 0
	ORDER BY TT.LoThuoc ASC
	*/
	--Tinh so thuoc hien co trong kho ABC

	SELECT @SoLuongThuocHienCoTrongKho = SUM(CAST ( NK.SoLuong AS FLOAT ) )
	FROM [HUFS_NHAPKHO_DETAIL] NK
		INNER JOIN HUFS_NHAPKHO_HEADER NKH ON NK.MaNhapKho = NKH.MaNhapKho
	WHERE NK.MaThuoc = @maThuoc AND NKH.PhongKhamKho = @tenKho
	
	--SELECT SUM(CAST ( NK.SoLuong AS FLOAT ) )
	--FROM [HUFS_NHAPKHO_DETAIL] NK
	--	INNER JOIN HUFS_NHAPKHO_HEADER NKH ON NK.MaNhapKho = NKH.MaNhapKho
	--WHERE NK.MaThuoc = 'ME0000000007' AND NKH.PhongKhamKho = 'Phòng Khám Khu B'
	
	
   --Tinh so thuoc dang cho giao dich cua kho ABC
   
    SELECT @SoLuongTrongHangDoiGiaoDich = SUM (T.SoLuong)
    FROM HUFS_TRANSACTION T 
        INNER JOIN HUFS_KHAMBENH_HEADER KH ON T.MaKhamBenh = KH.MaKhamBenh
    WHERE T.XuatKho = 1 AND KH.PhongKhamBenh = @tenKho AND T.MaThuoc = @maThuoc
    
    SELECT SUM (T.SoLuong)
    FROM HUFS_TRANSACTION T 
        INNER JOIN HUFS_KHAMBENH_HEADER KH ON T.MaKhamBenh = KH.MaKhamBenh
    WHERE T.XuatKho = 1 AND KH.PhongKhamBenh = 'Phòng Khám Khu B' AND T.MaThuoc = 'ME0000000007'
    
    SET @SoLuongThuocConLai = @SoLuongThuocHienCoTrongKho - @SoLuongTrongHangDoiGiaoDich
	SET @Result = @SoLuongThuocConLai - @soluongxuat
	
	/*
	SELECT @Result = ISNULL((NK.SoLuong - SUM(ISNULL(T.SoLuong, 0)) - @soluongxuat), - 1)
	FROM [HUFS_NHAPKHO_DETAIL] NK
	INNER JOIN HUFS_MEDICINE M ON NK.MaThuoc = M.MedicineID
	LEFT JOIN HUFS_TRANSACTION T ON T.MaThuoc = NK.MaThuoc
		AND T.XuatKho = 1
	WHERE NK.MaThuoc = @maThuoc
		AND NK.LoThuoc = @LoThuoc
	GROUP BY NK.SoLuong
	*/
	SELECT @Result AS Result
END
GO


