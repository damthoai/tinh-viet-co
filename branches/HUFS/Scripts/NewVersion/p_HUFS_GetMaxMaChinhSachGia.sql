

/****** Object:  StoredProcedure [dbo].[p_HUFS_GetMaxMaChinhSachGia]    Script Date: 06/24/2015 17:00:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[p_HUFS_GetMaxMaChinhSachGia]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[p_HUFS_GetMaxMaChinhSachGia]
GO


/****** Object:  StoredProcedure [dbo].[p_HUFS_GetMaxMaChinhSachGia]    Script Date: 06/24/2015 17:00:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


--p_HUFS_GetMaxMaChinhSachGia

CREATE PROCEDURE [dbo].[p_HUFS_GetMaxMaChinhSachGia]
AS  
BEGIN   
  
	--SELECT MAX([MaChinhSachGia]) AS MaxMaChinhSachGia
	--FROM [HUFS_CHINHSACH_HEADER]
	
	SELECT TOP 1 [MaChinhSachGia]
		,CAST(REPLACE([MaChinhSachGia], 'MCSG', '') AS BIGINT) AS Id
	INTO #TempMaChinhSachGia
	FROM [HUFS_CHINHSACH_HEADER]
	ORDER BY Id DESC

	SELECT MaChinhSachGia AS MaxMaChinhSachGia
	FROM #TempMaChinhSachGia
	
	DROP TABLE #TempMaChinhSachGia
END  


GO


