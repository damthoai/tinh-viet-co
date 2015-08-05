/****** Object:  StoredProcedure [dbo].[p_HUFS_ProcessTransactionXuatKho]    Script Date: 06/04/2015 20:46:28 ******/
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[dbo].[p_HUFS_ProcessTransactionXuatKho]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
	DROP PROCEDURE [dbo].[p_HUFS_ProcessTransactionXuatKho]
GO

/****** Object:  StoredProcedure [dbo].[p_HUFS_ProcessTransactionXuatKho]    Script Date: 06/04/2015 20:46:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*
EXEC p_HUFS_ProcessTransactionXuatKho @ListTransaction NVARCHAR(MAX)
*/
/*
-0:Approve
-1:Processed
*/
CREATE PROCEDURE [dbo].[p_HUFS_ProcessTransactionXuatKho] @ListTransaction NVARCHAR(MAX)
AS
BEGIN
	CREATE TABLE #TempTransaction (MaTransaction BIGINT)

	INSERT INTO #TempTransaction (MaTransaction)
	SELECT splitdata AS MaTransaction
	FROM fnSplitString(@ListTransaction, ',')

	CREATE INDEX myIndex ON #TempTransaction (MaTransaction)

	UPDATE hnd
	SET hnd.SoLuong = hnd.SoLuong - ht.SoLuong
	FROM HUFS_NHAPKHO_DETAIL hnd
	INNER JOIN HUFS_TRANSACTION ht ON hnd.LoThuoc = ht.MaLoThuoc
		AND hnd.MaThuoc = ht.MaThuoc
	INNER JOIN #TempTransaction t ON ht.MaTransaction = t.MaTransaction

	UPDATE ht
	SET ht.STATUS = 1
	FROM HUFS_TRANSACTION ht
	INNER JOIN #TempTransaction t ON ht.MaTransaction = t.MaTransaction
	
	DROP TABLE #TempTransaction
END
GO


