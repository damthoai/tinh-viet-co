/****** Object:  StoredProcedure [dbo].[p_HUFS_ProcessChotTonKhoHeaderWorkflow]    Script Date: 07/24/2015 23:20:58 ******/
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[dbo].[p_HUFS_ProcessChotTonKhoHeaderWorkflow]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
	DROP PROCEDURE [dbo].[p_HUFS_ProcessChotTonKhoHeaderWorkflow]
GO

/****** Object:  StoredProcedure [dbo].[p_HUFS_ProcessChotTonKhoHeaderWorkflow]    Script Date: 07/24/2015 23:20:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*
EXEC p_HUFS_ProcessChotTonKhoHeaderWorkflow @MaChotTonKho = 'TKK20150725115632',
@TenKho = 'Phòng Khám Khu B'
*/
CREATE PROCEDURE [dbo].[p_HUFS_ProcessChotTonKhoHeaderWorkflow] @MaChotTonKho NVARCHAR(50)
	,@CurrentWorkflow INT
AS
BEGIN
	
		UPDATE HUFS_CHOTTONKHO_HEADER
		SET CurrentWorkflow = @CurrentWorkflow
		WHERE MaChotTonKho = @MaChotTonKho

END
GO


