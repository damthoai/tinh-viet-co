/****** Object:  StoredProcedure [dbo].[p_HUFS_insertDataForTransactionKhiNhapKho]    Script Date: 06/04/2015 20:46:28 ******/
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[dbo].[p_HUFS_insertDataForTransactionKhiNhapKho]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
	DROP PROCEDURE [dbo].[p_HUFS_insertDataForTransactionKhiNhapKho]
GO

/****** Object:  StoredProcedure [dbo].[p_HUFS_insertDataForTransactionKhiNhapKho]    Script Date: 06/04/2015 20:46:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*
EXEC p_HUFS_insertDataForTransactionKhiNhapKho @MaThuoc = 'ME0000000007',
                                               @Soluong = 160,
                                               @MaKhamBenh = 'MKB000000000060',
                                               @TenKho = 'Phòng Khám Khu B'
*/
/*
-0:Xuat Kho - Approve
-1:Xuat Kho - Processed
-2:Nhap Kho
*/
CREATE PROCEDURE [dbo].[p_HUFS_insertDataForTransactionKhiNhapKho] @MaThuoc VARCHAR(50)
	,@Soluong BIGINT
	,@MaLoThuoc NVARCHAR(50)
	,@HanSuDung DATETIME
AS
BEGIN
	DECLARE @MaxTransaction BIGINT

	SELECT @MaxTransaction = ISNULL(MAX(MaTransaction), 0)
	FROM [HUFS_TRANSACTION]
    SET @MaxTransaction = @MaxTransaction + 1
	INSERT INTO [HUFS_TRANSACTION] (
		MaTransaction
		,[MaThuoc]
		,[SoLuong]
		,[MaLoThuoc]
		,[HanSuDung]
		,STATUS
		)
	VALUES (
		@MaxTransaction
		,@MaThuoc
		,@Soluong
		,@MaLoThuoc
		,@HanSuDung
		,2
		)
END
GO


