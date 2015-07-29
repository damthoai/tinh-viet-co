/****** Object:  StoredProcedure [dbo].[p_HUFS_ProcessChotTonKhoHeaderStatus]    Script Date: 07/24/2015 23:20:58 ******/
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[dbo].[p_HUFS_ProcessChotTonKhoHeaderStatus]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
	DROP PROCEDURE [dbo].[p_HUFS_ProcessChotTonKhoHeaderStatus]
GO

/****** Object:  StoredProcedure [dbo].[p_HUFS_ProcessChotTonKhoHeaderStatus]    Script Date: 07/24/2015 23:20:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*
EXEC p_HUFS_ProcessChotTonKhoHeaderStatus @MaChotTonKho = 'TKK20150725115632',
@TenKho = 'Phòng Khám Khu B'
*/
CREATE PROCEDURE [dbo].[p_HUFS_ProcessChotTonKhoHeaderStatus] @MaChotTonKho NVARCHAR(50)
	,@Status NVARCHAR(50)
AS
BEGIN
	
		UPDATE HUFS_CHOTTONKHO_HEADER
		SET Status = @Status
		WHERE MaChotTonKho = @MaChotTonKho

END
GO


