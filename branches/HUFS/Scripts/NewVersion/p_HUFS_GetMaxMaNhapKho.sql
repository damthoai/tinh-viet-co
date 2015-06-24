USE [DMSPOPNew]
GO

/****** Object:  StoredProcedure [dbo].[p_HUFS_GetMaxMaNhapKho]    Script Date: 06/24/2015 17:09:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[p_HUFS_GetMaxMaNhapKho]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[p_HUFS_GetMaxMaNhapKho]
GO

USE [DMSPOPNew]
GO

/****** Object:  StoredProcedure [dbo].[p_HUFS_GetMaxMaNhapKho]    Script Date: 06/24/2015 17:09:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


--p_HUFS_GetMaxMaNhapKho

CREATE PROCEDURE [dbo].[p_HUFS_GetMaxMaNhapKho]
AS  
BEGIN   
  
	--SELECT MAX(MaNhapKho) AS MaxMaNhapKho FROM HUFS_NHAPKHO_HEADER WHERE ISNULL(MaNhapKho,'') !=''
	
	SELECT TOP 1 [MaNhapKho]
		,CAST(REPLACE([MaNhapKho], 'MNK', '') AS BIGINT) AS Id
	INTO #TempMaNhapKho
	FROM [HUFS_NHAPKHO_HEADER]
	ORDER BY Id DESC

	SELECT MaNhapKho AS MaxMaNhapKho
	FROM #TempMaNhapKho
	
	DROP TABLE #TempMaNhapKho
END  


GO


