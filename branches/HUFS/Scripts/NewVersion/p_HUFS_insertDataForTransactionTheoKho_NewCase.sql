/****** Object:  StoredProcedure [dbo].[p_HUFS_insertDataForTransactionTheoKho]    Script Date: 06/04/2015 20:46:28 ******/
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[dbo].[p_HUFS_insertDataForTransactionTheoKho]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
	DROP PROCEDURE [dbo].[p_HUFS_insertDataForTransactionTheoKho]
GO

/****** Object:  StoredProcedure [dbo].[p_HUFS_insertDataForTransactionTheoKho]    Script Date: 06/04/2015 20:46:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*
EXEC p_HUFS_insertDataForTransactionTheoKho @MaThuoc = 'ME0000000007',
                                            @Soluong = 160,
                                            @NhapKho = 0,
                                            @XuatKho = 1,
                                            @MaKhamBenh = 'MKB000000000060',
                                            @TenKho = 'Phòng Khám Khu B'
*/
/*
-0:Approve
-1:Processed
*/
CREATE PROCEDURE [dbo].[p_HUFS_insertDataForTransactionTheoKho] @MaThuoc VARCHAR(50)
	,@Soluong FLOAT
	,@NhapKho BIT
	,@XuatKho BIT
	,@MaKhamBenh VARCHAR(50)
	,@TenKho NVARCHAR(50)
AS
BEGIN
	SELECT T1.LoThuoc
		,T1.MaThuoc
		,T1.HanSuDung
		,T1.SoLuong
		,0 AS IsProcess
	INTO #ThuocSanCo
	FROM (
		SELECT a.*
		FROM HUFS_NHAPKHO_DETAIL a
		INNER JOIN HUFS_NHAPKHO_HEADER b ON a.MaNhapKho = b.MaNhapKho
		WHERE b.PhongKhamKho = @TenKho
			AND a.MaThuoc = @MaThuoc
			AND a.SoLuong > 0
		) T1
	ORDER BY T1.HanSuDung

	DECLARE @i INT = 0
	DECLARE @MaLoThuoci NVARCHAR(50)
	DECLARE @SoLuongThuoci NVARCHAR(50)
	DECLARE @SoLoThuoc INT
	DECLARE @ThuocDangCan FLOAT = 0
	DECLARE @HanSuDungi DATETIME
    DECLARE @MaxTransation BIGINT = 0
	SET @ThuocDangCan = @Soluong
    CREATE TABLE #TempTransaction (
		[MaTransaction] BIGINT
		)

	SELECT @SoLoThuoc = COUNT(*)
	FROM #ThuocSanCo

	WHILE (@i < @SoLoThuoc)
	BEGIN
		SELECT TOP (1) @MaLoThuoci = LoThuoc
			,@SoLuongThuoci = SoLuong
			,@HanSuDungi = HanSuDung
		FROM #ThuocSanCo
		WHERE IsProcess = 0

		--PRINT @MaLoThuoci + '-' + CAST(@SoLuongThuoci AS VARCHAR(20)) + '-' + CONVERT(VARCHAR(8), @HanSuDungi, 112)
		--PRINT @MaLoThuoci
		IF @SoLuongThuoci >= @ThuocDangCan
		BEGIN
			--PRINT 'CASE1'
			--PRINT @MaLoThuoci + '-' + CAST(@ThuocDangCan AS VARCHAR(20)) + '-' + CONVERT(VARCHAR(8), @HanSuDungi, 112)
			--Insert temp table
			SELECT @MaxTransation = MAX(MaTransaction) FROM HUFS_TRANSACTION
			SET @MaxTransation = @MaxTransation + 1
			INSERT INTO #TempTransaction([MaTransaction])VALUES (@MaxTransation)
			INSERT INTO [HUFS_TRANSACTION] (
			    MaTransaction
				,[MaThuoc]
				,[SoLuong]
				,[MaLoThuoc]
				,[HanSuDung]
				,MaKhamBenh
				,STATUS
				)
			VALUES (
			    @MaxTransation
				,@MaThuoc
				,@ThuocDangCan
				,@MaLoThuoci
				,@HanSuDungi
				,@MaKhamBenh
				,0
				)
				            
			BREAK
		END
		ELSE
		BEGIN
			--PRINT 'CASE2'
			DECLARE @SoLuongTrungGianConLai INT = 0

			SET @SoLuongTrungGianConLai = @ThuocDangCan - @SoLuongThuoci

			--PRINT @MaLoThuoci + '-' + CAST(@SoLuongThuoci AS VARCHAR(20)) + '-' + CONVERT(VARCHAR(8), @HanSuDungi, 112)
			--Insert temp table
			SELECT @MaxTransation = MAX(MaTransaction) FROM HUFS_TRANSACTION
			SET @MaxTransation = @MaxTransation + 1
			INSERT INTO #TempTransaction([MaTransaction])VALUES (@MaxTransation)
			INSERT INTO [HUFS_TRANSACTION] (
			    MaTransaction
				,[MaThuoc]
				,[SoLuong]
				,[MaLoThuoc]
				,[HanSuDung]
				,MaKhamBenh
				,STATUS
				)
			VALUES (
			    @MaxTransation
				,@MaThuoc
				,@SoLuongThuoci
				,@MaLoThuoci
				,@HanSuDungi
				,@MaKhamBenh
				,0
				)

			SET @ThuocDangCan = @SoLuongTrungGianConLai

			UPDATE #ThuocSanCo
			SET IsProcess = 1
			WHERE LoThuoc = @MaLoThuoci
		END

		SET @i = @i + 1
	END
    
    SELECT MaTransaction
    FROM #TempTransaction
    
    DROP TABLE #TempTransaction
END
GO


