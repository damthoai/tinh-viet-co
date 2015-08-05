
/****** Object:  StoredProcedure [dbo].[p_HUFS_GetMaxMaKhamBenh]    Script Date: 06/24/2015 17:05:54 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[p_HUFS_GetMaxMaKhamBenh]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[p_HUFS_GetMaxMaKhamBenh]
GO



/****** Object:  StoredProcedure [dbo].[p_HUFS_GetMaxMaKhamBenh]    Script Date: 06/24/2015 17:05:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


--p_HUFS_GetMaxMaKhamBenh

CREATE PROCEDURE [dbo].[p_HUFS_GetMaxMaKhamBenh]
AS  
BEGIN   
  
	--SELECT MAX(MaKhamBenh) AS MaxMaKhamBenh FROM HUFS_KHAMBENH_HEADER 
	SELECT TOP 1 [MaKhamBenh]
		,CAST(REPLACE([MaKhamBenh], 'MKB', '') AS BIGINT) AS Id
	INTO #TempMaKhamBenh
	FROM [HUFS_KHAMBENH_HEADER]
	ORDER BY Id DESC

	SELECT MaKhamBenh AS MaxMaKhamBenh
	FROM #TempMaKhamBenh
	
	DROP TABLE #TempMaKhamBenh

END  


GO


