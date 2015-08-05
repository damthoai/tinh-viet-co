/****** Object:  StoredProcedure [dbo].[p_HUFS_ProcessChotTonKhoHeader]    Script Date: 07/24/2015 23:20:58 ******/
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[dbo].[p_HUFS_ProcessChotTonKhoHeader]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
	DROP PROCEDURE [dbo].[p_HUFS_ProcessChotTonKhoHeader]
GO

/****** Object:  StoredProcedure [dbo].[p_HUFS_ProcessChotTonKhoHeader]    Script Date: 07/24/2015 23:20:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*
EXEC p_HUFS_ProcessChotTonKhoHeader @ListTransaction NVARCHAR(MAX)
*/
CREATE PROCEDURE [dbo].[p_HUFS_ProcessChotTonKhoHeader] @MaChotTonKho NVARCHAR(50)
	,@DienGiai NVARCHAR(max)
	,@TenKho NVARCHAR(max)
	,@NgayTaoPhieu DATETIME
	,@NguoiXacNhan NVARCHAR(max)
	,@NguoiDieuChinh NVARCHAR(max)
	,@CreatedDate DATETIME
	,@ModifiedDate DATETIME
	,@Creator NVARCHAR(max)
	,@LastModifier NVARCHAR(max)
	,@Status NVARCHAR(50)
	,@IsDeleted BIT
AS
BEGIN
	IF NOT EXISTS (
			SELECT 1
			FROM HUFS_CHOTTONKHO_HEADER
			WHERE MaChotTonKho = @MaChotTonKho
			)
	BEGIN
		INSERT INTO [HUFS_CHOTTONKHO_HEADER] (
			[MaChotTonKho]
			,[DienGiai]
			,[TenKho]
			,[NgayTaoPhieu]
			,[NguoiXacNhan]
			,[NguoiDieuChinh]
			,[CreatedDate]
			,[ModifiedDate]
			,[Creator]
			,[LastModifier]
			,[Status]
			,[IsDeleted]
			)
		VALUES (
			@MaChotTonKho
			,@DienGiai
			,@TenKho
			,@NgayTaoPhieu
			,@NguoiXacNhan
			,@NguoiDieuChinh
			,@CreatedDate
			,@ModifiedDate
			,@Creator
			,@LastModifier
			,@Status
			,@IsDeleted
			)
	END
	ELSE
	BEGIN
		UPDATE [HUFS_CHOTTONKHO_HEADER]
		SET [DienGiai] = @DienGiai
			,[TenKho] = @TenKho
			,[NgayTaoPhieu] = @NgayTaoPhieu
			,[NguoiXacNhan] = @NguoiXacNhan
			,[NguoiDieuChinh] = @NguoiDieuChinh
			--,[CreatedDate] = @CreatedDate
			,[ModifiedDate] = @ModifiedDate
			--,[Creator] = @Creator
			,[LastModifier] = @LastModifier
			,[Status] = @Status
			,[IsDeleted] = @IsDeleted
		WHERE MaChotTonKho = @MaChotTonKho
	END
END
GO


