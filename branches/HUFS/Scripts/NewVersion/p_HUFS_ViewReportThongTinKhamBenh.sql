/****** Object:  StoredProcedure [dbo].[p_HUFS_ViewReportThongTinKhamBenh]    Script Date: 06/04/2015 20:46:28 ******/
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[dbo].[p_HUFS_ViewReportThongTinKhamBenh]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
	DROP PROCEDURE [dbo].[p_HUFS_ViewReportThongTinKhamBenh]
GO

/****** Object:  StoredProcedure [dbo].[p_HUFS_ViewReportThongTinKhamBenh]    Script Date: 06/04/2015 20:46:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*
EXEC p_HUFS_ViewReportThongTinKhamBenh @ListTransaction NVARCHAR(MAX)
*/
/*
-0:Approve
-1:Processed
*/
CREATE PROCEDURE [dbo].[p_HUFS_ViewReportThongTinKhamBenh] @ListTransaction NVARCHAR(MAX)
AS
BEGIN
	CREATE TABLE #TempTransaction (MaTransaction BIGINT)

	INSERT INTO #TempTransaction (MaTransaction)
	SELECT splitdata AS MaTransaction
	FROM fnSplitString(@ListTransaction, ',')

	CREATE INDEX myIndex ON #TempTransaction (MaTransaction)

	DECLARE @MaKhamBenh NVARCHAR(50) = ''
	DECLARE @TransactionId BIGINT = 0
	SELECT TOP(1) @TransactionId = MaTransaction
	FROM #TempTransaction
	
	SELECT TOP(1) @MaKhamBenh = MaKhamBenh
	FROM HUFS_TRANSACTION
	WHERE MaTransaction = @TransactionId
	
	SELECT hkh.BenhNhan
	       ,(YEAR(GETDATE()) - CAST (hkh.NamSinh AS INT)) AS Tuoi
	       ,hkh.GioiTinh
	       ,he.Address AS DiaChi
	       ,he.Phone AS DienThoai
	       ,hkh.ChuanDoan
	       ,hkh.MaKhamBenh
	FROM HUFS_KHAMBENH_HEADER hkh 
	     INNER JOIN HUFS_EMPLOYEE he ON hkh.MaBenhNhan = he.EmployeeID
	WHERE  MaKhamBenh = @MaKhamBenh 
	--WHERE  MaKhamBenh =     'MKB7'
	
	SELECT TenThuoc
	      ,HamLuong
	FROM HUFS_KHAMBENH_DETAIL
	WHERE MaKhamBenh = @MaKhamBenh 
	--WHERE  MaKhamBenh =     'MKB7'
	
	DROP TABLE #TempTransaction
END
GO


