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
		,CAST(T1.HanSuDung AS DATE) AS HanSuDung
		,T1.SoLuong
		,SUM(T2.SoLuong) AS SoLuongDangDung
		,(T1.SoLuong - SUM(ISNULL(T2.SoLuong, 0))) AS SoLuongConLai
		,0 AS IsProcess
	INTO #ThuocSanCo
	FROM (
		SELECT a.*
		FROM HUFS_NHAPKHO_DETAIL a
		INNER JOIN HUFS_NHAPKHO_HEADER b ON a.MaNhapKho = b.MaNhapKho
		WHERE b.PhongKhamKho = @TenKho
			AND a.MaThuoc = @MaThuoc
		) T1
	LEFT JOIN (
		SELECT a.*
		FROM HUFS_TRANSACTION a
		INNER JOIN HUFS_KHAMBENH_HEADER b ON a.MaKhamBenh = b.MaKhamBenh
		WHERE a.MaThuoc = @MaThuoc
			AND a.XuatKho = 1
			AND b.PhongKhamBenh = @TenKho
		) T2 ON T1.LoThuoc = T2.MaLoThuoc
		AND T1.MaThuoc = T2.MaThuoc
	GROUP BY T1.LoThuoc
		,T1.MaThuoc
		,T1.HanSuDung
		,T1.SoLuong
	ORDER BY T1.HanSuDung

	DECLARE @i INT = 0
	DECLARE @MaLoThuoci NVARCHAR(50)
	DECLARE @SoLuongThuoci NVARCHAR(50)
	DECLARE @SoLoThuoc INT
	DECLARE @ThuocDangCan FLOAT = 0
	DECLARE @HanSuDungi DATETIME

	SET @ThuocDangCan = @Soluong

	CREATE TABLE #TempTransaction (
		[MaThuoc] [varchar](50) NULL
		,[SoLuong] [float] NULL
		,[NhapKho] [bit] NOT NULL
		,[XuatKho] [bit] NULL
		,[MaLoThuoc] [varchar](50) NULL
		,[HanSuDung] [varchar](50) NULL
		,[MaKhamBenh] [varchar](50) NULL
		,[Status] [bit] NULL
		)

	SELECT @SoLoThuoc = COUNT(*)
	FROM #ThuocSanCo

	WHILE (@i < @SoLoThuoc)
	BEGIN
		SELECT TOP (1) @MaLoThuoci = LoThuoc
			,@SoLuongThuoci = SoLuongConLai
			,@HanSuDungi = HanSuDung
		FROM #ThuocSanCo
		WHERE IsProcess = 0
			AND SoLuongConLai > 0

		--PRINT @MaLoThuoci + '-' + CAST(@SoLuongThuoci AS VARCHAR(20)) + '-' + CONVERT(VARCHAR(8), @HanSuDungi, 112)
		--PRINT @MaLoThuoci
		IF @SoLuongThuoci >= @ThuocDangCan
		BEGIN
			--PRINT 'CASE1'
			--PRINT @MaLoThuoci + '-' + CAST(@ThuocDangCan AS VARCHAR(20)) + '-' + CONVERT(VARCHAR(8), @HanSuDungi, 112)
			--Insert temp table
			INSERT INTO #TempTransaction (
				[MaThuoc]
				,[SoLuong]
				,[NhapKho]
				,[XuatKho]
				,[MaLoThuoc]
				,[HanSuDung]
				,MaKhamBenh
				,STATUS
				)
			VALUES (
				@MaThuoc
				,@ThuocDangCan
				,@NhapKho
				,@XuatKho
				,@MaLoThuoci
				,CONVERT(VARCHAR(8), @HanSuDungi, 112)
				,@MaKhamBenh
				,1
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
			INSERT INTO #TempTransaction (
				[MaThuoc]
				,[SoLuong]
				,[NhapKho]
				,[XuatKho]
				,[MaLoThuoc]
				,[HanSuDung]
				,MaKhamBenh
				,STATUS
				)
			VALUES (
				@MaThuoc
				,@SoLuongThuoci
				,@NhapKho
				,@XuatKho
				,@MaLoThuoci
				,CONVERT(VARCHAR(8), @HanSuDungi, 112)
				,@MaKhamBenh
				,1
				)

			SET @ThuocDangCan = @SoLuongTrungGianConLai

			UPDATE #ThuocSanCo
			SET IsProcess = 1
			WHERE LoThuoc = @MaLoThuoci
		END

		SET @i = @i + 1
	END

	--SELECT *
	--FROM #TempTransaction
	INSERT INTO [HUFS_TRANSACTION] (
		[MaThuoc]
		,[SoLuong]
		,[NhapKho]
		,[XuatKho]
		,[MaLoThuoc]
		,[HanSuDung]
		,MaKhamBenh
		,STATUS
		)
	SELECT [MaThuoc]
		,[SoLuong]
		,[NhapKho]
		,[XuatKho]
		,[MaLoThuoc]
		,[HanSuDung]
		,MaKhamBenh
		,STATUS
	FROM #TempTransaction

	DROP TABLE #TempTransaction
END
GO


