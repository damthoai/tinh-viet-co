/****** Object:  StoredProcedure [dbo].[p_HUFS_ProcessMarkDeleteChinhSachGiaChiTiet]    Script Date: 06/04/2015 20:46:28 ******/
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[dbo].[p_HUFS_ProcessMarkDeleteChinhSachGiaChiTiet]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
	DROP PROCEDURE [dbo].[p_HUFS_ProcessMarkDeleteChinhSachGiaChiTiet]
GO

/****** Object:  StoredProcedure [dbo].[p_HUFS_ProcessMarkDeleteChinhSachGiaChiTiet]    Script Date: 06/04/2015 20:46:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*
EXEC p_HUFS_ProcessMarkDeleteChinhSachGiaChiTiet @ListTransaction NVARCHAR(MAX)
*/
/*
-0:Approve
-1:Processed
*/
CREATE PROCEDURE [dbo].[p_HUFS_ProcessMarkDeleteChinhSachGiaChiTiet] @ListId NVARCHAR(MAX)
AS
BEGIN
	CREATE TABLE #TempId (Id BIGINT)

	INSERT INTO #TempId (Id)
	SELECT splitdata AS Id
	FROM fnSplitString(@ListId, ',')

	CREATE INDEX myIndex ON #TempId (Id)

	UPDATE ht
	SET ht.IsDeleted = 1
	FROM HUFS_CHINHSACH_DETAIL ht
	INNER JOIN #TempId t ON ht.Id = t.Id
	
	DROP TABLE #TempId
END
GO


