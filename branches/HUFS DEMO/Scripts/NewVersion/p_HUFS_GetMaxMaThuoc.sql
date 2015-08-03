/****** Object:  StoredProcedure [dbo].[p_HUFS_GetMaxMaThuoc]    Script Date: 06/24/2015 16:49:08 ******/
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[dbo].[p_HUFS_GetMaxMaThuoc]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
	DROP PROCEDURE [dbo].[p_HUFS_GetMaxMaThuoc]
GO

/****** Object:  StoredProcedure [dbo].[p_HUFS_GetMaxMaThuoc]    Script Date: 06/24/2015 16:49:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--p_HUFS_GetMaxMaThuoc
CREATE PROCEDURE [dbo].[p_HUFS_GetMaxMaThuoc]
AS
BEGIN
	SELECT TOP 1 [MedicineID]
		,CAST(REPLACE([MedicineID], 'ME', '') AS BIGINT) AS Id
	INTO #TempMaThuoc
	FROM [HUFS_MEDICINE]
	ORDER BY Id DESC

	SELECT MedicineID AS MaxMaThuoc
	FROM #TempMaThuoc
	
	DROP TABLE #TempMaThuoc
END
GO


