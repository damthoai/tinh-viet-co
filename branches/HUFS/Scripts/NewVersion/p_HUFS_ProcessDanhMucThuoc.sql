/****** Object:  StoredProcedure [dbo].[p_HUFS_ProcessDanhMucThuoc]    Script Date: 06/24/2015 22:22:10 ******/
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[dbo].[p_HUFS_ProcessDanhMucThuoc]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
	DROP PROCEDURE [dbo].[p_HUFS_ProcessDanhMucThuoc]
GO

/****** Object:  StoredProcedure [dbo].[p_HUFS_ProcessDanhMucThuoc]    Script Date: 06/24/2015 22:22:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*
EXEC p_HUFS_ProcessDanhMucThuoc @ListTransaction NVARCHAR(MAX)
*/
CREATE PROCEDURE [dbo].[p_HUFS_ProcessDanhMucThuoc]
    @MedicineID NVARCHAR(50)
	,@MedicineName NVARCHAR(50)
	,@STTTheoDMTCuaBYT NVARCHAR(50)
	,@TenThanhPhanThuoc NVARCHAR(2000)
	,@DonViTinh INT
	,@BaoHiem BIT
	,@GiaDNMua MONEY
	,@GiaDNMuaVAT MONEY
	,@GiaThucMua MONEY
	,@GiaDNBan MONEY
	,@GiaDNBanVAT MONEY
	,@GiaThucBan MONEY
	,@HamLuong NVARCHAR(100)
	,@SoDKHoacGPKD NVARCHAR(50)
	,@DangBaoCheDuongUong NVARCHAR(100)
	,@NhaSanXuat NVARCHAR(100)
	,@QuocGia NVARCHAR(50)
	,@HoatDong BIT
	,@CreatedBy VARCHAR(50)
	,@LastUpdatedBy VARCHAR(50)
	,@MaThuocYTe NVARCHAR(50)
AS
BEGIN
	DECLARE @MaxMaThuoc BIGINT = 0
    DECLARE @StrMaxMaThuoc NVARCHAR(50) = ''
	IF @MedicineID = '' OR @MedicineID IS NULL
	BEGIN
		SELECT TOP 1 [MedicineID]
			,CAST(REPLACE([MedicineID], 'ME', '') AS BIGINT) AS Id
		INTO #TempMaThuoc
		FROM [HUFS_MEDICINE]
		ORDER BY Id DESC

		IF EXISTS (
				SELECT 1
				FROM #TempMaThuoc
				)
		BEGIN
			SELECT @MaxMaThuoc = Id
			FROM #TempMaThuoc
		END

		SET @MaxMaThuoc = @MaxMaThuoc + 1
		SET @StrMaxMaThuoc = 'ME'+CAST(@MaxMaThuoc AS NVARCHAR(50))

		INSERT INTO [HUFS_MEDICINE] (
			[MedicineID]
			,[MedicineName]
			,[STTTheoDMTCuaBYT]
			,[TenThanhPhanThuoc]
			,[DonViTinh]
			,[BaoHiem]
			,[GiaDNMua]
			,[GiaDNMuaVAT]
			,[GiaThucMua]
			,[GiaDNBan]
			,[GiaDNBanVAT]
			,[GiaThucBan]
			,[HamLuong]
			,[SoDKHoacGPKD]
			,[DangBaoCheDuongUong]
			,[NhaSanXuat]
			,[QuocGia]
			,[HoatDong]
			,[CreatedDate]
			,[CreatedBy]
			,[LastUpdatedDate]
			,[LastUpdatedBy]
			,[CachDungChiTiet]
			,[MaThuocYTe]
			,[Status]
			,[KhuyenMai]
			,[Flag]
			,[GiaKMMua]
			,[CachUong]
			)
		VALUES (
			@StrMaxMaThuoc
			,@MedicineName
			,@STTTheoDMTCuaBYT
			,@TenThanhPhanThuoc
			,@DonViTinh
			,@BaoHiem
			,@GiaDNMua
			,@GiaDNMuaVAT
			,@GiaThucMua
			,@GiaDNBan
			,@GiaDNBanVAT
			,@GiaThucBan
			,@HamLuong
			,@SoDKHoacGPKD
			,@DangBaoCheDuongUong
			,@NhaSanXuat
			,@QuocGia
			,@HoatDong
			,GETDATE()
			,@CreatedBy
			,GETDATE()
			,@LastUpdatedBy
			,N'Ngày ...... lần,mỗi lần ......'
			,@MaThuocYTe
			,1
			,0
			,1
			,0
			,5
			)

		DROP TABLE #TempMaThuoc
	END
	ELSE
	BEGIN
		UPDATE [HUFS_MEDICINE]
		SET [MedicineName] = @MedicineName
			,[STTTheoDMTCuaBYT] = @STTTheoDMTCuaBYT
			,[TenThanhPhanThuoc] = @TenThanhPhanThuoc
			,[DonViTinh] = @DonViTinh
			,[BaoHiem] = @BaoHiem
			,[GiaDNMua] = @GiaDNMua
			,[GiaDNMuaVAT] = @GiaDNMuaVAT 
			,[GiaThucMua] = @GiaThucMua
			,[GiaDNBan] = @GiaDNBan
			,[GiaDNBanVAT] = @GiaDNBanVAT
			,[GiaThucBan] = @GiaThucBan
			,[HamLuong] = @HamLuong
			,[SoDKHoacGPKD] = @SoDKHoacGPKD
			,[DangBaoCheDuongUong] = @DangBaoCheDuongUong
			,[NhaSanXuat] = @NhaSanXuat
			,[QuocGia] = @QuocGia
			,[HoatDong] = @HoatDong
			,[LastUpdatedDate] = GETDATE()
			,[LastUpdatedBy] = @LastUpdatedBy
			,[MaThuocYTe] = @MaThuocYTe
		WHERE MedicineID = @MedicineID
		
	END
END
GO


