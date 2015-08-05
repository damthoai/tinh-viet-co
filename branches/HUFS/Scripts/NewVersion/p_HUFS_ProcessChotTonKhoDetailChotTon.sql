/****** Object:  StoredProcedure [dbo].[p_HUFS_ProcessChotTonKhoDetailChotTon]    Script Date: 07/24/2015 23:20:58 ******/
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[dbo].[p_HUFS_ProcessChotTonKhoDetailChotTon]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
	DROP PROCEDURE [dbo].[p_HUFS_ProcessChotTonKhoDetailChotTon]
GO

/****** Object:  StoredProcedure [dbo].[p_HUFS_ProcessChotTonKhoDetailChotTon]    Script Date: 07/24/2015 23:20:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*
EXEC p_HUFS_ProcessChotTonKhoDetailChotTon @MaChotTonKho = 'TKK20150725115632',
@TenKho = 'Phòng Khám Khu B'
*/
CREATE PROCEDURE [dbo].[p_HUFS_ProcessChotTonKhoDetailChotTon] @Id BIGINT
	,@SoLuongTon BIGINT
	,@SoLuongThucTe BIGINT
	,@SoLuongChenhLech BIGINT
	,@LoaiChenhLech NVARCHAR(50)
	,@MaNhapKhoDetail BIGINT
AS
BEGIN
	UPDATE [HUFS_NHAPKHO_DETAIL]
	SET SoLuong = @SoLuongThucTe
	WHERE Id = @MaNhapKhoDetail

	INSERT INTO [HUFS_CHOTTONKHO_AUDIT] (
		[MaCHotTonKhoDetail]
		,[MaNhapKhoDetail]
		,[SoLuongTon]
		,[SoLuongThucTe]
		,[SoLuongChenhLech]
		,[LoaiChenhLech]
		,[NgayTaoChotTon]
		)
	VALUES (
		@Id
		,@MaNhapKhoDetail
		,@SoLuongTon
		,@SoLuongThucTe
		,@SoLuongChenhLech
		,@LoaiChenhLech
		,GETDATE()
		)
END
GO


