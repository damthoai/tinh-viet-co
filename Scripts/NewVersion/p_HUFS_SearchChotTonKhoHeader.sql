/****** Object:  StoredProcedure [dbo].[p_HUFS_SearchChotTonKhoHeader]    Script Date: 07/24/2015 23:20:58 ******/
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[dbo].[p_HUFS_SearchChotTonKhoHeader]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
	DROP PROCEDURE [dbo].[p_HUFS_SearchChotTonKhoHeader]
GO

/****** Object:  StoredProcedure [dbo].[p_HUFS_SearchChotTonKhoHeader]    Script Date: 07/24/2015 23:20:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*
exec p_HUFS_SearchChotTonKhoHeader @MaChotTonKho=N'',
             @DienGiai=N'',
             @TenKho=N'Phòng Khám Khu B',
             @NgayTaoPhieu='2015-07-27 22:52:02',
             @Status=N'Đóng'
exec p_HUFS_SearchChotTonKhoHeader @MaChotTonKho=N'',
             @DienGiai=N'',
             @TenKho=N'Phòng Khám Khu B',
             @NgayTaoPhieu=NULL,
             @Status=N''
*/
CREATE PROCEDURE [dbo].[p_HUFS_SearchChotTonKhoHeader] @MaChotTonKho NVARCHAR(50)
	,@DienGiai NVARCHAR(max)
	,@TenKho NVARCHAR(max)
	,@NgayTaoPhieu DATETIME
	,@Status NVARCHAR(50)
	,@IsUseDate BIT
AS
BEGIN
    IF(@IsUseDate = 0)
    BEGIN
		SET @NgayTaoPhieu = NULL
    END
	SELECT [MaChotTonKho]
		,[DienGiai]
		,[TenKho]
		,[NgayTaoPhieu]
		,CONVERT(VARCHAR(10), NgayTaoPhieu, 105) + ' ' + CONVERT(VARCHAR(8), NgayTaoPhieu, 108) AS StrNgayTaoPhieu
		,[NguoiXacNhan]
		,[NguoiDieuChinh]
		,[CreatedDate]
		,[ModifiedDate]
		,[Creator]
		,[LastModifier]
		,[Status]
		,[IsDeleted]
		,[CurrentWorkflow]
	FROM [HUFS_CHOTTONKHO_HEADER]
	WHERE (
			@MaChotTonKho = ''
			OR MaChotTonKho LIKE '%' + @MaChotTonKho + '%'
			)
		AND (
			@DienGiai = ''
			OR DienGiai LIKE '%' + @DienGiai + '%'
			)
		AND (
			@TenKho = ''
			OR TenKho LIKE '%' + @TenKho + '%'
			)
		AND (@NgayTaoPhieu IS NULL OR CONVERT(DATE, NgayTaoPhieu) = CONVERT(DATE, @NgayTaoPhieu))
		AND (
			@Status = ''
			OR STATUS LIKE '%' + @Status + '%'
			)
END
GO


