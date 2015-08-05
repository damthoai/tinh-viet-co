/****** Object:  StoredProcedure [dbo].[p_HUFS_ProcessChotTonKhoDetailXacNhan]    Script Date: 07/24/2015 23:20:58 ******/
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[dbo].[p_HUFS_ProcessChotTonKhoDetailXacNhan]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
	DROP PROCEDURE [dbo].[p_HUFS_ProcessChotTonKhoDetailXacNhan]
GO

/****** Object:  StoredProcedure [dbo].[p_HUFS_ProcessChotTonKhoDetailXacNhan]    Script Date: 07/24/2015 23:20:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*
EXEC p_HUFS_ProcessChotTonKhoDetailXacNhan @MaChotTonKho = 'TKK20150725115632',
@TenKho = 'Phòng Khám Khu B'
*/
CREATE PROCEDURE [dbo].[p_HUFS_ProcessChotTonKhoDetailXacNhan] @Id BIGINT
	,@SoLuongThucTe BIGINT
	,@SoLuongChenhLech BIGINT
	,@LoaiChenhLech NVARCHAR(50)
AS
BEGIN
	
		UPDATE [HUFS_CHOTTONKHO_DETAIL]
		SET SoLuongThucTe = @SoLuongThucTe,
		    SoLuongChenhLech = @SoLuongChenhLech,
		    LoaiChenhLech = @LoaiChenhLech
		WHERE Id = @Id

END
GO


